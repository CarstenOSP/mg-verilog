module atax_atax_Pipeline_lp3_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,tmp1_address0,tmp1_ce0,tmp1_q0,tmp1_1_address0,tmp1_1_ce0,tmp1_1_q0,tmp1_2_address0,tmp1_2_ce0,tmp1_2_q0,tmp1_3_address0,tmp1_3_ce0,tmp1_3_q0,tmp1_4_address0,tmp1_4_ce0,tmp1_4_q0,tmp1_5_address0,tmp1_5_ce0,tmp1_5_q0,tmp1_6_address0,tmp1_6_ce0,tmp1_6_q0,tmp1_7_address0,tmp1_7_ce0,tmp1_7_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_q0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_q0,buff_A_4_address0,buff_A_4_ce0,buff_A_4_q0,buff_A_5_address0,buff_A_5_ce0,buff_A_5_q0,buff_A_6_address0,buff_A_6_ce0,buff_A_6_q0,buff_A_7_address0,buff_A_7_ce0,buff_A_7_q0,buff_A_8_address0,buff_A_8_ce0,buff_A_8_q0,buff_A_9_address0,buff_A_9_ce0,buff_A_9_q0,buff_A_10_address0,buff_A_10_ce0,buff_A_10_q0,buff_A_11_address0,buff_A_11_ce0,buff_A_11_q0,buff_A_12_address0,buff_A_12_ce0,buff_A_12_q0,buff_A_13_address0,buff_A_13_ce0,buff_A_13_q0,buff_A_14_address0,buff_A_14_ce0,buff_A_14_q0,buff_A_15_address0,buff_A_15_ce0,buff_A_15_q0,buff_A_16_address0,buff_A_16_ce0,buff_A_16_q0,buff_A_17_address0,buff_A_17_ce0,buff_A_17_q0,buff_A_18_address0,buff_A_18_ce0,buff_A_18_q0,buff_A_19_address0,buff_A_19_ce0,buff_A_19_q0,buff_A_20_address0,buff_A_20_ce0,buff_A_20_q0,buff_A_21_address0,buff_A_21_ce0,buff_A_21_q0,buff_A_22_address0,buff_A_22_ce0,buff_A_22_q0,buff_A_23_address0,buff_A_23_ce0,buff_A_23_q0,buff_A_24_address0,buff_A_24_ce0,buff_A_24_q0,buff_A_25_address0,buff_A_25_ce0,buff_A_25_q0,buff_A_26_address0,buff_A_26_ce0,buff_A_26_q0,buff_A_27_address0,buff_A_27_ce0,buff_A_27_q0,buff_A_28_address0,buff_A_28_ce0,buff_A_28_q0,buff_A_29_address0,buff_A_29_ce0,buff_A_29_q0,buff_A_30_address0,buff_A_30_ce0,buff_A_30_q0,buff_A_31_address0,buff_A_31_ce0,buff_A_31_q0,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,buff_y_out_address1,buff_y_out_ce1,buff_y_out_q1,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,buff_y_out_1_address1,buff_y_out_1_ce1,buff_y_out_1_q1,buff_y_out_2_address0,buff_y_out_2_ce0,buff_y_out_2_we0,buff_y_out_2_d0,buff_y_out_2_address1,buff_y_out_2_ce1,buff_y_out_2_q1,buff_y_out_3_address0,buff_y_out_3_ce0,buff_y_out_3_we0,buff_y_out_3_d0,buff_y_out_3_address1,buff_y_out_3_ce1,buff_y_out_3_q1,buff_y_out_4_address0,buff_y_out_4_ce0,buff_y_out_4_we0,buff_y_out_4_d0,buff_y_out_4_q0,buff_y_out_5_address0,buff_y_out_5_ce0,buff_y_out_5_we0,buff_y_out_5_d0,buff_y_out_5_q0,buff_y_out_6_address0,buff_y_out_6_ce0,buff_y_out_6_we0,buff_y_out_6_d0,buff_y_out_6_q0,buff_y_out_7_address0,buff_y_out_7_ce0,buff_y_out_7_we0,buff_y_out_7_d0,buff_y_out_7_q0,grp_fu_2229_p_din0,grp_fu_2229_p_din1,grp_fu_2229_p_opcode,grp_fu_2229_p_dout0,grp_fu_2229_p_ce,grp_fu_2233_p_din0,grp_fu_2233_p_din1,grp_fu_2233_p_opcode,grp_fu_2233_p_dout0,grp_fu_2233_p_ce,grp_fu_2237_p_din0,grp_fu_2237_p_din1,grp_fu_2237_p_opcode,grp_fu_2237_p_dout0,grp_fu_2237_p_ce,grp_fu_2241_p_din0,grp_fu_2241_p_din1,grp_fu_2241_p_opcode,grp_fu_2241_p_dout0,grp_fu_2241_p_ce,grp_fu_2213_p_din0,grp_fu_2213_p_din1,grp_fu_2213_p_dout0,grp_fu_2213_p_ce,grp_fu_2217_p_din0,grp_fu_2217_p_din1,grp_fu_2217_p_dout0,grp_fu_2217_p_ce,grp_fu_2221_p_din0,grp_fu_2221_p_din1,grp_fu_2221_p_dout0,grp_fu_2221_p_ce,grp_fu_2225_p_din0,grp_fu_2225_p_din1,grp_fu_2225_p_dout0,grp_fu_2225_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] tmp1_address0;
output   tmp1_ce0;
input  [31:0] tmp1_q0;
output  [2:0] tmp1_1_address0;
output   tmp1_1_ce0;
input  [31:0] tmp1_1_q0;
output  [2:0] tmp1_2_address0;
output   tmp1_2_ce0;
input  [31:0] tmp1_2_q0;
output  [2:0] tmp1_3_address0;
output   tmp1_3_ce0;
input  [31:0] tmp1_3_q0;
output  [2:0] tmp1_4_address0;
output   tmp1_4_ce0;
input  [31:0] tmp1_4_q0;
output  [2:0] tmp1_5_address0;
output   tmp1_5_ce0;
input  [31:0] tmp1_5_q0;
output  [2:0] tmp1_6_address0;
output   tmp1_6_ce0;
input  [31:0] tmp1_6_q0;
output  [2:0] tmp1_7_address0;
output   tmp1_7_ce0;
input  [31:0] tmp1_7_q0;
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
output  [2:0] buff_y_out_address0;
output   buff_y_out_ce0;
output   buff_y_out_we0;
output  [31:0] buff_y_out_d0;
output  [2:0] buff_y_out_address1;
output   buff_y_out_ce1;
input  [31:0] buff_y_out_q1;
output  [2:0] buff_y_out_1_address0;
output   buff_y_out_1_ce0;
output   buff_y_out_1_we0;
output  [31:0] buff_y_out_1_d0;
output  [2:0] buff_y_out_1_address1;
output   buff_y_out_1_ce1;
input  [31:0] buff_y_out_1_q1;
output  [2:0] buff_y_out_2_address0;
output   buff_y_out_2_ce0;
output   buff_y_out_2_we0;
output  [31:0] buff_y_out_2_d0;
output  [2:0] buff_y_out_2_address1;
output   buff_y_out_2_ce1;
input  [31:0] buff_y_out_2_q1;
output  [2:0] buff_y_out_3_address0;
output   buff_y_out_3_ce0;
output   buff_y_out_3_we0;
output  [31:0] buff_y_out_3_d0;
output  [2:0] buff_y_out_3_address1;
output   buff_y_out_3_ce1;
input  [31:0] buff_y_out_3_q1;
output  [2:0] buff_y_out_4_address0;
output   buff_y_out_4_ce0;
output   buff_y_out_4_we0;
output  [31:0] buff_y_out_4_d0;
input  [31:0] buff_y_out_4_q0;
output  [2:0] buff_y_out_5_address0;
output   buff_y_out_5_ce0;
output   buff_y_out_5_we0;
output  [31:0] buff_y_out_5_d0;
input  [31:0] buff_y_out_5_q0;
output  [2:0] buff_y_out_6_address0;
output   buff_y_out_6_ce0;
output   buff_y_out_6_we0;
output  [31:0] buff_y_out_6_d0;
input  [31:0] buff_y_out_6_q0;
output  [2:0] buff_y_out_7_address0;
output   buff_y_out_7_ce0;
output   buff_y_out_7_we0;
output  [31:0] buff_y_out_7_d0;
input  [31:0] buff_y_out_7_q0;
output  [31:0] grp_fu_2229_p_din0;
output  [31:0] grp_fu_2229_p_din1;
output  [1:0] grp_fu_2229_p_opcode;
input  [31:0] grp_fu_2229_p_dout0;
output   grp_fu_2229_p_ce;
output  [31:0] grp_fu_2233_p_din0;
output  [31:0] grp_fu_2233_p_din1;
output  [1:0] grp_fu_2233_p_opcode;
input  [31:0] grp_fu_2233_p_dout0;
output   grp_fu_2233_p_ce;
output  [31:0] grp_fu_2237_p_din0;
output  [31:0] grp_fu_2237_p_din1;
output  [1:0] grp_fu_2237_p_opcode;
input  [31:0] grp_fu_2237_p_dout0;
output   grp_fu_2237_p_ce;
output  [31:0] grp_fu_2241_p_din0;
output  [31:0] grp_fu_2241_p_din1;
output  [1:0] grp_fu_2241_p_opcode;
input  [31:0] grp_fu_2241_p_dout0;
output   grp_fu_2241_p_ce;
output  [31:0] grp_fu_2213_p_din0;
output  [31:0] grp_fu_2213_p_din1;
input  [31:0] grp_fu_2213_p_dout0;
output   grp_fu_2213_p_ce;
output  [31:0] grp_fu_2217_p_din0;
output  [31:0] grp_fu_2217_p_din1;
input  [31:0] grp_fu_2217_p_dout0;
output   grp_fu_2217_p_ce;
output  [31:0] grp_fu_2221_p_din0;
output  [31:0] grp_fu_2221_p_din1;
input  [31:0] grp_fu_2221_p_dout0;
output   grp_fu_2221_p_ce;
output  [31:0] grp_fu_2225_p_din0;
output  [31:0] grp_fu_2225_p_din1;
input  [31:0] grp_fu_2225_p_dout0;
output   grp_fu_2225_p_ce;
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
reg   [0:0] icmp_ln26_reg_1311;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_854;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_860;
reg   [31:0] reg_866;
reg   [31:0] reg_872;
wire   [0:0] icmp_ln26_fu_896_p2;
reg   [6:0] j_1_load_reg_1315;
wire   [0:0] tmp_9_fu_920_p3;
reg   [0:0] tmp_9_reg_1320;
wire   [2:0] trunc_ln26_fu_936_p1;
reg   [2:0] trunc_ln26_reg_1325;
wire   [1:0] trunc_ln26_1_fu_940_p1;
reg   [1:0] trunc_ln26_1_reg_1330;
reg   [3:0] tmp_s_reg_1382;
wire   [31:0] tmp_fu_992_p19;
reg   [31:0] tmp_reg_1387;
reg   [31:0] tmp_reg_1387_pp0_iter1_reg;
wire   [2:0] lshr_ln5_8_fu_1031_p4;
reg   [2:0] lshr_ln5_8_reg_1395;
reg   [2:0] lshr_ln5_8_reg_1395_pp0_iter1_reg;
wire   [31:0] tmp_1_fu_1095_p11;
reg   [31:0] tmp_1_reg_1560;
wire   [31:0] tmp_2_fu_1118_p11;
reg   [31:0] tmp_2_reg_1565;
wire   [31:0] tmp_3_fu_1141_p11;
reg   [31:0] tmp_3_reg_1570;
wire   [31:0] tmp_4_fu_1164_p11;
reg   [31:0] tmp_4_reg_1575;
wire   [31:0] tmp_5_fu_1187_p11;
reg   [31:0] tmp_5_reg_1580;
wire   [31:0] tmp_6_fu_1210_p11;
reg   [31:0] tmp_6_reg_1585;
wire   [31:0] tmp_7_fu_1233_p11;
reg   [31:0] tmp_7_reg_1590;
wire   [31:0] tmp_8_fu_1256_p11;
reg   [31:0] tmp_8_reg_1595;
reg   [2:0] buff_y_out_addr_reg_1600;
reg   [2:0] buff_y_out_addr_reg_1600_pp0_iter3_reg;
reg   [2:0] buff_y_out_addr_reg_1600_pp0_iter4_reg;
reg   [2:0] buff_y_out_addr_reg_1600_pp0_iter5_reg;
reg   [2:0] buff_y_out_addr_reg_1600_pp0_iter6_reg;
reg   [2:0] buff_y_out_1_addr_reg_1606;
reg   [2:0] buff_y_out_1_addr_reg_1606_pp0_iter3_reg;
reg   [2:0] buff_y_out_1_addr_reg_1606_pp0_iter4_reg;
reg   [2:0] buff_y_out_1_addr_reg_1606_pp0_iter5_reg;
reg   [2:0] buff_y_out_1_addr_reg_1606_pp0_iter6_reg;
reg   [2:0] buff_y_out_2_addr_reg_1612;
reg   [2:0] buff_y_out_2_addr_reg_1612_pp0_iter3_reg;
reg   [2:0] buff_y_out_2_addr_reg_1612_pp0_iter4_reg;
reg   [2:0] buff_y_out_2_addr_reg_1612_pp0_iter5_reg;
reg   [2:0] buff_y_out_2_addr_reg_1612_pp0_iter6_reg;
reg   [2:0] buff_y_out_3_addr_reg_1618;
reg   [2:0] buff_y_out_3_addr_reg_1618_pp0_iter3_reg;
reg   [2:0] buff_y_out_3_addr_reg_1618_pp0_iter4_reg;
reg   [2:0] buff_y_out_3_addr_reg_1618_pp0_iter5_reg;
reg   [2:0] buff_y_out_3_addr_reg_1618_pp0_iter6_reg;
reg   [2:0] buff_y_out_4_addr_reg_1624;
reg   [2:0] buff_y_out_4_addr_reg_1624_pp0_iter3_reg;
reg   [2:0] buff_y_out_4_addr_reg_1624_pp0_iter4_reg;
reg   [2:0] buff_y_out_4_addr_reg_1624_pp0_iter5_reg;
reg   [2:0] buff_y_out_4_addr_reg_1624_pp0_iter6_reg;
reg   [2:0] buff_y_out_4_addr_reg_1624_pp0_iter7_reg;
reg   [2:0] buff_y_out_5_addr_reg_1629;
reg   [2:0] buff_y_out_5_addr_reg_1629_pp0_iter3_reg;
reg   [2:0] buff_y_out_5_addr_reg_1629_pp0_iter4_reg;
reg   [2:0] buff_y_out_5_addr_reg_1629_pp0_iter5_reg;
reg   [2:0] buff_y_out_5_addr_reg_1629_pp0_iter6_reg;
reg   [2:0] buff_y_out_5_addr_reg_1629_pp0_iter7_reg;
reg   [2:0] buff_y_out_6_addr_reg_1634;
reg   [2:0] buff_y_out_6_addr_reg_1634_pp0_iter3_reg;
reg   [2:0] buff_y_out_6_addr_reg_1634_pp0_iter4_reg;
reg   [2:0] buff_y_out_6_addr_reg_1634_pp0_iter5_reg;
reg   [2:0] buff_y_out_6_addr_reg_1634_pp0_iter6_reg;
reg   [2:0] buff_y_out_6_addr_reg_1634_pp0_iter7_reg;
reg   [2:0] buff_y_out_7_addr_reg_1639;
reg   [2:0] buff_y_out_7_addr_reg_1639_pp0_iter3_reg;
reg   [2:0] buff_y_out_7_addr_reg_1639_pp0_iter4_reg;
reg   [2:0] buff_y_out_7_addr_reg_1639_pp0_iter5_reg;
reg   [2:0] buff_y_out_7_addr_reg_1639_pp0_iter6_reg;
reg   [2:0] buff_y_out_7_addr_reg_1639_pp0_iter7_reg;
reg   [31:0] buff_y_out_load_reg_1644;
reg   [31:0] buff_y_out_1_load_reg_1649;
reg   [31:0] buff_y_out_2_load_reg_1654;
reg   [31:0] buff_y_out_3_load_reg_1659;
reg   [31:0] mul1_reg_1664;
reg   [31:0] mul57_1_reg_1669;
reg   [31:0] mul57_2_reg_1674;
reg   [31:0] mul57_3_reg_1679;
reg   [31:0] mul57_4_reg_1684;
reg   [31:0] mul57_5_reg_1689;
reg   [31:0] mul57_6_reg_1694;
reg   [31:0] mul57_7_reg_1699;
reg   [31:0] buff_y_out_4_load_reg_1704;
reg   [31:0] buff_y_out_5_load_reg_1709;
reg   [31:0] buff_y_out_6_load_reg_1714;
reg   [31:0] buff_y_out_7_load_reg_1719;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln5_fu_954_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln28_fu_1048_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln5_1_fu_1279_p1;
reg   [6:0] j_1_fu_174;
wire   [6:0] add_ln27_fu_1084_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_1_load;
reg   [6:0] i_fu_178;
wire   [6:0] select_ln26_fu_928_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [9:0] indvar_flatten_fu_182;
wire   [9:0] add_ln26_1_fu_902_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten_load;
reg    tmp1_ce0_local;
reg    tmp1_1_ce0_local;
reg    tmp1_2_ce0_local;
reg    tmp1_3_ce0_local;
reg    tmp1_4_ce0_local;
reg    tmp1_5_ce0_local;
reg    tmp1_6_ce0_local;
reg    tmp1_7_ce0_local;
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
reg    buff_y_out_ce1_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_ce0_local;
reg    buff_y_out_1_ce1_local;
reg    buff_y_out_1_we0_local;
reg    buff_y_out_1_ce0_local;
reg    buff_y_out_2_ce1_local;
reg    buff_y_out_2_we0_local;
reg    buff_y_out_2_ce0_local;
reg    buff_y_out_3_ce1_local;
reg    buff_y_out_3_we0_local;
reg    buff_y_out_3_ce0_local;
reg    buff_y_out_4_ce0_local;
reg   [2:0] buff_y_out_4_address0_local;
reg    buff_y_out_4_we0_local;
reg    buff_y_out_5_ce0_local;
reg   [2:0] buff_y_out_5_address0_local;
reg    buff_y_out_5_we0_local;
reg    buff_y_out_6_ce0_local;
reg   [2:0] buff_y_out_6_address0_local;
reg    buff_y_out_6_we0_local;
reg    buff_y_out_7_ce0_local;
reg   [2:0] buff_y_out_7_address0_local;
reg    buff_y_out_7_we0_local;
reg   [31:0] grp_fu_822_p0;
reg   [31:0] grp_fu_822_p1;
reg   [31:0] grp_fu_826_p0;
reg   [31:0] grp_fu_826_p1;
reg   [31:0] grp_fu_830_p0;
reg   [31:0] grp_fu_830_p1;
reg   [31:0] grp_fu_834_p0;
reg   [31:0] grp_fu_834_p1;
reg   [31:0] grp_fu_838_p0;
reg   [31:0] grp_fu_838_p1;
reg   [31:0] grp_fu_842_p0;
reg   [31:0] grp_fu_842_p1;
reg   [31:0] grp_fu_846_p0;
reg   [31:0] grp_fu_846_p1;
reg   [31:0] grp_fu_850_p0;
reg   [31:0] grp_fu_850_p1;
wire   [6:0] add_ln26_fu_914_p2;
wire   [2:0] lshr_ln5_5_fu_944_p4;
wire   [31:0] tmp_fu_992_p17;
wire   [6:0] select_ln5_fu_986_p3;
wire   [6:0] tmp_10_fu_1041_p3;
wire   [31:0] tmp_1_fu_1095_p9;
wire   [31:0] tmp_2_fu_1118_p9;
wire   [31:0] tmp_3_fu_1141_p9;
wire   [31:0] tmp_4_fu_1164_p9;
wire   [31:0] tmp_5_fu_1187_p9;
wire   [31:0] tmp_6_fu_1210_p9;
wire   [31:0] tmp_7_fu_1233_p9;
wire   [31:0] tmp_8_fu_1256_p9;
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
wire   [2:0] tmp_fu_992_p1;
wire   [2:0] tmp_fu_992_p3;
wire   [2:0] tmp_fu_992_p5;
wire   [2:0] tmp_fu_992_p7;
wire  signed [2:0] tmp_fu_992_p9;
wire  signed [2:0] tmp_fu_992_p11;
wire  signed [2:0] tmp_fu_992_p13;
wire  signed [2:0] tmp_fu_992_p15;
wire   [1:0] tmp_1_fu_1095_p1;
wire   [1:0] tmp_1_fu_1095_p3;
wire  signed [1:0] tmp_1_fu_1095_p5;
wire  signed [1:0] tmp_1_fu_1095_p7;
wire   [1:0] tmp_2_fu_1118_p1;
wire   [1:0] tmp_2_fu_1118_p3;
wire  signed [1:0] tmp_2_fu_1118_p5;
wire  signed [1:0] tmp_2_fu_1118_p7;
wire   [1:0] tmp_3_fu_1141_p1;
wire   [1:0] tmp_3_fu_1141_p3;
wire  signed [1:0] tmp_3_fu_1141_p5;
wire  signed [1:0] tmp_3_fu_1141_p7;
wire   [1:0] tmp_4_fu_1164_p1;
wire   [1:0] tmp_4_fu_1164_p3;
wire  signed [1:0] tmp_4_fu_1164_p5;
wire  signed [1:0] tmp_4_fu_1164_p7;
wire   [1:0] tmp_5_fu_1187_p1;
wire   [1:0] tmp_5_fu_1187_p3;
wire  signed [1:0] tmp_5_fu_1187_p5;
wire  signed [1:0] tmp_5_fu_1187_p7;
wire   [1:0] tmp_6_fu_1210_p1;
wire   [1:0] tmp_6_fu_1210_p3;
wire  signed [1:0] tmp_6_fu_1210_p5;
wire  signed [1:0] tmp_6_fu_1210_p7;
wire   [1:0] tmp_7_fu_1233_p1;
wire   [1:0] tmp_7_fu_1233_p3;
wire  signed [1:0] tmp_7_fu_1233_p5;
wire  signed [1:0] tmp_7_fu_1233_p7;
wire   [1:0] tmp_8_fu_1256_p1;
wire   [1:0] tmp_8_fu_1256_p3;
wire  signed [1:0] tmp_8_fu_1256_p5;
wire  signed [1:0] tmp_8_fu_1256_p7;
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
#0 j_1_fu_174 = 7'd0;
#0 i_fu_178 = 7'd0;
#0 indvar_flatten_fu_182 = 10'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) atax_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U1182(.din0(tmp1_q0),.din1(tmp1_1_q0),.din2(tmp1_2_q0),.din3(tmp1_3_q0),.din4(tmp1_4_q0),.din5(tmp1_5_q0),.din6(tmp1_6_q0),.din7(tmp1_7_q0),.def(tmp_fu_992_p17),.sel(trunc_ln26_reg_1325),.dout(tmp_fu_992_p19));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1183(.din0(buff_A_q0),.din1(buff_A_1_q0),.din2(buff_A_2_q0),.din3(buff_A_3_q0),.def(tmp_1_fu_1095_p9),.sel(trunc_ln26_1_reg_1330),.dout(tmp_1_fu_1095_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1184(.din0(buff_A_4_q0),.din1(buff_A_5_q0),.din2(buff_A_6_q0),.din3(buff_A_7_q0),.def(tmp_2_fu_1118_p9),.sel(trunc_ln26_1_reg_1330),.dout(tmp_2_fu_1118_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1185(.din0(buff_A_8_q0),.din1(buff_A_9_q0),.din2(buff_A_10_q0),.din3(buff_A_11_q0),.def(tmp_3_fu_1141_p9),.sel(trunc_ln26_1_reg_1330),.dout(tmp_3_fu_1141_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1186(.din0(buff_A_12_q0),.din1(buff_A_13_q0),.din2(buff_A_14_q0),.din3(buff_A_15_q0),.def(tmp_4_fu_1164_p9),.sel(trunc_ln26_1_reg_1330),.dout(tmp_4_fu_1164_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1187(.din0(buff_A_16_q0),.din1(buff_A_17_q0),.din2(buff_A_18_q0),.din3(buff_A_19_q0),.def(tmp_5_fu_1187_p9),.sel(trunc_ln26_1_reg_1330),.dout(tmp_5_fu_1187_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1188(.din0(buff_A_20_q0),.din1(buff_A_21_q0),.din2(buff_A_22_q0),.din3(buff_A_23_q0),.def(tmp_6_fu_1210_p9),.sel(trunc_ln26_1_reg_1330),.dout(tmp_6_fu_1210_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1189(.din0(buff_A_24_q0),.din1(buff_A_25_q0),.din2(buff_A_26_q0),.din3(buff_A_27_q0),.def(tmp_7_fu_1233_p9),.sel(trunc_ln26_1_reg_1330),.dout(tmp_7_fu_1233_p11));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1190(.din0(buff_A_28_q0),.din1(buff_A_29_q0),.din2(buff_A_30_q0),.din3(buff_A_31_q0),.def(tmp_8_fu_1256_p9),.sel(trunc_ln26_1_reg_1330),.dout(tmp_8_fu_1256_p11));
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
        if (((icmp_ln26_fu_896_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_178 <= select_ln26_fu_928_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_178 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln26_fu_896_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_182 <= add_ln26_1_fu_902_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_182 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j_1_fu_174 <= 7'd0;
    end else if (((icmp_ln26_reg_1311 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_1_fu_174 <= add_ln27_fu_1084_p2;
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
        lshr_ln5_8_reg_1395 <= {{select_ln5_fu_986_p3[5:3]}};
        lshr_ln5_8_reg_1395_pp0_iter1_reg <= lshr_ln5_8_reg_1395;
        tmp_reg_1387 <= tmp_fu_992_p19;
        tmp_reg_1387_pp0_iter1_reg <= tmp_reg_1387;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_addr_reg_1606 <= zext_ln5_1_fu_1279_p1;
        buff_y_out_1_addr_reg_1606_pp0_iter3_reg <= buff_y_out_1_addr_reg_1606;
        buff_y_out_1_addr_reg_1606_pp0_iter4_reg <= buff_y_out_1_addr_reg_1606_pp0_iter3_reg;
        buff_y_out_1_addr_reg_1606_pp0_iter5_reg <= buff_y_out_1_addr_reg_1606_pp0_iter4_reg;
        buff_y_out_1_addr_reg_1606_pp0_iter6_reg <= buff_y_out_1_addr_reg_1606_pp0_iter5_reg;
        buff_y_out_2_addr_reg_1612 <= zext_ln5_1_fu_1279_p1;
        buff_y_out_2_addr_reg_1612_pp0_iter3_reg <= buff_y_out_2_addr_reg_1612;
        buff_y_out_2_addr_reg_1612_pp0_iter4_reg <= buff_y_out_2_addr_reg_1612_pp0_iter3_reg;
        buff_y_out_2_addr_reg_1612_pp0_iter5_reg <= buff_y_out_2_addr_reg_1612_pp0_iter4_reg;
        buff_y_out_2_addr_reg_1612_pp0_iter6_reg <= buff_y_out_2_addr_reg_1612_pp0_iter5_reg;
        buff_y_out_3_addr_reg_1618 <= zext_ln5_1_fu_1279_p1;
        buff_y_out_3_addr_reg_1618_pp0_iter3_reg <= buff_y_out_3_addr_reg_1618;
        buff_y_out_3_addr_reg_1618_pp0_iter4_reg <= buff_y_out_3_addr_reg_1618_pp0_iter3_reg;
        buff_y_out_3_addr_reg_1618_pp0_iter5_reg <= buff_y_out_3_addr_reg_1618_pp0_iter4_reg;
        buff_y_out_3_addr_reg_1618_pp0_iter6_reg <= buff_y_out_3_addr_reg_1618_pp0_iter5_reg;
        buff_y_out_4_addr_reg_1624 <= zext_ln5_1_fu_1279_p1;
        buff_y_out_4_addr_reg_1624_pp0_iter3_reg <= buff_y_out_4_addr_reg_1624;
        buff_y_out_4_addr_reg_1624_pp0_iter4_reg <= buff_y_out_4_addr_reg_1624_pp0_iter3_reg;
        buff_y_out_4_addr_reg_1624_pp0_iter5_reg <= buff_y_out_4_addr_reg_1624_pp0_iter4_reg;
        buff_y_out_4_addr_reg_1624_pp0_iter6_reg <= buff_y_out_4_addr_reg_1624_pp0_iter5_reg;
        buff_y_out_4_addr_reg_1624_pp0_iter7_reg <= buff_y_out_4_addr_reg_1624_pp0_iter6_reg;
        buff_y_out_5_addr_reg_1629 <= zext_ln5_1_fu_1279_p1;
        buff_y_out_5_addr_reg_1629_pp0_iter3_reg <= buff_y_out_5_addr_reg_1629;
        buff_y_out_5_addr_reg_1629_pp0_iter4_reg <= buff_y_out_5_addr_reg_1629_pp0_iter3_reg;
        buff_y_out_5_addr_reg_1629_pp0_iter5_reg <= buff_y_out_5_addr_reg_1629_pp0_iter4_reg;
        buff_y_out_5_addr_reg_1629_pp0_iter6_reg <= buff_y_out_5_addr_reg_1629_pp0_iter5_reg;
        buff_y_out_5_addr_reg_1629_pp0_iter7_reg <= buff_y_out_5_addr_reg_1629_pp0_iter6_reg;
        buff_y_out_6_addr_reg_1634 <= zext_ln5_1_fu_1279_p1;
        buff_y_out_6_addr_reg_1634_pp0_iter3_reg <= buff_y_out_6_addr_reg_1634;
        buff_y_out_6_addr_reg_1634_pp0_iter4_reg <= buff_y_out_6_addr_reg_1634_pp0_iter3_reg;
        buff_y_out_6_addr_reg_1634_pp0_iter5_reg <= buff_y_out_6_addr_reg_1634_pp0_iter4_reg;
        buff_y_out_6_addr_reg_1634_pp0_iter6_reg <= buff_y_out_6_addr_reg_1634_pp0_iter5_reg;
        buff_y_out_6_addr_reg_1634_pp0_iter7_reg <= buff_y_out_6_addr_reg_1634_pp0_iter6_reg;
        buff_y_out_7_addr_reg_1639 <= zext_ln5_1_fu_1279_p1;
        buff_y_out_7_addr_reg_1639_pp0_iter3_reg <= buff_y_out_7_addr_reg_1639;
        buff_y_out_7_addr_reg_1639_pp0_iter4_reg <= buff_y_out_7_addr_reg_1639_pp0_iter3_reg;
        buff_y_out_7_addr_reg_1639_pp0_iter5_reg <= buff_y_out_7_addr_reg_1639_pp0_iter4_reg;
        buff_y_out_7_addr_reg_1639_pp0_iter6_reg <= buff_y_out_7_addr_reg_1639_pp0_iter5_reg;
        buff_y_out_7_addr_reg_1639_pp0_iter7_reg <= buff_y_out_7_addr_reg_1639_pp0_iter6_reg;
        buff_y_out_addr_reg_1600 <= zext_ln5_1_fu_1279_p1;
        buff_y_out_addr_reg_1600_pp0_iter3_reg <= buff_y_out_addr_reg_1600;
        buff_y_out_addr_reg_1600_pp0_iter4_reg <= buff_y_out_addr_reg_1600_pp0_iter3_reg;
        buff_y_out_addr_reg_1600_pp0_iter5_reg <= buff_y_out_addr_reg_1600_pp0_iter4_reg;
        buff_y_out_addr_reg_1600_pp0_iter6_reg <= buff_y_out_addr_reg_1600_pp0_iter5_reg;
        icmp_ln26_reg_1311 <= icmp_ln26_fu_896_p2;
        j_1_load_reg_1315 <= ap_sig_allocacmp_j_1_load;
        tmp_1_reg_1560 <= tmp_1_fu_1095_p11;
        tmp_2_reg_1565 <= tmp_2_fu_1118_p11;
        tmp_3_reg_1570 <= tmp_3_fu_1141_p11;
        tmp_4_reg_1575 <= tmp_4_fu_1164_p11;
        tmp_5_reg_1580 <= tmp_5_fu_1187_p11;
        tmp_6_reg_1585 <= tmp_6_fu_1210_p11;
        tmp_7_reg_1590 <= tmp_7_fu_1233_p11;
        tmp_8_reg_1595 <= tmp_8_fu_1256_p11;
        tmp_9_reg_1320 <= ap_sig_allocacmp_j_1_load[32'd6];
        tmp_s_reg_1382 <= {{select_ln26_fu_928_p3[5:2]}};
        trunc_ln26_1_reg_1330 <= trunc_ln26_1_fu_940_p1;
        trunc_ln26_reg_1325 <= trunc_ln26_fu_936_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_1_load_reg_1649 <= buff_y_out_1_q1;
        buff_y_out_2_load_reg_1654 <= buff_y_out_2_q1;
        buff_y_out_3_load_reg_1659 <= buff_y_out_3_q1;
        buff_y_out_load_reg_1644 <= buff_y_out_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_4_load_reg_1704 <= buff_y_out_4_q0;
        buff_y_out_5_load_reg_1709 <= buff_y_out_5_q0;
        buff_y_out_6_load_reg_1714 <= buff_y_out_6_q0;
        buff_y_out_7_load_reg_1719 <= buff_y_out_7_q0;
        mul57_4_reg_1684 <= grp_fu_2213_p_dout0;
        mul57_5_reg_1689 <= grp_fu_2217_p_dout0;
        mul57_6_reg_1694 <= grp_fu_2221_p_dout0;
        mul57_7_reg_1699 <= grp_fu_2225_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul1_reg_1664 <= grp_fu_2213_p_dout0;
        mul57_1_reg_1669 <= grp_fu_2217_p_dout0;
        mul57_2_reg_1674 <= grp_fu_2221_p_dout0;
        mul57_3_reg_1679 <= grp_fu_2225_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_854 <= grp_fu_2229_p_dout0;
        reg_860 <= grp_fu_2233_p_dout0;
        reg_866 <= grp_fu_2237_p_dout0;
        reg_872 <= grp_fu_2241_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln26_reg_1311 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_178;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_182;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j_1_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_1_load = j_1_fu_174;
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
        buff_A_16_ce0_local = 1'b1;
    end else begin
        buff_A_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_17_ce0_local = 1'b1;
    end else begin
        buff_A_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_18_ce0_local = 1'b1;
    end else begin
        buff_A_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_19_ce0_local = 1'b1;
    end else begin
        buff_A_19_ce0_local = 1'b0;
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
        buff_A_20_ce0_local = 1'b1;
    end else begin
        buff_A_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_21_ce0_local = 1'b1;
    end else begin
        buff_A_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_22_ce0_local = 1'b1;
    end else begin
        buff_A_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_23_ce0_local = 1'b1;
    end else begin
        buff_A_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_24_ce0_local = 1'b1;
    end else begin
        buff_A_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_25_ce0_local = 1'b1;
    end else begin
        buff_A_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_26_ce0_local = 1'b1;
    end else begin
        buff_A_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_27_ce0_local = 1'b1;
    end else begin
        buff_A_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_28_ce0_local = 1'b1;
    end else begin
        buff_A_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_29_ce0_local = 1'b1;
    end else begin
        buff_A_29_ce0_local = 1'b0;
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
        buff_A_30_ce0_local = 1'b1;
    end else begin
        buff_A_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_A_31_ce0_local = 1'b1;
    end else begin
        buff_A_31_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_ce1_local = 1'b1;
    end else begin
        buff_y_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_2_ce0_local = 1'b1;
    end else begin
        buff_y_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_2_ce1_local = 1'b1;
    end else begin
        buff_y_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_2_we0_local = 1'b1;
    end else begin
        buff_y_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_3_ce0_local = 1'b1;
    end else begin
        buff_y_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_3_ce1_local = 1'b1;
    end else begin
        buff_y_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_3_we0_local = 1'b1;
    end else begin
        buff_y_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_reg_1624_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_4_address0_local = buff_y_out_4_addr_reg_1624;
    end else begin
        buff_y_out_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_y_out_4_ce0_local = 1'b1;
    end else begin
        buff_y_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_4_we0_local = 1'b1;
    end else begin
        buff_y_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_reg_1629_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_5_address0_local = buff_y_out_5_addr_reg_1629;
    end else begin
        buff_y_out_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_y_out_5_ce0_local = 1'b1;
    end else begin
        buff_y_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_5_we0_local = 1'b1;
    end else begin
        buff_y_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_reg_1634_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_6_address0_local = buff_y_out_6_addr_reg_1634;
    end else begin
        buff_y_out_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_y_out_6_ce0_local = 1'b1;
    end else begin
        buff_y_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_6_we0_local = 1'b1;
    end else begin
        buff_y_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_reg_1639_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_7_address0_local = buff_y_out_7_addr_reg_1639;
    end else begin
        buff_y_out_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        buff_y_out_7_ce0_local = 1'b1;
    end else begin
        buff_y_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        buff_y_out_7_we0_local = 1'b1;
    end else begin
        buff_y_out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_ce1_local = 1'b1;
    end else begin
        buff_y_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_822_p0 = buff_y_out_4_load_reg_1704;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_822_p0 = buff_y_out_load_reg_1644;
    end else begin
        grp_fu_822_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_822_p1 = mul57_4_reg_1684;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_822_p1 = mul1_reg_1664;
    end else begin
        grp_fu_822_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_826_p0 = buff_y_out_5_load_reg_1709;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_826_p0 = buff_y_out_1_load_reg_1649;
    end else begin
        grp_fu_826_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_826_p1 = mul57_5_reg_1689;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_826_p1 = mul57_1_reg_1669;
    end else begin
        grp_fu_826_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_830_p0 = buff_y_out_6_load_reg_1714;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_830_p0 = buff_y_out_2_load_reg_1654;
    end else begin
        grp_fu_830_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_830_p1 = mul57_6_reg_1694;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_830_p1 = mul57_2_reg_1674;
    end else begin
        grp_fu_830_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_834_p0 = buff_y_out_7_load_reg_1719;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_834_p0 = buff_y_out_3_load_reg_1659;
    end else begin
        grp_fu_834_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_834_p1 = mul57_7_reg_1699;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_834_p1 = mul57_3_reg_1679;
    end else begin
        grp_fu_834_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_838_p0 = tmp_5_reg_1580;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_838_p0 = tmp_1_reg_1560;
    end else begin
        grp_fu_838_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_838_p1 = tmp_reg_1387_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_838_p1 = tmp_reg_1387;
    end else begin
        grp_fu_838_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_842_p0 = tmp_6_reg_1585;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_842_p0 = tmp_2_reg_1565;
    end else begin
        grp_fu_842_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_842_p1 = tmp_reg_1387_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_842_p1 = tmp_reg_1387;
    end else begin
        grp_fu_842_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_846_p0 = tmp_7_reg_1590;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_846_p0 = tmp_3_reg_1570;
    end else begin
        grp_fu_846_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_846_p1 = tmp_reg_1387_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_846_p1 = tmp_reg_1387;
    end else begin
        grp_fu_846_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_850_p0 = tmp_8_reg_1595;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_850_p0 = tmp_4_reg_1575;
    end else begin
        grp_fu_850_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_850_p1 = tmp_reg_1387_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_850_p1 = tmp_reg_1387;
    end else begin
        grp_fu_850_p1 = 'bx;
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
        tmp1_4_ce0_local = 1'b1;
    end else begin
        tmp1_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_5_ce0_local = 1'b1;
    end else begin
        tmp1_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_6_ce0_local = 1'b1;
    end else begin
        tmp1_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp1_7_ce0_local = 1'b1;
    end else begin
        tmp1_7_ce0_local = 1'b0;
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
assign add_ln26_1_fu_902_p2 = (ap_sig_allocacmp_indvar_flatten_load + 10'd1);
assign add_ln26_fu_914_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln27_fu_1084_p2 = (select_ln5_fu_986_p3 + 7'd8);
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
assign buff_A_10_address0 = zext_ln28_fu_1048_p1;
assign buff_A_10_ce0 = buff_A_10_ce0_local;
assign buff_A_11_address0 = zext_ln28_fu_1048_p1;
assign buff_A_11_ce0 = buff_A_11_ce0_local;
assign buff_A_12_address0 = zext_ln28_fu_1048_p1;
assign buff_A_12_ce0 = buff_A_12_ce0_local;
assign buff_A_13_address0 = zext_ln28_fu_1048_p1;
assign buff_A_13_ce0 = buff_A_13_ce0_local;
assign buff_A_14_address0 = zext_ln28_fu_1048_p1;
assign buff_A_14_ce0 = buff_A_14_ce0_local;
assign buff_A_15_address0 = zext_ln28_fu_1048_p1;
assign buff_A_15_ce0 = buff_A_15_ce0_local;
assign buff_A_16_address0 = zext_ln28_fu_1048_p1;
assign buff_A_16_ce0 = buff_A_16_ce0_local;
assign buff_A_17_address0 = zext_ln28_fu_1048_p1;
assign buff_A_17_ce0 = buff_A_17_ce0_local;
assign buff_A_18_address0 = zext_ln28_fu_1048_p1;
assign buff_A_18_ce0 = buff_A_18_ce0_local;
assign buff_A_19_address0 = zext_ln28_fu_1048_p1;
assign buff_A_19_ce0 = buff_A_19_ce0_local;
assign buff_A_1_address0 = zext_ln28_fu_1048_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_20_address0 = zext_ln28_fu_1048_p1;
assign buff_A_20_ce0 = buff_A_20_ce0_local;
assign buff_A_21_address0 = zext_ln28_fu_1048_p1;
assign buff_A_21_ce0 = buff_A_21_ce0_local;
assign buff_A_22_address0 = zext_ln28_fu_1048_p1;
assign buff_A_22_ce0 = buff_A_22_ce0_local;
assign buff_A_23_address0 = zext_ln28_fu_1048_p1;
assign buff_A_23_ce0 = buff_A_23_ce0_local;
assign buff_A_24_address0 = zext_ln28_fu_1048_p1;
assign buff_A_24_ce0 = buff_A_24_ce0_local;
assign buff_A_25_address0 = zext_ln28_fu_1048_p1;
assign buff_A_25_ce0 = buff_A_25_ce0_local;
assign buff_A_26_address0 = zext_ln28_fu_1048_p1;
assign buff_A_26_ce0 = buff_A_26_ce0_local;
assign buff_A_27_address0 = zext_ln28_fu_1048_p1;
assign buff_A_27_ce0 = buff_A_27_ce0_local;
assign buff_A_28_address0 = zext_ln28_fu_1048_p1;
assign buff_A_28_ce0 = buff_A_28_ce0_local;
assign buff_A_29_address0 = zext_ln28_fu_1048_p1;
assign buff_A_29_ce0 = buff_A_29_ce0_local;
assign buff_A_2_address0 = zext_ln28_fu_1048_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_30_address0 = zext_ln28_fu_1048_p1;
assign buff_A_30_ce0 = buff_A_30_ce0_local;
assign buff_A_31_address0 = zext_ln28_fu_1048_p1;
assign buff_A_31_ce0 = buff_A_31_ce0_local;
assign buff_A_3_address0 = zext_ln28_fu_1048_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_4_address0 = zext_ln28_fu_1048_p1;
assign buff_A_4_ce0 = buff_A_4_ce0_local;
assign buff_A_5_address0 = zext_ln28_fu_1048_p1;
assign buff_A_5_ce0 = buff_A_5_ce0_local;
assign buff_A_6_address0 = zext_ln28_fu_1048_p1;
assign buff_A_6_ce0 = buff_A_6_ce0_local;
assign buff_A_7_address0 = zext_ln28_fu_1048_p1;
assign buff_A_7_ce0 = buff_A_7_ce0_local;
assign buff_A_8_address0 = zext_ln28_fu_1048_p1;
assign buff_A_8_ce0 = buff_A_8_ce0_local;
assign buff_A_9_address0 = zext_ln28_fu_1048_p1;
assign buff_A_9_ce0 = buff_A_9_ce0_local;
assign buff_A_address0 = zext_ln28_fu_1048_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_y_out_1_address0 = buff_y_out_1_addr_reg_1606_pp0_iter6_reg;
assign buff_y_out_1_address1 = zext_ln5_1_fu_1279_p1;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_ce1 = buff_y_out_1_ce1_local;
assign buff_y_out_1_d0 = reg_860;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_2_address0 = buff_y_out_2_addr_reg_1612_pp0_iter6_reg;
assign buff_y_out_2_address1 = zext_ln5_1_fu_1279_p1;
assign buff_y_out_2_ce0 = buff_y_out_2_ce0_local;
assign buff_y_out_2_ce1 = buff_y_out_2_ce1_local;
assign buff_y_out_2_d0 = reg_866;
assign buff_y_out_2_we0 = buff_y_out_2_we0_local;
assign buff_y_out_3_address0 = buff_y_out_3_addr_reg_1618_pp0_iter6_reg;
assign buff_y_out_3_address1 = zext_ln5_1_fu_1279_p1;
assign buff_y_out_3_ce0 = buff_y_out_3_ce0_local;
assign buff_y_out_3_ce1 = buff_y_out_3_ce1_local;
assign buff_y_out_3_d0 = reg_872;
assign buff_y_out_3_we0 = buff_y_out_3_we0_local;
assign buff_y_out_4_address0 = buff_y_out_4_address0_local;
assign buff_y_out_4_ce0 = buff_y_out_4_ce0_local;
assign buff_y_out_4_d0 = reg_854;
assign buff_y_out_4_we0 = buff_y_out_4_we0_local;
assign buff_y_out_5_address0 = buff_y_out_5_address0_local;
assign buff_y_out_5_ce0 = buff_y_out_5_ce0_local;
assign buff_y_out_5_d0 = reg_860;
assign buff_y_out_5_we0 = buff_y_out_5_we0_local;
assign buff_y_out_6_address0 = buff_y_out_6_address0_local;
assign buff_y_out_6_ce0 = buff_y_out_6_ce0_local;
assign buff_y_out_6_d0 = reg_866;
assign buff_y_out_6_we0 = buff_y_out_6_we0_local;
assign buff_y_out_7_address0 = buff_y_out_7_address0_local;
assign buff_y_out_7_ce0 = buff_y_out_7_ce0_local;
assign buff_y_out_7_d0 = reg_872;
assign buff_y_out_7_we0 = buff_y_out_7_we0_local;
assign buff_y_out_address0 = buff_y_out_addr_reg_1600_pp0_iter6_reg;
assign buff_y_out_address1 = zext_ln5_1_fu_1279_p1;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_ce1 = buff_y_out_ce1_local;
assign buff_y_out_d0 = reg_854;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign grp_fu_2213_p_ce = 1'b1;
assign grp_fu_2213_p_din0 = grp_fu_838_p0;
assign grp_fu_2213_p_din1 = grp_fu_838_p1;
assign grp_fu_2217_p_ce = 1'b1;
assign grp_fu_2217_p_din0 = grp_fu_842_p0;
assign grp_fu_2217_p_din1 = grp_fu_842_p1;
assign grp_fu_2221_p_ce = 1'b1;
assign grp_fu_2221_p_din0 = grp_fu_846_p0;
assign grp_fu_2221_p_din1 = grp_fu_846_p1;
assign grp_fu_2225_p_ce = 1'b1;
assign grp_fu_2225_p_din0 = grp_fu_850_p0;
assign grp_fu_2225_p_din1 = grp_fu_850_p1;
assign grp_fu_2229_p_ce = 1'b1;
assign grp_fu_2229_p_din0 = grp_fu_822_p0;
assign grp_fu_2229_p_din1 = grp_fu_822_p1;
assign grp_fu_2229_p_opcode = 2'd0;
assign grp_fu_2233_p_ce = 1'b1;
assign grp_fu_2233_p_din0 = grp_fu_826_p0;
assign grp_fu_2233_p_din1 = grp_fu_826_p1;
assign grp_fu_2233_p_opcode = 2'd0;
assign grp_fu_2237_p_ce = 1'b1;
assign grp_fu_2237_p_din0 = grp_fu_830_p0;
assign grp_fu_2237_p_din1 = grp_fu_830_p1;
assign grp_fu_2237_p_opcode = 2'd0;
assign grp_fu_2241_p_ce = 1'b1;
assign grp_fu_2241_p_din0 = grp_fu_834_p0;
assign grp_fu_2241_p_din1 = grp_fu_834_p1;
assign grp_fu_2241_p_opcode = 2'd0;
assign icmp_ln26_fu_896_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln5_5_fu_944_p4 = {{select_ln26_fu_928_p3[5:3]}};
assign lshr_ln5_8_fu_1031_p4 = {{select_ln5_fu_986_p3[5:3]}};
assign select_ln26_fu_928_p3 = ((tmp_9_fu_920_p3[0:0] == 1'b1) ? add_ln26_fu_914_p2 : ap_sig_allocacmp_i_load);
assign select_ln5_fu_986_p3 = ((tmp_9_reg_1320[0:0] == 1'b1) ? 7'd0 : j_1_load_reg_1315);
assign tmp1_1_address0 = zext_ln5_fu_954_p1;
assign tmp1_1_ce0 = tmp1_1_ce0_local;
assign tmp1_2_address0 = zext_ln5_fu_954_p1;
assign tmp1_2_ce0 = tmp1_2_ce0_local;
assign tmp1_3_address0 = zext_ln5_fu_954_p1;
assign tmp1_3_ce0 = tmp1_3_ce0_local;
assign tmp1_4_address0 = zext_ln5_fu_954_p1;
assign tmp1_4_ce0 = tmp1_4_ce0_local;
assign tmp1_5_address0 = zext_ln5_fu_954_p1;
assign tmp1_5_ce0 = tmp1_5_ce0_local;
assign tmp1_6_address0 = zext_ln5_fu_954_p1;
assign tmp1_6_ce0 = tmp1_6_ce0_local;
assign tmp1_7_address0 = zext_ln5_fu_954_p1;
assign tmp1_7_ce0 = tmp1_7_ce0_local;
assign tmp1_address0 = zext_ln5_fu_954_p1;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp_10_fu_1041_p3 = {{tmp_s_reg_1382}, {lshr_ln5_8_fu_1031_p4}};
assign tmp_1_fu_1095_p9 = 'bx;
assign tmp_2_fu_1118_p9 = 'bx;
assign tmp_3_fu_1141_p9 = 'bx;
assign tmp_4_fu_1164_p9 = 'bx;
assign tmp_5_fu_1187_p9 = 'bx;
assign tmp_6_fu_1210_p9 = 'bx;
assign tmp_7_fu_1233_p9 = 'bx;
assign tmp_8_fu_1256_p9 = 'bx;
assign tmp_9_fu_920_p3 = ap_sig_allocacmp_j_1_load[32'd6];
assign tmp_fu_992_p17 = 'bx;
assign trunc_ln26_1_fu_940_p1 = select_ln26_fu_928_p3[1:0];
assign trunc_ln26_fu_936_p1 = select_ln26_fu_928_p3[2:0];
assign zext_ln28_fu_1048_p1 = tmp_10_fu_1041_p3;
assign zext_ln5_1_fu_1279_p1 = lshr_ln5_8_reg_1395_pp0_iter1_reg;
assign zext_ln5_fu_954_p1 = lshr_ln5_5_fu_944_p4;
endmodule 