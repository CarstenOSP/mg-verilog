module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_8_address0,delta_weights2_8_ce0,delta_weights2_8_we0,delta_weights2_8_d0,delta_weights2_9_address0,delta_weights2_9_ce0,delta_weights2_9_we0,delta_weights2_9_d0,delta_weights2_10_address0,delta_weights2_10_ce0,delta_weights2_10_we0,delta_weights2_10_d0,delta_weights2_11_address0,delta_weights2_11_ce0,delta_weights2_11_we0,delta_weights2_11_d0,delta_weights2_12_address0,delta_weights2_12_ce0,delta_weights2_12_we0,delta_weights2_12_d0,delta_weights2_13_address0,delta_weights2_13_ce0,delta_weights2_13_we0,delta_weights2_13_d0,delta_weights2_14_address0,delta_weights2_14_ce0,delta_weights2_14_we0,delta_weights2_14_d0,delta_weights2_15_address0,delta_weights2_15_ce0,delta_weights2_15_we0,delta_weights2_15_d0,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_4_address0,output_difference_4_ce0,output_difference_4_q0,output_difference_5_address0,output_difference_5_ce0,output_difference_5_q0,output_difference_6_address0,output_difference_6_ce0,output_difference_6_q0,output_difference_7_address0,output_difference_7_ce0,output_difference_7_q0,output_difference_8_address0,output_difference_8_ce0,output_difference_8_q0,output_difference_9_address0,output_difference_9_ce0,output_difference_9_q0,output_difference_10_address0,output_difference_10_ce0,output_difference_10_q0,output_difference_11_address0,output_difference_11_ce0,output_difference_11_q0,output_difference_12_address0,output_difference_12_ce0,output_difference_12_q0,output_difference_13_address0,output_difference_13_ce0,output_difference_13_q0,output_difference_14_address0,output_difference_14_ce0,output_difference_14_q0,output_difference_15_address0,output_difference_15_ce0,output_difference_15_q0,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_4_address0,last_activations_4_ce0,last_activations_4_q0,last_activations_5_address0,last_activations_5_ce0,last_activations_5_q0,last_activations_6_address0,last_activations_6_ce0,last_activations_6_q0,last_activations_7_address0,last_activations_7_ce0,last_activations_7_q0,last_activations_8_address0,last_activations_8_ce0,last_activations_8_q0,last_activations_9_address0,last_activations_9_ce0,last_activations_9_q0,last_activations_10_address0,last_activations_10_ce0,last_activations_10_q0,last_activations_11_address0,last_activations_11_ce0,last_activations_11_q0,last_activations_12_address0,last_activations_12_ce0,last_activations_12_q0,last_activations_13_address0,last_activations_13_ce0,last_activations_13_q0,last_activations_14_address0,last_activations_14_ce0,last_activations_14_q0,last_activations_15_address0,last_activations_15_ce0,last_activations_15_q0,grp_fu_4660_p_din0,grp_fu_4660_p_din1,grp_fu_4660_p_dout0,grp_fu_4660_p_ce,grp_fu_4664_p_din0,grp_fu_4664_p_din1,grp_fu_4664_p_dout0,grp_fu_4664_p_ce,grp_fu_4668_p_din0,grp_fu_4668_p_din1,grp_fu_4668_p_dout0,grp_fu_4668_p_ce,grp_fu_4672_p_din0,grp_fu_4672_p_din1,grp_fu_4672_p_dout0,grp_fu_4672_p_ce,grp_fu_4676_p_din0,grp_fu_4676_p_din1,grp_fu_4676_p_dout0,grp_fu_4676_p_ce,grp_fu_4680_p_din0,grp_fu_4680_p_din1,grp_fu_4680_p_dout0,grp_fu_4680_p_ce,grp_fu_4684_p_din0,grp_fu_4684_p_din1,grp_fu_4684_p_dout0,grp_fu_4684_p_ce,grp_fu_4688_p_din0,grp_fu_4688_p_din1,grp_fu_4688_p_dout0,grp_fu_4688_p_ce,grp_fu_4692_p_din0,grp_fu_4692_p_din1,grp_fu_4692_p_dout0,grp_fu_4692_p_ce,grp_fu_4696_p_din0,grp_fu_4696_p_din1,grp_fu_4696_p_dout0,grp_fu_4696_p_ce,grp_fu_4700_p_din0,grp_fu_4700_p_din1,grp_fu_4700_p_dout0,grp_fu_4700_p_ce,grp_fu_4704_p_din0,grp_fu_4704_p_din1,grp_fu_4704_p_dout0,grp_fu_4704_p_ce,grp_fu_4708_p_din0,grp_fu_4708_p_din1,grp_fu_4708_p_dout0,grp_fu_4708_p_ce,grp_fu_4712_p_din0,grp_fu_4712_p_din1,grp_fu_4712_p_dout0,grp_fu_4712_p_ce,grp_fu_4716_p_din0,grp_fu_4716_p_din1,grp_fu_4716_p_dout0,grp_fu_4716_p_ce,grp_fu_4720_p_din0,grp_fu_4720_p_din1,grp_fu_4720_p_dout0,grp_fu_4720_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] delta_weights2_0_address0;
output   delta_weights2_0_ce0;
output   delta_weights2_0_we0;
output  [63:0] delta_weights2_0_d0;
output  [7:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [7:0] delta_weights2_2_address0;
output   delta_weights2_2_ce0;
output   delta_weights2_2_we0;
output  [63:0] delta_weights2_2_d0;
output  [7:0] delta_weights2_3_address0;
output   delta_weights2_3_ce0;
output   delta_weights2_3_we0;
output  [63:0] delta_weights2_3_d0;
output  [7:0] delta_weights2_4_address0;
output   delta_weights2_4_ce0;
output   delta_weights2_4_we0;
output  [63:0] delta_weights2_4_d0;
output  [7:0] delta_weights2_5_address0;
output   delta_weights2_5_ce0;
output   delta_weights2_5_we0;
output  [63:0] delta_weights2_5_d0;
output  [7:0] delta_weights2_6_address0;
output   delta_weights2_6_ce0;
output   delta_weights2_6_we0;
output  [63:0] delta_weights2_6_d0;
output  [7:0] delta_weights2_7_address0;
output   delta_weights2_7_ce0;
output   delta_weights2_7_we0;
output  [63:0] delta_weights2_7_d0;
output  [7:0] delta_weights2_8_address0;
output   delta_weights2_8_ce0;
output   delta_weights2_8_we0;
output  [63:0] delta_weights2_8_d0;
output  [7:0] delta_weights2_9_address0;
output   delta_weights2_9_ce0;
output   delta_weights2_9_we0;
output  [63:0] delta_weights2_9_d0;
output  [7:0] delta_weights2_10_address0;
output   delta_weights2_10_ce0;
output   delta_weights2_10_we0;
output  [63:0] delta_weights2_10_d0;
output  [7:0] delta_weights2_11_address0;
output   delta_weights2_11_ce0;
output   delta_weights2_11_we0;
output  [63:0] delta_weights2_11_d0;
output  [7:0] delta_weights2_12_address0;
output   delta_weights2_12_ce0;
output   delta_weights2_12_we0;
output  [63:0] delta_weights2_12_d0;
output  [7:0] delta_weights2_13_address0;
output   delta_weights2_13_ce0;
output   delta_weights2_13_we0;
output  [63:0] delta_weights2_13_d0;
output  [7:0] delta_weights2_14_address0;
output   delta_weights2_14_ce0;
output   delta_weights2_14_we0;
output  [63:0] delta_weights2_14_d0;
output  [7:0] delta_weights2_15_address0;
output   delta_weights2_15_ce0;
output   delta_weights2_15_we0;
output  [63:0] delta_weights2_15_d0;
output  [1:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [1:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [1:0] output_difference_2_address0;
output   output_difference_2_ce0;
input  [63:0] output_difference_2_q0;
output  [1:0] output_difference_3_address0;
output   output_difference_3_ce0;
input  [63:0] output_difference_3_q0;
output  [1:0] output_difference_4_address0;
output   output_difference_4_ce0;
input  [63:0] output_difference_4_q0;
output  [1:0] output_difference_5_address0;
output   output_difference_5_ce0;
input  [63:0] output_difference_5_q0;
output  [1:0] output_difference_6_address0;
output   output_difference_6_ce0;
input  [63:0] output_difference_6_q0;
output  [1:0] output_difference_7_address0;
output   output_difference_7_ce0;
input  [63:0] output_difference_7_q0;
output  [1:0] output_difference_8_address0;
output   output_difference_8_ce0;
input  [63:0] output_difference_8_q0;
output  [1:0] output_difference_9_address0;
output   output_difference_9_ce0;
input  [63:0] output_difference_9_q0;
output  [1:0] output_difference_10_address0;
output   output_difference_10_ce0;
input  [63:0] output_difference_10_q0;
output  [1:0] output_difference_11_address0;
output   output_difference_11_ce0;
input  [63:0] output_difference_11_q0;
output  [1:0] output_difference_12_address0;
output   output_difference_12_ce0;
input  [63:0] output_difference_12_q0;
output  [1:0] output_difference_13_address0;
output   output_difference_13_ce0;
input  [63:0] output_difference_13_q0;
output  [1:0] output_difference_14_address0;
output   output_difference_14_ce0;
input  [63:0] output_difference_14_q0;
output  [1:0] output_difference_15_address0;
output   output_difference_15_ce0;
input  [63:0] output_difference_15_q0;
output  [1:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [1:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [1:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [1:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [1:0] last_activations_4_address0;
output   last_activations_4_ce0;
input  [63:0] last_activations_4_q0;
output  [1:0] last_activations_5_address0;
output   last_activations_5_ce0;
input  [63:0] last_activations_5_q0;
output  [1:0] last_activations_6_address0;
output   last_activations_6_ce0;
input  [63:0] last_activations_6_q0;
output  [1:0] last_activations_7_address0;
output   last_activations_7_ce0;
input  [63:0] last_activations_7_q0;
output  [1:0] last_activations_8_address0;
output   last_activations_8_ce0;
input  [63:0] last_activations_8_q0;
output  [1:0] last_activations_9_address0;
output   last_activations_9_ce0;
input  [63:0] last_activations_9_q0;
output  [1:0] last_activations_10_address0;
output   last_activations_10_ce0;
input  [63:0] last_activations_10_q0;
output  [1:0] last_activations_11_address0;
output   last_activations_11_ce0;
input  [63:0] last_activations_11_q0;
output  [1:0] last_activations_12_address0;
output   last_activations_12_ce0;
input  [63:0] last_activations_12_q0;
output  [1:0] last_activations_13_address0;
output   last_activations_13_ce0;
input  [63:0] last_activations_13_q0;
output  [1:0] last_activations_14_address0;
output   last_activations_14_ce0;
input  [63:0] last_activations_14_q0;
output  [1:0] last_activations_15_address0;
output   last_activations_15_ce0;
input  [63:0] last_activations_15_q0;
output  [63:0] grp_fu_4660_p_din0;
output  [63:0] grp_fu_4660_p_din1;
input  [63:0] grp_fu_4660_p_dout0;
output   grp_fu_4660_p_ce;
output  [63:0] grp_fu_4664_p_din0;
output  [63:0] grp_fu_4664_p_din1;
input  [63:0] grp_fu_4664_p_dout0;
output   grp_fu_4664_p_ce;
output  [63:0] grp_fu_4668_p_din0;
output  [63:0] grp_fu_4668_p_din1;
input  [63:0] grp_fu_4668_p_dout0;
output   grp_fu_4668_p_ce;
output  [63:0] grp_fu_4672_p_din0;
output  [63:0] grp_fu_4672_p_din1;
input  [63:0] grp_fu_4672_p_dout0;
output   grp_fu_4672_p_ce;
output  [63:0] grp_fu_4676_p_din0;
output  [63:0] grp_fu_4676_p_din1;
input  [63:0] grp_fu_4676_p_dout0;
output   grp_fu_4676_p_ce;
output  [63:0] grp_fu_4680_p_din0;
output  [63:0] grp_fu_4680_p_din1;
input  [63:0] grp_fu_4680_p_dout0;
output   grp_fu_4680_p_ce;
output  [63:0] grp_fu_4684_p_din0;
output  [63:0] grp_fu_4684_p_din1;
input  [63:0] grp_fu_4684_p_dout0;
output   grp_fu_4684_p_ce;
output  [63:0] grp_fu_4688_p_din0;
output  [63:0] grp_fu_4688_p_din1;
input  [63:0] grp_fu_4688_p_dout0;
output   grp_fu_4688_p_ce;
output  [63:0] grp_fu_4692_p_din0;
output  [63:0] grp_fu_4692_p_din1;
input  [63:0] grp_fu_4692_p_dout0;
output   grp_fu_4692_p_ce;
output  [63:0] grp_fu_4696_p_din0;
output  [63:0] grp_fu_4696_p_din1;
input  [63:0] grp_fu_4696_p_dout0;
output   grp_fu_4696_p_ce;
output  [63:0] grp_fu_4700_p_din0;
output  [63:0] grp_fu_4700_p_din1;
input  [63:0] grp_fu_4700_p_dout0;
output   grp_fu_4700_p_ce;
output  [63:0] grp_fu_4704_p_din0;
output  [63:0] grp_fu_4704_p_din1;
input  [63:0] grp_fu_4704_p_dout0;
output   grp_fu_4704_p_ce;
output  [63:0] grp_fu_4708_p_din0;
output  [63:0] grp_fu_4708_p_din1;
input  [63:0] grp_fu_4708_p_dout0;
output   grp_fu_4708_p_ce;
output  [63:0] grp_fu_4712_p_din0;
output  [63:0] grp_fu_4712_p_din1;
input  [63:0] grp_fu_4712_p_dout0;
output   grp_fu_4712_p_ce;
output  [63:0] grp_fu_4716_p_din0;
output  [63:0] grp_fu_4716_p_din1;
input  [63:0] grp_fu_4716_p_dout0;
output   grp_fu_4716_p_ce;
output  [63:0] grp_fu_4720_p_din0;
output  [63:0] grp_fu_4720_p_din1;
input  [63:0] grp_fu_4720_p_dout0;
output   grp_fu_4720_p_ce;
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
wire   [0:0] icmp_ln93_fu_894_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] trunc_ln93_fu_942_p1;
reg   [3:0] trunc_ln93_reg_1153;
wire   [1:0] lshr_ln92_1_fu_976_p4;
reg   [1:0] lshr_ln92_1_reg_1238;
reg   [1:0] lshr_ln92_1_reg_1238_pp0_iter1_reg;
reg   [1:0] lshr_ln92_1_reg_1238_pp0_iter2_reg;
reg   [1:0] lshr_ln92_1_reg_1238_pp0_iter3_reg;
reg   [1:0] lshr_ln92_1_reg_1238_pp0_iter4_reg;
reg   [1:0] lshr_ln92_1_reg_1238_pp0_iter5_reg;
reg   [1:0] lshr_ln92_1_reg_1238_pp0_iter6_reg;
reg   [1:0] lshr_ln92_1_reg_1238_pp0_iter7_reg;
reg   [1:0] lshr_ln92_1_reg_1238_pp0_iter8_reg;
wire   [5:0] trunc_ln95_fu_1006_p1;
reg   [5:0] trunc_ln95_reg_1248;
reg   [5:0] trunc_ln95_reg_1248_pp0_iter1_reg;
reg   [5:0] trunc_ln95_reg_1248_pp0_iter2_reg;
reg   [5:0] trunc_ln95_reg_1248_pp0_iter3_reg;
reg   [5:0] trunc_ln95_reg_1248_pp0_iter4_reg;
reg   [5:0] trunc_ln95_reg_1248_pp0_iter5_reg;
reg   [5:0] trunc_ln95_reg_1248_pp0_iter6_reg;
reg   [5:0] trunc_ln95_reg_1248_pp0_iter7_reg;
reg   [5:0] trunc_ln95_reg_1248_pp0_iter8_reg;
wire   [63:0] tmp_fu_1031_p35;
reg   [63:0] tmp_reg_1328;
reg   [63:0] output_difference_0_load_reg_1348;
reg   [63:0] output_difference_1_load_reg_1353;
reg   [63:0] output_difference_2_load_reg_1358;
reg   [63:0] output_difference_3_load_reg_1363;
reg   [63:0] output_difference_4_load_reg_1368;
reg   [63:0] output_difference_5_load_reg_1373;
reg   [63:0] output_difference_6_load_reg_1378;
reg   [63:0] output_difference_7_load_reg_1383;
reg   [63:0] output_difference_8_load_reg_1388;
reg   [63:0] output_difference_9_load_reg_1393;
reg   [63:0] output_difference_10_load_reg_1398;
reg   [63:0] output_difference_11_load_reg_1403;
reg   [63:0] output_difference_12_load_reg_1408;
reg   [63:0] output_difference_13_load_reg_1413;
reg   [63:0] output_difference_14_load_reg_1418;
reg   [63:0] output_difference_15_load_reg_1423;
reg   [63:0] mul_reg_1428;
reg   [63:0] mul_1_reg_1433;
reg   [63:0] mul_2_reg_1438;
reg   [63:0] mul_3_reg_1443;
reg   [63:0] mul_4_reg_1448;
reg   [63:0] mul_5_reg_1453;
reg   [63:0] mul_6_reg_1458;
reg   [63:0] mul_7_reg_1463;
reg   [63:0] mul_8_reg_1468;
reg   [63:0] mul_9_reg_1473;
reg   [63:0] mul_10_reg_1478;
reg   [63:0] mul_11_reg_1483;
reg   [63:0] mul_12_reg_1488;
reg   [63:0] mul_13_reg_1493;
reg   [63:0] mul_14_reg_1498;
reg   [63:0] mul_15_reg_1503;
wire   [63:0] zext_ln92_fu_956_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln92_1_fu_986_p1;
wire   [63:0] zext_ln95_fu_1108_p1;
reg   [6:0] j_fu_176;
wire   [6:0] add_ln94_fu_1010_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_180;
wire   [6:0] select_ln93_fu_934_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [8:0] indvar_flatten_fu_184;
wire   [8:0] add_ln93_fu_900_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
reg    last_activations_0_ce0_local;
reg    last_activations_1_ce0_local;
reg    last_activations_2_ce0_local;
reg    last_activations_3_ce0_local;
reg    last_activations_4_ce0_local;
reg    last_activations_5_ce0_local;
reg    last_activations_6_ce0_local;
reg    last_activations_7_ce0_local;
reg    last_activations_8_ce0_local;
reg    last_activations_9_ce0_local;
reg    last_activations_10_ce0_local;
reg    last_activations_11_ce0_local;
reg    last_activations_12_ce0_local;
reg    last_activations_13_ce0_local;
reg    last_activations_14_ce0_local;
reg    last_activations_15_ce0_local;
reg    output_difference_0_ce0_local;
reg    output_difference_1_ce0_local;
reg    output_difference_2_ce0_local;
reg    output_difference_3_ce0_local;
reg    output_difference_4_ce0_local;
reg    output_difference_5_ce0_local;
reg    output_difference_6_ce0_local;
reg    output_difference_7_ce0_local;
reg    output_difference_8_ce0_local;
reg    output_difference_9_ce0_local;
reg    output_difference_10_ce0_local;
reg    output_difference_11_ce0_local;
reg    output_difference_12_ce0_local;
reg    output_difference_13_ce0_local;
reg    output_difference_14_ce0_local;
reg    output_difference_15_ce0_local;
reg    delta_weights2_0_we0_local;
reg    delta_weights2_0_ce0_local;
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
wire   [0:0] tmp_13_fu_912_p3;
wire   [6:0] add_ln93_1_fu_928_p2;
wire   [1:0] lshr_ln_fu_946_p4;
wire   [6:0] select_ln92_fu_920_p3;
wire   [63:0] tmp_fu_1031_p33;
wire   [7:0] add_ln_fu_1102_p3;
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
wire   [3:0] tmp_fu_1031_p1;
wire   [3:0] tmp_fu_1031_p3;
wire   [3:0] tmp_fu_1031_p5;
wire   [3:0] tmp_fu_1031_p7;
wire   [3:0] tmp_fu_1031_p9;
wire   [3:0] tmp_fu_1031_p11;
wire   [3:0] tmp_fu_1031_p13;
wire   [3:0] tmp_fu_1031_p15;
wire  signed [3:0] tmp_fu_1031_p17;
wire  signed [3:0] tmp_fu_1031_p19;
wire  signed [3:0] tmp_fu_1031_p21;
wire  signed [3:0] tmp_fu_1031_p23;
wire  signed [3:0] tmp_fu_1031_p25;
wire  signed [3:0] tmp_fu_1031_p27;
wire  signed [3:0] tmp_fu_1031_p29;
wire  signed [3:0] tmp_fu_1031_p31;
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
#0 indvar_flatten_fu_184 = 9'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U843(.din0(last_activations_0_q0),.din1(last_activations_1_q0),.din2(last_activations_2_q0),.din3(last_activations_3_q0),.din4(last_activations_4_q0),.din5(last_activations_5_q0),.din6(last_activations_6_q0),.din7(last_activations_7_q0),.din8(last_activations_8_q0),.din9(last_activations_9_q0),.din10(last_activations_10_q0),.din11(last_activations_11_q0),.din12(last_activations_12_q0),.din13(last_activations_13_q0),.din14(last_activations_14_q0),.din15(last_activations_15_q0),.def(tmp_fu_1031_p33),.sel(trunc_ln93_reg_1153),.dout(tmp_fu_1031_p35));
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
        if (((icmp_ln93_fu_894_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_180 <= select_ln93_fu_934_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_180 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_894_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_184 <= add_ln93_fu_900_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_184 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_894_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_176 <= add_ln94_fu_1010_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_176 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln92_1_reg_1238 <= {{select_ln92_fu_920_p3[5:4]}};
        lshr_ln92_1_reg_1238_pp0_iter1_reg <= lshr_ln92_1_reg_1238;
        output_difference_0_load_reg_1348 <= output_difference_0_q0;
        output_difference_10_load_reg_1398 <= output_difference_10_q0;
        output_difference_11_load_reg_1403 <= output_difference_11_q0;
        output_difference_12_load_reg_1408 <= output_difference_12_q0;
        output_difference_13_load_reg_1413 <= output_difference_13_q0;
        output_difference_14_load_reg_1418 <= output_difference_14_q0;
        output_difference_15_load_reg_1423 <= output_difference_15_q0;
        output_difference_1_load_reg_1353 <= output_difference_1_q0;
        output_difference_2_load_reg_1358 <= output_difference_2_q0;
        output_difference_3_load_reg_1363 <= output_difference_3_q0;
        output_difference_4_load_reg_1368 <= output_difference_4_q0;
        output_difference_5_load_reg_1373 <= output_difference_5_q0;
        output_difference_6_load_reg_1378 <= output_difference_6_q0;
        output_difference_7_load_reg_1383 <= output_difference_7_q0;
        output_difference_8_load_reg_1388 <= output_difference_8_q0;
        output_difference_9_load_reg_1393 <= output_difference_9_q0;
        tmp_reg_1328 <= tmp_fu_1031_p35;
        trunc_ln93_reg_1153 <= trunc_ln93_fu_942_p1;
        trunc_ln95_reg_1248 <= trunc_ln95_fu_1006_p1;
        trunc_ln95_reg_1248_pp0_iter1_reg <= trunc_ln95_reg_1248;
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
        lshr_ln92_1_reg_1238_pp0_iter2_reg <= lshr_ln92_1_reg_1238_pp0_iter1_reg;
        lshr_ln92_1_reg_1238_pp0_iter3_reg <= lshr_ln92_1_reg_1238_pp0_iter2_reg;
        lshr_ln92_1_reg_1238_pp0_iter4_reg <= lshr_ln92_1_reg_1238_pp0_iter3_reg;
        lshr_ln92_1_reg_1238_pp0_iter5_reg <= lshr_ln92_1_reg_1238_pp0_iter4_reg;
        lshr_ln92_1_reg_1238_pp0_iter6_reg <= lshr_ln92_1_reg_1238_pp0_iter5_reg;
        lshr_ln92_1_reg_1238_pp0_iter7_reg <= lshr_ln92_1_reg_1238_pp0_iter6_reg;
        lshr_ln92_1_reg_1238_pp0_iter8_reg <= lshr_ln92_1_reg_1238_pp0_iter7_reg;
        mul_10_reg_1478 <= grp_fu_4700_p_dout0;
        mul_11_reg_1483 <= grp_fu_4704_p_dout0;
        mul_12_reg_1488 <= grp_fu_4708_p_dout0;
        mul_13_reg_1493 <= grp_fu_4712_p_dout0;
        mul_14_reg_1498 <= grp_fu_4716_p_dout0;
        mul_15_reg_1503 <= grp_fu_4720_p_dout0;
        mul_1_reg_1433 <= grp_fu_4664_p_dout0;
        mul_2_reg_1438 <= grp_fu_4668_p_dout0;
        mul_3_reg_1443 <= grp_fu_4672_p_dout0;
        mul_4_reg_1448 <= grp_fu_4676_p_dout0;
        mul_5_reg_1453 <= grp_fu_4680_p_dout0;
        mul_6_reg_1458 <= grp_fu_4684_p_dout0;
        mul_7_reg_1463 <= grp_fu_4688_p_dout0;
        mul_8_reg_1468 <= grp_fu_4692_p_dout0;
        mul_9_reg_1473 <= grp_fu_4696_p_dout0;
        mul_reg_1428 <= grp_fu_4660_p_dout0;
        trunc_ln95_reg_1248_pp0_iter2_reg <= trunc_ln95_reg_1248_pp0_iter1_reg;
        trunc_ln95_reg_1248_pp0_iter3_reg <= trunc_ln95_reg_1248_pp0_iter2_reg;
        trunc_ln95_reg_1248_pp0_iter4_reg <= trunc_ln95_reg_1248_pp0_iter3_reg;
        trunc_ln95_reg_1248_pp0_iter5_reg <= trunc_ln95_reg_1248_pp0_iter4_reg;
        trunc_ln95_reg_1248_pp0_iter6_reg <= trunc_ln95_reg_1248_pp0_iter5_reg;
        trunc_ln95_reg_1248_pp0_iter7_reg <= trunc_ln95_reg_1248_pp0_iter6_reg;
        trunc_ln95_reg_1248_pp0_iter8_reg <= trunc_ln95_reg_1248_pp0_iter7_reg;
    end
end
always @ (*) begin
    if (((icmp_ln93_fu_894_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_184;
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
        delta_weights2_0_ce0_local = 1'b1;
    end else begin
        delta_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_0_we0_local = 1'b1;
    end else begin
        delta_weights2_0_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights2_9_we0_local = 1'b1;
    end else begin
        delta_weights2_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_0_ce0_local = 1'b1;
    end else begin
        last_activations_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_10_ce0_local = 1'b1;
    end else begin
        last_activations_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_11_ce0_local = 1'b1;
    end else begin
        last_activations_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_12_ce0_local = 1'b1;
    end else begin
        last_activations_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_13_ce0_local = 1'b1;
    end else begin
        last_activations_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_14_ce0_local = 1'b1;
    end else begin
        last_activations_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_15_ce0_local = 1'b1;
    end else begin
        last_activations_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_1_ce0_local = 1'b1;
    end else begin
        last_activations_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_2_ce0_local = 1'b1;
    end else begin
        last_activations_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_3_ce0_local = 1'b1;
    end else begin
        last_activations_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_4_ce0_local = 1'b1;
    end else begin
        last_activations_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_5_ce0_local = 1'b1;
    end else begin
        last_activations_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_6_ce0_local = 1'b1;
    end else begin
        last_activations_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_7_ce0_local = 1'b1;
    end else begin
        last_activations_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_8_ce0_local = 1'b1;
    end else begin
        last_activations_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_9_ce0_local = 1'b1;
    end else begin
        last_activations_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_10_ce0_local = 1'b1;
    end else begin
        output_difference_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_11_ce0_local = 1'b1;
    end else begin
        output_difference_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_12_ce0_local = 1'b1;
    end else begin
        output_difference_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_13_ce0_local = 1'b1;
    end else begin
        output_difference_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_14_ce0_local = 1'b1;
    end else begin
        output_difference_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_15_ce0_local = 1'b1;
    end else begin
        output_difference_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_4_ce0_local = 1'b1;
    end else begin
        output_difference_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_5_ce0_local = 1'b1;
    end else begin
        output_difference_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_6_ce0_local = 1'b1;
    end else begin
        output_difference_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_7_ce0_local = 1'b1;
    end else begin
        output_difference_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_8_ce0_local = 1'b1;
    end else begin
        output_difference_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_9_ce0_local = 1'b1;
    end else begin
        output_difference_9_ce0_local = 1'b0;
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
assign add_ln93_1_fu_928_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln93_fu_900_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);
assign add_ln94_fu_1010_p2 = (select_ln92_fu_920_p3 + 7'd16);
assign add_ln_fu_1102_p3 = {{trunc_ln95_reg_1248_pp0_iter8_reg}, {lshr_ln92_1_reg_1238_pp0_iter8_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights2_0_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_0_ce0 = delta_weights2_0_ce0_local;
assign delta_weights2_0_d0 = mul_reg_1428;
assign delta_weights2_0_we0 = delta_weights2_0_we0_local;
assign delta_weights2_10_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_10_ce0 = delta_weights2_10_ce0_local;
assign delta_weights2_10_d0 = mul_10_reg_1478;
assign delta_weights2_10_we0 = delta_weights2_10_we0_local;
assign delta_weights2_11_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_11_ce0 = delta_weights2_11_ce0_local;
assign delta_weights2_11_d0 = mul_11_reg_1483;
assign delta_weights2_11_we0 = delta_weights2_11_we0_local;
assign delta_weights2_12_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_12_ce0 = delta_weights2_12_ce0_local;
assign delta_weights2_12_d0 = mul_12_reg_1488;
assign delta_weights2_12_we0 = delta_weights2_12_we0_local;
assign delta_weights2_13_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_13_ce0 = delta_weights2_13_ce0_local;
assign delta_weights2_13_d0 = mul_13_reg_1493;
assign delta_weights2_13_we0 = delta_weights2_13_we0_local;
assign delta_weights2_14_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_14_ce0 = delta_weights2_14_ce0_local;
assign delta_weights2_14_d0 = mul_14_reg_1498;
assign delta_weights2_14_we0 = delta_weights2_14_we0_local;
assign delta_weights2_15_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_15_ce0 = delta_weights2_15_ce0_local;
assign delta_weights2_15_d0 = mul_15_reg_1503;
assign delta_weights2_15_we0 = delta_weights2_15_we0_local;
assign delta_weights2_1_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_d0 = mul_1_reg_1433;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_2_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_2_ce0 = delta_weights2_2_ce0_local;
assign delta_weights2_2_d0 = mul_2_reg_1438;
assign delta_weights2_2_we0 = delta_weights2_2_we0_local;
assign delta_weights2_3_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_3_ce0 = delta_weights2_3_ce0_local;
assign delta_weights2_3_d0 = mul_3_reg_1443;
assign delta_weights2_3_we0 = delta_weights2_3_we0_local;
assign delta_weights2_4_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_4_ce0 = delta_weights2_4_ce0_local;
assign delta_weights2_4_d0 = mul_4_reg_1448;
assign delta_weights2_4_we0 = delta_weights2_4_we0_local;
assign delta_weights2_5_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_5_ce0 = delta_weights2_5_ce0_local;
assign delta_weights2_5_d0 = mul_5_reg_1453;
assign delta_weights2_5_we0 = delta_weights2_5_we0_local;
assign delta_weights2_6_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_6_ce0 = delta_weights2_6_ce0_local;
assign delta_weights2_6_d0 = mul_6_reg_1458;
assign delta_weights2_6_we0 = delta_weights2_6_we0_local;
assign delta_weights2_7_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_7_ce0 = delta_weights2_7_ce0_local;
assign delta_weights2_7_d0 = mul_7_reg_1463;
assign delta_weights2_7_we0 = delta_weights2_7_we0_local;
assign delta_weights2_8_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_8_ce0 = delta_weights2_8_ce0_local;
assign delta_weights2_8_d0 = mul_8_reg_1468;
assign delta_weights2_8_we0 = delta_weights2_8_we0_local;
assign delta_weights2_9_address0 = zext_ln95_fu_1108_p1;
assign delta_weights2_9_ce0 = delta_weights2_9_ce0_local;
assign delta_weights2_9_d0 = mul_9_reg_1473;
assign delta_weights2_9_we0 = delta_weights2_9_we0_local;
assign grp_fu_4660_p_ce = 1'b1;
assign grp_fu_4660_p_din0 = tmp_reg_1328;
assign grp_fu_4660_p_din1 = output_difference_0_load_reg_1348;
assign grp_fu_4664_p_ce = 1'b1;
assign grp_fu_4664_p_din0 = tmp_reg_1328;
assign grp_fu_4664_p_din1 = output_difference_1_load_reg_1353;
assign grp_fu_4668_p_ce = 1'b1;
assign grp_fu_4668_p_din0 = tmp_reg_1328;
assign grp_fu_4668_p_din1 = output_difference_2_load_reg_1358;
assign grp_fu_4672_p_ce = 1'b1;
assign grp_fu_4672_p_din0 = tmp_reg_1328;
assign grp_fu_4672_p_din1 = output_difference_3_load_reg_1363;
assign grp_fu_4676_p_ce = 1'b1;
assign grp_fu_4676_p_din0 = tmp_reg_1328;
assign grp_fu_4676_p_din1 = output_difference_4_load_reg_1368;
assign grp_fu_4680_p_ce = 1'b1;
assign grp_fu_4680_p_din0 = tmp_reg_1328;
assign grp_fu_4680_p_din1 = output_difference_5_load_reg_1373;
assign grp_fu_4684_p_ce = 1'b1;
assign grp_fu_4684_p_din0 = tmp_reg_1328;
assign grp_fu_4684_p_din1 = output_difference_6_load_reg_1378;
assign grp_fu_4688_p_ce = 1'b1;
assign grp_fu_4688_p_din0 = tmp_reg_1328;
assign grp_fu_4688_p_din1 = output_difference_7_load_reg_1383;
assign grp_fu_4692_p_ce = 1'b1;
assign grp_fu_4692_p_din0 = tmp_reg_1328;
assign grp_fu_4692_p_din1 = output_difference_8_load_reg_1388;
assign grp_fu_4696_p_ce = 1'b1;
assign grp_fu_4696_p_din0 = tmp_reg_1328;
assign grp_fu_4696_p_din1 = output_difference_9_load_reg_1393;
assign grp_fu_4700_p_ce = 1'b1;
assign grp_fu_4700_p_din0 = tmp_reg_1328;
assign grp_fu_4700_p_din1 = output_difference_10_load_reg_1398;
assign grp_fu_4704_p_ce = 1'b1;
assign grp_fu_4704_p_din0 = tmp_reg_1328;
assign grp_fu_4704_p_din1 = output_difference_11_load_reg_1403;
assign grp_fu_4708_p_ce = 1'b1;
assign grp_fu_4708_p_din0 = tmp_reg_1328;
assign grp_fu_4708_p_din1 = output_difference_12_load_reg_1408;
assign grp_fu_4712_p_ce = 1'b1;
assign grp_fu_4712_p_din0 = tmp_reg_1328;
assign grp_fu_4712_p_din1 = output_difference_13_load_reg_1413;
assign grp_fu_4716_p_ce = 1'b1;
assign grp_fu_4716_p_din0 = tmp_reg_1328;
assign grp_fu_4716_p_din1 = output_difference_14_load_reg_1418;
assign grp_fu_4720_p_ce = 1'b1;
assign grp_fu_4720_p_din0 = tmp_reg_1328;
assign grp_fu_4720_p_din1 = output_difference_15_load_reg_1423;
assign icmp_ln93_fu_894_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd256) ? 1'b1 : 1'b0);
assign last_activations_0_address0 = zext_ln92_fu_956_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_10_address0 = zext_ln92_fu_956_p1;
assign last_activations_10_ce0 = last_activations_10_ce0_local;
assign last_activations_11_address0 = zext_ln92_fu_956_p1;
assign last_activations_11_ce0 = last_activations_11_ce0_local;
assign last_activations_12_address0 = zext_ln92_fu_956_p1;
assign last_activations_12_ce0 = last_activations_12_ce0_local;
assign last_activations_13_address0 = zext_ln92_fu_956_p1;
assign last_activations_13_ce0 = last_activations_13_ce0_local;
assign last_activations_14_address0 = zext_ln92_fu_956_p1;
assign last_activations_14_ce0 = last_activations_14_ce0_local;
assign last_activations_15_address0 = zext_ln92_fu_956_p1;
assign last_activations_15_ce0 = last_activations_15_ce0_local;
assign last_activations_1_address0 = zext_ln92_fu_956_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_2_address0 = zext_ln92_fu_956_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_3_address0 = zext_ln92_fu_956_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_4_address0 = zext_ln92_fu_956_p1;
assign last_activations_4_ce0 = last_activations_4_ce0_local;
assign last_activations_5_address0 = zext_ln92_fu_956_p1;
assign last_activations_5_ce0 = last_activations_5_ce0_local;
assign last_activations_6_address0 = zext_ln92_fu_956_p1;
assign last_activations_6_ce0 = last_activations_6_ce0_local;
assign last_activations_7_address0 = zext_ln92_fu_956_p1;
assign last_activations_7_ce0 = last_activations_7_ce0_local;
assign last_activations_8_address0 = zext_ln92_fu_956_p1;
assign last_activations_8_ce0 = last_activations_8_ce0_local;
assign last_activations_9_address0 = zext_ln92_fu_956_p1;
assign last_activations_9_ce0 = last_activations_9_ce0_local;
assign lshr_ln92_1_fu_976_p4 = {{select_ln92_fu_920_p3[5:4]}};
assign lshr_ln_fu_946_p4 = {{select_ln93_fu_934_p3[5:4]}};
assign output_difference_0_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_10_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_10_ce0 = output_difference_10_ce0_local;
assign output_difference_11_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_11_ce0 = output_difference_11_ce0_local;
assign output_difference_12_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_12_ce0 = output_difference_12_ce0_local;
assign output_difference_13_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_13_ce0 = output_difference_13_ce0_local;
assign output_difference_14_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_14_ce0 = output_difference_14_ce0_local;
assign output_difference_15_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_15_ce0 = output_difference_15_ce0_local;
assign output_difference_1_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_2_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_2_ce0 = output_difference_2_ce0_local;
assign output_difference_3_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_3_ce0 = output_difference_3_ce0_local;
assign output_difference_4_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_4_ce0 = output_difference_4_ce0_local;
assign output_difference_5_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_5_ce0 = output_difference_5_ce0_local;
assign output_difference_6_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_6_ce0 = output_difference_6_ce0_local;
assign output_difference_7_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_7_ce0 = output_difference_7_ce0_local;
assign output_difference_8_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_8_ce0 = output_difference_8_ce0_local;
assign output_difference_9_address0 = zext_ln92_1_fu_986_p1;
assign output_difference_9_ce0 = output_difference_9_ce0_local;
assign select_ln92_fu_920_p3 = ((tmp_13_fu_912_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln93_fu_934_p3 = ((tmp_13_fu_912_p3[0:0] == 1'b1) ? add_ln93_1_fu_928_p2 : ap_sig_allocacmp_i_load);
assign tmp_13_fu_912_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_fu_1031_p33 = 'bx;
assign trunc_ln93_fu_942_p1 = select_ln93_fu_934_p3[3:0];
assign trunc_ln95_fu_1006_p1 = select_ln93_fu_934_p3[5:0];
assign zext_ln92_1_fu_986_p1 = lshr_ln92_1_fu_976_p4;
assign zext_ln92_fu_956_p1 = lshr_ln_fu_946_p4;
assign zext_ln95_fu_1108_p1 = add_ln_fu_1102_p3;
endmodule 