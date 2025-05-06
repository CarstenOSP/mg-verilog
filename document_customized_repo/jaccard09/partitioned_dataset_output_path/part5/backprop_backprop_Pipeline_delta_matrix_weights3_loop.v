
module backprop_backprop_Pipeline_delta_matrix_weights3_loop (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_15_address0,delta_weights3_15_ce0,delta_weights3_15_we0,delta_weights3_15_d0,delta_weights3_14_address0,delta_weights3_14_ce0,delta_weights3_14_we0,delta_weights3_14_d0,delta_weights3_13_address0,delta_weights3_13_ce0,delta_weights3_13_we0,delta_weights3_13_d0,delta_weights3_12_address0,delta_weights3_12_ce0,delta_weights3_12_we0,delta_weights3_12_d0,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_address0,delta_weights3_ce0,delta_weights3_we0,delta_weights3_d0,activations2_address0,activations2_ce0,activations2_q0,activations2_4_address0,activations2_4_ce0,activations2_4_q0,activations2_8_address0,activations2_8_ce0,activations2_8_q0,activations2_12_address0,activations2_12_ce0,activations2_12_q0,p_reload86,p_reload85,p_reload,activations2_1_address0,activations2_1_ce0,activations2_1_q0,activations2_5_address0,activations2_5_ce0,activations2_5_q0,activations2_9_address0,activations2_9_ce0,activations2_9_q0,activations2_13_address0,activations2_13_ce0,activations2_13_q0,activations2_2_address0,activations2_2_ce0,activations2_2_q0,activations2_6_address0,activations2_6_ce0,activations2_6_q0,activations2_10_address0,activations2_10_ce0,activations2_10_q0,activations2_14_address0,activations2_14_ce0,activations2_14_q0,activations2_3_address0,activations2_3_ce0,activations2_3_q0,activations2_7_address0,activations2_7_ce0,activations2_7_q0,activations2_11_address0,activations2_11_ce0,activations2_11_q0,activations2_15_address0,activations2_15_ce0,activations2_15_q0,grp_fu_5689_p_din0,grp_fu_5689_p_din1,grp_fu_5689_p_dout0,grp_fu_5689_p_ce,grp_fu_5693_p_din0,grp_fu_5693_p_din1,grp_fu_5693_p_dout0,grp_fu_5693_p_ce,grp_fu_5697_p_din0,grp_fu_5697_p_din1,grp_fu_5697_p_dout0,grp_fu_5697_p_ce,grp_fu_5701_p_din0,grp_fu_5701_p_din1,grp_fu_5701_p_dout0,grp_fu_5701_p_ce,grp_fu_5705_p_din0,grp_fu_5705_p_din1,grp_fu_5705_p_dout0,grp_fu_5705_p_ce,grp_fu_5709_p_din0,grp_fu_5709_p_din1,grp_fu_5709_p_dout0,grp_fu_5709_p_ce,grp_fu_5713_p_din0,grp_fu_5713_p_din1,grp_fu_5713_p_dout0,grp_fu_5713_p_ce,grp_fu_5717_p_din0,grp_fu_5717_p_din1,grp_fu_5717_p_dout0,grp_fu_5717_p_ce,grp_fu_5721_p_din0,grp_fu_5721_p_din1,grp_fu_5721_p_dout0,grp_fu_5721_p_ce,grp_fu_5725_p_din0,grp_fu_5725_p_din1,grp_fu_5725_p_dout0,grp_fu_5725_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] delta_weights3_15_address0;
output   delta_weights3_15_ce0;
output   delta_weights3_15_we0;
output  [63:0] delta_weights3_15_d0;
output  [3:0] delta_weights3_14_address0;
output   delta_weights3_14_ce0;
output   delta_weights3_14_we0;
output  [63:0] delta_weights3_14_d0;
output  [3:0] delta_weights3_13_address0;
output   delta_weights3_13_ce0;
output   delta_weights3_13_we0;
output  [63:0] delta_weights3_13_d0;
output  [3:0] delta_weights3_12_address0;
output   delta_weights3_12_ce0;
output   delta_weights3_12_we0;
output  [63:0] delta_weights3_12_d0;
output  [3:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [3:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [3:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [3:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [3:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [3:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [3:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [3:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [3:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [3:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [3:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [3:0] delta_weights3_address0;
output   delta_weights3_ce0;
output   delta_weights3_we0;
output  [63:0] delta_weights3_d0;
output  [1:0] activations2_address0;
output   activations2_ce0;
input  [63:0] activations2_q0;
output  [1:0] activations2_4_address0;
output   activations2_4_ce0;
input  [63:0] activations2_4_q0;
output  [1:0] activations2_8_address0;
output   activations2_8_ce0;
input  [63:0] activations2_8_q0;
output  [1:0] activations2_12_address0;
output   activations2_12_ce0;
input  [63:0] activations2_12_q0;
input  [63:0] p_reload86;
input  [63:0] p_reload85;
input  [63:0] p_reload;
output  [1:0] activations2_1_address0;
output   activations2_1_ce0;
input  [63:0] activations2_1_q0;
output  [1:0] activations2_5_address0;
output   activations2_5_ce0;
input  [63:0] activations2_5_q0;
output  [1:0] activations2_9_address0;
output   activations2_9_ce0;
input  [63:0] activations2_9_q0;
output  [1:0] activations2_13_address0;
output   activations2_13_ce0;
input  [63:0] activations2_13_q0;
output  [1:0] activations2_2_address0;
output   activations2_2_ce0;
input  [63:0] activations2_2_q0;
output  [1:0] activations2_6_address0;
output   activations2_6_ce0;
input  [63:0] activations2_6_q0;
output  [1:0] activations2_10_address0;
output   activations2_10_ce0;
input  [63:0] activations2_10_q0;
output  [1:0] activations2_14_address0;
output   activations2_14_ce0;
input  [63:0] activations2_14_q0;
output  [1:0] activations2_3_address0;
output   activations2_3_ce0;
input  [63:0] activations2_3_q0;
output  [1:0] activations2_7_address0;
output   activations2_7_ce0;
input  [63:0] activations2_7_q0;
output  [1:0] activations2_11_address0;
output   activations2_11_ce0;
input  [63:0] activations2_11_q0;
output  [1:0] activations2_15_address0;
output   activations2_15_ce0;
input  [63:0] activations2_15_q0;
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
output  [63:0] grp_fu_5705_p_din0;
output  [63:0] grp_fu_5705_p_din1;
input  [63:0] grp_fu_5705_p_dout0;
output   grp_fu_5705_p_ce;
output  [63:0] grp_fu_5709_p_din0;
output  [63:0] grp_fu_5709_p_din1;
input  [63:0] grp_fu_5709_p_dout0;
output   grp_fu_5709_p_ce;
output  [63:0] grp_fu_5713_p_din0;
output  [63:0] grp_fu_5713_p_din1;
input  [63:0] grp_fu_5713_p_dout0;
output   grp_fu_5713_p_ce;
output  [63:0] grp_fu_5717_p_din0;
output  [63:0] grp_fu_5717_p_din1;
input  [63:0] grp_fu_5717_p_dout0;
output   grp_fu_5717_p_ce;
output  [63:0] grp_fu_5721_p_din0;
output  [63:0] grp_fu_5721_p_din1;
input  [63:0] grp_fu_5721_p_dout0;
output   grp_fu_5721_p_ce;
output  [63:0] grp_fu_5725_p_din0;
output  [63:0] grp_fu_5725_p_din1;
input  [63:0] grp_fu_5725_p_dout0;
output   grp_fu_5725_p_ce;
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
wire   [0:0] tmp_fu_898_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_7_reg_1337;
reg   [6:0] i_7_reg_1337_pp0_iter1_reg;
reg   [6:0] i_7_reg_1337_pp0_iter2_reg;
reg   [6:0] i_7_reg_1337_pp0_iter3_reg;
reg   [6:0] i_7_reg_1337_pp0_iter4_reg;
reg   [6:0] i_7_reg_1337_pp0_iter5_reg;
reg   [6:0] i_7_reg_1337_pp0_iter6_reg;
reg   [6:0] i_7_reg_1337_pp0_iter7_reg;
reg   [6:0] i_7_reg_1337_pp0_iter8_reg;
wire   [3:0] trunc_ln73_fu_947_p1;
reg   [3:0] trunc_ln73_reg_1428;
reg   [3:0] trunc_ln73_reg_1428_pp0_iter2_reg;
reg   [3:0] trunc_ln73_reg_1428_pp0_iter3_reg;
reg   [3:0] trunc_ln73_reg_1428_pp0_iter4_reg;
reg   [3:0] trunc_ln73_reg_1428_pp0_iter5_reg;
reg   [3:0] trunc_ln73_reg_1428_pp0_iter6_reg;
reg   [3:0] trunc_ln73_reg_1428_pp0_iter7_reg;
reg   [3:0] trunc_ln73_reg_1428_pp0_iter8_reg;
wire   [63:0] tmp_s_fu_950_p11;
reg   [63:0] tmp_s_reg_1432;
wire   [63:0] tmp_87_fu_974_p11;
reg   [63:0] tmp_87_reg_1439;
wire   [63:0] tmp_88_fu_998_p11;
reg   [63:0] tmp_88_reg_1446;
wire   [63:0] tmp_89_fu_1022_p11;
reg   [63:0] tmp_89_reg_1453;
reg   [63:0] mul_i3_reg_1460;
reg   [63:0] mul_16_i_reg_1468;
reg   [63:0] mul_216_i_reg_1476;
reg   [63:0] mul_1_i_reg_1484;
reg   [63:0] mul_1_1_i_reg_1492;
reg   [63:0] mul_1_2_i_reg_1500;
reg   [63:0] mul_2_i_reg_1508;
reg   [63:0] mul_2_1_i_reg_1516;
reg   [63:0] mul_2_2_i_reg_1524;
reg   [63:0] mul_3_i_reg_1532;
wire   [63:0] grp_fu_882_p2;
reg   [63:0] mul_3_1_i_reg_1540;
wire   [63:0] grp_fu_886_p2;
reg   [63:0] mul_3_2_i_reg_1548;
wire   [63:0] zext_ln72_fu_916_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_1_fu_1076_p1;
wire   [63:0] zext_ln75_2_fu_1130_p1;
wire   [63:0] zext_ln75_3_fu_1154_p1;
wire   [63:0] zext_ln75_4_fu_1178_p1;
wire   [63:0] zext_ln75_5_fu_1202_p1;
wire   [63:0] zext_ln75_6_fu_1226_p1;
wire   [63:0] zext_ln75_7_fu_1250_p1;
wire   [63:0] zext_ln75_8_fu_1274_p1;
wire   [63:0] zext_ln75_9_fu_1298_p1;
reg   [6:0] i_fu_148;
wire   [6:0] add_ln73_fu_936_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_7;
reg    activations2_ce0_local;
reg    activations2_4_ce0_local;
reg    activations2_8_ce0_local;
reg    activations2_12_ce0_local;
reg    activations2_1_ce0_local;
reg    activations2_5_ce0_local;
reg    activations2_9_ce0_local;
reg    activations2_13_ce0_local;
reg    activations2_2_ce0_local;
reg    activations2_6_ce0_local;
reg    activations2_10_ce0_local;
reg    activations2_14_ce0_local;
reg    activations2_3_ce0_local;
reg    activations2_7_ce0_local;
reg    activations2_11_ce0_local;
reg    activations2_15_ce0_local;
reg    delta_weights3_8_we0_local;
reg   [63:0] delta_weights3_8_d0_local;
reg    delta_weights3_8_ce0_local;
reg   [3:0] delta_weights3_8_address0_local;
reg    delta_weights3_9_we0_local;
reg   [63:0] delta_weights3_9_d0_local;
reg    delta_weights3_9_ce0_local;
reg   [3:0] delta_weights3_9_address0_local;
reg    delta_weights3_10_we0_local;
reg   [63:0] delta_weights3_10_d0_local;
reg    delta_weights3_10_ce0_local;
reg   [3:0] delta_weights3_10_address0_local;
reg    delta_weights3_11_we0_local;
reg   [63:0] delta_weights3_11_d0_local;
reg    delta_weights3_11_ce0_local;
reg   [3:0] delta_weights3_11_address0_local;
reg    delta_weights3_12_we0_local;
reg   [63:0] delta_weights3_12_d0_local;
reg    delta_weights3_12_ce0_local;
reg   [3:0] delta_weights3_12_address0_local;
reg    delta_weights3_13_we0_local;
reg   [63:0] delta_weights3_13_d0_local;
reg    delta_weights3_13_ce0_local;
reg   [3:0] delta_weights3_13_address0_local;
reg    delta_weights3_14_we0_local;
reg   [63:0] delta_weights3_14_d0_local;
reg    delta_weights3_14_ce0_local;
reg   [3:0] delta_weights3_14_address0_local;
reg    delta_weights3_15_we0_local;
reg   [63:0] delta_weights3_15_d0_local;
reg    delta_weights3_15_ce0_local;
reg   [3:0] delta_weights3_15_address0_local;
reg    delta_weights3_we0_local;
reg   [63:0] delta_weights3_d0_local;
reg    delta_weights3_ce0_local;
reg   [3:0] delta_weights3_address0_local;
reg    delta_weights3_1_we0_local;
reg   [63:0] delta_weights3_1_d0_local;
reg    delta_weights3_1_ce0_local;
reg   [3:0] delta_weights3_1_address0_local;
reg    delta_weights3_2_we0_local;
reg   [63:0] delta_weights3_2_d0_local;
reg    delta_weights3_2_ce0_local;
reg   [3:0] delta_weights3_2_address0_local;
reg    delta_weights3_3_we0_local;
reg   [63:0] delta_weights3_3_d0_local;
reg    delta_weights3_3_ce0_local;
reg   [3:0] delta_weights3_3_address0_local;
reg    delta_weights3_4_we0_local;
reg   [63:0] delta_weights3_4_d0_local;
reg    delta_weights3_4_ce0_local;
reg   [3:0] delta_weights3_4_address0_local;
reg    delta_weights3_5_we0_local;
reg   [63:0] delta_weights3_5_d0_local;
reg    delta_weights3_5_ce0_local;
reg   [3:0] delta_weights3_5_address0_local;
reg    delta_weights3_6_we0_local;
reg   [63:0] delta_weights3_6_d0_local;
reg    delta_weights3_6_ce0_local;
reg   [3:0] delta_weights3_6_address0_local;
reg    delta_weights3_7_we0_local;
reg   [63:0] delta_weights3_7_d0_local;
reg    delta_weights3_7_ce0_local;
reg   [3:0] delta_weights3_7_address0_local;
wire   [1:0] lshr_ln_fu_906_p4;
wire   [63:0] tmp_s_fu_950_p9;
wire   [63:0] tmp_87_fu_974_p9;
wire   [63:0] tmp_88_fu_998_p9;
wire   [63:0] tmp_89_fu_1022_p9;
wire   [5:0] trunc_ln75_fu_1049_p1;
wire   [7:0] p_shl_fu_1052_p3;
wire   [7:0] zext_ln75_fu_1046_p1;
wire   [7:0] sub_ln75_fu_1060_p2;
wire   [3:0] lshr_ln1_fu_1066_p4;
wire   [5:0] tmp_85_fu_1096_p4;
wire   [7:0] tmp_86_fu_1106_p3;
wire   [7:0] add_ln75_fu_1114_p2;
wire   [3:0] lshr_ln75_1_fu_1120_p4;
wire   [7:0] add_ln75_1_fu_1138_p2;
wire   [3:0] lshr_ln75_2_fu_1144_p4;
wire   [7:0] empty_fu_1162_p2;
wire   [3:0] lshr_ln75_3_fu_1168_p4;
wire   [7:0] add_ln75_2_fu_1186_p2;
wire   [3:0] lshr_ln75_4_fu_1192_p4;
wire   [7:0] add_ln75_3_fu_1210_p2;
wire   [3:0] lshr_ln75_5_fu_1216_p4;
wire   [7:0] empty_247_fu_1234_p2;
wire   [3:0] lshr_ln75_6_fu_1240_p4;
wire   [7:0] add_ln75_4_fu_1258_p2;
wire   [3:0] lshr_ln75_7_fu_1264_p4;
wire   [7:0] add_ln75_5_fu_1282_p2;
wire   [3:0] lshr_ln75_8_fu_1288_p4;
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
reg    ap_condition_583;
wire   [3:0] tmp_s_fu_950_p1;
wire   [3:0] tmp_s_fu_950_p3;
wire  signed [3:0] tmp_s_fu_950_p5;
wire  signed [3:0] tmp_s_fu_950_p7;
wire   [3:0] tmp_87_fu_974_p1;
wire   [3:0] tmp_87_fu_974_p3;
wire  signed [3:0] tmp_87_fu_974_p5;
wire  signed [3:0] tmp_87_fu_974_p7;
wire   [3:0] tmp_88_fu_998_p1;
wire   [3:0] tmp_88_fu_998_p3;
wire  signed [3:0] tmp_88_fu_998_p5;
wire  signed [3:0] tmp_88_fu_998_p7;
wire   [3:0] tmp_89_fu_1022_p1;
wire   [3:0] tmp_89_fu_1022_p3;
wire  signed [3:0] tmp_89_fu_1022_p5;
wire  signed [3:0] tmp_89_fu_1022_p7;
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
#0 i_fu_148 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U616(.clk(ap_clk),.reset(ap_rst),.din0(tmp_89_reg_1453),.din1(p_reload85),.ce(1'b1),.dout(grp_fu_882_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U617(.clk(ap_clk),.reset(ap_rst),.din0(tmp_89_reg_1453),.din1(p_reload),.ce(1'b1),.dout(grp_fu_886_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U618(.din0(activations2_q0),.din1(activations2_4_q0),.din2(activations2_8_q0),.din3(activations2_12_q0),.def(tmp_s_fu_950_p9),.sel(trunc_ln73_fu_947_p1),.dout(tmp_s_fu_950_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U619(.din0(activations2_1_q0),.din1(activations2_5_q0),.din2(activations2_9_q0),.din3(activations2_13_q0),.def(tmp_87_fu_974_p9),.sel(trunc_ln73_fu_947_p1),.dout(tmp_87_fu_974_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U620(.din0(activations2_2_q0),.din1(activations2_6_q0),.din2(activations2_10_q0),.din3(activations2_14_q0),.def(tmp_88_fu_998_p9),.sel(trunc_ln73_fu_947_p1),.dout(tmp_88_fu_998_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h4 ),.din1_WIDTH( 64 ),.CASE2( 4'h8 ),.din2_WIDTH( 64 ),.CASE3( 4'hC ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_9_4_64_1_1_U621(.din0(activations2_3_q0),.din1(activations2_7_q0),.din2(activations2_11_q0),.din3(activations2_15_q0),.def(tmp_89_fu_1022_p9),.sel(trunc_ln73_fu_947_p1),.dout(tmp_89_fu_1022_p11));
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
        end else if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((tmp_fu_898_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_148 <= add_ln73_fu_936_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_148 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_7_reg_1337 <= ap_sig_allocacmp_i_7;
        i_7_reg_1337_pp0_iter1_reg <= i_7_reg_1337;
        tmp_87_reg_1439 <= tmp_87_fu_974_p11;
        tmp_88_reg_1446 <= tmp_88_fu_998_p11;
        tmp_89_reg_1453 <= tmp_89_fu_1022_p11;
        tmp_s_reg_1432 <= tmp_s_fu_950_p11;
        trunc_ln73_reg_1428 <= trunc_ln73_fu_947_p1;
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
        i_7_reg_1337_pp0_iter2_reg <= i_7_reg_1337_pp0_iter1_reg;
        i_7_reg_1337_pp0_iter3_reg <= i_7_reg_1337_pp0_iter2_reg;
        i_7_reg_1337_pp0_iter4_reg <= i_7_reg_1337_pp0_iter3_reg;
        i_7_reg_1337_pp0_iter5_reg <= i_7_reg_1337_pp0_iter4_reg;
        i_7_reg_1337_pp0_iter6_reg <= i_7_reg_1337_pp0_iter5_reg;
        i_7_reg_1337_pp0_iter7_reg <= i_7_reg_1337_pp0_iter6_reg;
        i_7_reg_1337_pp0_iter8_reg <= i_7_reg_1337_pp0_iter7_reg;
        mul_16_i_reg_1468 <= grp_fu_5693_p_dout0;
        mul_1_1_i_reg_1492 <= grp_fu_5705_p_dout0;
        mul_1_2_i_reg_1500 <= grp_fu_5709_p_dout0;
        mul_1_i_reg_1484 <= grp_fu_5701_p_dout0;
        mul_216_i_reg_1476 <= grp_fu_5697_p_dout0;
        mul_2_1_i_reg_1516 <= grp_fu_5717_p_dout0;
        mul_2_2_i_reg_1524 <= grp_fu_5721_p_dout0;
        mul_2_i_reg_1508 <= grp_fu_5713_p_dout0;
        mul_3_1_i_reg_1540 <= grp_fu_882_p2;
        mul_3_2_i_reg_1548 <= grp_fu_886_p2;
        mul_3_i_reg_1532 <= grp_fu_5725_p_dout0;
        mul_i3_reg_1460 <= grp_fu_5689_p_dout0;
        trunc_ln73_reg_1428_pp0_iter2_reg <= trunc_ln73_reg_1428;
        trunc_ln73_reg_1428_pp0_iter3_reg <= trunc_ln73_reg_1428_pp0_iter2_reg;
        trunc_ln73_reg_1428_pp0_iter4_reg <= trunc_ln73_reg_1428_pp0_iter3_reg;
        trunc_ln73_reg_1428_pp0_iter5_reg <= trunc_ln73_reg_1428_pp0_iter4_reg;
        trunc_ln73_reg_1428_pp0_iter6_reg <= trunc_ln73_reg_1428_pp0_iter5_reg;
        trunc_ln73_reg_1428_pp0_iter7_reg <= trunc_ln73_reg_1428_pp0_iter6_reg;
        trunc_ln73_reg_1428_pp0_iter8_reg <= trunc_ln73_reg_1428_pp0_iter7_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_10_ce0_local = 1'b1;
    end else begin
        activations2_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_11_ce0_local = 1'b1;
    end else begin
        activations2_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_12_ce0_local = 1'b1;
    end else begin
        activations2_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_13_ce0_local = 1'b1;
    end else begin
        activations2_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_14_ce0_local = 1'b1;
    end else begin
        activations2_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_15_ce0_local = 1'b1;
    end else begin
        activations2_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_1_ce0_local = 1'b1;
    end else begin
        activations2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_2_ce0_local = 1'b1;
    end else begin
        activations2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_3_ce0_local = 1'b1;
    end else begin
        activations2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_4_ce0_local = 1'b1;
    end else begin
        activations2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_5_ce0_local = 1'b1;
    end else begin
        activations2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_6_ce0_local = 1'b1;
    end else begin
        activations2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_7_ce0_local = 1'b1;
    end else begin
        activations2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_8_ce0_local = 1'b1;
    end else begin
        activations2_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_9_ce0_local = 1'b1;
    end else begin
        activations2_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        activations2_ce0_local = 1'b1;
    end else begin
        activations2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_898_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter8_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_7 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_7 = i_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_10_address0_local = zext_ln75_4_fu_1178_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_10_address0_local = zext_ln75_8_fu_1274_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_10_address0_local = zext_ln75_1_fu_1076_p1;
        end else begin
            delta_weights3_10_address0_local = 'bx;
        end
    end else begin
        delta_weights3_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_10_d0_local = mul_2_i_reg_1508;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_10_d0_local = mul_3_1_i_reg_1540;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_10_d0_local = mul_216_i_reg_1476;
        end else begin
            delta_weights3_10_d0_local = 'bx;
        end
    end else begin
        delta_weights3_10_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_11_address0_local = zext_ln75_5_fu_1202_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_11_address0_local = zext_ln75_9_fu_1298_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_11_address0_local = zext_ln75_1_fu_1076_p1;
        end else begin
            delta_weights3_11_address0_local = 'bx;
        end
    end else begin
        delta_weights3_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_11_d0_local = mul_2_1_i_reg_1516;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_11_d0_local = mul_3_2_i_reg_1548;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_11_d0_local = mul_1_i_reg_1484;
        end else begin
            delta_weights3_11_d0_local = 'bx;
        end
    end else begin
        delta_weights3_11_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_12_address0_local = zext_ln75_6_fu_1226_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_12_address0_local = zext_ln75_1_fu_1076_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_12_address0_local = zext_ln75_2_fu_1130_p1;
        end else begin
            delta_weights3_12_address0_local = 'bx;
        end
    end else begin
        delta_weights3_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_12_ce0_local = 1'b1;
    end else begin
        delta_weights3_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_12_d0_local = mul_2_2_i_reg_1524;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_12_d0_local = mul_i3_reg_1460;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_12_d0_local = mul_1_1_i_reg_1492;
        end else begin
            delta_weights3_12_d0_local = 'bx;
        end
    end else begin
        delta_weights3_12_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_12_we0_local = 1'b1;
    end else begin
        delta_weights3_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_13_address0_local = zext_ln75_7_fu_1250_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_13_address0_local = zext_ln75_1_fu_1076_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_13_address0_local = zext_ln75_3_fu_1154_p1;
        end else begin
            delta_weights3_13_address0_local = 'bx;
        end
    end else begin
        delta_weights3_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_13_ce0_local = 1'b1;
    end else begin
        delta_weights3_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_13_d0_local = mul_3_i_reg_1532;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_13_d0_local = mul_16_i_reg_1468;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_13_d0_local = mul_1_2_i_reg_1500;
        end else begin
            delta_weights3_13_d0_local = 'bx;
        end
    end else begin
        delta_weights3_13_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_13_we0_local = 1'b1;
    end else begin
        delta_weights3_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_14_address0_local = zext_ln75_8_fu_1274_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_14_address0_local = zext_ln75_1_fu_1076_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_14_address0_local = zext_ln75_4_fu_1178_p1;
        end else begin
            delta_weights3_14_address0_local = 'bx;
        end
    end else begin
        delta_weights3_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_14_ce0_local = 1'b1;
    end else begin
        delta_weights3_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_14_d0_local = mul_3_1_i_reg_1540;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_14_d0_local = mul_216_i_reg_1476;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_14_d0_local = mul_2_i_reg_1508;
        end else begin
            delta_weights3_14_d0_local = 'bx;
        end
    end else begin
        delta_weights3_14_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_14_we0_local = 1'b1;
    end else begin
        delta_weights3_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_15_address0_local = zext_ln75_9_fu_1298_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_15_address0_local = zext_ln75_1_fu_1076_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_15_address0_local = zext_ln75_5_fu_1202_p1;
        end else begin
            delta_weights3_15_address0_local = 'bx;
        end
    end else begin
        delta_weights3_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_15_ce0_local = 1'b1;
    end else begin
        delta_weights3_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_15_d0_local = mul_3_2_i_reg_1548;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_15_d0_local = mul_1_i_reg_1484;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_15_d0_local = mul_2_1_i_reg_1516;
        end else begin
            delta_weights3_15_d0_local = 'bx;
        end
    end else begin
        delta_weights3_15_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_15_we0_local = 1'b1;
    end else begin
        delta_weights3_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_1_address0_local = zext_ln75_1_fu_1076_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_1_address0_local = zext_ln75_3_fu_1154_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_1_address0_local = zext_ln75_7_fu_1250_p1;
        end else begin
            delta_weights3_1_address0_local = 'bx;
        end
    end else begin
        delta_weights3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_1_d0_local = mul_16_i_reg_1468;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_1_d0_local = mul_1_2_i_reg_1500;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_1_d0_local = mul_3_i_reg_1532;
        end else begin
            delta_weights3_1_d0_local = 'bx;
        end
    end else begin
        delta_weights3_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_2_address0_local = zext_ln75_1_fu_1076_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_2_address0_local = zext_ln75_4_fu_1178_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_2_address0_local = zext_ln75_8_fu_1274_p1;
        end else begin
            delta_weights3_2_address0_local = 'bx;
        end
    end else begin
        delta_weights3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_2_d0_local = mul_216_i_reg_1476;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_2_d0_local = mul_2_i_reg_1508;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_2_d0_local = mul_3_1_i_reg_1540;
        end else begin
            delta_weights3_2_d0_local = 'bx;
        end
    end else begin
        delta_weights3_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_3_address0_local = zext_ln75_1_fu_1076_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_3_address0_local = zext_ln75_5_fu_1202_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_3_address0_local = zext_ln75_9_fu_1298_p1;
        end else begin
            delta_weights3_3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_3_d0_local = mul_1_i_reg_1484;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_3_d0_local = mul_2_1_i_reg_1516;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_3_d0_local = mul_3_2_i_reg_1548;
        end else begin
            delta_weights3_3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_4_address0_local = zext_ln75_1_fu_1076_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_4_address0_local = zext_ln75_2_fu_1130_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_4_address0_local = zext_ln75_6_fu_1226_p1;
        end else begin
            delta_weights3_4_address0_local = 'bx;
        end
    end else begin
        delta_weights3_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_4_d0_local = mul_i3_reg_1460;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_4_d0_local = mul_1_1_i_reg_1492;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_4_d0_local = mul_2_2_i_reg_1524;
        end else begin
            delta_weights3_4_d0_local = 'bx;
        end
    end else begin
        delta_weights3_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_5_address0_local = zext_ln75_1_fu_1076_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_5_address0_local = zext_ln75_3_fu_1154_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_5_address0_local = zext_ln75_7_fu_1250_p1;
        end else begin
            delta_weights3_5_address0_local = 'bx;
        end
    end else begin
        delta_weights3_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_5_d0_local = mul_16_i_reg_1468;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_5_d0_local = mul_1_2_i_reg_1500;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_5_d0_local = mul_3_i_reg_1532;
        end else begin
            delta_weights3_5_d0_local = 'bx;
        end
    end else begin
        delta_weights3_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_6_address0_local = zext_ln75_1_fu_1076_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_6_address0_local = zext_ln75_4_fu_1178_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_6_address0_local = zext_ln75_8_fu_1274_p1;
        end else begin
            delta_weights3_6_address0_local = 'bx;
        end
    end else begin
        delta_weights3_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_6_d0_local = mul_216_i_reg_1476;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_6_d0_local = mul_2_i_reg_1508;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_6_d0_local = mul_3_1_i_reg_1540;
        end else begin
            delta_weights3_6_d0_local = 'bx;
        end
    end else begin
        delta_weights3_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_7_address0_local = zext_ln75_1_fu_1076_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_7_address0_local = zext_ln75_5_fu_1202_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_7_address0_local = zext_ln75_9_fu_1298_p1;
        end else begin
            delta_weights3_7_address0_local = 'bx;
        end
    end else begin
        delta_weights3_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_7_d0_local = mul_1_i_reg_1484;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_7_d0_local = mul_2_1_i_reg_1516;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_7_d0_local = mul_3_2_i_reg_1548;
        end else begin
            delta_weights3_7_d0_local = 'bx;
        end
    end else begin
        delta_weights3_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_8_address0_local = zext_ln75_2_fu_1130_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_8_address0_local = zext_ln75_6_fu_1226_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_8_address0_local = zext_ln75_1_fu_1076_p1;
        end else begin
            delta_weights3_8_address0_local = 'bx;
        end
    end else begin
        delta_weights3_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_8_d0_local = mul_1_1_i_reg_1492;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_8_d0_local = mul_2_2_i_reg_1524;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_8_d0_local = mul_i3_reg_1460;
        end else begin
            delta_weights3_8_d0_local = 'bx;
        end
    end else begin
        delta_weights3_8_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_9_address0_local = zext_ln75_3_fu_1154_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_9_address0_local = zext_ln75_7_fu_1250_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_9_address0_local = zext_ln75_1_fu_1076_p1;
        end else begin
            delta_weights3_9_address0_local = 'bx;
        end
    end else begin
        delta_weights3_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((1'b1 == ap_condition_583)) begin
            delta_weights3_9_d0_local = mul_1_2_i_reg_1500;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_9_d0_local = mul_3_i_reg_1532;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_9_d0_local = mul_16_i_reg_1468;
        end else begin
            delta_weights3_9_d0_local = 'bx;
        end
    end else begin
        delta_weights3_9_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_address0_local = zext_ln75_1_fu_1076_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_address0_local = zext_ln75_2_fu_1130_p1;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_address0_local = zext_ln75_6_fu_1226_p1;
        end else begin
            delta_weights3_address0_local = 'bx;
        end
    end else begin
        delta_weights3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_ce0_local = 1'b1;
    end else begin
        delta_weights3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) begin
            delta_weights3_d0_local = mul_i3_reg_1460;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) begin
            delta_weights3_d0_local = mul_1_1_i_reg_1492;
        end else if ((trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)) begin
            delta_weights3_d0_local = mul_2_2_i_reg_1524;
        end else begin
            delta_weights3_d0_local = 'bx;
        end
    end else begin
        delta_weights3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8)))) begin
        delta_weights3_we0_local = 1'b1;
    end else begin
        delta_weights3_we0_local = 1'b0;
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
assign activations2_10_address0 = zext_ln72_fu_916_p1;
assign activations2_10_ce0 = activations2_10_ce0_local;
assign activations2_11_address0 = zext_ln72_fu_916_p1;
assign activations2_11_ce0 = activations2_11_ce0_local;
assign activations2_12_address0 = zext_ln72_fu_916_p1;
assign activations2_12_ce0 = activations2_12_ce0_local;
assign activations2_13_address0 = zext_ln72_fu_916_p1;
assign activations2_13_ce0 = activations2_13_ce0_local;
assign activations2_14_address0 = zext_ln72_fu_916_p1;
assign activations2_14_ce0 = activations2_14_ce0_local;
assign activations2_15_address0 = zext_ln72_fu_916_p1;
assign activations2_15_ce0 = activations2_15_ce0_local;
assign activations2_1_address0 = zext_ln72_fu_916_p1;
assign activations2_1_ce0 = activations2_1_ce0_local;
assign activations2_2_address0 = zext_ln72_fu_916_p1;
assign activations2_2_ce0 = activations2_2_ce0_local;
assign activations2_3_address0 = zext_ln72_fu_916_p1;
assign activations2_3_ce0 = activations2_3_ce0_local;
assign activations2_4_address0 = zext_ln72_fu_916_p1;
assign activations2_4_ce0 = activations2_4_ce0_local;
assign activations2_5_address0 = zext_ln72_fu_916_p1;
assign activations2_5_ce0 = activations2_5_ce0_local;
assign activations2_6_address0 = zext_ln72_fu_916_p1;
assign activations2_6_ce0 = activations2_6_ce0_local;
assign activations2_7_address0 = zext_ln72_fu_916_p1;
assign activations2_7_ce0 = activations2_7_ce0_local;
assign activations2_8_address0 = zext_ln72_fu_916_p1;
assign activations2_8_ce0 = activations2_8_ce0_local;
assign activations2_9_address0 = zext_ln72_fu_916_p1;
assign activations2_9_ce0 = activations2_9_ce0_local;
assign activations2_address0 = zext_ln72_fu_916_p1;
assign activations2_ce0 = activations2_ce0_local;
assign add_ln73_fu_936_p2 = (ap_sig_allocacmp_i_7 + 7'd4);
assign add_ln75_1_fu_1138_p2 = (tmp_86_fu_1106_p3 + 8'd2);
assign add_ln75_2_fu_1186_p2 = (tmp_86_fu_1106_p3 + 8'd4);
assign add_ln75_3_fu_1210_p2 = (tmp_86_fu_1106_p3 + 8'd5);
assign add_ln75_4_fu_1258_p2 = (tmp_86_fu_1106_p3 + 8'd7);
assign add_ln75_5_fu_1282_p2 = (tmp_86_fu_1106_p3 + 8'd8);
assign add_ln75_fu_1114_p2 = (tmp_86_fu_1106_p3 + 8'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_583 = (~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd4) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd0) & ~(trunc_ln73_reg_1428_pp0_iter8_reg == 4'd8));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_10_address0 = delta_weights3_10_address0_local;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_d0 = delta_weights3_10_d0_local;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_11_address0 = delta_weights3_11_address0_local;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_d0 = delta_weights3_11_d0_local;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_12_address0 = delta_weights3_12_address0_local;
assign delta_weights3_12_ce0 = delta_weights3_12_ce0_local;
assign delta_weights3_12_d0 = delta_weights3_12_d0_local;
assign delta_weights3_12_we0 = delta_weights3_12_we0_local;
assign delta_weights3_13_address0 = delta_weights3_13_address0_local;
assign delta_weights3_13_ce0 = delta_weights3_13_ce0_local;
assign delta_weights3_13_d0 = delta_weights3_13_d0_local;
assign delta_weights3_13_we0 = delta_weights3_13_we0_local;
assign delta_weights3_14_address0 = delta_weights3_14_address0_local;
assign delta_weights3_14_ce0 = delta_weights3_14_ce0_local;
assign delta_weights3_14_d0 = delta_weights3_14_d0_local;
assign delta_weights3_14_we0 = delta_weights3_14_we0_local;
assign delta_weights3_15_address0 = delta_weights3_15_address0_local;
assign delta_weights3_15_ce0 = delta_weights3_15_ce0_local;
assign delta_weights3_15_d0 = delta_weights3_15_d0_local;
assign delta_weights3_15_we0 = delta_weights3_15_we0_local;
assign delta_weights3_1_address0 = delta_weights3_1_address0_local;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_d0 = delta_weights3_1_d0_local;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_2_address0 = delta_weights3_2_address0_local;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_d0 = delta_weights3_2_d0_local;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_3_address0 = delta_weights3_3_address0_local;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_d0 = delta_weights3_3_d0_local;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_4_address0 = delta_weights3_4_address0_local;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_d0 = delta_weights3_4_d0_local;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_5_address0 = delta_weights3_5_address0_local;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_d0 = delta_weights3_5_d0_local;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_6_address0 = delta_weights3_6_address0_local;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_d0 = delta_weights3_6_d0_local;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_7_address0 = delta_weights3_7_address0_local;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_d0 = delta_weights3_7_d0_local;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_8_address0 = delta_weights3_8_address0_local;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_d0 = delta_weights3_8_d0_local;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_9_address0 = delta_weights3_9_address0_local;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_d0 = delta_weights3_9_d0_local;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign delta_weights3_address0 = delta_weights3_address0_local;
assign delta_weights3_ce0 = delta_weights3_ce0_local;
assign delta_weights3_d0 = delta_weights3_d0_local;
assign delta_weights3_we0 = delta_weights3_we0_local;
assign empty_247_fu_1234_p2 = (tmp_86_fu_1106_p3 + 8'd6);
assign empty_fu_1162_p2 = (tmp_86_fu_1106_p3 + 8'd3);
assign grp_fu_5689_p_ce = 1'b1;
assign grp_fu_5689_p_din0 = tmp_s_reg_1432;
assign grp_fu_5689_p_din1 = p_reload86;
assign grp_fu_5693_p_ce = 1'b1;
assign grp_fu_5693_p_din0 = tmp_s_reg_1432;
assign grp_fu_5693_p_din1 = p_reload85;
assign grp_fu_5697_p_ce = 1'b1;
assign grp_fu_5697_p_din0 = tmp_s_reg_1432;
assign grp_fu_5697_p_din1 = p_reload;
assign grp_fu_5701_p_ce = 1'b1;
assign grp_fu_5701_p_din0 = tmp_87_reg_1439;
assign grp_fu_5701_p_din1 = p_reload86;
assign grp_fu_5705_p_ce = 1'b1;
assign grp_fu_5705_p_din0 = tmp_87_reg_1439;
assign grp_fu_5705_p_din1 = p_reload85;
assign grp_fu_5709_p_ce = 1'b1;
assign grp_fu_5709_p_din0 = tmp_87_reg_1439;
assign grp_fu_5709_p_din1 = p_reload;
assign grp_fu_5713_p_ce = 1'b1;
assign grp_fu_5713_p_din0 = tmp_88_reg_1446;
assign grp_fu_5713_p_din1 = p_reload86;
assign grp_fu_5717_p_ce = 1'b1;
assign grp_fu_5717_p_din0 = tmp_88_reg_1446;
assign grp_fu_5717_p_din1 = p_reload85;
assign grp_fu_5721_p_ce = 1'b1;
assign grp_fu_5721_p_din0 = tmp_88_reg_1446;
assign grp_fu_5721_p_din1 = p_reload;
assign grp_fu_5725_p_ce = 1'b1;
assign grp_fu_5725_p_din0 = tmp_89_reg_1453;
assign grp_fu_5725_p_din1 = p_reload86;
assign lshr_ln1_fu_1066_p4 = {{sub_ln75_fu_1060_p2[7:4]}};
assign lshr_ln75_1_fu_1120_p4 = {{add_ln75_fu_1114_p2[7:4]}};
assign lshr_ln75_2_fu_1144_p4 = {{add_ln75_1_fu_1138_p2[7:4]}};
assign lshr_ln75_3_fu_1168_p4 = {{empty_fu_1162_p2[7:4]}};
assign lshr_ln75_4_fu_1192_p4 = {{add_ln75_2_fu_1186_p2[7:4]}};
assign lshr_ln75_5_fu_1216_p4 = {{add_ln75_3_fu_1210_p2[7:4]}};
assign lshr_ln75_6_fu_1240_p4 = {{empty_247_fu_1234_p2[7:4]}};
assign lshr_ln75_7_fu_1264_p4 = {{add_ln75_4_fu_1258_p2[7:4]}};
assign lshr_ln75_8_fu_1288_p4 = {{add_ln75_5_fu_1282_p2[7:4]}};
assign lshr_ln_fu_906_p4 = {{ap_sig_allocacmp_i_7[5:4]}};
assign p_shl_fu_1052_p3 = {{trunc_ln75_fu_1049_p1}, {2'd0}};
assign sub_ln75_fu_1060_p2 = (p_shl_fu_1052_p3 - zext_ln75_fu_1046_p1);
assign tmp_85_fu_1096_p4 = {{sub_ln75_fu_1060_p2[7:2]}};
assign tmp_86_fu_1106_p3 = {{tmp_85_fu_1096_p4}, {2'd3}};
assign tmp_87_fu_974_p9 = 'bx;
assign tmp_88_fu_998_p9 = 'bx;
assign tmp_89_fu_1022_p9 = 'bx;
assign tmp_fu_898_p3 = ap_sig_allocacmp_i_7[32'd6];
assign tmp_s_fu_950_p9 = 'bx;
assign trunc_ln73_fu_947_p1 = i_7_reg_1337[3:0];
assign trunc_ln75_fu_1049_p1 = i_7_reg_1337_pp0_iter8_reg[5:0];
assign zext_ln72_fu_916_p1 = lshr_ln_fu_906_p4;
assign zext_ln75_1_fu_1076_p1 = lshr_ln1_fu_1066_p4;
assign zext_ln75_2_fu_1130_p1 = lshr_ln75_1_fu_1120_p4;
assign zext_ln75_3_fu_1154_p1 = lshr_ln75_2_fu_1144_p4;
assign zext_ln75_4_fu_1178_p1 = lshr_ln75_3_fu_1168_p4;
assign zext_ln75_5_fu_1202_p1 = lshr_ln75_4_fu_1192_p4;
assign zext_ln75_6_fu_1226_p1 = lshr_ln75_5_fu_1216_p4;
assign zext_ln75_7_fu_1250_p1 = lshr_ln75_6_fu_1240_p4;
assign zext_ln75_8_fu_1274_p1 = lshr_ln75_7_fu_1264_p4;
assign zext_ln75_9_fu_1298_p1 = lshr_ln75_8_fu_1288_p4;
assign zext_ln75_fu_1046_p1 = i_7_reg_1337_pp0_iter8_reg;
endmodule 
