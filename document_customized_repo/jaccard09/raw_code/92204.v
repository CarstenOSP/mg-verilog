module bicg_bicg_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_r_address0,buff_r_ce0,buff_r_q0,buff_r_1_address0,buff_r_1_ce0,buff_r_1_q0,buff_r_2_address0,buff_r_2_ce0,buff_r_2_q0,buff_r_3_address0,buff_r_3_ce0,buff_r_3_q0,buff_r_4_address0,buff_r_4_ce0,buff_r_4_q0,buff_r_5_address0,buff_r_5_ce0,buff_r_5_q0,buff_r_6_address0,buff_r_6_ce0,buff_r_6_q0,buff_r_7_address0,buff_r_7_ce0,buff_r_7_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_A_16_address0,buff_A_16_ce0,buff_A_16_q0,buff_A_17_address0,buff_A_17_ce0,buff_A_17_q0,buff_A_18_address0,buff_A_18_ce0,buff_A_18_q0,buff_A_19_address0,buff_A_19_ce0,buff_A_19_q0,buff_A_20_address0,buff_A_20_ce0,buff_A_20_q0,buff_A_21_address0,buff_A_21_ce0,buff_A_21_q0,buff_A_22_address0,buff_A_22_ce0,buff_A_22_q0,buff_A_23_address0,buff_A_23_ce0,buff_A_23_q0,buff_A_24_address0,buff_A_24_ce0,buff_A_24_q0,buff_A_25_address0,buff_A_25_ce0,buff_A_25_q0,buff_A_26_address0,buff_A_26_ce0,buff_A_26_q0,buff_A_27_address0,buff_A_27_ce0,buff_A_27_q0,buff_A_28_address0,buff_A_28_ce0,buff_A_28_q0,buff_A_29_address0,buff_A_29_ce0,buff_A_29_q0,buff_A_30_address0,buff_A_30_ce0,buff_A_30_q0,buff_A_31_address0,buff_A_31_ce0,buff_A_31_q0,buff_s_out_address0,buff_s_out_ce0,buff_s_out_we0,buff_s_out_d0,buff_s_out_address1,buff_s_out_ce1,buff_s_out_q1,buff_s_out_1_address0,buff_s_out_1_ce0,buff_s_out_1_we0,buff_s_out_1_d0,buff_s_out_1_address1,buff_s_out_1_ce1,buff_s_out_1_q1,buff_s_out_2_address0,buff_s_out_2_ce0,buff_s_out_2_we0,buff_s_out_2_d0,buff_s_out_2_address1,buff_s_out_2_ce1,buff_s_out_2_q1,buff_s_out_3_address0,buff_s_out_3_ce0,buff_s_out_3_we0,buff_s_out_3_d0,buff_s_out_3_address1,buff_s_out_3_ce1,buff_s_out_3_q1,buff_s_out_4_address0,buff_s_out_4_ce0,buff_s_out_4_we0,buff_s_out_4_d0,buff_s_out_4_address1,buff_s_out_4_ce1,buff_s_out_4_q1,buff_s_out_5_address0,buff_s_out_5_ce0,buff_s_out_5_we0,buff_s_out_5_d0,buff_s_out_5_address1,buff_s_out_5_ce1,buff_s_out_5_q1,buff_s_out_6_address0,buff_s_out_6_ce0,buff_s_out_6_we0,buff_s_out_6_d0,buff_s_out_6_address1,buff_s_out_6_ce1,buff_s_out_6_q1,buff_s_out_7_address0,buff_s_out_7_ce0,buff_s_out_7_we0,buff_s_out_7_d0,buff_s_out_7_address1,buff_s_out_7_ce1,buff_s_out_7_q1,grp_fu_2394_p_din0,grp_fu_2394_p_din1,grp_fu_2394_p_opcode,grp_fu_2394_p_dout0,grp_fu_2394_p_ce,grp_fu_2398_p_din0,grp_fu_2398_p_din1,grp_fu_2398_p_dout0,grp_fu_2398_p_ce); 
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
output  [6:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [6:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [6:0] buff_A_2_address0;
output   buff_A_2_ce0;
input  [31:0] buff_A_2_q0;
output  [6:0] buff_A_3_address0;
output   buff_A_3_ce0;
input  [31:0] buff_A_3_q0;
output  [6:0] buff_A_4_address0;
output   buff_A_4_ce0;
input  [31:0] buff_A_4_q0;
output  [6:0] buff_A_5_address0;
output   buff_A_5_ce0;
input  [31:0] buff_A_5_q0;
output  [6:0] buff_A_6_address0;
output   buff_A_6_ce0;
input  [31:0] buff_A_6_q0;
output  [6:0] buff_A_7_address0;
output   buff_A_7_ce0;
input  [31:0] buff_A_7_q0;
output  [6:0] buff_A_8_address0;
output   buff_A_8_ce0;
input  [31:0] buff_A_8_q0;
output  [6:0] buff_A_9_address0;
output   buff_A_9_ce0;
input  [31:0] buff_A_9_q0;
output  [6:0] buff_A_10_address0;
output   buff_A_10_ce0;
input  [31:0] buff_A_10_q0;
output  [6:0] buff_A_11_address0;
output   buff_A_11_ce0;
input  [31:0] buff_A_11_q0;
output  [6:0] buff_A_12_address0;
output   buff_A_12_ce0;
input  [31:0] buff_A_12_q0;
output  [6:0] buff_A_13_address0;
output   buff_A_13_ce0;
input  [31:0] buff_A_13_q0;
output  [6:0] buff_A_14_address0;
output   buff_A_14_ce0;
input  [31:0] buff_A_14_q0;
output  [6:0] buff_A_15_address0;
output   buff_A_15_ce0;
input  [31:0] buff_A_15_q0;
output  [6:0] buff_A_16_address0;
output   buff_A_16_ce0;
input  [31:0] buff_A_16_q0;
output  [6:0] buff_A_17_address0;
output   buff_A_17_ce0;
input  [31:0] buff_A_17_q0;
output  [6:0] buff_A_18_address0;
output   buff_A_18_ce0;
input  [31:0] buff_A_18_q0;
output  [6:0] buff_A_19_address0;
output   buff_A_19_ce0;
input  [31:0] buff_A_19_q0;
output  [6:0] buff_A_20_address0;
output   buff_A_20_ce0;
input  [31:0] buff_A_20_q0;
output  [6:0] buff_A_21_address0;
output   buff_A_21_ce0;
input  [31:0] buff_A_21_q0;
output  [6:0] buff_A_22_address0;
output   buff_A_22_ce0;
input  [31:0] buff_A_22_q0;
output  [6:0] buff_A_23_address0;
output   buff_A_23_ce0;
input  [31:0] buff_A_23_q0;
output  [6:0] buff_A_24_address0;
output   buff_A_24_ce0;
input  [31:0] buff_A_24_q0;
output  [6:0] buff_A_25_address0;
output   buff_A_25_ce0;
input  [31:0] buff_A_25_q0;
output  [6:0] buff_A_26_address0;
output   buff_A_26_ce0;
input  [31:0] buff_A_26_q0;
output  [6:0] buff_A_27_address0;
output   buff_A_27_ce0;
input  [31:0] buff_A_27_q0;
output  [6:0] buff_A_28_address0;
output   buff_A_28_ce0;
input  [31:0] buff_A_28_q0;
output  [6:0] buff_A_29_address0;
output   buff_A_29_ce0;
input  [31:0] buff_A_29_q0;
output  [6:0] buff_A_30_address0;
output   buff_A_30_ce0;
input  [31:0] buff_A_30_q0;
output  [6:0] buff_A_31_address0;
output   buff_A_31_ce0;
input  [31:0] buff_A_31_q0;
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
output  [2:0] buff_s_out_4_address1;
output   buff_s_out_4_ce1;
input  [31:0] buff_s_out_4_q1;
output  [2:0] buff_s_out_5_address0;
output   buff_s_out_5_ce0;
output   buff_s_out_5_we0;
output  [31:0] buff_s_out_5_d0;
output  [2:0] buff_s_out_5_address1;
output   buff_s_out_5_ce1;
input  [31:0] buff_s_out_5_q1;
output  [2:0] buff_s_out_6_address0;
output   buff_s_out_6_ce0;
output   buff_s_out_6_we0;
output  [31:0] buff_s_out_6_d0;
output  [2:0] buff_s_out_6_address1;
output   buff_s_out_6_ce1;
input  [31:0] buff_s_out_6_q1;
output  [2:0] buff_s_out_7_address0;
output   buff_s_out_7_ce0;
output   buff_s_out_7_we0;
output  [31:0] buff_s_out_7_d0;
output  [2:0] buff_s_out_7_address1;
output   buff_s_out_7_ce1;
input  [31:0] buff_s_out_7_q1;
output  [31:0] grp_fu_2394_p_din0;
output  [31:0] grp_fu_2394_p_din1;
output  [1:0] grp_fu_2394_p_opcode;
input  [31:0] grp_fu_2394_p_dout0;
output   grp_fu_2394_p_ce;
output  [31:0] grp_fu_2398_p_din0;
output  [31:0] grp_fu_2398_p_din1;
input  [31:0] grp_fu_2398_p_dout0;
output   grp_fu_2398_p_ce;
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
wire   [0:0] icmp_ln23_fu_864_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln23_fu_915_p1;
reg   [2:0] trunc_ln23_reg_1366;
wire   [1:0] trunc_ln23_1_fu_919_p1;
reg   [1:0] trunc_ln23_1_reg_1371;
wire   [2:0] trunc_ln24_fu_945_p1;
reg   [2:0] trunc_ln24_reg_1423;
reg   [2:0] trunc_ln24_reg_1423_pp0_iter2_reg;
reg   [2:0] trunc_ln24_reg_1423_pp0_iter3_reg;
reg   [2:0] trunc_ln24_reg_1423_pp0_iter4_reg;
reg   [2:0] trunc_ln24_reg_1423_pp0_iter5_reg;
reg   [2:0] trunc_ln24_reg_1423_pp0_iter6_reg;
reg   [2:0] trunc_ln24_reg_1423_pp0_iter7_reg;
reg   [2:0] trunc_ln24_reg_1423_pp0_iter8_reg;
reg   [2:0] trunc_ln24_reg_1423_pp0_iter9_reg;
reg   [2:0] trunc_ln24_reg_1423_pp0_iter10_reg;
reg   [2:0] trunc_ln24_reg_1423_pp0_iter11_reg;
reg   [2:0] trunc_ln24_reg_1423_pp0_iter12_reg;
reg   [2:0] trunc_ln24_reg_1423_pp0_iter13_reg;
wire   [2:0] lshr_ln5_6_fu_949_p4;
reg   [2:0] lshr_ln5_6_reg_1429;
reg   [2:0] lshr_ln5_6_reg_1429_pp0_iter2_reg;
reg   [2:0] lshr_ln5_6_reg_1429_pp0_iter3_reg;
reg   [2:0] lshr_ln5_6_reg_1429_pp0_iter4_reg;
wire   [31:0] tmp_fu_1029_p19;
reg   [31:0] tmp_reg_1594;
wire   [31:0] tmp_s_fu_1252_p19;
reg   [31:0] tmp_s_reg_1599;
reg   [2:0] buff_s_out_addr_reg_1604;
reg   [2:0] buff_s_out_addr_reg_1604_pp0_iter6_reg;
reg   [2:0] buff_s_out_addr_reg_1604_pp0_iter7_reg;
reg   [2:0] buff_s_out_addr_reg_1604_pp0_iter8_reg;
reg   [2:0] buff_s_out_addr_reg_1604_pp0_iter9_reg;
reg   [2:0] buff_s_out_addr_reg_1604_pp0_iter10_reg;
reg   [2:0] buff_s_out_addr_reg_1604_pp0_iter11_reg;
reg   [2:0] buff_s_out_addr_reg_1604_pp0_iter12_reg;
reg   [2:0] buff_s_out_addr_reg_1604_pp0_iter13_reg;
reg   [2:0] buff_s_out_1_addr_reg_1610;
reg   [2:0] buff_s_out_1_addr_reg_1610_pp0_iter6_reg;
reg   [2:0] buff_s_out_1_addr_reg_1610_pp0_iter7_reg;
reg   [2:0] buff_s_out_1_addr_reg_1610_pp0_iter8_reg;
reg   [2:0] buff_s_out_1_addr_reg_1610_pp0_iter9_reg;
reg   [2:0] buff_s_out_1_addr_reg_1610_pp0_iter10_reg;
reg   [2:0] buff_s_out_1_addr_reg_1610_pp0_iter11_reg;
reg   [2:0] buff_s_out_1_addr_reg_1610_pp0_iter12_reg;
reg   [2:0] buff_s_out_1_addr_reg_1610_pp0_iter13_reg;
reg   [2:0] buff_s_out_2_addr_reg_1616;
reg   [2:0] buff_s_out_2_addr_reg_1616_pp0_iter6_reg;
reg   [2:0] buff_s_out_2_addr_reg_1616_pp0_iter7_reg;
reg   [2:0] buff_s_out_2_addr_reg_1616_pp0_iter8_reg;
reg   [2:0] buff_s_out_2_addr_reg_1616_pp0_iter9_reg;
reg   [2:0] buff_s_out_2_addr_reg_1616_pp0_iter10_reg;
reg   [2:0] buff_s_out_2_addr_reg_1616_pp0_iter11_reg;
reg   [2:0] buff_s_out_2_addr_reg_1616_pp0_iter12_reg;
reg   [2:0] buff_s_out_2_addr_reg_1616_pp0_iter13_reg;
reg   [2:0] buff_s_out_3_addr_reg_1622;
reg   [2:0] buff_s_out_3_addr_reg_1622_pp0_iter6_reg;
reg   [2:0] buff_s_out_3_addr_reg_1622_pp0_iter7_reg;
reg   [2:0] buff_s_out_3_addr_reg_1622_pp0_iter8_reg;
reg   [2:0] buff_s_out_3_addr_reg_1622_pp0_iter9_reg;
reg   [2:0] buff_s_out_3_addr_reg_1622_pp0_iter10_reg;
reg   [2:0] buff_s_out_3_addr_reg_1622_pp0_iter11_reg;
reg   [2:0] buff_s_out_3_addr_reg_1622_pp0_iter12_reg;
reg   [2:0] buff_s_out_3_addr_reg_1622_pp0_iter13_reg;
reg   [2:0] buff_s_out_4_addr_reg_1628;
reg   [2:0] buff_s_out_4_addr_reg_1628_pp0_iter6_reg;
reg   [2:0] buff_s_out_4_addr_reg_1628_pp0_iter7_reg;
reg   [2:0] buff_s_out_4_addr_reg_1628_pp0_iter8_reg;
reg   [2:0] buff_s_out_4_addr_reg_1628_pp0_iter9_reg;
reg   [2:0] buff_s_out_4_addr_reg_1628_pp0_iter10_reg;
reg   [2:0] buff_s_out_4_addr_reg_1628_pp0_iter11_reg;
reg   [2:0] buff_s_out_4_addr_reg_1628_pp0_iter12_reg;
reg   [2:0] buff_s_out_4_addr_reg_1628_pp0_iter13_reg;
reg   [2:0] buff_s_out_5_addr_reg_1634;
reg   [2:0] buff_s_out_5_addr_reg_1634_pp0_iter6_reg;
reg   [2:0] buff_s_out_5_addr_reg_1634_pp0_iter7_reg;
reg   [2:0] buff_s_out_5_addr_reg_1634_pp0_iter8_reg;
reg   [2:0] buff_s_out_5_addr_reg_1634_pp0_iter9_reg;
reg   [2:0] buff_s_out_5_addr_reg_1634_pp0_iter10_reg;
reg   [2:0] buff_s_out_5_addr_reg_1634_pp0_iter11_reg;
reg   [2:0] buff_s_out_5_addr_reg_1634_pp0_iter12_reg;
reg   [2:0] buff_s_out_5_addr_reg_1634_pp0_iter13_reg;
reg   [2:0] buff_s_out_6_addr_reg_1640;
reg   [2:0] buff_s_out_6_addr_reg_1640_pp0_iter6_reg;
reg   [2:0] buff_s_out_6_addr_reg_1640_pp0_iter7_reg;
reg   [2:0] buff_s_out_6_addr_reg_1640_pp0_iter8_reg;
reg   [2:0] buff_s_out_6_addr_reg_1640_pp0_iter9_reg;
reg   [2:0] buff_s_out_6_addr_reg_1640_pp0_iter10_reg;
reg   [2:0] buff_s_out_6_addr_reg_1640_pp0_iter11_reg;
reg   [2:0] buff_s_out_6_addr_reg_1640_pp0_iter12_reg;
reg   [2:0] buff_s_out_6_addr_reg_1640_pp0_iter13_reg;
reg   [2:0] buff_s_out_7_addr_reg_1646;
reg   [2:0] buff_s_out_7_addr_reg_1646_pp0_iter6_reg;
reg   [2:0] buff_s_out_7_addr_reg_1646_pp0_iter7_reg;
reg   [2:0] buff_s_out_7_addr_reg_1646_pp0_iter8_reg;
reg   [2:0] buff_s_out_7_addr_reg_1646_pp0_iter9_reg;
reg   [2:0] buff_s_out_7_addr_reg_1646_pp0_iter10_reg;
reg   [2:0] buff_s_out_7_addr_reg_1646_pp0_iter11_reg;
reg   [2:0] buff_s_out_7_addr_reg_1646_pp0_iter12_reg;
reg   [2:0] buff_s_out_7_addr_reg_1646_pp0_iter13_reg;
wire   [31:0] tmp_1_fu_1302_p19;
reg   [31:0] tmp_1_reg_1652;
reg   [31:0] mul_reg_1657;
reg   [31:0] add_reg_1662;
wire   [63:0] zext_ln5_fu_933_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln25_fu_977_p1;
wire   [63:0] zext_ln5_1_fu_1291_p1;
reg   [6:0] j_fu_170;
wire   [6:0] add_ln24_fu_1013_p2;
wire    ap_loop_init;
reg   [6:0] i_1_fu_174;
wire   [6:0] select_ln23_fu_907_p3;
reg   [12:0] indvar_flatten_fu_178;
wire   [12:0] add_ln23_1_fu_870_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
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
reg    buff_A_16_ce0_local;
reg    buff_A_17_ce0_local;
reg    buff_A_18_ce0_local;
reg    buff_A_19_ce0_local;
reg    buff_A_20_ce0_local;
reg    buff_A_21_ce0_local;
reg    buff_A_22_ce0_local;
reg    buff_A_23_ce0_local;
reg    buff_A_24_ce0_local;
reg    buff_A_25_ce0_local;
reg    buff_A_26_ce0_local;
reg    buff_A_27_ce0_local;
reg    buff_A_28_ce0_local;
reg    buff_A_29_ce0_local;
reg    buff_A_30_ce0_local;
reg    buff_A_31_ce0_local;
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
reg    buff_s_out_4_ce1_local;
reg    buff_s_out_4_we0_local;
reg    buff_s_out_4_ce0_local;
reg    buff_s_out_5_ce1_local;
reg    buff_s_out_5_we0_local;
reg    buff_s_out_5_ce0_local;
reg    buff_s_out_6_ce1_local;
reg    buff_s_out_6_we0_local;
reg    buff_s_out_6_ce0_local;
reg    buff_s_out_7_ce1_local;
reg    buff_s_out_7_we0_local;
reg    buff_s_out_7_ce0_local;
wire   [0:0] icmp_ln24_fu_893_p2;
wire   [6:0] add_ln23_fu_887_p2;
wire   [2:0] lshr_ln5_3_fu_923_p4;
wire   [6:0] select_ln5_fu_899_p3;
wire   [3:0] tmp_10_fu_959_p4;
wire   [6:0] tmp_11_fu_969_p3;
wire   [31:0] tmp_fu_1029_p17;
wire   [31:0] tmp_2_fu_1068_p9;
wire   [31:0] tmp_3_fu_1091_p9;
wire   [31:0] tmp_4_fu_1114_p9;
wire   [31:0] tmp_5_fu_1137_p9;
wire   [31:0] tmp_6_fu_1160_p9;
wire   [31:0] tmp_7_fu_1183_p9;
wire   [31:0] tmp_8_fu_1206_p9;
wire   [31:0] tmp_9_fu_1229_p9;
wire   [31:0] tmp_2_fu_1068_p11;
wire   [31:0] tmp_3_fu_1091_p11;
wire   [31:0] tmp_4_fu_1114_p11;
wire   [31:0] tmp_5_fu_1137_p11;
wire   [31:0] tmp_6_fu_1160_p11;
wire   [31:0] tmp_7_fu_1183_p11;
wire   [31:0] tmp_8_fu_1206_p11;
wire   [31:0] tmp_9_fu_1229_p11;
wire   [31:0] tmp_s_fu_1252_p17;
wire   [31:0] tmp_1_fu_1302_p17;
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
wire   [2:0] tmp_fu_1029_p1;
wire   [2:0] tmp_fu_1029_p3;
wire   [2:0] tmp_fu_1029_p5;
wire   [2:0] tmp_fu_1029_p7;
wire  signed [2:0] tmp_fu_1029_p9;
wire  signed [2:0] tmp_fu_1029_p11;
wire  signed [2:0] tmp_fu_1029_p13;
wire  signed [2:0] tmp_fu_1029_p15;
wire   [1:0] tmp_2_fu_1068_p1;
wire   [1:0] tmp_2_fu_1068_p3;
wire  signed [1:0] tmp_2_fu_1068_p5;
wire  signed [1:0] tmp_2_fu_1068_p7;
wire   [1:0] tmp_3_fu_1091_p1;
wire   [1:0] tmp_3_fu_1091_p3;
wire  signed [1:0] tmp_3_fu_1091_p5;
wire  signed [1:0] tmp_3_fu_1091_p7;
wire   [1:0] tmp_4_fu_1114_p1;
wire   [1:0] tmp_4_fu_1114_p3;
wire  signed [1:0] tmp_4_fu_1114_p5;
wire  signed [1:0] tmp_4_fu_1114_p7;
wire   [1:0] tmp_5_fu_1137_p1;
wire   [1:0] tmp_5_fu_1137_p3;
wire  signed [1:0] tmp_5_fu_1137_p5;
wire  signed [1:0] tmp_5_fu_1137_p7;
wire   [1:0] tmp_6_fu_1160_p1;
wire   [1:0] tmp_6_fu_1160_p3;
wire  signed [1:0] tmp_6_fu_1160_p5;
wire  signed [1:0] tmp_6_fu_1160_p7;
wire   [1:0] tmp_7_fu_1183_p1;
wire   [1:0] tmp_7_fu_1183_p3;
wire  signed [1:0] tmp_7_fu_1183_p5;
wire  signed [1:0] tmp_7_fu_1183_p7;
wire   [1:0] tmp_8_fu_1206_p1;
wire   [1:0] tmp_8_fu_1206_p3;
wire  signed [1:0] tmp_8_fu_1206_p5;
wire  signed [1:0] tmp_8_fu_1206_p7;
wire   [1:0] tmp_9_fu_1229_p1;
wire   [1:0] tmp_9_fu_1229_p3;
wire  signed [1:0] tmp_9_fu_1229_p5;
wire  signed [1:0] tmp_9_fu_1229_p7;
wire   [2:0] tmp_s_fu_1252_p1;
wire   [2:0] tmp_s_fu_1252_p3;
wire   [2:0] tmp_s_fu_1252_p5;
wire   [2:0] tmp_s_fu_1252_p7;
wire  signed [2:0] tmp_s_fu_1252_p9;
wire  signed [2:0] tmp_s_fu_1252_p11;
wire  signed [2:0] tmp_s_fu_1252_p13;
wire  signed [2:0] tmp_s_fu_1252_p15;
wire   [2:0] tmp_1_fu_1302_p1;
wire   [2:0] tmp_1_fu_1302_p3;
wire   [2:0] tmp_1_fu_1302_p5;
wire   [2:0] tmp_1_fu_1302_p7;
wire  signed [2:0] tmp_1_fu_1302_p9;
wire  signed [2:0] tmp_1_fu_1302_p11;
wire  signed [2:0] tmp_1_fu_1302_p13;
wire  signed [2:0] tmp_1_fu_1302_p15;
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
#0 j_fu_170 = 7'd0;
#0 i_1_fu_174 = 7'd0;
#0 indvar_flatten_fu_178 = 13'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U46(.din0(buff_r_q0),.din1(buff_r_1_q0),.din2(buff_r_2_q0),.din3(buff_r_3_q0),.din4(buff_r_4_q0),.din5(buff_r_5_q0),.din6(buff_r_6_q0),.din7(buff_r_7_q0),.def(tmp_fu_1029_p17),.sel(trunc_ln23_reg_1366),.dout(tmp_fu_1029_p19));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U47(.din0(buff_A_q0),.din1(buff_A_1_q0),.din2(buff_A_2_q0),.din3(buff_A_3_q0),.def(tmp_2_fu_1068_p9),.sel(trunc_ln23_1_reg_1371),.dout(tmp_2_fu_1068_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U48(.din0(buff_A_4_q0),.din1(buff_A_5_q0),.din2(buff_A_6_q0),.din3(buff_A_7_q0),.def(tmp_3_fu_1091_p9),.sel(trunc_ln23_1_reg_1371),.dout(tmp_3_fu_1091_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U49(.din0(buff_A_8_q0),.din1(buff_A_9_q0),.din2(buff_A_10_q0),.din3(buff_A_11_q0),.def(tmp_4_fu_1114_p9),.sel(trunc_ln23_1_reg_1371),.dout(tmp_4_fu_1114_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U50(.din0(buff_A_12_q0),.din1(buff_A_13_q0),.din2(buff_A_14_q0),.din3(buff_A_15_q0),.def(tmp_5_fu_1137_p9),.sel(trunc_ln23_1_reg_1371),.dout(tmp_5_fu_1137_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U51(.din0(buff_A_16_q0),.din1(buff_A_17_q0),.din2(buff_A_18_q0),.din3(buff_A_19_q0),.def(tmp_6_fu_1160_p9),.sel(trunc_ln23_1_reg_1371),.dout(tmp_6_fu_1160_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U52(.din0(buff_A_20_q0),.din1(buff_A_21_q0),.din2(buff_A_22_q0),.din3(buff_A_23_q0),.def(tmp_7_fu_1183_p9),.sel(trunc_ln23_1_reg_1371),.dout(tmp_7_fu_1183_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U53(.din0(buff_A_24_q0),.din1(buff_A_25_q0),.din2(buff_A_26_q0),.din3(buff_A_27_q0),.def(tmp_8_fu_1206_p9),.sel(trunc_ln23_1_reg_1371),.dout(tmp_8_fu_1206_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U54(.din0(buff_A_28_q0),.din1(buff_A_29_q0),.din2(buff_A_30_q0),.din3(buff_A_31_q0),.def(tmp_9_fu_1229_p9),.sel(trunc_ln23_1_reg_1371),.dout(tmp_9_fu_1229_p11));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U55(.din0(tmp_2_fu_1068_p11),.din1(tmp_3_fu_1091_p11),.din2(tmp_4_fu_1114_p11),.din3(tmp_5_fu_1137_p11),.din4(tmp_6_fu_1160_p11),.din5(tmp_7_fu_1183_p11),.din6(tmp_8_fu_1206_p11),.din7(tmp_9_fu_1229_p11),.def(tmp_s_fu_1252_p17),.sel(trunc_ln24_reg_1423),.dout(tmp_s_fu_1252_p19));
(* dissolve_hierarchy = "yes" *) bicg_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U56(.din0(buff_s_out_q1),.din1(buff_s_out_1_q1),.din2(buff_s_out_2_q1),.din3(buff_s_out_3_q1),.din4(buff_s_out_4_q1),.din5(buff_s_out_5_q1),.din6(buff_s_out_6_q1),.din7(buff_s_out_7_q1),.def(tmp_1_fu_1302_p17),.sel(trunc_ln24_reg_1423_pp0_iter5_reg),.dout(tmp_1_fu_1302_p19));
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
            i_1_fu_174 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_1_fu_174 <= select_ln23_fu_907_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_864_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_178 <= add_ln23_1_fu_870_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_178 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_170 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_170 <= add_ln24_fu_1013_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_reg_1662 <= grp_fu_2394_p_dout0;
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
        buff_s_out_1_addr_reg_1610 <= zext_ln5_1_fu_1291_p1;
        buff_s_out_1_addr_reg_1610_pp0_iter10_reg <= buff_s_out_1_addr_reg_1610_pp0_iter9_reg;
        buff_s_out_1_addr_reg_1610_pp0_iter11_reg <= buff_s_out_1_addr_reg_1610_pp0_iter10_reg;
        buff_s_out_1_addr_reg_1610_pp0_iter12_reg <= buff_s_out_1_addr_reg_1610_pp0_iter11_reg;
        buff_s_out_1_addr_reg_1610_pp0_iter13_reg <= buff_s_out_1_addr_reg_1610_pp0_iter12_reg;
        buff_s_out_1_addr_reg_1610_pp0_iter6_reg <= buff_s_out_1_addr_reg_1610;
        buff_s_out_1_addr_reg_1610_pp0_iter7_reg <= buff_s_out_1_addr_reg_1610_pp0_iter6_reg;
        buff_s_out_1_addr_reg_1610_pp0_iter8_reg <= buff_s_out_1_addr_reg_1610_pp0_iter7_reg;
        buff_s_out_1_addr_reg_1610_pp0_iter9_reg <= buff_s_out_1_addr_reg_1610_pp0_iter8_reg;
        buff_s_out_2_addr_reg_1616 <= zext_ln5_1_fu_1291_p1;
        buff_s_out_2_addr_reg_1616_pp0_iter10_reg <= buff_s_out_2_addr_reg_1616_pp0_iter9_reg;
        buff_s_out_2_addr_reg_1616_pp0_iter11_reg <= buff_s_out_2_addr_reg_1616_pp0_iter10_reg;
        buff_s_out_2_addr_reg_1616_pp0_iter12_reg <= buff_s_out_2_addr_reg_1616_pp0_iter11_reg;
        buff_s_out_2_addr_reg_1616_pp0_iter13_reg <= buff_s_out_2_addr_reg_1616_pp0_iter12_reg;
        buff_s_out_2_addr_reg_1616_pp0_iter6_reg <= buff_s_out_2_addr_reg_1616;
        buff_s_out_2_addr_reg_1616_pp0_iter7_reg <= buff_s_out_2_addr_reg_1616_pp0_iter6_reg;
        buff_s_out_2_addr_reg_1616_pp0_iter8_reg <= buff_s_out_2_addr_reg_1616_pp0_iter7_reg;
        buff_s_out_2_addr_reg_1616_pp0_iter9_reg <= buff_s_out_2_addr_reg_1616_pp0_iter8_reg;
        buff_s_out_3_addr_reg_1622 <= zext_ln5_1_fu_1291_p1;
        buff_s_out_3_addr_reg_1622_pp0_iter10_reg <= buff_s_out_3_addr_reg_1622_pp0_iter9_reg;
        buff_s_out_3_addr_reg_1622_pp0_iter11_reg <= buff_s_out_3_addr_reg_1622_pp0_iter10_reg;
        buff_s_out_3_addr_reg_1622_pp0_iter12_reg <= buff_s_out_3_addr_reg_1622_pp0_iter11_reg;
        buff_s_out_3_addr_reg_1622_pp0_iter13_reg <= buff_s_out_3_addr_reg_1622_pp0_iter12_reg;
        buff_s_out_3_addr_reg_1622_pp0_iter6_reg <= buff_s_out_3_addr_reg_1622;
        buff_s_out_3_addr_reg_1622_pp0_iter7_reg <= buff_s_out_3_addr_reg_1622_pp0_iter6_reg;
        buff_s_out_3_addr_reg_1622_pp0_iter8_reg <= buff_s_out_3_addr_reg_1622_pp0_iter7_reg;
        buff_s_out_3_addr_reg_1622_pp0_iter9_reg <= buff_s_out_3_addr_reg_1622_pp0_iter8_reg;
        buff_s_out_4_addr_reg_1628 <= zext_ln5_1_fu_1291_p1;
        buff_s_out_4_addr_reg_1628_pp0_iter10_reg <= buff_s_out_4_addr_reg_1628_pp0_iter9_reg;
        buff_s_out_4_addr_reg_1628_pp0_iter11_reg <= buff_s_out_4_addr_reg_1628_pp0_iter10_reg;
        buff_s_out_4_addr_reg_1628_pp0_iter12_reg <= buff_s_out_4_addr_reg_1628_pp0_iter11_reg;
        buff_s_out_4_addr_reg_1628_pp0_iter13_reg <= buff_s_out_4_addr_reg_1628_pp0_iter12_reg;
        buff_s_out_4_addr_reg_1628_pp0_iter6_reg <= buff_s_out_4_addr_reg_1628;
        buff_s_out_4_addr_reg_1628_pp0_iter7_reg <= buff_s_out_4_addr_reg_1628_pp0_iter6_reg;
        buff_s_out_4_addr_reg_1628_pp0_iter8_reg <= buff_s_out_4_addr_reg_1628_pp0_iter7_reg;
        buff_s_out_4_addr_reg_1628_pp0_iter9_reg <= buff_s_out_4_addr_reg_1628_pp0_iter8_reg;
        buff_s_out_5_addr_reg_1634 <= zext_ln5_1_fu_1291_p1;
        buff_s_out_5_addr_reg_1634_pp0_iter10_reg <= buff_s_out_5_addr_reg_1634_pp0_iter9_reg;
        buff_s_out_5_addr_reg_1634_pp0_iter11_reg <= buff_s_out_5_addr_reg_1634_pp0_iter10_reg;
        buff_s_out_5_addr_reg_1634_pp0_iter12_reg <= buff_s_out_5_addr_reg_1634_pp0_iter11_reg;
        buff_s_out_5_addr_reg_1634_pp0_iter13_reg <= buff_s_out_5_addr_reg_1634_pp0_iter12_reg;
        buff_s_out_5_addr_reg_1634_pp0_iter6_reg <= buff_s_out_5_addr_reg_1634;
        buff_s_out_5_addr_reg_1634_pp0_iter7_reg <= buff_s_out_5_addr_reg_1634_pp0_iter6_reg;
        buff_s_out_5_addr_reg_1634_pp0_iter8_reg <= buff_s_out_5_addr_reg_1634_pp0_iter7_reg;
        buff_s_out_5_addr_reg_1634_pp0_iter9_reg <= buff_s_out_5_addr_reg_1634_pp0_iter8_reg;
        buff_s_out_6_addr_reg_1640 <= zext_ln5_1_fu_1291_p1;
        buff_s_out_6_addr_reg_1640_pp0_iter10_reg <= buff_s_out_6_addr_reg_1640_pp0_iter9_reg;
        buff_s_out_6_addr_reg_1640_pp0_iter11_reg <= buff_s_out_6_addr_reg_1640_pp0_iter10_reg;
        buff_s_out_6_addr_reg_1640_pp0_iter12_reg <= buff_s_out_6_addr_reg_1640_pp0_iter11_reg;
        buff_s_out_6_addr_reg_1640_pp0_iter13_reg <= buff_s_out_6_addr_reg_1640_pp0_iter12_reg;
        buff_s_out_6_addr_reg_1640_pp0_iter6_reg <= buff_s_out_6_addr_reg_1640;
        buff_s_out_6_addr_reg_1640_pp0_iter7_reg <= buff_s_out_6_addr_reg_1640_pp0_iter6_reg;
        buff_s_out_6_addr_reg_1640_pp0_iter8_reg <= buff_s_out_6_addr_reg_1640_pp0_iter7_reg;
        buff_s_out_6_addr_reg_1640_pp0_iter9_reg <= buff_s_out_6_addr_reg_1640_pp0_iter8_reg;
        buff_s_out_7_addr_reg_1646 <= zext_ln5_1_fu_1291_p1;
        buff_s_out_7_addr_reg_1646_pp0_iter10_reg <= buff_s_out_7_addr_reg_1646_pp0_iter9_reg;
        buff_s_out_7_addr_reg_1646_pp0_iter11_reg <= buff_s_out_7_addr_reg_1646_pp0_iter10_reg;
        buff_s_out_7_addr_reg_1646_pp0_iter12_reg <= buff_s_out_7_addr_reg_1646_pp0_iter11_reg;
        buff_s_out_7_addr_reg_1646_pp0_iter13_reg <= buff_s_out_7_addr_reg_1646_pp0_iter12_reg;
        buff_s_out_7_addr_reg_1646_pp0_iter6_reg <= buff_s_out_7_addr_reg_1646;
        buff_s_out_7_addr_reg_1646_pp0_iter7_reg <= buff_s_out_7_addr_reg_1646_pp0_iter6_reg;
        buff_s_out_7_addr_reg_1646_pp0_iter8_reg <= buff_s_out_7_addr_reg_1646_pp0_iter7_reg;
        buff_s_out_7_addr_reg_1646_pp0_iter9_reg <= buff_s_out_7_addr_reg_1646_pp0_iter8_reg;
        buff_s_out_addr_reg_1604 <= zext_ln5_1_fu_1291_p1;
        buff_s_out_addr_reg_1604_pp0_iter10_reg <= buff_s_out_addr_reg_1604_pp0_iter9_reg;
        buff_s_out_addr_reg_1604_pp0_iter11_reg <= buff_s_out_addr_reg_1604_pp0_iter10_reg;
        buff_s_out_addr_reg_1604_pp0_iter12_reg <= buff_s_out_addr_reg_1604_pp0_iter11_reg;
        buff_s_out_addr_reg_1604_pp0_iter13_reg <= buff_s_out_addr_reg_1604_pp0_iter12_reg;
        buff_s_out_addr_reg_1604_pp0_iter6_reg <= buff_s_out_addr_reg_1604;
        buff_s_out_addr_reg_1604_pp0_iter7_reg <= buff_s_out_addr_reg_1604_pp0_iter6_reg;
        buff_s_out_addr_reg_1604_pp0_iter8_reg <= buff_s_out_addr_reg_1604_pp0_iter7_reg;
        buff_s_out_addr_reg_1604_pp0_iter9_reg <= buff_s_out_addr_reg_1604_pp0_iter8_reg;
        lshr_ln5_6_reg_1429_pp0_iter2_reg <= lshr_ln5_6_reg_1429;
        lshr_ln5_6_reg_1429_pp0_iter3_reg <= lshr_ln5_6_reg_1429_pp0_iter2_reg;
        lshr_ln5_6_reg_1429_pp0_iter4_reg <= lshr_ln5_6_reg_1429_pp0_iter3_reg;
        mul_reg_1657 <= grp_fu_2398_p_dout0;
        tmp_1_reg_1652 <= tmp_1_fu_1302_p19;
        tmp_reg_1594 <= tmp_fu_1029_p19;
        tmp_s_reg_1599 <= tmp_s_fu_1252_p19;
        trunc_ln24_reg_1423_pp0_iter10_reg <= trunc_ln24_reg_1423_pp0_iter9_reg;
        trunc_ln24_reg_1423_pp0_iter11_reg <= trunc_ln24_reg_1423_pp0_iter10_reg;
        trunc_ln24_reg_1423_pp0_iter12_reg <= trunc_ln24_reg_1423_pp0_iter11_reg;
        trunc_ln24_reg_1423_pp0_iter13_reg <= trunc_ln24_reg_1423_pp0_iter12_reg;
        trunc_ln24_reg_1423_pp0_iter2_reg <= trunc_ln24_reg_1423;
        trunc_ln24_reg_1423_pp0_iter3_reg <= trunc_ln24_reg_1423_pp0_iter2_reg;
        trunc_ln24_reg_1423_pp0_iter4_reg <= trunc_ln24_reg_1423_pp0_iter3_reg;
        trunc_ln24_reg_1423_pp0_iter5_reg <= trunc_ln24_reg_1423_pp0_iter4_reg;
        trunc_ln24_reg_1423_pp0_iter6_reg <= trunc_ln24_reg_1423_pp0_iter5_reg;
        trunc_ln24_reg_1423_pp0_iter7_reg <= trunc_ln24_reg_1423_pp0_iter6_reg;
        trunc_ln24_reg_1423_pp0_iter8_reg <= trunc_ln24_reg_1423_pp0_iter7_reg;
        trunc_ln24_reg_1423_pp0_iter9_reg <= trunc_ln24_reg_1423_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln5_6_reg_1429 <= {{select_ln5_fu_899_p3[5:3]}};
        trunc_ln23_1_reg_1371 <= trunc_ln23_1_fu_919_p1;
        trunc_ln23_reg_1366 <= trunc_ln23_fu_915_p1;
        trunc_ln24_reg_1423 <= trunc_ln24_fu_945_p1;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_864_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_178;
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
        buff_A_16_ce0_local = 1'b1;
    end else begin
        buff_A_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_17_ce0_local = 1'b1;
    end else begin
        buff_A_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_18_ce0_local = 1'b1;
    end else begin
        buff_A_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_19_ce0_local = 1'b1;
    end else begin
        buff_A_19_ce0_local = 1'b0;
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
        buff_A_20_ce0_local = 1'b1;
    end else begin
        buff_A_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_21_ce0_local = 1'b1;
    end else begin
        buff_A_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_22_ce0_local = 1'b1;
    end else begin
        buff_A_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_23_ce0_local = 1'b1;
    end else begin
        buff_A_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_24_ce0_local = 1'b1;
    end else begin
        buff_A_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_25_ce0_local = 1'b1;
    end else begin
        buff_A_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_26_ce0_local = 1'b1;
    end else begin
        buff_A_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_27_ce0_local = 1'b1;
    end else begin
        buff_A_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_28_ce0_local = 1'b1;
    end else begin
        buff_A_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_29_ce0_local = 1'b1;
    end else begin
        buff_A_29_ce0_local = 1'b0;
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
        buff_A_30_ce0_local = 1'b1;
    end else begin
        buff_A_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_31_ce0_local = 1'b1;
    end else begin
        buff_A_31_ce0_local = 1'b0;
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
    if (((trunc_ln24_reg_1423_pp0_iter13_reg == 3'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((trunc_ln24_reg_1423_pp0_iter13_reg == 3'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((trunc_ln24_reg_1423_pp0_iter13_reg == 3'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((trunc_ln24_reg_1423_pp0_iter13_reg == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((trunc_ln24_reg_1423_pp0_iter13_reg == 3'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((trunc_ln24_reg_1423_pp0_iter13_reg == 3'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((trunc_ln24_reg_1423_pp0_iter13_reg == 3'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
    if (((trunc_ln24_reg_1423_pp0_iter13_reg == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
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
assign add_ln23_1_fu_870_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln23_fu_887_p2 = (i_1_fu_174 + 7'd1);
assign add_ln24_fu_1013_p2 = (select_ln5_fu_899_p3 + 7'd1);
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
assign buff_A_10_address0 = zext_ln25_fu_977_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_11_address0 = zext_ln25_fu_977_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_12_address0 = zext_ln25_fu_977_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_13_address0 = zext_ln25_fu_977_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_14_address0 = zext_ln25_fu_977_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_15_address0 = zext_ln25_fu_977_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_16_address0 = zext_ln25_fu_977_p1;
assign buff_A_16_ce0 = buff_A_16_ce0_local;
assign buff_A_17_address0 = zext_ln25_fu_977_p1;
assign buff_A_17_ce0 = buff_A_17_ce0_local;
assign buff_A_18_address0 = zext_ln25_fu_977_p1;
assign buff_A_18_ce0 = buff_A_18_ce0_local;
assign buff_A_19_address0 = zext_ln25_fu_977_p1;
assign buff_A_19_ce0 = buff_A_19_ce0_local;
assign buff_A_1_address0 = zext_ln25_fu_977_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_20_address0 = zext_ln25_fu_977_p1;
assign buff_A_20_ce0 = buff_A_20_ce0_local;
assign buff_A_21_address0 = zext_ln25_fu_977_p1;
assign buff_A_21_ce0 = buff_A_21_ce0_local;
assign buff_A_22_address0 = zext_ln25_fu_977_p1;
assign buff_A_22_ce0 = buff_A_22_ce0_local;
assign buff_A_23_address0 = zext_ln25_fu_977_p1;
assign buff_A_23_ce0 = buff_A_23_ce0_local;
assign buff_A_24_address0 = zext_ln25_fu_977_p1;
assign buff_A_24_ce0 = buff_A_24_ce0_local;
assign buff_A_25_address0 = zext_ln25_fu_977_p1;
assign buff_A_25_ce0 = buff_A_25_ce0_local;
assign buff_A_26_address0 = zext_ln25_fu_977_p1;
assign buff_A_26_ce0 = buff_A_26_ce0_local;
assign buff_A_27_address0 = zext_ln25_fu_977_p1;
assign buff_A_27_ce0 = buff_A_27_ce0_local;
assign buff_A_28_address0 = zext_ln25_fu_977_p1;
assign buff_A_28_ce0 = buff_A_28_ce0_local;
assign buff_A_29_address0 = zext_ln25_fu_977_p1;
assign buff_A_29_ce0 = buff_A_29_ce0_local;
assign buff_A_2_address0 = zext_ln25_fu_977_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_30_address0 = zext_ln25_fu_977_p1;
assign buff_A_30_ce0 = buff_A_30_ce0_local;
assign buff_A_31_address0 = zext_ln25_fu_977_p1;
assign buff_A_31_ce0 = buff_A_31_ce0_local;
assign buff_A_3_address0 = zext_ln25_fu_977_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln25_fu_977_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln25_fu_977_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln25_fu_977_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln25_fu_977_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_8_address0 = zext_ln25_fu_977_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_9_address0 = zext_ln25_fu_977_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_address0 = zext_ln25_fu_977_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_r_1_address0 = zext_ln5_fu_933_p1;
assign buff_r_1_ce0 = buff_r_1_ce0_local;
assign buff_r_2_address0 = zext_ln5_fu_933_p1;
assign buff_r_2_ce0 = buff_r_2_ce0_local;
assign buff_r_3_address0 = zext_ln5_fu_933_p1;
assign buff_r_3_ce0 = buff_r_3_ce0_local;
assign buff_r_4_address0 = zext_ln5_fu_933_p1;
assign buff_r_4_ce0 = buff_r_4_ce0_local;
assign buff_r_5_address0 = zext_ln5_fu_933_p1;
assign buff_r_5_ce0 = buff_r_5_ce0_local;
assign buff_r_6_address0 = zext_ln5_fu_933_p1;
assign buff_r_6_ce0 = buff_r_6_ce0_local;
assign buff_r_7_address0 = zext_ln5_fu_933_p1;
assign buff_r_7_ce0 = buff_r_7_ce0_local;
assign buff_r_address0 = zext_ln5_fu_933_p1;
assign buff_r_ce0 = buff_r_ce0_local;
assign buff_s_out_1_address0 = buff_s_out_1_addr_reg_1610_pp0_iter13_reg;
assign buff_s_out_1_address1 = zext_ln5_1_fu_1291_p1;
assign buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
assign buff_s_out_1_ce1 = buff_s_out_1_ce1_local;
assign buff_s_out_1_d0 = add_reg_1662;
assign buff_s_out_1_we0 = buff_s_out_1_we0_local;
assign buff_s_out_2_address0 = buff_s_out_2_addr_reg_1616_pp0_iter13_reg;
assign buff_s_out_2_address1 = zext_ln5_1_fu_1291_p1;
assign buff_s_out_2_ce0 = buff_s_out_2_ce0_local;
assign buff_s_out_2_ce1 = buff_s_out_2_ce1_local;
assign buff_s_out_2_d0 = add_reg_1662;
assign buff_s_out_2_we0 = buff_s_out_2_we0_local;
assign buff_s_out_3_address0 = buff_s_out_3_addr_reg_1622_pp0_iter13_reg;
assign buff_s_out_3_address1 = zext_ln5_1_fu_1291_p1;
assign buff_s_out_3_ce0 = buff_s_out_3_ce0_local;
assign buff_s_out_3_ce1 = buff_s_out_3_ce1_local;
assign buff_s_out_3_d0 = add_reg_1662;
assign buff_s_out_3_we0 = buff_s_out_3_we0_local;
assign buff_s_out_4_address0 = buff_s_out_4_addr_reg_1628_pp0_iter13_reg;
assign buff_s_out_4_address1 = zext_ln5_1_fu_1291_p1;
assign buff_s_out_4_ce0 = buff_s_out_4_ce0_local;
assign buff_s_out_4_ce1 = buff_s_out_4_ce1_local;
assign buff_s_out_4_d0 = add_reg_1662;
assign buff_s_out_4_we0 = buff_s_out_4_we0_local;
assign buff_s_out_5_address0 = buff_s_out_5_addr_reg_1634_pp0_iter13_reg;
assign buff_s_out_5_address1 = zext_ln5_1_fu_1291_p1;
assign buff_s_out_5_ce0 = buff_s_out_5_ce0_local;
assign buff_s_out_5_ce1 = buff_s_out_5_ce1_local;
assign buff_s_out_5_d0 = add_reg_1662;
assign buff_s_out_5_we0 = buff_s_out_5_we0_local;
assign buff_s_out_6_address0 = buff_s_out_6_addr_reg_1640_pp0_iter13_reg;
assign buff_s_out_6_address1 = zext_ln5_1_fu_1291_p1;
assign buff_s_out_6_ce0 = buff_s_out_6_ce0_local;
assign buff_s_out_6_ce1 = buff_s_out_6_ce1_local;
assign buff_s_out_6_d0 = add_reg_1662;
assign buff_s_out_6_we0 = buff_s_out_6_we0_local;
assign buff_s_out_7_address0 = buff_s_out_7_addr_reg_1646_pp0_iter13_reg;
assign buff_s_out_7_address1 = zext_ln5_1_fu_1291_p1;
assign buff_s_out_7_ce0 = buff_s_out_7_ce0_local;
assign buff_s_out_7_ce1 = buff_s_out_7_ce1_local;
assign buff_s_out_7_d0 = add_reg_1662;
assign buff_s_out_7_we0 = buff_s_out_7_we0_local;
assign buff_s_out_address0 = buff_s_out_addr_reg_1604_pp0_iter13_reg;
assign buff_s_out_address1 = zext_ln5_1_fu_1291_p1;
assign buff_s_out_ce0 = buff_s_out_ce0_local;
assign buff_s_out_ce1 = buff_s_out_ce1_local;
assign buff_s_out_d0 = add_reg_1662;
assign buff_s_out_we0 = buff_s_out_we0_local;
assign grp_fu_2394_p_ce = 1'b1;
assign grp_fu_2394_p_din0 = tmp_1_reg_1652;
assign grp_fu_2394_p_din1 = mul_reg_1657;
assign grp_fu_2394_p_opcode = 2'd0;
assign grp_fu_2398_p_ce = 1'b1;
assign grp_fu_2398_p_din0 = tmp_s_reg_1599;
assign grp_fu_2398_p_din1 = tmp_reg_1594;
assign icmp_ln23_fu_864_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_893_p2 = ((j_fu_170 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_3_fu_923_p4 = {{select_ln23_fu_907_p3[5:3]}};
assign lshr_ln5_6_fu_949_p4 = {{select_ln5_fu_899_p3[5:3]}};
assign select_ln23_fu_907_p3 = ((icmp_ln24_fu_893_p2[0:0] == 1'b1) ? add_ln23_fu_887_p2 : i_1_fu_174);
assign select_ln5_fu_899_p3 = ((icmp_ln24_fu_893_p2[0:0] == 1'b1) ? 7'd0 : j_fu_170);
assign tmp_10_fu_959_p4 = {{select_ln23_fu_907_p3[5:2]}};
assign tmp_11_fu_969_p3 = {{tmp_10_fu_959_p4}, {lshr_ln5_6_fu_949_p4}};
assign tmp_1_fu_1302_p17 = 'bx;
assign tmp_2_fu_1068_p9 = 'bx;
assign tmp_3_fu_1091_p9 = 'bx;
assign tmp_4_fu_1114_p9 = 'bx;
assign tmp_5_fu_1137_p9 = 'bx;
assign tmp_6_fu_1160_p9 = 'bx;
assign tmp_7_fu_1183_p9 = 'bx;
assign tmp_8_fu_1206_p9 = 'bx;
assign tmp_9_fu_1229_p9 = 'bx;
assign tmp_fu_1029_p17 = 'bx;
assign tmp_s_fu_1252_p17 = 'bx;
assign trunc_ln23_1_fu_919_p1 = select_ln23_fu_907_p3[1:0];
assign trunc_ln23_fu_915_p1 = select_ln23_fu_907_p3[2:0];
assign trunc_ln24_fu_945_p1 = select_ln5_fu_899_p3[2:0];
assign zext_ln25_fu_977_p1 = tmp_11_fu_969_p3;
assign zext_ln5_1_fu_1291_p1 = lshr_ln5_6_reg_1429_pp0_iter4_reg;
assign zext_ln5_fu_933_p1 = lshr_ln5_3_fu_923_p4;
endmodule 