
module kernel_2mm_kernel_2mm_node0_Pipeline_label_28 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,mul_ln38,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,mul_ln75_1,mul_ln127_1,mul_ln140_1,v4,cmp11,empty,v11_5,v24_5,v35_5,v46_5,v57_5,v68_5,v79_5,v90_5,v101_5,grp_fu_4179_p_din0,grp_fu_4179_p_din1,grp_fu_4179_p_opcode,grp_fu_4179_p_dout0,grp_fu_4179_p_ce,grp_fu_4183_p_din0,grp_fu_4183_p_din1,grp_fu_4183_p_opcode,grp_fu_4183_p_dout0,grp_fu_4183_p_ce,grp_fu_4187_p_din0,grp_fu_4187_p_din1,grp_fu_4187_p_opcode,grp_fu_4187_p_dout0,grp_fu_4187_p_ce,grp_fu_4191_p_din0,grp_fu_4191_p_din1,grp_fu_4191_p_dout0,grp_fu_4191_p_ce,grp_fu_4195_p_din0,grp_fu_4195_p_din1,grp_fu_4195_p_dout0,grp_fu_4195_p_ce,grp_fu_4199_p_din0,grp_fu_4199_p_din1,grp_fu_4199_p_dout0,grp_fu_4199_p_ce,grp_fu_4203_p_din0,grp_fu_4203_p_din1,grp_fu_4203_p_dout0,grp_fu_4203_p_ce,grp_fu_4207_p_din0,grp_fu_4207_p_din1,grp_fu_4207_p_dout0,grp_fu_4207_p_ce,grp_fu_4211_p_din0,grp_fu_4211_p_din1,grp_fu_4211_p_dout0,grp_fu_4211_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [13:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
output  [13:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [13:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [13:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [13:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [13:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [13:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
input  [12:0] mul_ln38;
output  [12:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [12:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [12:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [12:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [12:0] v228_2_address0;
output   v228_2_ce0;
input  [31:0] v228_2_q0;
output  [12:0] v228_2_address1;
output   v228_2_ce1;
input  [31:0] v228_2_q1;
output  [12:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [12:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
output  [12:0] v228_4_address0;
output   v228_4_ce0;
input  [31:0] v228_4_q0;
output  [12:0] v228_4_address1;
output   v228_4_ce1;
input  [31:0] v228_4_q1;
output  [12:0] v228_5_address0;
output   v228_5_ce0;
input  [31:0] v228_5_q0;
output  [12:0] v228_5_address1;
output   v228_5_ce1;
input  [31:0] v228_5_q1;
output  [12:0] v228_6_address0;
output   v228_6_ce0;
input  [31:0] v228_6_q0;
output  [12:0] v228_6_address1;
output   v228_6_ce1;
input  [31:0] v228_6_q1;
output  [12:0] v228_7_address0;
output   v228_7_ce0;
input  [31:0] v228_7_q0;
output  [12:0] v228_7_address1;
output   v228_7_ce1;
input  [31:0] v228_7_q1;
input  [13:0] mul_ln75_1;
input  [13:0] mul_ln127_1;
input  [13:0] mul_ln140_1;
input  [31:0] v4;
input  [0:0] cmp11;
input  [2:0] empty;
input  [31:0] v11_5;
input  [31:0] v24_5;
input  [31:0] v35_5;
input  [31:0] v46_5;
input  [31:0] v57_5;
input  [31:0] v68_5;
input  [31:0] v79_5;
input  [31:0] v90_5;
input  [31:0] v101_5;
output  [31:0] grp_fu_4179_p_din0;
output  [31:0] grp_fu_4179_p_din1;
output  [1:0] grp_fu_4179_p_opcode;
input  [31:0] grp_fu_4179_p_dout0;
output   grp_fu_4179_p_ce;
output  [31:0] grp_fu_4183_p_din0;
output  [31:0] grp_fu_4183_p_din1;
output  [1:0] grp_fu_4183_p_opcode;
input  [31:0] grp_fu_4183_p_dout0;
output   grp_fu_4183_p_ce;
output  [31:0] grp_fu_4187_p_din0;
output  [31:0] grp_fu_4187_p_din1;
output  [1:0] grp_fu_4187_p_opcode;
input  [31:0] grp_fu_4187_p_dout0;
output   grp_fu_4187_p_ce;
output  [31:0] grp_fu_4191_p_din0;
output  [31:0] grp_fu_4191_p_din1;
input  [31:0] grp_fu_4191_p_dout0;
output   grp_fu_4191_p_ce;
output  [31:0] grp_fu_4195_p_din0;
output  [31:0] grp_fu_4195_p_din1;
input  [31:0] grp_fu_4195_p_dout0;
output   grp_fu_4195_p_ce;
output  [31:0] grp_fu_4199_p_din0;
output  [31:0] grp_fu_4199_p_din1;
input  [31:0] grp_fu_4199_p_dout0;
output   grp_fu_4199_p_ce;
output  [31:0] grp_fu_4203_p_din0;
output  [31:0] grp_fu_4203_p_din1;
input  [31:0] grp_fu_4203_p_dout0;
output   grp_fu_4203_p_ce;
output  [31:0] grp_fu_4207_p_din0;
output  [31:0] grp_fu_4207_p_din1;
input  [31:0] grp_fu_4207_p_dout0;
output   grp_fu_4207_p_ce;
output  [31:0] grp_fu_4211_p_din0;
output  [31:0] grp_fu_4211_p_din1;
input  [31:0] grp_fu_4211_p_dout0;
output   grp_fu_4211_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln33_reg_1354;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_632;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_636;
reg   [31:0] reg_640;
reg   [31:0] reg_644;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_648;
reg   [31:0] reg_652;
reg   [31:0] reg_656;
reg   [31:0] reg_660;
reg   [31:0] reg_664;
reg   [7:0] v7_2_reg_1349;
wire   [0:0] icmp_ln33_fu_676_p2;
reg   [13:0] v229_0_addr_reg_1398;
reg   [13:0] v229_0_addr_reg_1398_pp0_iter1_reg;
reg   [13:0] v229_0_addr_reg_1398_pp0_iter2_reg;
wire   [13:0] add_ln127_fu_722_p2;
reg   [13:0] add_ln127_reg_1404;
reg   [13:0] v229_1_addr_reg_1409;
reg   [13:0] v229_1_addr_reg_1409_pp0_iter1_reg;
reg   [13:0] v229_1_addr_reg_1409_pp0_iter2_reg;
reg   [13:0] v229_1_addr_4_reg_1414;
reg   [13:0] v229_1_addr_4_reg_1414_pp0_iter1_reg;
reg   [13:0] v229_1_addr_4_reg_1414_pp0_iter2_reg;
reg   [13:0] v229_2_addr_reg_1419;
reg   [13:0] v229_2_addr_reg_1419_pp0_iter1_reg;
reg   [13:0] v229_2_addr_reg_1419_pp0_iter2_reg;
reg   [13:0] v229_2_addr_6_reg_1424;
reg   [13:0] v229_2_addr_6_reg_1424_pp0_iter1_reg;
reg   [13:0] v229_2_addr_6_reg_1424_pp0_iter2_reg;
reg   [13:0] v229_3_addr_reg_1429;
reg   [13:0] v229_3_addr_reg_1429_pp0_iter1_reg;
reg   [13:0] v229_3_addr_reg_1429_pp0_iter2_reg;
reg   [13:0] v229_3_addr_4_reg_1434;
reg   [13:0] v229_3_addr_4_reg_1434_pp0_iter1_reg;
reg   [13:0] v229_3_addr_4_reg_1434_pp0_iter2_reg;
reg   [13:0] v229_0_addr_5_reg_1479;
reg   [13:0] v229_0_addr_5_reg_1479_pp0_iter1_reg;
reg   [13:0] v229_0_addr_5_reg_1479_pp0_iter2_reg;
wire   [13:0] add_ln134_fu_799_p2;
reg   [13:0] add_ln134_reg_1485;
reg   [13:0] v229_1_addr_6_reg_1490;
reg   [13:0] v229_1_addr_6_reg_1490_pp0_iter1_reg;
reg   [13:0] v229_1_addr_6_reg_1490_pp0_iter2_reg;
reg   [13:0] v229_1_addr_7_reg_1495;
reg   [13:0] v229_1_addr_7_reg_1495_pp0_iter1_reg;
reg   [13:0] v229_1_addr_7_reg_1495_pp0_iter2_reg;
reg   [13:0] v229_2_addr_7_reg_1500;
reg   [13:0] v229_2_addr_7_reg_1500_pp0_iter1_reg;
reg   [13:0] v229_2_addr_7_reg_1500_pp0_iter2_reg;
reg   [13:0] v229_2_addr_8_reg_1505;
reg   [13:0] v229_2_addr_8_reg_1505_pp0_iter1_reg;
reg   [13:0] v229_2_addr_8_reg_1505_pp0_iter2_reg;
reg   [13:0] v229_3_addr_5_reg_1510;
reg   [13:0] v229_3_addr_5_reg_1510_pp0_iter1_reg;
reg   [13:0] v229_3_addr_5_reg_1510_pp0_iter2_reg;
reg   [13:0] v229_3_addr_6_reg_1515;
reg   [13:0] v229_3_addr_6_reg_1515_pp0_iter1_reg;
reg   [13:0] v229_3_addr_6_reg_1515_pp0_iter2_reg;
reg   [13:0] v229_0_addr_4_reg_1520;
reg   [13:0] v229_0_addr_4_reg_1520_pp0_iter1_reg;
reg   [13:0] v229_0_addr_4_reg_1520_pp0_iter2_reg;
reg   [13:0] v229_1_addr_5_reg_1525;
reg   [13:0] v229_1_addr_5_reg_1525_pp0_iter1_reg;
reg   [13:0] v229_1_addr_5_reg_1525_pp0_iter2_reg;
reg   [13:0] v229_1_addr_5_reg_1525_pp0_iter3_reg;
wire   [31:0] v12_fu_855_p19;
reg   [31:0] v12_reg_1530;
reg   [13:0] v229_0_addr_6_reg_1537;
reg   [13:0] v229_0_addr_6_reg_1537_pp0_iter1_reg;
reg   [13:0] v229_0_addr_6_reg_1537_pp0_iter2_reg;
reg   [13:0] v229_0_addr_6_reg_1537_pp0_iter3_reg;
reg   [13:0] v229_1_addr_8_reg_1542;
reg   [13:0] v229_1_addr_8_reg_1542_pp0_iter1_reg;
reg   [13:0] v229_1_addr_8_reg_1542_pp0_iter2_reg;
reg   [13:0] v229_1_addr_8_reg_1542_pp0_iter3_reg;
wire   [31:0] v18_fu_931_p19;
reg   [31:0] v18_reg_1547;
reg   [31:0] v229_2_load_6_reg_1554;
reg   [31:0] v229_3_load_reg_1559;
reg   [31:0] v229_3_load_4_reg_1564;
reg   [31:0] v229_0_load_reg_1569;
reg   [31:0] v229_0_load_4_reg_1574;
wire   [31:0] v8_fu_970_p1;
reg   [31:0] v8_reg_1579;
wire   [31:0] v15_fu_975_p1;
reg   [31:0] v15_reg_1585;
wire   [31:0] v21_fu_980_p1;
reg   [31:0] v21_reg_1591;
reg   [31:0] v229_2_load_8_reg_1597;
reg   [31:0] v229_3_load_5_reg_1602;
reg   [31:0] v229_3_load_6_reg_1607;
reg   [31:0] v229_0_load_5_reg_1612;
reg   [31:0] v229_0_load_6_reg_1617;
wire   [31:0] v27_fu_985_p1;
reg   [31:0] v27_reg_1622;
wire   [31:0] v32_fu_989_p1;
reg   [31:0] v32_reg_1628;
wire   [31:0] v38_fu_993_p1;
reg   [31:0] v38_reg_1634;
reg   [31:0] v229_1_load_7_reg_1640;
reg   [31:0] v229_1_load_8_reg_1645;
wire   [31:0] v43_fu_997_p1;
reg   [31:0] v43_reg_1650;
wire   [31:0] v49_fu_1001_p1;
reg   [31:0] v49_reg_1656;
wire   [31:0] v54_fu_1005_p1;
reg   [31:0] v54_reg_1662;
wire   [31:0] v10_fu_1010_p3;
reg   [31:0] v10_reg_1668;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v13_reg_1673;
wire   [31:0] v17_fu_1016_p3;
reg   [31:0] v17_reg_1678;
reg   [31:0] v19_reg_1683;
wire   [31:0] v23_fu_1022_p3;
reg   [31:0] v23_reg_1688;
reg   [31:0] v25_reg_1693;
wire   [31:0] v60_fu_1028_p1;
reg   [31:0] v60_reg_1698;
wire   [31:0] v65_fu_1033_p1;
reg   [31:0] v65_reg_1704;
wire   [31:0] v71_fu_1038_p1;
reg   [31:0] v71_reg_1710;
wire   [31:0] v29_fu_1052_p3;
reg   [31:0] v29_reg_1716;
reg   [31:0] v30_reg_1721;
wire   [31:0] v34_fu_1058_p3;
reg   [31:0] v34_reg_1726;
reg   [31:0] v36_reg_1731;
wire   [31:0] v40_fu_1064_p3;
reg   [31:0] v40_reg_1736;
reg   [31:0] v41_reg_1741;
wire   [31:0] v76_fu_1070_p1;
reg   [31:0] v76_reg_1746;
wire   [31:0] v82_fu_1074_p1;
reg   [31:0] v82_reg_1752;
wire   [31:0] v87_fu_1078_p1;
reg   [31:0] v87_reg_1758;
wire   [31:0] v45_fu_1082_p3;
reg   [31:0] v45_reg_1764;
reg   [31:0] v47_reg_1769;
wire   [31:0] v51_fu_1088_p3;
reg   [31:0] v51_reg_1774;
reg   [31:0] v52_reg_1779;
wire   [31:0] v56_fu_1094_p3;
reg   [31:0] v56_reg_1784;
reg   [31:0] v58_reg_1789;
wire   [31:0] v93_fu_1100_p1;
reg   [31:0] v93_reg_1794;
wire   [31:0] v98_fu_1104_p1;
reg   [31:0] v98_reg_1800;
wire   [31:0] v104_fu_1108_p1;
reg   [31:0] v104_reg_1806;
wire   [31:0] v62_fu_1112_p3;
reg   [31:0] v62_reg_1812;
reg   [31:0] v63_reg_1817;
wire   [31:0] v67_fu_1118_p3;
reg   [31:0] v67_reg_1822;
reg   [31:0] v69_reg_1827;
wire   [31:0] v73_fu_1124_p3;
reg   [31:0] v73_reg_1832;
reg   [31:0] v74_reg_1837;
wire   [31:0] v78_fu_1130_p3;
reg   [31:0] v78_reg_1842;
reg   [31:0] v80_reg_1847;
wire   [31:0] v84_fu_1136_p3;
reg   [31:0] v84_reg_1852;
reg   [31:0] v85_reg_1857;
wire   [31:0] v89_fu_1142_p3;
reg   [31:0] v89_reg_1862;
reg   [31:0] v91_reg_1867;
wire   [31:0] v95_fu_1148_p3;
reg   [31:0] v95_reg_1872;
reg   [31:0] v96_reg_1877;
wire   [31:0] v100_fu_1154_p3;
reg   [31:0] v100_reg_1882;
reg   [31:0] v102_reg_1887;
wire   [31:0] v106_fu_1160_p3;
reg   [31:0] v106_reg_1892;
reg   [31:0] v107_reg_1897;
reg   [31:0] v97_reg_1902;
reg   [31:0] v103_reg_1907;
reg   [31:0] v108_reg_1912;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln38_4_fu_696_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln75_fu_714_p1;
wire   [63:0] zext_ln34_fu_734_p1;
wire   [63:0] zext_ln45_4_fu_773_p1;
wire   [63:0] zext_ln82_fu_791_p1;
wire   [63:0] zext_ln42_fu_811_p1;
wire   [63:0] zext_ln127_fu_818_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln134_fu_894_p1;
reg   [7:0] v7_fu_124;
wire   [7:0] add_ln33_fu_1042_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_2;
reg    v229_1_ce1_local;
reg   [13:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [13:0] v229_1_address0_local;
wire    ap_block_pp0_stage2;
reg    v229_1_we1_local;
reg   [31:0] v229_1_d1_local;
wire   [31:0] bitcast_ln41_fu_1186_p1;
wire    ap_block_pp0_stage3;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln48_fu_1191_p1;
wire   [31:0] bitcast_ln94_fu_1206_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln100_fu_1211_p1;
wire   [31:0] bitcast_ln146_fu_1245_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln152_fu_1249_p1;
reg    v228_0_ce1_local;
reg    v228_0_ce0_local;
reg    v228_1_ce1_local;
reg    v228_1_ce0_local;
reg    v228_2_ce1_local;
reg    v228_2_ce0_local;
reg    v228_3_ce1_local;
reg    v228_3_ce0_local;
reg    v228_4_ce1_local;
reg    v228_4_ce0_local;
reg    v228_5_ce1_local;
reg    v228_5_ce0_local;
reg    v228_6_ce1_local;
reg    v228_6_ce0_local;
reg    v228_7_ce1_local;
reg    v228_7_ce0_local;
reg    v229_2_ce1_local;
reg   [13:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [13:0] v229_2_address0_local;
reg    v229_2_we1_local;
reg   [31:0] v229_2_d1_local;
wire   [31:0] bitcast_ln55_fu_1166_p1;
reg    v229_2_we0_local;
reg   [31:0] v229_2_d0_local;
wire   [31:0] bitcast_ln61_fu_1171_p1;
wire   [31:0] bitcast_ln107_fu_1216_p1;
wire   [31:0] bitcast_ln113_fu_1221_p1;
reg    v229_3_ce1_local;
reg   [13:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [13:0] v229_3_address0_local;
reg    v229_3_we1_local;
reg   [31:0] v229_3_d1_local;
wire   [31:0] bitcast_ln68_fu_1176_p1;
reg    v229_3_we0_local;
reg   [31:0] v229_3_d0_local;
wire   [31:0] bitcast_ln74_fu_1181_p1;
wire   [31:0] bitcast_ln120_fu_1226_p1;
wire   [31:0] bitcast_ln126_fu_1231_p1;
reg    v229_0_ce1_local;
reg   [13:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [13:0] v229_0_address0_local;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln81_fu_1196_p1;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln87_fu_1201_p1;
wire   [31:0] bitcast_ln133_fu_1236_p1;
wire   [31:0] bitcast_ln139_fu_1241_p1;
reg   [31:0] grp_fu_596_p0;
reg   [31:0] grp_fu_596_p1;
reg   [31:0] grp_fu_600_p0;
reg   [31:0] grp_fu_600_p1;
reg   [31:0] grp_fu_604_p0;
reg   [31:0] grp_fu_604_p1;
reg   [31:0] grp_fu_608_p0;
reg   [31:0] grp_fu_612_p0;
reg   [31:0] grp_fu_612_p1;
reg   [31:0] grp_fu_616_p0;
reg   [31:0] grp_fu_620_p0;
reg   [31:0] grp_fu_620_p1;
reg   [31:0] grp_fu_624_p0;
reg   [31:0] grp_fu_628_p0;
reg   [31:0] grp_fu_628_p1;
wire   [12:0] zext_ln38_3_fu_686_p1;
wire   [12:0] add_ln38_fu_690_p2;
wire   [13:0] zext_ln38_fu_682_p1;
wire   [13:0] add_ln75_fu_708_p2;
wire   [13:0] add_ln34_fu_728_p2;
wire   [6:0] tmp_s_fu_741_p4;
wire   [7:0] or_ln42_5_fu_751_p3;
wire   [12:0] zext_ln45_3_fu_763_p1;
wire   [12:0] add_ln45_fu_767_p2;
wire   [13:0] zext_ln45_fu_759_p1;
wire   [13:0] add_ln82_fu_785_p2;
wire   [13:0] add_ln42_fu_805_p2;
wire   [31:0] v12_fu_855_p2;
wire   [31:0] v12_fu_855_p4;
wire   [31:0] v12_fu_855_p6;
wire   [31:0] v12_fu_855_p8;
wire   [31:0] v12_fu_855_p10;
wire   [31:0] v12_fu_855_p12;
wire   [31:0] v12_fu_855_p14;
wire   [31:0] v12_fu_855_p16;
wire   [31:0] v12_fu_855_p17;
wire   [31:0] v18_fu_931_p2;
wire   [31:0] v18_fu_931_p4;
wire   [31:0] v18_fu_931_p6;
wire   [31:0] v18_fu_931_p8;
wire   [31:0] v18_fu_931_p10;
wire   [31:0] v18_fu_931_p12;
wire   [31:0] v18_fu_931_p14;
wire   [31:0] v18_fu_931_p16;
wire   [31:0] v18_fu_931_p17;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire   [2:0] v12_fu_855_p1;
wire   [2:0] v12_fu_855_p3;
wire   [2:0] v12_fu_855_p5;
wire   [2:0] v12_fu_855_p7;
wire  signed [2:0] v12_fu_855_p9;
wire  signed [2:0] v12_fu_855_p11;
wire  signed [2:0] v12_fu_855_p13;
wire  signed [2:0] v12_fu_855_p15;
wire   [2:0] v18_fu_931_p1;
wire   [2:0] v18_fu_931_p3;
wire   [2:0] v18_fu_931_p5;
wire   [2:0] v18_fu_931_p7;
wire  signed [2:0] v18_fu_931_p9;
wire  signed [2:0] v18_fu_931_p11;
wire  signed [2:0] v18_fu_931_p13;
wire  signed [2:0] v18_fu_931_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v7_fu_124 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U293(.din0(v12_fu_855_p2),.din1(v12_fu_855_p4),.din2(v12_fu_855_p6),.din3(v12_fu_855_p8),.din4(v12_fu_855_p10),.din5(v12_fu_855_p12),.din6(v12_fu_855_p14),.din7(v12_fu_855_p16),.def(v12_fu_855_p17),.sel(empty),.dout(v12_fu_855_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U294(.din0(v18_fu_931_p2),.din1(v18_fu_931_p4),.din2(v18_fu_931_p6),.din3(v18_fu_931_p8),.din4(v18_fu_931_p10),.din5(v18_fu_931_p12),.din6(v18_fu_931_p14),.din7(v18_fu_931_p16),.def(v18_fu_931_p17),.sel(empty),.dout(v18_fu_931_p19));
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v7_fu_124 <= 8'd0;
    end else if (((icmp_ln33_reg_1354 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_fu_124 <= add_ln33_fu_1042_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln127_reg_1404 <= add_ln127_fu_722_p2;
        add_ln134_reg_1485 <= add_ln134_fu_799_p2;
        icmp_ln33_reg_1354 <= icmp_ln33_fu_676_p2;
        v229_0_addr_5_reg_1479 <= zext_ln82_fu_791_p1;
        v229_0_addr_5_reg_1479_pp0_iter1_reg <= v229_0_addr_5_reg_1479;
        v229_0_addr_5_reg_1479_pp0_iter2_reg <= v229_0_addr_5_reg_1479_pp0_iter1_reg;
        v229_0_addr_reg_1398 <= zext_ln75_fu_714_p1;
        v229_0_addr_reg_1398_pp0_iter1_reg <= v229_0_addr_reg_1398;
        v229_0_addr_reg_1398_pp0_iter2_reg <= v229_0_addr_reg_1398_pp0_iter1_reg;
        v229_1_addr_4_reg_1414 <= zext_ln75_fu_714_p1;
        v229_1_addr_4_reg_1414_pp0_iter1_reg <= v229_1_addr_4_reg_1414;
        v229_1_addr_4_reg_1414_pp0_iter2_reg <= v229_1_addr_4_reg_1414_pp0_iter1_reg;
        v229_1_addr_6_reg_1490 <= zext_ln42_fu_811_p1;
        v229_1_addr_6_reg_1490_pp0_iter1_reg <= v229_1_addr_6_reg_1490;
        v229_1_addr_6_reg_1490_pp0_iter2_reg <= v229_1_addr_6_reg_1490_pp0_iter1_reg;
        v229_1_addr_7_reg_1495 <= zext_ln82_fu_791_p1;
        v229_1_addr_7_reg_1495_pp0_iter1_reg <= v229_1_addr_7_reg_1495;
        v229_1_addr_7_reg_1495_pp0_iter2_reg <= v229_1_addr_7_reg_1495_pp0_iter1_reg;
        v229_1_addr_reg_1409 <= zext_ln34_fu_734_p1;
        v229_1_addr_reg_1409_pp0_iter1_reg <= v229_1_addr_reg_1409;
        v229_1_addr_reg_1409_pp0_iter2_reg <= v229_1_addr_reg_1409_pp0_iter1_reg;
        v229_2_addr_6_reg_1424 <= zext_ln75_fu_714_p1;
        v229_2_addr_6_reg_1424_pp0_iter1_reg <= v229_2_addr_6_reg_1424;
        v229_2_addr_6_reg_1424_pp0_iter2_reg <= v229_2_addr_6_reg_1424_pp0_iter1_reg;
        v229_2_addr_7_reg_1500 <= zext_ln42_fu_811_p1;
        v229_2_addr_7_reg_1500_pp0_iter1_reg <= v229_2_addr_7_reg_1500;
        v229_2_addr_7_reg_1500_pp0_iter2_reg <= v229_2_addr_7_reg_1500_pp0_iter1_reg;
        v229_2_addr_8_reg_1505 <= zext_ln82_fu_791_p1;
        v229_2_addr_8_reg_1505_pp0_iter1_reg <= v229_2_addr_8_reg_1505;
        v229_2_addr_8_reg_1505_pp0_iter2_reg <= v229_2_addr_8_reg_1505_pp0_iter1_reg;
        v229_2_addr_reg_1419 <= zext_ln34_fu_734_p1;
        v229_2_addr_reg_1419_pp0_iter1_reg <= v229_2_addr_reg_1419;
        v229_2_addr_reg_1419_pp0_iter2_reg <= v229_2_addr_reg_1419_pp0_iter1_reg;
        v229_3_addr_4_reg_1434 <= zext_ln75_fu_714_p1;
        v229_3_addr_4_reg_1434_pp0_iter1_reg <= v229_3_addr_4_reg_1434;
        v229_3_addr_4_reg_1434_pp0_iter2_reg <= v229_3_addr_4_reg_1434_pp0_iter1_reg;
        v229_3_addr_5_reg_1510 <= zext_ln42_fu_811_p1;
        v229_3_addr_5_reg_1510_pp0_iter1_reg <= v229_3_addr_5_reg_1510;
        v229_3_addr_5_reg_1510_pp0_iter2_reg <= v229_3_addr_5_reg_1510_pp0_iter1_reg;
        v229_3_addr_6_reg_1515 <= zext_ln82_fu_791_p1;
        v229_3_addr_6_reg_1515_pp0_iter1_reg <= v229_3_addr_6_reg_1515;
        v229_3_addr_6_reg_1515_pp0_iter2_reg <= v229_3_addr_6_reg_1515_pp0_iter1_reg;
        v229_3_addr_reg_1429 <= zext_ln34_fu_734_p1;
        v229_3_addr_reg_1429_pp0_iter1_reg <= v229_3_addr_reg_1429;
        v229_3_addr_reg_1429_pp0_iter2_reg <= v229_3_addr_reg_1429_pp0_iter1_reg;
        v29_reg_1716 <= v29_fu_1052_p3;
        v34_reg_1726 <= v34_fu_1058_p3;
        v40_reg_1736 <= v40_fu_1064_p3;
        v76_reg_1746 <= v76_fu_1070_p1;
        v7_2_reg_1349 <= ap_sig_allocacmp_v7_2;
        v82_reg_1752 <= v82_fu_1074_p1;
        v87_reg_1758 <= v87_fu_1078_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v10_reg_1668 <= v10_fu_1010_p3;
        v17_reg_1678 <= v17_fu_1016_p3;
        v23_reg_1688 <= v23_fu_1022_p3;
        v60_reg_1698 <= v60_fu_1028_p1;
        v65_reg_1704 <= v65_fu_1033_p1;
        v71_reg_1710 <= v71_fu_1038_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_632 <= v229_1_q1;
        reg_636 <= v229_1_q0;
        reg_640 <= v229_2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_644 <= grp_fu_4179_p_dout0;
        reg_648 <= grp_fu_4183_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_652 <= grp_fu_4187_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_656 <= grp_fu_4179_p_dout0;
        reg_660 <= grp_fu_4183_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_664 <= grp_fu_4187_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v100_reg_1882 <= v100_fu_1154_p3;
        v106_reg_1892 <= v106_fu_1160_p3;
        v43_reg_1650 <= v43_fu_997_p1;
        v49_reg_1656 <= v49_fu_1001_p1;
        v54_reg_1662 <= v54_fu_1005_p1;
        v95_reg_1872 <= v95_fu_1148_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v102_reg_1887 <= grp_fu_4203_p_dout0;
        v107_reg_1897 <= grp_fu_4211_p_dout0;
        v96_reg_1877 <= grp_fu_4195_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v103_reg_1907 <= grp_fu_4183_p_dout0;
        v108_reg_1912 <= grp_fu_4187_p_dout0;
        v97_reg_1902 <= grp_fu_4179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v104_reg_1806 <= v104_fu_1108_p1;
        v12_reg_1530 <= v12_fu_855_p19;
        v18_reg_1547 <= v18_fu_931_p19;
        v229_0_addr_4_reg_1520 <= zext_ln127_fu_818_p1;
        v229_0_addr_4_reg_1520_pp0_iter1_reg <= v229_0_addr_4_reg_1520;
        v229_0_addr_4_reg_1520_pp0_iter2_reg <= v229_0_addr_4_reg_1520_pp0_iter1_reg;
        v229_0_addr_6_reg_1537 <= zext_ln134_fu_894_p1;
        v229_0_addr_6_reg_1537_pp0_iter1_reg <= v229_0_addr_6_reg_1537;
        v229_0_addr_6_reg_1537_pp0_iter2_reg <= v229_0_addr_6_reg_1537_pp0_iter1_reg;
        v229_0_addr_6_reg_1537_pp0_iter3_reg <= v229_0_addr_6_reg_1537_pp0_iter2_reg;
        v229_1_addr_5_reg_1525 <= zext_ln127_fu_818_p1;
        v229_1_addr_5_reg_1525_pp0_iter1_reg <= v229_1_addr_5_reg_1525;
        v229_1_addr_5_reg_1525_pp0_iter2_reg <= v229_1_addr_5_reg_1525_pp0_iter1_reg;
        v229_1_addr_5_reg_1525_pp0_iter3_reg <= v229_1_addr_5_reg_1525_pp0_iter2_reg;
        v229_1_addr_8_reg_1542 <= zext_ln134_fu_894_p1;
        v229_1_addr_8_reg_1542_pp0_iter1_reg <= v229_1_addr_8_reg_1542;
        v229_1_addr_8_reg_1542_pp0_iter2_reg <= v229_1_addr_8_reg_1542_pp0_iter1_reg;
        v229_1_addr_8_reg_1542_pp0_iter3_reg <= v229_1_addr_8_reg_1542_pp0_iter2_reg;
        v45_reg_1764 <= v45_fu_1082_p3;
        v51_reg_1774 <= v51_fu_1088_p3;
        v56_reg_1784 <= v56_fu_1094_p3;
        v93_reg_1794 <= v93_fu_1100_p1;
        v98_reg_1800 <= v98_fu_1104_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v13_reg_1673 <= grp_fu_4195_p_dout0;
        v19_reg_1683 <= grp_fu_4203_p_dout0;
        v25_reg_1693 <= grp_fu_4211_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v15_reg_1585 <= v15_fu_975_p1;
        v21_reg_1591 <= v21_fu_980_p1;
        v62_reg_1812 <= v62_fu_1112_p3;
        v67_reg_1822 <= v67_fu_1118_p3;
        v73_reg_1832 <= v73_fu_1124_p3;
        v8_reg_1579 <= v8_fu_970_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_load_4_reg_1574 <= v229_0_q0;
        v229_0_load_reg_1569 <= v229_0_q1;
        v229_2_load_6_reg_1554 <= v229_2_q0;
        v229_3_load_4_reg_1564 <= v229_3_q0;
        v229_3_load_reg_1559 <= v229_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_load_5_reg_1612 <= v229_0_q1;
        v229_0_load_6_reg_1617 <= v229_0_q0;
        v229_2_load_8_reg_1597 <= v229_2_q0;
        v229_3_load_5_reg_1602 <= v229_3_q1;
        v229_3_load_6_reg_1607 <= v229_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_load_7_reg_1640 <= v229_1_q1;
        v229_1_load_8_reg_1645 <= v229_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_reg_1622 <= v27_fu_985_p1;
        v32_reg_1628 <= v32_fu_989_p1;
        v38_reg_1634 <= v38_fu_993_p1;
        v78_reg_1842 <= v78_fu_1130_p3;
        v84_reg_1852 <= v84_fu_1136_p3;
        v89_reg_1862 <= v89_fu_1142_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v30_reg_1721 <= grp_fu_4195_p_dout0;
        v36_reg_1731 <= grp_fu_4203_p_dout0;
        v41_reg_1741 <= grp_fu_4211_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_1769 <= grp_fu_4195_p_dout0;
        v52_reg_1779 <= grp_fu_4203_p_dout0;
        v58_reg_1789 <= grp_fu_4211_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v63_reg_1817 <= grp_fu_4195_p_dout0;
        v69_reg_1827 <= grp_fu_4203_p_dout0;
        v74_reg_1837 <= grp_fu_4211_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v80_reg_1847 <= grp_fu_4195_p_dout0;
        v85_reg_1857 <= grp_fu_4203_p_dout0;
        v91_reg_1867 <= grp_fu_4211_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_1354 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v7_2 = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_2 = v7_fu_124;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_596_p0 = v95_reg_1872;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_596_p0 = v78_reg_1842;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_596_p0 = v62_reg_1812;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_596_p0 = v45_reg_1764;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_596_p0 = v29_reg_1716;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_596_p0 = v10_reg_1668;
        end else begin
            grp_fu_596_p0 = 'bx;
        end
    end else begin
        grp_fu_596_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_596_p1 = v96_reg_1877;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_596_p1 = v80_reg_1847;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_596_p1 = v63_reg_1817;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_596_p1 = v47_reg_1769;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_596_p1 = v30_reg_1721;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_596_p1 = v13_reg_1673;
        end else begin
            grp_fu_596_p1 = 'bx;
        end
    end else begin
        grp_fu_596_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_600_p0 = v100_reg_1882;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_600_p0 = v84_reg_1852;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_600_p0 = v67_reg_1822;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_600_p0 = v51_reg_1774;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_600_p0 = v34_reg_1726;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_600_p0 = v17_reg_1678;
        end else begin
            grp_fu_600_p0 = 'bx;
        end
    end else begin
        grp_fu_600_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_600_p1 = v102_reg_1887;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_600_p1 = v85_reg_1857;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_600_p1 = v69_reg_1827;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_600_p1 = v52_reg_1779;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_600_p1 = v36_reg_1731;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_600_p1 = v19_reg_1683;
        end else begin
            grp_fu_600_p1 = 'bx;
        end
    end else begin
        grp_fu_600_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_604_p0 = v106_reg_1892;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_604_p0 = v89_reg_1862;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_604_p0 = v73_reg_1832;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_604_p0 = v56_reg_1784;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_604_p0 = v40_reg_1736;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_604_p0 = v23_reg_1688;
        end else begin
            grp_fu_604_p0 = 'bx;
        end
    end else begin
        grp_fu_604_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_604_p1 = v107_reg_1897;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_604_p1 = v91_reg_1867;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_604_p1 = v74_reg_1837;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_604_p1 = v58_reg_1789;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_604_p1 = v41_reg_1741;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_604_p1 = v25_reg_1693;
        end else begin
            grp_fu_604_p1 = 'bx;
        end
    end else begin
        grp_fu_604_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_608_p0 = v93_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_608_p0 = v76_fu_1070_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_608_p0 = v60_fu_1028_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_608_p0 = v43_fu_997_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_608_p0 = v27_fu_985_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_608_p0 = v8_fu_970_p1;
    end else begin
        grp_fu_608_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_612_p0 = v90_5;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_612_p0 = v79_5;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_612_p0 = v57_5;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_612_p0 = v46_5;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_612_p0 = v24_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_612_p0 = v11_5;
    end else begin
        grp_fu_612_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_612_p1 = v18_reg_1547;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_612_p1 = v12_reg_1530;
    end else begin
        grp_fu_612_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_616_p0 = v98_fu_1104_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_616_p0 = v82_fu_1074_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_616_p0 = v65_fu_1033_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_616_p0 = v49_fu_1001_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_616_p0 = v32_fu_989_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_616_p0 = v15_fu_975_p1;
    end else begin
        grp_fu_616_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_620_p0 = v101_5;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_620_p0 = v79_5;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_620_p0 = v68_5;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_620_p0 = v46_5;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_620_p0 = v35_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_620_p0 = v11_5;
    end else begin
        grp_fu_620_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_620_p1 = v12_reg_1530;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_620_p1 = v18_reg_1547;
    end else begin
        grp_fu_620_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_624_p0 = v104_fu_1108_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_624_p0 = v87_fu_1078_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_624_p0 = v71_fu_1038_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_624_p0 = v54_fu_1005_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_624_p0 = v38_fu_993_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_624_p0 = v21_fu_980_p1;
    end else begin
        grp_fu_624_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_628_p0 = v101_5;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_628_p0 = v90_5;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_628_p0 = v68_5;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_628_p0 = v57_5;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_628_p0 = v35_5;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_628_p0 = v24_5;
    end else begin
        grp_fu_628_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_628_p1 = v18_reg_1547;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_628_p1 = v12_reg_1530;
    end else begin
        grp_fu_628_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_0_ce0_local = 1'b1;
    end else begin
        v228_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_0_ce1_local = 1'b1;
    end else begin
        v228_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_1_ce0_local = 1'b1;
    end else begin
        v228_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_1_ce1_local = 1'b1;
    end else begin
        v228_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_2_ce0_local = 1'b1;
    end else begin
        v228_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_2_ce1_local = 1'b1;
    end else begin
        v228_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_3_ce0_local = 1'b1;
    end else begin
        v228_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_3_ce1_local = 1'b1;
    end else begin
        v228_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_4_ce0_local = 1'b1;
    end else begin
        v228_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_4_ce1_local = 1'b1;
    end else begin
        v228_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_5_ce0_local = 1'b1;
    end else begin
        v228_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_5_ce1_local = 1'b1;
    end else begin
        v228_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_6_ce0_local = 1'b1;
    end else begin
        v228_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_6_ce1_local = 1'b1;
    end else begin
        v228_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_7_ce0_local = 1'b1;
    end else begin
        v228_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v228_7_ce1_local = 1'b1;
    end else begin
        v228_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = v229_0_addr_6_reg_1537_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address0_local = v229_0_addr_reg_1398_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = zext_ln134_fu_894_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln82_fu_791_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_address1_local = v229_0_addr_4_reg_1520_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address1_local = v229_0_addr_5_reg_1479_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = zext_ln127_fu_818_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = zext_ln75_fu_714_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_d0_local = bitcast_ln139_fu_1241_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d0_local = bitcast_ln81_fu_1196_p1;
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_0_d1_local = bitcast_ln133_fu_1236_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v229_0_d1_local = bitcast_ln87_fu_1201_p1;
        end else begin
            v229_0_d1_local = 'bx;
        end
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_address0_local = v229_1_addr_8_reg_1542_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address0_local = v229_1_addr_7_reg_1495_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_address0_local = v229_1_addr_6_reg_1490_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_8_reg_1542;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = v229_1_addr_7_reg_1495;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln42_fu_811_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_address1_local = v229_1_addr_5_reg_1525_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address1_local = v229_1_addr_4_reg_1414_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_address1_local = v229_1_addr_reg_1409_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_5_reg_1525;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = v229_1_addr_4_reg_1414;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln34_fu_734_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_d0_local = bitcast_ln152_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_d0_local = bitcast_ln100_fu_1211_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_d0_local = bitcast_ln48_fu_1191_p1;
    end else begin
        v229_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_1_d1_local = bitcast_ln146_fu_1245_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_d1_local = bitcast_ln94_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_1_d1_local = bitcast_ln41_fu_1186_p1;
    end else begin
        v229_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_2_address0_local = v229_2_addr_8_reg_1505_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address0_local = v229_2_addr_7_reg_1500_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address0_local = v229_2_addr_8_reg_1505;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln42_fu_811_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_2_address1_local = v229_2_addr_6_reg_1424_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address1_local = v229_2_addr_reg_1419_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address1_local = v229_2_addr_6_reg_1424;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln34_fu_734_p1;
    end else begin
        v229_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce0_local = 1'b1;
    end else begin
        v229_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce1_local = 1'b1;
    end else begin
        v229_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_2_d0_local = bitcast_ln113_fu_1221_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d0_local = bitcast_ln61_fu_1171_p1;
        end else begin
            v229_2_d0_local = 'bx;
        end
    end else begin
        v229_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_2_d1_local = bitcast_ln107_fu_1216_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d1_local = bitcast_ln55_fu_1166_p1;
        end else begin
            v229_2_d1_local = 'bx;
        end
    end else begin
        v229_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we0_local = 1'b1;
    end else begin
        v229_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we1_local = 1'b1;
    end else begin
        v229_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_address0_local = v229_3_addr_6_reg_1515_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address0_local = v229_3_addr_5_reg_1510_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address0_local = v229_3_addr_6_reg_1515;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = zext_ln42_fu_811_p1;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_address1_local = v229_3_addr_4_reg_1434_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address1_local = v229_3_addr_reg_1429_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address1_local = v229_3_addr_4_reg_1434;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = zext_ln34_fu_734_p1;
    end else begin
        v229_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce0_local = 1'b1;
    end else begin
        v229_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce1_local = 1'b1;
    end else begin
        v229_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_3_d0_local = bitcast_ln126_fu_1231_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_3_d0_local = bitcast_ln74_fu_1181_p1;
        end else begin
            v229_3_d0_local = 'bx;
        end
    end else begin
        v229_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_3_d1_local = bitcast_ln120_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_3_d1_local = bitcast_ln68_fu_1176_p1;
        end else begin
            v229_3_d1_local = 'bx;
        end
    end else begin
        v229_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_3_we0_local = 1'b1;
    end else begin
        v229_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_3_we1_local = 1'b1;
    end else begin
        v229_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln127_fu_722_p2 = (mul_ln127_1 + zext_ln38_fu_682_p1);
assign add_ln134_fu_799_p2 = (mul_ln127_1 + zext_ln45_fu_759_p1);
assign add_ln33_fu_1042_p2 = (v7_2_reg_1349 + 8'd2);
assign add_ln34_fu_728_p2 = (mul_ln140_1 + zext_ln38_fu_682_p1);
assign add_ln38_fu_690_p2 = (mul_ln38 + zext_ln38_3_fu_686_p1);
assign add_ln42_fu_805_p2 = (mul_ln140_1 + zext_ln45_fu_759_p1);
assign add_ln45_fu_767_p2 = (mul_ln38 + zext_ln45_3_fu_763_p1);
assign add_ln75_fu_708_p2 = (mul_ln75_1 + zext_ln38_fu_682_p1);
assign add_ln82_fu_785_p2 = (mul_ln75_1 + zext_ln45_fu_759_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign bitcast_ln100_fu_1211_p1 = reg_644;
assign bitcast_ln107_fu_1216_p1 = reg_648;
assign bitcast_ln113_fu_1221_p1 = reg_664;
assign bitcast_ln120_fu_1226_p1 = reg_644;
assign bitcast_ln126_fu_1231_p1 = reg_648;
assign bitcast_ln133_fu_1236_p1 = reg_652;
assign bitcast_ln139_fu_1241_p1 = v97_reg_1902;
assign bitcast_ln146_fu_1245_p1 = v103_reg_1907;
assign bitcast_ln152_fu_1249_p1 = v108_reg_1912;
assign bitcast_ln41_fu_1186_p1 = reg_644;
assign bitcast_ln48_fu_1191_p1 = reg_648;
assign bitcast_ln55_fu_1166_p1 = reg_652;
assign bitcast_ln61_fu_1171_p1 = reg_656;
assign bitcast_ln68_fu_1176_p1 = reg_660;
assign bitcast_ln74_fu_1181_p1 = reg_664;
assign bitcast_ln81_fu_1196_p1 = reg_656;
assign bitcast_ln87_fu_1201_p1 = reg_660;
assign bitcast_ln94_fu_1206_p1 = reg_652;
assign grp_fu_4179_p_ce = 1'b1;
assign grp_fu_4179_p_din0 = grp_fu_596_p0;
assign grp_fu_4179_p_din1 = grp_fu_596_p1;
assign grp_fu_4179_p_opcode = 2'd0;
assign grp_fu_4183_p_ce = 1'b1;
assign grp_fu_4183_p_din0 = grp_fu_600_p0;
assign grp_fu_4183_p_din1 = grp_fu_600_p1;
assign grp_fu_4183_p_opcode = 2'd0;
assign grp_fu_4187_p_ce = 1'b1;
assign grp_fu_4187_p_din0 = grp_fu_604_p0;
assign grp_fu_4187_p_din1 = grp_fu_604_p1;
assign grp_fu_4187_p_opcode = 2'd0;
assign grp_fu_4191_p_ce = 1'b1;
assign grp_fu_4191_p_din0 = grp_fu_608_p0;
assign grp_fu_4191_p_din1 = v4;
assign grp_fu_4195_p_ce = 1'b1;
assign grp_fu_4195_p_din0 = grp_fu_612_p0;
assign grp_fu_4195_p_din1 = grp_fu_612_p1;
assign grp_fu_4199_p_ce = 1'b1;
assign grp_fu_4199_p_din0 = grp_fu_616_p0;
assign grp_fu_4199_p_din1 = v4;
assign grp_fu_4203_p_ce = 1'b1;
assign grp_fu_4203_p_din0 = grp_fu_620_p0;
assign grp_fu_4203_p_din1 = grp_fu_620_p1;
assign grp_fu_4207_p_ce = 1'b1;
assign grp_fu_4207_p_din0 = grp_fu_624_p0;
assign grp_fu_4207_p_din1 = v4;
assign grp_fu_4211_p_ce = 1'b1;
assign grp_fu_4211_p_din0 = grp_fu_628_p0;
assign grp_fu_4211_p_din1 = grp_fu_628_p1;
assign icmp_ln33_fu_676_p2 = ((ap_sig_allocacmp_v7_2 < 8'd220) ? 1'b1 : 1'b0);
assign or_ln42_5_fu_751_p3 = {{tmp_s_fu_741_p4}, {1'd1}};
assign tmp_s_fu_741_p4 = {{ap_sig_allocacmp_v7_2[7:1]}};
assign v100_fu_1154_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v98_reg_1800);
assign v104_fu_1108_p1 = v229_1_load_8_reg_1645;
assign v106_fu_1160_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v104_reg_1806);
assign v10_fu_1010_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v8_reg_1579);
assign v12_fu_855_p10 = v228_4_q1;
assign v12_fu_855_p12 = v228_5_q1;
assign v12_fu_855_p14 = v228_6_q1;
assign v12_fu_855_p16 = v228_7_q1;
assign v12_fu_855_p17 = 'bx;
assign v12_fu_855_p2 = v228_0_q1;
assign v12_fu_855_p4 = v228_1_q1;
assign v12_fu_855_p6 = v228_2_q1;
assign v12_fu_855_p8 = v228_3_q1;
assign v15_fu_975_p1 = reg_636;
assign v17_fu_1016_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v15_reg_1585);
assign v18_fu_931_p10 = v228_4_q0;
assign v18_fu_931_p12 = v228_5_q0;
assign v18_fu_931_p14 = v228_6_q0;
assign v18_fu_931_p16 = v228_7_q0;
assign v18_fu_931_p17 = 'bx;
assign v18_fu_931_p2 = v228_0_q0;
assign v18_fu_931_p4 = v228_1_q0;
assign v18_fu_931_p6 = v228_2_q0;
assign v18_fu_931_p8 = v228_3_q0;
assign v21_fu_980_p1 = reg_640;
assign v228_0_address0 = zext_ln45_4_fu_773_p1;
assign v228_0_address1 = zext_ln38_4_fu_696_p1;
assign v228_0_ce0 = v228_0_ce0_local;
assign v228_0_ce1 = v228_0_ce1_local;
assign v228_1_address0 = zext_ln45_4_fu_773_p1;
assign v228_1_address1 = zext_ln38_4_fu_696_p1;
assign v228_1_ce0 = v228_1_ce0_local;
assign v228_1_ce1 = v228_1_ce1_local;
assign v228_2_address0 = zext_ln45_4_fu_773_p1;
assign v228_2_address1 = zext_ln38_4_fu_696_p1;
assign v228_2_ce0 = v228_2_ce0_local;
assign v228_2_ce1 = v228_2_ce1_local;
assign v228_3_address0 = zext_ln45_4_fu_773_p1;
assign v228_3_address1 = zext_ln38_4_fu_696_p1;
assign v228_3_ce0 = v228_3_ce0_local;
assign v228_3_ce1 = v228_3_ce1_local;
assign v228_4_address0 = zext_ln45_4_fu_773_p1;
assign v228_4_address1 = zext_ln38_4_fu_696_p1;
assign v228_4_ce0 = v228_4_ce0_local;
assign v228_4_ce1 = v228_4_ce1_local;
assign v228_5_address0 = zext_ln45_4_fu_773_p1;
assign v228_5_address1 = zext_ln38_4_fu_696_p1;
assign v228_5_ce0 = v228_5_ce0_local;
assign v228_5_ce1 = v228_5_ce1_local;
assign v228_6_address0 = zext_ln45_4_fu_773_p1;
assign v228_6_address1 = zext_ln38_4_fu_696_p1;
assign v228_6_ce0 = v228_6_ce0_local;
assign v228_6_ce1 = v228_6_ce1_local;
assign v228_7_address0 = zext_ln45_4_fu_773_p1;
assign v228_7_address1 = zext_ln38_4_fu_696_p1;
assign v228_7_ce0 = v228_7_ce0_local;
assign v228_7_ce1 = v228_7_ce1_local;
assign v229_0_address0 = v229_0_address0_local;
assign v229_0_address1 = v229_0_address1_local;
assign v229_0_ce0 = v229_0_ce0_local;
assign v229_0_ce1 = v229_0_ce1_local;
assign v229_0_d0 = v229_0_d0_local;
assign v229_0_d1 = v229_0_d1_local;
assign v229_0_we0 = v229_0_we0_local;
assign v229_0_we1 = v229_0_we1_local;
assign v229_1_address0 = v229_1_address0_local;
assign v229_1_address1 = v229_1_address1_local;
assign v229_1_ce0 = v229_1_ce0_local;
assign v229_1_ce1 = v229_1_ce1_local;
assign v229_1_d0 = v229_1_d0_local;
assign v229_1_d1 = v229_1_d1_local;
assign v229_1_we0 = v229_1_we0_local;
assign v229_1_we1 = v229_1_we1_local;
assign v229_2_address0 = v229_2_address0_local;
assign v229_2_address1 = v229_2_address1_local;
assign v229_2_ce0 = v229_2_ce0_local;
assign v229_2_ce1 = v229_2_ce1_local;
assign v229_2_d0 = v229_2_d0_local;
assign v229_2_d1 = v229_2_d1_local;
assign v229_2_we0 = v229_2_we0_local;
assign v229_2_we1 = v229_2_we1_local;
assign v229_3_address0 = v229_3_address0_local;
assign v229_3_address1 = v229_3_address1_local;
assign v229_3_ce0 = v229_3_ce0_local;
assign v229_3_ce1 = v229_3_ce1_local;
assign v229_3_d0 = v229_3_d0_local;
assign v229_3_d1 = v229_3_d1_local;
assign v229_3_we0 = v229_3_we0_local;
assign v229_3_we1 = v229_3_we1_local;
assign v23_fu_1022_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v21_reg_1591);
assign v27_fu_985_p1 = v229_2_load_6_reg_1554;
assign v29_fu_1052_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v27_reg_1622);
assign v32_fu_989_p1 = v229_3_load_reg_1559;
assign v34_fu_1058_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v32_reg_1628);
assign v38_fu_993_p1 = v229_3_load_4_reg_1564;
assign v40_fu_1064_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v38_reg_1634);
assign v43_fu_997_p1 = v229_0_load_reg_1569;
assign v45_fu_1082_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v43_reg_1650);
assign v49_fu_1001_p1 = v229_0_load_4_reg_1574;
assign v51_fu_1088_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v49_reg_1656);
assign v54_fu_1005_p1 = reg_632;
assign v56_fu_1094_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v54_reg_1662);
assign v60_fu_1028_p1 = reg_636;
assign v62_fu_1112_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v60_reg_1698);
assign v65_fu_1033_p1 = reg_640;
assign v67_fu_1118_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v65_reg_1704);
assign v71_fu_1038_p1 = v229_2_load_8_reg_1597;
assign v73_fu_1124_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v71_reg_1710);
assign v76_fu_1070_p1 = v229_3_load_5_reg_1602;
assign v78_fu_1130_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v76_reg_1746);
assign v82_fu_1074_p1 = v229_3_load_6_reg_1607;
assign v84_fu_1136_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v82_reg_1752);
assign v87_fu_1078_p1 = v229_0_load_5_reg_1612;
assign v89_fu_1142_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v87_reg_1758);
assign v8_fu_970_p1 = reg_632;
assign v93_fu_1100_p1 = v229_0_load_6_reg_1617;
assign v95_fu_1148_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v93_reg_1794);
assign v98_fu_1104_p1 = v229_1_load_7_reg_1640;
assign zext_ln127_fu_818_p1 = add_ln127_reg_1404;
assign zext_ln134_fu_894_p1 = add_ln134_reg_1485;
assign zext_ln34_fu_734_p1 = add_ln34_fu_728_p2;
assign zext_ln38_3_fu_686_p1 = ap_sig_allocacmp_v7_2;
assign zext_ln38_4_fu_696_p1 = add_ln38_fu_690_p2;
assign zext_ln38_fu_682_p1 = ap_sig_allocacmp_v7_2;
assign zext_ln42_fu_811_p1 = add_ln42_fu_805_p2;
assign zext_ln45_3_fu_763_p1 = or_ln42_5_fu_751_p3;
assign zext_ln45_4_fu_773_p1 = add_ln45_fu_767_p2;
assign zext_ln45_fu_759_p1 = or_ln42_5_fu_751_p3;
assign zext_ln75_fu_714_p1 = add_ln75_fu_708_p2;
assign zext_ln82_fu_791_p1 = add_ln82_fu_785_p2;
endmodule 
