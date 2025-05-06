
module backprop_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations1_address0,activations1_ce0,activations1_q0,activations1_1_address0,activations1_1_ce0,activations1_1_q0,activations1_2_address0,activations1_2_ce0,activations1_2_q0,activations1_3_address0,activations1_3_ce0,activations1_3_q0,activations1_4_address0,activations1_4_ce0,activations1_4_q0,activations1_5_address0,activations1_5_ce0,activations1_5_q0,activations1_6_address0,activations1_6_ce0,activations1_6_q0,activations1_7_address0,activations1_7_ce0,activations1_7_q0,activations1_8_address0,activations1_8_ce0,activations1_8_q0,activations1_9_address0,activations1_9_ce0,activations1_9_q0,activations1_10_address0,activations1_10_ce0,activations1_10_q0,activations1_11_address0,activations1_11_ce0,activations1_11_q0,activations1_12_address0,activations1_12_ce0,activations1_12_q0,activations1_13_address0,activations1_13_ce0,activations1_13_q0,activations1_14_address0,activations1_14_ce0,activations1_14_q0,activations1_15_address0,activations1_15_ce0,activations1_15_q0,delta_weights2_15_address0,delta_weights2_15_ce0,delta_weights2_15_we0,delta_weights2_15_d0,delta_weights2_14_address0,delta_weights2_14_ce0,delta_weights2_14_we0,delta_weights2_14_d0,delta_weights2_13_address0,delta_weights2_13_ce0,delta_weights2_13_we0,delta_weights2_13_d0,delta_weights2_12_address0,delta_weights2_12_ce0,delta_weights2_12_we0,delta_weights2_12_d0,delta_weights2_11_address0,delta_weights2_11_ce0,delta_weights2_11_we0,delta_weights2_11_d0,delta_weights2_10_address0,delta_weights2_10_ce0,delta_weights2_10_we0,delta_weights2_10_d0,delta_weights2_9_address0,delta_weights2_9_ce0,delta_weights2_9_we0,delta_weights2_9_d0,delta_weights2_8_address0,delta_weights2_8_ce0,delta_weights2_8_we0,delta_weights2_8_d0,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_address0,delta_weights2_ce0,delta_weights2_we0,delta_weights2_d0,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_q0,oracle_activations2_4_address0,oracle_activations2_4_ce0,oracle_activations2_4_q0,oracle_activations2_8_address0,oracle_activations2_8_ce0,oracle_activations2_8_q0,oracle_activations2_12_address0,oracle_activations2_12_ce0,oracle_activations2_12_q0,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_q0,oracle_activations2_5_address0,oracle_activations2_5_ce0,oracle_activations2_5_q0,oracle_activations2_9_address0,oracle_activations2_9_ce0,oracle_activations2_9_q0,oracle_activations2_13_address0,oracle_activations2_13_ce0,oracle_activations2_13_q0,oracle_activations2_2_address0,oracle_activations2_2_ce0,oracle_activations2_2_q0,oracle_activations2_6_address0,oracle_activations2_6_ce0,oracle_activations2_6_q0,oracle_activations2_10_address0,oracle_activations2_10_ce0,oracle_activations2_10_q0,oracle_activations2_14_address0,oracle_activations2_14_ce0,oracle_activations2_14_q0,oracle_activations2_3_address0,oracle_activations2_3_ce0,oracle_activations2_3_q0,oracle_activations2_7_address0,oracle_activations2_7_ce0,oracle_activations2_7_q0,oracle_activations2_11_address0,oracle_activations2_11_ce0,oracle_activations2_11_q0,oracle_activations2_15_address0,oracle_activations2_15_ce0,oracle_activations2_15_q0,grp_fu_3932_p_din0,grp_fu_3932_p_din1,grp_fu_3932_p_dout0,grp_fu_3932_p_ce,grp_fu_5661_p_din0,grp_fu_5661_p_din1,grp_fu_5661_p_dout0,grp_fu_5661_p_ce,grp_fu_5665_p_din0,grp_fu_5665_p_din1,grp_fu_5665_p_dout0,grp_fu_5665_p_ce,grp_fu_5669_p_din0,grp_fu_5669_p_din1,grp_fu_5669_p_dout0,grp_fu_5669_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [1:0] activations1_address0;
output   activations1_ce0;
input  [63:0] activations1_q0;
output  [1:0] activations1_1_address0;
output   activations1_1_ce0;
input  [63:0] activations1_1_q0;
output  [1:0] activations1_2_address0;
output   activations1_2_ce0;
input  [63:0] activations1_2_q0;
output  [1:0] activations1_3_address0;
output   activations1_3_ce0;
input  [63:0] activations1_3_q0;
output  [1:0] activations1_4_address0;
output   activations1_4_ce0;
input  [63:0] activations1_4_q0;
output  [1:0] activations1_5_address0;
output   activations1_5_ce0;
input  [63:0] activations1_5_q0;
output  [1:0] activations1_6_address0;
output   activations1_6_ce0;
input  [63:0] activations1_6_q0;
output  [1:0] activations1_7_address0;
output   activations1_7_ce0;
input  [63:0] activations1_7_q0;
output  [1:0] activations1_8_address0;
output   activations1_8_ce0;
input  [63:0] activations1_8_q0;
output  [1:0] activations1_9_address0;
output   activations1_9_ce0;
input  [63:0] activations1_9_q0;
output  [1:0] activations1_10_address0;
output   activations1_10_ce0;
input  [63:0] activations1_10_q0;
output  [1:0] activations1_11_address0;
output   activations1_11_ce0;
input  [63:0] activations1_11_q0;
output  [1:0] activations1_12_address0;
output   activations1_12_ce0;
input  [63:0] activations1_12_q0;
output  [1:0] activations1_13_address0;
output   activations1_13_ce0;
input  [63:0] activations1_13_q0;
output  [1:0] activations1_14_address0;
output   activations1_14_ce0;
input  [63:0] activations1_14_q0;
output  [1:0] activations1_15_address0;
output   activations1_15_ce0;
input  [63:0] activations1_15_q0;
output  [7:0] delta_weights2_15_address0;
output   delta_weights2_15_ce0;
output   delta_weights2_15_we0;
output  [63:0] delta_weights2_15_d0;
output  [7:0] delta_weights2_14_address0;
output   delta_weights2_14_ce0;
output   delta_weights2_14_we0;
output  [63:0] delta_weights2_14_d0;
output  [7:0] delta_weights2_13_address0;
output   delta_weights2_13_ce0;
output   delta_weights2_13_we0;
output  [63:0] delta_weights2_13_d0;
output  [7:0] delta_weights2_12_address0;
output   delta_weights2_12_ce0;
output   delta_weights2_12_we0;
output  [63:0] delta_weights2_12_d0;
output  [7:0] delta_weights2_11_address0;
output   delta_weights2_11_ce0;
output   delta_weights2_11_we0;
output  [63:0] delta_weights2_11_d0;
output  [7:0] delta_weights2_10_address0;
output   delta_weights2_10_ce0;
output   delta_weights2_10_we0;
output  [63:0] delta_weights2_10_d0;
output  [7:0] delta_weights2_9_address0;
output   delta_weights2_9_ce0;
output   delta_weights2_9_we0;
output  [63:0] delta_weights2_9_d0;
output  [7:0] delta_weights2_8_address0;
output   delta_weights2_8_ce0;
output   delta_weights2_8_we0;
output  [63:0] delta_weights2_8_d0;
output  [7:0] delta_weights2_7_address0;
output   delta_weights2_7_ce0;
output   delta_weights2_7_we0;
output  [63:0] delta_weights2_7_d0;
output  [7:0] delta_weights2_6_address0;
output   delta_weights2_6_ce0;
output   delta_weights2_6_we0;
output  [63:0] delta_weights2_6_d0;
output  [7:0] delta_weights2_5_address0;
output   delta_weights2_5_ce0;
output   delta_weights2_5_we0;
output  [63:0] delta_weights2_5_d0;
output  [7:0] delta_weights2_4_address0;
output   delta_weights2_4_ce0;
output   delta_weights2_4_we0;
output  [63:0] delta_weights2_4_d0;
output  [7:0] delta_weights2_3_address0;
output   delta_weights2_3_ce0;
output   delta_weights2_3_we0;
output  [63:0] delta_weights2_3_d0;
output  [7:0] delta_weights2_2_address0;
output   delta_weights2_2_ce0;
output   delta_weights2_2_we0;
output  [63:0] delta_weights2_2_d0;
output  [7:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [7:0] delta_weights2_address0;
output   delta_weights2_ce0;
output   delta_weights2_we0;
output  [63:0] delta_weights2_d0;
output  [1:0] oracle_activations2_address0;
output   oracle_activations2_ce0;
input  [63:0] oracle_activations2_q0;
output  [1:0] oracle_activations2_4_address0;
output   oracle_activations2_4_ce0;
input  [63:0] oracle_activations2_4_q0;
output  [1:0] oracle_activations2_8_address0;
output   oracle_activations2_8_ce0;
input  [63:0] oracle_activations2_8_q0;
output  [1:0] oracle_activations2_12_address0;
output   oracle_activations2_12_ce0;
input  [63:0] oracle_activations2_12_q0;
output  [1:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
input  [63:0] oracle_activations2_1_q0;
output  [1:0] oracle_activations2_5_address0;
output   oracle_activations2_5_ce0;
input  [63:0] oracle_activations2_5_q0;
output  [1:0] oracle_activations2_9_address0;
output   oracle_activations2_9_ce0;
input  [63:0] oracle_activations2_9_q0;
output  [1:0] oracle_activations2_13_address0;
output   oracle_activations2_13_ce0;
input  [63:0] oracle_activations2_13_q0;
output  [1:0] oracle_activations2_2_address0;
output   oracle_activations2_2_ce0;
input  [63:0] oracle_activations2_2_q0;
output  [1:0] oracle_activations2_6_address0;
output   oracle_activations2_6_ce0;
input  [63:0] oracle_activations2_6_q0;
output  [1:0] oracle_activations2_10_address0;
output   oracle_activations2_10_ce0;
input  [63:0] oracle_activations2_10_q0;
output  [1:0] oracle_activations2_14_address0;
output   oracle_activations2_14_ce0;
input  [63:0] oracle_activations2_14_q0;
output  [1:0] oracle_activations2_3_address0;
output   oracle_activations2_3_ce0;
input  [63:0] oracle_activations2_3_q0;
output  [1:0] oracle_activations2_7_address0;
output   oracle_activations2_7_ce0;
input  [63:0] oracle_activations2_7_q0;
output  [1:0] oracle_activations2_11_address0;
output   oracle_activations2_11_ce0;
input  [63:0] oracle_activations2_11_q0;
output  [1:0] oracle_activations2_15_address0;
output   oracle_activations2_15_ce0;
input  [63:0] oracle_activations2_15_q0;
output  [63:0] grp_fu_3932_p_din0;
output  [63:0] grp_fu_3932_p_din1;
input  [63:0] grp_fu_3932_p_dout0;
output   grp_fu_3932_p_ce;
output  [63:0] grp_fu_5661_p_din0;
output  [63:0] grp_fu_5661_p_din1;
input  [63:0] grp_fu_5661_p_dout0;
output   grp_fu_5661_p_ce;
output  [63:0] grp_fu_5665_p_din0;
output  [63:0] grp_fu_5665_p_din1;
input  [63:0] grp_fu_5665_p_dout0;
output   grp_fu_5665_p_ce;
output  [63:0] grp_fu_5669_p_din0;
output  [63:0] grp_fu_5669_p_din1;
input  [63:0] grp_fu_5669_p_dout0;
output   grp_fu_5669_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln93_fu_848_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] trunc_ln93_fu_896_p1;
reg   [3:0] trunc_ln93_reg_1203;
wire   [3:0] trunc_ln94_fu_930_p1;
reg   [3:0] trunc_ln94_reg_1288;
reg   [3:0] trunc_ln94_reg_1288_pp0_iter1_reg;
reg   [3:0] trunc_ln94_reg_1288_pp0_iter2_reg;
reg   [3:0] trunc_ln94_reg_1288_pp0_iter3_reg;
reg   [3:0] trunc_ln94_reg_1288_pp0_iter4_reg;
reg   [3:0] trunc_ln94_reg_1288_pp0_iter5_reg;
reg   [3:0] trunc_ln94_reg_1288_pp0_iter6_reg;
reg   [3:0] trunc_ln94_reg_1288_pp0_iter7_reg;
reg   [3:0] trunc_ln94_reg_1288_pp0_iter8_reg;
wire   [1:0] lshr_ln92_1_fu_934_p4;
reg   [1:0] lshr_ln92_1_reg_1296;
reg   [1:0] lshr_ln92_1_reg_1296_pp0_iter1_reg;
reg   [1:0] lshr_ln92_1_reg_1296_pp0_iter2_reg;
reg   [1:0] lshr_ln92_1_reg_1296_pp0_iter3_reg;
reg   [1:0] lshr_ln92_1_reg_1296_pp0_iter4_reg;
reg   [1:0] lshr_ln92_1_reg_1296_pp0_iter5_reg;
reg   [1:0] lshr_ln92_1_reg_1296_pp0_iter6_reg;
reg   [1:0] lshr_ln92_1_reg_1296_pp0_iter7_reg;
reg   [1:0] lshr_ln92_1_reg_1296_pp0_iter8_reg;
wire   [5:0] trunc_ln95_fu_964_p1;
reg   [5:0] trunc_ln95_reg_1321;
reg   [5:0] trunc_ln95_reg_1321_pp0_iter1_reg;
reg   [5:0] trunc_ln95_reg_1321_pp0_iter2_reg;
reg   [5:0] trunc_ln95_reg_1321_pp0_iter3_reg;
reg   [5:0] trunc_ln95_reg_1321_pp0_iter4_reg;
reg   [5:0] trunc_ln95_reg_1321_pp0_iter5_reg;
reg   [5:0] trunc_ln95_reg_1321_pp0_iter6_reg;
reg   [5:0] trunc_ln95_reg_1321_pp0_iter7_reg;
reg   [5:0] trunc_ln95_reg_1321_pp0_iter8_reg;
wire   [63:0] tmp_s_fu_989_p35;
reg   [63:0] tmp_s_reg_1386;
wire   [63:0] tmp_106_fu_1060_p11;
reg   [63:0] tmp_106_reg_1394;
wire   [63:0] tmp_107_fu_1083_p11;
reg   [63:0] tmp_107_reg_1399;
wire   [63:0] tmp_108_fu_1106_p11;
reg   [63:0] tmp_108_reg_1404;
wire   [63:0] tmp_109_fu_1129_p11;
reg   [63:0] tmp_109_reg_1409;
reg   [63:0] mul_i4_reg_1414;
reg   [63:0] mul_1_i1_reg_1422;
reg   [63:0] mul_2_i1_reg_1430;
reg   [63:0] mul_3_i1_reg_1438;
wire   [63:0] zext_ln92_fu_910_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln92_1_fu_944_p1;
wire   [63:0] zext_ln95_fu_1158_p1;
reg   [6:0] j_2_fu_178;
wire   [6:0] add_ln94_fu_968_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_2_load;
reg   [6:0] i_fu_182;
wire   [6:0] select_ln93_fu_888_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [10:0] indvar_flatten12_fu_186;
wire   [10:0] add_ln93_fu_854_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten12_load;
reg    activations1_ce0_local;
reg    activations1_1_ce0_local;
reg    activations1_2_ce0_local;
reg    activations1_3_ce0_local;
reg    activations1_4_ce0_local;
reg    activations1_5_ce0_local;
reg    activations1_6_ce0_local;
reg    activations1_7_ce0_local;
reg    activations1_8_ce0_local;
reg    activations1_9_ce0_local;
reg    activations1_10_ce0_local;
reg    activations1_11_ce0_local;
reg    activations1_12_ce0_local;
reg    activations1_13_ce0_local;
reg    activations1_14_ce0_local;
reg    activations1_15_ce0_local;
reg    oracle_activations2_ce0_local;
reg    oracle_activations2_4_ce0_local;
reg    oracle_activations2_8_ce0_local;
reg    oracle_activations2_12_ce0_local;
reg    oracle_activations2_1_ce0_local;
reg    oracle_activations2_5_ce0_local;
reg    oracle_activations2_9_ce0_local;
reg    oracle_activations2_13_ce0_local;
reg    oracle_activations2_2_ce0_local;
reg    oracle_activations2_6_ce0_local;
reg    oracle_activations2_10_ce0_local;
reg    oracle_activations2_14_ce0_local;
reg    oracle_activations2_3_ce0_local;
reg    oracle_activations2_7_ce0_local;
reg    oracle_activations2_11_ce0_local;
reg    oracle_activations2_15_ce0_local;
reg    delta_weights2_8_we0_local;
reg    delta_weights2_8_ce0_local;
reg    delta_weights2_9_we0_local;
reg    delta_weights2_9_ce0_local;
reg    delta_weights2_10_we0_local;
reg    delta_weights2_10_ce0_local;
reg    delta_weights2_11_we0_local;
reg    delta_weights2_11_ce0_local;
reg    delta_weights2_4_we0_local;
reg    delta_weights2_4_ce0_local;
reg    delta_weights2_5_we0_local;
reg    delta_weights2_5_ce0_local;
reg    delta_weights2_6_we0_local;
reg    delta_weights2_6_ce0_local;
reg    delta_weights2_7_we0_local;
reg    delta_weights2_7_ce0_local;
reg    delta_weights2_we0_local;
reg    delta_weights2_ce0_local;
reg    delta_weights2_1_we0_local;
reg    delta_weights2_1_ce0_local;
reg    delta_weights2_2_we0_local;
reg    delta_weights2_2_ce0_local;
reg    delta_weights2_3_we0_local;
reg    delta_weights2_3_ce0_local;
reg    delta_weights2_12_we0_local;
reg    delta_weights2_12_ce0_local;
reg    delta_weights2_13_we0_local;
reg    delta_weights2_13_ce0_local;
reg    delta_weights2_14_we0_local;
reg    delta_weights2_14_ce0_local;
reg    delta_weights2_15_we0_local;
reg    delta_weights2_15_ce0_local;
wire   [0:0] tmp_fu_866_p3;
wire   [6:0] add_ln93_1_fu_882_p2;
wire   [1:0] lshr_ln_fu_900_p4;
wire   [6:0] select_ln92_fu_874_p3;
wire   [63:0] tmp_s_fu_989_p33;
wire   [63:0] tmp_106_fu_1060_p9;
wire   [63:0] tmp_107_fu_1083_p9;
wire   [63:0] tmp_108_fu_1106_p9;
wire   [63:0] tmp_109_fu_1129_p9;
wire   [7:0] add_ln1_fu_1152_p3;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_s_fu_989_p1;
wire   [3:0] tmp_s_fu_989_p3;
wire   [3:0] tmp_s_fu_989_p5;
wire   [3:0] tmp_s_fu_989_p7;
wire   [3:0] tmp_s_fu_989_p9;
wire   [3:0] tmp_s_fu_989_p11;
wire   [3:0] tmp_s_fu_989_p13;
wire   [3:0] tmp_s_fu_989_p15;
wire  signed [3:0] tmp_s_fu_989_p17;
wire  signed [3:0] tmp_s_fu_989_p19;
wire  signed [3:0] tmp_s_fu_989_p21;
wire  signed [3:0] tmp_s_fu_989_p23;
wire  signed [3:0] tmp_s_fu_989_p25;
wire  signed [3:0] tmp_s_fu_989_p27;
wire  signed [3:0] tmp_s_fu_989_p29;
wire  signed [3:0] tmp_s_fu_989_p31;
wire   [3:0] tmp_106_fu_1060_p1;
wire   [3:0] tmp_106_fu_1060_p3;
wire  signed [3:0] tmp_106_fu_1060_p5;
wire  signed [3:0] tmp_106_fu_1060_p7;
wire   [3:0] tmp_107_fu_1083_p1;
wire   [3:0] tmp_107_fu_1083_p3;
wire  signed [3:0] tmp_107_fu_1083_p5;
wire  signed [3:0] tmp_107_fu_1083_p7;
wire   [3:0] tmp_108_fu_1106_p1;
wire   [3:0] tmp_108_fu_1106_p3;
wire  signed [3:0] tmp_108_fu_1106_p5;
wire  signed [3:0] tmp_108_fu_1106_p7;
wire   [3:0] tmp_109_fu_1129_p1;
wire   [3:0] tmp_109_fu_1129_p3;
wire  signed [3:0] tmp_109_fu_1129_p5;
wire  signed [3:0] tmp_109_fu_1129_p7;
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
#0 j_2_fu_178 = 7'd0;
#0 i_fu_182 = 7'd0;
#0 indvar_flatten12_fu_186 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U764(.din0(activations1_q0),.din1(activations1_1_q0),.din2(activations1_2_q0),.din3(activations1_3_q0),.din4(activations1_4_q0),.din5(activations1_5_q0),.din6(activations1_6_q0),.din7(activations1_7_q0),.din8(activations1_8_q0),.din9(activations1_9_q0),.din10(activations1_10_q0),.din11(activations1_11_q0),.din12(activations1_12_q0),.din13(activations1_13_q0),.din14(activations1_14_q0),.din15(activations1_15_q0),.def(tmp_s_fu_989_p33),.sel(trunc_ln93_reg_1203),.dout(tmp_s_fu_989_p35));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U765(.din0(oracle_activations2_q0),.din1(oracle_activations2_4_q0),.din2(oracle_activations2_8_q0),.din3(oracle_activations2_12_q0),.def(tmp_106_fu_1060_p9),.sel(trunc_ln94_reg_1288),.dout(tmp_106_fu_1060_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U766(.din0(oracle_activations2_1_q0),.din1(oracle_activations2_5_q0),.din2(oracle_activations2_9_q0),.din3(oracle_activations2_13_q0),.def(tmp_107_fu_1083_p9),.sel(trunc_ln94_reg_1288),.dout(tmp_107_fu_1083_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U767(.din0(oracle_activations2_2_q0),.din1(oracle_activations2_6_q0),.din2(oracle_activations2_10_q0),.din3(oracle_activations2_14_q0),.def(tmp_108_fu_1106_p9),.sel(trunc_ln94_reg_1288),.dout(tmp_108_fu_1106_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U768(.din0(oracle_activations2_3_q0),.din1(oracle_activations2_7_q0),.din2(oracle_activations2_11_q0),.din3(oracle_activations2_15_q0),.def(tmp_109_fu_1129_p9),.sel(trunc_ln94_reg_1288),.dout(tmp_109_fu_1129_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
        if (((icmp_ln93_fu_848_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_182 <= select_ln93_fu_888_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_182 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_848_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten12_fu_186 <= add_ln93_fu_854_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12_fu_186 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_848_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_2_fu_178 <= add_ln94_fu_968_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_2_fu_178 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln92_1_reg_1296 <= {{select_ln92_fu_874_p3[5:4]}};
        lshr_ln92_1_reg_1296_pp0_iter1_reg <= lshr_ln92_1_reg_1296;
        tmp_106_reg_1394 <= tmp_106_fu_1060_p11;
        tmp_107_reg_1399 <= tmp_107_fu_1083_p11;
        tmp_108_reg_1404 <= tmp_108_fu_1106_p11;
        tmp_109_reg_1409 <= tmp_109_fu_1129_p11;
        tmp_s_reg_1386 <= tmp_s_fu_989_p35;
        trunc_ln93_reg_1203 <= trunc_ln93_fu_896_p1;
        trunc_ln94_reg_1288 <= trunc_ln94_fu_930_p1;
        trunc_ln94_reg_1288_pp0_iter1_reg <= trunc_ln94_reg_1288;
        trunc_ln95_reg_1321 <= trunc_ln95_fu_964_p1;
        trunc_ln95_reg_1321_pp0_iter1_reg <= trunc_ln95_reg_1321;
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
        lshr_ln92_1_reg_1296_pp0_iter2_reg <= lshr_ln92_1_reg_1296_pp0_iter1_reg;
        lshr_ln92_1_reg_1296_pp0_iter3_reg <= lshr_ln92_1_reg_1296_pp0_iter2_reg;
        lshr_ln92_1_reg_1296_pp0_iter4_reg <= lshr_ln92_1_reg_1296_pp0_iter3_reg;
        lshr_ln92_1_reg_1296_pp0_iter5_reg <= lshr_ln92_1_reg_1296_pp0_iter4_reg;
        lshr_ln92_1_reg_1296_pp0_iter6_reg <= lshr_ln92_1_reg_1296_pp0_iter5_reg;
        lshr_ln92_1_reg_1296_pp0_iter7_reg <= lshr_ln92_1_reg_1296_pp0_iter6_reg;
        lshr_ln92_1_reg_1296_pp0_iter8_reg <= lshr_ln92_1_reg_1296_pp0_iter7_reg;
        mul_1_i1_reg_1422 <= grp_fu_5661_p_dout0;
        mul_2_i1_reg_1430 <= grp_fu_5665_p_dout0;
        mul_3_i1_reg_1438 <= grp_fu_5669_p_dout0;
        mul_i4_reg_1414 <= grp_fu_3932_p_dout0;
        trunc_ln94_reg_1288_pp0_iter2_reg <= trunc_ln94_reg_1288_pp0_iter1_reg;
        trunc_ln94_reg_1288_pp0_iter3_reg <= trunc_ln94_reg_1288_pp0_iter2_reg;
        trunc_ln94_reg_1288_pp0_iter4_reg <= trunc_ln94_reg_1288_pp0_iter3_reg;
        trunc_ln94_reg_1288_pp0_iter5_reg <= trunc_ln94_reg_1288_pp0_iter4_reg;
        trunc_ln94_reg_1288_pp0_iter6_reg <= trunc_ln94_reg_1288_pp0_iter5_reg;
        trunc_ln94_reg_1288_pp0_iter7_reg <= trunc_ln94_reg_1288_pp0_iter6_reg;
        trunc_ln94_reg_1288_pp0_iter8_reg <= trunc_ln94_reg_1288_pp0_iter7_reg;
        trunc_ln95_reg_1321_pp0_iter2_reg <= trunc_ln95_reg_1321_pp0_iter1_reg;
        trunc_ln95_reg_1321_pp0_iter3_reg <= trunc_ln95_reg_1321_pp0_iter2_reg;
        trunc_ln95_reg_1321_pp0_iter4_reg <= trunc_ln95_reg_1321_pp0_iter3_reg;
        trunc_ln95_reg_1321_pp0_iter5_reg <= trunc_ln95_reg_1321_pp0_iter4_reg;
        trunc_ln95_reg_1321_pp0_iter6_reg <= trunc_ln95_reg_1321_pp0_iter5_reg;
        trunc_ln95_reg_1321_pp0_iter7_reg <= trunc_ln95_reg_1321_pp0_iter6_reg;
        trunc_ln95_reg_1321_pp0_iter8_reg <= trunc_ln95_reg_1321_pp0_iter7_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_10_ce0_local = 1'b1;
    end else begin
        activations1_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_11_ce0_local = 1'b1;
    end else begin
        activations1_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_12_ce0_local = 1'b1;
    end else begin
        activations1_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_13_ce0_local = 1'b1;
    end else begin
        activations1_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_14_ce0_local = 1'b1;
    end else begin
        activations1_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_15_ce0_local = 1'b1;
    end else begin
        activations1_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_1_ce0_local = 1'b1;
    end else begin
        activations1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_2_ce0_local = 1'b1;
    end else begin
        activations1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_3_ce0_local = 1'b1;
    end else begin
        activations1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_4_ce0_local = 1'b1;
    end else begin
        activations1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_5_ce0_local = 1'b1;
    end else begin
        activations1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_6_ce0_local = 1'b1;
    end else begin
        activations1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_7_ce0_local = 1'b1;
    end else begin
        activations1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_8_ce0_local = 1'b1;
    end else begin
        activations1_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_9_ce0_local = 1'b1;
    end else begin
        activations1_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations1_ce0_local = 1'b1;
    end else begin
        activations1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln93_fu_848_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_182;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12_load = indvar_flatten12_fu_186;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_2_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_2_load = j_2_fu_178;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_10_ce0_local = 1'b1;
    end else begin
        delta_weights2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln94_reg_1288_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_10_we0_local = 1'b1;
    end else begin
        delta_weights2_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_11_ce0_local = 1'b1;
    end else begin
        delta_weights2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln94_reg_1288_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_11_we0_local = 1'b1;
    end else begin
        delta_weights2_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_12_ce0_local = 1'b1;
    end else begin
        delta_weights2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln94_reg_1288_pp0_iter8_reg == 4'd0) & ~(trunc_ln94_reg_1288_pp0_iter8_reg == 4'd4) & ~(trunc_ln94_reg_1288_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_12_we0_local = 1'b1;
    end else begin
        delta_weights2_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_13_ce0_local = 1'b1;
    end else begin
        delta_weights2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln94_reg_1288_pp0_iter8_reg == 4'd0) & ~(trunc_ln94_reg_1288_pp0_iter8_reg == 4'd4) & ~(trunc_ln94_reg_1288_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_13_we0_local = 1'b1;
    end else begin
        delta_weights2_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_14_ce0_local = 1'b1;
    end else begin
        delta_weights2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln94_reg_1288_pp0_iter8_reg == 4'd0) & ~(trunc_ln94_reg_1288_pp0_iter8_reg == 4'd4) & ~(trunc_ln94_reg_1288_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_14_we0_local = 1'b1;
    end else begin
        delta_weights2_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_15_ce0_local = 1'b1;
    end else begin
        delta_weights2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln94_reg_1288_pp0_iter8_reg == 4'd0) & ~(trunc_ln94_reg_1288_pp0_iter8_reg == 4'd4) & ~(trunc_ln94_reg_1288_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_15_we0_local = 1'b1;
    end else begin
        delta_weights2_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_1_ce0_local = 1'b1;
    end else begin
        delta_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln94_reg_1288_pp0_iter8_reg == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_1_we0_local = 1'b1;
    end else begin
        delta_weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_2_ce0_local = 1'b1;
    end else begin
        delta_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln94_reg_1288_pp0_iter8_reg == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_2_we0_local = 1'b1;
    end else begin
        delta_weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_3_ce0_local = 1'b1;
    end else begin
        delta_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln94_reg_1288_pp0_iter8_reg == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_3_we0_local = 1'b1;
    end else begin
        delta_weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_4_ce0_local = 1'b1;
    end else begin
        delta_weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln94_reg_1288_pp0_iter8_reg == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_4_we0_local = 1'b1;
    end else begin
        delta_weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_5_ce0_local = 1'b1;
    end else begin
        delta_weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln94_reg_1288_pp0_iter8_reg == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_5_we0_local = 1'b1;
    end else begin
        delta_weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_6_ce0_local = 1'b1;
    end else begin
        delta_weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln94_reg_1288_pp0_iter8_reg == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_6_we0_local = 1'b1;
    end else begin
        delta_weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_7_ce0_local = 1'b1;
    end else begin
        delta_weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln94_reg_1288_pp0_iter8_reg == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_7_we0_local = 1'b1;
    end else begin
        delta_weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_8_ce0_local = 1'b1;
    end else begin
        delta_weights2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln94_reg_1288_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_8_we0_local = 1'b1;
    end else begin
        delta_weights2_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_9_ce0_local = 1'b1;
    end else begin
        delta_weights2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln94_reg_1288_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_9_we0_local = 1'b1;
    end else begin
        delta_weights2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_ce0_local = 1'b1;
    end else begin
        delta_weights2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln94_reg_1288_pp0_iter8_reg == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_we0_local = 1'b1;
    end else begin
        delta_weights2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_10_ce0_local = 1'b1;
    end else begin
        oracle_activations2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_11_ce0_local = 1'b1;
    end else begin
        oracle_activations2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_12_ce0_local = 1'b1;
    end else begin
        oracle_activations2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_13_ce0_local = 1'b1;
    end else begin
        oracle_activations2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_14_ce0_local = 1'b1;
    end else begin
        oracle_activations2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_15_ce0_local = 1'b1;
    end else begin
        oracle_activations2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_1_ce0_local = 1'b1;
    end else begin
        oracle_activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_3_ce0_local = 1'b1;
    end else begin
        oracle_activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_4_ce0_local = 1'b1;
    end else begin
        oracle_activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_5_ce0_local = 1'b1;
    end else begin
        oracle_activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_6_ce0_local = 1'b1;
    end else begin
        oracle_activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_7_ce0_local = 1'b1;
    end else begin
        oracle_activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_8_ce0_local = 1'b1;
    end else begin
        oracle_activations2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_9_ce0_local = 1'b1;
    end else begin
        oracle_activations2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        oracle_activations2_ce0_local = 1'b1;
    end else begin
        oracle_activations2_ce0_local = 1'b0;
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
assign activations1_10_address0 = zext_ln92_fu_910_p1;
assign activations1_10_ce0 = activations1_10_ce0_local;
assign activations1_11_address0 = zext_ln92_fu_910_p1;
assign activations1_11_ce0 = activations1_11_ce0_local;
assign activations1_12_address0 = zext_ln92_fu_910_p1;
assign activations1_12_ce0 = activations1_12_ce0_local;
assign activations1_13_address0 = zext_ln92_fu_910_p1;
assign activations1_13_ce0 = activations1_13_ce0_local;
assign activations1_14_address0 = zext_ln92_fu_910_p1;
assign activations1_14_ce0 = activations1_14_ce0_local;
assign activations1_15_address0 = zext_ln92_fu_910_p1;
assign activations1_15_ce0 = activations1_15_ce0_local;
assign activations1_1_address0 = zext_ln92_fu_910_p1;
assign activations1_1_ce0 = activations1_1_ce0_local;
assign activations1_2_address0 = zext_ln92_fu_910_p1;
assign activations1_2_ce0 = activations1_2_ce0_local;
assign activations1_3_address0 = zext_ln92_fu_910_p1;
assign activations1_3_ce0 = activations1_3_ce0_local;
assign activations1_4_address0 = zext_ln92_fu_910_p1;
assign activations1_4_ce0 = activations1_4_ce0_local;
assign activations1_5_address0 = zext_ln92_fu_910_p1;
assign activations1_5_ce0 = activations1_5_ce0_local;
assign activations1_6_address0 = zext_ln92_fu_910_p1;
assign activations1_6_ce0 = activations1_6_ce0_local;
assign activations1_7_address0 = zext_ln92_fu_910_p1;
assign activations1_7_ce0 = activations1_7_ce0_local;
assign activations1_8_address0 = zext_ln92_fu_910_p1;
assign activations1_8_ce0 = activations1_8_ce0_local;
assign activations1_9_address0 = zext_ln92_fu_910_p1;
assign activations1_9_ce0 = activations1_9_ce0_local;
assign activations1_address0 = zext_ln92_fu_910_p1;
assign activations1_ce0 = activations1_ce0_local;
assign add_ln1_fu_1152_p3 = {{trunc_ln95_reg_1321_pp0_iter8_reg}, {lshr_ln92_1_reg_1296_pp0_iter8_reg}};
assign add_ln93_1_fu_882_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln93_fu_854_p2 = (ap_sig_allocacmp_indvar_flatten12_load + 11'd1);
assign add_ln94_fu_968_p2 = (select_ln92_fu_874_p3 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights2_10_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_10_ce0 = delta_weights2_10_ce0_local;
assign delta_weights2_10_d0 = mul_2_i1_reg_1430;
assign delta_weights2_10_we0 = delta_weights2_10_we0_local;
assign delta_weights2_11_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_11_ce0 = delta_weights2_11_ce0_local;
assign delta_weights2_11_d0 = mul_3_i1_reg_1438;
assign delta_weights2_11_we0 = delta_weights2_11_we0_local;
assign delta_weights2_12_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_12_ce0 = delta_weights2_12_ce0_local;
assign delta_weights2_12_d0 = mul_i4_reg_1414;
assign delta_weights2_12_we0 = delta_weights2_12_we0_local;
assign delta_weights2_13_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_13_ce0 = delta_weights2_13_ce0_local;
assign delta_weights2_13_d0 = mul_1_i1_reg_1422;
assign delta_weights2_13_we0 = delta_weights2_13_we0_local;
assign delta_weights2_14_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_14_ce0 = delta_weights2_14_ce0_local;
assign delta_weights2_14_d0 = mul_2_i1_reg_1430;
assign delta_weights2_14_we0 = delta_weights2_14_we0_local;
assign delta_weights2_15_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_15_ce0 = delta_weights2_15_ce0_local;
assign delta_weights2_15_d0 = mul_3_i1_reg_1438;
assign delta_weights2_15_we0 = delta_weights2_15_we0_local;
assign delta_weights2_1_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_d0 = mul_1_i1_reg_1422;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_2_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_2_ce0 = delta_weights2_2_ce0_local;
assign delta_weights2_2_d0 = mul_2_i1_reg_1430;
assign delta_weights2_2_we0 = delta_weights2_2_we0_local;
assign delta_weights2_3_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_3_ce0 = delta_weights2_3_ce0_local;
assign delta_weights2_3_d0 = mul_3_i1_reg_1438;
assign delta_weights2_3_we0 = delta_weights2_3_we0_local;
assign delta_weights2_4_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_4_ce0 = delta_weights2_4_ce0_local;
assign delta_weights2_4_d0 = mul_i4_reg_1414;
assign delta_weights2_4_we0 = delta_weights2_4_we0_local;
assign delta_weights2_5_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_5_ce0 = delta_weights2_5_ce0_local;
assign delta_weights2_5_d0 = mul_1_i1_reg_1422;
assign delta_weights2_5_we0 = delta_weights2_5_we0_local;
assign delta_weights2_6_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_6_ce0 = delta_weights2_6_ce0_local;
assign delta_weights2_6_d0 = mul_2_i1_reg_1430;
assign delta_weights2_6_we0 = delta_weights2_6_we0_local;
assign delta_weights2_7_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_7_ce0 = delta_weights2_7_ce0_local;
assign delta_weights2_7_d0 = mul_3_i1_reg_1438;
assign delta_weights2_7_we0 = delta_weights2_7_we0_local;
assign delta_weights2_8_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_8_ce0 = delta_weights2_8_ce0_local;
assign delta_weights2_8_d0 = mul_i4_reg_1414;
assign delta_weights2_8_we0 = delta_weights2_8_we0_local;
assign delta_weights2_9_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_9_ce0 = delta_weights2_9_ce0_local;
assign delta_weights2_9_d0 = mul_1_i1_reg_1422;
assign delta_weights2_9_we0 = delta_weights2_9_we0_local;
assign delta_weights2_address0 = zext_ln95_fu_1158_p1;
assign delta_weights2_ce0 = delta_weights2_ce0_local;
assign delta_weights2_d0 = mul_i4_reg_1414;
assign delta_weights2_we0 = delta_weights2_we0_local;
assign grp_fu_3932_p_ce = 1'b1;
assign grp_fu_3932_p_din0 = tmp_s_reg_1386;
assign grp_fu_3932_p_din1 = tmp_106_reg_1394;
assign grp_fu_5661_p_ce = 1'b1;
assign grp_fu_5661_p_din0 = tmp_s_reg_1386;
assign grp_fu_5661_p_din1 = tmp_107_reg_1399;
assign grp_fu_5665_p_ce = 1'b1;
assign grp_fu_5665_p_din0 = tmp_s_reg_1386;
assign grp_fu_5665_p_din1 = tmp_108_reg_1404;
assign grp_fu_5669_p_ce = 1'b1;
assign grp_fu_5669_p_din0 = tmp_s_reg_1386;
assign grp_fu_5669_p_din1 = tmp_109_reg_1409;
assign icmp_ln93_fu_848_p2 = ((ap_sig_allocacmp_indvar_flatten12_load == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln92_1_fu_934_p4 = {{select_ln92_fu_874_p3[5:4]}};
assign lshr_ln_fu_900_p4 = {{select_ln93_fu_888_p3[5:4]}};
assign oracle_activations2_10_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_10_ce0 = oracle_activations2_10_ce0_local;
assign oracle_activations2_11_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_11_ce0 = oracle_activations2_11_ce0_local;
assign oracle_activations2_12_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_12_ce0 = oracle_activations2_12_ce0_local;
assign oracle_activations2_13_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_13_ce0 = oracle_activations2_13_ce0_local;
assign oracle_activations2_14_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_14_ce0 = oracle_activations2_14_ce0_local;
assign oracle_activations2_15_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_15_ce0 = oracle_activations2_15_ce0_local;
assign oracle_activations2_1_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_2_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_2_ce0 = oracle_activations2_2_ce0_local;
assign oracle_activations2_3_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_3_ce0 = oracle_activations2_3_ce0_local;
assign oracle_activations2_4_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_4_ce0 = oracle_activations2_4_ce0_local;
assign oracle_activations2_5_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_5_ce0 = oracle_activations2_5_ce0_local;
assign oracle_activations2_6_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_6_ce0 = oracle_activations2_6_ce0_local;
assign oracle_activations2_7_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_7_ce0 = oracle_activations2_7_ce0_local;
assign oracle_activations2_8_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_8_ce0 = oracle_activations2_8_ce0_local;
assign oracle_activations2_9_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_9_ce0 = oracle_activations2_9_ce0_local;
assign oracle_activations2_address0 = zext_ln92_1_fu_944_p1;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign select_ln92_fu_874_p3 = ((tmp_fu_866_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_2_load);
assign select_ln93_fu_888_p3 = ((tmp_fu_866_p3[0:0] == 1'b1) ? add_ln93_1_fu_882_p2 : ap_sig_allocacmp_i_load);
assign tmp_106_fu_1060_p9 = 'bx;
assign tmp_107_fu_1083_p9 = 'bx;
assign tmp_108_fu_1106_p9 = 'bx;
assign tmp_109_fu_1129_p9 = 'bx;
assign tmp_fu_866_p3 = ap_sig_allocacmp_j_2_load[32'd6];
assign tmp_s_fu_989_p33 = 'bx;
assign trunc_ln93_fu_896_p1 = select_ln93_fu_888_p3[3:0];
assign trunc_ln94_fu_930_p1 = select_ln92_fu_874_p3[3:0];
assign trunc_ln95_fu_964_p1 = select_ln93_fu_888_p3[5:0];
assign zext_ln92_1_fu_944_p1 = lshr_ln92_1_fu_934_p4;
assign zext_ln92_fu_910_p1 = lshr_ln_fu_900_p4;
assign zext_ln95_fu_1158_p1 = add_ln1_fu_1152_p3;
endmodule 
