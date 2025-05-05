module fft1D_512_fft1D_512_Pipeline_loop11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_address0,DATA_y_ce0,DATA_y_q0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_q0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_q0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_q0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_q0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_q0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_q0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_q0,DATA_x_address0,DATA_x_ce0,DATA_x_q0,DATA_x_8_address0,DATA_x_8_ce0,DATA_x_8_q0,DATA_x_1_address0,DATA_x_1_ce0,DATA_x_1_q0,DATA_x_9_address0,DATA_x_9_ce0,DATA_x_9_q0,DATA_x_2_address0,DATA_x_2_ce0,DATA_x_2_q0,DATA_x_10_address0,DATA_x_10_ce0,DATA_x_10_q0,DATA_x_3_address0,DATA_x_3_ce0,DATA_x_3_q0,DATA_x_11_address0,DATA_x_11_ce0,DATA_x_11_q0,DATA_x_4_address0,DATA_x_4_ce0,DATA_x_4_q0,DATA_x_12_address0,DATA_x_12_ce0,DATA_x_12_q0,DATA_x_5_address0,DATA_x_5_ce0,DATA_x_5_q0,DATA_x_13_address0,DATA_x_13_ce0,DATA_x_13_q0,DATA_x_6_address0,DATA_x_6_ce0,DATA_x_6_q0,DATA_x_14_address0,DATA_x_14_ce0,DATA_x_14_q0,DATA_x_7_address0,DATA_x_7_ce0,DATA_x_7_q0,DATA_x_15_address0,DATA_x_15_ce0,DATA_x_15_q0,work_x_address0,work_x_ce0,work_x_we0,work_x_d0,work_x_address1,work_x_ce1,work_x_we1,work_x_d1,work_y_address0,work_y_ce0,work_y_we0,work_y_d0,work_y_address1,work_y_ce1,work_y_we1,work_y_d1,grp_fu_576_p_din0,grp_fu_576_p_din1,grp_fu_576_p_opcode,grp_fu_576_p_dout0,grp_fu_576_p_ce,grp_fu_580_p_din0,grp_fu_580_p_din1,grp_fu_580_p_opcode,grp_fu_580_p_dout0,grp_fu_580_p_ce,grp_fu_584_p_din0,grp_fu_584_p_din1,grp_fu_584_p_opcode,grp_fu_584_p_dout0,grp_fu_584_p_ce,grp_fu_588_p_din0,grp_fu_588_p_din1,grp_fu_588_p_opcode,grp_fu_588_p_dout0,grp_fu_588_p_ce,grp_fu_592_p_din0,grp_fu_592_p_din1,grp_fu_592_p_opcode,grp_fu_592_p_dout0,grp_fu_592_p_ce,grp_fu_596_p_din0,grp_fu_596_p_din1,grp_fu_596_p_opcode,grp_fu_596_p_dout0,grp_fu_596_p_ce,grp_fu_600_p_din0,grp_fu_600_p_din1,grp_fu_600_p_opcode,grp_fu_600_p_dout0,grp_fu_600_p_ce,grp_fu_604_p_din0,grp_fu_604_p_din1,grp_fu_604_p_opcode,grp_fu_604_p_dout0,grp_fu_604_p_ce,grp_fu_608_p_din0,grp_fu_608_p_din1,grp_fu_608_p_opcode,grp_fu_608_p_dout0,grp_fu_608_p_ce,grp_fu_612_p_din0,grp_fu_612_p_din1,grp_fu_612_p_opcode,grp_fu_612_p_dout0,grp_fu_612_p_ce,grp_fu_616_p_din0,grp_fu_616_p_din1,grp_fu_616_p_opcode,grp_fu_616_p_dout0,grp_fu_616_p_ce,grp_fu_620_p_din0,grp_fu_620_p_din1,grp_fu_620_p_opcode,grp_fu_620_p_dout0,grp_fu_620_p_ce,grp_fu_624_p_din0,grp_fu_624_p_din1,grp_fu_624_p_opcode,grp_fu_624_p_dout0,grp_fu_624_p_ce,grp_fu_628_p_din0,grp_fu_628_p_din1,grp_fu_628_p_opcode,grp_fu_628_p_dout0,grp_fu_628_p_ce,grp_fu_632_p_din0,grp_fu_632_p_din1,grp_fu_632_p_opcode,grp_fu_632_p_dout0,grp_fu_632_p_ce,grp_fu_636_p_din0,grp_fu_636_p_din1,grp_fu_636_p_dout0,grp_fu_636_p_ce,grp_fu_640_p_din0,grp_fu_640_p_din1,grp_fu_640_p_dout0,grp_fu_640_p_ce,grp_fu_644_p_din0,grp_fu_644_p_din1,grp_fu_644_p_dout0,grp_fu_644_p_ce,grp_fu_673_p_din0,grp_fu_673_p_din1,grp_fu_673_p_dout0,grp_fu_673_p_ce); 
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
output  [63:0] grp_fu_576_p_din0;
output  [63:0] grp_fu_576_p_din1;
output  [1:0] grp_fu_576_p_opcode;
input  [63:0] grp_fu_576_p_dout0;
output   grp_fu_576_p_ce;
output  [63:0] grp_fu_580_p_din0;
output  [63:0] grp_fu_580_p_din1;
output  [1:0] grp_fu_580_p_opcode;
input  [63:0] grp_fu_580_p_dout0;
output   grp_fu_580_p_ce;
output  [63:0] grp_fu_584_p_din0;
output  [63:0] grp_fu_584_p_din1;
output  [1:0] grp_fu_584_p_opcode;
input  [63:0] grp_fu_584_p_dout0;
output   grp_fu_584_p_ce;
output  [63:0] grp_fu_588_p_din0;
output  [63:0] grp_fu_588_p_din1;
output  [1:0] grp_fu_588_p_opcode;
input  [63:0] grp_fu_588_p_dout0;
output   grp_fu_588_p_ce;
output  [63:0] grp_fu_592_p_din0;
output  [63:0] grp_fu_592_p_din1;
output  [1:0] grp_fu_592_p_opcode;
input  [63:0] grp_fu_592_p_dout0;
output   grp_fu_592_p_ce;
output  [63:0] grp_fu_596_p_din0;
output  [63:0] grp_fu_596_p_din1;
output  [1:0] grp_fu_596_p_opcode;
input  [63:0] grp_fu_596_p_dout0;
output   grp_fu_596_p_ce;
output  [63:0] grp_fu_600_p_din0;
output  [63:0] grp_fu_600_p_din1;
output  [1:0] grp_fu_600_p_opcode;
input  [63:0] grp_fu_600_p_dout0;
output   grp_fu_600_p_ce;
output  [63:0] grp_fu_604_p_din0;
output  [63:0] grp_fu_604_p_din1;
output  [1:0] grp_fu_604_p_opcode;
input  [63:0] grp_fu_604_p_dout0;
output   grp_fu_604_p_ce;
output  [63:0] grp_fu_608_p_din0;
output  [63:0] grp_fu_608_p_din1;
output  [1:0] grp_fu_608_p_opcode;
input  [63:0] grp_fu_608_p_dout0;
output   grp_fu_608_p_ce;
output  [63:0] grp_fu_612_p_din0;
output  [63:0] grp_fu_612_p_din1;
output  [1:0] grp_fu_612_p_opcode;
input  [63:0] grp_fu_612_p_dout0;
output   grp_fu_612_p_ce;
output  [63:0] grp_fu_616_p_din0;
output  [63:0] grp_fu_616_p_din1;
output  [1:0] grp_fu_616_p_opcode;
input  [63:0] grp_fu_616_p_dout0;
output   grp_fu_616_p_ce;
output  [63:0] grp_fu_620_p_din0;
output  [63:0] grp_fu_620_p_din1;
output  [1:0] grp_fu_620_p_opcode;
input  [63:0] grp_fu_620_p_dout0;
output   grp_fu_620_p_ce;
output  [63:0] grp_fu_624_p_din0;
output  [63:0] grp_fu_624_p_din1;
output  [1:0] grp_fu_624_p_opcode;
input  [63:0] grp_fu_624_p_dout0;
output   grp_fu_624_p_ce;
output  [63:0] grp_fu_628_p_din0;
output  [63:0] grp_fu_628_p_din1;
output  [1:0] grp_fu_628_p_opcode;
input  [63:0] grp_fu_628_p_dout0;
output   grp_fu_628_p_ce;
output  [63:0] grp_fu_632_p_din0;
output  [63:0] grp_fu_632_p_din1;
output  [1:0] grp_fu_632_p_opcode;
input  [63:0] grp_fu_632_p_dout0;
output   grp_fu_632_p_ce;
output  [63:0] grp_fu_636_p_din0;
output  [63:0] grp_fu_636_p_din1;
input  [63:0] grp_fu_636_p_dout0;
output   grp_fu_636_p_ce;
output  [63:0] grp_fu_640_p_din0;
output  [63:0] grp_fu_640_p_din1;
input  [63:0] grp_fu_640_p_dout0;
output   grp_fu_640_p_ce;
output  [63:0] grp_fu_644_p_din0;
output  [63:0] grp_fu_644_p_din1;
input  [63:0] grp_fu_644_p_dout0;
output   grp_fu_644_p_ce;
output  [63:0] grp_fu_673_p_din0;
output  [63:0] grp_fu_673_p_din1;
input  [63:0] grp_fu_673_p_dout0;
output   grp_fu_673_p_ce;
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
reg   [0:0] icmp_ln365_reg_1297;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_5_reg_1287;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_5_reg_1287_pp0_iter1_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter2_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter3_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter4_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter5_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter6_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter7_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter8_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter9_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter10_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter11_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter12_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter13_reg;
reg   [6:0] tid_5_reg_1287_pp0_iter14_reg;
wire   [0:0] icmp_ln365_fu_660_p2;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter1_reg;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter2_reg;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter3_reg;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter4_reg;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter5_reg;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter6_reg;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter7_reg;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter8_reg;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter9_reg;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter10_reg;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter11_reg;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter12_reg;
reg   [0:0] icmp_ln365_reg_1297_pp0_iter13_reg;
wire   [63:0] zext_ln365_fu_666_p1;
reg   [63:0] zext_ln365_reg_1301;
reg   [63:0] zext_ln365_reg_1301_pp0_iter1_reg;
reg   [63:0] zext_ln365_reg_1301_pp0_iter2_reg;
reg   [63:0] zext_ln365_reg_1301_pp0_iter3_reg;
reg   [63:0] zext_ln365_reg_1301_pp0_iter4_reg;
reg   [63:0] zext_ln365_reg_1301_pp0_iter5_reg;
reg   [63:0] zext_ln365_reg_1301_pp0_iter6_reg;
reg   [63:0] zext_ln365_reg_1301_pp0_iter7_reg;
reg   [63:0] zext_ln365_reg_1301_pp0_iter8_reg;
reg   [63:0] zext_ln365_reg_1301_pp0_iter9_reg;
reg   [63:0] zext_ln365_reg_1301_pp0_iter10_reg;
reg   [63:0] zext_ln365_reg_1301_pp0_iter11_reg;
reg   [63:0] zext_ln365_reg_1301_pp0_iter12_reg;
reg   [63:0] zext_ln365_reg_1301_pp0_iter13_reg;
reg   [63:0] c0_y_reg_1427;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] c0_y_29_reg_1433;
reg   [63:0] c0_y_30_reg_1439;
reg   [63:0] c0_y_31_reg_1444;
reg   [63:0] DATA_y_4_load_reg_1450;
reg   [63:0] DATA_y_5_load_reg_1456;
reg   [63:0] DATA_y_6_load_reg_1462;
reg   [63:0] DATA_y_7_load_reg_1467;
wire   [63:0] c0_x_fu_711_p3;
reg   [63:0] c0_x_reg_1473;
wire   [63:0] c0_x_29_fu_719_p3;
reg   [63:0] c0_x_29_reg_1479;
wire   [63:0] c0_x_30_fu_727_p3;
reg   [63:0] c0_x_30_reg_1485;
wire   [63:0] c0_x_31_fu_735_p3;
reg   [63:0] c0_x_31_reg_1490;
wire   [63:0] select_ln380_fu_743_p3;
reg   [63:0] select_ln380_reg_1496;
wire   [63:0] select_ln381_fu_751_p3;
reg   [63:0] select_ln381_reg_1502;
wire   [63:0] select_ln382_fu_759_p3;
reg   [63:0] select_ln382_reg_1508;
wire   [63:0] select_ln383_fu_767_p3;
reg   [63:0] select_ln383_reg_1513;
reg   [63:0] c0_x_20_reg_1519;
reg   [63:0] c0_y_20_reg_1525;
reg   [63:0] tmp_1_reg_1531;
reg   [63:0] sub_reg_1537;
reg   [63:0] tmp_1_1_reg_1543;
reg   [63:0] tmp_1_1_reg_1543_pp0_iter3_reg;
reg   [63:0] tmp_1_1_reg_1543_pp0_iter4_reg;
reg   [63:0] sub12_reg_1549;
reg   [63:0] sub12_reg_1549_pp0_iter3_reg;
reg   [63:0] sub12_reg_1549_pp0_iter4_reg;
reg   [63:0] add12_reg_1555;
reg   [63:0] add13_reg_1561;
reg   [63:0] tmp_1_2_reg_1567;
reg   [63:0] sub13_reg_1572;
reg   [63:0] c0_x_32_reg_1577;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] c0_y_32_reg_1583;
reg   [63:0] c0_x_19_reg_1589;
reg   [63:0] c0_x_19_reg_1589_pp0_iter3_reg;
reg   [63:0] c0_x_19_reg_1589_pp0_iter4_reg;
reg   [63:0] c0_x_19_reg_1589_pp0_iter5_reg;
reg   [63:0] c0_x_19_reg_1589_pp0_iter6_reg;
reg   [63:0] c0_y_19_reg_1595;
reg   [63:0] c0_y_19_reg_1595_pp0_iter3_reg;
reg   [63:0] c0_y_19_reg_1595_pp0_iter4_reg;
reg   [63:0] c0_y_19_reg_1595_pp0_iter5_reg;
reg   [63:0] c0_y_19_reg_1595_pp0_iter6_reg;
reg   [63:0] add_reg_1601;
reg   [63:0] add11_reg_1607;
wire   [63:0] bitcast_ln386_1_fu_814_p1;
wire   [63:0] bitcast_ln386_3_fu_848_p1;
wire   [63:0] bitcast_ln386_9_fu_882_p1;
wire   [63:0] bitcast_ln386_11_fu_917_p1;
reg   [63:0] sub14_reg_1635;
reg   [63:0] add14_reg_1640;
reg   [63:0] mul_reg_1645;
reg   [63:0] mul6_reg_1650;
reg   [63:0] sub16_reg_1655;
reg   [63:0] add16_reg_1660;
reg   [63:0] tmp_8_reg_1665;
reg   [63:0] tmp_8_reg_1665_pp0_iter5_reg;
reg   [63:0] tmp_8_reg_1665_pp0_iter6_reg;
reg   [63:0] c0_x_33_reg_1671;
reg   [63:0] c0_y_33_reg_1677;
reg   [63:0] sub17_reg_1683;
reg   [63:0] sub17_reg_1683_pp0_iter5_reg;
reg   [63:0] sub17_reg_1683_pp0_iter6_reg;
wire   [63:0] bitcast_ln386_5_fu_952_p1;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln386_7_fu_986_p1;
reg   [63:0] c0_x_22_reg_1699;
reg   [63:0] c0_x_22_reg_1699_pp0_iter5_reg;
reg   [63:0] c0_x_22_reg_1699_pp0_iter6_reg;
reg   [63:0] c0_x_22_reg_1699_pp0_iter7_reg;
reg   [63:0] c0_x_22_reg_1699_pp0_iter8_reg;
reg   [63:0] c0_y_22_reg_1705;
reg   [63:0] c0_y_22_reg_1705_pp0_iter5_reg;
reg   [63:0] c0_y_22_reg_1705_pp0_iter6_reg;
reg   [63:0] c0_y_22_reg_1705_pp0_iter7_reg;
reg   [63:0] c0_y_22_reg_1705_pp0_iter8_reg;
reg   [63:0] add17_reg_1711;
reg   [63:0] add18_reg_1717;
reg   [63:0] c0_x_21_reg_1723;
reg   [63:0] c0_y_21_reg_1729;
reg   [63:0] mul7_reg_1735;
reg   [63:0] mul8_reg_1741;
reg   [63:0] mul9_reg_1747;
reg   [63:0] mul10_reg_1752;
reg   [63:0] sub15_reg_1757;
reg   [63:0] add15_reg_1763;
reg   [63:0] sub20_reg_1769;
reg   [63:0] sub20_reg_1769_pp0_iter7_reg;
reg   [63:0] sub20_reg_1769_pp0_iter8_reg;
reg   [63:0] sub20_reg_1769_pp0_iter9_reg;
reg   [63:0] sub20_reg_1769_pp0_iter10_reg;
reg   [63:0] sub20_reg_1769_pp0_iter11_reg;
reg   [63:0] sub20_reg_1769_pp0_iter12_reg;
reg   [63:0] sub20_reg_1769_pp0_iter13_reg;
reg   [63:0] sub21_reg_1774;
reg   [63:0] sub21_reg_1774_pp0_iter7_reg;
reg   [63:0] sub21_reg_1774_pp0_iter8_reg;
reg   [63:0] sub21_reg_1774_pp0_iter9_reg;
reg   [63:0] sub21_reg_1774_pp0_iter10_reg;
reg   [63:0] sub21_reg_1774_pp0_iter11_reg;
reg   [63:0] sub21_reg_1774_pp0_iter12_reg;
reg   [63:0] sub21_reg_1774_pp0_iter13_reg;
wire   [63:0] bitcast_ln386_13_fu_1020_p1;
wire   [63:0] bitcast_ln386_15_fu_1054_p1;
reg   [63:0] add19_reg_1789;
reg   [63:0] add19_reg_1789_pp0_iter8_reg;
reg   [63:0] add19_reg_1789_pp0_iter9_reg;
reg   [63:0] add19_reg_1789_pp0_iter10_reg;
reg   [63:0] add19_reg_1789_pp0_iter11_reg;
reg   [63:0] add19_reg_1789_pp0_iter12_reg;
reg   [63:0] add19_reg_1789_pp0_iter13_reg;
reg   [63:0] add20_reg_1794;
reg   [63:0] add20_reg_1794_pp0_iter8_reg;
reg   [63:0] add20_reg_1794_pp0_iter9_reg;
reg   [63:0] add20_reg_1794_pp0_iter10_reg;
reg   [63:0] add20_reg_1794_pp0_iter11_reg;
reg   [63:0] add20_reg_1794_pp0_iter12_reg;
reg   [63:0] add20_reg_1794_pp0_iter13_reg;
reg   [63:0] add23_reg_1799;
reg   [63:0] add23_reg_1799_pp0_iter9_reg;
reg   [63:0] add24_reg_1804;
reg   [63:0] add24_reg_1804_pp0_iter9_reg;
reg   [63:0] tmp_9_reg_1809;
reg   [63:0] tmp_9_reg_1809_pp0_iter9_reg;
reg   [63:0] sub24_reg_1815;
reg   [63:0] sub24_reg_1815_pp0_iter9_reg;
reg   [63:0] c0_x_34_reg_1821;
reg   [63:0] c0_y_34_reg_1826;
reg   [63:0] c0_x_23_reg_1831;
reg   [63:0] c0_x_23_reg_1831_pp0_iter9_reg;
reg   [63:0] c0_x_23_reg_1831_pp0_iter10_reg;
reg   [63:0] c0_x_23_reg_1831_pp0_iter11_reg;
reg   [63:0] c0_y_23_reg_1837;
reg   [63:0] c0_y_23_reg_1837_pp0_iter9_reg;
reg   [63:0] c0_y_23_reg_1837_pp0_iter10_reg;
reg   [63:0] c0_y_23_reg_1837_pp0_iter11_reg;
reg   [63:0] sub18_reg_1843;
reg   [63:0] sub19_reg_1849;
reg   [63:0] mul11_reg_1855;
reg   [63:0] mul12_reg_1860;
wire   [63:0] bitcast_ln386_17_fu_1088_p1;
wire   [63:0] bitcast_ln386_19_fu_1122_p1;
reg   [63:0] add21_reg_1875;
reg   [63:0] add21_reg_1875_pp0_iter11_reg;
reg   [63:0] add21_reg_1875_pp0_iter12_reg;
reg   [63:0] add25_reg_1880;
reg   [63:0] add25_reg_1880_pp0_iter11_reg;
reg   [63:0] add25_reg_1880_pp0_iter12_reg;
reg   [63:0] add26_reg_1885;
reg   [63:0] add26_reg_1885_pp0_iter11_reg;
reg   [63:0] add26_reg_1885_pp0_iter12_reg;
reg   [63:0] add22_reg_1890;
reg   [63:0] add22_reg_1890_pp0_iter12_reg;
reg   [63:0] add22_reg_1890_pp0_iter13_reg;
reg   [63:0] sub22_reg_1895;
reg   [63:0] sub22_reg_1895_pp0_iter12_reg;
reg   [63:0] sub22_reg_1895_pp0_iter13_reg;
reg   [63:0] sub22_reg_1895_pp0_iter14_reg;
reg   [63:0] sub23_reg_1900;
reg   [63:0] sub23_reg_1900_pp0_iter12_reg;
reg   [63:0] sub23_reg_1900_pp0_iter13_reg;
reg   [63:0] sub23_reg_1900_pp0_iter14_reg;
reg   [63:0] sub27_reg_1905;
reg   [63:0] sub27_reg_1905_pp0_iter12_reg;
reg   [63:0] sub27_reg_1905_pp0_iter13_reg;
reg   [63:0] sub27_reg_1905_pp0_iter14_reg;
reg   [63:0] sub28_reg_1910;
reg   [63:0] sub28_reg_1910_pp0_iter12_reg;
reg   [63:0] sub28_reg_1910_pp0_iter13_reg;
reg   [63:0] sub28_reg_1910_pp0_iter14_reg;
reg   [63:0] sub25_reg_1915;
reg   [63:0] sub26_reg_1921;
reg   [63:0] add27_reg_1927;
reg   [63:0] add28_reg_1932;
wire  signed [6:0] zext_ln390_cast_fu_1130_p3;
reg  signed [6:0] zext_ln390_cast_reg_1937;
wire  signed [7:0] zext_ln391_cast_fu_1148_p3;
reg  signed [7:0] zext_ln391_cast_reg_1943;
reg   [63:0] sub29_reg_1948;
reg   [63:0] sub30_reg_1953;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln367_fu_688_p1;
wire   [63:0] zext_ln390_fu_1138_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln391_fu_1155_p1;
wire   [63:0] zext_ln392_fu_1180_p1;
wire   [63:0] zext_ln393_1_fu_1209_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln395_fu_1222_p1;
wire   [63:0] zext_ln394_fu_1249_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln396_fu_1262_p1;
reg   [6:0] tid_fu_106;
wire   [6:0] add_ln365_fu_775_p2;
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
wire   [63:0] bitcast_ln390_fu_1144_p1;
reg    work_x_ce1_local;
reg   [8:0] work_x_address1_local;
reg    work_x_we0_local;
reg   [63:0] work_x_d0_local;
wire   [63:0] bitcast_ln391_fu_1161_p1;
reg    work_x_ce0_local;
reg   [8:0] work_x_address0_local;
wire   [63:0] bitcast_ln389_fu_1173_p1;
wire   [63:0] bitcast_ln392_fu_1186_p1;
wire   [63:0] bitcast_ln393_fu_1215_p1;
wire   [63:0] bitcast_ln395_fu_1228_p1;
wire   [63:0] bitcast_ln394_fu_1255_p1;
wire   [63:0] bitcast_ln396_fu_1268_p1;
reg    work_y_we1_local;
reg   [63:0] work_y_d1_local;
wire   [63:0] bitcast_ln399_fu_1165_p1;
reg    work_y_ce1_local;
reg   [8:0] work_y_address1_local;
reg    work_y_we0_local;
reg   [63:0] work_y_d0_local;
wire   [63:0] bitcast_ln400_fu_1169_p1;
reg    work_y_ce0_local;
reg   [8:0] work_y_address0_local;
wire   [63:0] bitcast_ln398_fu_1190_p1;
wire   [63:0] bitcast_ln401_fu_1194_p1;
wire   [63:0] bitcast_ln402_fu_1232_p1;
wire   [63:0] bitcast_ln404_fu_1236_p1;
wire   [63:0] bitcast_ln403_fu_1272_p1;
wire   [63:0] bitcast_ln405_fu_1276_p1;
reg   [63:0] grp_fu_568_p0;
reg   [63:0] grp_fu_568_p1;
reg   [63:0] grp_fu_572_p0;
reg   [63:0] grp_fu_572_p1;
reg   [63:0] grp_fu_576_p0;
reg   [63:0] grp_fu_576_p1;
reg   [63:0] grp_fu_580_p0;
reg   [63:0] grp_fu_580_p1;
reg   [63:0] grp_fu_584_p0;
reg   [63:0] grp_fu_584_p1;
reg   [63:0] grp_fu_588_p0;
reg   [63:0] grp_fu_588_p1;
reg   [63:0] grp_fu_592_p0;
reg   [63:0] grp_fu_592_p1;
reg   [63:0] grp_fu_596_p0;
reg   [63:0] grp_fu_596_p1;
reg   [63:0] grp_fu_600_p0;
reg   [63:0] grp_fu_600_p1;
reg   [63:0] grp_fu_604_p0;
reg   [63:0] grp_fu_604_p1;
reg   [63:0] grp_fu_608_p0;
reg   [63:0] grp_fu_608_p1;
reg   [63:0] grp_fu_612_p0;
reg   [63:0] grp_fu_612_p1;
reg   [63:0] grp_fu_616_p0;
reg   [63:0] grp_fu_616_p1;
reg   [63:0] grp_fu_620_p0;
reg   [63:0] grp_fu_620_p1;
reg   [63:0] grp_fu_624_p0;
reg   [63:0] grp_fu_624_p1;
reg   [63:0] grp_fu_628_p0;
reg   [63:0] grp_fu_628_p1;
reg   [63:0] grp_fu_633_p0;
reg   [63:0] grp_fu_633_p1;
reg   [63:0] grp_fu_640_p0;
reg   [63:0] grp_fu_640_p1;
reg   [63:0] grp_fu_645_p0;
reg   [63:0] grp_fu_645_p1;
wire   [4:0] lshr_ln6_fu_678_p4;
wire   [0:0] trunc_ln365_fu_708_p1;
wire   [63:0] bitcast_ln386_fu_785_p1;
wire   [0:0] bit_sel_fu_788_p3;
wire   [0:0] xor_ln386_10_fu_796_p2;
wire   [62:0] trunc_ln386_fu_802_p1;
wire   [63:0] xor_ln3_fu_806_p3;
wire   [63:0] bitcast_ln386_2_fu_819_p1;
wire   [0:0] bit_sel20_fu_822_p3;
wire   [0:0] xor_ln386_fu_830_p2;
wire   [62:0] trunc_ln386_1_fu_836_p1;
wire   [63:0] xor_ln386_1_fu_840_p3;
wire   [63:0] bitcast_ln386_8_fu_853_p1;
wire   [0:0] bit_sel23_fu_856_p3;
wire   [0:0] xor_ln386_13_fu_864_p2;
wire   [62:0] trunc_ln386_4_fu_870_p1;
wire   [63:0] xor_ln386_4_fu_874_p3;
wire   [63:0] bitcast_ln386_10_fu_888_p1;
wire   [0:0] bit_sel24_fu_891_p3;
wire   [0:0] xor_ln386_14_fu_899_p2;
wire   [62:0] trunc_ln386_5_fu_905_p1;
wire   [63:0] xor_ln386_5_fu_909_p3;
wire   [63:0] bitcast_ln386_4_fu_923_p1;
wire   [0:0] bit_sel21_fu_926_p3;
wire   [0:0] xor_ln386_11_fu_934_p2;
wire   [62:0] trunc_ln386_2_fu_940_p1;
wire   [63:0] xor_ln386_2_fu_944_p3;
wire   [63:0] bitcast_ln386_6_fu_957_p1;
wire   [0:0] bit_sel22_fu_960_p3;
wire   [0:0] xor_ln386_12_fu_968_p2;
wire   [62:0] trunc_ln386_3_fu_974_p1;
wire   [63:0] xor_ln386_3_fu_978_p3;
wire   [63:0] bitcast_ln386_12_fu_991_p1;
wire   [0:0] bit_sel25_fu_994_p3;
wire   [0:0] xor_ln386_15_fu_1002_p2;
wire   [62:0] trunc_ln386_6_fu_1008_p1;
wire   [63:0] xor_ln386_6_fu_1012_p3;
wire   [63:0] bitcast_ln386_14_fu_1025_p1;
wire   [0:0] bit_sel26_fu_1028_p3;
wire   [0:0] xor_ln386_16_fu_1036_p2;
wire   [62:0] trunc_ln386_7_fu_1042_p1;
wire   [63:0] xor_ln386_7_fu_1046_p3;
wire   [63:0] bitcast_ln386_16_fu_1059_p1;
wire   [0:0] bit_sel27_fu_1062_p3;
wire   [0:0] xor_ln386_17_fu_1070_p2;
wire   [62:0] trunc_ln386_8_fu_1076_p1;
wire   [63:0] xor_ln386_8_fu_1080_p3;
wire   [63:0] bitcast_ln386_18_fu_1093_p1;
wire   [0:0] bit_sel28_fu_1096_p3;
wire   [0:0] xor_ln386_18_fu_1104_p2;
wire   [62:0] trunc_ln386_9_fu_1110_p1;
wire   [63:0] xor_ln386_9_fu_1114_p3;
wire   [5:0] trunc_ln390_fu_1127_p1;
wire  signed [7:0] sext_ln392_fu_1177_p1;
wire   [7:0] zext_ln393_fu_1198_p1;
wire   [8:0] zext_ln393_cast_fu_1201_p3;
wire  signed [8:0] sext_ln395_fu_1219_p1;
wire   [8:0] zext_ln365_1_fu_1240_p1;
wire   [8:0] add_ln394_fu_1243_p2;
wire  signed [8:0] sext_ln396_fu_1259_p1;
reg   [1:0] grp_fu_568_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage0_00001;
reg   [1:0] grp_fu_572_opcode;
reg   [1:0] grp_fu_576_opcode;
reg   [1:0] grp_fu_580_opcode;
reg   [1:0] grp_fu_584_opcode;
reg   [1:0] grp_fu_588_opcode;
reg   [1:0] grp_fu_592_opcode;
reg   [1:0] grp_fu_596_opcode;
reg   [1:0] grp_fu_600_opcode;
reg   [1:0] grp_fu_604_opcode;
reg   [1:0] grp_fu_608_opcode;
reg   [1:0] grp_fu_612_opcode;
reg   [1:0] grp_fu_616_opcode;
reg   [1:0] grp_fu_620_opcode;
reg   [1:0] grp_fu_624_opcode;
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
#0 tid_fu_106 = 7'd0;
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
        tid_fu_106 <= 7'd0;
    end else if (((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_106 <= add_ln365_fu_775_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_4_load_reg_1450 <= DATA_y_4_q0;
        DATA_y_5_load_reg_1456 <= DATA_y_5_q0;
        DATA_y_6_load_reg_1462 <= DATA_y_6_q0;
        DATA_y_7_load_reg_1467 <= DATA_y_7_q0;
        c0_x_29_reg_1479 <= c0_x_29_fu_719_p3;
        c0_x_30_reg_1485 <= c0_x_30_fu_727_p3;
        c0_x_31_reg_1490 <= c0_x_31_fu_735_p3;
        c0_x_reg_1473 <= c0_x_fu_711_p3;
        c0_y_29_reg_1433 <= DATA_y_1_q0;
        c0_y_30_reg_1439 <= DATA_y_2_q0;
        c0_y_31_reg_1444 <= DATA_y_3_q0;
        c0_y_reg_1427 <= DATA_y_q0;
        select_ln380_reg_1496 <= select_ln380_fu_743_p3;
        select_ln381_reg_1502 <= select_ln381_fu_751_p3;
        select_ln382_reg_1508 <= select_ln382_fu_759_p3;
        select_ln383_reg_1513 <= select_ln383_fu_767_p3;
        sub12_reg_1549_pp0_iter3_reg <= sub12_reg_1549;
        sub12_reg_1549_pp0_iter4_reg <= sub12_reg_1549_pp0_iter3_reg;
        tmp_1_1_reg_1543_pp0_iter3_reg <= tmp_1_1_reg_1543;
        tmp_1_1_reg_1543_pp0_iter4_reg <= tmp_1_1_reg_1543_pp0_iter3_reg;
        tmp_8_reg_1665_pp0_iter5_reg <= tmp_8_reg_1665;
        tmp_8_reg_1665_pp0_iter6_reg <= tmp_8_reg_1665_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add11_reg_1607 <= grp_fu_596_p_dout0;
        add_reg_1601 <= grp_fu_592_p_dout0;
        c0_x_19_reg_1589 <= grp_fu_584_p_dout0;
        c0_x_32_reg_1577 <= grp_fu_576_p_dout0;
        c0_y_19_reg_1595 <= grp_fu_588_p_dout0;
        c0_y_32_reg_1583 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add12_reg_1555 <= grp_fu_600_p_dout0;
        add13_reg_1561 <= grp_fu_604_p_dout0;
        c0_x_20_reg_1519 <= grp_fu_576_p_dout0;
        c0_y_20_reg_1525 <= grp_fu_580_p_dout0;
        sub12_reg_1549 <= grp_fu_596_p_dout0;
        sub13_reg_1572 <= grp_fu_612_p_dout0;
        sub_reg_1537 <= grp_fu_588_p_dout0;
        tmp_1_1_reg_1543 <= grp_fu_592_p_dout0;
        tmp_1_2_reg_1567 <= grp_fu_608_p_dout0;
        tmp_1_reg_1531 <= grp_fu_584_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add14_reg_1640 <= grp_fu_620_p_dout0;
        add16_reg_1660 <= grp_fu_628_p_dout0;
        mul6_reg_1650 <= grp_fu_640_p_dout0;
        mul_reg_1645 <= grp_fu_636_p_dout0;
        sub14_reg_1635 <= grp_fu_616_p_dout0;
        sub16_reg_1655 <= grp_fu_624_p_dout0;
        tmp_8_reg_1665 <= grp_fu_632_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add15_reg_1763 <= grp_fu_616_p_dout0;
        sub15_reg_1757 <= grp_fu_612_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add17_reg_1711 <= grp_fu_584_p_dout0;
        add18_reg_1717 <= grp_fu_588_p_dout0;
        c0_x_22_reg_1699 <= grp_fu_576_p_dout0;
        c0_y_22_reg_1705 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_1789 <= grp_fu_576_p_dout0;
        add20_reg_1794 <= grp_fu_580_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add19_reg_1789_pp0_iter10_reg <= add19_reg_1789_pp0_iter9_reg;
        add19_reg_1789_pp0_iter11_reg <= add19_reg_1789_pp0_iter10_reg;
        add19_reg_1789_pp0_iter12_reg <= add19_reg_1789_pp0_iter11_reg;
        add19_reg_1789_pp0_iter13_reg <= add19_reg_1789_pp0_iter12_reg;
        add19_reg_1789_pp0_iter8_reg <= add19_reg_1789;
        add19_reg_1789_pp0_iter9_reg <= add19_reg_1789_pp0_iter8_reg;
        add20_reg_1794_pp0_iter10_reg <= add20_reg_1794_pp0_iter9_reg;
        add20_reg_1794_pp0_iter11_reg <= add20_reg_1794_pp0_iter10_reg;
        add20_reg_1794_pp0_iter12_reg <= add20_reg_1794_pp0_iter11_reg;
        add20_reg_1794_pp0_iter13_reg <= add20_reg_1794_pp0_iter12_reg;
        add20_reg_1794_pp0_iter8_reg <= add20_reg_1794;
        add20_reg_1794_pp0_iter9_reg <= add20_reg_1794_pp0_iter8_reg;
        add22_reg_1890_pp0_iter12_reg <= add22_reg_1890;
        add22_reg_1890_pp0_iter13_reg <= add22_reg_1890_pp0_iter12_reg;
        add23_reg_1799_pp0_iter9_reg <= add23_reg_1799;
        add24_reg_1804_pp0_iter9_reg <= add24_reg_1804;
        icmp_ln365_reg_1297 <= icmp_ln365_fu_660_p2;
        icmp_ln365_reg_1297_pp0_iter10_reg <= icmp_ln365_reg_1297_pp0_iter9_reg;
        icmp_ln365_reg_1297_pp0_iter11_reg <= icmp_ln365_reg_1297_pp0_iter10_reg;
        icmp_ln365_reg_1297_pp0_iter12_reg <= icmp_ln365_reg_1297_pp0_iter11_reg;
        icmp_ln365_reg_1297_pp0_iter13_reg <= icmp_ln365_reg_1297_pp0_iter12_reg;
        icmp_ln365_reg_1297_pp0_iter1_reg <= icmp_ln365_reg_1297;
        icmp_ln365_reg_1297_pp0_iter2_reg <= icmp_ln365_reg_1297_pp0_iter1_reg;
        icmp_ln365_reg_1297_pp0_iter3_reg <= icmp_ln365_reg_1297_pp0_iter2_reg;
        icmp_ln365_reg_1297_pp0_iter4_reg <= icmp_ln365_reg_1297_pp0_iter3_reg;
        icmp_ln365_reg_1297_pp0_iter5_reg <= icmp_ln365_reg_1297_pp0_iter4_reg;
        icmp_ln365_reg_1297_pp0_iter6_reg <= icmp_ln365_reg_1297_pp0_iter5_reg;
        icmp_ln365_reg_1297_pp0_iter7_reg <= icmp_ln365_reg_1297_pp0_iter6_reg;
        icmp_ln365_reg_1297_pp0_iter8_reg <= icmp_ln365_reg_1297_pp0_iter7_reg;
        icmp_ln365_reg_1297_pp0_iter9_reg <= icmp_ln365_reg_1297_pp0_iter8_reg;
        sub22_reg_1895_pp0_iter12_reg <= sub22_reg_1895;
        sub22_reg_1895_pp0_iter13_reg <= sub22_reg_1895_pp0_iter12_reg;
        sub22_reg_1895_pp0_iter14_reg <= sub22_reg_1895_pp0_iter13_reg;
        sub23_reg_1900_pp0_iter12_reg <= sub23_reg_1900;
        sub23_reg_1900_pp0_iter13_reg <= sub23_reg_1900_pp0_iter12_reg;
        sub23_reg_1900_pp0_iter14_reg <= sub23_reg_1900_pp0_iter13_reg;
        sub24_reg_1815_pp0_iter9_reg <= sub24_reg_1815;
        sub27_reg_1905_pp0_iter12_reg <= sub27_reg_1905;
        sub27_reg_1905_pp0_iter13_reg <= sub27_reg_1905_pp0_iter12_reg;
        sub27_reg_1905_pp0_iter14_reg <= sub27_reg_1905_pp0_iter13_reg;
        sub28_reg_1910_pp0_iter12_reg <= sub28_reg_1910;
        sub28_reg_1910_pp0_iter13_reg <= sub28_reg_1910_pp0_iter12_reg;
        sub28_reg_1910_pp0_iter14_reg <= sub28_reg_1910_pp0_iter13_reg;
        tid_5_reg_1287 <= ap_sig_allocacmp_tid_5;
        tid_5_reg_1287_pp0_iter10_reg <= tid_5_reg_1287_pp0_iter9_reg;
        tid_5_reg_1287_pp0_iter11_reg <= tid_5_reg_1287_pp0_iter10_reg;
        tid_5_reg_1287_pp0_iter12_reg <= tid_5_reg_1287_pp0_iter11_reg;
        tid_5_reg_1287_pp0_iter13_reg <= tid_5_reg_1287_pp0_iter12_reg;
        tid_5_reg_1287_pp0_iter14_reg <= tid_5_reg_1287_pp0_iter13_reg;
        tid_5_reg_1287_pp0_iter1_reg <= tid_5_reg_1287;
        tid_5_reg_1287_pp0_iter2_reg <= tid_5_reg_1287_pp0_iter1_reg;
        tid_5_reg_1287_pp0_iter3_reg <= tid_5_reg_1287_pp0_iter2_reg;
        tid_5_reg_1287_pp0_iter4_reg <= tid_5_reg_1287_pp0_iter3_reg;
        tid_5_reg_1287_pp0_iter5_reg <= tid_5_reg_1287_pp0_iter4_reg;
        tid_5_reg_1287_pp0_iter6_reg <= tid_5_reg_1287_pp0_iter5_reg;
        tid_5_reg_1287_pp0_iter7_reg <= tid_5_reg_1287_pp0_iter6_reg;
        tid_5_reg_1287_pp0_iter8_reg <= tid_5_reg_1287_pp0_iter7_reg;
        tid_5_reg_1287_pp0_iter9_reg <= tid_5_reg_1287_pp0_iter8_reg;
        tmp_9_reg_1809_pp0_iter9_reg <= tmp_9_reg_1809;
        zext_ln365_reg_1301[6 : 0] <= zext_ln365_fu_666_p1[6 : 0];
        zext_ln365_reg_1301_pp0_iter10_reg[6 : 0] <= zext_ln365_reg_1301_pp0_iter9_reg[6 : 0];
        zext_ln365_reg_1301_pp0_iter11_reg[6 : 0] <= zext_ln365_reg_1301_pp0_iter10_reg[6 : 0];
        zext_ln365_reg_1301_pp0_iter12_reg[6 : 0] <= zext_ln365_reg_1301_pp0_iter11_reg[6 : 0];
        zext_ln365_reg_1301_pp0_iter13_reg[6 : 0] <= zext_ln365_reg_1301_pp0_iter12_reg[6 : 0];
        zext_ln365_reg_1301_pp0_iter1_reg[6 : 0] <= zext_ln365_reg_1301[6 : 0];
        zext_ln365_reg_1301_pp0_iter2_reg[6 : 0] <= zext_ln365_reg_1301_pp0_iter1_reg[6 : 0];
        zext_ln365_reg_1301_pp0_iter3_reg[6 : 0] <= zext_ln365_reg_1301_pp0_iter2_reg[6 : 0];
        zext_ln365_reg_1301_pp0_iter4_reg[6 : 0] <= zext_ln365_reg_1301_pp0_iter3_reg[6 : 0];
        zext_ln365_reg_1301_pp0_iter5_reg[6 : 0] <= zext_ln365_reg_1301_pp0_iter4_reg[6 : 0];
        zext_ln365_reg_1301_pp0_iter6_reg[6 : 0] <= zext_ln365_reg_1301_pp0_iter5_reg[6 : 0];
        zext_ln365_reg_1301_pp0_iter7_reg[6 : 0] <= zext_ln365_reg_1301_pp0_iter6_reg[6 : 0];
        zext_ln365_reg_1301_pp0_iter8_reg[6 : 0] <= zext_ln365_reg_1301_pp0_iter7_reg[6 : 0];
        zext_ln365_reg_1301_pp0_iter9_reg[6 : 0] <= zext_ln365_reg_1301_pp0_iter8_reg[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add21_reg_1875 <= grp_fu_608_p_dout0;
        add25_reg_1880 <= grp_fu_612_p_dout0;
        add26_reg_1885 <= grp_fu_616_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add21_reg_1875_pp0_iter11_reg <= add21_reg_1875;
        add21_reg_1875_pp0_iter12_reg <= add21_reg_1875_pp0_iter11_reg;
        add25_reg_1880_pp0_iter11_reg <= add25_reg_1880;
        add25_reg_1880_pp0_iter12_reg <= add25_reg_1880_pp0_iter11_reg;
        add26_reg_1885_pp0_iter11_reg <= add26_reg_1885;
        add26_reg_1885_pp0_iter12_reg <= add26_reg_1885_pp0_iter11_reg;
        c0_x_22_reg_1699_pp0_iter5_reg <= c0_x_22_reg_1699;
        c0_x_22_reg_1699_pp0_iter6_reg <= c0_x_22_reg_1699_pp0_iter5_reg;
        c0_x_22_reg_1699_pp0_iter7_reg <= c0_x_22_reg_1699_pp0_iter6_reg;
        c0_x_22_reg_1699_pp0_iter8_reg <= c0_x_22_reg_1699_pp0_iter7_reg;
        c0_y_22_reg_1705_pp0_iter5_reg <= c0_y_22_reg_1705;
        c0_y_22_reg_1705_pp0_iter6_reg <= c0_y_22_reg_1705_pp0_iter5_reg;
        c0_y_22_reg_1705_pp0_iter7_reg <= c0_y_22_reg_1705_pp0_iter6_reg;
        c0_y_22_reg_1705_pp0_iter8_reg <= c0_y_22_reg_1705_pp0_iter7_reg;
        sub20_reg_1769_pp0_iter10_reg <= sub20_reg_1769_pp0_iter9_reg;
        sub20_reg_1769_pp0_iter11_reg <= sub20_reg_1769_pp0_iter10_reg;
        sub20_reg_1769_pp0_iter12_reg <= sub20_reg_1769_pp0_iter11_reg;
        sub20_reg_1769_pp0_iter13_reg <= sub20_reg_1769_pp0_iter12_reg;
        sub20_reg_1769_pp0_iter7_reg <= sub20_reg_1769;
        sub20_reg_1769_pp0_iter8_reg <= sub20_reg_1769_pp0_iter7_reg;
        sub20_reg_1769_pp0_iter9_reg <= sub20_reg_1769_pp0_iter8_reg;
        sub21_reg_1774_pp0_iter10_reg <= sub21_reg_1774_pp0_iter9_reg;
        sub21_reg_1774_pp0_iter11_reg <= sub21_reg_1774_pp0_iter10_reg;
        sub21_reg_1774_pp0_iter12_reg <= sub21_reg_1774_pp0_iter11_reg;
        sub21_reg_1774_pp0_iter13_reg <= sub21_reg_1774_pp0_iter12_reg;
        sub21_reg_1774_pp0_iter7_reg <= sub21_reg_1774;
        sub21_reg_1774_pp0_iter8_reg <= sub21_reg_1774_pp0_iter7_reg;
        sub21_reg_1774_pp0_iter9_reg <= sub21_reg_1774_pp0_iter8_reg;
        zext_ln390_cast_reg_1937[5 : 0] <= zext_ln390_cast_fu_1130_p3[5 : 0];
        zext_ln391_cast_reg_1943[6 : 0] <= zext_ln391_cast_fu_1148_p3[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add22_reg_1890 <= grp_fu_600_p_dout0;
        sub22_reg_1895 <= grp_fu_604_p_dout0;
        sub23_reg_1900 <= grp_fu_608_p_dout0;
        sub27_reg_1905 <= grp_fu_612_p_dout0;
        sub28_reg_1910 <= grp_fu_616_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add23_reg_1799 <= grp_fu_584_p_dout0;
        add24_reg_1804 <= grp_fu_588_p_dout0;
        sub24_reg_1815 <= grp_fu_596_p_dout0;
        tmp_9_reg_1809 <= grp_fu_592_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add27_reg_1927 <= grp_fu_628_p_dout0;
        add28_reg_1932 <= grp_fu_632_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_19_reg_1589_pp0_iter3_reg <= c0_x_19_reg_1589;
        c0_x_19_reg_1589_pp0_iter4_reg <= c0_x_19_reg_1589_pp0_iter3_reg;
        c0_x_19_reg_1589_pp0_iter5_reg <= c0_x_19_reg_1589_pp0_iter4_reg;
        c0_x_19_reg_1589_pp0_iter6_reg <= c0_x_19_reg_1589_pp0_iter5_reg;
        c0_x_23_reg_1831_pp0_iter10_reg <= c0_x_23_reg_1831_pp0_iter9_reg;
        c0_x_23_reg_1831_pp0_iter11_reg <= c0_x_23_reg_1831_pp0_iter10_reg;
        c0_x_23_reg_1831_pp0_iter9_reg <= c0_x_23_reg_1831;
        c0_y_19_reg_1595_pp0_iter3_reg <= c0_y_19_reg_1595;
        c0_y_19_reg_1595_pp0_iter4_reg <= c0_y_19_reg_1595_pp0_iter3_reg;
        c0_y_19_reg_1595_pp0_iter5_reg <= c0_y_19_reg_1595_pp0_iter4_reg;
        c0_y_19_reg_1595_pp0_iter6_reg <= c0_y_19_reg_1595_pp0_iter5_reg;
        c0_y_23_reg_1837_pp0_iter10_reg <= c0_y_23_reg_1837_pp0_iter9_reg;
        c0_y_23_reg_1837_pp0_iter11_reg <= c0_y_23_reg_1837_pp0_iter10_reg;
        c0_y_23_reg_1837_pp0_iter9_reg <= c0_y_23_reg_1837;
        sub17_reg_1683_pp0_iter5_reg <= sub17_reg_1683;
        sub17_reg_1683_pp0_iter6_reg <= sub17_reg_1683_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c0_x_21_reg_1723 <= grp_fu_636_p_dout0;
        c0_y_21_reg_1729 <= grp_fu_640_p_dout0;
        mul7_reg_1735 <= grp_fu_644_p_dout0;
        mul8_reg_1741 <= grp_fu_673_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_23_reg_1831 <= grp_fu_628_p_dout0;
        c0_x_34_reg_1821 <= grp_fu_620_p_dout0;
        c0_y_23_reg_1837 <= grp_fu_632_p_dout0;
        c0_y_34_reg_1826 <= grp_fu_624_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c0_x_33_reg_1671 <= grp_fu_600_p_dout0;
        c0_y_33_reg_1677 <= grp_fu_604_p_dout0;
        sub17_reg_1683 <= grp_fu_608_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul10_reg_1752 <= grp_fu_673_p_dout0;
        mul9_reg_1747 <= grp_fu_644_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul11_reg_1855 <= grp_fu_636_p_dout0;
        mul12_reg_1860 <= grp_fu_640_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub18_reg_1843 <= grp_fu_600_p_dout0;
        sub19_reg_1849 <= grp_fu_604_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub20_reg_1769 <= grp_fu_592_p_dout0;
        sub21_reg_1774 <= grp_fu_596_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter11 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        sub25_reg_1915 <= grp_fu_620_p_dout0;
        sub26_reg_1921 <= grp_fu_624_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sub29_reg_1948 <= grp_fu_620_p_dout0;
        sub30_reg_1953 <= grp_fu_624_p_dout0;
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
    if (((icmp_ln365_reg_1297 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter13 == 1'b1) & (icmp_ln365_reg_1297_pp0_iter13_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        ap_sig_allocacmp_tid_5 = tid_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_568_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_568_opcode = 2'd0;
    end else begin
        grp_fu_568_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_568_p0 = c0_x_33_reg_1671;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_568_p0 = c0_x_32_reg_1577;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_568_p0 = c0_x_reg_1473;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_568_p0 = c0_x_29_reg_1479;
    end else begin
        grp_fu_568_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_568_p1 = add17_reg_1711;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_568_p1 = add_reg_1601;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_568_p1 = select_ln380_reg_1496;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_568_p1 = select_ln381_reg_1502;
    end else begin
        grp_fu_568_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_572_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_572_opcode = 2'd0;
    end else begin
        grp_fu_572_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_572_p0 = c0_y_33_reg_1677;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_572_p0 = c0_y_32_reg_1583;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_572_p0 = c0_y_reg_1427;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_572_p0 = c0_y_29_reg_1433;
    end else begin
        grp_fu_572_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_572_p1 = add18_reg_1717;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_572_p1 = add11_reg_1607;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_572_p1 = DATA_y_4_load_reg_1450;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_572_p1 = DATA_y_5_load_reg_1456;
    end else begin
        grp_fu_572_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_576_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_576_opcode = 2'd0;
    end else begin
        grp_fu_576_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_576_p0 = c0_x_21_reg_1723;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_576_p0 = c0_x_20_reg_1519;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_576_p0 = c0_x_reg_1473;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_576_p0 = c0_x_29_reg_1479;
    end else begin
        grp_fu_576_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_576_p1 = mul7_reg_1735;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_576_p1 = add12_reg_1555;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_576_p1 = select_ln380_reg_1496;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_576_p1 = select_ln381_reg_1502;
    end else begin
        grp_fu_576_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_580_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_580_opcode = 2'd0;
    end else begin
        grp_fu_580_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_580_p0 = c0_y_21_reg_1729;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_580_p0 = c0_y_20_reg_1525;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_580_p0 = c0_y_reg_1427;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_580_p0 = c0_y_29_reg_1433;
    end else begin
        grp_fu_580_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_580_p1 = mul8_reg_1741;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_580_p1 = add13_reg_1561;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_580_p1 = DATA_y_4_load_reg_1450;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_580_p1 = DATA_y_5_load_reg_1456;
    end else begin
        grp_fu_580_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_584_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_584_opcode = 2'd0;
    end else begin
        grp_fu_584_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_584_p0 = c0_x_21_reg_1723;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_584_p0 = c0_x_33_reg_1671;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_584_p0 = c0_x_30_reg_1485;
    end else begin
        grp_fu_584_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_584_p1 = mul7_reg_1735;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_584_p1 = add17_reg_1711;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_584_p1 = select_ln382_reg_1508;
    end else begin
        grp_fu_584_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_588_opcode = 2'd1;
    end else if (((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_588_opcode = 2'd0;
    end else begin
        grp_fu_588_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_588_p0 = c0_y_21_reg_1729;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_588_p0 = c0_y_33_reg_1677;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_588_p0 = c0_y_30_reg_1439;
    end else begin
        grp_fu_588_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_588_p1 = mul8_reg_1741;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_588_p1 = add18_reg_1717;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_588_p1 = DATA_y_6_load_reg_1462;
    end else begin
        grp_fu_588_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_592_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_592_opcode = 2'd0;
    end else begin
        grp_fu_592_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_592_p0 = c0_y_22_reg_1705_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_592_p0 = mul9_reg_1747;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_592_p0 = c0_x_32_reg_1577;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_592_p0 = c0_x_31_reg_1490;
    end else begin
        grp_fu_592_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_592_p1 = sub19_reg_1849;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_592_p1 = bitcast_ln386_13_fu_1020_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_592_p1 = add_reg_1601;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_592_p1 = select_ln383_reg_1513;
    end else begin
        grp_fu_592_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_596_opcode = 2'd1;
    end else if ((((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_596_opcode = 2'd0;
    end else begin
        grp_fu_596_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_596_p0 = c0_x_22_reg_1699_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_596_p0 = bitcast_ln386_15_fu_1054_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_596_p0 = c0_y_32_reg_1583;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_596_p0 = c0_y_31_reg_1444;
    end else begin
        grp_fu_596_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_596_p1 = sub18_reg_1843;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_596_p1 = mul10_reg_1752;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_596_p1 = add11_reg_1607;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_596_p1 = DATA_y_7_load_reg_1467;
    end else begin
        grp_fu_596_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_600_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_600_opcode = 2'd0;
    end else begin
        grp_fu_600_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_600_p0 = c0_y_22_reg_1705_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_600_p0 = c0_x_22_reg_1699_pp0_iter8_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_600_p0 = c0_y_20_reg_1525;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_600_p0 = c0_x_31_reg_1490;
    end else begin
        grp_fu_600_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_600_p1 = sub19_reg_1849;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_600_p1 = sub18_reg_1843;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_600_p1 = add13_reg_1561;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_600_p1 = select_ln383_reg_1513;
    end else begin
        grp_fu_600_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln365_reg_1297 == 1'd0) & (1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_604_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_604_opcode = 2'd0;
    end else begin
        grp_fu_604_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_604_p0 = c0_x_34_reg_1821;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_604_p0 = mul_reg_1645;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_604_p0 = c0_y_31_reg_1444;
    end else begin
        grp_fu_604_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_604_p1 = add23_reg_1799_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_604_p1 = add23_reg_1799;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_604_p1 = bitcast_ln386_5_fu_952_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_604_p1 = DATA_y_7_load_reg_1467;
    end else begin
        grp_fu_604_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_608_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_608_opcode = 2'd0;
    end else begin
        grp_fu_608_opcode = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_608_p0 = c0_y_34_reg_1826;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_608_p0 = bitcast_ln386_7_fu_986_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_608_p0 = tmp_1_reg_1531;
    end else begin
        grp_fu_608_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_608_p1 = add24_reg_1804_pp0_iter9_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter9 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_608_p1 = add24_reg_1804;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_608_p1 = mul6_reg_1650;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_608_p1 = bitcast_ln386_1_fu_814_p1;
    end else begin
        grp_fu_608_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_612_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_612_opcode = 2'd0;
    end else begin
        grp_fu_612_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_612_p0 = c0_x_23_reg_1831_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_612_p0 = mul11_reg_1855;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_612_p0 = c0_x_19_reg_1589_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_612_p0 = bitcast_ln386_3_fu_848_p1;
    end else begin
        grp_fu_612_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_612_p1 = sub25_reg_1915;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_612_p1 = bitcast_ln386_17_fu_1088_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_612_p1 = sub15_reg_1757;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_612_p1 = sub_reg_1537;
    end else begin
        grp_fu_612_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_616_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_616_opcode = 2'd0;
    end else begin
        grp_fu_616_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_616_p0 = c0_y_23_reg_1837_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_616_p0 = bitcast_ln386_19_fu_1122_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_616_p0 = c0_y_19_reg_1595_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_616_p0 = bitcast_ln386_9_fu_882_p1;
    end else begin
        grp_fu_616_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_616_p1 = sub26_reg_1921;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter10 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_616_p1 = mul12_reg_1860;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_616_p1 = add15_reg_1763;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_616_p1 = bitcast_ln386_11_fu_917_p1;
    end else begin
        grp_fu_616_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_620_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_620_opcode = 2'd0;
    end else begin
        grp_fu_620_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_620_p0 = c0_x_23_reg_1831_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_620_p0 = c0_x_19_reg_1589_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_620_p0 = bitcast_ln386_9_fu_882_p1;
    end else begin
        grp_fu_620_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_620_p1 = sub25_reg_1915;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_620_p1 = sub15_reg_1757;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_620_p1 = bitcast_ln386_11_fu_917_p1;
    end else begin
        grp_fu_620_p1 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_624_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage0_00001) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_624_opcode = 2'd0;
    end else begin
        grp_fu_624_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_624_p0 = c0_y_23_reg_1837_pp0_iter11_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_624_p0 = c0_y_19_reg_1595_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_624_p0 = c0_x_20_reg_1519;
    end else begin
        grp_fu_624_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter12 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_624_p1 = sub26_reg_1921;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_624_p1 = add15_reg_1763;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_624_p1 = add12_reg_1555;
    end else begin
        grp_fu_624_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_628_p0 = tmp_9_reg_1809;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_628_p0 = sub14_reg_1635;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_628_p0 = tmp_1_1_reg_1543;
    end else begin
        grp_fu_628_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_628_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_628_p1 = 64'd0;
    end else begin
        grp_fu_628_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_633_p0 = sub24_reg_1815;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_633_p0 = add14_reg_1640;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_633_p0 = sub12_reg_1549;
    end else begin
        grp_fu_633_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_633_p1 = 64'd4604544271217802189;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_633_p1 = 64'd0;
    end else begin
        grp_fu_633_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_640_p0 = tmp_8_reg_1665;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_640_p0 = sub16_reg_1655;
        end else begin
            grp_fu_640_p0 = 'bx;
        end
    end else begin
        grp_fu_640_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_640_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_640_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_640_p1 = 'bx;
        end
    end else begin
        grp_fu_640_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_645_p0 = sub17_reg_1683;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_645_p0 = add16_reg_1660;
        end else begin
            grp_fu_645_p0 = 'bx;
        end
    end else begin
        grp_fu_645_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter4 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_645_p1 = 64'd0;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_645_p1 = 64'd4604544271217802189;
        end else begin
            grp_fu_645_p1 = 'bx;
        end
    end else begin
        grp_fu_645_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address0_local = zext_ln396_fu_1262_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address0_local = zext_ln395_fu_1222_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address0_local = zext_ln392_fu_1180_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address0_local = zext_ln391_fu_1155_p1;
    end else begin
        work_x_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_address1_local = zext_ln394_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_address1_local = zext_ln393_1_fu_1209_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_address1_local = zext_ln365_reg_1301_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_address1_local = zext_ln390_fu_1138_p1;
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
        work_x_d0_local = bitcast_ln396_fu_1268_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d0_local = bitcast_ln395_fu_1228_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d0_local = bitcast_ln392_fu_1186_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d0_local = bitcast_ln391_fu_1161_p1;
    end else begin
        work_x_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_x_d1_local = bitcast_ln394_fu_1255_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_x_d1_local = bitcast_ln393_fu_1215_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_x_d1_local = bitcast_ln389_fu_1173_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_x_d1_local = bitcast_ln390_fu_1144_p1;
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
        work_y_address0_local = zext_ln396_fu_1262_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address0_local = zext_ln395_fu_1222_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address0_local = zext_ln392_fu_1180_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address0_local = zext_ln391_fu_1155_p1;
    end else begin
        work_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_address1_local = zext_ln394_fu_1249_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_address1_local = zext_ln393_1_fu_1209_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_address1_local = zext_ln365_reg_1301_pp0_iter13_reg;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_address1_local = zext_ln390_fu_1138_p1;
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
        work_y_d0_local = bitcast_ln405_fu_1276_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d0_local = bitcast_ln404_fu_1236_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d0_local = bitcast_ln401_fu_1194_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d0_local = bitcast_ln400_fu_1169_p1;
    end else begin
        work_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        work_y_d1_local = bitcast_ln403_fu_1272_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        work_y_d1_local = bitcast_ln402_fu_1232_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter14 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        work_y_d1_local = bitcast_ln398_fu_1190_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter13 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        work_y_d1_local = bitcast_ln399_fu_1165_p1;
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
assign DATA_x_10_address0 = zext_ln367_fu_688_p1;
assign DATA_x_10_ce0 = DATA_x_10_ce0_local;
assign DATA_x_11_address0 = zext_ln367_fu_688_p1;
assign DATA_x_11_ce0 = DATA_x_11_ce0_local;
assign DATA_x_12_address0 = zext_ln367_fu_688_p1;
assign DATA_x_12_ce0 = DATA_x_12_ce0_local;
assign DATA_x_13_address0 = zext_ln367_fu_688_p1;
assign DATA_x_13_ce0 = DATA_x_13_ce0_local;
assign DATA_x_14_address0 = zext_ln367_fu_688_p1;
assign DATA_x_14_ce0 = DATA_x_14_ce0_local;
assign DATA_x_15_address0 = zext_ln367_fu_688_p1;
assign DATA_x_15_ce0 = DATA_x_15_ce0_local;
assign DATA_x_1_address0 = zext_ln367_fu_688_p1;
assign DATA_x_1_ce0 = DATA_x_1_ce0_local;
assign DATA_x_2_address0 = zext_ln367_fu_688_p1;
assign DATA_x_2_ce0 = DATA_x_2_ce0_local;
assign DATA_x_3_address0 = zext_ln367_fu_688_p1;
assign DATA_x_3_ce0 = DATA_x_3_ce0_local;
assign DATA_x_4_address0 = zext_ln367_fu_688_p1;
assign DATA_x_4_ce0 = DATA_x_4_ce0_local;
assign DATA_x_5_address0 = zext_ln367_fu_688_p1;
assign DATA_x_5_ce0 = DATA_x_5_ce0_local;
assign DATA_x_6_address0 = zext_ln367_fu_688_p1;
assign DATA_x_6_ce0 = DATA_x_6_ce0_local;
assign DATA_x_7_address0 = zext_ln367_fu_688_p1;
assign DATA_x_7_ce0 = DATA_x_7_ce0_local;
assign DATA_x_8_address0 = zext_ln367_fu_688_p1;
assign DATA_x_8_ce0 = DATA_x_8_ce0_local;
assign DATA_x_9_address0 = zext_ln367_fu_688_p1;
assign DATA_x_9_ce0 = DATA_x_9_ce0_local;
assign DATA_x_address0 = zext_ln367_fu_688_p1;
assign DATA_x_ce0 = DATA_x_ce0_local;
assign DATA_y_1_address0 = zext_ln365_fu_666_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_2_address0 = zext_ln365_fu_666_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_3_address0 = zext_ln365_fu_666_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_4_address0 = zext_ln365_fu_666_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_5_address0 = zext_ln365_fu_666_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_6_address0 = zext_ln365_fu_666_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_7_address0 = zext_ln365_fu_666_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_address0 = zext_ln365_fu_666_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign add_ln365_fu_775_p2 = (tid_5_reg_1287 + 7'd1);
assign add_ln394_fu_1243_p2 = ($signed(zext_ln365_1_fu_1240_p1) + $signed(9'd320));
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
assign bit_sel20_fu_822_p3 = bitcast_ln386_2_fu_819_p1[64'd63];
assign bit_sel21_fu_926_p3 = bitcast_ln386_4_fu_923_p1[64'd63];
assign bit_sel22_fu_960_p3 = bitcast_ln386_6_fu_957_p1[64'd63];
assign bit_sel23_fu_856_p3 = bitcast_ln386_8_fu_853_p1[64'd63];
assign bit_sel24_fu_891_p3 = bitcast_ln386_10_fu_888_p1[64'd63];
assign bit_sel25_fu_994_p3 = bitcast_ln386_12_fu_991_p1[64'd63];
assign bit_sel26_fu_1028_p3 = bitcast_ln386_14_fu_1025_p1[64'd63];
assign bit_sel27_fu_1062_p3 = bitcast_ln386_16_fu_1059_p1[64'd63];
assign bit_sel28_fu_1096_p3 = bitcast_ln386_18_fu_1093_p1[64'd63];
assign bit_sel_fu_788_p3 = bitcast_ln386_fu_785_p1[64'd63];
assign bitcast_ln386_10_fu_888_p1 = sub13_reg_1572;
assign bitcast_ln386_11_fu_917_p1 = xor_ln386_5_fu_909_p3;
assign bitcast_ln386_12_fu_991_p1 = sub17_reg_1683_pp0_iter6_reg;
assign bitcast_ln386_13_fu_1020_p1 = xor_ln386_6_fu_1012_p3;
assign bitcast_ln386_14_fu_1025_p1 = tmp_8_reg_1665_pp0_iter6_reg;
assign bitcast_ln386_15_fu_1054_p1 = xor_ln386_7_fu_1046_p3;
assign bitcast_ln386_16_fu_1059_p1 = sub24_reg_1815_pp0_iter9_reg;
assign bitcast_ln386_17_fu_1088_p1 = xor_ln386_8_fu_1080_p3;
assign bitcast_ln386_18_fu_1093_p1 = tmp_9_reg_1809_pp0_iter9_reg;
assign bitcast_ln386_19_fu_1122_p1 = xor_ln386_9_fu_1114_p3;
assign bitcast_ln386_1_fu_814_p1 = xor_ln3_fu_806_p3;
assign bitcast_ln386_2_fu_819_p1 = tmp_1_reg_1531;
assign bitcast_ln386_3_fu_848_p1 = xor_ln386_1_fu_840_p3;
assign bitcast_ln386_4_fu_923_p1 = sub12_reg_1549_pp0_iter4_reg;
assign bitcast_ln386_5_fu_952_p1 = xor_ln386_2_fu_944_p3;
assign bitcast_ln386_6_fu_957_p1 = tmp_1_1_reg_1543_pp0_iter4_reg;
assign bitcast_ln386_7_fu_986_p1 = xor_ln386_3_fu_978_p3;
assign bitcast_ln386_8_fu_853_p1 = tmp_1_2_reg_1567;
assign bitcast_ln386_9_fu_882_p1 = xor_ln386_4_fu_874_p3;
assign bitcast_ln386_fu_785_p1 = sub_reg_1537;
assign bitcast_ln389_fu_1173_p1 = add19_reg_1789_pp0_iter13_reg;
assign bitcast_ln390_fu_1144_p1 = add25_reg_1880_pp0_iter12_reg;
assign bitcast_ln391_fu_1161_p1 = add21_reg_1875_pp0_iter12_reg;
assign bitcast_ln392_fu_1186_p1 = add27_reg_1927;
assign bitcast_ln393_fu_1215_p1 = sub20_reg_1769_pp0_iter13_reg;
assign bitcast_ln394_fu_1255_p1 = sub27_reg_1905_pp0_iter14_reg;
assign bitcast_ln395_fu_1228_p1 = sub22_reg_1895_pp0_iter14_reg;
assign bitcast_ln396_fu_1268_p1 = sub29_reg_1948;
assign bitcast_ln398_fu_1190_p1 = add20_reg_1794_pp0_iter13_reg;
assign bitcast_ln399_fu_1165_p1 = add26_reg_1885_pp0_iter12_reg;
assign bitcast_ln400_fu_1169_p1 = add22_reg_1890_pp0_iter13_reg;
assign bitcast_ln401_fu_1194_p1 = add28_reg_1932;
assign bitcast_ln402_fu_1232_p1 = sub21_reg_1774_pp0_iter13_reg;
assign bitcast_ln403_fu_1272_p1 = sub28_reg_1910_pp0_iter14_reg;
assign bitcast_ln404_fu_1236_p1 = sub23_reg_1900_pp0_iter14_reg;
assign bitcast_ln405_fu_1276_p1 = sub30_reg_1953;
assign c0_x_29_fu_719_p3 = ((trunc_ln365_fu_708_p1[0:0] == 1'b1) ? DATA_x_9_q0 : DATA_x_1_q0);
assign c0_x_30_fu_727_p3 = ((trunc_ln365_fu_708_p1[0:0] == 1'b1) ? DATA_x_10_q0 : DATA_x_2_q0);
assign c0_x_31_fu_735_p3 = ((trunc_ln365_fu_708_p1[0:0] == 1'b1) ? DATA_x_11_q0 : DATA_x_3_q0);
assign c0_x_fu_711_p3 = ((trunc_ln365_fu_708_p1[0:0] == 1'b1) ? DATA_x_8_q0 : DATA_x_q0);
assign grp_fu_576_p_ce = 1'b1;
assign grp_fu_576_p_din0 = grp_fu_568_p0;
assign grp_fu_576_p_din1 = grp_fu_568_p1;
assign grp_fu_576_p_opcode = grp_fu_568_opcode;
assign grp_fu_580_p_ce = 1'b1;
assign grp_fu_580_p_din0 = grp_fu_572_p0;
assign grp_fu_580_p_din1 = grp_fu_572_p1;
assign grp_fu_580_p_opcode = grp_fu_572_opcode;
assign grp_fu_584_p_ce = 1'b1;
assign grp_fu_584_p_din0 = grp_fu_576_p0;
assign grp_fu_584_p_din1 = grp_fu_576_p1;
assign grp_fu_584_p_opcode = grp_fu_576_opcode;
assign grp_fu_588_p_ce = 1'b1;
assign grp_fu_588_p_din0 = grp_fu_580_p0;
assign grp_fu_588_p_din1 = grp_fu_580_p1;
assign grp_fu_588_p_opcode = grp_fu_580_opcode;
assign grp_fu_592_p_ce = 1'b1;
assign grp_fu_592_p_din0 = grp_fu_584_p0;
assign grp_fu_592_p_din1 = grp_fu_584_p1;
assign grp_fu_592_p_opcode = grp_fu_584_opcode;
assign grp_fu_596_p_ce = 1'b1;
assign grp_fu_596_p_din0 = grp_fu_588_p0;
assign grp_fu_596_p_din1 = grp_fu_588_p1;
assign grp_fu_596_p_opcode = grp_fu_588_opcode;
assign grp_fu_600_p_ce = 1'b1;
assign grp_fu_600_p_din0 = grp_fu_592_p0;
assign grp_fu_600_p_din1 = grp_fu_592_p1;
assign grp_fu_600_p_opcode = grp_fu_592_opcode;
assign grp_fu_604_p_ce = 1'b1;
assign grp_fu_604_p_din0 = grp_fu_596_p0;
assign grp_fu_604_p_din1 = grp_fu_596_p1;
assign grp_fu_604_p_opcode = grp_fu_596_opcode;
assign grp_fu_608_p_ce = 1'b1;
assign grp_fu_608_p_din0 = grp_fu_600_p0;
assign grp_fu_608_p_din1 = grp_fu_600_p1;
assign grp_fu_608_p_opcode = grp_fu_600_opcode;
assign grp_fu_612_p_ce = 1'b1;
assign grp_fu_612_p_din0 = grp_fu_604_p0;
assign grp_fu_612_p_din1 = grp_fu_604_p1;
assign grp_fu_612_p_opcode = grp_fu_604_opcode;
assign grp_fu_616_p_ce = 1'b1;
assign grp_fu_616_p_din0 = grp_fu_608_p0;
assign grp_fu_616_p_din1 = grp_fu_608_p1;
assign grp_fu_616_p_opcode = grp_fu_608_opcode;
assign grp_fu_620_p_ce = 1'b1;
assign grp_fu_620_p_din0 = grp_fu_612_p0;
assign grp_fu_620_p_din1 = grp_fu_612_p1;
assign grp_fu_620_p_opcode = grp_fu_612_opcode;
assign grp_fu_624_p_ce = 1'b1;
assign grp_fu_624_p_din0 = grp_fu_616_p0;
assign grp_fu_624_p_din1 = grp_fu_616_p1;
assign grp_fu_624_p_opcode = grp_fu_616_opcode;
assign grp_fu_628_p_ce = 1'b1;
assign grp_fu_628_p_din0 = grp_fu_620_p0;
assign grp_fu_628_p_din1 = grp_fu_620_p1;
assign grp_fu_628_p_opcode = grp_fu_620_opcode;
assign grp_fu_632_p_ce = 1'b1;
assign grp_fu_632_p_din0 = grp_fu_624_p0;
assign grp_fu_632_p_din1 = grp_fu_624_p1;
assign grp_fu_632_p_opcode = grp_fu_624_opcode;
assign grp_fu_636_p_ce = 1'b1;
assign grp_fu_636_p_din0 = grp_fu_628_p0;
assign grp_fu_636_p_din1 = grp_fu_628_p1;
assign grp_fu_640_p_ce = 1'b1;
assign grp_fu_640_p_din0 = grp_fu_633_p0;
assign grp_fu_640_p_din1 = grp_fu_633_p1;
assign grp_fu_644_p_ce = 1'b1;
assign grp_fu_644_p_din0 = grp_fu_640_p0;
assign grp_fu_644_p_din1 = grp_fu_640_p1;
assign grp_fu_673_p_ce = 1'b1;
assign grp_fu_673_p_din0 = grp_fu_645_p0;
assign grp_fu_673_p_din1 = grp_fu_645_p1;
assign icmp_ln365_fu_660_p2 = ((ap_sig_allocacmp_tid_5 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_678_p4 = {{ap_sig_allocacmp_tid_5[5:1]}};
assign select_ln380_fu_743_p3 = ((trunc_ln365_fu_708_p1[0:0] == 1'b1) ? DATA_x_12_q0 : DATA_x_4_q0);
assign select_ln381_fu_751_p3 = ((trunc_ln365_fu_708_p1[0:0] == 1'b1) ? DATA_x_13_q0 : DATA_x_5_q0);
assign select_ln382_fu_759_p3 = ((trunc_ln365_fu_708_p1[0:0] == 1'b1) ? DATA_x_14_q0 : DATA_x_6_q0);
assign select_ln383_fu_767_p3 = ((trunc_ln365_fu_708_p1[0:0] == 1'b1) ? DATA_x_15_q0 : DATA_x_7_q0);
assign sext_ln392_fu_1177_p1 = zext_ln390_cast_reg_1937;
assign sext_ln395_fu_1219_p1 = zext_ln391_cast_reg_1943;
assign sext_ln396_fu_1259_p1 = zext_ln390_cast_reg_1937;
assign trunc_ln365_fu_708_p1 = tid_5_reg_1287[0:0];
assign trunc_ln386_1_fu_836_p1 = bitcast_ln386_2_fu_819_p1[62:0];
assign trunc_ln386_2_fu_940_p1 = bitcast_ln386_4_fu_923_p1[62:0];
assign trunc_ln386_3_fu_974_p1 = bitcast_ln386_6_fu_957_p1[62:0];
assign trunc_ln386_4_fu_870_p1 = bitcast_ln386_8_fu_853_p1[62:0];
assign trunc_ln386_5_fu_905_p1 = bitcast_ln386_10_fu_888_p1[62:0];
assign trunc_ln386_6_fu_1008_p1 = bitcast_ln386_12_fu_991_p1[62:0];
assign trunc_ln386_7_fu_1042_p1 = bitcast_ln386_14_fu_1025_p1[62:0];
assign trunc_ln386_8_fu_1076_p1 = bitcast_ln386_16_fu_1059_p1[62:0];
assign trunc_ln386_9_fu_1110_p1 = bitcast_ln386_18_fu_1093_p1[62:0];
assign trunc_ln386_fu_802_p1 = bitcast_ln386_fu_785_p1[62:0];
assign trunc_ln390_fu_1127_p1 = tid_5_reg_1287_pp0_iter13_reg[5:0];
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
assign xor_ln386_10_fu_796_p2 = (bit_sel_fu_788_p3 ^ 1'd1);
assign xor_ln386_11_fu_934_p2 = (bit_sel21_fu_926_p3 ^ 1'd1);
assign xor_ln386_12_fu_968_p2 = (bit_sel22_fu_960_p3 ^ 1'd1);
assign xor_ln386_13_fu_864_p2 = (bit_sel23_fu_856_p3 ^ 1'd1);
assign xor_ln386_14_fu_899_p2 = (bit_sel24_fu_891_p3 ^ 1'd1);
assign xor_ln386_15_fu_1002_p2 = (bit_sel25_fu_994_p3 ^ 1'd1);
assign xor_ln386_16_fu_1036_p2 = (bit_sel26_fu_1028_p3 ^ 1'd1);
assign xor_ln386_17_fu_1070_p2 = (bit_sel27_fu_1062_p3 ^ 1'd1);
assign xor_ln386_18_fu_1104_p2 = (bit_sel28_fu_1096_p3 ^ 1'd1);
assign xor_ln386_1_fu_840_p3 = {{xor_ln386_fu_830_p2}, {trunc_ln386_1_fu_836_p1}};
assign xor_ln386_2_fu_944_p3 = {{xor_ln386_11_fu_934_p2}, {trunc_ln386_2_fu_940_p1}};
assign xor_ln386_3_fu_978_p3 = {{xor_ln386_12_fu_968_p2}, {trunc_ln386_3_fu_974_p1}};
assign xor_ln386_4_fu_874_p3 = {{xor_ln386_13_fu_864_p2}, {trunc_ln386_4_fu_870_p1}};
assign xor_ln386_5_fu_909_p3 = {{xor_ln386_14_fu_899_p2}, {trunc_ln386_5_fu_905_p1}};
assign xor_ln386_6_fu_1012_p3 = {{xor_ln386_15_fu_1002_p2}, {trunc_ln386_6_fu_1008_p1}};
assign xor_ln386_7_fu_1046_p3 = {{xor_ln386_16_fu_1036_p2}, {trunc_ln386_7_fu_1042_p1}};
assign xor_ln386_8_fu_1080_p3 = {{xor_ln386_17_fu_1070_p2}, {trunc_ln386_8_fu_1076_p1}};
assign xor_ln386_9_fu_1114_p3 = {{xor_ln386_18_fu_1104_p2}, {trunc_ln386_9_fu_1110_p1}};
assign xor_ln386_fu_830_p2 = (bit_sel20_fu_822_p3 ^ 1'd1);
assign xor_ln3_fu_806_p3 = {{xor_ln386_10_fu_796_p2}, {trunc_ln386_fu_802_p1}};
assign zext_ln365_1_fu_1240_p1 = tid_5_reg_1287_pp0_iter14_reg;
assign zext_ln365_fu_666_p1 = ap_sig_allocacmp_tid_5;
assign zext_ln367_fu_688_p1 = lshr_ln6_fu_678_p4;
assign zext_ln390_cast_fu_1130_p3 = {{1'd1}, {trunc_ln390_fu_1127_p1}};
assign zext_ln390_fu_1138_p1 = $unsigned(zext_ln390_cast_fu_1130_p3);
assign zext_ln391_cast_fu_1148_p3 = {{1'd1}, {tid_5_reg_1287_pp0_iter13_reg}};
assign zext_ln391_fu_1155_p1 = $unsigned(zext_ln391_cast_fu_1148_p3);
assign zext_ln392_fu_1180_p1 = $unsigned(sext_ln392_fu_1177_p1);
assign zext_ln393_1_fu_1209_p1 = zext_ln393_cast_fu_1201_p3;
assign zext_ln393_cast_fu_1201_p3 = {{1'd1}, {zext_ln393_fu_1198_p1}};
assign zext_ln393_fu_1198_p1 = tid_5_reg_1287_pp0_iter14_reg;
assign zext_ln394_fu_1249_p1 = add_ln394_fu_1243_p2;
assign zext_ln395_fu_1222_p1 = $unsigned(sext_ln395_fu_1219_p1);
assign zext_ln396_fu_1262_p1 = $unsigned(sext_ln396_fu_1259_p1);
always @ (posedge ap_clk) begin
    zext_ln365_reg_1301[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter1_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter2_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter3_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter4_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter5_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter6_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter7_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter8_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter9_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter10_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter11_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter12_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln365_reg_1301_pp0_iter13_reg[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln390_cast_reg_1937[6] <= 1'b1;
    zext_ln391_cast_reg_1943[7] <= 1'b1;
end
endmodule 