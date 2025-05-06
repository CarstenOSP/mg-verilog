
module backprop_get_delta_matrix_weights1_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,delta_weights1_4_address0,delta_weights1_4_ce0,delta_weights1_4_we0,delta_weights1_4_d0,delta_weights1_4_address1,delta_weights1_4_ce1,delta_weights1_4_we1,delta_weights1_4_d1,delta_weights1_5_address0,delta_weights1_5_ce0,delta_weights1_5_we0,delta_weights1_5_d0,delta_weights1_5_address1,delta_weights1_5_ce1,delta_weights1_5_we1,delta_weights1_5_d1,delta_weights1_6_address0,delta_weights1_6_ce0,delta_weights1_6_we0,delta_weights1_6_d0,delta_weights1_6_address1,delta_weights1_6_ce1,delta_weights1_6_we1,delta_weights1_6_d1,delta_weights1_7_address0,delta_weights1_7_ce0,delta_weights1_7_we0,delta_weights1_7_d0,delta_weights1_7_address1,delta_weights1_7_ce1,delta_weights1_7_we1,delta_weights1_7_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_4_address0,output_difference_4_ce0,output_difference_4_q0,output_difference_4_address1,output_difference_4_ce1,output_difference_4_q1,output_difference_5_address0,output_difference_5_ce0,output_difference_5_q0,output_difference_5_address1,output_difference_5_ce1,output_difference_5_q1,output_difference_6_address0,output_difference_6_ce0,output_difference_6_q0,output_difference_6_address1,output_difference_6_ce1,output_difference_6_q1,output_difference_7_address0,output_difference_7_ce0,output_difference_7_q0,output_difference_7_address1,output_difference_7_ce1,output_difference_7_q1,training_data_address0,training_data_ce0,training_data_q0,idx,grp_fu_3247_p_din0,grp_fu_3247_p_din1,grp_fu_3247_p_dout0,grp_fu_3247_p_ce,grp_fu_3251_p_din0,grp_fu_3251_p_din1,grp_fu_3251_p_dout0,grp_fu_3251_p_ce,grp_fu_3263_p_din0,grp_fu_3263_p_din1,grp_fu_3263_p_dout0,grp_fu_3263_p_ce,grp_fu_3267_p_din0,grp_fu_3267_p_din1,grp_fu_3267_p_dout0,grp_fu_3267_p_ce,grp_fu_3271_p_din0,grp_fu_3271_p_din1,grp_fu_3271_p_dout0,grp_fu_3271_p_ce,grp_fu_3275_p_din0,grp_fu_3275_p_din1,grp_fu_3275_p_dout0,grp_fu_3275_p_ce,grp_fu_3279_p_din0,grp_fu_3279_p_din1,grp_fu_3279_p_dout0,grp_fu_3279_p_ce,grp_fu_3283_p_din0,grp_fu_3283_p_din1,grp_fu_3283_p_dout0,grp_fu_3283_p_ce,grp_fu_3287_p_din0,grp_fu_3287_p_din1,grp_fu_3287_p_dout0,grp_fu_3287_p_ce,grp_fu_3291_p_din0,grp_fu_3291_p_din1,grp_fu_3291_p_dout0,grp_fu_3291_p_ce,grp_fu_3295_p_din0,grp_fu_3295_p_din1,grp_fu_3295_p_dout0,grp_fu_3295_p_ce,grp_fu_3299_p_din0,grp_fu_3299_p_din1,grp_fu_3299_p_dout0,grp_fu_3299_p_ce,grp_fu_3303_p_din0,grp_fu_3303_p_din1,grp_fu_3303_p_dout0,grp_fu_3303_p_ce,grp_fu_3307_p_din0,grp_fu_3307_p_din1,grp_fu_3307_p_dout0,grp_fu_3307_p_ce,grp_fu_3311_p_din0,grp_fu_3311_p_din1,grp_fu_3311_p_dout0,grp_fu_3311_p_ce,grp_fu_3315_p_din0,grp_fu_3315_p_din1,grp_fu_3315_p_dout0,grp_fu_3315_p_ce);  
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
output  [11:0] training_data_address0;
output   training_data_ce0;
input  [63:0] training_data_q0;
input  [11:0] idx;
output  [63:0] grp_fu_3247_p_din0;
output  [63:0] grp_fu_3247_p_din1;
input  [63:0] grp_fu_3247_p_dout0;
output   grp_fu_3247_p_ce;
output  [63:0] grp_fu_3251_p_din0;
output  [63:0] grp_fu_3251_p_din1;
input  [63:0] grp_fu_3251_p_dout0;
output   grp_fu_3251_p_ce;
output  [63:0] grp_fu_3263_p_din0;
output  [63:0] grp_fu_3263_p_din1;
input  [63:0] grp_fu_3263_p_dout0;
output   grp_fu_3263_p_ce;
output  [63:0] grp_fu_3267_p_din0;
output  [63:0] grp_fu_3267_p_din1;
input  [63:0] grp_fu_3267_p_dout0;
output   grp_fu_3267_p_ce;
output  [63:0] grp_fu_3271_p_din0;
output  [63:0] grp_fu_3271_p_din1;
input  [63:0] grp_fu_3271_p_dout0;
output   grp_fu_3271_p_ce;
output  [63:0] grp_fu_3275_p_din0;
output  [63:0] grp_fu_3275_p_din1;
input  [63:0] grp_fu_3275_p_dout0;
output   grp_fu_3275_p_ce;
output  [63:0] grp_fu_3279_p_din0;
output  [63:0] grp_fu_3279_p_din1;
input  [63:0] grp_fu_3279_p_dout0;
output   grp_fu_3279_p_ce;
output  [63:0] grp_fu_3283_p_din0;
output  [63:0] grp_fu_3283_p_din1;
input  [63:0] grp_fu_3283_p_dout0;
output   grp_fu_3283_p_ce;
output  [63:0] grp_fu_3287_p_din0;
output  [63:0] grp_fu_3287_p_din1;
input  [63:0] grp_fu_3287_p_dout0;
output   grp_fu_3287_p_ce;
output  [63:0] grp_fu_3291_p_din0;
output  [63:0] grp_fu_3291_p_din1;
input  [63:0] grp_fu_3291_p_dout0;
output   grp_fu_3291_p_ce;
output  [63:0] grp_fu_3295_p_din0;
output  [63:0] grp_fu_3295_p_din1;
input  [63:0] grp_fu_3295_p_dout0;
output   grp_fu_3295_p_ce;
output  [63:0] grp_fu_3299_p_din0;
output  [63:0] grp_fu_3299_p_din1;
input  [63:0] grp_fu_3299_p_dout0;
output   grp_fu_3299_p_ce;
output  [63:0] grp_fu_3303_p_din0;
output  [63:0] grp_fu_3303_p_din1;
input  [63:0] grp_fu_3303_p_dout0;
output   grp_fu_3303_p_ce;
output  [63:0] grp_fu_3307_p_din0;
output  [63:0] grp_fu_3307_p_din1;
input  [63:0] grp_fu_3307_p_dout0;
output   grp_fu_3307_p_ce;
output  [63:0] grp_fu_3311_p_din0;
output  [63:0] grp_fu_3311_p_din1;
input  [63:0] grp_fu_3311_p_dout0;
output   grp_fu_3311_p_ce;
output  [63:0] grp_fu_3315_p_din0;
output  [63:0] grp_fu_3315_p_din1;
input  [63:0] grp_fu_3315_p_dout0;
output   grp_fu_3315_p_ce;
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
wire   [0:0] icmp_ln113_fu_613_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln113_fu_653_p3;
reg   [3:0] select_ln113_reg_829;
reg   [3:0] select_ln113_reg_829_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_829_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_829_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_829_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_829_pp0_iter5_reg;
reg   [3:0] select_ln113_reg_829_pp0_iter6_reg;
reg   [3:0] select_ln113_reg_829_pp0_iter7_reg;
reg   [3:0] select_ln113_reg_829_pp0_iter8_reg;
reg   [3:0] select_ln113_reg_829_pp0_iter9_reg;
wire   [3:0] lshr_ln_fu_661_p4;
reg   [3:0] lshr_ln_reg_836;
reg   [3:0] lshr_ln_reg_836_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_836_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_836_pp0_iter3_reg;
reg   [3:0] lshr_ln_reg_836_pp0_iter4_reg;
reg   [3:0] lshr_ln_reg_836_pp0_iter5_reg;
reg   [3:0] lshr_ln_reg_836_pp0_iter6_reg;
reg   [3:0] lshr_ln_reg_836_pp0_iter7_reg;
reg   [3:0] lshr_ln_reg_836_pp0_iter8_reg;
reg   [3:0] lshr_ln_reg_836_pp0_iter9_reg;
wire   [1:0] tmp_fu_683_p4;
reg   [1:0] tmp_reg_881;
reg   [1:0] tmp_reg_881_pp0_iter1_reg;
reg   [1:0] tmp_reg_881_pp0_iter2_reg;
reg   [1:0] tmp_reg_881_pp0_iter3_reg;
reg   [1:0] tmp_reg_881_pp0_iter4_reg;
reg   [1:0] tmp_reg_881_pp0_iter5_reg;
reg   [1:0] tmp_reg_881_pp0_iter6_reg;
reg   [1:0] tmp_reg_881_pp0_iter7_reg;
reg   [1:0] tmp_reg_881_pp0_iter8_reg;
reg   [1:0] tmp_reg_881_pp0_iter9_reg;
reg   [63:0] output_difference_0_load_reg_931;
reg   [63:0] output_difference_0_load_reg_931_pp0_iter2_reg;
reg   [63:0] output_difference_1_load_reg_936;
reg   [63:0] output_difference_1_load_reg_936_pp0_iter2_reg;
reg   [63:0] output_difference_2_load_reg_941;
reg   [63:0] output_difference_2_load_reg_941_pp0_iter2_reg;
reg   [63:0] output_difference_3_load_reg_946;
reg   [63:0] output_difference_3_load_reg_946_pp0_iter2_reg;
reg   [63:0] output_difference_4_load_reg_951;
reg   [63:0] output_difference_4_load_reg_951_pp0_iter2_reg;
reg   [63:0] output_difference_5_load_reg_956;
reg   [63:0] output_difference_5_load_reg_956_pp0_iter2_reg;
reg   [63:0] output_difference_6_load_reg_961;
reg   [63:0] output_difference_6_load_reg_961_pp0_iter2_reg;
reg   [63:0] output_difference_7_load_reg_966;
reg   [63:0] output_difference_7_load_reg_966_pp0_iter2_reg;
reg   [63:0] output_difference_0_load_2_reg_971;
reg   [63:0] output_difference_0_load_2_reg_971_pp0_iter2_reg;
reg   [63:0] output_difference_1_load_2_reg_976;
reg   [63:0] output_difference_1_load_2_reg_976_pp0_iter2_reg;
reg   [63:0] output_difference_2_load_2_reg_981;
reg   [63:0] output_difference_2_load_2_reg_981_pp0_iter2_reg;
reg   [63:0] output_difference_3_load_2_reg_986;
reg   [63:0] output_difference_3_load_2_reg_986_pp0_iter2_reg;
reg   [63:0] output_difference_4_load_2_reg_991;
reg   [63:0] output_difference_4_load_2_reg_991_pp0_iter2_reg;
reg   [63:0] output_difference_5_load_2_reg_996;
reg   [63:0] output_difference_5_load_2_reg_996_pp0_iter2_reg;
reg   [63:0] output_difference_6_load_2_reg_1001;
reg   [63:0] output_difference_6_load_2_reg_1001_pp0_iter2_reg;
reg   [63:0] output_difference_7_load_2_reg_1006;
reg   [63:0] output_difference_7_load_2_reg_1006_pp0_iter2_reg;
wire   [63:0] empty_fu_747_p1;
reg   [63:0] empty_reg_1011;
reg   [63:0] mul_reg_1031;
reg   [63:0] mul_1_reg_1036;
reg   [63:0] mul_2_reg_1041;
reg   [63:0] mul_3_reg_1046;
reg   [63:0] mul_4_reg_1051;
reg   [63:0] mul_5_reg_1056;
reg   [63:0] mul_6_reg_1061;
reg   [63:0] mul_7_reg_1066;
reg   [63:0] mul_8_reg_1071;
reg   [63:0] mul_9_reg_1076;
reg   [63:0] mul_10_reg_1081;
reg   [63:0] mul_11_reg_1086;
reg   [63:0] mul_12_reg_1091;
reg   [63:0] mul_13_reg_1096;
reg   [63:0] mul_14_reg_1101;
reg   [63:0] mul_15_reg_1106;
wire   [63:0] zext_ln112_fu_671_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln115_1_fu_701_p1;
wire   [63:0] p_sum_cast_fu_742_p1;
wire   [63:0] zext_ln115_fu_767_p1;
wire   [63:0] zext_ln115_2_fu_787_p1;
reg   [6:0] j_fu_100;
wire   [6:0] add_ln114_fu_713_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_104;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [5:0] indvar_flatten_fu_108;
wire   [5:0] add_ln113_fu_619_p2;
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
reg    training_data_ce0_local;
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
wire   [0:0] tmp_109_fu_631_p3;
wire   [3:0] add_ln113_1_fu_647_p2;
wire   [6:0] select_ln112_fu_639_p3;
wire   [2:0] or_ln_fu_693_p3;
wire   [11:0] zext_ln113_fu_734_p1;
wire   [11:0] p_sum_fu_737_p2;
wire   [6:0] zext_ln112_1_fu_758_p1;
wire   [6:0] p_udiv1_fu_751_p3;
wire   [6:0] add_ln115_fu_761_p2;
wire   [6:0] add_ln115_1_fu_779_p4;
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
#0 j_fu_100 = 7'd0;
#0 i_fu_104 = 4'd0;
#0 indvar_flatten_fu_108 = 6'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((icmp_ln113_fu_613_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_104 <= select_ln113_fu_653_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_104 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_613_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_108 <= add_ln113_fu_619_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_108 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_613_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_100 <= add_ln114_fu_713_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_100 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln_reg_836 <= {{select_ln112_fu_639_p3[6:3]}};
        lshr_ln_reg_836_pp0_iter1_reg <= lshr_ln_reg_836;
        select_ln113_reg_829 <= select_ln113_fu_653_p3;
        select_ln113_reg_829_pp0_iter1_reg <= select_ln113_reg_829;
        tmp_reg_881 <= {{select_ln112_fu_639_p3[5:4]}};
        tmp_reg_881_pp0_iter1_reg <= tmp_reg_881;
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
        empty_reg_1011 <= empty_fu_747_p1;
        lshr_ln_reg_836_pp0_iter2_reg <= lshr_ln_reg_836_pp0_iter1_reg;
        lshr_ln_reg_836_pp0_iter3_reg <= lshr_ln_reg_836_pp0_iter2_reg;
        lshr_ln_reg_836_pp0_iter4_reg <= lshr_ln_reg_836_pp0_iter3_reg;
        lshr_ln_reg_836_pp0_iter5_reg <= lshr_ln_reg_836_pp0_iter4_reg;
        lshr_ln_reg_836_pp0_iter6_reg <= lshr_ln_reg_836_pp0_iter5_reg;
        lshr_ln_reg_836_pp0_iter7_reg <= lshr_ln_reg_836_pp0_iter6_reg;
        lshr_ln_reg_836_pp0_iter8_reg <= lshr_ln_reg_836_pp0_iter7_reg;
        lshr_ln_reg_836_pp0_iter9_reg <= lshr_ln_reg_836_pp0_iter8_reg;
        mul_10_reg_1081 <= grp_fu_3295_p_dout0;
        mul_11_reg_1086 <= grp_fu_3299_p_dout0;
        mul_12_reg_1091 <= grp_fu_3303_p_dout0;
        mul_13_reg_1096 <= grp_fu_3307_p_dout0;
        mul_14_reg_1101 <= grp_fu_3311_p_dout0;
        mul_15_reg_1106 <= grp_fu_3315_p_dout0;
        mul_1_reg_1036 <= grp_fu_3251_p_dout0;
        mul_2_reg_1041 <= grp_fu_3263_p_dout0;
        mul_3_reg_1046 <= grp_fu_3267_p_dout0;
        mul_4_reg_1051 <= grp_fu_3271_p_dout0;
        mul_5_reg_1056 <= grp_fu_3275_p_dout0;
        mul_6_reg_1061 <= grp_fu_3279_p_dout0;
        mul_7_reg_1066 <= grp_fu_3283_p_dout0;
        mul_8_reg_1071 <= grp_fu_3287_p_dout0;
        mul_9_reg_1076 <= grp_fu_3291_p_dout0;
        mul_reg_1031 <= grp_fu_3247_p_dout0;
        output_difference_0_load_2_reg_971_pp0_iter2_reg <= output_difference_0_load_2_reg_971;
        output_difference_0_load_reg_931_pp0_iter2_reg <= output_difference_0_load_reg_931;
        output_difference_1_load_2_reg_976_pp0_iter2_reg <= output_difference_1_load_2_reg_976;
        output_difference_1_load_reg_936_pp0_iter2_reg <= output_difference_1_load_reg_936;
        output_difference_2_load_2_reg_981_pp0_iter2_reg <= output_difference_2_load_2_reg_981;
        output_difference_2_load_reg_941_pp0_iter2_reg <= output_difference_2_load_reg_941;
        output_difference_3_load_2_reg_986_pp0_iter2_reg <= output_difference_3_load_2_reg_986;
        output_difference_3_load_reg_946_pp0_iter2_reg <= output_difference_3_load_reg_946;
        output_difference_4_load_2_reg_991_pp0_iter2_reg <= output_difference_4_load_2_reg_991;
        output_difference_4_load_reg_951_pp0_iter2_reg <= output_difference_4_load_reg_951;
        output_difference_5_load_2_reg_996_pp0_iter2_reg <= output_difference_5_load_2_reg_996;
        output_difference_5_load_reg_956_pp0_iter2_reg <= output_difference_5_load_reg_956;
        output_difference_6_load_2_reg_1001_pp0_iter2_reg <= output_difference_6_load_2_reg_1001;
        output_difference_6_load_reg_961_pp0_iter2_reg <= output_difference_6_load_reg_961;
        output_difference_7_load_2_reg_1006_pp0_iter2_reg <= output_difference_7_load_2_reg_1006;
        output_difference_7_load_reg_966_pp0_iter2_reg <= output_difference_7_load_reg_966;
        select_ln113_reg_829_pp0_iter2_reg <= select_ln113_reg_829_pp0_iter1_reg;
        select_ln113_reg_829_pp0_iter3_reg <= select_ln113_reg_829_pp0_iter2_reg;
        select_ln113_reg_829_pp0_iter4_reg <= select_ln113_reg_829_pp0_iter3_reg;
        select_ln113_reg_829_pp0_iter5_reg <= select_ln113_reg_829_pp0_iter4_reg;
        select_ln113_reg_829_pp0_iter6_reg <= select_ln113_reg_829_pp0_iter5_reg;
        select_ln113_reg_829_pp0_iter7_reg <= select_ln113_reg_829_pp0_iter6_reg;
        select_ln113_reg_829_pp0_iter8_reg <= select_ln113_reg_829_pp0_iter7_reg;
        select_ln113_reg_829_pp0_iter9_reg <= select_ln113_reg_829_pp0_iter8_reg;
        tmp_reg_881_pp0_iter2_reg <= tmp_reg_881_pp0_iter1_reg;
        tmp_reg_881_pp0_iter3_reg <= tmp_reg_881_pp0_iter2_reg;
        tmp_reg_881_pp0_iter4_reg <= tmp_reg_881_pp0_iter3_reg;
        tmp_reg_881_pp0_iter5_reg <= tmp_reg_881_pp0_iter4_reg;
        tmp_reg_881_pp0_iter6_reg <= tmp_reg_881_pp0_iter5_reg;
        tmp_reg_881_pp0_iter7_reg <= tmp_reg_881_pp0_iter6_reg;
        tmp_reg_881_pp0_iter8_reg <= tmp_reg_881_pp0_iter7_reg;
        tmp_reg_881_pp0_iter9_reg <= tmp_reg_881_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_0_load_2_reg_971 <= output_difference_0_q0;
        output_difference_0_load_reg_931 <= output_difference_0_q1;
        output_difference_1_load_2_reg_976 <= output_difference_1_q0;
        output_difference_1_load_reg_936 <= output_difference_1_q1;
        output_difference_2_load_2_reg_981 <= output_difference_2_q0;
        output_difference_2_load_reg_941 <= output_difference_2_q1;
        output_difference_3_load_2_reg_986 <= output_difference_3_q0;
        output_difference_3_load_reg_946 <= output_difference_3_q1;
        output_difference_4_load_2_reg_991 <= output_difference_4_q0;
        output_difference_4_load_reg_951 <= output_difference_4_q1;
        output_difference_5_load_2_reg_996 <= output_difference_5_q0;
        output_difference_5_load_reg_956 <= output_difference_5_q1;
        output_difference_6_load_2_reg_1001 <= output_difference_6_q0;
        output_difference_6_load_reg_961 <= output_difference_6_q1;
        output_difference_7_load_2_reg_1006 <= output_difference_7_q0;
        output_difference_7_load_reg_966 <= output_difference_7_q1;
    end
end
always @ (*) begin
    if (((icmp_ln113_fu_613_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_sig_allocacmp_i_load = i_fu_104;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_108;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_100;
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
        training_data_ce0_local = 1'b1;
    end else begin
        training_data_ce0_local = 1'b0;
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
assign add_ln113_1_fu_647_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_619_p2 = (ap_sig_allocacmp_indvar_flatten_load + 6'd1);
assign add_ln114_fu_713_p2 = (select_ln112_fu_639_p3 + 7'd16);
assign add_ln115_1_fu_779_p4 = {{{select_ln113_reg_829_pp0_iter9_reg}, {tmp_reg_881_pp0_iter9_reg}}, {1'd1}};
assign add_ln115_fu_761_p2 = (zext_ln112_1_fu_758_p1 + p_udiv1_fu_751_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights1_0_address0 = zext_ln115_2_fu_787_p1;
assign delta_weights1_0_address1 = zext_ln115_fu_767_p1;
assign delta_weights1_0_ce0 = delta_weights1_0_ce0_local;
assign delta_weights1_0_ce1 = delta_weights1_0_ce1_local;
assign delta_weights1_0_d0 = mul_8_reg_1071;
assign delta_weights1_0_d1 = mul_reg_1031;
assign delta_weights1_0_we0 = delta_weights1_0_we0_local;
assign delta_weights1_0_we1 = delta_weights1_0_we1_local;
assign delta_weights1_1_address0 = zext_ln115_2_fu_787_p1;
assign delta_weights1_1_address1 = zext_ln115_fu_767_p1;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = mul_9_reg_1076;
assign delta_weights1_1_d1 = mul_1_reg_1036;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign delta_weights1_2_address0 = zext_ln115_2_fu_787_p1;
assign delta_weights1_2_address1 = zext_ln115_fu_767_p1;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_ce1 = delta_weights1_2_ce1_local;
assign delta_weights1_2_d0 = mul_10_reg_1081;
assign delta_weights1_2_d1 = mul_2_reg_1041;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_2_we1 = delta_weights1_2_we1_local;
assign delta_weights1_3_address0 = zext_ln115_2_fu_787_p1;
assign delta_weights1_3_address1 = zext_ln115_fu_767_p1;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_ce1 = delta_weights1_3_ce1_local;
assign delta_weights1_3_d0 = mul_11_reg_1086;
assign delta_weights1_3_d1 = mul_3_reg_1046;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_3_we1 = delta_weights1_3_we1_local;
assign delta_weights1_4_address0 = zext_ln115_2_fu_787_p1;
assign delta_weights1_4_address1 = zext_ln115_fu_767_p1;
assign delta_weights1_4_ce0 = delta_weights1_4_ce0_local;
assign delta_weights1_4_ce1 = delta_weights1_4_ce1_local;
assign delta_weights1_4_d0 = mul_12_reg_1091;
assign delta_weights1_4_d1 = mul_4_reg_1051;
assign delta_weights1_4_we0 = delta_weights1_4_we0_local;
assign delta_weights1_4_we1 = delta_weights1_4_we1_local;
assign delta_weights1_5_address0 = zext_ln115_2_fu_787_p1;
assign delta_weights1_5_address1 = zext_ln115_fu_767_p1;
assign delta_weights1_5_ce0 = delta_weights1_5_ce0_local;
assign delta_weights1_5_ce1 = delta_weights1_5_ce1_local;
assign delta_weights1_5_d0 = mul_13_reg_1096;
assign delta_weights1_5_d1 = mul_5_reg_1056;
assign delta_weights1_5_we0 = delta_weights1_5_we0_local;
assign delta_weights1_5_we1 = delta_weights1_5_we1_local;
assign delta_weights1_6_address0 = zext_ln115_2_fu_787_p1;
assign delta_weights1_6_address1 = zext_ln115_fu_767_p1;
assign delta_weights1_6_ce0 = delta_weights1_6_ce0_local;
assign delta_weights1_6_ce1 = delta_weights1_6_ce1_local;
assign delta_weights1_6_d0 = mul_14_reg_1101;
assign delta_weights1_6_d1 = mul_6_reg_1061;
assign delta_weights1_6_we0 = delta_weights1_6_we0_local;
assign delta_weights1_6_we1 = delta_weights1_6_we1_local;
assign delta_weights1_7_address0 = zext_ln115_2_fu_787_p1;
assign delta_weights1_7_address1 = zext_ln115_fu_767_p1;
assign delta_weights1_7_ce0 = delta_weights1_7_ce0_local;
assign delta_weights1_7_ce1 = delta_weights1_7_ce1_local;
assign delta_weights1_7_d0 = mul_15_reg_1106;
assign delta_weights1_7_d1 = mul_7_reg_1066;
assign delta_weights1_7_we0 = delta_weights1_7_we0_local;
assign delta_weights1_7_we1 = delta_weights1_7_we1_local;
assign empty_fu_747_p1 = training_data_q0;
assign grp_fu_3247_p_ce = 1'b1;
assign grp_fu_3247_p_din0 = empty_reg_1011;
assign grp_fu_3247_p_din1 = output_difference_0_load_reg_931_pp0_iter2_reg;
assign grp_fu_3251_p_ce = 1'b1;
assign grp_fu_3251_p_din0 = empty_reg_1011;
assign grp_fu_3251_p_din1 = output_difference_1_load_reg_936_pp0_iter2_reg;
assign grp_fu_3263_p_ce = 1'b1;
assign grp_fu_3263_p_din0 = empty_reg_1011;
assign grp_fu_3263_p_din1 = output_difference_2_load_reg_941_pp0_iter2_reg;
assign grp_fu_3267_p_ce = 1'b1;
assign grp_fu_3267_p_din0 = empty_reg_1011;
assign grp_fu_3267_p_din1 = output_difference_3_load_reg_946_pp0_iter2_reg;
assign grp_fu_3271_p_ce = 1'b1;
assign grp_fu_3271_p_din0 = empty_reg_1011;
assign grp_fu_3271_p_din1 = output_difference_4_load_reg_951_pp0_iter2_reg;
assign grp_fu_3275_p_ce = 1'b1;
assign grp_fu_3275_p_din0 = empty_reg_1011;
assign grp_fu_3275_p_din1 = output_difference_5_load_reg_956_pp0_iter2_reg;
assign grp_fu_3279_p_ce = 1'b1;
assign grp_fu_3279_p_din0 = empty_reg_1011;
assign grp_fu_3279_p_din1 = output_difference_6_load_reg_961_pp0_iter2_reg;
assign grp_fu_3283_p_ce = 1'b1;
assign grp_fu_3283_p_din0 = empty_reg_1011;
assign grp_fu_3283_p_din1 = output_difference_7_load_reg_966_pp0_iter2_reg;
assign grp_fu_3287_p_ce = 1'b1;
assign grp_fu_3287_p_din0 = empty_reg_1011;
assign grp_fu_3287_p_din1 = output_difference_0_load_2_reg_971_pp0_iter2_reg;
assign grp_fu_3291_p_ce = 1'b1;
assign grp_fu_3291_p_din0 = empty_reg_1011;
assign grp_fu_3291_p_din1 = output_difference_1_load_2_reg_976_pp0_iter2_reg;
assign grp_fu_3295_p_ce = 1'b1;
assign grp_fu_3295_p_din0 = empty_reg_1011;
assign grp_fu_3295_p_din1 = output_difference_2_load_2_reg_981_pp0_iter2_reg;
assign grp_fu_3299_p_ce = 1'b1;
assign grp_fu_3299_p_din0 = empty_reg_1011;
assign grp_fu_3299_p_din1 = output_difference_3_load_2_reg_986_pp0_iter2_reg;
assign grp_fu_3303_p_ce = 1'b1;
assign grp_fu_3303_p_din0 = empty_reg_1011;
assign grp_fu_3303_p_din1 = output_difference_4_load_2_reg_991_pp0_iter2_reg;
assign grp_fu_3307_p_ce = 1'b1;
assign grp_fu_3307_p_din0 = empty_reg_1011;
assign grp_fu_3307_p_din1 = output_difference_5_load_2_reg_996_pp0_iter2_reg;
assign grp_fu_3311_p_ce = 1'b1;
assign grp_fu_3311_p_din0 = empty_reg_1011;
assign grp_fu_3311_p_din1 = output_difference_6_load_2_reg_1001_pp0_iter2_reg;
assign grp_fu_3315_p_ce = 1'b1;
assign grp_fu_3315_p_din0 = empty_reg_1011;
assign grp_fu_3315_p_din1 = output_difference_7_load_2_reg_1006_pp0_iter2_reg;
assign icmp_ln113_fu_613_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 6'd52) ? 1'b1 : 1'b0);
assign lshr_ln_fu_661_p4 = {{select_ln112_fu_639_p3[6:3]}};
assign or_ln_fu_693_p3 = {{tmp_fu_683_p4}, {1'd1}};
assign output_difference_0_address0 = zext_ln115_1_fu_701_p1;
assign output_difference_0_address1 = zext_ln112_fu_671_p1;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_1_address0 = zext_ln115_1_fu_701_p1;
assign output_difference_1_address1 = zext_ln112_fu_671_p1;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign output_difference_2_address0 = zext_ln115_1_fu_701_p1;
assign output_difference_2_address1 = zext_ln112_fu_671_p1;
assign output_difference_2_ce0 = output_difference_2_ce0_local;
assign output_difference_2_ce1 = output_difference_2_ce1_local;
assign output_difference_3_address0 = zext_ln115_1_fu_701_p1;
assign output_difference_3_address1 = zext_ln112_fu_671_p1;
assign output_difference_3_ce0 = output_difference_3_ce0_local;
assign output_difference_3_ce1 = output_difference_3_ce1_local;
assign output_difference_4_address0 = zext_ln115_1_fu_701_p1;
assign output_difference_4_address1 = zext_ln112_fu_671_p1;
assign output_difference_4_ce0 = output_difference_4_ce0_local;
assign output_difference_4_ce1 = output_difference_4_ce1_local;
assign output_difference_5_address0 = zext_ln115_1_fu_701_p1;
assign output_difference_5_address1 = zext_ln112_fu_671_p1;
assign output_difference_5_ce0 = output_difference_5_ce0_local;
assign output_difference_5_ce1 = output_difference_5_ce1_local;
assign output_difference_6_address0 = zext_ln115_1_fu_701_p1;
assign output_difference_6_address1 = zext_ln112_fu_671_p1;
assign output_difference_6_ce0 = output_difference_6_ce0_local;
assign output_difference_6_ce1 = output_difference_6_ce1_local;
assign output_difference_7_address0 = zext_ln115_1_fu_701_p1;
assign output_difference_7_address1 = zext_ln112_fu_671_p1;
assign output_difference_7_ce0 = output_difference_7_ce0_local;
assign output_difference_7_ce1 = output_difference_7_ce1_local;
assign p_sum_cast_fu_742_p1 = p_sum_fu_737_p2;
assign p_sum_fu_737_p2 = (zext_ln113_fu_734_p1 + idx);
assign p_udiv1_fu_751_p3 = {{select_ln113_reg_829_pp0_iter9_reg}, {3'd0}};
assign select_ln112_fu_639_p3 = ((tmp_109_fu_631_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_653_p3 = ((tmp_109_fu_631_p3[0:0] == 1'b1) ? add_ln113_1_fu_647_p2 : ap_sig_allocacmp_i_load);
assign tmp_109_fu_631_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_fu_683_p4 = {{select_ln112_fu_639_p3[5:4]}};
assign training_data_address0 = p_sum_cast_fu_742_p1;
assign training_data_ce0 = training_data_ce0_local;
assign zext_ln112_1_fu_758_p1 = lshr_ln_reg_836_pp0_iter9_reg;
assign zext_ln112_fu_671_p1 = lshr_ln_fu_661_p4;
assign zext_ln113_fu_734_p1 = select_ln113_reg_829;
assign zext_ln115_1_fu_701_p1 = or_ln_fu_693_p3;
assign zext_ln115_2_fu_787_p1 = add_ln115_1_fu_779_p4;
assign zext_ln115_fu_767_p1 = add_ln115_fu_761_p2;
endmodule 
