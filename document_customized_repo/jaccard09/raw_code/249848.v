module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v0_3_address0,v0_3_ce0,v0_3_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_q0,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_q0,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_q0,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_q0,grp_fu_451_p_din0,grp_fu_451_p_din1,grp_fu_451_p_opcode,grp_fu_451_p_dout0,grp_fu_451_p_ce,grp_fu_455_p_din0,grp_fu_455_p_din1,grp_fu_455_p_opcode,grp_fu_455_p_dout0,grp_fu_455_p_ce,grp_fu_459_p_din0,grp_fu_459_p_din1,grp_fu_459_p_dout0,grp_fu_459_p_ce,grp_fu_463_p_din0,grp_fu_463_p_din1,grp_fu_463_p_dout0,grp_fu_463_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [3:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [3:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
output  [3:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [10:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [10:0] v113_0_address1;
output   v113_0_ce1;
input  [31:0] v113_0_q1;
output  [10:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [10:0] v113_1_address1;
output   v113_1_ce1;
input  [31:0] v113_1_q1;
output  [2:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [2:0] v116_0_address1;
output   v116_0_ce1;
output   v116_0_we1;
output  [31:0] v116_0_d1;
input  [31:0] v116_0_q1;
output  [2:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [2:0] v116_1_address1;
output   v116_1_ce1;
output   v116_1_we1;
output  [31:0] v116_1_d1;
input  [31:0] v116_1_q1;
output  [2:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [2:0] v116_2_address1;
output   v116_2_ce1;
output   v116_2_we1;
output  [31:0] v116_2_d1;
input  [31:0] v116_2_q1;
output  [2:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [2:0] v116_3_address1;
output   v116_3_ce1;
output   v116_3_we1;
output  [31:0] v116_3_d1;
input  [31:0] v116_3_q1;
output  [2:0] v116_4_address0;
output   v116_4_ce0;
output   v116_4_we0;
output  [31:0] v116_4_d0;
input  [31:0] v116_4_q0;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
input  [31:0] v116_5_q0;
output  [2:0] v116_6_address0;
output   v116_6_ce0;
output   v116_6_we0;
output  [31:0] v116_6_d0;
input  [31:0] v116_6_q0;
output  [2:0] v116_7_address0;
output   v116_7_ce0;
output   v116_7_we0;
output  [31:0] v116_7_d0;
input  [31:0] v116_7_q0;
output  [31:0] grp_fu_451_p_din0;
output  [31:0] grp_fu_451_p_din1;
output  [1:0] grp_fu_451_p_opcode;
input  [31:0] grp_fu_451_p_dout0;
output   grp_fu_451_p_ce;
output  [31:0] grp_fu_455_p_din0;
output  [31:0] grp_fu_455_p_din1;
output  [1:0] grp_fu_455_p_opcode;
input  [31:0] grp_fu_455_p_dout0;
output   grp_fu_455_p_ce;
output  [31:0] grp_fu_459_p_din0;
output  [31:0] grp_fu_459_p_din1;
input  [31:0] grp_fu_459_p_dout0;
output   grp_fu_459_p_ce;
output  [31:0] grp_fu_463_p_din0;
output  [31:0] grp_fu_463_p_din1;
input  [31:0] grp_fu_463_p_dout0;
output   grp_fu_463_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln27_reg_1194;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_544;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_548;
reg   [31:0] reg_552;
reg   [31:0] reg_556;
reg   [31:0] reg_560;
reg   [31:0] reg_564;
wire   [31:0] grp_fu_520_p2;
reg   [31:0] reg_568;
wire   [31:0] grp_fu_524_p2;
reg   [31:0] reg_572;
wire   [0:0] icmp_ln27_fu_594_p2;
reg   [0:0] icmp_ln27_reg_1194_pp0_iter1_reg;
reg   [0:0] icmp_ln27_reg_1194_pp0_iter2_reg;
reg   [0:0] icmp_ln27_reg_1194_pp0_iter3_reg;
reg   [6:0] v49_load_reg_1198;
wire   [0:0] tmp_20_fu_618_p3;
reg   [0:0] tmp_20_reg_1203;
wire   [5:0] trunc_ln27_fu_634_p1;
reg   [5:0] trunc_ln27_reg_1208;
wire   [1:0] trunc_ln27_1_fu_638_p1;
reg   [1:0] trunc_ln27_1_reg_1220;
wire   [6:0] select_ln26_fu_670_p3;
reg   [6:0] select_ln26_reg_1245;
wire   [31:0] v6_fu_676_p11;
reg   [31:0] v6_reg_1251;
reg   [2:0] lshr_ln29_1_reg_1266;
reg   [0:0] tmp_21_reg_1283;
reg   [1:0] tmp_64_reg_1289;
reg   [1:0] tmp_65_reg_1298;
reg   [0:0] tmp_22_reg_1303;
wire   [31:0] v3_fu_801_p3;
reg   [31:0] v3_reg_1308;
wire   [31:0] v10_fu_842_p1;
wire   [31:0] v16_fu_847_p1;
wire   [31:0] v22_fu_852_p1;
wire   [31:0] v28_fu_857_p1;
reg   [2:0] v116_0_addr_reg_1376;
reg   [2:0] v116_0_addr_reg_1376_pp0_iter2_reg;
reg   [2:0] v116_0_addr_reg_1376_pp0_iter3_reg;
wire   [31:0] v34_fu_915_p1;
wire   [31:0] v40_fu_920_p1;
wire   [31:0] v46_fu_925_p1;
wire   [31:0] v52_fu_930_p1;
reg   [2:0] v116_1_addr_reg_1421;
reg   [2:0] v116_1_addr_reg_1421_pp0_iter2_reg;
reg   [2:0] v116_1_addr_reg_1421_pp0_iter3_reg;
reg   [2:0] v116_2_addr_reg_1426;
reg   [2:0] v116_2_addr_reg_1426_pp0_iter2_reg;
reg   [2:0] v116_2_addr_reg_1426_pp0_iter3_reg;
reg   [2:0] v116_3_addr_reg_1431;
reg   [2:0] v116_3_addr_reg_1431_pp0_iter2_reg;
reg   [2:0] v116_3_addr_reg_1431_pp0_iter3_reg;
reg   [2:0] v116_4_addr_reg_1436;
reg   [2:0] v116_4_addr_reg_1436_pp0_iter2_reg;
reg   [2:0] v116_4_addr_reg_1436_pp0_iter3_reg;
reg   [2:0] v116_5_addr_reg_1441;
reg   [2:0] v116_5_addr_reg_1441_pp0_iter2_reg;
reg   [2:0] v116_5_addr_reg_1441_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_1446;
reg   [2:0] v116_6_addr_reg_1446_pp0_iter2_reg;
reg   [2:0] v116_6_addr_reg_1446_pp0_iter3_reg;
reg   [2:0] v116_7_addr_reg_1451;
reg   [2:0] v116_7_addr_reg_1451_pp0_iter2_reg;
reg   [2:0] v116_7_addr_reg_1451_pp0_iter3_reg;
reg   [31:0] v116_0_load_reg_1456;
wire   [31:0] v10_1_fu_983_p1;
wire   [31:0] v16_1_fu_988_p1;
wire   [31:0] v22_1_fu_993_p1;
wire   [31:0] v28_1_fu_998_p1;
reg   [31:0] v116_1_load_reg_1481;
reg   [31:0] v116_2_load_reg_1486;
reg   [31:0] v116_3_load_reg_1491;
reg   [31:0] v116_4_load_reg_1496;
reg   [31:0] v116_5_load_reg_1501;
reg   [31:0] v116_6_load_reg_1506;
reg   [31:0] v116_7_load_reg_1511;
reg   [2:0] v116_0_addr_1_reg_1516;
reg   [2:0] v116_0_addr_1_reg_1516_pp0_iter2_reg;
reg   [2:0] v116_0_addr_1_reg_1516_pp0_iter3_reg;
reg   [2:0] v116_1_addr_1_reg_1521;
reg   [2:0] v116_1_addr_1_reg_1521_pp0_iter2_reg;
reg   [2:0] v116_1_addr_1_reg_1521_pp0_iter3_reg;
reg   [2:0] v116_2_addr_1_reg_1526;
reg   [2:0] v116_2_addr_1_reg_1526_pp0_iter2_reg;
reg   [2:0] v116_2_addr_1_reg_1526_pp0_iter3_reg;
reg   [2:0] v116_3_addr_1_reg_1531;
reg   [2:0] v116_3_addr_1_reg_1531_pp0_iter2_reg;
reg   [2:0] v116_3_addr_1_reg_1531_pp0_iter3_reg;
reg   [2:0] v116_4_addr_1_reg_1536;
reg   [2:0] v116_4_addr_1_reg_1536_pp0_iter2_reg;
reg   [2:0] v116_4_addr_1_reg_1536_pp0_iter3_reg;
reg   [2:0] v116_5_addr_1_reg_1541;
reg   [2:0] v116_5_addr_1_reg_1541_pp0_iter2_reg;
reg   [2:0] v116_5_addr_1_reg_1541_pp0_iter3_reg;
reg   [2:0] v116_6_addr_1_reg_1546;
reg   [2:0] v116_6_addr_1_reg_1546_pp0_iter2_reg;
reg   [2:0] v116_6_addr_1_reg_1546_pp0_iter3_reg;
reg   [2:0] v116_7_addr_1_reg_1551;
reg   [2:0] v116_7_addr_1_reg_1551_pp0_iter2_reg;
reg   [2:0] v116_7_addr_1_reg_1551_pp0_iter3_reg;
reg   [31:0] v11_reg_1556;
reg   [31:0] v17_reg_1561;
wire   [31:0] grp_fu_536_p2;
reg   [31:0] v23_reg_1566;
wire   [31:0] grp_fu_540_p2;
reg   [31:0] v29_reg_1571;
wire   [31:0] v34_1_fu_1003_p1;
wire   [31:0] v40_1_fu_1008_p1;
wire   [31:0] v46_1_fu_1013_p1;
wire   [31:0] v52_1_fu_1018_p1;
reg   [31:0] v116_0_load_1_reg_1596;
reg   [31:0] v116_1_load_1_reg_1601;
reg   [31:0] v116_2_load_1_reg_1606;
reg   [31:0] v116_3_load_1_reg_1611;
wire   [31:0] v9_fu_1023_p1;
reg   [31:0] v35_reg_1621;
reg   [31:0] v41_reg_1626;
reg   [31:0] v47_reg_1631;
reg   [31:0] v53_reg_1636;
wire   [31:0] v15_fu_1027_p1;
wire   [31:0] v21_fu_1031_p1;
wire   [31:0] v27_2_fu_1035_p1;
reg   [31:0] v116_4_load_1_reg_1656;
reg   [31:0] v116_5_load_1_reg_1661;
reg   [31:0] v116_6_load_1_reg_1666;
reg   [31:0] v116_7_load_1_reg_1671;
reg   [31:0] v11_1_reg_1676;
reg   [31:0] v17_1_reg_1681;
reg   [31:0] v23_1_reg_1686;
reg   [31:0] v29_1_reg_1691;
wire   [31:0] v33_fu_1039_p1;
wire   [31:0] v39_fu_1043_p1;
wire   [31:0] v45_fu_1047_p1;
wire   [31:0] v51_fu_1051_p1;
reg   [31:0] v35_1_reg_1716;
reg   [31:0] v41_1_reg_1721;
reg   [31:0] v47_1_reg_1726;
reg   [31:0] v53_1_reg_1731;
wire   [31:0] v9_2_fu_1055_p1;
wire   [31:0] v15_2_fu_1059_p1;
wire   [31:0] v21_2_fu_1063_p1;
wire   [31:0] v27_fu_1067_p1;
wire   [31:0] v33_2_fu_1071_p1;
wire   [31:0] v39_2_fu_1075_p1;
wire   [31:0] v45_2_fu_1079_p1;
wire   [31:0] v51_2_fu_1083_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln26_fu_652_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln33_fu_716_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln47_fu_751_p1;
wire   [63:0] zext_ln61_fu_817_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln75_fu_831_p1;
wire   [63:0] zext_ln33_1_fu_871_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln47_1_fu_888_p1;
wire   [63:0] zext_ln29_fu_904_p1;
wire   [63:0] zext_ln61_1_fu_944_p1;
wire   [63:0] zext_ln75_1_fu_958_p1;
wire   [63:0] zext_ln26_1_fu_971_p1;
reg   [31:0] v3_1_fu_118;
reg   [6:0] v49_fu_122;
wire   [6:0] add_ln28_fu_894_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_load;
reg   [6:0] v4_fu_126;
wire   [6:0] select_ln27_fu_626_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [8:0] indvar_flatten_fu_130;
wire   [8:0] add_ln27_1_fu_600_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v0_0_ce0_local;
reg    v0_1_ce0_local;
reg    v0_2_ce0_local;
reg    v0_3_ce0_local;
reg    v113_0_ce1_local;
reg   [10:0] v113_0_address1_local;
reg    v113_0_ce0_local;
reg   [10:0] v113_0_address0_local;
reg    v113_1_ce1_local;
reg   [10:0] v113_1_address1_local;
reg    v113_1_ce0_local;
reg   [10:0] v113_1_address0_local;
reg    v116_0_ce1_local;
reg   [2:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [2:0] v116_0_address0_local;
reg    v116_0_we1_local;
wire   [31:0] bitcast_ln36_fu_1087_p1;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln36_1_fu_1127_p1;
reg    v116_1_ce1_local;
reg   [2:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [2:0] v116_1_address0_local;
reg    v116_1_we1_local;
wire   [31:0] bitcast_ln43_fu_1092_p1;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_1_fu_1132_p1;
reg    v116_2_ce1_local;
reg   [2:0] v116_2_address1_local;
reg    v116_2_ce0_local;
reg   [2:0] v116_2_address0_local;
reg    v116_2_we1_local;
wire   [31:0] bitcast_ln50_fu_1097_p1;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_1_fu_1137_p1;
reg    v116_3_ce1_local;
reg   [2:0] v116_3_address1_local;
reg    v116_3_ce0_local;
reg   [2:0] v116_3_address0_local;
reg    v116_3_we1_local;
wire   [31:0] bitcast_ln57_fu_1102_p1;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_1_fu_1142_p1;
reg    v116_4_ce0_local;
reg   [2:0] v116_4_address0_local;
reg    v116_4_we0_local;
reg   [31:0] v116_4_d0_local;
wire   [31:0] bitcast_ln64_fu_1107_p1;
wire   [31:0] bitcast_ln64_1_fu_1147_p1;
reg    v116_5_ce0_local;
reg   [2:0] v116_5_address0_local;
reg    v116_5_we0_local;
reg   [31:0] v116_5_d0_local;
wire   [31:0] bitcast_ln71_fu_1112_p1;
wire   [31:0] bitcast_ln71_1_fu_1152_p1;
reg    v116_6_ce0_local;
reg   [2:0] v116_6_address0_local;
reg    v116_6_we0_local;
reg   [31:0] v116_6_d0_local;
wire   [31:0] bitcast_ln78_fu_1117_p1;
wire   [31:0] bitcast_ln78_1_fu_1157_p1;
reg    v116_7_ce0_local;
reg   [2:0] v116_7_address0_local;
reg    v116_7_we0_local;
reg   [31:0] v116_7_d0_local;
wire   [31:0] bitcast_ln86_fu_1122_p1;
wire   [31:0] bitcast_ln86_1_fu_1162_p1;
reg   [31:0] grp_fu_512_p0;
reg   [31:0] grp_fu_512_p1;
reg   [31:0] grp_fu_516_p0;
reg   [31:0] grp_fu_516_p1;
reg   [31:0] grp_fu_520_p0;
reg   [31:0] grp_fu_520_p1;
reg   [31:0] grp_fu_524_p0;
reg   [31:0] grp_fu_524_p1;
reg   [31:0] grp_fu_528_p0;
reg   [31:0] grp_fu_532_p0;
reg   [31:0] grp_fu_536_p0;
reg   [31:0] grp_fu_540_p0;
wire   [6:0] add_ln27_fu_612_p2;
wire   [3:0] lshr_ln_fu_642_p4;
wire   [31:0] v6_fu_676_p9;
wire   [4:0] lshr_ln2_fu_699_p4;
wire   [10:0] tmp_fu_709_p3;
wire   [3:0] tmp_s_fu_732_p4;
wire   [10:0] tmp_61_fu_742_p4;
wire   [0:0] icmp_ln31_fu_796_p2;
wire   [10:0] tmp_62_fu_808_p5;
wire   [10:0] tmp_63_fu_823_p4;
wire   [10:0] tmp_66_fu_862_p5;
wire   [10:0] tmp_67_fu_877_p6;
wire   [10:0] tmp_68_fu_935_p5;
wire   [10:0] tmp_69_fu_950_p4;
wire   [2:0] or_ln26_1_fu_964_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage1;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire   [1:0] v6_fu_676_p1;
wire   [1:0] v6_fu_676_p3;
wire  signed [1:0] v6_fu_676_p5;
wire  signed [1:0] v6_fu_676_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_1_fu_118 = 32'd0;
#0 v49_fu_122 = 7'd0;
#0 v4_fu_126 = 7'd0;
#0 indvar_flatten_fu_130 = 9'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U68(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_520_p0),.din1(grp_fu_520_p1),.ce(1'b1),.dout(grp_fu_520_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U69(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_524_p0),.din1(grp_fu_524_p1),.ce(1'b1),.dout(grp_fu_524_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U72(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_536_p0),.din1(v3_reg_1308),.ce(1'b1),.dout(grp_fu_536_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U73(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_540_p0),.din1(v3_reg_1308),.ce(1'b1),.dout(grp_fu_540_p2));
(* dissolve_hierarchy = "yes" *) atax_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U74(.din0(v0_0_q0),.din1(v0_1_q0),.din2(v0_2_q0),.din3(v0_3_q0),.def(v6_fu_676_p9),.sel(trunc_ln27_1_reg_1220),.dout(v6_fu_676_p11));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_594_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_130 <= add_ln27_1_fu_600_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_130 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_122 <= 7'd0;
    end else if (((icmp_ln27_reg_1194 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v49_fu_122 <= add_ln28_fu_894_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_594_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v4_fu_126 <= select_ln27_fu_626_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_126 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_1194 <= icmp_ln27_fu_594_p2;
        icmp_ln27_reg_1194_pp0_iter1_reg <= icmp_ln27_reg_1194;
        icmp_ln27_reg_1194_pp0_iter2_reg <= icmp_ln27_reg_1194_pp0_iter1_reg;
        icmp_ln27_reg_1194_pp0_iter3_reg <= icmp_ln27_reg_1194_pp0_iter2_reg;
        tmp_20_reg_1203 <= ap_sig_allocacmp_v49_load[32'd6];
        trunc_ln27_1_reg_1220 <= trunc_ln27_1_fu_638_p1;
        trunc_ln27_reg_1208 <= trunc_ln27_fu_634_p1;
        v116_0_addr_reg_1376 <= zext_ln29_fu_904_p1;
        v116_0_addr_reg_1376_pp0_iter2_reg <= v116_0_addr_reg_1376;
        v116_0_addr_reg_1376_pp0_iter3_reg <= v116_0_addr_reg_1376_pp0_iter2_reg;
        v116_1_addr_reg_1421 <= zext_ln29_fu_904_p1;
        v116_1_addr_reg_1421_pp0_iter2_reg <= v116_1_addr_reg_1421;
        v116_1_addr_reg_1421_pp0_iter3_reg <= v116_1_addr_reg_1421_pp0_iter2_reg;
        v116_2_addr_reg_1426 <= zext_ln29_fu_904_p1;
        v116_2_addr_reg_1426_pp0_iter2_reg <= v116_2_addr_reg_1426;
        v116_2_addr_reg_1426_pp0_iter3_reg <= v116_2_addr_reg_1426_pp0_iter2_reg;
        v116_3_addr_reg_1431 <= zext_ln29_fu_904_p1;
        v116_3_addr_reg_1431_pp0_iter2_reg <= v116_3_addr_reg_1431;
        v116_3_addr_reg_1431_pp0_iter3_reg <= v116_3_addr_reg_1431_pp0_iter2_reg;
        v116_4_addr_reg_1436 <= zext_ln29_fu_904_p1;
        v116_4_addr_reg_1436_pp0_iter2_reg <= v116_4_addr_reg_1436;
        v116_4_addr_reg_1436_pp0_iter3_reg <= v116_4_addr_reg_1436_pp0_iter2_reg;
        v116_5_addr_reg_1441 <= zext_ln29_fu_904_p1;
        v116_5_addr_reg_1441_pp0_iter2_reg <= v116_5_addr_reg_1441;
        v116_5_addr_reg_1441_pp0_iter3_reg <= v116_5_addr_reg_1441_pp0_iter2_reg;
        v116_6_addr_reg_1446 <= zext_ln29_fu_904_p1;
        v116_6_addr_reg_1446_pp0_iter2_reg <= v116_6_addr_reg_1446;
        v116_6_addr_reg_1446_pp0_iter3_reg <= v116_6_addr_reg_1446_pp0_iter2_reg;
        v116_7_addr_reg_1451 <= zext_ln29_fu_904_p1;
        v116_7_addr_reg_1451_pp0_iter2_reg <= v116_7_addr_reg_1451;
        v116_7_addr_reg_1451_pp0_iter3_reg <= v116_7_addr_reg_1451_pp0_iter2_reg;
        v49_load_reg_1198 <= ap_sig_allocacmp_v49_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln29_1_reg_1266 <= {{select_ln26_fu_670_p3[5:3]}};
        select_ln26_reg_1245 <= select_ln26_fu_670_p3;
        tmp_21_reg_1283 <= select_ln26_fu_670_p3[32'd1];
        tmp_22_reg_1303 <= select_ln26_fu_670_p3[32'd2];
        tmp_64_reg_1289 <= {{select_ln26_fu_670_p3[5:4]}};
        tmp_65_reg_1298 <= {{select_ln26_fu_670_p3[2:1]}};
        v116_0_addr_1_reg_1516[2 : 1] <= zext_ln26_1_fu_971_p1[2 : 1];
        v116_0_addr_1_reg_1516_pp0_iter2_reg[2 : 1] <= v116_0_addr_1_reg_1516[2 : 1];
        v116_0_addr_1_reg_1516_pp0_iter3_reg[2 : 1] <= v116_0_addr_1_reg_1516_pp0_iter2_reg[2 : 1];
        v116_1_addr_1_reg_1521[2 : 1] <= zext_ln26_1_fu_971_p1[2 : 1];
        v116_1_addr_1_reg_1521_pp0_iter2_reg[2 : 1] <= v116_1_addr_1_reg_1521[2 : 1];
        v116_1_addr_1_reg_1521_pp0_iter3_reg[2 : 1] <= v116_1_addr_1_reg_1521_pp0_iter2_reg[2 : 1];
        v116_2_addr_1_reg_1526[2 : 1] <= zext_ln26_1_fu_971_p1[2 : 1];
        v116_2_addr_1_reg_1526_pp0_iter2_reg[2 : 1] <= v116_2_addr_1_reg_1526[2 : 1];
        v116_2_addr_1_reg_1526_pp0_iter3_reg[2 : 1] <= v116_2_addr_1_reg_1526_pp0_iter2_reg[2 : 1];
        v116_3_addr_1_reg_1531[2 : 1] <= zext_ln26_1_fu_971_p1[2 : 1];
        v116_3_addr_1_reg_1531_pp0_iter2_reg[2 : 1] <= v116_3_addr_1_reg_1531[2 : 1];
        v116_3_addr_1_reg_1531_pp0_iter3_reg[2 : 1] <= v116_3_addr_1_reg_1531_pp0_iter2_reg[2 : 1];
        v116_4_addr_1_reg_1536[2 : 1] <= zext_ln26_1_fu_971_p1[2 : 1];
        v116_4_addr_1_reg_1536_pp0_iter2_reg[2 : 1] <= v116_4_addr_1_reg_1536[2 : 1];
        v116_4_addr_1_reg_1536_pp0_iter3_reg[2 : 1] <= v116_4_addr_1_reg_1536_pp0_iter2_reg[2 : 1];
        v116_5_addr_1_reg_1541[2 : 1] <= zext_ln26_1_fu_971_p1[2 : 1];
        v116_5_addr_1_reg_1541_pp0_iter2_reg[2 : 1] <= v116_5_addr_1_reg_1541[2 : 1];
        v116_5_addr_1_reg_1541_pp0_iter3_reg[2 : 1] <= v116_5_addr_1_reg_1541_pp0_iter2_reg[2 : 1];
        v116_6_addr_1_reg_1546[2 : 1] <= zext_ln26_1_fu_971_p1[2 : 1];
        v116_6_addr_1_reg_1546_pp0_iter2_reg[2 : 1] <= v116_6_addr_1_reg_1546[2 : 1];
        v116_6_addr_1_reg_1546_pp0_iter3_reg[2 : 1] <= v116_6_addr_1_reg_1546_pp0_iter2_reg[2 : 1];
        v116_7_addr_1_reg_1551[2 : 1] <= zext_ln26_1_fu_971_p1[2 : 1];
        v116_7_addr_1_reg_1551_pp0_iter2_reg[2 : 1] <= v116_7_addr_1_reg_1551[2 : 1];
        v116_7_addr_1_reg_1551_pp0_iter3_reg[2 : 1] <= v116_7_addr_1_reg_1551_pp0_iter2_reg[2 : 1];
        v6_reg_1251 <= v6_fu_676_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_544 <= v113_0_q1;
        reg_548 <= v113_1_q1;
        reg_552 <= v113_0_q0;
        reg_556 <= v113_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_560 <= grp_fu_451_p_dout0;
        reg_564 <= grp_fu_455_p_dout0;
        reg_568 <= grp_fu_520_p2;
        reg_572 <= grp_fu_524_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_1_reg_1596 <= v116_0_q0;
        v116_1_load_1_reg_1601 <= v116_1_q0;
        v116_2_load_1_reg_1606 <= v116_2_q0;
        v116_3_load_1_reg_1611 <= v116_3_q0;
        v11_reg_1556 <= grp_fu_459_p_dout0;
        v17_reg_1561 <= grp_fu_463_p_dout0;
        v23_reg_1566 <= grp_fu_536_p2;
        v29_reg_1571 <= grp_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_1456 <= v116_0_q1;
        v116_1_load_reg_1481 <= v116_1_q1;
        v116_2_load_reg_1486 <= v116_2_q1;
        v116_3_load_reg_1491 <= v116_3_q1;
        v116_4_load_reg_1496 <= v116_4_q0;
        v116_5_load_reg_1501 <= v116_5_q0;
        v116_6_load_reg_1506 <= v116_6_q0;
        v116_7_load_reg_1511 <= v116_7_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_4_load_1_reg_1656 <= v116_4_q0;
        v116_5_load_1_reg_1661 <= v116_5_q0;
        v116_6_load_1_reg_1666 <= v116_6_q0;
        v116_7_load_1_reg_1671 <= v116_7_q0;
        v35_reg_1621 <= grp_fu_459_p_dout0;
        v41_reg_1626 <= grp_fu_463_p_dout0;
        v47_reg_1631 <= grp_fu_536_p2;
        v53_reg_1636 <= grp_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v11_1_reg_1676 <= grp_fu_459_p_dout0;
        v17_1_reg_1681 <= grp_fu_463_p_dout0;
        v23_1_reg_1686 <= grp_fu_536_p2;
        v29_1_reg_1691 <= grp_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v35_1_reg_1716 <= grp_fu_459_p_dout0;
        v41_1_reg_1721 <= grp_fu_463_p_dout0;
        v47_1_reg_1726 <= grp_fu_536_p2;
        v53_1_reg_1731 <= grp_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_1194 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_fu_118 <= v3_fu_801_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_reg_1308 <= v3_fu_801_p3;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_1194 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln27_reg_1194_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_130;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_load = v49_fu_122;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_512_p0 = v33_2_fu_1071_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_512_p0 = v9_2_fu_1055_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_512_p0 = v33_fu_1039_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_512_p0 = v9_fu_1023_p1;
    end else begin
        grp_fu_512_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_512_p1 = v35_1_reg_1716;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_512_p1 = v11_1_reg_1676;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_512_p1 = v35_reg_1621;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_512_p1 = v11_reg_1556;
    end else begin
        grp_fu_512_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_516_p0 = v39_2_fu_1075_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_516_p0 = v15_2_fu_1059_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_516_p0 = v39_fu_1043_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_516_p0 = v15_fu_1027_p1;
    end else begin
        grp_fu_516_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_516_p1 = v41_1_reg_1721;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_516_p1 = v17_1_reg_1681;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_516_p1 = v41_reg_1626;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_516_p1 = v17_reg_1561;
    end else begin
        grp_fu_516_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_520_p0 = v45_2_fu_1079_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_520_p0 = v21_2_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_520_p0 = v45_fu_1047_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_520_p0 = v21_fu_1031_p1;
    end else begin
        grp_fu_520_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_520_p1 = v47_1_reg_1726;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_520_p1 = v23_1_reg_1686;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_520_p1 = v47_reg_1631;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_520_p1 = v23_reg_1566;
    end else begin
        grp_fu_520_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_524_p0 = v51_2_fu_1083_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_524_p0 = v27_fu_1067_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_524_p0 = v51_fu_1051_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_524_p0 = v27_2_fu_1035_p1;
    end else begin
        grp_fu_524_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_524_p1 = v53_1_reg_1731;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_524_p1 = v29_1_reg_1691;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_524_p1 = v53_reg_1636;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_524_p1 = v29_reg_1571;
    end else begin
        grp_fu_524_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_528_p0 = v34_1_fu_1003_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_528_p0 = v10_1_fu_983_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_528_p0 = v34_fu_915_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_528_p0 = v10_fu_842_p1;
    end else begin
        grp_fu_528_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_532_p0 = v40_1_fu_1008_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_532_p0 = v16_1_fu_988_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_532_p0 = v40_fu_920_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_532_p0 = v16_fu_847_p1;
    end else begin
        grp_fu_532_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_536_p0 = v46_1_fu_1013_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_536_p0 = v22_1_fu_993_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_536_p0 = v46_fu_925_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_536_p0 = v22_fu_852_p1;
    end else begin
        grp_fu_536_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_540_p0 = v52_1_fu_1018_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_540_p0 = v28_1_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_540_p0 = v52_fu_930_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_540_p0 = v28_fu_857_p1;
    end else begin
        grp_fu_540_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_0_address0_local = zext_ln75_1_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_0_address0_local = zext_ln47_1_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_0_address0_local = zext_ln75_fu_831_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_address0_local = zext_ln47_fu_751_p1;
    end else begin
        v113_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_0_address1_local = zext_ln61_1_fu_944_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_0_address1_local = zext_ln33_1_fu_871_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_0_address1_local = zext_ln61_fu_817_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_address1_local = zext_ln33_fu_716_p1;
    end else begin
        v113_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_0_ce1_local = 1'b1;
    end else begin
        v113_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_1_address0_local = zext_ln75_1_fu_958_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_1_address0_local = zext_ln47_1_fu_888_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_1_address0_local = zext_ln75_fu_831_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_address0_local = zext_ln47_fu_751_p1;
    end else begin
        v113_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_1_address1_local = zext_ln61_1_fu_944_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_1_address1_local = zext_ln33_1_fu_871_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_1_address1_local = zext_ln61_fu_817_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_address1_local = zext_ln33_fu_716_p1;
    end else begin
        v113_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_1_ce1_local = 1'b1;
    end else begin
        v113_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = v116_0_addr_1_reg_1516_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln26_1_fu_971_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_1376_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_904_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = v116_1_addr_1_reg_1521_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln26_1_fu_971_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_1421_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_904_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = v116_2_addr_1_reg_1526_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address0_local = zext_ln26_1_fu_971_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_2_address1_local = v116_2_addr_reg_1426_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address1_local = zext_ln29_fu_904_p1;
    end else begin
        v116_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_2_ce1_local = 1'b1;
    end else begin
        v116_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_2_we1_local = 1'b1;
    end else begin
        v116_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = v116_3_addr_1_reg_1531_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address0_local = zext_ln26_1_fu_971_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_3_address1_local = v116_3_addr_reg_1431_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address1_local = zext_ln29_fu_904_p1;
    end else begin
        v116_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_3_ce1_local = 1'b1;
    end else begin
        v116_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_3_we1_local = 1'b1;
    end else begin
        v116_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_address0_local = v116_4_addr_1_reg_1536_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_4_address0_local = v116_4_addr_reg_1436_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_4_address0_local = v116_4_addr_1_reg_1536;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_address0_local = zext_ln29_fu_904_p1;
    end else begin
        v116_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_4_ce0_local = 1'b1;
    end else begin
        v116_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_d0_local = bitcast_ln64_1_fu_1147_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_4_d0_local = bitcast_ln64_fu_1107_p1;
    end else begin
        v116_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_4_we0_local = 1'b1;
    end else begin
        v116_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_5_address0_local = v116_5_addr_1_reg_1541_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_5_address0_local = v116_5_addr_reg_1441_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_5_address0_local = v116_5_addr_1_reg_1541;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_address0_local = zext_ln29_fu_904_p1;
    end else begin
        v116_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_5_ce0_local = 1'b1;
    end else begin
        v116_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_5_d0_local = bitcast_ln71_1_fu_1152_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_5_d0_local = bitcast_ln71_fu_1112_p1;
    end else begin
        v116_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_5_we0_local = 1'b1;
    end else begin
        v116_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_address0_local = v116_6_addr_1_reg_1546_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_6_address0_local = v116_6_addr_reg_1446_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_6_address0_local = v116_6_addr_1_reg_1546;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_address0_local = zext_ln29_fu_904_p1;
    end else begin
        v116_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_6_ce0_local = 1'b1;
    end else begin
        v116_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_d0_local = bitcast_ln78_1_fu_1157_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_6_d0_local = bitcast_ln78_fu_1117_p1;
    end else begin
        v116_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_6_we0_local = 1'b1;
    end else begin
        v116_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_7_address0_local = v116_7_addr_1_reg_1551_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_7_address0_local = v116_7_addr_reg_1451_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_7_address0_local = v116_7_addr_1_reg_1551;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_address0_local = zext_ln29_fu_904_p1;
    end else begin
        v116_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_7_ce0_local = 1'b1;
    end else begin
        v116_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_7_d0_local = bitcast_ln86_1_fu_1162_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_7_d0_local = bitcast_ln86_fu_1122_p1;
    end else begin
        v116_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_7_we0_local = 1'b1;
    end else begin
        v116_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter3_stage1) & (ap_idle_pp0_0to2 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_1_fu_600_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);
assign add_ln27_fu_612_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_894_p2 = (select_ln26_reg_1245 + 7'd16);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_1_fu_1127_p1 = reg_560;
assign bitcast_ln36_fu_1087_p1 = reg_560;
assign bitcast_ln43_1_fu_1132_p1 = reg_564;
assign bitcast_ln43_fu_1092_p1 = reg_564;
assign bitcast_ln50_1_fu_1137_p1 = reg_568;
assign bitcast_ln50_fu_1097_p1 = reg_568;
assign bitcast_ln57_1_fu_1142_p1 = reg_572;
assign bitcast_ln57_fu_1102_p1 = reg_572;
assign bitcast_ln64_1_fu_1147_p1 = reg_560;
assign bitcast_ln64_fu_1107_p1 = reg_560;
assign bitcast_ln71_1_fu_1152_p1 = reg_564;
assign bitcast_ln71_fu_1112_p1 = reg_564;
assign bitcast_ln78_1_fu_1157_p1 = reg_568;
assign bitcast_ln78_fu_1117_p1 = reg_568;
assign bitcast_ln86_1_fu_1162_p1 = reg_572;
assign bitcast_ln86_fu_1122_p1 = reg_572;
assign grp_fu_451_p_ce = 1'b1;
assign grp_fu_451_p_din0 = grp_fu_512_p0;
assign grp_fu_451_p_din1 = grp_fu_512_p1;
assign grp_fu_451_p_opcode = 2'd0;
assign grp_fu_455_p_ce = 1'b1;
assign grp_fu_455_p_din0 = grp_fu_516_p0;
assign grp_fu_455_p_din1 = grp_fu_516_p1;
assign grp_fu_455_p_opcode = 2'd0;
assign grp_fu_459_p_ce = 1'b1;
assign grp_fu_459_p_din0 = grp_fu_528_p0;
assign grp_fu_459_p_din1 = v3_reg_1308;
assign grp_fu_463_p_ce = 1'b1;
assign grp_fu_463_p_din0 = grp_fu_532_p0;
assign grp_fu_463_p_din1 = v3_reg_1308;
assign icmp_ln27_fu_594_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_796_p2 = ((select_ln26_reg_1245 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_699_p4 = {{select_ln26_fu_670_p3[5:1]}};
assign lshr_ln_fu_642_p4 = {{select_ln27_fu_626_p3[5:2]}};
assign or_ln26_1_fu_964_p3 = {{tmp_64_reg_1289}, {1'd1}};
assign select_ln26_fu_670_p3 = ((tmp_20_reg_1203[0:0] == 1'b1) ? 7'd0 : v49_load_reg_1198);
assign select_ln27_fu_626_p3 = ((tmp_20_fu_618_p3[0:0] == 1'b1) ? add_ln27_fu_612_p2 : ap_sig_allocacmp_v4_load);
assign tmp_20_fu_618_p3 = ap_sig_allocacmp_v49_load[32'd6];
assign tmp_61_fu_742_p4 = {{{trunc_ln27_reg_1208}, {tmp_s_fu_732_p4}}, {1'd1}};
assign tmp_62_fu_808_p5 = {{{{trunc_ln27_reg_1208}, {lshr_ln29_1_reg_1266}}, {1'd1}}, {tmp_21_reg_1283}};
assign tmp_63_fu_823_p4 = {{{trunc_ln27_reg_1208}, {lshr_ln29_1_reg_1266}}, {2'd3}};
assign tmp_66_fu_862_p5 = {{{{trunc_ln27_reg_1208}, {tmp_64_reg_1289}}, {1'd1}}, {tmp_65_reg_1298}};
assign tmp_67_fu_877_p6 = {{{{{trunc_ln27_reg_1208}, {tmp_64_reg_1289}}, {1'd1}}, {tmp_22_reg_1303}}, {1'd1}};
assign tmp_68_fu_935_p5 = {{{{trunc_ln27_reg_1208}, {tmp_64_reg_1289}}, {2'd3}}, {tmp_21_reg_1283}};
assign tmp_69_fu_950_p4 = {{{trunc_ln27_reg_1208}, {tmp_64_reg_1289}}, {3'd7}};
assign tmp_fu_709_p3 = {{trunc_ln27_reg_1208}, {lshr_ln2_fu_699_p4}};
assign tmp_s_fu_732_p4 = {{select_ln26_fu_670_p3[5:2]}};
assign trunc_ln27_1_fu_638_p1 = select_ln27_fu_626_p3[1:0];
assign trunc_ln27_fu_634_p1 = select_ln27_fu_626_p3[5:0];
assign v0_0_address0 = zext_ln26_fu_652_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln26_fu_652_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = zext_ln26_fu_652_p1;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = zext_ln26_fu_652_p1;
assign v0_3_ce0 = v0_3_ce0_local;
assign v10_1_fu_983_p1 = reg_544;
assign v10_fu_842_p1 = reg_544;
assign v113_0_address0 = v113_0_address0_local;
assign v113_0_address1 = v113_0_address1_local;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_0_ce1 = v113_0_ce1_local;
assign v113_1_address0 = v113_1_address0_local;
assign v113_1_address1 = v113_1_address1_local;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_1_ce1 = v113_1_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln36_1_fu_1127_p1;
assign v116_0_d1 = bitcast_ln36_fu_1087_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln43_1_fu_1132_p1;
assign v116_1_d1 = bitcast_ln43_fu_1092_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_address1 = v116_2_address1_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln50_1_fu_1137_p1;
assign v116_2_d1 = bitcast_ln50_fu_1097_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_2_we1 = v116_2_we1_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_address1 = v116_3_address1_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln57_1_fu_1142_p1;
assign v116_3_d1 = bitcast_ln57_fu_1102_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_3_we1 = v116_3_we1_local;
assign v116_4_address0 = v116_4_address0_local;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_d0 = v116_4_d0_local;
assign v116_4_we0 = v116_4_we0_local;
assign v116_5_address0 = v116_5_address0_local;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_d0 = v116_5_d0_local;
assign v116_5_we0 = v116_5_we0_local;
assign v116_6_address0 = v116_6_address0_local;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_d0 = v116_6_d0_local;
assign v116_6_we0 = v116_6_we0_local;
assign v116_7_address0 = v116_7_address0_local;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_d0 = v116_7_d0_local;
assign v116_7_we0 = v116_7_we0_local;
assign v15_2_fu_1059_p1 = v116_1_load_1_reg_1601;
assign v15_fu_1027_p1 = v116_1_load_reg_1481;
assign v16_1_fu_988_p1 = reg_548;
assign v16_fu_847_p1 = reg_548;
assign v21_2_fu_1063_p1 = v116_2_load_1_reg_1606;
assign v21_fu_1031_p1 = v116_2_load_reg_1486;
assign v22_1_fu_993_p1 = reg_552;
assign v22_fu_852_p1 = reg_552;
assign v27_2_fu_1035_p1 = v116_3_load_reg_1491;
assign v27_fu_1067_p1 = v116_3_load_1_reg_1611;
assign v28_1_fu_998_p1 = reg_556;
assign v28_fu_857_p1 = reg_556;
assign v33_2_fu_1071_p1 = v116_4_load_1_reg_1656;
assign v33_fu_1039_p1 = v116_4_load_reg_1496;
assign v34_1_fu_1003_p1 = reg_544;
assign v34_fu_915_p1 = reg_544;
assign v39_2_fu_1075_p1 = v116_5_load_1_reg_1661;
assign v39_fu_1043_p1 = v116_5_load_reg_1501;
assign v3_fu_801_p3 = ((icmp_ln31_fu_796_p2[0:0] == 1'b1) ? v6_reg_1251 : v3_1_fu_118);
assign v40_1_fu_1008_p1 = reg_548;
assign v40_fu_920_p1 = reg_548;
assign v45_2_fu_1079_p1 = v116_6_load_1_reg_1666;
assign v45_fu_1047_p1 = v116_6_load_reg_1506;
assign v46_1_fu_1013_p1 = reg_552;
assign v46_fu_925_p1 = reg_552;
assign v51_2_fu_1083_p1 = v116_7_load_1_reg_1671;
assign v51_fu_1051_p1 = v116_7_load_reg_1511;
assign v52_1_fu_1018_p1 = reg_556;
assign v52_fu_930_p1 = reg_556;
assign v6_fu_676_p9 = 'bx;
assign v9_2_fu_1055_p1 = v116_0_load_1_reg_1596;
assign v9_fu_1023_p1 = v116_0_load_reg_1456;
assign zext_ln26_1_fu_971_p1 = or_ln26_1_fu_964_p3;
assign zext_ln26_fu_652_p1 = lshr_ln_fu_642_p4;
assign zext_ln29_fu_904_p1 = lshr_ln29_1_reg_1266;
assign zext_ln33_1_fu_871_p1 = tmp_66_fu_862_p5;
assign zext_ln33_fu_716_p1 = tmp_fu_709_p3;
assign zext_ln47_1_fu_888_p1 = tmp_67_fu_877_p6;
assign zext_ln47_fu_751_p1 = tmp_61_fu_742_p4;
assign zext_ln61_1_fu_944_p1 = tmp_68_fu_935_p5;
assign zext_ln61_fu_817_p1 = tmp_62_fu_808_p5;
assign zext_ln75_1_fu_958_p1 = tmp_69_fu_950_p4;
assign zext_ln75_fu_831_p1 = tmp_63_fu_823_p4;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_1516[0] <= 1'b1;
    v116_0_addr_1_reg_1516_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_1_reg_1516_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1521[0] <= 1'b1;
    v116_1_addr_1_reg_1521_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1521_pp0_iter3_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1526[0] <= 1'b1;
    v116_2_addr_1_reg_1526_pp0_iter2_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1526_pp0_iter3_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1531[0] <= 1'b1;
    v116_3_addr_1_reg_1531_pp0_iter2_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1531_pp0_iter3_reg[0] <= 1'b1;
    v116_4_addr_1_reg_1536[0] <= 1'b1;
    v116_4_addr_1_reg_1536_pp0_iter2_reg[0] <= 1'b1;
    v116_4_addr_1_reg_1536_pp0_iter3_reg[0] <= 1'b1;
    v116_5_addr_1_reg_1541[0] <= 1'b1;
    v116_5_addr_1_reg_1541_pp0_iter2_reg[0] <= 1'b1;
    v116_5_addr_1_reg_1541_pp0_iter3_reg[0] <= 1'b1;
    v116_6_addr_1_reg_1546[0] <= 1'b1;
    v116_6_addr_1_reg_1546_pp0_iter2_reg[0] <= 1'b1;
    v116_6_addr_1_reg_1546_pp0_iter3_reg[0] <= 1'b1;
    v116_7_addr_1_reg_1551[0] <= 1'b1;
    v116_7_addr_1_reg_1551_pp0_iter2_reg[0] <= 1'b1;
    v116_7_addr_1_reg_1551_pp0_iter3_reg[0] <= 1'b1;
end
endmodule 