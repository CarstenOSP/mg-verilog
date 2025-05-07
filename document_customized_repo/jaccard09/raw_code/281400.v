module backprop_backprop_Pipeline_label_25_label_26 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v6_2_address0,v6_2_ce0,v6_2_q0,v6_3_address0,v6_3_ce0,v6_3_q0,v6_4_address0,v6_4_ce0,v6_4_q0,v6_5_address0,v6_5_ce0,v6_5_q0,v6_6_address0,v6_6_ce0,v6_6_q0,v6_7_address0,v6_7_ce0,v6_7_q0,v12_3_address0,v12_3_ce0,v12_3_we0,v12_3_d0,v12_3_address1,v12_3_ce1,v12_3_we1,v12_3_d1,v12_2_address0,v12_2_ce0,v12_2_we0,v12_2_d0,v12_2_address1,v12_2_ce1,v12_2_we1,v12_2_d1,v12_1_address0,v12_1_ce0,v12_1_we0,v12_1_d0,v12_1_address1,v12_1_ce1,v12_1_we1,v12_1_d1,v12_address0,v12_ce0,v12_we0,v12_d0,v12_address1,v12_ce1,v12_we1,v12_d1,v9_address0,v9_ce0,v9_q0,v9_address1,v9_ce1,v9_q1,v9_1_address0,v9_1_ce0,v9_1_q0,v9_1_address1,v9_1_ce1,v9_1_q1,v9_2_address0,v9_2_ce0,v9_2_q0,v9_2_address1,v9_2_ce1,v9_2_q1,v9_3_address0,v9_3_ce0,v9_3_q0,v9_3_address1,v9_3_ce1,v9_3_q1,grp_fu_3412_p_din0,grp_fu_3412_p_din1,grp_fu_3412_p_dout0,grp_fu_3412_p_ce,grp_fu_3440_p_din0,grp_fu_3440_p_din1,grp_fu_3440_p_dout0,grp_fu_3440_p_ce,grp_fu_3444_p_din0,grp_fu_3444_p_din1,grp_fu_3444_p_dout0,grp_fu_3444_p_ce,grp_fu_3448_p_din0,grp_fu_3448_p_din1,grp_fu_3448_p_dout0,grp_fu_3448_p_ce,grp_fu_3452_p_din0,grp_fu_3452_p_din1,grp_fu_3452_p_dout0,grp_fu_3452_p_ce,grp_fu_3456_p_din0,grp_fu_3456_p_din1,grp_fu_3456_p_dout0,grp_fu_3456_p_ce,grp_fu_3460_p_din0,grp_fu_3460_p_din1,grp_fu_3460_p_dout0,grp_fu_3460_p_ce,grp_fu_3464_p_din0,grp_fu_3464_p_din1,grp_fu_3464_p_dout0,grp_fu_3464_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul;
output  [8:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [8:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [8:0] v6_2_address0;
output   v6_2_ce0;
input  [63:0] v6_2_q0;
output  [8:0] v6_3_address0;
output   v6_3_ce0;
input  [63:0] v6_3_q0;
output  [8:0] v6_4_address0;
output   v6_4_ce0;
input  [63:0] v6_4_q0;
output  [8:0] v6_5_address0;
output   v6_5_ce0;
input  [63:0] v6_5_q0;
output  [8:0] v6_6_address0;
output   v6_6_ce0;
input  [63:0] v6_6_q0;
output  [8:0] v6_7_address0;
output   v6_7_ce0;
input  [63:0] v6_7_q0;
output  [7:0] v12_3_address0;
output   v12_3_ce0;
output   v12_3_we0;
output  [63:0] v12_3_d0;
output  [7:0] v12_3_address1;
output   v12_3_ce1;
output   v12_3_we1;
output  [63:0] v12_3_d1;
output  [7:0] v12_2_address0;
output   v12_2_ce0;
output   v12_2_we0;
output  [63:0] v12_2_d0;
output  [7:0] v12_2_address1;
output   v12_2_ce1;
output   v12_2_we1;
output  [63:0] v12_2_d1;
output  [7:0] v12_1_address0;
output   v12_1_ce0;
output   v12_1_we0;
output  [63:0] v12_1_d0;
output  [7:0] v12_1_address1;
output   v12_1_ce1;
output   v12_1_we1;
output  [63:0] v12_1_d1;
output  [7:0] v12_address0;
output   v12_ce0;
output   v12_we0;
output  [63:0] v12_d0;
output  [7:0] v12_address1;
output   v12_ce1;
output   v12_we1;
output  [63:0] v12_d1;
output  [3:0] v9_address0;
output   v9_ce0;
input  [63:0] v9_q0;
output  [3:0] v9_address1;
output   v9_ce1;
input  [63:0] v9_q1;
output  [3:0] v9_1_address0;
output   v9_1_ce0;
input  [63:0] v9_1_q0;
output  [3:0] v9_1_address1;
output   v9_1_ce1;
input  [63:0] v9_1_q1;
output  [3:0] v9_2_address0;
output   v9_2_ce0;
input  [63:0] v9_2_q0;
output  [3:0] v9_2_address1;
output   v9_2_ce1;
input  [63:0] v9_2_q1;
output  [3:0] v9_3_address0;
output   v9_3_ce0;
input  [63:0] v9_3_q0;
output  [3:0] v9_3_address1;
output   v9_3_ce1;
input  [63:0] v9_3_q1;
output  [63:0] grp_fu_3412_p_din0;
output  [63:0] grp_fu_3412_p_din1;
input  [63:0] grp_fu_3412_p_dout0;
output   grp_fu_3412_p_ce;
output  [63:0] grp_fu_3440_p_din0;
output  [63:0] grp_fu_3440_p_din1;
input  [63:0] grp_fu_3440_p_dout0;
output   grp_fu_3440_p_ce;
output  [63:0] grp_fu_3444_p_din0;
output  [63:0] grp_fu_3444_p_din1;
input  [63:0] grp_fu_3444_p_dout0;
output   grp_fu_3444_p_ce;
output  [63:0] grp_fu_3448_p_din0;
output  [63:0] grp_fu_3448_p_din1;
input  [63:0] grp_fu_3448_p_dout0;
output   grp_fu_3448_p_ce;
output  [63:0] grp_fu_3452_p_din0;
output  [63:0] grp_fu_3452_p_din1;
input  [63:0] grp_fu_3452_p_dout0;
output   grp_fu_3452_p_ce;
output  [63:0] grp_fu_3456_p_din0;
output  [63:0] grp_fu_3456_p_din1;
input  [63:0] grp_fu_3456_p_dout0;
output   grp_fu_3456_p_ce;
output  [63:0] grp_fu_3460_p_din0;
output  [63:0] grp_fu_3460_p_din1;
input  [63:0] grp_fu_3460_p_dout0;
output   grp_fu_3460_p_ce;
output  [63:0] grp_fu_3464_p_din0;
output  [63:0] grp_fu_3464_p_din1;
input  [63:0] grp_fu_3464_p_dout0;
output   grp_fu_3464_p_ce;
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
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_enable_reg_pp0_iter17;
reg    ap_enable_reg_pp0_iter18;
reg    ap_enable_reg_pp0_iter19;
reg    ap_enable_reg_pp0_iter20;
reg    ap_enable_reg_pp0_iter21;
reg    ap_enable_reg_pp0_iter22;
reg    ap_enable_reg_pp0_iter23;
reg    ap_enable_reg_pp0_iter24;
reg    ap_enable_reg_pp0_iter25;
reg    ap_enable_reg_pp0_iter26;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln233_fu_496_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] select_ln233_1_fu_536_p3;
reg   [3:0] select_ln233_1_reg_783;
reg   [3:0] select_ln233_1_reg_783_pp0_iter1_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter2_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter3_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter4_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter5_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter6_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter7_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter8_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter9_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter10_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter11_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter12_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter13_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter14_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter15_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter16_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter17_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter18_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter19_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter20_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter21_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter22_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter23_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter24_reg;
reg   [3:0] select_ln233_1_reg_783_pp0_iter25_reg;
reg   [3:0] lshr_ln_reg_790;
reg   [3:0] lshr_ln_reg_790_pp0_iter1_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter3_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter4_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter5_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter6_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter7_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter8_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter9_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter10_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter11_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter12_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter13_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter14_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter15_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter16_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter17_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter18_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter19_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter20_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter21_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter22_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter23_reg;
reg   [3:0] lshr_ln_reg_790_pp0_iter24_reg;
reg   [2:0] tmp_s_reg_796;
reg   [2:0] tmp_s_reg_796_pp0_iter1_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter2_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter3_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter4_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter5_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter6_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter7_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter8_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter9_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter10_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter11_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter12_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter13_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter14_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter15_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter16_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter17_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter18_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter19_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter20_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter21_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter22_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter23_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter24_reg;
reg   [2:0] tmp_s_reg_796_pp0_iter25_reg;
wire   [11:0] add_ln234_fu_588_p2;
reg   [11:0] add_ln234_reg_802;
reg   [2:0] trunc_ln_reg_808;
reg   [2:0] trunc_ln_reg_808_pp0_iter3_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter4_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter5_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter6_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter7_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter8_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter9_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter10_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter11_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter12_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter13_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter14_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter15_reg;
reg   [2:0] trunc_ln_reg_808_pp0_iter16_reg;
wire   [63:0] v141_fu_669_p19;
reg   [63:0] v141_reg_873;
reg   [63:0] v141_reg_873_pp0_iter18_reg;
reg   [63:0] v143_reg_885;
reg   [63:0] v143_8_reg_910;
reg   [63:0] v143_9_reg_915;
reg   [63:0] v143_10_reg_920;
reg   [63:0] v143_11_reg_925;
reg   [63:0] v143_12_reg_930;
reg   [63:0] v143_13_reg_935;
reg   [63:0] v143_7_reg_940;
reg   [63:0] v144_reg_945;
reg   [63:0] v144_1_reg_950;
reg   [63:0] v144_2_reg_955;
reg   [63:0] v144_3_reg_960;
reg   [63:0] v144_4_reg_965;
reg   [63:0] v144_5_reg_970;
reg   [63:0] v144_6_reg_975;
reg   [63:0] v144_7_reg_980;
wire   [63:0] zext_ln234_fu_618_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln235_fu_630_p1;
wire   [63:0] zext_ln236_fu_715_p1;
wire   [63:0] zext_ln238_fu_729_p1;
wire   [63:0] zext_ln238_1_fu_745_p1;
reg   [6:0] v142_fu_124;
wire   [6:0] add_ln235_fu_564_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v142_load;
reg   [3:0] v140_fu_128;
reg   [3:0] ap_sig_allocacmp_v140_load;
reg   [6:0] indvar_flatten33_fu_132;
wire   [6:0] add_ln233_fu_502_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten33_load;
reg    v6_0_ce0_local;
reg    v6_1_ce0_local;
reg    v6_2_ce0_local;
reg    v6_3_ce0_local;
reg    v6_4_ce0_local;
reg    v6_5_ce0_local;
reg    v6_6_ce0_local;
reg    v6_7_ce0_local;
reg    v9_ce1_local;
reg    v9_ce0_local;
reg    v9_1_ce1_local;
reg    v9_1_ce0_local;
reg    v9_2_ce1_local;
reg    v9_2_ce0_local;
reg    v9_3_ce1_local;
reg    v9_3_ce0_local;
reg    v12_we1_local;
reg    v12_ce1_local;
reg    v12_we0_local;
reg    v12_ce0_local;
reg    v12_1_we1_local;
reg    v12_1_ce1_local;
reg    v12_1_we0_local;
reg    v12_1_ce0_local;
reg    v12_2_we1_local;
reg    v12_2_ce1_local;
reg    v12_2_we0_local;
reg    v12_2_ce0_local;
reg    v12_3_we1_local;
reg    v12_3_ce1_local;
reg    v12_3_we0_local;
reg    v12_3_ce0_local;
wire   [0:0] tmp_fu_514_p3;
wire   [3:0] add_ln233_1_fu_530_p2;
wire   [6:0] select_ln233_fu_522_p3;
wire   [11:0] zext_ln233_fu_585_p1;
wire   [11:0] grp_fu_593_p0;
wire   [9:0] grp_fu_593_p1;
wire   [11:0] mul_ln234_fu_602_p0;
wire   [13:0] mul_ln234_fu_602_p1;
wire   [24:0] mul_ln234_fu_602_p2;
wire   [11:0] grp_fu_593_p2;
wire   [63:0] v141_fu_669_p2;
wire   [63:0] v141_fu_669_p4;
wire   [63:0] v141_fu_669_p6;
wire   [63:0] v141_fu_669_p8;
wire   [63:0] v141_fu_669_p10;
wire   [63:0] v141_fu_669_p12;
wire   [63:0] v141_fu_669_p14;
wire   [63:0] v141_fu_669_p16;
wire   [63:0] v141_fu_669_p17;
wire   [3:0] or_ln4_fu_708_p3;
wire   [7:0] add_ln1_fu_723_p3;
wire   [7:0] add_ln238_1_fu_737_p4;
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
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg    ap_loop_exit_ready_pp0_iter16_reg;
reg    ap_loop_exit_ready_pp0_iter17_reg;
reg    ap_loop_exit_ready_pp0_iter18_reg;
reg    ap_loop_exit_ready_pp0_iter19_reg;
reg    ap_loop_exit_ready_pp0_iter20_reg;
reg    ap_loop_exit_ready_pp0_iter21_reg;
reg    ap_loop_exit_ready_pp0_iter22_reg;
reg    ap_loop_exit_ready_pp0_iter23_reg;
reg    ap_loop_exit_ready_pp0_iter24_reg;
reg    ap_loop_exit_ready_pp0_iter25_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [24:0] mul_ln234_fu_602_p00;
wire   [2:0] v141_fu_669_p1;
wire   [2:0] v141_fu_669_p3;
wire   [2:0] v141_fu_669_p5;
wire   [2:0] v141_fu_669_p7;
wire  signed [2:0] v141_fu_669_p9;
wire  signed [2:0] v141_fu_669_p11;
wire  signed [2:0] v141_fu_669_p13;
wire  signed [2:0] v141_fu_669_p15;
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
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 ap_enable_reg_pp0_iter17 = 1'b0;
#0 ap_enable_reg_pp0_iter18 = 1'b0;
#0 ap_enable_reg_pp0_iter19 = 1'b0;
#0 ap_enable_reg_pp0_iter20 = 1'b0;
#0 ap_enable_reg_pp0_iter21 = 1'b0;
#0 ap_enable_reg_pp0_iter22 = 1'b0;
#0 ap_enable_reg_pp0_iter23 = 1'b0;
#0 ap_enable_reg_pp0_iter24 = 1'b0;
#0 ap_enable_reg_pp0_iter25 = 1'b0;
#0 ap_enable_reg_pp0_iter26 = 1'b0;
#0 v142_fu_124 = 7'd0;
#0 v140_fu_128 = 4'd0;
#0 indvar_flatten33_fu_132 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_12ns_10ns_12_16_1 #(.ID( 1 ),.NUM_STAGE( 16 ),.din0_WIDTH( 12 ),.din1_WIDTH( 10 ),.dout_WIDTH( 12 ))
urem_12ns_10ns_12_16_1_U399(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_593_p0),.din1(grp_fu_593_p1),.ce(1'b1),.dout(grp_fu_593_p2));
backprop_mul_12ns_14ns_25_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 12 ),.din1_WIDTH( 14 ),.dout_WIDTH( 25 ))
mul_12ns_14ns_25_1_1_U400(.din0(mul_ln234_fu_602_p0),.din1(mul_ln234_fu_602_p1),.dout(mul_ln234_fu_602_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U401(.din0(v141_fu_669_p2),.din1(v141_fu_669_p4),.din2(v141_fu_669_p6),.din3(v141_fu_669_p8),.din4(v141_fu_669_p10),.din5(v141_fu_669_p12),.din6(v141_fu_669_p14),.din7(v141_fu_669_p16),.def(v141_fu_669_p17),.sel(trunc_ln_reg_808_pp0_iter16_reg),.dout(v141_fu_669_p19));
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
        end else if (((ap_loop_exit_ready_pp0_iter25_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter17 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter17 <= ap_enable_reg_pp0_iter16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter18 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter18 <= ap_enable_reg_pp0_iter17;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter19 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter19 <= ap_enable_reg_pp0_iter18;
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
        ap_enable_reg_pp0_iter20 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter20 <= ap_enable_reg_pp0_iter19;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter21 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter21 <= ap_enable_reg_pp0_iter20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter22 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter22 <= ap_enable_reg_pp0_iter21;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter23 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter23 <= ap_enable_reg_pp0_iter22;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter24 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter24 <= ap_enable_reg_pp0_iter23;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter25 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter25 <= ap_enable_reg_pp0_iter24;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter26 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter26 <= ap_enable_reg_pp0_iter25;
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
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln233_fu_496_p2 == 1'd0))) begin
            indvar_flatten33_fu_132 <= add_ln233_fu_502_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten33_fu_132 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln233_fu_496_p2 == 1'd0))) begin
            v140_fu_128 <= select_ln233_1_fu_536_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v140_fu_128 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln233_fu_496_p2 == 1'd0))) begin
            v142_fu_124 <= add_ln235_fu_564_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v142_fu_124 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        add_ln234_reg_802 <= add_ln234_fu_588_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln_reg_790 <= {{select_ln233_fu_522_p3[5:2]}};
        lshr_ln_reg_790_pp0_iter1_reg <= lshr_ln_reg_790;
        select_ln233_1_reg_783 <= select_ln233_1_fu_536_p3;
        select_ln233_1_reg_783_pp0_iter1_reg <= select_ln233_1_reg_783;
        tmp_s_reg_796 <= {{select_ln233_fu_522_p3[5:3]}};
        tmp_s_reg_796_pp0_iter1_reg <= tmp_s_reg_796;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter16_reg <= ap_loop_exit_ready_pp0_iter15_reg;
        ap_loop_exit_ready_pp0_iter17_reg <= ap_loop_exit_ready_pp0_iter16_reg;
        ap_loop_exit_ready_pp0_iter18_reg <= ap_loop_exit_ready_pp0_iter17_reg;
        ap_loop_exit_ready_pp0_iter19_reg <= ap_loop_exit_ready_pp0_iter18_reg;
        ap_loop_exit_ready_pp0_iter20_reg <= ap_loop_exit_ready_pp0_iter19_reg;
        ap_loop_exit_ready_pp0_iter21_reg <= ap_loop_exit_ready_pp0_iter20_reg;
        ap_loop_exit_ready_pp0_iter22_reg <= ap_loop_exit_ready_pp0_iter21_reg;
        ap_loop_exit_ready_pp0_iter23_reg <= ap_loop_exit_ready_pp0_iter22_reg;
        ap_loop_exit_ready_pp0_iter24_reg <= ap_loop_exit_ready_pp0_iter23_reg;
        ap_loop_exit_ready_pp0_iter25_reg <= ap_loop_exit_ready_pp0_iter24_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln_reg_790_pp0_iter10_reg <= lshr_ln_reg_790_pp0_iter9_reg;
        lshr_ln_reg_790_pp0_iter11_reg <= lshr_ln_reg_790_pp0_iter10_reg;
        lshr_ln_reg_790_pp0_iter12_reg <= lshr_ln_reg_790_pp0_iter11_reg;
        lshr_ln_reg_790_pp0_iter13_reg <= lshr_ln_reg_790_pp0_iter12_reg;
        lshr_ln_reg_790_pp0_iter14_reg <= lshr_ln_reg_790_pp0_iter13_reg;
        lshr_ln_reg_790_pp0_iter15_reg <= lshr_ln_reg_790_pp0_iter14_reg;
        lshr_ln_reg_790_pp0_iter16_reg <= lshr_ln_reg_790_pp0_iter15_reg;
        lshr_ln_reg_790_pp0_iter17_reg <= lshr_ln_reg_790_pp0_iter16_reg;
        lshr_ln_reg_790_pp0_iter18_reg <= lshr_ln_reg_790_pp0_iter17_reg;
        lshr_ln_reg_790_pp0_iter19_reg <= lshr_ln_reg_790_pp0_iter18_reg;
        lshr_ln_reg_790_pp0_iter20_reg <= lshr_ln_reg_790_pp0_iter19_reg;
        lshr_ln_reg_790_pp0_iter21_reg <= lshr_ln_reg_790_pp0_iter20_reg;
        lshr_ln_reg_790_pp0_iter22_reg <= lshr_ln_reg_790_pp0_iter21_reg;
        lshr_ln_reg_790_pp0_iter23_reg <= lshr_ln_reg_790_pp0_iter22_reg;
        lshr_ln_reg_790_pp0_iter24_reg <= lshr_ln_reg_790_pp0_iter23_reg;
        lshr_ln_reg_790_pp0_iter2_reg <= lshr_ln_reg_790_pp0_iter1_reg;
        lshr_ln_reg_790_pp0_iter3_reg <= lshr_ln_reg_790_pp0_iter2_reg;
        lshr_ln_reg_790_pp0_iter4_reg <= lshr_ln_reg_790_pp0_iter3_reg;
        lshr_ln_reg_790_pp0_iter5_reg <= lshr_ln_reg_790_pp0_iter4_reg;
        lshr_ln_reg_790_pp0_iter6_reg <= lshr_ln_reg_790_pp0_iter5_reg;
        lshr_ln_reg_790_pp0_iter7_reg <= lshr_ln_reg_790_pp0_iter6_reg;
        lshr_ln_reg_790_pp0_iter8_reg <= lshr_ln_reg_790_pp0_iter7_reg;
        lshr_ln_reg_790_pp0_iter9_reg <= lshr_ln_reg_790_pp0_iter8_reg;
        select_ln233_1_reg_783_pp0_iter10_reg <= select_ln233_1_reg_783_pp0_iter9_reg;
        select_ln233_1_reg_783_pp0_iter11_reg <= select_ln233_1_reg_783_pp0_iter10_reg;
        select_ln233_1_reg_783_pp0_iter12_reg <= select_ln233_1_reg_783_pp0_iter11_reg;
        select_ln233_1_reg_783_pp0_iter13_reg <= select_ln233_1_reg_783_pp0_iter12_reg;
        select_ln233_1_reg_783_pp0_iter14_reg <= select_ln233_1_reg_783_pp0_iter13_reg;
        select_ln233_1_reg_783_pp0_iter15_reg <= select_ln233_1_reg_783_pp0_iter14_reg;
        select_ln233_1_reg_783_pp0_iter16_reg <= select_ln233_1_reg_783_pp0_iter15_reg;
        select_ln233_1_reg_783_pp0_iter17_reg <= select_ln233_1_reg_783_pp0_iter16_reg;
        select_ln233_1_reg_783_pp0_iter18_reg <= select_ln233_1_reg_783_pp0_iter17_reg;
        select_ln233_1_reg_783_pp0_iter19_reg <= select_ln233_1_reg_783_pp0_iter18_reg;
        select_ln233_1_reg_783_pp0_iter20_reg <= select_ln233_1_reg_783_pp0_iter19_reg;
        select_ln233_1_reg_783_pp0_iter21_reg <= select_ln233_1_reg_783_pp0_iter20_reg;
        select_ln233_1_reg_783_pp0_iter22_reg <= select_ln233_1_reg_783_pp0_iter21_reg;
        select_ln233_1_reg_783_pp0_iter23_reg <= select_ln233_1_reg_783_pp0_iter22_reg;
        select_ln233_1_reg_783_pp0_iter24_reg <= select_ln233_1_reg_783_pp0_iter23_reg;
        select_ln233_1_reg_783_pp0_iter25_reg <= select_ln233_1_reg_783_pp0_iter24_reg;
        select_ln233_1_reg_783_pp0_iter2_reg <= select_ln233_1_reg_783_pp0_iter1_reg;
        select_ln233_1_reg_783_pp0_iter3_reg <= select_ln233_1_reg_783_pp0_iter2_reg;
        select_ln233_1_reg_783_pp0_iter4_reg <= select_ln233_1_reg_783_pp0_iter3_reg;
        select_ln233_1_reg_783_pp0_iter5_reg <= select_ln233_1_reg_783_pp0_iter4_reg;
        select_ln233_1_reg_783_pp0_iter6_reg <= select_ln233_1_reg_783_pp0_iter5_reg;
        select_ln233_1_reg_783_pp0_iter7_reg <= select_ln233_1_reg_783_pp0_iter6_reg;
        select_ln233_1_reg_783_pp0_iter8_reg <= select_ln233_1_reg_783_pp0_iter7_reg;
        select_ln233_1_reg_783_pp0_iter9_reg <= select_ln233_1_reg_783_pp0_iter8_reg;
        tmp_s_reg_796_pp0_iter10_reg <= tmp_s_reg_796_pp0_iter9_reg;
        tmp_s_reg_796_pp0_iter11_reg <= tmp_s_reg_796_pp0_iter10_reg;
        tmp_s_reg_796_pp0_iter12_reg <= tmp_s_reg_796_pp0_iter11_reg;
        tmp_s_reg_796_pp0_iter13_reg <= tmp_s_reg_796_pp0_iter12_reg;
        tmp_s_reg_796_pp0_iter14_reg <= tmp_s_reg_796_pp0_iter13_reg;
        tmp_s_reg_796_pp0_iter15_reg <= tmp_s_reg_796_pp0_iter14_reg;
        tmp_s_reg_796_pp0_iter16_reg <= tmp_s_reg_796_pp0_iter15_reg;
        tmp_s_reg_796_pp0_iter17_reg <= tmp_s_reg_796_pp0_iter16_reg;
        tmp_s_reg_796_pp0_iter18_reg <= tmp_s_reg_796_pp0_iter17_reg;
        tmp_s_reg_796_pp0_iter19_reg <= tmp_s_reg_796_pp0_iter18_reg;
        tmp_s_reg_796_pp0_iter20_reg <= tmp_s_reg_796_pp0_iter19_reg;
        tmp_s_reg_796_pp0_iter21_reg <= tmp_s_reg_796_pp0_iter20_reg;
        tmp_s_reg_796_pp0_iter22_reg <= tmp_s_reg_796_pp0_iter21_reg;
        tmp_s_reg_796_pp0_iter23_reg <= tmp_s_reg_796_pp0_iter22_reg;
        tmp_s_reg_796_pp0_iter24_reg <= tmp_s_reg_796_pp0_iter23_reg;
        tmp_s_reg_796_pp0_iter25_reg <= tmp_s_reg_796_pp0_iter24_reg;
        tmp_s_reg_796_pp0_iter2_reg <= tmp_s_reg_796_pp0_iter1_reg;
        tmp_s_reg_796_pp0_iter3_reg <= tmp_s_reg_796_pp0_iter2_reg;
        tmp_s_reg_796_pp0_iter4_reg <= tmp_s_reg_796_pp0_iter3_reg;
        tmp_s_reg_796_pp0_iter5_reg <= tmp_s_reg_796_pp0_iter4_reg;
        tmp_s_reg_796_pp0_iter6_reg <= tmp_s_reg_796_pp0_iter5_reg;
        tmp_s_reg_796_pp0_iter7_reg <= tmp_s_reg_796_pp0_iter6_reg;
        tmp_s_reg_796_pp0_iter8_reg <= tmp_s_reg_796_pp0_iter7_reg;
        tmp_s_reg_796_pp0_iter9_reg <= tmp_s_reg_796_pp0_iter8_reg;
        trunc_ln_reg_808 <= {{mul_ln234_fu_602_p2[23:21]}};
        trunc_ln_reg_808_pp0_iter10_reg <= trunc_ln_reg_808_pp0_iter9_reg;
        trunc_ln_reg_808_pp0_iter11_reg <= trunc_ln_reg_808_pp0_iter10_reg;
        trunc_ln_reg_808_pp0_iter12_reg <= trunc_ln_reg_808_pp0_iter11_reg;
        trunc_ln_reg_808_pp0_iter13_reg <= trunc_ln_reg_808_pp0_iter12_reg;
        trunc_ln_reg_808_pp0_iter14_reg <= trunc_ln_reg_808_pp0_iter13_reg;
        trunc_ln_reg_808_pp0_iter15_reg <= trunc_ln_reg_808_pp0_iter14_reg;
        trunc_ln_reg_808_pp0_iter16_reg <= trunc_ln_reg_808_pp0_iter15_reg;
        trunc_ln_reg_808_pp0_iter3_reg <= trunc_ln_reg_808;
        trunc_ln_reg_808_pp0_iter4_reg <= trunc_ln_reg_808_pp0_iter3_reg;
        trunc_ln_reg_808_pp0_iter5_reg <= trunc_ln_reg_808_pp0_iter4_reg;
        trunc_ln_reg_808_pp0_iter6_reg <= trunc_ln_reg_808_pp0_iter5_reg;
        trunc_ln_reg_808_pp0_iter7_reg <= trunc_ln_reg_808_pp0_iter6_reg;
        trunc_ln_reg_808_pp0_iter8_reg <= trunc_ln_reg_808_pp0_iter7_reg;
        trunc_ln_reg_808_pp0_iter9_reg <= trunc_ln_reg_808_pp0_iter8_reg;
        v141_reg_873 <= v141_fu_669_p19;
        v141_reg_873_pp0_iter18_reg <= v141_reg_873;
        v144_1_reg_950 <= grp_fu_3440_p_dout0;
        v144_2_reg_955 <= grp_fu_3444_p_dout0;
        v144_3_reg_960 <= grp_fu_3448_p_dout0;
        v144_4_reg_965 <= grp_fu_3452_p_dout0;
        v144_5_reg_970 <= grp_fu_3456_p_dout0;
        v144_6_reg_975 <= grp_fu_3460_p_dout0;
        v144_7_reg_980 <= grp_fu_3464_p_dout0;
        v144_reg_945 <= grp_fu_3412_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v143_10_reg_920 <= v9_3_q1;
        v143_8_reg_910 <= v9_1_q1;
        v143_9_reg_915 <= v9_2_q1;
        v143_reg_885 <= v9_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter18 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v143_11_reg_925 <= v9_q0;
        v143_12_reg_930 <= v9_1_q0;
        v143_13_reg_935 <= v9_2_q0;
        v143_7_reg_940 <= v9_3_q0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln233_fu_496_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter25_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_idle_pp0 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b0) & (ap_enable_reg_pp0_iter25 == 1'b0) & (ap_enable_reg_pp0_iter24 == 1'b0) & (ap_enable_reg_pp0_iter23 == 1'b0) & (ap_enable_reg_pp0_iter22 == 1'b0) & (ap_enable_reg_pp0_iter21 == 1'b0) & (ap_enable_reg_pp0_iter20 == 1'b0) & (ap_enable_reg_pp0_iter19 == 1'b0) & (ap_enable_reg_pp0_iter18 == 1'b0) & (ap_enable_reg_pp0_iter17 == 1'b0) & (ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten33_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten33_load = indvar_flatten33_fu_132;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_v140_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v140_load = v140_fu_128;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_sig_allocacmp_v142_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v142_load = v142_fu_124;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_1_ce0_local = 1'b1;
    end else begin
        v12_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_1_ce1_local = 1'b1;
    end else begin
        v12_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_1_we0_local = 1'b1;
    end else begin
        v12_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_1_we1_local = 1'b1;
    end else begin
        v12_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_2_ce0_local = 1'b1;
    end else begin
        v12_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_2_ce1_local = 1'b1;
    end else begin
        v12_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_2_we0_local = 1'b1;
    end else begin
        v12_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_2_we1_local = 1'b1;
    end else begin
        v12_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_3_ce0_local = 1'b1;
    end else begin
        v12_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_3_ce1_local = 1'b1;
    end else begin
        v12_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_3_we0_local = 1'b1;
    end else begin
        v12_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_3_we1_local = 1'b1;
    end else begin
        v12_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_ce0_local = 1'b1;
    end else begin
        v12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_ce1_local = 1'b1;
    end else begin
        v12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter26 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_we0_local = 1'b1;
    end else begin
        v12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter25 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v12_we1_local = 1'b1;
    end else begin
        v12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v6_2_ce0_local = 1'b1;
    end else begin
        v6_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v6_3_ce0_local = 1'b1;
    end else begin
        v6_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v6_4_ce0_local = 1'b1;
    end else begin
        v6_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v6_5_ce0_local = 1'b1;
    end else begin
        v6_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v6_6_ce0_local = 1'b1;
    end else begin
        v6_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v6_7_ce0_local = 1'b1;
    end else begin
        v6_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v9_1_ce0_local = 1'b1;
    end else begin
        v9_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v9_1_ce1_local = 1'b1;
    end else begin
        v9_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v9_2_ce0_local = 1'b1;
    end else begin
        v9_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v9_2_ce1_local = 1'b1;
    end else begin
        v9_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v9_3_ce0_local = 1'b1;
    end else begin
        v9_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v9_3_ce1_local = 1'b1;
    end else begin
        v9_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter17 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v9_ce0_local = 1'b1;
    end else begin
        v9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        v9_ce1_local = 1'b1;
    end else begin
        v9_ce1_local = 1'b0;
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
assign add_ln1_fu_723_p3 = {{select_ln233_1_reg_783_pp0_iter24_reg}, {lshr_ln_reg_790_pp0_iter24_reg}};
assign add_ln233_1_fu_530_p2 = (ap_sig_allocacmp_v140_load + 4'd1);
assign add_ln233_fu_502_p2 = (ap_sig_allocacmp_indvar_flatten33_load + 7'd1);
assign add_ln234_fu_588_p2 = (zext_ln233_fu_585_p1 + phi_mul);
assign add_ln235_fu_564_p2 = (select_ln233_fu_522_p3 + 7'd8);
assign add_ln238_1_fu_737_p4 = {{{select_ln233_1_reg_783_pp0_iter25_reg}, {tmp_s_reg_796_pp0_iter25_reg}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_3412_p_ce = 1'b1;
assign grp_fu_3412_p_din0 = v141_reg_873;
assign grp_fu_3412_p_din1 = v143_reg_885;
assign grp_fu_3440_p_ce = 1'b1;
assign grp_fu_3440_p_din0 = v141_reg_873;
assign grp_fu_3440_p_din1 = v143_8_reg_910;
assign grp_fu_3444_p_ce = 1'b1;
assign grp_fu_3444_p_din0 = v141_reg_873;
assign grp_fu_3444_p_din1 = v143_9_reg_915;
assign grp_fu_3448_p_ce = 1'b1;
assign grp_fu_3448_p_din0 = v141_reg_873;
assign grp_fu_3448_p_din1 = v143_10_reg_920;
assign grp_fu_3452_p_ce = 1'b1;
assign grp_fu_3452_p_din0 = v141_reg_873_pp0_iter18_reg;
assign grp_fu_3452_p_din1 = v143_11_reg_925;
assign grp_fu_3456_p_ce = 1'b1;
assign grp_fu_3456_p_din0 = v141_reg_873_pp0_iter18_reg;
assign grp_fu_3456_p_din1 = v143_12_reg_930;
assign grp_fu_3460_p_ce = 1'b1;
assign grp_fu_3460_p_din0 = v141_reg_873_pp0_iter18_reg;
assign grp_fu_3460_p_din1 = v143_13_reg_935;
assign grp_fu_3464_p_ce = 1'b1;
assign grp_fu_3464_p_din0 = v141_reg_873_pp0_iter18_reg;
assign grp_fu_3464_p_din1 = v143_7_reg_940;
assign grp_fu_593_p0 = (zext_ln233_fu_585_p1 + phi_mul);
assign grp_fu_593_p1 = 12'd265;
assign icmp_ln233_fu_496_p2 = ((ap_sig_allocacmp_indvar_flatten33_load == 7'd104) ? 1'b1 : 1'b0);
assign mul_ln234_fu_602_p0 = mul_ln234_fu_602_p00;
assign mul_ln234_fu_602_p00 = add_ln234_reg_802;
assign mul_ln234_fu_602_p1 = 25'd7914;
assign or_ln4_fu_708_p3 = {{tmp_s_reg_796_pp0_iter16_reg}, {1'd1}};
assign select_ln233_1_fu_536_p3 = ((tmp_fu_514_p3[0:0] == 1'b1) ? add_ln233_1_fu_530_p2 : ap_sig_allocacmp_v140_load);
assign select_ln233_fu_522_p3 = ((tmp_fu_514_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v142_load);
assign tmp_fu_514_p3 = ap_sig_allocacmp_v142_load[32'd6];
assign v12_1_address0 = zext_ln238_1_fu_745_p1;
assign v12_1_address1 = zext_ln238_fu_729_p1;
assign v12_1_ce0 = v12_1_ce0_local;
assign v12_1_ce1 = v12_1_ce1_local;
assign v12_1_d0 = v144_5_reg_970;
assign v12_1_d1 = v144_1_reg_950;
assign v12_1_we0 = v12_1_we0_local;
assign v12_1_we1 = v12_1_we1_local;
assign v12_2_address0 = zext_ln238_1_fu_745_p1;
assign v12_2_address1 = zext_ln238_fu_729_p1;
assign v12_2_ce0 = v12_2_ce0_local;
assign v12_2_ce1 = v12_2_ce1_local;
assign v12_2_d0 = v144_6_reg_975;
assign v12_2_d1 = v144_2_reg_955;
assign v12_2_we0 = v12_2_we0_local;
assign v12_2_we1 = v12_2_we1_local;
assign v12_3_address0 = zext_ln238_1_fu_745_p1;
assign v12_3_address1 = zext_ln238_fu_729_p1;
assign v12_3_ce0 = v12_3_ce0_local;
assign v12_3_ce1 = v12_3_ce1_local;
assign v12_3_d0 = v144_7_reg_980;
assign v12_3_d1 = v144_3_reg_960;
assign v12_3_we0 = v12_3_we0_local;
assign v12_3_we1 = v12_3_we1_local;
assign v12_address0 = zext_ln238_1_fu_745_p1;
assign v12_address1 = zext_ln238_fu_729_p1;
assign v12_ce0 = v12_ce0_local;
assign v12_ce1 = v12_ce1_local;
assign v12_d0 = v144_4_reg_965;
assign v12_d1 = v144_reg_945;
assign v12_we0 = v12_we0_local;
assign v12_we1 = v12_we1_local;
assign v141_fu_669_p10 = v6_4_q0;
assign v141_fu_669_p12 = v6_5_q0;
assign v141_fu_669_p14 = v6_6_q0;
assign v141_fu_669_p16 = v6_7_q0;
assign v141_fu_669_p17 = 'bx;
assign v141_fu_669_p2 = v6_0_q0;
assign v141_fu_669_p4 = v6_1_q0;
assign v141_fu_669_p6 = v6_2_q0;
assign v141_fu_669_p8 = v6_3_q0;
assign v6_0_address0 = zext_ln234_fu_618_p1;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = zext_ln234_fu_618_p1;
assign v6_1_ce0 = v6_1_ce0_local;
assign v6_2_address0 = zext_ln234_fu_618_p1;
assign v6_2_ce0 = v6_2_ce0_local;
assign v6_3_address0 = zext_ln234_fu_618_p1;
assign v6_3_ce0 = v6_3_ce0_local;
assign v6_4_address0 = zext_ln234_fu_618_p1;
assign v6_4_ce0 = v6_4_ce0_local;
assign v6_5_address0 = zext_ln234_fu_618_p1;
assign v6_5_ce0 = v6_5_ce0_local;
assign v6_6_address0 = zext_ln234_fu_618_p1;
assign v6_6_ce0 = v6_6_ce0_local;
assign v6_7_address0 = zext_ln234_fu_618_p1;
assign v6_7_ce0 = v6_7_ce0_local;
assign v9_1_address0 = zext_ln236_fu_715_p1;
assign v9_1_address1 = zext_ln235_fu_630_p1;
assign v9_1_ce0 = v9_1_ce0_local;
assign v9_1_ce1 = v9_1_ce1_local;
assign v9_2_address0 = zext_ln236_fu_715_p1;
assign v9_2_address1 = zext_ln235_fu_630_p1;
assign v9_2_ce0 = v9_2_ce0_local;
assign v9_2_ce1 = v9_2_ce1_local;
assign v9_3_address0 = zext_ln236_fu_715_p1;
assign v9_3_address1 = zext_ln235_fu_630_p1;
assign v9_3_ce0 = v9_3_ce0_local;
assign v9_3_ce1 = v9_3_ce1_local;
assign v9_address0 = zext_ln236_fu_715_p1;
assign v9_address1 = zext_ln235_fu_630_p1;
assign v9_ce0 = v9_ce0_local;
assign v9_ce1 = v9_ce1_local;
assign zext_ln233_fu_585_p1 = select_ln233_1_reg_783;
assign zext_ln234_fu_618_p1 = grp_fu_593_p2;
assign zext_ln235_fu_630_p1 = lshr_ln_reg_790_pp0_iter15_reg;
assign zext_ln236_fu_715_p1 = or_ln4_fu_708_p3;
assign zext_ln238_1_fu_745_p1 = add_ln238_1_fu_737_p4;
assign zext_ln238_fu_729_p1 = add_ln1_fu_723_p3;
endmodule 