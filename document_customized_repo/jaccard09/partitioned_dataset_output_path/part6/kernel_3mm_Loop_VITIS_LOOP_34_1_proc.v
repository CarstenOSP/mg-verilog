
module kernel_3mm_Loop_VITIS_LOOP_34_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v268_13_address0,v268_13_ce0,v268_13_we0,v268_13_d0,v268_13_address1,v268_13_ce1,v268_13_q1,v268_12_address0,v268_12_ce0,v268_12_we0,v268_12_d0,v268_12_address1,v268_12_ce1,v268_12_q1,v268_11_address0,v268_11_ce0,v268_11_we0,v268_11_d0,v268_11_address1,v268_11_ce1,v268_11_q1,v268_10_address0,v268_10_ce0,v268_10_we0,v268_10_d0,v268_10_address1,v268_10_ce1,v268_10_q1,v268_9_address0,v268_9_ce0,v268_9_we0,v268_9_d0,v268_9_address1,v268_9_ce1,v268_9_q1,v268_8_address0,v268_8_ce0,v268_8_we0,v268_8_d0,v268_8_address1,v268_8_ce1,v268_8_q1,v268_7_address0,v268_7_ce0,v268_7_we0,v268_7_d0,v268_7_address1,v268_7_ce1,v268_7_q1,v268_6_address0,v268_6_ce0,v268_6_we0,v268_6_d0,v268_6_address1,v268_6_ce1,v268_6_q1,v268_5_address0,v268_5_ce0,v268_5_we0,v268_5_d0,v268_5_address1,v268_5_ce1,v268_5_q1,v268_4_address0,v268_4_ce0,v268_4_we0,v268_4_d0,v268_4_address1,v268_4_ce1,v268_4_q1,v268_3_address0,v268_3_ce0,v268_3_we0,v268_3_d0,v268_3_address1,v268_3_ce1,v268_3_q1,v268_2_address0,v268_2_ce0,v268_2_we0,v268_2_d0,v268_2_address1,v268_2_ce1,v268_2_q1,v268_1_address0,v268_1_ce0,v268_1_we0,v268_1_d0,v268_1_address1,v268_1_ce1,v268_1_q1,v268_0_address0,v268_0_ce0,v268_0_we0,v268_0_d0,v268_0_address1,v268_0_ce1,v268_0_q1,v260_address0,v260_ce0,v260_q0,v264_0_address0,v264_0_ce0,v264_0_q0,v264_1_address0,v264_1_ce0,v264_1_q0,v264_2_address0,v264_2_ce0,v264_2_q0,v264_3_address0,v264_3_ce0,v264_3_q0,v264_4_address0,v264_4_ce0,v264_4_q0,v264_5_address0,v264_5_ce0,v264_5_q0,v264_6_address0,v264_6_ce0,v264_6_q0,v264_7_address0,v264_7_ce0,v264_7_q0,v264_8_address0,v264_8_ce0,v264_8_q0,v264_9_address0,v264_9_ce0,v264_9_q0,v264_10_address0,v264_10_ce0,v264_10_q0,v264_11_address0,v264_11_ce0,v264_11_q0,v264_12_address0,v264_12_ce0,v264_12_q0,v264_13_address0,v264_13_ce0,v264_13_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] v268_13_address0;
output   v268_13_ce0;
output   v268_13_we0;
output  [31:0] v268_13_d0;
output  [11:0] v268_13_address1;
output   v268_13_ce1;
input  [31:0] v268_13_q1;
output  [11:0] v268_12_address0;
output   v268_12_ce0;
output   v268_12_we0;
output  [31:0] v268_12_d0;
output  [11:0] v268_12_address1;
output   v268_12_ce1;
input  [31:0] v268_12_q1;
output  [11:0] v268_11_address0;
output   v268_11_ce0;
output   v268_11_we0;
output  [31:0] v268_11_d0;
output  [11:0] v268_11_address1;
output   v268_11_ce1;
input  [31:0] v268_11_q1;
output  [11:0] v268_10_address0;
output   v268_10_ce0;
output   v268_10_we0;
output  [31:0] v268_10_d0;
output  [11:0] v268_10_address1;
output   v268_10_ce1;
input  [31:0] v268_10_q1;
output  [11:0] v268_9_address0;
output   v268_9_ce0;
output   v268_9_we0;
output  [31:0] v268_9_d0;
output  [11:0] v268_9_address1;
output   v268_9_ce1;
input  [31:0] v268_9_q1;
output  [11:0] v268_8_address0;
output   v268_8_ce0;
output   v268_8_we0;
output  [31:0] v268_8_d0;
output  [11:0] v268_8_address1;
output   v268_8_ce1;
input  [31:0] v268_8_q1;
output  [11:0] v268_7_address0;
output   v268_7_ce0;
output   v268_7_we0;
output  [31:0] v268_7_d0;
output  [11:0] v268_7_address1;
output   v268_7_ce1;
input  [31:0] v268_7_q1;
output  [11:0] v268_6_address0;
output   v268_6_ce0;
output   v268_6_we0;
output  [31:0] v268_6_d0;
output  [11:0] v268_6_address1;
output   v268_6_ce1;
input  [31:0] v268_6_q1;
output  [11:0] v268_5_address0;
output   v268_5_ce0;
output   v268_5_we0;
output  [31:0] v268_5_d0;
output  [11:0] v268_5_address1;
output   v268_5_ce1;
input  [31:0] v268_5_q1;
output  [11:0] v268_4_address0;
output   v268_4_ce0;
output   v268_4_we0;
output  [31:0] v268_4_d0;
output  [11:0] v268_4_address1;
output   v268_4_ce1;
input  [31:0] v268_4_q1;
output  [11:0] v268_3_address0;
output   v268_3_ce0;
output   v268_3_we0;
output  [31:0] v268_3_d0;
output  [11:0] v268_3_address1;
output   v268_3_ce1;
input  [31:0] v268_3_q1;
output  [11:0] v268_2_address0;
output   v268_2_ce0;
output   v268_2_we0;
output  [31:0] v268_2_d0;
output  [11:0] v268_2_address1;
output   v268_2_ce1;
input  [31:0] v268_2_q1;
output  [11:0] v268_1_address0;
output   v268_1_ce0;
output   v268_1_we0;
output  [31:0] v268_1_d0;
output  [11:0] v268_1_address1;
output   v268_1_ce1;
input  [31:0] v268_1_q1;
output  [11:0] v268_0_address0;
output   v268_0_ce0;
output   v268_0_we0;
output  [31:0] v268_0_d0;
output  [11:0] v268_0_address1;
output   v268_0_ce1;
input  [31:0] v268_0_q1;
output  [15:0] v260_address0;
output   v260_ce0;
input  [31:0] v260_q0;
output  [11:0] v264_0_address0;
output   v264_0_ce0;
input  [31:0] v264_0_q0;
output  [11:0] v264_1_address0;
output   v264_1_ce0;
input  [31:0] v264_1_q0;
output  [11:0] v264_2_address0;
output   v264_2_ce0;
input  [31:0] v264_2_q0;
output  [11:0] v264_3_address0;
output   v264_3_ce0;
input  [31:0] v264_3_q0;
output  [11:0] v264_4_address0;
output   v264_4_ce0;
input  [31:0] v264_4_q0;
output  [11:0] v264_5_address0;
output   v264_5_ce0;
input  [31:0] v264_5_q0;
output  [11:0] v264_6_address0;
output   v264_6_ce0;
input  [31:0] v264_6_q0;
output  [11:0] v264_7_address0;
output   v264_7_ce0;
input  [31:0] v264_7_q0;
output  [11:0] v264_8_address0;
output   v264_8_ce0;
input  [31:0] v264_8_q0;
output  [11:0] v264_9_address0;
output   v264_9_ce0;
input  [31:0] v264_9_q0;
output  [11:0] v264_10_address0;
output   v264_10_ce0;
input  [31:0] v264_10_q0;
output  [11:0] v264_11_address0;
output   v264_11_ce0;
input  [31:0] v264_11_q0;
output  [11:0] v264_12_address0;
output   v264_12_ce0;
input  [31:0] v264_12_q0;
output  [11:0] v264_13_address0;
output   v264_13_ce0;
input  [31:0] v264_13_q0;
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
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln34_fu_855_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
wire    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter6_reg;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter7_reg;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln35177_reg_579;
reg   [0:0] icmp_ln35177_reg_579_pp0_iter1_reg;
wire   [7:0] v6_fu_785_p3;
reg   [7:0] v6_reg_1325;
reg   [7:0] v6_reg_1325_pp0_iter1_reg;
reg   [7:0] v6_reg_1325_pp0_iter2_reg;
reg   [4:0] tmp_reg_1336;
reg   [4:0] tmp_reg_1336_pp0_iter1_reg;
reg   [4:0] tmp_reg_1336_pp0_iter2_reg;
wire   [0:0] icmp_ln36_fu_843_p2;
reg   [0:0] icmp_ln36_reg_1341;
wire   [0:0] icmp_ln35_fu_849_p2;
reg   [0:0] icmp_ln35_reg_1346;
reg   [0:0] icmp_ln34_reg_1351;
wire   [7:0] v5_fu_890_p3;
reg   [7:0] v5_reg_1355;
wire   [0:0] cmp12_i_fu_923_p2;
reg   [0:0] cmp12_i_reg_1367;
reg   [0:0] cmp12_i_reg_1367_pp0_iter4_reg;
reg   [0:0] cmp12_i_reg_1367_pp0_iter5_reg;
reg   [0:0] cmp12_i_reg_1367_pp0_iter6_reg;
reg   [0:0] cmp12_i_reg_1367_pp0_iter7_reg;
wire   [11:0] add_ln117_fu_951_p2;
reg   [11:0] add_ln117_reg_1390;
reg   [11:0] add_ln117_reg_1390_pp0_iter4_reg;
reg   [11:0] add_ln117_reg_1390_pp0_iter5_reg;
reg   [11:0] add_ln117_reg_1390_pp0_iter6_reg;
reg   [31:0] v260_load_reg_1465;
reg   [31:0] v264_0_load_reg_1470;
reg   [31:0] v264_1_load_reg_1475;
reg   [31:0] v264_2_load_reg_1480;
reg   [31:0] v264_3_load_reg_1485;
reg   [31:0] v264_4_load_reg_1490;
reg   [31:0] v264_5_load_reg_1495;
reg   [31:0] v264_6_load_reg_1500;
reg   [31:0] v264_7_load_reg_1505;
reg   [31:0] v264_8_load_reg_1510;
reg   [31:0] v264_9_load_reg_1515;
reg   [31:0] v264_10_load_reg_1520;
reg   [31:0] v264_11_load_reg_1525;
reg   [31:0] v264_12_load_reg_1530;
reg   [31:0] v264_13_load_reg_1535;
wire   [31:0] v10_fu_981_p1;
reg   [11:0] v268_13_addr_reg_1628;
reg   [11:0] v268_13_addr_reg_1628_pp0_iter8_reg;
reg   [11:0] v268_13_addr_reg_1628_pp0_iter9_reg;
reg   [11:0] v268_13_addr_reg_1628_pp0_iter10_reg;
reg   [11:0] v268_13_addr_reg_1628_pp0_iter11_reg;
reg   [11:0] v268_13_addr_reg_1628_pp0_iter12_reg;
reg   [11:0] v268_13_addr_reg_1628_pp0_iter13_reg;
reg   [11:0] v268_12_addr_reg_1634;
reg   [11:0] v268_12_addr_reg_1634_pp0_iter8_reg;
reg   [11:0] v268_12_addr_reg_1634_pp0_iter9_reg;
reg   [11:0] v268_12_addr_reg_1634_pp0_iter10_reg;
reg   [11:0] v268_12_addr_reg_1634_pp0_iter11_reg;
reg   [11:0] v268_12_addr_reg_1634_pp0_iter12_reg;
reg   [11:0] v268_12_addr_reg_1634_pp0_iter13_reg;
reg   [11:0] v268_11_addr_reg_1640;
reg   [11:0] v268_11_addr_reg_1640_pp0_iter8_reg;
reg   [11:0] v268_11_addr_reg_1640_pp0_iter9_reg;
reg   [11:0] v268_11_addr_reg_1640_pp0_iter10_reg;
reg   [11:0] v268_11_addr_reg_1640_pp0_iter11_reg;
reg   [11:0] v268_11_addr_reg_1640_pp0_iter12_reg;
reg   [11:0] v268_11_addr_reg_1640_pp0_iter13_reg;
reg   [11:0] v268_10_addr_reg_1646;
reg   [11:0] v268_10_addr_reg_1646_pp0_iter8_reg;
reg   [11:0] v268_10_addr_reg_1646_pp0_iter9_reg;
reg   [11:0] v268_10_addr_reg_1646_pp0_iter10_reg;
reg   [11:0] v268_10_addr_reg_1646_pp0_iter11_reg;
reg   [11:0] v268_10_addr_reg_1646_pp0_iter12_reg;
reg   [11:0] v268_10_addr_reg_1646_pp0_iter13_reg;
reg   [11:0] v268_9_addr_reg_1652;
reg   [11:0] v268_9_addr_reg_1652_pp0_iter8_reg;
reg   [11:0] v268_9_addr_reg_1652_pp0_iter9_reg;
reg   [11:0] v268_9_addr_reg_1652_pp0_iter10_reg;
reg   [11:0] v268_9_addr_reg_1652_pp0_iter11_reg;
reg   [11:0] v268_9_addr_reg_1652_pp0_iter12_reg;
reg   [11:0] v268_9_addr_reg_1652_pp0_iter13_reg;
reg   [11:0] v268_8_addr_reg_1658;
reg   [11:0] v268_8_addr_reg_1658_pp0_iter8_reg;
reg   [11:0] v268_8_addr_reg_1658_pp0_iter9_reg;
reg   [11:0] v268_8_addr_reg_1658_pp0_iter10_reg;
reg   [11:0] v268_8_addr_reg_1658_pp0_iter11_reg;
reg   [11:0] v268_8_addr_reg_1658_pp0_iter12_reg;
reg   [11:0] v268_8_addr_reg_1658_pp0_iter13_reg;
reg   [11:0] v268_7_addr_reg_1664;
reg   [11:0] v268_7_addr_reg_1664_pp0_iter8_reg;
reg   [11:0] v268_7_addr_reg_1664_pp0_iter9_reg;
reg   [11:0] v268_7_addr_reg_1664_pp0_iter10_reg;
reg   [11:0] v268_7_addr_reg_1664_pp0_iter11_reg;
reg   [11:0] v268_7_addr_reg_1664_pp0_iter12_reg;
reg   [11:0] v268_7_addr_reg_1664_pp0_iter13_reg;
reg   [11:0] v268_6_addr_reg_1670;
reg   [11:0] v268_6_addr_reg_1670_pp0_iter8_reg;
reg   [11:0] v268_6_addr_reg_1670_pp0_iter9_reg;
reg   [11:0] v268_6_addr_reg_1670_pp0_iter10_reg;
reg   [11:0] v268_6_addr_reg_1670_pp0_iter11_reg;
reg   [11:0] v268_6_addr_reg_1670_pp0_iter12_reg;
reg   [11:0] v268_6_addr_reg_1670_pp0_iter13_reg;
reg   [11:0] v268_5_addr_reg_1676;
reg   [11:0] v268_5_addr_reg_1676_pp0_iter8_reg;
reg   [11:0] v268_5_addr_reg_1676_pp0_iter9_reg;
reg   [11:0] v268_5_addr_reg_1676_pp0_iter10_reg;
reg   [11:0] v268_5_addr_reg_1676_pp0_iter11_reg;
reg   [11:0] v268_5_addr_reg_1676_pp0_iter12_reg;
reg   [11:0] v268_5_addr_reg_1676_pp0_iter13_reg;
reg   [11:0] v268_4_addr_reg_1682;
reg   [11:0] v268_4_addr_reg_1682_pp0_iter8_reg;
reg   [11:0] v268_4_addr_reg_1682_pp0_iter9_reg;
reg   [11:0] v268_4_addr_reg_1682_pp0_iter10_reg;
reg   [11:0] v268_4_addr_reg_1682_pp0_iter11_reg;
reg   [11:0] v268_4_addr_reg_1682_pp0_iter12_reg;
reg   [11:0] v268_4_addr_reg_1682_pp0_iter13_reg;
reg   [11:0] v268_3_addr_reg_1688;
reg   [11:0] v268_3_addr_reg_1688_pp0_iter8_reg;
reg   [11:0] v268_3_addr_reg_1688_pp0_iter9_reg;
reg   [11:0] v268_3_addr_reg_1688_pp0_iter10_reg;
reg   [11:0] v268_3_addr_reg_1688_pp0_iter11_reg;
reg   [11:0] v268_3_addr_reg_1688_pp0_iter12_reg;
reg   [11:0] v268_3_addr_reg_1688_pp0_iter13_reg;
reg   [11:0] v268_2_addr_reg_1694;
reg   [11:0] v268_2_addr_reg_1694_pp0_iter8_reg;
reg   [11:0] v268_2_addr_reg_1694_pp0_iter9_reg;
reg   [11:0] v268_2_addr_reg_1694_pp0_iter10_reg;
reg   [11:0] v268_2_addr_reg_1694_pp0_iter11_reg;
reg   [11:0] v268_2_addr_reg_1694_pp0_iter12_reg;
reg   [11:0] v268_2_addr_reg_1694_pp0_iter13_reg;
reg   [11:0] v268_1_addr_reg_1700;
reg   [11:0] v268_1_addr_reg_1700_pp0_iter8_reg;
reg   [11:0] v268_1_addr_reg_1700_pp0_iter9_reg;
reg   [11:0] v268_1_addr_reg_1700_pp0_iter10_reg;
reg   [11:0] v268_1_addr_reg_1700_pp0_iter11_reg;
reg   [11:0] v268_1_addr_reg_1700_pp0_iter12_reg;
reg   [11:0] v268_1_addr_reg_1700_pp0_iter13_reg;
reg   [11:0] v268_0_addr_reg_1706;
reg   [11:0] v268_0_addr_reg_1706_pp0_iter8_reg;
reg   [11:0] v268_0_addr_reg_1706_pp0_iter9_reg;
reg   [11:0] v268_0_addr_reg_1706_pp0_iter10_reg;
reg   [11:0] v268_0_addr_reg_1706_pp0_iter11_reg;
reg   [11:0] v268_0_addr_reg_1706_pp0_iter12_reg;
reg   [11:0] v268_0_addr_reg_1706_pp0_iter13_reg;
wire   [31:0] v9_fu_1075_p3;
reg   [31:0] v9_reg_1712;
wire   [31:0] grp_fu_656_p2;
reg   [31:0] v12_reg_1717;
wire   [31:0] v15_fu_1086_p3;
reg   [31:0] v15_reg_1722;
wire   [31:0] grp_fu_660_p2;
reg   [31:0] v17_reg_1727;
wire   [31:0] v20_fu_1097_p3;
reg   [31:0] v20_reg_1732;
wire   [31:0] grp_fu_664_p2;
reg   [31:0] v22_reg_1737;
wire   [31:0] v25_fu_1108_p3;
reg   [31:0] v25_reg_1742;
wire   [31:0] grp_fu_668_p2;
reg   [31:0] v27_reg_1747;
wire   [31:0] v30_fu_1119_p3;
reg   [31:0] v30_reg_1752;
wire   [31:0] grp_fu_672_p2;
reg   [31:0] v32_reg_1757;
wire   [31:0] v35_fu_1130_p3;
reg   [31:0] v35_reg_1762;
wire   [31:0] grp_fu_676_p2;
reg   [31:0] v37_reg_1767;
wire   [31:0] v40_fu_1141_p3;
reg   [31:0] v40_reg_1772;
wire   [31:0] grp_fu_680_p2;
reg   [31:0] v42_reg_1777;
wire   [31:0] v45_fu_1152_p3;
reg   [31:0] v45_reg_1782;
wire   [31:0] grp_fu_684_p2;
reg   [31:0] v47_reg_1787;
wire   [31:0] v50_fu_1163_p3;
reg   [31:0] v50_reg_1792;
wire   [31:0] grp_fu_688_p2;
reg   [31:0] v52_reg_1797;
wire   [31:0] v55_fu_1174_p3;
reg   [31:0] v55_reg_1802;
wire   [31:0] grp_fu_692_p2;
reg   [31:0] v57_reg_1807;
wire   [31:0] v60_fu_1185_p3;
reg   [31:0] v60_reg_1812;
wire   [31:0] grp_fu_696_p2;
reg   [31:0] v62_reg_1817;
wire   [31:0] v65_fu_1196_p3;
reg   [31:0] v65_reg_1822;
wire   [31:0] grp_fu_700_p2;
reg   [31:0] v67_reg_1827;
wire   [31:0] v70_fu_1207_p3;
reg   [31:0] v70_reg_1832;
wire   [31:0] grp_fu_704_p2;
reg   [31:0] v72_reg_1837;
wire   [31:0] v75_fu_1218_p3;
reg   [31:0] v75_reg_1842;
wire   [31:0] grp_fu_708_p2;
reg   [31:0] v77_reg_1847;
wire   [31:0] grp_fu_600_p2;
reg   [31:0] v13_reg_1852;
wire   [31:0] grp_fu_604_p2;
reg   [31:0] v18_reg_1857;
wire   [31:0] grp_fu_608_p2;
reg   [31:0] v23_reg_1862;
wire   [31:0] grp_fu_612_p2;
reg   [31:0] v28_reg_1867;
wire   [31:0] grp_fu_616_p2;
reg   [31:0] v33_reg_1872;
wire   [31:0] grp_fu_620_p2;
reg   [31:0] v38_reg_1877;
wire   [31:0] grp_fu_624_p2;
reg   [31:0] v43_reg_1882;
wire   [31:0] grp_fu_628_p2;
reg   [31:0] v48_reg_1887;
wire   [31:0] grp_fu_632_p2;
reg   [31:0] v53_reg_1892;
wire   [31:0] grp_fu_636_p2;
reg   [31:0] v58_reg_1897;
wire   [31:0] grp_fu_640_p2;
reg   [31:0] v63_reg_1902;
wire   [31:0] grp_fu_644_p2;
reg   [31:0] v68_reg_1907;
wire   [31:0] grp_fu_648_p2;
reg   [31:0] v73_reg_1912;
wire   [31:0] grp_fu_652_p2;
reg   [31:0] v78_reg_1917;
reg   [0:0] ap_phi_mux_icmp_ln35177_phi_fu_582_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln36176_phi_fu_593_p4;
wire   [63:0] p_cast_fu_944_p1;
wire   [63:0] zext_ln41_2_fu_963_p1;
wire   [63:0] zext_ln117_3_fu_1054_p1;
reg   [18:0] indvar_flatten12171_fu_126;
wire   [18:0] add_ln34_1_fu_837_p2;
reg   [18:0] ap_sig_allocacmp_indvar_flatten12171_load;
reg   [7:0] v5172_fu_130;
reg   [11:0] indvar_flatten173_fu_134;
wire   [11:0] select_ln35_1_fu_829_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten173_load;
reg   [7:0] v6174_fu_138;
reg   [7:0] ap_sig_allocacmp_v6174_load;
reg   [7:0] v7175_fu_142;
wire   [7:0] v7_fu_817_p2;
reg   [7:0] ap_sig_allocacmp_v7175_load;
reg    v260_ce0_local;
reg    v264_0_ce0_local;
reg    v264_1_ce0_local;
reg    v264_2_ce0_local;
reg    v264_3_ce0_local;
reg    v264_4_ce0_local;
reg    v264_5_ce0_local;
reg    v264_6_ce0_local;
reg    v264_7_ce0_local;
reg    v264_8_ce0_local;
reg    v264_9_ce0_local;
reg    v264_10_ce0_local;
reg    v264_11_ce0_local;
reg    v264_12_ce0_local;
reg    v264_13_ce0_local;
reg    v268_0_ce1_local;
reg    v268_0_we0_local;
wire   [31:0] bitcast_ln44_fu_1225_p1;
reg    v268_0_ce0_local;
reg    v268_1_ce1_local;
reg    v268_1_we0_local;
wire   [31:0] bitcast_ln50_fu_1229_p1;
reg    v268_1_ce0_local;
reg    v268_2_ce1_local;
reg    v268_2_we0_local;
wire   [31:0] bitcast_ln56_fu_1233_p1;
reg    v268_2_ce0_local;
reg    v268_3_ce1_local;
reg    v268_3_we0_local;
wire   [31:0] bitcast_ln62_fu_1237_p1;
reg    v268_3_ce0_local;
reg    v268_4_ce1_local;
reg    v268_4_we0_local;
wire   [31:0] bitcast_ln68_fu_1241_p1;
reg    v268_4_ce0_local;
reg    v268_5_ce1_local;
reg    v268_5_we0_local;
wire   [31:0] bitcast_ln74_fu_1245_p1;
reg    v268_5_ce0_local;
reg    v268_6_ce1_local;
reg    v268_6_we0_local;
wire   [31:0] bitcast_ln80_fu_1249_p1;
reg    v268_6_ce0_local;
reg    v268_7_ce1_local;
reg    v268_7_we0_local;
wire   [31:0] bitcast_ln86_fu_1253_p1;
reg    v268_7_ce0_local;
reg    v268_8_ce1_local;
reg    v268_8_we0_local;
wire   [31:0] bitcast_ln92_fu_1257_p1;
reg    v268_8_ce0_local;
reg    v268_9_ce1_local;
reg    v268_9_we0_local;
wire   [31:0] bitcast_ln98_fu_1261_p1;
reg    v268_9_ce0_local;
reg    v268_10_ce1_local;
reg    v268_10_we0_local;
wire   [31:0] bitcast_ln104_fu_1265_p1;
reg    v268_10_ce0_local;
reg    v268_11_ce1_local;
reg    v268_11_we0_local;
wire   [31:0] bitcast_ln110_fu_1269_p1;
reg    v268_11_ce0_local;
reg    v268_12_ce1_local;
reg    v268_12_we0_local;
wire   [31:0] bitcast_ln116_fu_1273_p1;
reg    v268_12_ce0_local;
reg    v268_13_ce1_local;
reg    v268_13_we0_local;
wire   [31:0] bitcast_ln122_fu_1277_p1;
reg    v268_13_ce0_local;
wire   [31:0] grp_fu_656_p1;
wire   [31:0] grp_fu_660_p1;
wire   [31:0] grp_fu_664_p1;
wire   [31:0] grp_fu_668_p1;
wire   [31:0] grp_fu_672_p1;
wire   [31:0] grp_fu_676_p1;
wire   [31:0] grp_fu_680_p1;
wire   [31:0] grp_fu_684_p1;
wire   [31:0] grp_fu_688_p1;
wire   [31:0] grp_fu_692_p1;
wire   [31:0] grp_fu_696_p1;
wire   [31:0] grp_fu_700_p1;
wire   [31:0] grp_fu_704_p1;
wire   [31:0] grp_fu_708_p1;
wire   [7:0] select_ln34_fu_749_p3;
wire   [0:0] or_ln34_fu_765_p2;
wire   [7:0] select_ln34_1_fu_757_p3;
wire   [7:0] add_ln35_fu_771_p2;
wire   [7:0] v7_mid2_fu_777_p3;
wire   [7:0] mul_ln36_fu_801_p0;
wire   [9:0] mul_ln36_fu_801_p1;
wire   [16:0] mul_ln36_fu_801_p2;
wire   [11:0] add_ln35_1_fu_823_p2;
wire   [7:0] add_ln34_fu_884_p2;
wire   [11:0] p_shl1_fu_910_p3;
wire   [11:0] zext_ln41_1_fu_907_p1;
wire   [11:0] p_shl_fu_931_p3;
wire   [11:0] zext_ln117_1_fu_928_p1;
wire   [15:0] grp_fu_1281_p3;
wire   [11:0] sub_ln117_fu_938_p2;
wire   [11:0] zext_ln117_2_fu_948_p1;
wire   [11:0] sub_ln41_fu_917_p2;
wire   [11:0] add_ln41_fu_957_p2;
wire   [31:0] v8_fu_1071_p1;
wire   [31:0] v14_fu_1082_p1;
wire   [31:0] v19_fu_1093_p1;
wire   [31:0] v24_fu_1104_p1;
wire   [31:0] v29_fu_1115_p1;
wire   [31:0] v34_fu_1126_p1;
wire   [31:0] v39_fu_1137_p1;
wire   [31:0] v44_fu_1148_p1;
wire   [31:0] v49_fu_1159_p1;
wire   [31:0] v54_fu_1170_p1;
wire   [31:0] v59_fu_1181_p1;
wire   [31:0] v64_fu_1192_p1;
wire   [31:0] v69_fu_1203_p1;
wire   [31:0] v74_fu_1214_p1;
wire   [7:0] grp_fu_1281_p0;
wire   [7:0] grp_fu_1281_p1;
wire   [7:0] grp_fu_1281_p2;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [14:0] frp_pipeline_valid_U_valid_out;
wire   [4:0] frp_pipeline_valid_U_num_valid_datasets;
wire    ap_condition_frp_pvb_no_fwd_prs;
wire    ap_condition_frp_pvb_no_bkwd_prs;
reg    ap_condition_frp_pvb_pf_start;
reg    ap_frp_vld_in;
wire   [15:0] grp_fu_1281_p00;
wire   [15:0] grp_fu_1281_p20;
wire   [16:0] mul_ln36_fu_801_p00;
reg    ap_condition_903;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten12171_fu_126 = 19'd0;
#0 v5172_fu_130 = 8'd0;
#0 indvar_flatten173_fu_134 = 12'd0;
#0 v6174_fu_138 = 8'd0;
#0 v7175_fu_142 = 8'd0;
end
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U167(.clk(ap_clk),.reset(ap_rst),.din0(v9_reg_1712),.din1(v12_reg_1717),.ce(1'b1),.dout(grp_fu_600_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U168(.clk(ap_clk),.reset(ap_rst),.din0(v15_reg_1722),.din1(v17_reg_1727),.ce(1'b1),.dout(grp_fu_604_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U169(.clk(ap_clk),.reset(ap_rst),.din0(v20_reg_1732),.din1(v22_reg_1737),.ce(1'b1),.dout(grp_fu_608_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U170(.clk(ap_clk),.reset(ap_rst),.din0(v25_reg_1742),.din1(v27_reg_1747),.ce(1'b1),.dout(grp_fu_612_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U171(.clk(ap_clk),.reset(ap_rst),.din0(v30_reg_1752),.din1(v32_reg_1757),.ce(1'b1),.dout(grp_fu_616_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U172(.clk(ap_clk),.reset(ap_rst),.din0(v35_reg_1762),.din1(v37_reg_1767),.ce(1'b1),.dout(grp_fu_620_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U173(.clk(ap_clk),.reset(ap_rst),.din0(v40_reg_1772),.din1(v42_reg_1777),.ce(1'b1),.dout(grp_fu_624_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U174(.clk(ap_clk),.reset(ap_rst),.din0(v45_reg_1782),.din1(v47_reg_1787),.ce(1'b1),.dout(grp_fu_628_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U175(.clk(ap_clk),.reset(ap_rst),.din0(v50_reg_1792),.din1(v52_reg_1797),.ce(1'b1),.dout(grp_fu_632_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U176(.clk(ap_clk),.reset(ap_rst),.din0(v55_reg_1802),.din1(v57_reg_1807),.ce(1'b1),.dout(grp_fu_636_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U177(.clk(ap_clk),.reset(ap_rst),.din0(v60_reg_1812),.din1(v62_reg_1817),.ce(1'b1),.dout(grp_fu_640_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U178(.clk(ap_clk),.reset(ap_rst),.din0(v65_reg_1822),.din1(v67_reg_1827),.ce(1'b1),.dout(grp_fu_644_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U179(.clk(ap_clk),.reset(ap_rst),.din0(v70_reg_1832),.din1(v72_reg_1837),.ce(1'b1),.dout(grp_fu_648_p2));
kernel_3mm_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U180(.clk(ap_clk),.reset(ap_rst),.din0(v75_reg_1842),.din1(v77_reg_1847),.ce(1'b1),.dout(grp_fu_652_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U181(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_656_p1),.ce(1'b1),.dout(grp_fu_656_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U182(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_660_p1),.ce(1'b1),.dout(grp_fu_660_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U183(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_664_p1),.ce(1'b1),.dout(grp_fu_664_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U184(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_668_p1),.ce(1'b1),.dout(grp_fu_668_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U185(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_672_p1),.ce(1'b1),.dout(grp_fu_672_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U186(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_676_p1),.ce(1'b1),.dout(grp_fu_676_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U187(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_680_p1),.ce(1'b1),.dout(grp_fu_680_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U188(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_684_p1),.ce(1'b1),.dout(grp_fu_684_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U189(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_688_p1),.ce(1'b1),.dout(grp_fu_688_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U190(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_692_p1),.ce(1'b1),.dout(grp_fu_692_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U191(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_696_p1),.ce(1'b1),.dout(grp_fu_696_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U192(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_700_p1),.ce(1'b1),.dout(grp_fu_700_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U193(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_704_p1),.ce(1'b1),.dout(grp_fu_704_p2));
kernel_3mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U194(.clk(ap_clk),.reset(ap_rst),.din0(v10_fu_981_p1),.din1(grp_fu_708_p1),.ce(1'b1),.dout(grp_fu_708_p2));
kernel_3mm_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U195(.din0(mul_ln36_fu_801_p0),.din1(mul_ln36_fu_801_p1),.dout(mul_ln36_fu_801_p2));
kernel_3mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U196(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1281_p0),.din1(grp_fu_1281_p1),.din2(grp_fu_1281_p2),.ce(1'b1),.dout(grp_fu_1281_p3));
kernel_3mm_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
kernel_3mm_frp_pipeline_valid #(.PipelineLatency( 15 ),.PipelineII( 1 ),.CeilLog2Stages( 4 ),.ExitLatency( -1 ))
frp_pipeline_valid_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.valid_in(ap_frp_vld_in),.exitcond(1'b0),.valid_out(frp_pipeline_valid_U_valid_out),.num_valid_datasets(frp_pipeline_valid_U_num_valid_datasets));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter14_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((frp_pipeline_valid_U_valid_out[4'd1] == 1'b1) & ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln34_reg_1351 == 1'd0)))) begin
        icmp_ln35177_reg_579 <= icmp_ln35_reg_1346;
    end else if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln35177_reg_579 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if ((frp_pipeline_valid_U_valid_out[4'd0] == 1'b1)) begin
            indvar_flatten12171_fu_126 <= add_ln34_1_fu_837_p2;
        end else if ((1'b1 == ap_condition_903)) begin
            indvar_flatten12171_fu_126 <= 19'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if ((frp_pipeline_valid_U_valid_out[4'd0] == 1'b1)) begin
            indvar_flatten173_fu_134 <= select_ln35_1_fu_829_p3;
        end else if ((1'b1 == ap_condition_903)) begin
            indvar_flatten173_fu_134 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if ((1'b1 == ap_condition_903)) begin
            v5172_fu_130 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v5172_fu_130 <= v5_fu_890_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if ((frp_pipeline_valid_U_valid_out[4'd0] == 1'b1)) begin
            v6174_fu_138 <= v6_fu_785_p3;
        end else if ((1'b1 == ap_condition_903)) begin
            v6174_fu_138 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if ((frp_pipeline_valid_U_valid_out[4'd0] == 1'b1)) begin
            v7175_fu_142 <= v7_fu_817_p2;
        end else if ((1'b1 == ap_condition_903)) begin
            v7175_fu_142 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln117_reg_1390 <= add_ln117_fu_951_p2;
        add_ln117_reg_1390_pp0_iter4_reg <= add_ln117_reg_1390;
        add_ln117_reg_1390_pp0_iter5_reg <= add_ln117_reg_1390_pp0_iter4_reg;
        add_ln117_reg_1390_pp0_iter6_reg <= add_ln117_reg_1390_pp0_iter5_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter3_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter4_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter6_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter5_reg;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter7_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter6_reg;
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
        cmp12_i_reg_1367 <= cmp12_i_fu_923_p2;
        cmp12_i_reg_1367_pp0_iter4_reg <= cmp12_i_reg_1367;
        cmp12_i_reg_1367_pp0_iter5_reg <= cmp12_i_reg_1367_pp0_iter4_reg;
        cmp12_i_reg_1367_pp0_iter6_reg <= cmp12_i_reg_1367_pp0_iter5_reg;
        cmp12_i_reg_1367_pp0_iter7_reg <= cmp12_i_reg_1367_pp0_iter6_reg;
        tmp_reg_1336_pp0_iter2_reg <= tmp_reg_1336_pp0_iter1_reg;
        v12_reg_1717 <= grp_fu_656_p2;
        v13_reg_1852 <= grp_fu_600_p2;
        v15_reg_1722 <= v15_fu_1086_p3;
        v17_reg_1727 <= grp_fu_660_p2;
        v18_reg_1857 <= grp_fu_604_p2;
        v20_reg_1732 <= v20_fu_1097_p3;
        v22_reg_1737 <= grp_fu_664_p2;
        v23_reg_1862 <= grp_fu_608_p2;
        v25_reg_1742 <= v25_fu_1108_p3;
        v260_load_reg_1465 <= v260_q0;
        v264_0_load_reg_1470 <= v264_0_q0;
        v264_10_load_reg_1520 <= v264_10_q0;
        v264_11_load_reg_1525 <= v264_11_q0;
        v264_12_load_reg_1530 <= v264_12_q0;
        v264_13_load_reg_1535 <= v264_13_q0;
        v264_1_load_reg_1475 <= v264_1_q0;
        v264_2_load_reg_1480 <= v264_2_q0;
        v264_3_load_reg_1485 <= v264_3_q0;
        v264_4_load_reg_1490 <= v264_4_q0;
        v264_5_load_reg_1495 <= v264_5_q0;
        v264_6_load_reg_1500 <= v264_6_q0;
        v264_7_load_reg_1505 <= v264_7_q0;
        v264_8_load_reg_1510 <= v264_8_q0;
        v264_9_load_reg_1515 <= v264_9_q0;
        v268_0_addr_reg_1706 <= zext_ln117_3_fu_1054_p1;
        v268_0_addr_reg_1706_pp0_iter10_reg <= v268_0_addr_reg_1706_pp0_iter9_reg;
        v268_0_addr_reg_1706_pp0_iter11_reg <= v268_0_addr_reg_1706_pp0_iter10_reg;
        v268_0_addr_reg_1706_pp0_iter12_reg <= v268_0_addr_reg_1706_pp0_iter11_reg;
        v268_0_addr_reg_1706_pp0_iter13_reg <= v268_0_addr_reg_1706_pp0_iter12_reg;
        v268_0_addr_reg_1706_pp0_iter8_reg <= v268_0_addr_reg_1706;
        v268_0_addr_reg_1706_pp0_iter9_reg <= v268_0_addr_reg_1706_pp0_iter8_reg;
        v268_10_addr_reg_1646 <= zext_ln117_3_fu_1054_p1;
        v268_10_addr_reg_1646_pp0_iter10_reg <= v268_10_addr_reg_1646_pp0_iter9_reg;
        v268_10_addr_reg_1646_pp0_iter11_reg <= v268_10_addr_reg_1646_pp0_iter10_reg;
        v268_10_addr_reg_1646_pp0_iter12_reg <= v268_10_addr_reg_1646_pp0_iter11_reg;
        v268_10_addr_reg_1646_pp0_iter13_reg <= v268_10_addr_reg_1646_pp0_iter12_reg;
        v268_10_addr_reg_1646_pp0_iter8_reg <= v268_10_addr_reg_1646;
        v268_10_addr_reg_1646_pp0_iter9_reg <= v268_10_addr_reg_1646_pp0_iter8_reg;
        v268_11_addr_reg_1640 <= zext_ln117_3_fu_1054_p1;
        v268_11_addr_reg_1640_pp0_iter10_reg <= v268_11_addr_reg_1640_pp0_iter9_reg;
        v268_11_addr_reg_1640_pp0_iter11_reg <= v268_11_addr_reg_1640_pp0_iter10_reg;
        v268_11_addr_reg_1640_pp0_iter12_reg <= v268_11_addr_reg_1640_pp0_iter11_reg;
        v268_11_addr_reg_1640_pp0_iter13_reg <= v268_11_addr_reg_1640_pp0_iter12_reg;
        v268_11_addr_reg_1640_pp0_iter8_reg <= v268_11_addr_reg_1640;
        v268_11_addr_reg_1640_pp0_iter9_reg <= v268_11_addr_reg_1640_pp0_iter8_reg;
        v268_12_addr_reg_1634 <= zext_ln117_3_fu_1054_p1;
        v268_12_addr_reg_1634_pp0_iter10_reg <= v268_12_addr_reg_1634_pp0_iter9_reg;
        v268_12_addr_reg_1634_pp0_iter11_reg <= v268_12_addr_reg_1634_pp0_iter10_reg;
        v268_12_addr_reg_1634_pp0_iter12_reg <= v268_12_addr_reg_1634_pp0_iter11_reg;
        v268_12_addr_reg_1634_pp0_iter13_reg <= v268_12_addr_reg_1634_pp0_iter12_reg;
        v268_12_addr_reg_1634_pp0_iter8_reg <= v268_12_addr_reg_1634;
        v268_12_addr_reg_1634_pp0_iter9_reg <= v268_12_addr_reg_1634_pp0_iter8_reg;
        v268_13_addr_reg_1628 <= zext_ln117_3_fu_1054_p1;
        v268_13_addr_reg_1628_pp0_iter10_reg <= v268_13_addr_reg_1628_pp0_iter9_reg;
        v268_13_addr_reg_1628_pp0_iter11_reg <= v268_13_addr_reg_1628_pp0_iter10_reg;
        v268_13_addr_reg_1628_pp0_iter12_reg <= v268_13_addr_reg_1628_pp0_iter11_reg;
        v268_13_addr_reg_1628_pp0_iter13_reg <= v268_13_addr_reg_1628_pp0_iter12_reg;
        v268_13_addr_reg_1628_pp0_iter8_reg <= v268_13_addr_reg_1628;
        v268_13_addr_reg_1628_pp0_iter9_reg <= v268_13_addr_reg_1628_pp0_iter8_reg;
        v268_1_addr_reg_1700 <= zext_ln117_3_fu_1054_p1;
        v268_1_addr_reg_1700_pp0_iter10_reg <= v268_1_addr_reg_1700_pp0_iter9_reg;
        v268_1_addr_reg_1700_pp0_iter11_reg <= v268_1_addr_reg_1700_pp0_iter10_reg;
        v268_1_addr_reg_1700_pp0_iter12_reg <= v268_1_addr_reg_1700_pp0_iter11_reg;
        v268_1_addr_reg_1700_pp0_iter13_reg <= v268_1_addr_reg_1700_pp0_iter12_reg;
        v268_1_addr_reg_1700_pp0_iter8_reg <= v268_1_addr_reg_1700;
        v268_1_addr_reg_1700_pp0_iter9_reg <= v268_1_addr_reg_1700_pp0_iter8_reg;
        v268_2_addr_reg_1694 <= zext_ln117_3_fu_1054_p1;
        v268_2_addr_reg_1694_pp0_iter10_reg <= v268_2_addr_reg_1694_pp0_iter9_reg;
        v268_2_addr_reg_1694_pp0_iter11_reg <= v268_2_addr_reg_1694_pp0_iter10_reg;
        v268_2_addr_reg_1694_pp0_iter12_reg <= v268_2_addr_reg_1694_pp0_iter11_reg;
        v268_2_addr_reg_1694_pp0_iter13_reg <= v268_2_addr_reg_1694_pp0_iter12_reg;
        v268_2_addr_reg_1694_pp0_iter8_reg <= v268_2_addr_reg_1694;
        v268_2_addr_reg_1694_pp0_iter9_reg <= v268_2_addr_reg_1694_pp0_iter8_reg;
        v268_3_addr_reg_1688 <= zext_ln117_3_fu_1054_p1;
        v268_3_addr_reg_1688_pp0_iter10_reg <= v268_3_addr_reg_1688_pp0_iter9_reg;
        v268_3_addr_reg_1688_pp0_iter11_reg <= v268_3_addr_reg_1688_pp0_iter10_reg;
        v268_3_addr_reg_1688_pp0_iter12_reg <= v268_3_addr_reg_1688_pp0_iter11_reg;
        v268_3_addr_reg_1688_pp0_iter13_reg <= v268_3_addr_reg_1688_pp0_iter12_reg;
        v268_3_addr_reg_1688_pp0_iter8_reg <= v268_3_addr_reg_1688;
        v268_3_addr_reg_1688_pp0_iter9_reg <= v268_3_addr_reg_1688_pp0_iter8_reg;
        v268_4_addr_reg_1682 <= zext_ln117_3_fu_1054_p1;
        v268_4_addr_reg_1682_pp0_iter10_reg <= v268_4_addr_reg_1682_pp0_iter9_reg;
        v268_4_addr_reg_1682_pp0_iter11_reg <= v268_4_addr_reg_1682_pp0_iter10_reg;
        v268_4_addr_reg_1682_pp0_iter12_reg <= v268_4_addr_reg_1682_pp0_iter11_reg;
        v268_4_addr_reg_1682_pp0_iter13_reg <= v268_4_addr_reg_1682_pp0_iter12_reg;
        v268_4_addr_reg_1682_pp0_iter8_reg <= v268_4_addr_reg_1682;
        v268_4_addr_reg_1682_pp0_iter9_reg <= v268_4_addr_reg_1682_pp0_iter8_reg;
        v268_5_addr_reg_1676 <= zext_ln117_3_fu_1054_p1;
        v268_5_addr_reg_1676_pp0_iter10_reg <= v268_5_addr_reg_1676_pp0_iter9_reg;
        v268_5_addr_reg_1676_pp0_iter11_reg <= v268_5_addr_reg_1676_pp0_iter10_reg;
        v268_5_addr_reg_1676_pp0_iter12_reg <= v268_5_addr_reg_1676_pp0_iter11_reg;
        v268_5_addr_reg_1676_pp0_iter13_reg <= v268_5_addr_reg_1676_pp0_iter12_reg;
        v268_5_addr_reg_1676_pp0_iter8_reg <= v268_5_addr_reg_1676;
        v268_5_addr_reg_1676_pp0_iter9_reg <= v268_5_addr_reg_1676_pp0_iter8_reg;
        v268_6_addr_reg_1670 <= zext_ln117_3_fu_1054_p1;
        v268_6_addr_reg_1670_pp0_iter10_reg <= v268_6_addr_reg_1670_pp0_iter9_reg;
        v268_6_addr_reg_1670_pp0_iter11_reg <= v268_6_addr_reg_1670_pp0_iter10_reg;
        v268_6_addr_reg_1670_pp0_iter12_reg <= v268_6_addr_reg_1670_pp0_iter11_reg;
        v268_6_addr_reg_1670_pp0_iter13_reg <= v268_6_addr_reg_1670_pp0_iter12_reg;
        v268_6_addr_reg_1670_pp0_iter8_reg <= v268_6_addr_reg_1670;
        v268_6_addr_reg_1670_pp0_iter9_reg <= v268_6_addr_reg_1670_pp0_iter8_reg;
        v268_7_addr_reg_1664 <= zext_ln117_3_fu_1054_p1;
        v268_7_addr_reg_1664_pp0_iter10_reg <= v268_7_addr_reg_1664_pp0_iter9_reg;
        v268_7_addr_reg_1664_pp0_iter11_reg <= v268_7_addr_reg_1664_pp0_iter10_reg;
        v268_7_addr_reg_1664_pp0_iter12_reg <= v268_7_addr_reg_1664_pp0_iter11_reg;
        v268_7_addr_reg_1664_pp0_iter13_reg <= v268_7_addr_reg_1664_pp0_iter12_reg;
        v268_7_addr_reg_1664_pp0_iter8_reg <= v268_7_addr_reg_1664;
        v268_7_addr_reg_1664_pp0_iter9_reg <= v268_7_addr_reg_1664_pp0_iter8_reg;
        v268_8_addr_reg_1658 <= zext_ln117_3_fu_1054_p1;
        v268_8_addr_reg_1658_pp0_iter10_reg <= v268_8_addr_reg_1658_pp0_iter9_reg;
        v268_8_addr_reg_1658_pp0_iter11_reg <= v268_8_addr_reg_1658_pp0_iter10_reg;
        v268_8_addr_reg_1658_pp0_iter12_reg <= v268_8_addr_reg_1658_pp0_iter11_reg;
        v268_8_addr_reg_1658_pp0_iter13_reg <= v268_8_addr_reg_1658_pp0_iter12_reg;
        v268_8_addr_reg_1658_pp0_iter8_reg <= v268_8_addr_reg_1658;
        v268_8_addr_reg_1658_pp0_iter9_reg <= v268_8_addr_reg_1658_pp0_iter8_reg;
        v268_9_addr_reg_1652 <= zext_ln117_3_fu_1054_p1;
        v268_9_addr_reg_1652_pp0_iter10_reg <= v268_9_addr_reg_1652_pp0_iter9_reg;
        v268_9_addr_reg_1652_pp0_iter11_reg <= v268_9_addr_reg_1652_pp0_iter10_reg;
        v268_9_addr_reg_1652_pp0_iter12_reg <= v268_9_addr_reg_1652_pp0_iter11_reg;
        v268_9_addr_reg_1652_pp0_iter13_reg <= v268_9_addr_reg_1652_pp0_iter12_reg;
        v268_9_addr_reg_1652_pp0_iter8_reg <= v268_9_addr_reg_1652;
        v268_9_addr_reg_1652_pp0_iter9_reg <= v268_9_addr_reg_1652_pp0_iter8_reg;
        v27_reg_1747 <= grp_fu_668_p2;
        v28_reg_1867 <= grp_fu_612_p2;
        v30_reg_1752 <= v30_fu_1119_p3;
        v32_reg_1757 <= grp_fu_672_p2;
        v33_reg_1872 <= grp_fu_616_p2;
        v35_reg_1762 <= v35_fu_1130_p3;
        v37_reg_1767 <= grp_fu_676_p2;
        v38_reg_1877 <= grp_fu_620_p2;
        v40_reg_1772 <= v40_fu_1141_p3;
        v42_reg_1777 <= grp_fu_680_p2;
        v43_reg_1882 <= grp_fu_624_p2;
        v45_reg_1782 <= v45_fu_1152_p3;
        v47_reg_1787 <= grp_fu_684_p2;
        v48_reg_1887 <= grp_fu_628_p2;
        v50_reg_1792 <= v50_fu_1163_p3;
        v52_reg_1797 <= grp_fu_688_p2;
        v53_reg_1892 <= grp_fu_632_p2;
        v55_reg_1802 <= v55_fu_1174_p3;
        v57_reg_1807 <= grp_fu_692_p2;
        v58_reg_1897 <= grp_fu_636_p2;
        v5_reg_1355 <= v5_fu_890_p3;
        v60_reg_1812 <= v60_fu_1185_p3;
        v62_reg_1817 <= grp_fu_696_p2;
        v63_reg_1902 <= grp_fu_640_p2;
        v65_reg_1822 <= v65_fu_1196_p3;
        v67_reg_1827 <= grp_fu_700_p2;
        v68_reg_1907 <= grp_fu_644_p2;
        v6_reg_1325_pp0_iter2_reg <= v6_reg_1325_pp0_iter1_reg;
        v70_reg_1832 <= v70_fu_1207_p3;
        v72_reg_1837 <= grp_fu_704_p2;
        v73_reg_1912 <= grp_fu_648_p2;
        v75_reg_1842 <= v75_fu_1218_p3;
        v77_reg_1847 <= grp_fu_708_p2;
        v78_reg_1917 <= grp_fu_652_p2;
        v9_reg_1712 <= v9_fu_1075_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln34_reg_1351 <= icmp_ln34_fu_855_p2;
        icmp_ln35177_reg_579_pp0_iter1_reg <= icmp_ln35177_reg_579;
        tmp_reg_1336 <= {{mul_ln36_fu_801_p2[16:12]}};
        tmp_reg_1336_pp0_iter1_reg <= tmp_reg_1336;
        v6_reg_1325 <= v6_fu_785_p3;
        v6_reg_1325_pp0_iter1_reg <= v6_reg_1325;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (frp_pipeline_valid_U_valid_out[4'd0] == 1'b1))) begin
        icmp_ln35_reg_1346 <= icmp_ln35_fu_849_p2;
        icmp_ln36_reg_1341 <= icmp_ln36_fu_843_p2;
    end
end
always @ (*) begin
    if (((frp_pipeline_valid_U_valid_out[4'd0] == 1'b1) & ((icmp_ln34_fu_855_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone)))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd1] == 1'b1)) begin
        ap_enable_reg_pp0_iter1 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter1 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd10] == 1'b1)) begin
        ap_enable_reg_pp0_iter10 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter10 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd11] == 1'b1)) begin
        ap_enable_reg_pp0_iter11 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter11 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd12] == 1'b1)) begin
        ap_enable_reg_pp0_iter12 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter12 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd13] == 1'b1)) begin
        ap_enable_reg_pp0_iter13 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter13 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd14] == 1'b1)) begin
        ap_enable_reg_pp0_iter14 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter14 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd2] == 1'b1)) begin
        ap_enable_reg_pp0_iter2 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter2 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd3] == 1'b1)) begin
        ap_enable_reg_pp0_iter3 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter3 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd4] == 1'b1)) begin
        ap_enable_reg_pp0_iter4 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter4 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd5] == 1'b1)) begin
        ap_enable_reg_pp0_iter5 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter5 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd6] == 1'b1)) begin
        ap_enable_reg_pp0_iter6 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter6 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd7] == 1'b1)) begin
        ap_enable_reg_pp0_iter7 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter7 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd8] == 1'b1)) begin
        ap_enable_reg_pp0_iter8 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter8 = 1'b0;
    end
end
always @ (*) begin
    if ((frp_pipeline_valid_U_valid_out[4'd9] == 1'b1)) begin
        ap_enable_reg_pp0_iter9 = 1'b1;
    end else begin
        ap_enable_reg_pp0_iter9 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_condition_frp_pvb_pf_start) & (1'b1 == ap_condition_frp_pvb_no_bkwd_prs) & (1'b1 == ap_condition_frp_pvb_no_fwd_prs))) begin
        ap_frp_vld_in = 1'b1;
    end else begin
        ap_frp_vld_in = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter7_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if (((frp_pipeline_valid_U_valid_out[4'd1] == 1'b1) & ((1'b0 == ap_block_pp0_stage0) & (icmp_ln34_reg_1351 == 1'd0)))) begin
        ap_phi_mux_icmp_ln35177_phi_fu_582_p4 = icmp_ln35_reg_1346;
    end else if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln35177_phi_fu_582_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln35177_phi_fu_582_p4 = icmp_ln35_reg_1346;
    end
end
always @ (*) begin
    if (((frp_pipeline_valid_U_valid_out[4'd1] == 1'b1) & ((1'b0 == ap_block_pp0_stage0) & (icmp_ln34_reg_1351 == 1'd0)))) begin
        ap_phi_mux_icmp_ln36176_phi_fu_593_p4 = icmp_ln36_reg_1341;
    end else if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_phi_mux_icmp_ln36176_phi_fu_593_p4 = 1'd1;
    end else begin
        ap_phi_mux_icmp_ln36176_phi_fu_593_p4 = icmp_ln36_reg_1341;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (frp_pipeline_valid_U_valid_out[4'd0] == 1'b1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12171_load = 19'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12171_load = indvar_flatten12171_fu_126;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten173_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten173_load = indvar_flatten173_fu_134;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v6174_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v6174_load = v6174_fu_138;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7175_load = 8'd0;
    end else begin
        ap_sig_allocacmp_v7175_load = v7175_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v260_ce0_local = 1'b1;
    end else begin
        v260_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_0_ce0_local = 1'b1;
    end else begin
        v264_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_10_ce0_local = 1'b1;
    end else begin
        v264_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_11_ce0_local = 1'b1;
    end else begin
        v264_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_12_ce0_local = 1'b1;
    end else begin
        v264_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_13_ce0_local = 1'b1;
    end else begin
        v264_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_1_ce0_local = 1'b1;
    end else begin
        v264_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_2_ce0_local = 1'b1;
    end else begin
        v264_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_3_ce0_local = 1'b1;
    end else begin
        v264_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_4_ce0_local = 1'b1;
    end else begin
        v264_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_5_ce0_local = 1'b1;
    end else begin
        v264_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_6_ce0_local = 1'b1;
    end else begin
        v264_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_7_ce0_local = 1'b1;
    end else begin
        v264_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_8_ce0_local = 1'b1;
    end else begin
        v264_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v264_9_ce0_local = 1'b1;
    end else begin
        v264_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_0_ce0_local = 1'b1;
    end else begin
        v268_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_0_ce1_local = 1'b1;
    end else begin
        v268_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_0_we0_local = 1'b1;
    end else begin
        v268_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_10_ce0_local = 1'b1;
    end else begin
        v268_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_10_ce1_local = 1'b1;
    end else begin
        v268_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_10_we0_local = 1'b1;
    end else begin
        v268_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_11_ce0_local = 1'b1;
    end else begin
        v268_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_11_ce1_local = 1'b1;
    end else begin
        v268_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_11_we0_local = 1'b1;
    end else begin
        v268_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_12_ce0_local = 1'b1;
    end else begin
        v268_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_12_ce1_local = 1'b1;
    end else begin
        v268_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_12_we0_local = 1'b1;
    end else begin
        v268_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_13_ce0_local = 1'b1;
    end else begin
        v268_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_13_ce1_local = 1'b1;
    end else begin
        v268_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_13_we0_local = 1'b1;
    end else begin
        v268_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_1_ce0_local = 1'b1;
    end else begin
        v268_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_1_ce1_local = 1'b1;
    end else begin
        v268_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_1_we0_local = 1'b1;
    end else begin
        v268_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_2_ce0_local = 1'b1;
    end else begin
        v268_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_2_ce1_local = 1'b1;
    end else begin
        v268_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_2_we0_local = 1'b1;
    end else begin
        v268_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_3_ce0_local = 1'b1;
    end else begin
        v268_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_3_ce1_local = 1'b1;
    end else begin
        v268_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_3_we0_local = 1'b1;
    end else begin
        v268_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_4_ce0_local = 1'b1;
    end else begin
        v268_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_4_ce1_local = 1'b1;
    end else begin
        v268_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_4_we0_local = 1'b1;
    end else begin
        v268_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_5_ce0_local = 1'b1;
    end else begin
        v268_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_5_ce1_local = 1'b1;
    end else begin
        v268_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_5_we0_local = 1'b1;
    end else begin
        v268_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_6_ce0_local = 1'b1;
    end else begin
        v268_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_6_ce1_local = 1'b1;
    end else begin
        v268_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_6_we0_local = 1'b1;
    end else begin
        v268_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_7_ce0_local = 1'b1;
    end else begin
        v268_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_7_ce1_local = 1'b1;
    end else begin
        v268_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_7_we0_local = 1'b1;
    end else begin
        v268_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_8_ce0_local = 1'b1;
    end else begin
        v268_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_8_ce1_local = 1'b1;
    end else begin
        v268_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_8_we0_local = 1'b1;
    end else begin
        v268_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_9_ce0_local = 1'b1;
    end else begin
        v268_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v268_9_ce1_local = 1'b1;
    end else begin
        v268_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        v268_9_we0_local = 1'b1;
    end else begin
        v268_9_we0_local = 1'b0;
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
assign add_ln117_fu_951_p2 = (sub_ln117_fu_938_p2 + zext_ln117_2_fu_948_p1);
assign add_ln34_1_fu_837_p2 = (ap_sig_allocacmp_indvar_flatten12171_load + 19'd1);
assign add_ln34_fu_884_p2 = (v5172_fu_130 + 8'd1);
assign add_ln35_1_fu_823_p2 = (ap_sig_allocacmp_indvar_flatten173_load + 12'd1);
assign add_ln35_fu_771_p2 = (select_ln34_fu_749_p3 + 8'd1);
assign add_ln41_fu_957_p2 = (sub_ln41_fu_917_p2 + zext_ln117_2_fu_948_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = 1'b0;
assign ap_block_pp0_stage0_11001 = 1'b0;
assign ap_block_pp0_stage0_subdone = 1'b0;
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_903 = ((ap_loop_init == 1'b1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_condition_frp_pvb_no_bkwd_prs = (1'b1 == 1'b1);
assign ap_condition_frp_pvb_no_fwd_prs = (1'b1 == 1'b1);
always @ (*) begin
    ap_condition_frp_pvb_pf_start = ((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln104_fu_1265_p1 = v63_reg_1902;
assign bitcast_ln110_fu_1269_p1 = v68_reg_1907;
assign bitcast_ln116_fu_1273_p1 = v73_reg_1912;
assign bitcast_ln122_fu_1277_p1 = v78_reg_1917;
assign bitcast_ln44_fu_1225_p1 = v13_reg_1852;
assign bitcast_ln50_fu_1229_p1 = v18_reg_1857;
assign bitcast_ln56_fu_1233_p1 = v23_reg_1862;
assign bitcast_ln62_fu_1237_p1 = v28_reg_1867;
assign bitcast_ln68_fu_1241_p1 = v33_reg_1872;
assign bitcast_ln74_fu_1245_p1 = v38_reg_1877;
assign bitcast_ln80_fu_1249_p1 = v43_reg_1882;
assign bitcast_ln86_fu_1253_p1 = v48_reg_1887;
assign bitcast_ln92_fu_1257_p1 = v53_reg_1892;
assign bitcast_ln98_fu_1261_p1 = v58_reg_1897;
assign cmp12_i_fu_923_p2 = ((v5_reg_1355 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_1281_p0 = grp_fu_1281_p00;
assign grp_fu_1281_p00 = v6_fu_785_p3;
assign grp_fu_1281_p1 = 16'd190;
assign grp_fu_1281_p2 = grp_fu_1281_p20;
assign grp_fu_1281_p20 = v5_fu_890_p3;
assign grp_fu_656_p1 = v264_0_load_reg_1470;
assign grp_fu_660_p1 = v264_1_load_reg_1475;
assign grp_fu_664_p1 = v264_2_load_reg_1480;
assign grp_fu_668_p1 = v264_3_load_reg_1485;
assign grp_fu_672_p1 = v264_4_load_reg_1490;
assign grp_fu_676_p1 = v264_5_load_reg_1495;
assign grp_fu_680_p1 = v264_6_load_reg_1500;
assign grp_fu_684_p1 = v264_7_load_reg_1505;
assign grp_fu_688_p1 = v264_8_load_reg_1510;
assign grp_fu_692_p1 = v264_9_load_reg_1515;
assign grp_fu_696_p1 = v264_10_load_reg_1520;
assign grp_fu_700_p1 = v264_11_load_reg_1525;
assign grp_fu_704_p1 = v264_12_load_reg_1530;
assign grp_fu_708_p1 = v264_13_load_reg_1535;
assign icmp_ln34_fu_855_p2 = ((ap_sig_allocacmp_indvar_flatten12171_load == 19'd512999) ? 1'b1 : 1'b0);
assign icmp_ln35_fu_849_p2 = ((select_ln35_1_fu_829_p3 == 12'd2700) ? 1'b1 : 1'b0);
assign icmp_ln36_fu_843_p2 = ((v7_fu_817_p2 < 8'd210) ? 1'b1 : 1'b0);
assign mul_ln36_fu_801_p0 = mul_ln36_fu_801_p00;
assign mul_ln36_fu_801_p00 = v7_mid2_fu_777_p3;
assign mul_ln36_fu_801_p1 = 17'd293;
assign or_ln34_fu_765_p2 = (ap_phi_mux_icmp_ln36176_phi_fu_593_p4 | ap_phi_mux_icmp_ln35177_phi_fu_582_p4);
assign p_cast_fu_944_p1 = grp_fu_1281_p3;
assign p_shl1_fu_910_p3 = {{v5_reg_1355}, {4'd0}};
assign p_shl_fu_931_p3 = {{v6_reg_1325_pp0_iter2_reg}, {4'd0}};
assign select_ln34_1_fu_757_p3 = ((ap_phi_mux_icmp_ln35177_phi_fu_582_p4[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v7175_load);
assign select_ln34_fu_749_p3 = ((ap_phi_mux_icmp_ln35177_phi_fu_582_p4[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v6174_load);
assign select_ln35_1_fu_829_p3 = ((ap_phi_mux_icmp_ln35177_phi_fu_582_p4[0:0] == 1'b1) ? 12'd1 : add_ln35_1_fu_823_p2);
assign sub_ln117_fu_938_p2 = (p_shl_fu_931_p3 - zext_ln117_1_fu_928_p1);
assign sub_ln41_fu_917_p2 = (p_shl1_fu_910_p3 - zext_ln41_1_fu_907_p1);
assign v10_fu_981_p1 = v260_load_reg_1465;
assign v14_fu_1082_p1 = v268_1_q1;
assign v15_fu_1086_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v14_fu_1082_p1);
assign v19_fu_1093_p1 = v268_2_q1;
assign v20_fu_1097_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v19_fu_1093_p1);
assign v24_fu_1104_p1 = v268_3_q1;
assign v25_fu_1108_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v24_fu_1104_p1);
assign v260_address0 = p_cast_fu_944_p1;
assign v260_ce0 = v260_ce0_local;
assign v264_0_address0 = zext_ln41_2_fu_963_p1;
assign v264_0_ce0 = v264_0_ce0_local;
assign v264_10_address0 = zext_ln41_2_fu_963_p1;
assign v264_10_ce0 = v264_10_ce0_local;
assign v264_11_address0 = zext_ln41_2_fu_963_p1;
assign v264_11_ce0 = v264_11_ce0_local;
assign v264_12_address0 = zext_ln41_2_fu_963_p1;
assign v264_12_ce0 = v264_12_ce0_local;
assign v264_13_address0 = zext_ln41_2_fu_963_p1;
assign v264_13_ce0 = v264_13_ce0_local;
assign v264_1_address0 = zext_ln41_2_fu_963_p1;
assign v264_1_ce0 = v264_1_ce0_local;
assign v264_2_address0 = zext_ln41_2_fu_963_p1;
assign v264_2_ce0 = v264_2_ce0_local;
assign v264_3_address0 = zext_ln41_2_fu_963_p1;
assign v264_3_ce0 = v264_3_ce0_local;
assign v264_4_address0 = zext_ln41_2_fu_963_p1;
assign v264_4_ce0 = v264_4_ce0_local;
assign v264_5_address0 = zext_ln41_2_fu_963_p1;
assign v264_5_ce0 = v264_5_ce0_local;
assign v264_6_address0 = zext_ln41_2_fu_963_p1;
assign v264_6_ce0 = v264_6_ce0_local;
assign v264_7_address0 = zext_ln41_2_fu_963_p1;
assign v264_7_ce0 = v264_7_ce0_local;
assign v264_8_address0 = zext_ln41_2_fu_963_p1;
assign v264_8_ce0 = v264_8_ce0_local;
assign v264_9_address0 = zext_ln41_2_fu_963_p1;
assign v264_9_ce0 = v264_9_ce0_local;
assign v268_0_address0 = v268_0_addr_reg_1706_pp0_iter13_reg;
assign v268_0_address1 = zext_ln117_3_fu_1054_p1;
assign v268_0_ce0 = v268_0_ce0_local;
assign v268_0_ce1 = v268_0_ce1_local;
assign v268_0_d0 = bitcast_ln44_fu_1225_p1;
assign v268_0_we0 = v268_0_we0_local;
assign v268_10_address0 = v268_10_addr_reg_1646_pp0_iter13_reg;
assign v268_10_address1 = zext_ln117_3_fu_1054_p1;
assign v268_10_ce0 = v268_10_ce0_local;
assign v268_10_ce1 = v268_10_ce1_local;
assign v268_10_d0 = bitcast_ln104_fu_1265_p1;
assign v268_10_we0 = v268_10_we0_local;
assign v268_11_address0 = v268_11_addr_reg_1640_pp0_iter13_reg;
assign v268_11_address1 = zext_ln117_3_fu_1054_p1;
assign v268_11_ce0 = v268_11_ce0_local;
assign v268_11_ce1 = v268_11_ce1_local;
assign v268_11_d0 = bitcast_ln110_fu_1269_p1;
assign v268_11_we0 = v268_11_we0_local;
assign v268_12_address0 = v268_12_addr_reg_1634_pp0_iter13_reg;
assign v268_12_address1 = zext_ln117_3_fu_1054_p1;
assign v268_12_ce0 = v268_12_ce0_local;
assign v268_12_ce1 = v268_12_ce1_local;
assign v268_12_d0 = bitcast_ln116_fu_1273_p1;
assign v268_12_we0 = v268_12_we0_local;
assign v268_13_address0 = v268_13_addr_reg_1628_pp0_iter13_reg;
assign v268_13_address1 = zext_ln117_3_fu_1054_p1;
assign v268_13_ce0 = v268_13_ce0_local;
assign v268_13_ce1 = v268_13_ce1_local;
assign v268_13_d0 = bitcast_ln122_fu_1277_p1;
assign v268_13_we0 = v268_13_we0_local;
assign v268_1_address0 = v268_1_addr_reg_1700_pp0_iter13_reg;
assign v268_1_address1 = zext_ln117_3_fu_1054_p1;
assign v268_1_ce0 = v268_1_ce0_local;
assign v268_1_ce1 = v268_1_ce1_local;
assign v268_1_d0 = bitcast_ln50_fu_1229_p1;
assign v268_1_we0 = v268_1_we0_local;
assign v268_2_address0 = v268_2_addr_reg_1694_pp0_iter13_reg;
assign v268_2_address1 = zext_ln117_3_fu_1054_p1;
assign v268_2_ce0 = v268_2_ce0_local;
assign v268_2_ce1 = v268_2_ce1_local;
assign v268_2_d0 = bitcast_ln56_fu_1233_p1;
assign v268_2_we0 = v268_2_we0_local;
assign v268_3_address0 = v268_3_addr_reg_1688_pp0_iter13_reg;
assign v268_3_address1 = zext_ln117_3_fu_1054_p1;
assign v268_3_ce0 = v268_3_ce0_local;
assign v268_3_ce1 = v268_3_ce1_local;
assign v268_3_d0 = bitcast_ln62_fu_1237_p1;
assign v268_3_we0 = v268_3_we0_local;
assign v268_4_address0 = v268_4_addr_reg_1682_pp0_iter13_reg;
assign v268_4_address1 = zext_ln117_3_fu_1054_p1;
assign v268_4_ce0 = v268_4_ce0_local;
assign v268_4_ce1 = v268_4_ce1_local;
assign v268_4_d0 = bitcast_ln68_fu_1241_p1;
assign v268_4_we0 = v268_4_we0_local;
assign v268_5_address0 = v268_5_addr_reg_1676_pp0_iter13_reg;
assign v268_5_address1 = zext_ln117_3_fu_1054_p1;
assign v268_5_ce0 = v268_5_ce0_local;
assign v268_5_ce1 = v268_5_ce1_local;
assign v268_5_d0 = bitcast_ln74_fu_1245_p1;
assign v268_5_we0 = v268_5_we0_local;
assign v268_6_address0 = v268_6_addr_reg_1670_pp0_iter13_reg;
assign v268_6_address1 = zext_ln117_3_fu_1054_p1;
assign v268_6_ce0 = v268_6_ce0_local;
assign v268_6_ce1 = v268_6_ce1_local;
assign v268_6_d0 = bitcast_ln80_fu_1249_p1;
assign v268_6_we0 = v268_6_we0_local;
assign v268_7_address0 = v268_7_addr_reg_1664_pp0_iter13_reg;
assign v268_7_address1 = zext_ln117_3_fu_1054_p1;
assign v268_7_ce0 = v268_7_ce0_local;
assign v268_7_ce1 = v268_7_ce1_local;
assign v268_7_d0 = bitcast_ln86_fu_1253_p1;
assign v268_7_we0 = v268_7_we0_local;
assign v268_8_address0 = v268_8_addr_reg_1658_pp0_iter13_reg;
assign v268_8_address1 = zext_ln117_3_fu_1054_p1;
assign v268_8_ce0 = v268_8_ce0_local;
assign v268_8_ce1 = v268_8_ce1_local;
assign v268_8_d0 = bitcast_ln92_fu_1257_p1;
assign v268_8_we0 = v268_8_we0_local;
assign v268_9_address0 = v268_9_addr_reg_1652_pp0_iter13_reg;
assign v268_9_address1 = zext_ln117_3_fu_1054_p1;
assign v268_9_ce0 = v268_9_ce0_local;
assign v268_9_ce1 = v268_9_ce1_local;
assign v268_9_d0 = bitcast_ln98_fu_1261_p1;
assign v268_9_we0 = v268_9_we0_local;
assign v29_fu_1115_p1 = v268_4_q1;
assign v30_fu_1119_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v29_fu_1115_p1);
assign v34_fu_1126_p1 = v268_5_q1;
assign v35_fu_1130_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v34_fu_1126_p1);
assign v39_fu_1137_p1 = v268_6_q1;
assign v40_fu_1141_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v39_fu_1137_p1);
assign v44_fu_1148_p1 = v268_7_q1;
assign v45_fu_1152_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v44_fu_1148_p1);
assign v49_fu_1159_p1 = v268_8_q1;
assign v50_fu_1163_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v49_fu_1159_p1);
assign v54_fu_1170_p1 = v268_9_q1;
assign v55_fu_1174_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v54_fu_1170_p1);
assign v59_fu_1181_p1 = v268_10_q1;
assign v5_fu_890_p3 = ((icmp_ln35177_reg_579_pp0_iter1_reg[0:0] == 1'b1) ? add_ln34_fu_884_p2 : v5172_fu_130);
assign v60_fu_1185_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v59_fu_1181_p1);
assign v64_fu_1192_p1 = v268_11_q1;
assign v65_fu_1196_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v64_fu_1192_p1);
assign v69_fu_1203_p1 = v268_12_q1;
assign v6_fu_785_p3 = ((or_ln34_fu_765_p2[0:0] == 1'b1) ? select_ln34_fu_749_p3 : add_ln35_fu_771_p2);
assign v70_fu_1207_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v69_fu_1203_p1);
assign v74_fu_1214_p1 = v268_13_q1;
assign v75_fu_1218_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v74_fu_1214_p1);
assign v7_fu_817_p2 = (v7_mid2_fu_777_p3 + 8'd14);
assign v7_mid2_fu_777_p3 = ((or_ln34_fu_765_p2[0:0] == 1'b1) ? select_ln34_1_fu_757_p3 : 8'd0);
assign v8_fu_1071_p1 = v268_0_q1;
assign v9_fu_1075_p3 = ((cmp12_i_reg_1367_pp0_iter7_reg[0:0] == 1'b1) ? 32'd0 : v8_fu_1071_p1);
assign zext_ln117_1_fu_928_p1 = v6_reg_1325_pp0_iter2_reg;
assign zext_ln117_2_fu_948_p1 = tmp_reg_1336_pp0_iter2_reg;
assign zext_ln117_3_fu_1054_p1 = add_ln117_reg_1390_pp0_iter6_reg;
assign zext_ln41_1_fu_907_p1 = v5_reg_1355;
assign zext_ln41_2_fu_963_p1 = add_ln41_fu_957_p2;
endmodule 
