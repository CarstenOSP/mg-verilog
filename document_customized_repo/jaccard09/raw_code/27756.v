module backprop_get_delta_matrix_weights3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,delta_weights3_0_address0,delta_weights3_0_ce0,delta_weights3_0_we0,delta_weights3_0_d0,delta_weights3_0_address1,delta_weights3_0_ce1,delta_weights3_0_we1,delta_weights3_0_d1,delta_weights3_1_address0,delta_weights3_1_ce0,delta_weights3_1_we0,delta_weights3_1_d0,delta_weights3_1_address1,delta_weights3_1_ce1,delta_weights3_1_we1,delta_weights3_1_d1,delta_weights3_2_address0,delta_weights3_2_ce0,delta_weights3_2_we0,delta_weights3_2_d0,delta_weights3_2_address1,delta_weights3_2_ce1,delta_weights3_2_we1,delta_weights3_2_d1,delta_weights3_3_address0,delta_weights3_3_ce0,delta_weights3_3_we0,delta_weights3_3_d0,delta_weights3_3_address1,delta_weights3_3_ce1,delta_weights3_3_we1,delta_weights3_3_d1,delta_weights3_4_address0,delta_weights3_4_ce0,delta_weights3_4_we0,delta_weights3_4_d0,delta_weights3_4_address1,delta_weights3_4_ce1,delta_weights3_4_we1,delta_weights3_4_d1,delta_weights3_5_address0,delta_weights3_5_ce0,delta_weights3_5_we0,delta_weights3_5_d0,delta_weights3_5_address1,delta_weights3_5_ce1,delta_weights3_5_we1,delta_weights3_5_d1,delta_weights3_6_address0,delta_weights3_6_ce0,delta_weights3_6_we0,delta_weights3_6_d0,delta_weights3_6_address1,delta_weights3_6_ce1,delta_weights3_6_we1,delta_weights3_6_d1,delta_weights3_7_address0,delta_weights3_7_ce0,delta_weights3_7_we0,delta_weights3_7_d0,delta_weights3_7_address1,delta_weights3_7_ce1,delta_weights3_7_we1,delta_weights3_7_d1,delta_weights3_8_address0,delta_weights3_8_ce0,delta_weights3_8_we0,delta_weights3_8_d0,delta_weights3_8_address1,delta_weights3_8_ce1,delta_weights3_8_we1,delta_weights3_8_d1,delta_weights3_9_address0,delta_weights3_9_ce0,delta_weights3_9_we0,delta_weights3_9_d0,delta_weights3_9_address1,delta_weights3_9_ce1,delta_weights3_9_we1,delta_weights3_9_d1,delta_weights3_10_address0,delta_weights3_10_ce0,delta_weights3_10_we0,delta_weights3_10_d0,delta_weights3_10_address1,delta_weights3_10_ce1,delta_weights3_10_we1,delta_weights3_10_d1,delta_weights3_11_address0,delta_weights3_11_ce0,delta_weights3_11_we0,delta_weights3_11_d0,delta_weights3_11_address1,delta_weights3_11_ce1,delta_weights3_11_we1,delta_weights3_11_d1,output_difference_0_0_val,output_difference_0_1_val,output_difference_0_2_val,last_activations_0_address0,last_activations_0_ce0,last_activations_0_q0,last_activations_0_address1,last_activations_0_ce1,last_activations_0_q1,last_activations_1_address0,last_activations_1_ce0,last_activations_1_q0,last_activations_1_address1,last_activations_1_ce1,last_activations_1_q1,last_activations_2_address0,last_activations_2_ce0,last_activations_2_q0,last_activations_2_address1,last_activations_2_ce1,last_activations_2_q1,last_activations_3_address0,last_activations_3_ce0,last_activations_3_q0,last_activations_3_address1,last_activations_3_ce1,last_activations_3_q1,grp_fu_3019_p_din0,grp_fu_3019_p_din1,grp_fu_3019_p_dout0,grp_fu_3019_p_ce,grp_fu_3023_p_din0,grp_fu_3023_p_din1,grp_fu_3023_p_dout0,grp_fu_3023_p_ce,grp_fu_3035_p_din0,grp_fu_3035_p_din1,grp_fu_3035_p_dout0,grp_fu_3035_p_ce,grp_fu_3039_p_din0,grp_fu_3039_p_din1,grp_fu_3039_p_dout0,grp_fu_3039_p_ce,grp_fu_3043_p_din0,grp_fu_3043_p_din1,grp_fu_3043_p_dout0,grp_fu_3043_p_ce,grp_fu_3047_p_din0,grp_fu_3047_p_din1,grp_fu_3047_p_dout0,grp_fu_3047_p_ce,grp_fu_3051_p_din0,grp_fu_3051_p_din1,grp_fu_3051_p_dout0,grp_fu_3051_p_ce,grp_fu_3055_p_din0,grp_fu_3055_p_din1,grp_fu_3055_p_dout0,grp_fu_3055_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] delta_weights3_0_address0;
output   delta_weights3_0_ce0;
output   delta_weights3_0_we0;
output  [63:0] delta_weights3_0_d0;
output  [3:0] delta_weights3_0_address1;
output   delta_weights3_0_ce1;
output   delta_weights3_0_we1;
output  [63:0] delta_weights3_0_d1;
output  [3:0] delta_weights3_1_address0;
output   delta_weights3_1_ce0;
output   delta_weights3_1_we0;
output  [63:0] delta_weights3_1_d0;
output  [3:0] delta_weights3_1_address1;
output   delta_weights3_1_ce1;
output   delta_weights3_1_we1;
output  [63:0] delta_weights3_1_d1;
output  [3:0] delta_weights3_2_address0;
output   delta_weights3_2_ce0;
output   delta_weights3_2_we0;
output  [63:0] delta_weights3_2_d0;
output  [3:0] delta_weights3_2_address1;
output   delta_weights3_2_ce1;
output   delta_weights3_2_we1;
output  [63:0] delta_weights3_2_d1;
output  [3:0] delta_weights3_3_address0;
output   delta_weights3_3_ce0;
output   delta_weights3_3_we0;
output  [63:0] delta_weights3_3_d0;
output  [3:0] delta_weights3_3_address1;
output   delta_weights3_3_ce1;
output   delta_weights3_3_we1;
output  [63:0] delta_weights3_3_d1;
output  [3:0] delta_weights3_4_address0;
output   delta_weights3_4_ce0;
output   delta_weights3_4_we0;
output  [63:0] delta_weights3_4_d0;
output  [3:0] delta_weights3_4_address1;
output   delta_weights3_4_ce1;
output   delta_weights3_4_we1;
output  [63:0] delta_weights3_4_d1;
output  [3:0] delta_weights3_5_address0;
output   delta_weights3_5_ce0;
output   delta_weights3_5_we0;
output  [63:0] delta_weights3_5_d0;
output  [3:0] delta_weights3_5_address1;
output   delta_weights3_5_ce1;
output   delta_weights3_5_we1;
output  [63:0] delta_weights3_5_d1;
output  [3:0] delta_weights3_6_address0;
output   delta_weights3_6_ce0;
output   delta_weights3_6_we0;
output  [63:0] delta_weights3_6_d0;
output  [3:0] delta_weights3_6_address1;
output   delta_weights3_6_ce1;
output   delta_weights3_6_we1;
output  [63:0] delta_weights3_6_d1;
output  [3:0] delta_weights3_7_address0;
output   delta_weights3_7_ce0;
output   delta_weights3_7_we0;
output  [63:0] delta_weights3_7_d0;
output  [3:0] delta_weights3_7_address1;
output   delta_weights3_7_ce1;
output   delta_weights3_7_we1;
output  [63:0] delta_weights3_7_d1;
output  [3:0] delta_weights3_8_address0;
output   delta_weights3_8_ce0;
output   delta_weights3_8_we0;
output  [63:0] delta_weights3_8_d0;
output  [3:0] delta_weights3_8_address1;
output   delta_weights3_8_ce1;
output   delta_weights3_8_we1;
output  [63:0] delta_weights3_8_d1;
output  [3:0] delta_weights3_9_address0;
output   delta_weights3_9_ce0;
output   delta_weights3_9_we0;
output  [63:0] delta_weights3_9_d0;
output  [3:0] delta_weights3_9_address1;
output   delta_weights3_9_ce1;
output   delta_weights3_9_we1;
output  [63:0] delta_weights3_9_d1;
output  [3:0] delta_weights3_10_address0;
output   delta_weights3_10_ce0;
output   delta_weights3_10_we0;
output  [63:0] delta_weights3_10_d0;
output  [3:0] delta_weights3_10_address1;
output   delta_weights3_10_ce1;
output   delta_weights3_10_we1;
output  [63:0] delta_weights3_10_d1;
output  [3:0] delta_weights3_11_address0;
output   delta_weights3_11_ce0;
output   delta_weights3_11_we0;
output  [63:0] delta_weights3_11_d0;
output  [3:0] delta_weights3_11_address1;
output   delta_weights3_11_ce1;
output   delta_weights3_11_we1;
output  [63:0] delta_weights3_11_d1;
input  [63:0] output_difference_0_0_val;
input  [63:0] output_difference_0_1_val;
input  [63:0] output_difference_0_2_val;
output  [3:0] last_activations_0_address0;
output   last_activations_0_ce0;
input  [63:0] last_activations_0_q0;
output  [3:0] last_activations_0_address1;
output   last_activations_0_ce1;
input  [63:0] last_activations_0_q1;
output  [3:0] last_activations_1_address0;
output   last_activations_1_ce0;
input  [63:0] last_activations_1_q0;
output  [3:0] last_activations_1_address1;
output   last_activations_1_ce1;
input  [63:0] last_activations_1_q1;
output  [3:0] last_activations_2_address0;
output   last_activations_2_ce0;
input  [63:0] last_activations_2_q0;
output  [3:0] last_activations_2_address1;
output   last_activations_2_ce1;
input  [63:0] last_activations_2_q1;
output  [3:0] last_activations_3_address0;
output   last_activations_3_ce0;
input  [63:0] last_activations_3_q0;
output  [3:0] last_activations_3_address1;
output   last_activations_3_ce1;
input  [63:0] last_activations_3_q1;
output  [63:0] grp_fu_3019_p_din0;
output  [63:0] grp_fu_3019_p_din1;
input  [63:0] grp_fu_3019_p_dout0;
output   grp_fu_3019_p_ce;
output  [63:0] grp_fu_3023_p_din0;
output  [63:0] grp_fu_3023_p_din1;
input  [63:0] grp_fu_3023_p_dout0;
output   grp_fu_3023_p_ce;
output  [63:0] grp_fu_3035_p_din0;
output  [63:0] grp_fu_3035_p_din1;
input  [63:0] grp_fu_3035_p_dout0;
output   grp_fu_3035_p_ce;
output  [63:0] grp_fu_3039_p_din0;
output  [63:0] grp_fu_3039_p_din1;
input  [63:0] grp_fu_3039_p_dout0;
output   grp_fu_3039_p_ce;
output  [63:0] grp_fu_3043_p_din0;
output  [63:0] grp_fu_3043_p_din1;
input  [63:0] grp_fu_3043_p_dout0;
output   grp_fu_3043_p_ce;
output  [63:0] grp_fu_3047_p_din0;
output  [63:0] grp_fu_3047_p_din1;
input  [63:0] grp_fu_3047_p_dout0;
output   grp_fu_3047_p_ce;
output  [63:0] grp_fu_3051_p_din0;
output  [63:0] grp_fu_3051_p_din1;
input  [63:0] grp_fu_3051_p_dout0;
output   grp_fu_3051_p_ce;
output  [63:0] grp_fu_3055_p_din0;
output  [63:0] grp_fu_3055_p_din1;
input  [63:0] grp_fu_3055_p_dout0;
output   grp_fu_3055_p_ce;
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
wire   [0:0] tmp_26_fu_608_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln72_fu_626_p1;
reg   [63:0] zext_ln72_reg_718;
reg   [63:0] zext_ln72_reg_718_pp0_iter1_reg;
reg   [63:0] zext_ln72_reg_718_pp0_iter2_reg;
reg   [63:0] zext_ln72_reg_718_pp0_iter3_reg;
reg   [63:0] zext_ln72_reg_718_pp0_iter4_reg;
reg   [63:0] zext_ln72_reg_718_pp0_iter5_reg;
reg   [63:0] zext_ln72_reg_718_pp0_iter6_reg;
reg   [63:0] zext_ln72_reg_718_pp0_iter7_reg;
reg   [63:0] zext_ln72_reg_718_pp0_iter8_reg;
wire   [63:0] p_cast_fu_652_p1;
reg   [63:0] p_cast_reg_754;
reg   [63:0] p_cast_reg_754_pp0_iter1_reg;
reg   [63:0] p_cast_reg_754_pp0_iter2_reg;
reg   [63:0] p_cast_reg_754_pp0_iter3_reg;
reg   [63:0] p_cast_reg_754_pp0_iter4_reg;
reg   [63:0] p_cast_reg_754_pp0_iter5_reg;
reg   [63:0] p_cast_reg_754_pp0_iter6_reg;
reg   [63:0] p_cast_reg_754_pp0_iter7_reg;
reg   [63:0] p_cast_reg_754_pp0_iter8_reg;
reg   [63:0] last_activations_0_load_reg_790;
reg   [63:0] last_activations_1_load_reg_797;
reg   [63:0] last_activations_2_load_reg_804;
reg   [63:0] last_activations_3_load_reg_811;
reg   [63:0] last_activations_0_load_1_reg_818;
reg   [63:0] last_activations_1_load_1_reg_825;
reg   [63:0] last_activations_2_load_1_reg_832;
reg   [63:0] last_activations_3_load_1_reg_839;
reg   [63:0] mul_reg_846;
reg   [63:0] mul_s_reg_851;
reg   [63:0] mul_8_reg_856;
reg   [63:0] mul_1_reg_861;
reg   [63:0] mul_1_1_reg_866;
reg   [63:0] mul_1_2_reg_871;
reg   [63:0] mul_2_reg_876;
reg   [63:0] mul_2_1_reg_881;
wire   [63:0] grp_fu_536_p2;
reg   [63:0] mul_2_2_reg_886;
wire   [63:0] grp_fu_540_p2;
reg   [63:0] mul_3_reg_891;
wire   [63:0] grp_fu_544_p2;
reg   [63:0] mul_3_1_reg_896;
wire   [63:0] grp_fu_548_p2;
reg   [63:0] mul_3_2_reg_901;
wire   [63:0] grp_fu_552_p2;
reg   [63:0] mul_4_reg_906;
wire   [63:0] grp_fu_556_p2;
reg   [63:0] mul_4_1_reg_911;
wire   [63:0] grp_fu_560_p2;
reg   [63:0] mul_4_2_reg_916;
wire   [63:0] grp_fu_564_p2;
reg   [63:0] mul_5_reg_921;
wire   [63:0] grp_fu_568_p2;
reg   [63:0] mul_5_1_reg_926;
wire   [63:0] grp_fu_572_p2;
reg   [63:0] mul_5_2_reg_931;
wire   [63:0] grp_fu_576_p2;
reg   [63:0] mul_6_reg_936;
wire   [63:0] grp_fu_580_p2;
reg   [63:0] mul_6_1_reg_941;
wire   [63:0] grp_fu_584_p2;
reg   [63:0] mul_6_2_reg_946;
wire   [63:0] grp_fu_588_p2;
reg   [63:0] mul_7_reg_951;
wire   [63:0] grp_fu_592_p2;
reg   [63:0] mul_7_1_reg_956;
wire   [63:0] grp_fu_596_p2;
reg   [63:0] mul_7_2_reg_961;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_82;
wire   [6:0] add_ln73_fu_660_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_9;
reg    last_activations_0_ce1_local;
reg    last_activations_0_ce0_local;
reg    last_activations_1_ce1_local;
reg    last_activations_1_ce0_local;
reg    last_activations_2_ce1_local;
reg    last_activations_2_ce0_local;
reg    last_activations_3_ce1_local;
reg    last_activations_3_ce0_local;
reg    delta_weights3_0_we1_local;
reg    delta_weights3_0_ce1_local;
reg    delta_weights3_0_we0_local;
reg    delta_weights3_0_ce0_local;
reg    delta_weights3_1_we1_local;
reg    delta_weights3_1_ce1_local;
reg    delta_weights3_1_we0_local;
reg    delta_weights3_1_ce0_local;
reg    delta_weights3_2_we1_local;
reg    delta_weights3_2_ce1_local;
reg    delta_weights3_2_we0_local;
reg    delta_weights3_2_ce0_local;
reg    delta_weights3_3_we1_local;
reg    delta_weights3_3_ce1_local;
reg    delta_weights3_3_we0_local;
reg    delta_weights3_3_ce0_local;
reg    delta_weights3_4_we1_local;
reg    delta_weights3_4_ce1_local;
reg    delta_weights3_4_we0_local;
reg    delta_weights3_4_ce0_local;
reg    delta_weights3_5_we1_local;
reg    delta_weights3_5_ce1_local;
reg    delta_weights3_5_we0_local;
reg    delta_weights3_5_ce0_local;
reg    delta_weights3_6_we1_local;
reg    delta_weights3_6_ce1_local;
reg    delta_weights3_6_we0_local;
reg    delta_weights3_6_ce0_local;
reg    delta_weights3_7_we1_local;
reg    delta_weights3_7_ce1_local;
reg    delta_weights3_7_we0_local;
reg    delta_weights3_7_ce0_local;
reg    delta_weights3_8_we1_local;
reg    delta_weights3_8_ce1_local;
reg    delta_weights3_8_we0_local;
reg    delta_weights3_8_ce0_local;
reg    delta_weights3_9_we1_local;
reg    delta_weights3_9_ce1_local;
reg    delta_weights3_9_we0_local;
reg    delta_weights3_9_ce0_local;
reg    delta_weights3_10_we1_local;
reg    delta_weights3_10_ce1_local;
reg    delta_weights3_10_we0_local;
reg    delta_weights3_10_ce0_local;
reg    delta_weights3_11_we1_local;
reg    delta_weights3_11_ce1_local;
reg    delta_weights3_11_we0_local;
reg    delta_weights3_11_ce0_local;
wire   [3:0] lshr_ln_fu_616_p4;
wire   [2:0] tmp_fu_634_p4;
wire   [3:0] tmp_s_fu_644_p3;
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
#0 i_fu_82 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U155(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_2_load_reg_804),.din1(output_difference_0_2_val),.ce(1'b1),.dout(grp_fu_536_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U156(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_3_load_reg_811),.din1(output_difference_0_0_val),.ce(1'b1),.dout(grp_fu_540_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U157(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_3_load_reg_811),.din1(output_difference_0_1_val),.ce(1'b1),.dout(grp_fu_544_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U158(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_3_load_reg_811),.din1(output_difference_0_2_val),.ce(1'b1),.dout(grp_fu_548_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U159(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_0_load_1_reg_818),.din1(output_difference_0_0_val),.ce(1'b1),.dout(grp_fu_552_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U160(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_0_load_1_reg_818),.din1(output_difference_0_1_val),.ce(1'b1),.dout(grp_fu_556_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U161(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_0_load_1_reg_818),.din1(output_difference_0_2_val),.ce(1'b1),.dout(grp_fu_560_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U162(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_1_load_1_reg_825),.din1(output_difference_0_0_val),.ce(1'b1),.dout(grp_fu_564_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U163(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_1_load_1_reg_825),.din1(output_difference_0_1_val),.ce(1'b1),.dout(grp_fu_568_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U164(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_1_load_1_reg_825),.din1(output_difference_0_2_val),.ce(1'b1),.dout(grp_fu_572_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U165(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_2_load_1_reg_832),.din1(output_difference_0_0_val),.ce(1'b1),.dout(grp_fu_576_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U166(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_2_load_1_reg_832),.din1(output_difference_0_1_val),.ce(1'b1),.dout(grp_fu_580_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U167(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_2_load_1_reg_832),.din1(output_difference_0_2_val),.ce(1'b1),.dout(grp_fu_584_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U168(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_3_load_1_reg_839),.din1(output_difference_0_0_val),.ce(1'b1),.dout(grp_fu_588_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U169(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_3_load_1_reg_839),.din1(output_difference_0_1_val),.ce(1'b1),.dout(grp_fu_592_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U170(.clk(ap_clk),.reset(ap_rst),.din0(last_activations_3_load_1_reg_839),.din1(output_difference_0_2_val),.ce(1'b1),.dout(grp_fu_596_p2));
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
        if (((tmp_26_fu_608_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_82 <= add_ln73_fu_660_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_82 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        p_cast_reg_754[3 : 1] <= p_cast_fu_652_p1[3 : 1];
        p_cast_reg_754_pp0_iter1_reg[3 : 1] <= p_cast_reg_754[3 : 1];
        zext_ln72_reg_718[3 : 0] <= zext_ln72_fu_626_p1[3 : 0];
        zext_ln72_reg_718_pp0_iter1_reg[3 : 0] <= zext_ln72_reg_718[3 : 0];
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
        mul_1_1_reg_866 <= grp_fu_3043_p_dout0;
        mul_1_2_reg_871 <= grp_fu_3047_p_dout0;
        mul_1_reg_861 <= grp_fu_3039_p_dout0;
        mul_2_1_reg_881 <= grp_fu_3055_p_dout0;
        mul_2_2_reg_886 <= grp_fu_536_p2;
        mul_2_reg_876 <= grp_fu_3051_p_dout0;
        mul_3_1_reg_896 <= grp_fu_544_p2;
        mul_3_2_reg_901 <= grp_fu_548_p2;
        mul_3_reg_891 <= grp_fu_540_p2;
        mul_4_1_reg_911 <= grp_fu_556_p2;
        mul_4_2_reg_916 <= grp_fu_560_p2;
        mul_4_reg_906 <= grp_fu_552_p2;
        mul_5_1_reg_926 <= grp_fu_568_p2;
        mul_5_2_reg_931 <= grp_fu_572_p2;
        mul_5_reg_921 <= grp_fu_564_p2;
        mul_6_1_reg_941 <= grp_fu_580_p2;
        mul_6_2_reg_946 <= grp_fu_584_p2;
        mul_6_reg_936 <= grp_fu_576_p2;
        mul_7_1_reg_956 <= grp_fu_592_p2;
        mul_7_2_reg_961 <= grp_fu_596_p2;
        mul_7_reg_951 <= grp_fu_588_p2;
        mul_8_reg_856 <= grp_fu_3035_p_dout0;
        mul_reg_846 <= grp_fu_3019_p_dout0;
        mul_s_reg_851 <= grp_fu_3023_p_dout0;
        p_cast_reg_754_pp0_iter2_reg[3 : 1] <= p_cast_reg_754_pp0_iter1_reg[3 : 1];
        p_cast_reg_754_pp0_iter3_reg[3 : 1] <= p_cast_reg_754_pp0_iter2_reg[3 : 1];
        p_cast_reg_754_pp0_iter4_reg[3 : 1] <= p_cast_reg_754_pp0_iter3_reg[3 : 1];
        p_cast_reg_754_pp0_iter5_reg[3 : 1] <= p_cast_reg_754_pp0_iter4_reg[3 : 1];
        p_cast_reg_754_pp0_iter6_reg[3 : 1] <= p_cast_reg_754_pp0_iter5_reg[3 : 1];
        p_cast_reg_754_pp0_iter7_reg[3 : 1] <= p_cast_reg_754_pp0_iter6_reg[3 : 1];
        p_cast_reg_754_pp0_iter8_reg[3 : 1] <= p_cast_reg_754_pp0_iter7_reg[3 : 1];
        zext_ln72_reg_718_pp0_iter2_reg[3 : 0] <= zext_ln72_reg_718_pp0_iter1_reg[3 : 0];
        zext_ln72_reg_718_pp0_iter3_reg[3 : 0] <= zext_ln72_reg_718_pp0_iter2_reg[3 : 0];
        zext_ln72_reg_718_pp0_iter4_reg[3 : 0] <= zext_ln72_reg_718_pp0_iter3_reg[3 : 0];
        zext_ln72_reg_718_pp0_iter5_reg[3 : 0] <= zext_ln72_reg_718_pp0_iter4_reg[3 : 0];
        zext_ln72_reg_718_pp0_iter6_reg[3 : 0] <= zext_ln72_reg_718_pp0_iter5_reg[3 : 0];
        zext_ln72_reg_718_pp0_iter7_reg[3 : 0] <= zext_ln72_reg_718_pp0_iter6_reg[3 : 0];
        zext_ln72_reg_718_pp0_iter8_reg[3 : 0] <= zext_ln72_reg_718_pp0_iter7_reg[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        last_activations_0_load_1_reg_818 <= last_activations_0_q0;
        last_activations_0_load_reg_790 <= last_activations_0_q1;
        last_activations_1_load_1_reg_825 <= last_activations_1_q0;
        last_activations_1_load_reg_797 <= last_activations_1_q1;
        last_activations_2_load_1_reg_832 <= last_activations_2_q0;
        last_activations_2_load_reg_804 <= last_activations_2_q1;
        last_activations_3_load_1_reg_839 <= last_activations_3_q0;
        last_activations_3_load_reg_811 <= last_activations_3_q1;
    end
end
always @ (*) begin
    if (((tmp_26_fu_608_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_i_9 = 7'd0;
    end else begin
        ap_sig_allocacmp_i_9 = i_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_0_ce0_local = 1'b1;
    end else begin
        delta_weights3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_0_ce1_local = 1'b1;
    end else begin
        delta_weights3_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_0_we0_local = 1'b1;
    end else begin
        delta_weights3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_0_we1_local = 1'b1;
    end else begin
        delta_weights3_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_10_ce0_local = 1'b1;
    end else begin
        delta_weights3_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_10_ce1_local = 1'b1;
    end else begin
        delta_weights3_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_10_we0_local = 1'b1;
    end else begin
        delta_weights3_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_10_we1_local = 1'b1;
    end else begin
        delta_weights3_10_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_11_ce0_local = 1'b1;
    end else begin
        delta_weights3_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_11_ce1_local = 1'b1;
    end else begin
        delta_weights3_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_11_we0_local = 1'b1;
    end else begin
        delta_weights3_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_11_we1_local = 1'b1;
    end else begin
        delta_weights3_11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_1_ce0_local = 1'b1;
    end else begin
        delta_weights3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_1_ce1_local = 1'b1;
    end else begin
        delta_weights3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_1_we0_local = 1'b1;
    end else begin
        delta_weights3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_1_we1_local = 1'b1;
    end else begin
        delta_weights3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_2_ce0_local = 1'b1;
    end else begin
        delta_weights3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_2_ce1_local = 1'b1;
    end else begin
        delta_weights3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_2_we0_local = 1'b1;
    end else begin
        delta_weights3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_2_we1_local = 1'b1;
    end else begin
        delta_weights3_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_3_ce0_local = 1'b1;
    end else begin
        delta_weights3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_3_ce1_local = 1'b1;
    end else begin
        delta_weights3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_3_we0_local = 1'b1;
    end else begin
        delta_weights3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_3_we1_local = 1'b1;
    end else begin
        delta_weights3_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_ce0_local = 1'b1;
    end else begin
        delta_weights3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_ce1_local = 1'b1;
    end else begin
        delta_weights3_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_we0_local = 1'b1;
    end else begin
        delta_weights3_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_4_we1_local = 1'b1;
    end else begin
        delta_weights3_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_ce0_local = 1'b1;
    end else begin
        delta_weights3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_ce1_local = 1'b1;
    end else begin
        delta_weights3_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_we0_local = 1'b1;
    end else begin
        delta_weights3_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_5_we1_local = 1'b1;
    end else begin
        delta_weights3_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_6_ce0_local = 1'b1;
    end else begin
        delta_weights3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_6_ce1_local = 1'b1;
    end else begin
        delta_weights3_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_6_we0_local = 1'b1;
    end else begin
        delta_weights3_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_6_we1_local = 1'b1;
    end else begin
        delta_weights3_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_7_ce0_local = 1'b1;
    end else begin
        delta_weights3_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_7_ce1_local = 1'b1;
    end else begin
        delta_weights3_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_7_we0_local = 1'b1;
    end else begin
        delta_weights3_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_7_we1_local = 1'b1;
    end else begin
        delta_weights3_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_8_ce0_local = 1'b1;
    end else begin
        delta_weights3_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_8_ce1_local = 1'b1;
    end else begin
        delta_weights3_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_8_we0_local = 1'b1;
    end else begin
        delta_weights3_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_8_we1_local = 1'b1;
    end else begin
        delta_weights3_8_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_9_ce0_local = 1'b1;
    end else begin
        delta_weights3_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_9_ce1_local = 1'b1;
    end else begin
        delta_weights3_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_9_we0_local = 1'b1;
    end else begin
        delta_weights3_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        delta_weights3_9_we1_local = 1'b1;
    end else begin
        delta_weights3_9_we1_local = 1'b0;
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
        last_activations_0_ce1_local = 1'b1;
    end else begin
        last_activations_0_ce1_local = 1'b0;
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
        last_activations_1_ce1_local = 1'b1;
    end else begin
        last_activations_1_ce1_local = 1'b0;
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
        last_activations_2_ce1_local = 1'b1;
    end else begin
        last_activations_2_ce1_local = 1'b0;
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
        last_activations_3_ce1_local = 1'b1;
    end else begin
        last_activations_3_ce1_local = 1'b0;
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
assign add_ln73_fu_660_p2 = (ap_sig_allocacmp_i_9 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign delta_weights3_0_address0 = p_cast_reg_754_pp0_iter8_reg;
assign delta_weights3_0_address1 = zext_ln72_reg_718_pp0_iter8_reg;
assign delta_weights3_0_ce0 = delta_weights3_0_ce0_local;
assign delta_weights3_0_ce1 = delta_weights3_0_ce1_local;
assign delta_weights3_0_d0 = mul_4_reg_906;
assign delta_weights3_0_d1 = mul_reg_846;
assign delta_weights3_0_we0 = delta_weights3_0_we0_local;
assign delta_weights3_0_we1 = delta_weights3_0_we1_local;
assign delta_weights3_10_address0 = p_cast_reg_754_pp0_iter8_reg;
assign delta_weights3_10_address1 = zext_ln72_reg_718_pp0_iter8_reg;
assign delta_weights3_10_ce0 = delta_weights3_10_ce0_local;
assign delta_weights3_10_ce1 = delta_weights3_10_ce1_local;
assign delta_weights3_10_d0 = mul_7_1_reg_956;
assign delta_weights3_10_d1 = mul_3_1_reg_896;
assign delta_weights3_10_we0 = delta_weights3_10_we0_local;
assign delta_weights3_10_we1 = delta_weights3_10_we1_local;
assign delta_weights3_11_address0 = p_cast_reg_754_pp0_iter8_reg;
assign delta_weights3_11_address1 = zext_ln72_reg_718_pp0_iter8_reg;
assign delta_weights3_11_ce0 = delta_weights3_11_ce0_local;
assign delta_weights3_11_ce1 = delta_weights3_11_ce1_local;
assign delta_weights3_11_d0 = mul_7_2_reg_961;
assign delta_weights3_11_d1 = mul_3_2_reg_901;
assign delta_weights3_11_we0 = delta_weights3_11_we0_local;
assign delta_weights3_11_we1 = delta_weights3_11_we1_local;
assign delta_weights3_1_address0 = p_cast_reg_754_pp0_iter8_reg;
assign delta_weights3_1_address1 = zext_ln72_reg_718_pp0_iter8_reg;
assign delta_weights3_1_ce0 = delta_weights3_1_ce0_local;
assign delta_weights3_1_ce1 = delta_weights3_1_ce1_local;
assign delta_weights3_1_d0 = mul_4_1_reg_911;
assign delta_weights3_1_d1 = mul_s_reg_851;
assign delta_weights3_1_we0 = delta_weights3_1_we0_local;
assign delta_weights3_1_we1 = delta_weights3_1_we1_local;
assign delta_weights3_2_address0 = p_cast_reg_754_pp0_iter8_reg;
assign delta_weights3_2_address1 = zext_ln72_reg_718_pp0_iter8_reg;
assign delta_weights3_2_ce0 = delta_weights3_2_ce0_local;
assign delta_weights3_2_ce1 = delta_weights3_2_ce1_local;
assign delta_weights3_2_d0 = mul_4_2_reg_916;
assign delta_weights3_2_d1 = mul_8_reg_856;
assign delta_weights3_2_we0 = delta_weights3_2_we0_local;
assign delta_weights3_2_we1 = delta_weights3_2_we1_local;
assign delta_weights3_3_address0 = p_cast_reg_754_pp0_iter8_reg;
assign delta_weights3_3_address1 = zext_ln72_reg_718_pp0_iter8_reg;
assign delta_weights3_3_ce0 = delta_weights3_3_ce0_local;
assign delta_weights3_3_ce1 = delta_weights3_3_ce1_local;
assign delta_weights3_3_d0 = mul_5_reg_921;
assign delta_weights3_3_d1 = mul_1_reg_861;
assign delta_weights3_3_we0 = delta_weights3_3_we0_local;
assign delta_weights3_3_we1 = delta_weights3_3_we1_local;
assign delta_weights3_4_address0 = p_cast_reg_754_pp0_iter8_reg;
assign delta_weights3_4_address1 = zext_ln72_reg_718_pp0_iter8_reg;
assign delta_weights3_4_ce0 = delta_weights3_4_ce0_local;
assign delta_weights3_4_ce1 = delta_weights3_4_ce1_local;
assign delta_weights3_4_d0 = mul_5_1_reg_926;
assign delta_weights3_4_d1 = mul_1_1_reg_866;
assign delta_weights3_4_we0 = delta_weights3_4_we0_local;
assign delta_weights3_4_we1 = delta_weights3_4_we1_local;
assign delta_weights3_5_address0 = p_cast_reg_754_pp0_iter8_reg;
assign delta_weights3_5_address1 = zext_ln72_reg_718_pp0_iter8_reg;
assign delta_weights3_5_ce0 = delta_weights3_5_ce0_local;
assign delta_weights3_5_ce1 = delta_weights3_5_ce1_local;
assign delta_weights3_5_d0 = mul_5_2_reg_931;
assign delta_weights3_5_d1 = mul_1_2_reg_871;
assign delta_weights3_5_we0 = delta_weights3_5_we0_local;
assign delta_weights3_5_we1 = delta_weights3_5_we1_local;
assign delta_weights3_6_address0 = p_cast_reg_754_pp0_iter8_reg;
assign delta_weights3_6_address1 = zext_ln72_reg_718_pp0_iter8_reg;
assign delta_weights3_6_ce0 = delta_weights3_6_ce0_local;
assign delta_weights3_6_ce1 = delta_weights3_6_ce1_local;
assign delta_weights3_6_d0 = mul_6_reg_936;
assign delta_weights3_6_d1 = mul_2_reg_876;
assign delta_weights3_6_we0 = delta_weights3_6_we0_local;
assign delta_weights3_6_we1 = delta_weights3_6_we1_local;
assign delta_weights3_7_address0 = p_cast_reg_754_pp0_iter8_reg;
assign delta_weights3_7_address1 = zext_ln72_reg_718_pp0_iter8_reg;
assign delta_weights3_7_ce0 = delta_weights3_7_ce0_local;
assign delta_weights3_7_ce1 = delta_weights3_7_ce1_local;
assign delta_weights3_7_d0 = mul_6_1_reg_941;
assign delta_weights3_7_d1 = mul_2_1_reg_881;
assign delta_weights3_7_we0 = delta_weights3_7_we0_local;
assign delta_weights3_7_we1 = delta_weights3_7_we1_local;
assign delta_weights3_8_address0 = p_cast_reg_754_pp0_iter8_reg;
assign delta_weights3_8_address1 = zext_ln72_reg_718_pp0_iter8_reg;
assign delta_weights3_8_ce0 = delta_weights3_8_ce0_local;
assign delta_weights3_8_ce1 = delta_weights3_8_ce1_local;
assign delta_weights3_8_d0 = mul_6_2_reg_946;
assign delta_weights3_8_d1 = mul_2_2_reg_886;
assign delta_weights3_8_we0 = delta_weights3_8_we0_local;
assign delta_weights3_8_we1 = delta_weights3_8_we1_local;
assign delta_weights3_9_address0 = p_cast_reg_754_pp0_iter8_reg;
assign delta_weights3_9_address1 = zext_ln72_reg_718_pp0_iter8_reg;
assign delta_weights3_9_ce0 = delta_weights3_9_ce0_local;
assign delta_weights3_9_ce1 = delta_weights3_9_ce1_local;
assign delta_weights3_9_d0 = mul_7_reg_951;
assign delta_weights3_9_d1 = mul_3_reg_891;
assign delta_weights3_9_we0 = delta_weights3_9_we0_local;
assign delta_weights3_9_we1 = delta_weights3_9_we1_local;
assign grp_fu_3019_p_ce = 1'b1;
assign grp_fu_3019_p_din0 = last_activations_0_load_reg_790;
assign grp_fu_3019_p_din1 = output_difference_0_0_val;
assign grp_fu_3023_p_ce = 1'b1;
assign grp_fu_3023_p_din0 = last_activations_0_load_reg_790;
assign grp_fu_3023_p_din1 = output_difference_0_1_val;
assign grp_fu_3035_p_ce = 1'b1;
assign grp_fu_3035_p_din0 = last_activations_0_load_reg_790;
assign grp_fu_3035_p_din1 = output_difference_0_2_val;
assign grp_fu_3039_p_ce = 1'b1;
assign grp_fu_3039_p_din0 = last_activations_1_load_reg_797;
assign grp_fu_3039_p_din1 = output_difference_0_0_val;
assign grp_fu_3043_p_ce = 1'b1;
assign grp_fu_3043_p_din0 = last_activations_1_load_reg_797;
assign grp_fu_3043_p_din1 = output_difference_0_1_val;
assign grp_fu_3047_p_ce = 1'b1;
assign grp_fu_3047_p_din0 = last_activations_1_load_reg_797;
assign grp_fu_3047_p_din1 = output_difference_0_2_val;
assign grp_fu_3051_p_ce = 1'b1;
assign grp_fu_3051_p_din0 = last_activations_2_load_reg_804;
assign grp_fu_3051_p_din1 = output_difference_0_0_val;
assign grp_fu_3055_p_ce = 1'b1;
assign grp_fu_3055_p_din0 = last_activations_2_load_reg_804;
assign grp_fu_3055_p_din1 = output_difference_0_1_val;
assign last_activations_0_address0 = p_cast_fu_652_p1;
assign last_activations_0_address1 = zext_ln72_fu_626_p1;
assign last_activations_0_ce0 = last_activations_0_ce0_local;
assign last_activations_0_ce1 = last_activations_0_ce1_local;
assign last_activations_1_address0 = p_cast_fu_652_p1;
assign last_activations_1_address1 = zext_ln72_fu_626_p1;
assign last_activations_1_ce0 = last_activations_1_ce0_local;
assign last_activations_1_ce1 = last_activations_1_ce1_local;
assign last_activations_2_address0 = p_cast_fu_652_p1;
assign last_activations_2_address1 = zext_ln72_fu_626_p1;
assign last_activations_2_ce0 = last_activations_2_ce0_local;
assign last_activations_2_ce1 = last_activations_2_ce1_local;
assign last_activations_3_address0 = p_cast_fu_652_p1;
assign last_activations_3_address1 = zext_ln72_fu_626_p1;
assign last_activations_3_ce0 = last_activations_3_ce0_local;
assign last_activations_3_ce1 = last_activations_3_ce1_local;
assign lshr_ln_fu_616_p4 = {{ap_sig_allocacmp_i_9[5:2]}};
assign p_cast_fu_652_p1 = tmp_s_fu_644_p3;
assign tmp_26_fu_608_p3 = ap_sig_allocacmp_i_9[32'd6];
assign tmp_fu_634_p4 = {{ap_sig_allocacmp_i_9[5:3]}};
assign tmp_s_fu_644_p3 = {{tmp_fu_634_p4}, {1'd1}};
assign zext_ln72_fu_626_p1 = lshr_ln_fu_616_p4;
always @ (posedge ap_clk) begin
    zext_ln72_reg_718[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_718_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_718_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_718_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_718_pp0_iter4_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_718_pp0_iter5_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_718_pp0_iter6_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_718_pp0_iter7_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln72_reg_718_pp0_iter8_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_754[0] <= 1'b1;
    p_cast_reg_754[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_754_pp0_iter1_reg[0] <= 1'b1;
    p_cast_reg_754_pp0_iter1_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_754_pp0_iter2_reg[0] <= 1'b1;
    p_cast_reg_754_pp0_iter2_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_754_pp0_iter3_reg[0] <= 1'b1;
    p_cast_reg_754_pp0_iter3_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_754_pp0_iter4_reg[0] <= 1'b1;
    p_cast_reg_754_pp0_iter4_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_754_pp0_iter5_reg[0] <= 1'b1;
    p_cast_reg_754_pp0_iter5_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_754_pp0_iter6_reg[0] <= 1'b1;
    p_cast_reg_754_pp0_iter6_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_754_pp0_iter7_reg[0] <= 1'b1;
    p_cast_reg_754_pp0_iter7_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    p_cast_reg_754_pp0_iter8_reg[0] <= 1'b1;
    p_cast_reg_754_pp0_iter8_reg[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 