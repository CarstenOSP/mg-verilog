module backprop_get_delta_matrix_weights1_66_67_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights1_0_address0,delta_weights1_0_ce0,delta_weights1_0_we0,delta_weights1_0_d0,delta_weights1_0_address1,delta_weights1_0_ce1,delta_weights1_0_we1,delta_weights1_0_d1,delta_weights1_1_address0,delta_weights1_1_ce0,delta_weights1_1_we0,delta_weights1_1_d0,delta_weights1_1_address1,delta_weights1_1_ce1,delta_weights1_1_we1,delta_weights1_1_d1,delta_weights1_2_address0,delta_weights1_2_ce0,delta_weights1_2_we0,delta_weights1_2_d0,delta_weights1_2_address1,delta_weights1_2_ce1,delta_weights1_2_we1,delta_weights1_2_d1,delta_weights1_3_address0,delta_weights1_3_ce0,delta_weights1_3_we0,delta_weights1_3_d0,delta_weights1_3_address1,delta_weights1_3_ce1,delta_weights1_3_we1,delta_weights1_3_d1,output_difference_0_address0,output_difference_0_ce0,output_difference_0_q0,output_difference_0_address1,output_difference_0_ce1,output_difference_0_q1,output_difference_0_address2,output_difference_0_ce2,output_difference_0_q2,output_difference_0_address3,output_difference_0_ce3,output_difference_0_q3,output_difference_1_address0,output_difference_1_ce0,output_difference_1_q0,output_difference_1_address1,output_difference_1_ce1,output_difference_1_q1,output_difference_1_address2,output_difference_1_ce2,output_difference_1_q2,output_difference_1_address3,output_difference_1_ce3,output_difference_1_q3,output_difference_2_address0,output_difference_2_ce0,output_difference_2_q0,output_difference_2_address1,output_difference_2_ce1,output_difference_2_q1,output_difference_2_address2,output_difference_2_ce2,output_difference_2_q2,output_difference_2_address3,output_difference_2_ce3,output_difference_2_q3,output_difference_3_address0,output_difference_3_ce0,output_difference_3_q0,output_difference_3_address1,output_difference_3_ce1,output_difference_3_q1,output_difference_3_address2,output_difference_3_ce2,output_difference_3_q2,output_difference_3_address3,output_difference_3_ce3,output_difference_3_q3,training_data_0_address0,training_data_0_ce0,training_data_0_q0,training_data_1_address0,training_data_1_ce0,training_data_1_q0,training_data_2_address0,training_data_2_ce0,training_data_2_q0,training_data_3_address0,training_data_3_ce0,training_data_3_q0,idx,grp_fu_3076_p_din0,grp_fu_3076_p_din1,grp_fu_3076_p_dout0,grp_fu_3076_p_ce,grp_fu_3080_p_din0,grp_fu_3080_p_din1,grp_fu_3080_p_dout0,grp_fu_3080_p_ce,grp_fu_3084_p_din0,grp_fu_3084_p_din1,grp_fu_3084_p_dout0,grp_fu_3084_p_ce,grp_fu_3088_p_din0,grp_fu_3088_p_din1,grp_fu_3088_p_dout0,grp_fu_3088_p_ce,grp_fu_3092_p_din0,grp_fu_3092_p_din1,grp_fu_3092_p_dout0,grp_fu_3092_p_ce,grp_fu_3096_p_din0,grp_fu_3096_p_din1,grp_fu_3096_p_dout0,grp_fu_3096_p_ce,grp_fu_3100_p_din0,grp_fu_3100_p_din1,grp_fu_3100_p_dout0,grp_fu_3100_p_ce,grp_fu_3104_p_din0,grp_fu_3104_p_din1,grp_fu_3104_p_dout0,grp_fu_3104_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] delta_weights1_0_address0;
output   delta_weights1_0_ce0;
output   delta_weights1_0_we0;
output  [63:0] delta_weights1_0_d0;
output  [7:0] delta_weights1_0_address1;
output   delta_weights1_0_ce1;
output   delta_weights1_0_we1;
output  [63:0] delta_weights1_0_d1;
output  [7:0] delta_weights1_1_address0;
output   delta_weights1_1_ce0;
output   delta_weights1_1_we0;
output  [63:0] delta_weights1_1_d0;
output  [7:0] delta_weights1_1_address1;
output   delta_weights1_1_ce1;
output   delta_weights1_1_we1;
output  [63:0] delta_weights1_1_d1;
output  [7:0] delta_weights1_2_address0;
output   delta_weights1_2_ce0;
output   delta_weights1_2_we0;
output  [63:0] delta_weights1_2_d0;
output  [7:0] delta_weights1_2_address1;
output   delta_weights1_2_ce1;
output   delta_weights1_2_we1;
output  [63:0] delta_weights1_2_d1;
output  [7:0] delta_weights1_3_address0;
output   delta_weights1_3_ce0;
output   delta_weights1_3_we0;
output  [63:0] delta_weights1_3_d0;
output  [7:0] delta_weights1_3_address1;
output   delta_weights1_3_ce1;
output   delta_weights1_3_we1;
output  [63:0] delta_weights1_3_d1;
output  [3:0] output_difference_0_address0;
output   output_difference_0_ce0;
input  [63:0] output_difference_0_q0;
output  [3:0] output_difference_0_address1;
output   output_difference_0_ce1;
input  [63:0] output_difference_0_q1;
output  [3:0] output_difference_0_address2;
output   output_difference_0_ce2;
input  [63:0] output_difference_0_q2;
output  [3:0] output_difference_0_address3;
output   output_difference_0_ce3;
input  [63:0] output_difference_0_q3;
output  [3:0] output_difference_1_address0;
output   output_difference_1_ce0;
input  [63:0] output_difference_1_q0;
output  [3:0] output_difference_1_address1;
output   output_difference_1_ce1;
input  [63:0] output_difference_1_q1;
output  [3:0] output_difference_1_address2;
output   output_difference_1_ce2;
input  [63:0] output_difference_1_q2;
output  [3:0] output_difference_1_address3;
output   output_difference_1_ce3;
input  [63:0] output_difference_1_q3;
output  [3:0] output_difference_2_address0;
output   output_difference_2_ce0;
input  [63:0] output_difference_2_q0;
output  [3:0] output_difference_2_address1;
output   output_difference_2_ce1;
input  [63:0] output_difference_2_q1;
output  [3:0] output_difference_2_address2;
output   output_difference_2_ce2;
input  [63:0] output_difference_2_q2;
output  [3:0] output_difference_2_address3;
output   output_difference_2_ce3;
input  [63:0] output_difference_2_q3;
output  [3:0] output_difference_3_address0;
output   output_difference_3_ce0;
input  [63:0] output_difference_3_q0;
output  [3:0] output_difference_3_address1;
output   output_difference_3_ce1;
input  [63:0] output_difference_3_q1;
output  [3:0] output_difference_3_address2;
output   output_difference_3_ce2;
input  [63:0] output_difference_3_q2;
output  [3:0] output_difference_3_address3;
output   output_difference_3_ce3;
input  [63:0] output_difference_3_q3;
output  [9:0] training_data_0_address0;
output   training_data_0_ce0;
input  [63:0] training_data_0_q0;
output  [9:0] training_data_1_address0;
output   training_data_1_ce0;
input  [63:0] training_data_1_q0;
output  [9:0] training_data_2_address0;
output   training_data_2_ce0;
input  [63:0] training_data_2_q0;
output  [9:0] training_data_3_address0;
output   training_data_3_ce0;
input  [63:0] training_data_3_q0;
input  [11:0] idx;
output  [63:0] grp_fu_3076_p_din0;
output  [63:0] grp_fu_3076_p_din1;
input  [63:0] grp_fu_3076_p_dout0;
output   grp_fu_3076_p_ce;
output  [63:0] grp_fu_3080_p_din0;
output  [63:0] grp_fu_3080_p_din1;
input  [63:0] grp_fu_3080_p_dout0;
output   grp_fu_3080_p_ce;
output  [63:0] grp_fu_3084_p_din0;
output  [63:0] grp_fu_3084_p_din1;
input  [63:0] grp_fu_3084_p_dout0;
output   grp_fu_3084_p_ce;
output  [63:0] grp_fu_3088_p_din0;
output  [63:0] grp_fu_3088_p_din1;
input  [63:0] grp_fu_3088_p_dout0;
output   grp_fu_3088_p_ce;
output  [63:0] grp_fu_3092_p_din0;
output  [63:0] grp_fu_3092_p_din1;
input  [63:0] grp_fu_3092_p_dout0;
output   grp_fu_3092_p_ce;
output  [63:0] grp_fu_3096_p_din0;
output  [63:0] grp_fu_3096_p_din1;
input  [63:0] grp_fu_3096_p_dout0;
output   grp_fu_3096_p_ce;
output  [63:0] grp_fu_3100_p_din0;
output  [63:0] grp_fu_3100_p_din1;
input  [63:0] grp_fu_3100_p_dout0;
output   grp_fu_3100_p_ce;
output  [63:0] grp_fu_3104_p_din0;
output  [63:0] grp_fu_3104_p_din1;
input  [63:0] grp_fu_3104_p_dout0;
output   grp_fu_3104_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln113_reg_942;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_578;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_584;
reg   [63:0] reg_590;
reg   [63:0] reg_596;
wire   [0:0] icmp_ln113_fu_620_p2;
reg   [0:0] icmp_ln113_reg_942_pp0_iter1_reg;
reg   [0:0] icmp_ln113_reg_942_pp0_iter2_reg;
reg   [0:0] icmp_ln113_reg_942_pp0_iter3_reg;
reg   [0:0] icmp_ln113_reg_942_pp0_iter4_reg;
wire   [6:0] select_ln112_fu_646_p3;
reg   [6:0] select_ln112_reg_946;
wire   [3:0] select_ln113_fu_660_p3;
reg   [3:0] select_ln113_reg_951;
reg   [3:0] select_ln113_reg_951_pp0_iter1_reg;
reg   [3:0] select_ln113_reg_951_pp0_iter2_reg;
reg   [3:0] select_ln113_reg_951_pp0_iter3_reg;
reg   [3:0] select_ln113_reg_951_pp0_iter4_reg;
reg   [3:0] select_ln113_reg_951_pp0_iter5_reg;
wire   [3:0] lshr_ln_fu_668_p4;
reg   [3:0] lshr_ln_reg_960;
reg   [3:0] lshr_ln_reg_960_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_960_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_960_pp0_iter3_reg;
reg   [3:0] lshr_ln_reg_960_pp0_iter4_reg;
wire   [2:0] tmp_56_fu_686_p4;
reg   [2:0] tmp_56_reg_985;
reg   [2:0] tmp_56_reg_985_pp0_iter1_reg;
reg   [2:0] tmp_56_reg_985_pp0_iter2_reg;
reg   [2:0] tmp_56_reg_985_pp0_iter3_reg;
reg   [2:0] tmp_56_reg_985_pp0_iter4_reg;
reg   [2:0] tmp_56_reg_985_pp0_iter5_reg;
wire   [1:0] tmp_57_fu_712_p4;
reg   [1:0] tmp_57_reg_1010;
reg   [1:0] tmp_57_reg_1010_pp0_iter1_reg;
reg   [1:0] tmp_57_reg_1010_pp0_iter2_reg;
reg   [1:0] tmp_57_reg_1010_pp0_iter3_reg;
reg   [1:0] tmp_57_reg_1010_pp0_iter4_reg;
reg   [1:0] tmp_57_reg_1010_pp0_iter5_reg;
wire   [0:0] tmp_46_fu_722_p3;
reg   [0:0] tmp_46_reg_1016;
reg   [0:0] tmp_46_reg_1016_pp0_iter1_reg;
reg   [0:0] tmp_46_reg_1016_pp0_iter2_reg;
reg   [0:0] tmp_46_reg_1016_pp0_iter3_reg;
reg   [0:0] tmp_46_reg_1016_pp0_iter4_reg;
reg   [0:0] tmp_46_reg_1016_pp0_iter5_reg;
wire   [1:0] empty_fu_782_p1;
reg   [1:0] empty_reg_1061;
reg   [63:0] output_difference_0_load_reg_1086;
reg   [63:0] output_difference_1_load_reg_1091;
reg   [63:0] output_difference_2_load_reg_1096;
reg   [63:0] output_difference_3_load_reg_1101;
reg   [63:0] output_difference_0_load_4_reg_1106;
reg   [63:0] output_difference_1_load_4_reg_1111;
reg   [63:0] output_difference_2_load_4_reg_1116;
reg   [63:0] output_difference_3_load_4_reg_1121;
reg   [63:0] output_difference_0_load_5_reg_1126;
reg   [63:0] output_difference_0_load_5_reg_1126_pp0_iter1_reg;
reg   [63:0] output_difference_1_load_5_reg_1131;
reg   [63:0] output_difference_1_load_5_reg_1131_pp0_iter1_reg;
reg   [63:0] output_difference_2_load_5_reg_1136;
reg   [63:0] output_difference_2_load_5_reg_1136_pp0_iter1_reg;
reg   [63:0] output_difference_3_load_5_reg_1141;
reg   [63:0] output_difference_3_load_5_reg_1141_pp0_iter1_reg;
reg   [63:0] output_difference_0_load_6_reg_1146;
reg   [63:0] output_difference_0_load_6_reg_1146_pp0_iter1_reg;
reg   [63:0] output_difference_1_load_6_reg_1151;
reg   [63:0] output_difference_1_load_6_reg_1151_pp0_iter1_reg;
reg   [63:0] output_difference_2_load_6_reg_1156;
reg   [63:0] output_difference_2_load_6_reg_1156_pp0_iter1_reg;
reg   [63:0] output_difference_3_load_6_reg_1161;
reg   [63:0] output_difference_3_load_6_reg_1161_pp0_iter1_reg;
wire   [63:0] tmp_fu_830_p11;
reg   [63:0] tmp_reg_1166;
reg   [63:0] mul_4_reg_1178;
reg   [63:0] mul_5_reg_1183;
reg   [63:0] mul_6_reg_1188;
reg   [63:0] mul_7_reg_1193;
reg   [63:0] mul_12_reg_1198;
reg   [63:0] mul_13_reg_1203;
reg   [63:0] mul_14_reg_1208;
reg   [63:0] mul_15_reg_1213;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln112_fu_678_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln115_1_fu_704_p1;
wire   [63:0] zext_ln115_3_fu_740_p1;
wire   [63:0] zext_ln115_5_fu_756_p1;
wire   [63:0] p_cast_fu_796_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln115_fu_859_p1;
wire   [63:0] zext_ln115_2_fu_875_p1;
wire   [63:0] zext_ln115_4_fu_892_p1;
wire   [63:0] zext_ln115_6_fu_908_p1;
reg   [6:0] j_fu_116;
wire   [6:0] add_ln114_fu_804_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [3:0] i_fu_120;
reg   [3:0] ap_sig_allocacmp_i_load;
reg   [5:0] indvar_flatten_fu_124;
wire   [5:0] add_ln113_fu_626_p2;
reg   [5:0] ap_sig_allocacmp_indvar_flatten_load;
reg    output_difference_0_ce3_local;
reg    output_difference_0_ce2_local;
reg    output_difference_0_ce1_local;
reg    output_difference_0_ce0_local;
reg    output_difference_1_ce3_local;
reg    output_difference_1_ce2_local;
reg    output_difference_1_ce1_local;
reg    output_difference_1_ce0_local;
reg    output_difference_2_ce3_local;
reg    output_difference_2_ce2_local;
reg    output_difference_2_ce1_local;
reg    output_difference_2_ce0_local;
reg    output_difference_3_ce3_local;
reg    output_difference_3_ce2_local;
reg    output_difference_3_ce1_local;
reg    output_difference_3_ce0_local;
reg    training_data_0_ce0_local;
reg    training_data_1_ce0_local;
reg    training_data_2_ce0_local;
reg    training_data_3_ce0_local;
reg    delta_weights1_0_we1_local;
reg   [63:0] delta_weights1_0_d1_local;
reg    delta_weights1_0_ce1_local;
reg   [7:0] delta_weights1_0_address1_local;
reg    delta_weights1_0_we0_local;
reg   [63:0] delta_weights1_0_d0_local;
reg    delta_weights1_0_ce0_local;
reg   [7:0] delta_weights1_0_address0_local;
reg    delta_weights1_1_we1_local;
reg   [63:0] delta_weights1_1_d1_local;
reg    delta_weights1_1_ce1_local;
reg   [7:0] delta_weights1_1_address1_local;
reg    delta_weights1_1_we0_local;
reg   [63:0] delta_weights1_1_d0_local;
reg    delta_weights1_1_ce0_local;
reg   [7:0] delta_weights1_1_address0_local;
reg    delta_weights1_2_we1_local;
reg   [63:0] delta_weights1_2_d1_local;
reg    delta_weights1_2_ce1_local;
reg   [7:0] delta_weights1_2_address1_local;
reg    delta_weights1_2_we0_local;
reg   [63:0] delta_weights1_2_d0_local;
reg    delta_weights1_2_ce0_local;
reg   [7:0] delta_weights1_2_address0_local;
reg    delta_weights1_3_we1_local;
reg   [63:0] delta_weights1_3_d1_local;
reg    delta_weights1_3_ce1_local;
reg   [7:0] delta_weights1_3_address1_local;
reg    delta_weights1_3_we0_local;
reg   [63:0] delta_weights1_3_d0_local;
reg    delta_weights1_3_ce0_local;
reg   [7:0] delta_weights1_3_address0_local;
reg   [63:0] grp_fu_546_p1;
reg   [63:0] grp_fu_550_p1;
reg   [63:0] grp_fu_554_p1;
reg   [63:0] grp_fu_558_p1;
reg   [63:0] grp_fu_562_p1;
reg   [63:0] grp_fu_566_p1;
reg   [63:0] grp_fu_570_p1;
reg   [63:0] grp_fu_574_p1;
wire   [0:0] tmp_45_fu_638_p3;
wire   [3:0] add_ln113_1_fu_654_p2;
wire   [3:0] or_ln_fu_696_p3;
wire   [3:0] or_ln115_1_fu_730_p4;
wire   [3:0] or_ln115_2_fu_748_p3;
wire   [11:0] zext_ln113_fu_774_p1;
wire   [11:0] p_sum_fu_777_p2;
wire   [9:0] tmp_s_fu_786_p4;
wire   [63:0] tmp_fu_830_p2;
wire   [63:0] tmp_fu_830_p4;
wire   [63:0] tmp_fu_830_p6;
wire   [63:0] tmp_fu_830_p8;
wire   [63:0] tmp_fu_830_p9;
wire   [7:0] add_ln_fu_853_p3;
wire   [7:0] add_ln115_1_fu_867_p4;
wire   [7:0] add_ln115_2_fu_883_p5;
wire   [7:0] add_ln115_3_fu_900_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter5_stage0;
reg    ap_idle_pp0_0to4;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to6;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_fu_830_p1;
wire   [1:0] tmp_fu_830_p3;
wire  signed [1:0] tmp_fu_830_p5;
wire  signed [1:0] tmp_fu_830_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_fu_116 = 7'd0;
#0 i_fu_120 = 4'd0;
#0 indvar_flatten_fu_124 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U385(.din0(tmp_fu_830_p2),.din1(tmp_fu_830_p4),.din2(tmp_fu_830_p6),.din3(tmp_fu_830_p8),.def(tmp_fu_830_p9),.sel(empty_reg_1061),.dout(tmp_fu_830_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter6 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_620_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_120 <= select_ln113_fu_660_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_120 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln113_fu_620_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_124 <= add_ln113_fu_626_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_124 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_116 <= 7'd0;
    end else if (((icmp_ln113_reg_942 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_116 <= add_ln114_fu_804_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_reg_1061 <= empty_fu_782_p1;
        output_difference_0_load_5_reg_1126_pp0_iter1_reg <= output_difference_0_load_5_reg_1126;
        output_difference_0_load_6_reg_1146_pp0_iter1_reg <= output_difference_0_load_6_reg_1146;
        output_difference_1_load_5_reg_1131_pp0_iter1_reg <= output_difference_1_load_5_reg_1131;
        output_difference_1_load_6_reg_1151_pp0_iter1_reg <= output_difference_1_load_6_reg_1151;
        output_difference_2_load_5_reg_1136_pp0_iter1_reg <= output_difference_2_load_5_reg_1136;
        output_difference_2_load_6_reg_1156_pp0_iter1_reg <= output_difference_2_load_6_reg_1156;
        output_difference_3_load_5_reg_1141_pp0_iter1_reg <= output_difference_3_load_5_reg_1141;
        output_difference_3_load_6_reg_1161_pp0_iter1_reg <= output_difference_3_load_6_reg_1161;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln113_reg_942 <= icmp_ln113_fu_620_p2;
        icmp_ln113_reg_942_pp0_iter1_reg <= icmp_ln113_reg_942;
        icmp_ln113_reg_942_pp0_iter2_reg <= icmp_ln113_reg_942_pp0_iter1_reg;
        icmp_ln113_reg_942_pp0_iter3_reg <= icmp_ln113_reg_942_pp0_iter2_reg;
        icmp_ln113_reg_942_pp0_iter4_reg <= icmp_ln113_reg_942_pp0_iter3_reg;
        lshr_ln_reg_960 <= {{select_ln112_fu_646_p3[5:2]}};
        lshr_ln_reg_960_pp0_iter1_reg <= lshr_ln_reg_960;
        lshr_ln_reg_960_pp0_iter2_reg <= lshr_ln_reg_960_pp0_iter1_reg;
        lshr_ln_reg_960_pp0_iter3_reg <= lshr_ln_reg_960_pp0_iter2_reg;
        lshr_ln_reg_960_pp0_iter4_reg <= lshr_ln_reg_960_pp0_iter3_reg;
        select_ln112_reg_946 <= select_ln112_fu_646_p3;
        select_ln113_reg_951 <= select_ln113_fu_660_p3;
        select_ln113_reg_951_pp0_iter1_reg <= select_ln113_reg_951;
        select_ln113_reg_951_pp0_iter2_reg <= select_ln113_reg_951_pp0_iter1_reg;
        select_ln113_reg_951_pp0_iter3_reg <= select_ln113_reg_951_pp0_iter2_reg;
        select_ln113_reg_951_pp0_iter4_reg <= select_ln113_reg_951_pp0_iter3_reg;
        select_ln113_reg_951_pp0_iter5_reg <= select_ln113_reg_951_pp0_iter4_reg;
        tmp_46_reg_1016 <= select_ln112_fu_646_p3[32'd2];
        tmp_46_reg_1016_pp0_iter1_reg <= tmp_46_reg_1016;
        tmp_46_reg_1016_pp0_iter2_reg <= tmp_46_reg_1016_pp0_iter1_reg;
        tmp_46_reg_1016_pp0_iter3_reg <= tmp_46_reg_1016_pp0_iter2_reg;
        tmp_46_reg_1016_pp0_iter4_reg <= tmp_46_reg_1016_pp0_iter3_reg;
        tmp_46_reg_1016_pp0_iter5_reg <= tmp_46_reg_1016_pp0_iter4_reg;
        tmp_56_reg_985 <= {{select_ln112_fu_646_p3[5:3]}};
        tmp_56_reg_985_pp0_iter1_reg <= tmp_56_reg_985;
        tmp_56_reg_985_pp0_iter2_reg <= tmp_56_reg_985_pp0_iter1_reg;
        tmp_56_reg_985_pp0_iter3_reg <= tmp_56_reg_985_pp0_iter2_reg;
        tmp_56_reg_985_pp0_iter4_reg <= tmp_56_reg_985_pp0_iter3_reg;
        tmp_56_reg_985_pp0_iter5_reg <= tmp_56_reg_985_pp0_iter4_reg;
        tmp_57_reg_1010 <= {{select_ln112_fu_646_p3[5:4]}};
        tmp_57_reg_1010_pp0_iter1_reg <= tmp_57_reg_1010;
        tmp_57_reg_1010_pp0_iter2_reg <= tmp_57_reg_1010_pp0_iter1_reg;
        tmp_57_reg_1010_pp0_iter3_reg <= tmp_57_reg_1010_pp0_iter2_reg;
        tmp_57_reg_1010_pp0_iter4_reg <= tmp_57_reg_1010_pp0_iter3_reg;
        tmp_57_reg_1010_pp0_iter5_reg <= tmp_57_reg_1010_pp0_iter4_reg;
        tmp_reg_1166 <= tmp_fu_830_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_12_reg_1198 <= grp_fu_3092_p_dout0;
        mul_13_reg_1203 <= grp_fu_3096_p_dout0;
        mul_14_reg_1208 <= grp_fu_3100_p_dout0;
        mul_15_reg_1213 <= grp_fu_3104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_4_reg_1178 <= grp_fu_3092_p_dout0;
        mul_5_reg_1183 <= grp_fu_3096_p_dout0;
        mul_6_reg_1188 <= grp_fu_3100_p_dout0;
        mul_7_reg_1193 <= grp_fu_3104_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        output_difference_0_load_4_reg_1106 <= output_difference_0_q2;
        output_difference_0_load_5_reg_1126 <= output_difference_0_q1;
        output_difference_0_load_6_reg_1146 <= output_difference_0_q0;
        output_difference_0_load_reg_1086 <= output_difference_0_q3;
        output_difference_1_load_4_reg_1111 <= output_difference_1_q2;
        output_difference_1_load_5_reg_1131 <= output_difference_1_q1;
        output_difference_1_load_6_reg_1151 <= output_difference_1_q0;
        output_difference_1_load_reg_1091 <= output_difference_1_q3;
        output_difference_2_load_4_reg_1116 <= output_difference_2_q2;
        output_difference_2_load_5_reg_1136 <= output_difference_2_q1;
        output_difference_2_load_6_reg_1156 <= output_difference_2_q0;
        output_difference_2_load_reg_1096 <= output_difference_2_q3;
        output_difference_3_load_4_reg_1121 <= output_difference_3_q2;
        output_difference_3_load_5_reg_1141 <= output_difference_3_q1;
        output_difference_3_load_6_reg_1161 <= output_difference_3_q0;
        output_difference_3_load_reg_1101 <= output_difference_3_q3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_578 <= grp_fu_3076_p_dout0;
        reg_584 <= grp_fu_3080_p_dout0;
        reg_590 <= grp_fu_3084_p_dout0;
        reg_596 <= grp_fu_3088_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln113_reg_942 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln113_reg_942_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter5_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to4 = 1'b1;
    end else begin
        ap_idle_pp0_0to4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to6 = 1'b1;
    end else begin
        ap_idle_pp0_1to6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 4'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_120;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_124;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_0_address0_local = zext_ln115_6_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_0_address0_local = zext_ln115_4_fu_892_p1;
    end else begin
        delta_weights1_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_0_address1_local = zext_ln115_2_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_0_address1_local = zext_ln115_fu_859_p1;
        end else begin
            delta_weights1_0_address1_local = 'bx;
        end
    end else begin
        delta_weights1_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_ce0_local = 1'b1;
    end else begin
        delta_weights1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_ce1_local = 1'b1;
    end else begin
        delta_weights1_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_0_d0_local = mul_12_reg_1198;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_0_d0_local = reg_578;
    end else begin
        delta_weights1_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_0_d1_local = mul_4_reg_1178;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_0_d1_local = reg_578;
        end else begin
            delta_weights1_0_d1_local = 'bx;
        end
    end else begin
        delta_weights1_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_we0_local = 1'b1;
    end else begin
        delta_weights1_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_0_we1_local = 1'b1;
    end else begin
        delta_weights1_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_1_address0_local = zext_ln115_6_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_1_address0_local = zext_ln115_4_fu_892_p1;
    end else begin
        delta_weights1_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_1_address1_local = zext_ln115_2_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_1_address1_local = zext_ln115_fu_859_p1;
        end else begin
            delta_weights1_1_address1_local = 'bx;
        end
    end else begin
        delta_weights1_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_ce0_local = 1'b1;
    end else begin
        delta_weights1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_ce1_local = 1'b1;
    end else begin
        delta_weights1_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_1_d0_local = mul_13_reg_1203;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_1_d0_local = reg_584;
    end else begin
        delta_weights1_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_1_d1_local = mul_5_reg_1183;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_1_d1_local = reg_584;
        end else begin
            delta_weights1_1_d1_local = 'bx;
        end
    end else begin
        delta_weights1_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_we0_local = 1'b1;
    end else begin
        delta_weights1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_1_we1_local = 1'b1;
    end else begin
        delta_weights1_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_2_address0_local = zext_ln115_6_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_2_address0_local = zext_ln115_4_fu_892_p1;
    end else begin
        delta_weights1_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_2_address1_local = zext_ln115_2_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_2_address1_local = zext_ln115_fu_859_p1;
        end else begin
            delta_weights1_2_address1_local = 'bx;
        end
    end else begin
        delta_weights1_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_2_ce0_local = 1'b1;
    end else begin
        delta_weights1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_2_ce1_local = 1'b1;
    end else begin
        delta_weights1_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_2_d0_local = mul_14_reg_1208;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_2_d0_local = reg_590;
    end else begin
        delta_weights1_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_2_d1_local = mul_6_reg_1188;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_2_d1_local = reg_590;
        end else begin
            delta_weights1_2_d1_local = 'bx;
        end
    end else begin
        delta_weights1_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_2_we0_local = 1'b1;
    end else begin
        delta_weights1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_2_we1_local = 1'b1;
    end else begin
        delta_weights1_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_3_address0_local = zext_ln115_6_fu_908_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_3_address0_local = zext_ln115_4_fu_892_p1;
    end else begin
        delta_weights1_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_3_address1_local = zext_ln115_2_fu_875_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_3_address1_local = zext_ln115_fu_859_p1;
        end else begin
            delta_weights1_3_address1_local = 'bx;
        end
    end else begin
        delta_weights1_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_3_ce0_local = 1'b1;
    end else begin
        delta_weights1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_3_ce1_local = 1'b1;
    end else begin
        delta_weights1_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        delta_weights1_3_d0_local = mul_15_reg_1213;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        delta_weights1_3_d0_local = reg_596;
    end else begin
        delta_weights1_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            delta_weights1_3_d1_local = mul_7_reg_1193;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            delta_weights1_3_d1_local = reg_596;
        end else begin
            delta_weights1_3_d1_local = 'bx;
        end
    end else begin
        delta_weights1_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_3_we0_local = 1'b1;
    end else begin
        delta_weights1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        delta_weights1_3_we1_local = 1'b1;
    end else begin
        delta_weights1_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_546_p1 = output_difference_0_load_5_reg_1126_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_546_p1 = output_difference_0_load_reg_1086;
    end else begin
        grp_fu_546_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_550_p1 = output_difference_1_load_5_reg_1131_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_550_p1 = output_difference_1_load_reg_1091;
    end else begin
        grp_fu_550_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_554_p1 = output_difference_2_load_5_reg_1136_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_554_p1 = output_difference_2_load_reg_1096;
    end else begin
        grp_fu_554_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_558_p1 = output_difference_3_load_5_reg_1141_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_558_p1 = output_difference_3_load_reg_1101;
    end else begin
        grp_fu_558_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_562_p1 = output_difference_0_load_6_reg_1146_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_562_p1 = output_difference_0_load_4_reg_1106;
    end else begin
        grp_fu_562_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_566_p1 = output_difference_1_load_6_reg_1151_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_566_p1 = output_difference_1_load_4_reg_1111;
    end else begin
        grp_fu_566_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_570_p1 = output_difference_2_load_6_reg_1156_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_570_p1 = output_difference_2_load_4_reg_1116;
    end else begin
        grp_fu_570_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p1 = output_difference_3_load_6_reg_1161_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p1 = output_difference_3_load_4_reg_1121;
    end else begin
        grp_fu_574_p1 = 'bx;
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
        output_difference_0_ce2_local = 1'b1;
    end else begin
        output_difference_0_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_0_ce3_local = 1'b1;
    end else begin
        output_difference_0_ce3_local = 1'b0;
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
        output_difference_1_ce2_local = 1'b1;
    end else begin
        output_difference_1_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_1_ce3_local = 1'b1;
    end else begin
        output_difference_1_ce3_local = 1'b0;
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
        output_difference_2_ce2_local = 1'b1;
    end else begin
        output_difference_2_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_2_ce3_local = 1'b1;
    end else begin
        output_difference_2_ce3_local = 1'b0;
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
        output_difference_3_ce2_local = 1'b1;
    end else begin
        output_difference_3_ce2_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        output_difference_3_ce3_local = 1'b1;
    end else begin
        output_difference_3_ce3_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_0_ce0_local = 1'b1;
    end else begin
        training_data_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_1_ce0_local = 1'b1;
    end else begin
        training_data_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_2_ce0_local = 1'b1;
    end else begin
        training_data_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        training_data_3_ce0_local = 1'b1;
    end else begin
        training_data_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to4 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter5_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to6 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln113_1_fu_654_p2 = (ap_sig_allocacmp_i_load + 4'd1);
assign add_ln113_fu_626_p2 = (ap_sig_allocacmp_indvar_flatten_load + 6'd1);
assign add_ln114_fu_804_p2 = (select_ln112_reg_946 + 7'd16);
assign add_ln115_1_fu_867_p4 = {{{select_ln113_reg_951_pp0_iter5_reg}, {tmp_56_reg_985_pp0_iter5_reg}}, {1'd1}};
assign add_ln115_2_fu_883_p5 = {{{{select_ln113_reg_951_pp0_iter5_reg}, {tmp_57_reg_1010_pp0_iter5_reg}}, {1'd1}}, {tmp_46_reg_1016_pp0_iter5_reg}};
assign add_ln115_3_fu_900_p4 = {{{select_ln113_reg_951_pp0_iter5_reg}, {tmp_57_reg_1010_pp0_iter5_reg}}, {2'd3}};
assign add_ln_fu_853_p3 = {{select_ln113_reg_951_pp0_iter4_reg}, {lshr_ln_reg_960_pp0_iter4_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign delta_weights1_0_address0 = delta_weights1_0_address0_local;
assign delta_weights1_0_address1 = delta_weights1_0_address1_local;
assign delta_weights1_0_ce0 = delta_weights1_0_ce0_local;
assign delta_weights1_0_ce1 = delta_weights1_0_ce1_local;
assign delta_weights1_0_d0 = delta_weights1_0_d0_local;
assign delta_weights1_0_d1 = delta_weights1_0_d1_local;
assign delta_weights1_0_we0 = delta_weights1_0_we0_local;
assign delta_weights1_0_we1 = delta_weights1_0_we1_local;
assign delta_weights1_1_address0 = delta_weights1_1_address0_local;
assign delta_weights1_1_address1 = delta_weights1_1_address1_local;
assign delta_weights1_1_ce0 = delta_weights1_1_ce0_local;
assign delta_weights1_1_ce1 = delta_weights1_1_ce1_local;
assign delta_weights1_1_d0 = delta_weights1_1_d0_local;
assign delta_weights1_1_d1 = delta_weights1_1_d1_local;
assign delta_weights1_1_we0 = delta_weights1_1_we0_local;
assign delta_weights1_1_we1 = delta_weights1_1_we1_local;
assign delta_weights1_2_address0 = delta_weights1_2_address0_local;
assign delta_weights1_2_address1 = delta_weights1_2_address1_local;
assign delta_weights1_2_ce0 = delta_weights1_2_ce0_local;
assign delta_weights1_2_ce1 = delta_weights1_2_ce1_local;
assign delta_weights1_2_d0 = delta_weights1_2_d0_local;
assign delta_weights1_2_d1 = delta_weights1_2_d1_local;
assign delta_weights1_2_we0 = delta_weights1_2_we0_local;
assign delta_weights1_2_we1 = delta_weights1_2_we1_local;
assign delta_weights1_3_address0 = delta_weights1_3_address0_local;
assign delta_weights1_3_address1 = delta_weights1_3_address1_local;
assign delta_weights1_3_ce0 = delta_weights1_3_ce0_local;
assign delta_weights1_3_ce1 = delta_weights1_3_ce1_local;
assign delta_weights1_3_d0 = delta_weights1_3_d0_local;
assign delta_weights1_3_d1 = delta_weights1_3_d1_local;
assign delta_weights1_3_we0 = delta_weights1_3_we0_local;
assign delta_weights1_3_we1 = delta_weights1_3_we1_local;
assign empty_fu_782_p1 = p_sum_fu_777_p2[1:0];
assign grp_fu_3076_p_ce = 1'b1;
assign grp_fu_3076_p_din0 = tmp_reg_1166;
assign grp_fu_3076_p_din1 = grp_fu_546_p1;
assign grp_fu_3080_p_ce = 1'b1;
assign grp_fu_3080_p_din0 = tmp_reg_1166;
assign grp_fu_3080_p_din1 = grp_fu_550_p1;
assign grp_fu_3084_p_ce = 1'b1;
assign grp_fu_3084_p_din0 = tmp_reg_1166;
assign grp_fu_3084_p_din1 = grp_fu_554_p1;
assign grp_fu_3088_p_ce = 1'b1;
assign grp_fu_3088_p_din0 = tmp_reg_1166;
assign grp_fu_3088_p_din1 = grp_fu_558_p1;
assign grp_fu_3092_p_ce = 1'b1;
assign grp_fu_3092_p_din0 = tmp_reg_1166;
assign grp_fu_3092_p_din1 = grp_fu_562_p1;
assign grp_fu_3096_p_ce = 1'b1;
assign grp_fu_3096_p_din0 = tmp_reg_1166;
assign grp_fu_3096_p_din1 = grp_fu_566_p1;
assign grp_fu_3100_p_ce = 1'b1;
assign grp_fu_3100_p_din0 = tmp_reg_1166;
assign grp_fu_3100_p_din1 = grp_fu_570_p1;
assign grp_fu_3104_p_ce = 1'b1;
assign grp_fu_3104_p_din0 = tmp_reg_1166;
assign grp_fu_3104_p_din1 = grp_fu_574_p1;
assign icmp_ln113_fu_620_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 6'd52) ? 1'b1 : 1'b0);
assign lshr_ln_fu_668_p4 = {{select_ln112_fu_646_p3[5:2]}};
assign or_ln115_1_fu_730_p4 = {{{tmp_57_fu_712_p4}, {1'd1}}, {tmp_46_fu_722_p3}};
assign or_ln115_2_fu_748_p3 = {{tmp_57_fu_712_p4}, {2'd3}};
assign or_ln_fu_696_p3 = {{tmp_56_fu_686_p4}, {1'd1}};
assign output_difference_0_address0 = zext_ln115_5_fu_756_p1;
assign output_difference_0_address1 = zext_ln115_3_fu_740_p1;
assign output_difference_0_address2 = zext_ln115_1_fu_704_p1;
assign output_difference_0_address3 = zext_ln112_fu_678_p1;
assign output_difference_0_ce0 = output_difference_0_ce0_local;
assign output_difference_0_ce1 = output_difference_0_ce1_local;
assign output_difference_0_ce2 = output_difference_0_ce2_local;
assign output_difference_0_ce3 = output_difference_0_ce3_local;
assign output_difference_1_address0 = zext_ln115_5_fu_756_p1;
assign output_difference_1_address1 = zext_ln115_3_fu_740_p1;
assign output_difference_1_address2 = zext_ln115_1_fu_704_p1;
assign output_difference_1_address3 = zext_ln112_fu_678_p1;
assign output_difference_1_ce0 = output_difference_1_ce0_local;
assign output_difference_1_ce1 = output_difference_1_ce1_local;
assign output_difference_1_ce2 = output_difference_1_ce2_local;
assign output_difference_1_ce3 = output_difference_1_ce3_local;
assign output_difference_2_address0 = zext_ln115_5_fu_756_p1;
assign output_difference_2_address1 = zext_ln115_3_fu_740_p1;
assign output_difference_2_address2 = zext_ln115_1_fu_704_p1;
assign output_difference_2_address3 = zext_ln112_fu_678_p1;
assign output_difference_2_ce0 = output_difference_2_ce0_local;
assign output_difference_2_ce1 = output_difference_2_ce1_local;
assign output_difference_2_ce2 = output_difference_2_ce2_local;
assign output_difference_2_ce3 = output_difference_2_ce3_local;
assign output_difference_3_address0 = zext_ln115_5_fu_756_p1;
assign output_difference_3_address1 = zext_ln115_3_fu_740_p1;
assign output_difference_3_address2 = zext_ln115_1_fu_704_p1;
assign output_difference_3_address3 = zext_ln112_fu_678_p1;
assign output_difference_3_ce0 = output_difference_3_ce0_local;
assign output_difference_3_ce1 = output_difference_3_ce1_local;
assign output_difference_3_ce2 = output_difference_3_ce2_local;
assign output_difference_3_ce3 = output_difference_3_ce3_local;
assign p_cast_fu_796_p1 = tmp_s_fu_786_p4;
assign p_sum_fu_777_p2 = (zext_ln113_fu_774_p1 + idx);
assign select_ln112_fu_646_p3 = ((tmp_45_fu_638_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign select_ln113_fu_660_p3 = ((tmp_45_fu_638_p3[0:0] == 1'b1) ? add_ln113_1_fu_654_p2 : ap_sig_allocacmp_i_load);
assign tmp_45_fu_638_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_46_fu_722_p3 = select_ln112_fu_646_p3[32'd2];
assign tmp_56_fu_686_p4 = {{select_ln112_fu_646_p3[5:3]}};
assign tmp_57_fu_712_p4 = {{select_ln112_fu_646_p3[5:4]}};
assign tmp_fu_830_p2 = training_data_0_q0;
assign tmp_fu_830_p4 = training_data_1_q0;
assign tmp_fu_830_p6 = training_data_2_q0;
assign tmp_fu_830_p8 = training_data_3_q0;
assign tmp_fu_830_p9 = 'bx;
assign tmp_s_fu_786_p4 = {{p_sum_fu_777_p2[11:2]}};
assign training_data_0_address0 = p_cast_fu_796_p1;
assign training_data_0_ce0 = training_data_0_ce0_local;
assign training_data_1_address0 = p_cast_fu_796_p1;
assign training_data_1_ce0 = training_data_1_ce0_local;
assign training_data_2_address0 = p_cast_fu_796_p1;
assign training_data_2_ce0 = training_data_2_ce0_local;
assign training_data_3_address0 = p_cast_fu_796_p1;
assign training_data_3_ce0 = training_data_3_ce0_local;
assign zext_ln112_fu_678_p1 = lshr_ln_fu_668_p4;
assign zext_ln113_fu_774_p1 = select_ln113_reg_951;
assign zext_ln115_1_fu_704_p1 = or_ln_fu_696_p3;
assign zext_ln115_2_fu_875_p1 = add_ln115_1_fu_867_p4;
assign zext_ln115_3_fu_740_p1 = or_ln115_1_fu_730_p4;
assign zext_ln115_4_fu_892_p1 = add_ln115_2_fu_883_p5;
assign zext_ln115_5_fu_756_p1 = or_ln115_2_fu_748_p3;
assign zext_ln115_6_fu_908_p1 = add_ln115_3_fu_900_p4;
assign zext_ln115_fu_859_p1 = add_ln_fu_853_p3;
endmodule 