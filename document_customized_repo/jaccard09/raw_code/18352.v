module backprop_get_delta_matrix_weights2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights2_0_address0,delta_weights2_0_ce0,delta_weights2_0_we0,delta_weights2_0_d0,delta_weights2_0_address1,delta_weights2_0_ce1,delta_weights2_0_we1,delta_weights2_0_d1,delta_weights2_1_address0,delta_weights2_1_ce0,delta_weights2_1_we0,delta_weights2_1_d0,delta_weights2_1_address1,delta_weights2_1_ce1,delta_weights2_1_we1,delta_weights2_1_d1,delta_weights2_2_address0,delta_weights2_2_ce0,delta_weights2_2_we0,delta_weights2_2_d0,delta_weights2_2_address1,delta_weights2_2_ce1,delta_weights2_2_we1,delta_weights2_2_d1,delta_weights2_3_address0,delta_weights2_3_ce0,delta_weights2_3_we0,delta_weights2_3_d0,delta_weights2_3_address1,delta_weights2_3_ce1,delta_weights2_3_we1,delta_weights2_3_d1,delta_weights2_4_address0,delta_weights2_4_ce0,delta_weights2_4_we0,delta_weights2_4_d0,delta_weights2_4_address1,delta_weights2_4_ce1,delta_weights2_4_we1,delta_weights2_4_d1,delta_weights2_5_address0,delta_weights2_5_ce0,delta_weights2_5_we0,delta_weights2_5_d0,delta_weights2_5_address1,delta_weights2_5_ce1,delta_weights2_5_we1,delta_weights2_5_d1,delta_weights2_6_address0,delta_weights2_6_ce0,delta_weights2_6_we0,delta_weights2_6_d0,delta_weights2_6_address1,delta_weights2_6_ce1,delta_weights2_6_we1,delta_weights2_6_d1,delta_weights2_7_address0,delta_weights2_7_ce0,delta_weights2_7_we0,delta_weights2_7_d0,delta_weights2_7_address1,delta_weights2_7_ce1,delta_weights2_7_we1,delta_weights2_7_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_4_address0,output_difference_4_ce0,output_difference_4_q0,output_difference_4_address1,output_difference_4_ce1,output_difference_4_q1,output_difference_5_address0,output_difference_5_ce0,output_difference_5_q0,output_difference_5_address1,output_difference_5_ce1,output_difference_5_q1,output_difference_6_address0,output_difference_6_ce0,output_difference_6_q0,output_difference_6_address1,output_difference_6_ce1,output_difference_6_q1,output_difference_7_address0,output_difference_7_ce0,output_difference_7_q0,output_difference_7_address1,output_difference_7_ce1,output_difference_7_q1,last_activations_address0,last_activations_ce0,last_activations_q0,grp_fu_3247_p_din0,grp_fu_3247_p_din1,grp_fu_3247_p_dout0,grp_fu_3247_p_ce,grp_fu_3251_p_din0,grp_fu_3251_p_din1,grp_fu_3251_p_dout0,grp_fu_3251_p_ce,grp_fu_3263_p_din0,grp_fu_3263_p_din1,grp_fu_3263_p_dout0,grp_fu_3263_p_ce,grp_fu_3267_p_din0,grp_fu_3267_p_din1,grp_fu_3267_p_dout0,grp_fu_3267_p_ce,grp_fu_3271_p_din0,grp_fu_3271_p_din1,grp_fu_3271_p_dout0,grp_fu_3271_p_ce,grp_fu_3275_p_din0,grp_fu_3275_p_din1,grp_fu_3275_p_dout0,grp_fu_3275_p_ce,grp_fu_3279_p_din0,grp_fu_3279_p_din1,grp_fu_3279_p_dout0,grp_fu_3279_p_ce,grp_fu_3283_p_din0,grp_fu_3283_p_din1,grp_fu_3283_p_dout0,grp_fu_3283_p_ce,grp_fu_3287_p_din0,grp_fu_3287_p_din1,grp_fu_3287_p_dout0,grp_fu_3287_p_ce,grp_fu_3291_p_din0,grp_fu_3291_p_din1,grp_fu_3291_p_dout0,grp_fu_3291_p_ce,grp_fu_3295_p_din0,grp_fu_3295_p_din1,grp_fu_3295_p_dout0,grp_fu_3295_p_ce,grp_fu_3299_p_din0,grp_fu_3299_p_din1,grp_fu_3299_p_dout0,grp_fu_3299_p_ce,grp_fu_3303_p_din0,grp_fu_3303_p_din1,grp_fu_3303_p_dout0,grp_fu_3303_p_ce,grp_fu_3307_p_din0,grp_fu_3307_p_din1,grp_fu_3307_p_dout0,grp_fu_3307_p_ce,grp_fu_3311_p_din0,grp_fu_3311_p_din1,grp_fu_3311_p_dout0,grp_fu_3311_p_ce,grp_fu_3315_p_din0,grp_fu_3315_p_din1,grp_fu_3315_p_dout0,grp_fu_3315_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] delta_weights2_0_address0;
output   delta_weights2_0_ce0;
output   delta_weights2_0_we0;
output  [63:0] delta_weights2_0_d0;
output  [8:0] delta_weights2_0_address1;
output   delta_weights2_0_ce1;
output   delta_weights2_0_we1;
output  [63:0] delta_weights2_0_d1;
output  [8:0] delta_weights2_1_address0;
output   delta_weights2_1_ce0;
output   delta_weights2_1_we0;
output  [63:0] delta_weights2_1_d0;
output  [8:0] delta_weights2_1_address1;
output   delta_weights2_1_ce1;
output   delta_weights2_1_we1;
output  [63:0] delta_weights2_1_d1;
output  [8:0] delta_weights2_2_address0;
output   delta_weights2_2_ce0;
output   delta_weights2_2_we0;
output  [63:0] delta_weights2_2_d0;
output  [8:0] delta_weights2_2_address1;
output   delta_weights2_2_ce1;
output   delta_weights2_2_we1;
output  [63:0] delta_weights2_2_d1;
output  [8:0] delta_weights2_3_address0;
output   delta_weights2_3_ce0;
output   delta_weights2_3_we0;
output  [63:0] delta_weights2_3_d0;
output  [8:0] delta_weights2_3_address1;
output   delta_weights2_3_ce1;
output   delta_weights2_3_we1;
output  [63:0] delta_weights2_3_d1;
output  [8:0] delta_weights2_4_address0;
output   delta_weights2_4_ce0;
output   delta_weights2_4_we0;
output  [63:0] delta_weights2_4_d0;
output  [8:0] delta_weights2_4_address1;
output   delta_weights2_4_ce1;
output   delta_weights2_4_we1;
output  [63:0] delta_weights2_4_d1;
output  [8:0] delta_weights2_5_address0;
output   delta_weights2_5_ce0;
output   delta_weights2_5_we0;
output  [63:0] delta_weights2_5_d0;
output  [8:0] delta_weights2_5_address1;
output   delta_weights2_5_ce1;
output   delta_weights2_5_we1;
output  [63:0] delta_weights2_5_d1;
output  [8:0] delta_weights2_6_address0;
output   delta_weights2_6_ce0;
output   delta_weights2_6_we0;
output  [63:0] delta_weights2_6_d0;
output  [8:0] delta_weights2_6_address1;
output   delta_weights2_6_ce1;
output   delta_weights2_6_we1;
output  [63:0] delta_weights2_6_d1;
output  [8:0] delta_weights2_7_address0;
output   delta_weights2_7_ce0;
output   delta_weights2_7_we0;
output  [63:0] delta_weights2_7_d0;
output  [8:0] delta_weights2_7_address1;
output   delta_weights2_7_ce1;
output   delta_weights2_7_we1;
output  [63:0] delta_weights2_7_d1;
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
output  [5:0] last_activations_address0;
output   last_activations_ce0;
input  [63:0] last_activations_q0;
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
reg    ap_enable_reg_pp0_iter11;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln93_fu_595_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] lshr_ln_fu_653_p4;
reg   [2:0] lshr_ln_reg_792;
reg   [2:0] lshr_ln_reg_792_pp0_iter2_reg;
reg   [2:0] lshr_ln_reg_792_pp0_iter3_reg;
reg   [2:0] lshr_ln_reg_792_pp0_iter4_reg;
reg   [2:0] lshr_ln_reg_792_pp0_iter5_reg;
reg   [2:0] lshr_ln_reg_792_pp0_iter6_reg;
reg   [2:0] lshr_ln_reg_792_pp0_iter7_reg;
reg   [2:0] lshr_ln_reg_792_pp0_iter8_reg;
reg   [2:0] lshr_ln_reg_792_pp0_iter9_reg;
wire   [5:0] trunc_ln95_fu_675_p1;
reg   [5:0] trunc_ln95_reg_802;
reg   [5:0] trunc_ln95_reg_802_pp0_iter2_reg;
reg   [5:0] trunc_ln95_reg_802_pp0_iter3_reg;
reg   [5:0] trunc_ln95_reg_802_pp0_iter4_reg;
reg   [5:0] trunc_ln95_reg_802_pp0_iter5_reg;
reg   [5:0] trunc_ln95_reg_802_pp0_iter6_reg;
reg   [5:0] trunc_ln95_reg_802_pp0_iter7_reg;
reg   [5:0] trunc_ln95_reg_802_pp0_iter8_reg;
reg   [5:0] trunc_ln95_reg_802_pp0_iter9_reg;
reg   [5:0] trunc_ln95_reg_802_pp0_iter10_reg;
reg   [1:0] tmp_s_reg_843;
reg   [1:0] tmp_s_reg_843_pp0_iter2_reg;
reg   [1:0] tmp_s_reg_843_pp0_iter3_reg;
reg   [1:0] tmp_s_reg_843_pp0_iter4_reg;
reg   [1:0] tmp_s_reg_843_pp0_iter5_reg;
reg   [1:0] tmp_s_reg_843_pp0_iter6_reg;
reg   [1:0] tmp_s_reg_843_pp0_iter7_reg;
reg   [1:0] tmp_s_reg_843_pp0_iter8_reg;
reg   [1:0] tmp_s_reg_843_pp0_iter9_reg;
reg   [1:0] tmp_s_reg_843_pp0_iter10_reg;
reg   [63:0] last_activations_load_reg_849;
reg   [63:0] last_activations_load_reg_849_pp0_iter3_reg;
reg   [63:0] output_difference_0_load_reg_869;
reg   [63:0] output_difference_1_load_reg_914;
reg   [63:0] output_difference_2_load_reg_919;
reg   [63:0] output_difference_3_load_reg_924;
reg   [63:0] output_difference_4_load_reg_929;
reg   [63:0] output_difference_5_load_reg_934;
reg   [63:0] output_difference_6_load_reg_939;
reg   [63:0] output_difference_7_load_reg_944;
reg   [63:0] output_difference_0_load_1_reg_949;
reg   [63:0] output_difference_1_load_1_reg_954;
reg   [63:0] output_difference_2_load_1_reg_959;
reg   [63:0] output_difference_3_load_1_reg_964;
reg   [63:0] output_difference_4_load_1_reg_969;
reg   [63:0] output_difference_5_load_1_reg_974;
reg   [63:0] output_difference_6_load_1_reg_979;
reg   [63:0] output_difference_7_load_1_reg_984;
reg   [63:0] mul_reg_989;
reg   [63:0] mul_1_reg_994;
reg   [63:0] mul_2_reg_999;
reg   [63:0] mul_3_reg_1004;
reg   [63:0] mul_4_reg_1009;
reg   [63:0] mul_5_reg_1014;
reg   [63:0] mul_6_reg_1019;
reg   [63:0] mul_7_reg_1024;
reg   [63:0] mul_8_reg_1029;
reg   [63:0] mul_9_reg_1034;
reg   [63:0] mul_10_reg_1039;
reg   [63:0] mul_11_reg_1044;
reg   [63:0] mul_12_reg_1049;
reg   [63:0] mul_13_reg_1054;
reg   [63:0] mul_14_reg_1059;
reg   [63:0] mul_15_reg_1064;
wire   [63:0] zext_ln93_fu_648_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln92_fu_663_p1;
wire   [63:0] zext_ln95_1_fu_712_p1;
wire   [63:0] zext_ln95_fu_730_p1;
wire   [63:0] zext_ln95_2_fu_750_p1;
reg   [6:0] j_fu_88;
wire   [6:0] add_ln94_fu_689_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_92;
wire   [6:0] select_ln93_fu_640_p3;
reg   [8:0] indvar_flatten_fu_96;
wire   [8:0] add_ln93_fu_601_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
reg    last_activations_ce0_local;
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
reg    delta_weights2_0_we1_local;
reg    delta_weights2_0_ce1_local;
reg    delta_weights2_0_we0_local;
reg    delta_weights2_0_ce0_local;
reg    delta_weights2_1_we1_local;
reg    delta_weights2_1_ce1_local;
reg    delta_weights2_1_we0_local;
reg    delta_weights2_1_ce0_local;
reg    delta_weights2_2_we1_local;
reg    delta_weights2_2_ce1_local;
reg    delta_weights2_2_we0_local;
reg    delta_weights2_2_ce0_local;
reg    delta_weights2_3_we1_local;
reg    delta_weights2_3_ce1_local;
reg    delta_weights2_3_we0_local;
reg    delta_weights2_3_ce0_local;
reg    delta_weights2_4_we1_local;
reg    delta_weights2_4_ce1_local;
reg    delta_weights2_4_we0_local;
reg    delta_weights2_4_ce0_local;
reg    delta_weights2_5_we1_local;
reg    delta_weights2_5_ce1_local;
reg    delta_weights2_5_we0_local;
reg    delta_weights2_5_ce0_local;
reg    delta_weights2_6_we1_local;
reg    delta_weights2_6_ce1_local;
reg    delta_weights2_6_we0_local;
reg    delta_weights2_6_ce0_local;
reg    delta_weights2_7_we1_local;
reg    delta_weights2_7_ce1_local;
reg    delta_weights2_7_we0_local;
reg    delta_weights2_7_ce0_local;
wire   [0:0] tmp_fu_618_p3;
wire   [6:0] add_ln93_1_fu_634_p2;
wire   [6:0] select_ln92_fu_626_p3;
wire   [2:0] or_ln_fu_705_p3;
wire   [8:0] add_ln_fu_724_p3;
wire   [8:0] add_ln95_1_fu_742_p4;
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
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 j_fu_88 = 7'd0;
#0 i_fu_92 = 7'd0;
#0 indvar_flatten_fu_96 = 9'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter10_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
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
        if ((ap_loop_init == 1'b1)) begin
            i_fu_92 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_92 <= select_ln93_fu_640_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln93_fu_595_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_96 <= add_ln93_fu_601_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_96 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_88 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_88 <= add_ln94_fu_689_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        last_activations_load_reg_849 <= last_activations_q0;
        last_activations_load_reg_849_pp0_iter3_reg <= last_activations_load_reg_849;
        lshr_ln_reg_792_pp0_iter2_reg <= lshr_ln_reg_792;
        lshr_ln_reg_792_pp0_iter3_reg <= lshr_ln_reg_792_pp0_iter2_reg;
        lshr_ln_reg_792_pp0_iter4_reg <= lshr_ln_reg_792_pp0_iter3_reg;
        lshr_ln_reg_792_pp0_iter5_reg <= lshr_ln_reg_792_pp0_iter4_reg;
        lshr_ln_reg_792_pp0_iter6_reg <= lshr_ln_reg_792_pp0_iter5_reg;
        lshr_ln_reg_792_pp0_iter7_reg <= lshr_ln_reg_792_pp0_iter6_reg;
        lshr_ln_reg_792_pp0_iter8_reg <= lshr_ln_reg_792_pp0_iter7_reg;
        lshr_ln_reg_792_pp0_iter9_reg <= lshr_ln_reg_792_pp0_iter8_reg;
        mul_10_reg_1039 <= grp_fu_3295_p_dout0;
        mul_11_reg_1044 <= grp_fu_3299_p_dout0;
        mul_12_reg_1049 <= grp_fu_3303_p_dout0;
        mul_13_reg_1054 <= grp_fu_3307_p_dout0;
        mul_14_reg_1059 <= grp_fu_3311_p_dout0;
        mul_15_reg_1064 <= grp_fu_3315_p_dout0;
        mul_1_reg_994 <= grp_fu_3251_p_dout0;
        mul_2_reg_999 <= grp_fu_3263_p_dout0;
        mul_3_reg_1004 <= grp_fu_3267_p_dout0;
        mul_4_reg_1009 <= grp_fu_3271_p_dout0;
        mul_5_reg_1014 <= grp_fu_3275_p_dout0;
        mul_6_reg_1019 <= grp_fu_3279_p_dout0;
        mul_7_reg_1024 <= grp_fu_3283_p_dout0;
        mul_8_reg_1029 <= grp_fu_3287_p_dout0;
        mul_9_reg_1034 <= grp_fu_3291_p_dout0;
        mul_reg_989 <= grp_fu_3247_p_dout0;
        tmp_s_reg_843_pp0_iter10_reg <= tmp_s_reg_843_pp0_iter9_reg;
        tmp_s_reg_843_pp0_iter2_reg <= tmp_s_reg_843;
        tmp_s_reg_843_pp0_iter3_reg <= tmp_s_reg_843_pp0_iter2_reg;
        tmp_s_reg_843_pp0_iter4_reg <= tmp_s_reg_843_pp0_iter3_reg;
        tmp_s_reg_843_pp0_iter5_reg <= tmp_s_reg_843_pp0_iter4_reg;
        tmp_s_reg_843_pp0_iter6_reg <= tmp_s_reg_843_pp0_iter5_reg;
        tmp_s_reg_843_pp0_iter7_reg <= tmp_s_reg_843_pp0_iter6_reg;
        tmp_s_reg_843_pp0_iter8_reg <= tmp_s_reg_843_pp0_iter7_reg;
        tmp_s_reg_843_pp0_iter9_reg <= tmp_s_reg_843_pp0_iter8_reg;
        trunc_ln95_reg_802_pp0_iter10_reg <= trunc_ln95_reg_802_pp0_iter9_reg;
        trunc_ln95_reg_802_pp0_iter2_reg <= trunc_ln95_reg_802;
        trunc_ln95_reg_802_pp0_iter3_reg <= trunc_ln95_reg_802_pp0_iter2_reg;
        trunc_ln95_reg_802_pp0_iter4_reg <= trunc_ln95_reg_802_pp0_iter3_reg;
        trunc_ln95_reg_802_pp0_iter5_reg <= trunc_ln95_reg_802_pp0_iter4_reg;
        trunc_ln95_reg_802_pp0_iter6_reg <= trunc_ln95_reg_802_pp0_iter5_reg;
        trunc_ln95_reg_802_pp0_iter7_reg <= trunc_ln95_reg_802_pp0_iter6_reg;
        trunc_ln95_reg_802_pp0_iter8_reg <= trunc_ln95_reg_802_pp0_iter7_reg;
        trunc_ln95_reg_802_pp0_iter9_reg <= trunc_ln95_reg_802_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln_reg_792 <= {{select_ln92_fu_626_p3[5:3]}};
        tmp_s_reg_843 <= {{select_ln92_fu_626_p3[5:4]}};
        trunc_ln95_reg_802 <= trunc_ln95_fu_675_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        output_difference_0_load_1_reg_949 <= output_difference_0_q0;
        output_difference_1_load_1_reg_954 <= output_difference_1_q0;
        output_difference_2_load_1_reg_959 <= output_difference_2_q0;
        output_difference_3_load_1_reg_964 <= output_difference_3_q0;
        output_difference_4_load_1_reg_969 <= output_difference_4_q0;
        output_difference_5_load_1_reg_974 <= output_difference_5_q0;
        output_difference_6_load_1_reg_979 <= output_difference_6_q0;
        output_difference_7_load_1_reg_984 <= output_difference_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_0_load_reg_869 <= output_difference_0_q1;
        output_difference_1_load_reg_914 <= output_difference_1_q1;
        output_difference_2_load_reg_919 <= output_difference_2_q1;
        output_difference_3_load_reg_924 <= output_difference_3_q1;
        output_difference_4_load_reg_929 <= output_difference_4_q1;
        output_difference_5_load_reg_934 <= output_difference_5_q1;
        output_difference_6_load_reg_939 <= output_difference_6_q1;
        output_difference_7_load_reg_944 <= output_difference_7_q1;
    end
end
always @ (*) begin
    if (((icmp_ln93_fu_595_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter10_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_0_ce0_local = 1'b1;
    end else begin
        delta_weights2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_0_ce1_local = 1'b1;
    end else begin
        delta_weights2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_0_we0_local = 1'b1;
    end else begin
        delta_weights2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_0_we1_local = 1'b1;
    end else begin
        delta_weights2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_1_ce0_local = 1'b1;
    end else begin
        delta_weights2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_1_ce1_local = 1'b1;
    end else begin
        delta_weights2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_1_we0_local = 1'b1;
    end else begin
        delta_weights2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_1_we1_local = 1'b1;
    end else begin
        delta_weights2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_2_ce0_local = 1'b1;
    end else begin
        delta_weights2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_2_ce1_local = 1'b1;
    end else begin
        delta_weights2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_2_we0_local = 1'b1;
    end else begin
        delta_weights2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_2_we1_local = 1'b1;
    end else begin
        delta_weights2_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_3_ce0_local = 1'b1;
    end else begin
        delta_weights2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_3_ce1_local = 1'b1;
    end else begin
        delta_weights2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_3_we0_local = 1'b1;
    end else begin
        delta_weights2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_3_we1_local = 1'b1;
    end else begin
        delta_weights2_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_4_ce0_local = 1'b1;
    end else begin
        delta_weights2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_4_ce1_local = 1'b1;
    end else begin
        delta_weights2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_4_we0_local = 1'b1;
    end else begin
        delta_weights2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_4_we1_local = 1'b1;
    end else begin
        delta_weights2_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_5_ce0_local = 1'b1;
    end else begin
        delta_weights2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_5_ce1_local = 1'b1;
    end else begin
        delta_weights2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_5_we0_local = 1'b1;
    end else begin
        delta_weights2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_5_we1_local = 1'b1;
    end else begin
        delta_weights2_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_6_ce0_local = 1'b1;
    end else begin
        delta_weights2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_6_ce1_local = 1'b1;
    end else begin
        delta_weights2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_6_we0_local = 1'b1;
    end else begin
        delta_weights2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_6_we1_local = 1'b1;
    end else begin
        delta_weights2_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_7_ce0_local = 1'b1;
    end else begin
        delta_weights2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_7_ce1_local = 1'b1;
    end else begin
        delta_weights2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        delta_weights2_7_we0_local = 1'b1;
    end else begin
        delta_weights2_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        delta_weights2_7_we1_local = 1'b1;
    end else begin
        delta_weights2_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_ce0_local = 1'b1;
    end else begin
        last_activations_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_0_ce0_local = 1'b1;
    end else begin
        output_difference_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_0_ce1_local = 1'b1;
    end else begin
        output_difference_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_1_ce0_local = 1'b1;
    end else begin
        output_difference_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_1_ce1_local = 1'b1;
    end else begin
        output_difference_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_2_ce0_local = 1'b1;
    end else begin
        output_difference_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_2_ce1_local = 1'b1;
    end else begin
        output_difference_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_3_ce0_local = 1'b1;
    end else begin
        output_difference_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_3_ce1_local = 1'b1;
    end else begin
        output_difference_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_4_ce0_local = 1'b1;
    end else begin
        output_difference_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_4_ce1_local = 1'b1;
    end else begin
        output_difference_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_5_ce0_local = 1'b1;
    end else begin
        output_difference_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_5_ce1_local = 1'b1;
    end else begin
        output_difference_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_6_ce0_local = 1'b1;
    end else begin
        output_difference_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_6_ce1_local = 1'b1;
    end else begin
        output_difference_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        output_difference_7_ce0_local = 1'b1;
    end else begin
        output_difference_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_7_ce1_local = 1'b1;
    end else begin
        output_difference_7_ce1_local = 1'b0;
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
assign add_ln93_1_fu_634_p2 = (i_fu_92 + 7'd1);
assign add_ln93_fu_601_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);
assign add_ln94_fu_689_p2 = (select_ln92_fu_626_p3 + 7'd16);
assign add_ln95_1_fu_742_p4 = {{{trunc_ln95_reg_802_pp0_iter10_reg}, {tmp_s_reg_843_pp0_iter10_reg}}, {1'd1}};
assign add_ln_fu_724_p3 = {{trunc_ln95_reg_802_pp0_iter9_reg}, {lshr_ln_reg_792_pp0_iter9_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights2_0_address0 = zext_ln95_2_fu_750_p1;
assign delta_weights2_0_address1 = zext_ln95_fu_730_p1;
assign delta_weights2_0_ce0 = delta_weights2_0_ce0_local;
assign delta_weights2_0_ce1 = delta_weights2_0_ce1_local;
assign delta_weights2_0_d0 = mul_8_reg_1029;
assign delta_weights2_0_d1 = mul_reg_989;
assign delta_weights2_0_we0 = delta_weights2_0_we0_local;
assign delta_weights2_0_we1 = delta_weights2_0_we1_local;
assign delta_weights2_1_address0 = zext_ln95_2_fu_750_p1;
assign delta_weights2_1_address1 = zext_ln95_fu_730_p1;
assign delta_weights2_1_ce0 = delta_weights2_1_ce0_local;
assign delta_weights2_1_ce1 = delta_weights2_1_ce1_local;
assign delta_weights2_1_d0 = mul_9_reg_1034;
assign delta_weights2_1_d1 = mul_1_reg_994;
assign delta_weights2_1_we0 = delta_weights2_1_we0_local;
assign delta_weights2_1_we1 = delta_weights2_1_we1_local;
assign delta_weights2_2_address0 = zext_ln95_2_fu_750_p1;
assign delta_weights2_2_address1 = zext_ln95_fu_730_p1;
assign delta_weights2_2_ce0 = delta_weights2_2_ce0_local;
assign delta_weights2_2_ce1 = delta_weights2_2_ce1_local;
assign delta_weights2_2_d0 = mul_10_reg_1039;
assign delta_weights2_2_d1 = mul_2_reg_999;
assign delta_weights2_2_we0 = delta_weights2_2_we0_local;
assign delta_weights2_2_we1 = delta_weights2_2_we1_local;
assign delta_weights2_3_address0 = zext_ln95_2_fu_750_p1;
assign delta_weights2_3_address1 = zext_ln95_fu_730_p1;
assign delta_weights2_3_ce0 = delta_weights2_3_ce0_local;
assign delta_weights2_3_ce1 = delta_weights2_3_ce1_local;
assign delta_weights2_3_d0 = mul_11_reg_1044;
assign delta_weights2_3_d1 = mul_3_reg_1004;
assign delta_weights2_3_we0 = delta_weights2_3_we0_local;
assign delta_weights2_3_we1 = delta_weights2_3_we1_local;
assign delta_weights2_4_address0 = zext_ln95_2_fu_750_p1;
assign delta_weights2_4_address1 = zext_ln95_fu_730_p1;
assign delta_weights2_4_ce0 = delta_weights2_4_ce0_local;
assign delta_weights2_4_ce1 = delta_weights2_4_ce1_local;
assign delta_weights2_4_d0 = mul_12_reg_1049;
assign delta_weights2_4_d1 = mul_4_reg_1009;
assign delta_weights2_4_we0 = delta_weights2_4_we0_local;
assign delta_weights2_4_we1 = delta_weights2_4_we1_local;
assign delta_weights2_5_address0 = zext_ln95_2_fu_750_p1;
assign delta_weights2_5_address1 = zext_ln95_fu_730_p1;
assign delta_weights2_5_ce0 = delta_weights2_5_ce0_local;
assign delta_weights2_5_ce1 = delta_weights2_5_ce1_local;
assign delta_weights2_5_d0 = mul_13_reg_1054;
assign delta_weights2_5_d1 = mul_5_reg_1014;
assign delta_weights2_5_we0 = delta_weights2_5_we0_local;
assign delta_weights2_5_we1 = delta_weights2_5_we1_local;
assign delta_weights2_6_address0 = zext_ln95_2_fu_750_p1;
assign delta_weights2_6_address1 = zext_ln95_fu_730_p1;
assign delta_weights2_6_ce0 = delta_weights2_6_ce0_local;
assign delta_weights2_6_ce1 = delta_weights2_6_ce1_local;
assign delta_weights2_6_d0 = mul_14_reg_1059;
assign delta_weights2_6_d1 = mul_6_reg_1019;
assign delta_weights2_6_we0 = delta_weights2_6_we0_local;
assign delta_weights2_6_we1 = delta_weights2_6_we1_local;
assign delta_weights2_7_address0 = zext_ln95_2_fu_750_p1;
assign delta_weights2_7_address1 = zext_ln95_fu_730_p1;
assign delta_weights2_7_ce0 = delta_weights2_7_ce0_local;
assign delta_weights2_7_ce1 = delta_weights2_7_ce1_local;
assign delta_weights2_7_d0 = mul_15_reg_1064;
assign delta_weights2_7_d1 = mul_7_reg_1024;
assign delta_weights2_7_we0 = delta_weights2_7_we0_local;
assign delta_weights2_7_we1 = delta_weights2_7_we1_local;
assign grp_fu_3247_p_ce = 1'b1;
assign grp_fu_3247_p_din0 = last_activations_load_reg_849;
assign grp_fu_3247_p_din1 = output_difference_0_load_reg_869;
assign grp_fu_3251_p_ce = 1'b1;
assign grp_fu_3251_p_din0 = last_activations_load_reg_849;
assign grp_fu_3251_p_din1 = output_difference_1_load_reg_914;
assign grp_fu_3263_p_ce = 1'b1;
assign grp_fu_3263_p_din0 = last_activations_load_reg_849;
assign grp_fu_3263_p_din1 = output_difference_2_load_reg_919;
assign grp_fu_3267_p_ce = 1'b1;
assign grp_fu_3267_p_din0 = last_activations_load_reg_849;
assign grp_fu_3267_p_din1 = output_difference_3_load_reg_924;
assign grp_fu_3271_p_ce = 1'b1;
assign grp_fu_3271_p_din0 = last_activations_load_reg_849;
assign grp_fu_3271_p_din1 = output_difference_4_load_reg_929;
assign grp_fu_3275_p_ce = 1'b1;
assign grp_fu_3275_p_din0 = last_activations_load_reg_849;
assign grp_fu_3275_p_din1 = output_difference_5_load_reg_934;
assign grp_fu_3279_p_ce = 1'b1;
assign grp_fu_3279_p_din0 = last_activations_load_reg_849;
assign grp_fu_3279_p_din1 = output_difference_6_load_reg_939;
assign grp_fu_3283_p_ce = 1'b1;
assign grp_fu_3283_p_din0 = last_activations_load_reg_849;
assign grp_fu_3283_p_din1 = output_difference_7_load_reg_944;
assign grp_fu_3287_p_ce = 1'b1;
assign grp_fu_3287_p_din0 = last_activations_load_reg_849_pp0_iter3_reg;
assign grp_fu_3287_p_din1 = output_difference_0_load_1_reg_949;
assign grp_fu_3291_p_ce = 1'b1;
assign grp_fu_3291_p_din0 = last_activations_load_reg_849_pp0_iter3_reg;
assign grp_fu_3291_p_din1 = output_difference_1_load_1_reg_954;
assign grp_fu_3295_p_ce = 1'b1;
assign grp_fu_3295_p_din0 = last_activations_load_reg_849_pp0_iter3_reg;
assign grp_fu_3295_p_din1 = output_difference_2_load_1_reg_959;
assign grp_fu_3299_p_ce = 1'b1;
assign grp_fu_3299_p_din0 = last_activations_load_reg_849_pp0_iter3_reg;
assign grp_fu_3299_p_din1 = output_difference_3_load_1_reg_964;
assign grp_fu_3303_p_ce = 1'b1;
assign grp_fu_3303_p_din0 = last_activations_load_reg_849_pp0_iter3_reg;
assign grp_fu_3303_p_din1 = output_difference_4_load_1_reg_969;
assign grp_fu_3307_p_ce = 1'b1;
assign grp_fu_3307_p_din0 = last_activations_load_reg_849_pp0_iter3_reg;
assign grp_fu_3307_p_din1 = output_difference_5_load_1_reg_974;
assign grp_fu_3311_p_ce = 1'b1;
assign grp_fu_3311_p_din0 = last_activations_load_reg_849_pp0_iter3_reg;
assign grp_fu_3311_p_din1 = output_difference_6_load_1_reg_979;
assign grp_fu_3315_p_ce = 1'b1;
assign grp_fu_3315_p_din0 = last_activations_load_reg_849_pp0_iter3_reg;
assign grp_fu_3315_p_din1 = output_difference_7_load_1_reg_984;
assign icmp_ln93_fu_595_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd256) ? 1'b1 : 1'b0);
assign last_activations_address0 = zext_ln93_fu_648_p1;
assign last_activations_ce0 = last_activations_ce0_local;
assign lshr_ln_fu_653_p4 = {{select_ln92_fu_626_p3[5:3]}};
assign or_ln_fu_705_p3 = {{tmp_s_reg_843}, {1'd1}};
assign output_difference_0_address0 = zext_ln95_1_fu_712_p1;
assign output_difference_0_address1 = zext_ln92_fu_663_p1;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_1_address0 = zext_ln95_1_fu_712_p1;
assign output_difference_1_address1 = zext_ln92_fu_663_p1;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign output_difference_2_address0 = zext_ln95_1_fu_712_p1;
assign output_difference_2_address1 = zext_ln92_fu_663_p1;
assign output_difference_2_ce0 = output_difference_2_ce0_local;
assign output_difference_2_ce1 = output_difference_2_ce1_local;
assign output_difference_3_address0 = zext_ln95_1_fu_712_p1;
assign output_difference_3_address1 = zext_ln92_fu_663_p1;
assign output_difference_3_ce0 = output_difference_3_ce0_local;
assign output_difference_3_ce1 = output_difference_3_ce1_local;
assign output_difference_4_address0 = zext_ln95_1_fu_712_p1;
assign output_difference_4_address1 = zext_ln92_fu_663_p1;
assign output_difference_4_ce0 = output_difference_4_ce0_local;
assign output_difference_4_ce1 = output_difference_4_ce1_local;
assign output_difference_5_address0 = zext_ln95_1_fu_712_p1;
assign output_difference_5_address1 = zext_ln92_fu_663_p1;
assign output_difference_5_ce0 = output_difference_5_ce0_local;
assign output_difference_5_ce1 = output_difference_5_ce1_local;
assign output_difference_6_address0 = zext_ln95_1_fu_712_p1;
assign output_difference_6_address1 = zext_ln92_fu_663_p1;
assign output_difference_6_ce0 = output_difference_6_ce0_local;
assign output_difference_6_ce1 = output_difference_6_ce1_local;
assign output_difference_7_address0 = zext_ln95_1_fu_712_p1;
assign output_difference_7_address1 = zext_ln92_fu_663_p1;
assign output_difference_7_ce0 = output_difference_7_ce0_local;
assign output_difference_7_ce1 = output_difference_7_ce1_local;
assign select_ln92_fu_626_p3 = ((tmp_fu_618_p3[0:0] == 1'b1) ? 7'd0 : j_fu_88);
assign select_ln93_fu_640_p3 = ((tmp_fu_618_p3[0:0] == 1'b1) ? add_ln93_1_fu_634_p2 : i_fu_92);
assign tmp_fu_618_p3 = j_fu_88[32'd6];
assign trunc_ln95_fu_675_p1 = select_ln93_fu_640_p3[5:0];
assign zext_ln92_fu_663_p1 = lshr_ln_fu_653_p4;
assign zext_ln93_fu_648_p1 = select_ln93_fu_640_p3;
assign zext_ln95_1_fu_712_p1 = or_ln_fu_705_p3;
assign zext_ln95_2_fu_750_p1 = add_ln95_1_fu_742_p4;
assign zext_ln95_fu_730_p1 = add_ln_fu_724_p3;
endmodule 