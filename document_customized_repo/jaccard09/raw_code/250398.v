module atax_atax_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_address0,v0_ce0,v0_q0,v113_0_address0,v113_0_ce0,v113_0_q0,v113_0_address1,v113_0_ce1,v113_0_q1,v113_1_address0,v113_1_ce0,v113_1_q0,v113_1_address1,v113_1_ce1,v113_1_q1,v113_2_address0,v113_2_ce0,v113_2_q0,v113_2_address1,v113_2_ce1,v113_2_q1,v113_3_address0,v113_3_ce0,v113_3_q0,v113_3_address1,v113_3_ce1,v113_3_q1,v116_0_address0,v116_0_ce0,v116_0_we0,v116_0_d0,v116_0_q0,v116_0_address1,v116_0_ce1,v116_0_we1,v116_0_d1,v116_0_q1,v116_1_address0,v116_1_ce0,v116_1_we0,v116_1_d0,v116_1_q0,v116_1_address1,v116_1_ce1,v116_1_we1,v116_1_d1,v116_1_q1,v116_2_address0,v116_2_ce0,v116_2_we0,v116_2_d0,v116_2_q0,v116_2_address1,v116_2_ce1,v116_2_we1,v116_2_d1,v116_2_q1,v116_3_address0,v116_3_ce0,v116_3_we0,v116_3_d0,v116_3_q0,v116_3_address1,v116_3_ce1,v116_3_we1,v116_3_d1,v116_3_q1,v116_4_address0,v116_4_ce0,v116_4_we0,v116_4_d0,v116_4_q0,v116_4_address1,v116_4_ce1,v116_4_q1,v116_5_address0,v116_5_ce0,v116_5_we0,v116_5_d0,v116_5_q0,v116_5_address1,v116_5_ce1,v116_5_q1,v116_6_address0,v116_6_ce0,v116_6_we0,v116_6_d0,v116_6_address1,v116_6_ce1,v116_6_q1,v116_7_address0,v116_7_ce0,v116_7_we0,v116_7_d0,v116_7_address1,v116_7_ce1,v116_7_q1,grp_fu_367_p_din0,grp_fu_367_p_din1,grp_fu_367_p_opcode,grp_fu_367_p_dout0,grp_fu_367_p_ce,grp_fu_371_p_din0,grp_fu_371_p_din1,grp_fu_371_p_dout0,grp_fu_371_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
output  [9:0] v113_0_address0;
output   v113_0_ce0;
input  [31:0] v113_0_q0;
output  [9:0] v113_0_address1;
output   v113_0_ce1;
input  [31:0] v113_0_q1;
output  [9:0] v113_1_address0;
output   v113_1_ce0;
input  [31:0] v113_1_q0;
output  [9:0] v113_1_address1;
output   v113_1_ce1;
input  [31:0] v113_1_q1;
output  [9:0] v113_2_address0;
output   v113_2_ce0;
input  [31:0] v113_2_q0;
output  [9:0] v113_2_address1;
output   v113_2_ce1;
input  [31:0] v113_2_q1;
output  [9:0] v113_3_address0;
output   v113_3_ce0;
input  [31:0] v113_3_q0;
output  [9:0] v113_3_address1;
output   v113_3_ce1;
input  [31:0] v113_3_q1;
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
input  [31:0] v116_4_q1;
output  [2:0] v116_5_address0;
output   v116_5_ce0;
output   v116_5_we0;
output  [31:0] v116_5_d0;
input  [31:0] v116_5_q0;
output  [2:0] v116_5_address1;
output   v116_5_ce1;
input  [31:0] v116_5_q1;
output  [2:0] v116_6_address0;
output   v116_6_ce0;
output   v116_6_we0;
output  [31:0] v116_6_d0;
output  [2:0] v116_6_address1;
output   v116_6_ce1;
input  [31:0] v116_6_q1;
output  [2:0] v116_7_address0;
output   v116_7_ce0;
output   v116_7_we0;
output  [31:0] v116_7_d0;
output  [2:0] v116_7_address1;
output   v116_7_ce1;
input  [31:0] v116_7_q1;
output  [31:0] grp_fu_367_p_din0;
output  [31:0] grp_fu_367_p_din1;
output  [1:0] grp_fu_367_p_opcode;
input  [31:0] grp_fu_367_p_dout0;
output   grp_fu_367_p_ce;
output  [31:0] grp_fu_371_p_din0;
output  [31:0] grp_fu_371_p_din1;
input  [31:0] grp_fu_371_p_dout0;
output   grp_fu_371_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln27_reg_1075;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_529;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_533;
reg   [31:0] reg_537;
reg   [31:0] reg_541;
reg   [31:0] reg_545;
reg   [31:0] reg_549;
reg   [31:0] reg_553;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_485_p2;
reg   [31:0] reg_557;
wire   [31:0] grp_fu_489_p2;
reg   [31:0] reg_561;
wire   [31:0] grp_fu_493_p2;
reg   [31:0] reg_565;
wire   [31:0] grp_fu_497_p2;
reg   [31:0] reg_569;
wire   [31:0] grp_fu_501_p2;
reg   [31:0] reg_573;
wire   [0:0] icmp_ln27_fu_595_p2;
reg   [0:0] icmp_ln27_reg_1075_pp0_iter1_reg;
reg   [0:0] icmp_ln27_reg_1075_pp0_iter2_reg;
reg   [0:0] icmp_ln27_reg_1075_pp0_iter3_reg;
wire   [6:0] select_ln26_fu_627_p3;
reg   [6:0] select_ln26_reg_1079;
wire   [5:0] trunc_ln27_fu_643_p1;
reg   [5:0] trunc_ln27_reg_1085;
wire   [2:0] lshr_ln29_1_fu_678_p4;
reg   [2:0] lshr_ln29_1_reg_1116;
reg   [1:0] tmp_124_reg_1141;
reg   [0:0] tmp_36_reg_1148;
wire   [31:0] v3_fu_742_p3;
reg   [31:0] v3_reg_1153;
reg   [31:0] v113_2_load_1_reg_1163;
reg   [31:0] v113_3_load_1_reg_1168;
reg   [2:0] v116_0_addr_reg_1213;
reg   [2:0] v116_0_addr_reg_1213_pp0_iter2_reg;
reg   [2:0] v116_0_addr_reg_1213_pp0_iter3_reg;
reg   [2:0] v116_0_addr_reg_1213_pp0_iter4_reg;
wire   [31:0] v10_fu_799_p1;
wire   [31:0] v16_fu_804_p1;
wire   [31:0] v22_fu_809_p1;
wire   [31:0] v28_fu_814_p1;
wire   [31:0] v34_fu_819_p1;
wire   [31:0] v40_fu_824_p1;
reg   [31:0] v113_2_load_3_reg_1248;
reg   [31:0] v113_3_load_3_reg_1253;
reg   [2:0] v116_1_addr_reg_1258;
reg   [2:0] v116_1_addr_reg_1258_pp0_iter2_reg;
reg   [2:0] v116_1_addr_reg_1258_pp0_iter3_reg;
reg   [2:0] v116_1_addr_reg_1258_pp0_iter4_reg;
reg   [2:0] v116_2_addr_reg_1263;
reg   [2:0] v116_2_addr_reg_1263_pp0_iter2_reg;
reg   [2:0] v116_2_addr_reg_1263_pp0_iter3_reg;
reg   [2:0] v116_2_addr_reg_1263_pp0_iter4_reg;
reg   [2:0] v116_3_addr_reg_1268;
reg   [2:0] v116_3_addr_reg_1268_pp0_iter2_reg;
reg   [2:0] v116_3_addr_reg_1268_pp0_iter3_reg;
reg   [2:0] v116_3_addr_reg_1268_pp0_iter4_reg;
reg   [2:0] v116_4_addr_reg_1273;
reg   [2:0] v116_4_addr_reg_1273_pp0_iter2_reg;
reg   [2:0] v116_4_addr_reg_1273_pp0_iter3_reg;
reg   [2:0] v116_4_addr_reg_1273_pp0_iter4_reg;
reg   [2:0] v116_5_addr_reg_1278;
reg   [2:0] v116_5_addr_reg_1278_pp0_iter2_reg;
reg   [2:0] v116_5_addr_reg_1278_pp0_iter3_reg;
reg   [2:0] v116_5_addr_reg_1278_pp0_iter4_reg;
reg   [2:0] v116_6_addr_reg_1283;
reg   [2:0] v116_6_addr_reg_1283_pp0_iter2_reg;
reg   [2:0] v116_6_addr_reg_1283_pp0_iter3_reg;
reg   [2:0] v116_6_addr_reg_1283_pp0_iter4_reg;
reg   [2:0] v116_7_addr_reg_1289;
reg   [2:0] v116_7_addr_reg_1289_pp0_iter2_reg;
reg   [2:0] v116_7_addr_reg_1289_pp0_iter3_reg;
reg   [2:0] v116_7_addr_reg_1289_pp0_iter4_reg;
reg   [31:0] v116_0_load_reg_1295;
wire   [31:0] v46_fu_839_p1;
wire   [31:0] v52_fu_843_p1;
wire   [31:0] v10_1_fu_866_p1;
wire   [31:0] v16_1_fu_871_p1;
wire   [31:0] v22_1_fu_876_p1;
wire   [31:0] v28_1_fu_881_p1;
reg   [31:0] v116_1_load_reg_1330;
reg   [31:0] v116_2_load_reg_1335;
reg   [31:0] v116_3_load_reg_1340;
reg   [31:0] v116_4_load_reg_1345;
reg   [31:0] v116_5_load_reg_1350;
reg   [2:0] v116_0_addr_1_reg_1355;
reg   [2:0] v116_0_addr_1_reg_1355_pp0_iter2_reg;
reg   [2:0] v116_0_addr_1_reg_1355_pp0_iter3_reg;
reg   [2:0] v116_0_addr_1_reg_1355_pp0_iter4_reg;
reg   [2:0] v116_1_addr_1_reg_1360;
reg   [2:0] v116_1_addr_1_reg_1360_pp0_iter2_reg;
reg   [2:0] v116_1_addr_1_reg_1360_pp0_iter3_reg;
reg   [2:0] v116_1_addr_1_reg_1360_pp0_iter4_reg;
reg   [2:0] v116_2_addr_1_reg_1365;
reg   [2:0] v116_2_addr_1_reg_1365_pp0_iter2_reg;
reg   [2:0] v116_2_addr_1_reg_1365_pp0_iter3_reg;
reg   [2:0] v116_2_addr_1_reg_1365_pp0_iter4_reg;
reg   [2:0] v116_3_addr_1_reg_1370;
reg   [2:0] v116_3_addr_1_reg_1370_pp0_iter2_reg;
reg   [2:0] v116_3_addr_1_reg_1370_pp0_iter3_reg;
reg   [2:0] v116_3_addr_1_reg_1370_pp0_iter4_reg;
reg   [2:0] v116_4_addr_1_reg_1375;
reg   [2:0] v116_4_addr_1_reg_1375_pp0_iter2_reg;
reg   [2:0] v116_4_addr_1_reg_1375_pp0_iter3_reg;
reg   [2:0] v116_4_addr_1_reg_1375_pp0_iter4_reg;
reg   [2:0] v116_5_addr_1_reg_1381;
reg   [2:0] v116_5_addr_1_reg_1381_pp0_iter2_reg;
reg   [2:0] v116_5_addr_1_reg_1381_pp0_iter3_reg;
reg   [2:0] v116_5_addr_1_reg_1381_pp0_iter4_reg;
reg   [2:0] v116_6_addr_1_reg_1387;
reg   [2:0] v116_6_addr_1_reg_1387_pp0_iter2_reg;
reg   [2:0] v116_6_addr_1_reg_1387_pp0_iter3_reg;
reg   [2:0] v116_6_addr_1_reg_1387_pp0_iter4_reg;
reg   [2:0] v116_7_addr_1_reg_1393;
reg   [2:0] v116_7_addr_1_reg_1393_pp0_iter2_reg;
reg   [2:0] v116_7_addr_1_reg_1393_pp0_iter3_reg;
reg   [2:0] v116_7_addr_1_reg_1393_pp0_iter4_reg;
wire   [31:0] v34_1_fu_886_p1;
wire   [31:0] v40_1_fu_891_p1;
wire   [31:0] v46_1_fu_896_p1;
wire   [31:0] v52_1_fu_900_p1;
reg   [31:0] v116_6_load_reg_1419;
reg   [31:0] v116_7_load_reg_1424;
reg   [31:0] v116_0_load_1_reg_1429;
reg   [31:0] v116_1_load_1_reg_1434;
reg   [31:0] v116_2_load_1_reg_1439;
reg   [31:0] v116_3_load_1_reg_1444;
reg   [31:0] v11_reg_1449;
wire   [31:0] grp_fu_509_p2;
reg   [31:0] v17_reg_1454;
wire   [31:0] grp_fu_513_p2;
reg   [31:0] v23_reg_1459;
wire   [31:0] grp_fu_517_p2;
reg   [31:0] v29_reg_1464;
wire   [31:0] grp_fu_521_p2;
reg   [31:0] v35_reg_1469;
wire   [31:0] grp_fu_525_p2;
reg   [31:0] v41_reg_1474;
reg   [31:0] v116_4_load_1_reg_1479;
reg   [31:0] v116_5_load_1_reg_1484;
reg   [31:0] v116_6_load_1_reg_1489;
reg   [31:0] v116_7_load_1_reg_1494;
wire   [31:0] v9_fu_904_p1;
reg   [31:0] v47_reg_1504;
reg   [31:0] v53_reg_1509;
reg   [31:0] v11_1_reg_1514;
reg   [31:0] v17_1_reg_1519;
reg   [31:0] v23_1_reg_1524;
reg   [31:0] v29_1_reg_1529;
wire   [31:0] v15_fu_908_p1;
wire   [31:0] v21_fu_912_p1;
wire   [31:0] v27_fu_916_p1;
wire   [31:0] v33_fu_920_p1;
wire   [31:0] v39_fu_924_p1;
reg   [31:0] v35_1_reg_1559;
reg   [31:0] v41_1_reg_1564;
reg   [31:0] v47_1_reg_1569;
reg   [31:0] v53_1_reg_1574;
wire   [31:0] v45_fu_928_p1;
wire   [31:0] v51_fu_932_p1;
wire   [31:0] v9_2_fu_936_p1;
wire   [31:0] v15_2_fu_940_p1;
wire   [31:0] v21_2_fu_944_p1;
wire   [31:0] v27_2_fu_948_p1;
wire   [31:0] v33_2_fu_952_p1;
wire   [31:0] v39_2_fu_956_p1;
wire   [31:0] v45_2_fu_960_p1;
wire   [31:0] v51_2_fu_964_p1;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln27_fu_647_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln33_fu_670_p1;
wire   [63:0] zext_ln61_fu_698_p1;
wire   [63:0] zext_ln33_1_fu_759_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln61_1_fu_775_p1;
wire   [63:0] zext_ln29_fu_788_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln26_fu_854_p1;
reg   [31:0] v3_1_fu_94;
reg   [6:0] v49_fu_98;
wire   [6:0] add_ln28_fu_829_p2;
wire    ap_loop_init;
reg   [6:0] v4_fu_102;
wire   [6:0] select_ln27_fu_635_p3;
reg   [8:0] indvar_flatten_fu_106;
wire   [8:0] add_ln27_1_fu_601_p2;
reg    v0_ce0_local;
reg    v113_0_ce1_local;
reg   [9:0] v113_0_address1_local;
reg    v113_0_ce0_local;
reg   [9:0] v113_0_address0_local;
reg    v113_1_ce1_local;
reg   [9:0] v113_1_address1_local;
reg    v113_1_ce0_local;
reg   [9:0] v113_1_address0_local;
reg    v113_2_ce1_local;
reg   [9:0] v113_2_address1_local;
reg    v113_2_ce0_local;
reg   [9:0] v113_2_address0_local;
reg    v113_3_ce1_local;
reg   [9:0] v113_3_address1_local;
reg    v113_3_ce0_local;
reg   [9:0] v113_3_address0_local;
reg    v116_0_ce1_local;
reg   [2:0] v116_0_address1_local;
reg    v116_0_ce0_local;
reg   [2:0] v116_0_address0_local;
reg    v116_0_we1_local;
wire   [31:0] bitcast_ln36_fu_968_p1;
reg    v116_0_we0_local;
wire   [31:0] bitcast_ln36_1_fu_998_p1;
reg    v116_1_ce1_local;
reg   [2:0] v116_1_address1_local;
reg    v116_1_ce0_local;
reg   [2:0] v116_1_address0_local;
reg    v116_1_we1_local;
wire   [31:0] bitcast_ln43_fu_973_p1;
reg    v116_1_we0_local;
wire   [31:0] bitcast_ln43_1_fu_1003_p1;
reg    v116_2_ce1_local;
reg   [2:0] v116_2_address1_local;
reg    v116_2_ce0_local;
reg   [2:0] v116_2_address0_local;
reg    v116_2_we1_local;
wire   [31:0] bitcast_ln50_fu_978_p1;
reg    v116_2_we0_local;
wire   [31:0] bitcast_ln50_1_fu_1008_p1;
reg    v116_3_ce1_local;
reg   [2:0] v116_3_address1_local;
reg    v116_3_ce0_local;
reg   [2:0] v116_3_address0_local;
reg    v116_3_we1_local;
wire   [31:0] bitcast_ln57_fu_983_p1;
reg    v116_3_we0_local;
wire   [31:0] bitcast_ln57_1_fu_1013_p1;
reg    v116_4_ce0_local;
reg   [2:0] v116_4_address0_local;
reg    v116_4_ce1_local;
reg    v116_4_we0_local;
reg   [31:0] v116_4_d0_local;
wire   [31:0] bitcast_ln64_fu_988_p1;
wire   [31:0] bitcast_ln64_1_fu_1028_p1;
reg    v116_5_ce0_local;
reg   [2:0] v116_5_address0_local;
reg    v116_5_ce1_local;
reg    v116_5_we0_local;
reg   [31:0] v116_5_d0_local;
wire   [31:0] bitcast_ln71_fu_993_p1;
wire   [31:0] bitcast_ln71_1_fu_1033_p1;
reg    v116_6_ce1_local;
reg   [2:0] v116_6_address1_local;
reg    v116_6_we0_local;
reg   [31:0] v116_6_d0_local;
wire   [31:0] bitcast_ln78_fu_1018_p1;
reg    v116_6_ce0_local;
reg   [2:0] v116_6_address0_local;
wire   [31:0] bitcast_ln78_1_fu_1038_p1;
reg    v116_7_ce1_local;
reg   [2:0] v116_7_address1_local;
reg    v116_7_we0_local;
reg   [31:0] v116_7_d0_local;
wire   [31:0] bitcast_ln86_fu_1023_p1;
reg    v116_7_ce0_local;
reg   [2:0] v116_7_address0_local;
wire   [31:0] bitcast_ln86_1_fu_1043_p1;
reg   [31:0] grp_fu_481_p0;
reg   [31:0] grp_fu_481_p1;
reg   [31:0] grp_fu_485_p0;
reg   [31:0] grp_fu_485_p1;
reg   [31:0] grp_fu_489_p0;
reg   [31:0] grp_fu_489_p1;
reg   [31:0] grp_fu_493_p0;
reg   [31:0] grp_fu_493_p1;
reg   [31:0] grp_fu_497_p0;
reg   [31:0] grp_fu_497_p1;
reg   [31:0] grp_fu_501_p0;
reg   [31:0] grp_fu_501_p1;
reg   [31:0] grp_fu_505_p0;
reg   [31:0] grp_fu_509_p0;
reg   [31:0] grp_fu_513_p0;
reg   [31:0] grp_fu_517_p0;
reg   [31:0] grp_fu_521_p0;
reg   [31:0] grp_fu_525_p0;
wire   [0:0] tmp_35_fu_619_p3;
wire   [6:0] add_ln27_fu_613_p2;
wire   [3:0] lshr_ln_fu_652_p4;
wire   [9:0] tmp_fu_662_p3;
wire   [9:0] tmp_s_fu_688_p4;
wire   [0:0] icmp_ln31_fu_737_p2;
wire   [9:0] tmp_125_fu_750_p5;
wire   [9:0] tmp_126_fu_767_p4;
wire   [2:0] or_ln26_1_fu_847_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage1;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v3_1_fu_94 = 32'd0;
#0 v49_fu_98 = 7'd0;
#0 v4_fu_102 = 7'd0;
#0 indvar_flatten_fu_106 = 9'd0;
#0 ap_done_reg = 1'b0;
end
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U74(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_485_p0),.din1(grp_fu_485_p1),.ce(1'b1),.dout(grp_fu_485_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U75(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_489_p0),.din1(grp_fu_489_p1),.ce(1'b1),.dout(grp_fu_489_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_493_p0),.din1(grp_fu_493_p1),.ce(1'b1),.dout(grp_fu_493_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_497_p0),.din1(grp_fu_497_p1),.ce(1'b1),.dout(grp_fu_497_p2));
atax_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_501_p0),.din1(grp_fu_501_p1),.ce(1'b1),.dout(grp_fu_501_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_509_p0),.din1(v3_reg_1153),.ce(1'b1),.dout(grp_fu_509_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_513_p0),.din1(v3_reg_1153),.ce(1'b1),.dout(grp_fu_513_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_517_p0),.din1(v3_reg_1153),.ce(1'b1),.dout(grp_fu_517_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_521_p0),.din1(v3_reg_1153),.ce(1'b1),.dout(grp_fu_521_p2));
atax_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_525_p0),.din1(v3_reg_1153),.ce(1'b1),.dout(grp_fu_525_p2));
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage1) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage1) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage1) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter4_stage1) & (ap_idle_pp0_0to3 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_106 <= 9'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_595_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvar_flatten_fu_106 <= add_ln27_1_fu_601_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v49_fu_98 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v49_fu_98 <= add_ln28_fu_829_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_102 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln27_fu_595_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_fu_102 <= select_ln27_fu_635_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln27_reg_1075 <= icmp_ln27_fu_595_p2;
        icmp_ln27_reg_1075_pp0_iter1_reg <= icmp_ln27_reg_1075;
        icmp_ln27_reg_1075_pp0_iter2_reg <= icmp_ln27_reg_1075_pp0_iter1_reg;
        icmp_ln27_reg_1075_pp0_iter3_reg <= icmp_ln27_reg_1075_pp0_iter2_reg;
        lshr_ln29_1_reg_1116 <= {{select_ln26_fu_627_p3[5:3]}};
        select_ln26_reg_1079 <= select_ln26_fu_627_p3;
        tmp_124_reg_1141 <= {{select_ln26_fu_627_p3[5:4]}};
        tmp_36_reg_1148 <= select_ln26_fu_627_p3[32'd2];
        trunc_ln27_reg_1085 <= trunc_ln27_fu_643_p1;
        v116_0_addr_1_reg_1355[2 : 1] <= zext_ln26_fu_854_p1[2 : 1];
        v116_0_addr_1_reg_1355_pp0_iter2_reg[2 : 1] <= v116_0_addr_1_reg_1355[2 : 1];
        v116_0_addr_1_reg_1355_pp0_iter3_reg[2 : 1] <= v116_0_addr_1_reg_1355_pp0_iter2_reg[2 : 1];
        v116_0_addr_1_reg_1355_pp0_iter4_reg[2 : 1] <= v116_0_addr_1_reg_1355_pp0_iter3_reg[2 : 1];
        v116_1_addr_1_reg_1360[2 : 1] <= zext_ln26_fu_854_p1[2 : 1];
        v116_1_addr_1_reg_1360_pp0_iter2_reg[2 : 1] <= v116_1_addr_1_reg_1360[2 : 1];
        v116_1_addr_1_reg_1360_pp0_iter3_reg[2 : 1] <= v116_1_addr_1_reg_1360_pp0_iter2_reg[2 : 1];
        v116_1_addr_1_reg_1360_pp0_iter4_reg[2 : 1] <= v116_1_addr_1_reg_1360_pp0_iter3_reg[2 : 1];
        v116_2_addr_1_reg_1365[2 : 1] <= zext_ln26_fu_854_p1[2 : 1];
        v116_2_addr_1_reg_1365_pp0_iter2_reg[2 : 1] <= v116_2_addr_1_reg_1365[2 : 1];
        v116_2_addr_1_reg_1365_pp0_iter3_reg[2 : 1] <= v116_2_addr_1_reg_1365_pp0_iter2_reg[2 : 1];
        v116_2_addr_1_reg_1365_pp0_iter4_reg[2 : 1] <= v116_2_addr_1_reg_1365_pp0_iter3_reg[2 : 1];
        v116_3_addr_1_reg_1370[2 : 1] <= zext_ln26_fu_854_p1[2 : 1];
        v116_3_addr_1_reg_1370_pp0_iter2_reg[2 : 1] <= v116_3_addr_1_reg_1370[2 : 1];
        v116_3_addr_1_reg_1370_pp0_iter3_reg[2 : 1] <= v116_3_addr_1_reg_1370_pp0_iter2_reg[2 : 1];
        v116_3_addr_1_reg_1370_pp0_iter4_reg[2 : 1] <= v116_3_addr_1_reg_1370_pp0_iter3_reg[2 : 1];
        v116_4_addr_1_reg_1375[2 : 1] <= zext_ln26_fu_854_p1[2 : 1];
        v116_4_addr_1_reg_1375_pp0_iter2_reg[2 : 1] <= v116_4_addr_1_reg_1375[2 : 1];
        v116_4_addr_1_reg_1375_pp0_iter3_reg[2 : 1] <= v116_4_addr_1_reg_1375_pp0_iter2_reg[2 : 1];
        v116_4_addr_1_reg_1375_pp0_iter4_reg[2 : 1] <= v116_4_addr_1_reg_1375_pp0_iter3_reg[2 : 1];
        v116_5_addr_1_reg_1381[2 : 1] <= zext_ln26_fu_854_p1[2 : 1];
        v116_5_addr_1_reg_1381_pp0_iter2_reg[2 : 1] <= v116_5_addr_1_reg_1381[2 : 1];
        v116_5_addr_1_reg_1381_pp0_iter3_reg[2 : 1] <= v116_5_addr_1_reg_1381_pp0_iter2_reg[2 : 1];
        v116_5_addr_1_reg_1381_pp0_iter4_reg[2 : 1] <= v116_5_addr_1_reg_1381_pp0_iter3_reg[2 : 1];
        v116_6_addr_1_reg_1387[2 : 1] <= zext_ln26_fu_854_p1[2 : 1];
        v116_6_addr_1_reg_1387_pp0_iter2_reg[2 : 1] <= v116_6_addr_1_reg_1387[2 : 1];
        v116_6_addr_1_reg_1387_pp0_iter3_reg[2 : 1] <= v116_6_addr_1_reg_1387_pp0_iter2_reg[2 : 1];
        v116_6_addr_1_reg_1387_pp0_iter4_reg[2 : 1] <= v116_6_addr_1_reg_1387_pp0_iter3_reg[2 : 1];
        v116_7_addr_1_reg_1393[2 : 1] <= zext_ln26_fu_854_p1[2 : 1];
        v116_7_addr_1_reg_1393_pp0_iter2_reg[2 : 1] <= v116_7_addr_1_reg_1393[2 : 1];
        v116_7_addr_1_reg_1393_pp0_iter3_reg[2 : 1] <= v116_7_addr_1_reg_1393_pp0_iter2_reg[2 : 1];
        v116_7_addr_1_reg_1393_pp0_iter4_reg[2 : 1] <= v116_7_addr_1_reg_1393_pp0_iter3_reg[2 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_529 <= v113_0_q1;
        reg_533 <= v113_1_q1;
        reg_537 <= v113_2_q1;
        reg_541 <= v113_3_q1;
        reg_545 <= v113_0_q0;
        reg_549 <= v113_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_553 <= grp_fu_367_p_dout0;
        reg_557 <= grp_fu_485_p2;
        reg_561 <= grp_fu_489_p2;
        reg_565 <= grp_fu_493_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_569 <= grp_fu_497_p2;
        reg_573 <= grp_fu_501_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v113_2_load_1_reg_1163 <= v113_2_q0;
        v113_3_load_1_reg_1168 <= v113_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v113_2_load_3_reg_1248 <= v113_2_q0;
        v113_3_load_3_reg_1253 <= v113_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_addr_reg_1213 <= zext_ln29_fu_788_p1;
        v116_0_addr_reg_1213_pp0_iter2_reg <= v116_0_addr_reg_1213;
        v116_0_addr_reg_1213_pp0_iter3_reg <= v116_0_addr_reg_1213_pp0_iter2_reg;
        v116_0_addr_reg_1213_pp0_iter4_reg <= v116_0_addr_reg_1213_pp0_iter3_reg;
        v116_1_addr_reg_1258 <= zext_ln29_fu_788_p1;
        v116_1_addr_reg_1258_pp0_iter2_reg <= v116_1_addr_reg_1258;
        v116_1_addr_reg_1258_pp0_iter3_reg <= v116_1_addr_reg_1258_pp0_iter2_reg;
        v116_1_addr_reg_1258_pp0_iter4_reg <= v116_1_addr_reg_1258_pp0_iter3_reg;
        v116_2_addr_reg_1263 <= zext_ln29_fu_788_p1;
        v116_2_addr_reg_1263_pp0_iter2_reg <= v116_2_addr_reg_1263;
        v116_2_addr_reg_1263_pp0_iter3_reg <= v116_2_addr_reg_1263_pp0_iter2_reg;
        v116_2_addr_reg_1263_pp0_iter4_reg <= v116_2_addr_reg_1263_pp0_iter3_reg;
        v116_3_addr_reg_1268 <= zext_ln29_fu_788_p1;
        v116_3_addr_reg_1268_pp0_iter2_reg <= v116_3_addr_reg_1268;
        v116_3_addr_reg_1268_pp0_iter3_reg <= v116_3_addr_reg_1268_pp0_iter2_reg;
        v116_3_addr_reg_1268_pp0_iter4_reg <= v116_3_addr_reg_1268_pp0_iter3_reg;
        v116_4_addr_reg_1273 <= zext_ln29_fu_788_p1;
        v116_4_addr_reg_1273_pp0_iter2_reg <= v116_4_addr_reg_1273;
        v116_4_addr_reg_1273_pp0_iter3_reg <= v116_4_addr_reg_1273_pp0_iter2_reg;
        v116_4_addr_reg_1273_pp0_iter4_reg <= v116_4_addr_reg_1273_pp0_iter3_reg;
        v116_5_addr_reg_1278 <= zext_ln29_fu_788_p1;
        v116_5_addr_reg_1278_pp0_iter2_reg <= v116_5_addr_reg_1278;
        v116_5_addr_reg_1278_pp0_iter3_reg <= v116_5_addr_reg_1278_pp0_iter2_reg;
        v116_5_addr_reg_1278_pp0_iter4_reg <= v116_5_addr_reg_1278_pp0_iter3_reg;
        v116_6_addr_reg_1283 <= zext_ln29_fu_788_p1;
        v116_6_addr_reg_1283_pp0_iter2_reg <= v116_6_addr_reg_1283;
        v116_6_addr_reg_1283_pp0_iter3_reg <= v116_6_addr_reg_1283_pp0_iter2_reg;
        v116_6_addr_reg_1283_pp0_iter4_reg <= v116_6_addr_reg_1283_pp0_iter3_reg;
        v116_7_addr_reg_1289 <= zext_ln29_fu_788_p1;
        v116_7_addr_reg_1289_pp0_iter2_reg <= v116_7_addr_reg_1289;
        v116_7_addr_reg_1289_pp0_iter3_reg <= v116_7_addr_reg_1289_pp0_iter2_reg;
        v116_7_addr_reg_1289_pp0_iter4_reg <= v116_7_addr_reg_1289_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_load_1_reg_1429 <= v116_0_q0;
        v116_1_load_1_reg_1434 <= v116_1_q0;
        v116_2_load_1_reg_1439 <= v116_2_q0;
        v116_3_load_1_reg_1444 <= v116_3_q0;
        v116_6_load_reg_1419 <= v116_6_q1;
        v116_7_load_reg_1424 <= v116_7_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_load_reg_1295 <= v116_0_q1;
        v116_1_load_reg_1330 <= v116_1_q1;
        v116_2_load_reg_1335 <= v116_2_q1;
        v116_3_load_reg_1340 <= v116_3_q1;
        v116_4_load_reg_1345 <= v116_4_q0;
        v116_5_load_reg_1350 <= v116_5_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_load_1_reg_1479 <= v116_4_q1;
        v116_5_load_1_reg_1484 <= v116_5_q1;
        v116_6_load_1_reg_1489 <= v116_6_q1;
        v116_7_load_1_reg_1494 <= v116_7_q1;
        v11_reg_1449 <= grp_fu_371_p_dout0;
        v17_reg_1454 <= grp_fu_509_p2;
        v23_reg_1459 <= grp_fu_513_p2;
        v29_reg_1464 <= grp_fu_517_p2;
        v35_reg_1469 <= grp_fu_521_p2;
        v41_reg_1474 <= grp_fu_525_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v11_1_reg_1514 <= grp_fu_513_p2;
        v17_1_reg_1519 <= grp_fu_517_p2;
        v23_1_reg_1524 <= grp_fu_521_p2;
        v29_1_reg_1529 <= grp_fu_525_p2;
        v47_reg_1504 <= grp_fu_371_p_dout0;
        v53_reg_1509 <= grp_fu_509_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v35_1_reg_1559 <= grp_fu_371_p_dout0;
        v41_1_reg_1564 <= grp_fu_509_p2;
        v47_1_reg_1569 <= grp_fu_513_p2;
        v53_1_reg_1574 <= grp_fu_517_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln27_reg_1075 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_1_fu_94 <= v3_fu_742_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_reg_1153 <= v3_fu_742_p3;
    end
end
always @ (*) begin
    if (((icmp_ln27_reg_1075 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln27_reg_1075_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter4_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_481_p0 = v33_2_fu_952_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_481_p0 = v45_fu_928_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_481_p0 = v9_fu_904_p1;
    end else begin
        grp_fu_481_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_481_p1 = v35_1_reg_1559;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_481_p1 = v47_reg_1504;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_481_p1 = v11_reg_1449;
    end else begin
        grp_fu_481_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_485_p0 = v39_2_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_485_p0 = v51_fu_932_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_485_p0 = v15_fu_908_p1;
    end else begin
        grp_fu_485_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_485_p1 = v41_1_reg_1564;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_485_p1 = v53_reg_1509;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_485_p1 = v17_reg_1454;
    end else begin
        grp_fu_485_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_489_p0 = v45_2_fu_960_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_489_p0 = v9_2_fu_936_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_489_p0 = v21_fu_912_p1;
    end else begin
        grp_fu_489_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_489_p1 = v47_1_reg_1569;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_489_p1 = v11_1_reg_1514;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_489_p1 = v23_reg_1459;
    end else begin
        grp_fu_489_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_493_p0 = v51_2_fu_964_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_493_p0 = v15_2_fu_940_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_493_p0 = v27_fu_916_p1;
    end else begin
        grp_fu_493_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_493_p1 = v53_1_reg_1574;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_493_p1 = v17_1_reg_1519;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_493_p1 = v29_reg_1464;
    end else begin
        grp_fu_493_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_497_p0 = v21_2_fu_944_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_497_p0 = v33_fu_920_p1;
        end else begin
            grp_fu_497_p0 = 'bx;
        end
    end else begin
        grp_fu_497_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_497_p1 = v23_1_reg_1524;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_497_p1 = v35_reg_1469;
        end else begin
            grp_fu_497_p1 = 'bx;
        end
    end else begin
        grp_fu_497_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_501_p0 = v27_2_fu_948_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_501_p0 = v39_fu_924_p1;
        end else begin
            grp_fu_501_p0 = 'bx;
        end
    end else begin
        grp_fu_501_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_501_p1 = v29_1_reg_1529;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_501_p1 = v41_reg_1474;
        end else begin
            grp_fu_501_p1 = 'bx;
        end
    end else begin
        grp_fu_501_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_505_p0 = v34_1_fu_886_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_505_p0 = v46_fu_839_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_505_p0 = v10_fu_799_p1;
        end else begin
            grp_fu_505_p0 = 'bx;
        end
    end else begin
        grp_fu_505_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_509_p0 = v40_1_fu_891_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_509_p0 = v52_fu_843_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_509_p0 = v16_fu_804_p1;
        end else begin
            grp_fu_509_p0 = 'bx;
        end
    end else begin
        grp_fu_509_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_513_p0 = v46_1_fu_896_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_513_p0 = v10_1_fu_866_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_513_p0 = v22_fu_809_p1;
        end else begin
            grp_fu_513_p0 = 'bx;
        end
    end else begin
        grp_fu_513_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_517_p0 = v52_1_fu_900_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_517_p0 = v16_1_fu_871_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_517_p0 = v28_fu_814_p1;
        end else begin
            grp_fu_517_p0 = 'bx;
        end
    end else begin
        grp_fu_517_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_521_p0 = v22_1_fu_876_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_521_p0 = v34_fu_819_p1;
        end else begin
            grp_fu_521_p0 = 'bx;
        end
    end else begin
        grp_fu_521_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_525_p0 = v28_1_fu_881_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_525_p0 = v40_fu_824_p1;
        end else begin
            grp_fu_525_p0 = 'bx;
        end
    end else begin
        grp_fu_525_p0 = 'bx;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_0_address0_local = zext_ln61_1_fu_775_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address0_local = zext_ln61_fu_698_p1;
        end else begin
            v113_0_address0_local = 'bx;
        end
    end else begin
        v113_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_0_address1_local = zext_ln33_1_fu_759_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_0_address1_local = zext_ln33_fu_670_p1;
        end else begin
            v113_0_address1_local = 'bx;
        end
    end else begin
        v113_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_0_ce0_local = 1'b1;
    end else begin
        v113_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_0_ce1_local = 1'b1;
    end else begin
        v113_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_1_address0_local = zext_ln61_1_fu_775_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_1_address0_local = zext_ln61_fu_698_p1;
        end else begin
            v113_1_address0_local = 'bx;
        end
    end else begin
        v113_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_1_address1_local = zext_ln33_1_fu_759_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_1_address1_local = zext_ln33_fu_670_p1;
        end else begin
            v113_1_address1_local = 'bx;
        end
    end else begin
        v113_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_1_ce0_local = 1'b1;
    end else begin
        v113_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_1_ce1_local = 1'b1;
    end else begin
        v113_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_2_address0_local = zext_ln61_1_fu_775_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_2_address0_local = zext_ln61_fu_698_p1;
        end else begin
            v113_2_address0_local = 'bx;
        end
    end else begin
        v113_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_2_address1_local = zext_ln33_1_fu_759_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_2_address1_local = zext_ln33_fu_670_p1;
        end else begin
            v113_2_address1_local = 'bx;
        end
    end else begin
        v113_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_2_ce0_local = 1'b1;
    end else begin
        v113_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_2_ce1_local = 1'b1;
    end else begin
        v113_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_3_address0_local = zext_ln61_1_fu_775_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_3_address0_local = zext_ln61_fu_698_p1;
        end else begin
            v113_3_address0_local = 'bx;
        end
    end else begin
        v113_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v113_3_address1_local = zext_ln33_1_fu_759_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v113_3_address1_local = zext_ln33_fu_670_p1;
        end else begin
            v113_3_address1_local = 'bx;
        end
    end else begin
        v113_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_3_ce0_local = 1'b1;
    end else begin
        v113_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v113_3_ce1_local = 1'b1;
    end else begin
        v113_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address0_local = v116_0_addr_1_reg_1355_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_0_address0_local = zext_ln26_fu_854_p1;
    end else begin
        v116_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_address1_local = v116_0_addr_reg_1213_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_address1_local = zext_ln29_fu_788_p1;
    end else begin
        v116_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_0_ce0_local = 1'b1;
    end else begin
        v116_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_0_ce1_local = 1'b1;
    end else begin
        v116_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_0_we0_local = 1'b1;
    end else begin
        v116_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_0_we1_local = 1'b1;
    end else begin
        v116_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address0_local = v116_1_addr_1_reg_1360_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_1_address0_local = zext_ln26_fu_854_p1;
    end else begin
        v116_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_address1_local = v116_1_addr_reg_1258_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_address1_local = zext_ln29_fu_788_p1;
    end else begin
        v116_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_1_ce0_local = 1'b1;
    end else begin
        v116_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_1_ce1_local = 1'b1;
    end else begin
        v116_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_1_we0_local = 1'b1;
    end else begin
        v116_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_1_we1_local = 1'b1;
    end else begin
        v116_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address0_local = v116_2_addr_1_reg_1365_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_2_address0_local = zext_ln26_fu_854_p1;
    end else begin
        v116_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_2_address1_local = v116_2_addr_reg_1263_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_address1_local = zext_ln29_fu_788_p1;
    end else begin
        v116_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_2_ce0_local = 1'b1;
    end else begin
        v116_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_2_ce1_local = 1'b1;
    end else begin
        v116_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_2_we0_local = 1'b1;
    end else begin
        v116_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_2_we1_local = 1'b1;
    end else begin
        v116_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address0_local = v116_3_addr_1_reg_1370_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_3_address0_local = zext_ln26_fu_854_p1;
    end else begin
        v116_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_3_address1_local = v116_3_addr_reg_1268_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_address1_local = zext_ln29_fu_788_p1;
    end else begin
        v116_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_3_ce0_local = 1'b1;
    end else begin
        v116_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_3_ce1_local = 1'b1;
    end else begin
        v116_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_3_we0_local = 1'b1;
    end else begin
        v116_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_3_we1_local = 1'b1;
    end else begin
        v116_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_address0_local = v116_4_addr_1_reg_1375_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_4_address0_local = v116_4_addr_reg_1273_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_4_address0_local = zext_ln29_fu_788_p1;
    end else begin
        v116_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_4_ce0_local = 1'b1;
    end else begin
        v116_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_4_ce1_local = 1'b1;
    end else begin
        v116_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_4_d0_local = bitcast_ln64_1_fu_1028_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_4_d0_local = bitcast_ln64_fu_988_p1;
    end else begin
        v116_4_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_4_we0_local = 1'b1;
    end else begin
        v116_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_5_address0_local = v116_5_addr_1_reg_1381_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_5_address0_local = v116_5_addr_reg_1278_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_5_address0_local = zext_ln29_fu_788_p1;
    end else begin
        v116_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_5_ce0_local = 1'b1;
    end else begin
        v116_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_5_ce1_local = 1'b1;
    end else begin
        v116_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v116_5_d0_local = bitcast_ln71_1_fu_1033_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v116_5_d0_local = bitcast_ln71_fu_993_p1;
    end else begin
        v116_5_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_5_we0_local = 1'b1;
    end else begin
        v116_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v116_6_address0_local = v116_6_addr_1_reg_1387_pp0_iter4_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v116_6_address0_local = v116_6_addr_reg_1283_pp0_iter4_reg;
        end else begin
            v116_6_address0_local = 'bx;
        end
    end else begin
        v116_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_6_address1_local = v116_6_addr_1_reg_1387;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v116_6_address1_local = v116_6_addr_reg_1283;
        end else begin
            v116_6_address1_local = 'bx;
        end
    end else begin
        v116_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_6_ce0_local = 1'b1;
    end else begin
        v116_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_6_ce1_local = 1'b1;
    end else begin
        v116_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v116_6_d0_local = bitcast_ln78_1_fu_1038_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v116_6_d0_local = bitcast_ln78_fu_1018_p1;
        end else begin
            v116_6_d0_local = 'bx;
        end
    end else begin
        v116_6_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_6_we0_local = 1'b1;
    end else begin
        v116_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v116_7_address0_local = v116_7_addr_1_reg_1393_pp0_iter4_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v116_7_address0_local = v116_7_addr_reg_1289_pp0_iter4_reg;
        end else begin
            v116_7_address0_local = 'bx;
        end
    end else begin
        v116_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            v116_7_address1_local = v116_7_addr_1_reg_1393;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v116_7_address1_local = v116_7_addr_reg_1289;
        end else begin
            v116_7_address1_local = 'bx;
        end
    end else begin
        v116_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_7_ce0_local = 1'b1;
    end else begin
        v116_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v116_7_ce1_local = 1'b1;
    end else begin
        v116_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter5 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v116_7_d0_local = bitcast_ln86_1_fu_1043_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v116_7_d0_local = bitcast_ln86_fu_1023_p1;
        end else begin
            v116_7_d0_local = 'bx;
        end
    end else begin
        v116_7_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v116_7_we0_local = 1'b1;
    end else begin
        v116_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter4_stage1) & (ap_idle_pp0_0to3 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln27_1_fu_601_p2 = (indvar_flatten_fu_106 + 9'd1);
assign add_ln27_fu_613_p2 = (v4_fu_102 + 7'd1);
assign add_ln28_fu_829_p2 = (select_ln26_reg_1079 + 7'd16);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bitcast_ln36_1_fu_998_p1 = reg_561;
assign bitcast_ln36_fu_968_p1 = reg_553;
assign bitcast_ln43_1_fu_1003_p1 = reg_565;
assign bitcast_ln43_fu_973_p1 = reg_557;
assign bitcast_ln50_1_fu_1008_p1 = reg_569;
assign bitcast_ln50_fu_978_p1 = reg_561;
assign bitcast_ln57_1_fu_1013_p1 = reg_573;
assign bitcast_ln57_fu_983_p1 = reg_565;
assign bitcast_ln64_1_fu_1028_p1 = reg_553;
assign bitcast_ln64_fu_988_p1 = reg_569;
assign bitcast_ln71_1_fu_1033_p1 = reg_557;
assign bitcast_ln71_fu_993_p1 = reg_573;
assign bitcast_ln78_1_fu_1038_p1 = reg_561;
assign bitcast_ln78_fu_1018_p1 = reg_553;
assign bitcast_ln86_1_fu_1043_p1 = reg_565;
assign bitcast_ln86_fu_1023_p1 = reg_557;
assign grp_fu_367_p_ce = 1'b1;
assign grp_fu_367_p_din0 = grp_fu_481_p0;
assign grp_fu_367_p_din1 = grp_fu_481_p1;
assign grp_fu_367_p_opcode = 2'd0;
assign grp_fu_371_p_ce = 1'b1;
assign grp_fu_371_p_din0 = grp_fu_505_p0;
assign grp_fu_371_p_din1 = v3_reg_1153;
assign icmp_ln27_fu_595_p2 = ((indvar_flatten_fu_106 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln31_fu_737_p2 = ((select_ln26_reg_1079 == 7'd0) ? 1'b1 : 1'b0);
assign lshr_ln29_1_fu_678_p4 = {{select_ln26_fu_627_p3[5:3]}};
assign lshr_ln_fu_652_p4 = {{select_ln26_fu_627_p3[5:2]}};
assign or_ln26_1_fu_847_p3 = {{tmp_124_reg_1141}, {1'd1}};
assign select_ln26_fu_627_p3 = ((tmp_35_fu_619_p3[0:0] == 1'b1) ? 7'd0 : v49_fu_98);
assign select_ln27_fu_635_p3 = ((tmp_35_fu_619_p3[0:0] == 1'b1) ? add_ln27_fu_613_p2 : v4_fu_102);
assign tmp_125_fu_750_p5 = {{{{trunc_ln27_reg_1085}, {tmp_124_reg_1141}}, {1'd1}}, {tmp_36_reg_1148}};
assign tmp_126_fu_767_p4 = {{{trunc_ln27_reg_1085}, {tmp_124_reg_1141}}, {2'd3}};
assign tmp_35_fu_619_p3 = v49_fu_98[32'd6];
assign tmp_fu_662_p3 = {{trunc_ln27_fu_643_p1}, {lshr_ln_fu_652_p4}};
assign tmp_s_fu_688_p4 = {{{trunc_ln27_fu_643_p1}, {lshr_ln29_1_fu_678_p4}}, {1'd1}};
assign trunc_ln27_fu_643_p1 = select_ln27_fu_635_p3[5:0];
assign v0_address0 = zext_ln27_fu_647_p1;
assign v0_ce0 = v0_ce0_local;
assign v10_1_fu_866_p1 = reg_529;
assign v10_fu_799_p1 = reg_529;
assign v113_0_address0 = v113_0_address0_local;
assign v113_0_address1 = v113_0_address1_local;
assign v113_0_ce0 = v113_0_ce0_local;
assign v113_0_ce1 = v113_0_ce1_local;
assign v113_1_address0 = v113_1_address0_local;
assign v113_1_address1 = v113_1_address1_local;
assign v113_1_ce0 = v113_1_ce0_local;
assign v113_1_ce1 = v113_1_ce1_local;
assign v113_2_address0 = v113_2_address0_local;
assign v113_2_address1 = v113_2_address1_local;
assign v113_2_ce0 = v113_2_ce0_local;
assign v113_2_ce1 = v113_2_ce1_local;
assign v113_3_address0 = v113_3_address0_local;
assign v113_3_address1 = v113_3_address1_local;
assign v113_3_ce0 = v113_3_ce0_local;
assign v113_3_ce1 = v113_3_ce1_local;
assign v116_0_address0 = v116_0_address0_local;
assign v116_0_address1 = v116_0_address1_local;
assign v116_0_ce0 = v116_0_ce0_local;
assign v116_0_ce1 = v116_0_ce1_local;
assign v116_0_d0 = bitcast_ln36_1_fu_998_p1;
assign v116_0_d1 = bitcast_ln36_fu_968_p1;
assign v116_0_we0 = v116_0_we0_local;
assign v116_0_we1 = v116_0_we1_local;
assign v116_1_address0 = v116_1_address0_local;
assign v116_1_address1 = v116_1_address1_local;
assign v116_1_ce0 = v116_1_ce0_local;
assign v116_1_ce1 = v116_1_ce1_local;
assign v116_1_d0 = bitcast_ln43_1_fu_1003_p1;
assign v116_1_d1 = bitcast_ln43_fu_973_p1;
assign v116_1_we0 = v116_1_we0_local;
assign v116_1_we1 = v116_1_we1_local;
assign v116_2_address0 = v116_2_address0_local;
assign v116_2_address1 = v116_2_address1_local;
assign v116_2_ce0 = v116_2_ce0_local;
assign v116_2_ce1 = v116_2_ce1_local;
assign v116_2_d0 = bitcast_ln50_1_fu_1008_p1;
assign v116_2_d1 = bitcast_ln50_fu_978_p1;
assign v116_2_we0 = v116_2_we0_local;
assign v116_2_we1 = v116_2_we1_local;
assign v116_3_address0 = v116_3_address0_local;
assign v116_3_address1 = v116_3_address1_local;
assign v116_3_ce0 = v116_3_ce0_local;
assign v116_3_ce1 = v116_3_ce1_local;
assign v116_3_d0 = bitcast_ln57_1_fu_1013_p1;
assign v116_3_d1 = bitcast_ln57_fu_983_p1;
assign v116_3_we0 = v116_3_we0_local;
assign v116_3_we1 = v116_3_we1_local;
assign v116_4_address0 = v116_4_address0_local;
assign v116_4_address1 = v116_4_addr_1_reg_1375;
assign v116_4_ce0 = v116_4_ce0_local;
assign v116_4_ce1 = v116_4_ce1_local;
assign v116_4_d0 = v116_4_d0_local;
assign v116_4_we0 = v116_4_we0_local;
assign v116_5_address0 = v116_5_address0_local;
assign v116_5_address1 = v116_5_addr_1_reg_1381;
assign v116_5_ce0 = v116_5_ce0_local;
assign v116_5_ce1 = v116_5_ce1_local;
assign v116_5_d0 = v116_5_d0_local;
assign v116_5_we0 = v116_5_we0_local;
assign v116_6_address0 = v116_6_address0_local;
assign v116_6_address1 = v116_6_address1_local;
assign v116_6_ce0 = v116_6_ce0_local;
assign v116_6_ce1 = v116_6_ce1_local;
assign v116_6_d0 = v116_6_d0_local;
assign v116_6_we0 = v116_6_we0_local;
assign v116_7_address0 = v116_7_address0_local;
assign v116_7_address1 = v116_7_address1_local;
assign v116_7_ce0 = v116_7_ce0_local;
assign v116_7_ce1 = v116_7_ce1_local;
assign v116_7_d0 = v116_7_d0_local;
assign v116_7_we0 = v116_7_we0_local;
assign v15_2_fu_940_p1 = v116_1_load_1_reg_1434;
assign v15_fu_908_p1 = v116_1_load_reg_1330;
assign v16_1_fu_871_p1 = reg_533;
assign v16_fu_804_p1 = reg_533;
assign v21_2_fu_944_p1 = v116_2_load_1_reg_1439;
assign v21_fu_912_p1 = v116_2_load_reg_1335;
assign v22_1_fu_876_p1 = reg_537;
assign v22_fu_809_p1 = reg_537;
assign v27_2_fu_948_p1 = v116_3_load_1_reg_1444;
assign v27_fu_916_p1 = v116_3_load_reg_1340;
assign v28_1_fu_881_p1 = reg_541;
assign v28_fu_814_p1 = reg_541;
assign v33_2_fu_952_p1 = v116_4_load_1_reg_1479;
assign v33_fu_920_p1 = v116_4_load_reg_1345;
assign v34_1_fu_886_p1 = reg_545;
assign v34_fu_819_p1 = reg_545;
assign v39_2_fu_956_p1 = v116_5_load_1_reg_1484;
assign v39_fu_924_p1 = v116_5_load_reg_1350;
assign v3_fu_742_p3 = ((icmp_ln31_fu_737_p2[0:0] == 1'b1) ? v0_q0 : v3_1_fu_94);
assign v40_1_fu_891_p1 = reg_549;
assign v40_fu_824_p1 = reg_549;
assign v45_2_fu_960_p1 = v116_6_load_1_reg_1489;
assign v45_fu_928_p1 = v116_6_load_reg_1419;
assign v46_1_fu_896_p1 = v113_2_load_3_reg_1248;
assign v46_fu_839_p1 = v113_2_load_1_reg_1163;
assign v51_2_fu_964_p1 = v116_7_load_1_reg_1494;
assign v51_fu_932_p1 = v116_7_load_reg_1424;
assign v52_1_fu_900_p1 = v113_3_load_3_reg_1253;
assign v52_fu_843_p1 = v113_3_load_1_reg_1168;
assign v9_2_fu_936_p1 = v116_0_load_1_reg_1429;
assign v9_fu_904_p1 = v116_0_load_reg_1295;
assign zext_ln26_fu_854_p1 = or_ln26_1_fu_847_p3;
assign zext_ln27_fu_647_p1 = select_ln27_fu_635_p3;
assign zext_ln29_fu_788_p1 = lshr_ln29_1_reg_1116;
assign zext_ln33_1_fu_759_p1 = tmp_125_fu_750_p5;
assign zext_ln33_fu_670_p1 = tmp_fu_662_p3;
assign zext_ln61_1_fu_775_p1 = tmp_126_fu_767_p4;
assign zext_ln61_fu_698_p1 = tmp_s_fu_688_p4;
always @ (posedge ap_clk) begin
    v116_0_addr_1_reg_1355[0] <= 1'b1;
    v116_0_addr_1_reg_1355_pp0_iter2_reg[0] <= 1'b1;
    v116_0_addr_1_reg_1355_pp0_iter3_reg[0] <= 1'b1;
    v116_0_addr_1_reg_1355_pp0_iter4_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1360[0] <= 1'b1;
    v116_1_addr_1_reg_1360_pp0_iter2_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1360_pp0_iter3_reg[0] <= 1'b1;
    v116_1_addr_1_reg_1360_pp0_iter4_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1365[0] <= 1'b1;
    v116_2_addr_1_reg_1365_pp0_iter2_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1365_pp0_iter3_reg[0] <= 1'b1;
    v116_2_addr_1_reg_1365_pp0_iter4_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1370[0] <= 1'b1;
    v116_3_addr_1_reg_1370_pp0_iter2_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1370_pp0_iter3_reg[0] <= 1'b1;
    v116_3_addr_1_reg_1370_pp0_iter4_reg[0] <= 1'b1;
    v116_4_addr_1_reg_1375[0] <= 1'b1;
    v116_4_addr_1_reg_1375_pp0_iter2_reg[0] <= 1'b1;
    v116_4_addr_1_reg_1375_pp0_iter3_reg[0] <= 1'b1;
    v116_4_addr_1_reg_1375_pp0_iter4_reg[0] <= 1'b1;
    v116_5_addr_1_reg_1381[0] <= 1'b1;
    v116_5_addr_1_reg_1381_pp0_iter2_reg[0] <= 1'b1;
    v116_5_addr_1_reg_1381_pp0_iter3_reg[0] <= 1'b1;
    v116_5_addr_1_reg_1381_pp0_iter4_reg[0] <= 1'b1;
    v116_6_addr_1_reg_1387[0] <= 1'b1;
    v116_6_addr_1_reg_1387_pp0_iter2_reg[0] <= 1'b1;
    v116_6_addr_1_reg_1387_pp0_iter3_reg[0] <= 1'b1;
    v116_6_addr_1_reg_1387_pp0_iter4_reg[0] <= 1'b1;
    v116_7_addr_1_reg_1393[0] <= 1'b1;
    v116_7_addr_1_reg_1393_pp0_iter2_reg[0] <= 1'b1;
    v116_7_addr_1_reg_1393_pp0_iter3_reg[0] <= 1'b1;
    v116_7_addr_1_reg_1393_pp0_iter4_reg[0] <= 1'b1;
end
endmodule 