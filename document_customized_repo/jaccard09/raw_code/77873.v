module md_md_Pipeline_loop_q (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_z,sum_y,sum_x,sext_ln24,empty_10,empty_11,empty_12,p_x,p_y,p_z,q_idx_range,mul_ln31,position_0_0_0_0_address0,position_0_0_0_0_ce0,position_0_0_0_0_q0,position_0_0_0_1_address0,position_0_0_0_1_ce0,position_0_0_0_1_q0,position_0_0_1_0_address0,position_0_0_1_0_ce0,position_0_0_1_0_q0,position_0_0_1_1_address0,position_0_0_1_1_ce0,position_0_0_1_1_q0,position_0_1_0_0_address0,position_0_1_0_0_ce0,position_0_1_0_0_q0,position_0_1_0_1_address0,position_0_1_0_1_ce0,position_0_1_0_1_q0,position_0_1_1_0_address0,position_0_1_1_0_ce0,position_0_1_1_0_q0,position_0_1_1_1_address0,position_0_1_1_1_ce0,position_0_1_1_1_q0,position_1_0_0_0_address0,position_1_0_0_0_ce0,position_1_0_0_0_q0,position_1_0_0_1_address0,position_1_0_0_1_ce0,position_1_0_0_1_q0,position_1_0_1_0_address0,position_1_0_1_0_ce0,position_1_0_1_0_q0,position_1_0_1_1_address0,position_1_0_1_1_ce0,position_1_0_1_1_q0,position_1_1_0_0_address0,position_1_1_0_0_ce0,position_1_1_0_0_q0,position_1_1_0_1_address0,position_1_1_0_1_ce0,position_1_1_0_1_q0,position_1_1_1_0_address0,position_1_1_1_0_ce0,position_1_1_1_0_q0,position_1_1_1_1_address0,position_1_1_1_1_ce0,position_1_1_1_1_q0,select_ln25_14,empty,trunc_ln34_3,trunc_ln34_5,sum_z_1_out,sum_z_1_out_ap_vld,sum_y_1_out,sum_y_1_out_ap_vld,sum_x_1_out,sum_x_1_out_ap_vld,sum_x_3_out,sum_x_3_out_ap_vld,sum_y_3_out,sum_y_3_out_ap_vld,sum_z_3_out,sum_z_3_out_ap_vld,ap_return); 
parameter    ap_ST_fsm_state1 = 20'd1;
parameter    ap_ST_fsm_pp0_stage0 = 20'd2;
parameter    ap_ST_fsm_pp0_stage1 = 20'd4;
parameter    ap_ST_fsm_pp0_stage2 = 20'd8;
parameter    ap_ST_fsm_pp0_stage3 = 20'd16;
parameter    ap_ST_fsm_pp0_stage4 = 20'd32;
parameter    ap_ST_fsm_pp0_stage5 = 20'd64;
parameter    ap_ST_fsm_pp0_stage6 = 20'd128;
parameter    ap_ST_fsm_pp0_stage7 = 20'd256;
parameter    ap_ST_fsm_pp0_stage8 = 20'd512;
parameter    ap_ST_fsm_pp0_stage9 = 20'd1024;
parameter    ap_ST_fsm_pp0_stage10 = 20'd2048;
parameter    ap_ST_fsm_pp0_stage11 = 20'd4096;
parameter    ap_ST_fsm_pp0_stage12 = 20'd8192;
parameter    ap_ST_fsm_pp0_stage13 = 20'd16384;
parameter    ap_ST_fsm_pp0_stage14 = 20'd32768;
parameter    ap_ST_fsm_pp0_stage15 = 20'd65536;
parameter    ap_ST_fsm_state174 = 20'd131072;
parameter    ap_ST_fsm_state175 = 20'd262144;
parameter    ap_ST_fsm_state176 = 20'd524288;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] sum_z;
input  [63:0] sum_y;
input  [63:0] sum_x;
input  [31:0] sext_ln24;
input  [0:0] empty_10;
input  [0:0] empty_11;
input  [0:0] empty_12;
input  [63:0] p_x;
input  [63:0] p_y;
input  [63:0] p_z;
input  [31:0] q_idx_range;
input  [5:0] mul_ln31;
output  [5:0] position_0_0_0_0_address0;
output   position_0_0_0_0_ce0;
input  [191:0] position_0_0_0_0_q0;
output  [5:0] position_0_0_0_1_address0;
output   position_0_0_0_1_ce0;
input  [191:0] position_0_0_0_1_q0;
output  [5:0] position_0_0_1_0_address0;
output   position_0_0_1_0_ce0;
input  [191:0] position_0_0_1_0_q0;
output  [5:0] position_0_0_1_1_address0;
output   position_0_0_1_1_ce0;
input  [191:0] position_0_0_1_1_q0;
output  [5:0] position_0_1_0_0_address0;
output   position_0_1_0_0_ce0;
input  [191:0] position_0_1_0_0_q0;
output  [5:0] position_0_1_0_1_address0;
output   position_0_1_0_1_ce0;
input  [191:0] position_0_1_0_1_q0;
output  [5:0] position_0_1_1_0_address0;
output   position_0_1_1_0_ce0;
input  [191:0] position_0_1_1_0_q0;
output  [5:0] position_0_1_1_1_address0;
output   position_0_1_1_1_ce0;
input  [191:0] position_0_1_1_1_q0;
output  [5:0] position_1_0_0_0_address0;
output   position_1_0_0_0_ce0;
input  [191:0] position_1_0_0_0_q0;
output  [5:0] position_1_0_0_1_address0;
output   position_1_0_0_1_ce0;
input  [191:0] position_1_0_0_1_q0;
output  [5:0] position_1_0_1_0_address0;
output   position_1_0_1_0_ce0;
input  [191:0] position_1_0_1_0_q0;
output  [5:0] position_1_0_1_1_address0;
output   position_1_0_1_1_ce0;
input  [191:0] position_1_0_1_1_q0;
output  [5:0] position_1_1_0_0_address0;
output   position_1_1_0_0_ce0;
input  [191:0] position_1_1_0_0_q0;
output  [5:0] position_1_1_0_1_address0;
output   position_1_1_0_1_ce0;
input  [191:0] position_1_1_0_1_q0;
output  [5:0] position_1_1_1_0_address0;
output   position_1_1_1_0_ce0;
input  [191:0] position_1_1_1_0_q0;
output  [5:0] position_1_1_1_1_address0;
output   position_1_1_1_1_ce0;
input  [191:0] position_1_1_1_1_q0;
input  [190:0] select_ln25_14;
input  [51:0] empty;
input  [51:0] trunc_ln34_3;
input  [51:0] trunc_ln34_5;
output  [63:0] sum_z_1_out;
output   sum_z_1_out_ap_vld;
output  [63:0] sum_y_1_out;
output   sum_y_1_out_ap_vld;
output  [63:0] sum_x_1_out;
output   sum_x_1_out_ap_vld;
output  [63:0] sum_x_3_out;
output   sum_x_3_out_ap_vld;
output  [63:0] sum_y_3_out;
output   sum_y_3_out_ap_vld;
output  [63:0] sum_z_3_out;
output   sum_z_3_out_ap_vld;
output  [0:0] ap_return;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg sum_z_1_out_ap_vld;
reg sum_y_1_out_ap_vld;
reg sum_x_1_out_ap_vld;
reg sum_x_3_out_ap_vld;
reg sum_y_3_out_ap_vld;
reg sum_z_3_out_ap_vld;
reg[0:0] ap_return;
(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [63:0] sum_x_3_reg_538;
reg   [63:0] sum_y_3_reg_549;
reg   [63:0] sum_z_3_reg_560;
wire  signed [32:0] sext_ln24_cast_fu_648_p1;
reg  signed [32:0] sext_ln24_cast_reg_1413;
reg   [31:0] q_idx_1_reg_1418;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln30_fu_679_p2;
reg   [0:0] icmp_ln30_reg_1423;
reg   [0:0] icmp_ln30_reg_1423_pp0_iter1_reg;
reg   [0:0] icmp_ln30_reg_1423_pp0_iter2_reg;
reg   [0:0] icmp_ln30_reg_1423_pp0_iter3_reg;
reg   [0:0] icmp_ln30_reg_1423_pp0_iter4_reg;
reg   [0:0] icmp_ln30_reg_1423_pp0_iter5_reg;
reg   [0:0] icmp_ln30_reg_1423_pp0_iter6_reg;
reg   [0:0] icmp_ln30_reg_1423_pp0_iter7_reg;
reg   [0:0] icmp_ln30_reg_1423_pp0_iter8_reg;
reg   [0:0] icmp_ln30_reg_1423_pp0_iter9_reg;
reg   [0:0] icmp_ln30_reg_1423_pp0_iter10_reg;
wire   [0:0] or_ln34_1_fu_739_p2;
reg   [0:0] or_ln34_1_reg_1507;
wire   [0:0] or_ln34_3_fu_765_p2;
reg   [0:0] or_ln34_3_reg_1513;
wire   [0:0] or_ln34_5_fu_791_p2;
reg   [0:0] or_ln34_5_reg_1519;
wire   [0:0] icmp_ln30_1_fu_819_p2;
reg   [0:0] icmp_ln30_1_reg_1525;
reg   [0:0] icmp_ln30_1_reg_1525_pp0_iter1_reg;
reg   [0:0] icmp_ln30_1_reg_1525_pp0_iter2_reg;
reg   [0:0] icmp_ln30_1_reg_1525_pp0_iter3_reg;
reg   [0:0] icmp_ln30_1_reg_1525_pp0_iter4_reg;
reg   [0:0] icmp_ln30_1_reg_1525_pp0_iter5_reg;
reg   [0:0] icmp_ln30_1_reg_1525_pp0_iter6_reg;
reg   [0:0] icmp_ln30_1_reg_1525_pp0_iter7_reg;
reg   [0:0] icmp_ln30_1_reg_1525_pp0_iter8_reg;
reg   [0:0] icmp_ln30_1_reg_1525_pp0_iter9_reg;
reg   [0:0] icmp_ln30_1_reg_1525_pp0_iter10_reg;
wire   [63:0] trunc_ln31_fu_873_p1;
reg   [63:0] trunc_ln31_reg_1529;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] trunc_ln31_1_reg_1534;
reg   [63:0] trunc_ln31_2_reg_1539;
reg   [10:0] tmp_reg_1544;
wire   [51:0] trunc_ln34_fu_907_p1;
reg   [51:0] trunc_ln34_reg_1549;
reg   [10:0] tmp_3_reg_1554;
reg   [51:0] trunc_ln34_2_reg_1559;
reg   [10:0] tmp_s_reg_1564;
reg   [51:0] trunc_ln34_4_reg_1569;
wire   [63:0] trunc_ln31_3_fu_1000_p1;
reg   [63:0] trunc_ln31_3_reg_1574;
reg   [63:0] trunc_ln31_4_reg_1579;
reg   [63:0] trunc_ln31_5_reg_1584;
reg   [10:0] tmp_13_reg_1589;
wire   [51:0] trunc_ln34_1_fu_1034_p1;
reg   [51:0] trunc_ln34_1_reg_1594;
reg   [10:0] tmp_15_reg_1599;
reg   [51:0] trunc_ln34_8_reg_1604;
reg   [10:0] tmp_17_reg_1609;
reg   [51:0] trunc_ln34_s_reg_1614;
wire   [63:0] q_y_fu_1078_p1;
reg   [63:0] q_y_reg_1619;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln34_fu_1082_p2;
reg   [0:0] icmp_ln34_reg_1625;
wire   [0:0] icmp_ln34_1_fu_1087_p2;
reg   [0:0] icmp_ln34_1_reg_1630;
wire   [0:0] icmp_ln34_4_fu_1092_p2;
reg   [0:0] icmp_ln34_4_reg_1635;
wire   [0:0] icmp_ln34_5_fu_1097_p2;
reg   [0:0] icmp_ln34_5_reg_1640;
wire   [0:0] icmp_ln34_8_fu_1102_p2;
reg   [0:0] icmp_ln34_8_reg_1645;
wire   [0:0] icmp_ln34_9_fu_1107_p2;
reg   [0:0] icmp_ln34_9_reg_1650;
wire   [0:0] icmp_ln34_12_fu_1112_p2;
reg   [0:0] icmp_ln34_12_reg_1655;
wire   [0:0] icmp_ln34_13_fu_1117_p2;
reg   [0:0] icmp_ln34_13_reg_1660;
wire   [0:0] icmp_ln34_14_fu_1122_p2;
reg   [0:0] icmp_ln34_14_reg_1665;
wire   [0:0] icmp_ln34_15_fu_1127_p2;
reg   [0:0] icmp_ln34_15_reg_1670;
wire   [0:0] icmp_ln34_16_fu_1132_p2;
reg   [0:0] icmp_ln34_16_reg_1675;
wire   [0:0] icmp_ln34_17_fu_1137_p2;
reg   [0:0] icmp_ln34_17_reg_1680;
wire   [63:0] q_z_fu_1142_p1;
reg   [63:0] q_z_reg_1685;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [0:0] grp_fu_644_p2;
reg   [0:0] tmp_5_reg_1691;
reg    ap_enable_reg_pp0_iter0;
wire   [63:0] q_x_fu_1146_p1;
reg   [63:0] q_x_reg_1696;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] and_ln34_2_fu_1154_p2;
reg   [0:0] and_ln34_2_reg_1702;
wire   [0:0] and_ln34_7_fu_1199_p2;
reg   [0:0] and_ln34_7_reg_1707;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [0:0] and_ln34_7_reg_1707_pp0_iter1_reg;
reg   [0:0] and_ln34_7_reg_1707_pp0_iter2_reg;
reg   [0:0] and_ln34_7_reg_1707_pp0_iter3_reg;
reg   [0:0] and_ln34_7_reg_1707_pp0_iter4_reg;
reg   [0:0] and_ln34_7_reg_1707_pp0_iter5_reg;
reg   [0:0] and_ln34_7_reg_1707_pp0_iter6_reg;
reg   [0:0] and_ln34_7_reg_1707_pp0_iter7_reg;
reg   [0:0] and_ln34_7_reg_1707_pp0_iter8_reg;
reg   [0:0] and_ln34_7_reg_1707_pp0_iter9_reg;
wire   [63:0] q_x_1_fu_1205_p1;
reg   [63:0] q_x_1_reg_1711;
wire   [63:0] q_z_1_fu_1209_p1;
reg   [63:0] q_z_1_reg_1717;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] and_ln34_9_fu_1222_p2;
reg   [0:0] and_ln34_9_reg_1723;
wire   [63:0] q_y_1_fu_1228_p1;
reg   [63:0] q_y_1_reg_1728;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln34_13_fu_1241_p2;
reg   [0:0] and_ln34_13_reg_1734;
wire   [0:0] and_ln34_15_fu_1267_p2;
reg   [0:0] and_ln34_15_reg_1739;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
reg   [0:0] and_ln34_15_reg_1739_pp0_iter1_reg;
reg   [0:0] and_ln34_15_reg_1739_pp0_iter2_reg;
reg   [0:0] and_ln34_15_reg_1739_pp0_iter3_reg;
reg   [0:0] and_ln34_15_reg_1739_pp0_iter4_reg;
reg   [0:0] and_ln34_15_reg_1739_pp0_iter5_reg;
reg   [0:0] and_ln34_15_reg_1739_pp0_iter6_reg;
reg   [0:0] and_ln34_15_reg_1739_pp0_iter7_reg;
reg   [0:0] and_ln34_15_reg_1739_pp0_iter8_reg;
reg   [0:0] and_ln34_15_reg_1739_pp0_iter9_reg;
reg   [0:0] and_ln34_15_reg_1739_pp0_iter10_reg;
wire   [63:0] grp_fu_614_p2;
reg   [63:0] dx_reg_1743;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] dx_reg_1743_pp0_iter1_reg;
reg   [63:0] dx_reg_1743_pp0_iter2_reg;
reg   [63:0] dx_reg_1743_pp0_iter3_reg;
reg   [63:0] dx_reg_1743_pp0_iter4_reg;
reg   [63:0] dx_reg_1743_pp0_iter5_reg;
reg   [63:0] dx_reg_1743_pp0_iter6_reg;
reg   [63:0] dx_reg_1743_pp0_iter7_reg;
reg   [63:0] dx_reg_1743_pp0_iter8_reg;
wire   [63:0] grp_fu_618_p2;
reg   [63:0] dy_reg_1749;
reg   [63:0] dy_reg_1749_pp0_iter1_reg;
reg   [63:0] dy_reg_1749_pp0_iter2_reg;
reg   [63:0] dy_reg_1749_pp0_iter3_reg;
reg   [63:0] dy_reg_1749_pp0_iter4_reg;
reg   [63:0] dy_reg_1749_pp0_iter5_reg;
reg   [63:0] dy_reg_1749_pp0_iter6_reg;
reg   [63:0] dy_reg_1749_pp0_iter7_reg;
reg   [63:0] dy_reg_1749_pp0_iter8_reg;
wire   [63:0] grp_fu_622_p2;
reg   [63:0] dz_reg_1755;
reg   [63:0] dz_reg_1755_pp0_iter1_reg;
reg   [63:0] dz_reg_1755_pp0_iter2_reg;
reg   [63:0] dz_reg_1755_pp0_iter3_reg;
reg   [63:0] dz_reg_1755_pp0_iter4_reg;
reg   [63:0] dz_reg_1755_pp0_iter5_reg;
reg   [63:0] dz_reg_1755_pp0_iter6_reg;
reg   [63:0] dz_reg_1755_pp0_iter7_reg;
reg   [63:0] dz_reg_1755_pp0_iter8_reg;
reg   [63:0] dx_1_reg_1761;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
reg   [63:0] dx_1_reg_1761_pp0_iter1_reg;
reg   [63:0] dx_1_reg_1761_pp0_iter2_reg;
reg   [63:0] dx_1_reg_1761_pp0_iter3_reg;
reg   [63:0] dx_1_reg_1761_pp0_iter4_reg;
reg   [63:0] dx_1_reg_1761_pp0_iter5_reg;
reg   [63:0] dx_1_reg_1761_pp0_iter6_reg;
reg   [63:0] dx_1_reg_1761_pp0_iter7_reg;
reg   [63:0] dx_1_reg_1761_pp0_iter8_reg;
reg   [63:0] dy_1_reg_1768;
reg   [63:0] dy_1_reg_1768_pp0_iter1_reg;
reg   [63:0] dy_1_reg_1768_pp0_iter2_reg;
reg   [63:0] dy_1_reg_1768_pp0_iter3_reg;
reg   [63:0] dy_1_reg_1768_pp0_iter4_reg;
reg   [63:0] dy_1_reg_1768_pp0_iter5_reg;
reg   [63:0] dy_1_reg_1768_pp0_iter6_reg;
reg   [63:0] dy_1_reg_1768_pp0_iter7_reg;
reg   [63:0] dy_1_reg_1768_pp0_iter8_reg;
reg   [63:0] dz_1_reg_1775;
reg   [63:0] dz_1_reg_1775_pp0_iter1_reg;
reg   [63:0] dz_1_reg_1775_pp0_iter2_reg;
reg   [63:0] dz_1_reg_1775_pp0_iter3_reg;
reg   [63:0] dz_1_reg_1775_pp0_iter4_reg;
reg   [63:0] dz_1_reg_1775_pp0_iter5_reg;
reg   [63:0] dz_1_reg_1775_pp0_iter6_reg;
reg   [63:0] dz_1_reg_1775_pp0_iter7_reg;
reg   [63:0] dz_1_reg_1775_pp0_iter8_reg;
wire   [63:0] grp_fu_630_p2;
reg   [63:0] mul_reg_1782;
reg    ap_enable_reg_pp0_iter1;
wire   [63:0] grp_fu_634_p2;
reg   [63:0] mul1_reg_1787;
reg   [63:0] mul2_reg_1792;
reg   [63:0] mul_1_reg_1797;
reg   [63:0] mul170_1_reg_1802;
reg   [63:0] mul172_1_reg_1807;
reg   [63:0] add_reg_1812;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] add171_1_reg_1817;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add1_reg_1822;
reg    ap_enable_reg_pp0_iter2;
reg   [63:0] add173_1_reg_1827;
wire   [63:0] grp_fu_639_p2;
reg   [63:0] r2inv_reg_1832;
reg    ap_enable_reg_pp0_iter5;
reg   [63:0] r2inv_reg_1832_pp0_iter6_reg;
reg   [63:0] r2inv_reg_1832_pp0_iter7_reg;
reg   [63:0] r2inv_1_reg_1839;
reg    ap_enable_reg_pp0_iter6;
reg   [63:0] r2inv_1_reg_1839_pp0_iter7_reg;
reg   [63:0] r2inv_1_reg_1839_pp0_iter8_reg;
reg   [63:0] mul3_reg_1846;
reg   [63:0] mul174_1_reg_1851;
reg   [63:0] r6inv_reg_1856;
reg   [63:0] r6inv_reg_1856_pp0_iter7_reg;
reg   [63:0] r6inv_1_reg_1861;
reg   [63:0] r6inv_1_reg_1861_pp0_iter7_reg;
reg   [63:0] mul4_reg_1866;
reg    ap_enable_reg_pp0_iter7;
reg   [63:0] mul176_1_reg_1871;
reg   [63:0] sub_reg_1876;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
reg   [63:0] sub177_1_reg_1881;
reg    ap_enable_reg_pp0_iter8;
reg   [63:0] potential_reg_1886;
reg   [63:0] potential_1_reg_1891;
reg   [63:0] f_reg_1896;
reg   [63:0] f_1_reg_1902;
reg   [63:0] mul5_reg_1908;
wire    ap_CS_fsm_pp0_stage9;
reg    ap_enable_reg_pp0_iter9;
wire    ap_block_pp0_stage9_11001;
reg   [63:0] mul6_reg_1913;
reg   [63:0] mul7_reg_1918;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mul180_1_reg_1923;
reg   [63:0] sum_x_6_reg_1928;
reg   [63:0] sum_y_6_reg_1935;
reg   [63:0] sum_z_6_reg_1942;
reg   [63:0] mul182_1_reg_1949;
reg   [63:0] mul184_1_reg_1954;
reg    ap_enable_reg_pp0_iter10;
wire    ap_block_pp0_stage15_subdone;
reg    ap_predicate_tran165to174_state17;
reg    ap_condition_pp0_flush_enable;
wire    ap_block_pp0_stage3_subdone;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_x_3_reg_538;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_x_3_reg_538;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_x_3_reg_538;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_x_3_reg_538;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_x_3_reg_538;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_x_3_reg_538;
reg   [63:0] ap_phi_reg_pp0_iter6_sum_x_3_reg_538;
reg   [63:0] ap_phi_reg_pp0_iter7_sum_x_3_reg_538;
reg   [63:0] ap_phi_reg_pp0_iter8_sum_x_3_reg_538;
reg   [63:0] ap_phi_reg_pp0_iter9_sum_x_3_reg_538;
reg   [63:0] ap_phi_reg_pp0_iter10_sum_x_3_reg_538;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_y_3_reg_549;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_y_3_reg_549;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_y_3_reg_549;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_y_3_reg_549;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_y_3_reg_549;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_y_3_reg_549;
reg   [63:0] ap_phi_reg_pp0_iter6_sum_y_3_reg_549;
reg   [63:0] ap_phi_reg_pp0_iter7_sum_y_3_reg_549;
reg   [63:0] ap_phi_reg_pp0_iter8_sum_y_3_reg_549;
reg   [63:0] ap_phi_reg_pp0_iter9_sum_y_3_reg_549;
reg   [63:0] ap_phi_reg_pp0_iter10_sum_y_3_reg_549;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_z_3_reg_560;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_z_3_reg_560;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_z_3_reg_560;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_z_3_reg_560;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_z_3_reg_560;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_z_3_reg_560;
reg   [63:0] ap_phi_reg_pp0_iter6_sum_z_3_reg_560;
reg   [63:0] ap_phi_reg_pp0_iter7_sum_z_3_reg_560;
reg   [63:0] ap_phi_reg_pp0_iter8_sum_z_3_reg_560;
reg   [63:0] ap_phi_reg_pp0_iter9_sum_z_3_reg_560;
reg   [63:0] ap_phi_reg_pp0_iter10_sum_z_3_reg_560;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_x_5_reg_571;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_x_5_reg_571;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_x_5_reg_571;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_x_5_reg_571;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_x_5_reg_571;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_x_5_reg_571;
reg   [63:0] ap_phi_reg_pp0_iter6_sum_x_5_reg_571;
reg   [63:0] ap_phi_reg_pp0_iter7_sum_x_5_reg_571;
reg   [63:0] ap_phi_reg_pp0_iter8_sum_x_5_reg_571;
reg   [63:0] ap_phi_reg_pp0_iter9_sum_x_5_reg_571;
reg   [63:0] ap_phi_reg_pp0_iter10_sum_x_5_reg_571;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_y_5_reg_581;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_y_5_reg_581;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_y_5_reg_581;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_y_5_reg_581;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_y_5_reg_581;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_y_5_reg_581;
reg   [63:0] ap_phi_reg_pp0_iter6_sum_y_5_reg_581;
reg   [63:0] ap_phi_reg_pp0_iter7_sum_y_5_reg_581;
reg   [63:0] ap_phi_reg_pp0_iter8_sum_y_5_reg_581;
reg   [63:0] ap_phi_reg_pp0_iter9_sum_y_5_reg_581;
reg   [63:0] ap_phi_reg_pp0_iter10_sum_y_5_reg_581;
wire   [63:0] ap_phi_reg_pp0_iter0_sum_z_5_reg_591;
reg   [63:0] ap_phi_reg_pp0_iter1_sum_z_5_reg_591;
reg   [63:0] ap_phi_reg_pp0_iter2_sum_z_5_reg_591;
reg   [63:0] ap_phi_reg_pp0_iter3_sum_z_5_reg_591;
reg   [63:0] ap_phi_reg_pp0_iter4_sum_z_5_reg_591;
reg   [63:0] ap_phi_reg_pp0_iter5_sum_z_5_reg_591;
reg   [63:0] ap_phi_reg_pp0_iter6_sum_z_5_reg_591;
reg   [63:0] ap_phi_reg_pp0_iter7_sum_z_5_reg_591;
reg   [63:0] ap_phi_reg_pp0_iter8_sum_z_5_reg_591;
reg   [63:0] ap_phi_reg_pp0_iter9_sum_z_5_reg_591;
reg   [63:0] ap_phi_reg_pp0_iter10_sum_z_5_reg_591;
reg   [0:0] UnifiedRetVal_reg_601;
wire    ap_CS_fsm_state175;
wire    ap_CS_fsm_state174;
wire   [63:0] zext_ln31_fu_699_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] q_idx_fu_176;
wire   [31:0] add_ln30_fu_1272_p2;
reg   [63:0] sum_x_1_fu_180;
reg   [63:0] ap_sig_allocacmp_sum_x_6;
wire    ap_block_pp0_stage11;
reg   [63:0] sum_y_1_fu_184;
reg   [63:0] ap_sig_allocacmp_sum_y_6;
reg   [63:0] sum_z_1_fu_188;
reg   [63:0] ap_sig_allocacmp_sum_z_6;
reg    position_0_0_0_0_ce0_local;
reg    position_0_0_1_0_ce0_local;
reg    position_0_1_0_0_ce0_local;
reg    position_0_1_1_0_ce0_local;
reg    position_1_0_0_0_ce0_local;
reg    position_1_0_1_0_ce0_local;
reg    position_1_1_0_0_ce0_local;
reg    position_1_1_1_0_ce0_local;
reg    position_0_0_0_1_ce0_local;
reg    position_0_0_1_1_ce0_local;
reg    position_0_1_0_1_ce0_local;
reg    position_0_1_1_1_ce0_local;
reg    position_1_0_0_1_ce0_local;
reg    position_1_0_1_1_ce0_local;
reg    position_1_1_0_1_ce0_local;
reg    position_1_1_1_1_ce0_local;
reg   [63:0] grp_fu_614_p0;
reg   [63:0] grp_fu_614_p1;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_618_p0;
reg   [63:0] grp_fu_618_p1;
reg   [63:0] grp_fu_622_p0;
reg   [63:0] grp_fu_622_p1;
reg   [63:0] grp_fu_630_p0;
reg   [63:0] grp_fu_630_p1;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_634_p0;
reg   [63:0] grp_fu_634_p1;
reg   [63:0] grp_fu_639_p1;
reg   [63:0] grp_fu_644_p0;
reg   [63:0] grp_fu_644_p1;
wire   [32:0] zext_ln30_fu_675_p1;
wire   [5:0] lshr_ln10_1_fu_684_p4;
wire   [5:0] add_ln31_fu_694_p2;
wire   [10:0] tmp_1_fu_719_p4;
wire   [0:0] icmp_ln34_3_fu_734_p2;
wire   [0:0] icmp_ln34_2_fu_728_p2;
wire   [10:0] tmp_4_fu_745_p4;
wire   [0:0] icmp_ln34_7_fu_760_p2;
wire   [0:0] icmp_ln34_6_fu_754_p2;
wire   [10:0] tmp_10_fu_771_p4;
wire   [0:0] icmp_ln34_11_fu_786_p2;
wire   [0:0] icmp_ln34_10_fu_780_p2;
wire   [29:0] tmp_12_fu_797_p4;
wire   [30:0] or_ln1_fu_807_p3;
wire   [31:0] zext_ln28_fu_815_p1;
wire   [191:0] select_ln31_1_fu_831_p3;
wire   [191:0] select_ln31_fu_824_p3;
wire   [191:0] select_ln31_4_fu_852_p3;
wire   [191:0] select_ln31_3_fu_845_p3;
wire   [191:0] select_ln31_5_fu_859_p3;
wire   [191:0] select_ln31_2_fu_838_p3;
wire   [191:0] select_ln31_6_fu_866_p3;
wire   [191:0] select_ln31_8_fu_958_p3;
wire   [191:0] select_ln31_7_fu_951_p3;
wire   [191:0] select_ln31_11_fu_979_p3;
wire   [191:0] select_ln31_10_fu_972_p3;
wire   [191:0] select_ln31_12_fu_986_p3;
wire   [191:0] select_ln31_9_fu_965_p3;
wire   [191:0] select_ln31_13_fu_993_p3;
wire   [0:0] or_ln34_2_fu_1150_p2;
wire   [0:0] or_ln34_fu_1160_p2;
wire   [0:0] and_ln34_fu_1164_p2;
wire   [0:0] or_ln34_4_fu_1175_p2;
wire   [0:0] and_ln34_4_fu_1179_p2;
wire   [0:0] and_ln34_5_fu_1183_p2;
wire   [0:0] and_ln34_3_fu_1189_p2;
wire   [0:0] and_ln34_6_fu_1194_p2;
wire   [0:0] and_ln34_1_fu_1169_p2;
wire   [0:0] or_ln34_6_fu_1213_p2;
wire   [0:0] and_ln34_8_fu_1217_p2;
wire   [0:0] or_ln34_8_fu_1232_p2;
wire   [0:0] and_ln34_12_fu_1236_p2;
wire   [0:0] or_ln34_7_fu_1247_p2;
wire   [0:0] and_ln34_10_fu_1251_p2;
wire   [0:0] and_ln34_11_fu_1256_p2;
wire   [0:0] and_ln34_14_fu_1262_p2;
reg   [1:0] grp_fu_614_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage15_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage8_00001;
reg   [1:0] grp_fu_618_opcode;
reg   [1:0] grp_fu_622_opcode;
wire    ap_block_pp0_stage2_00001;
reg   [0:0] ap_return_preg;
wire    ap_CS_fsm_state176;
reg   [19:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state174_blk;
wire    ap_ST_fsm_state175_blk;
wire    ap_ST_fsm_state176_blk;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
reg   [1:0] ap_exit_tran_regpp0;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 20'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 q_idx_fu_176 = 32'd0;
#0 sum_x_1_fu_180 = 64'd0;
#0 sum_y_1_fu_184 = 64'd0;
#0 sum_z_1_fu_188 = 64'd0;
#0 ap_return_preg = 1'd0;
end
md_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_614_p0),.din1(grp_fu_614_p1),.opcode(grp_fu_614_opcode),.ce(1'b1),.dout(grp_fu_614_p2));
md_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_618_p0),.din1(grp_fu_618_p1),.opcode(grp_fu_618_opcode),.ce(1'b1),.dout(grp_fu_618_p2));
md_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_622_p0),.din1(grp_fu_622_p1),.opcode(grp_fu_622_opcode),.ce(1'b1),.dout(grp_fu_622_p2));
md_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_630_p0),.din1(grp_fu_630_p1),.ce(1'b1),.dout(grp_fu_630_p2));
md_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_634_p0),.din1(grp_fu_634_p1),.ce(1'b1),.dout(grp_fu_634_p2));
md_ddiv_64ns_64ns_64_59_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 59 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
ddiv_64ns_64ns_64_59_no_dsp_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(64'd4607182418800017408),.din1(grp_fu_639_p1),.ce(1'b1),.dout(grp_fu_639_p2));
md_dcmp_64ns_64ns_1_2_no_dsp_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 1 ))
dcmp_64ns_64ns_1_2_no_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_644_p0),.din1(grp_fu_644_p1),.ce(1'b1),.opcode(5'd1),.dout(grp_fu_644_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((((ap_enable_reg_pp0_iter9 == 1'b0) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter10 <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state176)) begin
            ap_return_preg <= UnifiedRetVal_reg_601;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state174)) begin
        UnifiedRetVal_reg_601 <= 1'd0;
    end else if ((1'b1 == ap_CS_fsm_state175)) begin
        UnifiedRetVal_reg_601 <= 1'd1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage15_subdone))) begin
        if ((icmp_ln30_reg_1423 == 1'd0)) begin
                        ap_exit_tran_regpp0[0] <= 1'b1;
        end else if ((ap_predicate_tran165to174_state17 == 1'b1)) begin
                        ap_exit_tran_regpp0[0] <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'd0 == and_ln34_7_reg_1707_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_phi_reg_pp0_iter10_sum_x_3_reg_538 <= grp_fu_614_p2;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter10_sum_x_3_reg_538 <= ap_phi_reg_pp0_iter9_sum_x_3_reg_538;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln34_15_reg_1739_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter10_sum_x_5_reg_571 <= ap_phi_reg_pp0_iter10_sum_x_3_reg_538;
    end else if (((1'd0 == and_ln34_15_reg_1739_pp0_iter10_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_phi_reg_pp0_iter10_sum_x_5_reg_571 <= grp_fu_614_p2;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter10_sum_x_5_reg_571 <= ap_phi_reg_pp0_iter9_sum_x_5_reg_571;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd0 == and_ln34_7_reg_1707_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_phi_reg_pp0_iter10_sum_y_3_reg_549 <= grp_fu_618_p2;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter10_sum_y_3_reg_549 <= ap_phi_reg_pp0_iter9_sum_y_3_reg_549;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln34_15_reg_1739_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter10_sum_y_5_reg_581 <= ap_phi_reg_pp0_iter10_sum_y_3_reg_549;
    end else if (((1'd0 == and_ln34_15_reg_1739_pp0_iter10_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_phi_reg_pp0_iter10_sum_y_5_reg_581 <= grp_fu_618_p2;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter10_sum_y_5_reg_581 <= ap_phi_reg_pp0_iter9_sum_y_5_reg_581;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd0 == and_ln34_7_reg_1707_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_phi_reg_pp0_iter10_sum_z_3_reg_560 <= grp_fu_622_p2;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter10_sum_z_3_reg_560 <= ap_phi_reg_pp0_iter9_sum_z_3_reg_560;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln34_15_reg_1739_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_phi_reg_pp0_iter10_sum_z_5_reg_591 <= ap_phi_reg_pp0_iter10_sum_z_3_reg_560;
    end else if (((1'd0 == and_ln34_15_reg_1739_pp0_iter10_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_phi_reg_pp0_iter10_sum_z_5_reg_591 <= grp_fu_622_p2;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter10_sum_z_5_reg_591 <= ap_phi_reg_pp0_iter9_sum_z_5_reg_591;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln34_7_reg_1707_pp0_iter9_reg) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln30_reg_1423_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter9_sum_x_3_reg_538 <= ap_sig_allocacmp_sum_x_6;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter9_sum_x_3_reg_538 <= ap_phi_reg_pp0_iter8_sum_x_3_reg_538;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln34_7_reg_1707_pp0_iter9_reg) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln30_reg_1423_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter9_sum_y_3_reg_549 <= ap_sig_allocacmp_sum_y_6;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter9_sum_y_3_reg_549 <= ap_phi_reg_pp0_iter8_sum_y_3_reg_549;
    end
end
always @ (posedge ap_clk) begin
    if (((1'd1 == and_ln34_7_reg_1707_pp0_iter9_reg) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln30_reg_1423_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_phi_reg_pp0_iter9_sum_z_3_reg_560 <= ap_sig_allocacmp_sum_z_6;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter9_sum_z_3_reg_560 <= ap_phi_reg_pp0_iter8_sum_z_3_reg_560;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        q_idx_fu_176 <= 32'd0;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln30_1_reg_1525 == 1'd1) & (icmp_ln30_reg_1423 == 1'd1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        q_idx_fu_176 <= add_ln30_fu_1272_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_x_1_fu_180 <= sum_x;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        sum_x_1_fu_180 <= ap_phi_reg_pp0_iter10_sum_x_5_reg_571;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_y_1_fu_184 <= sum_y;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        sum_y_1_fu_184 <= ap_phi_reg_pp0_iter10_sum_y_5_reg_581;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        sum_z_1_fu_188 <= sum_z;
    end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        sum_z_1_fu_188 <= ap_phi_reg_pp0_iter10_sum_z_5_reg_591;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add171_1_reg_1817 <= grp_fu_614_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add173_1_reg_1827 <= grp_fu_614_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add1_reg_1822 <= grp_fu_614_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_reg_1812 <= grp_fu_614_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        and_ln34_13_reg_1734 <= and_ln34_13_fu_1241_p2;
        q_y_1_reg_1728 <= q_y_1_fu_1228_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln34_15_reg_1739 <= and_ln34_15_fu_1267_p2;
        and_ln34_15_reg_1739_pp0_iter10_reg <= and_ln34_15_reg_1739_pp0_iter9_reg;
        and_ln34_15_reg_1739_pp0_iter1_reg <= and_ln34_15_reg_1739;
        and_ln34_15_reg_1739_pp0_iter2_reg <= and_ln34_15_reg_1739_pp0_iter1_reg;
        and_ln34_15_reg_1739_pp0_iter3_reg <= and_ln34_15_reg_1739_pp0_iter2_reg;
        and_ln34_15_reg_1739_pp0_iter4_reg <= and_ln34_15_reg_1739_pp0_iter3_reg;
        and_ln34_15_reg_1739_pp0_iter5_reg <= and_ln34_15_reg_1739_pp0_iter4_reg;
        and_ln34_15_reg_1739_pp0_iter6_reg <= and_ln34_15_reg_1739_pp0_iter5_reg;
        and_ln34_15_reg_1739_pp0_iter7_reg <= and_ln34_15_reg_1739_pp0_iter6_reg;
        and_ln34_15_reg_1739_pp0_iter8_reg <= and_ln34_15_reg_1739_pp0_iter7_reg;
        and_ln34_15_reg_1739_pp0_iter9_reg <= and_ln34_15_reg_1739_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln34_2_reg_1702 <= and_ln34_2_fu_1154_p2;
        q_x_reg_1696 <= q_x_fu_1146_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        and_ln34_7_reg_1707 <= and_ln34_7_fu_1199_p2;
        and_ln34_7_reg_1707_pp0_iter1_reg <= and_ln34_7_reg_1707;
        and_ln34_7_reg_1707_pp0_iter2_reg <= and_ln34_7_reg_1707_pp0_iter1_reg;
        and_ln34_7_reg_1707_pp0_iter3_reg <= and_ln34_7_reg_1707_pp0_iter2_reg;
        and_ln34_7_reg_1707_pp0_iter4_reg <= and_ln34_7_reg_1707_pp0_iter3_reg;
        and_ln34_7_reg_1707_pp0_iter5_reg <= and_ln34_7_reg_1707_pp0_iter4_reg;
        and_ln34_7_reg_1707_pp0_iter6_reg <= and_ln34_7_reg_1707_pp0_iter5_reg;
        and_ln34_7_reg_1707_pp0_iter7_reg <= and_ln34_7_reg_1707_pp0_iter6_reg;
        and_ln34_7_reg_1707_pp0_iter8_reg <= and_ln34_7_reg_1707_pp0_iter7_reg;
        and_ln34_7_reg_1707_pp0_iter9_reg <= and_ln34_7_reg_1707_pp0_iter8_reg;
        q_x_1_reg_1711 <= q_x_1_fu_1205_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln34_9_reg_1723 <= and_ln34_9_fu_1222_p2;
        q_z_1_reg_1717 <= q_z_1_fu_1209_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter1_sum_x_3_reg_538 <= ap_phi_reg_pp0_iter0_sum_x_3_reg_538;
        ap_phi_reg_pp0_iter1_sum_x_5_reg_571 <= ap_phi_reg_pp0_iter0_sum_x_5_reg_571;
        ap_phi_reg_pp0_iter1_sum_y_3_reg_549 <= ap_phi_reg_pp0_iter0_sum_y_3_reg_549;
        ap_phi_reg_pp0_iter1_sum_y_5_reg_581 <= ap_phi_reg_pp0_iter0_sum_y_5_reg_581;
        ap_phi_reg_pp0_iter1_sum_z_3_reg_560 <= ap_phi_reg_pp0_iter0_sum_z_3_reg_560;
        ap_phi_reg_pp0_iter1_sum_z_5_reg_591 <= ap_phi_reg_pp0_iter0_sum_z_5_reg_591;
        dx_1_reg_1761 <= grp_fu_614_p2;
        dy_1_reg_1768 <= grp_fu_618_p2;
        dz_1_reg_1775 <= grp_fu_622_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter2_sum_x_3_reg_538 <= ap_phi_reg_pp0_iter1_sum_x_3_reg_538;
        ap_phi_reg_pp0_iter2_sum_x_5_reg_571 <= ap_phi_reg_pp0_iter1_sum_x_5_reg_571;
        ap_phi_reg_pp0_iter2_sum_y_3_reg_549 <= ap_phi_reg_pp0_iter1_sum_y_3_reg_549;
        ap_phi_reg_pp0_iter2_sum_y_5_reg_581 <= ap_phi_reg_pp0_iter1_sum_y_5_reg_581;
        ap_phi_reg_pp0_iter2_sum_z_3_reg_560 <= ap_phi_reg_pp0_iter1_sum_z_3_reg_560;
        ap_phi_reg_pp0_iter2_sum_z_5_reg_591 <= ap_phi_reg_pp0_iter1_sum_z_5_reg_591;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter3_sum_x_3_reg_538 <= ap_phi_reg_pp0_iter2_sum_x_3_reg_538;
        ap_phi_reg_pp0_iter3_sum_x_5_reg_571 <= ap_phi_reg_pp0_iter2_sum_x_5_reg_571;
        ap_phi_reg_pp0_iter3_sum_y_3_reg_549 <= ap_phi_reg_pp0_iter2_sum_y_3_reg_549;
        ap_phi_reg_pp0_iter3_sum_y_5_reg_581 <= ap_phi_reg_pp0_iter2_sum_y_5_reg_581;
        ap_phi_reg_pp0_iter3_sum_z_3_reg_560 <= ap_phi_reg_pp0_iter2_sum_z_3_reg_560;
        ap_phi_reg_pp0_iter3_sum_z_5_reg_591 <= ap_phi_reg_pp0_iter2_sum_z_5_reg_591;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter4_sum_x_3_reg_538 <= ap_phi_reg_pp0_iter3_sum_x_3_reg_538;
        ap_phi_reg_pp0_iter4_sum_x_5_reg_571 <= ap_phi_reg_pp0_iter3_sum_x_5_reg_571;
        ap_phi_reg_pp0_iter4_sum_y_3_reg_549 <= ap_phi_reg_pp0_iter3_sum_y_3_reg_549;
        ap_phi_reg_pp0_iter4_sum_y_5_reg_581 <= ap_phi_reg_pp0_iter3_sum_y_5_reg_581;
        ap_phi_reg_pp0_iter4_sum_z_3_reg_560 <= ap_phi_reg_pp0_iter3_sum_z_3_reg_560;
        ap_phi_reg_pp0_iter4_sum_z_5_reg_591 <= ap_phi_reg_pp0_iter3_sum_z_5_reg_591;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter5_sum_x_3_reg_538 <= ap_phi_reg_pp0_iter4_sum_x_3_reg_538;
        ap_phi_reg_pp0_iter5_sum_x_5_reg_571 <= ap_phi_reg_pp0_iter4_sum_x_5_reg_571;
        ap_phi_reg_pp0_iter5_sum_y_3_reg_549 <= ap_phi_reg_pp0_iter4_sum_y_3_reg_549;
        ap_phi_reg_pp0_iter5_sum_y_5_reg_581 <= ap_phi_reg_pp0_iter4_sum_y_5_reg_581;
        ap_phi_reg_pp0_iter5_sum_z_3_reg_560 <= ap_phi_reg_pp0_iter4_sum_z_3_reg_560;
        ap_phi_reg_pp0_iter5_sum_z_5_reg_591 <= ap_phi_reg_pp0_iter4_sum_z_5_reg_591;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter6_sum_x_3_reg_538 <= ap_phi_reg_pp0_iter5_sum_x_3_reg_538;
        ap_phi_reg_pp0_iter6_sum_x_5_reg_571 <= ap_phi_reg_pp0_iter5_sum_x_5_reg_571;
        ap_phi_reg_pp0_iter6_sum_y_3_reg_549 <= ap_phi_reg_pp0_iter5_sum_y_3_reg_549;
        ap_phi_reg_pp0_iter6_sum_y_5_reg_581 <= ap_phi_reg_pp0_iter5_sum_y_5_reg_581;
        ap_phi_reg_pp0_iter6_sum_z_3_reg_560 <= ap_phi_reg_pp0_iter5_sum_z_3_reg_560;
        ap_phi_reg_pp0_iter6_sum_z_5_reg_591 <= ap_phi_reg_pp0_iter5_sum_z_5_reg_591;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter7_sum_x_3_reg_538 <= ap_phi_reg_pp0_iter6_sum_x_3_reg_538;
        ap_phi_reg_pp0_iter7_sum_x_5_reg_571 <= ap_phi_reg_pp0_iter6_sum_x_5_reg_571;
        ap_phi_reg_pp0_iter7_sum_y_3_reg_549 <= ap_phi_reg_pp0_iter6_sum_y_3_reg_549;
        ap_phi_reg_pp0_iter7_sum_y_5_reg_581 <= ap_phi_reg_pp0_iter6_sum_y_5_reg_581;
        ap_phi_reg_pp0_iter7_sum_z_3_reg_560 <= ap_phi_reg_pp0_iter6_sum_z_3_reg_560;
        ap_phi_reg_pp0_iter7_sum_z_5_reg_591 <= ap_phi_reg_pp0_iter6_sum_z_5_reg_591;
        r6inv_1_reg_1861 <= grp_fu_630_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter8_sum_x_3_reg_538 <= ap_phi_reg_pp0_iter7_sum_x_3_reg_538;
        ap_phi_reg_pp0_iter8_sum_x_5_reg_571 <= ap_phi_reg_pp0_iter7_sum_x_5_reg_571;
        ap_phi_reg_pp0_iter8_sum_y_3_reg_549 <= ap_phi_reg_pp0_iter7_sum_y_3_reg_549;
        ap_phi_reg_pp0_iter8_sum_y_5_reg_581 <= ap_phi_reg_pp0_iter7_sum_y_5_reg_581;
        ap_phi_reg_pp0_iter8_sum_z_3_reg_560 <= ap_phi_reg_pp0_iter7_sum_z_3_reg_560;
        ap_phi_reg_pp0_iter8_sum_z_5_reg_591 <= ap_phi_reg_pp0_iter7_sum_z_5_reg_591;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_phi_reg_pp0_iter9_sum_x_5_reg_571 <= ap_phi_reg_pp0_iter8_sum_x_5_reg_571;
        ap_phi_reg_pp0_iter9_sum_y_5_reg_581 <= ap_phi_reg_pp0_iter8_sum_y_5_reg_581;
        ap_phi_reg_pp0_iter9_sum_z_5_reg_591 <= ap_phi_reg_pp0_iter8_sum_z_5_reg_591;
        f_1_reg_1902 <= grp_fu_634_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        dx_1_reg_1761_pp0_iter1_reg <= dx_1_reg_1761;
        dx_1_reg_1761_pp0_iter2_reg <= dx_1_reg_1761_pp0_iter1_reg;
        dx_1_reg_1761_pp0_iter3_reg <= dx_1_reg_1761_pp0_iter2_reg;
        dx_1_reg_1761_pp0_iter4_reg <= dx_1_reg_1761_pp0_iter3_reg;
        dx_1_reg_1761_pp0_iter5_reg <= dx_1_reg_1761_pp0_iter4_reg;
        dx_1_reg_1761_pp0_iter6_reg <= dx_1_reg_1761_pp0_iter5_reg;
        dx_1_reg_1761_pp0_iter7_reg <= dx_1_reg_1761_pp0_iter6_reg;
        dx_1_reg_1761_pp0_iter8_reg <= dx_1_reg_1761_pp0_iter7_reg;
        dy_1_reg_1768_pp0_iter1_reg <= dy_1_reg_1768;
        dy_1_reg_1768_pp0_iter2_reg <= dy_1_reg_1768_pp0_iter1_reg;
        dy_1_reg_1768_pp0_iter3_reg <= dy_1_reg_1768_pp0_iter2_reg;
        dy_1_reg_1768_pp0_iter4_reg <= dy_1_reg_1768_pp0_iter3_reg;
        dy_1_reg_1768_pp0_iter5_reg <= dy_1_reg_1768_pp0_iter4_reg;
        dy_1_reg_1768_pp0_iter6_reg <= dy_1_reg_1768_pp0_iter5_reg;
        dy_1_reg_1768_pp0_iter7_reg <= dy_1_reg_1768_pp0_iter6_reg;
        dy_1_reg_1768_pp0_iter8_reg <= dy_1_reg_1768_pp0_iter7_reg;
        dz_1_reg_1775_pp0_iter1_reg <= dz_1_reg_1775;
        dz_1_reg_1775_pp0_iter2_reg <= dz_1_reg_1775_pp0_iter1_reg;
        dz_1_reg_1775_pp0_iter3_reg <= dz_1_reg_1775_pp0_iter2_reg;
        dz_1_reg_1775_pp0_iter4_reg <= dz_1_reg_1775_pp0_iter3_reg;
        dz_1_reg_1775_pp0_iter5_reg <= dz_1_reg_1775_pp0_iter4_reg;
        dz_1_reg_1775_pp0_iter6_reg <= dz_1_reg_1775_pp0_iter5_reg;
        dz_1_reg_1775_pp0_iter7_reg <= dz_1_reg_1775_pp0_iter6_reg;
        dz_1_reg_1775_pp0_iter8_reg <= dz_1_reg_1775_pp0_iter7_reg;
        r6inv_1_reg_1861_pp0_iter7_reg <= r6inv_1_reg_1861;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        dx_reg_1743 <= grp_fu_614_p2;
        dy_reg_1749 <= grp_fu_618_p2;
        dz_reg_1755 <= grp_fu_622_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        dx_reg_1743_pp0_iter1_reg <= dx_reg_1743;
        dx_reg_1743_pp0_iter2_reg <= dx_reg_1743_pp0_iter1_reg;
        dx_reg_1743_pp0_iter3_reg <= dx_reg_1743_pp0_iter2_reg;
        dx_reg_1743_pp0_iter4_reg <= dx_reg_1743_pp0_iter3_reg;
        dx_reg_1743_pp0_iter5_reg <= dx_reg_1743_pp0_iter4_reg;
        dx_reg_1743_pp0_iter6_reg <= dx_reg_1743_pp0_iter5_reg;
        dx_reg_1743_pp0_iter7_reg <= dx_reg_1743_pp0_iter6_reg;
        dx_reg_1743_pp0_iter8_reg <= dx_reg_1743_pp0_iter7_reg;
        dy_reg_1749_pp0_iter1_reg <= dy_reg_1749;
        dy_reg_1749_pp0_iter2_reg <= dy_reg_1749_pp0_iter1_reg;
        dy_reg_1749_pp0_iter3_reg <= dy_reg_1749_pp0_iter2_reg;
        dy_reg_1749_pp0_iter4_reg <= dy_reg_1749_pp0_iter3_reg;
        dy_reg_1749_pp0_iter5_reg <= dy_reg_1749_pp0_iter4_reg;
        dy_reg_1749_pp0_iter6_reg <= dy_reg_1749_pp0_iter5_reg;
        dy_reg_1749_pp0_iter7_reg <= dy_reg_1749_pp0_iter6_reg;
        dy_reg_1749_pp0_iter8_reg <= dy_reg_1749_pp0_iter7_reg;
        dz_reg_1755_pp0_iter1_reg <= dz_reg_1755;
        dz_reg_1755_pp0_iter2_reg <= dz_reg_1755_pp0_iter1_reg;
        dz_reg_1755_pp0_iter3_reg <= dz_reg_1755_pp0_iter2_reg;
        dz_reg_1755_pp0_iter4_reg <= dz_reg_1755_pp0_iter3_reg;
        dz_reg_1755_pp0_iter5_reg <= dz_reg_1755_pp0_iter4_reg;
        dz_reg_1755_pp0_iter6_reg <= dz_reg_1755_pp0_iter5_reg;
        dz_reg_1755_pp0_iter7_reg <= dz_reg_1755_pp0_iter6_reg;
        dz_reg_1755_pp0_iter8_reg <= dz_reg_1755_pp0_iter7_reg;
        r6inv_reg_1856_pp0_iter7_reg <= r6inv_reg_1856;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        f_reg_1896 <= grp_fu_634_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln30_1_reg_1525 <= icmp_ln30_1_fu_819_p2;
        icmp_ln30_1_reg_1525_pp0_iter10_reg <= icmp_ln30_1_reg_1525_pp0_iter9_reg;
        icmp_ln30_1_reg_1525_pp0_iter1_reg <= icmp_ln30_1_reg_1525;
        icmp_ln30_1_reg_1525_pp0_iter2_reg <= icmp_ln30_1_reg_1525_pp0_iter1_reg;
        icmp_ln30_1_reg_1525_pp0_iter3_reg <= icmp_ln30_1_reg_1525_pp0_iter2_reg;
        icmp_ln30_1_reg_1525_pp0_iter4_reg <= icmp_ln30_1_reg_1525_pp0_iter3_reg;
        icmp_ln30_1_reg_1525_pp0_iter5_reg <= icmp_ln30_1_reg_1525_pp0_iter4_reg;
        icmp_ln30_1_reg_1525_pp0_iter6_reg <= icmp_ln30_1_reg_1525_pp0_iter5_reg;
        icmp_ln30_1_reg_1525_pp0_iter7_reg <= icmp_ln30_1_reg_1525_pp0_iter6_reg;
        icmp_ln30_1_reg_1525_pp0_iter8_reg <= icmp_ln30_1_reg_1525_pp0_iter7_reg;
        icmp_ln30_1_reg_1525_pp0_iter9_reg <= icmp_ln30_1_reg_1525_pp0_iter8_reg;
        icmp_ln30_reg_1423 <= icmp_ln30_fu_679_p2;
        icmp_ln30_reg_1423_pp0_iter10_reg <= icmp_ln30_reg_1423_pp0_iter9_reg;
        icmp_ln30_reg_1423_pp0_iter1_reg <= icmp_ln30_reg_1423;
        icmp_ln30_reg_1423_pp0_iter2_reg <= icmp_ln30_reg_1423_pp0_iter1_reg;
        icmp_ln30_reg_1423_pp0_iter3_reg <= icmp_ln30_reg_1423_pp0_iter2_reg;
        icmp_ln30_reg_1423_pp0_iter4_reg <= icmp_ln30_reg_1423_pp0_iter3_reg;
        icmp_ln30_reg_1423_pp0_iter5_reg <= icmp_ln30_reg_1423_pp0_iter4_reg;
        icmp_ln30_reg_1423_pp0_iter6_reg <= icmp_ln30_reg_1423_pp0_iter5_reg;
        icmp_ln30_reg_1423_pp0_iter7_reg <= icmp_ln30_reg_1423_pp0_iter6_reg;
        icmp_ln30_reg_1423_pp0_iter8_reg <= icmp_ln30_reg_1423_pp0_iter7_reg;
        icmp_ln30_reg_1423_pp0_iter9_reg <= icmp_ln30_reg_1423_pp0_iter8_reg;
        or_ln34_1_reg_1507 <= or_ln34_1_fu_739_p2;
        or_ln34_3_reg_1513 <= or_ln34_3_fu_765_p2;
        or_ln34_5_reg_1519 <= or_ln34_5_fu_791_p2;
        q_idx_1_reg_1418 <= q_idx_fu_176;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln34_12_reg_1655 <= icmp_ln34_12_fu_1112_p2;
        icmp_ln34_13_reg_1660 <= icmp_ln34_13_fu_1117_p2;
        icmp_ln34_14_reg_1665 <= icmp_ln34_14_fu_1122_p2;
        icmp_ln34_15_reg_1670 <= icmp_ln34_15_fu_1127_p2;
        icmp_ln34_16_reg_1675 <= icmp_ln34_16_fu_1132_p2;
        icmp_ln34_17_reg_1680 <= icmp_ln34_17_fu_1137_p2;
        icmp_ln34_1_reg_1630 <= icmp_ln34_1_fu_1087_p2;
        icmp_ln34_4_reg_1635 <= icmp_ln34_4_fu_1092_p2;
        icmp_ln34_5_reg_1640 <= icmp_ln34_5_fu_1097_p2;
        icmp_ln34_8_reg_1645 <= icmp_ln34_8_fu_1102_p2;
        icmp_ln34_9_reg_1650 <= icmp_ln34_9_fu_1107_p2;
        icmp_ln34_reg_1625 <= icmp_ln34_fu_1082_p2;
        q_y_reg_1619 <= q_y_fu_1078_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        mul170_1_reg_1802 <= grp_fu_634_p2;
        mul_1_reg_1797 <= grp_fu_630_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul172_1_reg_1807 <= grp_fu_630_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        mul174_1_reg_1851 <= grp_fu_630_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        mul176_1_reg_1871 <= grp_fu_634_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mul180_1_reg_1923 <= grp_fu_634_p2;
        mul7_reg_1918 <= grp_fu_630_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mul182_1_reg_1949 <= grp_fu_630_p2;
        mul184_1_reg_1954 <= grp_fu_634_p2;
        sum_x_6_reg_1928 <= ap_sig_allocacmp_sum_x_6;
        sum_y_6_reg_1935 <= ap_sig_allocacmp_sum_y_6;
        sum_z_6_reg_1942 <= ap_sig_allocacmp_sum_z_6;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul1_reg_1787 <= grp_fu_634_p2;
        mul_reg_1782 <= grp_fu_630_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul2_reg_1792 <= grp_fu_630_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        mul3_reg_1846 <= grp_fu_630_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul4_reg_1866 <= grp_fu_634_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mul5_reg_1908 <= grp_fu_630_p2;
        mul6_reg_1913 <= grp_fu_634_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        potential_1_reg_1891 <= grp_fu_634_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        potential_reg_1886 <= grp_fu_634_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        q_z_reg_1685 <= q_z_fu_1142_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r2inv_1_reg_1839 <= grp_fu_639_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        r2inv_1_reg_1839_pp0_iter7_reg <= r2inv_1_reg_1839;
        r2inv_1_reg_1839_pp0_iter8_reg <= r2inv_1_reg_1839_pp0_iter7_reg;
        tmp_13_reg_1589 <= {{select_ln31_13_fu_993_p3[62:52]}};
        tmp_15_reg_1599 <= {{select_ln31_13_fu_993_p3[126:116]}};
        tmp_17_reg_1609 <= {{select_ln31_13_fu_993_p3[190:180]}};
        tmp_3_reg_1554 <= {{select_ln31_6_fu_866_p3[126:116]}};
        tmp_reg_1544 <= {{select_ln31_6_fu_866_p3[62:52]}};
        tmp_s_reg_1564 <= {{select_ln31_6_fu_866_p3[190:180]}};
        trunc_ln31_1_reg_1534 <= {{select_ln31_6_fu_866_p3[127:64]}};
        trunc_ln31_2_reg_1539 <= {{select_ln31_6_fu_866_p3[191:128]}};
        trunc_ln31_3_reg_1574 <= trunc_ln31_3_fu_1000_p1;
        trunc_ln31_4_reg_1579 <= {{select_ln31_13_fu_993_p3[127:64]}};
        trunc_ln31_5_reg_1584 <= {{select_ln31_13_fu_993_p3[191:128]}};
        trunc_ln31_reg_1529 <= trunc_ln31_fu_873_p1;
        trunc_ln34_1_reg_1594 <= trunc_ln34_1_fu_1034_p1;
        trunc_ln34_2_reg_1559 <= {{select_ln31_6_fu_866_p3[115:64]}};
        trunc_ln34_4_reg_1569 <= {{select_ln31_6_fu_866_p3[179:128]}};
        trunc_ln34_8_reg_1604 <= {{select_ln31_13_fu_993_p3[115:64]}};
        trunc_ln34_reg_1549 <= trunc_ln34_fu_907_p1;
        trunc_ln34_s_reg_1614 <= {{select_ln31_13_fu_993_p3[179:128]}};
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        r2inv_reg_1832 <= grp_fu_639_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        r2inv_reg_1832_pp0_iter6_reg <= r2inv_reg_1832;
        r2inv_reg_1832_pp0_iter7_reg <= r2inv_reg_1832_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        r6inv_reg_1856 <= grp_fu_630_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        sext_ln24_cast_reg_1413 <= sext_ln24_cast_fu_648_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub177_1_reg_1881 <= grp_fu_614_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        sub_reg_1876 <= grp_fu_614_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sum_x_3_reg_538 <= ap_phi_reg_pp0_iter10_sum_x_3_reg_538;
        sum_y_3_reg_549 <= ap_phi_reg_pp0_iter10_sum_y_3_reg_549;
        sum_z_3_reg_560 <= ap_phi_reg_pp0_iter10_sum_z_3_reg_560;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_5_reg_1691 <= grp_fu_644_p2;
    end
end
assign ap_ST_fsm_state174_blk = 1'b0;
assign ap_ST_fsm_state175_blk = 1'b0;
assign ap_ST_fsm_state176_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15) & ((ap_predicate_tran165to174_state17 == 1'b1) | (icmp_ln30_reg_1423 == 1'd0)))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state176) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state176)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state176)) begin
        ap_return = UnifiedRetVal_reg_601;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_sig_allocacmp_sum_x_6 = ap_phi_reg_pp0_iter10_sum_x_5_reg_571;
    end else begin
        ap_sig_allocacmp_sum_x_6 = sum_x_1_fu_180;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_sig_allocacmp_sum_y_6 = ap_phi_reg_pp0_iter10_sum_y_5_reg_581;
    end else begin
        ap_sig_allocacmp_sum_y_6 = sum_y_1_fu_184;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        ap_sig_allocacmp_sum_z_6 = ap_phi_reg_pp0_iter10_sum_z_5_reg_591;
    end else begin
        ap_sig_allocacmp_sum_z_6 = sum_z_1_fu_188;
    end
end
always @ (*) begin
    if ((((1'd0 == and_ln34_15_fu_1267_p2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln30_1_reg_1525 == 1'd1) & (icmp_ln30_reg_1423 == 1'd1) & (1'b0 == ap_block_pp0_stage8_00001) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'd0 == and_ln34_7_fu_1199_p2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln30_reg_1423 == 1'd1) & (1'b0 == ap_block_pp0_stage5_00001) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_614_opcode = 2'd1;
end else if ((((1'd0 == and_ln34_7_reg_1707_pp0_iter9_reg) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln30_reg_1423_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_00001) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'd0 == and_ln34_15_reg_1739_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_00001) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'd0 == and_ln34_15_reg_1739_pp0_iter7_reg) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter7_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage9_00001) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'd0 == and_ln34_7_reg_1707_pp0_iter7_reg) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln30_reg_1423_pp0_iter7_reg == 1'd1) & (1'b0 == ap_block_pp0_stage6_00001) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'd0 == and_ln34_15_reg_1739_pp0_iter1_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter1_reg ==1'd1) & (icmp_ln30_reg_1423_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage15_00001) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'd0 == and_ln34_7_reg_1707_pp0_iter1_reg) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln30_reg_1423_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage12_00001) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'd0 == and_ln34_15_reg_1739) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter1_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage7_00001) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'd0 == and_ln34_7_reg_1707) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln30_reg_1423_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_00001) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_614_opcode = 2'd0;
    end else begin
        grp_fu_614_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_614_p0 = ap_phi_reg_pp0_iter10_sum_x_3_reg_538;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_614_p0 = ap_sig_allocacmp_sum_x_6;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_614_p0 = mul176_1_reg_1871;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_614_p0 = mul4_reg_1866;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_614_p0 = add171_1_reg_1817;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_614_p0 = add_reg_1812;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_614_p0 = mul_1_reg_1797;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_614_p0 = mul_reg_1782;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_614_p0 = p_x;
    end else begin
        grp_fu_614_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_614_p1 = mul180_1_reg_1923;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_614_p1 = mul5_reg_1908;
    end else if ((((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_614_p1 = 64'd13835058055282163712;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_614_p1 = mul172_1_reg_1807;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_614_p1 = mul2_reg_1792;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_614_p1 = mul170_1_reg_1802;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_614_p1 = mul1_reg_1787;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_614_p1 = q_x_1_reg_1711;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_614_p1 = q_x_reg_1696;
    end else begin
        grp_fu_614_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'd0 == and_ln34_15_fu_1267_p2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln30_1_reg_1525 == 1'd1) & (icmp_ln30_reg_1423 == 1'd1) & (1'b0 == ap_block_pp0_stage8_00001) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'd0 == and_ln34_7_fu_1199_p2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln30_reg_1423 == 1'd1) & (1'b0 == ap_block_pp0_stage5_00001) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_618_opcode = 2'd1;
    end else if ((((1'd0 == and_ln34_7_reg_1707_pp0_iter9_reg) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln30_reg_1423_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_00001) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'd0 == and_ln34_15_reg_1739_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_00001) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_618_opcode = 2'd0;
    end else begin
        grp_fu_618_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_618_p0 = ap_phi_reg_pp0_iter10_sum_y_3_reg_549;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_618_p0 = ap_sig_allocacmp_sum_y_6;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_618_p0 = p_y;
    end else begin
        grp_fu_618_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_618_p1 = mul182_1_reg_1949;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_618_p1 = mul6_reg_1913;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_618_p1 = q_y_1_reg_1728;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_618_p1 = q_y_reg_1619;
    end else begin
        grp_fu_618_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'd0 == and_ln34_15_fu_1267_p2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln30_1_reg_1525 == 1'd1) & (icmp_ln30_reg_1423 == 1'd1) & (1'b0 == ap_block_pp0_stage8_00001) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'd0 == and_ln34_7_fu_1199_p2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln30_reg_1423 == 1'd1) & (1'b0 == ap_block_pp0_stage5_00001) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_622_opcode = 2'd1;
    end else if ((((1'd0 == and_ln34_7_reg_1707_pp0_iter9_reg) & (ap_enable_reg_pp0_iter9 == 1'b1) & (icmp_ln30_reg_1423_pp0_iter9_reg == 1'd1) & (1'b0 == ap_block_pp0_stage11_00001) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'd0 == and_ln34_15_reg_1739_pp0_iter9_reg) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln30_1_reg_1525_pp0_iter10_reg == 1'd1) & (icmp_ln30_reg_1423_pp0_iter10_reg == 1'd1) & (1'b0 == ap_block_pp0_stage3_00001) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_622_opcode = 2'd0;
    end else begin
        grp_fu_622_opcode = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_622_p0 = ap_phi_reg_pp0_iter10_sum_z_3_reg_560;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_622_p0 = ap_sig_allocacmp_sum_z_6;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_622_p0 = p_z;
    end else begin
        grp_fu_622_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_622_p1 = mul184_1_reg_1954;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_622_p1 = mul7_reg_1918;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_622_p1 = q_z_1_reg_1717;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_622_p1 = q_z_reg_1685;
    end else begin
        grp_fu_622_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_630_p0 = f_1_reg_1902;
    end else if ((((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_630_p0 = f_reg_1896;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_630_p0 = mul174_1_reg_1851;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_630_p0 = mul3_reg_1846;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_630_p0 = r2inv_1_reg_1839;
    end else if (((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_630_p0 = r2inv_reg_1832;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_630_p0 = dz_1_reg_1775;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_630_p0 = dx_1_reg_1761;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_630_p0 = dz_reg_1755;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_630_p0 = dx_reg_1743;
    end else begin
        grp_fu_630_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_630_p1 = dy_1_reg_1768_pp0_iter8_reg;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_630_p1 = dz_reg_1755_pp0_iter8_reg;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_630_p1 = dx_reg_1743_pp0_iter8_reg;
    end else if ((((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9)))) begin
        grp_fu_630_p1 = r2inv_1_reg_1839;
    end else if ((((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((ap_enable_reg_pp0_iter5 == 1'b1) & (1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_630_p1 = r2inv_reg_1832;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_630_p1 = dz_1_reg_1775;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_630_p1 = dx_1_reg_1761;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_630_p1 = dz_reg_1755;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_630_p1 = dx_reg_1743;
    end else begin
        grp_fu_630_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_634_p0 = f_1_reg_1902;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_634_p0 = f_reg_1896;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_634_p0 = r2inv_1_reg_1839_pp0_iter8_reg;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_634_p0 = r2inv_reg_1832_pp0_iter7_reg;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_634_p0 = r6inv_1_reg_1861_pp0_iter7_reg;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_634_p0 = r6inv_reg_1856_pp0_iter7_reg;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_634_p0 = r6inv_1_reg_1861;
    end else if (((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_634_p0 = r6inv_reg_1856;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_634_p0 = dy_1_reg_1768;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_634_p0 = dy_reg_1749;
    end else begin
        grp_fu_634_p0 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_634_p1 = dz_1_reg_1775_pp0_iter8_reg;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_634_p1 = dx_1_reg_1761_pp0_iter8_reg;
    end else if (((ap_enable_reg_pp0_iter9 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_634_p1 = dy_reg_1749_pp0_iter8_reg;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_634_p1 = potential_1_reg_1891;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_634_p1 = potential_reg_1886;
    end else if (((ap_enable_reg_pp0_iter8 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_634_p1 = sub177_1_reg_1881;
    end else if (((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_634_p1 = sub_reg_1876;
    end else if ((((ap_enable_reg_pp0_iter7 == 1'b1) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_enable_reg_pp0_iter6 == 1'b1) & (1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        grp_fu_634_p1 = 64'd4609434218613702656;
    end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_634_p1 = dy_1_reg_1768;
    end else if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_634_p1 = dy_reg_1749;
    end else begin
        grp_fu_634_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_639_p1 = add173_1_reg_1827;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_639_p1 = add1_reg_1822;
        end else begin
            grp_fu_639_p1 = 'bx;
        end
    end else begin
        grp_fu_639_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_644_p0 = q_y_1_fu_1228_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_644_p0 = q_z_1_fu_1209_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_644_p0 = q_x_1_fu_1205_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_644_p0 = q_x_fu_1146_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_644_p0 = q_z_fu_1142_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_644_p0 = q_y_fu_1078_p1;
        end else begin
            grp_fu_644_p0 = 'bx;
        end
    end else begin
        grp_fu_644_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        grp_fu_644_p1 = p_x;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        grp_fu_644_p1 = p_z;
    end else if ((((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        grp_fu_644_p1 = p_y;
    end else begin
        grp_fu_644_p1 = 'bx;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_0_0_0_ce0_local = 1'b1;
    end else begin
        position_0_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_0_0_1_ce0_local = 1'b1;
    end else begin
        position_0_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_0_1_0_ce0_local = 1'b1;
    end else begin
        position_0_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_0_1_1_ce0_local = 1'b1;
    end else begin
        position_0_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_1_0_0_ce0_local = 1'b1;
    end else begin
        position_0_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_1_0_1_ce0_local = 1'b1;
    end else begin
        position_0_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_1_1_0_ce0_local = 1'b1;
    end else begin
        position_0_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_0_1_1_1_ce0_local = 1'b1;
    end else begin
        position_0_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_0_0_0_ce0_local = 1'b1;
    end else begin
        position_1_0_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_0_0_1_ce0_local = 1'b1;
    end else begin
        position_1_0_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_0_1_0_ce0_local = 1'b1;
    end else begin
        position_1_0_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_0_1_1_ce0_local = 1'b1;
    end else begin
        position_1_0_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_1_0_0_ce0_local = 1'b1;
    end else begin
        position_1_1_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_1_0_1_ce0_local = 1'b1;
    end else begin
        position_1_1_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_1_1_0_ce0_local = 1'b1;
    end else begin
        position_1_1_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        position_1_1_1_1_ce0_local = 1'b1;
    end else begin
        position_1_1_1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state174) | (1'b1 == ap_CS_fsm_state175))) begin
        sum_x_1_out_ap_vld = 1'b1;
    end else begin
        sum_x_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state174)) begin
        sum_x_3_out_ap_vld = 1'b1;
    end else begin
        sum_x_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state174) | (1'b1 == ap_CS_fsm_state175))) begin
        sum_y_1_out_ap_vld = 1'b1;
    end else begin
        sum_y_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state174)) begin
        sum_y_3_out_ap_vld = 1'b1;
    end else begin
        sum_y_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state174) | (1'b1 == ap_CS_fsm_state175))) begin
        sum_z_1_out_ap_vld = 1'b1;
    end else begin
        sum_z_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state174)) begin
        sum_z_3_out_ap_vld = 1'b1;
    end else begin
        sum_z_3_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
            if ((~((ap_enable_reg_pp0_iter10 == 1'b1) & (ap_enable_reg_pp0_iter9 == 1'b0) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3)) & (1'b0 == ap_block_pp0_stage3_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (ap_enable_reg_pp0_iter9 == 1'b0) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_exit_tran_regpp0 == 2'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state175;
            end else if (((ap_enable_reg_pp0_iter10 == 1'b1) & (ap_enable_reg_pp0_iter9 == 1'b0) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_exit_tran_regpp0 == 2'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state174;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_state174 : begin
            ap_NS_fsm = ap_ST_fsm_state176;
        end
        ap_ST_fsm_state175 : begin
            ap_NS_fsm = ap_ST_fsm_state176;
        end
        ap_ST_fsm_state176 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln30_fu_1272_p2 = (q_idx_1_reg_1418 + 32'd2);
assign add_ln31_fu_694_p2 = (mul_ln31 + lshr_ln10_1_fu_684_p4);
assign and_ln34_10_fu_1251_p2 = (or_ln34_3_reg_1513 & grp_fu_644_p2);
assign and_ln34_11_fu_1256_p2 = (or_ln34_7_fu_1247_p2 & and_ln34_10_fu_1251_p2);
assign and_ln34_12_fu_1236_p2 = (or_ln34_5_reg_1519 & grp_fu_644_p2);
assign and_ln34_13_fu_1241_p2 = (or_ln34_8_fu_1232_p2 & and_ln34_12_fu_1236_p2);
assign and_ln34_14_fu_1262_p2 = (and_ln34_13_reg_1734 & and_ln34_11_fu_1256_p2);
assign and_ln34_15_fu_1267_p2 = (and_ln34_9_reg_1723 & and_ln34_14_fu_1262_p2);
assign and_ln34_1_fu_1169_p2 = (grp_fu_644_p2 & and_ln34_fu_1164_p2);
assign and_ln34_2_fu_1154_p2 = (or_ln34_2_fu_1150_p2 & grp_fu_644_p2);
assign and_ln34_3_fu_1189_p2 = (and_ln34_5_fu_1183_p2 & and_ln34_2_reg_1702);
assign and_ln34_4_fu_1179_p2 = (or_ln34_5_reg_1519 & or_ln34_3_reg_1513);
assign and_ln34_5_fu_1183_p2 = (or_ln34_4_fu_1175_p2 & and_ln34_4_fu_1179_p2);
assign and_ln34_6_fu_1194_p2 = (tmp_5_reg_1691 & and_ln34_3_fu_1189_p2);
assign and_ln34_7_fu_1199_p2 = (and_ln34_6_fu_1194_p2 & and_ln34_1_fu_1169_p2);
assign and_ln34_8_fu_1217_p2 = (or_ln34_6_fu_1213_p2 & or_ln34_1_reg_1507);
assign and_ln34_9_fu_1222_p2 = (grp_fu_644_p2 & and_ln34_8_fu_1217_p2);
assign and_ln34_fu_1164_p2 = (or_ln34_fu_1160_p2 & or_ln34_1_reg_1507);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state174 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state175 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state176 = ap_CS_fsm[32'd19];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_phi_reg_pp0_iter0_sum_x_3_reg_538 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_x_5_reg_571 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_y_3_reg_549 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_y_5_reg_581 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_z_3_reg_560 = 'bx;
assign ap_phi_reg_pp0_iter0_sum_z_5_reg_591 = 'bx;
always @ (*) begin
    ap_predicate_tran165to174_state17 = ((icmp_ln30_1_reg_1525 == 1'd0) & (icmp_ln30_reg_1423 == 1'd1));
end
assign icmp_ln30_1_fu_819_p2 = (($signed(zext_ln28_fu_815_p1) < $signed(q_idx_range)) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_679_p2 = (($signed(zext_ln30_fu_675_p1) < $signed(sext_ln24_cast_reg_1413)) ? 1'b1 : 1'b0);
assign icmp_ln34_10_fu_780_p2 = ((tmp_10_fu_771_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_11_fu_786_p2 = ((trunc_ln34_5 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_12_fu_1112_p2 = ((tmp_13_reg_1589 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_13_fu_1117_p2 = ((trunc_ln34_1_reg_1594 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_14_fu_1122_p2 = ((tmp_15_reg_1599 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_15_fu_1127_p2 = ((trunc_ln34_8_reg_1604 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_16_fu_1132_p2 = ((tmp_17_reg_1609 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_17_fu_1137_p2 = ((trunc_ln34_s_reg_1614 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_1_fu_1087_p2 = ((trunc_ln34_reg_1549 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_2_fu_728_p2 = ((tmp_1_fu_719_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_3_fu_734_p2 = ((empty == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_4_fu_1092_p2 = ((tmp_3_reg_1554 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_5_fu_1097_p2 = ((trunc_ln34_2_reg_1559 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_6_fu_754_p2 = ((tmp_4_fu_745_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_7_fu_760_p2 = ((trunc_ln34_3 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_8_fu_1102_p2 = ((tmp_s_reg_1564 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln34_9_fu_1107_p2 = ((trunc_ln34_4_reg_1569 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln34_fu_1082_p2 = ((tmp_reg_1544 != 11'd2047) ? 1'b1 : 1'b0);
assign lshr_ln10_1_fu_684_p4 = {{q_idx_fu_176[6:1]}};
assign or_ln1_fu_807_p3 = {{tmp_12_fu_797_p4}, {1'd1}};
assign or_ln34_1_fu_739_p2 = (icmp_ln34_3_fu_734_p2 | icmp_ln34_2_fu_728_p2);
assign or_ln34_2_fu_1150_p2 = (icmp_ln34_5_reg_1640 | icmp_ln34_4_reg_1635);
assign or_ln34_3_fu_765_p2 = (icmp_ln34_7_fu_760_p2 | icmp_ln34_6_fu_754_p2);
assign or_ln34_4_fu_1175_p2 = (icmp_ln34_9_reg_1650 | icmp_ln34_8_reg_1645);
assign or_ln34_5_fu_791_p2 = (icmp_ln34_11_fu_786_p2 | icmp_ln34_10_fu_780_p2);
assign or_ln34_6_fu_1213_p2 = (icmp_ln34_13_reg_1660 | icmp_ln34_12_reg_1655);
assign or_ln34_7_fu_1247_p2 = (icmp_ln34_15_reg_1670 | icmp_ln34_14_reg_1665);
assign or_ln34_8_fu_1232_p2 = (icmp_ln34_17_reg_1680 | icmp_ln34_16_reg_1675);
assign or_ln34_fu_1160_p2 = (icmp_ln34_reg_1625 | icmp_ln34_1_reg_1630);
assign position_0_0_0_0_address0 = zext_ln31_fu_699_p1;
assign position_0_0_0_0_ce0 = position_0_0_0_0_ce0_local;
assign position_0_0_0_1_address0 = zext_ln31_fu_699_p1;
assign position_0_0_0_1_ce0 = position_0_0_0_1_ce0_local;
assign position_0_0_1_0_address0 = zext_ln31_fu_699_p1;
assign position_0_0_1_0_ce0 = position_0_0_1_0_ce0_local;
assign position_0_0_1_1_address0 = zext_ln31_fu_699_p1;
assign position_0_0_1_1_ce0 = position_0_0_1_1_ce0_local;
assign position_0_1_0_0_address0 = zext_ln31_fu_699_p1;
assign position_0_1_0_0_ce0 = position_0_1_0_0_ce0_local;
assign position_0_1_0_1_address0 = zext_ln31_fu_699_p1;
assign position_0_1_0_1_ce0 = position_0_1_0_1_ce0_local;
assign position_0_1_1_0_address0 = zext_ln31_fu_699_p1;
assign position_0_1_1_0_ce0 = position_0_1_1_0_ce0_local;
assign position_0_1_1_1_address0 = zext_ln31_fu_699_p1;
assign position_0_1_1_1_ce0 = position_0_1_1_1_ce0_local;
assign position_1_0_0_0_address0 = zext_ln31_fu_699_p1;
assign position_1_0_0_0_ce0 = position_1_0_0_0_ce0_local;
assign position_1_0_0_1_address0 = zext_ln31_fu_699_p1;
assign position_1_0_0_1_ce0 = position_1_0_0_1_ce0_local;
assign position_1_0_1_0_address0 = zext_ln31_fu_699_p1;
assign position_1_0_1_0_ce0 = position_1_0_1_0_ce0_local;
assign position_1_0_1_1_address0 = zext_ln31_fu_699_p1;
assign position_1_0_1_1_ce0 = position_1_0_1_1_ce0_local;
assign position_1_1_0_0_address0 = zext_ln31_fu_699_p1;
assign position_1_1_0_0_ce0 = position_1_1_0_0_ce0_local;
assign position_1_1_0_1_address0 = zext_ln31_fu_699_p1;
assign position_1_1_0_1_ce0 = position_1_1_0_1_ce0_local;
assign position_1_1_1_0_address0 = zext_ln31_fu_699_p1;
assign position_1_1_1_0_ce0 = position_1_1_1_0_ce0_local;
assign position_1_1_1_1_address0 = zext_ln31_fu_699_p1;
assign position_1_1_1_1_ce0 = position_1_1_1_1_ce0_local;
assign q_x_1_fu_1205_p1 = trunc_ln31_3_reg_1574;
assign q_x_fu_1146_p1 = trunc_ln31_reg_1529;
assign q_y_1_fu_1228_p1 = trunc_ln31_4_reg_1579;
assign q_y_fu_1078_p1 = trunc_ln31_1_reg_1534;
assign q_z_1_fu_1209_p1 = trunc_ln31_5_reg_1584;
assign q_z_fu_1142_p1 = trunc_ln31_2_reg_1539;
assign select_ln31_10_fu_972_p3 = ((empty_10[0:0] == 1'b1) ? position_1_0_1_1_q0 : position_1_0_0_1_q0);
assign select_ln31_11_fu_979_p3 = ((empty_10[0:0] == 1'b1) ? position_1_1_1_1_q0 : position_1_1_0_1_q0);
assign select_ln31_12_fu_986_p3 = ((empty_11[0:0] == 1'b1) ? select_ln31_11_fu_979_p3 : select_ln31_10_fu_972_p3);
assign select_ln31_13_fu_993_p3 = ((empty_12[0:0] == 1'b1) ? select_ln31_12_fu_986_p3 : select_ln31_9_fu_965_p3);
assign select_ln31_1_fu_831_p3 = ((empty_10[0:0] == 1'b1) ? position_0_1_1_0_q0 : position_0_1_0_0_q0);
assign select_ln31_2_fu_838_p3 = ((empty_11[0:0] == 1'b1) ? select_ln31_1_fu_831_p3 : select_ln31_fu_824_p3);
assign select_ln31_3_fu_845_p3 = ((empty_10[0:0] == 1'b1) ? position_1_0_1_0_q0 : position_1_0_0_0_q0);
assign select_ln31_4_fu_852_p3 = ((empty_10[0:0] == 1'b1) ? position_1_1_1_0_q0 : position_1_1_0_0_q0);
assign select_ln31_5_fu_859_p3 = ((empty_11[0:0] == 1'b1) ? select_ln31_4_fu_852_p3 : select_ln31_3_fu_845_p3);
assign select_ln31_6_fu_866_p3 = ((empty_12[0:0] == 1'b1) ? select_ln31_5_fu_859_p3 : select_ln31_2_fu_838_p3);
assign select_ln31_7_fu_951_p3 = ((empty_10[0:0] == 1'b1) ? position_0_0_1_1_q0 : position_0_0_0_1_q0);
assign select_ln31_8_fu_958_p3 = ((empty_10[0:0] == 1'b1) ? position_0_1_1_1_q0 : position_0_1_0_1_q0);
assign select_ln31_9_fu_965_p3 = ((empty_11[0:0] == 1'b1) ? select_ln31_8_fu_958_p3 : select_ln31_7_fu_951_p3);
assign select_ln31_fu_824_p3 = ((empty_10[0:0] == 1'b1) ? position_0_0_1_0_q0 : position_0_0_0_0_q0);
assign sext_ln24_cast_fu_648_p1 = $signed(sext_ln24);
assign sum_x_1_out = sum_x_6_reg_1928;
assign sum_x_3_out = sum_x_3_reg_538;
assign sum_y_1_out = sum_y_6_reg_1935;
assign sum_y_3_out = sum_y_3_reg_549;
assign sum_z_1_out = sum_z_6_reg_1942;
assign sum_z_3_out = sum_z_3_reg_560;
assign tmp_10_fu_771_p4 = {{select_ln25_14[190:180]}};
assign tmp_12_fu_797_p4 = {{q_idx_fu_176[30:1]}};
assign tmp_1_fu_719_p4 = {{select_ln25_14[62:52]}};
assign tmp_4_fu_745_p4 = {{select_ln25_14[126:116]}};
assign trunc_ln31_3_fu_1000_p1 = select_ln31_13_fu_993_p3[63:0];
assign trunc_ln31_fu_873_p1 = select_ln31_6_fu_866_p3[63:0];
assign trunc_ln34_1_fu_1034_p1 = select_ln31_13_fu_993_p3[51:0];
assign trunc_ln34_fu_907_p1 = select_ln31_6_fu_866_p3[51:0];
assign zext_ln28_fu_815_p1 = or_ln1_fu_807_p3;
assign zext_ln30_fu_675_p1 = q_idx_fu_176;
assign zext_ln31_fu_699_p1 = add_ln31_fu_694_p2;
always @ (posedge ap_clk) begin
    ap_exit_tran_regpp0[1] <= 1'b0;
end
endmodule 