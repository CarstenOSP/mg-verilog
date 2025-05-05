module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_0_address0,v0_0_ce0,v0_0_q0,v0_1_address0,v0_1_ce0,v0_1_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v113_2_address0,v113_2_ce0,v113_2_q0,v113_2_address1,v113_2_ce1,v113_2_q1,v113_3_address0,v113_3_ce0,v113_3_q0,v113_3_address1,v113_3_ce1,v113_3_q1,v113_4_address0,v113_4_ce0,v113_4_q0,v113_4_address1,v113_4_ce1,v113_4_q1,v113_5_address0,v113_5_ce0,v113_5_q0,v113_5_address1,v113_5_ce1,v113_5_q1,v113_6_address0,v113_6_ce0,v113_6_q0,v113_6_address1,v113_6_ce1,v113_6_q1,v113_7_address0,v113_7_ce0,v113_7_q0,v113_7_address1,v113_7_ce1,v113_7_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,grp_fu_350_p_din0,grp_fu_350_p_din1,grp_fu_350_p_opcode,grp_fu_350_p_dout0,grp_fu_350_p_ce,grp_fu_354_p_din0,grp_fu_354_p_din1,grp_fu_354_p_opcode,grp_fu_354_p_dout0,grp_fu_354_p_ce,grp_fu_358_p_din0,grp_fu_358_p_din1,grp_fu_358_p_dout0,grp_fu_358_p_ce,grp_fu_362_p_din0,grp_fu_362_p_din1,grp_fu_362_p_dout0,grp_fu_362_p_ce); 
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
output  [4:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [4:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [8:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [8:0] v113_0_address1;
output   v113_0_ce1;
input  [31:0] v113_0_q1;
output  [8:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [8:0] v113_1_address1;
output   v113_1_ce1;
input  [31:0] v113_1_q1;
output  [8:0] v113_2_address0;
output   v113_2_ce0;
input  [31:0] v113_2_q0;
output  [8:0] v113_2_address1;
output   v113_2_ce1;
input  [31:0] v113_2_q1;
output  [8:0] v113_3_address0;
output   v113_3_ce0;
input  [31:0] v113_3_q0;
output  [8:0] v113_3_address1;
output   v113_3_ce1;
input  [31:0] v113_3_q1;
output  [8:0] v113_4_address0;
output   v113_4_ce0;
input  [31:0] v113_4_q0;
output  [8:0] v113_4_address1;
output   v113_4_ce1;
input  [31:0] v113_4_q1;
output  [8:0] v113_5_address0;
output   v113_5_ce0;
input  [31:0] v113_5_q0;
output  [8:0] v113_5_address1;
output   v113_5_ce1;
input  [31:0] v113_5_q1;
output  [8:0] v113_6_address0;
output   v113_6_ce0;
input  [31:0] v113_6_q0;
output  [8:0] v113_6_address1;
output   v113_6_ce1;
input  [31:0] v113_6_q1;
output  [8:0] v113_7_address0;
output   v113_7_ce0;
input  [31:0] v113_7_q0;
output  [8:0] v113_7_address1;
output   v113_7_ce1;
input  [31:0] v113_7_q1;
output  [3:0] v116_0_address0;
output   v116_0_ce0;
output   v116_0_we0;
output  [31:0] v116_0_d0;
input  [31:0] v116_0_q0;
output  [3:0] v116_0_address1;
output   v116_0_ce1;
output   v116_0_we1;
output  [31:0] v116_0_d1;
input  [31:0] v116_0_q1;
output  [3:0] v116_1_address0;
output   v116_1_ce0;
output   v116_1_we0;
output  [31:0] v116_1_d0;
input  [31:0] v116_1_q0;
output  [3:0] v116_1_address1;
output   v116_1_ce1;
output   v116_1_we1;
output  [31:0] v116_1_d1;
input  [31:0] v116_1_q1;
output  [3:0] v116_2_address0;
output   v116_2_ce0;
output   v116_2_we0;
output  [31:0] v116_2_d0;
input  [31:0] v116_2_q0;
output  [3:0] v116_2_address1;
output   v116_2_ce1;
output   v116_2_we1;
output  [31:0] v116_2_d1;
input  [31:0] v116_2_q1;
output  [3:0] v116_3_address0;
output   v116_3_ce0;
output   v116_3_we0;
output  [31:0] v116_3_d0;
input  [31:0] v116_3_q0;
output  [3:0] v116_3_address1;
output   v116_3_ce1;
output   v116_3_we1;
output  [31:0] v116_3_d1;
input  [31:0] v116_3_q1;
output  [31:0] grp_fu_350_p_din0;
output  [31:0] grp_fu_350_p_din1;
output  [1:0] grp_fu_350_p_opcode;
input  [31:0] grp_fu_350_p_dout0;
output   grp_fu_350_p_ce;
output  [31:0] grp_fu_354_p_din0;
output  [31:0] grp_fu_354_p_din1;
output  [1:0] grp_fu_354_p_opcode;
input  [31:0] grp_fu_354_p_dout0;
output   grp_fu_354_p_ce;
output  [31:0] grp_fu_358_p_din0;
output  [31:0] grp_fu_358_p_din1;
input  [31:0] grp_fu_358_p_dout0;
output   grp_fu_358_p_ce;
output  [31:0] grp_fu_362_p_din0;
output  [31:0] grp_fu_362_p_din1;
input  [31:0] grp_fu_362_p_dout0;
output   grp_fu_362_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln27_reg_1134;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_596;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_600;
wire   [31:0] grp_fu_512_p2;
reg   [31:0] reg_604;
wire   [31:0] grp_fu_516_p2;
reg   [31:0] reg_608;
wire   [31:0] grp_fu_520_p2;
reg   [31:0] reg_612;
wire   [31:0] grp_fu_524_p2;
reg   [31:0] reg_616;
wire   [31:0] grp_fu_528_p2;
reg   [31:0] reg_620;
wire   [31:0] grp_fu_532_p2;
reg   [31:0] reg_624;
wire   [0:0] icmp_ln27_fu_646_p2;
wire   [6:0] select_ln26_fu_678_p3;
reg   [6:0] select_ln26_reg_1138;
wire   [0:0] trunc_ln27_1_fu_698_p1;
reg   [0:0] trunc_ln27_1_reg_1144;
wire   [2:0] lshr_ln2_fu_718_p4;
reg   [2:0] lshr_ln2_reg_1159;
reg   [3:0] lshr_ln29_1_reg_1204;
wire   [1:0] tmp_s_fu_758_p4;
reg   [1:0] tmp_s_reg_1209;
reg   [0:0] tmp_35_reg_1255;
wire   [31:0] v3_fu_823_p3;
reg   [31:0] v3_reg_1260;
reg   [31:0] v113_0_load_reg_1279;
reg   [31:0] v113_1_load_reg_1284;
reg   [31:0] v113_2_load_reg_1289;
reg   [31:0] v113_3_load_reg_1294;
reg   [31:0] v113_4_load_reg_1299;
reg   [31:0] v113_5_load_reg_1304;
reg   [31:0] v113_6_load_reg_1309;
reg   [31:0] v113_7_load_reg_1314;
reg   [31:0] v113_0_load_1_reg_1319;
reg   [31:0] v113_1_load_1_reg_1324;
reg   [31:0] v113_2_load_1_reg_1329;
reg   [31:0] v113_3_load_1_reg_1334;
reg   [31:0] v113_4_load_1_reg_1339;
reg   [31:0] v113_5_load_1_reg_1344;
reg   [31:0] v113_6_load_1_reg_1349;
reg   [31:0] v113_7_load_1_reg_1354;
wire   [31:0] v10_fu_836_p1;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v16_fu_840_p1;
reg   [3:0] v116_0_addr_reg_1434;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] v116_0_addr_reg_1434_pp0_iter2_reg;
reg   [3:0] v116_0_addr_reg_1434_pp0_iter3_reg;
wire   [31:0] v52_1_fu_918_p1;
reg   [3:0] v116_1_addr_reg_1444;
reg   [3:0] v116_1_addr_reg_1444_pp0_iter2_reg;
reg   [3:0] v116_1_addr_reg_1444_pp0_iter3_reg;
reg   [3:0] v116_2_addr_reg_1449;
reg   [3:0] v116_2_addr_reg_1449_pp0_iter2_reg;
reg   [3:0] v116_2_addr_reg_1449_pp0_iter3_reg;
reg   [3:0] v116_3_addr_reg_1454;
reg   [3:0] v116_3_addr_reg_1454_pp0_iter2_reg;
reg   [3:0] v116_3_addr_reg_1454_pp0_iter3_reg;
reg   [3:0] v116_0_addr_1_reg_1459;
reg   [3:0] v116_0_addr_1_reg_1459_pp0_iter2_reg;
reg   [3:0] v116_0_addr_1_reg_1459_pp0_iter3_reg;
reg   [3:0] v116_1_addr_1_reg_1464;
reg   [3:0] v116_1_addr_1_reg_1464_pp0_iter2_reg;
reg   [3:0] v116_1_addr_1_reg_1464_pp0_iter3_reg;
reg   [3:0] v116_2_addr_1_reg_1469;
reg   [3:0] v116_2_addr_1_reg_1469_pp0_iter2_reg;
reg   [3:0] v116_2_addr_1_reg_1469_pp0_iter3_reg;
reg   [3:0] v116_3_addr_1_reg_1474;
reg   [3:0] v116_3_addr_1_reg_1474_pp0_iter2_reg;
reg   [3:0] v116_3_addr_1_reg_1474_pp0_iter3_reg;
reg   [31:0] v116_0_load_reg_1479;
reg   [31:0] v116_1_load_reg_1484;
reg   [31:0] v116_2_load_reg_1489;
reg   [31:0] v116_3_load_reg_1494;
reg   [31:0] v116_0_load_1_reg_1499;
reg   [31:0] v116_1_load_1_reg_1504;
reg   [31:0] v116_2_load_1_reg_1509;
reg   [31:0] v116_3_load_1_reg_1514;
reg   [3:0] v116_0_addr_2_reg_1519;
reg   [3:0] v116_0_addr_2_reg_1519_pp0_iter2_reg;
reg   [3:0] v116_0_addr_2_reg_1519_pp0_iter3_reg;
reg   [3:0] v116_1_addr_2_reg_1524;
reg   [3:0] v116_1_addr_2_reg_1524_pp0_iter2_reg;
reg   [3:0] v116_1_addr_2_reg_1524_pp0_iter3_reg;
reg   [3:0] v116_2_addr_2_reg_1529;
reg   [3:0] v116_2_addr_2_reg_1529_pp0_iter2_reg;
reg   [3:0] v116_2_addr_2_reg_1529_pp0_iter3_reg;
reg   [3:0] v116_3_addr_2_reg_1534;
reg   [3:0] v116_3_addr_2_reg_1534_pp0_iter2_reg;
reg   [3:0] v116_3_addr_2_reg_1534_pp0_iter3_reg;
reg   [3:0] v116_0_addr_3_reg_1539;
reg   [3:0] v116_0_addr_3_reg_1539_pp0_iter2_reg;
reg   [3:0] v116_0_addr_3_reg_1539_pp0_iter3_reg;
reg   [3:0] v116_1_addr_3_reg_1544;
reg   [3:0] v116_1_addr_3_reg_1544_pp0_iter2_reg;
reg   [3:0] v116_1_addr_3_reg_1544_pp0_iter3_reg;
reg   [3:0] v116_2_addr_3_reg_1549;
reg   [3:0] v116_2_addr_3_reg_1549_pp0_iter2_reg;
reg   [3:0] v116_2_addr_3_reg_1549_pp0_iter3_reg;
reg   [3:0] v116_3_addr_3_reg_1554;
reg   [3:0] v116_3_addr_3_reg_1554_pp0_iter2_reg;
reg   [3:0] v116_3_addr_3_reg_1554_pp0_iter3_reg;
reg   [31:0] v11_reg_1559;
reg   [31:0] v17_reg_1564;
wire   [31:0] grp_fu_544_p2;
reg   [31:0] v23_reg_1569;
wire   [31:0] grp_fu_548_p2;
reg   [31:0] v29_reg_1574;
wire   [31:0] grp_fu_552_p2;
reg   [31:0] v35_reg_1579;
wire   [31:0] grp_fu_556_p2;
reg   [31:0] v41_reg_1584;
wire   [31:0] grp_fu_560_p2;
reg   [31:0] v47_reg_1589;
wire   [31:0] grp_fu_564_p2;
reg   [31:0] v53_reg_1594;
wire   [31:0] grp_fu_568_p2;
reg   [31:0] v11_1_reg_1599;
wire   [31:0] grp_fu_572_p2;
reg   [31:0] v17_1_reg_1604;
wire   [31:0] grp_fu_576_p2;
reg   [31:0] v23_1_reg_1609;
wire   [31:0] grp_fu_580_p2;
reg   [31:0] v29_1_reg_1614;
wire   [31:0] grp_fu_584_p2;
reg   [31:0] v35_1_reg_1619;
wire   [31:0] grp_fu_588_p2;
reg   [31:0] v41_1_reg_1624;
wire   [31:0] grp_fu_592_p2;
reg   [31:0] v47_1_reg_1629;
reg   [31:0] v116_0_load_2_reg_1634;
reg   [31:0] v116_1_load_2_reg_1639;
reg   [31:0] v116_2_load_2_reg_1644;
reg   [31:0] v116_3_load_2_reg_1649;
reg   [31:0] v116_0_load_3_reg_1654;
reg   [31:0] v116_1_load_3_reg_1659;
reg   [31:0] v116_2_load_3_reg_1664;
reg   [31:0] v116_3_load_3_reg_1669;
wire   [31:0] v9_fu_963_p1;
reg   [31:0] v53_1_reg_1679;
wire   [31:0] v15_fu_967_p1;
wire   [31:0] v21_fu_971_p1;
wire   [31:0] v27_fu_975_p1;
wire   [31:0] v33_fu_979_p1;
wire   [31:0] v39_fu_983_p1;
wire   [31:0] v45_fu_987_p1;
wire   [31:0] v51_fu_991_p1;
wire   [31:0] v9_2_fu_995_p1;
wire   [31:0] v15_2_fu_999_p1;
wire   [31:0] v21_2_fu_1003_p1;
wire   [31:0] v27_2_fu_1007_p1;
wire   [31:0] v33_2_fu_1011_p1;
wire   [31:0] v39_2_fu_1015_p1;
wire   [31:0] v45_2_fu_1019_p1;
wire   [31:0] v51_2_fu_1023_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln26_fu_712_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_fu_736_p1;
wire   [63:0] zext_ln33_1_fu_778_p1;
wire   [63:0] zext_ln29_fu_896_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln60_fu_910_p1;
wire   [63:0] zext_ln26_1_fu_940_p1;
wire   [63:0] zext_ln60_1_fu_955_p1;
reg   [31:0] v3_1_fu_98;
wire    ap_block_pp0_stage2;
reg   [6:0] v49_fu_102;
wire   [6:0] add_ln28_fu_922_p2;
wire    ap_loop_init;
reg   [6:0] v4_fu_106;
wire   [6:0] select_ln27_fu_686_p3;
reg   [8:0] indvar_flatten_fu_110;
wire   [8:0] add_ln27_1_fu_652_p2;
reg    v0_0_ce0_local;
reg    v0_1_ce0_local;
reg    v113_0_ce1_local;
reg    v113_0_ce0_local;
reg    v113_1_ce1_local;
reg    v113_1_ce0_local;
reg    v113_2_ce1_local;
reg    v113_2_ce0_local;
reg    v113_3_ce1_local;
reg    v113_3_ce0_local;
reg    v113_4_ce1_local;
reg    v113_4_ce0_local;
reg    v113_5_ce1_local;
reg    v113_5_ce0_local;
reg    v113_6_ce1_local;
reg    v113_6_ce0_local;
reg    v113_7_ce1_local;
reg    v113_7_ce0_local;
reg    v116_0_ce1_local;
reg   [3:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [3:0] v116_0_address0_local;
reg    v116_0_we1_local;
reg   [31:0] v116_0_d1_local;
wire   [31:0] bitcast_ln36_fu_1027_p1;
reg    v116_0_we0_local;
reg   [31:0] v116_0_d0_local;
wire   [31:0] bitcast_ln64_fu_1032_p1;
wire   [31:0] bitcast_ln36_1_fu_1067_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln64_1_fu_1072_p1;
reg    v116_1_ce1_local;
reg   [3:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [3:0] v116_1_address0_local;
reg    v116_1_we1_local;
reg   [31:0] v116_1_d1_local;
wire   [31:0] bitcast_ln43_fu_1037_p1;
reg    v116_1_we0_local;
reg   [31:0] v116_1_d0_local;
wire   [31:0] bitcast_ln71_fu_1042_p1;
wire   [31:0] bitcast_ln43_1_fu_1077_p1;
wire   [31:0] bitcast_ln71_1_fu_1082_p1;
reg    v116_2_ce1_local;
reg   [3:0] v116_2_address1_local;
reg    v116_2_ce0_local;
reg   [3:0] v116_2_address0_local;
reg    v116_2_we1_local;
reg   [31:0] v116_2_d1_local;
wire   [31:0] bitcast_ln50_fu_1047_p1;
reg    v116_2_we0_local;
reg   [31:0] v116_2_d0_local;
wire   [31:0] bitcast_ln78_fu_1052_p1;
wire   [31:0] bitcast_ln50_1_fu_1087_p1;
wire   [31:0] bitcast_ln78_1_fu_1092_p1;
reg    v116_3_ce1_local;
reg   [3:0] v116_3_address1_local;
reg    v116_3_ce0_local;
reg   [3:0] v116_3_address0_local;
reg    v116_3_we1_local;
reg   [31:0] v116_3_d1_local;
wire   [31:0] bitcast_ln57_fu_1057_p1;
reg    v116_3_we0_local;
reg   [31:0] v116_3_d0_local;
wire   [31:0] bitcast_ln86_fu_1062_p1;
wire   [31:0] bitcast_ln57_1_fu_1097_p1;
wire   [31:0] bitcast_ln86_1_fu_1102_p1;
reg   [31:0] grp_fu_504_p0;
reg   [31:0] grp_fu_504_p1;
reg   [31:0] grp_fu_508_p0;
reg   [31:0] grp_fu_508_p1;
reg   [31:0] grp_fu_512_p0;
reg   [31:0] grp_fu_512_p1;
reg   [31:0] grp_fu_516_p0;
reg   [31:0] grp_fu_516_p1;
reg   [31:0] grp_fu_520_p0;
reg   [31:0] grp_fu_520_p1;
reg   [31:0] grp_fu_524_p0;
reg   [31:0] grp_fu_524_p1;
reg   [31:0] grp_fu_528_p0;
reg   [31:0] grp_fu_528_p1;
reg   [31:0] grp_fu_532_p0;
reg   [31:0] grp_fu_532_p1;
reg   [31:0] grp_fu_536_p0;
wire   [31:0] grp_fu_544_p0;
wire   [31:0] grp_fu_548_p0;
wire   [31:0] grp_fu_552_p0;
wire   [31:0] grp_fu_556_p0;
wire   [31:0] grp_fu_560_p0;
wire   [31:0] grp_fu_564_p0;
wire   [31:0] grp_fu_568_p0;
wire   [31:0] grp_fu_572_p0;
wire   [31:0] grp_fu_576_p0;
wire   [31:0] grp_fu_580_p0;
wire   [31:0] grp_fu_584_p0;
wire   [31:0] grp_fu_588_p0;
wire   [31:0] grp_fu_592_p0;
wire   [0:0] tmp_34_fu_670_p3;
wire   [6:0] add_ln27_fu_664_p2;
wire   [4:0] lshr_ln_fu_702_p4;
wire   [5:0] trunc_ln27_fu_694_p1;
wire   [8:0] tmp_fu_728_p3;
wire   [8:0] tmp_120_fu_768_p4;
wire   [0:0] icmp_ln31_fu_818_p2;
wire   [31:0] v6_fu_811_p3;
wire   [3:0] or_ln_fu_903_p3;
wire   [3:0] or_ln26_1_fu_932_p4;
wire   [3:0] or_ln60_1_fu_948_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_1_fu_98 = 32'd0;
#0 v49_fu_102 = 7'd0;
#0 v4_fu_106 = 7'd0;
#0 indvar_flatten_fu_110 = 9'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U96(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_512_p0),.din1(grp_fu_512_p1),.ce(1'b1),.dout(grp_fu_512_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U97(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_516_p0),.din1(grp_fu_516_p1),.ce(1'b1),.dout(grp_fu_516_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_520_p0),.din1(grp_fu_520_p1),.ce(1'b1),.dout(grp_fu_520_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_524_p0),.din1(grp_fu_524_p1),.ce(1'b1),.dout(grp_fu_524_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_528_p0),.din1(grp_fu_528_p1),.ce(1'b1),.dout(grp_fu_528_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_532_p0),.din1(grp_fu_532_p1),.ce(1'b1),.dout(grp_fu_532_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_544_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_544_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_548_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_548_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U106(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_552_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_552_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U107(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_556_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_556_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U108(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_560_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_560_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U109(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_564_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_564_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U110(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_568_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_568_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U111(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_572_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_572_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U112(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_576_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_576_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U113(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_580_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_580_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U114(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_584_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_584_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U115(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_588_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_588_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U116(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_592_p0),.din1(v3_reg_1260),.ce(1'b1),.dout(grp_fu_592_p2));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_110 <= 9'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_646_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_110 <= add_ln27_1_fu_652_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v49_fu_102 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v49_fu_102 <= add_ln28_fu_922_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_106 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln27_fu_646_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_fu_106 <= select_ln27_fu_686_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln27_reg_1134 <= icmp_ln27_fu_646_p2;
        lshr_ln29_1_reg_1204 <= {{select_ln26_fu_678_p3[5:2]}};
        lshr_ln2_reg_1159 <= {{select_ln26_fu_678_p3[5:3]}};
        select_ln26_reg_1138 <= select_ln26_fu_678_p3;
        tmp_35_reg_1255 <= select_ln26_fu_678_p3[32'd2];
        tmp_s_reg_1209 <= {{select_ln26_fu_678_p3[5:4]}};
        trunc_ln27_1_reg_1144 <= trunc_ln27_1_fu_698_p1;
        v116_0_addr_2_reg_1519[0] <= zext_ln26_1_fu_940_p1[0];
v116_0_addr_2_reg_1519[3 : 2] <= zext_ln26_1_fu_940_p1[3 : 2];
        v116_0_addr_2_reg_1519_pp0_iter2_reg[0] <= v116_0_addr_2_reg_1519[0];
v116_0_addr_2_reg_1519_pp0_iter2_reg[3 : 2] <= v116_0_addr_2_reg_1519[3 : 2];
        v116_0_addr_2_reg_1519_pp0_iter3_reg[0] <= v116_0_addr_2_reg_1519_pp0_iter2_reg[0];
v116_0_addr_2_reg_1519_pp0_iter3_reg[3 : 2] <= v116_0_addr_2_reg_1519_pp0_iter2_reg[3 : 2];
        v116_0_addr_3_reg_1539[3 : 2] <= zext_ln60_1_fu_955_p1[3 : 2];
        v116_0_addr_3_reg_1539_pp0_iter2_reg[3 : 2] <= v116_0_addr_3_reg_1539[3 : 2];
        v116_0_addr_3_reg_1539_pp0_iter3_reg[3 : 2] <= v116_0_addr_3_reg_1539_pp0_iter2_reg[3 : 2];
        v116_1_addr_2_reg_1524[0] <= zext_ln26_1_fu_940_p1[0];
v116_1_addr_2_reg_1524[3 : 2] <= zext_ln26_1_fu_940_p1[3 : 2];
        v116_1_addr_2_reg_1524_pp0_iter2_reg[0] <= v116_1_addr_2_reg_1524[0];
v116_1_addr_2_reg_1524_pp0_iter2_reg[3 : 2] <= v116_1_addr_2_reg_1524[3 : 2];
        v116_1_addr_2_reg_1524_pp0_iter3_reg[0] <= v116_1_addr_2_reg_1524_pp0_iter2_reg[0];
v116_1_addr_2_reg_1524_pp0_iter3_reg[3 : 2] <= v116_1_addr_2_reg_1524_pp0_iter2_reg[3 : 2];
        v116_1_addr_3_reg_1544[3 : 2] <= zext_ln60_1_fu_955_p1[3 : 2];
        v116_1_addr_3_reg_1544_pp0_iter2_reg[3 : 2] <= v116_1_addr_3_reg_1544[3 : 2];
        v116_1_addr_3_reg_1544_pp0_iter3_reg[3 : 2] <= v116_1_addr_3_reg_1544_pp0_iter2_reg[3 : 2];
        v116_2_addr_2_reg_1529[0] <= zext_ln26_1_fu_940_p1[0];
v116_2_addr_2_reg_1529[3 : 2] <= zext_ln26_1_fu_940_p1[3 : 2];
        v116_2_addr_2_reg_1529_pp0_iter2_reg[0] <= v116_2_addr_2_reg_1529[0];
v116_2_addr_2_reg_1529_pp0_iter2_reg[3 : 2] <= v116_2_addr_2_reg_1529[3 : 2];
        v116_2_addr_2_reg_1529_pp0_iter3_reg[0] <= v116_2_addr_2_reg_1529_pp0_iter2_reg[0];
v116_2_addr_2_reg_1529_pp0_iter3_reg[3 : 2] <= v116_2_addr_2_reg_1529_pp0_iter2_reg[3 : 2];
        v116_2_addr_3_reg_1549[3 : 2] <= zext_ln60_1_fu_955_p1[3 : 2];
        v116_2_addr_3_reg_1549_pp0_iter2_reg[3 : 2] <= v116_2_addr_3_reg_1549[3 : 2];
        v116_2_addr_3_reg_1549_pp0_iter3_reg[3 : 2] <= v116_2_addr_3_reg_1549_pp0_iter2_reg[3 : 2];
        v116_3_addr_2_reg_1534[0] <= zext_ln26_1_fu_940_p1[0];
v116_3_addr_2_reg_1534[3 : 2] <= zext_ln26_1_fu_940_p1[3 : 2];
        v116_3_addr_2_reg_1534_pp0_iter2_reg[0] <= v116_3_addr_2_reg_1534[0];
v116_3_addr_2_reg_1534_pp0_iter2_reg[3 : 2] <= v116_3_addr_2_reg_1534[3 : 2];
        v116_3_addr_2_reg_1534_pp0_iter3_reg[0] <= v116_3_addr_2_reg_1534_pp0_iter2_reg[0];
v116_3_addr_2_reg_1534_pp0_iter3_reg[3 : 2] <= v116_3_addr_2_reg_1534_pp0_iter2_reg[3 : 2];
        v116_3_addr_3_reg_1554[3 : 2] <= zext_ln60_1_fu_955_p1[3 : 2];
        v116_3_addr_3_reg_1554_pp0_iter2_reg[3 : 2] <= v116_3_addr_3_reg_1554[3 : 2];
        v116_3_addr_3_reg_1554_pp0_iter3_reg[3 : 2] <= v116_3_addr_3_reg_1554_pp0_iter2_reg[3 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_596 <= grp_fu_350_p_dout0;
        reg_600 <= grp_fu_354_p_dout0;
        reg_604 <= grp_fu_512_p2;
        reg_608 <= grp_fu_516_p2;
        reg_612 <= grp_fu_520_p2;
        reg_616 <= grp_fu_524_p2;
        reg_620 <= grp_fu_528_p2;
        reg_624 <= grp_fu_532_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_0_load_1_reg_1319 <= v113_0_q0;
        v113_0_load_reg_1279 <= v113_0_q1;
        v113_1_load_1_reg_1324 <= v113_1_q0;
        v113_1_load_reg_1284 <= v113_1_q1;
        v113_2_load_1_reg_1329 <= v113_2_q0;
        v113_2_load_reg_1289 <= v113_2_q1;
        v113_3_load_1_reg_1334 <= v113_3_q0;
        v113_3_load_reg_1294 <= v113_3_q1;
        v113_4_load_1_reg_1339 <= v113_4_q0;
        v113_4_load_reg_1299 <= v113_4_q1;
        v113_5_load_1_reg_1344 <= v113_5_q0;
        v113_5_load_reg_1304 <= v113_5_q1;
        v113_6_load_1_reg_1349 <= v113_6_q0;
        v113_6_load_reg_1309 <= v113_6_q1;
        v113_7_load_1_reg_1354 <= v113_7_q0;
        v113_7_load_reg_1314 <= v113_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_addr_1_reg_1459[3 : 1] <= zext_ln60_fu_910_p1[3 : 1];
        v116_0_addr_1_reg_1459_pp0_iter2_reg[3 : 1] <= v116_0_addr_1_reg_1459[3 : 1];
        v116_0_addr_1_reg_1459_pp0_iter3_reg[3 : 1] <= v116_0_addr_1_reg_1459_pp0_iter2_reg[3 : 1];
        v116_0_addr_reg_1434 <= zext_ln29_fu_896_p1;
        v116_0_addr_reg_1434_pp0_iter2_reg <= v116_0_addr_reg_1434;
        v116_0_addr_reg_1434_pp0_iter3_reg <= v116_0_addr_reg_1434_pp0_iter2_reg;
        v116_1_addr_1_reg_1464[3 : 1] <= zext_ln60_fu_910_p1[3 : 1];
        v116_1_addr_1_reg_1464_pp0_iter2_reg[3 : 1] <= v116_1_addr_1_reg_1464[3 : 1];
        v116_1_addr_1_reg_1464_pp0_iter3_reg[3 : 1] <= v116_1_addr_1_reg_1464_pp0_iter2_reg[3 : 1];
        v116_1_addr_reg_1444 <= zext_ln29_fu_896_p1;
        v116_1_addr_reg_1444_pp0_iter2_reg <= v116_1_addr_reg_1444;
        v116_1_addr_reg_1444_pp0_iter3_reg <= v116_1_addr_reg_1444_pp0_iter2_reg;
        v116_2_addr_1_reg_1469[3 : 1] <= zext_ln60_fu_910_p1[3 : 1];
        v116_2_addr_1_reg_1469_pp0_iter2_reg[3 : 1] <= v116_2_addr_1_reg_1469[3 : 1];
        v116_2_addr_1_reg_1469_pp0_iter3_reg[3 : 1] <= v116_2_addr_1_reg_1469_pp0_iter2_reg[3 : 1];
        v116_2_addr_reg_1449 <= zext_ln29_fu_896_p1;
        v116_2_addr_reg_1449_pp0_iter2_reg <= v116_2_addr_reg_1449;
        v116_2_addr_reg_1449_pp0_iter3_reg <= v116_2_addr_reg_1449_pp0_iter2_reg;
        v116_3_addr_1_reg_1474[3 : 1] <= zext_ln60_fu_910_p1[3 : 1];
        v116_3_addr_1_reg_1474_pp0_iter2_reg[3 : 1] <= v116_3_addr_1_reg_1474[3 : 1];
        v116_3_addr_1_reg_1474_pp0_iter3_reg[3 : 1] <= v116_3_addr_1_reg_1474_pp0_iter2_reg[3 : 1];
        v116_3_addr_reg_1454 <= zext_ln29_fu_896_p1;
        v116_3_addr_reg_1454_pp0_iter2_reg <= v116_3_addr_reg_1454;
        v116_3_addr_reg_1454_pp0_iter3_reg <= v116_3_addr_reg_1454_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_1_reg_1499 <= v116_0_q0;
        v116_0_load_reg_1479 <= v116_0_q1;
        v116_1_load_1_reg_1504 <= v116_1_q0;
        v116_1_load_reg_1484 <= v116_1_q1;
        v116_2_load_1_reg_1509 <= v116_2_q0;
        v116_2_load_reg_1489 <= v116_2_q1;
        v116_3_load_1_reg_1514 <= v116_3_q0;
        v116_3_load_reg_1494 <= v116_3_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_2_reg_1634 <= v116_0_q1;
        v116_0_load_3_reg_1654 <= v116_0_q0;
        v116_1_load_2_reg_1639 <= v116_1_q1;
        v116_1_load_3_reg_1659 <= v116_1_q0;
        v116_2_load_2_reg_1644 <= v116_2_q1;
        v116_2_load_3_reg_1664 <= v116_2_q0;
        v116_3_load_2_reg_1649 <= v116_3_q1;
        v116_3_load_3_reg_1669 <= v116_3_q0;
        v11_reg_1559 <= grp_fu_358_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v11_1_reg_1599 <= grp_fu_568_p2;
        v17_1_reg_1604 <= grp_fu_572_p2;
        v17_reg_1564 <= grp_fu_362_p_dout0;
        v23_1_reg_1609 <= grp_fu_576_p2;
        v23_reg_1569 <= grp_fu_544_p2;
        v29_1_reg_1614 <= grp_fu_580_p2;
        v29_reg_1574 <= grp_fu_548_p2;
        v35_1_reg_1619 <= grp_fu_584_p2;
        v35_reg_1579 <= grp_fu_552_p2;
        v3_reg_1260 <= v3_fu_823_p3;
        v41_1_reg_1624 <= grp_fu_588_p2;
        v41_reg_1584 <= grp_fu_556_p2;
        v47_1_reg_1629 <= grp_fu_592_p2;
        v47_reg_1589 <= grp_fu_560_p2;
        v53_reg_1594 <= grp_fu_564_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_1134 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_fu_98 <= v3_fu_823_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v53_1_reg_1679 <= grp_fu_358_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_1134 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_504_p0 = v9_2_fu_995_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_504_p0 = v9_fu_963_p1;
    end else begin
        grp_fu_504_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_504_p1 = v11_1_reg_1599;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_504_p1 = v11_reg_1559;
    end else begin
        grp_fu_504_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_508_p0 = v15_2_fu_999_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_508_p0 = v15_fu_967_p1;
    end else begin
        grp_fu_508_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_508_p1 = v17_1_reg_1604;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_508_p1 = v17_reg_1564;
    end else begin
        grp_fu_508_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_512_p0 = v21_2_fu_1003_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_512_p0 = v21_fu_971_p1;
    end else begin
        grp_fu_512_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_512_p1 = v23_1_reg_1609;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_512_p1 = v23_reg_1569;
    end else begin
        grp_fu_512_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_516_p0 = v27_2_fu_1007_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_516_p0 = v27_fu_975_p1;
    end else begin
        grp_fu_516_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_516_p1 = v29_1_reg_1614;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_516_p1 = v29_reg_1574;
    end else begin
        grp_fu_516_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_520_p0 = v33_2_fu_1011_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_520_p0 = v33_fu_979_p1;
    end else begin
        grp_fu_520_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_520_p1 = v35_1_reg_1619;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_520_p1 = v35_reg_1579;
    end else begin
        grp_fu_520_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_524_p0 = v39_2_fu_1015_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_524_p0 = v39_fu_983_p1;
    end else begin
        grp_fu_524_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_524_p1 = v41_1_reg_1624;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_524_p1 = v41_reg_1584;
    end else begin
        grp_fu_524_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_528_p0 = v45_2_fu_1019_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_528_p0 = v45_fu_987_p1;
    end else begin
        grp_fu_528_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_528_p1 = v47_1_reg_1629;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_528_p1 = v47_reg_1589;
    end else begin
        grp_fu_528_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_532_p0 = v51_2_fu_1023_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_532_p0 = v51_fu_991_p1;
    end else begin
        grp_fu_532_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_532_p1 = v53_1_reg_1679;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_532_p1 = v53_reg_1594;
    end else begin
        grp_fu_532_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_536_p0 = v52_1_fu_918_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_536_p0 = v10_fu_836_p1;
    end else begin
        grp_fu_536_p0 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_0_ce1_local = 1'b1;
    end else begin
        v113_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_1_ce1_local = 1'b1;
    end else begin
        v113_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_2_ce0_local = 1'b1;
    end else begin
        v113_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_2_ce1_local = 1'b1;
    end else begin
        v113_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_3_ce0_local = 1'b1;
    end else begin
        v113_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_3_ce1_local = 1'b1;
    end else begin
        v113_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_4_ce0_local = 1'b1;
    end else begin
        v113_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_4_ce1_local = 1'b1;
    end else begin
        v113_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_5_ce0_local = 1'b1;
    end else begin
        v113_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_5_ce1_local = 1'b1;
    end else begin
        v113_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_6_ce0_local = 1'b1;
    end else begin
        v113_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_6_ce1_local = 1'b1;
    end else begin
        v113_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_7_ce0_local = 1'b1;
    end else begin
        v113_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v113_7_ce1_local = 1'b1;
    end else begin
        v113_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address0_local = v116_0_addr_3_reg_1539_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address0_local = v116_0_addr_1_reg_1459_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln60_1_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = zext_ln60_fu_910_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_0_address1_local = v116_0_addr_2_reg_1519_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_1434_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address1_local = zext_ln26_1_fu_940_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_896_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d0_local = bitcast_ln64_1_fu_1072_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d0_local = bitcast_ln64_fu_1032_p1;
        end else begin
            v116_0_d0_local = 'bx;
        end
    end else begin
        v116_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_0_d1_local = bitcast_ln36_1_fu_1067_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_0_d1_local = bitcast_ln36_fu_1027_p1;
        end else begin
            v116_0_d1_local = 'bx;
        end
    end else begin
        v116_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address0_local = v116_1_addr_3_reg_1544_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address0_local = v116_1_addr_1_reg_1464_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln60_1_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = zext_ln60_fu_910_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_1_address1_local = v116_1_addr_2_reg_1524_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_1444_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address1_local = zext_ln26_1_fu_940_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_896_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d0_local = bitcast_ln71_1_fu_1082_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d0_local = bitcast_ln71_fu_1042_p1;
        end else begin
            v116_1_d0_local = 'bx;
        end
    end else begin
        v116_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_1_d1_local = bitcast_ln43_1_fu_1077_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_1_d1_local = bitcast_ln43_fu_1037_p1;
        end else begin
            v116_1_d1_local = 'bx;
        end
    end else begin
        v116_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_address0_local = v116_2_addr_3_reg_1549_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_2_address0_local = v116_2_addr_1_reg_1469_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address0_local = zext_ln60_1_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = zext_ln60_fu_910_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_2_address1_local = v116_2_addr_2_reg_1529_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_2_address1_local = v116_2_addr_reg_1449_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address1_local = zext_ln26_1_fu_940_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address1_local = zext_ln29_fu_896_p1;
    end else begin
        v116_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_2_ce1_local = 1'b1;
    end else begin
        v116_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_2_d0_local = bitcast_ln78_1_fu_1092_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_2_d0_local = bitcast_ln78_fu_1052_p1;
        end else begin
            v116_2_d0_local = 'bx;
        end
    end else begin
        v116_2_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_2_d1_local = bitcast_ln50_1_fu_1087_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_2_d1_local = bitcast_ln50_fu_1047_p1;
        end else begin
            v116_2_d1_local = 'bx;
        end
    end else begin
        v116_2_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_2_we1_local = 1'b1;
    end else begin
        v116_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_address0_local = v116_3_addr_3_reg_1554_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_3_address0_local = v116_3_addr_1_reg_1474_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address0_local = zext_ln60_1_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = zext_ln60_fu_910_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_3_address1_local = v116_3_addr_2_reg_1534_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_3_address1_local = v116_3_addr_reg_1454_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address1_local = zext_ln26_1_fu_940_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address1_local = zext_ln29_fu_896_p1;
    end else begin
        v116_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v116_3_ce1_local = 1'b1;
    end else begin
        v116_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_3_d0_local = bitcast_ln86_1_fu_1102_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_3_d0_local = bitcast_ln86_fu_1062_p1;
        end else begin
            v116_3_d0_local = 'bx;
        end
    end else begin
        v116_3_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            v116_3_d1_local = bitcast_ln57_1_fu_1097_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_3_d1_local = bitcast_ln57_fu_1057_p1;
        end else begin
            v116_3_d1_local = 'bx;
        end
    end else begin
        v116_3_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_3_we1_local = 1'b1;
    end else begin
        v116_3_we1_local = 1'b0;
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
assign add_ln27_1_fu_652_p2 = (indvar_flatten_fu_110 + 9'd1);
assign add_ln27_fu_664_p2 = (v4_fu_106 + 7'd1);
assign add_ln28_fu_922_p2 = (select_ln26_reg_1138 + 7'd16);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
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
assign bitcast_ln36_1_fu_1067_p1 = reg_596;
assign bitcast_ln36_fu_1027_p1 = reg_596;
assign bitcast_ln43_1_fu_1077_p1 = reg_600;
assign bitcast_ln43_fu_1037_p1 = reg_600;
assign bitcast_ln50_1_fu_1087_p1 = reg_604;
assign bitcast_ln50_fu_1047_p1 = reg_604;
assign bitcast_ln57_1_fu_1097_p1 = reg_608;
assign bitcast_ln57_fu_1057_p1 = reg_608;
assign bitcast_ln64_1_fu_1072_p1 = reg_612;
assign bitcast_ln64_fu_1032_p1 = reg_612;
assign bitcast_ln71_1_fu_1082_p1 = reg_616;
assign bitcast_ln71_fu_1042_p1 = reg_616;
assign bitcast_ln78_1_fu_1092_p1 = reg_620;
assign bitcast_ln78_fu_1052_p1 = reg_620;
assign bitcast_ln86_1_fu_1102_p1 = reg_624;
assign bitcast_ln86_fu_1062_p1 = reg_624;
assign grp_fu_350_p_ce = 1'b1;
assign grp_fu_350_p_din0 = grp_fu_504_p0;
assign grp_fu_350_p_din1 = grp_fu_504_p1;
assign grp_fu_350_p_opcode = 2'd0;
assign grp_fu_354_p_ce = 1'b1;
assign grp_fu_354_p_din0 = grp_fu_508_p0;
assign grp_fu_354_p_din1 = grp_fu_508_p1;
assign grp_fu_354_p_opcode = 2'd0;
assign grp_fu_358_p_ce = 1'b1;
assign grp_fu_358_p_din0 = grp_fu_536_p0;
assign grp_fu_358_p_din1 = v3_reg_1260;
assign grp_fu_362_p_ce = 1'b1;
assign grp_fu_362_p_din0 = v16_fu_840_p1;
assign grp_fu_362_p_din1 = v3_reg_1260;
assign grp_fu_544_p0 = v113_2_load_reg_1289;
assign grp_fu_548_p0 = v113_3_load_reg_1294;
assign grp_fu_552_p0 = v113_4_load_reg_1299;
assign grp_fu_556_p0 = v113_5_load_reg_1304;
assign grp_fu_560_p0 = v113_6_load_reg_1309;
assign grp_fu_564_p0 = v113_7_load_reg_1314;
assign grp_fu_568_p0 = v113_0_load_1_reg_1319;
assign grp_fu_572_p0 = v113_1_load_1_reg_1324;
assign grp_fu_576_p0 = v113_2_load_1_reg_1329;
assign grp_fu_580_p0 = v113_3_load_1_reg_1334;
assign grp_fu_584_p0 = v113_4_load_1_reg_1339;
assign grp_fu_588_p0 = v113_5_load_1_reg_1344;
assign grp_fu_592_p0 = v113_6_load_1_reg_1349;
assign icmp_ln27_fu_646_p2 = ((indvar_flatten_fu_110 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_818_p2 = ((select_ln26_reg_1138 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_718_p4 = {{select_ln26_fu_678_p3[5:3]}};
assign lshr_ln_fu_702_p4 = {{select_ln27_fu_686_p3[5:1]}};
assign or_ln26_1_fu_932_p4 = {{{tmp_s_reg_1209}, {1'd1}}, {tmp_35_reg_1255}};
assign or_ln60_1_fu_948_p3 = {{tmp_s_reg_1209}, {2'd3}};
assign or_ln_fu_903_p3 = {{lshr_ln2_reg_1159}, {1'd1}};
assign select_ln26_fu_678_p3 = ((tmp_34_fu_670_p3[0:0] == 1'b1) ? 7'd0 : v49_fu_102);
assign select_ln27_fu_686_p3 = ((tmp_34_fu_670_p3[0:0] == 1'b1) ? add_ln27_fu_664_p2 : v4_fu_106);
assign tmp_120_fu_768_p4 = {{{trunc_ln27_fu_694_p1}, {tmp_s_fu_758_p4}}, {1'd1}};
assign tmp_34_fu_670_p3 = v49_fu_102[32'd6];
assign tmp_fu_728_p3 = {{trunc_ln27_fu_694_p1}, {lshr_ln2_fu_718_p4}};
assign tmp_s_fu_758_p4 = {{select_ln26_fu_678_p3[5:4]}};
assign trunc_ln27_1_fu_698_p1 = select_ln27_fu_686_p3[0:0];
assign trunc_ln27_fu_694_p1 = select_ln27_fu_686_p3[5:0];
assign v0_0_address0 = zext_ln26_fu_712_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln26_fu_712_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v10_fu_836_p1 = v113_0_load_reg_1279;
assign v113_0_address0 = zext_ln33_1_fu_778_p1;
assign v113_0_address1 = zext_ln33_fu_736_p1;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_0_ce1 = v113_0_ce1_local;
assign v113_1_address0 = zext_ln33_1_fu_778_p1;
assign v113_1_address1 = zext_ln33_fu_736_p1;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_1_ce1 = v113_1_ce1_local;
assign v113_2_address0 = zext_ln33_1_fu_778_p1;
assign v113_2_address1 = zext_ln33_fu_736_p1;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_2_ce1 = v113_2_ce1_local;
assign v113_3_address0 = zext_ln33_1_fu_778_p1;
assign v113_3_address1 = zext_ln33_fu_736_p1;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_3_ce1 = v113_3_ce1_local;
assign v113_4_address0 = zext_ln33_1_fu_778_p1;
assign v113_4_address1 = zext_ln33_fu_736_p1;
assign v113_4_ce0 = v113_4_ce0_local;
assign v113_4_ce1 = v113_4_ce1_local;
assign v113_5_address0 = zext_ln33_1_fu_778_p1;
assign v113_5_address1 = zext_ln33_fu_736_p1;
assign v113_5_ce0 = v113_5_ce0_local;
assign v113_5_ce1 = v113_5_ce1_local;
assign v113_6_address0 = zext_ln33_1_fu_778_p1;
assign v113_6_address1 = zext_ln33_fu_736_p1;
assign v113_6_ce0 = v113_6_ce0_local;
assign v113_6_ce1 = v113_6_ce1_local;
assign v113_7_address0 = zext_ln33_1_fu_778_p1;
assign v113_7_address1 = zext_ln33_fu_736_p1;
assign v113_7_ce0 = v113_7_ce0_local;
assign v113_7_ce1 = v113_7_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = v116_0_d0_local;
assign v116_0_d1 = v116_0_d1_local;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = v116_1_d0_local;
assign v116_1_d1 = v116_1_d1_local;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_address1 = v116_2_address1_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = v116_2_d0_local;
assign v116_2_d1 = v116_2_d1_local;
assign v116_2_we0 = v116_2_we0_local;
assign v116_2_we1 = v116_2_we1_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_address1 = v116_3_address1_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = v116_3_d0_local;
assign v116_3_d1 = v116_3_d1_local;
assign v116_3_we0 = v116_3_we0_local;
assign v116_3_we1 = v116_3_we1_local;
assign v15_2_fu_999_p1 = v116_1_load_2_reg_1639;
assign v15_fu_967_p1 = v116_1_load_reg_1484;
assign v16_fu_840_p1 = v113_1_load_reg_1284;
assign v21_2_fu_1003_p1 = v116_2_load_2_reg_1644;
assign v21_fu_971_p1 = v116_2_load_reg_1489;
assign v27_2_fu_1007_p1 = v116_3_load_2_reg_1649;
assign v27_fu_975_p1 = v116_3_load_reg_1494;
assign v33_2_fu_1011_p1 = v116_0_load_3_reg_1654;
assign v33_fu_979_p1 = v116_0_load_1_reg_1499;
assign v39_2_fu_1015_p1 = v116_1_load_3_reg_1659;
assign v39_fu_983_p1 = v116_1_load_1_reg_1504;
assign v3_fu_823_p3 = ((icmp_ln31_fu_818_p2[0:0] == 1'b1) ? v6_fu_811_p3 : v3_1_fu_98);
assign v45_2_fu_1019_p1 = v116_2_load_3_reg_1664;
assign v45_fu_987_p1 = v116_2_load_1_reg_1509;
assign v51_2_fu_1023_p1 = v116_3_load_3_reg_1669;
assign v51_fu_991_p1 = v116_3_load_1_reg_1514;
assign v52_1_fu_918_p1 = v113_7_load_1_reg_1354;
assign v6_fu_811_p3 = ((trunc_ln27_1_reg_1144[0:0] == 1'b1) ? v0_1_q0 : v0_0_q0);
assign v9_2_fu_995_p1 = v116_0_load_2_reg_1634;
assign v9_fu_963_p1 = v116_0_load_reg_1479;
assign zext_ln26_1_fu_940_p1 = or_ln26_1_fu_932_p4;
assign zext_ln26_fu_712_p1 = lshr_ln_fu_702_p4;
assign zext_ln29_fu_896_p1 = lshr_ln29_1_reg_1204;
assign zext_ln33_1_fu_778_p1 = tmp_120_fu_768_p4;
assign zext_ln33_fu_736_p1 = tmp_fu_728_p3;
assign zext_ln60_1_fu_955_p1 = or_ln60_1_fu_948_p3;
assign zext_ln60_fu_910_p1 = or_ln_fu_903_p3;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_1459[0] <= 1'b1;
    v116_0_addr_1_reg_1459_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_1_reg_1459_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1464[0] <= 1'b1;
    v116_1_addr_1_reg_1464_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1464_pp0_iter3_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1469[0] <= 1'b1;
    v116_2_addr_1_reg_1469_pp0_iter2_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1469_pp0_iter3_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1474[0] <= 1'b1;
    v116_3_addr_1_reg_1474_pp0_iter2_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1474_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_2_reg_1519[1] <= 1'b1;
    v116_0_addr_2_reg_1519_pp0_iter2_reg[1] <= 1'b1;
    v116_0_addr_2_reg_1519_pp0_iter3_reg[1] <= 1'b1;
    v116_1_addr_2_reg_1524[1] <= 1'b1;
    v116_1_addr_2_reg_1524_pp0_iter2_reg[1] <= 1'b1;
    v116_1_addr_2_reg_1524_pp0_iter3_reg[1] <= 1'b1;
    v116_2_addr_2_reg_1529[1] <= 1'b1;
    v116_2_addr_2_reg_1529_pp0_iter2_reg[1] <= 1'b1;
    v116_2_addr_2_reg_1529_pp0_iter3_reg[1] <= 1'b1;
    v116_3_addr_2_reg_1534[1] <= 1'b1;
    v116_3_addr_2_reg_1534_pp0_iter2_reg[1] <= 1'b1;
    v116_3_addr_2_reg_1534_pp0_iter3_reg[1] <= 1'b1;
    v116_0_addr_3_reg_1539[1:0] <= 2'b11;
    v116_0_addr_3_reg_1539_pp0_iter2_reg[1:0] <= 2'b11;
    v116_0_addr_3_reg_1539_pp0_iter3_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_1544[1:0] <= 2'b11;
    v116_1_addr_3_reg_1544_pp0_iter2_reg[1:0] <= 2'b11;
    v116_1_addr_3_reg_1544_pp0_iter3_reg[1:0] <= 2'b11;
    v116_2_addr_3_reg_1549[1:0] <= 2'b11;
    v116_2_addr_3_reg_1549_pp0_iter2_reg[1:0] <= 2'b11;
    v116_2_addr_3_reg_1549_pp0_iter3_reg[1:0] <= 2'b11;
    v116_3_addr_3_reg_1554[1:0] <= 2'b11;
    v116_3_addr_3_reg_1554_pp0_iter2_reg[1:0] <= 2'b11;
    v116_3_addr_3_reg_1554_pp0_iter3_reg[1:0] <= 2'b11;
end
endmodule 