module kernel_2mm_kernel_2mm_node0_Pipeline_label_27 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,mul_ln38,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,mul_ln34_1,mul_ln88_1,mul_ln140_1,v4,cmp11,empty,v11_4,v24_4,v35_4,v46_4,v57_4,v68_4,v79_4,v90_4,v101_4,grp_fu_4179_p_din0,grp_fu_4179_p_din1,grp_fu_4179_p_opcode,grp_fu_4179_p_dout0,grp_fu_4179_p_ce,grp_fu_4183_p_din0,grp_fu_4183_p_din1,grp_fu_4183_p_opcode,grp_fu_4183_p_dout0,grp_fu_4183_p_ce,grp_fu_4187_p_din0,grp_fu_4187_p_din1,grp_fu_4187_p_opcode,grp_fu_4187_p_dout0,grp_fu_4187_p_ce,grp_fu_4191_p_din0,grp_fu_4191_p_din1,grp_fu_4191_p_dout0,grp_fu_4191_p_ce,grp_fu_4195_p_din0,grp_fu_4195_p_din1,grp_fu_4195_p_dout0,grp_fu_4195_p_ce,grp_fu_4199_p_din0,grp_fu_4199_p_din1,grp_fu_4199_p_dout0,grp_fu_4199_p_ce,grp_fu_4203_p_din0,grp_fu_4203_p_din1,grp_fu_4203_p_dout0,grp_fu_4203_p_ce,grp_fu_4207_p_din0,grp_fu_4207_p_din1,grp_fu_4207_p_dout0,grp_fu_4207_p_ce,grp_fu_4211_p_din0,grp_fu_4211_p_din1,grp_fu_4211_p_dout0,grp_fu_4211_p_ce); 
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
input  [13:0] mul_ln34_1;
input  [13:0] mul_ln88_1;
input  [13:0] mul_ln140_1;
input  [31:0] v4;
input  [0:0] cmp11;
input  [2:0] empty;
input  [31:0] v11_4;
input  [31:0] v24_4;
input  [31:0] v35_4;
input  [31:0] v46_4;
input  [31:0] v57_4;
input  [31:0] v68_4;
input  [31:0] v79_4;
input  [31:0] v90_4;
input  [31:0] v101_4;
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
reg   [0:0] icmp_ln33_reg_1366;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_640;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_644;
reg   [31:0] reg_648;
reg   [31:0] reg_652;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [31:0] reg_656;
reg   [31:0] reg_660;
reg   [31:0] reg_664;
reg   [31:0] reg_668;
reg   [31:0] reg_672;
reg   [7:0] v7_3_reg_1361;
wire   [0:0] icmp_ln33_fu_684_p2;
wire   [13:0] zext_ln38_fu_690_p1;
reg   [13:0] zext_ln38_reg_1370;
reg   [13:0] v229_0_addr_reg_1416;
reg   [13:0] v229_0_addr_reg_1416_pp0_iter1_reg;
reg   [13:0] v229_0_addr_reg_1416_pp0_iter2_reg;
reg   [13:0] v229_1_addr_reg_1421;
reg   [13:0] v229_1_addr_reg_1421_pp0_iter1_reg;
reg   [13:0] v229_1_addr_reg_1421_pp0_iter2_reg;
reg   [13:0] v229_2_addr_reg_1426;
reg   [13:0] v229_2_addr_reg_1426_pp0_iter1_reg;
reg   [13:0] v229_2_addr_reg_1426_pp0_iter2_reg;
reg   [13:0] v229_3_addr_reg_1431;
reg   [13:0] v229_3_addr_reg_1431_pp0_iter1_reg;
reg   [13:0] v229_3_addr_reg_1431_pp0_iter2_reg;
wire   [13:0] zext_ln45_fu_748_p1;
reg   [13:0] zext_ln45_reg_1437;
reg   [13:0] v229_0_addr_9_reg_1483;
reg   [13:0] v229_0_addr_9_reg_1483_pp0_iter1_reg;
reg   [13:0] v229_0_addr_9_reg_1483_pp0_iter2_reg;
reg   [13:0] v229_1_addr_10_reg_1488;
reg   [13:0] v229_1_addr_10_reg_1488_pp0_iter1_reg;
reg   [13:0] v229_1_addr_10_reg_1488_pp0_iter2_reg;
reg   [13:0] v229_2_addr_10_reg_1493;
reg   [13:0] v229_2_addr_10_reg_1493_pp0_iter1_reg;
reg   [13:0] v229_2_addr_10_reg_1493_pp0_iter2_reg;
reg   [13:0] v229_3_addr_8_reg_1498;
reg   [13:0] v229_3_addr_8_reg_1498_pp0_iter1_reg;
reg   [13:0] v229_3_addr_8_reg_1498_pp0_iter2_reg;
reg   [13:0] v229_0_addr_7_reg_1504;
reg   [13:0] v229_0_addr_7_reg_1504_pp0_iter1_reg;
reg   [13:0] v229_0_addr_7_reg_1504_pp0_iter2_reg;
wire   [13:0] add_ln140_fu_800_p2;
reg   [13:0] add_ln140_reg_1509;
reg   [13:0] v229_1_addr_9_reg_1514;
reg   [13:0] v229_1_addr_9_reg_1514_pp0_iter1_reg;
reg   [13:0] v229_1_addr_9_reg_1514_pp0_iter2_reg;
reg   [13:0] v229_2_addr_9_reg_1519;
reg   [13:0] v229_2_addr_9_reg_1519_pp0_iter1_reg;
reg   [13:0] v229_2_addr_9_reg_1519_pp0_iter2_reg;
reg   [13:0] v229_3_addr_7_reg_1524;
reg   [13:0] v229_3_addr_7_reg_1524_pp0_iter1_reg;
reg   [13:0] v229_3_addr_7_reg_1524_pp0_iter2_reg;
wire   [31:0] v12_fu_836_p19;
reg   [31:0] v12_reg_1529;
reg   [13:0] v229_0_addr_10_reg_1536;
reg   [13:0] v229_0_addr_10_reg_1536_pp0_iter1_reg;
reg   [13:0] v229_0_addr_10_reg_1536_pp0_iter2_reg;
wire   [13:0] add_ln147_fu_887_p2;
reg   [13:0] add_ln147_reg_1541;
reg   [13:0] v229_1_addr_11_reg_1546;
reg   [13:0] v229_1_addr_11_reg_1546_pp0_iter1_reg;
reg   [13:0] v229_1_addr_11_reg_1546_pp0_iter2_reg;
reg   [13:0] v229_2_addr_11_reg_1551;
reg   [13:0] v229_2_addr_11_reg_1551_pp0_iter1_reg;
reg   [13:0] v229_2_addr_11_reg_1551_pp0_iter2_reg;
reg   [13:0] v229_3_addr_9_reg_1556;
reg   [13:0] v229_3_addr_9_reg_1556_pp0_iter1_reg;
reg   [13:0] v229_3_addr_9_reg_1556_pp0_iter2_reg;
reg   [13:0] v229_3_addr_9_reg_1556_pp0_iter3_reg;
wire   [31:0] v18_fu_923_p19;
reg   [31:0] v18_reg_1561;
reg   [31:0] v229_1_load_9_reg_1568;
reg   [31:0] v229_2_load_reg_1573;
reg   [31:0] v229_2_load_9_reg_1578;
reg   [31:0] v229_3_load_reg_1583;
reg   [31:0] v229_3_load_7_reg_1588;
reg   [13:0] v229_0_addr_8_reg_1593;
reg   [13:0] v229_0_addr_8_reg_1593_pp0_iter1_reg;
reg   [13:0] v229_0_addr_8_reg_1593_pp0_iter2_reg;
reg   [13:0] v229_0_addr_8_reg_1593_pp0_iter3_reg;
wire   [31:0] v8_fu_966_p1;
reg   [31:0] v8_reg_1598;
reg   [13:0] v229_0_addr_11_reg_1604;
reg   [13:0] v229_0_addr_11_reg_1604_pp0_iter1_reg;
reg   [13:0] v229_0_addr_11_reg_1604_pp0_iter2_reg;
reg   [13:0] v229_0_addr_11_reg_1604_pp0_iter3_reg;
wire   [31:0] v15_fu_975_p1;
reg   [31:0] v15_reg_1609;
wire   [31:0] v21_fu_980_p1;
reg   [31:0] v21_reg_1615;
reg   [31:0] v229_1_load_11_reg_1621;
reg   [31:0] v229_2_load_10_reg_1626;
reg   [31:0] v229_2_load_11_reg_1631;
reg   [31:0] v229_3_load_8_reg_1636;
reg   [31:0] v229_3_load_9_reg_1641;
wire   [31:0] v27_fu_985_p1;
reg   [31:0] v27_reg_1646;
wire   [31:0] v32_fu_989_p1;
reg   [31:0] v32_reg_1652;
wire   [31:0] v38_fu_993_p1;
reg   [31:0] v38_reg_1658;
reg   [31:0] v229_0_load_10_reg_1664;
reg   [31:0] v229_0_load_11_reg_1669;
wire   [31:0] v43_fu_997_p1;
reg   [31:0] v43_reg_1674;
wire   [31:0] v49_fu_1001_p1;
reg   [31:0] v49_reg_1680;
wire   [31:0] v54_fu_1005_p1;
reg   [31:0] v54_reg_1686;
wire   [31:0] v10_fu_1010_p3;
reg   [31:0] v10_reg_1692;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v13_reg_1697;
wire   [31:0] v17_fu_1016_p3;
reg   [31:0] v17_reg_1702;
reg   [31:0] v19_reg_1707;
wire   [31:0] v23_fu_1022_p3;
reg   [31:0] v23_reg_1712;
reg   [31:0] v25_reg_1717;
wire   [31:0] v60_fu_1028_p1;
reg   [31:0] v60_reg_1722;
wire   [31:0] v65_fu_1033_p1;
reg   [31:0] v65_reg_1728;
wire   [31:0] v71_fu_1038_p1;
reg   [31:0] v71_reg_1734;
wire   [31:0] v29_fu_1052_p3;
reg   [31:0] v29_reg_1740;
reg   [31:0] v30_reg_1745;
wire   [31:0] v34_fu_1058_p3;
reg   [31:0] v34_reg_1750;
reg   [31:0] v36_reg_1755;
wire   [31:0] v40_fu_1064_p3;
reg   [31:0] v40_reg_1760;
reg   [31:0] v41_reg_1765;
wire   [31:0] v76_fu_1070_p1;
reg   [31:0] v76_reg_1770;
wire   [31:0] v82_fu_1074_p1;
reg   [31:0] v82_reg_1776;
wire   [31:0] v87_fu_1078_p1;
reg   [31:0] v87_reg_1782;
wire   [31:0] v45_fu_1082_p3;
reg   [31:0] v45_reg_1788;
reg   [31:0] v47_reg_1793;
wire   [31:0] v51_fu_1088_p3;
reg   [31:0] v51_reg_1798;
reg   [31:0] v52_reg_1803;
wire   [31:0] v56_fu_1094_p3;
reg   [31:0] v56_reg_1808;
reg   [31:0] v58_reg_1813;
wire   [31:0] v93_fu_1100_p1;
reg   [31:0] v93_reg_1818;
wire   [31:0] v98_fu_1104_p1;
reg   [31:0] v98_reg_1824;
wire   [31:0] v104_fu_1108_p1;
reg   [31:0] v104_reg_1830;
wire   [31:0] v62_fu_1112_p3;
reg   [31:0] v62_reg_1836;
reg   [31:0] v63_reg_1841;
wire   [31:0] v67_fu_1118_p3;
reg   [31:0] v67_reg_1846;
reg   [31:0] v69_reg_1851;
wire   [31:0] v73_fu_1124_p3;
reg   [31:0] v73_reg_1856;
reg   [31:0] v74_reg_1861;
wire   [31:0] v78_fu_1130_p3;
reg   [31:0] v78_reg_1866;
reg   [31:0] v80_reg_1871;
wire   [31:0] v84_fu_1136_p3;
reg   [31:0] v84_reg_1876;
reg   [31:0] v85_reg_1881;
wire   [31:0] v89_fu_1142_p3;
reg   [31:0] v89_reg_1886;
reg   [31:0] v91_reg_1891;
wire   [31:0] v95_fu_1148_p3;
reg   [31:0] v95_reg_1896;
reg   [31:0] v96_reg_1901;
wire   [31:0] v100_fu_1154_p3;
reg   [31:0] v100_reg_1906;
reg   [31:0] v102_reg_1911;
wire   [31:0] v106_fu_1160_p3;
reg   [31:0] v106_reg_1916;
reg   [31:0] v107_reg_1921;
reg   [31:0] v97_reg_1926;
reg   [31:0] v103_reg_1931;
reg   [31:0] v108_reg_1936;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln38_6_fu_704_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln34_fu_722_p1;
wire   [63:0] zext_ln45_6_fu_762_p1;
wire   [63:0] zext_ln42_fu_780_p1;
wire   [63:0] zext_ln88_fu_792_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln95_fu_879_p1;
wire   [63:0] zext_ln140_fu_962_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln147_fu_971_p1;
reg   [7:0] v7_fu_124;
wire   [7:0] add_ln33_fu_1042_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_3;
reg    v229_0_ce1_local;
reg   [13:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [13:0] v229_0_address0_local;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln41_fu_1186_p1;
wire    ap_block_pp0_stage3;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
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
reg    v229_1_ce1_local;
reg   [13:0] v229_1_address1_local;
reg    v229_1_ce0_local;
reg   [13:0] v229_1_address0_local;
reg    v229_1_we1_local;
reg   [31:0] v229_1_d1_local;
wire   [31:0] bitcast_ln55_fu_1166_p1;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln61_fu_1171_p1;
wire   [31:0] bitcast_ln107_fu_1216_p1;
wire   [31:0] bitcast_ln113_fu_1221_p1;
reg    v229_2_ce1_local;
reg   [13:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [13:0] v229_2_address0_local;
reg    v229_2_we1_local;
reg   [31:0] v229_2_d1_local;
wire   [31:0] bitcast_ln68_fu_1176_p1;
reg    v229_2_we0_local;
reg   [31:0] v229_2_d0_local;
wire   [31:0] bitcast_ln74_fu_1181_p1;
wire   [31:0] bitcast_ln120_fu_1226_p1;
wire   [31:0] bitcast_ln126_fu_1231_p1;
reg    v229_3_ce1_local;
reg   [13:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [13:0] v229_3_address0_local;
reg    v229_3_we0_local;
reg   [31:0] v229_3_d0_local;
wire   [31:0] bitcast_ln81_fu_1196_p1;
reg    v229_3_we1_local;
reg   [31:0] v229_3_d1_local;
wire   [31:0] bitcast_ln87_fu_1201_p1;
wire   [31:0] bitcast_ln133_fu_1236_p1;
wire   [31:0] bitcast_ln139_fu_1241_p1;
reg   [31:0] grp_fu_604_p0;
reg   [31:0] grp_fu_604_p1;
reg   [31:0] grp_fu_608_p0;
reg   [31:0] grp_fu_608_p1;
reg   [31:0] grp_fu_612_p0;
reg   [31:0] grp_fu_612_p1;
reg   [31:0] grp_fu_616_p0;
reg   [31:0] grp_fu_620_p0;
reg   [31:0] grp_fu_620_p1;
reg   [31:0] grp_fu_624_p0;
reg   [31:0] grp_fu_628_p0;
reg   [31:0] grp_fu_628_p1;
reg   [31:0] grp_fu_632_p0;
reg   [31:0] grp_fu_636_p0;
reg   [31:0] grp_fu_636_p1;
wire   [12:0] zext_ln38_5_fu_694_p1;
wire   [12:0] add_ln38_fu_698_p2;
wire   [13:0] add_ln34_fu_716_p2;
wire   [6:0] tmp_s_fu_730_p4;
wire   [7:0] or_ln42_4_fu_740_p3;
wire   [12:0] zext_ln45_5_fu_752_p1;
wire   [12:0] add_ln45_fu_756_p2;
wire   [13:0] add_ln42_fu_774_p2;
wire   [13:0] add_ln88_fu_788_p2;
wire   [31:0] v12_fu_836_p2;
wire   [31:0] v12_fu_836_p4;
wire   [31:0] v12_fu_836_p6;
wire   [31:0] v12_fu_836_p8;
wire   [31:0] v12_fu_836_p10;
wire   [31:0] v12_fu_836_p12;
wire   [31:0] v12_fu_836_p14;
wire   [31:0] v12_fu_836_p16;
wire   [31:0] v12_fu_836_p17;
wire   [13:0] add_ln95_fu_875_p2;
wire   [31:0] v18_fu_923_p2;
wire   [31:0] v18_fu_923_p4;
wire   [31:0] v18_fu_923_p6;
wire   [31:0] v18_fu_923_p8;
wire   [31:0] v18_fu_923_p10;
wire   [31:0] v18_fu_923_p12;
wire   [31:0] v18_fu_923_p14;
wire   [31:0] v18_fu_923_p16;
wire   [31:0] v18_fu_923_p17;
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
wire   [2:0] v12_fu_836_p1;
wire   [2:0] v12_fu_836_p3;
wire   [2:0] v12_fu_836_p5;
wire   [2:0] v12_fu_836_p7;
wire  signed [2:0] v12_fu_836_p9;
wire  signed [2:0] v12_fu_836_p11;
wire  signed [2:0] v12_fu_836_p13;
wire  signed [2:0] v12_fu_836_p15;
wire   [2:0] v18_fu_923_p1;
wire   [2:0] v18_fu_923_p3;
wire   [2:0] v18_fu_923_p5;
wire   [2:0] v18_fu_923_p7;
wire  signed [2:0] v18_fu_923_p9;
wire  signed [2:0] v18_fu_923_p11;
wire  signed [2:0] v18_fu_923_p13;
wire  signed [2:0] v18_fu_923_p15;
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
sparsemux_17_3_32_1_1_U254(.din0(v12_fu_836_p2),.din1(v12_fu_836_p4),.din2(v12_fu_836_p6),.din3(v12_fu_836_p8),.din4(v12_fu_836_p10),.din5(v12_fu_836_p12),.din6(v12_fu_836_p14),.din7(v12_fu_836_p16),.def(v12_fu_836_p17),.sel(empty),.dout(v12_fu_836_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U255(.din0(v18_fu_923_p2),.din1(v18_fu_923_p4),.din2(v18_fu_923_p6),.din3(v18_fu_923_p8),.din4(v18_fu_923_p10),.din5(v18_fu_923_p12),.din6(v18_fu_923_p14),.din7(v18_fu_923_p16),.def(v18_fu_923_p17),.sel(empty),.dout(v18_fu_923_p19));
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
    end else if (((icmp_ln33_reg_1366 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_fu_124 <= add_ln33_fu_1042_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln140_reg_1509 <= add_ln140_fu_800_p2;
        add_ln147_reg_1541 <= add_ln147_fu_887_p2;
        v104_reg_1830 <= v104_fu_1108_p1;
        v12_reg_1529 <= v12_fu_836_p19;
        v18_reg_1561 <= v18_fu_923_p19;
        v229_0_addr_10_reg_1536 <= zext_ln95_fu_879_p1;
        v229_0_addr_10_reg_1536_pp0_iter1_reg <= v229_0_addr_10_reg_1536;
        v229_0_addr_10_reg_1536_pp0_iter2_reg <= v229_0_addr_10_reg_1536_pp0_iter1_reg;
        v229_0_addr_7_reg_1504 <= zext_ln88_fu_792_p1;
        v229_0_addr_7_reg_1504_pp0_iter1_reg <= v229_0_addr_7_reg_1504;
        v229_0_addr_7_reg_1504_pp0_iter2_reg <= v229_0_addr_7_reg_1504_pp0_iter1_reg;
        v229_1_addr_11_reg_1546 <= zext_ln95_fu_879_p1;
        v229_1_addr_11_reg_1546_pp0_iter1_reg <= v229_1_addr_11_reg_1546;
        v229_1_addr_11_reg_1546_pp0_iter2_reg <= v229_1_addr_11_reg_1546_pp0_iter1_reg;
        v229_1_addr_9_reg_1514 <= zext_ln88_fu_792_p1;
        v229_1_addr_9_reg_1514_pp0_iter1_reg <= v229_1_addr_9_reg_1514;
        v229_1_addr_9_reg_1514_pp0_iter2_reg <= v229_1_addr_9_reg_1514_pp0_iter1_reg;
        v229_2_addr_11_reg_1551 <= zext_ln95_fu_879_p1;
        v229_2_addr_11_reg_1551_pp0_iter1_reg <= v229_2_addr_11_reg_1551;
        v229_2_addr_11_reg_1551_pp0_iter2_reg <= v229_2_addr_11_reg_1551_pp0_iter1_reg;
        v229_2_addr_9_reg_1519 <= zext_ln88_fu_792_p1;
        v229_2_addr_9_reg_1519_pp0_iter1_reg <= v229_2_addr_9_reg_1519;
        v229_2_addr_9_reg_1519_pp0_iter2_reg <= v229_2_addr_9_reg_1519_pp0_iter1_reg;
        v229_3_addr_7_reg_1524 <= zext_ln88_fu_792_p1;
        v229_3_addr_7_reg_1524_pp0_iter1_reg <= v229_3_addr_7_reg_1524;
        v229_3_addr_7_reg_1524_pp0_iter2_reg <= v229_3_addr_7_reg_1524_pp0_iter1_reg;
        v229_3_addr_9_reg_1556 <= zext_ln95_fu_879_p1;
        v229_3_addr_9_reg_1556_pp0_iter1_reg <= v229_3_addr_9_reg_1556;
        v229_3_addr_9_reg_1556_pp0_iter2_reg <= v229_3_addr_9_reg_1556_pp0_iter1_reg;
        v229_3_addr_9_reg_1556_pp0_iter3_reg <= v229_3_addr_9_reg_1556_pp0_iter2_reg;
        v45_reg_1788 <= v45_fu_1082_p3;
        v51_reg_1798 <= v51_fu_1088_p3;
        v56_reg_1808 <= v56_fu_1094_p3;
        v93_reg_1818 <= v93_fu_1100_p1;
        v98_reg_1824 <= v98_fu_1104_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v10_reg_1692 <= v10_fu_1010_p3;
        v17_reg_1702 <= v17_fu_1016_p3;
        v23_reg_1712 <= v23_fu_1022_p3;
        v60_reg_1722 <= v60_fu_1028_p1;
        v65_reg_1728 <= v65_fu_1033_p1;
        v71_reg_1734 <= v71_fu_1038_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln33_reg_1366 <= icmp_ln33_fu_684_p2;
        v229_0_addr_9_reg_1483 <= zext_ln42_fu_780_p1;
        v229_0_addr_9_reg_1483_pp0_iter1_reg <= v229_0_addr_9_reg_1483;
        v229_0_addr_9_reg_1483_pp0_iter2_reg <= v229_0_addr_9_reg_1483_pp0_iter1_reg;
        v229_0_addr_reg_1416 <= zext_ln34_fu_722_p1;
        v229_0_addr_reg_1416_pp0_iter1_reg <= v229_0_addr_reg_1416;
        v229_0_addr_reg_1416_pp0_iter2_reg <= v229_0_addr_reg_1416_pp0_iter1_reg;
        v229_1_addr_10_reg_1488 <= zext_ln42_fu_780_p1;
        v229_1_addr_10_reg_1488_pp0_iter1_reg <= v229_1_addr_10_reg_1488;
        v229_1_addr_10_reg_1488_pp0_iter2_reg <= v229_1_addr_10_reg_1488_pp0_iter1_reg;
        v229_1_addr_reg_1421 <= zext_ln34_fu_722_p1;
        v229_1_addr_reg_1421_pp0_iter1_reg <= v229_1_addr_reg_1421;
        v229_1_addr_reg_1421_pp0_iter2_reg <= v229_1_addr_reg_1421_pp0_iter1_reg;
        v229_2_addr_10_reg_1493 <= zext_ln42_fu_780_p1;
        v229_2_addr_10_reg_1493_pp0_iter1_reg <= v229_2_addr_10_reg_1493;
        v229_2_addr_10_reg_1493_pp0_iter2_reg <= v229_2_addr_10_reg_1493_pp0_iter1_reg;
        v229_2_addr_reg_1426 <= zext_ln34_fu_722_p1;
        v229_2_addr_reg_1426_pp0_iter1_reg <= v229_2_addr_reg_1426;
        v229_2_addr_reg_1426_pp0_iter2_reg <= v229_2_addr_reg_1426_pp0_iter1_reg;
        v229_3_addr_8_reg_1498 <= zext_ln42_fu_780_p1;
        v229_3_addr_8_reg_1498_pp0_iter1_reg <= v229_3_addr_8_reg_1498;
        v229_3_addr_8_reg_1498_pp0_iter2_reg <= v229_3_addr_8_reg_1498_pp0_iter1_reg;
        v229_3_addr_reg_1431 <= zext_ln34_fu_722_p1;
        v229_3_addr_reg_1431_pp0_iter1_reg <= v229_3_addr_reg_1431;
        v229_3_addr_reg_1431_pp0_iter2_reg <= v229_3_addr_reg_1431_pp0_iter1_reg;
        v29_reg_1740 <= v29_fu_1052_p3;
        v34_reg_1750 <= v34_fu_1058_p3;
        v40_reg_1760 <= v40_fu_1064_p3;
        v76_reg_1770 <= v76_fu_1070_p1;
        v7_3_reg_1361 <= ap_sig_allocacmp_v7_3;
        v82_reg_1776 <= v82_fu_1074_p1;
        v87_reg_1782 <= v87_fu_1078_p1;
        zext_ln38_reg_1370[7 : 0] <= zext_ln38_fu_690_p1[7 : 0];
        zext_ln45_reg_1437[7 : 1] <= zext_ln45_fu_748_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_640 <= v229_0_q1;
        reg_644 <= v229_0_q0;
        reg_648 <= v229_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_652 <= grp_fu_4179_p_dout0;
        reg_656 <= grp_fu_4183_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_660 <= grp_fu_4187_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_664 <= grp_fu_4179_p_dout0;
        reg_668 <= grp_fu_4183_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_672 <= grp_fu_4187_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v100_reg_1906 <= v100_fu_1154_p3;
        v106_reg_1916 <= v106_fu_1160_p3;
        v43_reg_1674 <= v43_fu_997_p1;
        v49_reg_1680 <= v49_fu_1001_p1;
        v54_reg_1686 <= v54_fu_1005_p1;
        v95_reg_1896 <= v95_fu_1148_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v102_reg_1911 <= grp_fu_4203_p_dout0;
        v107_reg_1921 <= grp_fu_4211_p_dout0;
        v96_reg_1901 <= grp_fu_4195_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v103_reg_1931 <= grp_fu_4183_p_dout0;
        v108_reg_1936 <= grp_fu_4187_p_dout0;
        v97_reg_1926 <= grp_fu_4179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v13_reg_1697 <= grp_fu_4195_p_dout0;
        v19_reg_1707 <= grp_fu_4203_p_dout0;
        v25_reg_1717 <= grp_fu_4211_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v15_reg_1609 <= v15_fu_975_p1;
        v21_reg_1615 <= v21_fu_980_p1;
        v229_0_addr_11_reg_1604 <= zext_ln147_fu_971_p1;
        v229_0_addr_11_reg_1604_pp0_iter1_reg <= v229_0_addr_11_reg_1604;
        v229_0_addr_11_reg_1604_pp0_iter2_reg <= v229_0_addr_11_reg_1604_pp0_iter1_reg;
        v229_0_addr_11_reg_1604_pp0_iter3_reg <= v229_0_addr_11_reg_1604_pp0_iter2_reg;
        v229_0_addr_8_reg_1593 <= zext_ln140_fu_962_p1;
        v229_0_addr_8_reg_1593_pp0_iter1_reg <= v229_0_addr_8_reg_1593;
        v229_0_addr_8_reg_1593_pp0_iter2_reg <= v229_0_addr_8_reg_1593_pp0_iter1_reg;
        v229_0_addr_8_reg_1593_pp0_iter3_reg <= v229_0_addr_8_reg_1593_pp0_iter2_reg;
        v62_reg_1836 <= v62_fu_1112_p3;
        v67_reg_1846 <= v67_fu_1118_p3;
        v73_reg_1856 <= v73_fu_1124_p3;
        v8_reg_1598 <= v8_fu_966_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_load_10_reg_1664 <= v229_0_q1;
        v229_0_load_11_reg_1669 <= v229_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_load_11_reg_1621 <= v229_1_q0;
        v229_2_load_10_reg_1626 <= v229_2_q1;
        v229_2_load_11_reg_1631 <= v229_2_q0;
        v229_3_load_8_reg_1636 <= v229_3_q1;
        v229_3_load_9_reg_1641 <= v229_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_load_9_reg_1568 <= v229_1_q0;
        v229_2_load_9_reg_1578 <= v229_2_q0;
        v229_2_load_reg_1573 <= v229_2_q1;
        v229_3_load_7_reg_1588 <= v229_3_q0;
        v229_3_load_reg_1583 <= v229_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_reg_1646 <= v27_fu_985_p1;
        v32_reg_1652 <= v32_fu_989_p1;
        v38_reg_1658 <= v38_fu_993_p1;
        v78_reg_1866 <= v78_fu_1130_p3;
        v84_reg_1876 <= v84_fu_1136_p3;
        v89_reg_1886 <= v89_fu_1142_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v30_reg_1745 <= grp_fu_4195_p_dout0;
        v36_reg_1755 <= grp_fu_4203_p_dout0;
        v41_reg_1765 <= grp_fu_4211_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_1793 <= grp_fu_4195_p_dout0;
        v52_reg_1803 <= grp_fu_4203_p_dout0;
        v58_reg_1813 <= grp_fu_4211_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v63_reg_1841 <= grp_fu_4195_p_dout0;
        v69_reg_1851 <= grp_fu_4203_p_dout0;
        v74_reg_1861 <= grp_fu_4211_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v80_reg_1871 <= grp_fu_4195_p_dout0;
        v85_reg_1881 <= grp_fu_4203_p_dout0;
        v91_reg_1891 <= grp_fu_4211_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_1366 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v7_3 = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_3 = v7_fu_124;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_604_p0 = v95_reg_1896;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_604_p0 = v78_reg_1866;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_604_p0 = v62_reg_1836;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_604_p0 = v45_reg_1788;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_604_p0 = v29_reg_1740;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_604_p0 = v10_reg_1692;
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
            grp_fu_604_p1 = v96_reg_1901;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_604_p1 = v80_reg_1871;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_604_p1 = v63_reg_1841;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_604_p1 = v47_reg_1793;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_604_p1 = v30_reg_1745;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_604_p1 = v13_reg_1697;
        end else begin
            grp_fu_604_p1 = 'bx;
        end
    end else begin
        grp_fu_604_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_608_p0 = v100_reg_1906;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_608_p0 = v84_reg_1876;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_608_p0 = v67_reg_1846;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_608_p0 = v51_reg_1798;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_608_p0 = v34_reg_1750;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_608_p0 = v17_reg_1702;
        end else begin
            grp_fu_608_p0 = 'bx;
        end
    end else begin
        grp_fu_608_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_608_p1 = v102_reg_1911;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_608_p1 = v85_reg_1881;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_608_p1 = v69_reg_1851;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_608_p1 = v52_reg_1803;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_608_p1 = v36_reg_1755;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_608_p1 = v19_reg_1707;
        end else begin
            grp_fu_608_p1 = 'bx;
        end
    end else begin
        grp_fu_608_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_612_p0 = v106_reg_1916;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_612_p0 = v89_reg_1886;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_612_p0 = v73_reg_1856;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_612_p0 = v56_reg_1808;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_612_p0 = v40_reg_1760;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_612_p0 = v23_reg_1712;
        end else begin
            grp_fu_612_p0 = 'bx;
        end
    end else begin
        grp_fu_612_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_612_p1 = v107_reg_1921;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_612_p1 = v91_reg_1891;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_612_p1 = v74_reg_1861;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_612_p1 = v58_reg_1813;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_612_p1 = v41_reg_1765;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_612_p1 = v25_reg_1717;
        end else begin
            grp_fu_612_p1 = 'bx;
        end
    end else begin
        grp_fu_612_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_616_p0 = v93_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_616_p0 = v76_fu_1070_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_616_p0 = v60_fu_1028_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_616_p0 = v43_fu_997_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_616_p0 = v27_fu_985_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_616_p0 = v8_fu_966_p1;
    end else begin
        grp_fu_616_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_620_p0 = v90_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_620_p0 = v79_4;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_620_p0 = v57_4;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_620_p0 = v46_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_620_p0 = v24_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_620_p0 = v11_4;
    end else begin
        grp_fu_620_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_620_p1 = v18_reg_1561;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_620_p1 = v12_reg_1529;
    end else begin
        grp_fu_620_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_624_p0 = v98_fu_1104_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_624_p0 = v82_fu_1074_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_624_p0 = v65_fu_1033_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_624_p0 = v49_fu_1001_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_624_p0 = v32_fu_989_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_624_p0 = v15_fu_975_p1;
    end else begin
        grp_fu_624_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_628_p0 = v101_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_628_p0 = v79_4;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_628_p0 = v68_4;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_628_p0 = v46_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_628_p0 = v35_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_628_p0 = v11_4;
    end else begin
        grp_fu_628_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_628_p1 = v12_reg_1529;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_628_p1 = v18_reg_1561;
    end else begin
        grp_fu_628_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_632_p0 = v104_fu_1108_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_632_p0 = v87_fu_1078_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_632_p0 = v71_fu_1038_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_632_p0 = v54_fu_1005_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_632_p0 = v38_fu_993_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_632_p0 = v21_fu_980_p1;
    end else begin
        grp_fu_632_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_636_p0 = v101_4;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_636_p0 = v90_4;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_636_p0 = v68_4;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_636_p0 = v57_4;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_636_p0 = v35_4;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_636_p0 = v24_4;
    end else begin
        grp_fu_636_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_636_p1 = v18_reg_1561;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_636_p1 = v12_reg_1529;
    end else begin
        grp_fu_636_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_address0_local = v229_0_addr_11_reg_1604_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address0_local = v229_0_addr_10_reg_1536_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address0_local = v229_0_addr_9_reg_1483_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = zext_ln147_fu_971_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = zext_ln95_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln42_fu_780_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_address1_local = v229_0_addr_8_reg_1593_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address1_local = v229_0_addr_7_reg_1504_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address1_local = v229_0_addr_reg_1416_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = zext_ln140_fu_962_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = zext_ln88_fu_792_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = zext_ln34_fu_722_p1;
    end else begin
        v229_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce0_local = 1'b1;
    end else begin
        v229_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_0_ce1_local = 1'b1;
    end else begin
        v229_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_d0_local = bitcast_ln152_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_d0_local = bitcast_ln100_fu_1211_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d0_local = bitcast_ln48_fu_1191_p1;
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_d1_local = bitcast_ln146_fu_1245_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_d1_local = bitcast_ln94_fu_1206_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d1_local = bitcast_ln41_fu_1186_p1;
    end else begin
        v229_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_0_we0_local = 1'b1;
    end else begin
        v229_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v229_0_we1_local = 1'b1;
    end else begin
        v229_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address0_local = v229_1_addr_11_reg_1546_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_10_reg_1488_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = zext_ln95_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln42_fu_780_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address1_local = v229_1_addr_9_reg_1514_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_reg_1421_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = zext_ln88_fu_792_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln34_fu_722_p1;
    end else begin
        v229_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce0_local = 1'b1;
    end else begin
        v229_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_1_ce1_local = 1'b1;
    end else begin
        v229_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_1_d0_local = bitcast_ln113_fu_1221_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_1_d0_local = bitcast_ln61_fu_1171_p1;
        end else begin
            v229_1_d0_local = 'bx;
        end
    end else begin
        v229_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            v229_1_d1_local = bitcast_ln107_fu_1216_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_1_d1_local = bitcast_ln55_fu_1166_p1;
        end else begin
            v229_1_d1_local = 'bx;
        end
    end else begin
        v229_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_1_we0_local = 1'b1;
    end else begin
        v229_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_1_we1_local = 1'b1;
    end else begin
        v229_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_2_address0_local = v229_2_addr_11_reg_1551_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address0_local = v229_2_addr_10_reg_1493_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address0_local = zext_ln95_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln42_fu_780_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_2_address1_local = v229_2_addr_9_reg_1519_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address1_local = v229_2_addr_reg_1426_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address1_local = zext_ln88_fu_792_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln34_fu_722_p1;
    end else begin
        v229_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce0_local = 1'b1;
    end else begin
        v229_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_2_ce1_local = 1'b1;
    end else begin
        v229_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_2_d0_local = bitcast_ln126_fu_1231_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d0_local = bitcast_ln74_fu_1181_p1;
        end else begin
            v229_2_d0_local = 'bx;
        end
    end else begin
        v229_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_2_d1_local = bitcast_ln120_fu_1226_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d1_local = bitcast_ln68_fu_1176_p1;
        end else begin
            v229_2_d1_local = 'bx;
        end
    end else begin
        v229_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we0_local = 1'b1;
    end else begin
        v229_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_2_we1_local = 1'b1;
    end else begin
        v229_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_address0_local = v229_3_addr_9_reg_1556_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_address0_local = v229_3_addr_reg_1431_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address0_local = zext_ln95_fu_879_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = zext_ln42_fu_780_p1;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_address1_local = v229_3_addr_7_reg_1524_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_address1_local = v229_3_addr_8_reg_1498_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address1_local = zext_ln88_fu_792_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = zext_ln34_fu_722_p1;
    end else begin
        v229_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce0_local = 1'b1;
    end else begin
        v229_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v229_3_ce1_local = 1'b1;
    end else begin
        v229_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_3_d0_local = bitcast_ln139_fu_1241_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_d0_local = bitcast_ln81_fu_1196_p1;
    end else begin
        v229_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_3_d1_local = bitcast_ln133_fu_1236_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v229_3_d1_local = bitcast_ln87_fu_1201_p1;
        end else begin
            v229_3_d1_local = 'bx;
        end
    end else begin
        v229_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v229_3_we0_local = 1'b1;
    end else begin
        v229_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
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
assign add_ln140_fu_800_p2 = (mul_ln140_1 + zext_ln38_reg_1370);
assign add_ln147_fu_887_p2 = (mul_ln140_1 + zext_ln45_reg_1437);
assign add_ln33_fu_1042_p2 = (v7_3_reg_1361 + 8'd2);
assign add_ln34_fu_716_p2 = (mul_ln34_1 + zext_ln38_fu_690_p1);
assign add_ln38_fu_698_p2 = (mul_ln38 + zext_ln38_5_fu_694_p1);
assign add_ln42_fu_774_p2 = (mul_ln34_1 + zext_ln45_fu_748_p1);
assign add_ln45_fu_756_p2 = (mul_ln38 + zext_ln45_5_fu_752_p1);
assign add_ln88_fu_788_p2 = (mul_ln88_1 + zext_ln38_reg_1370);
assign add_ln95_fu_875_p2 = (mul_ln88_1 + zext_ln45_reg_1437);
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
assign bitcast_ln100_fu_1211_p1 = reg_652;
assign bitcast_ln107_fu_1216_p1 = reg_656;
assign bitcast_ln113_fu_1221_p1 = reg_672;
assign bitcast_ln120_fu_1226_p1 = reg_652;
assign bitcast_ln126_fu_1231_p1 = reg_656;
assign bitcast_ln133_fu_1236_p1 = reg_660;
assign bitcast_ln139_fu_1241_p1 = v97_reg_1926;
assign bitcast_ln146_fu_1245_p1 = v103_reg_1931;
assign bitcast_ln152_fu_1249_p1 = v108_reg_1936;
assign bitcast_ln41_fu_1186_p1 = reg_652;
assign bitcast_ln48_fu_1191_p1 = reg_656;
assign bitcast_ln55_fu_1166_p1 = reg_660;
assign bitcast_ln61_fu_1171_p1 = reg_664;
assign bitcast_ln68_fu_1176_p1 = reg_668;
assign bitcast_ln74_fu_1181_p1 = reg_672;
assign bitcast_ln81_fu_1196_p1 = reg_664;
assign bitcast_ln87_fu_1201_p1 = reg_668;
assign bitcast_ln94_fu_1206_p1 = reg_660;
assign grp_fu_4179_p_ce = 1'b1;
assign grp_fu_4179_p_din0 = grp_fu_604_p0;
assign grp_fu_4179_p_din1 = grp_fu_604_p1;
assign grp_fu_4179_p_opcode = 2'd0;
assign grp_fu_4183_p_ce = 1'b1;
assign grp_fu_4183_p_din0 = grp_fu_608_p0;
assign grp_fu_4183_p_din1 = grp_fu_608_p1;
assign grp_fu_4183_p_opcode = 2'd0;
assign grp_fu_4187_p_ce = 1'b1;
assign grp_fu_4187_p_din0 = grp_fu_612_p0;
assign grp_fu_4187_p_din1 = grp_fu_612_p1;
assign grp_fu_4187_p_opcode = 2'd0;
assign grp_fu_4191_p_ce = 1'b1;
assign grp_fu_4191_p_din0 = grp_fu_616_p0;
assign grp_fu_4191_p_din1 = v4;
assign grp_fu_4195_p_ce = 1'b1;
assign grp_fu_4195_p_din0 = grp_fu_620_p0;
assign grp_fu_4195_p_din1 = grp_fu_620_p1;
assign grp_fu_4199_p_ce = 1'b1;
assign grp_fu_4199_p_din0 = grp_fu_624_p0;
assign grp_fu_4199_p_din1 = v4;
assign grp_fu_4203_p_ce = 1'b1;
assign grp_fu_4203_p_din0 = grp_fu_628_p0;
assign grp_fu_4203_p_din1 = grp_fu_628_p1;
assign grp_fu_4207_p_ce = 1'b1;
assign grp_fu_4207_p_din0 = grp_fu_632_p0;
assign grp_fu_4207_p_din1 = v4;
assign grp_fu_4211_p_ce = 1'b1;
assign grp_fu_4211_p_din0 = grp_fu_636_p0;
assign grp_fu_4211_p_din1 = grp_fu_636_p1;
assign icmp_ln33_fu_684_p2 = ((ap_sig_allocacmp_v7_3 < 8'd220) ? 1'b1 : 1'b0);
assign or_ln42_4_fu_740_p3 = {{tmp_s_fu_730_p4}, {1'd1}};
assign tmp_s_fu_730_p4 = {{ap_sig_allocacmp_v7_3[7:1]}};
assign v100_fu_1154_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v98_reg_1824);
assign v104_fu_1108_p1 = v229_0_load_11_reg_1669;
assign v106_fu_1160_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v104_reg_1830);
assign v10_fu_1010_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v8_reg_1598);
assign v12_fu_836_p10 = v228_4_q1;
assign v12_fu_836_p12 = v228_5_q1;
assign v12_fu_836_p14 = v228_6_q1;
assign v12_fu_836_p16 = v228_7_q1;
assign v12_fu_836_p17 = 'bx;
assign v12_fu_836_p2 = v228_0_q1;
assign v12_fu_836_p4 = v228_1_q1;
assign v12_fu_836_p6 = v228_2_q1;
assign v12_fu_836_p8 = v228_3_q1;
assign v15_fu_975_p1 = reg_644;
assign v17_fu_1016_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v15_reg_1609);
assign v18_fu_923_p10 = v228_4_q0;
assign v18_fu_923_p12 = v228_5_q0;
assign v18_fu_923_p14 = v228_6_q0;
assign v18_fu_923_p16 = v228_7_q0;
assign v18_fu_923_p17 = 'bx;
assign v18_fu_923_p2 = v228_0_q0;
assign v18_fu_923_p4 = v228_1_q0;
assign v18_fu_923_p6 = v228_2_q0;
assign v18_fu_923_p8 = v228_3_q0;
assign v21_fu_980_p1 = reg_648;
assign v228_0_address0 = zext_ln45_6_fu_762_p1;
assign v228_0_address1 = zext_ln38_6_fu_704_p1;
assign v228_0_ce0 = v228_0_ce0_local;
assign v228_0_ce1 = v228_0_ce1_local;
assign v228_1_address0 = zext_ln45_6_fu_762_p1;
assign v228_1_address1 = zext_ln38_6_fu_704_p1;
assign v228_1_ce0 = v228_1_ce0_local;
assign v228_1_ce1 = v228_1_ce1_local;
assign v228_2_address0 = zext_ln45_6_fu_762_p1;
assign v228_2_address1 = zext_ln38_6_fu_704_p1;
assign v228_2_ce0 = v228_2_ce0_local;
assign v228_2_ce1 = v228_2_ce1_local;
assign v228_3_address0 = zext_ln45_6_fu_762_p1;
assign v228_3_address1 = zext_ln38_6_fu_704_p1;
assign v228_3_ce0 = v228_3_ce0_local;
assign v228_3_ce1 = v228_3_ce1_local;
assign v228_4_address0 = zext_ln45_6_fu_762_p1;
assign v228_4_address1 = zext_ln38_6_fu_704_p1;
assign v228_4_ce0 = v228_4_ce0_local;
assign v228_4_ce1 = v228_4_ce1_local;
assign v228_5_address0 = zext_ln45_6_fu_762_p1;
assign v228_5_address1 = zext_ln38_6_fu_704_p1;
assign v228_5_ce0 = v228_5_ce0_local;
assign v228_5_ce1 = v228_5_ce1_local;
assign v228_6_address0 = zext_ln45_6_fu_762_p1;
assign v228_6_address1 = zext_ln38_6_fu_704_p1;
assign v228_6_ce0 = v228_6_ce0_local;
assign v228_6_ce1 = v228_6_ce1_local;
assign v228_7_address0 = zext_ln45_6_fu_762_p1;
assign v228_7_address1 = zext_ln38_6_fu_704_p1;
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
assign v23_fu_1022_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v21_reg_1615);
assign v27_fu_985_p1 = v229_1_load_9_reg_1568;
assign v29_fu_1052_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v27_reg_1646);
assign v32_fu_989_p1 = v229_2_load_reg_1573;
assign v34_fu_1058_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v32_reg_1652);
assign v38_fu_993_p1 = v229_2_load_9_reg_1578;
assign v40_fu_1064_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v38_reg_1658);
assign v43_fu_997_p1 = v229_3_load_reg_1583;
assign v45_fu_1082_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v43_reg_1674);
assign v49_fu_1001_p1 = v229_3_load_7_reg_1588;
assign v51_fu_1088_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v49_reg_1680);
assign v54_fu_1005_p1 = reg_640;
assign v56_fu_1094_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v54_reg_1686);
assign v60_fu_1028_p1 = reg_644;
assign v62_fu_1112_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v60_reg_1722);
assign v65_fu_1033_p1 = reg_648;
assign v67_fu_1118_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v65_reg_1728);
assign v71_fu_1038_p1 = v229_1_load_11_reg_1621;
assign v73_fu_1124_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v71_reg_1734);
assign v76_fu_1070_p1 = v229_2_load_10_reg_1626;
assign v78_fu_1130_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v76_reg_1770);
assign v82_fu_1074_p1 = v229_2_load_11_reg_1631;
assign v84_fu_1136_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v82_reg_1776);
assign v87_fu_1078_p1 = v229_3_load_8_reg_1636;
assign v89_fu_1142_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v87_reg_1782);
assign v8_fu_966_p1 = reg_640;
assign v93_fu_1100_p1 = v229_3_load_9_reg_1641;
assign v95_fu_1148_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v93_reg_1818);
assign v98_fu_1104_p1 = v229_0_load_10_reg_1664;
assign zext_ln140_fu_962_p1 = add_ln140_reg_1509;
assign zext_ln147_fu_971_p1 = add_ln147_reg_1541;
assign zext_ln34_fu_722_p1 = add_ln34_fu_716_p2;
assign zext_ln38_5_fu_694_p1 = ap_sig_allocacmp_v7_3;
assign zext_ln38_6_fu_704_p1 = add_ln38_fu_698_p2;
assign zext_ln38_fu_690_p1 = ap_sig_allocacmp_v7_3;
assign zext_ln42_fu_780_p1 = add_ln42_fu_774_p2;
assign zext_ln45_5_fu_752_p1 = or_ln42_4_fu_740_p3;
assign zext_ln45_6_fu_762_p1 = add_ln45_fu_756_p2;
assign zext_ln45_fu_748_p1 = or_ln42_4_fu_740_p3;
assign zext_ln88_fu_792_p1 = add_ln88_fu_788_p2;
assign zext_ln95_fu_879_p1 = add_ln95_fu_875_p2;
always @ (posedge ap_clk) begin
    zext_ln38_reg_1370[13:8] <= 6'b000000;
    zext_ln45_reg_1437[0] <= 1'b1;
    zext_ln45_reg_1437[13:8] <= 6'b000000;
end
endmodule 