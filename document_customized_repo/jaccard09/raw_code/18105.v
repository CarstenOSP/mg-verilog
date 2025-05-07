module backprop_backprop_Pipeline_VITIS_LOOP_93_1_delta_matrix_weights2_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,activations1_address0,activations1_ce0,activations1_q0,activations1_1_address0,activations1_1_ce0,activations1_1_q0,activations1_2_address0,activations1_2_ce0,activations1_2_q0,activations1_3_address0,activations1_3_ce0,activations1_3_q0,activations1_4_address0,activations1_4_ce0,activations1_4_q0,activations1_5_address0,activations1_5_ce0,activations1_5_q0,activations1_6_address0,activations1_6_ce0,activations1_6_q0,activations1_7_address0,activations1_7_ce0,activations1_7_q0,activations1_8_address0,activations1_8_ce0,activations1_8_q0,activations1_9_address0,activations1_9_ce0,activations1_9_q0,activations1_10_address0,activations1_10_ce0,activations1_10_q0,activations1_11_address0,activations1_11_ce0,activations1_11_q0,activations1_12_address0,activations1_12_ce0,activations1_12_q0,activations1_13_address0,activations1_13_ce0,activations1_13_q0,activations1_14_address0,activations1_14_ce0,activations1_14_q0,activations1_15_address0,activations1_15_ce0,activations1_15_q0,delta_weights2_15_address0,delta_weights2_15_ce0,delta_weights2_15_we0,delta_weights2_15_d0,delta_weights2_14_address0,delta_weights2_14_ce0,delta_weights2_14_we0,delta_weights2_14_d0,delta_weights2_13_address0,delta_weights2_13_ce0,delta_weights2_13_we0,delta_weights2_13_d0,delta_weights2_12_address0,delta_weights2_12_ce0,delta_weights2_12_we0,delta_weights2_12_d0,delta_weights2_11_address0,delta_weights2_11_ce0,delta_weights2_11_we0,delta_weights2_11_d0,delta_weights2_10_address0,delta_weights2_10_ce0,delta_weights2_10_we0,delta_weights2_10_d0,delta_weights2_9_address0,delta_weights2_9_ce0,delta_weights2_9_we0,delta_weights2_9_d0,delta_weights2_8_address0,delta_weights2_8_ce0,delta_weights2_8_we0,delta_weights2_8_d0,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_address0,delta_weights2_ce0,delta_weights2_we0,delta_weights2_d0,oracle_activations2_address0,oracle_activations2_ce0,oracle_activations2_q0,oracle_activations2_8_address0,oracle_activations2_8_ce0,oracle_activations2_8_q0,oracle_activations2_1_address0,oracle_activations2_1_ce0,oracle_activations2_1_q0,oracle_activations2_9_address0,oracle_activations2_9_ce0,oracle_activations2_9_q0,oracle_activations2_2_address0,oracle_activations2_2_ce0,oracle_activations2_2_q0,oracle_activations2_10_address0,oracle_activations2_10_ce0,oracle_activations2_10_q0,oracle_activations2_3_address0,oracle_activations2_3_ce0,oracle_activations2_3_q0,oracle_activations2_11_address0,oracle_activations2_11_ce0,oracle_activations2_11_q0,oracle_activations2_4_address0,oracle_activations2_4_ce0,oracle_activations2_4_q0,oracle_activations2_12_address0,oracle_activations2_12_ce0,oracle_activations2_12_q0,oracle_activations2_5_address0,oracle_activations2_5_ce0,oracle_activations2_5_q0,oracle_activations2_13_address0,oracle_activations2_13_ce0,oracle_activations2_13_q0,oracle_activations2_6_address0,oracle_activations2_6_ce0,oracle_activations2_6_q0,oracle_activations2_14_address0,oracle_activations2_14_ce0,oracle_activations2_14_q0,oracle_activations2_7_address0,oracle_activations2_7_ce0,oracle_activations2_7_q0,oracle_activations2_15_address0,oracle_activations2_15_ce0,oracle_activations2_15_q0,grp_fu_3932_p_din0,grp_fu_3932_p_din1,grp_fu_3932_p_dout0,grp_fu_3932_p_ce,grp_fu_5677_p_din0,grp_fu_5677_p_din1,grp_fu_5677_p_dout0,grp_fu_5677_p_ce,grp_fu_5681_p_din0,grp_fu_5681_p_din1,grp_fu_5681_p_dout0,grp_fu_5681_p_ce,grp_fu_5685_p_din0,grp_fu_5685_p_din1,grp_fu_5685_p_dout0,grp_fu_5685_p_ce,grp_fu_5689_p_din0,grp_fu_5689_p_din1,grp_fu_5689_p_dout0,grp_fu_5689_p_ce,grp_fu_5693_p_din0,grp_fu_5693_p_din1,grp_fu_5693_p_dout0,grp_fu_5693_p_ce,grp_fu_5697_p_din0,grp_fu_5697_p_din1,grp_fu_5697_p_dout0,grp_fu_5697_p_ce,grp_fu_5701_p_din0,grp_fu_5701_p_din1,grp_fu_5701_p_dout0,grp_fu_5701_p_ce); 
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
output  [1:0] oracle_activations2_8_address0;
output   oracle_activations2_8_ce0;
input  [63:0] oracle_activations2_8_q0;
output  [1:0] oracle_activations2_1_address0;
output   oracle_activations2_1_ce0;
input  [63:0] oracle_activations2_1_q0;
output  [1:0] oracle_activations2_9_address0;
output   oracle_activations2_9_ce0;
input  [63:0] oracle_activations2_9_q0;
output  [1:0] oracle_activations2_2_address0;
output   oracle_activations2_2_ce0;
input  [63:0] oracle_activations2_2_q0;
output  [1:0] oracle_activations2_10_address0;
output   oracle_activations2_10_ce0;
input  [63:0] oracle_activations2_10_q0;
output  [1:0] oracle_activations2_3_address0;
output   oracle_activations2_3_ce0;
input  [63:0] oracle_activations2_3_q0;
output  [1:0] oracle_activations2_11_address0;
output   oracle_activations2_11_ce0;
input  [63:0] oracle_activations2_11_q0;
output  [1:0] oracle_activations2_4_address0;
output   oracle_activations2_4_ce0;
input  [63:0] oracle_activations2_4_q0;
output  [1:0] oracle_activations2_12_address0;
output   oracle_activations2_12_ce0;
input  [63:0] oracle_activations2_12_q0;
output  [1:0] oracle_activations2_5_address0;
output   oracle_activations2_5_ce0;
input  [63:0] oracle_activations2_5_q0;
output  [1:0] oracle_activations2_13_address0;
output   oracle_activations2_13_ce0;
input  [63:0] oracle_activations2_13_q0;
output  [1:0] oracle_activations2_6_address0;
output   oracle_activations2_6_ce0;
input  [63:0] oracle_activations2_6_q0;
output  [1:0] oracle_activations2_14_address0;
output   oracle_activations2_14_ce0;
input  [63:0] oracle_activations2_14_q0;
output  [1:0] oracle_activations2_7_address0;
output   oracle_activations2_7_ce0;
input  [63:0] oracle_activations2_7_q0;
output  [1:0] oracle_activations2_15_address0;
output   oracle_activations2_15_ce0;
input  [63:0] oracle_activations2_15_q0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln93_fu_862_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] trunc_ln93_fu_910_p1;
reg   [3:0] trunc_ln93_reg_1193;
wire   [1:0] lshr_ln92_1_fu_948_p4;
reg   [1:0] lshr_ln92_1_reg_1278;
reg   [1:0] lshr_ln92_1_reg_1278_pp0_iter1_reg;
reg   [1:0] lshr_ln92_1_reg_1278_pp0_iter2_reg;
reg   [1:0] lshr_ln92_1_reg_1278_pp0_iter3_reg;
reg   [1:0] lshr_ln92_1_reg_1278_pp0_iter4_reg;
reg   [1:0] lshr_ln92_1_reg_1278_pp0_iter5_reg;
reg   [1:0] lshr_ln92_1_reg_1278_pp0_iter6_reg;
reg   [1:0] lshr_ln92_1_reg_1278_pp0_iter7_reg;
reg   [1:0] lshr_ln92_1_reg_1278_pp0_iter8_reg;
wire   [0:0] icmp_ln95_1_fu_978_p2;
reg   [0:0] icmp_ln95_1_reg_1293;
wire   [5:0] trunc_ln95_fu_984_p1;
reg   [5:0] trunc_ln95_reg_1305;
reg   [5:0] trunc_ln95_reg_1305_pp0_iter1_reg;
reg   [5:0] trunc_ln95_reg_1305_pp0_iter2_reg;
reg   [5:0] trunc_ln95_reg_1305_pp0_iter3_reg;
reg   [5:0] trunc_ln95_reg_1305_pp0_iter4_reg;
reg   [5:0] trunc_ln95_reg_1305_pp0_iter5_reg;
reg   [5:0] trunc_ln95_reg_1305_pp0_iter6_reg;
reg   [5:0] trunc_ln95_reg_1305_pp0_iter7_reg;
reg   [5:0] trunc_ln95_reg_1305_pp0_iter8_reg;
wire   [0:0] icmp_ln95_fu_988_p2;
reg   [0:0] icmp_ln95_reg_1380;
reg   [0:0] icmp_ln95_reg_1380_pp0_iter1_reg;
reg   [0:0] icmp_ln95_reg_1380_pp0_iter2_reg;
reg   [0:0] icmp_ln95_reg_1380_pp0_iter3_reg;
reg   [0:0] icmp_ln95_reg_1380_pp0_iter4_reg;
reg   [0:0] icmp_ln95_reg_1380_pp0_iter5_reg;
reg   [0:0] icmp_ln95_reg_1380_pp0_iter6_reg;
reg   [0:0] icmp_ln95_reg_1380_pp0_iter7_reg;
reg   [0:0] icmp_ln95_reg_1380_pp0_iter8_reg;
wire   [63:0] tmp_s_fu_1015_p35;
reg   [63:0] tmp_s_reg_1384;
wire   [63:0] select_ln95_fu_1086_p3;
reg   [63:0] select_ln95_reg_1396;
wire   [63:0] select_ln95_1_fu_1093_p3;
reg   [63:0] select_ln95_1_reg_1401;
wire   [63:0] select_ln95_2_fu_1100_p3;
reg   [63:0] select_ln95_2_reg_1406;
wire   [63:0] select_ln95_3_fu_1107_p3;
reg   [63:0] select_ln95_3_reg_1411;
wire   [63:0] select_ln95_4_fu_1114_p3;
reg   [63:0] select_ln95_4_reg_1416;
wire   [63:0] select_ln95_5_fu_1121_p3;
reg   [63:0] select_ln95_5_reg_1421;
wire   [63:0] select_ln95_6_fu_1128_p3;
reg   [63:0] select_ln95_6_reg_1426;
wire   [63:0] select_ln95_7_fu_1135_p3;
reg   [63:0] select_ln95_7_reg_1431;
reg   [63:0] mul_i3_reg_1436;
reg   [63:0] mul_1_i_reg_1442;
reg   [63:0] mul_2_i_reg_1448;
reg   [63:0] mul_3_i_reg_1454;
reg   [63:0] mul_4_i_reg_1460;
reg   [63:0] mul_5_i_reg_1466;
reg   [63:0] mul_6_i_reg_1472;
reg   [63:0] mul_7_i_reg_1478;
wire   [63:0] zext_ln92_fu_924_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln92_1_fu_958_p1;
wire   [63:0] zext_ln95_fu_1148_p1;
reg   [6:0] j_fu_176;
wire   [6:0] add_ln94_fu_994_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_180;
wire   [6:0] select_ln93_fu_902_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [9:0] indvar_flatten12_fu_184;
wire   [9:0] add_ln93_fu_868_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten12_load;
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
reg    oracle_activations2_8_ce0_local;
reg    oracle_activations2_1_ce0_local;
reg    oracle_activations2_9_ce0_local;
reg    oracle_activations2_2_ce0_local;
reg    oracle_activations2_10_ce0_local;
reg    oracle_activations2_3_ce0_local;
reg    oracle_activations2_11_ce0_local;
reg    oracle_activations2_4_ce0_local;
reg    oracle_activations2_12_ce0_local;
reg    oracle_activations2_5_ce0_local;
reg    oracle_activations2_13_ce0_local;
reg    oracle_activations2_6_ce0_local;
reg    oracle_activations2_14_ce0_local;
reg    oracle_activations2_7_ce0_local;
reg    oracle_activations2_15_ce0_local;
reg    delta_weights2_8_we0_local;
reg    delta_weights2_8_ce0_local;
reg    delta_weights2_9_we0_local;
reg    delta_weights2_9_ce0_local;
reg    delta_weights2_10_we0_local;
reg    delta_weights2_10_ce0_local;
reg    delta_weights2_11_we0_local;
reg    delta_weights2_11_ce0_local;
reg    delta_weights2_12_we0_local;
reg    delta_weights2_12_ce0_local;
reg    delta_weights2_13_we0_local;
reg    delta_weights2_13_ce0_local;
reg    delta_weights2_14_we0_local;
reg    delta_weights2_14_ce0_local;
reg    delta_weights2_15_we0_local;
reg    delta_weights2_15_ce0_local;
reg    delta_weights2_we0_local;
reg    delta_weights2_ce0_local;
reg    delta_weights2_1_we0_local;
reg    delta_weights2_1_ce0_local;
reg    delta_weights2_2_we0_local;
reg    delta_weights2_2_ce0_local;
reg    delta_weights2_3_we0_local;
reg    delta_weights2_3_ce0_local;
reg    delta_weights2_4_we0_local;
reg    delta_weights2_4_ce0_local;
reg    delta_weights2_5_we0_local;
reg    delta_weights2_5_ce0_local;
reg    delta_weights2_6_we0_local;
reg    delta_weights2_6_ce0_local;
reg    delta_weights2_7_we0_local;
reg    delta_weights2_7_ce0_local;
wire   [0:0] tmp_fu_880_p3;
wire   [6:0] add_ln93_1_fu_896_p2;
wire   [1:0] lshr_ln_fu_914_p4;
wire   [6:0] select_ln92_fu_888_p3;
wire   [3:0] trunc_ln94_fu_944_p1;
wire   [63:0] tmp_s_fu_1015_p33;
wire   [7:0] add_ln2_fu_1142_p3;
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
wire   [3:0] tmp_s_fu_1015_p1;
wire   [3:0] tmp_s_fu_1015_p3;
wire   [3:0] tmp_s_fu_1015_p5;
wire   [3:0] tmp_s_fu_1015_p7;
wire   [3:0] tmp_s_fu_1015_p9;
wire   [3:0] tmp_s_fu_1015_p11;
wire   [3:0] tmp_s_fu_1015_p13;
wire   [3:0] tmp_s_fu_1015_p15;
wire  signed [3:0] tmp_s_fu_1015_p17;
wire  signed [3:0] tmp_s_fu_1015_p19;
wire  signed [3:0] tmp_s_fu_1015_p21;
wire  signed [3:0] tmp_s_fu_1015_p23;
wire  signed [3:0] tmp_s_fu_1015_p25;
wire  signed [3:0] tmp_s_fu_1015_p27;
wire  signed [3:0] tmp_s_fu_1015_p29;
wire  signed [3:0] tmp_s_fu_1015_p31;
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
#0 j_fu_176 = 7'd0;
#0 i_fu_180 = 7'd0;
#0 indvar_flatten12_fu_184 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U720(.din0(activations1_q0),.din1(activations1_1_q0),.din2(activations1_2_q0),.din3(activations1_3_q0),.din4(activations1_4_q0),.din5(activations1_5_q0),.din6(activations1_6_q0),.din7(activations1_7_q0),.din8(activations1_8_q0),.din9(activations1_9_q0),.din10(activations1_10_q0),.din11(activations1_11_q0),.din12(activations1_12_q0),.din13(activations1_13_q0),.din14(activations1_14_q0),.din15(activations1_15_q0),.def(tmp_s_fu_1015_p33),.sel(trunc_ln93_reg_1193),.dout(tmp_s_fu_1015_p35));
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
        if (((icmp_ln93_fu_862_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_180 <= select_ln93_fu_902_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_180 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_862_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten12_fu_184 <= add_ln93_fu_868_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12_fu_184 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_862_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_176 <= add_ln94_fu_994_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_176 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln95_1_reg_1293 <= icmp_ln95_1_fu_978_p2;
        icmp_ln95_reg_1380 <= icmp_ln95_fu_988_p2;
        icmp_ln95_reg_1380_pp0_iter1_reg <= icmp_ln95_reg_1380;
        lshr_ln92_1_reg_1278 <= {{select_ln92_fu_888_p3[5:4]}};
        lshr_ln92_1_reg_1278_pp0_iter1_reg <= lshr_ln92_1_reg_1278;
        select_ln95_1_reg_1401 <= select_ln95_1_fu_1093_p3;
        select_ln95_2_reg_1406 <= select_ln95_2_fu_1100_p3;
        select_ln95_3_reg_1411 <= select_ln95_3_fu_1107_p3;
        select_ln95_4_reg_1416 <= select_ln95_4_fu_1114_p3;
        select_ln95_5_reg_1421 <= select_ln95_5_fu_1121_p3;
        select_ln95_6_reg_1426 <= select_ln95_6_fu_1128_p3;
        select_ln95_7_reg_1431 <= select_ln95_7_fu_1135_p3;
        select_ln95_reg_1396 <= select_ln95_fu_1086_p3;
        tmp_s_reg_1384 <= tmp_s_fu_1015_p35;
        trunc_ln93_reg_1193 <= trunc_ln93_fu_910_p1;
        trunc_ln95_reg_1305 <= trunc_ln95_fu_984_p1;
        trunc_ln95_reg_1305_pp0_iter1_reg <= trunc_ln95_reg_1305;
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
        icmp_ln95_reg_1380_pp0_iter2_reg <= icmp_ln95_reg_1380_pp0_iter1_reg;
        icmp_ln95_reg_1380_pp0_iter3_reg <= icmp_ln95_reg_1380_pp0_iter2_reg;
        icmp_ln95_reg_1380_pp0_iter4_reg <= icmp_ln95_reg_1380_pp0_iter3_reg;
        icmp_ln95_reg_1380_pp0_iter5_reg <= icmp_ln95_reg_1380_pp0_iter4_reg;
        icmp_ln95_reg_1380_pp0_iter6_reg <= icmp_ln95_reg_1380_pp0_iter5_reg;
        icmp_ln95_reg_1380_pp0_iter7_reg <= icmp_ln95_reg_1380_pp0_iter6_reg;
        icmp_ln95_reg_1380_pp0_iter8_reg <= icmp_ln95_reg_1380_pp0_iter7_reg;
        lshr_ln92_1_reg_1278_pp0_iter2_reg <= lshr_ln92_1_reg_1278_pp0_iter1_reg;
        lshr_ln92_1_reg_1278_pp0_iter3_reg <= lshr_ln92_1_reg_1278_pp0_iter2_reg;
        lshr_ln92_1_reg_1278_pp0_iter4_reg <= lshr_ln92_1_reg_1278_pp0_iter3_reg;
        lshr_ln92_1_reg_1278_pp0_iter5_reg <= lshr_ln92_1_reg_1278_pp0_iter4_reg;
        lshr_ln92_1_reg_1278_pp0_iter6_reg <= lshr_ln92_1_reg_1278_pp0_iter5_reg;
        lshr_ln92_1_reg_1278_pp0_iter7_reg <= lshr_ln92_1_reg_1278_pp0_iter6_reg;
        lshr_ln92_1_reg_1278_pp0_iter8_reg <= lshr_ln92_1_reg_1278_pp0_iter7_reg;
        mul_1_i_reg_1442 <= grp_fu_5677_p_dout0;
        mul_2_i_reg_1448 <= grp_fu_5681_p_dout0;
        mul_3_i_reg_1454 <= grp_fu_5685_p_dout0;
        mul_4_i_reg_1460 <= grp_fu_5689_p_dout0;
        mul_5_i_reg_1466 <= grp_fu_5693_p_dout0;
        mul_6_i_reg_1472 <= grp_fu_5697_p_dout0;
        mul_7_i_reg_1478 <= grp_fu_5701_p_dout0;
        mul_i3_reg_1436 <= grp_fu_3932_p_dout0;
        trunc_ln95_reg_1305_pp0_iter2_reg <= trunc_ln95_reg_1305_pp0_iter1_reg;
        trunc_ln95_reg_1305_pp0_iter3_reg <= trunc_ln95_reg_1305_pp0_iter2_reg;
        trunc_ln95_reg_1305_pp0_iter4_reg <= trunc_ln95_reg_1305_pp0_iter3_reg;
        trunc_ln95_reg_1305_pp0_iter5_reg <= trunc_ln95_reg_1305_pp0_iter4_reg;
        trunc_ln95_reg_1305_pp0_iter6_reg <= trunc_ln95_reg_1305_pp0_iter5_reg;
        trunc_ln95_reg_1305_pp0_iter7_reg <= trunc_ln95_reg_1305_pp0_iter6_reg;
        trunc_ln95_reg_1305_pp0_iter8_reg <= trunc_ln95_reg_1305_pp0_iter7_reg;
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
    if (((icmp_ln93_fu_862_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_load = i_fu_180;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12_load = indvar_flatten12_fu_184;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_176;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln95_reg_1380_pp0_iter8_reg == 1'd1) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
assign activations1_10_address0 = zext_ln92_fu_924_p1;
assign activations1_10_ce0 = activations1_10_ce0_local;
assign activations1_11_address0 = zext_ln92_fu_924_p1;
assign activations1_11_ce0 = activations1_11_ce0_local;
assign activations1_12_address0 = zext_ln92_fu_924_p1;
assign activations1_12_ce0 = activations1_12_ce0_local;
assign activations1_13_address0 = zext_ln92_fu_924_p1;
assign activations1_13_ce0 = activations1_13_ce0_local;
assign activations1_14_address0 = zext_ln92_fu_924_p1;
assign activations1_14_ce0 = activations1_14_ce0_local;
assign activations1_15_address0 = zext_ln92_fu_924_p1;
assign activations1_15_ce0 = activations1_15_ce0_local;
assign activations1_1_address0 = zext_ln92_fu_924_p1;
assign activations1_1_ce0 = activations1_1_ce0_local;
assign activations1_2_address0 = zext_ln92_fu_924_p1;
assign activations1_2_ce0 = activations1_2_ce0_local;
assign activations1_3_address0 = zext_ln92_fu_924_p1;
assign activations1_3_ce0 = activations1_3_ce0_local;
assign activations1_4_address0 = zext_ln92_fu_924_p1;
assign activations1_4_ce0 = activations1_4_ce0_local;
assign activations1_5_address0 = zext_ln92_fu_924_p1;
assign activations1_5_ce0 = activations1_5_ce0_local;
assign activations1_6_address0 = zext_ln92_fu_924_p1;
assign activations1_6_ce0 = activations1_6_ce0_local;
assign activations1_7_address0 = zext_ln92_fu_924_p1;
assign activations1_7_ce0 = activations1_7_ce0_local;
assign activations1_8_address0 = zext_ln92_fu_924_p1;
assign activations1_8_ce0 = activations1_8_ce0_local;
assign activations1_9_address0 = zext_ln92_fu_924_p1;
assign activations1_9_ce0 = activations1_9_ce0_local;
assign activations1_address0 = zext_ln92_fu_924_p1;
assign activations1_ce0 = activations1_ce0_local;
assign add_ln2_fu_1142_p3 = {{trunc_ln95_reg_1305_pp0_iter8_reg}, {lshr_ln92_1_reg_1278_pp0_iter8_reg}};
assign add_ln93_1_fu_896_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln93_fu_868_p2 = (ap_sig_allocacmp_indvar_flatten12_load + 10'd1);
assign add_ln94_fu_994_p2 = (select_ln92_fu_888_p3 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights2_10_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_10_ce0 = delta_weights2_10_ce0_local;
assign delta_weights2_10_d0 = mul_2_i_reg_1448;
assign delta_weights2_10_we0 = delta_weights2_10_we0_local;
assign delta_weights2_11_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_11_ce0 = delta_weights2_11_ce0_local;
assign delta_weights2_11_d0 = mul_3_i_reg_1454;
assign delta_weights2_11_we0 = delta_weights2_11_we0_local;
assign delta_weights2_12_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_12_ce0 = delta_weights2_12_ce0_local;
assign delta_weights2_12_d0 = mul_4_i_reg_1460;
assign delta_weights2_12_we0 = delta_weights2_12_we0_local;
assign delta_weights2_13_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_13_ce0 = delta_weights2_13_ce0_local;
assign delta_weights2_13_d0 = mul_5_i_reg_1466;
assign delta_weights2_13_we0 = delta_weights2_13_we0_local;
assign delta_weights2_14_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_14_ce0 = delta_weights2_14_ce0_local;
assign delta_weights2_14_d0 = mul_6_i_reg_1472;
assign delta_weights2_14_we0 = delta_weights2_14_we0_local;
assign delta_weights2_15_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_15_ce0 = delta_weights2_15_ce0_local;
assign delta_weights2_15_d0 = mul_7_i_reg_1478;
assign delta_weights2_15_we0 = delta_weights2_15_we0_local;
assign delta_weights2_1_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_d0 = mul_1_i_reg_1442;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_2_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_2_ce0 = delta_weights2_2_ce0_local;
assign delta_weights2_2_d0 = mul_2_i_reg_1448;
assign delta_weights2_2_we0 = delta_weights2_2_we0_local;
assign delta_weights2_3_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_3_ce0 = delta_weights2_3_ce0_local;
assign delta_weights2_3_d0 = mul_3_i_reg_1454;
assign delta_weights2_3_we0 = delta_weights2_3_we0_local;
assign delta_weights2_4_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_4_ce0 = delta_weights2_4_ce0_local;
assign delta_weights2_4_d0 = mul_4_i_reg_1460;
assign delta_weights2_4_we0 = delta_weights2_4_we0_local;
assign delta_weights2_5_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_5_ce0 = delta_weights2_5_ce0_local;
assign delta_weights2_5_d0 = mul_5_i_reg_1466;
assign delta_weights2_5_we0 = delta_weights2_5_we0_local;
assign delta_weights2_6_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_6_ce0 = delta_weights2_6_ce0_local;
assign delta_weights2_6_d0 = mul_6_i_reg_1472;
assign delta_weights2_6_we0 = delta_weights2_6_we0_local;
assign delta_weights2_7_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_7_ce0 = delta_weights2_7_ce0_local;
assign delta_weights2_7_d0 = mul_7_i_reg_1478;
assign delta_weights2_7_we0 = delta_weights2_7_we0_local;
assign delta_weights2_8_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_8_ce0 = delta_weights2_8_ce0_local;
assign delta_weights2_8_d0 = mul_i3_reg_1436;
assign delta_weights2_8_we0 = delta_weights2_8_we0_local;
assign delta_weights2_9_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_9_ce0 = delta_weights2_9_ce0_local;
assign delta_weights2_9_d0 = mul_1_i_reg_1442;
assign delta_weights2_9_we0 = delta_weights2_9_we0_local;
assign delta_weights2_address0 = zext_ln95_fu_1148_p1;
assign delta_weights2_ce0 = delta_weights2_ce0_local;
assign delta_weights2_d0 = mul_i3_reg_1436;
assign delta_weights2_we0 = delta_weights2_we0_local;
assign grp_fu_3932_p_ce = 1'b1;
assign grp_fu_3932_p_din0 = tmp_s_reg_1384;
assign grp_fu_3932_p_din1 = select_ln95_reg_1396;
assign grp_fu_5677_p_ce = 1'b1;
assign grp_fu_5677_p_din0 = tmp_s_reg_1384;
assign grp_fu_5677_p_din1 = select_ln95_1_reg_1401;
assign grp_fu_5681_p_ce = 1'b1;
assign grp_fu_5681_p_din0 = tmp_s_reg_1384;
assign grp_fu_5681_p_din1 = select_ln95_2_reg_1406;
assign grp_fu_5685_p_ce = 1'b1;
assign grp_fu_5685_p_din0 = tmp_s_reg_1384;
assign grp_fu_5685_p_din1 = select_ln95_3_reg_1411;
assign grp_fu_5689_p_ce = 1'b1;
assign grp_fu_5689_p_din0 = tmp_s_reg_1384;
assign grp_fu_5689_p_din1 = select_ln95_4_reg_1416;
assign grp_fu_5693_p_ce = 1'b1;
assign grp_fu_5693_p_din0 = tmp_s_reg_1384;
assign grp_fu_5693_p_din1 = select_ln95_5_reg_1421;
assign grp_fu_5697_p_ce = 1'b1;
assign grp_fu_5697_p_din0 = tmp_s_reg_1384;
assign grp_fu_5697_p_din1 = select_ln95_6_reg_1426;
assign grp_fu_5701_p_ce = 1'b1;
assign grp_fu_5701_p_din0 = tmp_s_reg_1384;
assign grp_fu_5701_p_din1 = select_ln95_7_reg_1431;
assign icmp_ln93_fu_862_p2 = ((ap_sig_allocacmp_indvar_flatten12_load == 10'd512) ? 1'b1 : 1'b0);
assign icmp_ln95_1_fu_978_p2 = ((trunc_ln94_fu_944_p1 != 4'd0) ? 1'b1 : 1'b0);
assign icmp_ln95_fu_988_p2 = ((trunc_ln94_fu_944_p1 == 4'd0) ? 1'b1 : 1'b0);
assign lshr_ln92_1_fu_948_p4 = {{select_ln92_fu_888_p3[5:4]}};
assign lshr_ln_fu_914_p4 = {{select_ln93_fu_902_p3[5:4]}};
assign oracle_activations2_10_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_10_ce0 = oracle_activations2_10_ce0_local;
assign oracle_activations2_11_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_11_ce0 = oracle_activations2_11_ce0_local;
assign oracle_activations2_12_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_12_ce0 = oracle_activations2_12_ce0_local;
assign oracle_activations2_13_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_13_ce0 = oracle_activations2_13_ce0_local;
assign oracle_activations2_14_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_14_ce0 = oracle_activations2_14_ce0_local;
assign oracle_activations2_15_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_15_ce0 = oracle_activations2_15_ce0_local;
assign oracle_activations2_1_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_1_ce0 = oracle_activations2_1_ce0_local;
assign oracle_activations2_2_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_2_ce0 = oracle_activations2_2_ce0_local;
assign oracle_activations2_3_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_3_ce0 = oracle_activations2_3_ce0_local;
assign oracle_activations2_4_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_4_ce0 = oracle_activations2_4_ce0_local;
assign oracle_activations2_5_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_5_ce0 = oracle_activations2_5_ce0_local;
assign oracle_activations2_6_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_6_ce0 = oracle_activations2_6_ce0_local;
assign oracle_activations2_7_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_7_ce0 = oracle_activations2_7_ce0_local;
assign oracle_activations2_8_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_8_ce0 = oracle_activations2_8_ce0_local;
assign oracle_activations2_9_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_9_ce0 = oracle_activations2_9_ce0_local;
assign oracle_activations2_address0 = zext_ln92_1_fu_958_p1;
assign oracle_activations2_ce0 = oracle_activations2_ce0_local;
assign select_ln92_fu_888_p3 = ((tmp_fu_880_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln93_fu_902_p3 = ((tmp_fu_880_p3[0:0] == 1'b1) ? add_ln93_1_fu_896_p2 : ap_sig_allocacmp_i_load);
assign select_ln95_1_fu_1093_p3 = ((icmp_ln95_1_reg_1293[0:0] == 1'b1) ? oracle_activations2_9_q0 : oracle_activations2_1_q0);
assign select_ln95_2_fu_1100_p3 = ((icmp_ln95_1_reg_1293[0:0] == 1'b1) ? oracle_activations2_10_q0 : oracle_activations2_2_q0);
assign select_ln95_3_fu_1107_p3 = ((icmp_ln95_1_reg_1293[0:0] == 1'b1) ? oracle_activations2_11_q0 : oracle_activations2_3_q0);
assign select_ln95_4_fu_1114_p3 = ((icmp_ln95_1_reg_1293[0:0] == 1'b1) ? oracle_activations2_12_q0 : oracle_activations2_4_q0);
assign select_ln95_5_fu_1121_p3 = ((icmp_ln95_1_reg_1293[0:0] == 1'b1) ? oracle_activations2_13_q0 : oracle_activations2_5_q0);
assign select_ln95_6_fu_1128_p3 = ((icmp_ln95_1_reg_1293[0:0] == 1'b1) ? oracle_activations2_14_q0 : oracle_activations2_6_q0);
assign select_ln95_7_fu_1135_p3 = ((icmp_ln95_1_reg_1293[0:0] == 1'b1) ? oracle_activations2_15_q0 : oracle_activations2_7_q0);
assign select_ln95_fu_1086_p3 = ((icmp_ln95_1_reg_1293[0:0] == 1'b1) ? oracle_activations2_8_q0 : oracle_activations2_q0);
assign tmp_fu_880_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_s_fu_1015_p33 = 'bx;
assign trunc_ln93_fu_910_p1 = select_ln93_fu_902_p3[3:0];
assign trunc_ln94_fu_944_p1 = select_ln92_fu_888_p3[3:0];
assign trunc_ln95_fu_984_p1 = select_ln93_fu_902_p3[5:0];
assign zext_ln92_1_fu_958_p1 = lshr_ln92_1_fu_948_p4;
assign zext_ln92_fu_924_p1 = lshr_ln_fu_914_p4;
assign zext_ln95_fu_1148_p1 = add_ln2_fu_1142_p3;
endmodule 