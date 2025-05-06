
module bicg_bicg_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_r_address0,buff_r_ce0,buff_r_q0,buff_r_1_address0,buff_r_1_ce0,buff_r_1_q0,buff_r_2_address0,buff_r_2_ce0,buff_r_2_q0,buff_r_3_address0,buff_r_3_ce0,buff_r_3_q0,buff_r_4_address0,buff_r_4_ce0,buff_r_4_q0,buff_r_5_address0,buff_r_5_ce0,buff_r_5_q0,buff_r_6_address0,buff_r_6_ce0,buff_r_6_q0,buff_r_7_address0,buff_r_7_ce0,buff_r_7_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_s_out_address0,buff_s_out_ce0,buff_s_out_we0,buff_s_out_d0,buff_s_out_address1,buff_s_out_ce1,buff_s_out_q1,buff_s_out_2_address0,buff_s_out_2_ce0,buff_s_out_2_we0,buff_s_out_2_d0,buff_s_out_2_address1,buff_s_out_2_ce1,buff_s_out_2_q1,buff_s_out_4_address0,buff_s_out_4_ce0,buff_s_out_4_we0,buff_s_out_4_d0,buff_s_out_4_address1,buff_s_out_4_ce1,buff_s_out_4_q1,buff_s_out_6_address0,buff_s_out_6_ce0,buff_s_out_6_we0,buff_s_out_6_d0,buff_s_out_6_address1,buff_s_out_6_ce1,buff_s_out_6_q1,buff_s_out_1_address0,buff_s_out_1_ce0,buff_s_out_1_we0,buff_s_out_1_d0,buff_s_out_1_address1,buff_s_out_1_ce1,buff_s_out_1_q1,buff_s_out_3_address0,buff_s_out_3_ce0,buff_s_out_3_we0,buff_s_out_3_d0,buff_s_out_3_address1,buff_s_out_3_ce1,buff_s_out_3_q1,buff_s_out_5_address0,buff_s_out_5_ce0,buff_s_out_5_we0,buff_s_out_5_d0,buff_s_out_5_address1,buff_s_out_5_ce1,buff_s_out_5_q1,buff_s_out_7_address0,buff_s_out_7_ce0,buff_s_out_7_we0,buff_s_out_7_d0,buff_s_out_7_address1,buff_s_out_7_ce1,buff_s_out_7_q1,grp_fu_2267_p_din0,grp_fu_2267_p_din1,grp_fu_2267_p_opcode,grp_fu_2267_p_dout0,grp_fu_2267_p_ce,grp_fu_2271_p_din0,grp_fu_2271_p_din1,grp_fu_2271_p_opcode,grp_fu_2271_p_dout0,grp_fu_2271_p_ce,grp_fu_2275_p_din0,grp_fu_2275_p_din1,grp_fu_2275_p_dout0,grp_fu_2275_p_ce,grp_fu_2279_p_din0,grp_fu_2279_p_din1,grp_fu_2279_p_dout0,grp_fu_2279_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
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
output  [2:0] buff_s_out_2_address0;
output   buff_s_out_2_ce0;
output   buff_s_out_2_we0;
output  [31:0] buff_s_out_2_d0;
output  [2:0] buff_s_out_2_address1;
output   buff_s_out_2_ce1;
input  [31:0] buff_s_out_2_q1;
output  [2:0] buff_s_out_4_address0;
output   buff_s_out_4_ce0;
output   buff_s_out_4_we0;
output  [31:0] buff_s_out_4_d0;
output  [2:0] buff_s_out_4_address1;
output   buff_s_out_4_ce1;
input  [31:0] buff_s_out_4_q1;
output  [2:0] buff_s_out_6_address0;
output   buff_s_out_6_ce0;
output   buff_s_out_6_we0;
output  [31:0] buff_s_out_6_d0;
output  [2:0] buff_s_out_6_address1;
output   buff_s_out_6_ce1;
input  [31:0] buff_s_out_6_q1;
output  [2:0] buff_s_out_1_address0;
output   buff_s_out_1_ce0;
output   buff_s_out_1_we0;
output  [31:0] buff_s_out_1_d0;
output  [2:0] buff_s_out_1_address1;
output   buff_s_out_1_ce1;
input  [31:0] buff_s_out_1_q1;
output  [2:0] buff_s_out_3_address0;
output   buff_s_out_3_ce0;
output   buff_s_out_3_we0;
output  [31:0] buff_s_out_3_d0;
output  [2:0] buff_s_out_3_address1;
output   buff_s_out_3_ce1;
input  [31:0] buff_s_out_3_q1;
output  [2:0] buff_s_out_5_address0;
output   buff_s_out_5_ce0;
output   buff_s_out_5_we0;
output  [31:0] buff_s_out_5_d0;
output  [2:0] buff_s_out_5_address1;
output   buff_s_out_5_ce1;
input  [31:0] buff_s_out_5_q1;
output  [2:0] buff_s_out_7_address0;
output   buff_s_out_7_ce0;
output   buff_s_out_7_we0;
output  [31:0] buff_s_out_7_d0;
output  [2:0] buff_s_out_7_address1;
output   buff_s_out_7_ce1;
input  [31:0] buff_s_out_7_q1;
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
input  [31:0] grp_fu_2275_p_dout0;
output   grp_fu_2275_p_ce;
output  [31:0] grp_fu_2279_p_din0;
output  [31:0] grp_fu_2279_p_din1;
input  [31:0] grp_fu_2279_p_dout0;
output   grp_fu_2279_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln23_fu_626_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln23_fu_679_p1;
reg   [2:0] trunc_ln23_reg_1000;
wire   [0:0] trunc_ln23_1_fu_683_p1;
reg   [0:0] trunc_ln23_1_reg_1005;
wire   [2:0] trunc_ln24_fu_709_p1;
reg   [2:0] trunc_ln24_reg_1057;
reg   [2:0] trunc_ln24_reg_1057_pp0_iter2_reg;
reg   [2:0] trunc_ln24_reg_1057_pp0_iter3_reg;
reg   [2:0] trunc_ln24_reg_1057_pp0_iter4_reg;
reg   [2:0] trunc_ln24_reg_1057_pp0_iter5_reg;
reg   [2:0] trunc_ln24_reg_1057_pp0_iter6_reg;
reg   [2:0] trunc_ln24_reg_1057_pp0_iter7_reg;
reg   [2:0] trunc_ln24_reg_1057_pp0_iter8_reg;
reg   [2:0] trunc_ln24_reg_1057_pp0_iter9_reg;
reg   [2:0] trunc_ln24_reg_1057_pp0_iter10_reg;
reg   [2:0] trunc_ln24_reg_1057_pp0_iter11_reg;
reg   [2:0] trunc_ln24_reg_1057_pp0_iter12_reg;
reg   [2:0] trunc_ln24_reg_1057_pp0_iter13_reg;
wire   [2:0] lshr_ln5_6_fu_713_p4;
reg   [2:0] lshr_ln5_6_reg_1065;
reg   [2:0] lshr_ln5_6_reg_1065_pp0_iter2_reg;
reg   [2:0] lshr_ln5_6_reg_1065_pp0_iter3_reg;
reg   [2:0] lshr_ln5_6_reg_1065_pp0_iter4_reg;
wire   [31:0] tmp_fu_777_p19;
reg   [31:0] tmp_reg_1150;
wire   [31:0] tmp_s_fu_844_p11;
reg   [31:0] tmp_s_reg_1156;
wire   [31:0] tmp_1_fu_895_p11;
reg   [31:0] tmp_1_reg_1161;
reg   [2:0] buff_s_out_addr_reg_1166;
reg   [2:0] buff_s_out_addr_reg_1166_pp0_iter6_reg;
reg   [2:0] buff_s_out_addr_reg_1166_pp0_iter7_reg;
reg   [2:0] buff_s_out_addr_reg_1166_pp0_iter8_reg;
reg   [2:0] buff_s_out_addr_reg_1166_pp0_iter9_reg;
reg   [2:0] buff_s_out_addr_reg_1166_pp0_iter10_reg;
reg   [2:0] buff_s_out_addr_reg_1166_pp0_iter11_reg;
reg   [2:0] buff_s_out_addr_reg_1166_pp0_iter12_reg;
reg   [2:0] buff_s_out_addr_reg_1166_pp0_iter13_reg;
reg   [2:0] buff_s_out_2_addr_reg_1172;
reg   [2:0] buff_s_out_2_addr_reg_1172_pp0_iter6_reg;
reg   [2:0] buff_s_out_2_addr_reg_1172_pp0_iter7_reg;
reg   [2:0] buff_s_out_2_addr_reg_1172_pp0_iter8_reg;
reg   [2:0] buff_s_out_2_addr_reg_1172_pp0_iter9_reg;
reg   [2:0] buff_s_out_2_addr_reg_1172_pp0_iter10_reg;
reg   [2:0] buff_s_out_2_addr_reg_1172_pp0_iter11_reg;
reg   [2:0] buff_s_out_2_addr_reg_1172_pp0_iter12_reg;
reg   [2:0] buff_s_out_2_addr_reg_1172_pp0_iter13_reg;
reg   [2:0] buff_s_out_4_addr_reg_1178;
reg   [2:0] buff_s_out_4_addr_reg_1178_pp0_iter6_reg;
reg   [2:0] buff_s_out_4_addr_reg_1178_pp0_iter7_reg;
reg   [2:0] buff_s_out_4_addr_reg_1178_pp0_iter8_reg;
reg   [2:0] buff_s_out_4_addr_reg_1178_pp0_iter9_reg;
reg   [2:0] buff_s_out_4_addr_reg_1178_pp0_iter10_reg;
reg   [2:0] buff_s_out_4_addr_reg_1178_pp0_iter11_reg;
reg   [2:0] buff_s_out_4_addr_reg_1178_pp0_iter12_reg;
reg   [2:0] buff_s_out_4_addr_reg_1178_pp0_iter13_reg;
reg   [2:0] buff_s_out_6_addr_reg_1184;
reg   [2:0] buff_s_out_6_addr_reg_1184_pp0_iter6_reg;
reg   [2:0] buff_s_out_6_addr_reg_1184_pp0_iter7_reg;
reg   [2:0] buff_s_out_6_addr_reg_1184_pp0_iter8_reg;
reg   [2:0] buff_s_out_6_addr_reg_1184_pp0_iter9_reg;
reg   [2:0] buff_s_out_6_addr_reg_1184_pp0_iter10_reg;
reg   [2:0] buff_s_out_6_addr_reg_1184_pp0_iter11_reg;
reg   [2:0] buff_s_out_6_addr_reg_1184_pp0_iter12_reg;
reg   [2:0] buff_s_out_6_addr_reg_1184_pp0_iter13_reg;
reg   [2:0] buff_s_out_1_addr_reg_1190;
reg   [2:0] buff_s_out_1_addr_reg_1190_pp0_iter6_reg;
reg   [2:0] buff_s_out_1_addr_reg_1190_pp0_iter7_reg;
reg   [2:0] buff_s_out_1_addr_reg_1190_pp0_iter8_reg;
reg   [2:0] buff_s_out_1_addr_reg_1190_pp0_iter9_reg;
reg   [2:0] buff_s_out_1_addr_reg_1190_pp0_iter10_reg;
reg   [2:0] buff_s_out_1_addr_reg_1190_pp0_iter11_reg;
reg   [2:0] buff_s_out_1_addr_reg_1190_pp0_iter12_reg;
reg   [2:0] buff_s_out_1_addr_reg_1190_pp0_iter13_reg;
reg   [2:0] buff_s_out_3_addr_reg_1196;
reg   [2:0] buff_s_out_3_addr_reg_1196_pp0_iter6_reg;
reg   [2:0] buff_s_out_3_addr_reg_1196_pp0_iter7_reg;
reg   [2:0] buff_s_out_3_addr_reg_1196_pp0_iter8_reg;
reg   [2:0] buff_s_out_3_addr_reg_1196_pp0_iter9_reg;
reg   [2:0] buff_s_out_3_addr_reg_1196_pp0_iter10_reg;
reg   [2:0] buff_s_out_3_addr_reg_1196_pp0_iter11_reg;
reg   [2:0] buff_s_out_3_addr_reg_1196_pp0_iter12_reg;
reg   [2:0] buff_s_out_3_addr_reg_1196_pp0_iter13_reg;
reg   [2:0] buff_s_out_5_addr_reg_1202;
reg   [2:0] buff_s_out_5_addr_reg_1202_pp0_iter6_reg;
reg   [2:0] buff_s_out_5_addr_reg_1202_pp0_iter7_reg;
reg   [2:0] buff_s_out_5_addr_reg_1202_pp0_iter8_reg;
reg   [2:0] buff_s_out_5_addr_reg_1202_pp0_iter9_reg;
reg   [2:0] buff_s_out_5_addr_reg_1202_pp0_iter10_reg;
reg   [2:0] buff_s_out_5_addr_reg_1202_pp0_iter11_reg;
reg   [2:0] buff_s_out_5_addr_reg_1202_pp0_iter12_reg;
reg   [2:0] buff_s_out_5_addr_reg_1202_pp0_iter13_reg;
reg   [2:0] buff_s_out_7_addr_reg_1208;
reg   [2:0] buff_s_out_7_addr_reg_1208_pp0_iter6_reg;
reg   [2:0] buff_s_out_7_addr_reg_1208_pp0_iter7_reg;
reg   [2:0] buff_s_out_7_addr_reg_1208_pp0_iter8_reg;
reg   [2:0] buff_s_out_7_addr_reg_1208_pp0_iter9_reg;
reg   [2:0] buff_s_out_7_addr_reg_1208_pp0_iter10_reg;
reg   [2:0] buff_s_out_7_addr_reg_1208_pp0_iter11_reg;
reg   [2:0] buff_s_out_7_addr_reg_1208_pp0_iter12_reg;
reg   [2:0] buff_s_out_7_addr_reg_1208_pp0_iter13_reg;
wire   [31:0] tmp_5_fu_929_p11;
reg   [31:0] tmp_5_reg_1214;
reg   [31:0] mul_reg_1219;
reg   [31:0] mul_1_reg_1224;
wire   [31:0] tmp_2_fu_952_p11;
reg   [31:0] tmp_2_reg_1229;
reg   [31:0] add_reg_1234;
reg   [31:0] add_1_reg_1242;
wire   [63:0] zext_ln5_fu_697_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln25_fu_741_p1;
wire   [63:0] zext_ln5_1_fu_918_p1;
reg   [6:0] j_fu_132;
wire   [6:0] add_ln24_fu_761_p2;
wire    ap_loop_init;
reg   [6:0] i_1_fu_136;
wire   [6:0] select_ln23_fu_671_p3;
reg   [11:0] indvar_flatten_fu_140;
wire   [11:0] add_ln23_1_fu_632_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
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
reg    buff_A_4_ce0_local;
reg    buff_A_5_ce0_local;
reg    buff_A_8_ce0_local;
reg    buff_A_9_ce0_local;
reg    buff_A_12_ce0_local;
reg    buff_A_13_ce0_local;
reg    buff_A_2_ce0_local;
reg    buff_A_3_ce0_local;
reg    buff_A_6_ce0_local;
reg    buff_A_7_ce0_local;
reg    buff_A_10_ce0_local;
reg    buff_A_11_ce0_local;
reg    buff_A_14_ce0_local;
reg    buff_A_15_ce0_local;
reg    buff_s_out_ce1_local;
reg    buff_s_out_we0_local;
reg    buff_s_out_ce0_local;
reg    buff_s_out_2_ce1_local;
reg    buff_s_out_2_we0_local;
reg    buff_s_out_2_ce0_local;
reg    buff_s_out_4_ce1_local;
reg    buff_s_out_4_we0_local;
reg    buff_s_out_4_ce0_local;
reg    buff_s_out_6_ce1_local;
reg    buff_s_out_6_we0_local;
reg    buff_s_out_6_ce0_local;
reg    buff_s_out_1_ce1_local;
reg    buff_s_out_1_we0_local;
reg    buff_s_out_1_ce0_local;
reg    buff_s_out_3_ce1_local;
reg    buff_s_out_3_we0_local;
reg    buff_s_out_3_ce0_local;
reg    buff_s_out_5_ce1_local;
reg    buff_s_out_5_we0_local;
reg    buff_s_out_5_ce0_local;
reg    buff_s_out_7_ce1_local;
reg    buff_s_out_7_we0_local;
reg    buff_s_out_7_ce0_local;
wire   [0:0] tmp_6_fu_655_p3;
wire   [6:0] add_ln23_fu_649_p2;
wire   [2:0] lshr_ln5_3_fu_687_p4;
wire   [6:0] select_ln5_fu_663_p3;
wire   [4:0] tmp_3_fu_723_p4;
wire   [7:0] tmp_4_fu_733_p3;
wire   [31:0] tmp_fu_777_p17;
wire   [31:0] tmp_s_fu_844_p2;
wire   [31:0] tmp_s_fu_844_p4;
wire   [31:0] tmp_s_fu_844_p6;
wire   [31:0] tmp_s_fu_844_p8;
wire   [31:0] tmp_s_fu_844_p9;
wire   [31:0] tmp_1_fu_895_p2;
wire   [31:0] tmp_1_fu_895_p4;
wire   [31:0] tmp_1_fu_895_p6;
wire   [31:0] tmp_1_fu_895_p8;
wire   [31:0] tmp_1_fu_895_p9;
wire   [31:0] tmp_5_fu_929_p9;
wire   [31:0] tmp_2_fu_952_p9;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire   [2:0] tmp_fu_777_p1;
wire   [2:0] tmp_fu_777_p3;
wire   [2:0] tmp_fu_777_p5;
wire   [2:0] tmp_fu_777_p7;
wire  signed [2:0] tmp_fu_777_p9;
wire  signed [2:0] tmp_fu_777_p11;
wire  signed [2:0] tmp_fu_777_p13;
wire  signed [2:0] tmp_fu_777_p15;
wire   [2:0] tmp_s_fu_844_p1;
wire   [2:0] tmp_s_fu_844_p3;
wire  signed [2:0] tmp_s_fu_844_p5;
wire  signed [2:0] tmp_s_fu_844_p7;
wire   [2:0] tmp_1_fu_895_p1;
wire   [2:0] tmp_1_fu_895_p3;
wire  signed [2:0] tmp_1_fu_895_p5;
wire  signed [2:0] tmp_1_fu_895_p7;
wire   [2:0] tmp_5_fu_929_p1;
wire   [2:0] tmp_5_fu_929_p3;
wire  signed [2:0] tmp_5_fu_929_p5;
wire  signed [2:0] tmp_5_fu_929_p7;
wire   [2:0] tmp_2_fu_952_p1;
wire   [2:0] tmp_2_fu_952_p3;
wire  signed [2:0] tmp_2_fu_952_p5;
wire  signed [2:0] tmp_2_fu_952_p7;
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
#0 j_fu_132 = 7'd0;
#0 i_1_fu_136 = 7'd0;
#0 indvar_flatten_fu_140 = 12'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U31(.din0(buff_r_q0),.din1(buff_r_1_q0),.din2(buff_r_2_q0),.din3(buff_r_3_q0),.din4(buff_r_4_q0),.din5(buff_r_5_q0),.din6(buff_r_6_q0),.din7(buff_r_7_q0),.def(tmp_fu_777_p17),.sel(trunc_ln23_reg_1000),.dout(tmp_fu_777_p19));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U32(.din0(tmp_s_fu_844_p2),.din1(tmp_s_fu_844_p4),.din2(tmp_s_fu_844_p6),.din3(tmp_s_fu_844_p8),.def(tmp_s_fu_844_p9),.sel(trunc_ln24_reg_1057),.dout(tmp_s_fu_844_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U33(.din0(tmp_1_fu_895_p2),.din1(tmp_1_fu_895_p4),.din2(tmp_1_fu_895_p6),.din3(tmp_1_fu_895_p8),.def(tmp_1_fu_895_p9),.sel(trunc_ln24_reg_1057),.dout(tmp_1_fu_895_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U34(.din0(buff_s_out_q1),.din1(buff_s_out_2_q1),.din2(buff_s_out_4_q1),.din3(buff_s_out_6_q1),.def(tmp_5_fu_929_p9),.sel(trunc_ln24_reg_1057_pp0_iter5_reg),.dout(tmp_5_fu_929_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U35(.din0(buff_s_out_1_q1),.din1(buff_s_out_3_q1),.din2(buff_s_out_5_q1),.din3(buff_s_out_7_q1),.def(tmp_2_fu_952_p9),.sel(trunc_ln24_reg_1057_pp0_iter5_reg),.dout(tmp_2_fu_952_p11));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
            i_1_fu_136 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_1_fu_136 <= select_ln23_fu_671_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_626_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_140 <= add_ln23_1_fu_632_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_140 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_132 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_132 <= add_ln24_fu_761_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_1_reg_1242 <= grp_fu_2271_p_dout0;
        add_reg_1234 <= grp_fu_2267_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        buff_s_out_1_addr_reg_1190 <= zext_ln5_1_fu_918_p1;
        buff_s_out_1_addr_reg_1190_pp0_iter10_reg <= buff_s_out_1_addr_reg_1190_pp0_iter9_reg;
        buff_s_out_1_addr_reg_1190_pp0_iter11_reg <= buff_s_out_1_addr_reg_1190_pp0_iter10_reg;
        buff_s_out_1_addr_reg_1190_pp0_iter12_reg <= buff_s_out_1_addr_reg_1190_pp0_iter11_reg;
        buff_s_out_1_addr_reg_1190_pp0_iter13_reg <= buff_s_out_1_addr_reg_1190_pp0_iter12_reg;
        buff_s_out_1_addr_reg_1190_pp0_iter6_reg <= buff_s_out_1_addr_reg_1190;
        buff_s_out_1_addr_reg_1190_pp0_iter7_reg <= buff_s_out_1_addr_reg_1190_pp0_iter6_reg;
        buff_s_out_1_addr_reg_1190_pp0_iter8_reg <= buff_s_out_1_addr_reg_1190_pp0_iter7_reg;
        buff_s_out_1_addr_reg_1190_pp0_iter9_reg <= buff_s_out_1_addr_reg_1190_pp0_iter8_reg;
        buff_s_out_2_addr_reg_1172 <= zext_ln5_1_fu_918_p1;
        buff_s_out_2_addr_reg_1172_pp0_iter10_reg <= buff_s_out_2_addr_reg_1172_pp0_iter9_reg;
        buff_s_out_2_addr_reg_1172_pp0_iter11_reg <= buff_s_out_2_addr_reg_1172_pp0_iter10_reg;
        buff_s_out_2_addr_reg_1172_pp0_iter12_reg <= buff_s_out_2_addr_reg_1172_pp0_iter11_reg;
        buff_s_out_2_addr_reg_1172_pp0_iter13_reg <= buff_s_out_2_addr_reg_1172_pp0_iter12_reg;
        buff_s_out_2_addr_reg_1172_pp0_iter6_reg <= buff_s_out_2_addr_reg_1172;
        buff_s_out_2_addr_reg_1172_pp0_iter7_reg <= buff_s_out_2_addr_reg_1172_pp0_iter6_reg;
        buff_s_out_2_addr_reg_1172_pp0_iter8_reg <= buff_s_out_2_addr_reg_1172_pp0_iter7_reg;
        buff_s_out_2_addr_reg_1172_pp0_iter9_reg <= buff_s_out_2_addr_reg_1172_pp0_iter8_reg;
        buff_s_out_3_addr_reg_1196 <= zext_ln5_1_fu_918_p1;
        buff_s_out_3_addr_reg_1196_pp0_iter10_reg <= buff_s_out_3_addr_reg_1196_pp0_iter9_reg;
        buff_s_out_3_addr_reg_1196_pp0_iter11_reg <= buff_s_out_3_addr_reg_1196_pp0_iter10_reg;
        buff_s_out_3_addr_reg_1196_pp0_iter12_reg <= buff_s_out_3_addr_reg_1196_pp0_iter11_reg;
        buff_s_out_3_addr_reg_1196_pp0_iter13_reg <= buff_s_out_3_addr_reg_1196_pp0_iter12_reg;
        buff_s_out_3_addr_reg_1196_pp0_iter6_reg <= buff_s_out_3_addr_reg_1196;
        buff_s_out_3_addr_reg_1196_pp0_iter7_reg <= buff_s_out_3_addr_reg_1196_pp0_iter6_reg;
        buff_s_out_3_addr_reg_1196_pp0_iter8_reg <= buff_s_out_3_addr_reg_1196_pp0_iter7_reg;
        buff_s_out_3_addr_reg_1196_pp0_iter9_reg <= buff_s_out_3_addr_reg_1196_pp0_iter8_reg;
        buff_s_out_4_addr_reg_1178 <= zext_ln5_1_fu_918_p1;
        buff_s_out_4_addr_reg_1178_pp0_iter10_reg <= buff_s_out_4_addr_reg_1178_pp0_iter9_reg;
        buff_s_out_4_addr_reg_1178_pp0_iter11_reg <= buff_s_out_4_addr_reg_1178_pp0_iter10_reg;
        buff_s_out_4_addr_reg_1178_pp0_iter12_reg <= buff_s_out_4_addr_reg_1178_pp0_iter11_reg;
        buff_s_out_4_addr_reg_1178_pp0_iter13_reg <= buff_s_out_4_addr_reg_1178_pp0_iter12_reg;
        buff_s_out_4_addr_reg_1178_pp0_iter6_reg <= buff_s_out_4_addr_reg_1178;
        buff_s_out_4_addr_reg_1178_pp0_iter7_reg <= buff_s_out_4_addr_reg_1178_pp0_iter6_reg;
        buff_s_out_4_addr_reg_1178_pp0_iter8_reg <= buff_s_out_4_addr_reg_1178_pp0_iter7_reg;
        buff_s_out_4_addr_reg_1178_pp0_iter9_reg <= buff_s_out_4_addr_reg_1178_pp0_iter8_reg;
        buff_s_out_5_addr_reg_1202 <= zext_ln5_1_fu_918_p1;
        buff_s_out_5_addr_reg_1202_pp0_iter10_reg <= buff_s_out_5_addr_reg_1202_pp0_iter9_reg;
        buff_s_out_5_addr_reg_1202_pp0_iter11_reg <= buff_s_out_5_addr_reg_1202_pp0_iter10_reg;
        buff_s_out_5_addr_reg_1202_pp0_iter12_reg <= buff_s_out_5_addr_reg_1202_pp0_iter11_reg;
        buff_s_out_5_addr_reg_1202_pp0_iter13_reg <= buff_s_out_5_addr_reg_1202_pp0_iter12_reg;
        buff_s_out_5_addr_reg_1202_pp0_iter6_reg <= buff_s_out_5_addr_reg_1202;
        buff_s_out_5_addr_reg_1202_pp0_iter7_reg <= buff_s_out_5_addr_reg_1202_pp0_iter6_reg;
        buff_s_out_5_addr_reg_1202_pp0_iter8_reg <= buff_s_out_5_addr_reg_1202_pp0_iter7_reg;
        buff_s_out_5_addr_reg_1202_pp0_iter9_reg <= buff_s_out_5_addr_reg_1202_pp0_iter8_reg;
        buff_s_out_6_addr_reg_1184 <= zext_ln5_1_fu_918_p1;
        buff_s_out_6_addr_reg_1184_pp0_iter10_reg <= buff_s_out_6_addr_reg_1184_pp0_iter9_reg;
        buff_s_out_6_addr_reg_1184_pp0_iter11_reg <= buff_s_out_6_addr_reg_1184_pp0_iter10_reg;
        buff_s_out_6_addr_reg_1184_pp0_iter12_reg <= buff_s_out_6_addr_reg_1184_pp0_iter11_reg;
        buff_s_out_6_addr_reg_1184_pp0_iter13_reg <= buff_s_out_6_addr_reg_1184_pp0_iter12_reg;
        buff_s_out_6_addr_reg_1184_pp0_iter6_reg <= buff_s_out_6_addr_reg_1184;
        buff_s_out_6_addr_reg_1184_pp0_iter7_reg <= buff_s_out_6_addr_reg_1184_pp0_iter6_reg;
        buff_s_out_6_addr_reg_1184_pp0_iter8_reg <= buff_s_out_6_addr_reg_1184_pp0_iter7_reg;
        buff_s_out_6_addr_reg_1184_pp0_iter9_reg <= buff_s_out_6_addr_reg_1184_pp0_iter8_reg;
        buff_s_out_7_addr_reg_1208 <= zext_ln5_1_fu_918_p1;
        buff_s_out_7_addr_reg_1208_pp0_iter10_reg <= buff_s_out_7_addr_reg_1208_pp0_iter9_reg;
        buff_s_out_7_addr_reg_1208_pp0_iter11_reg <= buff_s_out_7_addr_reg_1208_pp0_iter10_reg;
        buff_s_out_7_addr_reg_1208_pp0_iter12_reg <= buff_s_out_7_addr_reg_1208_pp0_iter11_reg;
        buff_s_out_7_addr_reg_1208_pp0_iter13_reg <= buff_s_out_7_addr_reg_1208_pp0_iter12_reg;
        buff_s_out_7_addr_reg_1208_pp0_iter6_reg <= buff_s_out_7_addr_reg_1208;
        buff_s_out_7_addr_reg_1208_pp0_iter7_reg <= buff_s_out_7_addr_reg_1208_pp0_iter6_reg;
        buff_s_out_7_addr_reg_1208_pp0_iter8_reg <= buff_s_out_7_addr_reg_1208_pp0_iter7_reg;
        buff_s_out_7_addr_reg_1208_pp0_iter9_reg <= buff_s_out_7_addr_reg_1208_pp0_iter8_reg;
        buff_s_out_addr_reg_1166 <= zext_ln5_1_fu_918_p1;
        buff_s_out_addr_reg_1166_pp0_iter10_reg <= buff_s_out_addr_reg_1166_pp0_iter9_reg;
        buff_s_out_addr_reg_1166_pp0_iter11_reg <= buff_s_out_addr_reg_1166_pp0_iter10_reg;
        buff_s_out_addr_reg_1166_pp0_iter12_reg <= buff_s_out_addr_reg_1166_pp0_iter11_reg;
        buff_s_out_addr_reg_1166_pp0_iter13_reg <= buff_s_out_addr_reg_1166_pp0_iter12_reg;
        buff_s_out_addr_reg_1166_pp0_iter6_reg <= buff_s_out_addr_reg_1166;
        buff_s_out_addr_reg_1166_pp0_iter7_reg <= buff_s_out_addr_reg_1166_pp0_iter6_reg;
        buff_s_out_addr_reg_1166_pp0_iter8_reg <= buff_s_out_addr_reg_1166_pp0_iter7_reg;
        buff_s_out_addr_reg_1166_pp0_iter9_reg <= buff_s_out_addr_reg_1166_pp0_iter8_reg;
        lshr_ln5_6_reg_1065_pp0_iter2_reg <= lshr_ln5_6_reg_1065;
        lshr_ln5_6_reg_1065_pp0_iter3_reg <= lshr_ln5_6_reg_1065_pp0_iter2_reg;
        lshr_ln5_6_reg_1065_pp0_iter4_reg <= lshr_ln5_6_reg_1065_pp0_iter3_reg;
        mul_1_reg_1224 <= grp_fu_2279_p_dout0;
        mul_reg_1219 <= grp_fu_2275_p_dout0;
        tmp_1_reg_1161 <= tmp_1_fu_895_p11;
        tmp_2_reg_1229 <= tmp_2_fu_952_p11;
        tmp_5_reg_1214 <= tmp_5_fu_929_p11;
        tmp_reg_1150 <= tmp_fu_777_p19;
        tmp_s_reg_1156 <= tmp_s_fu_844_p11;
        trunc_ln24_reg_1057_pp0_iter10_reg <= trunc_ln24_reg_1057_pp0_iter9_reg;
        trunc_ln24_reg_1057_pp0_iter11_reg <= trunc_ln24_reg_1057_pp0_iter10_reg;
        trunc_ln24_reg_1057_pp0_iter12_reg <= trunc_ln24_reg_1057_pp0_iter11_reg;
        trunc_ln24_reg_1057_pp0_iter13_reg <= trunc_ln24_reg_1057_pp0_iter12_reg;
        trunc_ln24_reg_1057_pp0_iter2_reg <= trunc_ln24_reg_1057;
        trunc_ln24_reg_1057_pp0_iter3_reg <= trunc_ln24_reg_1057_pp0_iter2_reg;
        trunc_ln24_reg_1057_pp0_iter4_reg <= trunc_ln24_reg_1057_pp0_iter3_reg;
        trunc_ln24_reg_1057_pp0_iter5_reg <= trunc_ln24_reg_1057_pp0_iter4_reg;
        trunc_ln24_reg_1057_pp0_iter6_reg <= trunc_ln24_reg_1057_pp0_iter5_reg;
        trunc_ln24_reg_1057_pp0_iter7_reg <= trunc_ln24_reg_1057_pp0_iter6_reg;
        trunc_ln24_reg_1057_pp0_iter8_reg <= trunc_ln24_reg_1057_pp0_iter7_reg;
        trunc_ln24_reg_1057_pp0_iter9_reg <= trunc_ln24_reg_1057_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln5_6_reg_1065 <= {{select_ln5_fu_663_p3[5:3]}};
        trunc_ln23_1_reg_1005 <= trunc_ln23_1_fu_683_p1;
        trunc_ln23_reg_1000 <= trunc_ln23_fu_679_p1;
        trunc_ln24_reg_1057 <= trunc_ln24_fu_709_p1;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_626_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_140;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_10_ce0_local = 1'b1;
    end else begin
        buff_A_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_11_ce0_local = 1'b1;
    end else begin
        buff_A_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_12_ce0_local = 1'b1;
    end else begin
        buff_A_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_13_ce0_local = 1'b1;
    end else begin
        buff_A_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_14_ce0_local = 1'b1;
    end else begin
        buff_A_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_15_ce0_local = 1'b1;
    end else begin
        buff_A_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_4_ce0_local = 1'b1;
    end else begin
        buff_A_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_5_ce0_local = 1'b1;
    end else begin
        buff_A_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_6_ce0_local = 1'b1;
    end else begin
        buff_A_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_7_ce0_local = 1'b1;
    end else begin
        buff_A_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_8_ce0_local = 1'b1;
    end else begin
        buff_A_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_9_ce0_local = 1'b1;
    end else begin
        buff_A_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_1_ce0_local = 1'b1;
    end else begin
        buff_r_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_2_ce0_local = 1'b1;
    end else begin
        buff_r_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_3_ce0_local = 1'b1;
    end else begin
        buff_r_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_4_ce0_local = 1'b1;
    end else begin
        buff_r_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_5_ce0_local = 1'b1;
    end else begin
        buff_r_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_6_ce0_local = 1'b1;
    end else begin
        buff_r_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_7_ce0_local = 1'b1;
    end else begin
        buff_r_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln24_reg_1057_pp0_iter13_reg == 3'd0))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_2_ce0_local = 1'b1;
    end else begin
        buff_s_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_s_out_2_ce1_local = 1'b1;
    end else begin
        buff_s_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln24_reg_1057_pp0_iter13_reg == 3'd2))) begin
        buff_s_out_2_we0_local = 1'b1;
    end else begin
        buff_s_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_3_ce0_local = 1'b1;
    end else begin
        buff_s_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_s_out_3_ce1_local = 1'b1;
    end else begin
        buff_s_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln24_reg_1057_pp0_iter13_reg == 3'd2))) begin
        buff_s_out_3_we0_local = 1'b1;
    end else begin
        buff_s_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_4_ce0_local = 1'b1;
    end else begin
        buff_s_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_s_out_4_ce1_local = 1'b1;
    end else begin
        buff_s_out_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln24_reg_1057_pp0_iter13_reg == 3'd4))) begin
        buff_s_out_4_we0_local = 1'b1;
    end else begin
        buff_s_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_5_ce0_local = 1'b1;
    end else begin
        buff_s_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_s_out_5_ce1_local = 1'b1;
    end else begin
        buff_s_out_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln24_reg_1057_pp0_iter13_reg == 3'd4))) begin
        buff_s_out_5_we0_local = 1'b1;
    end else begin
        buff_s_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_6_ce0_local = 1'b1;
    end else begin
        buff_s_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_s_out_6_ce1_local = 1'b1;
    end else begin
        buff_s_out_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln24_reg_1057_pp0_iter13_reg == 3'd4) & ~(trunc_ln24_reg_1057_pp0_iter13_reg == 3'd2) & ~(trunc_ln24_reg_1057_pp0_iter13_reg == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_6_we0_local = 1'b1;
    end else begin
        buff_s_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_7_ce0_local = 1'b1;
    end else begin
        buff_s_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_s_out_7_ce1_local = 1'b1;
    end else begin
        buff_s_out_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln24_reg_1057_pp0_iter13_reg == 3'd4) & ~(trunc_ln24_reg_1057_pp0_iter13_reg == 3'd2) & ~(trunc_ln24_reg_1057_pp0_iter13_reg == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_7_we0_local = 1'b1;
    end else begin
        buff_s_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (trunc_ln24_reg_1057_pp0_iter13_reg == 3'd0))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
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
assign add_ln23_1_fu_632_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln23_fu_649_p2 = (i_1_fu_136 + 7'd1);
assign add_ln24_fu_761_p2 = (select_ln5_fu_663_p3 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buff_A_10_address0 = zext_ln25_fu_741_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_11_address0 = zext_ln25_fu_741_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_12_address0 = zext_ln25_fu_741_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_13_address0 = zext_ln25_fu_741_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_14_address0 = zext_ln25_fu_741_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_15_address0 = zext_ln25_fu_741_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_1_address0 = zext_ln25_fu_741_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_2_address0 = zext_ln25_fu_741_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_3_address0 = zext_ln25_fu_741_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln25_fu_741_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln25_fu_741_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln25_fu_741_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln25_fu_741_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_8_address0 = zext_ln25_fu_741_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_9_address0 = zext_ln25_fu_741_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_address0 = zext_ln25_fu_741_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_r_1_address0 = zext_ln5_fu_697_p1;
assign buff_r_1_ce0 = buff_r_1_ce0_local;
assign buff_r_2_address0 = zext_ln5_fu_697_p1;
assign buff_r_2_ce0 = buff_r_2_ce0_local;
assign buff_r_3_address0 = zext_ln5_fu_697_p1;
assign buff_r_3_ce0 = buff_r_3_ce0_local;
assign buff_r_4_address0 = zext_ln5_fu_697_p1;
assign buff_r_4_ce0 = buff_r_4_ce0_local;
assign buff_r_5_address0 = zext_ln5_fu_697_p1;
assign buff_r_5_ce0 = buff_r_5_ce0_local;
assign buff_r_6_address0 = zext_ln5_fu_697_p1;
assign buff_r_6_ce0 = buff_r_6_ce0_local;
assign buff_r_7_address0 = zext_ln5_fu_697_p1;
assign buff_r_7_ce0 = buff_r_7_ce0_local;
assign buff_r_address0 = zext_ln5_fu_697_p1;
assign buff_r_ce0 = buff_r_ce0_local;
assign buff_s_out_1_address0 = buff_s_out_1_addr_reg_1190_pp0_iter13_reg;
assign buff_s_out_1_address1 = zext_ln5_1_fu_918_p1;
assign buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
assign buff_s_out_1_ce1 = buff_s_out_1_ce1_local;
assign buff_s_out_1_d0 = add_1_reg_1242;
assign buff_s_out_1_we0 = buff_s_out_1_we0_local;
assign buff_s_out_2_address0 = buff_s_out_2_addr_reg_1172_pp0_iter13_reg;
assign buff_s_out_2_address1 = zext_ln5_1_fu_918_p1;
assign buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
assign buff_s_out_2_ce1 = buff_s_out_2_ce1_local;
assign buff_s_out_2_d0 = add_reg_1234;
assign buff_s_out_2_we0 = buff_s_out_2_we0_local;
assign buff_s_out_3_address0 = buff_s_out_3_addr_reg_1196_pp0_iter13_reg;
assign buff_s_out_3_address1 = zext_ln5_1_fu_918_p1;
assign buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
assign buff_s_out_3_ce1 = buff_s_out_3_ce1_local;
assign buff_s_out_3_d0 = add_1_reg_1242;
assign buff_s_out_3_we0 = buff_s_out_3_we0_local;
assign buff_s_out_4_address0 = buff_s_out_4_addr_reg_1178_pp0_iter13_reg;
assign buff_s_out_4_address1 = zext_ln5_1_fu_918_p1;
assign buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
assign buff_s_out_4_ce1 = buff_s_out_4_ce1_local;
assign buff_s_out_4_d0 = add_reg_1234;
assign buff_s_out_4_we0 = buff_s_out_4_we0_local;
assign buff_s_out_5_address0 = buff_s_out_5_addr_reg_1202_pp0_iter13_reg;
assign buff_s_out_5_address1 = zext_ln5_1_fu_918_p1;
assign buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
assign buff_s_out_5_ce1 = buff_s_out_5_ce1_local;
assign buff_s_out_5_d0 = add_1_reg_1242;
assign buff_s_out_5_we0 = buff_s_out_5_we0_local;
assign buff_s_out_6_address0 = buff_s_out_6_addr_reg_1184_pp0_iter13_reg;
assign buff_s_out_6_address1 = zext_ln5_1_fu_918_p1;
assign buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
assign buff_s_out_6_ce1 = buff_s_out_6_ce1_local;
assign buff_s_out_6_d0 = add_reg_1234;
assign buff_s_out_6_we0 = buff_s_out_6_we0_local;
assign buff_s_out_7_address0 = buff_s_out_7_addr_reg_1208_pp0_iter13_reg;
assign buff_s_out_7_address1 = zext_ln5_1_fu_918_p1;
assign buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
assign buff_s_out_7_ce1 = buff_s_out_7_ce1_local;
assign buff_s_out_7_d0 = add_1_reg_1242;
assign buff_s_out_7_we0 = buff_s_out_7_we0_local;
assign buff_s_out_address0 = buff_s_out_addr_reg_1166_pp0_iter13_reg;
assign buff_s_out_address1 = zext_ln5_1_fu_918_p1;
assign buff_s_out_ce0 = buff_s_out_ce0_local;
assign buff_s_out_ce1 = buff_s_out_ce1_local;
assign buff_s_out_d0 = add_reg_1234;
assign buff_s_out_we0 = buff_s_out_we0_local;
assign grp_fu_2267_p_ce = 1'b1;
assign grp_fu_2267_p_din0 = tmp_5_reg_1214;
assign grp_fu_2267_p_din1 = mul_reg_1219;
assign grp_fu_2267_p_opcode = 2'd0;
assign grp_fu_2271_p_ce = 1'b1;
assign grp_fu_2271_p_din0 = tmp_2_reg_1229;
assign grp_fu_2271_p_din1 = mul_1_reg_1224;
assign grp_fu_2271_p_opcode = 2'd0;
assign grp_fu_2275_p_ce = 1'b1;
assign grp_fu_2275_p_din0 = tmp_s_reg_1156;
assign grp_fu_2275_p_din1 = tmp_reg_1150;
assign grp_fu_2279_p_ce = 1'b1;
assign grp_fu_2279_p_din0 = tmp_1_reg_1161;
assign grp_fu_2279_p_din1 = tmp_reg_1150;
assign icmp_ln23_fu_626_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2048) ? 1'b1 : 1'b0);
assign lshr_ln5_3_fu_687_p4 = {{select_ln23_fu_671_p3[5:3]}};
assign lshr_ln5_6_fu_713_p4 = {{select_ln5_fu_663_p3[5:3]}};
assign select_ln23_fu_671_p3 = ((tmp_6_fu_655_p3[0:0] == 1'b1) ? add_ln23_fu_649_p2 : i_1_fu_136);
assign select_ln5_fu_663_p3 = ((tmp_6_fu_655_p3[0:0] == 1'b1) ? 7'd0 : j_fu_132);
assign tmp_1_fu_895_p2 = ((trunc_ln23_1_reg_1005[0:0] == 1'b1) ? buff_A_3_q0 : buff_A_2_q0);
assign tmp_1_fu_895_p4 = ((trunc_ln23_1_reg_1005[0:0] == 1'b1) ? buff_A_7_q0 : buff_A_6_q0);
assign tmp_1_fu_895_p6 = ((trunc_ln23_1_reg_1005[0:0] == 1'b1) ? buff_A_11_q0 : buff_A_10_q0);
assign tmp_1_fu_895_p8 = ((trunc_ln23_1_reg_1005[0:0] == 1'b1) ? buff_A_15_q0 : buff_A_14_q0);
assign tmp_1_fu_895_p9 = 'bx;
assign tmp_2_fu_952_p9 = 'bx;
assign tmp_3_fu_723_p4 = {{select_ln23_fu_671_p3[5:1]}};
assign tmp_4_fu_733_p3 = {{tmp_3_fu_723_p4}, {lshr_ln5_6_fu_713_p4}};
assign tmp_5_fu_929_p9 = 'bx;
assign tmp_6_fu_655_p3 = j_fu_132[32'd6];
assign tmp_fu_777_p17 = 'bx;
assign tmp_s_fu_844_p2 = ((trunc_ln23_1_reg_1005[0:0] == 1'b1) ? buff_A_1_q0 : buff_A_q0);
assign tmp_s_fu_844_p4 = ((trunc_ln23_1_reg_1005[0:0] == 1'b1) ? buff_A_5_q0 : buff_A_4_q0);
assign tmp_s_fu_844_p6 = ((trunc_ln23_1_reg_1005[0:0] == 1'b1) ? buff_A_9_q0 : buff_A_8_q0);
assign tmp_s_fu_844_p8 = ((trunc_ln23_1_reg_1005[0:0] == 1'b1) ? buff_A_13_q0 : buff_A_12_q0);
assign tmp_s_fu_844_p9 = 'bx;
assign trunc_ln23_1_fu_683_p1 = select_ln23_fu_671_p3[0:0];
assign trunc_ln23_fu_679_p1 = select_ln23_fu_671_p3[2:0];
assign trunc_ln24_fu_709_p1 = select_ln5_fu_663_p3[2:0];
assign zext_ln25_fu_741_p1 = tmp_4_fu_733_p3;
assign zext_ln5_1_fu_918_p1 = lshr_ln5_6_reg_1065_pp0_iter4_reg;
assign zext_ln5_fu_697_p1 = lshr_ln5_3_fu_687_p4;
endmodule 
