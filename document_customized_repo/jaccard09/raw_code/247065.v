module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_address0,v0_ce0,v0_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_q0,v116_4_address1,v116_4_ce1,v116_4_we1,v116_4_d1,v116_4_q1,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_q0,v116_5_address1,v116_5_ce1,v116_5_we1,v116_5_d1,v116_5_q1,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_q0,v116_6_address1,v116_6_ce1,v116_6_we1,v116_6_d1,v116_6_q1,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_q0,v116_7_address1,v116_7_ce1,v116_7_we1,v116_7_d1,v116_7_q1,grp_fu_397_p_din0,grp_fu_397_p_din1,grp_fu_397_p_opcode,grp_fu_397_p_dout0,grp_fu_397_p_ce,grp_fu_401_p_din0,grp_fu_401_p_din1,grp_fu_401_p_opcode,grp_fu_401_p_dout0,grp_fu_401_p_ce,grp_fu_405_p_din0,grp_fu_405_p_din1,grp_fu_405_p_dout0,grp_fu_405_p_ce,grp_fu_409_p_din0,grp_fu_409_p_din1,grp_fu_409_p_dout0,grp_fu_409_p_ce); 
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
output  [5:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
output  [11:0] v113_address0;
output   v113_ce0;
input  [31:0] v113_q0;
output  [11:0] v113_address1;
output   v113_ce1;
input  [31:0] v113_q1;
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
output  [2:0] v116_4_address1;
output   v116_4_ce1;
output   v116_4_we1;
output  [31:0] v116_4_d1;
input  [31:0] v116_4_q1;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
input  [31:0] v116_5_q0;
output  [2:0] v116_5_address1;
output   v116_5_ce1;
output   v116_5_we1;
output  [31:0] v116_5_d1;
input  [31:0] v116_5_q1;
output  [2:0] v116_6_address0;
output   v116_6_ce0;
output   v116_6_we0;
output  [31:0] v116_6_d0;
input  [31:0] v116_6_q0;
output  [2:0] v116_6_address1;
output   v116_6_ce1;
output   v116_6_we1;
output  [31:0] v116_6_d1;
input  [31:0] v116_6_q1;
output  [2:0] v116_7_address0;
output   v116_7_ce0;
output   v116_7_we0;
output  [31:0] v116_7_d0;
input  [31:0] v116_7_q0;
output  [2:0] v116_7_address1;
output   v116_7_ce1;
output   v116_7_we1;
output  [31:0] v116_7_d1;
input  [31:0] v116_7_q1;
output  [31:0] grp_fu_397_p_din0;
output  [31:0] grp_fu_397_p_din1;
output  [1:0] grp_fu_397_p_opcode;
input  [31:0] grp_fu_397_p_dout0;
output   grp_fu_397_p_ce;
output  [31:0] grp_fu_401_p_din0;
output  [31:0] grp_fu_401_p_din1;
output  [1:0] grp_fu_401_p_opcode;
input  [31:0] grp_fu_401_p_dout0;
output   grp_fu_401_p_ce;
output  [31:0] grp_fu_405_p_din0;
output  [31:0] grp_fu_405_p_din1;
input  [31:0] grp_fu_405_p_dout0;
output   grp_fu_405_p_ce;
output  [31:0] grp_fu_409_p_din0;
output  [31:0] grp_fu_409_p_din1;
input  [31:0] grp_fu_409_p_dout0;
output   grp_fu_409_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln27_reg_1227;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_500;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_504;
reg   [31:0] reg_508;
reg   [31:0] reg_512;
wire   [0:0] icmp_ln27_fu_534_p2;
reg   [0:0] icmp_ln27_reg_1227_pp0_iter1_reg;
wire   [6:0] select_ln26_fu_566_p3;
reg   [6:0] select_ln26_reg_1231;
wire   [6:0] select_ln27_fu_574_p3;
reg   [6:0] select_ln27_reg_1238;
wire   [5:0] trunc_ln27_fu_582_p1;
reg   [5:0] trunc_ln27_reg_1243;
wire   [2:0] lshr_ln_fu_586_p4;
reg   [2:0] lshr_ln_reg_1263;
reg   [2:0] v116_0_addr_reg_1271;
reg   [2:0] v116_0_addr_reg_1271_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_1276;
reg   [3:0] tmp_3_reg_1281;
wire   [0:0] trunc_ln46_fu_628_p1;
reg   [0:0] trunc_ln46_reg_1287;
wire   [1:0] trunc_ln60_fu_632_p1;
reg   [1:0] trunc_ln60_reg_1295;
reg   [0:0] tmp_7_reg_1301;
reg   [1:0] tmp_11_reg_1307;
wire   [2:0] trunc_ln28_fu_654_p1;
reg   [2:0] trunc_ln28_reg_1320;
reg   [1:0] tmp_13_reg_1325;
reg   [0:0] tmp_15_reg_1330;
reg   [2:0] v116_1_addr_reg_1336;
reg   [2:0] v116_1_addr_reg_1336_pp0_iter1_reg;
reg   [2:0] v116_2_addr_reg_1341;
reg   [2:0] v116_2_addr_reg_1341_pp0_iter1_reg;
reg   [2:0] v116_3_addr_reg_1346;
reg   [2:0] v116_3_addr_reg_1346_pp0_iter1_reg;
reg   [2:0] v116_4_addr_reg_1351;
reg   [2:0] v116_4_addr_reg_1351_pp0_iter1_reg;
reg   [2:0] v116_4_addr_reg_1351_pp0_iter2_reg;
reg   [2:0] v116_5_addr_reg_1357;
reg   [2:0] v116_5_addr_reg_1357_pp0_iter1_reg;
reg   [2:0] v116_5_addr_reg_1357_pp0_iter2_reg;
reg   [2:0] v116_6_addr_reg_1363;
reg   [2:0] v116_6_addr_reg_1363_pp0_iter1_reg;
reg   [2:0] v116_6_addr_reg_1363_pp0_iter2_reg;
reg   [2:0] v116_7_addr_reg_1369;
reg   [2:0] v116_7_addr_reg_1369_pp0_iter1_reg;
reg   [2:0] v116_7_addr_reg_1369_pp0_iter2_reg;
reg   [31:0] v116_0_load_reg_1385;
reg   [31:0] v116_1_load_reg_1395;
reg   [31:0] v116_2_load_reg_1400;
reg   [31:0] v116_3_load_reg_1405;
reg   [31:0] v116_4_load_reg_1410;
reg   [31:0] v116_5_load_reg_1415;
wire   [31:0] v3_2_fu_732_p3;
reg   [31:0] v3_2_reg_1420;
wire   [31:0] v10_fu_772_p1;
wire   [31:0] v16_fu_777_p1;
wire   [31:0] v22_fu_812_p1;
wire   [31:0] v28_fu_817_p1;
wire   [31:0] v34_fu_849_p1;
wire   [31:0] v40_fu_854_p1;
reg   [31:0] v11_reg_1496;
reg   [31:0] v17_reg_1501;
wire   [31:0] v46_fu_889_p1;
wire   [31:0] v52_fu_894_p1;
wire   [31:0] v9_fu_932_p1;
reg   [31:0] v23_reg_1531;
reg   [31:0] v29_reg_1536;
wire   [31:0] v10_1_fu_936_p1;
wire   [31:0] v16_1_fu_941_p1;
wire   [31:0] v15_fu_976_p1;
reg   [31:0] v35_reg_1566;
reg   [31:0] v41_reg_1571;
wire   [31:0] v22_1_fu_1009_p1;
wire   [31:0] v28_1_fu_1014_p1;
wire   [31:0] v21_fu_1046_p1;
wire   [31:0] v27_fu_1050_p1;
reg   [2:0] v116_0_addr_1_reg_1606;
reg   [2:0] v116_0_addr_1_reg_1606_pp0_iter2_reg;
reg   [2:0] v116_1_addr_1_reg_1611;
reg   [2:0] v116_1_addr_1_reg_1611_pp0_iter2_reg;
reg   [2:0] v116_2_addr_1_reg_1616;
reg   [2:0] v116_2_addr_1_reg_1616_pp0_iter2_reg;
reg   [2:0] v116_3_addr_1_reg_1621;
reg   [2:0] v116_3_addr_1_reg_1621_pp0_iter2_reg;
reg   [2:0] v116_4_addr_1_reg_1626;
reg   [2:0] v116_4_addr_1_reg_1626_pp0_iter2_reg;
reg   [2:0] v116_5_addr_1_reg_1632;
reg   [2:0] v116_5_addr_1_reg_1632_pp0_iter2_reg;
reg   [2:0] v116_6_addr_1_reg_1638;
reg   [2:0] v116_6_addr_1_reg_1638_pp0_iter2_reg;
reg   [2:0] v116_7_addr_1_reg_1644;
reg   [2:0] v116_7_addr_1_reg_1644_pp0_iter2_reg;
reg   [31:0] v47_reg_1650;
reg   [31:0] v53_reg_1655;
wire   [31:0] v34_1_fu_1054_p1;
wire   [31:0] v40_1_fu_1059_p1;
wire   [31:0] v33_fu_1064_p1;
wire   [31:0] v39_fu_1068_p1;
reg   [31:0] v116_6_load_reg_1680;
reg   [31:0] v116_7_load_reg_1685;
reg   [31:0] v116_0_load_1_reg_1690;
reg   [31:0] v116_1_load_1_reg_1695;
reg   [31:0] v116_2_load_1_reg_1700;
reg   [31:0] v116_3_load_1_reg_1705;
reg   [31:0] v116_4_load_1_reg_1710;
reg   [31:0] v116_5_load_1_reg_1715;
reg   [31:0] v116_6_load_1_reg_1720;
reg   [31:0] v116_7_load_1_reg_1725;
reg   [31:0] v11_1_reg_1730;
reg   [31:0] v17_1_reg_1735;
wire   [31:0] v46_1_fu_1072_p1;
wire   [31:0] v52_1_fu_1077_p1;
wire   [31:0] v45_fu_1082_p1;
wire   [31:0] v51_fu_1086_p1;
reg   [31:0] v23_1_reg_1760;
reg   [31:0] v29_1_reg_1765;
wire   [31:0] v9_2_fu_1090_p1;
wire   [31:0] v15_2_fu_1094_p1;
reg   [31:0] v35_1_reg_1780;
reg   [31:0] v41_1_reg_1785;
wire   [31:0] v21_2_fu_1098_p1;
wire   [31:0] v27_2_fu_1102_p1;
reg   [31:0] v47_1_reg_1800;
reg   [31:0] v53_1_reg_1805;
wire   [31:0] v33_2_fu_1106_p1;
wire   [31:0] v39_2_fu_1110_p1;
wire   [31:0] v45_2_fu_1114_p1;
wire   [31:0] v51_2_fu_1118_p1;
reg   [31:0] v48_reg_1830;
reg   [31:0] v54_reg_1835;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage5_subdone;
wire   [63:0] zext_ln29_fu_596_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_686_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_2_fu_706_p1;
wire   [63:0] zext_ln40_fu_719_p1;
wire   [63:0] zext_ln47_fu_749_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_fu_762_p1;
wire   [63:0] zext_ln61_fu_791_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln68_fu_807_p1;
wire   [63:0] zext_ln75_fu_831_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln83_fu_844_p1;
wire   [63:0] zext_ln33_1_fu_868_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln40_1_fu_884_p1;
wire   [63:0] zext_ln47_1_fu_911_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln54_1_fu_927_p1;
wire   [63:0] zext_ln61_1_fu_955_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln68_1_fu_971_p1;
wire   [63:0] zext_ln75_1_fu_1028_p1;
wire   [63:0] zext_ln83_1_fu_1041_p1;
wire   [63:0] zext_ln26_fu_997_p1;
reg   [31:0] v3_fu_120;
reg   [6:0] v49_fu_124;
wire   [6:0] add_ln28_fu_980_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_load;
reg   [6:0] v4_fu_128;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [8:0] indvar_flatten_fu_132;
wire   [8:0] add_ln27_1_fu_540_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v116_0_ce1_local;
reg   [2:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [2:0] v116_0_address0_local;
reg    v116_0_we1_local;
wire   [31:0] bitcast_ln36_fu_1122_p1;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln36_1_fu_1160_p1;
reg    v116_1_ce1_local;
reg   [2:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [2:0] v116_1_address0_local;
reg    v116_1_we1_local;
wire   [31:0] bitcast_ln43_fu_1127_p1;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_1_fu_1165_p1;
reg    v116_2_ce1_local;
reg   [2:0] v116_2_address1_local;
reg    v116_2_ce0_local;
reg   [2:0] v116_2_address0_local;
reg    v116_2_we1_local;
wire   [31:0] bitcast_ln50_fu_1132_p1;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_1_fu_1170_p1;
reg    v116_3_ce1_local;
reg   [2:0] v116_3_address1_local;
reg    v116_3_ce0_local;
reg   [2:0] v116_3_address0_local;
reg    v116_3_we1_local;
wire   [31:0] bitcast_ln57_fu_1137_p1;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_1_fu_1175_p1;
reg    v116_4_ce1_local;
reg   [2:0] v116_4_address1_local;
reg    v116_4_ce0_local;
reg   [2:0] v116_4_address0_local;
reg    v116_4_we0_local;
wire   [31:0] bitcast_ln64_fu_1142_p1;
reg    v116_4_we1_local;
wire   [31:0] bitcast_ln64_1_fu_1180_p1;
reg    v116_5_ce1_local;
reg   [2:0] v116_5_address1_local;
reg    v116_5_ce0_local;
reg   [2:0] v116_5_address0_local;
reg    v116_5_we0_local;
wire   [31:0] bitcast_ln71_fu_1147_p1;
reg    v116_5_we1_local;
wire   [31:0] bitcast_ln71_1_fu_1185_p1;
reg    v0_ce0_local;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg    v116_6_ce1_local;
reg   [2:0] v116_6_address1_local;
reg    v116_6_ce0_local;
reg   [2:0] v116_6_address0_local;
reg    v116_6_we0_local;
wire   [31:0] bitcast_ln78_fu_1152_p1;
reg    v116_6_we1_local;
wire   [31:0] bitcast_ln78_1_fu_1190_p1;
reg    v116_7_ce1_local;
reg   [2:0] v116_7_address1_local;
reg    v116_7_ce0_local;
reg   [2:0] v116_7_address0_local;
reg    v116_7_we0_local;
wire   [31:0] bitcast_ln86_fu_1156_p1;
reg    v116_7_we1_local;
wire   [31:0] bitcast_ln86_1_fu_1195_p1;
reg   [31:0] grp_fu_484_p0;
reg   [31:0] grp_fu_484_p1;
reg   [31:0] grp_fu_488_p0;
reg   [31:0] grp_fu_488_p1;
reg   [31:0] grp_fu_492_p0;
reg   [31:0] grp_fu_496_p0;
wire   [0:0] tmp_1_fu_558_p3;
wire   [6:0] add_ln27_fu_552_p2;
wire   [11:0] tmp_fu_690_p3;
wire   [11:0] zext_ln33_fu_697_p1;
wire   [11:0] add_ln33_fu_700_p2;
wire   [11:0] tmp_2_fu_711_p4;
wire   [0:0] icmp_ln31_fu_727_p2;
wire   [11:0] tmp_4_fu_740_p5;
wire   [11:0] tmp_5_fu_754_p4;
wire   [11:0] tmp_6_fu_782_p5;
wire   [11:0] tmp_8_fu_796_p6;
wire   [11:0] tmp_9_fu_822_p5;
wire   [11:0] tmp_10_fu_836_p4;
wire   [11:0] tmp_12_fu_859_p5;
wire   [11:0] tmp_14_fu_873_p6;
wire   [11:0] tmp_16_fu_899_p7;
wire   [11:0] tmp_17_fu_916_p6;
wire   [11:0] tmp_18_fu_946_p5;
wire   [11:0] tmp_19_fu_960_p6;
wire   [2:0] or_ln_fu_990_p3;
wire   [11:0] tmp_20_fu_1019_p5;
wire   [11:0] tmp_21_fu_1033_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage5;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_fu_120 = 32'd0;
#0 v49_fu_124 = 7'd0;
#0 v4_fu_128 = 7'd0;
#0 indvar_flatten_fu_132 = 9'd0;
#0 ap_done_reg = 1'b0;
end
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter1_stage5) & (ap_idle_pp0_0to0 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_534_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_132 <= add_ln27_1_fu_540_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_132 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_124 <= 7'd0;
    end else if (((icmp_ln27_reg_1227 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v49_fu_124 <= add_ln28_fu_980_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_534_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v4_fu_128 <= select_ln27_fu_574_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_128 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_1227 <= icmp_ln27_fu_534_p2;
        icmp_ln27_reg_1227_pp0_iter1_reg <= icmp_ln27_reg_1227;
        lshr_ln_reg_1263 <= {{select_ln26_fu_566_p3[5:3]}};
        select_ln26_reg_1231 <= select_ln26_fu_566_p3;
        select_ln27_reg_1238 <= select_ln27_fu_574_p3;
        tmp_11_reg_1307 <= {{select_ln26_fu_566_p3[5:4]}};
        tmp_13_reg_1325 <= {{select_ln26_fu_566_p3[2:1]}};
        tmp_15_reg_1330 <= select_ln26_fu_566_p3[32'd2];
        tmp_3_reg_1281 <= {{select_ln26_fu_566_p3[5:2]}};
        tmp_7_reg_1301 <= select_ln26_fu_566_p3[32'd1];
        tmp_s_reg_1276 <= {{select_ln26_fu_566_p3[5:1]}};
        trunc_ln27_reg_1243 <= trunc_ln27_fu_582_p1;
        trunc_ln28_reg_1320 <= trunc_ln28_fu_654_p1;
        trunc_ln46_reg_1287 <= trunc_ln46_fu_628_p1;
        trunc_ln60_reg_1295 <= trunc_ln60_fu_632_p1;
        v116_0_addr_1_reg_1606[2 : 1] <= zext_ln26_fu_997_p1[2 : 1];
        v116_0_addr_1_reg_1606_pp0_iter2_reg[2 : 1] <= v116_0_addr_1_reg_1606[2 : 1];
        v116_0_addr_reg_1271 <= zext_ln29_fu_596_p1;
        v116_0_addr_reg_1271_pp0_iter1_reg <= v116_0_addr_reg_1271;
        v116_1_addr_1_reg_1611[2 : 1] <= zext_ln26_fu_997_p1[2 : 1];
        v116_1_addr_1_reg_1611_pp0_iter2_reg[2 : 1] <= v116_1_addr_1_reg_1611[2 : 1];
        v116_1_addr_reg_1336 <= zext_ln29_fu_596_p1;
        v116_1_addr_reg_1336_pp0_iter1_reg <= v116_1_addr_reg_1336;
        v116_2_addr_1_reg_1616[2 : 1] <= zext_ln26_fu_997_p1[2 : 1];
        v116_2_addr_1_reg_1616_pp0_iter2_reg[2 : 1] <= v116_2_addr_1_reg_1616[2 : 1];
        v116_2_addr_reg_1341 <= zext_ln29_fu_596_p1;
        v116_2_addr_reg_1341_pp0_iter1_reg <= v116_2_addr_reg_1341;
        v116_3_addr_1_reg_1621[2 : 1] <= zext_ln26_fu_997_p1[2 : 1];
        v116_3_addr_1_reg_1621_pp0_iter2_reg[2 : 1] <= v116_3_addr_1_reg_1621[2 : 1];
        v116_3_addr_reg_1346 <= zext_ln29_fu_596_p1;
        v116_3_addr_reg_1346_pp0_iter1_reg <= v116_3_addr_reg_1346;
        v116_4_addr_1_reg_1626[2 : 1] <= zext_ln26_fu_997_p1[2 : 1];
        v116_4_addr_1_reg_1626_pp0_iter2_reg[2 : 1] <= v116_4_addr_1_reg_1626[2 : 1];
        v116_4_addr_reg_1351 <= zext_ln29_fu_596_p1;
        v116_4_addr_reg_1351_pp0_iter1_reg <= v116_4_addr_reg_1351;
        v116_4_addr_reg_1351_pp0_iter2_reg <= v116_4_addr_reg_1351_pp0_iter1_reg;
        v116_5_addr_1_reg_1632[2 : 1] <= zext_ln26_fu_997_p1[2 : 1];
        v116_5_addr_1_reg_1632_pp0_iter2_reg[2 : 1] <= v116_5_addr_1_reg_1632[2 : 1];
        v116_5_addr_reg_1357 <= zext_ln29_fu_596_p1;
        v116_5_addr_reg_1357_pp0_iter1_reg <= v116_5_addr_reg_1357;
        v116_5_addr_reg_1357_pp0_iter2_reg <= v116_5_addr_reg_1357_pp0_iter1_reg;
        v116_6_addr_1_reg_1638[2 : 1] <= zext_ln26_fu_997_p1[2 : 1];
        v116_6_addr_1_reg_1638_pp0_iter2_reg[2 : 1] <= v116_6_addr_1_reg_1638[2 : 1];
        v116_6_addr_reg_1363 <= zext_ln29_fu_596_p1;
        v116_6_addr_reg_1363_pp0_iter1_reg <= v116_6_addr_reg_1363;
        v116_6_addr_reg_1363_pp0_iter2_reg <= v116_6_addr_reg_1363_pp0_iter1_reg;
        v116_7_addr_1_reg_1644[2 : 1] <= zext_ln26_fu_997_p1[2 : 1];
        v116_7_addr_1_reg_1644_pp0_iter2_reg[2 : 1] <= v116_7_addr_1_reg_1644[2 : 1];
        v116_7_addr_reg_1369 <= zext_ln29_fu_596_p1;
        v116_7_addr_reg_1369_pp0_iter1_reg <= v116_7_addr_reg_1369;
        v116_7_addr_reg_1369_pp0_iter2_reg <= v116_7_addr_reg_1369_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_500 <= v113_q1;
        reg_504 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_508 <= grp_fu_397_p_dout0;
        reg_512 <= grp_fu_401_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_1690 <= v116_0_q0;
        v116_1_load_1_reg_1695 <= v116_1_q0;
        v116_2_load_1_reg_1700 <= v116_2_q0;
        v116_3_load_1_reg_1705 <= v116_3_q0;
        v116_4_load_1_reg_1710 <= v116_4_q0;
        v116_5_load_1_reg_1715 <= v116_5_q0;
        v116_6_load_1_reg_1720 <= v116_6_q0;
        v116_6_load_reg_1680 <= v116_6_q1;
        v116_7_load_1_reg_1725 <= v116_7_q0;
        v116_7_load_reg_1685 <= v116_7_q1;
        v47_reg_1650 <= grp_fu_405_p_dout0;
        v53_reg_1655 <= grp_fu_409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_1385 <= v116_0_q1;
        v116_1_load_reg_1395 <= v116_1_q1;
        v116_2_load_reg_1400 <= v116_2_q1;
        v116_3_load_reg_1405 <= v116_3_q1;
        v116_4_load_reg_1410 <= v116_4_q1;
        v116_5_load_reg_1415 <= v116_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v11_1_reg_1730 <= grp_fu_405_p_dout0;
        v17_1_reg_1735 <= grp_fu_409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v11_reg_1496 <= grp_fu_405_p_dout0;
        v17_reg_1501 <= grp_fu_409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v23_1_reg_1760 <= grp_fu_405_p_dout0;
        v29_1_reg_1765 <= grp_fu_409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v23_reg_1531 <= grp_fu_405_p_dout0;
        v29_reg_1536 <= grp_fu_409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v35_1_reg_1780 <= grp_fu_405_p_dout0;
        v41_1_reg_1785 <= grp_fu_409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_1566 <= grp_fu_405_p_dout0;
        v41_reg_1571 <= grp_fu_409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_2_reg_1420 <= v3_2_fu_732_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_1227 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_fu_120 <= v3_2_fu_732_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v47_1_reg_1800 <= grp_fu_405_p_dout0;
        v53_1_reg_1805 <= grp_fu_409_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v48_reg_1830 <= grp_fu_397_p_dout0;
        v54_reg_1835 <= grp_fu_401_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_1227 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln27_reg_1227_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter1_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_132;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_load = v49_fu_124;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_484_p0 = v45_2_fu_1114_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_484_p0 = v33_2_fu_1106_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_484_p0 = v21_2_fu_1098_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_484_p0 = v9_2_fu_1090_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_484_p0 = v45_fu_1082_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_484_p0 = v33_fu_1064_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_484_p0 = v21_fu_1046_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_484_p0 = v9_fu_932_p1;
    end else begin
        grp_fu_484_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_484_p1 = v47_1_reg_1800;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_484_p1 = v35_1_reg_1780;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_484_p1 = v23_1_reg_1760;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_484_p1 = v11_1_reg_1730;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_484_p1 = v47_reg_1650;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_484_p1 = v35_reg_1566;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_484_p1 = v23_reg_1531;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_484_p1 = v11_reg_1496;
    end else begin
        grp_fu_484_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_488_p0 = v51_2_fu_1118_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_488_p0 = v39_2_fu_1110_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_488_p0 = v27_2_fu_1102_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_488_p0 = v15_2_fu_1094_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_488_p0 = v51_fu_1086_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_488_p0 = v39_fu_1068_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_488_p0 = v27_fu_1050_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_488_p0 = v15_fu_976_p1;
    end else begin
        grp_fu_488_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_488_p1 = v53_1_reg_1805;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_488_p1 = v41_1_reg_1785;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_488_p1 = v29_1_reg_1765;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_488_p1 = v17_1_reg_1735;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_488_p1 = v53_reg_1655;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_488_p1 = v41_reg_1571;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_488_p1 = v29_reg_1536;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_488_p1 = v17_reg_1501;
    end else begin
        grp_fu_488_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_492_p0 = v46_1_fu_1072_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_492_p0 = v34_1_fu_1054_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_492_p0 = v22_1_fu_1009_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_492_p0 = v10_1_fu_936_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_492_p0 = v46_fu_889_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_492_p0 = v34_fu_849_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_492_p0 = v22_fu_812_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_492_p0 = v10_fu_772_p1;
    end else begin
        grp_fu_492_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_496_p0 = v52_1_fu_1077_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_496_p0 = v40_1_fu_1059_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_496_p0 = v28_1_fu_1014_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_496_p0 = v16_1_fu_941_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_496_p0 = v52_fu_894_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_496_p0 = v40_fu_854_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_496_p0 = v28_fu_817_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_496_p0 = v16_fu_777_p1;
    end else begin
        grp_fu_496_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address0_local = zext_ln83_1_fu_1041_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v113_address0_local = zext_ln68_1_fu_971_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v113_address0_local = zext_ln54_1_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v113_address0_local = zext_ln40_1_fu_884_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v113_address0_local = zext_ln83_fu_844_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address0_local = zext_ln68_fu_807_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address0_local = zext_ln54_fu_762_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address0_local = zext_ln40_fu_719_p1;
    end else begin
        v113_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address1_local = zext_ln75_1_fu_1028_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v113_address1_local = zext_ln61_1_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v113_address1_local = zext_ln47_1_fu_911_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v113_address1_local = zext_ln33_1_fu_868_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v113_address1_local = zext_ln75_fu_831_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address1_local = zext_ln61_fu_791_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address1_local = zext_ln47_fu_749_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address1_local = zext_ln33_2_fu_706_p1;
    end else begin
        v113_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce0_local = 1'b1;
    end else begin
        v113_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_ce1_local = 1'b1;
    end else begin
        v113_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_1_reg_1606_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln26_fu_997_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_0_address1_local = v116_0_addr_reg_1271_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_596_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_1_reg_1611_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln26_fu_997_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_1_address1_local = v116_1_addr_reg_1336_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_596_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_address0_local = v116_2_addr_1_reg_1616_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln26_fu_997_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_2_address1_local = v116_2_addr_reg_1341_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address1_local = zext_ln29_fu_596_p1;
    end else begin
        v116_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        v116_2_ce1_local = 1'b1;
    end else begin
        v116_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_2_we1_local = 1'b1;
    end else begin
        v116_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_address0_local = v116_3_addr_1_reg_1621_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln26_fu_997_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_3_address1_local = v116_3_addr_reg_1346_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address1_local = zext_ln29_fu_596_p1;
    end else begin
        v116_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        v116_3_ce1_local = 1'b1;
    end else begin
        v116_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_3_we1_local = 1'b1;
    end else begin
        v116_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_address0_local = v116_4_addr_reg_1351_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_address0_local = zext_ln26_fu_997_p1;
    end else begin
        v116_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_4_address1_local = v116_4_addr_1_reg_1626_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_address1_local = zext_ln29_fu_596_p1;
    end else begin
        v116_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_4_ce0_local = 1'b1;
    end else begin
        v116_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v116_4_ce1_local = 1'b1;
    end else begin
        v116_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_we0_local = 1'b1;
    end else begin
        v116_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_4_we1_local = 1'b1;
    end else begin
        v116_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_5_address0_local = v116_5_addr_reg_1357_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_address0_local = zext_ln26_fu_997_p1;
    end else begin
        v116_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_5_address1_local = v116_5_addr_1_reg_1632_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_address1_local = zext_ln29_fu_596_p1;
    end else begin
        v116_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_5_ce0_local = 1'b1;
    end else begin
        v116_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        v116_5_ce1_local = 1'b1;
    end else begin
        v116_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_5_we0_local = 1'b1;
    end else begin
        v116_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_5_we1_local = 1'b1;
    end else begin
        v116_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_address0_local = v116_6_addr_reg_1363_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_address0_local = zext_ln26_fu_997_p1;
    end else begin
        v116_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_6_address1_local = v116_6_addr_1_reg_1638_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_address1_local = v116_6_addr_reg_1363;
    end else begin
        v116_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_6_ce0_local = 1'b1;
    end else begin
        v116_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v116_6_ce1_local = 1'b1;
    end else begin
        v116_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_6_we0_local = 1'b1;
    end else begin
        v116_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_6_we1_local = 1'b1;
    end else begin
        v116_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_7_address0_local = v116_7_addr_reg_1369_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_address0_local = zext_ln26_fu_997_p1;
    end else begin
        v116_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_7_address1_local = v116_7_addr_1_reg_1644_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_address1_local = v116_7_addr_reg_1369;
    end else begin
        v116_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_7_ce0_local = 1'b1;
    end else begin
        v116_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        v116_7_ce1_local = 1'b1;
    end else begin
        v116_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_7_we0_local = 1'b1;
    end else begin
        v116_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_7_we1_local = 1'b1;
    end else begin
        v116_7_we1_local = 1'b0;
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
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage5) & (ap_idle_pp0_0to0 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
assign add_ln27_1_fu_540_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);
assign add_ln27_fu_552_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_980_p2 = (select_ln26_reg_1231 + 7'd16);
assign add_ln33_fu_700_p2 = (tmp_fu_690_p3 + zext_ln33_fu_697_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_1_fu_1160_p1 = reg_508;
assign bitcast_ln36_fu_1122_p1 = reg_508;
assign bitcast_ln43_1_fu_1165_p1 = reg_512;
assign bitcast_ln43_fu_1127_p1 = reg_512;
assign bitcast_ln50_1_fu_1170_p1 = reg_508;
assign bitcast_ln50_fu_1132_p1 = reg_508;
assign bitcast_ln57_1_fu_1175_p1 = reg_512;
assign bitcast_ln57_fu_1137_p1 = reg_512;
assign bitcast_ln64_1_fu_1180_p1 = reg_508;
assign bitcast_ln64_fu_1142_p1 = reg_508;
assign bitcast_ln71_1_fu_1185_p1 = reg_512;
assign bitcast_ln71_fu_1147_p1 = reg_512;
assign bitcast_ln78_1_fu_1190_p1 = reg_508;
assign bitcast_ln78_fu_1152_p1 = v48_reg_1830;
assign bitcast_ln86_1_fu_1195_p1 = reg_512;
assign bitcast_ln86_fu_1156_p1 = v54_reg_1835;
assign grp_fu_397_p_ce = 1'b1;
assign grp_fu_397_p_din0 = grp_fu_484_p0;
assign grp_fu_397_p_din1 = grp_fu_484_p1;
assign grp_fu_397_p_opcode = 2'd0;
assign grp_fu_401_p_ce = 1'b1;
assign grp_fu_401_p_din0 = grp_fu_488_p0;
assign grp_fu_401_p_din1 = grp_fu_488_p1;
assign grp_fu_401_p_opcode = 2'd0;
assign grp_fu_405_p_ce = 1'b1;
assign grp_fu_405_p_din0 = grp_fu_492_p0;
assign grp_fu_405_p_din1 = v3_2_reg_1420;
assign grp_fu_409_p_ce = 1'b1;
assign grp_fu_409_p_din0 = grp_fu_496_p0;
assign grp_fu_409_p_din1 = v3_2_reg_1420;
assign icmp_ln27_fu_534_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_727_p2 = ((select_ln26_reg_1231 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_586_p4 = {{select_ln26_fu_566_p3[5:3]}};
assign or_ln_fu_990_p3 = {{tmp_11_reg_1307}, {1'd1}};
assign select_ln26_fu_566_p3 = ((tmp_1_fu_558_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v49_load);
assign select_ln27_fu_574_p3 = ((tmp_1_fu_558_p3[0:0] == 1'b1) ? add_ln27_fu_552_p2 : ap_sig_allocacmp_v4_load);
assign tmp_10_fu_836_p4 = {{{trunc_ln27_reg_1243}, {lshr_ln_reg_1263}}, {3'd7}};
assign tmp_12_fu_859_p5 = {{{{trunc_ln27_reg_1243}, {tmp_11_reg_1307}}, {1'd1}}, {trunc_ln28_reg_1320}};
assign tmp_14_fu_873_p6 = {{{{{trunc_ln27_reg_1243}, {tmp_11_reg_1307}}, {1'd1}}, {tmp_13_reg_1325}}, {1'd1}};
assign tmp_16_fu_899_p7 = {{{{{{trunc_ln27_reg_1243}, {tmp_11_reg_1307}}, {1'd1}}, {tmp_15_reg_1330}}, {1'd1}}, {trunc_ln46_reg_1287}};
assign tmp_17_fu_916_p6 = {{{{{trunc_ln27_reg_1243}, {tmp_11_reg_1307}}, {1'd1}}, {tmp_15_reg_1330}}, {2'd3}};
assign tmp_18_fu_946_p5 = {{{{trunc_ln27_reg_1243}, {tmp_11_reg_1307}}, {2'd3}}, {trunc_ln60_reg_1295}};
assign tmp_19_fu_960_p6 = {{{{{trunc_ln27_reg_1243}, {tmp_11_reg_1307}}, {2'd3}}, {tmp_7_reg_1301}}, {1'd1}};
assign tmp_1_fu_558_p3 = ap_sig_allocacmp_v49_load[32'd6];
assign tmp_20_fu_1019_p5 = {{{{trunc_ln27_reg_1243}, {tmp_11_reg_1307}}, {3'd7}}, {trunc_ln46_reg_1287}};
assign tmp_21_fu_1033_p4 = {{{trunc_ln27_reg_1243}, {tmp_11_reg_1307}}, {4'd15}};
assign tmp_2_fu_711_p4 = {{{trunc_ln27_reg_1243}, {tmp_s_reg_1276}}, {1'd1}};
assign tmp_4_fu_740_p5 = {{{{trunc_ln27_reg_1243}, {tmp_3_reg_1281}}, {1'd1}}, {trunc_ln46_reg_1287}};
assign tmp_5_fu_754_p4 = {{{trunc_ln27_reg_1243}, {tmp_3_reg_1281}}, {2'd3}};
assign tmp_6_fu_782_p5 = {{{{trunc_ln27_reg_1243}, {lshr_ln_reg_1263}}, {1'd1}}, {trunc_ln60_reg_1295}};
assign tmp_8_fu_796_p6 = {{{{{trunc_ln27_reg_1243}, {lshr_ln_reg_1263}}, {1'd1}}, {tmp_7_reg_1301}}, {1'd1}};
assign tmp_9_fu_822_p5 = {{{{trunc_ln27_reg_1243}, {lshr_ln_reg_1263}}, {2'd3}}, {trunc_ln46_reg_1287}};
assign tmp_fu_690_p3 = {{trunc_ln27_reg_1243}, {6'd0}};
assign trunc_ln27_fu_582_p1 = select_ln27_fu_574_p3[5:0];
assign trunc_ln28_fu_654_p1 = select_ln26_fu_566_p3[2:0];
assign trunc_ln46_fu_628_p1 = select_ln26_fu_566_p3[0:0];
assign trunc_ln60_fu_632_p1 = select_ln26_fu_566_p3[1:0];
assign v0_address0 = zext_ln27_fu_686_p1;
assign v0_ce0 = v0_ce0_local;
assign v10_1_fu_936_p1 = reg_500;
assign v10_fu_772_p1 = reg_500;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln36_1_fu_1160_p1;
assign v116_0_d1 = bitcast_ln36_fu_1122_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln43_1_fu_1165_p1;
assign v116_1_d1 = bitcast_ln43_fu_1127_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_address1 = v116_2_address1_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln50_1_fu_1170_p1;
assign v116_2_d1 = bitcast_ln50_fu_1132_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_2_we1 = v116_2_we1_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_address1 = v116_3_address1_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln57_1_fu_1175_p1;
assign v116_3_d1 = bitcast_ln57_fu_1137_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_3_we1 = v116_3_we1_local;
assign v116_4_address0 = v116_4_address0_local;
assign v116_4_address1 = v116_4_address1_local;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_ce1 = v116_4_ce1_local;
assign v116_4_d0 = bitcast_ln64_fu_1142_p1;
assign v116_4_d1 = bitcast_ln64_1_fu_1180_p1;
assign v116_4_we0 = v116_4_we0_local;
assign v116_4_we1 = v116_4_we1_local;
assign v116_5_address0 = v116_5_address0_local;
assign v116_5_address1 = v116_5_address1_local;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_ce1 = v116_5_ce1_local;
assign v116_5_d0 = bitcast_ln71_fu_1147_p1;
assign v116_5_d1 = bitcast_ln71_1_fu_1185_p1;
assign v116_5_we0 = v116_5_we0_local;
assign v116_5_we1 = v116_5_we1_local;
assign v116_6_address0 = v116_6_address0_local;
assign v116_6_address1 = v116_6_address1_local;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_ce1 = v116_6_ce1_local;
assign v116_6_d0 = bitcast_ln78_fu_1152_p1;
assign v116_6_d1 = bitcast_ln78_1_fu_1190_p1;
assign v116_6_we0 = v116_6_we0_local;
assign v116_6_we1 = v116_6_we1_local;
assign v116_7_address0 = v116_7_address0_local;
assign v116_7_address1 = v116_7_address1_local;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_ce1 = v116_7_ce1_local;
assign v116_7_d0 = bitcast_ln86_fu_1156_p1;
assign v116_7_d1 = bitcast_ln86_1_fu_1195_p1;
assign v116_7_we0 = v116_7_we0_local;
assign v116_7_we1 = v116_7_we1_local;
assign v15_2_fu_1094_p1 = v116_1_load_1_reg_1695;
assign v15_fu_976_p1 = v116_1_load_reg_1395;
assign v16_1_fu_941_p1 = reg_504;
assign v16_fu_777_p1 = reg_504;
assign v21_2_fu_1098_p1 = v116_2_load_1_reg_1700;
assign v21_fu_1046_p1 = v116_2_load_reg_1400;
assign v22_1_fu_1009_p1 = reg_500;
assign v22_fu_812_p1 = reg_500;
assign v27_2_fu_1102_p1 = v116_3_load_1_reg_1705;
assign v27_fu_1050_p1 = v116_3_load_reg_1405;
assign v28_1_fu_1014_p1 = reg_504;
assign v28_fu_817_p1 = reg_504;
assign v33_2_fu_1106_p1 = v116_4_load_1_reg_1710;
assign v33_fu_1064_p1 = v116_4_load_reg_1410;
assign v34_1_fu_1054_p1 = reg_500;
assign v34_fu_849_p1 = reg_500;
assign v39_2_fu_1110_p1 = v116_5_load_1_reg_1715;
assign v39_fu_1068_p1 = v116_5_load_reg_1415;
assign v3_2_fu_732_p3 = ((icmp_ln31_fu_727_p2[0:0] == 1'b1) ? v0_q0 : v3_fu_120);
assign v40_1_fu_1059_p1 = reg_504;
assign v40_fu_854_p1 = reg_504;
assign v45_2_fu_1114_p1 = v116_6_load_1_reg_1720;
assign v45_fu_1082_p1 = v116_6_load_reg_1680;
assign v46_1_fu_1072_p1 = reg_500;
assign v46_fu_889_p1 = reg_500;
assign v51_2_fu_1118_p1 = v116_7_load_1_reg_1725;
assign v51_fu_1086_p1 = v116_7_load_reg_1685;
assign v52_1_fu_1077_p1 = reg_504;
assign v52_fu_894_p1 = reg_504;
assign v9_2_fu_1090_p1 = v116_0_load_1_reg_1690;
assign v9_fu_932_p1 = v116_0_load_reg_1385;
assign zext_ln26_fu_997_p1 = or_ln_fu_990_p3;
assign zext_ln27_fu_686_p1 = select_ln27_reg_1238;
assign zext_ln29_fu_596_p1 = lshr_ln_fu_586_p4;
assign zext_ln33_1_fu_868_p1 = tmp_12_fu_859_p5;
assign zext_ln33_2_fu_706_p1 = add_ln33_fu_700_p2;
assign zext_ln33_fu_697_p1 = select_ln26_reg_1231;
assign zext_ln40_1_fu_884_p1 = tmp_14_fu_873_p6;
assign zext_ln40_fu_719_p1 = tmp_2_fu_711_p4;
assign zext_ln47_1_fu_911_p1 = tmp_16_fu_899_p7;
assign zext_ln47_fu_749_p1 = tmp_4_fu_740_p5;
assign zext_ln54_1_fu_927_p1 = tmp_17_fu_916_p6;
assign zext_ln54_fu_762_p1 = tmp_5_fu_754_p4;
assign zext_ln61_1_fu_955_p1 = tmp_18_fu_946_p5;
assign zext_ln61_fu_791_p1 = tmp_6_fu_782_p5;
assign zext_ln68_1_fu_971_p1 = tmp_19_fu_960_p6;
assign zext_ln68_fu_807_p1 = tmp_8_fu_796_p6;
assign zext_ln75_1_fu_1028_p1 = tmp_20_fu_1019_p5;
assign zext_ln75_fu_831_p1 = tmp_9_fu_822_p5;
assign zext_ln83_1_fu_1041_p1 = tmp_21_fu_1033_p4;
assign zext_ln83_fu_844_p1 = tmp_10_fu_836_p4;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_1606[0] <= 1'b1;
    v116_0_addr_1_reg_1606_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1611[0] <= 1'b1;
    v116_1_addr_1_reg_1611_pp0_iter2_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1616[0] <= 1'b1;
    v116_2_addr_1_reg_1616_pp0_iter2_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1621[0] <= 1'b1;
    v116_3_addr_1_reg_1621_pp0_iter2_reg[0] <= 1'b1;
    v116_4_addr_1_reg_1626[0] <= 1'b1;
    v116_4_addr_1_reg_1626_pp0_iter2_reg[0] <= 1'b1;
    v116_5_addr_1_reg_1632[0] <= 1'b1;
    v116_5_addr_1_reg_1632_pp0_iter2_reg[0] <= 1'b1;
    v116_6_addr_1_reg_1638[0] <= 1'b1;
    v116_6_addr_1_reg_1638_pp0_iter2_reg[0] <= 1'b1;
    v116_7_addr_1_reg_1644[0] <= 1'b1;
    v116_7_addr_1_reg_1644_pp0_iter2_reg[0] <= 1'b1;
end
endmodule 