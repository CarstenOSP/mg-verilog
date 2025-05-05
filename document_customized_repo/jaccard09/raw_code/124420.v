module atax_atax_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_address1,buff_A_ce1,buff_A_q1,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_1_address1,buff_A_1_ce1,buff_A_1_q1,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_2_address1,buff_A_2_ce1,buff_A_2_q1,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_3_address1,buff_A_3_ce1,buff_A_3_q1,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_4_address1,buff_A_4_ce1,buff_A_4_q1,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_5_address1,buff_A_5_ce1,buff_A_5_q1,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_6_address1,buff_A_6_ce1,buff_A_6_q1,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_7_address1,buff_A_7_ce1,buff_A_7_q1,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,buff_y_out_q0,buff_y_out_address1,buff_y_out_ce1,buff_y_out_we1,buff_y_out_d1,buff_y_out_q1,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,buff_y_out_1_q0,buff_y_out_1_address1,buff_y_out_1_ce1,buff_y_out_1_we1,buff_y_out_1_d1,buff_y_out_1_q1,buff_y_out_2_address0,buff_y_out_2_ce0,buff_y_out_2_we0,buff_y_out_2_d0,buff_y_out_2_q0,buff_y_out_2_address1,buff_y_out_2_ce1,buff_y_out_2_we1,buff_y_out_2_d1,buff_y_out_2_q1,buff_y_out_3_address0,buff_y_out_3_ce0,buff_y_out_3_we0,buff_y_out_3_d0,buff_y_out_3_q0,buff_y_out_3_address1,buff_y_out_3_ce1,buff_y_out_3_we1,buff_y_out_3_d1,buff_y_out_3_q1,grp_fu_1768_p_din0,grp_fu_1768_p_din1,grp_fu_1768_p_opcode,grp_fu_1768_p_dout0,grp_fu_1768_p_ce,grp_fu_1772_p_din0,grp_fu_1772_p_din1,grp_fu_1772_p_opcode,grp_fu_1772_p_dout0,grp_fu_1772_p_ce,grp_fu_1776_p_din0,grp_fu_1776_p_din1,grp_fu_1776_p_opcode,grp_fu_1776_p_dout0,grp_fu_1776_p_ce,grp_fu_1780_p_din0,grp_fu_1780_p_din1,grp_fu_1780_p_opcode,grp_fu_1780_p_dout0,grp_fu_1780_p_ce,grp_fu_1784_p_din0,grp_fu_1784_p_din1,grp_fu_1784_p_dout0,grp_fu_1784_p_ce,grp_fu_1788_p_din0,grp_fu_1788_p_din1,grp_fu_1788_p_dout0,grp_fu_1788_p_ce,grp_fu_1792_p_din0,grp_fu_1792_p_din1,grp_fu_1792_p_dout0,grp_fu_1792_p_ce,grp_fu_1796_p_din0,grp_fu_1796_p_din1,grp_fu_1796_p_dout0,grp_fu_1796_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [3:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [3:0] tmp1_2_address0;
output   tmp1_2_ce0;
input  [31:0] tmp1_2_q0;
output  [3:0] tmp1_3_address0;
output   tmp1_3_ce0;
input  [31:0] tmp1_3_q0;
output  [8:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [8:0] buff_A_address1;
output   buff_A_ce1;
input  [31:0] buff_A_q1;
output  [8:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [8:0] buff_A_1_address1;
output   buff_A_1_ce1;
input  [31:0] buff_A_1_q1;
output  [8:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [8:0] buff_A_2_address1;
output   buff_A_2_ce1;
input  [31:0] buff_A_2_q1;
output  [8:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [8:0] buff_A_3_address1;
output   buff_A_3_ce1;
input  [31:0] buff_A_3_q1;
output  [8:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [8:0] buff_A_4_address1;
output   buff_A_4_ce1;
input  [31:0] buff_A_4_q1;
output  [8:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [8:0] buff_A_5_address1;
output   buff_A_5_ce1;
input  [31:0] buff_A_5_q1;
output  [8:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [8:0] buff_A_6_address1;
output   buff_A_6_ce1;
input  [31:0] buff_A_6_q1;
output  [8:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [8:0] buff_A_7_address1;
output   buff_A_7_ce1;
input  [31:0] buff_A_7_q1;
output  [3:0] buff_y_out_address0;
output   buff_y_out_ce0;
output   buff_y_out_we0;
output  [31:0] buff_y_out_d0;
input  [31:0] buff_y_out_q0;
output  [3:0] buff_y_out_address1;
output   buff_y_out_ce1;
output   buff_y_out_we1;
output  [31:0] buff_y_out_d1;
input  [31:0] buff_y_out_q1;
output  [3:0] buff_y_out_1_address0;
output   buff_y_out_1_ce0;
output   buff_y_out_1_we0;
output  [31:0] buff_y_out_1_d0;
input  [31:0] buff_y_out_1_q0;
output  [3:0] buff_y_out_1_address1;
output   buff_y_out_1_ce1;
output   buff_y_out_1_we1;
output  [31:0] buff_y_out_1_d1;
input  [31:0] buff_y_out_1_q1;
output  [3:0] buff_y_out_2_address0;
output   buff_y_out_2_ce0;
output   buff_y_out_2_we0;
output  [31:0] buff_y_out_2_d0;
input  [31:0] buff_y_out_2_q0;
output  [3:0] buff_y_out_2_address1;
output   buff_y_out_2_ce1;
output   buff_y_out_2_we1;
output  [31:0] buff_y_out_2_d1;
input  [31:0] buff_y_out_2_q1;
output  [3:0] buff_y_out_3_address0;
output   buff_y_out_3_ce0;
output   buff_y_out_3_we0;
output  [31:0] buff_y_out_3_d0;
input  [31:0] buff_y_out_3_q0;
output  [3:0] buff_y_out_3_address1;
output   buff_y_out_3_ce1;
output   buff_y_out_3_we1;
output  [31:0] buff_y_out_3_d1;
input  [31:0] buff_y_out_3_q1;
output  [31:0] grp_fu_1768_p_din0;
output  [31:0] grp_fu_1768_p_din1;
output  [1:0] grp_fu_1768_p_opcode;
input  [31:0] grp_fu_1768_p_dout0;
output   grp_fu_1768_p_ce;
output  [31:0] grp_fu_1772_p_din0;
output  [31:0] grp_fu_1772_p_din1;
output  [1:0] grp_fu_1772_p_opcode;
input  [31:0] grp_fu_1772_p_dout0;
output   grp_fu_1772_p_ce;
output  [31:0] grp_fu_1776_p_din0;
output  [31:0] grp_fu_1776_p_din1;
output  [1:0] grp_fu_1776_p_opcode;
input  [31:0] grp_fu_1776_p_dout0;
output   grp_fu_1776_p_ce;
output  [31:0] grp_fu_1780_p_din0;
output  [31:0] grp_fu_1780_p_din1;
output  [1:0] grp_fu_1780_p_opcode;
input  [31:0] grp_fu_1780_p_dout0;
output   grp_fu_1780_p_ce;
output  [31:0] grp_fu_1784_p_din0;
output  [31:0] grp_fu_1784_p_din1;
input  [31:0] grp_fu_1784_p_dout0;
output   grp_fu_1784_p_ce;
output  [31:0] grp_fu_1788_p_din0;
output  [31:0] grp_fu_1788_p_din1;
input  [31:0] grp_fu_1788_p_dout0;
output   grp_fu_1788_p_ce;
output  [31:0] grp_fu_1792_p_din0;
output  [31:0] grp_fu_1792_p_din1;
input  [31:0] grp_fu_1792_p_dout0;
output   grp_fu_1792_p_ce;
output  [31:0] grp_fu_1796_p_din0;
output  [31:0] grp_fu_1796_p_din1;
input  [31:0] grp_fu_1796_p_dout0;
output   grp_fu_1796_p_ce;
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
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln26_reg_799;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [0:0] icmp_ln26_fu_514_p2;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] j_1_load_reg_803;
wire   [0:0] tmp_3_fu_538_p3;
reg   [0:0] tmp_3_reg_808;
wire   [1:0] trunc_ln26_fu_554_p1;
reg   [1:0] trunc_ln26_reg_813;
wire   [0:0] trunc_ln26_1_fu_558_p1;
reg   [0:0] trunc_ln26_1_reg_818;
reg   [4:0] lshr_ln5_4_reg_830;
wire   [31:0] tmp_fu_606_p11;
reg   [31:0] tmp_reg_856;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] tmp_reg_856_pp0_iter1_reg;
wire   [3:0] lshr_ln5_8_fu_629_p4;
reg   [3:0] lshr_ln5_8_reg_864;
reg   [3:0] lshr_ln5_8_reg_864_pp0_iter1_reg;
wire   [2:0] tmp_4_fu_658_p4;
reg   [2:0] tmp_4_reg_909;
reg   [2:0] tmp_4_reg_909_pp0_iter1_reg;
reg   [2:0] tmp_4_reg_909_pp0_iter2_reg;
wire   [31:0] select_ln28_fu_700_p3;
reg   [31:0] select_ln28_reg_954;
wire   [31:0] select_ln28_1_fu_707_p3;
reg   [31:0] select_ln28_1_reg_959;
wire   [31:0] select_ln28_2_fu_714_p3;
reg   [31:0] select_ln28_2_reg_964;
wire   [31:0] select_ln28_3_fu_721_p3;
reg   [31:0] select_ln28_3_reg_969;
wire   [31:0] select_ln28_4_fu_728_p3;
reg   [31:0] select_ln28_4_reg_974;
wire   [31:0] select_ln28_5_fu_735_p3;
reg   [31:0] select_ln28_5_reg_979;
wire   [31:0] select_ln28_6_fu_742_p3;
reg   [31:0] select_ln28_6_reg_984;
wire   [31:0] select_ln28_7_fu_749_p3;
reg   [31:0] select_ln28_7_reg_989;
reg   [3:0] buff_y_out_addr_reg_994;
reg   [3:0] buff_y_out_addr_reg_994_pp0_iter3_reg;
reg   [3:0] buff_y_out_addr_reg_994_pp0_iter4_reg;
reg   [3:0] buff_y_out_addr_reg_994_pp0_iter5_reg;
reg   [3:0] buff_y_out_addr_reg_994_pp0_iter6_reg;
reg   [3:0] buff_y_out_addr_reg_994_pp0_iter7_reg;
reg   [3:0] buff_y_out_1_addr_reg_999;
reg   [3:0] buff_y_out_1_addr_reg_999_pp0_iter3_reg;
reg   [3:0] buff_y_out_1_addr_reg_999_pp0_iter4_reg;
reg   [3:0] buff_y_out_1_addr_reg_999_pp0_iter5_reg;
reg   [3:0] buff_y_out_1_addr_reg_999_pp0_iter6_reg;
reg   [3:0] buff_y_out_1_addr_reg_999_pp0_iter7_reg;
reg   [3:0] buff_y_out_2_addr_reg_1004;
reg   [3:0] buff_y_out_2_addr_reg_1004_pp0_iter3_reg;
reg   [3:0] buff_y_out_2_addr_reg_1004_pp0_iter4_reg;
reg   [3:0] buff_y_out_2_addr_reg_1004_pp0_iter5_reg;
reg   [3:0] buff_y_out_2_addr_reg_1004_pp0_iter6_reg;
reg   [3:0] buff_y_out_2_addr_reg_1004_pp0_iter7_reg;
reg   [3:0] buff_y_out_3_addr_reg_1009;
reg   [3:0] buff_y_out_3_addr_reg_1009_pp0_iter3_reg;
reg   [3:0] buff_y_out_3_addr_reg_1009_pp0_iter4_reg;
reg   [3:0] buff_y_out_3_addr_reg_1009_pp0_iter5_reg;
reg   [3:0] buff_y_out_3_addr_reg_1009_pp0_iter6_reg;
reg   [3:0] buff_y_out_3_addr_reg_1009_pp0_iter7_reg;
reg   [31:0] buff_y_out_load_reg_1014;
reg   [31:0] buff_y_out_1_load_reg_1019;
reg   [31:0] buff_y_out_2_load_reg_1024;
reg   [31:0] buff_y_out_3_load_reg_1029;
reg   [31:0] mul1_reg_1034;
reg   [3:0] buff_y_out_addr_1_reg_1039;
reg   [3:0] buff_y_out_addr_1_reg_1039_pp0_iter4_reg;
reg   [3:0] buff_y_out_addr_1_reg_1039_pp0_iter5_reg;
reg   [3:0] buff_y_out_addr_1_reg_1039_pp0_iter6_reg;
reg   [3:0] buff_y_out_addr_1_reg_1039_pp0_iter7_reg;
reg   [3:0] buff_y_out_1_addr_1_reg_1044;
reg   [3:0] buff_y_out_1_addr_1_reg_1044_pp0_iter4_reg;
reg   [3:0] buff_y_out_1_addr_1_reg_1044_pp0_iter5_reg;
reg   [3:0] buff_y_out_1_addr_1_reg_1044_pp0_iter6_reg;
reg   [3:0] buff_y_out_1_addr_1_reg_1044_pp0_iter7_reg;
reg   [3:0] buff_y_out_2_addr_1_reg_1049;
reg   [3:0] buff_y_out_2_addr_1_reg_1049_pp0_iter4_reg;
reg   [3:0] buff_y_out_2_addr_1_reg_1049_pp0_iter5_reg;
reg   [3:0] buff_y_out_2_addr_1_reg_1049_pp0_iter6_reg;
reg   [3:0] buff_y_out_2_addr_1_reg_1049_pp0_iter7_reg;
reg   [3:0] buff_y_out_3_addr_1_reg_1054;
reg   [3:0] buff_y_out_3_addr_1_reg_1054_pp0_iter4_reg;
reg   [3:0] buff_y_out_3_addr_1_reg_1054_pp0_iter5_reg;
reg   [3:0] buff_y_out_3_addr_1_reg_1054_pp0_iter6_reg;
reg   [3:0] buff_y_out_3_addr_1_reg_1054_pp0_iter7_reg;
reg   [31:0] mul57_1_reg_1059;
reg   [31:0] mul57_2_reg_1064;
reg   [31:0] mul57_3_reg_1069;
reg   [31:0] mul57_4_reg_1074;
reg   [31:0] mul57_5_reg_1079;
reg   [31:0] mul57_6_reg_1084;
reg   [31:0] mul57_7_reg_1089;
reg   [31:0] buff_y_out_load_1_reg_1094;
reg   [31:0] buff_y_out_1_load_1_reg_1099;
reg   [31:0] buff_y_out_2_load_1_reg_1104;
reg   [31:0] buff_y_out_3_load_1_reg_1109;
reg   [31:0] add1_reg_1114;
reg   [31:0] add58_1_reg_1119;
reg   [31:0] add58_2_reg_1124;
reg   [31:0] add58_3_reg_1129;
reg   [31:0] add58_4_reg_1134;
reg   [31:0] add58_5_reg_1139;
reg   [31:0] add58_6_reg_1144;
reg   [31:0] add58_7_reg_1149;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_582_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_1_fu_646_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln28_2_fu_677_p1;
wire   [63:0] zext_ln5_1_fu_756_p1;
wire   [63:0] zext_ln28_fu_770_p1;
reg   [6:0] j_1_fu_100;
wire   [6:0] add_ln27_fu_689_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1_load;
reg   [6:0] i_fu_104;
wire   [6:0] select_ln26_fu_546_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [9:0] indvar_flatten_fu_108;
wire   [9:0] add_ln26_1_fu_520_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    tmp1_ce0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_3_ce0_local;
reg    buff_A_ce1_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce1_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce1_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce1_local;
reg    buff_A_3_ce0_local;
reg    buff_A_4_ce1_local;
reg    buff_A_4_ce0_local;
reg    buff_A_5_ce1_local;
reg    buff_A_5_ce0_local;
reg    buff_A_6_ce1_local;
reg    buff_A_6_ce0_local;
reg    buff_A_7_ce1_local;
reg    buff_A_7_ce0_local;
reg    buff_y_out_ce1_local;
reg   [3:0] buff_y_out_address1_local;
reg    buff_y_out_ce0_local;
reg   [3:0] buff_y_out_address0_local;
reg    buff_y_out_we1_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_1_ce1_local;
reg   [3:0] buff_y_out_1_address1_local;
reg    buff_y_out_1_ce0_local;
reg   [3:0] buff_y_out_1_address0_local;
reg    buff_y_out_1_we1_local;
reg    buff_y_out_1_we0_local;
reg    buff_y_out_2_ce1_local;
reg   [3:0] buff_y_out_2_address1_local;
reg    buff_y_out_2_ce0_local;
reg   [3:0] buff_y_out_2_address0_local;
reg    buff_y_out_2_we1_local;
reg    buff_y_out_2_we0_local;
reg    buff_y_out_3_ce1_local;
reg   [3:0] buff_y_out_3_address1_local;
reg    buff_y_out_3_ce0_local;
reg   [3:0] buff_y_out_3_address0_local;
reg    buff_y_out_3_we1_local;
reg    buff_y_out_3_we0_local;
reg   [31:0] grp_fu_464_p0;
reg   [31:0] grp_fu_464_p1;
reg   [31:0] grp_fu_468_p0;
reg   [31:0] grp_fu_468_p1;
reg   [31:0] grp_fu_472_p0;
reg   [31:0] grp_fu_472_p1;
reg   [31:0] grp_fu_476_p0;
reg   [31:0] grp_fu_476_p1;
reg   [31:0] grp_fu_480_p0;
reg   [31:0] grp_fu_480_p1;
reg   [31:0] grp_fu_484_p0;
reg   [31:0] grp_fu_484_p1;
reg   [31:0] grp_fu_488_p0;
reg   [31:0] grp_fu_488_p1;
reg   [31:0] grp_fu_492_p0;
reg   [31:0] grp_fu_492_p1;
wire   [6:0] add_ln26_fu_532_p2;
wire   [3:0] lshr_ln5_5_fu_572_p4;
wire   [31:0] tmp_fu_606_p9;
wire   [6:0] select_ln5_fu_600_p3;
wire   [8:0] tmp_s_fu_639_p3;
wire   [8:0] tmp_5_fu_668_p4;
wire   [3:0] or_ln_fu_763_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
wire   [1:0] tmp_fu_606_p1;
wire   [1:0] tmp_fu_606_p3;
wire  signed [1:0] tmp_fu_606_p5;
wire  signed [1:0] tmp_fu_606_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 j_1_fu_100 = 7'd0;
#0 i_fu_104 = 7'd0;
#0 indvar_flatten_fu_108 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U357(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.def(tmp_fu_606_p9),.sel(trunc_ln26_reg_813),.dout(tmp_fu_606_p11));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_514_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_104 <= select_ln26_fu_546_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_104 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_514_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_108 <= add_ln26_1_fu_520_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_108 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_1_fu_100 <= 7'd0;
    end else if (((icmp_ln26_reg_799 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_1_fu_100 <= add_ln27_fu_689_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add1_reg_1114 <= grp_fu_1768_p_dout0;
        add58_1_reg_1119 <= grp_fu_1772_p_dout0;
        add58_2_reg_1124 <= grp_fu_1776_p_dout0;
        add58_3_reg_1129 <= grp_fu_1780_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add58_4_reg_1134 <= grp_fu_1768_p_dout0;
        add58_5_reg_1139 <= grp_fu_1772_p_dout0;
        add58_6_reg_1144 <= grp_fu_1776_p_dout0;
        add58_7_reg_1149 <= grp_fu_1780_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        lshr_ln5_8_reg_864 <= {{select_ln5_fu_600_p3[5:2]}};
        lshr_ln5_8_reg_864_pp0_iter1_reg <= lshr_ln5_8_reg_864;
        tmp_4_reg_909 <= {{select_ln5_fu_600_p3[5:3]}};
        tmp_4_reg_909_pp0_iter1_reg <= tmp_4_reg_909;
        tmp_4_reg_909_pp0_iter2_reg <= tmp_4_reg_909_pp0_iter1_reg;
        tmp_reg_856 <= tmp_fu_606_p11;
        tmp_reg_856_pp0_iter1_reg <= tmp_reg_856;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_addr_1_reg_1044[3 : 1] <= zext_ln28_fu_770_p1[3 : 1];
        buff_y_out_1_addr_1_reg_1044_pp0_iter4_reg[3 : 1] <= buff_y_out_1_addr_1_reg_1044[3 : 1];
        buff_y_out_1_addr_1_reg_1044_pp0_iter5_reg[3 : 1] <= buff_y_out_1_addr_1_reg_1044_pp0_iter4_reg[3 : 1];
        buff_y_out_1_addr_1_reg_1044_pp0_iter6_reg[3 : 1] <= buff_y_out_1_addr_1_reg_1044_pp0_iter5_reg[3 : 1];
        buff_y_out_1_addr_1_reg_1044_pp0_iter7_reg[3 : 1] <= buff_y_out_1_addr_1_reg_1044_pp0_iter6_reg[3 : 1];
        buff_y_out_1_addr_reg_999 <= zext_ln5_1_fu_756_p1;
        buff_y_out_1_addr_reg_999_pp0_iter3_reg <= buff_y_out_1_addr_reg_999;
        buff_y_out_1_addr_reg_999_pp0_iter4_reg <= buff_y_out_1_addr_reg_999_pp0_iter3_reg;
        buff_y_out_1_addr_reg_999_pp0_iter5_reg <= buff_y_out_1_addr_reg_999_pp0_iter4_reg;
        buff_y_out_1_addr_reg_999_pp0_iter6_reg <= buff_y_out_1_addr_reg_999_pp0_iter5_reg;
        buff_y_out_1_addr_reg_999_pp0_iter7_reg <= buff_y_out_1_addr_reg_999_pp0_iter6_reg;
        buff_y_out_2_addr_1_reg_1049[3 : 1] <= zext_ln28_fu_770_p1[3 : 1];
        buff_y_out_2_addr_1_reg_1049_pp0_iter4_reg[3 : 1] <= buff_y_out_2_addr_1_reg_1049[3 : 1];
        buff_y_out_2_addr_1_reg_1049_pp0_iter5_reg[3 : 1] <= buff_y_out_2_addr_1_reg_1049_pp0_iter4_reg[3 : 1];
        buff_y_out_2_addr_1_reg_1049_pp0_iter6_reg[3 : 1] <= buff_y_out_2_addr_1_reg_1049_pp0_iter5_reg[3 : 1];
        buff_y_out_2_addr_1_reg_1049_pp0_iter7_reg[3 : 1] <= buff_y_out_2_addr_1_reg_1049_pp0_iter6_reg[3 : 1];
        buff_y_out_2_addr_reg_1004 <= zext_ln5_1_fu_756_p1;
        buff_y_out_2_addr_reg_1004_pp0_iter3_reg <= buff_y_out_2_addr_reg_1004;
        buff_y_out_2_addr_reg_1004_pp0_iter4_reg <= buff_y_out_2_addr_reg_1004_pp0_iter3_reg;
        buff_y_out_2_addr_reg_1004_pp0_iter5_reg <= buff_y_out_2_addr_reg_1004_pp0_iter4_reg;
        buff_y_out_2_addr_reg_1004_pp0_iter6_reg <= buff_y_out_2_addr_reg_1004_pp0_iter5_reg;
        buff_y_out_2_addr_reg_1004_pp0_iter7_reg <= buff_y_out_2_addr_reg_1004_pp0_iter6_reg;
        buff_y_out_3_addr_1_reg_1054[3 : 1] <= zext_ln28_fu_770_p1[3 : 1];
        buff_y_out_3_addr_1_reg_1054_pp0_iter4_reg[3 : 1] <= buff_y_out_3_addr_1_reg_1054[3 : 1];
        buff_y_out_3_addr_1_reg_1054_pp0_iter5_reg[3 : 1] <= buff_y_out_3_addr_1_reg_1054_pp0_iter4_reg[3 : 1];
        buff_y_out_3_addr_1_reg_1054_pp0_iter6_reg[3 : 1] <= buff_y_out_3_addr_1_reg_1054_pp0_iter5_reg[3 : 1];
        buff_y_out_3_addr_1_reg_1054_pp0_iter7_reg[3 : 1] <= buff_y_out_3_addr_1_reg_1054_pp0_iter6_reg[3 : 1];
        buff_y_out_3_addr_reg_1009 <= zext_ln5_1_fu_756_p1;
        buff_y_out_3_addr_reg_1009_pp0_iter3_reg <= buff_y_out_3_addr_reg_1009;
        buff_y_out_3_addr_reg_1009_pp0_iter4_reg <= buff_y_out_3_addr_reg_1009_pp0_iter3_reg;
        buff_y_out_3_addr_reg_1009_pp0_iter5_reg <= buff_y_out_3_addr_reg_1009_pp0_iter4_reg;
        buff_y_out_3_addr_reg_1009_pp0_iter6_reg <= buff_y_out_3_addr_reg_1009_pp0_iter5_reg;
        buff_y_out_3_addr_reg_1009_pp0_iter7_reg <= buff_y_out_3_addr_reg_1009_pp0_iter6_reg;
        buff_y_out_addr_1_reg_1039[3 : 1] <= zext_ln28_fu_770_p1[3 : 1];
        buff_y_out_addr_1_reg_1039_pp0_iter4_reg[3 : 1] <= buff_y_out_addr_1_reg_1039[3 : 1];
        buff_y_out_addr_1_reg_1039_pp0_iter5_reg[3 : 1] <= buff_y_out_addr_1_reg_1039_pp0_iter4_reg[3 : 1];
        buff_y_out_addr_1_reg_1039_pp0_iter6_reg[3 : 1] <= buff_y_out_addr_1_reg_1039_pp0_iter5_reg[3 : 1];
        buff_y_out_addr_1_reg_1039_pp0_iter7_reg[3 : 1] <= buff_y_out_addr_1_reg_1039_pp0_iter6_reg[3 : 1];
        buff_y_out_addr_reg_994 <= zext_ln5_1_fu_756_p1;
        buff_y_out_addr_reg_994_pp0_iter3_reg <= buff_y_out_addr_reg_994;
        buff_y_out_addr_reg_994_pp0_iter4_reg <= buff_y_out_addr_reg_994_pp0_iter3_reg;
        buff_y_out_addr_reg_994_pp0_iter5_reg <= buff_y_out_addr_reg_994_pp0_iter4_reg;
        buff_y_out_addr_reg_994_pp0_iter6_reg <= buff_y_out_addr_reg_994_pp0_iter5_reg;
        buff_y_out_addr_reg_994_pp0_iter7_reg <= buff_y_out_addr_reg_994_pp0_iter6_reg;
        icmp_ln26_reg_799 <= icmp_ln26_fu_514_p2;
        j_1_load_reg_803 <= ap_sig_allocacmp_j_1_load;
        lshr_ln5_4_reg_830 <= {{select_ln26_fu_546_p3[5:1]}};
        select_ln28_1_reg_959 <= select_ln28_1_fu_707_p3;
        select_ln28_2_reg_964 <= select_ln28_2_fu_714_p3;
        select_ln28_3_reg_969 <= select_ln28_3_fu_721_p3;
        select_ln28_4_reg_974 <= select_ln28_4_fu_728_p3;
        select_ln28_5_reg_979 <= select_ln28_5_fu_735_p3;
        select_ln28_6_reg_984 <= select_ln28_6_fu_742_p3;
        select_ln28_7_reg_989 <= select_ln28_7_fu_749_p3;
        select_ln28_reg_954 <= select_ln28_fu_700_p3;
        tmp_3_reg_808 <= ap_sig_allocacmp_j_1_load[32'd6];
        trunc_ln26_1_reg_818 <= trunc_ln26_1_fu_558_p1;
        trunc_ln26_reg_813 <= trunc_ln26_fu_554_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_load_1_reg_1099 <= buff_y_out_1_q0;
        buff_y_out_2_load_1_reg_1104 <= buff_y_out_2_q0;
        buff_y_out_3_load_1_reg_1109 <= buff_y_out_3_q0;
        buff_y_out_load_1_reg_1094 <= buff_y_out_q0;
        mul57_4_reg_1074 <= grp_fu_1784_p_dout0;
        mul57_5_reg_1079 <= grp_fu_1788_p_dout0;
        mul57_6_reg_1084 <= grp_fu_1792_p_dout0;
        mul57_7_reg_1089 <= grp_fu_1796_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_load_reg_1019 <= buff_y_out_1_q1;
        buff_y_out_2_load_reg_1024 <= buff_y_out_2_q1;
        buff_y_out_3_load_reg_1029 <= buff_y_out_3_q1;
        buff_y_out_load_reg_1014 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul1_reg_1034 <= grp_fu_1784_p_dout0;
        mul57_1_reg_1059 <= grp_fu_1788_p_dout0;
        mul57_2_reg_1064 <= grp_fu_1792_p_dout0;
        mul57_3_reg_1069 <= grp_fu_1796_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln26_reg_799 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
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
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_104;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_108;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1_load = j_1_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_1_ce1_local = 1'b1;
    end else begin
        buff_A_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_2_ce1_local = 1'b1;
    end else begin
        buff_A_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_3_ce1_local = 1'b1;
    end else begin
        buff_A_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_4_ce1_local = 1'b1;
    end else begin
        buff_A_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_5_ce1_local = 1'b1;
    end else begin
        buff_A_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_6_ce1_local = 1'b1;
    end else begin
        buff_A_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_7_ce1_local = 1'b1;
    end else begin
        buff_A_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_ce1_local = 1'b1;
    end else begin
        buff_A_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_address0_local = buff_y_out_1_addr_1_reg_1044_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_address0_local = zext_ln28_fu_770_p1;
    end else begin
        buff_y_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_address1_local = buff_y_out_1_addr_reg_999_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_address1_local = zext_ln5_1_fu_756_p1;
    end else begin
        buff_y_out_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_we1_local = 1'b1;
    end else begin
        buff_y_out_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_2_address0_local = buff_y_out_2_addr_1_reg_1049_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_2_address0_local = zext_ln28_fu_770_p1;
    end else begin
        buff_y_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_2_address1_local = buff_y_out_2_addr_reg_1004_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_2_address1_local = zext_ln5_1_fu_756_p1;
    end else begin
        buff_y_out_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_2_we1_local = 1'b1;
    end else begin
        buff_y_out_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_3_address0_local = buff_y_out_3_addr_1_reg_1054_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_3_address0_local = zext_ln28_fu_770_p1;
    end else begin
        buff_y_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_3_address1_local = buff_y_out_3_addr_reg_1009_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_3_address1_local = zext_ln5_1_fu_756_p1;
    end else begin
        buff_y_out_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_3_we1_local = 1'b1;
    end else begin
        buff_y_out_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_address0_local = buff_y_out_addr_1_reg_1039_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_address0_local = zext_ln28_fu_770_p1;
    end else begin
        buff_y_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_address1_local = buff_y_out_addr_reg_994_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_address1_local = zext_ln5_1_fu_756_p1;
    end else begin
        buff_y_out_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_we1_local = 1'b1;
    end else begin
        buff_y_out_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p0 = buff_y_out_load_1_reg_1094;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p0 = buff_y_out_load_reg_1014;
    end else begin
        grp_fu_464_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p1 = mul57_4_reg_1074;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p1 = mul1_reg_1034;
    end else begin
        grp_fu_464_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p0 = buff_y_out_1_load_1_reg_1099;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p0 = buff_y_out_1_load_reg_1019;
    end else begin
        grp_fu_468_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p1 = mul57_5_reg_1079;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p1 = mul57_1_reg_1059;
    end else begin
        grp_fu_468_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_472_p0 = buff_y_out_2_load_1_reg_1104;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_472_p0 = buff_y_out_2_load_reg_1024;
    end else begin
        grp_fu_472_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_472_p1 = mul57_6_reg_1084;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_472_p1 = mul57_2_reg_1064;
    end else begin
        grp_fu_472_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_476_p0 = buff_y_out_3_load_1_reg_1109;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_476_p0 = buff_y_out_3_load_reg_1029;
    end else begin
        grp_fu_476_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_476_p1 = mul57_7_reg_1089;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_476_p1 = mul57_3_reg_1069;
    end else begin
        grp_fu_476_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_480_p0 = select_ln28_4_reg_974;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_480_p0 = select_ln28_reg_954;
    end else begin
        grp_fu_480_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_480_p1 = tmp_reg_856_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_480_p1 = tmp_reg_856;
    end else begin
        grp_fu_480_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_484_p0 = select_ln28_5_reg_979;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_484_p0 = select_ln28_1_reg_959;
    end else begin
        grp_fu_484_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_484_p1 = tmp_reg_856_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_484_p1 = tmp_reg_856;
    end else begin
        grp_fu_484_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_488_p0 = select_ln28_6_reg_984;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_488_p0 = select_ln28_2_reg_964;
    end else begin
        grp_fu_488_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_488_p1 = tmp_reg_856_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_488_p1 = tmp_reg_856;
    end else begin
        grp_fu_488_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_492_p0 = select_ln28_7_reg_989;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_492_p0 = select_ln28_3_reg_969;
    end else begin
        grp_fu_492_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_492_p1 = tmp_reg_856_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_492_p1 = tmp_reg_856;
    end else begin
        grp_fu_492_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_1_ce0_local = 1'b1;
    end else begin
        tmp1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_2_ce0_local = 1'b1;
    end else begin
        tmp1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_3_ce0_local = 1'b1;
    end else begin
        tmp1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln26_1_fu_520_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln26_fu_532_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln27_fu_689_p2 = (select_ln5_fu_600_p3 + 7'd8);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln28_2_fu_677_p1;
assign buff_A_1_address1 = zext_ln28_1_fu_646_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_1_ce1 = buff_A_1_ce1_local;
assign buff_A_2_address0 = zext_ln28_2_fu_677_p1;
assign buff_A_2_address1 = zext_ln28_1_fu_646_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_2_ce1 = buff_A_2_ce1_local;
assign buff_A_3_address0 = zext_ln28_2_fu_677_p1;
assign buff_A_3_address1 = zext_ln28_1_fu_646_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_3_ce1 = buff_A_3_ce1_local;
assign buff_A_4_address0 = zext_ln28_2_fu_677_p1;
assign buff_A_4_address1 = zext_ln28_1_fu_646_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_4_ce1 = buff_A_4_ce1_local;
assign buff_A_5_address0 = zext_ln28_2_fu_677_p1;
assign buff_A_5_address1 = zext_ln28_1_fu_646_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_5_ce1 = buff_A_5_ce1_local;
assign buff_A_6_address0 = zext_ln28_2_fu_677_p1;
assign buff_A_6_address1 = zext_ln28_1_fu_646_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_6_ce1 = buff_A_6_ce1_local;
assign buff_A_7_address0 = zext_ln28_2_fu_677_p1;
assign buff_A_7_address1 = zext_ln28_1_fu_646_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_7_ce1 = buff_A_7_ce1_local;
assign buff_A_address0 = zext_ln28_2_fu_677_p1;
assign buff_A_address1 = zext_ln28_1_fu_646_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_ce1 = buff_A_ce1_local;
assign buff_y_out_1_address0 = buff_y_out_1_address0_local;
assign buff_y_out_1_address1 = buff_y_out_1_address1_local;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_ce1 = buff_y_out_1_ce1_local;
assign buff_y_out_1_d0 = add58_5_reg_1139;
assign buff_y_out_1_d1 = add58_1_reg_1119;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_1_we1 = buff_y_out_1_we1_local;
assign buff_y_out_2_address0 = buff_y_out_2_address0_local;
assign buff_y_out_2_address1 = buff_y_out_2_address1_local;
assign buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
assign buff_y_out_2_ce1 = buff_y_out_2_ce1_local;
assign buff_y_out_2_d0 = add58_6_reg_1144;
assign buff_y_out_2_d1 = add58_2_reg_1124;
assign buff_y_out_2_we0 = buff_y_out_2_we0_local;
assign buff_y_out_2_we1 = buff_y_out_2_we1_local;
assign buff_y_out_3_address0 = buff_y_out_3_address0_local;
assign buff_y_out_3_address1 = buff_y_out_3_address1_local;
assign buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
assign buff_y_out_3_ce1 = buff_y_out_3_ce1_local;
assign buff_y_out_3_d0 = add58_7_reg_1149;
assign buff_y_out_3_d1 = add58_3_reg_1129;
assign buff_y_out_3_we0 = buff_y_out_3_we0_local;
assign buff_y_out_3_we1 = buff_y_out_3_we1_local;
assign buff_y_out_address0 = buff_y_out_address0_local;
assign buff_y_out_address1 = buff_y_out_address1_local;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_ce1 = buff_y_out_ce1_local;
assign buff_y_out_d0 = add58_4_reg_1134;
assign buff_y_out_d1 = add1_reg_1114;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign buff_y_out_we1 = buff_y_out_we1_local;
assign grp_fu_1768_p_ce = 1'b1;
assign grp_fu_1768_p_din0 = grp_fu_464_p0;
assign grp_fu_1768_p_din1 = grp_fu_464_p1;
assign grp_fu_1768_p_opcode = 2'd0;
assign grp_fu_1772_p_ce = 1'b1;
assign grp_fu_1772_p_din0 = grp_fu_468_p0;
assign grp_fu_1772_p_din1 = grp_fu_468_p1;
assign grp_fu_1772_p_opcode = 2'd0;
assign grp_fu_1776_p_ce = 1'b1;
assign grp_fu_1776_p_din0 = grp_fu_472_p0;
assign grp_fu_1776_p_din1 = grp_fu_472_p1;
assign grp_fu_1776_p_opcode = 2'd0;
assign grp_fu_1780_p_ce = 1'b1;
assign grp_fu_1780_p_din0 = grp_fu_476_p0;
assign grp_fu_1780_p_din1 = grp_fu_476_p1;
assign grp_fu_1780_p_opcode = 2'd0;
assign grp_fu_1784_p_ce = 1'b1;
assign grp_fu_1784_p_din0 = grp_fu_480_p0;
assign grp_fu_1784_p_din1 = grp_fu_480_p1;
assign grp_fu_1788_p_ce = 1'b1;
assign grp_fu_1788_p_din0 = grp_fu_484_p0;
assign grp_fu_1788_p_din1 = grp_fu_484_p1;
assign grp_fu_1792_p_ce = 1'b1;
assign grp_fu_1792_p_din0 = grp_fu_488_p0;
assign grp_fu_1792_p_din1 = grp_fu_488_p1;
assign grp_fu_1796_p_ce = 1'b1;
assign grp_fu_1796_p_din0 = grp_fu_492_p0;
assign grp_fu_1796_p_din1 = grp_fu_492_p1;
assign icmp_ln26_fu_514_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_5_fu_572_p4 = {{select_ln26_fu_546_p3[5:2]}};
assign lshr_ln5_8_fu_629_p4 = {{select_ln5_fu_600_p3[5:2]}};
assign or_ln_fu_763_p3 = {{tmp_4_reg_909_pp0_iter2_reg}, {1'd1}};
assign select_ln26_fu_546_p3 = ((tmp_3_fu_538_p3[0:0] == 1'b1) ? add_ln26_fu_532_p2 : ap_sig_allocacmp_i_load);
assign select_ln28_1_fu_707_p3 = ((trunc_ln26_1_reg_818[0:0] == 1'b1) ? buff_A_3_q1 : buff_A_2_q1);
assign select_ln28_2_fu_714_p3 = ((trunc_ln26_1_reg_818[0:0] == 1'b1) ? buff_A_5_q1 : buff_A_4_q1);
assign select_ln28_3_fu_721_p3 = ((trunc_ln26_1_reg_818[0:0] == 1'b1) ? buff_A_7_q1 : buff_A_6_q1);
assign select_ln28_4_fu_728_p3 = ((trunc_ln26_1_reg_818[0:0] == 1'b1) ? buff_A_1_q0 : buff_A_q0);
assign select_ln28_5_fu_735_p3 = ((trunc_ln26_1_reg_818[0:0] == 1'b1) ? buff_A_3_q0 : buff_A_2_q0);
assign select_ln28_6_fu_742_p3 = ((trunc_ln26_1_reg_818[0:0] == 1'b1) ? buff_A_5_q0 : buff_A_4_q0);
assign select_ln28_7_fu_749_p3 = ((trunc_ln26_1_reg_818[0:0] == 1'b1) ? buff_A_7_q0 : buff_A_6_q0);
assign select_ln28_fu_700_p3 = ((trunc_ln26_1_reg_818[0:0] == 1'b1) ? buff_A_1_q1 : buff_A_q1);
assign select_ln5_fu_600_p3 = ((tmp_3_reg_808[0:0] == 1'b1) ? 7'd0 : j_1_load_reg_803);
assign tmp1_1_address0 = zext_ln5_fu_582_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_2_address0 = zext_ln5_fu_582_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_3_address0 = zext_ln5_fu_582_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_address0 = zext_ln5_fu_582_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp_3_fu_538_p3 = ap_sig_allocacmp_j_1_load[32'd6];
assign tmp_4_fu_658_p4 = {{select_ln5_fu_600_p3[5:3]}};
assign tmp_5_fu_668_p4 = {{{lshr_ln5_4_reg_830}, {tmp_4_fu_658_p4}}, {1'd1}};
assign tmp_fu_606_p9 = 'bx;
assign tmp_s_fu_639_p3 = {{lshr_ln5_4_reg_830}, {lshr_ln5_8_fu_629_p4}};
assign trunc_ln26_1_fu_558_p1 = select_ln26_fu_546_p3[0:0];
assign trunc_ln26_fu_554_p1 = select_ln26_fu_546_p3[1:0];
assign zext_ln28_1_fu_646_p1 = tmp_s_fu_639_p3;
assign zext_ln28_2_fu_677_p1 = tmp_5_fu_668_p4;
assign zext_ln28_fu_770_p1 = or_ln_fu_763_p3;
assign zext_ln5_1_fu_756_p1 = lshr_ln5_8_reg_864_pp0_iter1_reg;
assign zext_ln5_fu_582_p1 = lshr_ln5_5_fu_572_p4;
always @ (posedge ap_clk) begin
    buff_y_out_addr_1_reg_1039[0] <= 1'b1;
    buff_y_out_addr_1_reg_1039_pp0_iter4_reg[0] <= 1'b1;
    buff_y_out_addr_1_reg_1039_pp0_iter5_reg[0] <= 1'b1;
    buff_y_out_addr_1_reg_1039_pp0_iter6_reg[0] <= 1'b1;
    buff_y_out_addr_1_reg_1039_pp0_iter7_reg[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_1044[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_1044_pp0_iter4_reg[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_1044_pp0_iter5_reg[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_1044_pp0_iter6_reg[0] <= 1'b1;
    buff_y_out_1_addr_1_reg_1044_pp0_iter7_reg[0] <= 1'b1;
    buff_y_out_2_addr_1_reg_1049[0] <= 1'b1;
    buff_y_out_2_addr_1_reg_1049_pp0_iter4_reg[0] <= 1'b1;
    buff_y_out_2_addr_1_reg_1049_pp0_iter5_reg[0] <= 1'b1;
    buff_y_out_2_addr_1_reg_1049_pp0_iter6_reg[0] <= 1'b1;
    buff_y_out_2_addr_1_reg_1049_pp0_iter7_reg[0] <= 1'b1;
    buff_y_out_3_addr_1_reg_1054[0] <= 1'b1;
    buff_y_out_3_addr_1_reg_1054_pp0_iter4_reg[0] <= 1'b1;
    buff_y_out_3_addr_1_reg_1054_pp0_iter5_reg[0] <= 1'b1;
    buff_y_out_3_addr_1_reg_1054_pp0_iter6_reg[0] <= 1'b1;
    buff_y_out_3_addr_1_reg_1054_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 