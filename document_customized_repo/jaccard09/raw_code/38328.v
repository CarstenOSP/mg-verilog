module backprop_backprop_Pipeline_VITIS_LOOP_113_1_delta_matrix_weights1_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,training_data_8_address0,training_data_8_ce0,training_data_8_q0,training_data_9_address0,training_data_9_ce0,training_data_9_q0,training_data_10_address0,training_data_10_ce0,training_data_10_q0,training_data_11_address0,training_data_11_ce0,training_data_11_q0,training_data_12_address0,training_data_12_ce0,training_data_12_q0,training_data_13_address0,training_data_13_ce0,training_data_13_q0,training_data_14_address0,training_data_14_ce0,training_data_14_q0,training_data_15_address0,training_data_15_ce0,training_data_15_q0,delta_weights1_15_address0,delta_weights1_15_ce0,delta_weights1_15_we0,delta_weights1_15_d0,delta_weights1_14_address0,delta_weights1_14_ce0,delta_weights1_14_we0,delta_weights1_14_d0,delta_weights1_13_address0,delta_weights1_13_ce0,delta_weights1_13_we0,delta_weights1_13_d0,delta_weights1_12_address0,delta_weights1_12_ce0,delta_weights1_12_we0,delta_weights1_12_d0,delta_weights1_11_address0,delta_weights1_11_ce0,delta_weights1_11_we0,delta_weights1_11_d0,delta_weights1_10_address0,delta_weights1_10_ce0,delta_weights1_10_we0,delta_weights1_10_d0,delta_weights1_9_address0,delta_weights1_9_ce0,delta_weights1_9_we0,delta_weights1_9_d0,delta_weights1_8_address0,delta_weights1_8_ce0,delta_weights1_8_we0,delta_weights1_8_d0,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_address0,delta_weights1_ce0,delta_weights1_we0,delta_weights1_d0,oracle_activations1_address0,oracle_activations1_ce0,oracle_activations1_q0,oracle_activations1_8_address0,oracle_activations1_8_ce0,oracle_activations1_8_q0,oracle_activations1_1_address0,oracle_activations1_1_ce0,oracle_activations1_1_q0,oracle_activations1_9_address0,oracle_activations1_9_ce0,oracle_activations1_9_q0,oracle_activations1_2_address0,oracle_activations1_2_ce0,oracle_activations1_2_q0,oracle_activations1_10_address0,oracle_activations1_10_ce0,oracle_activations1_10_q0,oracle_activations1_3_address0,oracle_activations1_3_ce0,oracle_activations1_3_q0,oracle_activations1_11_address0,oracle_activations1_11_ce0,oracle_activations1_11_q0,oracle_activations1_4_address0,oracle_activations1_4_ce0,oracle_activations1_4_q0,oracle_activations1_12_address0,oracle_activations1_12_ce0,oracle_activations1_12_q0,oracle_activations1_5_address0,oracle_activations1_5_ce0,oracle_activations1_5_q0,oracle_activations1_13_address0,oracle_activations1_13_ce0,oracle_activations1_13_q0,oracle_activations1_6_address0,oracle_activations1_6_ce0,oracle_activations1_6_q0,oracle_activations1_14_address0,oracle_activations1_14_ce0,oracle_activations1_14_q0,oracle_activations1_7_address0,oracle_activations1_7_ce0,oracle_activations1_7_q0,oracle_activations1_15_address0,oracle_activations1_15_ce0,oracle_activations1_15_q0,grp_fu_3932_p_din0,grp_fu_3932_p_din1,grp_fu_3932_p_dout0,grp_fu_3932_p_ce,grp_fu_5677_p_din0,grp_fu_5677_p_din1,grp_fu_5677_p_dout0,grp_fu_5677_p_ce,grp_fu_5681_p_din0,grp_fu_5681_p_din1,grp_fu_5681_p_dout0,grp_fu_5681_p_ce,grp_fu_5685_p_din0,grp_fu_5685_p_din1,grp_fu_5685_p_dout0,grp_fu_5685_p_ce,grp_fu_5689_p_din0,grp_fu_5689_p_din1,grp_fu_5689_p_dout0,grp_fu_5689_p_ce,grp_fu_5693_p_din0,grp_fu_5693_p_din1,grp_fu_5693_p_dout0,grp_fu_5693_p_ce,grp_fu_5697_p_din0,grp_fu_5697_p_din1,grp_fu_5697_p_dout0,grp_fu_5697_p_ce,grp_fu_5701_p_din0,grp_fu_5701_p_din1,grp_fu_5701_p_dout0,grp_fu_5701_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul;
output  [7:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [7:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [7:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [7:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [7:0] training_data_4_address0;
output   training_data_4_ce0;
input  [63:0] training_data_4_q0;
output  [7:0] training_data_5_address0;
output   training_data_5_ce0;
input  [63:0] training_data_5_q0;
output  [7:0] training_data_6_address0;
output   training_data_6_ce0;
input  [63:0] training_data_6_q0;
output  [7:0] training_data_7_address0;
output   training_data_7_ce0;
input  [63:0] training_data_7_q0;
output  [7:0] training_data_8_address0;
output   training_data_8_ce0;
input  [63:0] training_data_8_q0;
output  [7:0] training_data_9_address0;
output   training_data_9_ce0;
input  [63:0] training_data_9_q0;
output  [7:0] training_data_10_address0;
output   training_data_10_ce0;
input  [63:0] training_data_10_q0;
output  [7:0] training_data_11_address0;
output   training_data_11_ce0;
input  [63:0] training_data_11_q0;
output  [7:0] training_data_12_address0;
output   training_data_12_ce0;
input  [63:0] training_data_12_q0;
output  [7:0] training_data_13_address0;
output   training_data_13_ce0;
input  [63:0] training_data_13_q0;
output  [7:0] training_data_14_address0;
output   training_data_14_ce0;
input  [63:0] training_data_14_q0;
output  [7:0] training_data_15_address0;
output   training_data_15_ce0;
input  [63:0] training_data_15_q0;
output  [5:0] delta_weights1_15_address0;
output   delta_weights1_15_ce0;
output   delta_weights1_15_we0;
output  [63:0] delta_weights1_15_d0;
output  [5:0] delta_weights1_14_address0;
output   delta_weights1_14_ce0;
output   delta_weights1_14_we0;
output  [63:0] delta_weights1_14_d0;
output  [5:0] delta_weights1_13_address0;
output   delta_weights1_13_ce0;
output   delta_weights1_13_we0;
output  [63:0] delta_weights1_13_d0;
output  [5:0] delta_weights1_12_address0;
output   delta_weights1_12_ce0;
output   delta_weights1_12_we0;
output  [63:0] delta_weights1_12_d0;
output  [5:0] delta_weights1_11_address0;
output   delta_weights1_11_ce0;
output   delta_weights1_11_we0;
output  [63:0] delta_weights1_11_d0;
output  [5:0] delta_weights1_10_address0;
output   delta_weights1_10_ce0;
output   delta_weights1_10_we0;
output  [63:0] delta_weights1_10_d0;
output  [5:0] delta_weights1_9_address0;
output   delta_weights1_9_ce0;
output   delta_weights1_9_we0;
output  [63:0] delta_weights1_9_d0;
output  [5:0] delta_weights1_8_address0;
output   delta_weights1_8_ce0;
output   delta_weights1_8_we0;
output  [63:0] delta_weights1_8_d0;
output  [5:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [5:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [5:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [5:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [5:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [5:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [5:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [5:0] delta_weights1_address0;
output   delta_weights1_ce0;
output   delta_weights1_we0;
output  [63:0] delta_weights1_d0;
output  [1:0] oracle_activations1_address0;
output   oracle_activations1_ce0;
input  [63:0] oracle_activations1_q0;
output  [1:0] oracle_activations1_8_address0;
output   oracle_activations1_8_ce0;
input  [63:0] oracle_activations1_8_q0;
output  [1:0] oracle_activations1_1_address0;
output   oracle_activations1_1_ce0;
input  [63:0] oracle_activations1_1_q0;
output  [1:0] oracle_activations1_9_address0;
output   oracle_activations1_9_ce0;
input  [63:0] oracle_activations1_9_q0;
output  [1:0] oracle_activations1_2_address0;
output   oracle_activations1_2_ce0;
input  [63:0] oracle_activations1_2_q0;
output  [1:0] oracle_activations1_10_address0;
output   oracle_activations1_10_ce0;
input  [63:0] oracle_activations1_10_q0;
output  [1:0] oracle_activations1_3_address0;
output   oracle_activations1_3_ce0;
input  [63:0] oracle_activations1_3_q0;
output  [1:0] oracle_activations1_11_address0;
output   oracle_activations1_11_ce0;
input  [63:0] oracle_activations1_11_q0;
output  [1:0] oracle_activations1_4_address0;
output   oracle_activations1_4_ce0;
input  [63:0] oracle_activations1_4_q0;
output  [1:0] oracle_activations1_12_address0;
output   oracle_activations1_12_ce0;
input  [63:0] oracle_activations1_12_q0;
output  [1:0] oracle_activations1_5_address0;
output   oracle_activations1_5_ce0;
input  [63:0] oracle_activations1_5_q0;
output  [1:0] oracle_activations1_13_address0;
output   oracle_activations1_13_ce0;
input  [63:0] oracle_activations1_13_q0;
output  [1:0] oracle_activations1_6_address0;
output   oracle_activations1_6_ce0;
input  [63:0] oracle_activations1_6_q0;
output  [1:0] oracle_activations1_14_address0;
output   oracle_activations1_14_ce0;
input  [63:0] oracle_activations1_14_q0;
output  [1:0] oracle_activations1_7_address0;
output   oracle_activations1_7_ce0;
input  [63:0] oracle_activations1_7_q0;
output  [1:0] oracle_activations1_15_address0;
output   oracle_activations1_15_ce0;
input  [63:0] oracle_activations1_15_q0;
output  [63:0] grp_fu_3932_p_din0;
output  [63:0] grp_fu_3932_p_din1;
input  [63:0] grp_fu_3932_p_dout0;
output   grp_fu_3932_p_ce;
output  [63:0] grp_fu_5677_p_din0;
output  [63:0] grp_fu_5677_p_din1;
input  [63:0] grp_fu_5677_p_dout0;
output   grp_fu_5677_p_ce;
output  [63:0] grp_fu_5681_p_din0;
output  [63:0] grp_fu_5681_p_din1;
input  [63:0] grp_fu_5681_p_dout0;
output   grp_fu_5681_p_ce;
output  [63:0] grp_fu_5685_p_din0;
output  [63:0] grp_fu_5685_p_din1;
input  [63:0] grp_fu_5685_p_dout0;
output   grp_fu_5685_p_ce;
output  [63:0] grp_fu_5689_p_din0;
output  [63:0] grp_fu_5689_p_din1;
input  [63:0] grp_fu_5689_p_dout0;
output   grp_fu_5689_p_ce;
output  [63:0] grp_fu_5693_p_din0;
output  [63:0] grp_fu_5693_p_din1;
input  [63:0] grp_fu_5693_p_dout0;
output   grp_fu_5693_p_ce;
output  [63:0] grp_fu_5697_p_din0;
output  [63:0] grp_fu_5697_p_din1;
input  [63:0] grp_fu_5697_p_dout0;
output   grp_fu_5697_p_ce;
output  [63:0] grp_fu_5701_p_din0;
output  [63:0] grp_fu_5701_p_din1;
input  [63:0] grp_fu_5701_p_dout0;
output   grp_fu_5701_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln113_fu_876_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln113_fu_916_p3;
reg   [3:0] select_ln113_reg_1279;
reg   [3:0] select_ln113_reg_1279_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_1279_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_1279_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_1279_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_1279_pp0_iter5_reg;
reg   [3:0] select_ln113_reg_1279_pp0_iter6_reg;
reg   [3:0] select_ln113_reg_1279_pp0_iter7_reg;
reg   [3:0] select_ln113_reg_1279_pp0_iter8_reg;
reg   [3:0] select_ln113_reg_1279_pp0_iter9_reg;
reg   [1:0] lshr_ln_reg_1285;
reg   [1:0] lshr_ln_reg_1285_pp0_iter1_reg;
reg   [1:0] lshr_ln_reg_1285_pp0_iter2_reg;
reg   [1:0] lshr_ln_reg_1285_pp0_iter3_reg;
reg   [1:0] lshr_ln_reg_1285_pp0_iter4_reg;
reg   [1:0] lshr_ln_reg_1285_pp0_iter5_reg;
reg   [1:0] lshr_ln_reg_1285_pp0_iter6_reg;
reg   [1:0] lshr_ln_reg_1285_pp0_iter7_reg;
reg   [1:0] lshr_ln_reg_1285_pp0_iter8_reg;
reg   [1:0] lshr_ln_reg_1285_pp0_iter9_reg;
wire   [0:0] icmp_ln115_1_fu_938_p2;
reg   [0:0] icmp_ln115_1_reg_1291;
reg   [0:0] icmp_ln115_1_reg_1291_pp0_iter1_reg;
wire   [0:0] icmp_ln115_fu_944_p2;
reg   [0:0] icmp_ln115_reg_1303;
reg   [0:0] icmp_ln115_reg_1303_pp0_iter1_reg;
reg   [0:0] icmp_ln115_reg_1303_pp0_iter2_reg;
reg   [0:0] icmp_ln115_reg_1303_pp0_iter3_reg;
reg   [0:0] icmp_ln115_reg_1303_pp0_iter4_reg;
reg   [0:0] icmp_ln115_reg_1303_pp0_iter5_reg;
reg   [0:0] icmp_ln115_reg_1303_pp0_iter6_reg;
reg   [0:0] icmp_ln115_reg_1303_pp0_iter7_reg;
reg   [0:0] icmp_ln115_reg_1303_pp0_iter8_reg;
reg   [0:0] icmp_ln115_reg_1303_pp0_iter9_reg;
wire   [3:0] empty_fu_979_p1;
reg   [3:0] empty_reg_1307;
wire   [63:0] tmp_53_fu_1096_p35;
reg   [63:0] tmp_53_reg_1472;
wire   [63:0] select_ln115_fu_1167_p3;
reg   [63:0] select_ln115_reg_1484;
wire   [63:0] select_ln115_1_fu_1174_p3;
reg   [63:0] select_ln115_1_reg_1489;
wire   [63:0] select_ln115_2_fu_1181_p3;
reg   [63:0] select_ln115_2_reg_1494;
wire   [63:0] select_ln115_3_fu_1188_p3;
reg   [63:0] select_ln115_3_reg_1499;
wire   [63:0] select_ln115_4_fu_1195_p3;
reg   [63:0] select_ln115_4_reg_1504;
wire   [63:0] select_ln115_5_fu_1202_p3;
reg   [63:0] select_ln115_5_reg_1509;
wire   [63:0] select_ln115_6_fu_1209_p3;
reg   [63:0] select_ln115_6_reg_1514;
wire   [63:0] select_ln115_7_fu_1216_p3;
reg   [63:0] select_ln115_7_reg_1519;
reg   [63:0] mul_i4_reg_1524;
reg   [63:0] mul_1_i1_reg_1530;
reg   [63:0] mul_2_i1_reg_1536;
reg   [63:0] mul_3_i1_reg_1542;
reg   [63:0] mul_4_i1_reg_1548;
reg   [63:0] mul_5_i1_reg_1554;
reg   [63:0] mul_6_i1_reg_1560;
reg   [63:0] mul_7_i1_reg_1566;
wire   [63:0] p_cast_fu_993_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln112_fu_1013_p1;
wire   [63:0] zext_ln115_fu_1229_p1;
reg   [6:0] j_fu_184;
wire   [6:0] add_ln114_fu_950_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_188;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [6:0] indvar_flatten19_fu_192;
wire   [6:0] add_ln113_fu_882_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten19_load;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    training_data_2_ce0_local;
reg    training_data_3_ce0_local;
reg    training_data_4_ce0_local;
reg    training_data_5_ce0_local;
reg    training_data_6_ce0_local;
reg    training_data_7_ce0_local;
reg    training_data_8_ce0_local;
reg    training_data_9_ce0_local;
reg    training_data_10_ce0_local;
reg    training_data_11_ce0_local;
reg    training_data_12_ce0_local;
reg    training_data_13_ce0_local;
reg    training_data_14_ce0_local;
reg    training_data_15_ce0_local;
reg    oracle_activations1_ce0_local;
reg    oracle_activations1_8_ce0_local;
reg    oracle_activations1_1_ce0_local;
reg    oracle_activations1_9_ce0_local;
reg    oracle_activations1_2_ce0_local;
reg    oracle_activations1_10_ce0_local;
reg    oracle_activations1_3_ce0_local;
reg    oracle_activations1_11_ce0_local;
reg    oracle_activations1_4_ce0_local;
reg    oracle_activations1_12_ce0_local;
reg    oracle_activations1_5_ce0_local;
reg    oracle_activations1_13_ce0_local;
reg    oracle_activations1_6_ce0_local;
reg    oracle_activations1_14_ce0_local;
reg    oracle_activations1_7_ce0_local;
reg    oracle_activations1_15_ce0_local;
reg    delta_weights1_8_we0_local;
reg    delta_weights1_8_ce0_local;
reg    delta_weights1_9_we0_local;
reg    delta_weights1_9_ce0_local;
reg    delta_weights1_10_we0_local;
reg    delta_weights1_10_ce0_local;
reg    delta_weights1_11_we0_local;
reg    delta_weights1_11_ce0_local;
reg    delta_weights1_12_we0_local;
reg    delta_weights1_12_ce0_local;
reg    delta_weights1_13_we0_local;
reg    delta_weights1_13_ce0_local;
reg    delta_weights1_14_we0_local;
reg    delta_weights1_14_ce0_local;
reg    delta_weights1_15_we0_local;
reg    delta_weights1_15_ce0_local;
reg    delta_weights1_we0_local;
reg    delta_weights1_ce0_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
reg    delta_weights1_4_we0_local;
reg    delta_weights1_4_ce0_local;
reg    delta_weights1_5_we0_local;
reg    delta_weights1_5_ce0_local;
reg    delta_weights1_6_we0_local;
reg    delta_weights1_6_ce0_local;
reg    delta_weights1_7_we0_local;
reg    delta_weights1_7_ce0_local;
wire   [0:0] tmp_fu_894_p3;
wire   [3:0] add_ln113_1_fu_910_p2;
wire   [6:0] select_ln112_fu_902_p3;
wire   [3:0] trunc_ln114_fu_924_p1;
wire   [11:0] zext_ln113_fu_971_p1;
wire   [11:0] arrayidx10_sum_fu_974_p2;
wire   [7:0] tmp_s_fu_983_p4;
wire   [63:0] tmp_53_fu_1096_p2;
wire   [63:0] tmp_53_fu_1096_p4;
wire   [63:0] tmp_53_fu_1096_p6;
wire   [63:0] tmp_53_fu_1096_p8;
wire   [63:0] tmp_53_fu_1096_p10;
wire   [63:0] tmp_53_fu_1096_p12;
wire   [63:0] tmp_53_fu_1096_p14;
wire   [63:0] tmp_53_fu_1096_p16;
wire   [63:0] tmp_53_fu_1096_p18;
wire   [63:0] tmp_53_fu_1096_p20;
wire   [63:0] tmp_53_fu_1096_p22;
wire   [63:0] tmp_53_fu_1096_p24;
wire   [63:0] tmp_53_fu_1096_p26;
wire   [63:0] tmp_53_fu_1096_p28;
wire   [63:0] tmp_53_fu_1096_p30;
wire   [63:0] tmp_53_fu_1096_p32;
wire   [63:0] tmp_53_fu_1096_p33;
wire   [5:0] or_ln2_fu_1223_p3;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_53_fu_1096_p1;
wire   [3:0] tmp_53_fu_1096_p3;
wire   [3:0] tmp_53_fu_1096_p5;
wire   [3:0] tmp_53_fu_1096_p7;
wire   [3:0] tmp_53_fu_1096_p9;
wire   [3:0] tmp_53_fu_1096_p11;
wire   [3:0] tmp_53_fu_1096_p13;
wire   [3:0] tmp_53_fu_1096_p15;
wire  signed [3:0] tmp_53_fu_1096_p17;
wire  signed [3:0] tmp_53_fu_1096_p19;
wire  signed [3:0] tmp_53_fu_1096_p21;
wire  signed [3:0] tmp_53_fu_1096_p23;
wire  signed [3:0] tmp_53_fu_1096_p25;
wire  signed [3:0] tmp_53_fu_1096_p27;
wire  signed [3:0] tmp_53_fu_1096_p29;
wire  signed [3:0] tmp_53_fu_1096_p31;
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
#0 j_fu_184 = 7'd0;
#0 i_fu_188 = 4'd0;
#0 indvar_flatten19_fu_192 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U813(.din0(tmp_53_fu_1096_p2),.din1(tmp_53_fu_1096_p4),.din2(tmp_53_fu_1096_p6),.din3(tmp_53_fu_1096_p8),.din4(tmp_53_fu_1096_p10),.din5(tmp_53_fu_1096_p12),.din6(tmp_53_fu_1096_p14),.din7(tmp_53_fu_1096_p16),.din8(tmp_53_fu_1096_p18),.din9(tmp_53_fu_1096_p20),.din10(tmp_53_fu_1096_p22),.din11(tmp_53_fu_1096_p24),.din12(tmp_53_fu_1096_p26),.din13(tmp_53_fu_1096_p28),.din14(tmp_53_fu_1096_p30),.din15(tmp_53_fu_1096_p32),.def(tmp_53_fu_1096_p33),.sel(empty_reg_1307),.dout(tmp_53_fu_1096_p35));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
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
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_876_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_188 <= select_ln113_fu_916_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_188 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_876_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten19_fu_192 <= add_ln113_fu_882_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten19_fu_192 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_876_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_184 <= add_ln114_fu_950_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_184 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_1307 <= empty_fu_979_p1;
        icmp_ln115_1_reg_1291 <= icmp_ln115_1_fu_938_p2;
        icmp_ln115_1_reg_1291_pp0_iter1_reg <= icmp_ln115_1_reg_1291;
        icmp_ln115_reg_1303 <= icmp_ln115_fu_944_p2;
        icmp_ln115_reg_1303_pp0_iter1_reg <= icmp_ln115_reg_1303;
        lshr_ln_reg_1285 <= {{select_ln112_fu_902_p3[5:4]}};
        lshr_ln_reg_1285_pp0_iter1_reg <= lshr_ln_reg_1285;
        select_ln113_reg_1279 <= select_ln113_fu_916_p3;
        select_ln113_reg_1279_pp0_iter1_reg <= select_ln113_reg_1279;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln115_reg_1303_pp0_iter2_reg <= icmp_ln115_reg_1303_pp0_iter1_reg;
        icmp_ln115_reg_1303_pp0_iter3_reg <= icmp_ln115_reg_1303_pp0_iter2_reg;
        icmp_ln115_reg_1303_pp0_iter4_reg <= icmp_ln115_reg_1303_pp0_iter3_reg;
        icmp_ln115_reg_1303_pp0_iter5_reg <= icmp_ln115_reg_1303_pp0_iter4_reg;
        icmp_ln115_reg_1303_pp0_iter6_reg <= icmp_ln115_reg_1303_pp0_iter5_reg;
        icmp_ln115_reg_1303_pp0_iter7_reg <= icmp_ln115_reg_1303_pp0_iter6_reg;
        icmp_ln115_reg_1303_pp0_iter8_reg <= icmp_ln115_reg_1303_pp0_iter7_reg;
        icmp_ln115_reg_1303_pp0_iter9_reg <= icmp_ln115_reg_1303_pp0_iter8_reg;
        lshr_ln_reg_1285_pp0_iter2_reg <= lshr_ln_reg_1285_pp0_iter1_reg;
        lshr_ln_reg_1285_pp0_iter3_reg <= lshr_ln_reg_1285_pp0_iter2_reg;
        lshr_ln_reg_1285_pp0_iter4_reg <= lshr_ln_reg_1285_pp0_iter3_reg;
        lshr_ln_reg_1285_pp0_iter5_reg <= lshr_ln_reg_1285_pp0_iter4_reg;
        lshr_ln_reg_1285_pp0_iter6_reg <= lshr_ln_reg_1285_pp0_iter5_reg;
        lshr_ln_reg_1285_pp0_iter7_reg <= lshr_ln_reg_1285_pp0_iter6_reg;
        lshr_ln_reg_1285_pp0_iter8_reg <= lshr_ln_reg_1285_pp0_iter7_reg;
        lshr_ln_reg_1285_pp0_iter9_reg <= lshr_ln_reg_1285_pp0_iter8_reg;
        mul_1_i1_reg_1530 <= grp_fu_5677_p_dout0;
        mul_2_i1_reg_1536 <= grp_fu_5681_p_dout0;
        mul_3_i1_reg_1542 <= grp_fu_5685_p_dout0;
        mul_4_i1_reg_1548 <= grp_fu_5689_p_dout0;
        mul_5_i1_reg_1554 <= grp_fu_5693_p_dout0;
        mul_6_i1_reg_1560 <= grp_fu_5697_p_dout0;
        mul_7_i1_reg_1566 <= grp_fu_5701_p_dout0;
        mul_i4_reg_1524 <= grp_fu_3932_p_dout0;
        select_ln113_reg_1279_pp0_iter2_reg <= select_ln113_reg_1279_pp0_iter1_reg;
        select_ln113_reg_1279_pp0_iter3_reg <= select_ln113_reg_1279_pp0_iter2_reg;
        select_ln113_reg_1279_pp0_iter4_reg <= select_ln113_reg_1279_pp0_iter3_reg;
        select_ln113_reg_1279_pp0_iter5_reg <= select_ln113_reg_1279_pp0_iter4_reg;
        select_ln113_reg_1279_pp0_iter6_reg <= select_ln113_reg_1279_pp0_iter5_reg;
        select_ln113_reg_1279_pp0_iter7_reg <= select_ln113_reg_1279_pp0_iter6_reg;
        select_ln113_reg_1279_pp0_iter8_reg <= select_ln113_reg_1279_pp0_iter7_reg;
        select_ln113_reg_1279_pp0_iter9_reg <= select_ln113_reg_1279_pp0_iter8_reg;
        select_ln115_1_reg_1489 <= select_ln115_1_fu_1174_p3;
        select_ln115_2_reg_1494 <= select_ln115_2_fu_1181_p3;
        select_ln115_3_reg_1499 <= select_ln115_3_fu_1188_p3;
        select_ln115_4_reg_1504 <= select_ln115_4_fu_1195_p3;
        select_ln115_5_reg_1509 <= select_ln115_5_fu_1202_p3;
        select_ln115_6_reg_1514 <= select_ln115_6_fu_1209_p3;
        select_ln115_7_reg_1519 <= select_ln115_7_fu_1216_p3;
        select_ln115_reg_1484 <= select_ln115_fu_1167_p3;
        tmp_53_reg_1472 <= tmp_53_fu_1096_p35;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_876_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_188;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten19_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten19_load = indvar_flatten19_fu_192;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_184;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_10_ce0_local = 1'b1;
    end else begin
        delta_weights1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd0))) begin
        delta_weights1_10_we0_local = 1'b1;
    end else begin
        delta_weights1_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_11_ce0_local = 1'b1;
    end else begin
        delta_weights1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd0))) begin
        delta_weights1_11_we0_local = 1'b1;
    end else begin
        delta_weights1_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_12_ce0_local = 1'b1;
    end else begin
        delta_weights1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd0))) begin
        delta_weights1_12_we0_local = 1'b1;
    end else begin
        delta_weights1_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_13_ce0_local = 1'b1;
    end else begin
        delta_weights1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd0))) begin
        delta_weights1_13_we0_local = 1'b1;
    end else begin
        delta_weights1_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_14_ce0_local = 1'b1;
    end else begin
        delta_weights1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd0))) begin
        delta_weights1_14_we0_local = 1'b1;
    end else begin
        delta_weights1_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_15_ce0_local = 1'b1;
    end else begin
        delta_weights1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd0))) begin
        delta_weights1_15_we0_local = 1'b1;
    end else begin
        delta_weights1_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd1))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd1))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_4_ce0_local = 1'b1;
    end else begin
        delta_weights1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd1))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_5_ce0_local = 1'b1;
    end else begin
        delta_weights1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd1))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_ce0_local = 1'b1;
    end else begin
        delta_weights1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd1))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_ce0_local = 1'b1;
    end else begin
        delta_weights1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd1))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_8_ce0_local = 1'b1;
    end else begin
        delta_weights1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd0))) begin
        delta_weights1_8_we0_local = 1'b1;
    end else begin
        delta_weights1_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_9_ce0_local = 1'b1;
    end else begin
        delta_weights1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd0))) begin
        delta_weights1_9_we0_local = 1'b1;
    end else begin
        delta_weights1_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_ce0_local = 1'b1;
    end else begin
        delta_weights1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln115_reg_1303_pp0_iter9_reg == 1'd1))) begin
        delta_weights1_we0_local = 1'b1;
    end else begin
        delta_weights1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_10_ce0_local = 1'b1;
    end else begin
        oracle_activations1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_11_ce0_local = 1'b1;
    end else begin
        oracle_activations1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_12_ce0_local = 1'b1;
    end else begin
        oracle_activations1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_13_ce0_local = 1'b1;
    end else begin
        oracle_activations1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_14_ce0_local = 1'b1;
    end else begin
        oracle_activations1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_15_ce0_local = 1'b1;
    end else begin
        oracle_activations1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_2_ce0_local = 1'b1;
    end else begin
        oracle_activations1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_3_ce0_local = 1'b1;
    end else begin
        oracle_activations1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_4_ce0_local = 1'b1;
    end else begin
        oracle_activations1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_5_ce0_local = 1'b1;
    end else begin
        oracle_activations1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_6_ce0_local = 1'b1;
    end else begin
        oracle_activations1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_7_ce0_local = 1'b1;
    end else begin
        oracle_activations1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_8_ce0_local = 1'b1;
    end else begin
        oracle_activations1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_9_ce0_local = 1'b1;
    end else begin
        oracle_activations1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations1_ce0_local = 1'b1;
    end else begin
        oracle_activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_10_ce0_local = 1'b1;
    end else begin
        training_data_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_11_ce0_local = 1'b1;
    end else begin
        training_data_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_12_ce0_local = 1'b1;
    end else begin
        training_data_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_13_ce0_local = 1'b1;
    end else begin
        training_data_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_14_ce0_local = 1'b1;
    end else begin
        training_data_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_15_ce0_local = 1'b1;
    end else begin
        training_data_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_4_ce0_local = 1'b1;
    end else begin
        training_data_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_5_ce0_local = 1'b1;
    end else begin
        training_data_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_6_ce0_local = 1'b1;
    end else begin
        training_data_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_7_ce0_local = 1'b1;
    end else begin
        training_data_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_8_ce0_local = 1'b1;
    end else begin
        training_data_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        training_data_9_ce0_local = 1'b1;
    end else begin
        training_data_9_ce0_local = 1'b0;
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
assign add_ln113_1_fu_910_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_882_p2 = (ap_sig_allocacmp_indvar_flatten19_load + 7'd1);
assign add_ln114_fu_950_p2 = (select_ln112_fu_902_p3 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign arrayidx10_sum_fu_974_p2 = (zext_ln113_fu_971_p1 + phi_mul);
assign delta_weights1_10_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_10_ce0 = delta_weights1_10_ce0_local;
assign delta_weights1_10_d0 = mul_2_i1_reg_1536;
assign delta_weights1_10_we0 = delta_weights1_10_we0_local;
assign delta_weights1_11_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_11_ce0 = delta_weights1_11_ce0_local;
assign delta_weights1_11_d0 = mul_3_i1_reg_1542;
assign delta_weights1_11_we0 = delta_weights1_11_we0_local;
assign delta_weights1_12_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_12_ce0 = delta_weights1_12_ce0_local;
assign delta_weights1_12_d0 = mul_4_i1_reg_1548;
assign delta_weights1_12_we0 = delta_weights1_12_we0_local;
assign delta_weights1_13_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_13_ce0 = delta_weights1_13_ce0_local;
assign delta_weights1_13_d0 = mul_5_i1_reg_1554;
assign delta_weights1_13_we0 = delta_weights1_13_we0_local;
assign delta_weights1_14_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_14_ce0 = delta_weights1_14_ce0_local;
assign delta_weights1_14_d0 = mul_6_i1_reg_1560;
assign delta_weights1_14_we0 = delta_weights1_14_we0_local;
assign delta_weights1_15_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_15_ce0 = delta_weights1_15_ce0_local;
assign delta_weights1_15_d0 = mul_7_i1_reg_1566;
assign delta_weights1_15_we0 = delta_weights1_15_we0_local;
assign delta_weights1_1_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_d0 = mul_1_i1_reg_1530;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_2_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_d0 = mul_2_i1_reg_1536;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_3_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_d0 = mul_3_i1_reg_1542;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_4_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_d0 = mul_4_i1_reg_1548;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_5_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_d0 = mul_5_i1_reg_1554;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_6_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_d0 = mul_6_i1_reg_1560;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_7_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_d0 = mul_7_i1_reg_1566;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_8_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_8_ce0 = delta_weights1_8_ce0_local;
assign delta_weights1_8_d0 = mul_i4_reg_1524;
assign delta_weights1_8_we0 = delta_weights1_8_we0_local;
assign delta_weights1_9_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_9_ce0 = delta_weights1_9_ce0_local;
assign delta_weights1_9_d0 = mul_1_i1_reg_1530;
assign delta_weights1_9_we0 = delta_weights1_9_we0_local;
assign delta_weights1_address0 = zext_ln115_fu_1229_p1;
assign delta_weights1_ce0 = delta_weights1_ce0_local;
assign delta_weights1_d0 = mul_i4_reg_1524;
assign delta_weights1_we0 = delta_weights1_we0_local;
assign empty_fu_979_p1 = arrayidx10_sum_fu_974_p2[3:0];
assign grp_fu_3932_p_ce = 1'b1;
assign grp_fu_3932_p_din0 = tmp_53_reg_1472;
assign grp_fu_3932_p_din1 = select_ln115_reg_1484;
assign grp_fu_5677_p_ce = 1'b1;
assign grp_fu_5677_p_din0 = tmp_53_reg_1472;
assign grp_fu_5677_p_din1 = select_ln115_1_reg_1489;
assign grp_fu_5681_p_ce = 1'b1;
assign grp_fu_5681_p_din0 = tmp_53_reg_1472;
assign grp_fu_5681_p_din1 = select_ln115_2_reg_1494;
assign grp_fu_5685_p_ce = 1'b1;
assign grp_fu_5685_p_din0 = tmp_53_reg_1472;
assign grp_fu_5685_p_din1 = select_ln115_3_reg_1499;
assign grp_fu_5689_p_ce = 1'b1;
assign grp_fu_5689_p_din0 = tmp_53_reg_1472;
assign grp_fu_5689_p_din1 = select_ln115_4_reg_1504;
assign grp_fu_5693_p_ce = 1'b1;
assign grp_fu_5693_p_din0 = tmp_53_reg_1472;
assign grp_fu_5693_p_din1 = select_ln115_5_reg_1509;
assign grp_fu_5697_p_ce = 1'b1;
assign grp_fu_5697_p_din0 = tmp_53_reg_1472;
assign grp_fu_5697_p_din1 = select_ln115_6_reg_1514;
assign grp_fu_5701_p_ce = 1'b1;
assign grp_fu_5701_p_din0 = tmp_53_reg_1472;
assign grp_fu_5701_p_din1 = select_ln115_7_reg_1519;
assign icmp_ln113_fu_876_p2 = ((ap_sig_allocacmp_indvar_flatten19_load == 7'd104) ? 1'b1 : 1'b0);
assign icmp_ln115_1_fu_938_p2 = ((trunc_ln114_fu_924_p1 != 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln115_fu_944_p2 = ((trunc_ln114_fu_924_p1 == 4'd0) ? 1'b1 : 1'b0);
assign or_ln2_fu_1223_p3 = {{select_ln113_reg_1279_pp0_iter9_reg}, {lshr_ln_reg_1285_pp0_iter9_reg}};
assign oracle_activations1_10_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_10_ce0 = oracle_activations1_10_ce0_local;
assign oracle_activations1_11_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_11_ce0 = oracle_activations1_11_ce0_local;
assign oracle_activations1_12_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_12_ce0 = oracle_activations1_12_ce0_local;
assign oracle_activations1_13_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_13_ce0 = oracle_activations1_13_ce0_local;
assign oracle_activations1_14_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_14_ce0 = oracle_activations1_14_ce0_local;
assign oracle_activations1_15_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_15_ce0 = oracle_activations1_15_ce0_local;
assign oracle_activations1_1_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_1_ce0 = oracle_activations1_1_ce0_local;
assign oracle_activations1_2_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_2_ce0 = oracle_activations1_2_ce0_local;
assign oracle_activations1_3_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_3_ce0 = oracle_activations1_3_ce0_local;
assign oracle_activations1_4_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_4_ce0 = oracle_activations1_4_ce0_local;
assign oracle_activations1_5_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_5_ce0 = oracle_activations1_5_ce0_local;
assign oracle_activations1_6_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_6_ce0 = oracle_activations1_6_ce0_local;
assign oracle_activations1_7_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_7_ce0 = oracle_activations1_7_ce0_local;
assign oracle_activations1_8_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_8_ce0 = oracle_activations1_8_ce0_local;
assign oracle_activations1_9_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_9_ce0 = oracle_activations1_9_ce0_local;
assign oracle_activations1_address0 = zext_ln112_fu_1013_p1;
assign oracle_activations1_ce0 = oracle_activations1_ce0_local;
assign p_cast_fu_993_p1 = tmp_s_fu_983_p4;
assign select_ln112_fu_902_p3 = ((tmp_fu_894_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_916_p3 = ((tmp_fu_894_p3[0:0] == 1'b1) ? add_ln113_1_fu_910_p2 : ap_sig_allocacmp_i_load);
assign select_ln115_1_fu_1174_p3 = ((icmp_ln115_1_reg_1291_pp0_iter1_reg[0:0] == 1'b1) ? oracle_activations1_9_q0 : oracle_activations1_1_q0);
assign select_ln115_2_fu_1181_p3 = ((icmp_ln115_1_reg_1291_pp0_iter1_reg[0:0] == 1'b1) ? oracle_activations1_10_q0 : oracle_activations1_2_q0);
assign select_ln115_3_fu_1188_p3 = ((icmp_ln115_1_reg_1291_pp0_iter1_reg[0:0] == 1'b1) ? oracle_activations1_11_q0 : oracle_activations1_3_q0);
assign select_ln115_4_fu_1195_p3 = ((icmp_ln115_1_reg_1291_pp0_iter1_reg[0:0] == 1'b1) ? oracle_activations1_12_q0 : oracle_activations1_4_q0);
assign select_ln115_5_fu_1202_p3 = ((icmp_ln115_1_reg_1291_pp0_iter1_reg[0:0] == 1'b1) ? oracle_activations1_13_q0 : oracle_activations1_5_q0);
assign select_ln115_6_fu_1209_p3 = ((icmp_ln115_1_reg_1291_pp0_iter1_reg[0:0] == 1'b1) ? oracle_activations1_14_q0 : oracle_activations1_6_q0);
assign select_ln115_7_fu_1216_p3 = ((icmp_ln115_1_reg_1291_pp0_iter1_reg[0:0] == 1'b1) ? oracle_activations1_15_q0 : oracle_activations1_7_q0);
assign select_ln115_fu_1167_p3 = ((icmp_ln115_1_reg_1291_pp0_iter1_reg[0:0] == 1'b1) ? oracle_activations1_8_q0 : oracle_activations1_q0);
assign tmp_53_fu_1096_p10 = training_data_4_q0;
assign tmp_53_fu_1096_p12 = training_data_5_q0;
assign tmp_53_fu_1096_p14 = training_data_6_q0;
assign tmp_53_fu_1096_p16 = training_data_7_q0;
assign tmp_53_fu_1096_p18 = training_data_8_q0;
assign tmp_53_fu_1096_p2 = training_data_0_q0;
assign tmp_53_fu_1096_p20 = training_data_9_q0;
assign tmp_53_fu_1096_p22 = training_data_10_q0;
assign tmp_53_fu_1096_p24 = training_data_11_q0;
assign tmp_53_fu_1096_p26 = training_data_12_q0;
assign tmp_53_fu_1096_p28 = training_data_13_q0;
assign tmp_53_fu_1096_p30 = training_data_14_q0;
assign tmp_53_fu_1096_p32 = training_data_15_q0;
assign tmp_53_fu_1096_p33 = 'bx;
assign tmp_53_fu_1096_p4 = training_data_1_q0;
assign tmp_53_fu_1096_p6 = training_data_2_q0;
assign tmp_53_fu_1096_p8 = training_data_3_q0;
assign tmp_fu_894_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_983_p4 = {{arrayidx10_sum_fu_974_p2[11:4]}};
assign training_data_0_address0 = p_cast_fu_993_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_10_address0 = p_cast_fu_993_p1;
assign training_data_10_ce0 = training_data_10_ce0_local;
assign training_data_11_address0 = p_cast_fu_993_p1;
assign training_data_11_ce0 = training_data_11_ce0_local;
assign training_data_12_address0 = p_cast_fu_993_p1;
assign training_data_12_ce0 = training_data_12_ce0_local;
assign training_data_13_address0 = p_cast_fu_993_p1;
assign training_data_13_ce0 = training_data_13_ce0_local;
assign training_data_14_address0 = p_cast_fu_993_p1;
assign training_data_14_ce0 = training_data_14_ce0_local;
assign training_data_15_address0 = p_cast_fu_993_p1;
assign training_data_15_ce0 = training_data_15_ce0_local;
assign training_data_1_address0 = p_cast_fu_993_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_2_address0 = p_cast_fu_993_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_3_address0 = p_cast_fu_993_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_4_address0 = p_cast_fu_993_p1;
assign training_data_4_ce0 = training_data_4_ce0_local;
assign training_data_5_address0 = p_cast_fu_993_p1;
assign training_data_5_ce0 = training_data_5_ce0_local;
assign training_data_6_address0 = p_cast_fu_993_p1;
assign training_data_6_ce0 = training_data_6_ce0_local;
assign training_data_7_address0 = p_cast_fu_993_p1;
assign training_data_7_ce0 = training_data_7_ce0_local;
assign training_data_8_address0 = p_cast_fu_993_p1;
assign training_data_8_ce0 = training_data_8_ce0_local;
assign training_data_9_address0 = p_cast_fu_993_p1;
assign training_data_9_ce0 = training_data_9_ce0_local;
assign trunc_ln114_fu_924_p1 = select_ln112_fu_902_p3[3:0];
assign zext_ln112_fu_1013_p1 = lshr_ln_reg_1285;
assign zext_ln113_fu_971_p1 = select_ln113_reg_1279;
assign zext_ln115_fu_1229_p1 = or_ln2_fu_1223_p3;
endmodule 