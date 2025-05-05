module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_address1,DATA_y_ce1,DATA_y_q1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_q1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_q1,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_q1,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,grp_fu_1459_p_din0,grp_fu_1459_p_din1,grp_fu_1459_p_opcode,grp_fu_1459_p_dout0,grp_fu_1459_p_ce,grp_fu_1463_p_din0,grp_fu_1463_p_din1,grp_fu_1463_p_opcode,grp_fu_1463_p_dout0,grp_fu_1463_p_ce,grp_fu_1467_p_din0,grp_fu_1467_p_din1,grp_fu_1467_p_opcode,grp_fu_1467_p_dout0,grp_fu_1467_p_ce,grp_fu_1471_p_din0,grp_fu_1471_p_din1,grp_fu_1471_p_opcode,grp_fu_1471_p_dout0,grp_fu_1471_p_ce,grp_fu_1475_p_din0,grp_fu_1475_p_din1,grp_fu_1475_p_opcode,grp_fu_1475_p_dout0,grp_fu_1475_p_ce,grp_fu_1479_p_din0,grp_fu_1479_p_din1,grp_fu_1479_p_opcode,grp_fu_1479_p_dout0,grp_fu_1479_p_ce,grp_fu_1483_p_din0,grp_fu_1483_p_din1,grp_fu_1483_p_opcode,grp_fu_1483_p_dout0,grp_fu_1483_p_ce,grp_fu_1487_p_din0,grp_fu_1487_p_din1,grp_fu_1487_p_opcode,grp_fu_1487_p_dout0,grp_fu_1487_p_ce,grp_fu_1491_p_din0,grp_fu_1491_p_din1,grp_fu_1491_p_opcode,grp_fu_1491_p_dout0,grp_fu_1491_p_ce,grp_fu_1495_p_din0,grp_fu_1495_p_din1,grp_fu_1495_p_opcode,grp_fu_1495_p_dout0,grp_fu_1495_p_ce,grp_fu_1499_p_din0,grp_fu_1499_p_din1,grp_fu_1499_p_dout0,grp_fu_1499_p_ce,grp_fu_1504_p_din0,grp_fu_1504_p_din1,grp_fu_1504_p_dout0,grp_fu_1504_p_ce,grp_fu_1511_p_din0,grp_fu_1511_p_din1,grp_fu_1511_p_dout0,grp_fu_1511_p_ce,grp_fu_1516_p_din0,grp_fu_1516_p_din1,grp_fu_1516_p_dout0,grp_fu_1516_p_ce); 
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
output  [4:0] DATA_x_address0;
output   DATA_x_ce0;
input  [63:0] DATA_x_q0;
output  [4:0] DATA_x_8_address0;
output   DATA_x_8_ce0;
input  [63:0] DATA_x_8_q0;
output  [4:0] DATA_x_1_address0;
output   DATA_x_1_ce0;
input  [63:0] DATA_x_1_q0;
output  [4:0] DATA_x_9_address0;
output   DATA_x_9_ce0;
input  [63:0] DATA_x_9_q0;
output  [4:0] DATA_x_2_address0;
output   DATA_x_2_ce0;
input  [63:0] DATA_x_2_q0;
output  [4:0] DATA_x_10_address0;
output   DATA_x_10_ce0;
input  [63:0] DATA_x_10_q0;
output  [4:0] DATA_x_3_address0;
output   DATA_x_3_ce0;
input  [63:0] DATA_x_3_q0;
output  [4:0] DATA_x_11_address0;
output   DATA_x_11_ce0;
input  [63:0] DATA_x_11_q0;
output  [4:0] DATA_x_4_address0;
output   DATA_x_4_ce0;
input  [63:0] DATA_x_4_q0;
output  [4:0] DATA_x_12_address0;
output   DATA_x_12_ce0;
input  [63:0] DATA_x_12_q0;
output  [4:0] DATA_x_5_address0;
output   DATA_x_5_ce0;
input  [63:0] DATA_x_5_q0;
output  [4:0] DATA_x_13_address0;
output   DATA_x_13_ce0;
input  [63:0] DATA_x_13_q0;
output  [4:0] DATA_x_6_address0;
output   DATA_x_6_ce0;
input  [63:0] DATA_x_6_q0;
output  [4:0] DATA_x_14_address0;
output   DATA_x_14_ce0;
input  [63:0] DATA_x_14_q0;
output  [4:0] DATA_x_7_address0;
output   DATA_x_7_ce0;
input  [63:0] DATA_x_7_q0;
output  [4:0] DATA_x_15_address0;
output   DATA_x_15_ce0;
input  [63:0] DATA_x_15_q0;
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
output  [63:0] grp_fu_1459_p_din0;
output  [63:0] grp_fu_1459_p_din1;
output  [1:0] grp_fu_1459_p_opcode;
input  [63:0] grp_fu_1459_p_dout0;
output   grp_fu_1459_p_ce;
output  [63:0] grp_fu_1463_p_din0;
output  [63:0] grp_fu_1463_p_din1;
output  [1:0] grp_fu_1463_p_opcode;
input  [63:0] grp_fu_1463_p_dout0;
output   grp_fu_1463_p_ce;
output  [63:0] grp_fu_1467_p_din0;
output  [63:0] grp_fu_1467_p_din1;
output  [1:0] grp_fu_1467_p_opcode;
input  [63:0] grp_fu_1467_p_dout0;
output   grp_fu_1467_p_ce;
output  [63:0] grp_fu_1471_p_din0;
output  [63:0] grp_fu_1471_p_din1;
output  [1:0] grp_fu_1471_p_opcode;
input  [63:0] grp_fu_1471_p_dout0;
output   grp_fu_1471_p_ce;
output  [63:0] grp_fu_1475_p_din0;
output  [63:0] grp_fu_1475_p_din1;
output  [1:0] grp_fu_1475_p_opcode;
input  [63:0] grp_fu_1475_p_dout0;
output   grp_fu_1475_p_ce;
output  [63:0] grp_fu_1479_p_din0;
output  [63:0] grp_fu_1479_p_din1;
output  [1:0] grp_fu_1479_p_opcode;
input  [63:0] grp_fu_1479_p_dout0;
output   grp_fu_1479_p_ce;
output  [63:0] grp_fu_1483_p_din0;
output  [63:0] grp_fu_1483_p_din1;
output  [1:0] grp_fu_1483_p_opcode;
input  [63:0] grp_fu_1483_p_dout0;
output   grp_fu_1483_p_ce;
output  [63:0] grp_fu_1487_p_din0;
output  [63:0] grp_fu_1487_p_din1;
output  [1:0] grp_fu_1487_p_opcode;
input  [63:0] grp_fu_1487_p_dout0;
output   grp_fu_1487_p_ce;
output  [63:0] grp_fu_1491_p_din0;
output  [63:0] grp_fu_1491_p_din1;
output  [1:0] grp_fu_1491_p_opcode;
input  [63:0] grp_fu_1491_p_dout0;
output   grp_fu_1491_p_ce;
output  [63:0] grp_fu_1495_p_din0;
output  [63:0] grp_fu_1495_p_din1;
output  [1:0] grp_fu_1495_p_opcode;
input  [63:0] grp_fu_1495_p_dout0;
output   grp_fu_1495_p_ce;
output  [63:0] grp_fu_1499_p_din0;
output  [63:0] grp_fu_1499_p_din1;
input  [63:0] grp_fu_1499_p_dout0;
output   grp_fu_1499_p_ce;
output  [63:0] grp_fu_1504_p_din0;
output  [63:0] grp_fu_1504_p_din1;
input  [63:0] grp_fu_1504_p_dout0;
output   grp_fu_1504_p_ce;
output  [63:0] grp_fu_1511_p_din0;
output  [63:0] grp_fu_1511_p_din1;
input  [63:0] grp_fu_1511_p_dout0;
output   grp_fu_1511_p_ce;
output  [63:0] grp_fu_1516_p_din0;
output  [63:0] grp_fu_1516_p_din1;
input  [63:0] grp_fu_1516_p_dout0;
output   grp_fu_1516_p_ce;
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
reg   [0:0] icmp_ln365_reg_1310;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_5_reg_1300;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_5_reg_1300_pp0_iter1_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter2_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter3_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter4_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter5_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter6_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter7_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter8_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter9_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter10_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter11_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter12_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter13_reg;
reg   [6:0] tid_5_reg_1300_pp0_iter14_reg;
wire   [0:0] icmp_ln365_fu_650_p2;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter1_reg;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter2_reg;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter3_reg;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter4_reg;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter5_reg;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter6_reg;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter7_reg;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter8_reg;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter9_reg;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter10_reg;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter11_reg;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter12_reg;
reg   [0:0] icmp_ln365_reg_1310_pp0_iter13_reg;
wire   [5:0] trunc_ln367_fu_686_p1;
reg   [5:0] trunc_ln367_reg_1314;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter1_reg;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter2_reg;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter3_reg;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter4_reg;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter5_reg;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter6_reg;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter7_reg;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter8_reg;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter9_reg;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter10_reg;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter11_reg;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter12_reg;
reg   [5:0] trunc_ln367_reg_1314_pp0_iter13_reg;
reg   [63:0] c0_y_reg_1439;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] c0_y_2_reg_1445;
reg   [63:0] c0_y_4_reg_1451;
reg   [63:0] c0_y_5_reg_1456;
reg   [63:0] DATA_y_load_2_reg_1462;
reg   [63:0] DATA_y_1_load_2_reg_1468;
reg   [63:0] DATA_y_2_load_2_reg_1474;
reg   [63:0] DATA_y_3_load_2_reg_1479;
wire   [63:0] c0_x_fu_723_p3;
reg   [63:0] c0_x_reg_1485;
wire   [63:0] c0_x_2_fu_731_p3;
reg   [63:0] c0_x_2_reg_1491;
wire   [63:0] c0_x_4_fu_739_p3;
reg   [63:0] c0_x_4_reg_1497;
wire   [63:0] c0_x_5_fu_747_p3;
reg   [63:0] c0_x_5_reg_1502;
wire   [63:0] select_ln380_fu_755_p3;
reg   [63:0] select_ln380_reg_1508;
wire   [63:0] select_ln381_fu_763_p3;
reg   [63:0] select_ln381_reg_1514;
wire   [63:0] select_ln382_fu_771_p3;
reg   [63:0] select_ln382_reg_1520;
wire   [63:0] select_ln383_fu_779_p3;
reg   [63:0] select_ln383_reg_1525;
reg   [63:0] c0_x_3_reg_1531;
reg   [63:0] c0_y_3_reg_1537;
reg   [63:0] tmp_1_reg_1543;
reg   [63:0] sub_reg_1549;
reg   [63:0] tmp_1_1_reg_1555;
reg   [63:0] tmp_1_1_reg_1555_pp0_iter3_reg;
reg   [63:0] tmp_1_1_reg_1555_pp0_iter4_reg;
reg   [63:0] sub1_reg_1561;
reg   [63:0] sub1_reg_1561_pp0_iter3_reg;
reg   [63:0] sub1_reg_1561_pp0_iter4_reg;
reg   [63:0] add2_reg_1567;
reg   [63:0] add3_reg_1573;
reg   [63:0] tmp_1_2_reg_1579;
reg   [63:0] sub2_reg_1584;
reg   [63:0] c0_x_7_reg_1589;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_7_reg_1595;
reg   [63:0] c0_x_1_reg_1601;
reg   [63:0] c0_x_1_reg_1601_pp0_iter3_reg;
reg   [63:0] c0_x_1_reg_1601_pp0_iter4_reg;
reg   [63:0] c0_x_1_reg_1601_pp0_iter5_reg;
reg   [63:0] c0_x_1_reg_1601_pp0_iter6_reg;
reg   [63:0] c0_y_1_reg_1607;
reg   [63:0] c0_y_1_reg_1607_pp0_iter3_reg;
reg   [63:0] c0_y_1_reg_1607_pp0_iter4_reg;
reg   [63:0] c0_y_1_reg_1607_pp0_iter5_reg;
reg   [63:0] c0_y_1_reg_1607_pp0_iter6_reg;
reg   [63:0] add_reg_1613;
reg   [63:0] add1_reg_1619;
wire   [63:0] bitcast_ln386_1_fu_826_p1;
wire   [63:0] bitcast_ln386_3_fu_860_p1;
wire   [63:0] bitcast_ln386_9_fu_894_p1;
wire   [63:0] bitcast_ln386_11_fu_929_p1;
wire   [63:0] grp_fu_598_p2;
reg   [63:0] sub3_reg_1647;
wire   [63:0] grp_fu_602_p2;
reg   [63:0] add4_reg_1652;
reg   [63:0] mul_reg_1657;
reg   [63:0] mul1_reg_1662;
wire   [63:0] grp_fu_606_p2;
reg   [63:0] sub5_reg_1667;
wire   [63:0] grp_fu_610_p2;
reg   [63:0] add6_reg_1672;
wire   [63:0] grp_fu_614_p2;
reg   [63:0] tmp_6_reg_1677;
reg   [63:0] tmp_6_reg_1677_pp0_iter5_reg;
reg   [63:0] tmp_6_reg_1677_pp0_iter6_reg;
reg   [63:0] c0_x_9_reg_1683;
reg   [63:0] c0_y_9_reg_1689;
reg   [63:0] sub6_reg_1695;
reg   [63:0] sub6_reg_1695_pp0_iter5_reg;
reg   [63:0] sub6_reg_1695_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_5_fu_964_p1;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln386_7_fu_998_p1;
reg   [63:0] c0_x_8_reg_1711;
reg   [63:0] c0_x_8_reg_1711_pp0_iter5_reg;
reg   [63:0] c0_x_8_reg_1711_pp0_iter6_reg;
reg   [63:0] c0_x_8_reg_1711_pp0_iter7_reg;
reg   [63:0] c0_x_8_reg_1711_pp0_iter8_reg;
reg   [63:0] c0_y_8_reg_1717;
reg   [63:0] c0_y_8_reg_1717_pp0_iter5_reg;
reg   [63:0] c0_y_8_reg_1717_pp0_iter6_reg;
reg   [63:0] c0_y_8_reg_1717_pp0_iter7_reg;
reg   [63:0] c0_y_8_reg_1717_pp0_iter8_reg;
reg   [63:0] add7_reg_1723;
reg   [63:0] add8_reg_1729;
reg   [63:0] c0_x_6_reg_1735;
reg   [63:0] c0_y_6_reg_1741;
reg   [63:0] mul2_reg_1747;
reg   [63:0] mul3_reg_1753;
reg   [63:0] mul4_reg_1759;
reg   [63:0] mul5_reg_1764;
reg   [63:0] sub4_reg_1769;
reg   [63:0] add5_reg_1775;
reg   [63:0] sub9_reg_1781;
reg   [63:0] sub9_reg_1781_pp0_iter7_reg;
reg   [63:0] sub9_reg_1781_pp0_iter8_reg;
reg   [63:0] sub9_reg_1781_pp0_iter9_reg;
reg   [63:0] sub9_reg_1781_pp0_iter10_reg;
reg   [63:0] sub9_reg_1781_pp0_iter11_reg;
reg   [63:0] sub9_reg_1781_pp0_iter12_reg;
reg   [63:0] sub9_reg_1781_pp0_iter13_reg;
reg   [63:0] sub10_reg_1786;
reg   [63:0] sub10_reg_1786_pp0_iter7_reg;
reg   [63:0] sub10_reg_1786_pp0_iter8_reg;
reg   [63:0] sub10_reg_1786_pp0_iter9_reg;
reg   [63:0] sub10_reg_1786_pp0_iter10_reg;
reg   [63:0] sub10_reg_1786_pp0_iter11_reg;
reg   [63:0] sub10_reg_1786_pp0_iter12_reg;
reg   [63:0] sub10_reg_1786_pp0_iter13_reg;
wire   [63:0] bitcast_ln386_13_fu_1032_p1;
wire   [63:0] bitcast_ln386_15_fu_1066_p1;
reg   [63:0] add9_reg_1801;
reg   [63:0] add9_reg_1801_pp0_iter8_reg;
reg   [63:0] add9_reg_1801_pp0_iter9_reg;
reg   [63:0] add9_reg_1801_pp0_iter10_reg;
reg   [63:0] add9_reg_1801_pp0_iter11_reg;
reg   [63:0] add9_reg_1801_pp0_iter12_reg;
reg   [63:0] add9_reg_1801_pp0_iter13_reg;
reg   [63:0] add10_reg_1806;
reg   [63:0] add10_reg_1806_pp0_iter8_reg;
reg   [63:0] add10_reg_1806_pp0_iter9_reg;
reg   [63:0] add10_reg_1806_pp0_iter10_reg;
reg   [63:0] add10_reg_1806_pp0_iter11_reg;
reg   [63:0] add10_reg_1806_pp0_iter12_reg;
reg   [63:0] add10_reg_1806_pp0_iter13_reg;
reg   [63:0] add13_reg_1811;
reg   [63:0] add13_reg_1811_pp0_iter9_reg;
reg   [63:0] add14_reg_1816;
reg   [63:0] add14_reg_1816_pp0_iter9_reg;
reg   [63:0] tmp_7_reg_1821;
reg   [63:0] tmp_7_reg_1821_pp0_iter9_reg;
reg   [63:0] sub13_reg_1827;
reg   [63:0] sub13_reg_1827_pp0_iter9_reg;
reg   [63:0] c0_x_11_reg_1833;
reg   [63:0] c0_y_11_reg_1838;
reg   [63:0] c0_x_10_reg_1843;
reg   [63:0] c0_x_10_reg_1843_pp0_iter9_reg;
reg   [63:0] c0_x_10_reg_1843_pp0_iter10_reg;
reg   [63:0] c0_x_10_reg_1843_pp0_iter11_reg;
reg   [63:0] c0_y_10_reg_1849;
reg   [63:0] c0_y_10_reg_1849_pp0_iter9_reg;
reg   [63:0] c0_y_10_reg_1849_pp0_iter10_reg;
reg   [63:0] c0_y_10_reg_1849_pp0_iter11_reg;
reg   [63:0] sub7_reg_1855;
reg   [63:0] sub8_reg_1861;
reg   [63:0] mul6_reg_1867;
reg   [63:0] mul7_reg_1872;
wire   [63:0] bitcast_ln386_17_fu_1100_p1;
wire   [63:0] bitcast_ln386_19_fu_1134_p1;
reg   [63:0] add11_reg_1887;
reg   [63:0] add11_reg_1887_pp0_iter11_reg;
reg   [63:0] add11_reg_1887_pp0_iter12_reg;
reg   [63:0] add15_reg_1892;
reg   [63:0] add15_reg_1892_pp0_iter11_reg;
reg   [63:0] add15_reg_1892_pp0_iter12_reg;
reg   [63:0] add16_reg_1897;
reg   [63:0] add16_reg_1897_pp0_iter11_reg;
reg   [63:0] add16_reg_1897_pp0_iter12_reg;
reg   [63:0] add12_reg_1902;
reg   [63:0] add12_reg_1902_pp0_iter12_reg;
reg   [63:0] add12_reg_1902_pp0_iter13_reg;
reg   [63:0] sub11_reg_1907;
reg   [63:0] sub11_reg_1907_pp0_iter12_reg;
reg   [63:0] sub11_reg_1907_pp0_iter13_reg;
reg   [63:0] sub11_reg_1907_pp0_iter14_reg;
reg   [63:0] sub12_reg_1912;
reg   [63:0] sub12_reg_1912_pp0_iter12_reg;
reg   [63:0] sub12_reg_1912_pp0_iter13_reg;
reg   [63:0] sub12_reg_1912_pp0_iter14_reg;
reg   [63:0] sub16_reg_1917;
reg   [63:0] sub16_reg_1917_pp0_iter12_reg;
reg   [63:0] sub16_reg_1917_pp0_iter13_reg;
reg   [63:0] sub16_reg_1917_pp0_iter14_reg;
reg   [63:0] sub17_reg_1922;
reg   [63:0] sub17_reg_1922_pp0_iter12_reg;
reg   [63:0] sub17_reg_1922_pp0_iter13_reg;
reg   [63:0] sub17_reg_1922_pp0_iter14_reg;
reg   [63:0] sub14_reg_1927;
reg   [63:0] sub15_reg_1933;
reg   [63:0] add17_reg_1939;
reg   [63:0] add18_reg_1944;
wire  signed [6:0] zext_ln390_cast_fu_1139_p3;
reg  signed [6:0] zext_ln390_cast_reg_1949;
wire  signed [7:0] zext_ln391_cast_fu_1156_p3;
reg  signed [7:0] zext_ln391_cast_reg_1955;
reg   [63:0] sub18_reg_1960;
reg   [63:0] sub19_reg_1965;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln367_1_fu_696_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln371_fu_712_p1;
wire   [63:0] zext_ln367_fu_666_p1;
wire   [63:0] zext_ln390_fu_1146_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln391_fu_1163_p1;
wire   [63:0] zext_ln365_fu_1181_p1;
wire   [63:0] zext_ln392_fu_1193_p1;
wire   [63:0] zext_ln393_1_fu_1222_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_1235_p1;
wire   [63:0] zext_ln394_fu_1262_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln396_fu_1275_p1;
reg   [6:0] tid_fu_100;
wire   [6:0] add_ln365_fu_787_p2;
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
reg    DATA_x_ce0_local;
reg    DATA_x_8_ce0_local;
reg    DATA_x_1_ce0_local;
reg    DATA_x_9_ce0_local;
reg    DATA_x_2_ce0_local;
reg    DATA_x_10_ce0_local;
reg    DATA_x_3_ce0_local;
reg    DATA_x_11_ce0_local;
reg    DATA_x_4_ce0_local;
reg    DATA_x_12_ce0_local;
reg    DATA_x_5_ce0_local;
reg    DATA_x_13_ce0_local;
reg    DATA_x_6_ce0_local;
reg    DATA_x_14_ce0_local;
reg    DATA_x_7_ce0_local;
reg    DATA_x_15_ce0_local;
reg    work_x_we1_local;
reg   [63:0] work_x_d1_local;
wire   [63:0] bitcast_ln390_fu_1152_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_1169_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln389_fu_1186_p1;
wire   [63:0] bitcast_ln392_fu_1199_p1;
wire   [63:0] bitcast_ln393_fu_1228_p1;
wire   [63:0] bitcast_ln395_fu_1241_p1;
wire   [63:0] bitcast_ln394_fu_1268_p1;
wire   [63:0] bitcast_ln396_fu_1281_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_1173_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_1177_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln398_fu_1203_p1;
wire   [63:0] bitcast_ln401_fu_1207_p1;
wire   [63:0] bitcast_ln402_fu_1245_p1;
wire   [63:0] bitcast_ln404_fu_1249_p1;
wire   [63:0] bitcast_ln403_fu_1285_p1;
wire   [63:0] bitcast_ln405_fu_1289_p1;
reg   [63:0] grp_fu_558_p0;
reg   [63:0] grp_fu_558_p1;
reg   [63:0] grp_fu_562_p0;
reg   [63:0] grp_fu_562_p1;
reg   [63:0] grp_fu_566_p0;
reg   [63:0] grp_fu_566_p1;
reg   [63:0] grp_fu_570_p0;
reg   [63:0] grp_fu_570_p1;
reg   [63:0] grp_fu_574_p0;
reg   [63:0] grp_fu_574_p1;
reg   [63:0] grp_fu_578_p0;
reg   [63:0] grp_fu_578_p1;
reg   [63:0] grp_fu_582_p0;
reg   [63:0] grp_fu_582_p1;
reg   [63:0] grp_fu_586_p0;
reg   [63:0] grp_fu_586_p1;
reg   [63:0] grp_fu_590_p0;
reg   [63:0] grp_fu_590_p1;
reg   [63:0] grp_fu_594_p0;
reg   [63:0] grp_fu_594_p1;
reg   [63:0] grp_fu_598_p0;
reg   [63:0] grp_fu_598_p1;
reg   [63:0] grp_fu_602_p0;
reg   [63:0] grp_fu_602_p1;
reg   [63:0] grp_fu_606_p0;
reg   [63:0] grp_fu_606_p1;
reg   [63:0] grp_fu_610_p0;
reg   [63:0] grp_fu_610_p1;
reg   [63:0] grp_fu_614_p0;
reg   [63:0] grp_fu_614_p1;
reg   [63:0] grp_fu_618_p0;
reg   [63:0] grp_fu_618_p1;
reg   [63:0] grp_fu_623_p0;
reg   [63:0] grp_fu_623_p1;
reg   [63:0] grp_fu_630_p0;
reg   [63:0] grp_fu_630_p1;
reg   [63:0] grp_fu_635_p0;
reg   [63:0] grp_fu_635_p1;
wire   [4:0] lshr_ln6_fu_656_p4;
wire   [6:0] shl_ln367_fu_690_p2;
wire   [6:0] or_ln_fu_704_p3;
wire   [0:0] trunc_ln365_fu_720_p1;
wire   [63:0] bitcast_ln386_fu_797_p1;
wire   [0:0] bit_sel_fu_800_p3;
wire   [0:0] xor_ln386_10_fu_808_p2;
wire   [62:0] trunc_ln386_fu_814_p1;
wire   [63:0] xor_ln3_fu_818_p3;
wire   [63:0] bitcast_ln386_2_fu_831_p1;
wire   [0:0] bit_sel1_fu_834_p3;
wire   [0:0] xor_ln386_fu_842_p2;
wire   [62:0] trunc_ln386_1_fu_848_p1;
wire   [63:0] xor_ln386_1_fu_852_p3;
wire   [63:0] bitcast_ln386_8_fu_865_p1;
wire   [0:0] bit_sel4_fu_868_p3;
wire   [0:0] xor_ln386_13_fu_876_p2;
wire   [62:0] trunc_ln386_4_fu_882_p1;
wire   [63:0] xor_ln386_4_fu_886_p3;
wire   [63:0] bitcast_ln386_10_fu_900_p1;
wire   [0:0] bit_sel5_fu_903_p3;
wire   [0:0] xor_ln386_14_fu_911_p2;
wire   [62:0] trunc_ln386_5_fu_917_p1;
wire   [63:0] xor_ln386_5_fu_921_p3;
wire   [63:0] bitcast_ln386_4_fu_935_p1;
wire   [0:0] bit_sel2_fu_938_p3;
wire   [0:0] xor_ln386_11_fu_946_p2;
wire   [62:0] trunc_ln386_2_fu_952_p1;
wire   [63:0] xor_ln386_2_fu_956_p3;
wire   [63:0] bitcast_ln386_6_fu_969_p1;
wire   [0:0] bit_sel3_fu_972_p3;
wire   [0:0] xor_ln386_12_fu_980_p2;
wire   [62:0] trunc_ln386_3_fu_986_p1;
wire   [63:0] xor_ln386_3_fu_990_p3;
wire   [63:0] bitcast_ln386_12_fu_1003_p1;
wire   [0:0] bit_sel6_fu_1006_p3;
wire   [0:0] xor_ln386_15_fu_1014_p2;
wire   [62:0] trunc_ln386_6_fu_1020_p1;
wire   [63:0] xor_ln386_6_fu_1024_p3;
wire   [63:0] bitcast_ln386_14_fu_1037_p1;
wire   [0:0] bit_sel7_fu_1040_p3;
wire   [0:0] xor_ln386_16_fu_1048_p2;
wire   [62:0] trunc_ln386_7_fu_1054_p1;
wire   [63:0] xor_ln386_7_fu_1058_p3;
wire   [63:0] bitcast_ln386_16_fu_1071_p1;
wire   [0:0] bit_sel8_fu_1074_p3;
wire   [0:0] xor_ln386_17_fu_1082_p2;
wire   [62:0] trunc_ln386_8_fu_1088_p1;
wire   [63:0] xor_ln386_8_fu_1092_p3;
wire   [63:0] bitcast_ln386_18_fu_1105_p1;
wire   [0:0] bit_sel9_fu_1108_p3;
wire   [0:0] xor_ln386_18_fu_1116_p2;
wire   [62:0] trunc_ln386_9_fu_1122_p1;
wire   [63:0] xor_ln386_9_fu_1126_p3;
wire  signed [7:0] sext_ln392_fu_1190_p1;
wire   [7:0] zext_ln393_fu_1211_p1;
wire   [8:0] zext_ln393_cast_fu_1214_p3;
wire  signed [8:0] sext_ln395_fu_1232_p1;
wire   [8:0] zext_ln365_1_fu_1253_p1;
wire   [8:0] add_ln394_fu_1256_p2;
wire  signed [8:0] sext_ln396_fu_1272_p1;
reg   [1:0] grp_fu_558_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
reg   [1:0] grp_fu_562_opcode;
reg   [1:0] grp_fu_566_opcode;
reg   [1:0] grp_fu_570_opcode;
reg   [1:0] grp_fu_574_opcode;
reg   [1:0] grp_fu_578_opcode;
reg   [1:0] grp_fu_582_opcode;
reg   [1:0] grp_fu_586_opcode;
reg   [1:0] grp_fu_590_opcode;
reg   [1:0] grp_fu_594_opcode;
reg   [1:0] grp_fu_598_opcode;
reg   [1:0] grp_fu_602_opcode;
reg   [1:0] grp_fu_606_opcode;
reg   [1:0] grp_fu_610_opcode;
reg   [1:0] grp_fu_614_opcode;
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
#0 tid_fu_100 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U469(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_598_p0),.din1(grp_fu_598_p1),.opcode(grp_fu_598_opcode),.ce(1'b1),.dout(grp_fu_598_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U470(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_602_p0),.din1(grp_fu_602_p1),.opcode(grp_fu_602_opcode),.ce(1'b1),.dout(grp_fu_602_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U471(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_606_p0),.din1(grp_fu_606_p1),.opcode(grp_fu_606_opcode),.ce(1'b1),.dout(grp_fu_606_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U472(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_610_p0),.din1(grp_fu_610_p1),.opcode(grp_fu_610_opcode),.ce(1'b1),.dout(grp_fu_610_p2));
fft1D_512_dadddsub_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadddsub_64ns_64ns_64_8_full_dsp_1_U473(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_614_p0),.din1(grp_fu_614_p1),.opcode(grp_fu_614_opcode),.ce(1'b1),.dout(grp_fu_614_p2));
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
        tid_fu_100 <= 7'd0;
    end else if (((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_100 <= add_ln365_fu_787_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_load_2_reg_1468 <= DATA_y_1_q0;
        DATA_y_2_load_2_reg_1474 <= DATA_y_2_q0;
        DATA_y_3_load_2_reg_1479 <= DATA_y_3_q0;
        DATA_y_load_2_reg_1462 <= DATA_y_q0;
        c0_y_2_reg_1445 <= DATA_y_1_q1;
        c0_y_4_reg_1451 <= DATA_y_2_q1;
        c0_y_5_reg_1456 <= DATA_y_3_q1;
        c0_y_reg_1439 <= DATA_y_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add10_reg_1806 <= grp_fu_1463_p_dout0;
        add9_reg_1801 <= grp_fu_1459_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add10_reg_1806_pp0_iter10_reg <= add10_reg_1806_pp0_iter9_reg;
        add10_reg_1806_pp0_iter11_reg <= add10_reg_1806_pp0_iter10_reg;
        add10_reg_1806_pp0_iter12_reg <= add10_reg_1806_pp0_iter11_reg;
        add10_reg_1806_pp0_iter13_reg <= add10_reg_1806_pp0_iter12_reg;
        add10_reg_1806_pp0_iter8_reg <= add10_reg_1806;
        add10_reg_1806_pp0_iter9_reg <= add10_reg_1806_pp0_iter8_reg;
        add12_reg_1902_pp0_iter12_reg <= add12_reg_1902;
        add12_reg_1902_pp0_iter13_reg <= add12_reg_1902_pp0_iter12_reg;
        add13_reg_1811_pp0_iter9_reg <= add13_reg_1811;
        add14_reg_1816_pp0_iter9_reg <= add14_reg_1816;
        add9_reg_1801_pp0_iter10_reg <= add9_reg_1801_pp0_iter9_reg;
        add9_reg_1801_pp0_iter11_reg <= add9_reg_1801_pp0_iter10_reg;
        add9_reg_1801_pp0_iter12_reg <= add9_reg_1801_pp0_iter11_reg;
        add9_reg_1801_pp0_iter13_reg <= add9_reg_1801_pp0_iter12_reg;
        add9_reg_1801_pp0_iter8_reg <= add9_reg_1801;
        add9_reg_1801_pp0_iter9_reg <= add9_reg_1801_pp0_iter8_reg;
        icmp_ln365_reg_1310 <= icmp_ln365_fu_650_p2;
        icmp_ln365_reg_1310_pp0_iter10_reg <= icmp_ln365_reg_1310_pp0_iter9_reg;
        icmp_ln365_reg_1310_pp0_iter11_reg <= icmp_ln365_reg_1310_pp0_iter10_reg;
        icmp_ln365_reg_1310_pp0_iter12_reg <= icmp_ln365_reg_1310_pp0_iter11_reg;
        icmp_ln365_reg_1310_pp0_iter13_reg <= icmp_ln365_reg_1310_pp0_iter12_reg;
        icmp_ln365_reg_1310_pp0_iter1_reg <= icmp_ln365_reg_1310;
        icmp_ln365_reg_1310_pp0_iter2_reg <= icmp_ln365_reg_1310_pp0_iter1_reg;
        icmp_ln365_reg_1310_pp0_iter3_reg <= icmp_ln365_reg_1310_pp0_iter2_reg;
        icmp_ln365_reg_1310_pp0_iter4_reg <= icmp_ln365_reg_1310_pp0_iter3_reg;
        icmp_ln365_reg_1310_pp0_iter5_reg <= icmp_ln365_reg_1310_pp0_iter4_reg;
        icmp_ln365_reg_1310_pp0_iter6_reg <= icmp_ln365_reg_1310_pp0_iter5_reg;
        icmp_ln365_reg_1310_pp0_iter7_reg <= icmp_ln365_reg_1310_pp0_iter6_reg;
        icmp_ln365_reg_1310_pp0_iter8_reg <= icmp_ln365_reg_1310_pp0_iter7_reg;
        icmp_ln365_reg_1310_pp0_iter9_reg <= icmp_ln365_reg_1310_pp0_iter8_reg;
        sub11_reg_1907_pp0_iter12_reg <= sub11_reg_1907;
        sub11_reg_1907_pp0_iter13_reg <= sub11_reg_1907_pp0_iter12_reg;
        sub11_reg_1907_pp0_iter14_reg <= sub11_reg_1907_pp0_iter13_reg;
        sub12_reg_1912_pp0_iter12_reg <= sub12_reg_1912;
        sub12_reg_1912_pp0_iter13_reg <= sub12_reg_1912_pp0_iter12_reg;
        sub12_reg_1912_pp0_iter14_reg <= sub12_reg_1912_pp0_iter13_reg;
        sub13_reg_1827_pp0_iter9_reg <= sub13_reg_1827;
        sub16_reg_1917_pp0_iter12_reg <= sub16_reg_1917;
        sub16_reg_1917_pp0_iter13_reg <= sub16_reg_1917_pp0_iter12_reg;
        sub16_reg_1917_pp0_iter14_reg <= sub16_reg_1917_pp0_iter13_reg;
        sub17_reg_1922_pp0_iter12_reg <= sub17_reg_1922;
        sub17_reg_1922_pp0_iter13_reg <= sub17_reg_1922_pp0_iter12_reg;
        sub17_reg_1922_pp0_iter14_reg <= sub17_reg_1922_pp0_iter13_reg;
        tid_5_reg_1300 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_1300_pp0_iter10_reg <= tid_5_reg_1300_pp0_iter9_reg;
        tid_5_reg_1300_pp0_iter11_reg <= tid_5_reg_1300_pp0_iter10_reg;
        tid_5_reg_1300_pp0_iter12_reg <= tid_5_reg_1300_pp0_iter11_reg;
        tid_5_reg_1300_pp0_iter13_reg <= tid_5_reg_1300_pp0_iter12_reg;
        tid_5_reg_1300_pp0_iter14_reg <= tid_5_reg_1300_pp0_iter13_reg;
        tid_5_reg_1300_pp0_iter1_reg <= tid_5_reg_1300;
        tid_5_reg_1300_pp0_iter2_reg <= tid_5_reg_1300_pp0_iter1_reg;
        tid_5_reg_1300_pp0_iter3_reg <= tid_5_reg_1300_pp0_iter2_reg;
        tid_5_reg_1300_pp0_iter4_reg <= tid_5_reg_1300_pp0_iter3_reg;
        tid_5_reg_1300_pp0_iter5_reg <= tid_5_reg_1300_pp0_iter4_reg;
        tid_5_reg_1300_pp0_iter6_reg <= tid_5_reg_1300_pp0_iter5_reg;
        tid_5_reg_1300_pp0_iter7_reg <= tid_5_reg_1300_pp0_iter6_reg;
        tid_5_reg_1300_pp0_iter8_reg <= tid_5_reg_1300_pp0_iter7_reg;
        tid_5_reg_1300_pp0_iter9_reg <= tid_5_reg_1300_pp0_iter8_reg;
        tmp_7_reg_1821_pp0_iter9_reg <= tmp_7_reg_1821;
        trunc_ln367_reg_1314 <= trunc_ln367_fu_686_p1;
        trunc_ln367_reg_1314_pp0_iter10_reg <= trunc_ln367_reg_1314_pp0_iter9_reg;
        trunc_ln367_reg_1314_pp0_iter11_reg <= trunc_ln367_reg_1314_pp0_iter10_reg;
        trunc_ln367_reg_1314_pp0_iter12_reg <= trunc_ln367_reg_1314_pp0_iter11_reg;
        trunc_ln367_reg_1314_pp0_iter13_reg <= trunc_ln367_reg_1314_pp0_iter12_reg;
        trunc_ln367_reg_1314_pp0_iter1_reg <= trunc_ln367_reg_1314;
        trunc_ln367_reg_1314_pp0_iter2_reg <= trunc_ln367_reg_1314_pp0_iter1_reg;
        trunc_ln367_reg_1314_pp0_iter3_reg <= trunc_ln367_reg_1314_pp0_iter2_reg;
        trunc_ln367_reg_1314_pp0_iter4_reg <= trunc_ln367_reg_1314_pp0_iter3_reg;
        trunc_ln367_reg_1314_pp0_iter5_reg <= trunc_ln367_reg_1314_pp0_iter4_reg;
        trunc_ln367_reg_1314_pp0_iter6_reg <= trunc_ln367_reg_1314_pp0_iter5_reg;
        trunc_ln367_reg_1314_pp0_iter7_reg <= trunc_ln367_reg_1314_pp0_iter6_reg;
        trunc_ln367_reg_1314_pp0_iter8_reg <= trunc_ln367_reg_1314_pp0_iter7_reg;
        trunc_ln367_reg_1314_pp0_iter9_reg <= trunc_ln367_reg_1314_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_reg_1887 <= grp_fu_1491_p_dout0;
        add15_reg_1892 <= grp_fu_1495_p_dout0;
        add16_reg_1897 <= grp_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add11_reg_1887_pp0_iter11_reg <= add11_reg_1887;
        add11_reg_1887_pp0_iter12_reg <= add11_reg_1887_pp0_iter11_reg;
        add15_reg_1892_pp0_iter11_reg <= add15_reg_1892;
        add15_reg_1892_pp0_iter12_reg <= add15_reg_1892_pp0_iter11_reg;
        add16_reg_1897_pp0_iter11_reg <= add16_reg_1897;
        add16_reg_1897_pp0_iter12_reg <= add16_reg_1897_pp0_iter11_reg;
        c0_x_8_reg_1711_pp0_iter5_reg <= c0_x_8_reg_1711;
        c0_x_8_reg_1711_pp0_iter6_reg <= c0_x_8_reg_1711_pp0_iter5_reg;
        c0_x_8_reg_1711_pp0_iter7_reg <= c0_x_8_reg_1711_pp0_iter6_reg;
        c0_x_8_reg_1711_pp0_iter8_reg <= c0_x_8_reg_1711_pp0_iter7_reg;
        c0_y_8_reg_1717_pp0_iter5_reg <= c0_y_8_reg_1717;
        c0_y_8_reg_1717_pp0_iter6_reg <= c0_y_8_reg_1717_pp0_iter5_reg;
        c0_y_8_reg_1717_pp0_iter7_reg <= c0_y_8_reg_1717_pp0_iter6_reg;
        c0_y_8_reg_1717_pp0_iter8_reg <= c0_y_8_reg_1717_pp0_iter7_reg;
        sub10_reg_1786_pp0_iter10_reg <= sub10_reg_1786_pp0_iter9_reg;
        sub10_reg_1786_pp0_iter11_reg <= sub10_reg_1786_pp0_iter10_reg;
        sub10_reg_1786_pp0_iter12_reg <= sub10_reg_1786_pp0_iter11_reg;
        sub10_reg_1786_pp0_iter13_reg <= sub10_reg_1786_pp0_iter12_reg;
        sub10_reg_1786_pp0_iter7_reg <= sub10_reg_1786;
        sub10_reg_1786_pp0_iter8_reg <= sub10_reg_1786_pp0_iter7_reg;
        sub10_reg_1786_pp0_iter9_reg <= sub10_reg_1786_pp0_iter8_reg;
        sub9_reg_1781_pp0_iter10_reg <= sub9_reg_1781_pp0_iter9_reg;
        sub9_reg_1781_pp0_iter11_reg <= sub9_reg_1781_pp0_iter10_reg;
        sub9_reg_1781_pp0_iter12_reg <= sub9_reg_1781_pp0_iter11_reg;
        sub9_reg_1781_pp0_iter13_reg <= sub9_reg_1781_pp0_iter12_reg;
        sub9_reg_1781_pp0_iter7_reg <= sub9_reg_1781;
        sub9_reg_1781_pp0_iter8_reg <= sub9_reg_1781_pp0_iter7_reg;
        sub9_reg_1781_pp0_iter9_reg <= sub9_reg_1781_pp0_iter8_reg;
        zext_ln390_cast_reg_1949[5 : 0] <= zext_ln390_cast_fu_1139_p3[5 : 0];
        zext_ln391_cast_reg_1955[6 : 0] <= zext_ln391_cast_fu_1156_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add12_reg_1902 <= grp_fu_1483_p_dout0;
        sub11_reg_1907 <= grp_fu_1487_p_dout0;
        sub12_reg_1912 <= grp_fu_1491_p_dout0;
        sub16_reg_1917 <= grp_fu_1495_p_dout0;
        sub17_reg_1922 <= grp_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add13_reg_1811 <= grp_fu_1467_p_dout0;
        add14_reg_1816 <= grp_fu_1471_p_dout0;
        sub13_reg_1827 <= grp_fu_1479_p_dout0;
        tmp_7_reg_1821 <= grp_fu_1475_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add17_reg_1939 <= grp_fu_610_p2;
        add18_reg_1944 <= grp_fu_614_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add1_reg_1619 <= grp_fu_1479_p_dout0;
        add_reg_1613 <= grp_fu_1475_p_dout0;
        c0_x_1_reg_1601 <= grp_fu_1467_p_dout0;
        c0_x_7_reg_1589 <= grp_fu_1459_p_dout0;
        c0_y_1_reg_1607 <= grp_fu_1471_p_dout0;
        c0_y_7_reg_1595 <= grp_fu_1463_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add2_reg_1567 <= grp_fu_1483_p_dout0;
        add3_reg_1573 <= grp_fu_1487_p_dout0;
        c0_x_3_reg_1531 <= grp_fu_1459_p_dout0;
        c0_y_3_reg_1537 <= grp_fu_1463_p_dout0;
        sub1_reg_1561 <= grp_fu_1479_p_dout0;
        sub2_reg_1584 <= grp_fu_1495_p_dout0;
        sub_reg_1549 <= grp_fu_1471_p_dout0;
        tmp_1_1_reg_1555 <= grp_fu_1475_p_dout0;
        tmp_1_2_reg_1579 <= grp_fu_1491_p_dout0;
        tmp_1_reg_1543 <= grp_fu_1467_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add4_reg_1652 <= grp_fu_602_p2;
        add6_reg_1672 <= grp_fu_610_p2;
        mul1_reg_1662 <= grp_fu_1504_p_dout0;
        mul_reg_1657 <= grp_fu_1499_p_dout0;
        sub3_reg_1647 <= grp_fu_598_p2;
        sub5_reg_1667 <= grp_fu_606_p2;
        tmp_6_reg_1677 <= grp_fu_614_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add5_reg_1775 <= grp_fu_598_p2;
        sub4_reg_1769 <= grp_fu_1495_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add7_reg_1723 <= grp_fu_1467_p_dout0;
        add8_reg_1729 <= grp_fu_1471_p_dout0;
        c0_x_8_reg_1711 <= grp_fu_1459_p_dout0;
        c0_y_8_reg_1717 <= grp_fu_1463_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_10_reg_1843 <= grp_fu_610_p2;
        c0_x_11_reg_1833 <= grp_fu_602_p2;
        c0_y_10_reg_1849 <= grp_fu_614_p2;
        c0_y_11_reg_1838 <= grp_fu_606_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_10_reg_1843_pp0_iter10_reg <= c0_x_10_reg_1843_pp0_iter9_reg;
        c0_x_10_reg_1843_pp0_iter11_reg <= c0_x_10_reg_1843_pp0_iter10_reg;
        c0_x_10_reg_1843_pp0_iter9_reg <= c0_x_10_reg_1843;
        c0_x_1_reg_1601_pp0_iter3_reg <= c0_x_1_reg_1601;
        c0_x_1_reg_1601_pp0_iter4_reg <= c0_x_1_reg_1601_pp0_iter3_reg;
        c0_x_1_reg_1601_pp0_iter5_reg <= c0_x_1_reg_1601_pp0_iter4_reg;
        c0_x_1_reg_1601_pp0_iter6_reg <= c0_x_1_reg_1601_pp0_iter5_reg;
        c0_y_10_reg_1849_pp0_iter10_reg <= c0_y_10_reg_1849_pp0_iter9_reg;
        c0_y_10_reg_1849_pp0_iter11_reg <= c0_y_10_reg_1849_pp0_iter10_reg;
        c0_y_10_reg_1849_pp0_iter9_reg <= c0_y_10_reg_1849;
        c0_y_1_reg_1607_pp0_iter3_reg <= c0_y_1_reg_1607;
        c0_y_1_reg_1607_pp0_iter4_reg <= c0_y_1_reg_1607_pp0_iter3_reg;
        c0_y_1_reg_1607_pp0_iter5_reg <= c0_y_1_reg_1607_pp0_iter4_reg;
        c0_y_1_reg_1607_pp0_iter6_reg <= c0_y_1_reg_1607_pp0_iter5_reg;
        sub6_reg_1695_pp0_iter5_reg <= sub6_reg_1695;
        sub6_reg_1695_pp0_iter6_reg <= sub6_reg_1695_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        c0_x_2_reg_1491 <= c0_x_2_fu_731_p3;
        c0_x_4_reg_1497 <= c0_x_4_fu_739_p3;
        c0_x_5_reg_1502 <= c0_x_5_fu_747_p3;
        c0_x_reg_1485 <= c0_x_fu_723_p3;
        select_ln380_reg_1508 <= select_ln380_fu_755_p3;
        select_ln381_reg_1514 <= select_ln381_fu_763_p3;
        select_ln382_reg_1520 <= select_ln382_fu_771_p3;
        select_ln383_reg_1525 <= select_ln383_fu_779_p3;
        sub1_reg_1561_pp0_iter3_reg <= sub1_reg_1561;
        sub1_reg_1561_pp0_iter4_reg <= sub1_reg_1561_pp0_iter3_reg;
        tmp_1_1_reg_1555_pp0_iter3_reg <= tmp_1_1_reg_1555;
        tmp_1_1_reg_1555_pp0_iter4_reg <= tmp_1_1_reg_1555_pp0_iter3_reg;
        tmp_6_reg_1677_pp0_iter5_reg <= tmp_6_reg_1677;
        tmp_6_reg_1677_pp0_iter6_reg <= tmp_6_reg_1677_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_6_reg_1735 <= grp_fu_1499_p_dout0;
        c0_y_6_reg_1741 <= grp_fu_1504_p_dout0;
        mul2_reg_1747 <= grp_fu_1511_p_dout0;
        mul3_reg_1753 <= grp_fu_1516_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_9_reg_1683 <= grp_fu_1483_p_dout0;
        c0_y_9_reg_1689 <= grp_fu_1487_p_dout0;
        sub6_reg_1695 <= grp_fu_1491_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul4_reg_1759 <= grp_fu_1511_p_dout0;
        mul5_reg_1764 <= grp_fu_1516_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul6_reg_1867 <= grp_fu_1499_p_dout0;
        mul7_reg_1872 <= grp_fu_1504_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub10_reg_1786 <= grp_fu_1479_p_dout0;
        sub9_reg_1781 <= grp_fu_1475_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub14_reg_1927 <= grp_fu_602_p2;
        sub15_reg_1933 <= grp_fu_606_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub18_reg_1960 <= grp_fu_602_p2;
        sub19_reg_1965 <= grp_fu_606_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub7_reg_1855 <= grp_fu_1483_p_dout0;
        sub8_reg_1861 <= grp_fu_1487_p_dout0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_10_ce0_local = 1'b1;
    end else begin
        DATA_x_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_11_ce0_local = 1'b1;
    end else begin
        DATA_x_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_12_ce0_local = 1'b1;
    end else begin
        DATA_x_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_13_ce0_local = 1'b1;
    end else begin
        DATA_x_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_14_ce0_local = 1'b1;
    end else begin
        DATA_x_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_15_ce0_local = 1'b1;
    end else begin
        DATA_x_15_ce0_local = 1'b0;
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
        DATA_x_8_ce0_local = 1'b1;
    end else begin
        DATA_x_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        DATA_x_9_ce0_local = 1'b1;
    end else begin
        DATA_x_9_ce0_local = 1'b0;
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
    if (((icmp_ln365_reg_1310 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln365_reg_1310_pp0_iter13_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        ap_sig_allocacmp_tid_5 = tid_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_558_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_558_opcode = 2'd0;
    end else begin
        grp_fu_558_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_558_p0 = c0_x_9_reg_1683;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_558_p0 = c0_x_7_reg_1589;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_558_p0 = c0_x_reg_1485;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_558_p0 = c0_x_2_reg_1491;
    end else begin
        grp_fu_558_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_558_p1 = add7_reg_1723;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_558_p1 = add_reg_1613;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_558_p1 = select_ln380_reg_1508;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_558_p1 = select_ln381_reg_1514;
    end else begin
        grp_fu_558_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_562_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_562_opcode = 2'd0;
    end else begin
        grp_fu_562_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_562_p0 = c0_y_9_reg_1689;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_562_p0 = c0_y_7_reg_1595;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_562_p0 = c0_y_reg_1439;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_562_p0 = c0_y_2_reg_1445;
    end else begin
        grp_fu_562_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_562_p1 = add8_reg_1729;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_562_p1 = add1_reg_1619;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_562_p1 = DATA_y_load_2_reg_1462;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_562_p1 = DATA_y_1_load_2_reg_1468;
    end else begin
        grp_fu_562_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_566_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_566_opcode = 2'd0;
    end else begin
        grp_fu_566_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_566_p0 = c0_x_6_reg_1735;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_566_p0 = c0_x_3_reg_1531;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_566_p0 = c0_x_reg_1485;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_566_p0 = c0_x_2_reg_1491;
    end else begin
        grp_fu_566_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_566_p1 = mul2_reg_1747;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_566_p1 = add2_reg_1567;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_566_p1 = select_ln380_reg_1508;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_566_p1 = select_ln381_reg_1514;
    end else begin
        grp_fu_566_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_570_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_570_opcode = 2'd0;
    end else begin
        grp_fu_570_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_570_p0 = c0_y_6_reg_1741;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_570_p0 = c0_y_3_reg_1537;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_570_p0 = c0_y_reg_1439;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_570_p0 = c0_y_2_reg_1445;
    end else begin
        grp_fu_570_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_570_p1 = mul3_reg_1753;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_570_p1 = add3_reg_1573;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_570_p1 = DATA_y_load_2_reg_1462;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_570_p1 = DATA_y_1_load_2_reg_1468;
    end else begin
        grp_fu_570_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_574_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_574_opcode = 2'd0;
    end else begin
        grp_fu_574_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p0 = c0_x_6_reg_1735;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p0 = c0_x_9_reg_1683;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_574_p0 = c0_x_4_reg_1497;
    end else begin
        grp_fu_574_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_574_p1 = mul2_reg_1747;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_574_p1 = add7_reg_1723;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_574_p1 = select_ln382_reg_1520;
    end else begin
        grp_fu_574_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_578_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_578_opcode = 2'd0;
    end else begin
        grp_fu_578_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_578_p0 = c0_y_6_reg_1741;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_578_p0 = c0_y_9_reg_1689;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_578_p0 = c0_y_4_reg_1451;
    end else begin
        grp_fu_578_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_578_p1 = mul3_reg_1753;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_578_p1 = add8_reg_1729;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_578_p1 = DATA_y_2_load_2_reg_1474;
    end else begin
        grp_fu_578_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_582_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_582_opcode = 2'd0;
    end else begin
        grp_fu_582_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_582_p0 = c0_y_8_reg_1717_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_582_p0 = mul4_reg_1759;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_582_p0 = c0_x_7_reg_1589;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_582_p0 = c0_x_5_reg_1502;
    end else begin
        grp_fu_582_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_582_p1 = sub8_reg_1861;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_582_p1 = bitcast_ln386_13_fu_1032_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_582_p1 = add_reg_1613;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_582_p1 = select_ln383_reg_1525;
    end else begin
        grp_fu_582_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_586_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_586_opcode = 2'd0;
    end else begin
        grp_fu_586_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_586_p0 = c0_x_8_reg_1711_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_586_p0 = bitcast_ln386_15_fu_1066_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_586_p0 = c0_y_7_reg_1595;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_586_p0 = c0_y_5_reg_1456;
    end else begin
        grp_fu_586_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_586_p1 = sub7_reg_1855;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_586_p1 = mul5_reg_1764;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_586_p1 = add1_reg_1619;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_586_p1 = DATA_y_3_load_2_reg_1479;
    end else begin
        grp_fu_586_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_590_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_590_opcode = 2'd0;
    end else begin
        grp_fu_590_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_590_p0 = c0_y_8_reg_1717_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_590_p0 = c0_x_8_reg_1711_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_590_p0 = c0_y_3_reg_1537;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_590_p0 = c0_x_5_reg_1502;
    end else begin
        grp_fu_590_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_590_p1 = sub8_reg_1861;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_590_p1 = sub7_reg_1855;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_590_p1 = add3_reg_1573;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_590_p1 = select_ln383_reg_1525;
    end else begin
        grp_fu_590_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1310 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_594_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_594_opcode = 2'd0;
    end else begin
        grp_fu_594_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_594_p0 = c0_x_11_reg_1833;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_594_p0 = mul_reg_1657;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_594_p0 = c0_y_5_reg_1456;
    end else begin
        grp_fu_594_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_594_p1 = add13_reg_1811_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_594_p1 = add13_reg_1811;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_594_p1 = bitcast_ln386_5_fu_964_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_594_p1 = DATA_y_3_load_2_reg_1479;
    end else begin
        grp_fu_594_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_598_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_598_opcode = 2'd0;
    end else begin
        grp_fu_598_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_598_p0 = c0_y_11_reg_1838;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_598_p0 = bitcast_ln386_7_fu_998_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_598_p0 = tmp_1_reg_1543;
    end else begin
        grp_fu_598_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_598_p1 = add14_reg_1816_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_598_p1 = add14_reg_1816;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_598_p1 = mul1_reg_1662;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_598_p1 = bitcast_ln386_1_fu_826_p1;
    end else begin
        grp_fu_598_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_602_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_602_opcode = 2'd0;
    end else begin
        grp_fu_602_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_602_p0 = c0_x_10_reg_1843_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_602_p0 = mul6_reg_1867;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_602_p0 = c0_x_1_reg_1601_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_602_p0 = bitcast_ln386_3_fu_860_p1;
    end else begin
        grp_fu_602_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_602_p1 = sub14_reg_1927;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_602_p1 = bitcast_ln386_17_fu_1100_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_602_p1 = sub4_reg_1769;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_602_p1 = sub_reg_1549;
    end else begin
        grp_fu_602_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_606_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_606_opcode = 2'd0;
    end else begin
        grp_fu_606_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_606_p0 = c0_y_10_reg_1849_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_606_p0 = bitcast_ln386_19_fu_1134_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_606_p0 = c0_y_1_reg_1607_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_606_p0 = bitcast_ln386_9_fu_894_p1;
    end else begin
        grp_fu_606_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_606_p1 = sub15_reg_1933;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_606_p1 = mul7_reg_1872;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_606_p1 = add5_reg_1775;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_606_p1 = bitcast_ln386_11_fu_929_p1;
    end else begin
        grp_fu_606_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_610_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_610_opcode = 2'd0;
    end else begin
        grp_fu_610_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_610_p0 = c0_x_10_reg_1843_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_610_p0 = c0_x_1_reg_1601_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_610_p0 = bitcast_ln386_9_fu_894_p1;
    end else begin
        grp_fu_610_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_610_p1 = sub14_reg_1927;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_610_p1 = sub4_reg_1769;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_610_p1 = bitcast_ln386_11_fu_929_p1;
    end else begin
        grp_fu_610_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_614_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_614_opcode = 2'd0;
    end else begin
        grp_fu_614_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_614_p0 = c0_y_10_reg_1849_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_614_p0 = c0_y_1_reg_1607_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_614_p0 = c0_x_3_reg_1531;
    end else begin
        grp_fu_614_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_614_p1 = sub15_reg_1933;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_614_p1 = add5_reg_1775;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_614_p1 = add2_reg_1567;
    end else begin
        grp_fu_614_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_618_p0 = tmp_7_reg_1821;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_618_p0 = sub3_reg_1647;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_618_p0 = tmp_1_1_reg_1555;
    end else begin
        grp_fu_618_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_618_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_618_p1 = 64'd0;
    end else begin
        grp_fu_618_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_623_p0 = sub13_reg_1827;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_623_p0 = add4_reg_1652;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_623_p0 = sub1_reg_1561;
    end else begin
        grp_fu_623_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_623_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_623_p1 = 64'd0;
    end else begin
        grp_fu_623_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_630_p0 = tmp_6_reg_1677;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_630_p0 = sub5_reg_1667;
        end else begin
            grp_fu_630_p0 = 'bx;
        end
    end else begin
        grp_fu_630_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_630_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_630_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_630_p1 = 'bx;
        end
    end else begin
        grp_fu_630_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_635_p0 = sub6_reg_1695;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_635_p0 = add6_reg_1672;
        end else begin
            grp_fu_635_p0 = 'bx;
        end
    end else begin
        grp_fu_635_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_635_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_635_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_635_p1 = 'bx;
        end
    end else begin
        grp_fu_635_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address0_local = zext_ln396_fu_1275_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address0_local = zext_ln395_fu_1235_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address0_local = zext_ln392_fu_1193_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address0_local = zext_ln391_fu_1163_p1;
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln394_fu_1262_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln393_1_fu_1222_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_fu_1181_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln390_fu_1146_p1;
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
        work_x_d0_local = bitcast_ln396_fu_1281_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d0_local = bitcast_ln395_fu_1241_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d0_local = bitcast_ln392_fu_1199_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d0_local = bitcast_ln391_fu_1169_p1;
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln394_fu_1268_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln393_fu_1228_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_1186_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln390_fu_1152_p1;
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
        work_y_address0_local = zext_ln396_fu_1275_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address0_local = zext_ln395_fu_1235_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address0_local = zext_ln392_fu_1193_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address0_local = zext_ln391_fu_1163_p1;
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln394_fu_1262_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln393_1_fu_1222_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_fu_1181_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln390_fu_1146_p1;
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
        work_y_d0_local = bitcast_ln405_fu_1289_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d0_local = bitcast_ln404_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d0_local = bitcast_ln401_fu_1207_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d0_local = bitcast_ln400_fu_1177_p1;
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln403_fu_1285_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln402_fu_1245_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_1203_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln399_fu_1173_p1;
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
assign DATA_x_10_address0 = zext_ln367_fu_666_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_11_address0 = zext_ln367_fu_666_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_12_address0 = zext_ln367_fu_666_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_13_address0 = zext_ln367_fu_666_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_14_address0 = zext_ln367_fu_666_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_15_address0 = zext_ln367_fu_666_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_1_address0 = zext_ln367_fu_666_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_2_address0 = zext_ln367_fu_666_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_3_address0 = zext_ln367_fu_666_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln367_fu_666_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln367_fu_666_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln367_fu_666_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln367_fu_666_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_8_address0 = zext_ln367_fu_666_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_9_address0 = zext_ln367_fu_666_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_address0 = zext_ln367_fu_666_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_1_address0 = zext_ln371_fu_712_p1;
assign DATA_y_1_address1 = zext_ln367_1_fu_696_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_2_address0 = zext_ln371_fu_712_p1;
assign DATA_y_2_address1 = zext_ln367_1_fu_696_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_3_address0 = zext_ln371_fu_712_p1;
assign DATA_y_3_address1 = zext_ln367_1_fu_696_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_address0 = zext_ln371_fu_712_p1;
assign DATA_y_address1 = zext_ln367_1_fu_696_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign add_ln365_fu_787_p2 = (tid_5_reg_1300 + 7'd1);
assign add_ln394_fu_1256_p2 = ($signed(zext_ln365_1_fu_1253_p1) + $signed(9'd320));
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
assign bit_sel1_fu_834_p3 = bitcast_ln386_2_fu_831_p1[64'd63];
assign bit_sel2_fu_938_p3 = bitcast_ln386_4_fu_935_p1[64'd63];
assign bit_sel3_fu_972_p3 = bitcast_ln386_6_fu_969_p1[64'd63];
assign bit_sel4_fu_868_p3 = bitcast_ln386_8_fu_865_p1[64'd63];
assign bit_sel5_fu_903_p3 = bitcast_ln386_10_fu_900_p1[64'd63];
assign bit_sel6_fu_1006_p3 = bitcast_ln386_12_fu_1003_p1[64'd63];
assign bit_sel7_fu_1040_p3 = bitcast_ln386_14_fu_1037_p1[64'd63];
assign bit_sel8_fu_1074_p3 = bitcast_ln386_16_fu_1071_p1[64'd63];
assign bit_sel9_fu_1108_p3 = bitcast_ln386_18_fu_1105_p1[64'd63];
assign bit_sel_fu_800_p3 = bitcast_ln386_fu_797_p1[64'd63];
assign bitcast_ln386_10_fu_900_p1 = sub2_reg_1584;
assign bitcast_ln386_11_fu_929_p1 = xor_ln386_5_fu_921_p3;
assign bitcast_ln386_12_fu_1003_p1 = sub6_reg_1695_pp0_iter6_reg;
assign bitcast_ln386_13_fu_1032_p1 = xor_ln386_6_fu_1024_p3;
assign bitcast_ln386_14_fu_1037_p1 = tmp_6_reg_1677_pp0_iter6_reg;
assign bitcast_ln386_15_fu_1066_p1 = xor_ln386_7_fu_1058_p3;
assign bitcast_ln386_16_fu_1071_p1 = sub13_reg_1827_pp0_iter9_reg;
assign bitcast_ln386_17_fu_1100_p1 = xor_ln386_8_fu_1092_p3;
assign bitcast_ln386_18_fu_1105_p1 = tmp_7_reg_1821_pp0_iter9_reg;
assign bitcast_ln386_19_fu_1134_p1 = xor_ln386_9_fu_1126_p3;
assign bitcast_ln386_1_fu_826_p1 = xor_ln3_fu_818_p3;
assign bitcast_ln386_2_fu_831_p1 = tmp_1_reg_1543;
assign bitcast_ln386_3_fu_860_p1 = xor_ln386_1_fu_852_p3;
assign bitcast_ln386_4_fu_935_p1 = sub1_reg_1561_pp0_iter4_reg;
assign bitcast_ln386_5_fu_964_p1 = xor_ln386_2_fu_956_p3;
assign bitcast_ln386_6_fu_969_p1 = tmp_1_1_reg_1555_pp0_iter4_reg;
assign bitcast_ln386_7_fu_998_p1 = xor_ln386_3_fu_990_p3;
assign bitcast_ln386_8_fu_865_p1 = tmp_1_2_reg_1579;
assign bitcast_ln386_9_fu_894_p1 = xor_ln386_4_fu_886_p3;
assign bitcast_ln386_fu_797_p1 = sub_reg_1549;
assign bitcast_ln389_fu_1186_p1 = add9_reg_1801_pp0_iter13_reg;
assign bitcast_ln390_fu_1152_p1 = add15_reg_1892_pp0_iter12_reg;
assign bitcast_ln391_fu_1169_p1 = add11_reg_1887_pp0_iter12_reg;
assign bitcast_ln392_fu_1199_p1 = add17_reg_1939;
assign bitcast_ln393_fu_1228_p1 = sub9_reg_1781_pp0_iter13_reg;
assign bitcast_ln394_fu_1268_p1 = sub16_reg_1917_pp0_iter14_reg;
assign bitcast_ln395_fu_1241_p1 = sub11_reg_1907_pp0_iter14_reg;
assign bitcast_ln396_fu_1281_p1 = sub18_reg_1960;
assign bitcast_ln398_fu_1203_p1 = add10_reg_1806_pp0_iter13_reg;
assign bitcast_ln399_fu_1173_p1 = add16_reg_1897_pp0_iter12_reg;
assign bitcast_ln400_fu_1177_p1 = add12_reg_1902_pp0_iter13_reg;
assign bitcast_ln401_fu_1207_p1 = add18_reg_1944;
assign bitcast_ln402_fu_1245_p1 = sub10_reg_1786_pp0_iter13_reg;
assign bitcast_ln403_fu_1285_p1 = sub17_reg_1922_pp0_iter14_reg;
assign bitcast_ln404_fu_1249_p1 = sub12_reg_1912_pp0_iter14_reg;
assign bitcast_ln405_fu_1289_p1 = sub19_reg_1965;
assign c0_x_2_fu_731_p3 = ((trunc_ln365_fu_720_p1[0:0] == 1'b1) ? DATA_x_9_q0 : DATA_x_1_q0);
assign c0_x_4_fu_739_p3 = ((trunc_ln365_fu_720_p1[0:0] == 1'b1) ? DATA_x_10_q0 : DATA_x_2_q0);
assign c0_x_5_fu_747_p3 = ((trunc_ln365_fu_720_p1[0:0] == 1'b1) ? DATA_x_11_q0 : DATA_x_3_q0);
assign c0_x_fu_723_p3 = ((trunc_ln365_fu_720_p1[0:0] == 1'b1) ? DATA_x_8_q0 : DATA_x_q0);
assign grp_fu_1459_p_ce = 1'b1;
assign grp_fu_1459_p_din0 = grp_fu_558_p0;
assign grp_fu_1459_p_din1 = grp_fu_558_p1;
assign grp_fu_1459_p_opcode = grp_fu_558_opcode;
assign grp_fu_1463_p_ce = 1'b1;
assign grp_fu_1463_p_din0 = grp_fu_562_p0;
assign grp_fu_1463_p_din1 = grp_fu_562_p1;
assign grp_fu_1463_p_opcode = grp_fu_562_opcode;
assign grp_fu_1467_p_ce = 1'b1;
assign grp_fu_1467_p_din0 = grp_fu_566_p0;
assign grp_fu_1467_p_din1 = grp_fu_566_p1;
assign grp_fu_1467_p_opcode = grp_fu_566_opcode;
assign grp_fu_1471_p_ce = 1'b1;
assign grp_fu_1471_p_din0 = grp_fu_570_p0;
assign grp_fu_1471_p_din1 = grp_fu_570_p1;
assign grp_fu_1471_p_opcode = grp_fu_570_opcode;
assign grp_fu_1475_p_ce = 1'b1;
assign grp_fu_1475_p_din0 = grp_fu_574_p0;
assign grp_fu_1475_p_din1 = grp_fu_574_p1;
assign grp_fu_1475_p_opcode = grp_fu_574_opcode;
assign grp_fu_1479_p_ce = 1'b1;
assign grp_fu_1479_p_din0 = grp_fu_578_p0;
assign grp_fu_1479_p_din1 = grp_fu_578_p1;
assign grp_fu_1479_p_opcode = grp_fu_578_opcode;
assign grp_fu_1483_p_ce = 1'b1;
assign grp_fu_1483_p_din0 = grp_fu_582_p0;
assign grp_fu_1483_p_din1 = grp_fu_582_p1;
assign grp_fu_1483_p_opcode = grp_fu_582_opcode;
assign grp_fu_1487_p_ce = 1'b1;
assign grp_fu_1487_p_din0 = grp_fu_586_p0;
assign grp_fu_1487_p_din1 = grp_fu_586_p1;
assign grp_fu_1487_p_opcode = grp_fu_586_opcode;
assign grp_fu_1491_p_ce = 1'b1;
assign grp_fu_1491_p_din0 = grp_fu_590_p0;
assign grp_fu_1491_p_din1 = grp_fu_590_p1;
assign grp_fu_1491_p_opcode = grp_fu_590_opcode;
assign grp_fu_1495_p_ce = 1'b1;
assign grp_fu_1495_p_din0 = grp_fu_594_p0;
assign grp_fu_1495_p_din1 = grp_fu_594_p1;
assign grp_fu_1495_p_opcode = grp_fu_594_opcode;
assign grp_fu_1499_p_ce = 1'b1;
assign grp_fu_1499_p_din0 = grp_fu_618_p0;
assign grp_fu_1499_p_din1 = grp_fu_618_p1;
assign grp_fu_1504_p_ce = 1'b1;
assign grp_fu_1504_p_din0 = grp_fu_623_p0;
assign grp_fu_1504_p_din1 = grp_fu_623_p1;
assign grp_fu_1511_p_ce = 1'b1;
assign grp_fu_1511_p_din0 = grp_fu_630_p0;
assign grp_fu_1511_p_din1 = grp_fu_630_p1;
assign grp_fu_1516_p_ce = 1'b1;
assign grp_fu_1516_p_din0 = grp_fu_635_p0;
assign grp_fu_1516_p_din1 = grp_fu_635_p1;
assign icmp_ln365_fu_650_p2 = ((ap_sig_allocacmp_tid_5 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_656_p4 = {{ap_sig_allocacmp_tid_5[5:1]}};
assign or_ln_fu_704_p3 = {{trunc_ln367_fu_686_p1}, {1'd1}};
assign select_ln380_fu_755_p3 = ((trunc_ln365_fu_720_p1[0:0] == 1'b1) ? DATA_x_12_q0 : DATA_x_4_q0);
assign select_ln381_fu_763_p3 = ((trunc_ln365_fu_720_p1[0:0] == 1'b1) ? DATA_x_13_q0 : DATA_x_5_q0);
assign select_ln382_fu_771_p3 = ((trunc_ln365_fu_720_p1[0:0] == 1'b1) ? DATA_x_14_q0 : DATA_x_6_q0);
assign select_ln383_fu_779_p3 = ((trunc_ln365_fu_720_p1[0:0] == 1'b1) ? DATA_x_15_q0 : DATA_x_7_q0);
assign sext_ln392_fu_1190_p1 = zext_ln390_cast_reg_1949;
assign sext_ln395_fu_1232_p1 = zext_ln391_cast_reg_1955;
assign sext_ln396_fu_1272_p1 = zext_ln390_cast_reg_1949;
assign shl_ln367_fu_690_p2 = ap_sig_allocacmp_tid_5 << 7'd1;
assign trunc_ln365_fu_720_p1 = tid_5_reg_1300[0:0];
assign trunc_ln367_fu_686_p1 = ap_sig_allocacmp_tid_5[5:0];
assign trunc_ln386_1_fu_848_p1 = bitcast_ln386_2_fu_831_p1[62:0];
assign trunc_ln386_2_fu_952_p1 = bitcast_ln386_4_fu_935_p1[62:0];
assign trunc_ln386_3_fu_986_p1 = bitcast_ln386_6_fu_969_p1[62:0];
assign trunc_ln386_4_fu_882_p1 = bitcast_ln386_8_fu_865_p1[62:0];
assign trunc_ln386_5_fu_917_p1 = bitcast_ln386_10_fu_900_p1[62:0];
assign trunc_ln386_6_fu_1020_p1 = bitcast_ln386_12_fu_1003_p1[62:0];
assign trunc_ln386_7_fu_1054_p1 = bitcast_ln386_14_fu_1037_p1[62:0];
assign trunc_ln386_8_fu_1088_p1 = bitcast_ln386_16_fu_1071_p1[62:0];
assign trunc_ln386_9_fu_1122_p1 = bitcast_ln386_18_fu_1105_p1[62:0];
assign trunc_ln386_fu_814_p1 = bitcast_ln386_fu_797_p1[62:0];
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
assign xor_ln386_10_fu_808_p2 = (bit_sel_fu_800_p3 ^ 1'd1);
assign xor_ln386_11_fu_946_p2 = (bit_sel2_fu_938_p3 ^ 1'd1);
assign xor_ln386_12_fu_980_p2 = (bit_sel3_fu_972_p3 ^ 1'd1);
assign xor_ln386_13_fu_876_p2 = (bit_sel4_fu_868_p3 ^ 1'd1);
assign xor_ln386_14_fu_911_p2 = (bit_sel5_fu_903_p3 ^ 1'd1);
assign xor_ln386_15_fu_1014_p2 = (bit_sel6_fu_1006_p3 ^ 1'd1);
assign xor_ln386_16_fu_1048_p2 = (bit_sel7_fu_1040_p3 ^ 1'd1);
assign xor_ln386_17_fu_1082_p2 = (bit_sel8_fu_1074_p3 ^ 1'd1);
assign xor_ln386_18_fu_1116_p2 = (bit_sel9_fu_1108_p3 ^ 1'd1);
assign xor_ln386_1_fu_852_p3 = {{xor_ln386_fu_842_p2}, {trunc_ln386_1_fu_848_p1}};
assign xor_ln386_2_fu_956_p3 = {{xor_ln386_11_fu_946_p2}, {trunc_ln386_2_fu_952_p1}};
assign xor_ln386_3_fu_990_p3 = {{xor_ln386_12_fu_980_p2}, {trunc_ln386_3_fu_986_p1}};
assign xor_ln386_4_fu_886_p3 = {{xor_ln386_13_fu_876_p2}, {trunc_ln386_4_fu_882_p1}};
assign xor_ln386_5_fu_921_p3 = {{xor_ln386_14_fu_911_p2}, {trunc_ln386_5_fu_917_p1}};
assign xor_ln386_6_fu_1024_p3 = {{xor_ln386_15_fu_1014_p2}, {trunc_ln386_6_fu_1020_p1}};
assign xor_ln386_7_fu_1058_p3 = {{xor_ln386_16_fu_1048_p2}, {trunc_ln386_7_fu_1054_p1}};
assign xor_ln386_8_fu_1092_p3 = {{xor_ln386_17_fu_1082_p2}, {trunc_ln386_8_fu_1088_p1}};
assign xor_ln386_9_fu_1126_p3 = {{xor_ln386_18_fu_1116_p2}, {trunc_ln386_9_fu_1122_p1}};
assign xor_ln386_fu_842_p2 = (bit_sel1_fu_834_p3 ^ 1'd1);
assign xor_ln3_fu_818_p3 = {{xor_ln386_10_fu_808_p2}, {trunc_ln386_fu_814_p1}};
assign zext_ln365_1_fu_1253_p1 = tid_5_reg_1300_pp0_iter14_reg;
assign zext_ln365_fu_1181_p1 = tid_5_reg_1300_pp0_iter13_reg;
assign zext_ln367_1_fu_696_p1 = shl_ln367_fu_690_p2;
assign zext_ln367_fu_666_p1 = lshr_ln6_fu_656_p4;
assign zext_ln371_fu_712_p1 = or_ln_fu_704_p3;
assign zext_ln390_cast_fu_1139_p3 = {{1'd1}, {trunc_ln367_reg_1314_pp0_iter13_reg}};
assign zext_ln390_fu_1146_p1 = $unsigned(zext_ln390_cast_fu_1139_p3);
assign zext_ln391_cast_fu_1156_p3 = {{1'd1}, {tid_5_reg_1300_pp0_iter13_reg}};
assign zext_ln391_fu_1163_p1 = $unsigned(zext_ln391_cast_fu_1156_p3);
assign zext_ln392_fu_1193_p1 = $unsigned(sext_ln392_fu_1190_p1);
assign zext_ln393_1_fu_1222_p1 = zext_ln393_cast_fu_1214_p3;
assign zext_ln393_cast_fu_1214_p3 = {{1'd1}, {zext_ln393_fu_1211_p1}};
assign zext_ln393_fu_1211_p1 = tid_5_reg_1300_pp0_iter14_reg;
assign zext_ln394_fu_1262_p1 = add_ln394_fu_1256_p2;
assign zext_ln395_fu_1235_p1 = $unsigned(sext_ln395_fu_1232_p1);
assign zext_ln396_fu_1275_p1 = $unsigned(sext_ln396_fu_1272_p1);
always @ (posedge ap_clk) begin
    zext_ln390_cast_reg_1949[6] <= 1'b1;
    zext_ln391_cast_reg_1955[7] <= 1'b1;
end
endmodule 