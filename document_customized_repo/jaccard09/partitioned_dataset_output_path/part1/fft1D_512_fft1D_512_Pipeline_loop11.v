
module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_address1,DATA_x_ce1,DATA_x_q1,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_1_address1,DATA_x_1_ce1,DATA_x_1_q1,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_2_address1,DATA_x_2_ce1,DATA_x_2_q1,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_3_address1,DATA_x_3_ce1,DATA_x_3_q1,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,grp_fu_1199_p_din0,grp_fu_1199_p_din1,grp_fu_1199_p_opcode,grp_fu_1199_p_dout0,grp_fu_1199_p_ce,grp_fu_1203_p_din0,grp_fu_1203_p_din1,grp_fu_1203_p_opcode,grp_fu_1203_p_dout0,grp_fu_1203_p_ce,grp_fu_1207_p_din0,grp_fu_1207_p_din1,grp_fu_1207_p_opcode,grp_fu_1207_p_dout0,grp_fu_1207_p_ce,grp_fu_1211_p_din0,grp_fu_1211_p_din1,grp_fu_1211_p_opcode,grp_fu_1211_p_dout0,grp_fu_1211_p_ce,grp_fu_1215_p_din0,grp_fu_1215_p_din1,grp_fu_1215_p_opcode,grp_fu_1215_p_dout0,grp_fu_1215_p_ce,grp_fu_1219_p_din0,grp_fu_1219_p_din1,grp_fu_1219_p_opcode,grp_fu_1219_p_dout0,grp_fu_1219_p_ce,grp_fu_1223_p_din0,grp_fu_1223_p_din1,grp_fu_1223_p_opcode,grp_fu_1223_p_dout0,grp_fu_1223_p_ce,grp_fu_1227_p_din0,grp_fu_1227_p_din1,grp_fu_1227_p_opcode,grp_fu_1227_p_dout0,grp_fu_1227_p_ce,grp_fu_1231_p_din0,grp_fu_1231_p_din1,grp_fu_1231_p_dout0,grp_fu_1231_p_ce,grp_fu_1236_p_din0,grp_fu_1236_p_din1,grp_fu_1236_p_dout0,grp_fu_1236_p_ce,grp_fu_1243_p_din0,grp_fu_1243_p_din1,grp_fu_1243_p_dout0,grp_fu_1243_p_ce,grp_fu_1248_p_din0,grp_fu_1248_p_din1,grp_fu_1248_p_dout0,grp_fu_1248_p_ce);  
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
output  [6:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [6:0] DATA_y_address1;
output   DATA_y_ce1;
input  [63:0] DATA_y_q1;
output  [6:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [6:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
input  [63:0] DATA_y_1_q1;
output  [6:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [6:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
input  [63:0] DATA_y_2_q1;
output  [6:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [6:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
input  [63:0] DATA_y_3_q1;
output  [6:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [6:0] DATA_x_address1;
output   DATA_x_ce1;
input  [63:0] DATA_x_q1;
output  [6:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [6:0] DATA_x_1_address1;
output   DATA_x_1_ce1;
input  [63:0] DATA_x_1_q1;
output  [6:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [6:0] DATA_x_2_address1;
output   DATA_x_2_ce1;
input  [63:0] DATA_x_2_q1;
output  [6:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [6:0] DATA_x_3_address1;
output   DATA_x_3_ce1;
input  [63:0] DATA_x_3_q1;
output  [8:0] work_x_address0;
output   work_x_ce0;
output   work_x_we0;
output  [63:0] work_x_d0;
output  [8:0] work_x_address1;
output   work_x_ce1;
output   work_x_we1;
output  [63:0] work_x_d1;
output  [8:0] work_y_address0;
output   work_y_ce0;
output   work_y_we0;
output  [63:0] work_y_d0;
output  [8:0] work_y_address1;
output   work_y_ce1;
output   work_y_we1;
output  [63:0] work_y_d1;
output  [63:0] grp_fu_1199_p_din0;
output  [63:0] grp_fu_1199_p_din1;
output  [1:0] grp_fu_1199_p_opcode;
input  [63:0] grp_fu_1199_p_dout0;
output   grp_fu_1199_p_ce;
output  [63:0] grp_fu_1203_p_din0;
output  [63:0] grp_fu_1203_p_din1;
output  [1:0] grp_fu_1203_p_opcode;
input  [63:0] grp_fu_1203_p_dout0;
output   grp_fu_1203_p_ce;
output  [63:0] grp_fu_1207_p_din0;
output  [63:0] grp_fu_1207_p_din1;
output  [1:0] grp_fu_1207_p_opcode;
input  [63:0] grp_fu_1207_p_dout0;
output   grp_fu_1207_p_ce;
output  [63:0] grp_fu_1211_p_din0;
output  [63:0] grp_fu_1211_p_din1;
output  [1:0] grp_fu_1211_p_opcode;
input  [63:0] grp_fu_1211_p_dout0;
output   grp_fu_1211_p_ce;
output  [63:0] grp_fu_1215_p_din0;
output  [63:0] grp_fu_1215_p_din1;
output  [1:0] grp_fu_1215_p_opcode;
input  [63:0] grp_fu_1215_p_dout0;
output   grp_fu_1215_p_ce;
output  [63:0] grp_fu_1219_p_din0;
output  [63:0] grp_fu_1219_p_din1;
output  [1:0] grp_fu_1219_p_opcode;
input  [63:0] grp_fu_1219_p_dout0;
output   grp_fu_1219_p_ce;
output  [63:0] grp_fu_1223_p_din0;
output  [63:0] grp_fu_1223_p_din1;
output  [1:0] grp_fu_1223_p_opcode;
input  [63:0] grp_fu_1223_p_dout0;
output   grp_fu_1223_p_ce;
output  [63:0] grp_fu_1227_p_din0;
output  [63:0] grp_fu_1227_p_din1;
output  [1:0] grp_fu_1227_p_opcode;
input  [63:0] grp_fu_1227_p_dout0;
output   grp_fu_1227_p_ce;
output  [63:0] grp_fu_1231_p_din0;
output  [63:0] grp_fu_1231_p_din1;
input  [63:0] grp_fu_1231_p_dout0;
output   grp_fu_1231_p_ce;
output  [63:0] grp_fu_1236_p_din0;
output  [63:0] grp_fu_1236_p_din1;
input  [63:0] grp_fu_1236_p_dout0;
output   grp_fu_1236_p_ce;
output  [63:0] grp_fu_1243_p_din0;
output  [63:0] grp_fu_1243_p_din1;
input  [63:0] grp_fu_1243_p_dout0;
output   grp_fu_1243_p_ce;
output  [63:0] grp_fu_1248_p_din0;
output  [63:0] grp_fu_1248_p_din1;
input  [63:0] grp_fu_1248_p_dout0;
output   grp_fu_1248_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
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
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln365_reg_1084;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_5_reg_1075;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_5_reg_1075_pp0_iter1_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter2_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter3_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter4_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter5_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter6_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter7_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter8_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter9_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter10_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter11_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter12_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter13_reg;
reg   [6:0] tid_5_reg_1075_pp0_iter14_reg;
wire   [0:0] icmp_ln365_fu_514_p2;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter1_reg;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter2_reg;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter3_reg;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter4_reg;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter5_reg;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter6_reg;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter7_reg;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter8_reg;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter9_reg;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter10_reg;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter11_reg;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter12_reg;
reg   [0:0] icmp_ln365_reg_1084_pp0_iter13_reg;
wire   [5:0] trunc_ln367_fu_520_p1;
reg   [5:0] trunc_ln367_reg_1088;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter1_reg;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter2_reg;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter3_reg;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter4_reg;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter5_reg;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter6_reg;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter7_reg;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter8_reg;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter9_reg;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter10_reg;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter11_reg;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter12_reg;
reg   [5:0] trunc_ln367_reg_1088_pp0_iter13_reg;
reg   [63:0] c0_y_reg_1173;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] c0_y_2_reg_1179;
reg   [63:0] c0_y_4_reg_1185;
reg   [63:0] c0_y_5_reg_1190;
reg   [63:0] DATA_y_load_2_reg_1196;
reg   [63:0] DATA_y_1_load_2_reg_1202;
reg   [63:0] DATA_y_2_load_2_reg_1208;
reg   [63:0] DATA_y_3_load_2_reg_1213;
reg   [63:0] c0_x_reg_1219;
reg   [63:0] c0_x_2_reg_1225;
reg   [63:0] c0_x_4_reg_1231;
reg   [63:0] c0_x_5_reg_1236;
reg   [63:0] DATA_x_load_2_reg_1242;
reg   [63:0] DATA_x_1_load_2_reg_1248;
reg   [63:0] DATA_x_2_load_2_reg_1254;
reg   [63:0] DATA_x_3_load_2_reg_1259;
reg   [63:0] c0_x_3_reg_1265;
reg   [63:0] c0_y_3_reg_1271;
reg   [63:0] tmp_1_reg_1277;
reg   [63:0] sub_reg_1283;
reg   [63:0] tmp_1_1_reg_1289;
reg   [63:0] tmp_1_1_reg_1289_pp0_iter3_reg;
reg   [63:0] tmp_1_1_reg_1289_pp0_iter4_reg;
reg   [63:0] sub1_reg_1295;
reg   [63:0] sub1_reg_1295_pp0_iter3_reg;
reg   [63:0] sub1_reg_1295_pp0_iter4_reg;
reg   [63:0] add2_reg_1301;
reg   [63:0] add3_reg_1307;
wire   [63:0] grp_fu_454_p2;
reg   [63:0] tmp_1_2_reg_1313;
wire   [63:0] grp_fu_458_p2;
reg   [63:0] sub2_reg_1318;
reg   [63:0] c0_x_7_reg_1323;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_7_reg_1329;
reg   [63:0] c0_x_1_reg_1335;
reg   [63:0] c0_x_1_reg_1335_pp0_iter3_reg;
reg   [63:0] c0_x_1_reg_1335_pp0_iter4_reg;
reg   [63:0] c0_x_1_reg_1335_pp0_iter5_reg;
reg   [63:0] c0_x_1_reg_1335_pp0_iter6_reg;
reg   [63:0] c0_y_1_reg_1341;
reg   [63:0] c0_y_1_reg_1341_pp0_iter3_reg;
reg   [63:0] c0_y_1_reg_1341_pp0_iter4_reg;
reg   [63:0] c0_y_1_reg_1341_pp0_iter5_reg;
reg   [63:0] c0_y_1_reg_1341_pp0_iter6_reg;
reg   [63:0] add_reg_1347;
reg   [63:0] add1_reg_1353;
wire   [63:0] bitcast_ln386_1_fu_601_p1;
wire   [63:0] bitcast_ln386_3_fu_635_p1;
wire   [63:0] bitcast_ln386_9_fu_669_p1;
wire   [63:0] bitcast_ln386_11_fu_704_p1;
wire   [63:0] grp_fu_462_p2;
reg   [63:0] sub3_reg_1381;
wire   [63:0] grp_fu_466_p2;
reg   [63:0] add4_reg_1386;
reg   [63:0] mul_reg_1391;
reg   [63:0] mul1_reg_1396;
wire   [63:0] grp_fu_470_p2;
reg   [63:0] sub5_reg_1401;
wire   [63:0] grp_fu_474_p2;
reg   [63:0] add6_reg_1406;
wire   [63:0] grp_fu_478_p2;
reg   [63:0] tmp_6_reg_1411;
reg   [63:0] tmp_6_reg_1411_pp0_iter5_reg;
reg   [63:0] tmp_6_reg_1411_pp0_iter6_reg;
reg   [63:0] c0_x_9_reg_1417;
reg   [63:0] c0_y_9_reg_1423;
reg   [63:0] sub6_reg_1429;
reg   [63:0] sub6_reg_1429_pp0_iter5_reg;
reg   [63:0] sub6_reg_1429_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_5_fu_739_p1;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln386_7_fu_773_p1;
reg   [63:0] c0_x_8_reg_1445;
reg   [63:0] c0_x_8_reg_1445_pp0_iter5_reg;
reg   [63:0] c0_x_8_reg_1445_pp0_iter6_reg;
reg   [63:0] c0_x_8_reg_1445_pp0_iter7_reg;
reg   [63:0] c0_x_8_reg_1445_pp0_iter8_reg;
reg   [63:0] c0_y_8_reg_1451;
reg   [63:0] c0_y_8_reg_1451_pp0_iter5_reg;
reg   [63:0] c0_y_8_reg_1451_pp0_iter6_reg;
reg   [63:0] c0_y_8_reg_1451_pp0_iter7_reg;
reg   [63:0] c0_y_8_reg_1451_pp0_iter8_reg;
reg   [63:0] add7_reg_1457;
reg   [63:0] add8_reg_1463;
reg   [63:0] c0_x_6_reg_1469;
reg   [63:0] c0_y_6_reg_1475;
reg   [63:0] mul2_reg_1481;
reg   [63:0] mul3_reg_1487;
reg   [63:0] mul4_reg_1493;
reg   [63:0] mul5_reg_1498;
reg   [63:0] sub4_reg_1503;
reg   [63:0] add5_reg_1509;
reg   [63:0] sub9_reg_1515;
reg   [63:0] sub9_reg_1515_pp0_iter7_reg;
reg   [63:0] sub9_reg_1515_pp0_iter8_reg;
reg   [63:0] sub9_reg_1515_pp0_iter9_reg;
reg   [63:0] sub9_reg_1515_pp0_iter10_reg;
reg   [63:0] sub9_reg_1515_pp0_iter11_reg;
reg   [63:0] sub9_reg_1515_pp0_iter12_reg;
reg   [63:0] sub9_reg_1515_pp0_iter13_reg;
reg   [63:0] sub10_reg_1520;
reg   [63:0] sub10_reg_1520_pp0_iter7_reg;
reg   [63:0] sub10_reg_1520_pp0_iter8_reg;
reg   [63:0] sub10_reg_1520_pp0_iter9_reg;
reg   [63:0] sub10_reg_1520_pp0_iter10_reg;
reg   [63:0] sub10_reg_1520_pp0_iter11_reg;
reg   [63:0] sub10_reg_1520_pp0_iter12_reg;
reg   [63:0] sub10_reg_1520_pp0_iter13_reg;
wire   [63:0] bitcast_ln386_13_fu_807_p1;
wire   [63:0] bitcast_ln386_15_fu_841_p1;
reg   [63:0] add9_reg_1535;
reg   [63:0] add9_reg_1535_pp0_iter8_reg;
reg   [63:0] add9_reg_1535_pp0_iter9_reg;
reg   [63:0] add9_reg_1535_pp0_iter10_reg;
reg   [63:0] add9_reg_1535_pp0_iter11_reg;
reg   [63:0] add9_reg_1535_pp0_iter12_reg;
reg   [63:0] add9_reg_1535_pp0_iter13_reg;
reg   [63:0] add10_reg_1540;
reg   [63:0] add10_reg_1540_pp0_iter8_reg;
reg   [63:0] add10_reg_1540_pp0_iter9_reg;
reg   [63:0] add10_reg_1540_pp0_iter10_reg;
reg   [63:0] add10_reg_1540_pp0_iter11_reg;
reg   [63:0] add10_reg_1540_pp0_iter12_reg;
reg   [63:0] add10_reg_1540_pp0_iter13_reg;
reg   [63:0] add13_reg_1545;
reg   [63:0] add13_reg_1545_pp0_iter9_reg;
reg   [63:0] add14_reg_1550;
reg   [63:0] add14_reg_1550_pp0_iter9_reg;
reg   [63:0] tmp_7_reg_1555;
reg   [63:0] tmp_7_reg_1555_pp0_iter9_reg;
reg   [63:0] sub13_reg_1561;
reg   [63:0] sub13_reg_1561_pp0_iter9_reg;
reg   [63:0] c0_x_11_reg_1567;
reg   [63:0] c0_y_11_reg_1572;
reg   [63:0] c0_x_10_reg_1577;
reg   [63:0] c0_x_10_reg_1577_pp0_iter9_reg;
reg   [63:0] c0_x_10_reg_1577_pp0_iter10_reg;
reg   [63:0] c0_x_10_reg_1577_pp0_iter11_reg;
reg   [63:0] c0_y_10_reg_1583;
reg   [63:0] c0_y_10_reg_1583_pp0_iter9_reg;
reg   [63:0] c0_y_10_reg_1583_pp0_iter10_reg;
reg   [63:0] c0_y_10_reg_1583_pp0_iter11_reg;
reg   [63:0] sub7_reg_1589;
reg   [63:0] sub8_reg_1595;
reg   [63:0] mul6_reg_1601;
reg   [63:0] mul7_reg_1606;
wire   [63:0] bitcast_ln386_17_fu_875_p1;
wire   [63:0] bitcast_ln386_19_fu_909_p1;
reg   [63:0] add11_reg_1621;
reg   [63:0] add11_reg_1621_pp0_iter11_reg;
reg   [63:0] add11_reg_1621_pp0_iter12_reg;
reg   [63:0] add15_reg_1626;
reg   [63:0] add15_reg_1626_pp0_iter11_reg;
reg   [63:0] add15_reg_1626_pp0_iter12_reg;
reg   [63:0] add16_reg_1631;
reg   [63:0] add16_reg_1631_pp0_iter11_reg;
reg   [63:0] add16_reg_1631_pp0_iter12_reg;
reg   [63:0] add12_reg_1636;
reg   [63:0] add12_reg_1636_pp0_iter12_reg;
reg   [63:0] add12_reg_1636_pp0_iter13_reg;
reg   [63:0] sub11_reg_1641;
reg   [63:0] sub11_reg_1641_pp0_iter12_reg;
reg   [63:0] sub11_reg_1641_pp0_iter13_reg;
reg   [63:0] sub11_reg_1641_pp0_iter14_reg;
reg   [63:0] sub12_reg_1646;
reg   [63:0] sub12_reg_1646_pp0_iter12_reg;
reg   [63:0] sub12_reg_1646_pp0_iter13_reg;
reg   [63:0] sub12_reg_1646_pp0_iter14_reg;
reg   [63:0] sub16_reg_1651;
reg   [63:0] sub16_reg_1651_pp0_iter12_reg;
reg   [63:0] sub16_reg_1651_pp0_iter13_reg;
reg   [63:0] sub16_reg_1651_pp0_iter14_reg;
reg   [63:0] sub17_reg_1656;
reg   [63:0] sub17_reg_1656_pp0_iter12_reg;
reg   [63:0] sub17_reg_1656_pp0_iter13_reg;
reg   [63:0] sub17_reg_1656_pp0_iter14_reg;
reg   [63:0] sub14_reg_1661;
reg   [63:0] sub15_reg_1667;
reg   [63:0] add17_reg_1673;
reg   [63:0] add18_reg_1678;
wire  signed [6:0] zext_ln390_cast_fu_914_p3;
reg  signed [6:0] zext_ln390_cast_reg_1683;
wire  signed [7:0] zext_ln391_cast_fu_931_p3;
reg  signed [7:0] zext_ln391_cast_reg_1689;
reg   [63:0] sub18_reg_1694;
reg   [63:0] sub19_reg_1699;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln367_fu_530_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln371_fu_550_p1;
wire   [63:0] zext_ln390_fu_921_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln391_fu_938_p1;
wire   [63:0] zext_ln365_fu_956_p1;
wire   [63:0] zext_ln392_fu_968_p1;
wire   [63:0] zext_ln393_1_fu_997_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_1010_p1;
wire   [63:0] zext_ln394_fu_1037_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln396_fu_1050_p1;
reg   [6:0] tid_fu_72;
wire   [6:0] add_ln365_fu_562_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce1_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce1_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_ce1_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce1_local;
reg    DATA_y_3_ce0_local;
reg    DATA_x_ce1_local;
reg    DATA_x_ce0_local;
reg    DATA_x_1_ce1_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_ce1_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_ce1_local;
reg    DATA_x_3_ce0_local;
reg    work_x_we1_local;
reg   [63:0] work_x_d1_local;
wire   [63:0] bitcast_ln390_fu_927_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_944_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln389_fu_961_p1;
wire   [63:0] bitcast_ln392_fu_974_p1;
wire   [63:0] bitcast_ln393_fu_1003_p1;
wire   [63:0] bitcast_ln395_fu_1016_p1;
wire   [63:0] bitcast_ln394_fu_1043_p1;
wire   [63:0] bitcast_ln396_fu_1056_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_948_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_952_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln398_fu_978_p1;
wire   [63:0] bitcast_ln401_fu_982_p1;
wire   [63:0] bitcast_ln402_fu_1020_p1;
wire   [63:0] bitcast_ln404_fu_1024_p1;
wire   [63:0] bitcast_ln403_fu_1060_p1;
wire   [63:0] bitcast_ln405_fu_1064_p1;
reg   [63:0] grp_fu_422_p0;
reg   [63:0] grp_fu_422_p1;
reg   [63:0] grp_fu_426_p0;
reg   [63:0] grp_fu_426_p1;
reg   [63:0] grp_fu_430_p0;
reg   [63:0] grp_fu_430_p1;
reg   [63:0] grp_fu_434_p0;
reg   [63:0] grp_fu_434_p1;
reg   [63:0] grp_fu_438_p0;
reg   [63:0] grp_fu_438_p1;
reg   [63:0] grp_fu_442_p0;
reg   [63:0] grp_fu_442_p1;
reg   [63:0] grp_fu_446_p0;
reg   [63:0] grp_fu_446_p1;
reg   [63:0] grp_fu_450_p0;
reg   [63:0] grp_fu_450_p1;
reg   [63:0] grp_fu_454_p0;
reg   [63:0] grp_fu_454_p1;
reg   [63:0] grp_fu_458_p0;
reg   [63:0] grp_fu_458_p1;
reg   [63:0] grp_fu_462_p0;
reg   [63:0] grp_fu_462_p1;
reg   [63:0] grp_fu_466_p0;
reg   [63:0] grp_fu_466_p1;
reg   [63:0] grp_fu_470_p0;
reg   [63:0] grp_fu_470_p1;
reg   [63:0] grp_fu_474_p0;
reg   [63:0] grp_fu_474_p1;
reg   [63:0] grp_fu_478_p0;
reg   [63:0] grp_fu_478_p1;
reg   [63:0] grp_fu_482_p0;
reg   [63:0] grp_fu_482_p1;
reg   [63:0] grp_fu_487_p0;
reg   [63:0] grp_fu_487_p1;
reg   [63:0] grp_fu_494_p0;
reg   [63:0] grp_fu_494_p1;
reg   [63:0] grp_fu_499_p0;
reg   [63:0] grp_fu_499_p1;
wire   [6:0] shl_ln367_fu_524_p2;
wire   [6:0] or_ln_fu_542_p3;
wire   [63:0] bitcast_ln386_fu_572_p1;
wire   [0:0] bit_sel_fu_575_p3;
wire   [0:0] xor_ln386_10_fu_583_p2;
wire   [62:0] trunc_ln386_fu_589_p1;
wire   [63:0] xor_ln3_fu_593_p3;
wire   [63:0] bitcast_ln386_2_fu_606_p1;
wire   [0:0] bit_sel1_fu_609_p3;
wire   [0:0] xor_ln386_fu_617_p2;
wire   [62:0] trunc_ln386_1_fu_623_p1;
wire   [63:0] xor_ln386_1_fu_627_p3;
wire   [63:0] bitcast_ln386_8_fu_640_p1;
wire   [0:0] bit_sel4_fu_643_p3;
wire   [0:0] xor_ln386_13_fu_651_p2;
wire   [62:0] trunc_ln386_4_fu_657_p1;
wire   [63:0] xor_ln386_4_fu_661_p3;
wire   [63:0] bitcast_ln386_10_fu_675_p1;
wire   [0:0] bit_sel5_fu_678_p3;
wire   [0:0] xor_ln386_14_fu_686_p2;
wire   [62:0] trunc_ln386_5_fu_692_p1;
wire   [63:0] xor_ln386_5_fu_696_p3;
wire   [63:0] bitcast_ln386_4_fu_710_p1;
wire   [0:0] bit_sel2_fu_713_p3;
wire   [0:0] xor_ln386_11_fu_721_p2;
wire   [62:0] trunc_ln386_2_fu_727_p1;
wire   [63:0] xor_ln386_2_fu_731_p3;
wire   [63:0] bitcast_ln386_6_fu_744_p1;
wire   [0:0] bit_sel3_fu_747_p3;
wire   [0:0] xor_ln386_12_fu_755_p2;
wire   [62:0] trunc_ln386_3_fu_761_p1;
wire   [63:0] xor_ln386_3_fu_765_p3;
wire   [63:0] bitcast_ln386_12_fu_778_p1;
wire   [0:0] bit_sel6_fu_781_p3;
wire   [0:0] xor_ln386_15_fu_789_p2;
wire   [62:0] trunc_ln386_6_fu_795_p1;
wire   [63:0] xor_ln386_6_fu_799_p3;
wire   [63:0] bitcast_ln386_14_fu_812_p1;
wire   [0:0] bit_sel7_fu_815_p3;
wire   [0:0] xor_ln386_16_fu_823_p2;
wire   [62:0] trunc_ln386_7_fu_829_p1;
wire   [63:0] xor_ln386_7_fu_833_p3;
wire   [63:0] bitcast_ln386_16_fu_846_p1;
wire   [0:0] bit_sel8_fu_849_p3;
wire   [0:0] xor_ln386_17_fu_857_p2;
wire   [62:0] trunc_ln386_8_fu_863_p1;
wire   [63:0] xor_ln386_8_fu_867_p3;
wire   [63:0] bitcast_ln386_18_fu_880_p1;
wire   [0:0] bit_sel9_fu_883_p3;
wire   [0:0] xor_ln386_18_fu_891_p2;
wire   [62:0] trunc_ln386_9_fu_897_p1;
wire   [63:0] xor_ln386_9_fu_901_p3;
wire  signed [7:0] sext_ln392_fu_965_p1;
wire   [7:0] zext_ln393_fu_986_p1;
wire   [8:0] zext_ln393_cast_fu_989_p3;
wire  signed [8:0] sext_ln395_fu_1007_p1;
wire   [8:0] zext_ln365_1_fu_1028_p1;
wire   [8:0] add_ln394_fu_1031_p2;
wire  signed [8:0] sext_ln396_fu_1047_p1;
reg   [1:0] grp_fu_422_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
reg   [1:0] grp_fu_426_opcode;
reg   [1:0] grp_fu_430_opcode;
reg   [1:0] grp_fu_434_opcode;
reg   [1:0] grp_fu_438_opcode;
reg   [1:0] grp_fu_442_opcode;
reg   [1:0] grp_fu_446_opcode;
reg   [1:0] grp_fu_450_opcode;
reg   [1:0] grp_fu_454_opcode;
reg   [1:0] grp_fu_458_opcode;
reg   [1:0] grp_fu_462_opcode;
reg   [1:0] grp_fu_466_opcode;
reg   [1:0] grp_fu_470_opcode;
reg   [1:0] grp_fu_474_opcode;
reg   [1:0] grp_fu_478_opcode;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter13_stage2;
reg    ap_idle_pp0_0to12;
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
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to14;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 tid_fu_72 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U341(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_454_p0),.din1(grp_fu_454_p1),.opcode(grp_fu_454_opcode),.ce(1'b1),.dout(grp_fu_454_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U342(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_458_p0),.din1(grp_fu_458_p1),.opcode(grp_fu_458_opcode),.ce(1'b1),.dout(grp_fu_458_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U343(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_462_p0),.din1(grp_fu_462_p1),.opcode(grp_fu_462_opcode),.ce(1'b1),.dout(grp_fu_462_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U344(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_466_p0),.din1(grp_fu_466_p1),.opcode(grp_fu_466_opcode),.ce(1'b1),.dout(grp_fu_466_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U345(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_470_p0),.din1(grp_fu_470_p1),.opcode(grp_fu_470_opcode),.ce(1'b1),.dout(grp_fu_470_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U346(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_474_p0),.din1(grp_fu_474_p1),.opcode(grp_fu_474_opcode),.ce(1'b1),.dout(grp_fu_474_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U347(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_478_p0),.din1(grp_fu_478_p1),.opcode(grp_fu_478_opcode),.ce(1'b1),.dout(grp_fu_478_p2));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter14 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_72 <= 7'd0;
    end else if (((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_72 <= add_ln365_fu_562_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_1_load_2_reg_1248 <= DATA_x_1_q0;
        DATA_x_2_load_2_reg_1254 <= DATA_x_2_q0;
        DATA_x_3_load_2_reg_1259 <= DATA_x_3_q0;
        DATA_x_load_2_reg_1242 <= DATA_x_q0;
        DATA_y_1_load_2_reg_1202 <= DATA_y_1_q0;
        DATA_y_2_load_2_reg_1208 <= DATA_y_2_q0;
        DATA_y_3_load_2_reg_1213 <= DATA_y_3_q0;
        DATA_y_load_2_reg_1196 <= DATA_y_q0;
        c0_x_2_reg_1225 <= DATA_x_1_q1;
        c0_x_4_reg_1231 <= DATA_x_2_q1;
        c0_x_5_reg_1236 <= DATA_x_3_q1;
        c0_x_reg_1219 <= DATA_x_q1;
        c0_y_2_reg_1179 <= DATA_y_1_q1;
        c0_y_4_reg_1185 <= DATA_y_2_q1;
        c0_y_5_reg_1190 <= DATA_y_3_q1;
        c0_y_reg_1173 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add10_reg_1540 <= grp_fu_1203_p_dout0;
        add9_reg_1535 <= grp_fu_1199_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add10_reg_1540_pp0_iter10_reg <= add10_reg_1540_pp0_iter9_reg;
        add10_reg_1540_pp0_iter11_reg <= add10_reg_1540_pp0_iter10_reg;
        add10_reg_1540_pp0_iter12_reg <= add10_reg_1540_pp0_iter11_reg;
        add10_reg_1540_pp0_iter13_reg <= add10_reg_1540_pp0_iter12_reg;
        add10_reg_1540_pp0_iter8_reg <= add10_reg_1540;
        add10_reg_1540_pp0_iter9_reg <= add10_reg_1540_pp0_iter8_reg;
        add12_reg_1636_pp0_iter12_reg <= add12_reg_1636;
        add12_reg_1636_pp0_iter13_reg <= add12_reg_1636_pp0_iter12_reg;
        add13_reg_1545_pp0_iter9_reg <= add13_reg_1545;
        add14_reg_1550_pp0_iter9_reg <= add14_reg_1550;
        add9_reg_1535_pp0_iter10_reg <= add9_reg_1535_pp0_iter9_reg;
        add9_reg_1535_pp0_iter11_reg <= add9_reg_1535_pp0_iter10_reg;
        add9_reg_1535_pp0_iter12_reg <= add9_reg_1535_pp0_iter11_reg;
        add9_reg_1535_pp0_iter13_reg <= add9_reg_1535_pp0_iter12_reg;
        add9_reg_1535_pp0_iter8_reg <= add9_reg_1535;
        add9_reg_1535_pp0_iter9_reg <= add9_reg_1535_pp0_iter8_reg;
        icmp_ln365_reg_1084 <= icmp_ln365_fu_514_p2;
        icmp_ln365_reg_1084_pp0_iter10_reg <= icmp_ln365_reg_1084_pp0_iter9_reg;
        icmp_ln365_reg_1084_pp0_iter11_reg <= icmp_ln365_reg_1084_pp0_iter10_reg;
        icmp_ln365_reg_1084_pp0_iter12_reg <= icmp_ln365_reg_1084_pp0_iter11_reg;
        icmp_ln365_reg_1084_pp0_iter13_reg <= icmp_ln365_reg_1084_pp0_iter12_reg;
        icmp_ln365_reg_1084_pp0_iter1_reg <= icmp_ln365_reg_1084;
        icmp_ln365_reg_1084_pp0_iter2_reg <= icmp_ln365_reg_1084_pp0_iter1_reg;
        icmp_ln365_reg_1084_pp0_iter3_reg <= icmp_ln365_reg_1084_pp0_iter2_reg;
        icmp_ln365_reg_1084_pp0_iter4_reg <= icmp_ln365_reg_1084_pp0_iter3_reg;
        icmp_ln365_reg_1084_pp0_iter5_reg <= icmp_ln365_reg_1084_pp0_iter4_reg;
        icmp_ln365_reg_1084_pp0_iter6_reg <= icmp_ln365_reg_1084_pp0_iter5_reg;
        icmp_ln365_reg_1084_pp0_iter7_reg <= icmp_ln365_reg_1084_pp0_iter6_reg;
        icmp_ln365_reg_1084_pp0_iter8_reg <= icmp_ln365_reg_1084_pp0_iter7_reg;
        icmp_ln365_reg_1084_pp0_iter9_reg <= icmp_ln365_reg_1084_pp0_iter8_reg;
        sub11_reg_1641_pp0_iter12_reg <= sub11_reg_1641;
        sub11_reg_1641_pp0_iter13_reg <= sub11_reg_1641_pp0_iter12_reg;
        sub11_reg_1641_pp0_iter14_reg <= sub11_reg_1641_pp0_iter13_reg;
        sub12_reg_1646_pp0_iter12_reg <= sub12_reg_1646;
        sub12_reg_1646_pp0_iter13_reg <= sub12_reg_1646_pp0_iter12_reg;
        sub12_reg_1646_pp0_iter14_reg <= sub12_reg_1646_pp0_iter13_reg;
        sub13_reg_1561_pp0_iter9_reg <= sub13_reg_1561;
        sub16_reg_1651_pp0_iter12_reg <= sub16_reg_1651;
        sub16_reg_1651_pp0_iter13_reg <= sub16_reg_1651_pp0_iter12_reg;
        sub16_reg_1651_pp0_iter14_reg <= sub16_reg_1651_pp0_iter13_reg;
        sub17_reg_1656_pp0_iter12_reg <= sub17_reg_1656;
        sub17_reg_1656_pp0_iter13_reg <= sub17_reg_1656_pp0_iter12_reg;
        sub17_reg_1656_pp0_iter14_reg <= sub17_reg_1656_pp0_iter13_reg;
        tid_5_reg_1075 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_1075_pp0_iter10_reg <= tid_5_reg_1075_pp0_iter9_reg;
        tid_5_reg_1075_pp0_iter11_reg <= tid_5_reg_1075_pp0_iter10_reg;
        tid_5_reg_1075_pp0_iter12_reg <= tid_5_reg_1075_pp0_iter11_reg;
        tid_5_reg_1075_pp0_iter13_reg <= tid_5_reg_1075_pp0_iter12_reg;
        tid_5_reg_1075_pp0_iter14_reg <= tid_5_reg_1075_pp0_iter13_reg;
        tid_5_reg_1075_pp0_iter1_reg <= tid_5_reg_1075;
        tid_5_reg_1075_pp0_iter2_reg <= tid_5_reg_1075_pp0_iter1_reg;
        tid_5_reg_1075_pp0_iter3_reg <= tid_5_reg_1075_pp0_iter2_reg;
        tid_5_reg_1075_pp0_iter4_reg <= tid_5_reg_1075_pp0_iter3_reg;
        tid_5_reg_1075_pp0_iter5_reg <= tid_5_reg_1075_pp0_iter4_reg;
        tid_5_reg_1075_pp0_iter6_reg <= tid_5_reg_1075_pp0_iter5_reg;
        tid_5_reg_1075_pp0_iter7_reg <= tid_5_reg_1075_pp0_iter6_reg;
        tid_5_reg_1075_pp0_iter8_reg <= tid_5_reg_1075_pp0_iter7_reg;
        tid_5_reg_1075_pp0_iter9_reg <= tid_5_reg_1075_pp0_iter8_reg;
        tmp_7_reg_1555_pp0_iter9_reg <= tmp_7_reg_1555;
        trunc_ln367_reg_1088 <= trunc_ln367_fu_520_p1;
        trunc_ln367_reg_1088_pp0_iter10_reg <= trunc_ln367_reg_1088_pp0_iter9_reg;
        trunc_ln367_reg_1088_pp0_iter11_reg <= trunc_ln367_reg_1088_pp0_iter10_reg;
        trunc_ln367_reg_1088_pp0_iter12_reg <= trunc_ln367_reg_1088_pp0_iter11_reg;
        trunc_ln367_reg_1088_pp0_iter13_reg <= trunc_ln367_reg_1088_pp0_iter12_reg;
        trunc_ln367_reg_1088_pp0_iter1_reg <= trunc_ln367_reg_1088;
        trunc_ln367_reg_1088_pp0_iter2_reg <= trunc_ln367_reg_1088_pp0_iter1_reg;
        trunc_ln367_reg_1088_pp0_iter3_reg <= trunc_ln367_reg_1088_pp0_iter2_reg;
        trunc_ln367_reg_1088_pp0_iter4_reg <= trunc_ln367_reg_1088_pp0_iter3_reg;
        trunc_ln367_reg_1088_pp0_iter5_reg <= trunc_ln367_reg_1088_pp0_iter4_reg;
        trunc_ln367_reg_1088_pp0_iter6_reg <= trunc_ln367_reg_1088_pp0_iter5_reg;
        trunc_ln367_reg_1088_pp0_iter7_reg <= trunc_ln367_reg_1088_pp0_iter6_reg;
        trunc_ln367_reg_1088_pp0_iter8_reg <= trunc_ln367_reg_1088_pp0_iter7_reg;
        trunc_ln367_reg_1088_pp0_iter9_reg <= trunc_ln367_reg_1088_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_reg_1621 <= grp_fu_454_p2;
        add15_reg_1626 <= grp_fu_458_p2;
        add16_reg_1631 <= grp_fu_462_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_reg_1621_pp0_iter11_reg <= add11_reg_1621;
        add11_reg_1621_pp0_iter12_reg <= add11_reg_1621_pp0_iter11_reg;
        add15_reg_1626_pp0_iter11_reg <= add15_reg_1626;
        add15_reg_1626_pp0_iter12_reg <= add15_reg_1626_pp0_iter11_reg;
        add16_reg_1631_pp0_iter11_reg <= add16_reg_1631;
        add16_reg_1631_pp0_iter12_reg <= add16_reg_1631_pp0_iter11_reg;
        c0_x_8_reg_1445_pp0_iter5_reg <= c0_x_8_reg_1445;
        c0_x_8_reg_1445_pp0_iter6_reg <= c0_x_8_reg_1445_pp0_iter5_reg;
        c0_x_8_reg_1445_pp0_iter7_reg <= c0_x_8_reg_1445_pp0_iter6_reg;
        c0_x_8_reg_1445_pp0_iter8_reg <= c0_x_8_reg_1445_pp0_iter7_reg;
        c0_y_8_reg_1451_pp0_iter5_reg <= c0_y_8_reg_1451;
        c0_y_8_reg_1451_pp0_iter6_reg <= c0_y_8_reg_1451_pp0_iter5_reg;
        c0_y_8_reg_1451_pp0_iter7_reg <= c0_y_8_reg_1451_pp0_iter6_reg;
        c0_y_8_reg_1451_pp0_iter8_reg <= c0_y_8_reg_1451_pp0_iter7_reg;
        sub10_reg_1520_pp0_iter10_reg <= sub10_reg_1520_pp0_iter9_reg;
        sub10_reg_1520_pp0_iter11_reg <= sub10_reg_1520_pp0_iter10_reg;
        sub10_reg_1520_pp0_iter12_reg <= sub10_reg_1520_pp0_iter11_reg;
        sub10_reg_1520_pp0_iter13_reg <= sub10_reg_1520_pp0_iter12_reg;
        sub10_reg_1520_pp0_iter7_reg <= sub10_reg_1520;
        sub10_reg_1520_pp0_iter8_reg <= sub10_reg_1520_pp0_iter7_reg;
        sub10_reg_1520_pp0_iter9_reg <= sub10_reg_1520_pp0_iter8_reg;
        sub9_reg_1515_pp0_iter10_reg <= sub9_reg_1515_pp0_iter9_reg;
        sub9_reg_1515_pp0_iter11_reg <= sub9_reg_1515_pp0_iter10_reg;
        sub9_reg_1515_pp0_iter12_reg <= sub9_reg_1515_pp0_iter11_reg;
        sub9_reg_1515_pp0_iter13_reg <= sub9_reg_1515_pp0_iter12_reg;
        sub9_reg_1515_pp0_iter7_reg <= sub9_reg_1515;
        sub9_reg_1515_pp0_iter8_reg <= sub9_reg_1515_pp0_iter7_reg;
        sub9_reg_1515_pp0_iter9_reg <= sub9_reg_1515_pp0_iter8_reg;
        zext_ln390_cast_reg_1683[5 : 0] <= zext_ln390_cast_fu_914_p3[5 : 0];
        zext_ln391_cast_reg_1689[6 : 0] <= zext_ln391_cast_fu_931_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add12_reg_1636 <= grp_fu_1223_p_dout0;
        sub11_reg_1641 <= grp_fu_1227_p_dout0;
        sub12_reg_1646 <= grp_fu_454_p2;
        sub16_reg_1651 <= grp_fu_458_p2;
        sub17_reg_1656 <= grp_fu_462_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add13_reg_1545 <= grp_fu_1207_p_dout0;
        add14_reg_1550 <= grp_fu_1211_p_dout0;
        sub13_reg_1561 <= grp_fu_1219_p_dout0;
        tmp_7_reg_1555 <= grp_fu_1215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add17_reg_1673 <= grp_fu_474_p2;
        add18_reg_1678 <= grp_fu_478_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add1_reg_1353 <= grp_fu_1219_p_dout0;
        add_reg_1347 <= grp_fu_1215_p_dout0;
        c0_x_1_reg_1335 <= grp_fu_1207_p_dout0;
        c0_x_7_reg_1323 <= grp_fu_1199_p_dout0;
        c0_y_1_reg_1341 <= grp_fu_1211_p_dout0;
        c0_y_7_reg_1329 <= grp_fu_1203_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add2_reg_1301 <= grp_fu_1223_p_dout0;
        add3_reg_1307 <= grp_fu_1227_p_dout0;
        c0_x_3_reg_1265 <= grp_fu_1199_p_dout0;
        c0_y_3_reg_1271 <= grp_fu_1203_p_dout0;
        sub1_reg_1295 <= grp_fu_1219_p_dout0;
        sub2_reg_1318 <= grp_fu_458_p2;
        sub_reg_1283 <= grp_fu_1211_p_dout0;
        tmp_1_1_reg_1289 <= grp_fu_1215_p_dout0;
        tmp_1_2_reg_1313 <= grp_fu_454_p2;
        tmp_1_reg_1277 <= grp_fu_1207_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add4_reg_1386 <= grp_fu_466_p2;
        add6_reg_1406 <= grp_fu_474_p2;
        mul1_reg_1396 <= grp_fu_1236_p_dout0;
        mul_reg_1391 <= grp_fu_1231_p_dout0;
        sub3_reg_1381 <= grp_fu_462_p2;
        sub5_reg_1401 <= grp_fu_470_p2;
        tmp_6_reg_1411 <= grp_fu_478_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add5_reg_1509 <= grp_fu_462_p2;
        sub4_reg_1503 <= grp_fu_458_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add7_reg_1457 <= grp_fu_1207_p_dout0;
        add8_reg_1463 <= grp_fu_1211_p_dout0;
        c0_x_8_reg_1445 <= grp_fu_1199_p_dout0;
        c0_y_8_reg_1451 <= grp_fu_1203_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_10_reg_1577 <= grp_fu_474_p2;
        c0_x_11_reg_1567 <= grp_fu_466_p2;
        c0_y_10_reg_1583 <= grp_fu_478_p2;
        c0_y_11_reg_1572 <= grp_fu_470_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_10_reg_1577_pp0_iter10_reg <= c0_x_10_reg_1577_pp0_iter9_reg;
        c0_x_10_reg_1577_pp0_iter11_reg <= c0_x_10_reg_1577_pp0_iter10_reg;
        c0_x_10_reg_1577_pp0_iter9_reg <= c0_x_10_reg_1577;
        c0_x_1_reg_1335_pp0_iter3_reg <= c0_x_1_reg_1335;
        c0_x_1_reg_1335_pp0_iter4_reg <= c0_x_1_reg_1335_pp0_iter3_reg;
        c0_x_1_reg_1335_pp0_iter5_reg <= c0_x_1_reg_1335_pp0_iter4_reg;
        c0_x_1_reg_1335_pp0_iter6_reg <= c0_x_1_reg_1335_pp0_iter5_reg;
        c0_y_10_reg_1583_pp0_iter10_reg <= c0_y_10_reg_1583_pp0_iter9_reg;
        c0_y_10_reg_1583_pp0_iter11_reg <= c0_y_10_reg_1583_pp0_iter10_reg;
        c0_y_10_reg_1583_pp0_iter9_reg <= c0_y_10_reg_1583;
        c0_y_1_reg_1341_pp0_iter3_reg <= c0_y_1_reg_1341;
        c0_y_1_reg_1341_pp0_iter4_reg <= c0_y_1_reg_1341_pp0_iter3_reg;
        c0_y_1_reg_1341_pp0_iter5_reg <= c0_y_1_reg_1341_pp0_iter4_reg;
        c0_y_1_reg_1341_pp0_iter6_reg <= c0_y_1_reg_1341_pp0_iter5_reg;
        sub6_reg_1429_pp0_iter5_reg <= sub6_reg_1429;
        sub6_reg_1429_pp0_iter6_reg <= sub6_reg_1429_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_6_reg_1469 <= grp_fu_1231_p_dout0;
        c0_y_6_reg_1475 <= grp_fu_1236_p_dout0;
        mul2_reg_1481 <= grp_fu_1243_p_dout0;
        mul3_reg_1487 <= grp_fu_1248_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_9_reg_1417 <= grp_fu_1223_p_dout0;
        c0_y_9_reg_1423 <= grp_fu_1227_p_dout0;
        sub6_reg_1429 <= grp_fu_454_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul4_reg_1493 <= grp_fu_1243_p_dout0;
        mul5_reg_1498 <= grp_fu_1248_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul6_reg_1601 <= grp_fu_1231_p_dout0;
        mul7_reg_1606 <= grp_fu_1236_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub10_reg_1520 <= grp_fu_1219_p_dout0;
        sub9_reg_1515 <= grp_fu_1215_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub14_reg_1661 <= grp_fu_466_p2;
        sub15_reg_1667 <= grp_fu_470_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub18_reg_1694 <= grp_fu_466_p2;
        sub19_reg_1699 <= grp_fu_470_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sub1_reg_1295_pp0_iter3_reg <= sub1_reg_1295;
        sub1_reg_1295_pp0_iter4_reg <= sub1_reg_1295_pp0_iter3_reg;
        tmp_1_1_reg_1289_pp0_iter3_reg <= tmp_1_1_reg_1289;
        tmp_1_1_reg_1289_pp0_iter4_reg <= tmp_1_1_reg_1289_pp0_iter3_reg;
        tmp_6_reg_1411_pp0_iter5_reg <= tmp_6_reg_1411;
        tmp_6_reg_1411_pp0_iter6_reg <= tmp_6_reg_1411_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub7_reg_1589 <= grp_fu_1223_p_dout0;
        sub8_reg_1595 <= grp_fu_1227_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce0_local = 1'b1;
    end else begin
        DATA_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_1_ce1_local = 1'b1;
    end else begin
        DATA_x_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_2_ce1_local = 1'b1;
    end else begin
        DATA_x_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce0_local = 1'b1;
    end else begin
        DATA_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_3_ce1_local = 1'b1;
    end else begin
        DATA_x_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce0_local = 1'b1;
    end else begin
        DATA_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_ce1_local = 1'b1;
    end else begin
        DATA_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln365_reg_1084 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln365_reg_1084_pp0_iter13_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter13_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter13_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to12 = 1'b1;
    end else begin
        ap_idle_pp0_0to12 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to14 = 1'b1;
    end else begin
        ap_idle_pp0_1to14 = 1'b0;
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
        ap_sig_allocacmp_tid_5 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_5 = tid_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_422_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_422_opcode = 2'd0;
    end else begin
        grp_fu_422_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_422_p0 = c0_x_9_reg_1417;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_422_p0 = c0_x_7_reg_1323;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_422_p0 = c0_x_reg_1219;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_422_p0 = c0_x_2_reg_1225;
    end else begin
        grp_fu_422_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_422_p1 = add7_reg_1457;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_422_p1 = add_reg_1347;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_422_p1 = DATA_x_load_2_reg_1242;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_422_p1 = DATA_x_1_load_2_reg_1248;
    end else begin
        grp_fu_422_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_426_opcode = 2'd0;
    end else begin
        grp_fu_426_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_426_p0 = c0_y_9_reg_1423;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_p0 = c0_y_7_reg_1329;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_426_p0 = c0_y_reg_1173;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_426_p0 = c0_y_2_reg_1179;
    end else begin
        grp_fu_426_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_426_p1 = add8_reg_1463;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_p1 = add1_reg_1353;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_426_p1 = DATA_y_load_2_reg_1196;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_426_p1 = DATA_y_1_load_2_reg_1202;
    end else begin
        grp_fu_426_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_430_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_430_opcode = 2'd0;
    end else begin
        grp_fu_430_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_430_p0 = c0_x_6_reg_1469;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_430_p0 = c0_x_3_reg_1265;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_430_p0 = c0_x_reg_1219;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_430_p0 = c0_x_2_reg_1225;
    end else begin
        grp_fu_430_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_430_p1 = mul2_reg_1481;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_430_p1 = add2_reg_1301;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_430_p1 = DATA_x_load_2_reg_1242;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_430_p1 = DATA_x_1_load_2_reg_1248;
    end else begin
        grp_fu_430_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_434_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_434_opcode = 2'd0;
    end else begin
        grp_fu_434_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_434_p0 = c0_y_6_reg_1475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_434_p0 = c0_y_3_reg_1271;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_434_p0 = c0_y_reg_1173;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_434_p0 = c0_y_2_reg_1179;
    end else begin
        grp_fu_434_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_434_p1 = mul3_reg_1487;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_434_p1 = add3_reg_1307;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_434_p1 = DATA_y_load_2_reg_1196;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_434_p1 = DATA_y_1_load_2_reg_1202;
    end else begin
        grp_fu_434_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_438_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_438_opcode = 2'd0;
    end else begin
        grp_fu_438_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_438_p0 = c0_x_6_reg_1469;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_438_p0 = c0_x_9_reg_1417;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_438_p0 = c0_x_4_reg_1231;
    end else begin
        grp_fu_438_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_438_p1 = mul2_reg_1481;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_438_p1 = add7_reg_1457;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_438_p1 = DATA_x_2_load_2_reg_1254;
    end else begin
        grp_fu_438_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_442_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_442_opcode = 2'd0;
    end else begin
        grp_fu_442_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_442_p0 = c0_y_6_reg_1475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_442_p0 = c0_y_9_reg_1423;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_442_p0 = c0_y_4_reg_1185;
    end else begin
        grp_fu_442_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_442_p1 = mul3_reg_1487;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_442_p1 = add8_reg_1463;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_442_p1 = DATA_y_2_load_2_reg_1208;
    end else begin
        grp_fu_442_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_446_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_446_opcode = 2'd0;
    end else begin
        grp_fu_446_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_446_p0 = c0_y_8_reg_1451_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_446_p0 = mul4_reg_1493;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_446_p0 = c0_x_7_reg_1323;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_446_p0 = c0_x_5_reg_1236;
    end else begin
        grp_fu_446_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_446_p1 = sub8_reg_1595;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_446_p1 = bitcast_ln386_13_fu_807_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_446_p1 = add_reg_1347;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_446_p1 = DATA_x_3_load_2_reg_1259;
    end else begin
        grp_fu_446_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_450_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_450_opcode = 2'd0;
    end else begin
        grp_fu_450_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_450_p0 = c0_x_8_reg_1445_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_450_p0 = bitcast_ln386_15_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_450_p0 = c0_y_7_reg_1329;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_450_p0 = c0_y_5_reg_1190;
    end else begin
        grp_fu_450_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_450_p1 = sub7_reg_1589;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_450_p1 = mul5_reg_1498;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_450_p1 = add1_reg_1353;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_450_p1 = DATA_y_3_load_2_reg_1213;
    end else begin
        grp_fu_450_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_454_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_454_opcode = 2'd0;
    end else begin
        grp_fu_454_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_454_p0 = c0_y_8_reg_1451_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_454_p0 = c0_x_8_reg_1445_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_454_p0 = c0_y_3_reg_1271;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_454_p0 = c0_x_5_reg_1236;
    end else begin
        grp_fu_454_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_454_p1 = sub8_reg_1595;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_454_p1 = sub7_reg_1589;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_454_p1 = add3_reg_1307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_454_p1 = DATA_x_3_load_2_reg_1259;
    end else begin
        grp_fu_454_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1084 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_458_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_458_opcode = 2'd0;
    end else begin
        grp_fu_458_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_458_p0 = c0_x_11_reg_1567;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_458_p0 = mul_reg_1391;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_458_p0 = c0_y_5_reg_1190;
    end else begin
        grp_fu_458_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_458_p1 = add13_reg_1545_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_458_p1 = add13_reg_1545;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_458_p1 = bitcast_ln386_5_fu_739_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_458_p1 = DATA_y_3_load_2_reg_1213;
    end else begin
        grp_fu_458_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_462_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_462_opcode = 2'd0;
    end else begin
        grp_fu_462_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_462_p0 = c0_y_11_reg_1572;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_462_p0 = bitcast_ln386_7_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_462_p0 = tmp_1_reg_1277;
    end else begin
        grp_fu_462_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_462_p1 = add14_reg_1550_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_462_p1 = add14_reg_1550;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_462_p1 = mul1_reg_1396;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_462_p1 = bitcast_ln386_1_fu_601_p1;
    end else begin
        grp_fu_462_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_466_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_466_opcode = 2'd0;
    end else begin
        grp_fu_466_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_466_p0 = c0_x_10_reg_1577_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_466_p0 = mul6_reg_1601;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_466_p0 = c0_x_1_reg_1335_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_466_p0 = bitcast_ln386_3_fu_635_p1;
    end else begin
        grp_fu_466_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_466_p1 = sub14_reg_1661;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_466_p1 = bitcast_ln386_17_fu_875_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_466_p1 = sub4_reg_1503;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_466_p1 = sub_reg_1283;
    end else begin
        grp_fu_466_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_470_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_470_opcode = 2'd0;
    end else begin
        grp_fu_470_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_470_p0 = c0_y_10_reg_1583_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_470_p0 = bitcast_ln386_19_fu_909_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_470_p0 = c0_y_1_reg_1341_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_470_p0 = bitcast_ln386_9_fu_669_p1;
    end else begin
        grp_fu_470_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_470_p1 = sub15_reg_1667;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_470_p1 = mul7_reg_1606;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_470_p1 = add5_reg_1509;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_470_p1 = bitcast_ln386_11_fu_704_p1;
    end else begin
        grp_fu_470_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_474_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_474_opcode = 2'd0;
    end else begin
        grp_fu_474_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_474_p0 = c0_x_10_reg_1577_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_474_p0 = c0_x_1_reg_1335_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_474_p0 = bitcast_ln386_9_fu_669_p1;
    end else begin
        grp_fu_474_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_474_p1 = sub14_reg_1661;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_474_p1 = sub4_reg_1503;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_474_p1 = bitcast_ln386_11_fu_704_p1;
    end else begin
        grp_fu_474_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_478_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_478_opcode = 2'd0;
    end else begin
        grp_fu_478_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_478_p0 = c0_y_10_reg_1583_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_478_p0 = c0_y_1_reg_1341_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_478_p0 = c0_x_3_reg_1265;
    end else begin
        grp_fu_478_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_478_p1 = sub15_reg_1667;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_478_p1 = add5_reg_1509;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_478_p1 = add2_reg_1301;
    end else begin
        grp_fu_478_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_482_p0 = tmp_7_reg_1555;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_482_p0 = sub3_reg_1381;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_482_p0 = tmp_1_1_reg_1289;
    end else begin
        grp_fu_482_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_482_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_482_p1 = 64'd0;
    end else begin
        grp_fu_482_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_487_p0 = sub13_reg_1561;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_487_p0 = add4_reg_1386;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_487_p0 = sub1_reg_1295;
    end else begin
        grp_fu_487_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_487_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_487_p1 = 64'd0;
    end else begin
        grp_fu_487_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_494_p0 = tmp_6_reg_1411;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_494_p0 = sub5_reg_1401;
        end else begin
            grp_fu_494_p0 = 'bx;
        end
    end else begin
        grp_fu_494_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_494_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_494_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_494_p1 = 'bx;
        end
    end else begin
        grp_fu_494_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_499_p0 = sub6_reg_1429;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_499_p0 = add6_reg_1406;
        end else begin
            grp_fu_499_p0 = 'bx;
        end
    end else begin
        grp_fu_499_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_499_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_499_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_499_p1 = 'bx;
        end
    end else begin
        grp_fu_499_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address0_local = zext_ln396_fu_1050_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address0_local = zext_ln395_fu_1010_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address0_local = zext_ln392_fu_968_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address0_local = zext_ln391_fu_938_p1;
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln394_fu_1037_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln393_1_fu_997_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln390_fu_921_p1;
    end else begin
        work_x_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce0_local = 1'b1;
    end else begin
        work_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_ce1_local = 1'b1;
    end else begin
        work_x_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d0_local = bitcast_ln396_fu_1056_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d0_local = bitcast_ln395_fu_1016_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d0_local = bitcast_ln392_fu_974_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d0_local = bitcast_ln391_fu_944_p1;
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln394_fu_1043_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln393_fu_1003_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_961_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln390_fu_927_p1;
    end else begin
        work_x_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we0_local = 1'b1;
    end else begin
        work_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_x_we1_local = 1'b1;
    end else begin
        work_x_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address0_local = zext_ln396_fu_1050_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address0_local = zext_ln395_fu_1010_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address0_local = zext_ln392_fu_968_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address0_local = zext_ln391_fu_938_p1;
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln394_fu_1037_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln393_1_fu_997_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_fu_956_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln390_fu_921_p1;
    end else begin
        work_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce0_local = 1'b1;
    end else begin
        work_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_ce1_local = 1'b1;
    end else begin
        work_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d0_local = bitcast_ln405_fu_1064_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d0_local = bitcast_ln404_fu_1024_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d0_local = bitcast_ln401_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d0_local = bitcast_ln400_fu_952_p1;
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln403_fu_1060_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln402_fu_1020_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_978_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln399_fu_948_p1;
    end else begin
        work_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we0_local = 1'b1;
    end else begin
        work_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        work_y_we1_local = 1'b1;
    end else begin
        work_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to14 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((1'b1 == ap_condition_exit_pp0_iter13_stage2) & (ap_idle_pp0_0to12 == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign DATA_x_1_address0 = zext_ln371_fu_550_p1;
assign DATA_x_1_address1 = zext_ln367_fu_530_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_1_ce1 = DATA_x_1_ce1_local;
assign DATA_x_2_address0 = zext_ln371_fu_550_p1;
assign DATA_x_2_address1 = zext_ln367_fu_530_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_2_ce1 = DATA_x_2_ce1_local;
assign DATA_x_3_address0 = zext_ln371_fu_550_p1;
assign DATA_x_3_address1 = zext_ln367_fu_530_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_3_ce1 = DATA_x_3_ce1_local;
assign DATA_x_address0 = zext_ln371_fu_550_p1;
assign DATA_x_address1 = zext_ln367_fu_530_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_x_ce1 = DATA_x_ce1_local;
assign DATA_y_1_address0 = zext_ln371_fu_550_p1;
assign DATA_y_1_address1 = zext_ln367_fu_530_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = zext_ln371_fu_550_p1;
assign DATA_y_2_address1 = zext_ln367_fu_530_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = zext_ln371_fu_550_p1;
assign DATA_y_3_address1 = zext_ln367_fu_530_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_address0 = zext_ln371_fu_550_p1;
assign DATA_y_address1 = zext_ln367_fu_530_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln365_fu_562_p2 = (tid_5_reg_1075 + 7'd1);
assign add_ln394_fu_1031_p2 = ($signed(zext_ln365_1_fu_1028_p1) + $signed(9'd320));
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
assign bit_sel1_fu_609_p3 = bitcast_ln386_2_fu_606_p1[64'd63];
assign bit_sel2_fu_713_p3 = bitcast_ln386_4_fu_710_p1[64'd63];
assign bit_sel3_fu_747_p3 = bitcast_ln386_6_fu_744_p1[64'd63];
assign bit_sel4_fu_643_p3 = bitcast_ln386_8_fu_640_p1[64'd63];
assign bit_sel5_fu_678_p3 = bitcast_ln386_10_fu_675_p1[64'd63];
assign bit_sel6_fu_781_p3 = bitcast_ln386_12_fu_778_p1[64'd63];
assign bit_sel7_fu_815_p3 = bitcast_ln386_14_fu_812_p1[64'd63];
assign bit_sel8_fu_849_p3 = bitcast_ln386_16_fu_846_p1[64'd63];
assign bit_sel9_fu_883_p3 = bitcast_ln386_18_fu_880_p1[64'd63];
assign bit_sel_fu_575_p3 = bitcast_ln386_fu_572_p1[64'd63];
assign bitcast_ln386_10_fu_675_p1 = sub2_reg_1318;
assign bitcast_ln386_11_fu_704_p1 = xor_ln386_5_fu_696_p3;
assign bitcast_ln386_12_fu_778_p1 = sub6_reg_1429_pp0_iter6_reg;
assign bitcast_ln386_13_fu_807_p1 = xor_ln386_6_fu_799_p3;
assign bitcast_ln386_14_fu_812_p1 = tmp_6_reg_1411_pp0_iter6_reg;
assign bitcast_ln386_15_fu_841_p1 = xor_ln386_7_fu_833_p3;
assign bitcast_ln386_16_fu_846_p1 = sub13_reg_1561_pp0_iter9_reg;
assign bitcast_ln386_17_fu_875_p1 = xor_ln386_8_fu_867_p3;
assign bitcast_ln386_18_fu_880_p1 = tmp_7_reg_1555_pp0_iter9_reg;
assign bitcast_ln386_19_fu_909_p1 = xor_ln386_9_fu_901_p3;
assign bitcast_ln386_1_fu_601_p1 = xor_ln3_fu_593_p3;
assign bitcast_ln386_2_fu_606_p1 = tmp_1_reg_1277;
assign bitcast_ln386_3_fu_635_p1 = xor_ln386_1_fu_627_p3;
assign bitcast_ln386_4_fu_710_p1 = sub1_reg_1295_pp0_iter4_reg;
assign bitcast_ln386_5_fu_739_p1 = xor_ln386_2_fu_731_p3;
assign bitcast_ln386_6_fu_744_p1 = tmp_1_1_reg_1289_pp0_iter4_reg;
assign bitcast_ln386_7_fu_773_p1 = xor_ln386_3_fu_765_p3;
assign bitcast_ln386_8_fu_640_p1 = tmp_1_2_reg_1313;
assign bitcast_ln386_9_fu_669_p1 = xor_ln386_4_fu_661_p3;
assign bitcast_ln386_fu_572_p1 = sub_reg_1283;
assign bitcast_ln389_fu_961_p1 = add9_reg_1535_pp0_iter13_reg;
assign bitcast_ln390_fu_927_p1 = add15_reg_1626_pp0_iter12_reg;
assign bitcast_ln391_fu_944_p1 = add11_reg_1621_pp0_iter12_reg;
assign bitcast_ln392_fu_974_p1 = add17_reg_1673;
assign bitcast_ln393_fu_1003_p1 = sub9_reg_1515_pp0_iter13_reg;
assign bitcast_ln394_fu_1043_p1 = sub16_reg_1651_pp0_iter14_reg;
assign bitcast_ln395_fu_1016_p1 = sub11_reg_1641_pp0_iter14_reg;
assign bitcast_ln396_fu_1056_p1 = sub18_reg_1694;
assign bitcast_ln398_fu_978_p1 = add10_reg_1540_pp0_iter13_reg;
assign bitcast_ln399_fu_948_p1 = add16_reg_1631_pp0_iter12_reg;
assign bitcast_ln400_fu_952_p1 = add12_reg_1636_pp0_iter13_reg;
assign bitcast_ln401_fu_982_p1 = add18_reg_1678;
assign bitcast_ln402_fu_1020_p1 = sub10_reg_1520_pp0_iter13_reg;
assign bitcast_ln403_fu_1060_p1 = sub17_reg_1656_pp0_iter14_reg;
assign bitcast_ln404_fu_1024_p1 = sub12_reg_1646_pp0_iter14_reg;
assign bitcast_ln405_fu_1064_p1 = sub19_reg_1699;
assign grp_fu_1199_p_ce = 1'b1;
assign grp_fu_1199_p_din0 = grp_fu_422_p0;
assign grp_fu_1199_p_din1 = grp_fu_422_p1;
assign grp_fu_1199_p_opcode = grp_fu_422_opcode;
assign grp_fu_1203_p_ce = 1'b1;
assign grp_fu_1203_p_din0 = grp_fu_426_p0;
assign grp_fu_1203_p_din1 = grp_fu_426_p1;
assign grp_fu_1203_p_opcode = grp_fu_426_opcode;
assign grp_fu_1207_p_ce = 1'b1;
assign grp_fu_1207_p_din0 = grp_fu_430_p0;
assign grp_fu_1207_p_din1 = grp_fu_430_p1;
assign grp_fu_1207_p_opcode = grp_fu_430_opcode;
assign grp_fu_1211_p_ce = 1'b1;
assign grp_fu_1211_p_din0 = grp_fu_434_p0;
assign grp_fu_1211_p_din1 = grp_fu_434_p1;
assign grp_fu_1211_p_opcode = grp_fu_434_opcode;
assign grp_fu_1215_p_ce = 1'b1;
assign grp_fu_1215_p_din0 = grp_fu_438_p0;
assign grp_fu_1215_p_din1 = grp_fu_438_p1;
assign grp_fu_1215_p_opcode = grp_fu_438_opcode;
assign grp_fu_1219_p_ce = 1'b1;
assign grp_fu_1219_p_din0 = grp_fu_442_p0;
assign grp_fu_1219_p_din1 = grp_fu_442_p1;
assign grp_fu_1219_p_opcode = grp_fu_442_opcode;
assign grp_fu_1223_p_ce = 1'b1;
assign grp_fu_1223_p_din0 = grp_fu_446_p0;
assign grp_fu_1223_p_din1 = grp_fu_446_p1;
assign grp_fu_1223_p_opcode = grp_fu_446_opcode;
assign grp_fu_1227_p_ce = 1'b1;
assign grp_fu_1227_p_din0 = grp_fu_450_p0;
assign grp_fu_1227_p_din1 = grp_fu_450_p1;
assign grp_fu_1227_p_opcode = grp_fu_450_opcode;
assign grp_fu_1231_p_ce = 1'b1;
assign grp_fu_1231_p_din0 = grp_fu_482_p0;
assign grp_fu_1231_p_din1 = grp_fu_482_p1;
assign grp_fu_1236_p_ce = 1'b1;
assign grp_fu_1236_p_din0 = grp_fu_487_p0;
assign grp_fu_1236_p_din1 = grp_fu_487_p1;
assign grp_fu_1243_p_ce = 1'b1;
assign grp_fu_1243_p_din0 = grp_fu_494_p0;
assign grp_fu_1243_p_din1 = grp_fu_494_p1;
assign grp_fu_1248_p_ce = 1'b1;
assign grp_fu_1248_p_din0 = grp_fu_499_p0;
assign grp_fu_1248_p_din1 = grp_fu_499_p1;
assign icmp_ln365_fu_514_p2 = ((ap_sig_allocacmp_tid_5 == 7'd64) ? 1'b1 : 1'b0);
assign or_ln_fu_542_p3 = {{trunc_ln367_fu_520_p1}, {1'd1}};
assign sext_ln392_fu_965_p1 = zext_ln390_cast_reg_1683;
assign sext_ln395_fu_1007_p1 = zext_ln391_cast_reg_1689;
assign sext_ln396_fu_1047_p1 = zext_ln390_cast_reg_1683;
assign shl_ln367_fu_524_p2 = ap_sig_allocacmp_tid_5 << 7'd1;
assign trunc_ln367_fu_520_p1 = ap_sig_allocacmp_tid_5[5:0];
assign trunc_ln386_1_fu_623_p1 = bitcast_ln386_2_fu_606_p1[62:0];
assign trunc_ln386_2_fu_727_p1 = bitcast_ln386_4_fu_710_p1[62:0];
assign trunc_ln386_3_fu_761_p1 = bitcast_ln386_6_fu_744_p1[62:0];
assign trunc_ln386_4_fu_657_p1 = bitcast_ln386_8_fu_640_p1[62:0];
assign trunc_ln386_5_fu_692_p1 = bitcast_ln386_10_fu_675_p1[62:0];
assign trunc_ln386_6_fu_795_p1 = bitcast_ln386_12_fu_778_p1[62:0];
assign trunc_ln386_7_fu_829_p1 = bitcast_ln386_14_fu_812_p1[62:0];
assign trunc_ln386_8_fu_863_p1 = bitcast_ln386_16_fu_846_p1[62:0];
assign trunc_ln386_9_fu_897_p1 = bitcast_ln386_18_fu_880_p1[62:0];
assign trunc_ln386_fu_589_p1 = bitcast_ln386_fu_572_p1[62:0];
assign work_x_address0 = work_x_address0_local;
assign work_x_address1 = work_x_address1_local;
assign work_x_ce0 = work_x_ce0_local;
assign work_x_ce1 = work_x_ce1_local;
assign work_x_d0 = work_x_d0_local;
assign work_x_d1 = work_x_d1_local;
assign work_x_we0 = work_x_we0_local;
assign work_x_we1 = work_x_we1_local;
assign work_y_address0 = work_y_address0_local;
assign work_y_address1 = work_y_address1_local;
assign work_y_ce0 = work_y_ce0_local;
assign work_y_ce1 = work_y_ce1_local;
assign work_y_d0 = work_y_d0_local;
assign work_y_d1 = work_y_d1_local;
assign work_y_we0 = work_y_we0_local;
assign work_y_we1 = work_y_we1_local;
assign xor_ln386_10_fu_583_p2 = (bit_sel_fu_575_p3 ^ 1'd1);
assign xor_ln386_11_fu_721_p2 = (bit_sel2_fu_713_p3 ^ 1'd1);
assign xor_ln386_12_fu_755_p2 = (bit_sel3_fu_747_p3 ^ 1'd1);
assign xor_ln386_13_fu_651_p2 = (bit_sel4_fu_643_p3 ^ 1'd1);
assign xor_ln386_14_fu_686_p2 = (bit_sel5_fu_678_p3 ^ 1'd1);
assign xor_ln386_15_fu_789_p2 = (bit_sel6_fu_781_p3 ^ 1'd1);
assign xor_ln386_16_fu_823_p2 = (bit_sel7_fu_815_p3 ^ 1'd1);
assign xor_ln386_17_fu_857_p2 = (bit_sel8_fu_849_p3 ^ 1'd1);
assign xor_ln386_18_fu_891_p2 = (bit_sel9_fu_883_p3 ^ 1'd1);
assign xor_ln386_1_fu_627_p3 = {{xor_ln386_fu_617_p2}, {trunc_ln386_1_fu_623_p1}};
assign xor_ln386_2_fu_731_p3 = {{xor_ln386_11_fu_721_p2}, {trunc_ln386_2_fu_727_p1}};
assign xor_ln386_3_fu_765_p3 = {{xor_ln386_12_fu_755_p2}, {trunc_ln386_3_fu_761_p1}};
assign xor_ln386_4_fu_661_p3 = {{xor_ln386_13_fu_651_p2}, {trunc_ln386_4_fu_657_p1}};
assign xor_ln386_5_fu_696_p3 = {{xor_ln386_14_fu_686_p2}, {trunc_ln386_5_fu_692_p1}};
assign xor_ln386_6_fu_799_p3 = {{xor_ln386_15_fu_789_p2}, {trunc_ln386_6_fu_795_p1}};
assign xor_ln386_7_fu_833_p3 = {{xor_ln386_16_fu_823_p2}, {trunc_ln386_7_fu_829_p1}};
assign xor_ln386_8_fu_867_p3 = {{xor_ln386_17_fu_857_p2}, {trunc_ln386_8_fu_863_p1}};
assign xor_ln386_9_fu_901_p3 = {{xor_ln386_18_fu_891_p2}, {trunc_ln386_9_fu_897_p1}};
assign xor_ln386_fu_617_p2 = (bit_sel1_fu_609_p3 ^ 1'd1);
assign xor_ln3_fu_593_p3 = {{xor_ln386_10_fu_583_p2}, {trunc_ln386_fu_589_p1}};
assign zext_ln365_1_fu_1028_p1 = tid_5_reg_1075_pp0_iter14_reg;
assign zext_ln365_fu_956_p1 = tid_5_reg_1075_pp0_iter13_reg;
assign zext_ln367_fu_530_p1 = shl_ln367_fu_524_p2;
assign zext_ln371_fu_550_p1 = or_ln_fu_542_p3;
assign zext_ln390_cast_fu_914_p3 = {{1'd1}, {trunc_ln367_reg_1088_pp0_iter13_reg}};
assign zext_ln390_fu_921_p1 = $unsigned(zext_ln390_cast_fu_914_p3);
assign zext_ln391_cast_fu_931_p3 = {{1'd1}, {tid_5_reg_1075_pp0_iter13_reg}};
assign zext_ln391_fu_938_p1 = $unsigned(zext_ln391_cast_fu_931_p3);
assign zext_ln392_fu_968_p1 = $unsigned(sext_ln392_fu_965_p1);
assign zext_ln393_1_fu_997_p1 = zext_ln393_cast_fu_989_p3;
assign zext_ln393_cast_fu_989_p3 = {{1'd1}, {zext_ln393_fu_986_p1}};
assign zext_ln393_fu_986_p1 = tid_5_reg_1075_pp0_iter14_reg;
assign zext_ln394_fu_1037_p1 = add_ln394_fu_1031_p2;
assign zext_ln395_fu_1010_p1 = $unsigned(sext_ln395_fu_1007_p1);
assign zext_ln396_fu_1050_p1 = $unsigned(sext_ln396_fu_1047_p1);
always @ (posedge ap_clk) begin
    zext_ln390_cast_reg_1683[6] <= 1'b1;
    zext_ln391_cast_reg_1689[7] <= 1'b1;
end
endmodule 
