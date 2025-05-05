module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v113_address0,v113_ce0,v113_q0,v113_address1,v113_ce1,v113_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_q0,v116_4_address1,v116_4_ce1,v116_4_we1,v116_4_d1,v116_4_q1,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_q0,v116_5_address1,v116_5_ce1,v116_5_we1,v116_5_d1,v116_5_q1,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_q0,v116_6_address1,v116_6_ce1,v116_6_we1,v116_6_d1,v116_6_q1,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_q0,v116_7_address1,v116_7_ce1,v116_7_we1,v116_7_d1,v116_7_q1,grp_fu_481_p_din0,grp_fu_481_p_din1,grp_fu_481_p_opcode,grp_fu_481_p_dout0,grp_fu_481_p_ce,grp_fu_485_p_din0,grp_fu_485_p_din1,grp_fu_485_p_opcode,grp_fu_485_p_dout0,grp_fu_485_p_ce,grp_fu_489_p_din0,grp_fu_489_p_din1,grp_fu_489_p_dout0,grp_fu_489_p_ce,grp_fu_493_p_din0,grp_fu_493_p_din1,grp_fu_493_p_dout0,grp_fu_493_p_ce); 
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
output  [4:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [4:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
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
output  [31:0] grp_fu_481_p_din0;
output  [31:0] grp_fu_481_p_din1;
output  [1:0] grp_fu_481_p_opcode;
input  [31:0] grp_fu_481_p_dout0;
output   grp_fu_481_p_ce;
output  [31:0] grp_fu_485_p_din0;
output  [31:0] grp_fu_485_p_din1;
output  [1:0] grp_fu_485_p_opcode;
input  [31:0] grp_fu_485_p_dout0;
output   grp_fu_485_p_ce;
output  [31:0] grp_fu_489_p_din0;
output  [31:0] grp_fu_489_p_din1;
input  [31:0] grp_fu_489_p_dout0;
output   grp_fu_489_p_ce;
output  [31:0] grp_fu_493_p_din0;
output  [31:0] grp_fu_493_p_din1;
input  [31:0] grp_fu_493_p_dout0;
output   grp_fu_493_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln27_reg_1264;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_515;
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
reg   [31:0] reg_519;
reg   [31:0] reg_523;
reg   [31:0] reg_527;
wire   [0:0] icmp_ln27_fu_549_p2;
reg   [0:0] icmp_ln27_reg_1264_pp0_iter1_reg;
wire   [6:0] select_ln26_fu_581_p3;
reg   [6:0] select_ln26_reg_1268;
wire   [5:0] trunc_ln33_fu_597_p1;
reg   [5:0] trunc_ln33_reg_1275;
wire   [0:0] trunc_ln27_fu_601_p1;
reg   [0:0] trunc_ln27_reg_1295;
reg   [4:0] lshr_ln_reg_1300;
wire   [2:0] lshr_ln1_fu_615_p4;
reg   [2:0] lshr_ln1_reg_1305;
reg   [2:0] v116_0_addr_reg_1313;
reg   [2:0] v116_0_addr_reg_1313_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_1318;
reg   [3:0] tmp_5_reg_1323;
wire   [0:0] trunc_ln46_fu_657_p1;
reg   [0:0] trunc_ln46_reg_1329;
wire   [1:0] trunc_ln60_fu_661_p1;
reg   [1:0] trunc_ln60_reg_1337;
reg   [0:0] tmp_9_reg_1343;
reg   [1:0] tmp_13_reg_1349;
wire   [2:0] trunc_ln28_fu_683_p1;
reg   [2:0] trunc_ln28_reg_1362;
reg   [1:0] tmp_15_reg_1367;
reg   [0:0] tmp_17_reg_1372;
reg   [2:0] v116_1_addr_reg_1378;
reg   [2:0] v116_1_addr_reg_1378_pp0_iter1_reg;
reg   [2:0] v116_2_addr_reg_1383;
reg   [2:0] v116_2_addr_reg_1383_pp0_iter1_reg;
reg   [2:0] v116_3_addr_reg_1388;
reg   [2:0] v116_3_addr_reg_1388_pp0_iter1_reg;
reg   [2:0] v116_4_addr_reg_1393;
reg   [2:0] v116_4_addr_reg_1393_pp0_iter1_reg;
reg   [2:0] v116_4_addr_reg_1393_pp0_iter2_reg;
reg   [2:0] v116_5_addr_reg_1399;
reg   [2:0] v116_5_addr_reg_1399_pp0_iter1_reg;
reg   [2:0] v116_5_addr_reg_1399_pp0_iter2_reg;
reg   [2:0] v116_6_addr_reg_1405;
reg   [2:0] v116_6_addr_reg_1405_pp0_iter1_reg;
reg   [2:0] v116_6_addr_reg_1405_pp0_iter2_reg;
reg   [2:0] v116_7_addr_reg_1411;
reg   [2:0] v116_7_addr_reg_1411_pp0_iter1_reg;
reg   [2:0] v116_7_addr_reg_1411_pp0_iter2_reg;
reg   [31:0] v116_0_load_reg_1432;
reg   [31:0] v116_1_load_reg_1442;
reg   [31:0] v116_2_load_reg_1447;
reg   [31:0] v116_3_load_reg_1452;
reg   [31:0] v116_4_load_reg_1457;
reg   [31:0] v116_5_load_reg_1462;
wire   [31:0] v3_2_fu_769_p3;
reg   [31:0] v3_2_reg_1467;
wire   [31:0] v10_fu_809_p1;
wire   [31:0] v16_fu_814_p1;
wire   [31:0] v22_fu_849_p1;
wire   [31:0] v28_fu_854_p1;
wire   [31:0] v34_fu_886_p1;
wire   [31:0] v40_fu_891_p1;
reg   [31:0] v11_reg_1543;
reg   [31:0] v17_reg_1548;
wire   [31:0] v46_fu_926_p1;
wire   [31:0] v52_fu_931_p1;
wire   [31:0] v9_fu_969_p1;
reg   [31:0] v23_reg_1578;
reg   [31:0] v29_reg_1583;
wire   [31:0] v10_1_fu_973_p1;
wire   [31:0] v16_1_fu_978_p1;
wire   [31:0] v15_fu_1013_p1;
reg   [31:0] v35_reg_1613;
reg   [31:0] v41_reg_1618;
wire   [31:0] v22_1_fu_1046_p1;
wire   [31:0] v28_1_fu_1051_p1;
wire   [31:0] v21_fu_1083_p1;
wire   [31:0] v27_fu_1087_p1;
reg   [2:0] v116_0_addr_1_reg_1653;
reg   [2:0] v116_0_addr_1_reg_1653_pp0_iter2_reg;
reg   [2:0] v116_1_addr_1_reg_1658;
reg   [2:0] v116_1_addr_1_reg_1658_pp0_iter2_reg;
reg   [2:0] v116_2_addr_1_reg_1663;
reg   [2:0] v116_2_addr_1_reg_1663_pp0_iter2_reg;
reg   [2:0] v116_3_addr_1_reg_1668;
reg   [2:0] v116_3_addr_1_reg_1668_pp0_iter2_reg;
reg   [2:0] v116_4_addr_1_reg_1673;
reg   [2:0] v116_4_addr_1_reg_1673_pp0_iter2_reg;
reg   [2:0] v116_5_addr_1_reg_1679;
reg   [2:0] v116_5_addr_1_reg_1679_pp0_iter2_reg;
reg   [2:0] v116_6_addr_1_reg_1685;
reg   [2:0] v116_6_addr_1_reg_1685_pp0_iter2_reg;
reg   [2:0] v116_7_addr_1_reg_1691;
reg   [2:0] v116_7_addr_1_reg_1691_pp0_iter2_reg;
reg   [31:0] v47_reg_1697;
reg   [31:0] v53_reg_1702;
wire   [31:0] v34_1_fu_1091_p1;
wire   [31:0] v40_1_fu_1096_p1;
wire   [31:0] v33_fu_1101_p1;
wire   [31:0] v39_fu_1105_p1;
reg   [31:0] v116_6_load_reg_1727;
reg   [31:0] v116_7_load_reg_1732;
reg   [31:0] v116_0_load_1_reg_1737;
reg   [31:0] v116_1_load_1_reg_1742;
reg   [31:0] v116_2_load_1_reg_1747;
reg   [31:0] v116_3_load_1_reg_1752;
reg   [31:0] v116_4_load_1_reg_1757;
reg   [31:0] v116_5_load_1_reg_1762;
reg   [31:0] v116_6_load_1_reg_1767;
reg   [31:0] v116_7_load_1_reg_1772;
reg   [31:0] v11_1_reg_1777;
reg   [31:0] v17_1_reg_1782;
wire   [31:0] v46_1_fu_1109_p1;
wire   [31:0] v52_1_fu_1114_p1;
wire   [31:0] v45_fu_1119_p1;
wire   [31:0] v51_fu_1123_p1;
reg   [31:0] v23_1_reg_1807;
reg   [31:0] v29_1_reg_1812;
wire   [31:0] v9_2_fu_1127_p1;
wire   [31:0] v15_2_fu_1131_p1;
reg   [31:0] v35_1_reg_1827;
reg   [31:0] v41_1_reg_1832;
wire   [31:0] v21_2_fu_1135_p1;
wire   [31:0] v27_2_fu_1139_p1;
reg   [31:0] v47_1_reg_1847;
reg   [31:0] v53_1_reg_1852;
wire   [31:0] v33_2_fu_1143_p1;
wire   [31:0] v39_2_fu_1147_p1;
wire   [31:0] v45_2_fu_1151_p1;
wire   [31:0] v51_2_fu_1155_p1;
reg   [31:0] v48_reg_1877;
reg   [31:0] v54_reg_1882;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage5_subdone;
wire   [63:0] zext_ln29_fu_625_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln26_fu_722_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_2_fu_736_p1;
wire   [63:0] zext_ln40_fu_749_p1;
wire   [63:0] zext_ln47_fu_786_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln54_fu_799_p1;
wire   [63:0] zext_ln61_fu_828_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln68_fu_844_p1;
wire   [63:0] zext_ln75_fu_868_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln83_fu_881_p1;
wire   [63:0] zext_ln33_1_fu_905_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln40_1_fu_921_p1;
wire   [63:0] zext_ln47_1_fu_948_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln54_1_fu_964_p1;
wire   [63:0] zext_ln61_1_fu_992_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln68_1_fu_1008_p1;
wire   [63:0] zext_ln75_1_fu_1065_p1;
wire   [63:0] zext_ln83_1_fu_1078_p1;
wire   [63:0] zext_ln26_1_fu_1034_p1;
reg   [31:0] v3_fu_122;
reg   [6:0] v49_fu_126;
wire   [6:0] add_ln28_fu_1017_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_load;
reg   [6:0] v4_fu_130;
wire   [6:0] select_ln27_fu_589_p3;
reg   [6:0] ap_sig_allocacmp_v4_load;
reg   [8:0] indvar_flatten_fu_134;
wire   [8:0] add_ln27_1_fu_555_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v116_0_ce1_local;
reg   [2:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [2:0] v116_0_address0_local;
reg    v116_0_we1_local;
wire   [31:0] bitcast_ln36_fu_1159_p1;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln36_1_fu_1197_p1;
reg    v116_1_ce1_local;
reg   [2:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [2:0] v116_1_address0_local;
reg    v116_1_we1_local;
wire   [31:0] bitcast_ln43_fu_1164_p1;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_1_fu_1202_p1;
reg    v116_2_ce1_local;
reg   [2:0] v116_2_address1_local;
reg    v116_2_ce0_local;
reg   [2:0] v116_2_address0_local;
reg    v116_2_we1_local;
wire   [31:0] bitcast_ln50_fu_1169_p1;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_1_fu_1207_p1;
reg    v116_3_ce1_local;
reg   [2:0] v116_3_address1_local;
reg    v116_3_ce0_local;
reg   [2:0] v116_3_address0_local;
reg    v116_3_we1_local;
wire   [31:0] bitcast_ln57_fu_1174_p1;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_1_fu_1212_p1;
reg    v116_4_ce1_local;
reg   [2:0] v116_4_address1_local;
reg    v116_4_ce0_local;
reg   [2:0] v116_4_address0_local;
reg    v116_4_we0_local;
wire   [31:0] bitcast_ln64_fu_1179_p1;
reg    v116_4_we1_local;
wire   [31:0] bitcast_ln64_1_fu_1217_p1;
reg    v116_5_ce1_local;
reg   [2:0] v116_5_address1_local;
reg    v116_5_ce0_local;
reg   [2:0] v116_5_address0_local;
reg    v116_5_we0_local;
wire   [31:0] bitcast_ln71_fu_1184_p1;
reg    v116_5_we1_local;
wire   [31:0] bitcast_ln71_1_fu_1222_p1;
reg    v0_0_ce0_local;
reg    v0_1_ce0_local;
reg    v113_ce1_local;
reg   [11:0] v113_address1_local;
reg    v113_ce0_local;
reg   [11:0] v113_address0_local;
reg    v116_6_ce1_local;
reg   [2:0] v116_6_address1_local;
reg    v116_6_ce0_local;
reg   [2:0] v116_6_address0_local;
reg    v116_6_we0_local;
wire   [31:0] bitcast_ln78_fu_1189_p1;
reg    v116_6_we1_local;
wire   [31:0] bitcast_ln78_1_fu_1227_p1;
reg    v116_7_ce1_local;
reg   [2:0] v116_7_address1_local;
reg    v116_7_ce0_local;
reg   [2:0] v116_7_address0_local;
reg    v116_7_we0_local;
wire   [31:0] bitcast_ln86_fu_1193_p1;
reg    v116_7_we1_local;
wire   [31:0] bitcast_ln86_1_fu_1232_p1;
reg   [31:0] grp_fu_499_p0;
reg   [31:0] grp_fu_499_p1;
reg   [31:0] grp_fu_503_p0;
reg   [31:0] grp_fu_503_p1;
reg   [31:0] grp_fu_507_p0;
reg   [31:0] grp_fu_511_p0;
wire   [0:0] tmp_4_fu_573_p3;
wire   [6:0] add_ln27_fu_567_p2;
wire   [11:0] tmp_fu_715_p3;
wire   [11:0] zext_ln33_fu_727_p1;
wire   [11:0] add_ln33_fu_730_p2;
wire   [11:0] tmp_3_fu_741_p4;
wire   [0:0] icmp_ln31_fu_764_p2;
wire   [31:0] v6_fu_757_p3;
wire   [11:0] tmp_6_fu_777_p5;
wire   [11:0] tmp_7_fu_791_p4;
wire   [11:0] tmp_8_fu_819_p5;
wire   [11:0] tmp_10_fu_833_p6;
wire   [11:0] tmp_11_fu_859_p5;
wire   [11:0] tmp_12_fu_873_p4;
wire   [11:0] tmp_14_fu_896_p5;
wire   [11:0] tmp_16_fu_910_p6;
wire   [11:0] tmp_18_fu_936_p7;
wire   [11:0] tmp_19_fu_953_p6;
wire   [11:0] tmp_20_fu_983_p5;
wire   [11:0] tmp_21_fu_997_p6;
wire   [2:0] or_ln_fu_1027_p3;
wire   [11:0] tmp_22_fu_1056_p5;
wire   [11:0] tmp_23_fu_1070_p4;
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
#0 v3_fu_122 = 32'd0;
#0 v49_fu_126 = 7'd0;
#0 v4_fu_130 = 7'd0;
#0 indvar_flatten_fu_134 = 9'd0;
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
        if (((icmp_ln27_fu_549_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_134 <= add_ln27_1_fu_555_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_134 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v49_fu_126 <= 7'd0;
    end else if (((icmp_ln27_reg_1264 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v49_fu_126 <= add_ln28_fu_1017_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln27_fu_549_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v4_fu_130 <= select_ln27_fu_589_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v4_fu_130 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln27_reg_1264 <= icmp_ln27_fu_549_p2;
        icmp_ln27_reg_1264_pp0_iter1_reg <= icmp_ln27_reg_1264;
        lshr_ln1_reg_1305 <= {{select_ln26_fu_581_p3[5:3]}};
        lshr_ln_reg_1300 <= {{select_ln27_fu_589_p3[5:1]}};
        select_ln26_reg_1268 <= select_ln26_fu_581_p3;
        tmp_13_reg_1349 <= {{select_ln26_fu_581_p3[5:4]}};
        tmp_15_reg_1367 <= {{select_ln26_fu_581_p3[2:1]}};
        tmp_17_reg_1372 <= select_ln26_fu_581_p3[32'd2];
        tmp_5_reg_1323 <= {{select_ln26_fu_581_p3[5:2]}};
        tmp_9_reg_1343 <= select_ln26_fu_581_p3[32'd1];
        tmp_s_reg_1318 <= {{select_ln26_fu_581_p3[5:1]}};
        trunc_ln27_reg_1295 <= trunc_ln27_fu_601_p1;
        trunc_ln28_reg_1362 <= trunc_ln28_fu_683_p1;
        trunc_ln33_reg_1275 <= trunc_ln33_fu_597_p1;
        trunc_ln46_reg_1329 <= trunc_ln46_fu_657_p1;
        trunc_ln60_reg_1337 <= trunc_ln60_fu_661_p1;
        v116_0_addr_1_reg_1653[2 : 1] <= zext_ln26_1_fu_1034_p1[2 : 1];
        v116_0_addr_1_reg_1653_pp0_iter2_reg[2 : 1] <= v116_0_addr_1_reg_1653[2 : 1];
        v116_0_addr_reg_1313 <= zext_ln29_fu_625_p1;
        v116_0_addr_reg_1313_pp0_iter1_reg <= v116_0_addr_reg_1313;
        v116_1_addr_1_reg_1658[2 : 1] <= zext_ln26_1_fu_1034_p1[2 : 1];
        v116_1_addr_1_reg_1658_pp0_iter2_reg[2 : 1] <= v116_1_addr_1_reg_1658[2 : 1];
        v116_1_addr_reg_1378 <= zext_ln29_fu_625_p1;
        v116_1_addr_reg_1378_pp0_iter1_reg <= v116_1_addr_reg_1378;
        v116_2_addr_1_reg_1663[2 : 1] <= zext_ln26_1_fu_1034_p1[2 : 1];
        v116_2_addr_1_reg_1663_pp0_iter2_reg[2 : 1] <= v116_2_addr_1_reg_1663[2 : 1];
        v116_2_addr_reg_1383 <= zext_ln29_fu_625_p1;
        v116_2_addr_reg_1383_pp0_iter1_reg <= v116_2_addr_reg_1383;
        v116_3_addr_1_reg_1668[2 : 1] <= zext_ln26_1_fu_1034_p1[2 : 1];
        v116_3_addr_1_reg_1668_pp0_iter2_reg[2 : 1] <= v116_3_addr_1_reg_1668[2 : 1];
        v116_3_addr_reg_1388 <= zext_ln29_fu_625_p1;
        v116_3_addr_reg_1388_pp0_iter1_reg <= v116_3_addr_reg_1388;
        v116_4_addr_1_reg_1673[2 : 1] <= zext_ln26_1_fu_1034_p1[2 : 1];
        v116_4_addr_1_reg_1673_pp0_iter2_reg[2 : 1] <= v116_4_addr_1_reg_1673[2 : 1];
        v116_4_addr_reg_1393 <= zext_ln29_fu_625_p1;
        v116_4_addr_reg_1393_pp0_iter1_reg <= v116_4_addr_reg_1393;
        v116_4_addr_reg_1393_pp0_iter2_reg <= v116_4_addr_reg_1393_pp0_iter1_reg;
        v116_5_addr_1_reg_1679[2 : 1] <= zext_ln26_1_fu_1034_p1[2 : 1];
        v116_5_addr_1_reg_1679_pp0_iter2_reg[2 : 1] <= v116_5_addr_1_reg_1679[2 : 1];
        v116_5_addr_reg_1399 <= zext_ln29_fu_625_p1;
        v116_5_addr_reg_1399_pp0_iter1_reg <= v116_5_addr_reg_1399;
        v116_5_addr_reg_1399_pp0_iter2_reg <= v116_5_addr_reg_1399_pp0_iter1_reg;
        v116_6_addr_1_reg_1685[2 : 1] <= zext_ln26_1_fu_1034_p1[2 : 1];
        v116_6_addr_1_reg_1685_pp0_iter2_reg[2 : 1] <= v116_6_addr_1_reg_1685[2 : 1];
        v116_6_addr_reg_1405 <= zext_ln29_fu_625_p1;
        v116_6_addr_reg_1405_pp0_iter1_reg <= v116_6_addr_reg_1405;
        v116_6_addr_reg_1405_pp0_iter2_reg <= v116_6_addr_reg_1405_pp0_iter1_reg;
        v116_7_addr_1_reg_1691[2 : 1] <= zext_ln26_1_fu_1034_p1[2 : 1];
        v116_7_addr_1_reg_1691_pp0_iter2_reg[2 : 1] <= v116_7_addr_1_reg_1691[2 : 1];
        v116_7_addr_reg_1411 <= zext_ln29_fu_625_p1;
        v116_7_addr_reg_1411_pp0_iter1_reg <= v116_7_addr_reg_1411;
        v116_7_addr_reg_1411_pp0_iter2_reg <= v116_7_addr_reg_1411_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_515 <= v113_q1;
        reg_519 <= v113_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_523 <= grp_fu_481_p_dout0;
        reg_527 <= grp_fu_485_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_1737 <= v116_0_q0;
        v116_1_load_1_reg_1742 <= v116_1_q0;
        v116_2_load_1_reg_1747 <= v116_2_q0;
        v116_3_load_1_reg_1752 <= v116_3_q0;
        v116_4_load_1_reg_1757 <= v116_4_q0;
        v116_5_load_1_reg_1762 <= v116_5_q0;
        v116_6_load_1_reg_1767 <= v116_6_q0;
        v116_6_load_reg_1727 <= v116_6_q1;
        v116_7_load_1_reg_1772 <= v116_7_q0;
        v116_7_load_reg_1732 <= v116_7_q1;
        v47_reg_1697 <= grp_fu_489_p_dout0;
        v53_reg_1702 <= grp_fu_493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_1432 <= v116_0_q1;
        v116_1_load_reg_1442 <= v116_1_q1;
        v116_2_load_reg_1447 <= v116_2_q1;
        v116_3_load_reg_1452 <= v116_3_q1;
        v116_4_load_reg_1457 <= v116_4_q1;
        v116_5_load_reg_1462 <= v116_5_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v11_1_reg_1777 <= grp_fu_489_p_dout0;
        v17_1_reg_1782 <= grp_fu_493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v11_reg_1543 <= grp_fu_489_p_dout0;
        v17_reg_1548 <= grp_fu_493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v23_1_reg_1807 <= grp_fu_489_p_dout0;
        v29_1_reg_1812 <= grp_fu_493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v23_reg_1578 <= grp_fu_489_p_dout0;
        v29_reg_1583 <= grp_fu_493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v35_1_reg_1827 <= grp_fu_489_p_dout0;
        v41_1_reg_1832 <= grp_fu_493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v35_reg_1613 <= grp_fu_489_p_dout0;
        v41_reg_1618 <= grp_fu_493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_2_reg_1467 <= v3_2_fu_769_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_1264 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_fu_122 <= v3_2_fu_769_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v47_1_reg_1847 <= grp_fu_489_p_dout0;
        v53_1_reg_1852 <= grp_fu_493_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v48_reg_1877 <= grp_fu_481_p_dout0;
        v54_reg_1882 <= grp_fu_485_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_1264 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln27_reg_1264_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_134;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v49_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_load = v49_fu_126;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v4_load = v4_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_499_p0 = v45_2_fu_1151_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_499_p0 = v33_2_fu_1143_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_499_p0 = v21_2_fu_1135_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_499_p0 = v9_2_fu_1127_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_499_p0 = v45_fu_1119_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_499_p0 = v33_fu_1101_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_499_p0 = v21_fu_1083_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_499_p0 = v9_fu_969_p1;
    end else begin
        grp_fu_499_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_499_p1 = v47_1_reg_1847;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_499_p1 = v35_1_reg_1827;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_499_p1 = v23_1_reg_1807;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_499_p1 = v11_1_reg_1777;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_499_p1 = v47_reg_1697;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_499_p1 = v35_reg_1613;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_499_p1 = v23_reg_1578;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_499_p1 = v11_reg_1543;
    end else begin
        grp_fu_499_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_503_p0 = v51_2_fu_1155_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_503_p0 = v39_2_fu_1147_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_503_p0 = v27_2_fu_1139_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_503_p0 = v15_2_fu_1131_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_503_p0 = v51_fu_1123_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_503_p0 = v39_fu_1105_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_503_p0 = v27_fu_1087_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_503_p0 = v15_fu_1013_p1;
    end else begin
        grp_fu_503_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_503_p1 = v53_1_reg_1852;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_503_p1 = v41_1_reg_1832;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_503_p1 = v29_1_reg_1812;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_503_p1 = v17_1_reg_1782;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_503_p1 = v53_reg_1702;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_503_p1 = v41_reg_1618;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_503_p1 = v29_reg_1583;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_503_p1 = v17_reg_1548;
    end else begin
        grp_fu_503_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_507_p0 = v46_1_fu_1109_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_507_p0 = v34_1_fu_1091_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_507_p0 = v22_1_fu_1046_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_507_p0 = v10_1_fu_973_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_507_p0 = v46_fu_926_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_507_p0 = v34_fu_886_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_507_p0 = v22_fu_849_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_507_p0 = v10_fu_809_p1;
    end else begin
        grp_fu_507_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_511_p0 = v52_1_fu_1114_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_511_p0 = v40_1_fu_1096_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_511_p0 = v28_1_fu_1051_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_511_p0 = v16_1_fu_978_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_511_p0 = v52_fu_931_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_511_p0 = v40_fu_891_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_511_p0 = v28_fu_854_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_511_p0 = v16_fu_814_p1;
    end else begin
        grp_fu_511_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address0_local = zext_ln83_1_fu_1078_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v113_address0_local = zext_ln68_1_fu_1008_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v113_address0_local = zext_ln54_1_fu_964_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v113_address0_local = zext_ln40_1_fu_921_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v113_address0_local = zext_ln83_fu_881_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address0_local = zext_ln68_fu_844_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address0_local = zext_ln54_fu_799_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address0_local = zext_ln40_fu_749_p1;
    end else begin
        v113_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_address1_local = zext_ln75_1_fu_1065_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v113_address1_local = zext_ln61_1_fu_992_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v113_address1_local = zext_ln47_1_fu_948_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v113_address1_local = zext_ln33_1_fu_905_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v113_address1_local = zext_ln75_fu_868_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v113_address1_local = zext_ln61_fu_828_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_address1_local = zext_ln47_fu_786_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_address1_local = zext_ln33_2_fu_736_p1;
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
        v116_0_address0_local = v116_0_addr_1_reg_1653_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln26_1_fu_1034_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_0_address1_local = v116_0_addr_reg_1313_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_625_p1;
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
        v116_1_address0_local = v116_1_addr_1_reg_1658_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln26_1_fu_1034_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v116_1_address1_local = v116_1_addr_reg_1378_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_625_p1;
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
        v116_2_address0_local = v116_2_addr_1_reg_1663_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln26_1_fu_1034_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_2_address1_local = v116_2_addr_reg_1383_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address1_local = zext_ln29_fu_625_p1;
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
        v116_3_address0_local = v116_3_addr_1_reg_1668_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln26_1_fu_1034_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        v116_3_address1_local = v116_3_addr_reg_1388_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address1_local = zext_ln29_fu_625_p1;
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
        v116_4_address0_local = v116_4_addr_reg_1393_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_address0_local = zext_ln26_1_fu_1034_p1;
    end else begin
        v116_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_4_address1_local = v116_4_addr_1_reg_1673_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_address1_local = zext_ln29_fu_625_p1;
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
        v116_5_address0_local = v116_5_addr_reg_1399_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_address0_local = zext_ln26_1_fu_1034_p1;
    end else begin
        v116_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v116_5_address1_local = v116_5_addr_1_reg_1679_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_address1_local = zext_ln29_fu_625_p1;
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
        v116_6_address0_local = v116_6_addr_reg_1405_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_address0_local = zext_ln26_1_fu_1034_p1;
    end else begin
        v116_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_6_address1_local = v116_6_addr_1_reg_1685_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_6_address1_local = v116_6_addr_reg_1405;
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
        v116_7_address0_local = v116_7_addr_reg_1411_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_address0_local = zext_ln26_1_fu_1034_p1;
    end else begin
        v116_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v116_7_address1_local = v116_7_addr_1_reg_1691_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_7_address1_local = v116_7_addr_reg_1411;
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
assign add_ln27_1_fu_555_p2 = (ap_sig_allocacmp_indvar_flatten_load + 9'd1);
assign add_ln27_fu_567_p2 = (ap_sig_allocacmp_v4_load + 7'd1);
assign add_ln28_fu_1017_p2 = (select_ln26_reg_1268 + 7'd16);
assign add_ln33_fu_730_p2 = (tmp_fu_715_p3 + zext_ln33_fu_727_p1);
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
assign bitcast_ln36_1_fu_1197_p1 = reg_523;
assign bitcast_ln36_fu_1159_p1 = reg_523;
assign bitcast_ln43_1_fu_1202_p1 = reg_527;
assign bitcast_ln43_fu_1164_p1 = reg_527;
assign bitcast_ln50_1_fu_1207_p1 = reg_523;
assign bitcast_ln50_fu_1169_p1 = reg_523;
assign bitcast_ln57_1_fu_1212_p1 = reg_527;
assign bitcast_ln57_fu_1174_p1 = reg_527;
assign bitcast_ln64_1_fu_1217_p1 = reg_523;
assign bitcast_ln64_fu_1179_p1 = reg_523;
assign bitcast_ln71_1_fu_1222_p1 = reg_527;
assign bitcast_ln71_fu_1184_p1 = reg_527;
assign bitcast_ln78_1_fu_1227_p1 = reg_523;
assign bitcast_ln78_fu_1189_p1 = v48_reg_1877;
assign bitcast_ln86_1_fu_1232_p1 = reg_527;
assign bitcast_ln86_fu_1193_p1 = v54_reg_1882;
assign grp_fu_481_p_ce = 1'b1;
assign grp_fu_481_p_din0 = grp_fu_499_p0;
assign grp_fu_481_p_din1 = grp_fu_499_p1;
assign grp_fu_481_p_opcode = 2'd0;
assign grp_fu_485_p_ce = 1'b1;
assign grp_fu_485_p_din0 = grp_fu_503_p0;
assign grp_fu_485_p_din1 = grp_fu_503_p1;
assign grp_fu_485_p_opcode = 2'd0;
assign grp_fu_489_p_ce = 1'b1;
assign grp_fu_489_p_din0 = grp_fu_507_p0;
assign grp_fu_489_p_din1 = v3_2_reg_1467;
assign grp_fu_493_p_ce = 1'b1;
assign grp_fu_493_p_din0 = grp_fu_511_p0;
assign grp_fu_493_p_din1 = v3_2_reg_1467;
assign icmp_ln27_fu_549_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_764_p2 = ((select_ln26_reg_1268 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_615_p4 = {{select_ln26_fu_581_p3[5:3]}};
assign or_ln_fu_1027_p3 = {{tmp_13_reg_1349}, {1'd1}};
assign select_ln26_fu_581_p3 = ((tmp_4_fu_573_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v49_load);
assign select_ln27_fu_589_p3 = ((tmp_4_fu_573_p3[0:0] == 1'b1) ? add_ln27_fu_567_p2 : ap_sig_allocacmp_v4_load);
assign tmp_10_fu_833_p6 = {{{{{trunc_ln33_reg_1275}, {lshr_ln1_reg_1305}}, {1'd1}}, {tmp_9_reg_1343}}, {1'd1}};
assign tmp_11_fu_859_p5 = {{{{trunc_ln33_reg_1275}, {lshr_ln1_reg_1305}}, {2'd3}}, {trunc_ln46_reg_1329}};
assign tmp_12_fu_873_p4 = {{{trunc_ln33_reg_1275}, {lshr_ln1_reg_1305}}, {3'd7}};
assign tmp_14_fu_896_p5 = {{{{trunc_ln33_reg_1275}, {tmp_13_reg_1349}}, {1'd1}}, {trunc_ln28_reg_1362}};
assign tmp_16_fu_910_p6 = {{{{{trunc_ln33_reg_1275}, {tmp_13_reg_1349}}, {1'd1}}, {tmp_15_reg_1367}}, {1'd1}};
assign tmp_18_fu_936_p7 = {{{{{{trunc_ln33_reg_1275}, {tmp_13_reg_1349}}, {1'd1}}, {tmp_17_reg_1372}}, {1'd1}}, {trunc_ln46_reg_1329}};
assign tmp_19_fu_953_p6 = {{{{{trunc_ln33_reg_1275}, {tmp_13_reg_1349}}, {1'd1}}, {tmp_17_reg_1372}}, {2'd3}};
assign tmp_20_fu_983_p5 = {{{{trunc_ln33_reg_1275}, {tmp_13_reg_1349}}, {2'd3}}, {trunc_ln60_reg_1337}};
assign tmp_21_fu_997_p6 = {{{{{trunc_ln33_reg_1275}, {tmp_13_reg_1349}}, {2'd3}}, {tmp_9_reg_1343}}, {1'd1}};
assign tmp_22_fu_1056_p5 = {{{{trunc_ln33_reg_1275}, {tmp_13_reg_1349}}, {3'd7}}, {trunc_ln46_reg_1329}};
assign tmp_23_fu_1070_p4 = {{{trunc_ln33_reg_1275}, {tmp_13_reg_1349}}, {4'd15}};
assign tmp_3_fu_741_p4 = {{{trunc_ln33_reg_1275}, {tmp_s_reg_1318}}, {1'd1}};
assign tmp_4_fu_573_p3 = ap_sig_allocacmp_v49_load[32'd6];
assign tmp_6_fu_777_p5 = {{{{trunc_ln33_reg_1275}, {tmp_5_reg_1323}}, {1'd1}}, {trunc_ln46_reg_1329}};
assign tmp_7_fu_791_p4 = {{{trunc_ln33_reg_1275}, {tmp_5_reg_1323}}, {2'd3}};
assign tmp_8_fu_819_p5 = {{{{trunc_ln33_reg_1275}, {lshr_ln1_reg_1305}}, {1'd1}}, {trunc_ln60_reg_1337}};
assign tmp_fu_715_p3 = {{trunc_ln33_reg_1275}, {6'd0}};
assign trunc_ln27_fu_601_p1 = select_ln27_fu_589_p3[0:0];
assign trunc_ln28_fu_683_p1 = select_ln26_fu_581_p3[2:0];
assign trunc_ln33_fu_597_p1 = select_ln27_fu_589_p3[5:0];
assign trunc_ln46_fu_657_p1 = select_ln26_fu_581_p3[0:0];
assign trunc_ln60_fu_661_p1 = select_ln26_fu_581_p3[1:0];
assign v0_0_address0 = zext_ln26_fu_722_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln26_fu_722_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v10_1_fu_973_p1 = reg_515;
assign v10_fu_809_p1 = reg_515;
assign v113_address0 = v113_address0_local;
assign v113_address1 = v113_address1_local;
assign v113_ce0 = v113_ce0_local;
assign v113_ce1 = v113_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln36_1_fu_1197_p1;
assign v116_0_d1 = bitcast_ln36_fu_1159_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln43_1_fu_1202_p1;
assign v116_1_d1 = bitcast_ln43_fu_1164_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_address1 = v116_2_address1_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln50_1_fu_1207_p1;
assign v116_2_d1 = bitcast_ln50_fu_1169_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_2_we1 = v116_2_we1_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_address1 = v116_3_address1_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln57_1_fu_1212_p1;
assign v116_3_d1 = bitcast_ln57_fu_1174_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_3_we1 = v116_3_we1_local;
assign v116_4_address0 = v116_4_address0_local;
assign v116_4_address1 = v116_4_address1_local;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_ce1 = v116_4_ce1_local;
assign v116_4_d0 = bitcast_ln64_fu_1179_p1;
assign v116_4_d1 = bitcast_ln64_1_fu_1217_p1;
assign v116_4_we0 = v116_4_we0_local;
assign v116_4_we1 = v116_4_we1_local;
assign v116_5_address0 = v116_5_address0_local;
assign v116_5_address1 = v116_5_address1_local;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_ce1 = v116_5_ce1_local;
assign v116_5_d0 = bitcast_ln71_fu_1184_p1;
assign v116_5_d1 = bitcast_ln71_1_fu_1222_p1;
assign v116_5_we0 = v116_5_we0_local;
assign v116_5_we1 = v116_5_we1_local;
assign v116_6_address0 = v116_6_address0_local;
assign v116_6_address1 = v116_6_address1_local;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_ce1 = v116_6_ce1_local;
assign v116_6_d0 = bitcast_ln78_fu_1189_p1;
assign v116_6_d1 = bitcast_ln78_1_fu_1227_p1;
assign v116_6_we0 = v116_6_we0_local;
assign v116_6_we1 = v116_6_we1_local;
assign v116_7_address0 = v116_7_address0_local;
assign v116_7_address1 = v116_7_address1_local;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_ce1 = v116_7_ce1_local;
assign v116_7_d0 = bitcast_ln86_fu_1193_p1;
assign v116_7_d1 = bitcast_ln86_1_fu_1232_p1;
assign v116_7_we0 = v116_7_we0_local;
assign v116_7_we1 = v116_7_we1_local;
assign v15_2_fu_1131_p1 = v116_1_load_1_reg_1742;
assign v15_fu_1013_p1 = v116_1_load_reg_1442;
assign v16_1_fu_978_p1 = reg_519;
assign v16_fu_814_p1 = reg_519;
assign v21_2_fu_1135_p1 = v116_2_load_1_reg_1747;
assign v21_fu_1083_p1 = v116_2_load_reg_1447;
assign v22_1_fu_1046_p1 = reg_515;
assign v22_fu_849_p1 = reg_515;
assign v27_2_fu_1139_p1 = v116_3_load_1_reg_1752;
assign v27_fu_1087_p1 = v116_3_load_reg_1452;
assign v28_1_fu_1051_p1 = reg_519;
assign v28_fu_854_p1 = reg_519;
assign v33_2_fu_1143_p1 = v116_4_load_1_reg_1757;
assign v33_fu_1101_p1 = v116_4_load_reg_1457;
assign v34_1_fu_1091_p1 = reg_515;
assign v34_fu_886_p1 = reg_515;
assign v39_2_fu_1147_p1 = v116_5_load_1_reg_1762;
assign v39_fu_1105_p1 = v116_5_load_reg_1462;
assign v3_2_fu_769_p3 = ((icmp_ln31_fu_764_p2[0:0] == 1'b1) ? v6_fu_757_p3 : v3_fu_122);
assign v40_1_fu_1096_p1 = reg_519;
assign v40_fu_891_p1 = reg_519;
assign v45_2_fu_1151_p1 = v116_6_load_1_reg_1767;
assign v45_fu_1119_p1 = v116_6_load_reg_1727;
assign v46_1_fu_1109_p1 = reg_515;
assign v46_fu_926_p1 = reg_515;
assign v51_2_fu_1155_p1 = v116_7_load_1_reg_1772;
assign v51_fu_1123_p1 = v116_7_load_reg_1732;
assign v52_1_fu_1114_p1 = reg_519;
assign v52_fu_931_p1 = reg_519;
assign v6_fu_757_p3 = ((trunc_ln27_reg_1295[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign v9_2_fu_1127_p1 = v116_0_load_1_reg_1737;
assign v9_fu_969_p1 = v116_0_load_reg_1432;
assign zext_ln26_1_fu_1034_p1 = or_ln_fu_1027_p3;
assign zext_ln26_fu_722_p1 = lshr_ln_reg_1300;
assign zext_ln29_fu_625_p1 = lshr_ln1_fu_615_p4;
assign zext_ln33_1_fu_905_p1 = tmp_14_fu_896_p5;
assign zext_ln33_2_fu_736_p1 = add_ln33_fu_730_p2;
assign zext_ln33_fu_727_p1 = select_ln26_reg_1268;
assign zext_ln40_1_fu_921_p1 = tmp_16_fu_910_p6;
assign zext_ln40_fu_749_p1 = tmp_3_fu_741_p4;
assign zext_ln47_1_fu_948_p1 = tmp_18_fu_936_p7;
assign zext_ln47_fu_786_p1 = tmp_6_fu_777_p5;
assign zext_ln54_1_fu_964_p1 = tmp_19_fu_953_p6;
assign zext_ln54_fu_799_p1 = tmp_7_fu_791_p4;
assign zext_ln61_1_fu_992_p1 = tmp_20_fu_983_p5;
assign zext_ln61_fu_828_p1 = tmp_8_fu_819_p5;
assign zext_ln68_1_fu_1008_p1 = tmp_21_fu_997_p6;
assign zext_ln68_fu_844_p1 = tmp_10_fu_833_p6;
assign zext_ln75_1_fu_1065_p1 = tmp_22_fu_1056_p5;
assign zext_ln75_fu_868_p1 = tmp_11_fu_859_p5;
assign zext_ln83_1_fu_1078_p1 = tmp_23_fu_1070_p4;
assign zext_ln83_fu_881_p1 = tmp_12_fu_873_p4;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_1653[0] <= 1'b1;
    v116_0_addr_1_reg_1653_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1658[0] <= 1'b1;
    v116_1_addr_1_reg_1658_pp0_iter2_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1663[0] <= 1'b1;
    v116_2_addr_1_reg_1663_pp0_iter2_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1668[0] <= 1'b1;
    v116_3_addr_1_reg_1668_pp0_iter2_reg[0] <= 1'b1;
    v116_4_addr_1_reg_1673[0] <= 1'b1;
    v116_4_addr_1_reg_1673_pp0_iter2_reg[0] <= 1'b1;
    v116_5_addr_1_reg_1679[0] <= 1'b1;
    v116_5_addr_1_reg_1679_pp0_iter2_reg[0] <= 1'b1;
    v116_6_addr_1_reg_1685[0] <= 1'b1;
    v116_6_addr_1_reg_1685_pp0_iter2_reg[0] <= 1'b1;
    v116_7_addr_1_reg_1691[0] <= 1'b1;
    v116_7_addr_1_reg_1691_pp0_iter2_reg[0] <= 1'b1;
end
endmodule 