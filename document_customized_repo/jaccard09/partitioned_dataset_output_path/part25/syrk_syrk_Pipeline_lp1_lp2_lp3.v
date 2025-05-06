
module syrk_syrk_Pipeline_lp1_lp2_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_A0_address0,buff_A0_ce0,buff_A0_q0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_q0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_q0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_q0,buff_A0_4_address0,buff_A0_4_ce0,buff_A0_4_q0,buff_A0_5_address0,buff_A0_5_ce0,buff_A0_5_q0,buff_A0_6_address0,buff_A0_6_ce0,buff_A0_6_q0,buff_A0_7_address0,buff_A0_7_ce0,buff_A0_7_q0,buff_A1_address0,buff_A1_ce0,buff_A1_q0,buff_A1_1_address0,buff_A1_1_ce0,buff_A1_1_q0,buff_A1_2_address0,buff_A1_2_ce0,buff_A1_2_q0,buff_A1_3_address0,buff_A1_3_ce0,buff_A1_3_q0,buff_A1_4_address0,buff_A1_4_ce0,buff_A1_4_q0,buff_A1_5_address0,buff_A1_5_ce0,buff_A1_5_q0,buff_A1_6_address0,buff_A1_6_ce0,buff_A1_6_q0,buff_A1_7_address0,buff_A1_7_ce0,buff_A1_7_q0,alpha,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_q0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_q0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_q0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_q0,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_we0,buff_C_out_4_d0,buff_C_out_4_q0,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_we0,buff_C_out_5_d0,buff_C_out_5_q0,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_we0,buff_C_out_6_d0,buff_C_out_6_q0,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_we0,buff_C_out_7_d0,buff_C_out_7_q0,buff_C_out_8_address0,buff_C_out_8_ce0,buff_C_out_8_we0,buff_C_out_8_d0,buff_C_out_8_q0,buff_C_out_9_address0,buff_C_out_9_ce0,buff_C_out_9_we0,buff_C_out_9_d0,buff_C_out_9_q0,buff_C_out_10_address0,buff_C_out_10_ce0,buff_C_out_10_we0,buff_C_out_10_d0,buff_C_out_10_q0,buff_C_out_11_address0,buff_C_out_11_ce0,buff_C_out_11_we0,buff_C_out_11_d0,buff_C_out_11_q0,buff_C_out_12_address0,buff_C_out_12_ce0,buff_C_out_12_we0,buff_C_out_12_d0,buff_C_out_12_q0,buff_C_out_13_address0,buff_C_out_13_ce0,buff_C_out_13_we0,buff_C_out_13_d0,buff_C_out_13_q0,buff_C_out_14_address0,buff_C_out_14_ce0,buff_C_out_14_we0,buff_C_out_14_d0,buff_C_out_14_q0,buff_C_out_15_address0,buff_C_out_15_ce0,buff_C_out_15_we0,buff_C_out_15_d0,buff_C_out_15_q0,buff_C_out_16_address0,buff_C_out_16_ce0,buff_C_out_16_we0,buff_C_out_16_d0,buff_C_out_16_q0,buff_C_out_17_address0,buff_C_out_17_ce0,buff_C_out_17_we0,buff_C_out_17_d0,buff_C_out_17_q0,buff_C_out_18_address0,buff_C_out_18_ce0,buff_C_out_18_we0,buff_C_out_18_d0,buff_C_out_18_q0,buff_C_out_19_address0,buff_C_out_19_ce0,buff_C_out_19_we0,buff_C_out_19_d0,buff_C_out_19_q0,buff_C_out_20_address0,buff_C_out_20_ce0,buff_C_out_20_we0,buff_C_out_20_d0,buff_C_out_20_q0,buff_C_out_21_address0,buff_C_out_21_ce0,buff_C_out_21_we0,buff_C_out_21_d0,buff_C_out_21_q0,buff_C_out_22_address0,buff_C_out_22_ce0,buff_C_out_22_we0,buff_C_out_22_d0,buff_C_out_22_q0,buff_C_out_23_address0,buff_C_out_23_ce0,buff_C_out_23_we0,buff_C_out_23_d0,buff_C_out_23_q0,buff_C_out_24_address0,buff_C_out_24_ce0,buff_C_out_24_we0,buff_C_out_24_d0,buff_C_out_24_q0,buff_C_out_25_address0,buff_C_out_25_ce0,buff_C_out_25_we0,buff_C_out_25_d0,buff_C_out_25_q0,buff_C_out_26_address0,buff_C_out_26_ce0,buff_C_out_26_we0,buff_C_out_26_d0,buff_C_out_26_q0,buff_C_out_27_address0,buff_C_out_27_ce0,buff_C_out_27_we0,buff_C_out_27_d0,buff_C_out_27_q0,buff_C_out_28_address0,buff_C_out_28_ce0,buff_C_out_28_we0,buff_C_out_28_d0,buff_C_out_28_q0,buff_C_out_29_address0,buff_C_out_29_ce0,buff_C_out_29_we0,buff_C_out_29_d0,buff_C_out_29_q0,buff_C_out_30_address0,buff_C_out_30_ce0,buff_C_out_30_we0,buff_C_out_30_d0,buff_C_out_30_q0,buff_C_out_31_address0,buff_C_out_31_ce0,buff_C_out_31_we0,buff_C_out_31_d0,buff_C_out_31_q0,grp_fu_800_p_din0,grp_fu_800_p_din1,grp_fu_800_p_opcode,grp_fu_800_p_dout0,grp_fu_800_p_ce,grp_fu_804_p_din0,grp_fu_804_p_din1,grp_fu_804_p_dout0,grp_fu_804_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] buff_A0_address0;
output   buff_A0_ce0;
input  [31:0] buff_A0_q0;
output  [8:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
input  [31:0] buff_A0_1_q0;
output  [8:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
input  [31:0] buff_A0_2_q0;
output  [8:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
input  [31:0] buff_A0_3_q0;
output  [8:0] buff_A0_4_address0;
output   buff_A0_4_ce0;
input  [31:0] buff_A0_4_q0;
output  [8:0] buff_A0_5_address0;
output   buff_A0_5_ce0;
input  [31:0] buff_A0_5_q0;
output  [8:0] buff_A0_6_address0;
output   buff_A0_6_ce0;
input  [31:0] buff_A0_6_q0;
output  [8:0] buff_A0_7_address0;
output   buff_A0_7_ce0;
input  [31:0] buff_A0_7_q0;
output  [8:0] buff_A1_address0;
output   buff_A1_ce0;
input  [31:0] buff_A1_q0;
output  [8:0] buff_A1_1_address0;
output   buff_A1_1_ce0;
input  [31:0] buff_A1_1_q0;
output  [8:0] buff_A1_2_address0;
output   buff_A1_2_ce0;
input  [31:0] buff_A1_2_q0;
output  [8:0] buff_A1_3_address0;
output   buff_A1_3_ce0;
input  [31:0] buff_A1_3_q0;
output  [8:0] buff_A1_4_address0;
output   buff_A1_4_ce0;
input  [31:0] buff_A1_4_q0;
output  [8:0] buff_A1_5_address0;
output   buff_A1_5_ce0;
input  [31:0] buff_A1_5_q0;
output  [8:0] buff_A1_6_address0;
output   buff_A1_6_ce0;
input  [31:0] buff_A1_6_q0;
output  [8:0] buff_A1_7_address0;
output   buff_A1_7_ce0;
input  [31:0] buff_A1_7_q0;
input  [31:0] alpha;
output  [6:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
input  [31:0] buff_C_out_q0;
output  [6:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
input  [31:0] buff_C_out_1_q0;
output  [6:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
input  [31:0] buff_C_out_2_q0;
output  [6:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
input  [31:0] buff_C_out_3_q0;
output  [6:0] buff_C_out_4_address0;
output   buff_C_out_4_ce0;
output   buff_C_out_4_we0;
output  [31:0] buff_C_out_4_d0;
input  [31:0] buff_C_out_4_q0;
output  [6:0] buff_C_out_5_address0;
output   buff_C_out_5_ce0;
output   buff_C_out_5_we0;
output  [31:0] buff_C_out_5_d0;
input  [31:0] buff_C_out_5_q0;
output  [6:0] buff_C_out_6_address0;
output   buff_C_out_6_ce0;
output   buff_C_out_6_we0;
output  [31:0] buff_C_out_6_d0;
input  [31:0] buff_C_out_6_q0;
output  [6:0] buff_C_out_7_address0;
output   buff_C_out_7_ce0;
output   buff_C_out_7_we0;
output  [31:0] buff_C_out_7_d0;
input  [31:0] buff_C_out_7_q0;
output  [6:0] buff_C_out_8_address0;
output   buff_C_out_8_ce0;
output   buff_C_out_8_we0;
output  [31:0] buff_C_out_8_d0;
input  [31:0] buff_C_out_8_q0;
output  [6:0] buff_C_out_9_address0;
output   buff_C_out_9_ce0;
output   buff_C_out_9_we0;
output  [31:0] buff_C_out_9_d0;
input  [31:0] buff_C_out_9_q0;
output  [6:0] buff_C_out_10_address0;
output   buff_C_out_10_ce0;
output   buff_C_out_10_we0;
output  [31:0] buff_C_out_10_d0;
input  [31:0] buff_C_out_10_q0;
output  [6:0] buff_C_out_11_address0;
output   buff_C_out_11_ce0;
output   buff_C_out_11_we0;
output  [31:0] buff_C_out_11_d0;
input  [31:0] buff_C_out_11_q0;
output  [6:0] buff_C_out_12_address0;
output   buff_C_out_12_ce0;
output   buff_C_out_12_we0;
output  [31:0] buff_C_out_12_d0;
input  [31:0] buff_C_out_12_q0;
output  [6:0] buff_C_out_13_address0;
output   buff_C_out_13_ce0;
output   buff_C_out_13_we0;
output  [31:0] buff_C_out_13_d0;
input  [31:0] buff_C_out_13_q0;
output  [6:0] buff_C_out_14_address0;
output   buff_C_out_14_ce0;
output   buff_C_out_14_we0;
output  [31:0] buff_C_out_14_d0;
input  [31:0] buff_C_out_14_q0;
output  [6:0] buff_C_out_15_address0;
output   buff_C_out_15_ce0;
output   buff_C_out_15_we0;
output  [31:0] buff_C_out_15_d0;
input  [31:0] buff_C_out_15_q0;
output  [6:0] buff_C_out_16_address0;
output   buff_C_out_16_ce0;
output   buff_C_out_16_we0;
output  [31:0] buff_C_out_16_d0;
input  [31:0] buff_C_out_16_q0;
output  [6:0] buff_C_out_17_address0;
output   buff_C_out_17_ce0;
output   buff_C_out_17_we0;
output  [31:0] buff_C_out_17_d0;
input  [31:0] buff_C_out_17_q0;
output  [6:0] buff_C_out_18_address0;
output   buff_C_out_18_ce0;
output   buff_C_out_18_we0;
output  [31:0] buff_C_out_18_d0;
input  [31:0] buff_C_out_18_q0;
output  [6:0] buff_C_out_19_address0;
output   buff_C_out_19_ce0;
output   buff_C_out_19_we0;
output  [31:0] buff_C_out_19_d0;
input  [31:0] buff_C_out_19_q0;
output  [6:0] buff_C_out_20_address0;
output   buff_C_out_20_ce0;
output   buff_C_out_20_we0;
output  [31:0] buff_C_out_20_d0;
input  [31:0] buff_C_out_20_q0;
output  [6:0] buff_C_out_21_address0;
output   buff_C_out_21_ce0;
output   buff_C_out_21_we0;
output  [31:0] buff_C_out_21_d0;
input  [31:0] buff_C_out_21_q0;
output  [6:0] buff_C_out_22_address0;
output   buff_C_out_22_ce0;
output   buff_C_out_22_we0;
output  [31:0] buff_C_out_22_d0;
input  [31:0] buff_C_out_22_q0;
output  [6:0] buff_C_out_23_address0;
output   buff_C_out_23_ce0;
output   buff_C_out_23_we0;
output  [31:0] buff_C_out_23_d0;
input  [31:0] buff_C_out_23_q0;
output  [6:0] buff_C_out_24_address0;
output   buff_C_out_24_ce0;
output   buff_C_out_24_we0;
output  [31:0] buff_C_out_24_d0;
input  [31:0] buff_C_out_24_q0;
output  [6:0] buff_C_out_25_address0;
output   buff_C_out_25_ce0;
output   buff_C_out_25_we0;
output  [31:0] buff_C_out_25_d0;
input  [31:0] buff_C_out_25_q0;
output  [6:0] buff_C_out_26_address0;
output   buff_C_out_26_ce0;
output   buff_C_out_26_we0;
output  [31:0] buff_C_out_26_d0;
input  [31:0] buff_C_out_26_q0;
output  [6:0] buff_C_out_27_address0;
output   buff_C_out_27_ce0;
output   buff_C_out_27_we0;
output  [31:0] buff_C_out_27_d0;
input  [31:0] buff_C_out_27_q0;
output  [6:0] buff_C_out_28_address0;
output   buff_C_out_28_ce0;
output   buff_C_out_28_we0;
output  [31:0] buff_C_out_28_d0;
input  [31:0] buff_C_out_28_q0;
output  [6:0] buff_C_out_29_address0;
output   buff_C_out_29_ce0;
output   buff_C_out_29_we0;
output  [31:0] buff_C_out_29_d0;
input  [31:0] buff_C_out_29_q0;
output  [6:0] buff_C_out_30_address0;
output   buff_C_out_30_ce0;
output   buff_C_out_30_we0;
output  [31:0] buff_C_out_30_d0;
input  [31:0] buff_C_out_30_q0;
output  [6:0] buff_C_out_31_address0;
output   buff_C_out_31_ce0;
output   buff_C_out_31_we0;
output  [31:0] buff_C_out_31_d0;
input  [31:0] buff_C_out_31_q0;
output  [31:0] grp_fu_800_p_din0;
output  [31:0] grp_fu_800_p_din1;
output  [1:0] grp_fu_800_p_opcode;
input  [31:0] grp_fu_800_p_dout0;
output   grp_fu_800_p_ce;
output  [31:0] grp_fu_804_p_din0;
output  [31:0] grp_fu_804_p_din1;
input  [31:0] grp_fu_804_p_dout0;
output   grp_fu_804_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln20_reg_1518;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln20_fu_877_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln20_reg_1518_pp0_iter1_reg;
wire   [0:0] icmp_ln21_fu_892_p2;
reg   [0:0] icmp_ln21_reg_1522;
wire   [0:0] and_ln5_fu_910_p2;
reg   [0:0] and_ln5_reg_1528;
wire   [6:0] k_mid2_fu_922_p3;
reg   [6:0] k_mid2_reg_1533;
wire   [0:0] first_iter_1_fu_1001_p2;
reg   [0:0] first_iter_1_reg_1541;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [0:0] first_iter_1_reg_1541_pp0_iter1_reg;
wire   [1:0] trunc_ln20_fu_1006_p1;
reg   [1:0] trunc_ln20_reg_1545;
reg   [1:0] trunc_ln20_reg_1545_pp0_iter1_reg;
wire   [2:0] trunc_ln21_1_fu_1010_p1;
reg   [2:0] trunc_ln21_1_reg_1557;
reg   [2:0] trunc_ln21_1_reg_1557_pp0_iter1_reg;
reg   [6:0] buff_C_out_addr_reg_1562;
reg   [6:0] buff_C_out_addr_reg_1562_pp0_iter1_reg;
reg   [6:0] buff_C_out_addr_reg_1562_pp0_iter2_reg;
reg   [6:0] buff_C_out_1_addr_reg_1567;
reg   [6:0] buff_C_out_1_addr_reg_1567_pp0_iter1_reg;
reg   [6:0] buff_C_out_1_addr_reg_1567_pp0_iter2_reg;
reg   [6:0] buff_C_out_2_addr_reg_1572;
reg   [6:0] buff_C_out_2_addr_reg_1572_pp0_iter1_reg;
reg   [6:0] buff_C_out_2_addr_reg_1572_pp0_iter2_reg;
reg   [6:0] buff_C_out_3_addr_reg_1577;
reg   [6:0] buff_C_out_3_addr_reg_1577_pp0_iter1_reg;
reg   [6:0] buff_C_out_3_addr_reg_1577_pp0_iter2_reg;
reg   [6:0] buff_C_out_4_addr_reg_1582;
reg   [6:0] buff_C_out_4_addr_reg_1582_pp0_iter1_reg;
reg   [6:0] buff_C_out_4_addr_reg_1582_pp0_iter2_reg;
reg   [6:0] buff_C_out_5_addr_reg_1587;
reg   [6:0] buff_C_out_5_addr_reg_1587_pp0_iter1_reg;
reg   [6:0] buff_C_out_5_addr_reg_1587_pp0_iter2_reg;
reg   [6:0] buff_C_out_6_addr_reg_1592;
reg   [6:0] buff_C_out_6_addr_reg_1592_pp0_iter1_reg;
reg   [6:0] buff_C_out_6_addr_reg_1592_pp0_iter2_reg;
reg   [6:0] buff_C_out_7_addr_reg_1597;
reg   [6:0] buff_C_out_7_addr_reg_1597_pp0_iter1_reg;
reg   [6:0] buff_C_out_7_addr_reg_1597_pp0_iter2_reg;
reg   [6:0] buff_C_out_8_addr_reg_1602;
reg   [6:0] buff_C_out_8_addr_reg_1602_pp0_iter1_reg;
reg   [6:0] buff_C_out_8_addr_reg_1602_pp0_iter2_reg;
reg   [6:0] buff_C_out_9_addr_reg_1607;
reg   [6:0] buff_C_out_9_addr_reg_1607_pp0_iter1_reg;
reg   [6:0] buff_C_out_9_addr_reg_1607_pp0_iter2_reg;
reg   [6:0] buff_C_out_10_addr_reg_1612;
reg   [6:0] buff_C_out_10_addr_reg_1612_pp0_iter1_reg;
reg   [6:0] buff_C_out_10_addr_reg_1612_pp0_iter2_reg;
reg   [6:0] buff_C_out_11_addr_reg_1617;
reg   [6:0] buff_C_out_11_addr_reg_1617_pp0_iter1_reg;
reg   [6:0] buff_C_out_11_addr_reg_1617_pp0_iter2_reg;
reg   [6:0] buff_C_out_12_addr_reg_1622;
reg   [6:0] buff_C_out_12_addr_reg_1622_pp0_iter1_reg;
reg   [6:0] buff_C_out_12_addr_reg_1622_pp0_iter2_reg;
reg   [6:0] buff_C_out_13_addr_reg_1627;
reg   [6:0] buff_C_out_13_addr_reg_1627_pp0_iter1_reg;
reg   [6:0] buff_C_out_13_addr_reg_1627_pp0_iter2_reg;
reg   [6:0] buff_C_out_14_addr_reg_1632;
reg   [6:0] buff_C_out_14_addr_reg_1632_pp0_iter1_reg;
reg   [6:0] buff_C_out_14_addr_reg_1632_pp0_iter2_reg;
reg   [6:0] buff_C_out_15_addr_reg_1637;
reg   [6:0] buff_C_out_15_addr_reg_1637_pp0_iter1_reg;
reg   [6:0] buff_C_out_15_addr_reg_1637_pp0_iter2_reg;
reg   [6:0] buff_C_out_16_addr_reg_1642;
reg   [6:0] buff_C_out_16_addr_reg_1642_pp0_iter1_reg;
reg   [6:0] buff_C_out_16_addr_reg_1642_pp0_iter2_reg;
reg   [6:0] buff_C_out_17_addr_reg_1647;
reg   [6:0] buff_C_out_17_addr_reg_1647_pp0_iter1_reg;
reg   [6:0] buff_C_out_17_addr_reg_1647_pp0_iter2_reg;
reg   [6:0] buff_C_out_18_addr_reg_1652;
reg   [6:0] buff_C_out_18_addr_reg_1652_pp0_iter1_reg;
reg   [6:0] buff_C_out_18_addr_reg_1652_pp0_iter2_reg;
reg   [6:0] buff_C_out_19_addr_reg_1657;
reg   [6:0] buff_C_out_19_addr_reg_1657_pp0_iter1_reg;
reg   [6:0] buff_C_out_19_addr_reg_1657_pp0_iter2_reg;
reg   [6:0] buff_C_out_20_addr_reg_1662;
reg   [6:0] buff_C_out_20_addr_reg_1662_pp0_iter1_reg;
reg   [6:0] buff_C_out_20_addr_reg_1662_pp0_iter2_reg;
reg   [6:0] buff_C_out_21_addr_reg_1667;
reg   [6:0] buff_C_out_21_addr_reg_1667_pp0_iter1_reg;
reg   [6:0] buff_C_out_21_addr_reg_1667_pp0_iter2_reg;
reg   [6:0] buff_C_out_22_addr_reg_1672;
reg   [6:0] buff_C_out_22_addr_reg_1672_pp0_iter1_reg;
reg   [6:0] buff_C_out_22_addr_reg_1672_pp0_iter2_reg;
reg   [6:0] buff_C_out_23_addr_reg_1677;
reg   [6:0] buff_C_out_23_addr_reg_1677_pp0_iter1_reg;
reg   [6:0] buff_C_out_23_addr_reg_1677_pp0_iter2_reg;
reg   [6:0] buff_C_out_24_addr_reg_1682;
reg   [6:0] buff_C_out_24_addr_reg_1682_pp0_iter1_reg;
reg   [6:0] buff_C_out_24_addr_reg_1682_pp0_iter2_reg;
reg   [6:0] buff_C_out_25_addr_reg_1687;
reg   [6:0] buff_C_out_25_addr_reg_1687_pp0_iter1_reg;
reg   [6:0] buff_C_out_25_addr_reg_1687_pp0_iter2_reg;
reg   [6:0] buff_C_out_26_addr_reg_1692;
reg   [6:0] buff_C_out_26_addr_reg_1692_pp0_iter1_reg;
reg   [6:0] buff_C_out_26_addr_reg_1692_pp0_iter2_reg;
reg   [6:0] buff_C_out_27_addr_reg_1697;
reg   [6:0] buff_C_out_27_addr_reg_1697_pp0_iter1_reg;
reg   [6:0] buff_C_out_27_addr_reg_1697_pp0_iter2_reg;
reg   [6:0] buff_C_out_28_addr_reg_1702;
reg   [6:0] buff_C_out_28_addr_reg_1702_pp0_iter1_reg;
reg   [6:0] buff_C_out_28_addr_reg_1702_pp0_iter2_reg;
reg   [6:0] buff_C_out_29_addr_reg_1707;
reg   [6:0] buff_C_out_29_addr_reg_1707_pp0_iter1_reg;
reg   [6:0] buff_C_out_29_addr_reg_1707_pp0_iter2_reg;
reg   [6:0] buff_C_out_30_addr_reg_1712;
reg   [6:0] buff_C_out_30_addr_reg_1712_pp0_iter1_reg;
reg   [6:0] buff_C_out_30_addr_reg_1712_pp0_iter2_reg;
reg   [6:0] buff_C_out_31_addr_reg_1717;
reg   [6:0] buff_C_out_31_addr_reg_1717_pp0_iter1_reg;
reg   [6:0] buff_C_out_31_addr_reg_1717_pp0_iter2_reg;
wire   [0:0] icmp_ln23_1_fu_1132_p2;
reg   [0:0] icmp_ln23_1_reg_1802;
reg   [0:0] icmp_ln23_1_reg_1802_pp0_iter1_reg;
wire   [31:0] tmp_8_fu_1337_p19;
reg   [31:0] tmp_8_reg_1806;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] tmp_9_fu_1379_p19;
reg   [31:0] tmp_9_reg_1811;
wire   [31:0] tmp_s_fu_1419_p19;
reg   [31:0] tmp_s_reg_1816;
reg   [31:0] mul_reg_1821;
wire    ap_block_pp0_stage7_11001;
reg   [31:0] mul2_reg_1826;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] add_reg_1836;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] tmp_22_cast_fu_1042_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln24_fu_1095_p1;
wire   [63:0] zext_ln24_1_fu_1115_p1;
reg   [6:0] k_fu_184;
wire   [6:0] add_ln23_fu_1127_p2;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [6:0] j_fu_188;
wire   [6:0] select_ln21_fu_990_p3;
reg   [13:0] indvar_flatten7_fu_192;
wire   [13:0] select_ln21_1_fu_936_p3;
reg   [6:0] i_1_fu_196;
wire   [6:0] select_ln20_fu_973_p3;
reg   [18:0] indvar_flatten21_fu_200;
wire   [18:0] add_ln20_1_fu_883_p2;
reg   [31:0] empty_fu_204;
wire    ap_block_pp0_stage4;
reg    buff_C_out_ce0_local;
reg   [6:0] buff_C_out_address0_local;
reg    buff_C_out_we0_local;
reg    ap_predicate_pred781_state20;
wire    ap_block_pp0_stage3;
reg    buff_C_out_1_ce0_local;
reg   [6:0] buff_C_out_1_address0_local;
reg    buff_C_out_1_we0_local;
reg    ap_predicate_pred797_state20;
reg    buff_C_out_2_ce0_local;
reg   [6:0] buff_C_out_2_address0_local;
reg    buff_C_out_2_we0_local;
reg    ap_predicate_pred808_state20;
reg    buff_C_out_3_ce0_local;
reg   [6:0] buff_C_out_3_address0_local;
reg    buff_C_out_3_we0_local;
reg    ap_predicate_pred819_state20;
reg    buff_C_out_4_ce0_local;
reg   [6:0] buff_C_out_4_address0_local;
reg    buff_C_out_4_we0_local;
reg    ap_predicate_pred831_state20;
reg    buff_C_out_5_ce0_local;
reg   [6:0] buff_C_out_5_address0_local;
reg    buff_C_out_5_we0_local;
reg    ap_predicate_pred840_state20;
reg    buff_C_out_6_ce0_local;
reg   [6:0] buff_C_out_6_address0_local;
reg    buff_C_out_6_we0_local;
reg    ap_predicate_pred849_state20;
reg    buff_C_out_7_ce0_local;
reg   [6:0] buff_C_out_7_address0_local;
reg    buff_C_out_7_we0_local;
reg    ap_predicate_pred858_state20;
reg    buff_C_out_8_ce0_local;
reg   [6:0] buff_C_out_8_address0_local;
reg    buff_C_out_8_we0_local;
reg    ap_predicate_pred870_state20;
reg    buff_C_out_9_ce0_local;
reg   [6:0] buff_C_out_9_address0_local;
reg    buff_C_out_9_we0_local;
reg    ap_predicate_pred879_state20;
reg    buff_C_out_10_ce0_local;
reg   [6:0] buff_C_out_10_address0_local;
reg    buff_C_out_10_we0_local;
reg    ap_predicate_pred888_state20;
reg    buff_C_out_11_ce0_local;
reg   [6:0] buff_C_out_11_address0_local;
reg    buff_C_out_11_we0_local;
reg    ap_predicate_pred897_state20;
reg    buff_C_out_12_ce0_local;
reg   [6:0] buff_C_out_12_address0_local;
reg    buff_C_out_12_we0_local;
reg    ap_predicate_pred909_state20;
reg    buff_C_out_13_ce0_local;
reg   [6:0] buff_C_out_13_address0_local;
reg    buff_C_out_13_we0_local;
reg    ap_predicate_pred918_state20;
reg    buff_C_out_14_ce0_local;
reg   [6:0] buff_C_out_14_address0_local;
reg    buff_C_out_14_we0_local;
reg    ap_predicate_pred927_state20;
reg    buff_C_out_15_ce0_local;
reg   [6:0] buff_C_out_15_address0_local;
reg    buff_C_out_15_we0_local;
reg    ap_predicate_pred936_state20;
reg    buff_C_out_16_ce0_local;
reg   [6:0] buff_C_out_16_address0_local;
reg    buff_C_out_16_we0_local;
reg    ap_predicate_pred948_state20;
reg    buff_C_out_17_ce0_local;
reg   [6:0] buff_C_out_17_address0_local;
reg    buff_C_out_17_we0_local;
reg    ap_predicate_pred957_state20;
reg    buff_C_out_18_ce0_local;
reg   [6:0] buff_C_out_18_address0_local;
reg    buff_C_out_18_we0_local;
reg    ap_predicate_pred966_state20;
reg    buff_C_out_19_ce0_local;
reg   [6:0] buff_C_out_19_address0_local;
reg    buff_C_out_19_we0_local;
reg    ap_predicate_pred975_state20;
reg    buff_C_out_20_ce0_local;
reg   [6:0] buff_C_out_20_address0_local;
reg    buff_C_out_20_we0_local;
reg    ap_predicate_pred987_state20;
reg    buff_C_out_21_ce0_local;
reg   [6:0] buff_C_out_21_address0_local;
reg    buff_C_out_21_we0_local;
reg    ap_predicate_pred996_state20;
reg    buff_C_out_22_ce0_local;
reg   [6:0] buff_C_out_22_address0_local;
reg    buff_C_out_22_we0_local;
reg    ap_predicate_pred1005_state20;
reg    buff_C_out_23_ce0_local;
reg   [6:0] buff_C_out_23_address0_local;
reg    buff_C_out_23_we0_local;
reg    ap_predicate_pred1014_state20;
reg    buff_C_out_24_ce0_local;
reg   [6:0] buff_C_out_24_address0_local;
reg    buff_C_out_24_we0_local;
reg    ap_predicate_pred1026_state20;
reg    buff_C_out_25_ce0_local;
reg   [6:0] buff_C_out_25_address0_local;
reg    buff_C_out_25_we0_local;
reg    ap_predicate_pred1035_state20;
reg    buff_C_out_26_ce0_local;
reg   [6:0] buff_C_out_26_address0_local;
reg    buff_C_out_26_we0_local;
reg    ap_predicate_pred1044_state20;
reg    buff_C_out_27_ce0_local;
reg   [6:0] buff_C_out_27_address0_local;
reg    buff_C_out_27_we0_local;
reg    ap_predicate_pred1053_state20;
reg    buff_C_out_28_ce0_local;
reg   [6:0] buff_C_out_28_address0_local;
reg    buff_C_out_28_we0_local;
reg    ap_predicate_pred1065_state20;
reg    buff_C_out_29_ce0_local;
reg   [6:0] buff_C_out_29_address0_local;
reg    buff_C_out_29_we0_local;
reg    ap_predicate_pred1074_state20;
reg    buff_C_out_30_ce0_local;
reg   [6:0] buff_C_out_30_address0_local;
reg    buff_C_out_30_we0_local;
reg    ap_predicate_pred1083_state20;
reg    buff_C_out_31_ce0_local;
reg   [6:0] buff_C_out_31_address0_local;
reg    buff_C_out_31_we0_local;
reg    ap_predicate_pred1092_state20;
reg    buff_A0_ce0_local;
reg    buff_A0_1_ce0_local;
reg    buff_A0_2_ce0_local;
reg    buff_A0_3_ce0_local;
reg    buff_A0_4_ce0_local;
reg    buff_A0_5_ce0_local;
reg    buff_A0_6_ce0_local;
reg    buff_A0_7_ce0_local;
reg    buff_A1_ce0_local;
reg    buff_A1_1_ce0_local;
reg    buff_A1_2_ce0_local;
reg    buff_A1_3_ce0_local;
reg    buff_A1_4_ce0_local;
reg    buff_A1_5_ce0_local;
reg    buff_A1_6_ce0_local;
reg    buff_A1_7_ce0_local;
wire    ap_block_pp0_stage0;
reg   [31:0] grp_fu_842_p0;
reg   [31:0] grp_fu_842_p1;
wire   [0:0] icmp_ln23_fu_904_p2;
wire   [0:0] xor_ln5_fu_898_p2;
wire   [0:0] empty_12_fu_916_p2;
wire   [13:0] add_ln21_1_fu_930_p2;
wire   [6:0] add_ln20_fu_960_p2;
wire   [6:0] select_ln5_fu_966_p3;
wire   [6:0] add_ln21_fu_984_p2;
wire   [3:0] tmp_21_fu_1024_p4;
wire   [2:0] lshr_ln5_4_fu_1014_p4;
wire   [6:0] tmp_22_fu_1034_p3;
wire   [5:0] trunc_ln21_fu_980_p1;
wire   [2:0] lshr_ln5_6_fu_1078_p4;
wire   [8:0] tmp_23_fu_1087_p3;
wire   [5:0] empty_13_fu_997_p1;
wire   [8:0] tmp_24_fu_1107_p3;
wire   [31:0] tmp_fu_1153_p9;
wire   [31:0] tmp_1_fu_1176_p9;
wire   [31:0] tmp_2_fu_1199_p9;
wire   [31:0] tmp_3_fu_1222_p9;
wire   [31:0] tmp_4_fu_1245_p9;
wire   [31:0] tmp_5_fu_1268_p9;
wire   [31:0] tmp_6_fu_1291_p9;
wire   [31:0] tmp_7_fu_1314_p9;
wire   [31:0] tmp_fu_1153_p11;
wire   [31:0] tmp_1_fu_1176_p11;
wire   [31:0] tmp_2_fu_1199_p11;
wire   [31:0] tmp_3_fu_1222_p11;
wire   [31:0] tmp_4_fu_1245_p11;
wire   [31:0] tmp_5_fu_1268_p11;
wire   [31:0] tmp_6_fu_1291_p11;
wire   [31:0] tmp_7_fu_1314_p11;
wire   [31:0] tmp_8_fu_1337_p17;
wire   [31:0] tmp_9_fu_1379_p17;
wire   [2:0] trunc_ln23_fu_1376_p1;
wire   [31:0] tmp_s_fu_1419_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage3;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage4_00001;
wire   [1:0] tmp_fu_1153_p1;
wire   [1:0] tmp_fu_1153_p3;
wire  signed [1:0] tmp_fu_1153_p5;
wire  signed [1:0] tmp_fu_1153_p7;
wire   [1:0] tmp_1_fu_1176_p1;
wire   [1:0] tmp_1_fu_1176_p3;
wire  signed [1:0] tmp_1_fu_1176_p5;
wire  signed [1:0] tmp_1_fu_1176_p7;
wire   [1:0] tmp_2_fu_1199_p1;
wire   [1:0] tmp_2_fu_1199_p3;
wire  signed [1:0] tmp_2_fu_1199_p5;
wire  signed [1:0] tmp_2_fu_1199_p7;
wire   [1:0] tmp_3_fu_1222_p1;
wire   [1:0] tmp_3_fu_1222_p3;
wire  signed [1:0] tmp_3_fu_1222_p5;
wire  signed [1:0] tmp_3_fu_1222_p7;
wire   [1:0] tmp_4_fu_1245_p1;
wire   [1:0] tmp_4_fu_1245_p3;
wire  signed [1:0] tmp_4_fu_1245_p5;
wire  signed [1:0] tmp_4_fu_1245_p7;
wire   [1:0] tmp_5_fu_1268_p1;
wire   [1:0] tmp_5_fu_1268_p3;
wire  signed [1:0] tmp_5_fu_1268_p5;
wire  signed [1:0] tmp_5_fu_1268_p7;
wire   [1:0] tmp_6_fu_1291_p1;
wire   [1:0] tmp_6_fu_1291_p3;
wire  signed [1:0] tmp_6_fu_1291_p5;
wire  signed [1:0] tmp_6_fu_1291_p7;
wire   [1:0] tmp_7_fu_1314_p1;
wire   [1:0] tmp_7_fu_1314_p3;
wire  signed [1:0] tmp_7_fu_1314_p5;
wire  signed [1:0] tmp_7_fu_1314_p7;
wire   [2:0] tmp_8_fu_1337_p1;
wire   [2:0] tmp_8_fu_1337_p3;
wire   [2:0] tmp_8_fu_1337_p5;
wire   [2:0] tmp_8_fu_1337_p7;
wire  signed [2:0] tmp_8_fu_1337_p9;
wire  signed [2:0] tmp_8_fu_1337_p11;
wire  signed [2:0] tmp_8_fu_1337_p13;
wire  signed [2:0] tmp_8_fu_1337_p15;
wire   [2:0] tmp_9_fu_1379_p1;
wire   [2:0] tmp_9_fu_1379_p3;
wire   [2:0] tmp_9_fu_1379_p5;
wire   [2:0] tmp_9_fu_1379_p7;
wire  signed [2:0] tmp_9_fu_1379_p9;
wire  signed [2:0] tmp_9_fu_1379_p11;
wire  signed [2:0] tmp_9_fu_1379_p13;
wire  signed [2:0] tmp_9_fu_1379_p15;
wire   [2:0] tmp_s_fu_1419_p1;
wire   [2:0] tmp_s_fu_1419_p3;
wire   [2:0] tmp_s_fu_1419_p5;
wire   [2:0] tmp_s_fu_1419_p7;
wire  signed [2:0] tmp_s_fu_1419_p9;
wire  signed [2:0] tmp_s_fu_1419_p11;
wire  signed [2:0] tmp_s_fu_1419_p13;
wire  signed [2:0] tmp_s_fu_1419_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_184 = 7'd0;
#0 j_fu_188 = 7'd0;
#0 indvar_flatten7_fu_192 = 14'd0;
#0 i_1_fu_196 = 7'd0;
#0 indvar_flatten21_fu_200 = 19'd0;
#0 empty_fu_204 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U99(.din0(buff_C_out_q0),.din1(buff_C_out_1_q0),.din2(buff_C_out_2_q0),.din3(buff_C_out_3_q0),.def(tmp_fu_1153_p9),.sel(trunc_ln20_reg_1545),.dout(tmp_fu_1153_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U100(.din0(buff_C_out_4_q0),.din1(buff_C_out_5_q0),.din2(buff_C_out_6_q0),.din3(buff_C_out_7_q0),.def(tmp_1_fu_1176_p9),.sel(trunc_ln20_reg_1545),.dout(tmp_1_fu_1176_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U101(.din0(buff_C_out_8_q0),.din1(buff_C_out_9_q0),.din2(buff_C_out_10_q0),.din3(buff_C_out_11_q0),.def(tmp_2_fu_1199_p9),.sel(trunc_ln20_reg_1545),.dout(tmp_2_fu_1199_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U102(.din0(buff_C_out_12_q0),.din1(buff_C_out_13_q0),.din2(buff_C_out_14_q0),.din3(buff_C_out_15_q0),.def(tmp_3_fu_1222_p9),.sel(trunc_ln20_reg_1545),.dout(tmp_3_fu_1222_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U103(.din0(buff_C_out_16_q0),.din1(buff_C_out_17_q0),.din2(buff_C_out_18_q0),.din3(buff_C_out_19_q0),.def(tmp_4_fu_1245_p9),.sel(trunc_ln20_reg_1545),.dout(tmp_4_fu_1245_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U104(.din0(buff_C_out_20_q0),.din1(buff_C_out_21_q0),.din2(buff_C_out_22_q0),.din3(buff_C_out_23_q0),.def(tmp_5_fu_1268_p9),.sel(trunc_ln20_reg_1545),.dout(tmp_5_fu_1268_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U105(.din0(buff_C_out_24_q0),.din1(buff_C_out_25_q0),.din2(buff_C_out_26_q0),.din3(buff_C_out_27_q0),.def(tmp_6_fu_1291_p9),.sel(trunc_ln20_reg_1545),.dout(tmp_6_fu_1291_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U106(.din0(buff_C_out_28_q0),.din1(buff_C_out_29_q0),.din2(buff_C_out_30_q0),.din3(buff_C_out_31_q0),.def(tmp_7_fu_1314_p9),.sel(trunc_ln20_reg_1545),.dout(tmp_7_fu_1314_p11));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U107(.din0(tmp_fu_1153_p11),.din1(tmp_1_fu_1176_p11),.din2(tmp_2_fu_1199_p11),.din3(tmp_3_fu_1222_p11),.din4(tmp_4_fu_1245_p11),.din5(tmp_5_fu_1268_p11),.din6(tmp_6_fu_1291_p11),.din7(tmp_7_fu_1314_p11),.def(tmp_8_fu_1337_p17),.sel(trunc_ln21_1_reg_1557),.dout(tmp_8_fu_1337_p19));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U108(.din0(buff_A0_q0),.din1(buff_A0_1_q0),.din2(buff_A0_2_q0),.din3(buff_A0_3_q0),.din4(buff_A0_4_q0),.din5(buff_A0_5_q0),.din6(buff_A0_6_q0),.din7(buff_A0_7_q0),.def(tmp_9_fu_1379_p17),.sel(trunc_ln23_fu_1376_p1),.dout(tmp_9_fu_1379_p19));
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U109(.din0(buff_A1_q0),.din1(buff_A1_1_q0),.din2(buff_A1_2_q0),.din3(buff_A1_3_q0),.din4(buff_A1_4_q0),.din5(buff_A1_5_q0),.din6(buff_A1_6_q0),.din7(buff_A1_7_q0),.def(tmp_s_fu_1419_p17),.sel(trunc_ln23_fu_1376_p1),.dout(tmp_s_fu_1419_p19));
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage3) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        if (((first_iter_1_reg_1541_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            empty_fu_204 <= tmp_8_reg_1806;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            empty_fu_204 <= add_reg_1836;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_196 <= 7'd0;
    end else if (((icmp_ln20_reg_1518 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_1_fu_196 <= select_ln20_fu_973_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten21_fu_200 <= 19'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln20_fu_877_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten21_fu_200 <= add_ln20_1_fu_883_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten7_fu_192 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln20_fu_877_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten7_fu_192 <= select_ln21_1_fu_936_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_188 <= 7'd0;
    end else if (((icmp_ln20_reg_1518 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_188 <= select_ln21_fu_990_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_184 <= 7'd0;
    end else if (((icmp_ln20_reg_1518 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_184 <= add_ln23_fu_1127_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_reg_1836 <= grp_fu_800_p_dout0;
        ap_predicate_pred1005_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd5) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd2));
        ap_predicate_pred1014_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd5) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd3));
        ap_predicate_pred1026_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd6) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd0));
        ap_predicate_pred1035_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd6) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd1));
        ap_predicate_pred1044_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd6) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd2));
        ap_predicate_pred1053_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd6) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd3));
        ap_predicate_pred1065_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd7) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd0));
        ap_predicate_pred1074_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd7) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd1));
        ap_predicate_pred1083_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd7) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd2));
        ap_predicate_pred1092_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd7) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd3));
        ap_predicate_pred781_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd0) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd0));
        ap_predicate_pred797_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd0) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd1));
        ap_predicate_pred808_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd0) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd2));
        ap_predicate_pred819_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd0) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd3));
        ap_predicate_pred831_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd1) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd0));
        ap_predicate_pred840_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd1) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd1));
        ap_predicate_pred849_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd1) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd2));
        ap_predicate_pred858_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd1) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd3));
        ap_predicate_pred870_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd2) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd0));
        ap_predicate_pred879_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd2) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd1));
        ap_predicate_pred888_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd2) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd2));
        ap_predicate_pred897_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd2) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd3));
        ap_predicate_pred909_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd3) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd0));
        ap_predicate_pred918_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd3) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd1));
        ap_predicate_pred927_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd3) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd2));
        ap_predicate_pred936_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd3) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd3));
        ap_predicate_pred948_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd4) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd0));
        ap_predicate_pred957_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd4) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd1));
        ap_predicate_pred966_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd4) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd2));
        ap_predicate_pred975_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd4) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd3));
        ap_predicate_pred987_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd5) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd0));
        ap_predicate_pred996_state20 <= ((icmp_ln23_1_reg_1802_pp0_iter1_reg == 1'd1) & (trunc_ln21_1_reg_1557_pp0_iter1_reg == 3'd5) & (trunc_ln20_reg_1545_pp0_iter1_reg == 2'd1));
        buff_C_out_10_addr_reg_1612 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_10_addr_reg_1612_pp0_iter1_reg <= buff_C_out_10_addr_reg_1612;
        buff_C_out_10_addr_reg_1612_pp0_iter2_reg <= buff_C_out_10_addr_reg_1612_pp0_iter1_reg;
        buff_C_out_11_addr_reg_1617 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_11_addr_reg_1617_pp0_iter1_reg <= buff_C_out_11_addr_reg_1617;
        buff_C_out_11_addr_reg_1617_pp0_iter2_reg <= buff_C_out_11_addr_reg_1617_pp0_iter1_reg;
        buff_C_out_12_addr_reg_1622 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_12_addr_reg_1622_pp0_iter1_reg <= buff_C_out_12_addr_reg_1622;
        buff_C_out_12_addr_reg_1622_pp0_iter2_reg <= buff_C_out_12_addr_reg_1622_pp0_iter1_reg;
        buff_C_out_13_addr_reg_1627 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_13_addr_reg_1627_pp0_iter1_reg <= buff_C_out_13_addr_reg_1627;
        buff_C_out_13_addr_reg_1627_pp0_iter2_reg <= buff_C_out_13_addr_reg_1627_pp0_iter1_reg;
        buff_C_out_14_addr_reg_1632 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_14_addr_reg_1632_pp0_iter1_reg <= buff_C_out_14_addr_reg_1632;
        buff_C_out_14_addr_reg_1632_pp0_iter2_reg <= buff_C_out_14_addr_reg_1632_pp0_iter1_reg;
        buff_C_out_15_addr_reg_1637 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_15_addr_reg_1637_pp0_iter1_reg <= buff_C_out_15_addr_reg_1637;
        buff_C_out_15_addr_reg_1637_pp0_iter2_reg <= buff_C_out_15_addr_reg_1637_pp0_iter1_reg;
        buff_C_out_16_addr_reg_1642 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_16_addr_reg_1642_pp0_iter1_reg <= buff_C_out_16_addr_reg_1642;
        buff_C_out_16_addr_reg_1642_pp0_iter2_reg <= buff_C_out_16_addr_reg_1642_pp0_iter1_reg;
        buff_C_out_17_addr_reg_1647 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_17_addr_reg_1647_pp0_iter1_reg <= buff_C_out_17_addr_reg_1647;
        buff_C_out_17_addr_reg_1647_pp0_iter2_reg <= buff_C_out_17_addr_reg_1647_pp0_iter1_reg;
        buff_C_out_18_addr_reg_1652 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_18_addr_reg_1652_pp0_iter1_reg <= buff_C_out_18_addr_reg_1652;
        buff_C_out_18_addr_reg_1652_pp0_iter2_reg <= buff_C_out_18_addr_reg_1652_pp0_iter1_reg;
        buff_C_out_19_addr_reg_1657 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_19_addr_reg_1657_pp0_iter1_reg <= buff_C_out_19_addr_reg_1657;
        buff_C_out_19_addr_reg_1657_pp0_iter2_reg <= buff_C_out_19_addr_reg_1657_pp0_iter1_reg;
        buff_C_out_1_addr_reg_1567 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_1_addr_reg_1567_pp0_iter1_reg <= buff_C_out_1_addr_reg_1567;
        buff_C_out_1_addr_reg_1567_pp0_iter2_reg <= buff_C_out_1_addr_reg_1567_pp0_iter1_reg;
        buff_C_out_20_addr_reg_1662 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_20_addr_reg_1662_pp0_iter1_reg <= buff_C_out_20_addr_reg_1662;
        buff_C_out_20_addr_reg_1662_pp0_iter2_reg <= buff_C_out_20_addr_reg_1662_pp0_iter1_reg;
        buff_C_out_21_addr_reg_1667 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_21_addr_reg_1667_pp0_iter1_reg <= buff_C_out_21_addr_reg_1667;
        buff_C_out_21_addr_reg_1667_pp0_iter2_reg <= buff_C_out_21_addr_reg_1667_pp0_iter1_reg;
        buff_C_out_22_addr_reg_1672 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_22_addr_reg_1672_pp0_iter1_reg <= buff_C_out_22_addr_reg_1672;
        buff_C_out_22_addr_reg_1672_pp0_iter2_reg <= buff_C_out_22_addr_reg_1672_pp0_iter1_reg;
        buff_C_out_23_addr_reg_1677 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_23_addr_reg_1677_pp0_iter1_reg <= buff_C_out_23_addr_reg_1677;
        buff_C_out_23_addr_reg_1677_pp0_iter2_reg <= buff_C_out_23_addr_reg_1677_pp0_iter1_reg;
        buff_C_out_24_addr_reg_1682 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_24_addr_reg_1682_pp0_iter1_reg <= buff_C_out_24_addr_reg_1682;
        buff_C_out_24_addr_reg_1682_pp0_iter2_reg <= buff_C_out_24_addr_reg_1682_pp0_iter1_reg;
        buff_C_out_25_addr_reg_1687 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_25_addr_reg_1687_pp0_iter1_reg <= buff_C_out_25_addr_reg_1687;
        buff_C_out_25_addr_reg_1687_pp0_iter2_reg <= buff_C_out_25_addr_reg_1687_pp0_iter1_reg;
        buff_C_out_26_addr_reg_1692 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_26_addr_reg_1692_pp0_iter1_reg <= buff_C_out_26_addr_reg_1692;
        buff_C_out_26_addr_reg_1692_pp0_iter2_reg <= buff_C_out_26_addr_reg_1692_pp0_iter1_reg;
        buff_C_out_27_addr_reg_1697 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_27_addr_reg_1697_pp0_iter1_reg <= buff_C_out_27_addr_reg_1697;
        buff_C_out_27_addr_reg_1697_pp0_iter2_reg <= buff_C_out_27_addr_reg_1697_pp0_iter1_reg;
        buff_C_out_28_addr_reg_1702 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_28_addr_reg_1702_pp0_iter1_reg <= buff_C_out_28_addr_reg_1702;
        buff_C_out_28_addr_reg_1702_pp0_iter2_reg <= buff_C_out_28_addr_reg_1702_pp0_iter1_reg;
        buff_C_out_29_addr_reg_1707 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_29_addr_reg_1707_pp0_iter1_reg <= buff_C_out_29_addr_reg_1707;
        buff_C_out_29_addr_reg_1707_pp0_iter2_reg <= buff_C_out_29_addr_reg_1707_pp0_iter1_reg;
        buff_C_out_2_addr_reg_1572 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_2_addr_reg_1572_pp0_iter1_reg <= buff_C_out_2_addr_reg_1572;
        buff_C_out_2_addr_reg_1572_pp0_iter2_reg <= buff_C_out_2_addr_reg_1572_pp0_iter1_reg;
        buff_C_out_30_addr_reg_1712 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_30_addr_reg_1712_pp0_iter1_reg <= buff_C_out_30_addr_reg_1712;
        buff_C_out_30_addr_reg_1712_pp0_iter2_reg <= buff_C_out_30_addr_reg_1712_pp0_iter1_reg;
        buff_C_out_31_addr_reg_1717 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_31_addr_reg_1717_pp0_iter1_reg <= buff_C_out_31_addr_reg_1717;
        buff_C_out_31_addr_reg_1717_pp0_iter2_reg <= buff_C_out_31_addr_reg_1717_pp0_iter1_reg;
        buff_C_out_3_addr_reg_1577 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_3_addr_reg_1577_pp0_iter1_reg <= buff_C_out_3_addr_reg_1577;
        buff_C_out_3_addr_reg_1577_pp0_iter2_reg <= buff_C_out_3_addr_reg_1577_pp0_iter1_reg;
        buff_C_out_4_addr_reg_1582 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_4_addr_reg_1582_pp0_iter1_reg <= buff_C_out_4_addr_reg_1582;
        buff_C_out_4_addr_reg_1582_pp0_iter2_reg <= buff_C_out_4_addr_reg_1582_pp0_iter1_reg;
        buff_C_out_5_addr_reg_1587 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_5_addr_reg_1587_pp0_iter1_reg <= buff_C_out_5_addr_reg_1587;
        buff_C_out_5_addr_reg_1587_pp0_iter2_reg <= buff_C_out_5_addr_reg_1587_pp0_iter1_reg;
        buff_C_out_6_addr_reg_1592 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_6_addr_reg_1592_pp0_iter1_reg <= buff_C_out_6_addr_reg_1592;
        buff_C_out_6_addr_reg_1592_pp0_iter2_reg <= buff_C_out_6_addr_reg_1592_pp0_iter1_reg;
        buff_C_out_7_addr_reg_1597 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_7_addr_reg_1597_pp0_iter1_reg <= buff_C_out_7_addr_reg_1597;
        buff_C_out_7_addr_reg_1597_pp0_iter2_reg <= buff_C_out_7_addr_reg_1597_pp0_iter1_reg;
        buff_C_out_8_addr_reg_1602 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_8_addr_reg_1602_pp0_iter1_reg <= buff_C_out_8_addr_reg_1602;
        buff_C_out_8_addr_reg_1602_pp0_iter2_reg <= buff_C_out_8_addr_reg_1602_pp0_iter1_reg;
        buff_C_out_9_addr_reg_1607 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_9_addr_reg_1607_pp0_iter1_reg <= buff_C_out_9_addr_reg_1607;
        buff_C_out_9_addr_reg_1607_pp0_iter2_reg <= buff_C_out_9_addr_reg_1607_pp0_iter1_reg;
        buff_C_out_addr_reg_1562 <= tmp_22_cast_fu_1042_p1;
        buff_C_out_addr_reg_1562_pp0_iter1_reg <= buff_C_out_addr_reg_1562;
        buff_C_out_addr_reg_1562_pp0_iter2_reg <= buff_C_out_addr_reg_1562_pp0_iter1_reg;
        first_iter_1_reg_1541 <= first_iter_1_fu_1001_p2;
        first_iter_1_reg_1541_pp0_iter1_reg <= first_iter_1_reg_1541;
        icmp_ln23_1_reg_1802 <= icmp_ln23_1_fu_1132_p2;
        icmp_ln23_1_reg_1802_pp0_iter1_reg <= icmp_ln23_1_reg_1802;
        trunc_ln20_reg_1545 <= trunc_ln20_fu_1006_p1;
        trunc_ln20_reg_1545_pp0_iter1_reg <= trunc_ln20_reg_1545;
        trunc_ln21_1_reg_1557 <= trunc_ln21_1_fu_1010_p1;
        trunc_ln21_1_reg_1557_pp0_iter1_reg <= trunc_ln21_1_reg_1557;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln5_reg_1528 <= and_ln5_fu_910_p2;
        icmp_ln20_reg_1518 <= icmp_ln20_fu_877_p2;
        icmp_ln20_reg_1518_pp0_iter1_reg <= icmp_ln20_reg_1518;
        icmp_ln21_reg_1522 <= icmp_ln21_fu_892_p2;
        k_mid2_reg_1533 <= k_mid2_fu_922_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul2_reg_1826 <= grp_fu_804_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul_reg_1821 <= grp_fu_804_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_8_reg_1806 <= tmp_8_fu_1337_p19;
        tmp_9_reg_1811 <= tmp_9_fu_1379_p19;
        tmp_s_reg_1816 <= tmp_s_fu_1419_p19;
    end
end
always @ (*) begin
    if (((icmp_ln20_reg_1518 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (icmp_ln20_reg_1518_pp0_iter1_reg == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_2_ce0_local = 1'b1;
    end else begin
        buff_A0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_3_ce0_local = 1'b1;
    end else begin
        buff_A0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_4_ce0_local = 1'b1;
    end else begin
        buff_A0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_5_ce0_local = 1'b1;
    end else begin
        buff_A0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_6_ce0_local = 1'b1;
    end else begin
        buff_A0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_7_ce0_local = 1'b1;
    end else begin
        buff_A0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_1_ce0_local = 1'b1;
    end else begin
        buff_A1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_2_ce0_local = 1'b1;
    end else begin
        buff_A1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_3_ce0_local = 1'b1;
    end else begin
        buff_A1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_4_ce0_local = 1'b1;
    end else begin
        buff_A1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_5_ce0_local = 1'b1;
    end else begin
        buff_A1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_6_ce0_local = 1'b1;
    end else begin
        buff_A1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_7_ce0_local = 1'b1;
    end else begin
        buff_A1_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_A1_ce0_local = 1'b1;
    end else begin
        buff_A1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_10_address0_local = buff_C_out_10_addr_reg_1612_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_10_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_10_ce0_local = 1'b1;
    end else begin
        buff_C_out_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred888_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_10_we0_local = 1'b1;
    end else begin
        buff_C_out_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_11_address0_local = buff_C_out_11_addr_reg_1617_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_11_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_11_ce0_local = 1'b1;
    end else begin
        buff_C_out_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred897_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_11_we0_local = 1'b1;
    end else begin
        buff_C_out_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_12_address0_local = buff_C_out_12_addr_reg_1622_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_12_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_12_ce0_local = 1'b1;
    end else begin
        buff_C_out_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred909_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_12_we0_local = 1'b1;
    end else begin
        buff_C_out_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_13_address0_local = buff_C_out_13_addr_reg_1627_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_13_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_13_ce0_local = 1'b1;
    end else begin
        buff_C_out_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred918_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_13_we0_local = 1'b1;
    end else begin
        buff_C_out_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_14_address0_local = buff_C_out_14_addr_reg_1632_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_14_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_14_ce0_local = 1'b1;
    end else begin
        buff_C_out_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred927_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_14_we0_local = 1'b1;
    end else begin
        buff_C_out_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_15_address0_local = buff_C_out_15_addr_reg_1637_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_15_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_15_ce0_local = 1'b1;
    end else begin
        buff_C_out_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred936_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_15_we0_local = 1'b1;
    end else begin
        buff_C_out_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_16_address0_local = buff_C_out_16_addr_reg_1642_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_16_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_16_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_16_ce0_local = 1'b1;
    end else begin
        buff_C_out_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred948_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_16_we0_local = 1'b1;
    end else begin
        buff_C_out_16_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_17_address0_local = buff_C_out_17_addr_reg_1647_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_17_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_17_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_17_ce0_local = 1'b1;
    end else begin
        buff_C_out_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred957_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_17_we0_local = 1'b1;
    end else begin
        buff_C_out_17_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_18_address0_local = buff_C_out_18_addr_reg_1652_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_18_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_18_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_18_ce0_local = 1'b1;
    end else begin
        buff_C_out_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred966_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_18_we0_local = 1'b1;
    end else begin
        buff_C_out_18_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_19_address0_local = buff_C_out_19_addr_reg_1657_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_19_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_19_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_19_ce0_local = 1'b1;
    end else begin
        buff_C_out_19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred975_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_19_we0_local = 1'b1;
    end else begin
        buff_C_out_19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_1_address0_local = buff_C_out_1_addr_reg_1567_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_1_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred797_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_20_address0_local = buff_C_out_20_addr_reg_1662_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_20_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_20_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_20_ce0_local = 1'b1;
    end else begin
        buff_C_out_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred987_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_20_we0_local = 1'b1;
    end else begin
        buff_C_out_20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_21_address0_local = buff_C_out_21_addr_reg_1667_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_21_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_21_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_21_ce0_local = 1'b1;
    end else begin
        buff_C_out_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred996_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_21_we0_local = 1'b1;
    end else begin
        buff_C_out_21_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_22_address0_local = buff_C_out_22_addr_reg_1672_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_22_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_22_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_22_ce0_local = 1'b1;
    end else begin
        buff_C_out_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1005_state20 == 1'b1))) begin
        buff_C_out_22_we0_local = 1'b1;
    end else begin
        buff_C_out_22_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_23_address0_local = buff_C_out_23_addr_reg_1677_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_23_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_23_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_23_ce0_local = 1'b1;
    end else begin
        buff_C_out_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1014_state20 == 1'b1))) begin
        buff_C_out_23_we0_local = 1'b1;
    end else begin
        buff_C_out_23_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_24_address0_local = buff_C_out_24_addr_reg_1682_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_24_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_24_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_24_ce0_local = 1'b1;
    end else begin
        buff_C_out_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1026_state20 == 1'b1))) begin
        buff_C_out_24_we0_local = 1'b1;
    end else begin
        buff_C_out_24_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_25_address0_local = buff_C_out_25_addr_reg_1687_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_25_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_25_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_25_ce0_local = 1'b1;
    end else begin
        buff_C_out_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1035_state20 == 1'b1))) begin
        buff_C_out_25_we0_local = 1'b1;
    end else begin
        buff_C_out_25_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_26_address0_local = buff_C_out_26_addr_reg_1692_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_26_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_26_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_26_ce0_local = 1'b1;
    end else begin
        buff_C_out_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1044_state20 == 1'b1))) begin
        buff_C_out_26_we0_local = 1'b1;
    end else begin
        buff_C_out_26_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_27_address0_local = buff_C_out_27_addr_reg_1697_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_27_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_27_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_27_ce0_local = 1'b1;
    end else begin
        buff_C_out_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1053_state20 == 1'b1))) begin
        buff_C_out_27_we0_local = 1'b1;
    end else begin
        buff_C_out_27_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_28_address0_local = buff_C_out_28_addr_reg_1702_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_28_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_28_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_28_ce0_local = 1'b1;
    end else begin
        buff_C_out_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1065_state20 == 1'b1))) begin
        buff_C_out_28_we0_local = 1'b1;
    end else begin
        buff_C_out_28_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_29_address0_local = buff_C_out_29_addr_reg_1707_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_29_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_29_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_29_ce0_local = 1'b1;
    end else begin
        buff_C_out_29_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1074_state20 == 1'b1))) begin
        buff_C_out_29_we0_local = 1'b1;
    end else begin
        buff_C_out_29_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_2_address0_local = buff_C_out_2_addr_reg_1572_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_2_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred808_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_30_address0_local = buff_C_out_30_addr_reg_1712_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_30_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_30_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_30_ce0_local = 1'b1;
    end else begin
        buff_C_out_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1083_state20 == 1'b1))) begin
        buff_C_out_30_we0_local = 1'b1;
    end else begin
        buff_C_out_30_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_31_address0_local = buff_C_out_31_addr_reg_1717_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_31_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_31_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_31_ce0_local = 1'b1;
    end else begin
        buff_C_out_31_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_predicate_pred1092_state20 == 1'b1))) begin
        buff_C_out_31_we0_local = 1'b1;
    end else begin
        buff_C_out_31_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_3_address0_local = buff_C_out_3_addr_reg_1577_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_3_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred819_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_4_address0_local = buff_C_out_4_addr_reg_1582_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_4_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_4_ce0_local = 1'b1;
    end else begin
        buff_C_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred831_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_4_we0_local = 1'b1;
    end else begin
        buff_C_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_5_address0_local = buff_C_out_5_addr_reg_1587_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_5_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_5_ce0_local = 1'b1;
    end else begin
        buff_C_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred840_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_5_we0_local = 1'b1;
    end else begin
        buff_C_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_6_address0_local = buff_C_out_6_addr_reg_1592_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_6_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_6_ce0_local = 1'b1;
    end else begin
        buff_C_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred849_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_6_we0_local = 1'b1;
    end else begin
        buff_C_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_7_address0_local = buff_C_out_7_addr_reg_1597_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_7_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_7_ce0_local = 1'b1;
    end else begin
        buff_C_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred858_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_7_we0_local = 1'b1;
    end else begin
        buff_C_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_8_address0_local = buff_C_out_8_addr_reg_1602_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_8_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_8_ce0_local = 1'b1;
    end else begin
        buff_C_out_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred870_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_8_we0_local = 1'b1;
    end else begin
        buff_C_out_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_9_address0_local = buff_C_out_9_addr_reg_1607_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_9_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_9_ce0_local = 1'b1;
    end else begin
        buff_C_out_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred879_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_9_we0_local = 1'b1;
    end else begin
        buff_C_out_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_address0_local = buff_C_out_addr_reg_1562_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        buff_C_out_address0_local = tmp_22_cast_fu_1042_p1;
    end else begin
        buff_C_out_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_predicate_pred781_state20 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_842_p0 = mul_reg_1821;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_842_p0 = tmp_9_reg_1811;
    end else begin
        grp_fu_842_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_842_p1 = tmp_s_reg_1816;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_842_p1 = alpha;
    end else begin
        grp_fu_842_p1 = 'bx;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage3) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln20_1_fu_883_p2 = (indvar_flatten21_fu_200 + 19'd1);
assign add_ln20_fu_960_p2 = (i_1_fu_196 + 7'd1);
assign add_ln21_1_fu_930_p2 = (indvar_flatten7_fu_192 + 14'd1);
assign add_ln21_fu_984_p2 = (select_ln5_fu_966_p3 + 7'd1);
assign add_ln23_fu_1127_p2 = (k_mid2_reg_1533 + 7'd1);
assign and_ln5_fu_910_p2 = (xor_ln5_fu_898_p2 & icmp_ln23_fu_904_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign buff_A0_1_address0 = zext_ln24_fu_1095_p1;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_2_address0 = zext_ln24_fu_1095_p1;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_3_address0 = zext_ln24_fu_1095_p1;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_4_address0 = zext_ln24_fu_1095_p1;
assign buff_A0_4_ce0 = buff_A0_4_ce0_local;
assign buff_A0_5_address0 = zext_ln24_fu_1095_p1;
assign buff_A0_5_ce0 = buff_A0_5_ce0_local;
assign buff_A0_6_address0 = zext_ln24_fu_1095_p1;
assign buff_A0_6_ce0 = buff_A0_6_ce0_local;
assign buff_A0_7_address0 = zext_ln24_fu_1095_p1;
assign buff_A0_7_ce0 = buff_A0_7_ce0_local;
assign buff_A0_address0 = zext_ln24_fu_1095_p1;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A1_1_address0 = zext_ln24_1_fu_1115_p1;
assign buff_A1_1_ce0 = buff_A1_1_ce0_local;
assign buff_A1_2_address0 = zext_ln24_1_fu_1115_p1;
assign buff_A1_2_ce0 = buff_A1_2_ce0_local;
assign buff_A1_3_address0 = zext_ln24_1_fu_1115_p1;
assign buff_A1_3_ce0 = buff_A1_3_ce0_local;
assign buff_A1_4_address0 = zext_ln24_1_fu_1115_p1;
assign buff_A1_4_ce0 = buff_A1_4_ce0_local;
assign buff_A1_5_address0 = zext_ln24_1_fu_1115_p1;
assign buff_A1_5_ce0 = buff_A1_5_ce0_local;
assign buff_A1_6_address0 = zext_ln24_1_fu_1115_p1;
assign buff_A1_6_ce0 = buff_A1_6_ce0_local;
assign buff_A1_7_address0 = zext_ln24_1_fu_1115_p1;
assign buff_A1_7_ce0 = buff_A1_7_ce0_local;
assign buff_A1_address0 = zext_ln24_1_fu_1115_p1;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_C_out_10_address0 = buff_C_out_10_address0_local;
assign buff_C_out_10_ce0 = buff_C_out_10_ce0_local;
assign buff_C_out_10_d0 = add_reg_1836;
assign buff_C_out_10_we0 = buff_C_out_10_we0_local;
assign buff_C_out_11_address0 = buff_C_out_11_address0_local;
assign buff_C_out_11_ce0 = buff_C_out_11_ce0_local;
assign buff_C_out_11_d0 = add_reg_1836;
assign buff_C_out_11_we0 = buff_C_out_11_we0_local;
assign buff_C_out_12_address0 = buff_C_out_12_address0_local;
assign buff_C_out_12_ce0 = buff_C_out_12_ce0_local;
assign buff_C_out_12_d0 = add_reg_1836;
assign buff_C_out_12_we0 = buff_C_out_12_we0_local;
assign buff_C_out_13_address0 = buff_C_out_13_address0_local;
assign buff_C_out_13_ce0 = buff_C_out_13_ce0_local;
assign buff_C_out_13_d0 = add_reg_1836;
assign buff_C_out_13_we0 = buff_C_out_13_we0_local;
assign buff_C_out_14_address0 = buff_C_out_14_address0_local;
assign buff_C_out_14_ce0 = buff_C_out_14_ce0_local;
assign buff_C_out_14_d0 = add_reg_1836;
assign buff_C_out_14_we0 = buff_C_out_14_we0_local;
assign buff_C_out_15_address0 = buff_C_out_15_address0_local;
assign buff_C_out_15_ce0 = buff_C_out_15_ce0_local;
assign buff_C_out_15_d0 = add_reg_1836;
assign buff_C_out_15_we0 = buff_C_out_15_we0_local;
assign buff_C_out_16_address0 = buff_C_out_16_address0_local;
assign buff_C_out_16_ce0 = buff_C_out_16_ce0_local;
assign buff_C_out_16_d0 = add_reg_1836;
assign buff_C_out_16_we0 = buff_C_out_16_we0_local;
assign buff_C_out_17_address0 = buff_C_out_17_address0_local;
assign buff_C_out_17_ce0 = buff_C_out_17_ce0_local;
assign buff_C_out_17_d0 = add_reg_1836;
assign buff_C_out_17_we0 = buff_C_out_17_we0_local;
assign buff_C_out_18_address0 = buff_C_out_18_address0_local;
assign buff_C_out_18_ce0 = buff_C_out_18_ce0_local;
assign buff_C_out_18_d0 = add_reg_1836;
assign buff_C_out_18_we0 = buff_C_out_18_we0_local;
assign buff_C_out_19_address0 = buff_C_out_19_address0_local;
assign buff_C_out_19_ce0 = buff_C_out_19_ce0_local;
assign buff_C_out_19_d0 = add_reg_1836;
assign buff_C_out_19_we0 = buff_C_out_19_we0_local;
assign buff_C_out_1_address0 = buff_C_out_1_address0_local;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_d0 = add_reg_1836;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_20_address0 = buff_C_out_20_address0_local;
assign buff_C_out_20_ce0 = buff_C_out_20_ce0_local;
assign buff_C_out_20_d0 = add_reg_1836;
assign buff_C_out_20_we0 = buff_C_out_20_we0_local;
assign buff_C_out_21_address0 = buff_C_out_21_address0_local;
assign buff_C_out_21_ce0 = buff_C_out_21_ce0_local;
assign buff_C_out_21_d0 = add_reg_1836;
assign buff_C_out_21_we0 = buff_C_out_21_we0_local;
assign buff_C_out_22_address0 = buff_C_out_22_address0_local;
assign buff_C_out_22_ce0 = buff_C_out_22_ce0_local;
assign buff_C_out_22_d0 = add_reg_1836;
assign buff_C_out_22_we0 = buff_C_out_22_we0_local;
assign buff_C_out_23_address0 = buff_C_out_23_address0_local;
assign buff_C_out_23_ce0 = buff_C_out_23_ce0_local;
assign buff_C_out_23_d0 = add_reg_1836;
assign buff_C_out_23_we0 = buff_C_out_23_we0_local;
assign buff_C_out_24_address0 = buff_C_out_24_address0_local;
assign buff_C_out_24_ce0 = buff_C_out_24_ce0_local;
assign buff_C_out_24_d0 = add_reg_1836;
assign buff_C_out_24_we0 = buff_C_out_24_we0_local;
assign buff_C_out_25_address0 = buff_C_out_25_address0_local;
assign buff_C_out_25_ce0 = buff_C_out_25_ce0_local;
assign buff_C_out_25_d0 = add_reg_1836;
assign buff_C_out_25_we0 = buff_C_out_25_we0_local;
assign buff_C_out_26_address0 = buff_C_out_26_address0_local;
assign buff_C_out_26_ce0 = buff_C_out_26_ce0_local;
assign buff_C_out_26_d0 = add_reg_1836;
assign buff_C_out_26_we0 = buff_C_out_26_we0_local;
assign buff_C_out_27_address0 = buff_C_out_27_address0_local;
assign buff_C_out_27_ce0 = buff_C_out_27_ce0_local;
assign buff_C_out_27_d0 = add_reg_1836;
assign buff_C_out_27_we0 = buff_C_out_27_we0_local;
assign buff_C_out_28_address0 = buff_C_out_28_address0_local;
assign buff_C_out_28_ce0 = buff_C_out_28_ce0_local;
assign buff_C_out_28_d0 = add_reg_1836;
assign buff_C_out_28_we0 = buff_C_out_28_we0_local;
assign buff_C_out_29_address0 = buff_C_out_29_address0_local;
assign buff_C_out_29_ce0 = buff_C_out_29_ce0_local;
assign buff_C_out_29_d0 = add_reg_1836;
assign buff_C_out_29_we0 = buff_C_out_29_we0_local;
assign buff_C_out_2_address0 = buff_C_out_2_address0_local;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_d0 = add_reg_1836;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_30_address0 = buff_C_out_30_address0_local;
assign buff_C_out_30_ce0 = buff_C_out_30_ce0_local;
assign buff_C_out_30_d0 = add_reg_1836;
assign buff_C_out_30_we0 = buff_C_out_30_we0_local;
assign buff_C_out_31_address0 = buff_C_out_31_address0_local;
assign buff_C_out_31_ce0 = buff_C_out_31_ce0_local;
assign buff_C_out_31_d0 = add_reg_1836;
assign buff_C_out_31_we0 = buff_C_out_31_we0_local;
assign buff_C_out_3_address0 = buff_C_out_3_address0_local;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_d0 = add_reg_1836;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_4_address0 = buff_C_out_4_address0_local;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_4_d0 = add_reg_1836;
assign buff_C_out_4_we0 = buff_C_out_4_we0_local;
assign buff_C_out_5_address0 = buff_C_out_5_address0_local;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_5_d0 = add_reg_1836;
assign buff_C_out_5_we0 = buff_C_out_5_we0_local;
assign buff_C_out_6_address0 = buff_C_out_6_address0_local;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_6_d0 = add_reg_1836;
assign buff_C_out_6_we0 = buff_C_out_6_we0_local;
assign buff_C_out_7_address0 = buff_C_out_7_address0_local;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_7_d0 = add_reg_1836;
assign buff_C_out_7_we0 = buff_C_out_7_we0_local;
assign buff_C_out_8_address0 = buff_C_out_8_address0_local;
assign buff_C_out_8_ce0 = buff_C_out_8_ce0_local;
assign buff_C_out_8_d0 = add_reg_1836;
assign buff_C_out_8_we0 = buff_C_out_8_we0_local;
assign buff_C_out_9_address0 = buff_C_out_9_address0_local;
assign buff_C_out_9_ce0 = buff_C_out_9_ce0_local;
assign buff_C_out_9_d0 = add_reg_1836;
assign buff_C_out_9_we0 = buff_C_out_9_we0_local;
assign buff_C_out_address0 = buff_C_out_address0_local;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_d0 = add_reg_1836;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign empty_12_fu_916_p2 = (icmp_ln21_fu_892_p2 | and_ln5_fu_910_p2);
assign empty_13_fu_997_p1 = select_ln21_fu_990_p3[5:0];
assign first_iter_1_fu_1001_p2 = ((k_mid2_reg_1533 == 7'd0) ? 1'b1 : 1'b0);
assign grp_fu_800_p_ce = 1'b1;
assign grp_fu_800_p_din0 = empty_fu_204;
assign grp_fu_800_p_din1 = mul2_reg_1826;
assign grp_fu_800_p_opcode = 2'd0;
assign grp_fu_804_p_ce = 1'b1;
assign grp_fu_804_p_din0 = grp_fu_842_p0;
assign grp_fu_804_p_din1 = grp_fu_842_p1;
assign icmp_ln20_fu_877_p2 = ((indvar_flatten21_fu_200 == 19'd262144) ? 1'b1 : 1'b0);
assign icmp_ln21_fu_892_p2 = ((indvar_flatten7_fu_192 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln23_1_fu_1132_p2 = ((add_ln23_fu_1127_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln23_fu_904_p2 = ((k_fu_184 == 7'd64) ? 1'b1 : 1'b0);
assign k_mid2_fu_922_p3 = ((empty_12_fu_916_p2[0:0] == 1'b1) ? 7'd0 : k_fu_184);
assign lshr_ln5_4_fu_1014_p4 = {{select_ln21_fu_990_p3[5:3]}};
assign lshr_ln5_6_fu_1078_p4 = {{k_mid2_reg_1533[5:3]}};
assign select_ln20_fu_973_p3 = ((icmp_ln21_reg_1522[0:0] == 1'b1) ? add_ln20_fu_960_p2 : i_1_fu_196);
assign select_ln21_1_fu_936_p3 = ((icmp_ln21_fu_892_p2[0:0] == 1'b1) ? 14'd1 : add_ln21_1_fu_930_p2);
assign select_ln21_fu_990_p3 = ((and_ln5_reg_1528[0:0] == 1'b1) ? add_ln21_fu_984_p2 : select_ln5_fu_966_p3);
assign select_ln5_fu_966_p3 = ((icmp_ln21_reg_1522[0:0] == 1'b1) ? 7'd0 : j_fu_188);
assign tmp_1_fu_1176_p9 = 'bx;
assign tmp_21_fu_1024_p4 = {{select_ln20_fu_973_p3[5:2]}};
assign tmp_22_cast_fu_1042_p1 = tmp_22_fu_1034_p3;
assign tmp_22_fu_1034_p3 = {{tmp_21_fu_1024_p4}, {lshr_ln5_4_fu_1014_p4}};
assign tmp_23_fu_1087_p3 = {{trunc_ln21_fu_980_p1}, {lshr_ln5_6_fu_1078_p4}};
assign tmp_24_fu_1107_p3 = {{empty_13_fu_997_p1}, {lshr_ln5_6_fu_1078_p4}};
assign tmp_2_fu_1199_p9 = 'bx;
assign tmp_3_fu_1222_p9 = 'bx;
assign tmp_4_fu_1245_p9 = 'bx;
assign tmp_5_fu_1268_p9 = 'bx;
assign tmp_6_fu_1291_p9 = 'bx;
assign tmp_7_fu_1314_p9 = 'bx;
assign tmp_8_fu_1337_p17 = 'bx;
assign tmp_9_fu_1379_p17 = 'bx;
assign tmp_fu_1153_p9 = 'bx;
assign tmp_s_fu_1419_p17 = 'bx;
assign trunc_ln20_fu_1006_p1 = select_ln20_fu_973_p3[1:0];
assign trunc_ln21_1_fu_1010_p1 = select_ln21_fu_990_p3[2:0];
assign trunc_ln21_fu_980_p1 = select_ln20_fu_973_p3[5:0];
assign trunc_ln23_fu_1376_p1 = k_mid2_reg_1533[2:0];
assign xor_ln5_fu_898_p2 = (icmp_ln21_fu_892_p2 ^ 1'd1);
assign zext_ln24_1_fu_1115_p1 = tmp_24_fu_1107_p3;
assign zext_ln24_fu_1095_p1 = tmp_23_fu_1087_p3;
endmodule 
