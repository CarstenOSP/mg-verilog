
module kernel_2mm_kernel_2mm_node0_Pipeline_label_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,mul_ln38,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,mul_ln34,mul_ln88,mul_ln140,v4,cmp11,empty,v11,v24,v35,v46,v57,v68,v79,v90,v101,grp_fu_4179_p_din0,grp_fu_4179_p_din1,grp_fu_4179_p_opcode,grp_fu_4179_p_dout0,grp_fu_4179_p_ce,grp_fu_4183_p_din0,grp_fu_4183_p_din1,grp_fu_4183_p_opcode,grp_fu_4183_p_dout0,grp_fu_4183_p_ce,grp_fu_4187_p_din0,grp_fu_4187_p_din1,grp_fu_4187_p_opcode,grp_fu_4187_p_dout0,grp_fu_4187_p_ce,grp_fu_4191_p_din0,grp_fu_4191_p_din1,grp_fu_4191_p_dout0,grp_fu_4191_p_ce,grp_fu_4195_p_din0,grp_fu_4195_p_din1,grp_fu_4195_p_dout0,grp_fu_4195_p_ce,grp_fu_4199_p_din0,grp_fu_4199_p_din1,grp_fu_4199_p_dout0,grp_fu_4199_p_ce,grp_fu_4203_p_din0,grp_fu_4203_p_din1,grp_fu_4203_p_dout0,grp_fu_4203_p_ce,grp_fu_4207_p_din0,grp_fu_4207_p_din1,grp_fu_4207_p_dout0,grp_fu_4207_p_ce,grp_fu_4211_p_din0,grp_fu_4211_p_din1,grp_fu_4211_p_dout0,grp_fu_4211_p_ce);  
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
input  [12:0] mul_ln34;
input  [13:0] mul_ln88;
input  [13:0] mul_ln140;
input  [31:0] v4;
input  [0:0] cmp11;
input  [2:0] empty;
input  [31:0] v11;
input  [31:0] v24;
input  [31:0] v35;
input  [31:0] v46;
input  [31:0] v57;
input  [31:0] v68;
input  [31:0] v79;
input  [31:0] v90;
input  [31:0] v101;
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
reg   [0:0] icmp_ln33_reg_1369;
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
reg   [7:0] v7_5_reg_1363;
wire   [0:0] icmp_ln33_fu_684_p2;
reg   [13:0] v229_0_addr_1_reg_1413;
reg   [13:0] v229_0_addr_1_reg_1413_pp0_iter1_reg;
reg   [13:0] v229_0_addr_1_reg_1413_pp0_iter2_reg;
reg   [13:0] v229_1_addr_1_reg_1418;
reg   [13:0] v229_1_addr_1_reg_1418_pp0_iter1_reg;
reg   [13:0] v229_1_addr_1_reg_1418_pp0_iter2_reg;
reg   [13:0] v229_2_addr_1_reg_1423;
reg   [13:0] v229_2_addr_1_reg_1423_pp0_iter1_reg;
reg   [13:0] v229_2_addr_1_reg_1423_pp0_iter2_reg;
reg   [13:0] v229_3_addr_1_reg_1428;
reg   [13:0] v229_3_addr_1_reg_1428_pp0_iter1_reg;
reg   [13:0] v229_3_addr_1_reg_1428_pp0_iter2_reg;
wire   [7:0] or_ln_fu_736_p3;
reg   [7:0] or_ln_reg_1434;
reg   [13:0] v229_0_addr_2_reg_1479;
reg   [13:0] v229_0_addr_2_reg_1479_pp0_iter1_reg;
reg   [13:0] v229_0_addr_2_reg_1479_pp0_iter2_reg;
reg   [13:0] v229_1_addr_2_reg_1484;
reg   [13:0] v229_1_addr_2_reg_1484_pp0_iter1_reg;
reg   [13:0] v229_1_addr_2_reg_1484_pp0_iter2_reg;
reg   [13:0] v229_2_addr_2_reg_1489;
reg   [13:0] v229_2_addr_2_reg_1489_pp0_iter1_reg;
reg   [13:0] v229_2_addr_2_reg_1489_pp0_iter2_reg;
reg   [13:0] v229_3_addr_2_reg_1494;
reg   [13:0] v229_3_addr_2_reg_1494_pp0_iter1_reg;
reg   [13:0] v229_3_addr_2_reg_1494_pp0_iter2_reg;
reg   [13:0] v229_0_addr_3_reg_1500;
reg   [13:0] v229_0_addr_3_reg_1500_pp0_iter1_reg;
reg   [13:0] v229_0_addr_3_reg_1500_pp0_iter2_reg;
wire   [13:0] add_ln140_fu_796_p2;
reg   [13:0] add_ln140_reg_1505;
reg   [13:0] v229_1_addr_3_reg_1510;
reg   [13:0] v229_1_addr_3_reg_1510_pp0_iter1_reg;
reg   [13:0] v229_1_addr_3_reg_1510_pp0_iter2_reg;
reg   [13:0] v229_2_addr_3_reg_1515;
reg   [13:0] v229_2_addr_3_reg_1515_pp0_iter1_reg;
reg   [13:0] v229_2_addr_3_reg_1515_pp0_iter2_reg;
reg   [13:0] v229_3_addr_3_reg_1520;
reg   [13:0] v229_3_addr_3_reg_1520_pp0_iter1_reg;
reg   [13:0] v229_3_addr_3_reg_1520_pp0_iter2_reg;
wire   [31:0] v12_fu_833_p19;
reg   [31:0] v12_reg_1525;
reg   [13:0] v229_0_addr_4_reg_1532;
reg   [13:0] v229_0_addr_4_reg_1532_pp0_iter1_reg;
reg   [13:0] v229_0_addr_4_reg_1532_pp0_iter2_reg;
wire   [13:0] add_ln147_fu_888_p2;
reg   [13:0] add_ln147_reg_1537;
reg   [13:0] v229_1_addr_4_reg_1542;
reg   [13:0] v229_1_addr_4_reg_1542_pp0_iter1_reg;
reg   [13:0] v229_1_addr_4_reg_1542_pp0_iter2_reg;
reg   [13:0] v229_2_addr_4_reg_1547;
reg   [13:0] v229_2_addr_4_reg_1547_pp0_iter1_reg;
reg   [13:0] v229_2_addr_4_reg_1547_pp0_iter2_reg;
reg   [13:0] v229_3_addr_4_reg_1552;
reg   [13:0] v229_3_addr_4_reg_1552_pp0_iter1_reg;
reg   [13:0] v229_3_addr_4_reg_1552_pp0_iter2_reg;
reg   [13:0] v229_3_addr_4_reg_1552_pp0_iter3_reg;
wire   [31:0] v18_fu_925_p19;
reg   [31:0] v18_reg_1557;
reg   [31:0] v229_1_load_1_reg_1564;
reg   [31:0] v229_2_load_reg_1569;
reg   [31:0] v229_2_load_1_reg_1574;
reg   [31:0] v229_3_load_reg_1579;
reg   [31:0] v229_3_load_1_reg_1584;
reg   [13:0] v229_0_addr_5_reg_1589;
reg   [13:0] v229_0_addr_5_reg_1589_pp0_iter1_reg;
reg   [13:0] v229_0_addr_5_reg_1589_pp0_iter2_reg;
reg   [13:0] v229_0_addr_5_reg_1589_pp0_iter3_reg;
wire   [31:0] v8_fu_968_p1;
reg   [31:0] v8_reg_1594;
reg   [13:0] v229_0_addr_6_reg_1600;
reg   [13:0] v229_0_addr_6_reg_1600_pp0_iter1_reg;
reg   [13:0] v229_0_addr_6_reg_1600_pp0_iter2_reg;
reg   [13:0] v229_0_addr_6_reg_1600_pp0_iter3_reg;
wire   [31:0] v15_fu_977_p1;
reg   [31:0] v15_reg_1605;
wire   [31:0] v21_fu_982_p1;
reg   [31:0] v21_reg_1611;
reg   [31:0] v229_1_load_3_reg_1617;
reg   [31:0] v229_2_load_2_reg_1622;
reg   [31:0] v229_2_load_3_reg_1627;
reg   [31:0] v229_3_load_2_reg_1632;
reg   [31:0] v229_3_load_3_reg_1637;
wire   [31:0] v27_fu_987_p1;
reg   [31:0] v27_reg_1642;
wire   [31:0] v32_fu_991_p1;
reg   [31:0] v32_reg_1648;
wire   [31:0] v38_fu_995_p1;
reg   [31:0] v38_reg_1654;
reg   [31:0] v229_0_load_4_reg_1660;
reg   [31:0] v229_0_load_5_reg_1665;
wire   [31:0] v43_fu_999_p1;
reg   [31:0] v43_reg_1670;
wire   [31:0] v49_fu_1003_p1;
reg   [31:0] v49_reg_1676;
wire   [31:0] v54_fu_1007_p1;
reg   [31:0] v54_reg_1682;
wire   [31:0] v10_fu_1012_p3;
reg   [31:0] v10_reg_1688;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v13_reg_1693;
wire   [31:0] v17_fu_1018_p3;
reg   [31:0] v17_reg_1698;
reg   [31:0] v19_reg_1703;
wire   [31:0] v23_fu_1024_p3;
reg   [31:0] v23_reg_1708;
reg   [31:0] v25_reg_1713;
wire   [31:0] v60_fu_1030_p1;
reg   [31:0] v60_reg_1718;
wire   [31:0] v65_fu_1035_p1;
reg   [31:0] v65_reg_1724;
wire   [31:0] v71_fu_1040_p1;
reg   [31:0] v71_reg_1730;
wire   [31:0] v29_fu_1054_p3;
reg   [31:0] v29_reg_1736;
reg   [31:0] v30_reg_1741;
wire   [31:0] v34_fu_1060_p3;
reg   [31:0] v34_reg_1746;
reg   [31:0] v36_reg_1751;
wire   [31:0] v40_fu_1066_p3;
reg   [31:0] v40_reg_1756;
reg   [31:0] v41_reg_1761;
wire   [31:0] v76_fu_1072_p1;
reg   [31:0] v76_reg_1766;
wire   [31:0] v82_fu_1076_p1;
reg   [31:0] v82_reg_1772;
wire   [31:0] v87_fu_1080_p1;
reg   [31:0] v87_reg_1778;
wire   [31:0] v45_fu_1084_p3;
reg   [31:0] v45_reg_1784;
reg   [31:0] v47_reg_1789;
wire   [31:0] v51_fu_1090_p3;
reg   [31:0] v51_reg_1794;
reg   [31:0] v52_reg_1799;
wire   [31:0] v56_fu_1096_p3;
reg   [31:0] v56_reg_1804;
reg   [31:0] v58_reg_1809;
wire   [31:0] v93_fu_1102_p1;
reg   [31:0] v93_reg_1814;
wire   [31:0] v98_fu_1106_p1;
reg   [31:0] v98_reg_1820;
wire   [31:0] v104_fu_1110_p1;
reg   [31:0] v104_reg_1826;
wire   [31:0] v62_fu_1114_p3;
reg   [31:0] v62_reg_1832;
reg   [31:0] v63_reg_1837;
wire   [31:0] v67_fu_1120_p3;
reg   [31:0] v67_reg_1842;
reg   [31:0] v69_reg_1847;
wire   [31:0] v73_fu_1126_p3;
reg   [31:0] v73_reg_1852;
reg   [31:0] v74_reg_1857;
wire   [31:0] v78_fu_1132_p3;
reg   [31:0] v78_reg_1862;
reg   [31:0] v80_reg_1867;
wire   [31:0] v84_fu_1138_p3;
reg   [31:0] v84_reg_1872;
reg   [31:0] v85_reg_1877;
wire   [31:0] v89_fu_1144_p3;
reg   [31:0] v89_reg_1882;
reg   [31:0] v91_reg_1887;
wire   [31:0] v95_fu_1150_p3;
reg   [31:0] v95_reg_1892;
reg   [31:0] v96_reg_1897;
wire   [31:0] v100_fu_1156_p3;
reg   [31:0] v100_reg_1902;
reg   [31:0] v102_reg_1907;
wire   [31:0] v106_fu_1162_p3;
reg   [31:0] v106_reg_1912;
reg   [31:0] v107_reg_1917;
reg   [31:0] v97_reg_1922;
reg   [31:0] v103_reg_1927;
reg   [31:0] v108_reg_1932;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln38_16_fu_700_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln34_fu_718_p1;
wire   [63:0] zext_ln45_16_fu_754_p1;
wire   [63:0] zext_ln42_fu_772_p1;
wire   [63:0] zext_ln88_fu_788_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln95_fu_880_p1;
wire   [63:0] zext_ln140_fu_964_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln147_fu_973_p1;
reg   [7:0] v7_fu_124;
wire   [7:0] add_ln33_fu_1044_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v7_5;
reg    v229_0_ce1_local;
reg   [13:0] v229_0_address1_local;
reg    v229_0_ce0_local;
reg   [13:0] v229_0_address0_local;
reg    v229_0_we1_local;
reg   [31:0] v229_0_d1_local;
wire   [31:0] bitcast_ln41_fu_1188_p1;
wire    ap_block_pp0_stage3;
reg    v229_0_we0_local;
reg   [31:0] v229_0_d0_local;
wire   [31:0] bitcast_ln48_fu_1193_p1;
wire   [31:0] bitcast_ln94_fu_1208_p1;
wire    ap_block_pp0_stage4;
wire   [31:0] bitcast_ln100_fu_1213_p1;
wire   [31:0] bitcast_ln146_fu_1247_p1;
wire    ap_block_pp0_stage5;
wire   [31:0] bitcast_ln152_fu_1251_p1;
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
wire   [31:0] bitcast_ln55_fu_1168_p1;
reg    v229_1_we0_local;
reg   [31:0] v229_1_d0_local;
wire   [31:0] bitcast_ln61_fu_1173_p1;
wire   [31:0] bitcast_ln107_fu_1218_p1;
wire   [31:0] bitcast_ln113_fu_1223_p1;
reg    v229_2_ce1_local;
reg   [13:0] v229_2_address1_local;
reg    v229_2_ce0_local;
reg   [13:0] v229_2_address0_local;
reg    v229_2_we1_local;
reg   [31:0] v229_2_d1_local;
wire   [31:0] bitcast_ln68_fu_1178_p1;
reg    v229_2_we0_local;
reg   [31:0] v229_2_d0_local;
wire   [31:0] bitcast_ln74_fu_1183_p1;
wire   [31:0] bitcast_ln120_fu_1228_p1;
wire   [31:0] bitcast_ln126_fu_1233_p1;
reg    v229_3_ce1_local;
reg   [13:0] v229_3_address1_local;
reg    v229_3_ce0_local;
reg   [13:0] v229_3_address0_local;
reg    v229_3_we0_local;
reg   [31:0] v229_3_d0_local;
wire   [31:0] bitcast_ln81_fu_1198_p1;
reg    v229_3_we1_local;
reg   [31:0] v229_3_d1_local;
wire   [31:0] bitcast_ln87_fu_1203_p1;
wire   [31:0] bitcast_ln133_fu_1238_p1;
wire   [31:0] bitcast_ln139_fu_1243_p1;
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
wire   [12:0] zext_ln38_15_fu_690_p1;
wire   [12:0] add_ln38_fu_694_p2;
wire   [12:0] add_ln34_fu_712_p2;
wire   [6:0] tmp_s_fu_726_p4;
wire   [12:0] zext_ln45_15_fu_744_p1;
wire   [12:0] add_ln45_fu_748_p2;
wire   [12:0] add_ln42_fu_766_p2;
wire   [13:0] zext_ln38_fu_780_p1;
wire   [13:0] add_ln88_fu_783_p2;
wire   [31:0] v12_fu_833_p2;
wire   [31:0] v12_fu_833_p4;
wire   [31:0] v12_fu_833_p6;
wire   [31:0] v12_fu_833_p8;
wire   [31:0] v12_fu_833_p10;
wire   [31:0] v12_fu_833_p12;
wire   [31:0] v12_fu_833_p14;
wire   [31:0] v12_fu_833_p16;
wire   [31:0] v12_fu_833_p17;
wire   [13:0] zext_ln45_fu_872_p1;
wire   [13:0] add_ln95_fu_875_p2;
wire   [31:0] v18_fu_925_p2;
wire   [31:0] v18_fu_925_p4;
wire   [31:0] v18_fu_925_p6;
wire   [31:0] v18_fu_925_p8;
wire   [31:0] v18_fu_925_p10;
wire   [31:0] v18_fu_925_p12;
wire   [31:0] v18_fu_925_p14;
wire   [31:0] v18_fu_925_p16;
wire   [31:0] v18_fu_925_p17;
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
wire   [2:0] v12_fu_833_p1;
wire   [2:0] v12_fu_833_p3;
wire   [2:0] v12_fu_833_p5;
wire   [2:0] v12_fu_833_p7;
wire  signed [2:0] v12_fu_833_p9;
wire  signed [2:0] v12_fu_833_p11;
wire  signed [2:0] v12_fu_833_p13;
wire  signed [2:0] v12_fu_833_p15;
wire   [2:0] v18_fu_925_p1;
wire   [2:0] v18_fu_925_p3;
wire   [2:0] v18_fu_925_p5;
wire   [2:0] v18_fu_925_p7;
wire  signed [2:0] v18_fu_925_p9;
wire  signed [2:0] v18_fu_925_p11;
wire  signed [2:0] v18_fu_925_p13;
wire  signed [2:0] v18_fu_925_p15;
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
sparsemux_17_3_32_1_1_U97(.din0(v12_fu_833_p2),.din1(v12_fu_833_p4),.din2(v12_fu_833_p6),.din3(v12_fu_833_p8),.din4(v12_fu_833_p10),.din5(v12_fu_833_p12),.din6(v12_fu_833_p14),.din7(v12_fu_833_p16),.def(v12_fu_833_p17),.sel(empty),.dout(v12_fu_833_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U98(.din0(v18_fu_925_p2),.din1(v18_fu_925_p4),.din2(v18_fu_925_p6),.din3(v18_fu_925_p8),.din4(v18_fu_925_p10),.din5(v18_fu_925_p12),.din6(v18_fu_925_p14),.din7(v18_fu_925_p16),.def(v18_fu_925_p17),.sel(empty),.dout(v18_fu_925_p19));
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
    end else if (((icmp_ln33_reg_1369 == 1'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v7_fu_124 <= add_ln33_fu_1044_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln140_reg_1505 <= add_ln140_fu_796_p2;
        add_ln147_reg_1537 <= add_ln147_fu_888_p2;
        v104_reg_1826 <= v104_fu_1110_p1;
        v12_reg_1525 <= v12_fu_833_p19;
        v18_reg_1557 <= v18_fu_925_p19;
        v229_0_addr_3_reg_1500 <= zext_ln88_fu_788_p1;
        v229_0_addr_3_reg_1500_pp0_iter1_reg <= v229_0_addr_3_reg_1500;
        v229_0_addr_3_reg_1500_pp0_iter2_reg <= v229_0_addr_3_reg_1500_pp0_iter1_reg;
        v229_0_addr_4_reg_1532 <= zext_ln95_fu_880_p1;
        v229_0_addr_4_reg_1532_pp0_iter1_reg <= v229_0_addr_4_reg_1532;
        v229_0_addr_4_reg_1532_pp0_iter2_reg <= v229_0_addr_4_reg_1532_pp0_iter1_reg;
        v229_1_addr_3_reg_1510 <= zext_ln88_fu_788_p1;
        v229_1_addr_3_reg_1510_pp0_iter1_reg <= v229_1_addr_3_reg_1510;
        v229_1_addr_3_reg_1510_pp0_iter2_reg <= v229_1_addr_3_reg_1510_pp0_iter1_reg;
        v229_1_addr_4_reg_1542 <= zext_ln95_fu_880_p1;
        v229_1_addr_4_reg_1542_pp0_iter1_reg <= v229_1_addr_4_reg_1542;
        v229_1_addr_4_reg_1542_pp0_iter2_reg <= v229_1_addr_4_reg_1542_pp0_iter1_reg;
        v229_2_addr_3_reg_1515 <= zext_ln88_fu_788_p1;
        v229_2_addr_3_reg_1515_pp0_iter1_reg <= v229_2_addr_3_reg_1515;
        v229_2_addr_3_reg_1515_pp0_iter2_reg <= v229_2_addr_3_reg_1515_pp0_iter1_reg;
        v229_2_addr_4_reg_1547 <= zext_ln95_fu_880_p1;
        v229_2_addr_4_reg_1547_pp0_iter1_reg <= v229_2_addr_4_reg_1547;
        v229_2_addr_4_reg_1547_pp0_iter2_reg <= v229_2_addr_4_reg_1547_pp0_iter1_reg;
        v229_3_addr_3_reg_1520 <= zext_ln88_fu_788_p1;
        v229_3_addr_3_reg_1520_pp0_iter1_reg <= v229_3_addr_3_reg_1520;
        v229_3_addr_3_reg_1520_pp0_iter2_reg <= v229_3_addr_3_reg_1520_pp0_iter1_reg;
        v229_3_addr_4_reg_1552 <= zext_ln95_fu_880_p1;
        v229_3_addr_4_reg_1552_pp0_iter1_reg <= v229_3_addr_4_reg_1552;
        v229_3_addr_4_reg_1552_pp0_iter2_reg <= v229_3_addr_4_reg_1552_pp0_iter1_reg;
        v229_3_addr_4_reg_1552_pp0_iter3_reg <= v229_3_addr_4_reg_1552_pp0_iter2_reg;
        v45_reg_1784 <= v45_fu_1084_p3;
        v51_reg_1794 <= v51_fu_1090_p3;
        v56_reg_1804 <= v56_fu_1096_p3;
        v93_reg_1814 <= v93_fu_1102_p1;
        v98_reg_1820 <= v98_fu_1106_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v10_reg_1688 <= v10_fu_1012_p3;
        v17_reg_1698 <= v17_fu_1018_p3;
        v23_reg_1708 <= v23_fu_1024_p3;
        v60_reg_1718 <= v60_fu_1030_p1;
        v65_reg_1724 <= v65_fu_1035_p1;
        v71_reg_1730 <= v71_fu_1040_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln33_reg_1369 <= icmp_ln33_fu_684_p2;
        or_ln_reg_1434[7 : 1] <= or_ln_fu_736_p3[7 : 1];
        v229_0_addr_1_reg_1413[12 : 0] <= zext_ln34_fu_718_p1[12 : 0];
        v229_0_addr_1_reg_1413_pp0_iter1_reg[12 : 0] <= v229_0_addr_1_reg_1413[12 : 0];
        v229_0_addr_1_reg_1413_pp0_iter2_reg[12 : 0] <= v229_0_addr_1_reg_1413_pp0_iter1_reg[12 : 0];
        v229_0_addr_2_reg_1479[12 : 0] <= zext_ln42_fu_772_p1[12 : 0];
        v229_0_addr_2_reg_1479_pp0_iter1_reg[12 : 0] <= v229_0_addr_2_reg_1479[12 : 0];
        v229_0_addr_2_reg_1479_pp0_iter2_reg[12 : 0] <= v229_0_addr_2_reg_1479_pp0_iter1_reg[12 : 0];
        v229_1_addr_1_reg_1418[12 : 0] <= zext_ln34_fu_718_p1[12 : 0];
        v229_1_addr_1_reg_1418_pp0_iter1_reg[12 : 0] <= v229_1_addr_1_reg_1418[12 : 0];
        v229_1_addr_1_reg_1418_pp0_iter2_reg[12 : 0] <= v229_1_addr_1_reg_1418_pp0_iter1_reg[12 : 0];
        v229_1_addr_2_reg_1484[12 : 0] <= zext_ln42_fu_772_p1[12 : 0];
        v229_1_addr_2_reg_1484_pp0_iter1_reg[12 : 0] <= v229_1_addr_2_reg_1484[12 : 0];
        v229_1_addr_2_reg_1484_pp0_iter2_reg[12 : 0] <= v229_1_addr_2_reg_1484_pp0_iter1_reg[12 : 0];
        v229_2_addr_1_reg_1423[12 : 0] <= zext_ln34_fu_718_p1[12 : 0];
        v229_2_addr_1_reg_1423_pp0_iter1_reg[12 : 0] <= v229_2_addr_1_reg_1423[12 : 0];
        v229_2_addr_1_reg_1423_pp0_iter2_reg[12 : 0] <= v229_2_addr_1_reg_1423_pp0_iter1_reg[12 : 0];
        v229_2_addr_2_reg_1489[12 : 0] <= zext_ln42_fu_772_p1[12 : 0];
        v229_2_addr_2_reg_1489_pp0_iter1_reg[12 : 0] <= v229_2_addr_2_reg_1489[12 : 0];
        v229_2_addr_2_reg_1489_pp0_iter2_reg[12 : 0] <= v229_2_addr_2_reg_1489_pp0_iter1_reg[12 : 0];
        v229_3_addr_1_reg_1428[12 : 0] <= zext_ln34_fu_718_p1[12 : 0];
        v229_3_addr_1_reg_1428_pp0_iter1_reg[12 : 0] <= v229_3_addr_1_reg_1428[12 : 0];
        v229_3_addr_1_reg_1428_pp0_iter2_reg[12 : 0] <= v229_3_addr_1_reg_1428_pp0_iter1_reg[12 : 0];
        v229_3_addr_2_reg_1494[12 : 0] <= zext_ln42_fu_772_p1[12 : 0];
        v229_3_addr_2_reg_1494_pp0_iter1_reg[12 : 0] <= v229_3_addr_2_reg_1494[12 : 0];
        v229_3_addr_2_reg_1494_pp0_iter2_reg[12 : 0] <= v229_3_addr_2_reg_1494_pp0_iter1_reg[12 : 0];
        v29_reg_1736 <= v29_fu_1054_p3;
        v34_reg_1746 <= v34_fu_1060_p3;
        v40_reg_1756 <= v40_fu_1066_p3;
        v76_reg_1766 <= v76_fu_1072_p1;
        v7_5_reg_1363 <= ap_sig_allocacmp_v7_5;
        v82_reg_1772 <= v82_fu_1076_p1;
        v87_reg_1778 <= v87_fu_1080_p1;
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
        v100_reg_1902 <= v100_fu_1156_p3;
        v106_reg_1912 <= v106_fu_1162_p3;
        v43_reg_1670 <= v43_fu_999_p1;
        v49_reg_1676 <= v49_fu_1003_p1;
        v54_reg_1682 <= v54_fu_1007_p1;
        v95_reg_1892 <= v95_fu_1150_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v102_reg_1907 <= grp_fu_4203_p_dout0;
        v107_reg_1917 <= grp_fu_4211_p_dout0;
        v96_reg_1897 <= grp_fu_4195_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v103_reg_1927 <= grp_fu_4183_p_dout0;
        v108_reg_1932 <= grp_fu_4187_p_dout0;
        v97_reg_1922 <= grp_fu_4179_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v13_reg_1693 <= grp_fu_4195_p_dout0;
        v19_reg_1703 <= grp_fu_4203_p_dout0;
        v25_reg_1713 <= grp_fu_4211_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v15_reg_1605 <= v15_fu_977_p1;
        v21_reg_1611 <= v21_fu_982_p1;
        v229_0_addr_5_reg_1589 <= zext_ln140_fu_964_p1;
        v229_0_addr_5_reg_1589_pp0_iter1_reg <= v229_0_addr_5_reg_1589;
        v229_0_addr_5_reg_1589_pp0_iter2_reg <= v229_0_addr_5_reg_1589_pp0_iter1_reg;
        v229_0_addr_5_reg_1589_pp0_iter3_reg <= v229_0_addr_5_reg_1589_pp0_iter2_reg;
        v229_0_addr_6_reg_1600 <= zext_ln147_fu_973_p1;
        v229_0_addr_6_reg_1600_pp0_iter1_reg <= v229_0_addr_6_reg_1600;
        v229_0_addr_6_reg_1600_pp0_iter2_reg <= v229_0_addr_6_reg_1600_pp0_iter1_reg;
        v229_0_addr_6_reg_1600_pp0_iter3_reg <= v229_0_addr_6_reg_1600_pp0_iter2_reg;
        v62_reg_1832 <= v62_fu_1114_p3;
        v67_reg_1842 <= v67_fu_1120_p3;
        v73_reg_1852 <= v73_fu_1126_p3;
        v8_reg_1594 <= v8_fu_968_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_load_4_reg_1660 <= v229_0_q1;
        v229_0_load_5_reg_1665 <= v229_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_load_1_reg_1564 <= v229_1_q0;
        v229_2_load_1_reg_1574 <= v229_2_q0;
        v229_2_load_reg_1569 <= v229_2_q1;
        v229_3_load_1_reg_1584 <= v229_3_q0;
        v229_3_load_reg_1579 <= v229_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_load_3_reg_1617 <= v229_1_q0;
        v229_2_load_2_reg_1622 <= v229_2_q1;
        v229_2_load_3_reg_1627 <= v229_2_q0;
        v229_3_load_2_reg_1632 <= v229_3_q1;
        v229_3_load_3_reg_1637 <= v229_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v27_reg_1642 <= v27_fu_987_p1;
        v32_reg_1648 <= v32_fu_991_p1;
        v38_reg_1654 <= v38_fu_995_p1;
        v78_reg_1862 <= v78_fu_1132_p3;
        v84_reg_1872 <= v84_fu_1138_p3;
        v89_reg_1882 <= v89_fu_1144_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v30_reg_1741 <= grp_fu_4195_p_dout0;
        v36_reg_1751 <= grp_fu_4203_p_dout0;
        v41_reg_1761 <= grp_fu_4211_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v47_reg_1789 <= grp_fu_4195_p_dout0;
        v52_reg_1799 <= grp_fu_4203_p_dout0;
        v58_reg_1809 <= grp_fu_4211_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v63_reg_1837 <= grp_fu_4195_p_dout0;
        v69_reg_1847 <= grp_fu_4203_p_dout0;
        v74_reg_1857 <= grp_fu_4211_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v80_reg_1867 <= grp_fu_4195_p_dout0;
        v85_reg_1877 <= grp_fu_4203_p_dout0;
        v91_reg_1887 <= grp_fu_4211_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln33_reg_1369 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_v7_5 = 8'd0;
    end else begin
        ap_sig_allocacmp_v7_5 = v7_fu_124;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_604_p0 = v95_reg_1892;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_604_p0 = v78_reg_1862;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_604_p0 = v62_reg_1832;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_604_p0 = v45_reg_1784;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_604_p0 = v29_reg_1736;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_604_p0 = v10_reg_1688;
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
            grp_fu_604_p1 = v96_reg_1897;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_604_p1 = v80_reg_1867;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_604_p1 = v63_reg_1837;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_604_p1 = v47_reg_1789;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_604_p1 = v30_reg_1741;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_604_p1 = v13_reg_1693;
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
            grp_fu_608_p0 = v100_reg_1902;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_608_p0 = v84_reg_1872;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_608_p0 = v67_reg_1842;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_608_p0 = v51_reg_1794;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_608_p0 = v34_reg_1746;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_608_p0 = v17_reg_1698;
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
            grp_fu_608_p1 = v102_reg_1907;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_608_p1 = v85_reg_1877;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_608_p1 = v69_reg_1847;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_608_p1 = v52_reg_1799;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_608_p1 = v36_reg_1751;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_608_p1 = v19_reg_1703;
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
            grp_fu_612_p0 = v106_reg_1912;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_612_p0 = v89_reg_1882;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_612_p0 = v73_reg_1852;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_612_p0 = v56_reg_1804;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_612_p0 = v40_reg_1756;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_612_p0 = v23_reg_1708;
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
            grp_fu_612_p1 = v107_reg_1917;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_612_p1 = v91_reg_1887;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_612_p1 = v74_reg_1857;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_612_p1 = v58_reg_1809;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_612_p1 = v41_reg_1761;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_612_p1 = v25_reg_1713;
        end else begin
            grp_fu_612_p1 = 'bx;
        end
    end else begin
        grp_fu_612_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_616_p0 = v93_fu_1102_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_616_p0 = v76_fu_1072_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_616_p0 = v60_fu_1030_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_616_p0 = v43_fu_999_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_616_p0 = v27_fu_987_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_616_p0 = v8_fu_968_p1;
    end else begin
        grp_fu_616_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_620_p0 = v90;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_620_p0 = v79;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_620_p0 = v57;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_620_p0 = v46;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_620_p0 = v24;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_620_p0 = v11;
    end else begin
        grp_fu_620_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_620_p1 = v18_reg_1557;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_620_p1 = v12_reg_1525;
    end else begin
        grp_fu_620_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_624_p0 = v98_fu_1106_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_624_p0 = v82_fu_1076_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_624_p0 = v65_fu_1035_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_624_p0 = v49_fu_1003_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_624_p0 = v32_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_624_p0 = v15_fu_977_p1;
    end else begin
        grp_fu_624_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_628_p0 = v101;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_628_p0 = v79;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_628_p0 = v68;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_628_p0 = v46;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_628_p0 = v35;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_628_p0 = v11;
    end else begin
        grp_fu_628_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_628_p1 = v12_reg_1525;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_628_p1 = v18_reg_1557;
    end else begin
        grp_fu_628_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_632_p0 = v104_fu_1110_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_632_p0 = v87_fu_1080_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_632_p0 = v71_fu_1040_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_632_p0 = v54_fu_1007_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_632_p0 = v38_fu_995_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_632_p0 = v21_fu_982_p1;
    end else begin
        grp_fu_632_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_636_p0 = v101;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_636_p0 = v90;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_636_p0 = v68;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_636_p0 = v57;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_636_p0 = v35;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_636_p0 = v24;
    end else begin
        grp_fu_636_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_636_p1 = v18_reg_1557;
    end else if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_636_p1 = v12_reg_1525;
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
        v229_0_address0_local = v229_0_addr_6_reg_1600_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address0_local = v229_0_addr_4_reg_1532_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address0_local = v229_0_addr_2_reg_1479_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address0_local = zext_ln147_fu_973_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address0_local = zext_ln95_fu_880_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address0_local = zext_ln42_fu_772_p1;
    end else begin
        v229_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_address1_local = v229_0_addr_5_reg_1589_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_address1_local = v229_0_addr_3_reg_1500_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_address1_local = v229_0_addr_1_reg_1413_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_0_address1_local = zext_ln140_fu_964_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_0_address1_local = zext_ln88_fu_788_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_0_address1_local = zext_ln34_fu_718_p1;
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
        v229_0_d0_local = bitcast_ln152_fu_1251_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_d0_local = bitcast_ln100_fu_1213_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d0_local = bitcast_ln48_fu_1193_p1;
    end else begin
        v229_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_0_d1_local = bitcast_ln146_fu_1247_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_0_d1_local = bitcast_ln94_fu_1208_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_0_d1_local = bitcast_ln41_fu_1188_p1;
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
        v229_1_address0_local = v229_1_addr_4_reg_1542_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address0_local = v229_1_addr_2_reg_1484_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address0_local = zext_ln95_fu_880_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address0_local = zext_ln42_fu_772_p1;
    end else begin
        v229_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v229_1_address1_local = v229_1_addr_3_reg_1510_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_1_address1_local = v229_1_addr_1_reg_1418_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_1_address1_local = zext_ln88_fu_788_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_1_address1_local = zext_ln34_fu_718_p1;
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
            v229_1_d0_local = bitcast_ln113_fu_1223_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_1_d0_local = bitcast_ln61_fu_1173_p1;
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
            v229_1_d1_local = bitcast_ln107_fu_1218_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_1_d1_local = bitcast_ln55_fu_1168_p1;
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
        v229_2_address0_local = v229_2_addr_4_reg_1547_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address0_local = v229_2_addr_2_reg_1489_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address0_local = zext_ln95_fu_880_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address0_local = zext_ln42_fu_772_p1;
    end else begin
        v229_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_2_address1_local = v229_2_addr_3_reg_1515_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v229_2_address1_local = v229_2_addr_1_reg_1423_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_2_address1_local = zext_ln88_fu_788_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_2_address1_local = zext_ln34_fu_718_p1;
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
            v229_2_d0_local = bitcast_ln126_fu_1233_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d0_local = bitcast_ln74_fu_1183_p1;
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
            v229_2_d1_local = bitcast_ln120_fu_1228_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v229_2_d1_local = bitcast_ln68_fu_1178_p1;
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
        v229_3_address0_local = v229_3_addr_4_reg_1552_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_address0_local = v229_3_addr_1_reg_1428_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address0_local = zext_ln95_fu_880_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address0_local = zext_ln42_fu_772_p1;
    end else begin
        v229_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v229_3_address1_local = v229_3_addr_3_reg_1520_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_address1_local = v229_3_addr_2_reg_1494_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v229_3_address1_local = zext_ln88_fu_788_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v229_3_address1_local = zext_ln34_fu_718_p1;
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
        v229_3_d0_local = bitcast_ln139_fu_1243_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v229_3_d0_local = bitcast_ln81_fu_1198_p1;
    end else begin
        v229_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            v229_3_d1_local = bitcast_ln133_fu_1238_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v229_3_d1_local = bitcast_ln87_fu_1203_p1;
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
assign add_ln140_fu_796_p2 = (mul_ln140 + zext_ln38_fu_780_p1);
assign add_ln147_fu_888_p2 = (mul_ln140 + zext_ln45_fu_872_p1);
assign add_ln33_fu_1044_p2 = (v7_5_reg_1363 + 8'd2);
assign add_ln34_fu_712_p2 = (mul_ln34 + zext_ln38_15_fu_690_p1);
assign add_ln38_fu_694_p2 = (mul_ln38 + zext_ln38_15_fu_690_p1);
assign add_ln42_fu_766_p2 = (mul_ln34 + zext_ln45_15_fu_744_p1);
assign add_ln45_fu_748_p2 = (mul_ln38 + zext_ln45_15_fu_744_p1);
assign add_ln88_fu_783_p2 = (mul_ln88 + zext_ln38_fu_780_p1);
assign add_ln95_fu_875_p2 = (mul_ln88 + zext_ln45_fu_872_p1);
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
assign bitcast_ln100_fu_1213_p1 = reg_652;
assign bitcast_ln107_fu_1218_p1 = reg_656;
assign bitcast_ln113_fu_1223_p1 = reg_672;
assign bitcast_ln120_fu_1228_p1 = reg_652;
assign bitcast_ln126_fu_1233_p1 = reg_656;
assign bitcast_ln133_fu_1238_p1 = reg_660;
assign bitcast_ln139_fu_1243_p1 = v97_reg_1922;
assign bitcast_ln146_fu_1247_p1 = v103_reg_1927;
assign bitcast_ln152_fu_1251_p1 = v108_reg_1932;
assign bitcast_ln41_fu_1188_p1 = reg_652;
assign bitcast_ln48_fu_1193_p1 = reg_656;
assign bitcast_ln55_fu_1168_p1 = reg_660;
assign bitcast_ln61_fu_1173_p1 = reg_664;
assign bitcast_ln68_fu_1178_p1 = reg_668;
assign bitcast_ln74_fu_1183_p1 = reg_672;
assign bitcast_ln81_fu_1198_p1 = reg_664;
assign bitcast_ln87_fu_1203_p1 = reg_668;
assign bitcast_ln94_fu_1208_p1 = reg_660;
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
assign icmp_ln33_fu_684_p2 = ((ap_sig_allocacmp_v7_5 < 8'd220) ? 1'b1 : 1'b0);
assign or_ln_fu_736_p3 = {{tmp_s_fu_726_p4}, {1'd1}};
assign tmp_s_fu_726_p4 = {{ap_sig_allocacmp_v7_5[7:1]}};
assign v100_fu_1156_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v98_reg_1820);
assign v104_fu_1110_p1 = v229_0_load_5_reg_1665;
assign v106_fu_1162_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v104_reg_1826);
assign v10_fu_1012_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v8_reg_1594);
assign v12_fu_833_p10 = v228_4_q1;
assign v12_fu_833_p12 = v228_5_q1;
assign v12_fu_833_p14 = v228_6_q1;
assign v12_fu_833_p16 = v228_7_q1;
assign v12_fu_833_p17 = 'bx;
assign v12_fu_833_p2 = v228_0_q1;
assign v12_fu_833_p4 = v228_1_q1;
assign v12_fu_833_p6 = v228_2_q1;
assign v12_fu_833_p8 = v228_3_q1;
assign v15_fu_977_p1 = reg_644;
assign v17_fu_1018_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v15_reg_1605);
assign v18_fu_925_p10 = v228_4_q0;
assign v18_fu_925_p12 = v228_5_q0;
assign v18_fu_925_p14 = v228_6_q0;
assign v18_fu_925_p16 = v228_7_q0;
assign v18_fu_925_p17 = 'bx;
assign v18_fu_925_p2 = v228_0_q0;
assign v18_fu_925_p4 = v228_1_q0;
assign v18_fu_925_p6 = v228_2_q0;
assign v18_fu_925_p8 = v228_3_q0;
assign v21_fu_982_p1 = reg_648;
assign v228_0_address0 = zext_ln45_16_fu_754_p1;
assign v228_0_address1 = zext_ln38_16_fu_700_p1;
assign v228_0_ce0 = v228_0_ce0_local;
assign v228_0_ce1 = v228_0_ce1_local;
assign v228_1_address0 = zext_ln45_16_fu_754_p1;
assign v228_1_address1 = zext_ln38_16_fu_700_p1;
assign v228_1_ce0 = v228_1_ce0_local;
assign v228_1_ce1 = v228_1_ce1_local;
assign v228_2_address0 = zext_ln45_16_fu_754_p1;
assign v228_2_address1 = zext_ln38_16_fu_700_p1;
assign v228_2_ce0 = v228_2_ce0_local;
assign v228_2_ce1 = v228_2_ce1_local;
assign v228_3_address0 = zext_ln45_16_fu_754_p1;
assign v228_3_address1 = zext_ln38_16_fu_700_p1;
assign v228_3_ce0 = v228_3_ce0_local;
assign v228_3_ce1 = v228_3_ce1_local;
assign v228_4_address0 = zext_ln45_16_fu_754_p1;
assign v228_4_address1 = zext_ln38_16_fu_700_p1;
assign v228_4_ce0 = v228_4_ce0_local;
assign v228_4_ce1 = v228_4_ce1_local;
assign v228_5_address0 = zext_ln45_16_fu_754_p1;
assign v228_5_address1 = zext_ln38_16_fu_700_p1;
assign v228_5_ce0 = v228_5_ce0_local;
assign v228_5_ce1 = v228_5_ce1_local;
assign v228_6_address0 = zext_ln45_16_fu_754_p1;
assign v228_6_address1 = zext_ln38_16_fu_700_p1;
assign v228_6_ce0 = v228_6_ce0_local;
assign v228_6_ce1 = v228_6_ce1_local;
assign v228_7_address0 = zext_ln45_16_fu_754_p1;
assign v228_7_address1 = zext_ln38_16_fu_700_p1;
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
assign v23_fu_1024_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v21_reg_1611);
assign v27_fu_987_p1 = v229_1_load_1_reg_1564;
assign v29_fu_1054_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v27_reg_1642);
assign v32_fu_991_p1 = v229_2_load_reg_1569;
assign v34_fu_1060_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v32_reg_1648);
assign v38_fu_995_p1 = v229_2_load_1_reg_1574;
assign v40_fu_1066_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v38_reg_1654);
assign v43_fu_999_p1 = v229_3_load_reg_1579;
assign v45_fu_1084_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v43_reg_1670);
assign v49_fu_1003_p1 = v229_3_load_1_reg_1584;
assign v51_fu_1090_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v49_reg_1676);
assign v54_fu_1007_p1 = reg_640;
assign v56_fu_1096_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v54_reg_1682);
assign v60_fu_1030_p1 = reg_644;
assign v62_fu_1114_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v60_reg_1718);
assign v65_fu_1035_p1 = reg_648;
assign v67_fu_1120_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v65_reg_1724);
assign v71_fu_1040_p1 = v229_1_load_3_reg_1617;
assign v73_fu_1126_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v71_reg_1730);
assign v76_fu_1072_p1 = v229_2_load_2_reg_1622;
assign v78_fu_1132_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v76_reg_1766);
assign v82_fu_1076_p1 = v229_2_load_3_reg_1627;
assign v84_fu_1138_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4199_p_dout0 : v82_reg_1772);
assign v87_fu_1080_p1 = v229_3_load_2_reg_1632;
assign v89_fu_1144_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4207_p_dout0 : v87_reg_1778);
assign v8_fu_968_p1 = reg_640;
assign v93_fu_1102_p1 = v229_3_load_3_reg_1637;
assign v95_fu_1150_p3 = ((cmp11[0:0] == 1'b1) ? grp_fu_4191_p_dout0 : v93_reg_1814);
assign v98_fu_1106_p1 = v229_0_load_4_reg_1660;
assign zext_ln140_fu_964_p1 = add_ln140_reg_1505;
assign zext_ln147_fu_973_p1 = add_ln147_reg_1537;
assign zext_ln34_fu_718_p1 = add_ln34_fu_712_p2;
assign zext_ln38_15_fu_690_p1 = ap_sig_allocacmp_v7_5;
assign zext_ln38_16_fu_700_p1 = add_ln38_fu_694_p2;
assign zext_ln38_fu_780_p1 = v7_5_reg_1363;
assign zext_ln42_fu_772_p1 = add_ln42_fu_766_p2;
assign zext_ln45_15_fu_744_p1 = or_ln_fu_736_p3;
assign zext_ln45_16_fu_754_p1 = add_ln45_fu_748_p2;
assign zext_ln45_fu_872_p1 = or_ln_reg_1434;
assign zext_ln88_fu_788_p1 = add_ln88_fu_783_p2;
assign zext_ln95_fu_880_p1 = add_ln95_fu_875_p2;
always @ (posedge ap_clk) begin
    v229_0_addr_1_reg_1413[13] <= 1'b0;
    v229_0_addr_1_reg_1413_pp0_iter1_reg[13] <= 1'b0;
    v229_0_addr_1_reg_1413_pp0_iter2_reg[13] <= 1'b0;
    v229_1_addr_1_reg_1418[13] <= 1'b0;
    v229_1_addr_1_reg_1418_pp0_iter1_reg[13] <= 1'b0;
    v229_1_addr_1_reg_1418_pp0_iter2_reg[13] <= 1'b0;
    v229_2_addr_1_reg_1423[13] <= 1'b0;
    v229_2_addr_1_reg_1423_pp0_iter1_reg[13] <= 1'b0;
    v229_2_addr_1_reg_1423_pp0_iter2_reg[13] <= 1'b0;
    v229_3_addr_1_reg_1428[13] <= 1'b0;
    v229_3_addr_1_reg_1428_pp0_iter1_reg[13] <= 1'b0;
    v229_3_addr_1_reg_1428_pp0_iter2_reg[13] <= 1'b0;
    or_ln_reg_1434[0] <= 1'b1;
    v229_0_addr_2_reg_1479[13] <= 1'b0;
    v229_0_addr_2_reg_1479_pp0_iter1_reg[13] <= 1'b0;
    v229_0_addr_2_reg_1479_pp0_iter2_reg[13] <= 1'b0;
    v229_1_addr_2_reg_1484[13] <= 1'b0;
    v229_1_addr_2_reg_1484_pp0_iter1_reg[13] <= 1'b0;
    v229_1_addr_2_reg_1484_pp0_iter2_reg[13] <= 1'b0;
    v229_2_addr_2_reg_1489[13] <= 1'b0;
    v229_2_addr_2_reg_1489_pp0_iter1_reg[13] <= 1'b0;
    v229_2_addr_2_reg_1489_pp0_iter2_reg[13] <= 1'b0;
    v229_3_addr_2_reg_1494[13] <= 1'b0;
    v229_3_addr_2_reg_1494_pp0_iter1_reg[13] <= 1'b0;
    v229_3_addr_2_reg_1494_pp0_iter2_reg[13] <= 1'b0;
end
endmodule 
