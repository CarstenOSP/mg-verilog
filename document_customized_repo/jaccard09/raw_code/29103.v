module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_4_address1,delta_weights1_4_ce1,delta_weights1_4_we1,delta_weights1_4_d1,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_5_address1,delta_weights1_5_ce1,delta_weights1_5_we1,delta_weights1_5_d1,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_6_address1,delta_weights1_6_ce1,delta_weights1_6_we1,delta_weights1_6_d1,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_7_address1,delta_weights1_7_ce1,delta_weights1_7_we1,delta_weights1_7_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_4_address0,output_difference_4_ce0,output_difference_4_q0,output_difference_4_address1,output_difference_4_ce1,output_difference_4_q1,output_difference_5_address0,output_difference_5_ce0,output_difference_5_q0,output_difference_5_address1,output_difference_5_ce1,output_difference_5_q1,output_difference_6_address0,output_difference_6_ce0,output_difference_6_q0,output_difference_6_address1,output_difference_6_ce1,output_difference_6_q1,output_difference_7_address0,output_difference_7_ce0,output_difference_7_q0,output_difference_7_address1,output_difference_7_ce1,output_difference_7_q1,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,training_data_4_address0,training_data_4_ce0,training_data_4_q0,training_data_5_address0,training_data_5_ce0,training_data_5_q0,training_data_6_address0,training_data_6_ce0,training_data_6_q0,training_data_7_address0,training_data_7_ce0,training_data_7_q0,idx,grp_fu_3620_p_din0,grp_fu_3620_p_din1,grp_fu_3620_p_dout0,grp_fu_3620_p_ce,grp_fu_3624_p_din0,grp_fu_3624_p_din1,grp_fu_3624_p_dout0,grp_fu_3624_p_ce,grp_fu_3628_p_din0,grp_fu_3628_p_din1,grp_fu_3628_p_dout0,grp_fu_3628_p_ce,grp_fu_3632_p_din0,grp_fu_3632_p_din1,grp_fu_3632_p_dout0,grp_fu_3632_p_ce,grp_fu_3636_p_din0,grp_fu_3636_p_din1,grp_fu_3636_p_dout0,grp_fu_3636_p_ce,grp_fu_3640_p_din0,grp_fu_3640_p_din1,grp_fu_3640_p_dout0,grp_fu_3640_p_ce,grp_fu_3644_p_din0,grp_fu_3644_p_din1,grp_fu_3644_p_dout0,grp_fu_3644_p_ce,grp_fu_3648_p_din0,grp_fu_3648_p_din1,grp_fu_3648_p_dout0,grp_fu_3648_p_ce,grp_fu_3652_p_din0,grp_fu_3652_p_din1,grp_fu_3652_p_dout0,grp_fu_3652_p_ce,grp_fu_3656_p_din0,grp_fu_3656_p_din1,grp_fu_3656_p_dout0,grp_fu_3656_p_ce,grp_fu_3660_p_din0,grp_fu_3660_p_din1,grp_fu_3660_p_dout0,grp_fu_3660_p_ce,grp_fu_3664_p_din0,grp_fu_3664_p_din1,grp_fu_3664_p_dout0,grp_fu_3664_p_ce,grp_fu_3668_p_din0,grp_fu_3668_p_din1,grp_fu_3668_p_dout0,grp_fu_3668_p_ce,grp_fu_3672_p_din0,grp_fu_3672_p_din1,grp_fu_3672_p_dout0,grp_fu_3672_p_ce,grp_fu_3676_p_din0,grp_fu_3676_p_din1,grp_fu_3676_p_dout0,grp_fu_3676_p_ce,grp_fu_3680_p_din0,grp_fu_3680_p_din1,grp_fu_3680_p_dout0,grp_fu_3680_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [6:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
output  [6:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [6:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [6:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [6:0] delta_weights1_2_address1;
output   delta_weights1_2_ce1;
output   delta_weights1_2_we1;
output  [63:0] delta_weights1_2_d1;
output  [6:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [6:0] delta_weights1_3_address1;
output   delta_weights1_3_ce1;
output   delta_weights1_3_we1;
output  [63:0] delta_weights1_3_d1;
output  [6:0] delta_weights1_4_address0;
output   delta_weights1_4_ce0;
output   delta_weights1_4_we0;
output  [63:0] delta_weights1_4_d0;
output  [6:0] delta_weights1_4_address1;
output   delta_weights1_4_ce1;
output   delta_weights1_4_we1;
output  [63:0] delta_weights1_4_d1;
output  [6:0] delta_weights1_5_address0;
output   delta_weights1_5_ce0;
output   delta_weights1_5_we0;
output  [63:0] delta_weights1_5_d0;
output  [6:0] delta_weights1_5_address1;
output   delta_weights1_5_ce1;
output   delta_weights1_5_we1;
output  [63:0] delta_weights1_5_d1;
output  [6:0] delta_weights1_6_address0;
output   delta_weights1_6_ce0;
output   delta_weights1_6_we0;
output  [63:0] delta_weights1_6_d0;
output  [6:0] delta_weights1_6_address1;
output   delta_weights1_6_ce1;
output   delta_weights1_6_we1;
output  [63:0] delta_weights1_6_d1;
output  [6:0] delta_weights1_7_address0;
output   delta_weights1_7_ce0;
output   delta_weights1_7_we0;
output  [63:0] delta_weights1_7_d0;
output  [6:0] delta_weights1_7_address1;
output   delta_weights1_7_ce1;
output   delta_weights1_7_we1;
output  [63:0] delta_weights1_7_d1;
output  [2:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [2:0] output_difference_0_address1;
output   output_difference_0_ce1;
input  [63:0] output_difference_0_q1;
output  [2:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [2:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [2:0] output_difference_2_address0;
output   output_difference_2_ce0;
input  [63:0] output_difference_2_q0;
output  [2:0] output_difference_2_address1;
output   output_difference_2_ce1;
input  [63:0] output_difference_2_q1;
output  [2:0] output_difference_3_address0;
output   output_difference_3_ce0;
input  [63:0] output_difference_3_q0;
output  [2:0] output_difference_3_address1;
output   output_difference_3_ce1;
input  [63:0] output_difference_3_q1;
output  [2:0] output_difference_4_address0;
output   output_difference_4_ce0;
input  [63:0] output_difference_4_q0;
output  [2:0] output_difference_4_address1;
output   output_difference_4_ce1;
input  [63:0] output_difference_4_q1;
output  [2:0] output_difference_5_address0;
output   output_difference_5_ce0;
input  [63:0] output_difference_5_q0;
output  [2:0] output_difference_5_address1;
output   output_difference_5_ce1;
input  [63:0] output_difference_5_q1;
output  [2:0] output_difference_6_address0;
output   output_difference_6_ce0;
input  [63:0] output_difference_6_q0;
output  [2:0] output_difference_6_address1;
output   output_difference_6_ce1;
input  [63:0] output_difference_6_q1;
output  [2:0] output_difference_7_address0;
output   output_difference_7_ce0;
input  [63:0] output_difference_7_q0;
output  [2:0] output_difference_7_address1;
output   output_difference_7_ce1;
input  [63:0] output_difference_7_q1;
output  [8:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [8:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [8:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [8:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
output  [8:0] training_data_4_address0;
output   training_data_4_ce0;
input  [63:0] training_data_4_q0;
output  [8:0] training_data_5_address0;
output   training_data_5_ce0;
input  [63:0] training_data_5_q0;
output  [8:0] training_data_6_address0;
output   training_data_6_ce0;
input  [63:0] training_data_6_q0;
output  [8:0] training_data_7_address0;
output   training_data_7_ce0;
input  [63:0] training_data_7_q0;
input  [11:0] idx;
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
wire   [0:0] icmp_ln113_fu_740_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln113_fu_780_p3;
reg   [3:0] select_ln113_reg_1043;
reg   [3:0] select_ln113_reg_1043_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_1043_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_1043_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_1043_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_1043_pp0_iter5_reg;
reg   [3:0] select_ln113_reg_1043_pp0_iter6_reg;
reg   [3:0] select_ln113_reg_1043_pp0_iter7_reg;
reg   [3:0] select_ln113_reg_1043_pp0_iter8_reg;
reg   [3:0] select_ln113_reg_1043_pp0_iter9_reg;
wire   [3:0] lshr_ln_fu_788_p4;
reg   [3:0] lshr_ln_reg_1050;
reg   [3:0] lshr_ln_reg_1050_pp0_iter1_reg;
wire   [1:0] tmp_30_fu_810_p4;
reg   [1:0] tmp_30_reg_1095;
reg   [1:0] tmp_30_reg_1095_pp0_iter1_reg;
reg   [1:0] tmp_30_reg_1095_pp0_iter2_reg;
reg   [1:0] tmp_30_reg_1095_pp0_iter3_reg;
reg   [1:0] tmp_30_reg_1095_pp0_iter4_reg;
reg   [1:0] tmp_30_reg_1095_pp0_iter5_reg;
reg   [1:0] tmp_30_reg_1095_pp0_iter6_reg;
reg   [1:0] tmp_30_reg_1095_pp0_iter7_reg;
reg   [1:0] tmp_30_reg_1095_pp0_iter8_reg;
reg   [1:0] tmp_30_reg_1095_pp0_iter9_reg;
wire   [2:0] empty_fu_869_p1;
reg   [2:0] empty_reg_1140;
reg   [63:0] output_difference_0_load_reg_1185;
reg   [63:0] output_difference_0_load_reg_1185_pp0_iter2_reg;
reg   [63:0] output_difference_1_load_reg_1190;
reg   [63:0] output_difference_1_load_reg_1190_pp0_iter2_reg;
reg   [63:0] output_difference_2_load_reg_1195;
reg   [63:0] output_difference_2_load_reg_1195_pp0_iter2_reg;
reg   [63:0] output_difference_3_load_reg_1200;
reg   [63:0] output_difference_3_load_reg_1200_pp0_iter2_reg;
reg   [63:0] output_difference_4_load_reg_1205;
reg   [63:0] output_difference_4_load_reg_1205_pp0_iter2_reg;
reg   [63:0] output_difference_5_load_reg_1210;
reg   [63:0] output_difference_5_load_reg_1210_pp0_iter2_reg;
reg   [63:0] output_difference_6_load_reg_1215;
reg   [63:0] output_difference_6_load_reg_1215_pp0_iter2_reg;
reg   [63:0] output_difference_7_load_reg_1220;
reg   [63:0] output_difference_7_load_reg_1220_pp0_iter2_reg;
reg   [63:0] output_difference_0_load_2_reg_1225;
reg   [63:0] output_difference_0_load_2_reg_1225_pp0_iter2_reg;
reg   [63:0] output_difference_1_load_2_reg_1230;
reg   [63:0] output_difference_1_load_2_reg_1230_pp0_iter2_reg;
reg   [63:0] output_difference_2_load_2_reg_1235;
reg   [63:0] output_difference_2_load_2_reg_1235_pp0_iter2_reg;
reg   [63:0] output_difference_3_load_2_reg_1240;
reg   [63:0] output_difference_3_load_2_reg_1240_pp0_iter2_reg;
reg   [63:0] output_difference_4_load_2_reg_1245;
reg   [63:0] output_difference_4_load_2_reg_1245_pp0_iter2_reg;
reg   [63:0] output_difference_5_load_2_reg_1250;
reg   [63:0] output_difference_5_load_2_reg_1250_pp0_iter2_reg;
reg   [63:0] output_difference_6_load_2_reg_1255;
reg   [63:0] output_difference_6_load_2_reg_1255_pp0_iter2_reg;
reg   [63:0] output_difference_7_load_2_reg_1260;
reg   [63:0] output_difference_7_load_2_reg_1260_pp0_iter2_reg;
wire   [63:0] tmp_fu_927_p19;
reg   [63:0] tmp_reg_1265;
wire   [6:0] add_ln115_fu_976_p2;
reg   [6:0] add_ln115_reg_1285;
reg   [6:0] add_ln115_reg_1285_pp0_iter3_reg;
reg   [6:0] add_ln115_reg_1285_pp0_iter4_reg;
reg   [6:0] add_ln115_reg_1285_pp0_iter5_reg;
reg   [6:0] add_ln115_reg_1285_pp0_iter6_reg;
reg   [6:0] add_ln115_reg_1285_pp0_iter7_reg;
reg   [6:0] add_ln115_reg_1285_pp0_iter8_reg;
reg   [6:0] add_ln115_reg_1285_pp0_iter9_reg;
reg   [63:0] mul_reg_1290;
reg   [63:0] mul_1_reg_1295;
reg   [63:0] mul_2_reg_1300;
reg   [63:0] mul_3_reg_1305;
reg   [63:0] mul_4_reg_1310;
reg   [63:0] mul_5_reg_1315;
reg   [63:0] mul_6_reg_1320;
reg   [63:0] mul_7_reg_1325;
reg   [63:0] mul_8_reg_1330;
reg   [63:0] mul_9_reg_1335;
reg   [63:0] mul_10_reg_1340;
reg   [63:0] mul_11_reg_1345;
reg   [63:0] mul_12_reg_1350;
reg   [63:0] mul_13_reg_1355;
reg   [63:0] mul_14_reg_1360;
reg   [63:0] mul_15_reg_1365;
wire   [63:0] zext_ln112_fu_798_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln115_1_fu_828_p1;
wire   [63:0] p_cast_fu_883_p1;
wire   [63:0] zext_ln115_fu_982_p1;
wire   [63:0] zext_ln115_2_fu_1001_p1;
reg   [6:0] j_fu_136;
wire   [6:0] add_ln114_fu_840_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_140;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [5:0] indvar_flatten_fu_144;
wire   [5:0] add_ln113_fu_746_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten_load;
reg    output_difference_0_ce1_local;
reg    output_difference_0_ce0_local;
reg    output_difference_1_ce1_local;
reg    output_difference_1_ce0_local;
reg    output_difference_2_ce1_local;
reg    output_difference_2_ce0_local;
reg    output_difference_3_ce1_local;
reg    output_difference_3_ce0_local;
reg    output_difference_4_ce1_local;
reg    output_difference_4_ce0_local;
reg    output_difference_5_ce1_local;
reg    output_difference_5_ce0_local;
reg    output_difference_6_ce1_local;
reg    output_difference_6_ce0_local;
reg    output_difference_7_ce1_local;
reg    output_difference_7_ce0_local;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    training_data_2_ce0_local;
reg    training_data_3_ce0_local;
reg    training_data_4_ce0_local;
reg    training_data_5_ce0_local;
reg    training_data_6_ce0_local;
reg    training_data_7_ce0_local;
reg    delta_weights1_0_we1_local;
reg    delta_weights1_0_ce1_local;
reg    delta_weights1_0_we0_local;
reg    delta_weights1_0_ce0_local;
reg    delta_weights1_1_we1_local;
reg    delta_weights1_1_ce1_local;
reg    delta_weights1_1_we0_local;
reg    delta_weights1_1_ce0_local;
reg    delta_weights1_2_we1_local;
reg    delta_weights1_2_ce1_local;
reg    delta_weights1_2_we0_local;
reg    delta_weights1_2_ce0_local;
reg    delta_weights1_3_we1_local;
reg    delta_weights1_3_ce1_local;
reg    delta_weights1_3_we0_local;
reg    delta_weights1_3_ce0_local;
reg    delta_weights1_4_we1_local;
reg    delta_weights1_4_ce1_local;
reg    delta_weights1_4_we0_local;
reg    delta_weights1_4_ce0_local;
reg    delta_weights1_5_we1_local;
reg    delta_weights1_5_ce1_local;
reg    delta_weights1_5_we0_local;
reg    delta_weights1_5_ce0_local;
reg    delta_weights1_6_we1_local;
reg    delta_weights1_6_ce1_local;
reg    delta_weights1_6_we0_local;
reg    delta_weights1_6_ce0_local;
reg    delta_weights1_7_we1_local;
reg    delta_weights1_7_ce1_local;
reg    delta_weights1_7_we0_local;
reg    delta_weights1_7_ce0_local;
wire   [0:0] tmp_21_fu_758_p3;
wire   [3:0] add_ln113_1_fu_774_p2;
wire   [6:0] select_ln112_fu_766_p3;
wire   [2:0] or_ln_fu_820_p3;
wire   [11:0] zext_ln113_fu_861_p1;
wire   [11:0] p_sum_fu_864_p2;
wire   [8:0] tmp_s_fu_873_p4;
wire   [63:0] tmp_fu_927_p2;
wire   [63:0] tmp_fu_927_p4;
wire   [63:0] tmp_fu_927_p6;
wire   [63:0] tmp_fu_927_p8;
wire   [63:0] tmp_fu_927_p10;
wire   [63:0] tmp_fu_927_p12;
wire   [63:0] tmp_fu_927_p14;
wire   [63:0] tmp_fu_927_p16;
wire   [63:0] tmp_fu_927_p17;
wire   [6:0] zext_ln112_1_fu_973_p1;
wire   [6:0] p_udiv_fu_966_p3;
wire   [6:0] add_ln115_1_fu_993_p4;
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
wire   [2:0] tmp_fu_927_p1;
wire   [2:0] tmp_fu_927_p3;
wire   [2:0] tmp_fu_927_p5;
wire   [2:0] tmp_fu_927_p7;
wire  signed [2:0] tmp_fu_927_p9;
wire  signed [2:0] tmp_fu_927_p11;
wire  signed [2:0] tmp_fu_927_p13;
wire  signed [2:0] tmp_fu_927_p15;
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
#0 j_fu_136 = 7'd0;
#0 i_fu_140 = 4'd0;
#0 indvar_flatten_fu_144 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U619(.din0(tmp_fu_927_p2),.din1(tmp_fu_927_p4),.din2(tmp_fu_927_p6),.din3(tmp_fu_927_p8),.din4(tmp_fu_927_p10),.din5(tmp_fu_927_p12),.din6(tmp_fu_927_p14),.din7(tmp_fu_927_p16),.def(tmp_fu_927_p17),.sel(empty_reg_1140),.dout(tmp_fu_927_p19));
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
        if (((icmp_ln113_fu_740_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_140 <= select_ln113_fu_780_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_140 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_740_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_144 <= add_ln113_fu_746_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_144 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_740_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_136 <= add_ln114_fu_840_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_136 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln115_reg_1285 <= add_ln115_fu_976_p2;
        add_ln115_reg_1285_pp0_iter3_reg <= add_ln115_reg_1285;
        add_ln115_reg_1285_pp0_iter4_reg <= add_ln115_reg_1285_pp0_iter3_reg;
        add_ln115_reg_1285_pp0_iter5_reg <= add_ln115_reg_1285_pp0_iter4_reg;
        add_ln115_reg_1285_pp0_iter6_reg <= add_ln115_reg_1285_pp0_iter5_reg;
        add_ln115_reg_1285_pp0_iter7_reg <= add_ln115_reg_1285_pp0_iter6_reg;
        add_ln115_reg_1285_pp0_iter8_reg <= add_ln115_reg_1285_pp0_iter7_reg;
        add_ln115_reg_1285_pp0_iter9_reg <= add_ln115_reg_1285_pp0_iter8_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        mul_10_reg_1340 <= grp_fu_3660_p_dout0;
        mul_11_reg_1345 <= grp_fu_3664_p_dout0;
        mul_12_reg_1350 <= grp_fu_3668_p_dout0;
        mul_13_reg_1355 <= grp_fu_3672_p_dout0;
        mul_14_reg_1360 <= grp_fu_3676_p_dout0;
        mul_15_reg_1365 <= grp_fu_3680_p_dout0;
        mul_1_reg_1295 <= grp_fu_3624_p_dout0;
        mul_2_reg_1300 <= grp_fu_3628_p_dout0;
        mul_3_reg_1305 <= grp_fu_3632_p_dout0;
        mul_4_reg_1310 <= grp_fu_3636_p_dout0;
        mul_5_reg_1315 <= grp_fu_3640_p_dout0;
        mul_6_reg_1320 <= grp_fu_3644_p_dout0;
        mul_7_reg_1325 <= grp_fu_3648_p_dout0;
        mul_8_reg_1330 <= grp_fu_3652_p_dout0;
        mul_9_reg_1335 <= grp_fu_3656_p_dout0;
        mul_reg_1290 <= grp_fu_3620_p_dout0;
        output_difference_0_load_2_reg_1225_pp0_iter2_reg <= output_difference_0_load_2_reg_1225;
        output_difference_0_load_reg_1185_pp0_iter2_reg <= output_difference_0_load_reg_1185;
        output_difference_1_load_2_reg_1230_pp0_iter2_reg <= output_difference_1_load_2_reg_1230;
        output_difference_1_load_reg_1190_pp0_iter2_reg <= output_difference_1_load_reg_1190;
        output_difference_2_load_2_reg_1235_pp0_iter2_reg <= output_difference_2_load_2_reg_1235;
        output_difference_2_load_reg_1195_pp0_iter2_reg <= output_difference_2_load_reg_1195;
        output_difference_3_load_2_reg_1240_pp0_iter2_reg <= output_difference_3_load_2_reg_1240;
        output_difference_3_load_reg_1200_pp0_iter2_reg <= output_difference_3_load_reg_1200;
        output_difference_4_load_2_reg_1245_pp0_iter2_reg <= output_difference_4_load_2_reg_1245;
        output_difference_4_load_reg_1205_pp0_iter2_reg <= output_difference_4_load_reg_1205;
        output_difference_5_load_2_reg_1250_pp0_iter2_reg <= output_difference_5_load_2_reg_1250;
        output_difference_5_load_reg_1210_pp0_iter2_reg <= output_difference_5_load_reg_1210;
        output_difference_6_load_2_reg_1255_pp0_iter2_reg <= output_difference_6_load_2_reg_1255;
        output_difference_6_load_reg_1215_pp0_iter2_reg <= output_difference_6_load_reg_1215;
        output_difference_7_load_2_reg_1260_pp0_iter2_reg <= output_difference_7_load_2_reg_1260;
        output_difference_7_load_reg_1220_pp0_iter2_reg <= output_difference_7_load_reg_1220;
        select_ln113_reg_1043_pp0_iter2_reg <= select_ln113_reg_1043_pp0_iter1_reg;
        select_ln113_reg_1043_pp0_iter3_reg <= select_ln113_reg_1043_pp0_iter2_reg;
        select_ln113_reg_1043_pp0_iter4_reg <= select_ln113_reg_1043_pp0_iter3_reg;
        select_ln113_reg_1043_pp0_iter5_reg <= select_ln113_reg_1043_pp0_iter4_reg;
        select_ln113_reg_1043_pp0_iter6_reg <= select_ln113_reg_1043_pp0_iter5_reg;
        select_ln113_reg_1043_pp0_iter7_reg <= select_ln113_reg_1043_pp0_iter6_reg;
        select_ln113_reg_1043_pp0_iter8_reg <= select_ln113_reg_1043_pp0_iter7_reg;
        select_ln113_reg_1043_pp0_iter9_reg <= select_ln113_reg_1043_pp0_iter8_reg;
        tmp_30_reg_1095_pp0_iter2_reg <= tmp_30_reg_1095_pp0_iter1_reg;
        tmp_30_reg_1095_pp0_iter3_reg <= tmp_30_reg_1095_pp0_iter2_reg;
        tmp_30_reg_1095_pp0_iter4_reg <= tmp_30_reg_1095_pp0_iter3_reg;
        tmp_30_reg_1095_pp0_iter5_reg <= tmp_30_reg_1095_pp0_iter4_reg;
        tmp_30_reg_1095_pp0_iter6_reg <= tmp_30_reg_1095_pp0_iter5_reg;
        tmp_30_reg_1095_pp0_iter7_reg <= tmp_30_reg_1095_pp0_iter6_reg;
        tmp_30_reg_1095_pp0_iter8_reg <= tmp_30_reg_1095_pp0_iter7_reg;
        tmp_30_reg_1095_pp0_iter9_reg <= tmp_30_reg_1095_pp0_iter8_reg;
        tmp_reg_1265 <= tmp_fu_927_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_1140 <= empty_fu_869_p1;
        lshr_ln_reg_1050 <= {{select_ln112_fu_766_p3[6:3]}};
        lshr_ln_reg_1050_pp0_iter1_reg <= lshr_ln_reg_1050;
        select_ln113_reg_1043 <= select_ln113_fu_780_p3;
        select_ln113_reg_1043_pp0_iter1_reg <= select_ln113_reg_1043;
        tmp_30_reg_1095 <= {{select_ln112_fu_766_p3[5:4]}};
        tmp_30_reg_1095_pp0_iter1_reg <= tmp_30_reg_1095;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_0_load_2_reg_1225 <= output_difference_0_q0;
        output_difference_0_load_reg_1185 <= output_difference_0_q1;
        output_difference_1_load_2_reg_1230 <= output_difference_1_q0;
        output_difference_1_load_reg_1190 <= output_difference_1_q1;
        output_difference_2_load_2_reg_1235 <= output_difference_2_q0;
        output_difference_2_load_reg_1195 <= output_difference_2_q1;
        output_difference_3_load_2_reg_1240 <= output_difference_3_q0;
        output_difference_3_load_reg_1200 <= output_difference_3_q1;
        output_difference_4_load_2_reg_1245 <= output_difference_4_q0;
        output_difference_4_load_reg_1205 <= output_difference_4_q1;
        output_difference_5_load_2_reg_1250 <= output_difference_5_q0;
        output_difference_5_load_reg_1210 <= output_difference_5_q1;
        output_difference_6_load_2_reg_1255 <= output_difference_6_q0;
        output_difference_6_load_reg_1215 <= output_difference_6_q1;
        output_difference_7_load_2_reg_1260 <= output_difference_7_q0;
        output_difference_7_load_reg_1220 <= output_difference_7_q1;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_740_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_load = i_fu_140;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_144;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_136;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_0_ce0_local = 1'b1;
    end else begin
        delta_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_0_ce1_local = 1'b1;
    end else begin
        delta_weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_0_we0_local = 1'b1;
    end else begin
        delta_weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_0_we1_local = 1'b1;
    end else begin
        delta_weights1_0_we1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_ce1_local = 1'b1;
    end else begin
        delta_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_1_we1_local = 1'b1;
    end else begin
        delta_weights1_1_we1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_ce1_local = 1'b1;
    end else begin
        delta_weights1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_2_we1_local = 1'b1;
    end else begin
        delta_weights1_2_we1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_ce1_local = 1'b1;
    end else begin
        delta_weights1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_3_we1_local = 1'b1;
    end else begin
        delta_weights1_3_we1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_4_ce1_local = 1'b1;
    end else begin
        delta_weights1_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_4_we0_local = 1'b1;
    end else begin
        delta_weights1_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_4_we1_local = 1'b1;
    end else begin
        delta_weights1_4_we1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_5_ce1_local = 1'b1;
    end else begin
        delta_weights1_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_5_we0_local = 1'b1;
    end else begin
        delta_weights1_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_5_we1_local = 1'b1;
    end else begin
        delta_weights1_5_we1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_ce1_local = 1'b1;
    end else begin
        delta_weights1_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_we0_local = 1'b1;
    end else begin
        delta_weights1_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_6_we1_local = 1'b1;
    end else begin
        delta_weights1_6_we1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_ce1_local = 1'b1;
    end else begin
        delta_weights1_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_we0_local = 1'b1;
    end else begin
        delta_weights1_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights1_7_we1_local = 1'b1;
    end else begin
        delta_weights1_7_we1_local = 1'b0;
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
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
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
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
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
        output_difference_2_ce1_local = 1'b1;
    end else begin
        output_difference_2_ce1_local = 1'b0;
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
        output_difference_3_ce1_local = 1'b1;
    end else begin
        output_difference_3_ce1_local = 1'b0;
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
        output_difference_4_ce1_local = 1'b1;
    end else begin
        output_difference_4_ce1_local = 1'b0;
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
        output_difference_5_ce1_local = 1'b1;
    end else begin
        output_difference_5_ce1_local = 1'b0;
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
        output_difference_6_ce1_local = 1'b1;
    end else begin
        output_difference_6_ce1_local = 1'b0;
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
        output_difference_7_ce1_local = 1'b1;
    end else begin
        output_difference_7_ce1_local = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln113_1_fu_774_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_746_p2 = (ap_sig_allocacmp_indvar_flatten_load + 6'd1);
assign add_ln114_fu_840_p2 = (select_ln112_fu_766_p3 + 7'd16);
assign add_ln115_1_fu_993_p4 = {{{select_ln113_reg_1043_pp0_iter9_reg}, {tmp_30_reg_1095_pp0_iter9_reg}}, {1'd1}};
assign add_ln115_fu_976_p2 = (zext_ln112_1_fu_973_p1 + p_udiv_fu_966_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights1_0_address0 = zext_ln115_2_fu_1001_p1;
assign delta_weights1_0_address1 = zext_ln115_fu_982_p1;
assign delta_weights1_0_ce0 = delta_weights1_0_ce0_local;
assign delta_weights1_0_ce1 = delta_weights1_0_ce1_local;
assign delta_weights1_0_d0 = mul_8_reg_1330;
assign delta_weights1_0_d1 = mul_reg_1290;
assign delta_weights1_0_we0 = delta_weights1_0_we0_local;
assign delta_weights1_0_we1 = delta_weights1_0_we1_local;
assign delta_weights1_1_address0 = zext_ln115_2_fu_1001_p1;
assign delta_weights1_1_address1 = zext_ln115_fu_982_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = mul_9_reg_1335;
assign delta_weights1_1_d1 = mul_1_reg_1295;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign delta_weights1_2_address0 = zext_ln115_2_fu_1001_p1;
assign delta_weights1_2_address1 = zext_ln115_fu_982_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_ce1 = delta_weights1_2_ce1_local;
assign delta_weights1_2_d0 = mul_10_reg_1340;
assign delta_weights1_2_d1 = mul_2_reg_1300;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_2_we1 = delta_weights1_2_we1_local;
assign delta_weights1_3_address0 = zext_ln115_2_fu_1001_p1;
assign delta_weights1_3_address1 = zext_ln115_fu_982_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_ce1 = delta_weights1_3_ce1_local;
assign delta_weights1_3_d0 = mul_11_reg_1345;
assign delta_weights1_3_d1 = mul_3_reg_1305;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_3_we1 = delta_weights1_3_we1_local;
assign delta_weights1_4_address0 = zext_ln115_2_fu_1001_p1;
assign delta_weights1_4_address1 = zext_ln115_fu_982_p1;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_ce1 = delta_weights1_4_ce1_local;
assign delta_weights1_4_d0 = mul_12_reg_1350;
assign delta_weights1_4_d1 = mul_4_reg_1310;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_4_we1 = delta_weights1_4_we1_local;
assign delta_weights1_5_address0 = zext_ln115_2_fu_1001_p1;
assign delta_weights1_5_address1 = zext_ln115_fu_982_p1;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_ce1 = delta_weights1_5_ce1_local;
assign delta_weights1_5_d0 = mul_13_reg_1355;
assign delta_weights1_5_d1 = mul_5_reg_1315;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_5_we1 = delta_weights1_5_we1_local;
assign delta_weights1_6_address0 = zext_ln115_2_fu_1001_p1;
assign delta_weights1_6_address1 = zext_ln115_fu_982_p1;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_ce1 = delta_weights1_6_ce1_local;
assign delta_weights1_6_d0 = mul_14_reg_1360;
assign delta_weights1_6_d1 = mul_6_reg_1320;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_6_we1 = delta_weights1_6_we1_local;
assign delta_weights1_7_address0 = zext_ln115_2_fu_1001_p1;
assign delta_weights1_7_address1 = zext_ln115_fu_982_p1;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_ce1 = delta_weights1_7_ce1_local;
assign delta_weights1_7_d0 = mul_15_reg_1365;
assign delta_weights1_7_d1 = mul_7_reg_1325;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_7_we1 = delta_weights1_7_we1_local;
assign empty_fu_869_p1 = p_sum_fu_864_p2[2:0];
assign grp_fu_3620_p_ce = 1'b1;
assign grp_fu_3620_p_din0 = tmp_reg_1265;
assign grp_fu_3620_p_din1 = output_difference_0_load_reg_1185_pp0_iter2_reg;
assign grp_fu_3624_p_ce = 1'b1;
assign grp_fu_3624_p_din0 = tmp_reg_1265;
assign grp_fu_3624_p_din1 = output_difference_1_load_reg_1190_pp0_iter2_reg;
assign grp_fu_3628_p_ce = 1'b1;
assign grp_fu_3628_p_din0 = tmp_reg_1265;
assign grp_fu_3628_p_din1 = output_difference_2_load_reg_1195_pp0_iter2_reg;
assign grp_fu_3632_p_ce = 1'b1;
assign grp_fu_3632_p_din0 = tmp_reg_1265;
assign grp_fu_3632_p_din1 = output_difference_3_load_reg_1200_pp0_iter2_reg;
assign grp_fu_3636_p_ce = 1'b1;
assign grp_fu_3636_p_din0 = tmp_reg_1265;
assign grp_fu_3636_p_din1 = output_difference_4_load_reg_1205_pp0_iter2_reg;
assign grp_fu_3640_p_ce = 1'b1;
assign grp_fu_3640_p_din0 = tmp_reg_1265;
assign grp_fu_3640_p_din1 = output_difference_5_load_reg_1210_pp0_iter2_reg;
assign grp_fu_3644_p_ce = 1'b1;
assign grp_fu_3644_p_din0 = tmp_reg_1265;
assign grp_fu_3644_p_din1 = output_difference_6_load_reg_1215_pp0_iter2_reg;
assign grp_fu_3648_p_ce = 1'b1;
assign grp_fu_3648_p_din0 = tmp_reg_1265;
assign grp_fu_3648_p_din1 = output_difference_7_load_reg_1220_pp0_iter2_reg;
assign grp_fu_3652_p_ce = 1'b1;
assign grp_fu_3652_p_din0 = tmp_reg_1265;
assign grp_fu_3652_p_din1 = output_difference_0_load_2_reg_1225_pp0_iter2_reg;
assign grp_fu_3656_p_ce = 1'b1;
assign grp_fu_3656_p_din0 = tmp_reg_1265;
assign grp_fu_3656_p_din1 = output_difference_1_load_2_reg_1230_pp0_iter2_reg;
assign grp_fu_3660_p_ce = 1'b1;
assign grp_fu_3660_p_din0 = tmp_reg_1265;
assign grp_fu_3660_p_din1 = output_difference_2_load_2_reg_1235_pp0_iter2_reg;
assign grp_fu_3664_p_ce = 1'b1;
assign grp_fu_3664_p_din0 = tmp_reg_1265;
assign grp_fu_3664_p_din1 = output_difference_3_load_2_reg_1240_pp0_iter2_reg;
assign grp_fu_3668_p_ce = 1'b1;
assign grp_fu_3668_p_din0 = tmp_reg_1265;
assign grp_fu_3668_p_din1 = output_difference_4_load_2_reg_1245_pp0_iter2_reg;
assign grp_fu_3672_p_ce = 1'b1;
assign grp_fu_3672_p_din0 = tmp_reg_1265;
assign grp_fu_3672_p_din1 = output_difference_5_load_2_reg_1250_pp0_iter2_reg;
assign grp_fu_3676_p_ce = 1'b1;
assign grp_fu_3676_p_din0 = tmp_reg_1265;
assign grp_fu_3676_p_din1 = output_difference_6_load_2_reg_1255_pp0_iter2_reg;
assign grp_fu_3680_p_ce = 1'b1;
assign grp_fu_3680_p_din0 = tmp_reg_1265;
assign grp_fu_3680_p_din1 = output_difference_7_load_2_reg_1260_pp0_iter2_reg;
assign icmp_ln113_fu_740_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 6'd52) ? 1'b1 : 1'b0);
assign lshr_ln_fu_788_p4 = {{select_ln112_fu_766_p3[6:3]}};
assign or_ln_fu_820_p3 = {{tmp_30_fu_810_p4}, {1'd1}};
assign output_difference_0_address0 = zext_ln115_1_fu_828_p1;
assign output_difference_0_address1 = zext_ln112_fu_798_p1;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_1_address0 = zext_ln115_1_fu_828_p1;
assign output_difference_1_address1 = zext_ln112_fu_798_p1;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign output_difference_2_address0 = zext_ln115_1_fu_828_p1;
assign output_difference_2_address1 = zext_ln112_fu_798_p1;
assign output_difference_2_ce0 = output_difference_2_ce0_local;
assign output_difference_2_ce1 = output_difference_2_ce1_local;
assign output_difference_3_address0 = zext_ln115_1_fu_828_p1;
assign output_difference_3_address1 = zext_ln112_fu_798_p1;
assign output_difference_3_ce0 = output_difference_3_ce0_local;
assign output_difference_3_ce1 = output_difference_3_ce1_local;
assign output_difference_4_address0 = zext_ln115_1_fu_828_p1;
assign output_difference_4_address1 = zext_ln112_fu_798_p1;
assign output_difference_4_ce0 = output_difference_4_ce0_local;
assign output_difference_4_ce1 = output_difference_4_ce1_local;
assign output_difference_5_address0 = zext_ln115_1_fu_828_p1;
assign output_difference_5_address1 = zext_ln112_fu_798_p1;
assign output_difference_5_ce0 = output_difference_5_ce0_local;
assign output_difference_5_ce1 = output_difference_5_ce1_local;
assign output_difference_6_address0 = zext_ln115_1_fu_828_p1;
assign output_difference_6_address1 = zext_ln112_fu_798_p1;
assign output_difference_6_ce0 = output_difference_6_ce0_local;
assign output_difference_6_ce1 = output_difference_6_ce1_local;
assign output_difference_7_address0 = zext_ln115_1_fu_828_p1;
assign output_difference_7_address1 = zext_ln112_fu_798_p1;
assign output_difference_7_ce0 = output_difference_7_ce0_local;
assign output_difference_7_ce1 = output_difference_7_ce1_local;
assign p_cast_fu_883_p1 = tmp_s_fu_873_p4;
assign p_sum_fu_864_p2 = (zext_ln113_fu_861_p1 + idx);
assign p_udiv_fu_966_p3 = {{select_ln113_reg_1043_pp0_iter1_reg}, {3'd0}};
assign select_ln112_fu_766_p3 = ((tmp_21_fu_758_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_780_p3 = ((tmp_21_fu_758_p3[0:0] == 1'b1) ? add_ln113_1_fu_774_p2 : ap_sig_allocacmp_i_load);
assign tmp_21_fu_758_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_30_fu_810_p4 = {{select_ln112_fu_766_p3[5:4]}};
assign tmp_fu_927_p10 = training_data_4_q0;
assign tmp_fu_927_p12 = training_data_5_q0;
assign tmp_fu_927_p14 = training_data_6_q0;
assign tmp_fu_927_p16 = training_data_7_q0;
assign tmp_fu_927_p17 = 'bx;
assign tmp_fu_927_p2 = training_data_0_q0;
assign tmp_fu_927_p4 = training_data_1_q0;
assign tmp_fu_927_p6 = training_data_2_q0;
assign tmp_fu_927_p8 = training_data_3_q0;
assign tmp_s_fu_873_p4 = {{p_sum_fu_864_p2[11:3]}};
assign training_data_0_address0 = p_cast_fu_883_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_1_address0 = p_cast_fu_883_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_2_address0 = p_cast_fu_883_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_3_address0 = p_cast_fu_883_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign training_data_4_address0 = p_cast_fu_883_p1;
assign training_data_4_ce0 = training_data_4_ce0_local;
assign training_data_5_address0 = p_cast_fu_883_p1;
assign training_data_5_ce0 = training_data_5_ce0_local;
assign training_data_6_address0 = p_cast_fu_883_p1;
assign training_data_6_ce0 = training_data_6_ce0_local;
assign training_data_7_address0 = p_cast_fu_883_p1;
assign training_data_7_ce0 = training_data_7_ce0_local;
assign zext_ln112_1_fu_973_p1 = lshr_ln_reg_1050_pp0_iter1_reg;
assign zext_ln112_fu_798_p1 = lshr_ln_fu_788_p4;
assign zext_ln113_fu_861_p1 = select_ln113_reg_1043;
assign zext_ln115_1_fu_828_p1 = or_ln_fu_820_p3;
assign zext_ln115_2_fu_1001_p1 = add_ln115_1_fu_993_p4;
assign zext_ln115_fu_982_p1 = add_ln115_reg_1285_pp0_iter9_reg;
endmodule 