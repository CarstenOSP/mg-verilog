module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,grp_fu_480_p_din0,grp_fu_480_p_din1,grp_fu_480_p_opcode,grp_fu_480_p_dout0,grp_fu_480_p_ce,grp_fu_484_p_din0,grp_fu_484_p_din1,grp_fu_484_p_opcode,grp_fu_484_p_dout0,grp_fu_484_p_ce,grp_fu_488_p_din0,grp_fu_488_p_din1,grp_fu_488_p_opcode,grp_fu_488_p_dout0,grp_fu_488_p_ce,grp_fu_492_p_din0,grp_fu_492_p_din1,grp_fu_492_p_opcode,grp_fu_492_p_dout0,grp_fu_492_p_ce,grp_fu_496_p_din0,grp_fu_496_p_din1,grp_fu_496_p_opcode,grp_fu_496_p_dout0,grp_fu_496_p_ce,grp_fu_500_p_din0,grp_fu_500_p_din1,grp_fu_500_p_opcode,grp_fu_500_p_dout0,grp_fu_500_p_ce,grp_fu_504_p_din0,grp_fu_504_p_din1,grp_fu_504_p_opcode,grp_fu_504_p_dout0,grp_fu_504_p_ce,grp_fu_508_p_din0,grp_fu_508_p_din1,grp_fu_508_p_opcode,grp_fu_508_p_dout0,grp_fu_508_p_ce,grp_fu_512_p_din0,grp_fu_512_p_din1,grp_fu_512_p_opcode,grp_fu_512_p_dout0,grp_fu_512_p_ce,grp_fu_516_p_din0,grp_fu_516_p_din1,grp_fu_516_p_opcode,grp_fu_516_p_dout0,grp_fu_516_p_ce,grp_fu_520_p_din0,grp_fu_520_p_din1,grp_fu_520_p_opcode,grp_fu_520_p_dout0,grp_fu_520_p_ce,grp_fu_524_p_din0,grp_fu_524_p_din1,grp_fu_524_p_opcode,grp_fu_524_p_dout0,grp_fu_524_p_ce,grp_fu_528_p_din0,grp_fu_528_p_din1,grp_fu_528_p_opcode,grp_fu_528_p_dout0,grp_fu_528_p_ce,grp_fu_532_p_din0,grp_fu_532_p_din1,grp_fu_532_p_opcode,grp_fu_532_p_dout0,grp_fu_532_p_ce,grp_fu_536_p_din0,grp_fu_536_p_din1,grp_fu_536_p_opcode,grp_fu_536_p_dout0,grp_fu_536_p_ce,grp_fu_540_p_din0,grp_fu_540_p_din1,grp_fu_540_p_dout0,grp_fu_540_p_ce,grp_fu_544_p_din0,grp_fu_544_p_din1,grp_fu_544_p_dout0,grp_fu_544_p_ce,grp_fu_548_p_din0,grp_fu_548_p_din1,grp_fu_548_p_dout0,grp_fu_548_p_ce,grp_fu_593_p_din0,grp_fu_593_p_din1,grp_fu_593_p_dout0,grp_fu_593_p_ce); 
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
output  [5:0] DATA_y_address0;
output   DATA_y_ce0;
input  [63:0] DATA_y_q0;
output  [5:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
input  [63:0] DATA_y_1_q0;
output  [5:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
input  [63:0] DATA_y_2_q0;
output  [5:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
input  [63:0] DATA_y_3_q0;
output  [5:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
input  [63:0] DATA_y_4_q0;
output  [5:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
input  [63:0] DATA_y_5_q0;
output  [5:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
input  [63:0] DATA_y_6_q0;
output  [5:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
input  [63:0] DATA_y_7_q0;
output  [5:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [5:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [5:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [5:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [5:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [5:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [5:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [5:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
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
output  [63:0] grp_fu_480_p_din0;
output  [63:0] grp_fu_480_p_din1;
output  [1:0] grp_fu_480_p_opcode;
input  [63:0] grp_fu_480_p_dout0;
output   grp_fu_480_p_ce;
output  [63:0] grp_fu_484_p_din0;
output  [63:0] grp_fu_484_p_din1;
output  [1:0] grp_fu_484_p_opcode;
input  [63:0] grp_fu_484_p_dout0;
output   grp_fu_484_p_ce;
output  [63:0] grp_fu_488_p_din0;
output  [63:0] grp_fu_488_p_din1;
output  [1:0] grp_fu_488_p_opcode;
input  [63:0] grp_fu_488_p_dout0;
output   grp_fu_488_p_ce;
output  [63:0] grp_fu_492_p_din0;
output  [63:0] grp_fu_492_p_din1;
output  [1:0] grp_fu_492_p_opcode;
input  [63:0] grp_fu_492_p_dout0;
output   grp_fu_492_p_ce;
output  [63:0] grp_fu_496_p_din0;
output  [63:0] grp_fu_496_p_din1;
output  [1:0] grp_fu_496_p_opcode;
input  [63:0] grp_fu_496_p_dout0;
output   grp_fu_496_p_ce;
output  [63:0] grp_fu_500_p_din0;
output  [63:0] grp_fu_500_p_din1;
output  [1:0] grp_fu_500_p_opcode;
input  [63:0] grp_fu_500_p_dout0;
output   grp_fu_500_p_ce;
output  [63:0] grp_fu_504_p_din0;
output  [63:0] grp_fu_504_p_din1;
output  [1:0] grp_fu_504_p_opcode;
input  [63:0] grp_fu_504_p_dout0;
output   grp_fu_504_p_ce;
output  [63:0] grp_fu_508_p_din0;
output  [63:0] grp_fu_508_p_din1;
output  [1:0] grp_fu_508_p_opcode;
input  [63:0] grp_fu_508_p_dout0;
output   grp_fu_508_p_ce;
output  [63:0] grp_fu_512_p_din0;
output  [63:0] grp_fu_512_p_din1;
output  [1:0] grp_fu_512_p_opcode;
input  [63:0] grp_fu_512_p_dout0;
output   grp_fu_512_p_ce;
output  [63:0] grp_fu_516_p_din0;
output  [63:0] grp_fu_516_p_din1;
output  [1:0] grp_fu_516_p_opcode;
input  [63:0] grp_fu_516_p_dout0;
output   grp_fu_516_p_ce;
output  [63:0] grp_fu_520_p_din0;
output  [63:0] grp_fu_520_p_din1;
output  [1:0] grp_fu_520_p_opcode;
input  [63:0] grp_fu_520_p_dout0;
output   grp_fu_520_p_ce;
output  [63:0] grp_fu_524_p_din0;
output  [63:0] grp_fu_524_p_din1;
output  [1:0] grp_fu_524_p_opcode;
input  [63:0] grp_fu_524_p_dout0;
output   grp_fu_524_p_ce;
output  [63:0] grp_fu_528_p_din0;
output  [63:0] grp_fu_528_p_din1;
output  [1:0] grp_fu_528_p_opcode;
input  [63:0] grp_fu_528_p_dout0;
output   grp_fu_528_p_ce;
output  [63:0] grp_fu_532_p_din0;
output  [63:0] grp_fu_532_p_din1;
output  [1:0] grp_fu_532_p_opcode;
input  [63:0] grp_fu_532_p_dout0;
output   grp_fu_532_p_ce;
output  [63:0] grp_fu_536_p_din0;
output  [63:0] grp_fu_536_p_din1;
output  [1:0] grp_fu_536_p_opcode;
input  [63:0] grp_fu_536_p_dout0;
output   grp_fu_536_p_ce;
output  [63:0] grp_fu_540_p_din0;
output  [63:0] grp_fu_540_p_din1;
input  [63:0] grp_fu_540_p_dout0;
output   grp_fu_540_p_ce;
output  [63:0] grp_fu_544_p_din0;
output  [63:0] grp_fu_544_p_din1;
input  [63:0] grp_fu_544_p_dout0;
output   grp_fu_544_p_ce;
output  [63:0] grp_fu_548_p_din0;
output  [63:0] grp_fu_548_p_din1;
input  [63:0] grp_fu_548_p_dout0;
output   grp_fu_548_p_ce;
output  [63:0] grp_fu_593_p_din0;
output  [63:0] grp_fu_593_p_din1;
input  [63:0] grp_fu_593_p_dout0;
output   grp_fu_593_p_ce;
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
reg   [0:0] icmp_ln365_reg_1083;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_5_reg_1074;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_5_reg_1074_pp0_iter1_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter2_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter3_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter4_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter5_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter6_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter7_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter8_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter9_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter10_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter11_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter12_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter13_reg;
reg   [6:0] tid_5_reg_1074_pp0_iter14_reg;
wire   [0:0] icmp_ln365_fu_536_p2;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter1_reg;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter2_reg;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter3_reg;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter4_reg;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter5_reg;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter6_reg;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter7_reg;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter8_reg;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter9_reg;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter10_reg;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter11_reg;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter12_reg;
reg   [0:0] icmp_ln365_reg_1083_pp0_iter13_reg;
wire   [63:0] zext_ln365_fu_542_p1;
reg   [63:0] zext_ln365_reg_1087;
reg   [63:0] zext_ln365_reg_1087_pp0_iter1_reg;
reg   [63:0] zext_ln365_reg_1087_pp0_iter2_reg;
reg   [63:0] zext_ln365_reg_1087_pp0_iter3_reg;
reg   [63:0] zext_ln365_reg_1087_pp0_iter4_reg;
reg   [63:0] zext_ln365_reg_1087_pp0_iter5_reg;
reg   [63:0] zext_ln365_reg_1087_pp0_iter6_reg;
reg   [63:0] zext_ln365_reg_1087_pp0_iter7_reg;
reg   [63:0] zext_ln365_reg_1087_pp0_iter8_reg;
reg   [63:0] zext_ln365_reg_1087_pp0_iter9_reg;
reg   [63:0] zext_ln365_reg_1087_pp0_iter10_reg;
reg   [63:0] zext_ln365_reg_1087_pp0_iter11_reg;
reg   [63:0] zext_ln365_reg_1087_pp0_iter12_reg;
reg   [63:0] zext_ln365_reg_1087_pp0_iter13_reg;
reg   [63:0] c0_y_reg_1173;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] c0_y_29_reg_1179;
reg   [63:0] c0_y_30_reg_1185;
reg   [63:0] c0_y_31_reg_1190;
reg   [63:0] DATA_y_4_load_reg_1196;
reg   [63:0] DATA_y_5_load_reg_1202;
reg   [63:0] DATA_y_6_load_reg_1208;
reg   [63:0] DATA_y_7_load_reg_1213;
reg   [63:0] c0_x_reg_1219;
reg   [63:0] c0_x_29_reg_1225;
reg   [63:0] c0_x_30_reg_1231;
reg   [63:0] c0_x_31_reg_1236;
reg   [63:0] DATA_x_4_load_reg_1242;
reg   [63:0] DATA_x_5_load_reg_1248;
reg   [63:0] DATA_x_6_load_reg_1254;
reg   [63:0] DATA_x_7_load_reg_1259;
reg   [63:0] c0_x_20_reg_1265;
reg   [63:0] c0_y_20_reg_1271;
reg   [63:0] tmp_1_reg_1277;
reg   [63:0] sub_reg_1283;
reg   [63:0] tmp_1_1_reg_1289;
reg   [63:0] tmp_1_1_reg_1289_pp0_iter3_reg;
reg   [63:0] tmp_1_1_reg_1289_pp0_iter4_reg;
reg   [63:0] sub12_reg_1295;
reg   [63:0] sub12_reg_1295_pp0_iter3_reg;
reg   [63:0] sub12_reg_1295_pp0_iter4_reg;
reg   [63:0] add12_reg_1301;
reg   [63:0] add13_reg_1307;
reg   [63:0] tmp_1_2_reg_1313;
reg   [63:0] sub13_reg_1318;
reg   [63:0] c0_x_32_reg_1323;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_32_reg_1329;
reg   [63:0] c0_x_19_reg_1335;
reg   [63:0] c0_x_19_reg_1335_pp0_iter3_reg;
reg   [63:0] c0_x_19_reg_1335_pp0_iter4_reg;
reg   [63:0] c0_x_19_reg_1335_pp0_iter5_reg;
reg   [63:0] c0_x_19_reg_1335_pp0_iter6_reg;
reg   [63:0] c0_y_19_reg_1341;
reg   [63:0] c0_y_19_reg_1341_pp0_iter3_reg;
reg   [63:0] c0_y_19_reg_1341_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_1341_pp0_iter5_reg;
reg   [63:0] c0_y_19_reg_1341_pp0_iter6_reg;
reg   [63:0] add_reg_1347;
reg   [63:0] add11_reg_1353;
wire   [63:0] bitcast_ln386_1_fu_601_p1;
wire   [63:0] bitcast_ln386_3_fu_635_p1;
wire   [63:0] bitcast_ln386_9_fu_669_p1;
wire   [63:0] bitcast_ln386_11_fu_704_p1;
reg   [63:0] sub14_reg_1381;
reg   [63:0] add14_reg_1386;
reg   [63:0] mul_reg_1391;
reg   [63:0] mul6_reg_1396;
reg   [63:0] sub16_reg_1401;
reg   [63:0] add16_reg_1406;
reg   [63:0] tmp_8_reg_1411;
reg   [63:0] tmp_8_reg_1411_pp0_iter5_reg;
reg   [63:0] tmp_8_reg_1411_pp0_iter6_reg;
reg   [63:0] c0_x_33_reg_1417;
reg   [63:0] c0_y_33_reg_1423;
reg   [63:0] sub17_reg_1429;
reg   [63:0] sub17_reg_1429_pp0_iter5_reg;
reg   [63:0] sub17_reg_1429_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_5_fu_739_p1;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln386_7_fu_773_p1;
reg   [63:0] c0_x_22_reg_1445;
reg   [63:0] c0_x_22_reg_1445_pp0_iter5_reg;
reg   [63:0] c0_x_22_reg_1445_pp0_iter6_reg;
reg   [63:0] c0_x_22_reg_1445_pp0_iter7_reg;
reg   [63:0] c0_x_22_reg_1445_pp0_iter8_reg;
reg   [63:0] c0_y_22_reg_1451;
reg   [63:0] c0_y_22_reg_1451_pp0_iter5_reg;
reg   [63:0] c0_y_22_reg_1451_pp0_iter6_reg;
reg   [63:0] c0_y_22_reg_1451_pp0_iter7_reg;
reg   [63:0] c0_y_22_reg_1451_pp0_iter8_reg;
reg   [63:0] add17_reg_1457;
reg   [63:0] add18_reg_1463;
reg   [63:0] c0_x_21_reg_1469;
reg   [63:0] c0_y_21_reg_1475;
reg   [63:0] mul7_reg_1481;
reg   [63:0] mul8_reg_1487;
reg   [63:0] mul9_reg_1493;
reg   [63:0] mul10_reg_1498;
reg   [63:0] sub15_reg_1503;
reg   [63:0] add15_reg_1509;
reg   [63:0] sub20_reg_1515;
reg   [63:0] sub20_reg_1515_pp0_iter7_reg;
reg   [63:0] sub20_reg_1515_pp0_iter8_reg;
reg   [63:0] sub20_reg_1515_pp0_iter9_reg;
reg   [63:0] sub20_reg_1515_pp0_iter10_reg;
reg   [63:0] sub20_reg_1515_pp0_iter11_reg;
reg   [63:0] sub20_reg_1515_pp0_iter12_reg;
reg   [63:0] sub20_reg_1515_pp0_iter13_reg;
reg   [63:0] sub21_reg_1520;
reg   [63:0] sub21_reg_1520_pp0_iter7_reg;
reg   [63:0] sub21_reg_1520_pp0_iter8_reg;
reg   [63:0] sub21_reg_1520_pp0_iter9_reg;
reg   [63:0] sub21_reg_1520_pp0_iter10_reg;
reg   [63:0] sub21_reg_1520_pp0_iter11_reg;
reg   [63:0] sub21_reg_1520_pp0_iter12_reg;
reg   [63:0] sub21_reg_1520_pp0_iter13_reg;
wire   [63:0] bitcast_ln386_13_fu_807_p1;
wire   [63:0] bitcast_ln386_15_fu_841_p1;
reg   [63:0] add19_reg_1535;
reg   [63:0] add19_reg_1535_pp0_iter8_reg;
reg   [63:0] add19_reg_1535_pp0_iter9_reg;
reg   [63:0] add19_reg_1535_pp0_iter10_reg;
reg   [63:0] add19_reg_1535_pp0_iter11_reg;
reg   [63:0] add19_reg_1535_pp0_iter12_reg;
reg   [63:0] add19_reg_1535_pp0_iter13_reg;
reg   [63:0] add20_reg_1540;
reg   [63:0] add20_reg_1540_pp0_iter8_reg;
reg   [63:0] add20_reg_1540_pp0_iter9_reg;
reg   [63:0] add20_reg_1540_pp0_iter10_reg;
reg   [63:0] add20_reg_1540_pp0_iter11_reg;
reg   [63:0] add20_reg_1540_pp0_iter12_reg;
reg   [63:0] add20_reg_1540_pp0_iter13_reg;
reg   [63:0] add23_reg_1545;
reg   [63:0] add23_reg_1545_pp0_iter9_reg;
reg   [63:0] add24_reg_1550;
reg   [63:0] add24_reg_1550_pp0_iter9_reg;
reg   [63:0] tmp_9_reg_1555;
reg   [63:0] tmp_9_reg_1555_pp0_iter9_reg;
reg   [63:0] sub24_reg_1561;
reg   [63:0] sub24_reg_1561_pp0_iter9_reg;
reg   [63:0] c0_x_34_reg_1567;
reg   [63:0] c0_y_34_reg_1572;
reg   [63:0] c0_x_23_reg_1577;
reg   [63:0] c0_x_23_reg_1577_pp0_iter9_reg;
reg   [63:0] c0_x_23_reg_1577_pp0_iter10_reg;
reg   [63:0] c0_x_23_reg_1577_pp0_iter11_reg;
reg   [63:0] c0_y_23_reg_1583;
reg   [63:0] c0_y_23_reg_1583_pp0_iter9_reg;
reg   [63:0] c0_y_23_reg_1583_pp0_iter10_reg;
reg   [63:0] c0_y_23_reg_1583_pp0_iter11_reg;
reg   [63:0] sub18_reg_1589;
reg   [63:0] sub19_reg_1595;
reg   [63:0] mul11_reg_1601;
reg   [63:0] mul12_reg_1606;
wire   [63:0] bitcast_ln386_17_fu_875_p1;
wire   [63:0] bitcast_ln386_19_fu_909_p1;
reg   [63:0] add21_reg_1621;
reg   [63:0] add21_reg_1621_pp0_iter11_reg;
reg   [63:0] add21_reg_1621_pp0_iter12_reg;
reg   [63:0] add25_reg_1626;
reg   [63:0] add25_reg_1626_pp0_iter11_reg;
reg   [63:0] add25_reg_1626_pp0_iter12_reg;
reg   [63:0] add26_reg_1631;
reg   [63:0] add26_reg_1631_pp0_iter11_reg;
reg   [63:0] add26_reg_1631_pp0_iter12_reg;
reg   [63:0] add22_reg_1636;
reg   [63:0] add22_reg_1636_pp0_iter12_reg;
reg   [63:0] add22_reg_1636_pp0_iter13_reg;
reg   [63:0] sub22_reg_1641;
reg   [63:0] sub22_reg_1641_pp0_iter12_reg;
reg   [63:0] sub22_reg_1641_pp0_iter13_reg;
reg   [63:0] sub22_reg_1641_pp0_iter14_reg;
reg   [63:0] sub23_reg_1646;
reg   [63:0] sub23_reg_1646_pp0_iter12_reg;
reg   [63:0] sub23_reg_1646_pp0_iter13_reg;
reg   [63:0] sub23_reg_1646_pp0_iter14_reg;
reg   [63:0] sub27_reg_1651;
reg   [63:0] sub27_reg_1651_pp0_iter12_reg;
reg   [63:0] sub27_reg_1651_pp0_iter13_reg;
reg   [63:0] sub27_reg_1651_pp0_iter14_reg;
reg   [63:0] sub28_reg_1656;
reg   [63:0] sub28_reg_1656_pp0_iter12_reg;
reg   [63:0] sub28_reg_1656_pp0_iter13_reg;
reg   [63:0] sub28_reg_1656_pp0_iter14_reg;
reg   [63:0] sub25_reg_1661;
reg   [63:0] sub26_reg_1667;
reg   [63:0] add27_reg_1673;
reg   [63:0] add28_reg_1678;
wire  signed [6:0] zext_ln390_cast_fu_917_p3;
reg  signed [6:0] zext_ln390_cast_reg_1683;
wire  signed [7:0] zext_ln391_cast_fu_935_p3;
reg  signed [7:0] zext_ln391_cast_reg_1689;
reg   [63:0] sub29_reg_1694;
reg   [63:0] sub30_reg_1699;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln390_fu_925_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln391_fu_942_p1;
wire   [63:0] zext_ln392_fu_967_p1;
wire   [63:0] zext_ln393_1_fu_996_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_1009_p1;
wire   [63:0] zext_ln394_fu_1036_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln396_fu_1049_p1;
reg   [6:0] tid_fu_86;
wire   [6:0] add_ln365_fu_562_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_5;
reg    DATA_y_ce0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_x_ce0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_7_ce0_local;
reg    work_x_we1_local;
reg   [63:0] work_x_d1_local;
wire   [63:0] bitcast_ln390_fu_931_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_948_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln389_fu_960_p1;
wire   [63:0] bitcast_ln392_fu_973_p1;
wire   [63:0] bitcast_ln393_fu_1002_p1;
wire   [63:0] bitcast_ln395_fu_1015_p1;
wire   [63:0] bitcast_ln394_fu_1042_p1;
wire   [63:0] bitcast_ln396_fu_1055_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_952_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_956_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln398_fu_977_p1;
wire   [63:0] bitcast_ln401_fu_981_p1;
wire   [63:0] bitcast_ln402_fu_1019_p1;
wire   [63:0] bitcast_ln404_fu_1023_p1;
wire   [63:0] bitcast_ln403_fu_1059_p1;
wire   [63:0] bitcast_ln405_fu_1063_p1;
reg   [63:0] grp_fu_444_p0;
reg   [63:0] grp_fu_444_p1;
reg   [63:0] grp_fu_448_p0;
reg   [63:0] grp_fu_448_p1;
reg   [63:0] grp_fu_452_p0;
reg   [63:0] grp_fu_452_p1;
reg   [63:0] grp_fu_456_p0;
reg   [63:0] grp_fu_456_p1;
reg   [63:0] grp_fu_460_p0;
reg   [63:0] grp_fu_460_p1;
reg   [63:0] grp_fu_464_p0;
reg   [63:0] grp_fu_464_p1;
reg   [63:0] grp_fu_468_p0;
reg   [63:0] grp_fu_468_p1;
reg   [63:0] grp_fu_472_p0;
reg   [63:0] grp_fu_472_p1;
reg   [63:0] grp_fu_476_p0;
reg   [63:0] grp_fu_476_p1;
reg   [63:0] grp_fu_480_p0;
reg   [63:0] grp_fu_480_p1;
reg   [63:0] grp_fu_484_p0;
reg   [63:0] grp_fu_484_p1;
reg   [63:0] grp_fu_488_p0;
reg   [63:0] grp_fu_488_p1;
reg   [63:0] grp_fu_492_p0;
reg   [63:0] grp_fu_492_p1;
reg   [63:0] grp_fu_496_p0;
reg   [63:0] grp_fu_496_p1;
reg   [63:0] grp_fu_500_p0;
reg   [63:0] grp_fu_500_p1;
reg   [63:0] grp_fu_504_p0;
reg   [63:0] grp_fu_504_p1;
reg   [63:0] grp_fu_509_p0;
reg   [63:0] grp_fu_509_p1;
reg   [63:0] grp_fu_516_p0;
reg   [63:0] grp_fu_516_p1;
reg   [63:0] grp_fu_521_p0;
reg   [63:0] grp_fu_521_p1;
wire   [63:0] bitcast_ln386_fu_572_p1;
wire   [0:0] bit_sel_fu_575_p3;
wire   [0:0] xor_ln386_10_fu_583_p2;
wire   [62:0] trunc_ln386_fu_589_p1;
wire   [63:0] xor_ln3_fu_593_p3;
wire   [63:0] bitcast_ln386_2_fu_606_p1;
wire   [0:0] bit_sel20_fu_609_p3;
wire   [0:0] xor_ln386_fu_617_p2;
wire   [62:0] trunc_ln386_1_fu_623_p1;
wire   [63:0] xor_ln386_1_fu_627_p3;
wire   [63:0] bitcast_ln386_8_fu_640_p1;
wire   [0:0] bit_sel23_fu_643_p3;
wire   [0:0] xor_ln386_13_fu_651_p2;
wire   [62:0] trunc_ln386_4_fu_657_p1;
wire   [63:0] xor_ln386_4_fu_661_p3;
wire   [63:0] bitcast_ln386_10_fu_675_p1;
wire   [0:0] bit_sel24_fu_678_p3;
wire   [0:0] xor_ln386_14_fu_686_p2;
wire   [62:0] trunc_ln386_5_fu_692_p1;
wire   [63:0] xor_ln386_5_fu_696_p3;
wire   [63:0] bitcast_ln386_4_fu_710_p1;
wire   [0:0] bit_sel21_fu_713_p3;
wire   [0:0] xor_ln386_11_fu_721_p2;
wire   [62:0] trunc_ln386_2_fu_727_p1;
wire   [63:0] xor_ln386_2_fu_731_p3;
wire   [63:0] bitcast_ln386_6_fu_744_p1;
wire   [0:0] bit_sel22_fu_747_p3;
wire   [0:0] xor_ln386_12_fu_755_p2;
wire   [62:0] trunc_ln386_3_fu_761_p1;
wire   [63:0] xor_ln386_3_fu_765_p3;
wire   [63:0] bitcast_ln386_12_fu_778_p1;
wire   [0:0] bit_sel25_fu_781_p3;
wire   [0:0] xor_ln386_15_fu_789_p2;
wire   [62:0] trunc_ln386_6_fu_795_p1;
wire   [63:0] xor_ln386_6_fu_799_p3;
wire   [63:0] bitcast_ln386_14_fu_812_p1;
wire   [0:0] bit_sel26_fu_815_p3;
wire   [0:0] xor_ln386_16_fu_823_p2;
wire   [62:0] trunc_ln386_7_fu_829_p1;
wire   [63:0] xor_ln386_7_fu_833_p3;
wire   [63:0] bitcast_ln386_16_fu_846_p1;
wire   [0:0] bit_sel27_fu_849_p3;
wire   [0:0] xor_ln386_17_fu_857_p2;
wire   [62:0] trunc_ln386_8_fu_863_p1;
wire   [63:0] xor_ln386_8_fu_867_p3;
wire   [63:0] bitcast_ln386_18_fu_880_p1;
wire   [0:0] bit_sel28_fu_883_p3;
wire   [0:0] xor_ln386_18_fu_891_p2;
wire   [62:0] trunc_ln386_9_fu_897_p1;
wire   [63:0] xor_ln386_9_fu_901_p3;
wire   [5:0] trunc_ln390_fu_914_p1;
wire  signed [7:0] sext_ln392_fu_964_p1;
wire   [7:0] zext_ln393_fu_985_p1;
wire   [8:0] zext_ln393_cast_fu_988_p3;
wire  signed [8:0] sext_ln395_fu_1006_p1;
wire   [8:0] zext_ln365_1_fu_1027_p1;
wire   [8:0] add_ln394_fu_1030_p2;
wire  signed [8:0] sext_ln396_fu_1046_p1;
reg   [1:0] grp_fu_444_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
reg   [1:0] grp_fu_448_opcode;
reg   [1:0] grp_fu_452_opcode;
reg   [1:0] grp_fu_456_opcode;
reg   [1:0] grp_fu_460_opcode;
reg   [1:0] grp_fu_464_opcode;
reg   [1:0] grp_fu_468_opcode;
reg   [1:0] grp_fu_472_opcode;
reg   [1:0] grp_fu_476_opcode;
reg   [1:0] grp_fu_480_opcode;
reg   [1:0] grp_fu_484_opcode;
reg   [1:0] grp_fu_488_opcode;
reg   [1:0] grp_fu_492_opcode;
reg   [1:0] grp_fu_496_opcode;
reg   [1:0] grp_fu_500_opcode;
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
#0 tid_fu_86 = 7'd0;
#0 ap_done_reg = 1'b0;
end
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
        tid_fu_86 <= 7'd0;
    end else if (((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_86 <= add_ln365_fu_562_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_x_4_load_reg_1242 <= DATA_x_4_q0;
        DATA_x_5_load_reg_1248 <= DATA_x_5_q0;
        DATA_x_6_load_reg_1254 <= DATA_x_6_q0;
        DATA_x_7_load_reg_1259 <= DATA_x_7_q0;
        DATA_y_4_load_reg_1196 <= DATA_y_4_q0;
        DATA_y_5_load_reg_1202 <= DATA_y_5_q0;
        DATA_y_6_load_reg_1208 <= DATA_y_6_q0;
        DATA_y_7_load_reg_1213 <= DATA_y_7_q0;
        c0_x_29_reg_1225 <= DATA_x_1_q0;
        c0_x_30_reg_1231 <= DATA_x_2_q0;
        c0_x_31_reg_1236 <= DATA_x_3_q0;
        c0_x_reg_1219 <= DATA_x_q0;
        c0_y_29_reg_1179 <= DATA_y_1_q0;
        c0_y_30_reg_1185 <= DATA_y_2_q0;
        c0_y_31_reg_1190 <= DATA_y_3_q0;
        c0_y_reg_1173 <= DATA_y_q0;
        sub12_reg_1295_pp0_iter3_reg <= sub12_reg_1295;
        sub12_reg_1295_pp0_iter4_reg <= sub12_reg_1295_pp0_iter3_reg;
        tmp_1_1_reg_1289_pp0_iter3_reg <= tmp_1_1_reg_1289;
        tmp_1_1_reg_1289_pp0_iter4_reg <= tmp_1_1_reg_1289_pp0_iter3_reg;
        tmp_8_reg_1411_pp0_iter5_reg <= tmp_8_reg_1411;
        tmp_8_reg_1411_pp0_iter6_reg <= tmp_8_reg_1411_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_reg_1353 <= grp_fu_500_p_dout0;
        add_reg_1347 <= grp_fu_496_p_dout0;
        c0_x_19_reg_1335 <= grp_fu_488_p_dout0;
        c0_x_32_reg_1323 <= grp_fu_480_p_dout0;
        c0_y_19_reg_1341 <= grp_fu_492_p_dout0;
        c0_y_32_reg_1329 <= grp_fu_484_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add12_reg_1301 <= grp_fu_504_p_dout0;
        add13_reg_1307 <= grp_fu_508_p_dout0;
        c0_x_20_reg_1265 <= grp_fu_480_p_dout0;
        c0_y_20_reg_1271 <= grp_fu_484_p_dout0;
        sub12_reg_1295 <= grp_fu_500_p_dout0;
        sub13_reg_1318 <= grp_fu_516_p_dout0;
        sub_reg_1283 <= grp_fu_492_p_dout0;
        tmp_1_1_reg_1289 <= grp_fu_496_p_dout0;
        tmp_1_2_reg_1313 <= grp_fu_512_p_dout0;
        tmp_1_reg_1277 <= grp_fu_488_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add14_reg_1386 <= grp_fu_524_p_dout0;
        add16_reg_1406 <= grp_fu_532_p_dout0;
        mul6_reg_1396 <= grp_fu_544_p_dout0;
        mul_reg_1391 <= grp_fu_540_p_dout0;
        sub14_reg_1381 <= grp_fu_520_p_dout0;
        sub16_reg_1401 <= grp_fu_528_p_dout0;
        tmp_8_reg_1411 <= grp_fu_536_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_1509 <= grp_fu_520_p_dout0;
        sub15_reg_1503 <= grp_fu_516_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add17_reg_1457 <= grp_fu_488_p_dout0;
        add18_reg_1463 <= grp_fu_492_p_dout0;
        c0_x_22_reg_1445 <= grp_fu_480_p_dout0;
        c0_y_22_reg_1451 <= grp_fu_484_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_1535 <= grp_fu_480_p_dout0;
        add20_reg_1540 <= grp_fu_484_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_1535_pp0_iter10_reg <= add19_reg_1535_pp0_iter9_reg;
        add19_reg_1535_pp0_iter11_reg <= add19_reg_1535_pp0_iter10_reg;
        add19_reg_1535_pp0_iter12_reg <= add19_reg_1535_pp0_iter11_reg;
        add19_reg_1535_pp0_iter13_reg <= add19_reg_1535_pp0_iter12_reg;
        add19_reg_1535_pp0_iter8_reg <= add19_reg_1535;
        add19_reg_1535_pp0_iter9_reg <= add19_reg_1535_pp0_iter8_reg;
        add20_reg_1540_pp0_iter10_reg <= add20_reg_1540_pp0_iter9_reg;
        add20_reg_1540_pp0_iter11_reg <= add20_reg_1540_pp0_iter10_reg;
        add20_reg_1540_pp0_iter12_reg <= add20_reg_1540_pp0_iter11_reg;
        add20_reg_1540_pp0_iter13_reg <= add20_reg_1540_pp0_iter12_reg;
        add20_reg_1540_pp0_iter8_reg <= add20_reg_1540;
        add20_reg_1540_pp0_iter9_reg <= add20_reg_1540_pp0_iter8_reg;
        add22_reg_1636_pp0_iter12_reg <= add22_reg_1636;
        add22_reg_1636_pp0_iter13_reg <= add22_reg_1636_pp0_iter12_reg;
        add23_reg_1545_pp0_iter9_reg <= add23_reg_1545;
        add24_reg_1550_pp0_iter9_reg <= add24_reg_1550;
        icmp_ln365_reg_1083 <= icmp_ln365_fu_536_p2;
        icmp_ln365_reg_1083_pp0_iter10_reg <= icmp_ln365_reg_1083_pp0_iter9_reg;
        icmp_ln365_reg_1083_pp0_iter11_reg <= icmp_ln365_reg_1083_pp0_iter10_reg;
        icmp_ln365_reg_1083_pp0_iter12_reg <= icmp_ln365_reg_1083_pp0_iter11_reg;
        icmp_ln365_reg_1083_pp0_iter13_reg <= icmp_ln365_reg_1083_pp0_iter12_reg;
        icmp_ln365_reg_1083_pp0_iter1_reg <= icmp_ln365_reg_1083;
        icmp_ln365_reg_1083_pp0_iter2_reg <= icmp_ln365_reg_1083_pp0_iter1_reg;
        icmp_ln365_reg_1083_pp0_iter3_reg <= icmp_ln365_reg_1083_pp0_iter2_reg;
        icmp_ln365_reg_1083_pp0_iter4_reg <= icmp_ln365_reg_1083_pp0_iter3_reg;
        icmp_ln365_reg_1083_pp0_iter5_reg <= icmp_ln365_reg_1083_pp0_iter4_reg;
        icmp_ln365_reg_1083_pp0_iter6_reg <= icmp_ln365_reg_1083_pp0_iter5_reg;
        icmp_ln365_reg_1083_pp0_iter7_reg <= icmp_ln365_reg_1083_pp0_iter6_reg;
        icmp_ln365_reg_1083_pp0_iter8_reg <= icmp_ln365_reg_1083_pp0_iter7_reg;
        icmp_ln365_reg_1083_pp0_iter9_reg <= icmp_ln365_reg_1083_pp0_iter8_reg;
        sub22_reg_1641_pp0_iter12_reg <= sub22_reg_1641;
        sub22_reg_1641_pp0_iter13_reg <= sub22_reg_1641_pp0_iter12_reg;
        sub22_reg_1641_pp0_iter14_reg <= sub22_reg_1641_pp0_iter13_reg;
        sub23_reg_1646_pp0_iter12_reg <= sub23_reg_1646;
        sub23_reg_1646_pp0_iter13_reg <= sub23_reg_1646_pp0_iter12_reg;
        sub23_reg_1646_pp0_iter14_reg <= sub23_reg_1646_pp0_iter13_reg;
        sub24_reg_1561_pp0_iter9_reg <= sub24_reg_1561;
        sub27_reg_1651_pp0_iter12_reg <= sub27_reg_1651;
        sub27_reg_1651_pp0_iter13_reg <= sub27_reg_1651_pp0_iter12_reg;
        sub27_reg_1651_pp0_iter14_reg <= sub27_reg_1651_pp0_iter13_reg;
        sub28_reg_1656_pp0_iter12_reg <= sub28_reg_1656;
        sub28_reg_1656_pp0_iter13_reg <= sub28_reg_1656_pp0_iter12_reg;
        sub28_reg_1656_pp0_iter14_reg <= sub28_reg_1656_pp0_iter13_reg;
        tid_5_reg_1074 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_1074_pp0_iter10_reg <= tid_5_reg_1074_pp0_iter9_reg;
        tid_5_reg_1074_pp0_iter11_reg <= tid_5_reg_1074_pp0_iter10_reg;
        tid_5_reg_1074_pp0_iter12_reg <= tid_5_reg_1074_pp0_iter11_reg;
        tid_5_reg_1074_pp0_iter13_reg <= tid_5_reg_1074_pp0_iter12_reg;
        tid_5_reg_1074_pp0_iter14_reg <= tid_5_reg_1074_pp0_iter13_reg;
        tid_5_reg_1074_pp0_iter1_reg <= tid_5_reg_1074;
        tid_5_reg_1074_pp0_iter2_reg <= tid_5_reg_1074_pp0_iter1_reg;
        tid_5_reg_1074_pp0_iter3_reg <= tid_5_reg_1074_pp0_iter2_reg;
        tid_5_reg_1074_pp0_iter4_reg <= tid_5_reg_1074_pp0_iter3_reg;
        tid_5_reg_1074_pp0_iter5_reg <= tid_5_reg_1074_pp0_iter4_reg;
        tid_5_reg_1074_pp0_iter6_reg <= tid_5_reg_1074_pp0_iter5_reg;
        tid_5_reg_1074_pp0_iter7_reg <= tid_5_reg_1074_pp0_iter6_reg;
        tid_5_reg_1074_pp0_iter8_reg <= tid_5_reg_1074_pp0_iter7_reg;
        tid_5_reg_1074_pp0_iter9_reg <= tid_5_reg_1074_pp0_iter8_reg;
        tmp_9_reg_1555_pp0_iter9_reg <= tmp_9_reg_1555;
        zext_ln365_reg_1087[6 : 0] <= zext_ln365_fu_542_p1[6 : 0];
        zext_ln365_reg_1087_pp0_iter10_reg[6 : 0] <= zext_ln365_reg_1087_pp0_iter9_reg[6 : 0];
        zext_ln365_reg_1087_pp0_iter11_reg[6 : 0] <= zext_ln365_reg_1087_pp0_iter10_reg[6 : 0];
        zext_ln365_reg_1087_pp0_iter12_reg[6 : 0] <= zext_ln365_reg_1087_pp0_iter11_reg[6 : 0];
        zext_ln365_reg_1087_pp0_iter13_reg[6 : 0] <= zext_ln365_reg_1087_pp0_iter12_reg[6 : 0];
        zext_ln365_reg_1087_pp0_iter1_reg[6 : 0] <= zext_ln365_reg_1087[6 : 0];
        zext_ln365_reg_1087_pp0_iter2_reg[6 : 0] <= zext_ln365_reg_1087_pp0_iter1_reg[6 : 0];
        zext_ln365_reg_1087_pp0_iter3_reg[6 : 0] <= zext_ln365_reg_1087_pp0_iter2_reg[6 : 0];
        zext_ln365_reg_1087_pp0_iter4_reg[6 : 0] <= zext_ln365_reg_1087_pp0_iter3_reg[6 : 0];
        zext_ln365_reg_1087_pp0_iter5_reg[6 : 0] <= zext_ln365_reg_1087_pp0_iter4_reg[6 : 0];
        zext_ln365_reg_1087_pp0_iter6_reg[6 : 0] <= zext_ln365_reg_1087_pp0_iter5_reg[6 : 0];
        zext_ln365_reg_1087_pp0_iter7_reg[6 : 0] <= zext_ln365_reg_1087_pp0_iter6_reg[6 : 0];
        zext_ln365_reg_1087_pp0_iter8_reg[6 : 0] <= zext_ln365_reg_1087_pp0_iter7_reg[6 : 0];
        zext_ln365_reg_1087_pp0_iter9_reg[6 : 0] <= zext_ln365_reg_1087_pp0_iter8_reg[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add21_reg_1621 <= grp_fu_512_p_dout0;
        add25_reg_1626 <= grp_fu_516_p_dout0;
        add26_reg_1631 <= grp_fu_520_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add21_reg_1621_pp0_iter11_reg <= add21_reg_1621;
        add21_reg_1621_pp0_iter12_reg <= add21_reg_1621_pp0_iter11_reg;
        add25_reg_1626_pp0_iter11_reg <= add25_reg_1626;
        add25_reg_1626_pp0_iter12_reg <= add25_reg_1626_pp0_iter11_reg;
        add26_reg_1631_pp0_iter11_reg <= add26_reg_1631;
        add26_reg_1631_pp0_iter12_reg <= add26_reg_1631_pp0_iter11_reg;
        c0_x_22_reg_1445_pp0_iter5_reg <= c0_x_22_reg_1445;
        c0_x_22_reg_1445_pp0_iter6_reg <= c0_x_22_reg_1445_pp0_iter5_reg;
        c0_x_22_reg_1445_pp0_iter7_reg <= c0_x_22_reg_1445_pp0_iter6_reg;
        c0_x_22_reg_1445_pp0_iter8_reg <= c0_x_22_reg_1445_pp0_iter7_reg;
        c0_y_22_reg_1451_pp0_iter5_reg <= c0_y_22_reg_1451;
        c0_y_22_reg_1451_pp0_iter6_reg <= c0_y_22_reg_1451_pp0_iter5_reg;
        c0_y_22_reg_1451_pp0_iter7_reg <= c0_y_22_reg_1451_pp0_iter6_reg;
        c0_y_22_reg_1451_pp0_iter8_reg <= c0_y_22_reg_1451_pp0_iter7_reg;
        sub20_reg_1515_pp0_iter10_reg <= sub20_reg_1515_pp0_iter9_reg;
        sub20_reg_1515_pp0_iter11_reg <= sub20_reg_1515_pp0_iter10_reg;
        sub20_reg_1515_pp0_iter12_reg <= sub20_reg_1515_pp0_iter11_reg;
        sub20_reg_1515_pp0_iter13_reg <= sub20_reg_1515_pp0_iter12_reg;
        sub20_reg_1515_pp0_iter7_reg <= sub20_reg_1515;
        sub20_reg_1515_pp0_iter8_reg <= sub20_reg_1515_pp0_iter7_reg;
        sub20_reg_1515_pp0_iter9_reg <= sub20_reg_1515_pp0_iter8_reg;
        sub21_reg_1520_pp0_iter10_reg <= sub21_reg_1520_pp0_iter9_reg;
        sub21_reg_1520_pp0_iter11_reg <= sub21_reg_1520_pp0_iter10_reg;
        sub21_reg_1520_pp0_iter12_reg <= sub21_reg_1520_pp0_iter11_reg;
        sub21_reg_1520_pp0_iter13_reg <= sub21_reg_1520_pp0_iter12_reg;
        sub21_reg_1520_pp0_iter7_reg <= sub21_reg_1520;
        sub21_reg_1520_pp0_iter8_reg <= sub21_reg_1520_pp0_iter7_reg;
        sub21_reg_1520_pp0_iter9_reg <= sub21_reg_1520_pp0_iter8_reg;
        zext_ln390_cast_reg_1683[5 : 0] <= zext_ln390_cast_fu_917_p3[5 : 0];
        zext_ln391_cast_reg_1689[6 : 0] <= zext_ln391_cast_fu_935_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add22_reg_1636 <= grp_fu_504_p_dout0;
        sub22_reg_1641 <= grp_fu_508_p_dout0;
        sub23_reg_1646 <= grp_fu_512_p_dout0;
        sub27_reg_1651 <= grp_fu_516_p_dout0;
        sub28_reg_1656 <= grp_fu_520_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_1545 <= grp_fu_488_p_dout0;
        add24_reg_1550 <= grp_fu_492_p_dout0;
        sub24_reg_1561 <= grp_fu_500_p_dout0;
        tmp_9_reg_1555 <= grp_fu_496_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add27_reg_1673 <= grp_fu_532_p_dout0;
        add28_reg_1678 <= grp_fu_536_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_19_reg_1335_pp0_iter3_reg <= c0_x_19_reg_1335;
        c0_x_19_reg_1335_pp0_iter4_reg <= c0_x_19_reg_1335_pp0_iter3_reg;
        c0_x_19_reg_1335_pp0_iter5_reg <= c0_x_19_reg_1335_pp0_iter4_reg;
        c0_x_19_reg_1335_pp0_iter6_reg <= c0_x_19_reg_1335_pp0_iter5_reg;
        c0_x_23_reg_1577_pp0_iter10_reg <= c0_x_23_reg_1577_pp0_iter9_reg;
        c0_x_23_reg_1577_pp0_iter11_reg <= c0_x_23_reg_1577_pp0_iter10_reg;
        c0_x_23_reg_1577_pp0_iter9_reg <= c0_x_23_reg_1577;
        c0_y_19_reg_1341_pp0_iter3_reg <= c0_y_19_reg_1341;
        c0_y_19_reg_1341_pp0_iter4_reg <= c0_y_19_reg_1341_pp0_iter3_reg;
        c0_y_19_reg_1341_pp0_iter5_reg <= c0_y_19_reg_1341_pp0_iter4_reg;
        c0_y_19_reg_1341_pp0_iter6_reg <= c0_y_19_reg_1341_pp0_iter5_reg;
        c0_y_23_reg_1583_pp0_iter10_reg <= c0_y_23_reg_1583_pp0_iter9_reg;
        c0_y_23_reg_1583_pp0_iter11_reg <= c0_y_23_reg_1583_pp0_iter10_reg;
        c0_y_23_reg_1583_pp0_iter9_reg <= c0_y_23_reg_1583;
        sub17_reg_1429_pp0_iter5_reg <= sub17_reg_1429;
        sub17_reg_1429_pp0_iter6_reg <= sub17_reg_1429_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_21_reg_1469 <= grp_fu_540_p_dout0;
        c0_y_21_reg_1475 <= grp_fu_544_p_dout0;
        mul7_reg_1481 <= grp_fu_548_p_dout0;
        mul8_reg_1487 <= grp_fu_593_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_23_reg_1577 <= grp_fu_532_p_dout0;
        c0_x_34_reg_1567 <= grp_fu_524_p_dout0;
        c0_y_23_reg_1583 <= grp_fu_536_p_dout0;
        c0_y_34_reg_1572 <= grp_fu_528_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_33_reg_1417 <= grp_fu_504_p_dout0;
        c0_y_33_reg_1423 <= grp_fu_508_p_dout0;
        sub17_reg_1429 <= grp_fu_512_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul10_reg_1498 <= grp_fu_593_p_dout0;
        mul9_reg_1493 <= grp_fu_548_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul11_reg_1601 <= grp_fu_540_p_dout0;
        mul12_reg_1606 <= grp_fu_544_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub18_reg_1589 <= grp_fu_504_p_dout0;
        sub19_reg_1595 <= grp_fu_508_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub20_reg_1515 <= grp_fu_496_p_dout0;
        sub21_reg_1520 <= grp_fu_500_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_1661 <= grp_fu_524_p_dout0;
        sub26_reg_1667 <= grp_fu_528_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub29_reg_1694 <= grp_fu_524_p_dout0;
        sub30_reg_1699 <= grp_fu_528_p_dout0;
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
        DATA_x_2_ce0_local = 1'b1;
    end else begin
        DATA_x_2_ce0_local = 1'b0;
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
        DATA_x_4_ce0_local = 1'b1;
    end else begin
        DATA_x_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_5_ce0_local = 1'b1;
    end else begin
        DATA_x_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_6_ce0_local = 1'b1;
    end else begin
        DATA_x_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_7_ce0_local = 1'b1;
    end else begin
        DATA_x_7_ce0_local = 1'b0;
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
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
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
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
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
    if (((icmp_ln365_reg_1083 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln365_reg_1083_pp0_iter13_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        ap_sig_allocacmp_tid_5 = tid_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_444_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_444_opcode = 2'd0;
    end else begin
        grp_fu_444_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_444_p0 = c0_x_33_reg_1417;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_444_p0 = c0_x_32_reg_1323;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_444_p0 = c0_x_reg_1219;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_444_p0 = c0_x_29_reg_1225;
    end else begin
        grp_fu_444_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_444_p1 = add17_reg_1457;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_444_p1 = add_reg_1347;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_444_p1 = DATA_x_4_load_reg_1242;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_444_p1 = DATA_x_5_load_reg_1248;
    end else begin
        grp_fu_444_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_448_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_448_opcode = 2'd0;
    end else begin
        grp_fu_448_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_448_p0 = c0_y_33_reg_1423;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_448_p0 = c0_y_32_reg_1329;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_448_p0 = c0_y_reg_1173;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_448_p0 = c0_y_29_reg_1179;
    end else begin
        grp_fu_448_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_448_p1 = add18_reg_1463;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_448_p1 = add11_reg_1353;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_448_p1 = DATA_y_4_load_reg_1196;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_448_p1 = DATA_y_5_load_reg_1202;
    end else begin
        grp_fu_448_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_452_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_452_opcode = 2'd0;
    end else begin
        grp_fu_452_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p0 = c0_x_21_reg_1469;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_452_p0 = c0_x_20_reg_1265;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_452_p0 = c0_x_reg_1219;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_452_p0 = c0_x_29_reg_1225;
    end else begin
        grp_fu_452_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_452_p1 = mul7_reg_1481;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_452_p1 = add12_reg_1301;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_452_p1 = DATA_x_4_load_reg_1242;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_452_p1 = DATA_x_5_load_reg_1248;
    end else begin
        grp_fu_452_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_456_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_456_opcode = 2'd0;
    end else begin
        grp_fu_456_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p0 = c0_y_21_reg_1475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_456_p0 = c0_y_20_reg_1271;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_456_p0 = c0_y_reg_1173;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_456_p0 = c0_y_29_reg_1179;
    end else begin
        grp_fu_456_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_456_p1 = mul8_reg_1487;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_456_p1 = add13_reg_1307;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_456_p1 = DATA_y_4_load_reg_1196;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_456_p1 = DATA_y_5_load_reg_1202;
    end else begin
        grp_fu_456_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_460_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_460_opcode = 2'd0;
    end else begin
        grp_fu_460_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_460_p0 = c0_x_21_reg_1469;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p0 = c0_x_33_reg_1417;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_460_p0 = c0_x_30_reg_1231;
    end else begin
        grp_fu_460_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_460_p1 = mul7_reg_1481;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_460_p1 = add17_reg_1457;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_460_p1 = DATA_x_6_load_reg_1254;
    end else begin
        grp_fu_460_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_464_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_464_opcode = 2'd0;
    end else begin
        grp_fu_464_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p0 = c0_y_21_reg_1475;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p0 = c0_y_33_reg_1423;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_464_p0 = c0_y_30_reg_1185;
    end else begin
        grp_fu_464_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_464_p1 = mul8_reg_1487;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_464_p1 = add18_reg_1463;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_464_p1 = DATA_y_6_load_reg_1208;
    end else begin
        grp_fu_464_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_468_opcode = 2'd0;
    end else begin
        grp_fu_468_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p0 = c0_y_22_reg_1451_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p0 = mul9_reg_1493;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_468_p0 = c0_x_32_reg_1323;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_468_p0 = c0_x_31_reg_1236;
    end else begin
        grp_fu_468_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_468_p1 = sub19_reg_1595;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_468_p1 = bitcast_ln386_13_fu_807_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_468_p1 = add_reg_1347;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_468_p1 = DATA_x_7_load_reg_1259;
    end else begin
        grp_fu_468_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_472_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_472_opcode = 2'd0;
    end else begin
        grp_fu_472_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_472_p0 = c0_x_22_reg_1445_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_472_p0 = bitcast_ln386_15_fu_841_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_472_p0 = c0_y_32_reg_1329;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_472_p0 = c0_y_31_reg_1190;
    end else begin
        grp_fu_472_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_472_p1 = sub18_reg_1589;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_472_p1 = mul10_reg_1498;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_472_p1 = add11_reg_1353;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_472_p1 = DATA_y_7_load_reg_1213;
    end else begin
        grp_fu_472_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_476_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_476_opcode = 2'd0;
    end else begin
        grp_fu_476_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_476_p0 = c0_y_22_reg_1451_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_476_p0 = c0_x_22_reg_1445_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_476_p0 = c0_y_20_reg_1271;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_476_p0 = c0_x_31_reg_1236;
    end else begin
        grp_fu_476_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_476_p1 = sub19_reg_1595;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_476_p1 = sub18_reg_1589;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_476_p1 = add13_reg_1307;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_476_p1 = DATA_x_7_load_reg_1259;
    end else begin
        grp_fu_476_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1083 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_480_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_480_opcode = 2'd0;
    end else begin
        grp_fu_480_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_480_p0 = c0_x_34_reg_1567;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_480_p0 = mul_reg_1391;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_480_p0 = c0_y_31_reg_1190;
    end else begin
        grp_fu_480_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_480_p1 = add23_reg_1545_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_480_p1 = add23_reg_1545;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_480_p1 = bitcast_ln386_5_fu_739_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_480_p1 = DATA_y_7_load_reg_1213;
    end else begin
        grp_fu_480_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_484_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_484_opcode = 2'd0;
    end else begin
        grp_fu_484_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_484_p0 = c0_y_34_reg_1572;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_484_p0 = bitcast_ln386_7_fu_773_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_484_p0 = tmp_1_reg_1277;
    end else begin
        grp_fu_484_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_484_p1 = add24_reg_1550_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_484_p1 = add24_reg_1550;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_484_p1 = mul6_reg_1396;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_484_p1 = bitcast_ln386_1_fu_601_p1;
    end else begin
        grp_fu_484_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_488_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_488_opcode = 2'd0;
    end else begin
        grp_fu_488_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_488_p0 = c0_x_23_reg_1577_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_488_p0 = mul11_reg_1601;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_488_p0 = c0_x_19_reg_1335_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_488_p0 = bitcast_ln386_3_fu_635_p1;
    end else begin
        grp_fu_488_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_488_p1 = sub25_reg_1661;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_488_p1 = bitcast_ln386_17_fu_875_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_488_p1 = sub15_reg_1503;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_488_p1 = sub_reg_1283;
    end else begin
        grp_fu_488_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_492_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_492_opcode = 2'd0;
    end else begin
        grp_fu_492_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_492_p0 = c0_y_23_reg_1583_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_492_p0 = bitcast_ln386_19_fu_909_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_492_p0 = c0_y_19_reg_1341_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_492_p0 = bitcast_ln386_9_fu_669_p1;
    end else begin
        grp_fu_492_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_492_p1 = sub26_reg_1667;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_492_p1 = mul12_reg_1606;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_492_p1 = add15_reg_1509;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_492_p1 = bitcast_ln386_11_fu_704_p1;
    end else begin
        grp_fu_492_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_496_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_496_opcode = 2'd0;
    end else begin
        grp_fu_496_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_496_p0 = c0_x_23_reg_1577_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_496_p0 = c0_x_19_reg_1335_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_496_p0 = bitcast_ln386_9_fu_669_p1;
    end else begin
        grp_fu_496_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_496_p1 = sub25_reg_1661;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_496_p1 = sub15_reg_1503;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_496_p1 = bitcast_ln386_11_fu_704_p1;
    end else begin
        grp_fu_496_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_500_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_500_opcode = 2'd0;
    end else begin
        grp_fu_500_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_500_p0 = c0_y_23_reg_1583_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_500_p0 = c0_y_19_reg_1341_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_500_p0 = c0_x_20_reg_1265;
    end else begin
        grp_fu_500_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_500_p1 = sub26_reg_1667;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_500_p1 = add15_reg_1509;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_500_p1 = add12_reg_1301;
    end else begin
        grp_fu_500_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_504_p0 = tmp_9_reg_1555;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_504_p0 = sub14_reg_1381;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_504_p0 = tmp_1_1_reg_1289;
    end else begin
        grp_fu_504_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_504_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_504_p1 = 64'd0;
    end else begin
        grp_fu_504_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_509_p0 = sub24_reg_1561;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_509_p0 = add14_reg_1386;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_509_p0 = sub12_reg_1295;
    end else begin
        grp_fu_509_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_509_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_509_p1 = 64'd0;
    end else begin
        grp_fu_509_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_516_p0 = tmp_8_reg_1411;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_516_p0 = sub16_reg_1401;
        end else begin
            grp_fu_516_p0 = 'bx;
        end
    end else begin
        grp_fu_516_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_516_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_516_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_516_p1 = 'bx;
        end
    end else begin
        grp_fu_516_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_521_p0 = sub17_reg_1429;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_521_p0 = add16_reg_1406;
        end else begin
            grp_fu_521_p0 = 'bx;
        end
    end else begin
        grp_fu_521_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_521_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_521_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_521_p1 = 'bx;
        end
    end else begin
        grp_fu_521_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address0_local = zext_ln396_fu_1049_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address0_local = zext_ln395_fu_1009_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address0_local = zext_ln392_fu_967_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address0_local = zext_ln391_fu_942_p1;
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln394_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln393_1_fu_996_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_reg_1087_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln390_fu_925_p1;
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
        work_x_d0_local = bitcast_ln396_fu_1055_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d0_local = bitcast_ln395_fu_1015_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d0_local = bitcast_ln392_fu_973_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d0_local = bitcast_ln391_fu_948_p1;
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln394_fu_1042_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln393_fu_1002_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_960_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln390_fu_931_p1;
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
        work_y_address0_local = zext_ln396_fu_1049_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address0_local = zext_ln395_fu_1009_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address0_local = zext_ln392_fu_967_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address0_local = zext_ln391_fu_942_p1;
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln394_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln393_1_fu_996_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_reg_1087_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln390_fu_925_p1;
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
        work_y_d0_local = bitcast_ln405_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d0_local = bitcast_ln404_fu_1023_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d0_local = bitcast_ln401_fu_981_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d0_local = bitcast_ln400_fu_956_p1;
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln403_fu_1059_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln402_fu_1019_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_977_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln399_fu_952_p1;
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
assign DATA_x_1_address0 = zext_ln365_fu_542_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_2_address0 = zext_ln365_fu_542_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_3_address0 = zext_ln365_fu_542_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln365_fu_542_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln365_fu_542_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln365_fu_542_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln365_fu_542_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_address0 = zext_ln365_fu_542_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_1_address0 = zext_ln365_fu_542_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_2_address0 = zext_ln365_fu_542_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_3_address0 = zext_ln365_fu_542_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln365_fu_542_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln365_fu_542_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln365_fu_542_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln365_fu_542_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_address0 = zext_ln365_fu_542_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln365_fu_562_p2 = (tid_5_reg_1074 + 7'd1);
assign add_ln394_fu_1030_p2 = ($signed(zext_ln365_1_fu_1027_p1) + $signed(9'd320));
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
assign bit_sel20_fu_609_p3 = bitcast_ln386_2_fu_606_p1[64'd63];
assign bit_sel21_fu_713_p3 = bitcast_ln386_4_fu_710_p1[64'd63];
assign bit_sel22_fu_747_p3 = bitcast_ln386_6_fu_744_p1[64'd63];
assign bit_sel23_fu_643_p3 = bitcast_ln386_8_fu_640_p1[64'd63];
assign bit_sel24_fu_678_p3 = bitcast_ln386_10_fu_675_p1[64'd63];
assign bit_sel25_fu_781_p3 = bitcast_ln386_12_fu_778_p1[64'd63];
assign bit_sel26_fu_815_p3 = bitcast_ln386_14_fu_812_p1[64'd63];
assign bit_sel27_fu_849_p3 = bitcast_ln386_16_fu_846_p1[64'd63];
assign bit_sel28_fu_883_p3 = bitcast_ln386_18_fu_880_p1[64'd63];
assign bit_sel_fu_575_p3 = bitcast_ln386_fu_572_p1[64'd63];
assign bitcast_ln386_10_fu_675_p1 = sub13_reg_1318;
assign bitcast_ln386_11_fu_704_p1 = xor_ln386_5_fu_696_p3;
assign bitcast_ln386_12_fu_778_p1 = sub17_reg_1429_pp0_iter6_reg;
assign bitcast_ln386_13_fu_807_p1 = xor_ln386_6_fu_799_p3;
assign bitcast_ln386_14_fu_812_p1 = tmp_8_reg_1411_pp0_iter6_reg;
assign bitcast_ln386_15_fu_841_p1 = xor_ln386_7_fu_833_p3;
assign bitcast_ln386_16_fu_846_p1 = sub24_reg_1561_pp0_iter9_reg;
assign bitcast_ln386_17_fu_875_p1 = xor_ln386_8_fu_867_p3;
assign bitcast_ln386_18_fu_880_p1 = tmp_9_reg_1555_pp0_iter9_reg;
assign bitcast_ln386_19_fu_909_p1 = xor_ln386_9_fu_901_p3;
assign bitcast_ln386_1_fu_601_p1 = xor_ln3_fu_593_p3;
assign bitcast_ln386_2_fu_606_p1 = tmp_1_reg_1277;
assign bitcast_ln386_3_fu_635_p1 = xor_ln386_1_fu_627_p3;
assign bitcast_ln386_4_fu_710_p1 = sub12_reg_1295_pp0_iter4_reg;
assign bitcast_ln386_5_fu_739_p1 = xor_ln386_2_fu_731_p3;
assign bitcast_ln386_6_fu_744_p1 = tmp_1_1_reg_1289_pp0_iter4_reg;
assign bitcast_ln386_7_fu_773_p1 = xor_ln386_3_fu_765_p3;
assign bitcast_ln386_8_fu_640_p1 = tmp_1_2_reg_1313;
assign bitcast_ln386_9_fu_669_p1 = xor_ln386_4_fu_661_p3;
assign bitcast_ln386_fu_572_p1 = sub_reg_1283;
assign bitcast_ln389_fu_960_p1 = add19_reg_1535_pp0_iter13_reg;
assign bitcast_ln390_fu_931_p1 = add25_reg_1626_pp0_iter12_reg;
assign bitcast_ln391_fu_948_p1 = add21_reg_1621_pp0_iter12_reg;
assign bitcast_ln392_fu_973_p1 = add27_reg_1673;
assign bitcast_ln393_fu_1002_p1 = sub20_reg_1515_pp0_iter13_reg;
assign bitcast_ln394_fu_1042_p1 = sub27_reg_1651_pp0_iter14_reg;
assign bitcast_ln395_fu_1015_p1 = sub22_reg_1641_pp0_iter14_reg;
assign bitcast_ln396_fu_1055_p1 = sub29_reg_1694;
assign bitcast_ln398_fu_977_p1 = add20_reg_1540_pp0_iter13_reg;
assign bitcast_ln399_fu_952_p1 = add26_reg_1631_pp0_iter12_reg;
assign bitcast_ln400_fu_956_p1 = add22_reg_1636_pp0_iter13_reg;
assign bitcast_ln401_fu_981_p1 = add28_reg_1678;
assign bitcast_ln402_fu_1019_p1 = sub21_reg_1520_pp0_iter13_reg;
assign bitcast_ln403_fu_1059_p1 = sub28_reg_1656_pp0_iter14_reg;
assign bitcast_ln404_fu_1023_p1 = sub23_reg_1646_pp0_iter14_reg;
assign bitcast_ln405_fu_1063_p1 = sub30_reg_1699;
assign grp_fu_480_p_ce = 1'b1;
assign grp_fu_480_p_din0 = grp_fu_444_p0;
assign grp_fu_480_p_din1 = grp_fu_444_p1;
assign grp_fu_480_p_opcode = grp_fu_444_opcode;
assign grp_fu_484_p_ce = 1'b1;
assign grp_fu_484_p_din0 = grp_fu_448_p0;
assign grp_fu_484_p_din1 = grp_fu_448_p1;
assign grp_fu_484_p_opcode = grp_fu_448_opcode;
assign grp_fu_488_p_ce = 1'b1;
assign grp_fu_488_p_din0 = grp_fu_452_p0;
assign grp_fu_488_p_din1 = grp_fu_452_p1;
assign grp_fu_488_p_opcode = grp_fu_452_opcode;
assign grp_fu_492_p_ce = 1'b1;
assign grp_fu_492_p_din0 = grp_fu_456_p0;
assign grp_fu_492_p_din1 = grp_fu_456_p1;
assign grp_fu_492_p_opcode = grp_fu_456_opcode;
assign grp_fu_496_p_ce = 1'b1;
assign grp_fu_496_p_din0 = grp_fu_460_p0;
assign grp_fu_496_p_din1 = grp_fu_460_p1;
assign grp_fu_496_p_opcode = grp_fu_460_opcode;
assign grp_fu_500_p_ce = 1'b1;
assign grp_fu_500_p_din0 = grp_fu_464_p0;
assign grp_fu_500_p_din1 = grp_fu_464_p1;
assign grp_fu_500_p_opcode = grp_fu_464_opcode;
assign grp_fu_504_p_ce = 1'b1;
assign grp_fu_504_p_din0 = grp_fu_468_p0;
assign grp_fu_504_p_din1 = grp_fu_468_p1;
assign grp_fu_504_p_opcode = grp_fu_468_opcode;
assign grp_fu_508_p_ce = 1'b1;
assign grp_fu_508_p_din0 = grp_fu_472_p0;
assign grp_fu_508_p_din1 = grp_fu_472_p1;
assign grp_fu_508_p_opcode = grp_fu_472_opcode;
assign grp_fu_512_p_ce = 1'b1;
assign grp_fu_512_p_din0 = grp_fu_476_p0;
assign grp_fu_512_p_din1 = grp_fu_476_p1;
assign grp_fu_512_p_opcode = grp_fu_476_opcode;
assign grp_fu_516_p_ce = 1'b1;
assign grp_fu_516_p_din0 = grp_fu_480_p0;
assign grp_fu_516_p_din1 = grp_fu_480_p1;
assign grp_fu_516_p_opcode = grp_fu_480_opcode;
assign grp_fu_520_p_ce = 1'b1;
assign grp_fu_520_p_din0 = grp_fu_484_p0;
assign grp_fu_520_p_din1 = grp_fu_484_p1;
assign grp_fu_520_p_opcode = grp_fu_484_opcode;
assign grp_fu_524_p_ce = 1'b1;
assign grp_fu_524_p_din0 = grp_fu_488_p0;
assign grp_fu_524_p_din1 = grp_fu_488_p1;
assign grp_fu_524_p_opcode = grp_fu_488_opcode;
assign grp_fu_528_p_ce = 1'b1;
assign grp_fu_528_p_din0 = grp_fu_492_p0;
assign grp_fu_528_p_din1 = grp_fu_492_p1;
assign grp_fu_528_p_opcode = grp_fu_492_opcode;
assign grp_fu_532_p_ce = 1'b1;
assign grp_fu_532_p_din0 = grp_fu_496_p0;
assign grp_fu_532_p_din1 = grp_fu_496_p1;
assign grp_fu_532_p_opcode = grp_fu_496_opcode;
assign grp_fu_536_p_ce = 1'b1;
assign grp_fu_536_p_din0 = grp_fu_500_p0;
assign grp_fu_536_p_din1 = grp_fu_500_p1;
assign grp_fu_536_p_opcode = grp_fu_500_opcode;
assign grp_fu_540_p_ce = 1'b1;
assign grp_fu_540_p_din0 = grp_fu_504_p0;
assign grp_fu_540_p_din1 = grp_fu_504_p1;
assign grp_fu_544_p_ce = 1'b1;
assign grp_fu_544_p_din0 = grp_fu_509_p0;
assign grp_fu_544_p_din1 = grp_fu_509_p1;
assign grp_fu_548_p_ce = 1'b1;
assign grp_fu_548_p_din0 = grp_fu_516_p0;
assign grp_fu_548_p_din1 = grp_fu_516_p1;
assign grp_fu_593_p_ce = 1'b1;
assign grp_fu_593_p_din0 = grp_fu_521_p0;
assign grp_fu_593_p_din1 = grp_fu_521_p1;
assign icmp_ln365_fu_536_p2 = ((ap_sig_allocacmp_tid_5 == 7'd64) ? 1'b1 : 1'b0);
assign sext_ln392_fu_964_p1 = zext_ln390_cast_reg_1683;
assign sext_ln395_fu_1006_p1 = zext_ln391_cast_reg_1689;
assign sext_ln396_fu_1046_p1 = zext_ln390_cast_reg_1683;
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
assign trunc_ln390_fu_914_p1 = tid_5_reg_1074_pp0_iter13_reg[5:0];
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
assign xor_ln386_11_fu_721_p2 = (bit_sel21_fu_713_p3 ^ 1'd1);
assign xor_ln386_12_fu_755_p2 = (bit_sel22_fu_747_p3 ^ 1'd1);
assign xor_ln386_13_fu_651_p2 = (bit_sel23_fu_643_p3 ^ 1'd1);
assign xor_ln386_14_fu_686_p2 = (bit_sel24_fu_678_p3 ^ 1'd1);
assign xor_ln386_15_fu_789_p2 = (bit_sel25_fu_781_p3 ^ 1'd1);
assign xor_ln386_16_fu_823_p2 = (bit_sel26_fu_815_p3 ^ 1'd1);
assign xor_ln386_17_fu_857_p2 = (bit_sel27_fu_849_p3 ^ 1'd1);
assign xor_ln386_18_fu_891_p2 = (bit_sel28_fu_883_p3 ^ 1'd1);
assign xor_ln386_1_fu_627_p3 = {{xor_ln386_fu_617_p2}, {trunc_ln386_1_fu_623_p1}};
assign xor_ln386_2_fu_731_p3 = {{xor_ln386_11_fu_721_p2}, {trunc_ln386_2_fu_727_p1}};
assign xor_ln386_3_fu_765_p3 = {{xor_ln386_12_fu_755_p2}, {trunc_ln386_3_fu_761_p1}};
assign xor_ln386_4_fu_661_p3 = {{xor_ln386_13_fu_651_p2}, {trunc_ln386_4_fu_657_p1}};
assign xor_ln386_5_fu_696_p3 = {{xor_ln386_14_fu_686_p2}, {trunc_ln386_5_fu_692_p1}};
assign xor_ln386_6_fu_799_p3 = {{xor_ln386_15_fu_789_p2}, {trunc_ln386_6_fu_795_p1}};
assign xor_ln386_7_fu_833_p3 = {{xor_ln386_16_fu_823_p2}, {trunc_ln386_7_fu_829_p1}};
assign xor_ln386_8_fu_867_p3 = {{xor_ln386_17_fu_857_p2}, {trunc_ln386_8_fu_863_p1}};
assign xor_ln386_9_fu_901_p3 = {{xor_ln386_18_fu_891_p2}, {trunc_ln386_9_fu_897_p1}};
assign xor_ln386_fu_617_p2 = (bit_sel20_fu_609_p3 ^ 1'd1);
assign xor_ln3_fu_593_p3 = {{xor_ln386_10_fu_583_p2}, {trunc_ln386_fu_589_p1}};
assign zext_ln365_1_fu_1027_p1 = tid_5_reg_1074_pp0_iter14_reg;
assign zext_ln365_fu_542_p1 = ap_sig_allocacmp_tid_5;
assign zext_ln390_cast_fu_917_p3 = {{1'd1}, {trunc_ln390_fu_914_p1}};
assign zext_ln390_fu_925_p1 = $unsigned(zext_ln390_cast_fu_917_p3);
assign zext_ln391_cast_fu_935_p3 = {{1'd1}, {tid_5_reg_1074_pp0_iter13_reg}};
assign zext_ln391_fu_942_p1 = $unsigned(zext_ln391_cast_fu_935_p3);
assign zext_ln392_fu_967_p1 = $unsigned(sext_ln392_fu_964_p1);
assign zext_ln393_1_fu_996_p1 = zext_ln393_cast_fu_988_p3;
assign zext_ln393_cast_fu_988_p3 = {{1'd1}, {zext_ln393_fu_985_p1}};
assign zext_ln393_fu_985_p1 = tid_5_reg_1074_pp0_iter14_reg;
assign zext_ln394_fu_1036_p1 = add_ln394_fu_1030_p2;
assign zext_ln395_fu_1009_p1 = $unsigned(sext_ln395_fu_1006_p1);
assign zext_ln396_fu_1049_p1 = $unsigned(sext_ln396_fu_1046_p1);
always @ (posedge ap_clk) begin
    zext_ln365_reg_1087[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter3_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter4_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter5_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter6_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter7_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter8_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter9_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter10_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter11_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter12_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1087_pp0_iter13_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln390_cast_reg_1683[6] <= 1'b1;
    zext_ln391_cast_reg_1689[7] <= 1'b1;
end
endmodule 