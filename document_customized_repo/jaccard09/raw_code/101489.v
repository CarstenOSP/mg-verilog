module bicg_bicg_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_r_address0,buff_r_ce0,buff_r_q0,buff_r_1_address0,buff_r_1_ce0,buff_r_1_q0,buff_r_2_address0,buff_r_2_ce0,buff_r_2_q0,buff_r_3_address0,buff_r_3_ce0,buff_r_3_q0,buff_r_4_address0,buff_r_4_ce0,buff_r_4_q0,buff_r_5_address0,buff_r_5_ce0,buff_r_5_q0,buff_r_6_address0,buff_r_6_ce0,buff_r_6_q0,buff_r_7_address0,buff_r_7_ce0,buff_r_7_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_s_out_address0,buff_s_out_ce0,buff_s_out_we0,buff_s_out_d0,buff_s_out_address1,buff_s_out_ce1,buff_s_out_q1,buff_s_out_1_address0,buff_s_out_1_ce0,buff_s_out_1_we0,buff_s_out_1_d0,buff_s_out_1_address1,buff_s_out_1_ce1,buff_s_out_1_q1,buff_s_out_2_address0,buff_s_out_2_ce0,buff_s_out_2_we0,buff_s_out_2_d0,buff_s_out_2_address1,buff_s_out_2_ce1,buff_s_out_2_q1,buff_s_out_3_address0,buff_s_out_3_ce0,buff_s_out_3_we0,buff_s_out_3_d0,buff_s_out_3_address1,buff_s_out_3_ce1,buff_s_out_3_q1,buff_s_out_4_address0,buff_s_out_4_ce0,buff_s_out_4_we0,buff_s_out_4_d0,buff_s_out_4_q0,buff_s_out_5_address0,buff_s_out_5_ce0,buff_s_out_5_we0,buff_s_out_5_d0,buff_s_out_5_q0,buff_s_out_6_address0,buff_s_out_6_ce0,buff_s_out_6_we0,buff_s_out_6_d0,buff_s_out_6_q0,buff_s_out_7_address0,buff_s_out_7_ce0,buff_s_out_7_we0,buff_s_out_7_d0,buff_s_out_7_q0,grp_fu_2267_p_din0,grp_fu_2267_p_din1,grp_fu_2267_p_opcode,grp_fu_2267_p_dout0,grp_fu_2267_p_ce,grp_fu_2271_p_din0,grp_fu_2271_p_din1,grp_fu_2271_p_opcode,grp_fu_2271_p_dout0,grp_fu_2271_p_ce,grp_fu_2275_p_din0,grp_fu_2275_p_din1,grp_fu_2275_p_opcode,grp_fu_2275_p_dout0,grp_fu_2275_p_ce,grp_fu_2279_p_din0,grp_fu_2279_p_din1,grp_fu_2279_p_opcode,grp_fu_2279_p_dout0,grp_fu_2279_p_ce,grp_fu_2283_p_din0,grp_fu_2283_p_din1,grp_fu_2283_p_dout0,grp_fu_2283_p_ce,grp_fu_2287_p_din0,grp_fu_2287_p_din1,grp_fu_2287_p_dout0,grp_fu_2287_p_ce,grp_fu_2291_p_din0,grp_fu_2291_p_din1,grp_fu_2291_p_dout0,grp_fu_2291_p_ce,grp_fu_2295_p_din0,grp_fu_2295_p_din1,grp_fu_2295_p_dout0,grp_fu_2295_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] buff_r_address0;
output   buff_r_ce0;
input  [31:0] buff_r_q0;
output  [2:0] buff_r_1_address0;
output   buff_r_1_ce0;
input  [31:0] buff_r_1_q0;
output  [2:0] buff_r_2_address0;
output   buff_r_2_ce0;
input  [31:0] buff_r_2_q0;
output  [2:0] buff_r_3_address0;
output   buff_r_3_ce0;
input  [31:0] buff_r_3_q0;
output  [2:0] buff_r_4_address0;
output   buff_r_4_ce0;
input  [31:0] buff_r_4_q0;
output  [2:0] buff_r_5_address0;
output   buff_r_5_ce0;
input  [31:0] buff_r_5_q0;
output  [2:0] buff_r_6_address0;
output   buff_r_6_ce0;
input  [31:0] buff_r_6_q0;
output  [2:0] buff_r_7_address0;
output   buff_r_7_ce0;
input  [31:0] buff_r_7_q0;
output  [7:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [7:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [7:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [7:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [7:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [7:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [7:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [7:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [7:0] buff_A_8_address0;
output   buff_A_8_ce0;
input  [31:0] buff_A_8_q0;
output  [7:0] buff_A_9_address0;
output   buff_A_9_ce0;
input  [31:0] buff_A_9_q0;
output  [7:0] buff_A_10_address0;
output   buff_A_10_ce0;
input  [31:0] buff_A_10_q0;
output  [7:0] buff_A_11_address0;
output   buff_A_11_ce0;
input  [31:0] buff_A_11_q0;
output  [7:0] buff_A_12_address0;
output   buff_A_12_ce0;
input  [31:0] buff_A_12_q0;
output  [7:0] buff_A_13_address0;
output   buff_A_13_ce0;
input  [31:0] buff_A_13_q0;
output  [7:0] buff_A_14_address0;
output   buff_A_14_ce0;
input  [31:0] buff_A_14_q0;
output  [7:0] buff_A_15_address0;
output   buff_A_15_ce0;
input  [31:0] buff_A_15_q0;
output  [2:0] buff_s_out_address0;
output   buff_s_out_ce0;
output   buff_s_out_we0;
output  [31:0] buff_s_out_d0;
output  [2:0] buff_s_out_address1;
output   buff_s_out_ce1;
input  [31:0] buff_s_out_q1;
output  [2:0] buff_s_out_1_address0;
output   buff_s_out_1_ce0;
output   buff_s_out_1_we0;
output  [31:0] buff_s_out_1_d0;
output  [2:0] buff_s_out_1_address1;
output   buff_s_out_1_ce1;
input  [31:0] buff_s_out_1_q1;
output  [2:0] buff_s_out_2_address0;
output   buff_s_out_2_ce0;
output   buff_s_out_2_we0;
output  [31:0] buff_s_out_2_d0;
output  [2:0] buff_s_out_2_address1;
output   buff_s_out_2_ce1;
input  [31:0] buff_s_out_2_q1;
output  [2:0] buff_s_out_3_address0;
output   buff_s_out_3_ce0;
output   buff_s_out_3_we0;
output  [31:0] buff_s_out_3_d0;
output  [2:0] buff_s_out_3_address1;
output   buff_s_out_3_ce1;
input  [31:0] buff_s_out_3_q1;
output  [2:0] buff_s_out_4_address0;
output   buff_s_out_4_ce0;
output   buff_s_out_4_we0;
output  [31:0] buff_s_out_4_d0;
input  [31:0] buff_s_out_4_q0;
output  [2:0] buff_s_out_5_address0;
output   buff_s_out_5_ce0;
output   buff_s_out_5_we0;
output  [31:0] buff_s_out_5_d0;
input  [31:0] buff_s_out_5_q0;
output  [2:0] buff_s_out_6_address0;
output   buff_s_out_6_ce0;
output   buff_s_out_6_we0;
output  [31:0] buff_s_out_6_d0;
input  [31:0] buff_s_out_6_q0;
output  [2:0] buff_s_out_7_address0;
output   buff_s_out_7_ce0;
output   buff_s_out_7_we0;
output  [31:0] buff_s_out_7_d0;
input  [31:0] buff_s_out_7_q0;
output  [31:0] grp_fu_2267_p_din0;
output  [31:0] grp_fu_2267_p_din1;
output  [1:0] grp_fu_2267_p_opcode;
input  [31:0] grp_fu_2267_p_dout0;
output   grp_fu_2267_p_ce;
output  [31:0] grp_fu_2271_p_din0;
output  [31:0] grp_fu_2271_p_din1;
output  [1:0] grp_fu_2271_p_opcode;
input  [31:0] grp_fu_2271_p_dout0;
output   grp_fu_2271_p_ce;
output  [31:0] grp_fu_2275_p_din0;
output  [31:0] grp_fu_2275_p_din1;
output  [1:0] grp_fu_2275_p_opcode;
input  [31:0] grp_fu_2275_p_dout0;
output   grp_fu_2275_p_ce;
output  [31:0] grp_fu_2279_p_din0;
output  [31:0] grp_fu_2279_p_din1;
output  [1:0] grp_fu_2279_p_opcode;
input  [31:0] grp_fu_2279_p_dout0;
output   grp_fu_2279_p_ce;
output  [31:0] grp_fu_2283_p_din0;
output  [31:0] grp_fu_2283_p_din1;
input  [31:0] grp_fu_2283_p_dout0;
output   grp_fu_2283_p_ce;
output  [31:0] grp_fu_2287_p_din0;
output  [31:0] grp_fu_2287_p_din1;
input  [31:0] grp_fu_2287_p_dout0;
output   grp_fu_2287_p_ce;
output  [31:0] grp_fu_2291_p_din0;
output  [31:0] grp_fu_2291_p_din1;
input  [31:0] grp_fu_2291_p_dout0;
output   grp_fu_2291_p_ce;
output  [31:0] grp_fu_2295_p_din0;
output  [31:0] grp_fu_2295_p_din1;
input  [31:0] grp_fu_2295_p_dout0;
output   grp_fu_2295_p_ce;
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
reg   [0:0] icmp_ln23_reg_915;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_602;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_608;
reg   [31:0] reg_614;
reg   [31:0] reg_620;
wire   [0:0] icmp_ln23_fu_644_p2;
reg   [6:0] j_load_reg_919;
wire   [0:0] tmp_3_fu_668_p3;
reg   [0:0] tmp_3_reg_924;
wire   [2:0] trunc_ln23_fu_684_p1;
reg   [2:0] trunc_ln23_reg_929;
wire   [0:0] trunc_ln23_1_fu_688_p1;
reg   [0:0] trunc_ln23_1_reg_934;
reg   [4:0] tmp_1_reg_986;
wire   [31:0] tmp_fu_740_p19;
reg   [31:0] tmp_reg_991;
reg   [31:0] tmp_reg_991_pp0_iter1_reg;
wire   [2:0] lshr_ln5_6_fu_779_p4;
reg   [2:0] lshr_ln5_6_reg_999;
reg   [2:0] lshr_ln5_6_reg_999_pp0_iter1_reg;
wire   [31:0] select_ln25_fu_827_p3;
reg   [31:0] select_ln25_reg_1084;
wire   [31:0] select_ln25_1_fu_834_p3;
reg   [31:0] select_ln25_1_reg_1089;
wire   [31:0] select_ln25_2_fu_841_p3;
reg   [31:0] select_ln25_2_reg_1094;
wire   [31:0] select_ln25_3_fu_848_p3;
reg   [31:0] select_ln25_3_reg_1099;
wire   [31:0] select_ln25_4_fu_855_p3;
reg   [31:0] select_ln25_4_reg_1104;
wire   [31:0] select_ln25_5_fu_862_p3;
reg   [31:0] select_ln25_5_reg_1109;
wire   [31:0] select_ln25_6_fu_869_p3;
reg   [31:0] select_ln25_6_reg_1114;
wire   [31:0] select_ln25_7_fu_876_p3;
reg   [31:0] select_ln25_7_reg_1119;
reg   [2:0] buff_s_out_addr_reg_1124;
reg   [2:0] buff_s_out_addr_reg_1124_pp0_iter3_reg;
reg   [2:0] buff_s_out_addr_reg_1124_pp0_iter4_reg;
reg   [2:0] buff_s_out_addr_reg_1124_pp0_iter5_reg;
reg   [2:0] buff_s_out_addr_reg_1124_pp0_iter6_reg;
reg   [2:0] buff_s_out_1_addr_reg_1130;
reg   [2:0] buff_s_out_1_addr_reg_1130_pp0_iter3_reg;
reg   [2:0] buff_s_out_1_addr_reg_1130_pp0_iter4_reg;
reg   [2:0] buff_s_out_1_addr_reg_1130_pp0_iter5_reg;
reg   [2:0] buff_s_out_1_addr_reg_1130_pp0_iter6_reg;
reg   [2:0] buff_s_out_2_addr_reg_1136;
reg   [2:0] buff_s_out_2_addr_reg_1136_pp0_iter3_reg;
reg   [2:0] buff_s_out_2_addr_reg_1136_pp0_iter4_reg;
reg   [2:0] buff_s_out_2_addr_reg_1136_pp0_iter5_reg;
reg   [2:0] buff_s_out_2_addr_reg_1136_pp0_iter6_reg;
reg   [2:0] buff_s_out_3_addr_reg_1142;
reg   [2:0] buff_s_out_3_addr_reg_1142_pp0_iter3_reg;
reg   [2:0] buff_s_out_3_addr_reg_1142_pp0_iter4_reg;
reg   [2:0] buff_s_out_3_addr_reg_1142_pp0_iter5_reg;
reg   [2:0] buff_s_out_3_addr_reg_1142_pp0_iter6_reg;
reg   [2:0] buff_s_out_4_addr_reg_1148;
reg   [2:0] buff_s_out_4_addr_reg_1148_pp0_iter3_reg;
reg   [2:0] buff_s_out_4_addr_reg_1148_pp0_iter4_reg;
reg   [2:0] buff_s_out_4_addr_reg_1148_pp0_iter5_reg;
reg   [2:0] buff_s_out_4_addr_reg_1148_pp0_iter6_reg;
reg   [2:0] buff_s_out_4_addr_reg_1148_pp0_iter7_reg;
reg   [2:0] buff_s_out_5_addr_reg_1153;
reg   [2:0] buff_s_out_5_addr_reg_1153_pp0_iter3_reg;
reg   [2:0] buff_s_out_5_addr_reg_1153_pp0_iter4_reg;
reg   [2:0] buff_s_out_5_addr_reg_1153_pp0_iter5_reg;
reg   [2:0] buff_s_out_5_addr_reg_1153_pp0_iter6_reg;
reg   [2:0] buff_s_out_5_addr_reg_1153_pp0_iter7_reg;
reg   [2:0] buff_s_out_6_addr_reg_1158;
reg   [2:0] buff_s_out_6_addr_reg_1158_pp0_iter3_reg;
reg   [2:0] buff_s_out_6_addr_reg_1158_pp0_iter4_reg;
reg   [2:0] buff_s_out_6_addr_reg_1158_pp0_iter5_reg;
reg   [2:0] buff_s_out_6_addr_reg_1158_pp0_iter6_reg;
reg   [2:0] buff_s_out_6_addr_reg_1158_pp0_iter7_reg;
reg   [2:0] buff_s_out_7_addr_reg_1163;
reg   [2:0] buff_s_out_7_addr_reg_1163_pp0_iter3_reg;
reg   [2:0] buff_s_out_7_addr_reg_1163_pp0_iter4_reg;
reg   [2:0] buff_s_out_7_addr_reg_1163_pp0_iter5_reg;
reg   [2:0] buff_s_out_7_addr_reg_1163_pp0_iter6_reg;
reg   [2:0] buff_s_out_7_addr_reg_1163_pp0_iter7_reg;
reg   [31:0] buff_s_out_load_reg_1168;
reg   [31:0] buff_s_out_1_load_reg_1173;
reg   [31:0] buff_s_out_2_load_reg_1178;
reg   [31:0] buff_s_out_3_load_reg_1183;
reg   [31:0] mul_reg_1188;
reg   [31:0] mul_1_reg_1193;
reg   [31:0] mul_2_reg_1198;
reg   [31:0] mul_3_reg_1203;
reg   [31:0] mul_4_reg_1208;
reg   [31:0] mul_5_reg_1213;
reg   [31:0] mul_6_reg_1218;
reg   [31:0] mul_7_reg_1223;
reg   [31:0] buff_s_out_4_load_reg_1228;
reg   [31:0] buff_s_out_5_load_reg_1233;
reg   [31:0] buff_s_out_6_load_reg_1238;
reg   [31:0] buff_s_out_7_load_reg_1243;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_702_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln25_fu_796_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln5_1_fu_883_p1;
reg   [6:0] j_fu_130;
wire   [6:0] add_ln24_fu_816_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_1_fu_134;
wire   [6:0] select_ln23_fu_676_p3;
reg   [6:0] ap_sig_allocacmp_i_1_load;
reg   [9:0] indvar_flatten_fu_138;
wire   [9:0] add_ln23_1_fu_650_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    buff_r_ce0_local;
reg    buff_r_1_ce0_local;
reg    buff_r_2_ce0_local;
reg    buff_r_3_ce0_local;
reg    buff_r_4_ce0_local;
reg    buff_r_5_ce0_local;
reg    buff_r_6_ce0_local;
reg    buff_r_7_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_4_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_7_ce0_local;
reg    buff_A_8_ce0_local;
reg    buff_A_9_ce0_local;
reg    buff_A_10_ce0_local;
reg    buff_A_11_ce0_local;
reg    buff_A_12_ce0_local;
reg    buff_A_13_ce0_local;
reg    buff_A_14_ce0_local;
reg    buff_A_15_ce0_local;
reg    buff_s_out_ce1_local;
reg    buff_s_out_we0_local;
reg    buff_s_out_ce0_local;
reg    buff_s_out_1_ce1_local;
reg    buff_s_out_1_we0_local;
reg    buff_s_out_1_ce0_local;
reg    buff_s_out_2_ce1_local;
reg    buff_s_out_2_we0_local;
reg    buff_s_out_2_ce0_local;
reg    buff_s_out_3_ce1_local;
reg    buff_s_out_3_we0_local;
reg    buff_s_out_3_ce0_local;
reg    buff_s_out_4_ce0_local;
reg   [2:0] buff_s_out_4_address0_local;
reg    buff_s_out_4_we0_local;
reg    buff_s_out_5_ce0_local;
reg   [2:0] buff_s_out_5_address0_local;
reg    buff_s_out_5_we0_local;
reg    buff_s_out_6_ce0_local;
reg   [2:0] buff_s_out_6_address0_local;
reg    buff_s_out_6_we0_local;
reg    buff_s_out_7_ce0_local;
reg   [2:0] buff_s_out_7_address0_local;
reg    buff_s_out_7_we0_local;
reg   [31:0] grp_fu_570_p0;
reg   [31:0] grp_fu_570_p1;
reg   [31:0] grp_fu_574_p0;
reg   [31:0] grp_fu_574_p1;
reg   [31:0] grp_fu_578_p0;
reg   [31:0] grp_fu_578_p1;
reg   [31:0] grp_fu_582_p0;
reg   [31:0] grp_fu_582_p1;
reg   [31:0] grp_fu_586_p0;
reg   [31:0] grp_fu_586_p1;
reg   [31:0] grp_fu_590_p0;
reg   [31:0] grp_fu_590_p1;
reg   [31:0] grp_fu_594_p0;
reg   [31:0] grp_fu_594_p1;
reg   [31:0] grp_fu_598_p0;
reg   [31:0] grp_fu_598_p1;
wire   [6:0] add_ln23_fu_662_p2;
wire   [2:0] lshr_ln5_3_fu_692_p4;
wire   [31:0] tmp_fu_740_p17;
wire   [6:0] select_ln5_fu_734_p3;
wire   [7:0] tmp_2_fu_789_p3;
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
wire   [2:0] tmp_fu_740_p1;
wire   [2:0] tmp_fu_740_p3;
wire   [2:0] tmp_fu_740_p5;
wire   [2:0] tmp_fu_740_p7;
wire  signed [2:0] tmp_fu_740_p9;
wire  signed [2:0] tmp_fu_740_p11;
wire  signed [2:0] tmp_fu_740_p13;
wire  signed [2:0] tmp_fu_740_p15;
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
#0 j_fu_130 = 7'd0;
#0 i_1_fu_134 = 7'd0;
#0 indvar_flatten_fu_138 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U35(.din0(buff_r_q0),.din1(buff_r_1_q0),.din2(buff_r_2_q0),.din3(buff_r_3_q0),.din4(buff_r_4_q0),.din5(buff_r_5_q0),.din6(buff_r_6_q0),.din7(buff_r_7_q0),.def(tmp_fu_740_p17),.sel(trunc_ln23_reg_929),.dout(tmp_fu_740_p19));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
        if (((icmp_ln23_fu_644_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_134 <= select_ln23_fu_676_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_134 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_644_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_138 <= add_ln23_1_fu_650_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_138 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_130 <= 7'd0;
    end else if (((icmp_ln23_reg_915 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_130 <= add_ln24_fu_816_p2;
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
        lshr_ln5_6_reg_999 <= {{select_ln5_fu_734_p3[5:3]}};
        lshr_ln5_6_reg_999_pp0_iter1_reg <= lshr_ln5_6_reg_999;
        tmp_reg_991 <= tmp_fu_740_p19;
        tmp_reg_991_pp0_iter1_reg <= tmp_reg_991;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_addr_reg_1130 <= zext_ln5_1_fu_883_p1;
        buff_s_out_1_addr_reg_1130_pp0_iter3_reg <= buff_s_out_1_addr_reg_1130;
        buff_s_out_1_addr_reg_1130_pp0_iter4_reg <= buff_s_out_1_addr_reg_1130_pp0_iter3_reg;
        buff_s_out_1_addr_reg_1130_pp0_iter5_reg <= buff_s_out_1_addr_reg_1130_pp0_iter4_reg;
        buff_s_out_1_addr_reg_1130_pp0_iter6_reg <= buff_s_out_1_addr_reg_1130_pp0_iter5_reg;
        buff_s_out_2_addr_reg_1136 <= zext_ln5_1_fu_883_p1;
        buff_s_out_2_addr_reg_1136_pp0_iter3_reg <= buff_s_out_2_addr_reg_1136;
        buff_s_out_2_addr_reg_1136_pp0_iter4_reg <= buff_s_out_2_addr_reg_1136_pp0_iter3_reg;
        buff_s_out_2_addr_reg_1136_pp0_iter5_reg <= buff_s_out_2_addr_reg_1136_pp0_iter4_reg;
        buff_s_out_2_addr_reg_1136_pp0_iter6_reg <= buff_s_out_2_addr_reg_1136_pp0_iter5_reg;
        buff_s_out_3_addr_reg_1142 <= zext_ln5_1_fu_883_p1;
        buff_s_out_3_addr_reg_1142_pp0_iter3_reg <= buff_s_out_3_addr_reg_1142;
        buff_s_out_3_addr_reg_1142_pp0_iter4_reg <= buff_s_out_3_addr_reg_1142_pp0_iter3_reg;
        buff_s_out_3_addr_reg_1142_pp0_iter5_reg <= buff_s_out_3_addr_reg_1142_pp0_iter4_reg;
        buff_s_out_3_addr_reg_1142_pp0_iter6_reg <= buff_s_out_3_addr_reg_1142_pp0_iter5_reg;
        buff_s_out_4_addr_reg_1148 <= zext_ln5_1_fu_883_p1;
        buff_s_out_4_addr_reg_1148_pp0_iter3_reg <= buff_s_out_4_addr_reg_1148;
        buff_s_out_4_addr_reg_1148_pp0_iter4_reg <= buff_s_out_4_addr_reg_1148_pp0_iter3_reg;
        buff_s_out_4_addr_reg_1148_pp0_iter5_reg <= buff_s_out_4_addr_reg_1148_pp0_iter4_reg;
        buff_s_out_4_addr_reg_1148_pp0_iter6_reg <= buff_s_out_4_addr_reg_1148_pp0_iter5_reg;
        buff_s_out_4_addr_reg_1148_pp0_iter7_reg <= buff_s_out_4_addr_reg_1148_pp0_iter6_reg;
        buff_s_out_5_addr_reg_1153 <= zext_ln5_1_fu_883_p1;
        buff_s_out_5_addr_reg_1153_pp0_iter3_reg <= buff_s_out_5_addr_reg_1153;
        buff_s_out_5_addr_reg_1153_pp0_iter4_reg <= buff_s_out_5_addr_reg_1153_pp0_iter3_reg;
        buff_s_out_5_addr_reg_1153_pp0_iter5_reg <= buff_s_out_5_addr_reg_1153_pp0_iter4_reg;
        buff_s_out_5_addr_reg_1153_pp0_iter6_reg <= buff_s_out_5_addr_reg_1153_pp0_iter5_reg;
        buff_s_out_5_addr_reg_1153_pp0_iter7_reg <= buff_s_out_5_addr_reg_1153_pp0_iter6_reg;
        buff_s_out_6_addr_reg_1158 <= zext_ln5_1_fu_883_p1;
        buff_s_out_6_addr_reg_1158_pp0_iter3_reg <= buff_s_out_6_addr_reg_1158;
        buff_s_out_6_addr_reg_1158_pp0_iter4_reg <= buff_s_out_6_addr_reg_1158_pp0_iter3_reg;
        buff_s_out_6_addr_reg_1158_pp0_iter5_reg <= buff_s_out_6_addr_reg_1158_pp0_iter4_reg;
        buff_s_out_6_addr_reg_1158_pp0_iter6_reg <= buff_s_out_6_addr_reg_1158_pp0_iter5_reg;
        buff_s_out_6_addr_reg_1158_pp0_iter7_reg <= buff_s_out_6_addr_reg_1158_pp0_iter6_reg;
        buff_s_out_7_addr_reg_1163 <= zext_ln5_1_fu_883_p1;
        buff_s_out_7_addr_reg_1163_pp0_iter3_reg <= buff_s_out_7_addr_reg_1163;
        buff_s_out_7_addr_reg_1163_pp0_iter4_reg <= buff_s_out_7_addr_reg_1163_pp0_iter3_reg;
        buff_s_out_7_addr_reg_1163_pp0_iter5_reg <= buff_s_out_7_addr_reg_1163_pp0_iter4_reg;
        buff_s_out_7_addr_reg_1163_pp0_iter6_reg <= buff_s_out_7_addr_reg_1163_pp0_iter5_reg;
        buff_s_out_7_addr_reg_1163_pp0_iter7_reg <= buff_s_out_7_addr_reg_1163_pp0_iter6_reg;
        buff_s_out_addr_reg_1124 <= zext_ln5_1_fu_883_p1;
        buff_s_out_addr_reg_1124_pp0_iter3_reg <= buff_s_out_addr_reg_1124;
        buff_s_out_addr_reg_1124_pp0_iter4_reg <= buff_s_out_addr_reg_1124_pp0_iter3_reg;
        buff_s_out_addr_reg_1124_pp0_iter5_reg <= buff_s_out_addr_reg_1124_pp0_iter4_reg;
        buff_s_out_addr_reg_1124_pp0_iter6_reg <= buff_s_out_addr_reg_1124_pp0_iter5_reg;
        icmp_ln23_reg_915 <= icmp_ln23_fu_644_p2;
        j_load_reg_919 <= ap_sig_allocacmp_j_load;
        select_ln25_1_reg_1089 <= select_ln25_1_fu_834_p3;
        select_ln25_2_reg_1094 <= select_ln25_2_fu_841_p3;
        select_ln25_3_reg_1099 <= select_ln25_3_fu_848_p3;
        select_ln25_4_reg_1104 <= select_ln25_4_fu_855_p3;
        select_ln25_5_reg_1109 <= select_ln25_5_fu_862_p3;
        select_ln25_6_reg_1114 <= select_ln25_6_fu_869_p3;
        select_ln25_7_reg_1119 <= select_ln25_7_fu_876_p3;
        select_ln25_reg_1084 <= select_ln25_fu_827_p3;
        tmp_1_reg_986 <= {{select_ln23_fu_676_p3[5:1]}};
        tmp_3_reg_924 <= ap_sig_allocacmp_j_load[32'd6];
        trunc_ln23_1_reg_934 <= trunc_ln23_1_fu_688_p1;
        trunc_ln23_reg_929 <= trunc_ln23_fu_684_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_1_load_reg_1173 <= buff_s_out_1_q1;
        buff_s_out_2_load_reg_1178 <= buff_s_out_2_q1;
        buff_s_out_3_load_reg_1183 <= buff_s_out_3_q1;
        buff_s_out_load_reg_1168 <= buff_s_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_4_load_reg_1228 <= buff_s_out_4_q0;
        buff_s_out_5_load_reg_1233 <= buff_s_out_5_q0;
        buff_s_out_6_load_reg_1238 <= buff_s_out_6_q0;
        buff_s_out_7_load_reg_1243 <= buff_s_out_7_q0;
        mul_4_reg_1208 <= grp_fu_2283_p_dout0;
        mul_5_reg_1213 <= grp_fu_2287_p_dout0;
        mul_6_reg_1218 <= grp_fu_2291_p_dout0;
        mul_7_reg_1223 <= grp_fu_2295_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_1_reg_1193 <= grp_fu_2287_p_dout0;
        mul_2_reg_1198 <= grp_fu_2291_p_dout0;
        mul_3_reg_1203 <= grp_fu_2295_p_dout0;
        mul_reg_1188 <= grp_fu_2283_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_602 <= grp_fu_2267_p_dout0;
        reg_608 <= grp_fu_2271_p_dout0;
        reg_614 <= grp_fu_2275_p_dout0;
        reg_620 <= grp_fu_2279_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln23_reg_915 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
        ap_sig_allocacmp_i_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_1_load = i_1_fu_134;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_138;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_10_ce0_local = 1'b1;
    end else begin
        buff_A_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_11_ce0_local = 1'b1;
    end else begin
        buff_A_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_12_ce0_local = 1'b1;
    end else begin
        buff_A_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_13_ce0_local = 1'b1;
    end else begin
        buff_A_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_14_ce0_local = 1'b1;
    end else begin
        buff_A_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_15_ce0_local = 1'b1;
    end else begin
        buff_A_15_ce0_local = 1'b0;
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
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
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
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
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
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
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
        buff_A_8_ce0_local = 1'b1;
    end else begin
        buff_A_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_9_ce0_local = 1'b1;
    end else begin
        buff_A_9_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_1_ce0_local = 1'b1;
    end else begin
        buff_r_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_2_ce0_local = 1'b1;
    end else begin
        buff_r_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_3_ce0_local = 1'b1;
    end else begin
        buff_r_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_4_ce0_local = 1'b1;
    end else begin
        buff_r_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_5_ce0_local = 1'b1;
    end else begin
        buff_r_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_6_ce0_local = 1'b1;
    end else begin
        buff_r_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_7_ce0_local = 1'b1;
    end else begin
        buff_r_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_ce1_local = 1'b1;
    end else begin
        buff_s_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_ce1_local = 1'b1;
    end else begin
        buff_s_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_reg_1148_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_4_address0_local = buff_s_out_4_addr_reg_1148;
    end else begin
        buff_s_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_s_out_4_ce0_local = 1'b1;
    end else begin
        buff_s_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_4_we0_local = 1'b1;
    end else begin
        buff_s_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_reg_1153_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_5_address0_local = buff_s_out_5_addr_reg_1153;
    end else begin
        buff_s_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_s_out_5_ce0_local = 1'b1;
    end else begin
        buff_s_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_5_we0_local = 1'b1;
    end else begin
        buff_s_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_reg_1158_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_6_address0_local = buff_s_out_6_addr_reg_1158;
    end else begin
        buff_s_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_s_out_6_ce0_local = 1'b1;
    end else begin
        buff_s_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_6_we0_local = 1'b1;
    end else begin
        buff_s_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_reg_1163_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_7_address0_local = buff_s_out_7_addr_reg_1163;
    end else begin
        buff_s_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_s_out_7_ce0_local = 1'b1;
    end else begin
        buff_s_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_s_out_7_we0_local = 1'b1;
    end else begin
        buff_s_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_570_p0 = buff_s_out_4_load_reg_1228;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_570_p0 = buff_s_out_load_reg_1168;
    end else begin
        grp_fu_570_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_570_p1 = mul_4_reg_1208;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_570_p1 = mul_reg_1188;
    end else begin
        grp_fu_570_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p0 = buff_s_out_5_load_reg_1233;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p0 = buff_s_out_1_load_reg_1173;
    end else begin
        grp_fu_574_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p1 = mul_5_reg_1213;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p1 = mul_1_reg_1193;
    end else begin
        grp_fu_574_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_578_p0 = buff_s_out_6_load_reg_1238;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_578_p0 = buff_s_out_2_load_reg_1178;
    end else begin
        grp_fu_578_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_578_p1 = mul_6_reg_1218;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_578_p1 = mul_2_reg_1198;
    end else begin
        grp_fu_578_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_582_p0 = buff_s_out_7_load_reg_1243;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_582_p0 = buff_s_out_3_load_reg_1183;
    end else begin
        grp_fu_582_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_582_p1 = mul_7_reg_1223;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_582_p1 = mul_3_reg_1203;
    end else begin
        grp_fu_582_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_586_p0 = select_ln25_4_reg_1104;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_586_p0 = select_ln25_reg_1084;
    end else begin
        grp_fu_586_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_586_p1 = tmp_reg_991_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_586_p1 = tmp_reg_991;
    end else begin
        grp_fu_586_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_590_p0 = select_ln25_5_reg_1109;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_590_p0 = select_ln25_1_reg_1089;
    end else begin
        grp_fu_590_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_590_p1 = tmp_reg_991_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_590_p1 = tmp_reg_991;
    end else begin
        grp_fu_590_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_594_p0 = select_ln25_6_reg_1114;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_594_p0 = select_ln25_2_reg_1094;
    end else begin
        grp_fu_594_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_594_p1 = tmp_reg_991_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_594_p1 = tmp_reg_991;
    end else begin
        grp_fu_594_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_598_p0 = select_ln25_7_reg_1119;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_598_p0 = select_ln25_3_reg_1099;
    end else begin
        grp_fu_598_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_598_p1 = tmp_reg_991_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_598_p1 = tmp_reg_991;
    end else begin
        grp_fu_598_p1 = 'bx;
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
assign add_ln23_1_fu_650_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln23_fu_662_p2 = (ap_sig_allocacmp_i_1_load + 7'd1);
assign add_ln24_fu_816_p2 = (select_ln5_fu_734_p3 + 7'd8);
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
assign buff_A_10_address0 = zext_ln25_fu_796_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_11_address0 = zext_ln25_fu_796_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_12_address0 = zext_ln25_fu_796_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_13_address0 = zext_ln25_fu_796_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_14_address0 = zext_ln25_fu_796_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_15_address0 = zext_ln25_fu_796_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_1_address0 = zext_ln25_fu_796_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln25_fu_796_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln25_fu_796_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln25_fu_796_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln25_fu_796_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln25_fu_796_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln25_fu_796_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_8_address0 = zext_ln25_fu_796_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_9_address0 = zext_ln25_fu_796_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_address0 = zext_ln25_fu_796_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_r_1_address0 = zext_ln5_fu_702_p1;
assign buff_r_1_ce0 = buff_r_1_ce0_local;
assign buff_r_2_address0 = zext_ln5_fu_702_p1;
assign buff_r_2_ce0 = buff_r_2_ce0_local;
assign buff_r_3_address0 = zext_ln5_fu_702_p1;
assign buff_r_3_ce0 = buff_r_3_ce0_local;
assign buff_r_4_address0 = zext_ln5_fu_702_p1;
assign buff_r_4_ce0 = buff_r_4_ce0_local;
assign buff_r_5_address0 = zext_ln5_fu_702_p1;
assign buff_r_5_ce0 = buff_r_5_ce0_local;
assign buff_r_6_address0 = zext_ln5_fu_702_p1;
assign buff_r_6_ce0 = buff_r_6_ce0_local;
assign buff_r_7_address0 = zext_ln5_fu_702_p1;
assign buff_r_7_ce0 = buff_r_7_ce0_local;
assign buff_r_address0 = zext_ln5_fu_702_p1;
assign buff_r_ce0 = buff_r_ce0_local;
assign buff_s_out_1_address0 = buff_s_out_1_addr_reg_1130_pp0_iter6_reg;
assign buff_s_out_1_address1 = zext_ln5_1_fu_883_p1;
assign buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
assign buff_s_out_1_ce1 = buff_s_out_1_ce1_local;
assign buff_s_out_1_d0 = reg_608;
assign buff_s_out_1_we0 = buff_s_out_1_we0_local;
assign buff_s_out_2_address0 = buff_s_out_2_addr_reg_1136_pp0_iter6_reg;
assign buff_s_out_2_address1 = zext_ln5_1_fu_883_p1;
assign buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
assign buff_s_out_2_ce1 = buff_s_out_2_ce1_local;
assign buff_s_out_2_d0 = reg_614;
assign buff_s_out_2_we0 = buff_s_out_2_we0_local;
assign buff_s_out_3_address0 = buff_s_out_3_addr_reg_1142_pp0_iter6_reg;
assign buff_s_out_3_address1 = zext_ln5_1_fu_883_p1;
assign buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
assign buff_s_out_3_ce1 = buff_s_out_3_ce1_local;
assign buff_s_out_3_d0 = reg_620;
assign buff_s_out_3_we0 = buff_s_out_3_we0_local;
assign buff_s_out_4_address0 = buff_s_out_4_address0_local;
assign buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
assign buff_s_out_4_d0 = reg_602;
assign buff_s_out_4_we0 = buff_s_out_4_we0_local;
assign buff_s_out_5_address0 = buff_s_out_5_address0_local;
assign buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
assign buff_s_out_5_d0 = reg_608;
assign buff_s_out_5_we0 = buff_s_out_5_we0_local;
assign buff_s_out_6_address0 = buff_s_out_6_address0_local;
assign buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
assign buff_s_out_6_d0 = reg_614;
assign buff_s_out_6_we0 = buff_s_out_6_we0_local;
assign buff_s_out_7_address0 = buff_s_out_7_address0_local;
assign buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
assign buff_s_out_7_d0 = reg_620;
assign buff_s_out_7_we0 = buff_s_out_7_we0_local;
assign buff_s_out_address0 = buff_s_out_addr_reg_1124_pp0_iter6_reg;
assign buff_s_out_address1 = zext_ln5_1_fu_883_p1;
assign buff_s_out_ce0 = buff_s_out_ce0_local;
assign buff_s_out_ce1 = buff_s_out_ce1_local;
assign buff_s_out_d0 = reg_602;
assign buff_s_out_we0 = buff_s_out_we0_local;
assign grp_fu_2267_p_ce = 1'b1;
assign grp_fu_2267_p_din0 = grp_fu_570_p0;
assign grp_fu_2267_p_din1 = grp_fu_570_p1;
assign grp_fu_2267_p_opcode = 2'd0;
assign grp_fu_2271_p_ce = 1'b1;
assign grp_fu_2271_p_din0 = grp_fu_574_p0;
assign grp_fu_2271_p_din1 = grp_fu_574_p1;
assign grp_fu_2271_p_opcode = 2'd0;
assign grp_fu_2275_p_ce = 1'b1;
assign grp_fu_2275_p_din0 = grp_fu_578_p0;
assign grp_fu_2275_p_din1 = grp_fu_578_p1;
assign grp_fu_2275_p_opcode = 2'd0;
assign grp_fu_2279_p_ce = 1'b1;
assign grp_fu_2279_p_din0 = grp_fu_582_p0;
assign grp_fu_2279_p_din1 = grp_fu_582_p1;
assign grp_fu_2279_p_opcode = 2'd0;
assign grp_fu_2283_p_ce = 1'b1;
assign grp_fu_2283_p_din0 = grp_fu_586_p0;
assign grp_fu_2283_p_din1 = grp_fu_586_p1;
assign grp_fu_2287_p_ce = 1'b1;
assign grp_fu_2287_p_din0 = grp_fu_590_p0;
assign grp_fu_2287_p_din1 = grp_fu_590_p1;
assign grp_fu_2291_p_ce = 1'b1;
assign grp_fu_2291_p_din0 = grp_fu_594_p0;
assign grp_fu_2291_p_din1 = grp_fu_594_p1;
assign grp_fu_2295_p_ce = 1'b1;
assign grp_fu_2295_p_din0 = grp_fu_598_p0;
assign grp_fu_2295_p_din1 = grp_fu_598_p1;
assign icmp_ln23_fu_644_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_3_fu_692_p4 = {{select_ln23_fu_676_p3[5:3]}};
assign lshr_ln5_6_fu_779_p4 = {{select_ln5_fu_734_p3[5:3]}};
assign select_ln23_fu_676_p3 = ((tmp_3_fu_668_p3[0:0] == 1'b1) ? add_ln23_fu_662_p2 : ap_sig_allocacmp_i_1_load);
assign select_ln25_1_fu_834_p3 = ((trunc_ln23_1_reg_934[0:0] == 1'b1) ? buff_A_3_q0 : buff_A_2_q0);
assign select_ln25_2_fu_841_p3 = ((trunc_ln23_1_reg_934[0:0] == 1'b1) ? buff_A_5_q0 : buff_A_4_q0);
assign select_ln25_3_fu_848_p3 = ((trunc_ln23_1_reg_934[0:0] == 1'b1) ? buff_A_7_q0 : buff_A_6_q0);
assign select_ln25_4_fu_855_p3 = ((trunc_ln23_1_reg_934[0:0] == 1'b1) ? buff_A_9_q0 : buff_A_8_q0);
assign select_ln25_5_fu_862_p3 = ((trunc_ln23_1_reg_934[0:0] == 1'b1) ? buff_A_11_q0 : buff_A_10_q0);
assign select_ln25_6_fu_869_p3 = ((trunc_ln23_1_reg_934[0:0] == 1'b1) ? buff_A_13_q0 : buff_A_12_q0);
assign select_ln25_7_fu_876_p3 = ((trunc_ln23_1_reg_934[0:0] == 1'b1) ? buff_A_15_q0 : buff_A_14_q0);
assign select_ln25_fu_827_p3 = ((trunc_ln23_1_reg_934[0:0] == 1'b1) ? buff_A_1_q0 : buff_A_q0);
assign select_ln5_fu_734_p3 = ((tmp_3_reg_924[0:0] == 1'b1) ? 7'd0 : j_load_reg_919);
assign tmp_2_fu_789_p3 = {{tmp_1_reg_986}, {lshr_ln5_6_fu_779_p4}};
assign tmp_3_fu_668_p3 = ap_sig_allocacmp_j_load[32'd6];
assign tmp_fu_740_p17 = 'bx;
assign trunc_ln23_1_fu_688_p1 = select_ln23_fu_676_p3[0:0];
assign trunc_ln23_fu_684_p1 = select_ln23_fu_676_p3[2:0];
assign zext_ln25_fu_796_p1 = tmp_2_fu_789_p3;
assign zext_ln5_1_fu_883_p1 = lshr_ln5_6_reg_999_pp0_iter1_reg;
assign zext_ln5_fu_702_p1 = lshr_ln5_3_fu_692_p4;
endmodule 