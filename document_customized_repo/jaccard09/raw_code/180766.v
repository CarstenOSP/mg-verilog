module kernel_2mm_kernel_2mm_node1_Pipeline_label_5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,mul_ln175,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,mul_ln171,mul_ln277,cmp11,empty,v120,v133,v144,v155,v166,v177,v188,v199,v210,grp_fu_4174_p_din0,grp_fu_4174_p_din1,grp_fu_4174_p_opcode,grp_fu_4174_p_dout0,grp_fu_4174_p_ce,grp_fu_4178_p_din0,grp_fu_4178_p_din1,grp_fu_4178_p_opcode,grp_fu_4178_p_dout0,grp_fu_4178_p_ce,grp_fu_4182_p_din0,grp_fu_4182_p_din1,grp_fu_4182_p_opcode,grp_fu_4182_p_dout0,grp_fu_4182_p_ce,grp_fu_4186_p_din0,grp_fu_4186_p_din1,grp_fu_4186_p_opcode,grp_fu_4186_p_dout0,grp_fu_4186_p_ce,grp_fu_4190_p_din0,grp_fu_4190_p_din1,grp_fu_4190_p_opcode,grp_fu_4190_p_dout0,grp_fu_4190_p_ce,grp_fu_4194_p_din0,grp_fu_4194_p_din1,grp_fu_4194_p_dout0,grp_fu_4194_p_ce,grp_fu_4198_p_din0,grp_fu_4198_p_din1,grp_fu_4198_p_dout0,grp_fu_4198_p_ce,grp_fu_4202_p_din0,grp_fu_4202_p_din1,grp_fu_4202_p_dout0,grp_fu_4202_p_ce,grp_fu_4206_p_din0,grp_fu_4206_p_din1,grp_fu_4206_p_dout0,grp_fu_4206_p_ce,grp_fu_4210_p_din0,grp_fu_4210_p_din1,grp_fu_4210_p_dout0,grp_fu_4210_p_ce); 
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
output  [12:0] v225_7_address0;
output   v225_7_ce0;
output   v225_7_we0;
output  [31:0] v225_7_d0;
input  [31:0] v225_7_q0;
output  [12:0] v225_7_address1;
output   v225_7_ce1;
output   v225_7_we1;
output  [31:0] v225_7_d1;
input  [31:0] v225_7_q1;
output  [12:0] v225_6_address0;
output   v225_6_ce0;
output   v225_6_we0;
output  [31:0] v225_6_d0;
input  [31:0] v225_6_q0;
output  [12:0] v225_6_address1;
output   v225_6_ce1;
output   v225_6_we1;
output  [31:0] v225_6_d1;
input  [31:0] v225_6_q1;
output  [12:0] v225_5_address0;
output   v225_5_ce0;
output   v225_5_we0;
output  [31:0] v225_5_d0;
input  [31:0] v225_5_q0;
output  [12:0] v225_5_address1;
output   v225_5_ce1;
output   v225_5_we1;
output  [31:0] v225_5_d1;
input  [31:0] v225_5_q1;
output  [12:0] v225_4_address0;
output   v225_4_ce0;
output   v225_4_we0;
output  [31:0] v225_4_d0;
input  [31:0] v225_4_q0;
output  [12:0] v225_4_address1;
output   v225_4_ce1;
output   v225_4_we1;
output  [31:0] v225_4_d1;
input  [31:0] v225_4_q1;
output  [12:0] v225_3_address0;
output   v225_3_ce0;
output   v225_3_we0;
output  [31:0] v225_3_d0;
input  [31:0] v225_3_q0;
output  [12:0] v225_3_address1;
output   v225_3_ce1;
output   v225_3_we1;
output  [31:0] v225_3_d1;
input  [31:0] v225_3_q1;
output  [12:0] v225_2_address0;
output   v225_2_ce0;
output   v225_2_we0;
output  [31:0] v225_2_d0;
input  [31:0] v225_2_q0;
output  [12:0] v225_2_address1;
output   v225_2_ce1;
output   v225_2_we1;
output  [31:0] v225_2_d1;
input  [31:0] v225_2_q1;
output  [12:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [12:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [12:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [12:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
input  [12:0] mul_ln175;
output  [12:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [12:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [12:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [12:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [12:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [12:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [12:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [12:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [12:0] v227_4_address0;
output   v227_4_ce0;
input  [31:0] v227_4_q0;
output  [12:0] v227_4_address1;
output   v227_4_ce1;
input  [31:0] v227_4_q1;
output  [12:0] v227_5_address0;
output   v227_5_ce0;
input  [31:0] v227_5_q0;
output  [12:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
output  [12:0] v227_6_address0;
output   v227_6_ce0;
input  [31:0] v227_6_q0;
output  [12:0] v227_6_address1;
output   v227_6_ce1;
input  [31:0] v227_6_q1;
output  [12:0] v227_7_address0;
output   v227_7_ce0;
input  [31:0] v227_7_q0;
output  [12:0] v227_7_address1;
output   v227_7_ce1;
input  [31:0] v227_7_q1;
input  [11:0] mul_ln171;
input  [12:0] mul_ln277;
input  [0:0] cmp11;
input  [2:0] empty;
input  [31:0] v120;
input  [31:0] v133;
input  [31:0] v144;
input  [31:0] v155;
input  [31:0] v166;
input  [31:0] v177;
input  [31:0] v188;
input  [31:0] v199;
input  [31:0] v210;
output  [31:0] grp_fu_4174_p_din0;
output  [31:0] grp_fu_4174_p_din1;
output  [1:0] grp_fu_4174_p_opcode;
input  [31:0] grp_fu_4174_p_dout0;
output   grp_fu_4174_p_ce;
output  [31:0] grp_fu_4178_p_din0;
output  [31:0] grp_fu_4178_p_din1;
output  [1:0] grp_fu_4178_p_opcode;
input  [31:0] grp_fu_4178_p_dout0;
output   grp_fu_4178_p_ce;
output  [31:0] grp_fu_4182_p_din0;
output  [31:0] grp_fu_4182_p_din1;
output  [1:0] grp_fu_4182_p_opcode;
input  [31:0] grp_fu_4182_p_dout0;
output   grp_fu_4182_p_ce;
output  [31:0] grp_fu_4186_p_din0;
output  [31:0] grp_fu_4186_p_din1;
output  [1:0] grp_fu_4186_p_opcode;
input  [31:0] grp_fu_4186_p_dout0;
output   grp_fu_4186_p_ce;
output  [31:0] grp_fu_4190_p_din0;
output  [31:0] grp_fu_4190_p_din1;
output  [1:0] grp_fu_4190_p_opcode;
input  [31:0] grp_fu_4190_p_dout0;
output   grp_fu_4190_p_ce;
output  [31:0] grp_fu_4194_p_din0;
output  [31:0] grp_fu_4194_p_din1;
input  [31:0] grp_fu_4194_p_dout0;
output   grp_fu_4194_p_ce;
output  [31:0] grp_fu_4198_p_din0;
output  [31:0] grp_fu_4198_p_din1;
input  [31:0] grp_fu_4198_p_dout0;
output   grp_fu_4198_p_ce;
output  [31:0] grp_fu_4202_p_din0;
output  [31:0] grp_fu_4202_p_din1;
input  [31:0] grp_fu_4202_p_dout0;
output   grp_fu_4202_p_ce;
output  [31:0] grp_fu_4206_p_din0;
output  [31:0] grp_fu_4206_p_din1;
input  [31:0] grp_fu_4206_p_dout0;
output   grp_fu_4206_p_ce;
output  [31:0] grp_fu_4210_p_din0;
output  [31:0] grp_fu_4210_p_din1;
input  [31:0] grp_fu_4210_p_dout0;
output   grp_fu_4210_p_ce;
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
reg   [0:0] icmp_ln170_reg_1372;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_674;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_678;
reg   [31:0] reg_682;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_686;
reg   [31:0] reg_690;
reg   [31:0] reg_694;
wire    ap_block_pp0_stage3_11001;
reg   [7:0] v116_5_reg_1366;
wire   [0:0] icmp_ln170_fu_706_p2;
wire   [12:0] add_ln277_fu_734_p2;
reg   [12:0] add_ln277_reg_1416;
reg   [12:0] add_ln277_reg_1416_pp0_iter1_reg;
wire   [7:0] or_ln_fu_750_p3;
reg   [7:0] or_ln_reg_1421;
wire   [12:0] add_ln284_fu_780_p2;
reg   [12:0] add_ln284_reg_1466;
reg   [12:0] add_ln284_reg_1466_pp0_iter1_reg;
wire   [31:0] v121_fu_818_p19;
reg   [31:0] v121_reg_1471;
wire   [31:0] v127_fu_889_p19;
reg   [31:0] v127_reg_1480;
reg   [12:0] v225_0_addr_1_reg_1489;
reg   [12:0] v225_0_addr_1_reg_1489_pp0_iter2_reg;
reg   [12:0] v225_0_addr_1_reg_1489_pp0_iter3_reg;
reg   [12:0] v225_1_addr_1_reg_1494;
reg   [12:0] v225_1_addr_1_reg_1494_pp0_iter2_reg;
reg   [12:0] v225_1_addr_1_reg_1494_pp0_iter3_reg;
reg   [12:0] v225_2_addr_1_reg_1499;
reg   [12:0] v225_2_addr_1_reg_1499_pp0_iter2_reg;
reg   [12:0] v225_2_addr_1_reg_1499_pp0_iter3_reg;
reg   [12:0] v225_3_addr_1_reg_1505;
reg   [12:0] v225_3_addr_1_reg_1505_pp0_iter2_reg;
reg   [12:0] v225_3_addr_1_reg_1505_pp0_iter3_reg;
reg   [12:0] v225_4_addr_1_reg_1510;
reg   [12:0] v225_4_addr_1_reg_1510_pp0_iter2_reg;
reg   [12:0] v225_4_addr_1_reg_1510_pp0_iter3_reg;
reg   [12:0] v225_5_addr_1_reg_1515;
reg   [12:0] v225_5_addr_1_reg_1515_pp0_iter2_reg;
reg   [12:0] v225_5_addr_1_reg_1515_pp0_iter3_reg;
reg   [12:0] v225_6_addr_1_reg_1520;
reg   [12:0] v225_6_addr_1_reg_1520_pp0_iter2_reg;
reg   [12:0] v225_6_addr_1_reg_1520_pp0_iter3_reg;
reg   [12:0] v225_7_addr_1_reg_1525;
reg   [12:0] v225_7_addr_1_reg_1525_pp0_iter2_reg;
reg   [12:0] v225_7_addr_1_reg_1525_pp0_iter3_reg;
reg   [12:0] v225_0_addr_2_reg_1530;
reg   [12:0] v225_0_addr_2_reg_1530_pp0_iter2_reg;
reg   [12:0] v225_0_addr_2_reg_1530_pp0_iter3_reg;
reg   [12:0] v225_1_addr_2_reg_1535;
reg   [12:0] v225_1_addr_2_reg_1535_pp0_iter2_reg;
reg   [12:0] v225_1_addr_2_reg_1535_pp0_iter3_reg;
reg   [12:0] v225_2_addr_2_reg_1540;
reg   [12:0] v225_2_addr_2_reg_1540_pp0_iter2_reg;
reg   [12:0] v225_2_addr_2_reg_1540_pp0_iter3_reg;
reg   [12:0] v225_3_addr_2_reg_1546;
reg   [12:0] v225_3_addr_2_reg_1546_pp0_iter2_reg;
reg   [12:0] v225_3_addr_2_reg_1546_pp0_iter3_reg;
reg   [12:0] v225_4_addr_2_reg_1551;
reg   [12:0] v225_4_addr_2_reg_1551_pp0_iter2_reg;
reg   [12:0] v225_4_addr_2_reg_1551_pp0_iter3_reg;
reg   [12:0] v225_5_addr_2_reg_1556;
reg   [12:0] v225_5_addr_2_reg_1556_pp0_iter2_reg;
reg   [12:0] v225_5_addr_2_reg_1556_pp0_iter3_reg;
reg   [12:0] v225_6_addr_2_reg_1561;
reg   [12:0] v225_6_addr_2_reg_1561_pp0_iter2_reg;
reg   [12:0] v225_6_addr_2_reg_1561_pp0_iter3_reg;
reg   [12:0] v225_7_addr_2_reg_1566;
reg   [12:0] v225_7_addr_2_reg_1566_pp0_iter2_reg;
reg   [12:0] v225_7_addr_2_reg_1566_pp0_iter3_reg;
reg   [12:0] v225_7_addr_2_reg_1566_pp0_iter4_reg;
reg   [12:0] v225_0_addr_3_reg_1571;
reg   [12:0] v225_0_addr_3_reg_1571_pp0_iter2_reg;
reg   [12:0] v225_0_addr_3_reg_1571_pp0_iter3_reg;
reg   [12:0] v225_0_addr_3_reg_1571_pp0_iter4_reg;
reg   [31:0] v225_0_load_reg_1576;
reg   [31:0] v122_reg_1581;
reg   [12:0] v225_0_addr_4_reg_1586;
reg   [12:0] v225_0_addr_4_reg_1586_pp0_iter2_reg;
reg   [12:0] v225_0_addr_4_reg_1586_pp0_iter3_reg;
reg   [12:0] v225_0_addr_4_reg_1586_pp0_iter4_reg;
wire   [31:0] v125_fu_990_p3;
reg   [31:0] v125_reg_1591;
reg   [31:0] v128_reg_1596;
wire   [31:0] v131_fu_1001_p3;
reg   [31:0] v131_reg_1601;
reg   [31:0] v134_reg_1606;
wire   [31:0] v137_fu_1012_p3;
reg   [31:0] v137_reg_1611;
reg   [31:0] v139_reg_1616;
wire   [31:0] v142_fu_1023_p3;
reg   [31:0] v142_reg_1621;
reg   [31:0] v145_reg_1626;
wire   [31:0] v148_fu_1034_p3;
reg   [31:0] v148_reg_1631;
wire   [31:0] v153_fu_1045_p3;
reg   [31:0] v153_reg_1636;
wire   [31:0] v159_fu_1056_p3;
reg   [31:0] v159_reg_1641;
wire   [31:0] v164_fu_1067_p3;
reg   [31:0] v164_reg_1646;
wire   [31:0] v170_fu_1078_p3;
reg   [31:0] v170_reg_1651;
wire   [31:0] v175_fu_1089_p3;
reg   [31:0] v175_reg_1656;
wire   [31:0] v181_fu_1100_p3;
reg   [31:0] v181_reg_1661;
wire   [31:0] v186_fu_1111_p3;
reg   [31:0] v186_reg_1666;
wire   [31:0] v192_fu_1122_p3;
reg   [31:0] v192_reg_1671;
wire   [31:0] v197_fu_1133_p3;
reg   [31:0] v197_reg_1676;
wire   [31:0] v203_fu_1144_p3;
reg   [31:0] v203_reg_1681;
wire   [31:0] v118_fu_1154_p3;
reg   [31:0] v150_reg_1691;
reg   [31:0] v156_reg_1696;
reg   [31:0] v161_reg_1701;
reg   [31:0] v167_reg_1706;
reg   [31:0] v172_reg_1711;
wire   [31:0] v208_fu_1166_p3;
reg   [31:0] v208_reg_1716;
wire   [31:0] v214_fu_1177_p3;
reg   [31:0] v214_reg_1721;
reg   [31:0] v178_reg_1726;
reg   [31:0] v183_reg_1731;
reg   [31:0] v189_reg_1736;
reg   [31:0] v194_reg_1741;
reg   [31:0] v200_reg_1746;
reg   [31:0] v205_reg_1751;
reg   [31:0] v211_reg_1756;
reg   [31:0] v216_reg_1761;
reg   [31:0] v157_reg_1766;
reg   [31:0] v212_reg_1771;
reg   [31:0] v217_reg_1776;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln175_9_fu_722_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln182_9_fu_768_p1;
wire   [63:0] zext_ln171_fu_946_p1;
wire   [63:0] zext_ln179_fu_966_p1;
wire   [63:0] zext_ln277_fu_978_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln284_fu_982_p1;
reg   [7:0] v116_fu_130;
wire   [7:0] add_ln170_fu_928_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_v116_5;
reg    v227_0_ce1_local;
reg    v227_0_ce0_local;
reg    v227_1_ce1_local;
reg    v227_1_ce0_local;
reg    v227_2_ce1_local;
reg    v227_2_ce0_local;
reg    v227_3_ce1_local;
reg    v227_3_ce0_local;
reg    v227_4_ce1_local;
reg    v227_4_ce0_local;
reg    v227_5_ce1_local;
reg    v227_5_ce0_local;
reg    v227_6_ce1_local;
reg    v227_6_ce0_local;
reg    v227_7_ce1_local;
reg    v227_7_ce0_local;
reg    v225_0_ce1_local;
reg   [12:0] v225_0_address1_local;
reg    v225_0_ce0_local;
reg   [12:0] v225_0_address0_local;
reg    v225_0_we1_local;
reg   [31:0] v225_0_d1_local;
wire   [31:0] bitcast_ln178_fu_1199_p1;
wire    ap_block_pp0_stage2;
reg    v225_0_we0_local;
reg   [31:0] v225_0_d0_local;
wire   [31:0] bitcast_ln185_fu_1204_p1;
wire   [31:0] bitcast_ln283_fu_1263_p1;
wire    ap_block_pp0_stage3;
wire   [31:0] bitcast_ln289_fu_1267_p1;
reg    v225_1_ce1_local;
reg   [12:0] v225_1_address1_local;
reg    v225_1_ce0_local;
reg   [12:0] v225_1_address0_local;
reg    v225_1_we1_local;
wire   [31:0] bitcast_ln192_fu_1184_p1;
reg    v225_1_we0_local;
wire   [31:0] bitcast_ln198_fu_1189_p1;
reg    v225_2_ce1_local;
reg   [12:0] v225_2_address1_local;
reg    v225_2_ce0_local;
reg   [12:0] v225_2_address0_local;
reg    v225_2_we0_local;
wire   [31:0] bitcast_ln205_fu_1194_p1;
reg    v225_2_we1_local;
wire   [31:0] bitcast_ln211_fu_1209_p1;
reg    v225_3_ce1_local;
reg   [12:0] v225_3_address1_local;
reg    v225_3_ce0_local;
reg   [12:0] v225_3_address0_local;
reg    v225_3_we1_local;
wire   [31:0] bitcast_ln218_fu_1214_p1;
reg    v225_3_we0_local;
wire   [31:0] bitcast_ln224_fu_1218_p1;
reg    v225_4_ce1_local;
reg   [12:0] v225_4_address1_local;
reg    v225_4_ce0_local;
reg   [12:0] v225_4_address0_local;
reg    v225_4_we1_local;
wire   [31:0] bitcast_ln231_fu_1223_p1;
reg    v225_4_we0_local;
wire   [31:0] bitcast_ln237_fu_1228_p1;
reg    v225_5_ce1_local;
reg   [12:0] v225_5_address1_local;
reg    v225_5_ce0_local;
reg   [12:0] v225_5_address0_local;
reg    v225_5_we1_local;
wire   [31:0] bitcast_ln244_fu_1233_p1;
reg    v225_5_we0_local;
wire   [31:0] bitcast_ln250_fu_1238_p1;
reg    v225_6_ce1_local;
reg   [12:0] v225_6_address1_local;
reg    v225_6_ce0_local;
reg   [12:0] v225_6_address0_local;
reg    v225_6_we1_local;
wire   [31:0] bitcast_ln257_fu_1243_p1;
reg    v225_6_we0_local;
wire   [31:0] bitcast_ln263_fu_1248_p1;
reg    v225_7_ce1_local;
reg   [12:0] v225_7_address1_local;
reg    v225_7_ce0_local;
reg   [12:0] v225_7_address0_local;
reg    v225_7_we1_local;
wire   [31:0] bitcast_ln270_fu_1253_p1;
reg    v225_7_we0_local;
wire   [31:0] bitcast_ln276_fu_1258_p1;
reg   [31:0] grp_fu_634_p0;
reg   [31:0] grp_fu_634_p1;
reg   [31:0] grp_fu_638_p0;
reg   [31:0] grp_fu_638_p1;
reg   [31:0] grp_fu_642_p0;
reg   [31:0] grp_fu_642_p1;
reg   [31:0] grp_fu_646_p0;
reg   [31:0] grp_fu_646_p1;
reg   [31:0] grp_fu_650_p0;
reg   [31:0] grp_fu_650_p1;
reg   [31:0] grp_fu_654_p0;
reg   [31:0] grp_fu_654_p1;
reg   [31:0] grp_fu_658_p0;
reg   [31:0] grp_fu_658_p1;
reg   [31:0] grp_fu_662_p0;
reg   [31:0] grp_fu_662_p1;
reg   [31:0] grp_fu_666_p0;
reg   [31:0] grp_fu_666_p1;
reg   [31:0] grp_fu_670_p0;
reg   [31:0] grp_fu_670_p1;
wire   [12:0] zext_ln175_8_fu_712_p1;
wire   [12:0] add_ln175_fu_716_p2;
wire   [6:0] tmp_s_fu_740_p4;
wire   [12:0] zext_ln182_8_fu_758_p1;
wire   [12:0] add_ln182_fu_762_p2;
wire   [31:0] v121_fu_818_p2;
wire   [31:0] v121_fu_818_p4;
wire   [31:0] v121_fu_818_p6;
wire   [31:0] v121_fu_818_p8;
wire   [31:0] v121_fu_818_p10;
wire   [31:0] v121_fu_818_p12;
wire   [31:0] v121_fu_818_p14;
wire   [31:0] v121_fu_818_p16;
wire   [31:0] v121_fu_818_p17;
wire   [31:0] v127_fu_889_p2;
wire   [31:0] v127_fu_889_p4;
wire   [31:0] v127_fu_889_p6;
wire   [31:0] v127_fu_889_p8;
wire   [31:0] v127_fu_889_p10;
wire   [31:0] v127_fu_889_p12;
wire   [31:0] v127_fu_889_p14;
wire   [31:0] v127_fu_889_p16;
wire   [31:0] v127_fu_889_p17;
wire   [11:0] zext_ln175_fu_938_p1;
wire   [11:0] add_ln171_fu_941_p2;
wire   [11:0] zext_ln182_fu_958_p1;
wire   [11:0] add_ln179_fu_961_p2;
wire   [31:0] v124_fu_986_p1;
wire   [31:0] v130_fu_997_p1;
wire   [31:0] v136_fu_1008_p1;
wire   [31:0] v141_fu_1019_p1;
wire   [31:0] v147_fu_1030_p1;
wire   [31:0] v152_fu_1041_p1;
wire   [31:0] v158_fu_1052_p1;
wire   [31:0] v163_fu_1063_p1;
wire   [31:0] v169_fu_1074_p1;
wire   [31:0] v174_fu_1085_p1;
wire   [31:0] v180_fu_1096_p1;
wire   [31:0] v185_fu_1107_p1;
wire   [31:0] v191_fu_1118_p1;
wire   [31:0] v196_fu_1129_p1;
wire   [31:0] v202_fu_1140_p1;
wire   [31:0] v117_fu_1151_p1;
wire   [31:0] v207_fu_1162_p1;
wire   [31:0] v213_fu_1173_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire   [2:0] v121_fu_818_p1;
wire   [2:0] v121_fu_818_p3;
wire   [2:0] v121_fu_818_p5;
wire   [2:0] v121_fu_818_p7;
wire  signed [2:0] v121_fu_818_p9;
wire  signed [2:0] v121_fu_818_p11;
wire  signed [2:0] v121_fu_818_p13;
wire  signed [2:0] v121_fu_818_p15;
wire   [2:0] v127_fu_889_p1;
wire   [2:0] v127_fu_889_p3;
wire   [2:0] v127_fu_889_p5;
wire   [2:0] v127_fu_889_p7;
wire  signed [2:0] v127_fu_889_p9;
wire  signed [2:0] v127_fu_889_p11;
wire  signed [2:0] v127_fu_889_p13;
wire  signed [2:0] v127_fu_889_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v116_fu_130 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U11(.din0(v121_fu_818_p2),.din1(v121_fu_818_p4),.din2(v121_fu_818_p6),.din3(v121_fu_818_p8),.din4(v121_fu_818_p10),.din5(v121_fu_818_p12),.din6(v121_fu_818_p14),.din7(v121_fu_818_p16),.def(v121_fu_818_p17),.sel(empty),.dout(v121_fu_818_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U12(.din0(v127_fu_889_p2),.din1(v127_fu_889_p4),.din2(v127_fu_889_p6),.din3(v127_fu_889_p8),.din4(v127_fu_889_p10),.din5(v127_fu_889_p12),.din6(v127_fu_889_p14),.din7(v127_fu_889_p16),.def(v127_fu_889_p17),.sel(empty),.dout(v127_fu_889_p19));
kernel_2mm_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v116_fu_130 <= 8'd0;
    end else if (((icmp_ln170_reg_1372 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v116_fu_130 <= add_ln170_fu_928_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln277_reg_1416 <= add_ln277_fu_734_p2;
        add_ln277_reg_1416_pp0_iter1_reg <= add_ln277_reg_1416;
        add_ln284_reg_1466 <= add_ln284_fu_780_p2;
        add_ln284_reg_1466_pp0_iter1_reg <= add_ln284_reg_1466;
        icmp_ln170_reg_1372 <= icmp_ln170_fu_706_p2;
        or_ln_reg_1421[7 : 1] <= or_ln_fu_750_p3[7 : 1];
        v116_5_reg_1366 <= ap_sig_allocacmp_v116_5;
        v225_0_addr_1_reg_1489[11 : 0] <= zext_ln171_fu_946_p1[11 : 0];
        v225_0_addr_1_reg_1489_pp0_iter2_reg[11 : 0] <= v225_0_addr_1_reg_1489[11 : 0];
        v225_0_addr_1_reg_1489_pp0_iter3_reg[11 : 0] <= v225_0_addr_1_reg_1489_pp0_iter2_reg[11 : 0];
        v225_0_addr_2_reg_1530[11 : 0] <= zext_ln179_fu_966_p1[11 : 0];
        v225_0_addr_2_reg_1530_pp0_iter2_reg[11 : 0] <= v225_0_addr_2_reg_1530[11 : 0];
        v225_0_addr_2_reg_1530_pp0_iter3_reg[11 : 0] <= v225_0_addr_2_reg_1530_pp0_iter2_reg[11 : 0];
        v225_1_addr_1_reg_1494[11 : 0] <= zext_ln171_fu_946_p1[11 : 0];
        v225_1_addr_1_reg_1494_pp0_iter2_reg[11 : 0] <= v225_1_addr_1_reg_1494[11 : 0];
        v225_1_addr_1_reg_1494_pp0_iter3_reg[11 : 0] <= v225_1_addr_1_reg_1494_pp0_iter2_reg[11 : 0];
        v225_1_addr_2_reg_1535[11 : 0] <= zext_ln179_fu_966_p1[11 : 0];
        v225_1_addr_2_reg_1535_pp0_iter2_reg[11 : 0] <= v225_1_addr_2_reg_1535[11 : 0];
        v225_1_addr_2_reg_1535_pp0_iter3_reg[11 : 0] <= v225_1_addr_2_reg_1535_pp0_iter2_reg[11 : 0];
        v225_2_addr_1_reg_1499[11 : 0] <= zext_ln171_fu_946_p1[11 : 0];
        v225_2_addr_1_reg_1499_pp0_iter2_reg[11 : 0] <= v225_2_addr_1_reg_1499[11 : 0];
        v225_2_addr_1_reg_1499_pp0_iter3_reg[11 : 0] <= v225_2_addr_1_reg_1499_pp0_iter2_reg[11 : 0];
        v225_2_addr_2_reg_1540[11 : 0] <= zext_ln179_fu_966_p1[11 : 0];
        v225_2_addr_2_reg_1540_pp0_iter2_reg[11 : 0] <= v225_2_addr_2_reg_1540[11 : 0];
        v225_2_addr_2_reg_1540_pp0_iter3_reg[11 : 0] <= v225_2_addr_2_reg_1540_pp0_iter2_reg[11 : 0];
        v225_3_addr_1_reg_1505[11 : 0] <= zext_ln171_fu_946_p1[11 : 0];
        v225_3_addr_1_reg_1505_pp0_iter2_reg[11 : 0] <= v225_3_addr_1_reg_1505[11 : 0];
        v225_3_addr_1_reg_1505_pp0_iter3_reg[11 : 0] <= v225_3_addr_1_reg_1505_pp0_iter2_reg[11 : 0];
        v225_3_addr_2_reg_1546[11 : 0] <= zext_ln179_fu_966_p1[11 : 0];
        v225_3_addr_2_reg_1546_pp0_iter2_reg[11 : 0] <= v225_3_addr_2_reg_1546[11 : 0];
        v225_3_addr_2_reg_1546_pp0_iter3_reg[11 : 0] <= v225_3_addr_2_reg_1546_pp0_iter2_reg[11 : 0];
        v225_4_addr_1_reg_1510[11 : 0] <= zext_ln171_fu_946_p1[11 : 0];
        v225_4_addr_1_reg_1510_pp0_iter2_reg[11 : 0] <= v225_4_addr_1_reg_1510[11 : 0];
        v225_4_addr_1_reg_1510_pp0_iter3_reg[11 : 0] <= v225_4_addr_1_reg_1510_pp0_iter2_reg[11 : 0];
        v225_4_addr_2_reg_1551[11 : 0] <= zext_ln179_fu_966_p1[11 : 0];
        v225_4_addr_2_reg_1551_pp0_iter2_reg[11 : 0] <= v225_4_addr_2_reg_1551[11 : 0];
        v225_4_addr_2_reg_1551_pp0_iter3_reg[11 : 0] <= v225_4_addr_2_reg_1551_pp0_iter2_reg[11 : 0];
        v225_5_addr_1_reg_1515[11 : 0] <= zext_ln171_fu_946_p1[11 : 0];
        v225_5_addr_1_reg_1515_pp0_iter2_reg[11 : 0] <= v225_5_addr_1_reg_1515[11 : 0];
        v225_5_addr_1_reg_1515_pp0_iter3_reg[11 : 0] <= v225_5_addr_1_reg_1515_pp0_iter2_reg[11 : 0];
        v225_5_addr_2_reg_1556[11 : 0] <= zext_ln179_fu_966_p1[11 : 0];
        v225_5_addr_2_reg_1556_pp0_iter2_reg[11 : 0] <= v225_5_addr_2_reg_1556[11 : 0];
        v225_5_addr_2_reg_1556_pp0_iter3_reg[11 : 0] <= v225_5_addr_2_reg_1556_pp0_iter2_reg[11 : 0];
        v225_6_addr_1_reg_1520[11 : 0] <= zext_ln171_fu_946_p1[11 : 0];
        v225_6_addr_1_reg_1520_pp0_iter2_reg[11 : 0] <= v225_6_addr_1_reg_1520[11 : 0];
        v225_6_addr_1_reg_1520_pp0_iter3_reg[11 : 0] <= v225_6_addr_1_reg_1520_pp0_iter2_reg[11 : 0];
        v225_6_addr_2_reg_1561[11 : 0] <= zext_ln179_fu_966_p1[11 : 0];
        v225_6_addr_2_reg_1561_pp0_iter2_reg[11 : 0] <= v225_6_addr_2_reg_1561[11 : 0];
        v225_6_addr_2_reg_1561_pp0_iter3_reg[11 : 0] <= v225_6_addr_2_reg_1561_pp0_iter2_reg[11 : 0];
        v225_7_addr_1_reg_1525[11 : 0] <= zext_ln171_fu_946_p1[11 : 0];
        v225_7_addr_1_reg_1525_pp0_iter2_reg[11 : 0] <= v225_7_addr_1_reg_1525[11 : 0];
        v225_7_addr_1_reg_1525_pp0_iter3_reg[11 : 0] <= v225_7_addr_1_reg_1525_pp0_iter2_reg[11 : 0];
        v225_7_addr_2_reg_1566[11 : 0] <= zext_ln179_fu_966_p1[11 : 0];
        v225_7_addr_2_reg_1566_pp0_iter2_reg[11 : 0] <= v225_7_addr_2_reg_1566[11 : 0];
        v225_7_addr_2_reg_1566_pp0_iter3_reg[11 : 0] <= v225_7_addr_2_reg_1566_pp0_iter2_reg[11 : 0];
        v225_7_addr_2_reg_1566_pp0_iter4_reg[11 : 0] <= v225_7_addr_2_reg_1566_pp0_iter3_reg[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_674 <= grp_fu_4174_p_dout0;
        reg_678 <= grp_fu_4178_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_682 <= grp_fu_4182_p_dout0;
        reg_686 <= grp_fu_4186_p_dout0;
        reg_690 <= grp_fu_4190_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_694 <= grp_fu_4174_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v121_reg_1471 <= v121_fu_818_p19;
        v125_reg_1591 <= v125_fu_990_p3;
        v127_reg_1480 <= v127_fu_889_p19;
        v131_reg_1601 <= v131_fu_1001_p3;
        v137_reg_1611 <= v137_fu_1012_p3;
        v142_reg_1621 <= v142_fu_1023_p3;
        v148_reg_1631 <= v148_fu_1034_p3;
        v153_reg_1636 <= v153_fu_1045_p3;
        v159_reg_1641 <= v159_fu_1056_p3;
        v164_reg_1646 <= v164_fu_1067_p3;
        v170_reg_1651 <= v170_fu_1078_p3;
        v175_reg_1656 <= v175_fu_1089_p3;
        v181_reg_1661 <= v181_fu_1100_p3;
        v186_reg_1666 <= v186_fu_1111_p3;
        v192_reg_1671 <= v192_fu_1122_p3;
        v197_reg_1676 <= v197_fu_1133_p3;
        v203_reg_1681 <= v203_fu_1144_p3;
        v225_0_addr_3_reg_1571 <= zext_ln277_fu_978_p1;
        v225_0_addr_3_reg_1571_pp0_iter2_reg <= v225_0_addr_3_reg_1571;
        v225_0_addr_3_reg_1571_pp0_iter3_reg <= v225_0_addr_3_reg_1571_pp0_iter2_reg;
        v225_0_addr_3_reg_1571_pp0_iter4_reg <= v225_0_addr_3_reg_1571_pp0_iter3_reg;
        v225_0_addr_4_reg_1586 <= zext_ln284_fu_982_p1;
        v225_0_addr_4_reg_1586_pp0_iter2_reg <= v225_0_addr_4_reg_1586;
        v225_0_addr_4_reg_1586_pp0_iter3_reg <= v225_0_addr_4_reg_1586_pp0_iter2_reg;
        v225_0_addr_4_reg_1586_pp0_iter4_reg <= v225_0_addr_4_reg_1586_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v122_reg_1581 <= grp_fu_4194_p_dout0;
        v128_reg_1596 <= grp_fu_4198_p_dout0;
        v134_reg_1606 <= grp_fu_4202_p_dout0;
        v139_reg_1616 <= grp_fu_4206_p_dout0;
        v145_reg_1626 <= grp_fu_4210_p_dout0;
        v225_0_load_reg_1576 <= v225_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v150_reg_1691 <= grp_fu_4194_p_dout0;
        v156_reg_1696 <= grp_fu_4198_p_dout0;
        v161_reg_1701 <= grp_fu_4202_p_dout0;
        v167_reg_1706 <= grp_fu_4206_p_dout0;
        v172_reg_1711 <= grp_fu_4210_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v157_reg_1766 <= grp_fu_4178_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v178_reg_1726 <= grp_fu_4194_p_dout0;
        v183_reg_1731 <= grp_fu_4198_p_dout0;
        v189_reg_1736 <= grp_fu_4202_p_dout0;
        v194_reg_1741 <= grp_fu_4206_p_dout0;
        v200_reg_1746 <= grp_fu_4210_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v205_reg_1751 <= grp_fu_4194_p_dout0;
        v211_reg_1756 <= grp_fu_4198_p_dout0;
        v216_reg_1761 <= grp_fu_4202_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v208_reg_1716 <= v208_fu_1166_p3;
        v214_reg_1721 <= v214_fu_1177_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v212_reg_1771 <= grp_fu_4178_p_dout0;
        v217_reg_1776 <= grp_fu_4182_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln170_reg_1372 == 1'd0) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        ap_sig_allocacmp_v116_5 = 8'd0;
    end else begin
        ap_sig_allocacmp_v116_5 = v116_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_634_p0 = v203_reg_1681;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_634_p0 = v175_reg_1656;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_634_p0 = v148_reg_1631;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_634_p0 = v118_fu_1154_p3;
    end else begin
        grp_fu_634_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_634_p1 = v205_reg_1751;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_634_p1 = v178_reg_1726;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_634_p1 = v150_reg_1691;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_634_p1 = v122_reg_1581;
    end else begin
        grp_fu_634_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_638_p0 = v208_reg_1716;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_638_p0 = v181_reg_1661;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_638_p0 = v153_reg_1636;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_638_p0 = v125_reg_1591;
    end else begin
        grp_fu_638_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_638_p1 = v211_reg_1756;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_638_p1 = v183_reg_1731;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_638_p1 = v156_reg_1696;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_638_p1 = v128_reg_1596;
    end else begin
        grp_fu_638_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_642_p0 = v214_reg_1721;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_642_p0 = v186_reg_1666;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_642_p0 = v159_reg_1641;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_642_p0 = v131_reg_1601;
    end else begin
        grp_fu_642_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_642_p1 = v216_reg_1761;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_642_p1 = v189_reg_1736;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_642_p1 = v161_reg_1701;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_642_p1 = v134_reg_1606;
    end else begin
        grp_fu_642_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_646_p0 = v192_reg_1671;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_646_p0 = v164_reg_1646;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_646_p0 = v137_reg_1611;
    end else begin
        grp_fu_646_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_646_p1 = v194_reg_1741;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_646_p1 = v167_reg_1706;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_646_p1 = v139_reg_1616;
    end else begin
        grp_fu_646_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_650_p0 = v197_reg_1676;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_650_p0 = v170_reg_1651;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_650_p0 = v142_reg_1621;
    end else begin
        grp_fu_650_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_650_p1 = v200_reg_1746;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_650_p1 = v172_reg_1711;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_650_p1 = v145_reg_1626;
    end else begin
        grp_fu_650_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_654_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_654_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_654_p0 = v144;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_654_p0 = v120;
    end else begin
        grp_fu_654_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_654_p1 = v127_reg_1480;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_654_p1 = v121_reg_1471;
    end else begin
        grp_fu_654_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_658_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_658_p0 = v177;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_658_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_658_p0 = v120;
    end else begin
        grp_fu_658_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_658_p1 = v121_reg_1471;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_658_p1 = v127_reg_1480;
    end else begin
        grp_fu_658_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_662_p0 = v210;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_662_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_662_p0 = v155;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_662_p0 = v133;
    end else begin
        grp_fu_662_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_662_p1 = v127_reg_1480;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_662_p1 = v121_reg_1471;
    end else begin
        grp_fu_662_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_666_p0 = v188;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_666_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_666_p0 = v133;
    end else begin
        grp_fu_666_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_666_p1 = v121_reg_1471;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_666_p1 = v127_reg_1480;
    end else begin
        grp_fu_666_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_670_p0 = v199;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_670_p0 = v166;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_670_p0 = v144;
    end else begin
        grp_fu_670_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_670_p1 = v127_reg_1480;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_670_p1 = v121_reg_1471;
    end else begin
        grp_fu_670_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address0_local = v225_0_addr_4_reg_1586_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address0_local = v225_0_addr_2_reg_1530_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address0_local = zext_ln284_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address0_local = zext_ln179_fu_966_p1;
    end else begin
        v225_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_address1_local = v225_0_addr_3_reg_1571_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_address1_local = v225_0_addr_1_reg_1489_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_0_address1_local = zext_ln277_fu_978_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_0_address1_local = zext_ln171_fu_946_p1;
    end else begin
        v225_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce0_local = 1'b1;
    end else begin
        v225_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_0_ce1_local = 1'b1;
    end else begin
        v225_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d0_local = bitcast_ln289_fu_1267_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d0_local = bitcast_ln185_fu_1204_p1;
    end else begin
        v225_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_0_d1_local = bitcast_ln283_fu_1263_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_0_d1_local = bitcast_ln178_fu_1199_p1;
    end else begin
        v225_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_0_we0_local = 1'b1;
    end else begin
        v225_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v225_0_we1_local = 1'b1;
    end else begin
        v225_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address0_local = v225_1_addr_2_reg_1535_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address0_local = zext_ln179_fu_966_p1;
    end else begin
        v225_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_address1_local = v225_1_addr_1_reg_1494_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_1_address1_local = zext_ln171_fu_946_p1;
    end else begin
        v225_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce0_local = 1'b1;
    end else begin
        v225_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_1_ce1_local = 1'b1;
    end else begin
        v225_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_we0_local = 1'b1;
    end else begin
        v225_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_1_we1_local = 1'b1;
    end else begin
        v225_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_address0_local = v225_2_addr_1_reg_1499_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address0_local = zext_ln179_fu_966_p1;
    end else begin
        v225_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_address1_local = v225_2_addr_2_reg_1540_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_2_address1_local = zext_ln171_fu_946_p1;
    end else begin
        v225_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce0_local = 1'b1;
    end else begin
        v225_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_2_ce1_local = 1'b1;
    end else begin
        v225_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_2_we0_local = 1'b1;
    end else begin
        v225_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_2_we1_local = 1'b1;
    end else begin
        v225_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address0_local = v225_3_addr_2_reg_1546_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address0_local = zext_ln179_fu_966_p1;
    end else begin
        v225_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_address1_local = v225_3_addr_1_reg_1505_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_3_address1_local = zext_ln171_fu_946_p1;
    end else begin
        v225_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce0_local = 1'b1;
    end else begin
        v225_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_3_ce1_local = 1'b1;
    end else begin
        v225_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_we0_local = 1'b1;
    end else begin
        v225_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_3_we1_local = 1'b1;
    end else begin
        v225_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address0_local = v225_4_addr_2_reg_1551_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address0_local = zext_ln179_fu_966_p1;
    end else begin
        v225_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_address1_local = v225_4_addr_1_reg_1510_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_4_address1_local = zext_ln171_fu_946_p1;
    end else begin
        v225_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_4_ce0_local = 1'b1;
    end else begin
        v225_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_4_ce1_local = 1'b1;
    end else begin
        v225_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_we0_local = 1'b1;
    end else begin
        v225_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v225_4_we1_local = 1'b1;
    end else begin
        v225_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_5_address0_local = v225_5_addr_2_reg_1556_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address0_local = zext_ln179_fu_966_p1;
    end else begin
        v225_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_5_address1_local = v225_5_addr_1_reg_1515_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_5_address1_local = zext_ln171_fu_946_p1;
    end else begin
        v225_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_5_ce0_local = 1'b1;
    end else begin
        v225_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_5_ce1_local = 1'b1;
    end else begin
        v225_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_5_we0_local = 1'b1;
    end else begin
        v225_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_5_we1_local = 1'b1;
    end else begin
        v225_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_6_address0_local = v225_6_addr_2_reg_1561_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address0_local = zext_ln179_fu_966_p1;
    end else begin
        v225_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_6_address1_local = v225_6_addr_1_reg_1520_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_6_address1_local = zext_ln171_fu_946_p1;
    end else begin
        v225_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_6_ce0_local = 1'b1;
    end else begin
        v225_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_6_ce1_local = 1'b1;
    end else begin
        v225_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_6_we0_local = 1'b1;
    end else begin
        v225_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_6_we1_local = 1'b1;
    end else begin
        v225_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_7_address0_local = v225_7_addr_2_reg_1566_pp0_iter4_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address0_local = zext_ln179_fu_966_p1;
    end else begin
        v225_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_7_address1_local = v225_7_addr_1_reg_1525_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v225_7_address1_local = zext_ln171_fu_946_p1;
    end else begin
        v225_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_7_ce0_local = 1'b1;
    end else begin
        v225_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v225_7_ce1_local = 1'b1;
    end else begin
        v225_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v225_7_we0_local = 1'b1;
    end else begin
        v225_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v225_7_we1_local = 1'b1;
    end else begin
        v225_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_0_ce0_local = 1'b1;
    end else begin
        v227_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_0_ce1_local = 1'b1;
    end else begin
        v227_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_1_ce0_local = 1'b1;
    end else begin
        v227_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_1_ce1_local = 1'b1;
    end else begin
        v227_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_2_ce0_local = 1'b1;
    end else begin
        v227_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_2_ce1_local = 1'b1;
    end else begin
        v227_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_3_ce0_local = 1'b1;
    end else begin
        v227_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_3_ce1_local = 1'b1;
    end else begin
        v227_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_4_ce0_local = 1'b1;
    end else begin
        v227_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_4_ce1_local = 1'b1;
    end else begin
        v227_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_5_ce0_local = 1'b1;
    end else begin
        v227_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_5_ce1_local = 1'b1;
    end else begin
        v227_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_6_ce0_local = 1'b1;
    end else begin
        v227_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_6_ce1_local = 1'b1;
    end else begin
        v227_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_7_ce0_local = 1'b1;
    end else begin
        v227_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v227_7_ce1_local = 1'b1;
    end else begin
        v227_7_ce1_local = 1'b0;
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
assign add_ln170_fu_928_p2 = (v116_5_reg_1366 + 8'd2);
assign add_ln171_fu_941_p2 = (mul_ln171 + zext_ln175_fu_938_p1);
assign add_ln175_fu_716_p2 = (mul_ln175 + zext_ln175_8_fu_712_p1);
assign add_ln179_fu_961_p2 = (mul_ln171 + zext_ln182_fu_958_p1);
assign add_ln182_fu_762_p2 = (mul_ln175 + zext_ln182_8_fu_758_p1);
assign add_ln277_fu_734_p2 = (mul_ln277 + zext_ln175_8_fu_712_p1);
assign add_ln284_fu_780_p2 = (mul_ln277 + zext_ln182_8_fu_758_p1);
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
assign bitcast_ln178_fu_1199_p1 = reg_674;
assign bitcast_ln185_fu_1204_p1 = reg_678;
assign bitcast_ln192_fu_1184_p1 = reg_682;
assign bitcast_ln198_fu_1189_p1 = reg_686;
assign bitcast_ln205_fu_1194_p1 = reg_690;
assign bitcast_ln211_fu_1209_p1 = reg_694;
assign bitcast_ln218_fu_1214_p1 = v157_reg_1766;
assign bitcast_ln224_fu_1218_p1 = reg_682;
assign bitcast_ln231_fu_1223_p1 = reg_686;
assign bitcast_ln237_fu_1228_p1 = reg_690;
assign bitcast_ln244_fu_1233_p1 = reg_674;
assign bitcast_ln250_fu_1238_p1 = reg_678;
assign bitcast_ln257_fu_1243_p1 = reg_682;
assign bitcast_ln263_fu_1248_p1 = reg_686;
assign bitcast_ln270_fu_1253_p1 = reg_690;
assign bitcast_ln276_fu_1258_p1 = reg_694;
assign bitcast_ln283_fu_1263_p1 = v212_reg_1771;
assign bitcast_ln289_fu_1267_p1 = v217_reg_1776;
assign grp_fu_4174_p_ce = 1'b1;
assign grp_fu_4174_p_din0 = grp_fu_634_p0;
assign grp_fu_4174_p_din1 = grp_fu_634_p1;
assign grp_fu_4174_p_opcode = 2'd0;
assign grp_fu_4178_p_ce = 1'b1;
assign grp_fu_4178_p_din0 = grp_fu_638_p0;
assign grp_fu_4178_p_din1 = grp_fu_638_p1;
assign grp_fu_4178_p_opcode = 2'd0;
assign grp_fu_4182_p_ce = 1'b1;
assign grp_fu_4182_p_din0 = grp_fu_642_p0;
assign grp_fu_4182_p_din1 = grp_fu_642_p1;
assign grp_fu_4182_p_opcode = 2'd0;
assign grp_fu_4186_p_ce = 1'b1;
assign grp_fu_4186_p_din0 = grp_fu_646_p0;
assign grp_fu_4186_p_din1 = grp_fu_646_p1;
assign grp_fu_4186_p_opcode = 2'd0;
assign grp_fu_4190_p_ce = 1'b1;
assign grp_fu_4190_p_din0 = grp_fu_650_p0;
assign grp_fu_4190_p_din1 = grp_fu_650_p1;
assign grp_fu_4190_p_opcode = 2'd0;
assign grp_fu_4194_p_ce = 1'b1;
assign grp_fu_4194_p_din0 = grp_fu_654_p0;
assign grp_fu_4194_p_din1 = grp_fu_654_p1;
assign grp_fu_4198_p_ce = 1'b1;
assign grp_fu_4198_p_din0 = grp_fu_658_p0;
assign grp_fu_4198_p_din1 = grp_fu_658_p1;
assign grp_fu_4202_p_ce = 1'b1;
assign grp_fu_4202_p_din0 = grp_fu_662_p0;
assign grp_fu_4202_p_din1 = grp_fu_662_p1;
assign grp_fu_4206_p_ce = 1'b1;
assign grp_fu_4206_p_din0 = grp_fu_666_p0;
assign grp_fu_4206_p_din1 = grp_fu_666_p1;
assign grp_fu_4210_p_ce = 1'b1;
assign grp_fu_4210_p_din0 = grp_fu_670_p0;
assign grp_fu_4210_p_din1 = grp_fu_670_p1;
assign icmp_ln170_fu_706_p2 = ((ap_sig_allocacmp_v116_5 < 8'd190) ? 1'b1 : 1'b0);
assign or_ln_fu_750_p3 = {{tmp_s_fu_740_p4}, {1'd1}};
assign tmp_s_fu_740_p4 = {{ap_sig_allocacmp_v116_5[7:1]}};
assign v117_fu_1151_p1 = v225_0_load_reg_1576;
assign v118_fu_1154_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v117_fu_1151_p1);
assign v121_fu_818_p10 = v227_4_q1;
assign v121_fu_818_p12 = v227_5_q1;
assign v121_fu_818_p14 = v227_6_q1;
assign v121_fu_818_p16 = v227_7_q1;
assign v121_fu_818_p17 = 'bx;
assign v121_fu_818_p2 = v227_0_q1;
assign v121_fu_818_p4 = v227_1_q1;
assign v121_fu_818_p6 = v227_2_q1;
assign v121_fu_818_p8 = v227_3_q1;
assign v124_fu_986_p1 = v225_0_q0;
assign v125_fu_990_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v124_fu_986_p1);
assign v127_fu_889_p10 = v227_4_q0;
assign v127_fu_889_p12 = v227_5_q0;
assign v127_fu_889_p14 = v227_6_q0;
assign v127_fu_889_p16 = v227_7_q0;
assign v127_fu_889_p17 = 'bx;
assign v127_fu_889_p2 = v227_0_q0;
assign v127_fu_889_p4 = v227_1_q0;
assign v127_fu_889_p6 = v227_2_q0;
assign v127_fu_889_p8 = v227_3_q0;
assign v130_fu_997_p1 = v225_1_q1;
assign v131_fu_1001_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v130_fu_997_p1);
assign v136_fu_1008_p1 = v225_1_q0;
assign v137_fu_1012_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v136_fu_1008_p1);
assign v141_fu_1019_p1 = v225_2_q1;
assign v142_fu_1023_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v141_fu_1019_p1);
assign v147_fu_1030_p1 = v225_2_q0;
assign v148_fu_1034_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v147_fu_1030_p1);
assign v152_fu_1041_p1 = v225_3_q1;
assign v153_fu_1045_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v152_fu_1041_p1);
assign v158_fu_1052_p1 = v225_3_q0;
assign v159_fu_1056_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v158_fu_1052_p1);
assign v163_fu_1063_p1 = v225_4_q1;
assign v164_fu_1067_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v163_fu_1063_p1);
assign v169_fu_1074_p1 = v225_4_q0;
assign v170_fu_1078_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v169_fu_1074_p1);
assign v174_fu_1085_p1 = v225_5_q1;
assign v175_fu_1089_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v174_fu_1085_p1);
assign v180_fu_1096_p1 = v225_5_q0;
assign v181_fu_1100_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v180_fu_1096_p1);
assign v185_fu_1107_p1 = v225_6_q1;
assign v186_fu_1111_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v185_fu_1107_p1);
assign v191_fu_1118_p1 = v225_6_q0;
assign v192_fu_1122_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v191_fu_1118_p1);
assign v196_fu_1129_p1 = v225_7_q1;
assign v197_fu_1133_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v196_fu_1129_p1);
assign v202_fu_1140_p1 = v225_7_q0;
assign v203_fu_1144_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v202_fu_1140_p1);
assign v207_fu_1162_p1 = v225_0_q1;
assign v208_fu_1166_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v207_fu_1162_p1);
assign v213_fu_1173_p1 = v225_0_q0;
assign v214_fu_1177_p3 = ((cmp11[0:0] == 1'b1) ? 32'd0 : v213_fu_1173_p1);
assign v225_0_address0 = v225_0_address0_local;
assign v225_0_address1 = v225_0_address1_local;
assign v225_0_ce0 = v225_0_ce0_local;
assign v225_0_ce1 = v225_0_ce1_local;
assign v225_0_d0 = v225_0_d0_local;
assign v225_0_d1 = v225_0_d1_local;
assign v225_0_we0 = v225_0_we0_local;
assign v225_0_we1 = v225_0_we1_local;
assign v225_1_address0 = v225_1_address0_local;
assign v225_1_address1 = v225_1_address1_local;
assign v225_1_ce0 = v225_1_ce0_local;
assign v225_1_ce1 = v225_1_ce1_local;
assign v225_1_d0 = bitcast_ln198_fu_1189_p1;
assign v225_1_d1 = bitcast_ln192_fu_1184_p1;
assign v225_1_we0 = v225_1_we0_local;
assign v225_1_we1 = v225_1_we1_local;
assign v225_2_address0 = v225_2_address0_local;
assign v225_2_address1 = v225_2_address1_local;
assign v225_2_ce0 = v225_2_ce0_local;
assign v225_2_ce1 = v225_2_ce1_local;
assign v225_2_d0 = bitcast_ln205_fu_1194_p1;
assign v225_2_d1 = bitcast_ln211_fu_1209_p1;
assign v225_2_we0 = v225_2_we0_local;
assign v225_2_we1 = v225_2_we1_local;
assign v225_3_address0 = v225_3_address0_local;
assign v225_3_address1 = v225_3_address1_local;
assign v225_3_ce0 = v225_3_ce0_local;
assign v225_3_ce1 = v225_3_ce1_local;
assign v225_3_d0 = bitcast_ln224_fu_1218_p1;
assign v225_3_d1 = bitcast_ln218_fu_1214_p1;
assign v225_3_we0 = v225_3_we0_local;
assign v225_3_we1 = v225_3_we1_local;
assign v225_4_address0 = v225_4_address0_local;
assign v225_4_address1 = v225_4_address1_local;
assign v225_4_ce0 = v225_4_ce0_local;
assign v225_4_ce1 = v225_4_ce1_local;
assign v225_4_d0 = bitcast_ln237_fu_1228_p1;
assign v225_4_d1 = bitcast_ln231_fu_1223_p1;
assign v225_4_we0 = v225_4_we0_local;
assign v225_4_we1 = v225_4_we1_local;
assign v225_5_address0 = v225_5_address0_local;
assign v225_5_address1 = v225_5_address1_local;
assign v225_5_ce0 = v225_5_ce0_local;
assign v225_5_ce1 = v225_5_ce1_local;
assign v225_5_d0 = bitcast_ln250_fu_1238_p1;
assign v225_5_d1 = bitcast_ln244_fu_1233_p1;
assign v225_5_we0 = v225_5_we0_local;
assign v225_5_we1 = v225_5_we1_local;
assign v225_6_address0 = v225_6_address0_local;
assign v225_6_address1 = v225_6_address1_local;
assign v225_6_ce0 = v225_6_ce0_local;
assign v225_6_ce1 = v225_6_ce1_local;
assign v225_6_d0 = bitcast_ln263_fu_1248_p1;
assign v225_6_d1 = bitcast_ln257_fu_1243_p1;
assign v225_6_we0 = v225_6_we0_local;
assign v225_6_we1 = v225_6_we1_local;
assign v225_7_address0 = v225_7_address0_local;
assign v225_7_address1 = v225_7_address1_local;
assign v225_7_ce0 = v225_7_ce0_local;
assign v225_7_ce1 = v225_7_ce1_local;
assign v225_7_d0 = bitcast_ln276_fu_1258_p1;
assign v225_7_d1 = bitcast_ln270_fu_1253_p1;
assign v225_7_we0 = v225_7_we0_local;
assign v225_7_we1 = v225_7_we1_local;
assign v227_0_address0 = zext_ln182_9_fu_768_p1;
assign v227_0_address1 = zext_ln175_9_fu_722_p1;
assign v227_0_ce0 = v227_0_ce0_local;
assign v227_0_ce1 = v227_0_ce1_local;
assign v227_1_address0 = zext_ln182_9_fu_768_p1;
assign v227_1_address1 = zext_ln175_9_fu_722_p1;
assign v227_1_ce0 = v227_1_ce0_local;
assign v227_1_ce1 = v227_1_ce1_local;
assign v227_2_address0 = zext_ln182_9_fu_768_p1;
assign v227_2_address1 = zext_ln175_9_fu_722_p1;
assign v227_2_ce0 = v227_2_ce0_local;
assign v227_2_ce1 = v227_2_ce1_local;
assign v227_3_address0 = zext_ln182_9_fu_768_p1;
assign v227_3_address1 = zext_ln175_9_fu_722_p1;
assign v227_3_ce0 = v227_3_ce0_local;
assign v227_3_ce1 = v227_3_ce1_local;
assign v227_4_address0 = zext_ln182_9_fu_768_p1;
assign v227_4_address1 = zext_ln175_9_fu_722_p1;
assign v227_4_ce0 = v227_4_ce0_local;
assign v227_4_ce1 = v227_4_ce1_local;
assign v227_5_address0 = zext_ln182_9_fu_768_p1;
assign v227_5_address1 = zext_ln175_9_fu_722_p1;
assign v227_5_ce0 = v227_5_ce0_local;
assign v227_5_ce1 = v227_5_ce1_local;
assign v227_6_address0 = zext_ln182_9_fu_768_p1;
assign v227_6_address1 = zext_ln175_9_fu_722_p1;
assign v227_6_ce0 = v227_6_ce0_local;
assign v227_6_ce1 = v227_6_ce1_local;
assign v227_7_address0 = zext_ln182_9_fu_768_p1;
assign v227_7_address1 = zext_ln175_9_fu_722_p1;
assign v227_7_ce0 = v227_7_ce0_local;
assign v227_7_ce1 = v227_7_ce1_local;
assign zext_ln171_fu_946_p1 = add_ln171_fu_941_p2;
assign zext_ln175_8_fu_712_p1 = ap_sig_allocacmp_v116_5;
assign zext_ln175_9_fu_722_p1 = add_ln175_fu_716_p2;
assign zext_ln175_fu_938_p1 = v116_5_reg_1366;
assign zext_ln179_fu_966_p1 = add_ln179_fu_961_p2;
assign zext_ln182_8_fu_758_p1 = or_ln_fu_750_p3;
assign zext_ln182_9_fu_768_p1 = add_ln182_fu_762_p2;
assign zext_ln182_fu_958_p1 = or_ln_reg_1421;
assign zext_ln277_fu_978_p1 = add_ln277_reg_1416_pp0_iter1_reg;
assign zext_ln284_fu_982_p1 = add_ln284_reg_1466_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    or_ln_reg_1421[0] <= 1'b1;
    v225_0_addr_1_reg_1489[12] <= 1'b0;
    v225_0_addr_1_reg_1489_pp0_iter2_reg[12] <= 1'b0;
    v225_0_addr_1_reg_1489_pp0_iter3_reg[12] <= 1'b0;
    v225_1_addr_1_reg_1494[12] <= 1'b0;
    v225_1_addr_1_reg_1494_pp0_iter2_reg[12] <= 1'b0;
    v225_1_addr_1_reg_1494_pp0_iter3_reg[12] <= 1'b0;
    v225_2_addr_1_reg_1499[12] <= 1'b0;
    v225_2_addr_1_reg_1499_pp0_iter2_reg[12] <= 1'b0;
    v225_2_addr_1_reg_1499_pp0_iter3_reg[12] <= 1'b0;
    v225_3_addr_1_reg_1505[12] <= 1'b0;
    v225_3_addr_1_reg_1505_pp0_iter2_reg[12] <= 1'b0;
    v225_3_addr_1_reg_1505_pp0_iter3_reg[12] <= 1'b0;
    v225_4_addr_1_reg_1510[12] <= 1'b0;
    v225_4_addr_1_reg_1510_pp0_iter2_reg[12] <= 1'b0;
    v225_4_addr_1_reg_1510_pp0_iter3_reg[12] <= 1'b0;
    v225_5_addr_1_reg_1515[12] <= 1'b0;
    v225_5_addr_1_reg_1515_pp0_iter2_reg[12] <= 1'b0;
    v225_5_addr_1_reg_1515_pp0_iter3_reg[12] <= 1'b0;
    v225_6_addr_1_reg_1520[12] <= 1'b0;
    v225_6_addr_1_reg_1520_pp0_iter2_reg[12] <= 1'b0;
    v225_6_addr_1_reg_1520_pp0_iter3_reg[12] <= 1'b0;
    v225_7_addr_1_reg_1525[12] <= 1'b0;
    v225_7_addr_1_reg_1525_pp0_iter2_reg[12] <= 1'b0;
    v225_7_addr_1_reg_1525_pp0_iter3_reg[12] <= 1'b0;
    v225_0_addr_2_reg_1530[12] <= 1'b0;
    v225_0_addr_2_reg_1530_pp0_iter2_reg[12] <= 1'b0;
    v225_0_addr_2_reg_1530_pp0_iter3_reg[12] <= 1'b0;
    v225_1_addr_2_reg_1535[12] <= 1'b0;
    v225_1_addr_2_reg_1535_pp0_iter2_reg[12] <= 1'b0;
    v225_1_addr_2_reg_1535_pp0_iter3_reg[12] <= 1'b0;
    v225_2_addr_2_reg_1540[12] <= 1'b0;
    v225_2_addr_2_reg_1540_pp0_iter2_reg[12] <= 1'b0;
    v225_2_addr_2_reg_1540_pp0_iter3_reg[12] <= 1'b0;
    v225_3_addr_2_reg_1546[12] <= 1'b0;
    v225_3_addr_2_reg_1546_pp0_iter2_reg[12] <= 1'b0;
    v225_3_addr_2_reg_1546_pp0_iter3_reg[12] <= 1'b0;
    v225_4_addr_2_reg_1551[12] <= 1'b0;
    v225_4_addr_2_reg_1551_pp0_iter2_reg[12] <= 1'b0;
    v225_4_addr_2_reg_1551_pp0_iter3_reg[12] <= 1'b0;
    v225_5_addr_2_reg_1556[12] <= 1'b0;
    v225_5_addr_2_reg_1556_pp0_iter2_reg[12] <= 1'b0;
    v225_5_addr_2_reg_1556_pp0_iter3_reg[12] <= 1'b0;
    v225_6_addr_2_reg_1561[12] <= 1'b0;
    v225_6_addr_2_reg_1561_pp0_iter2_reg[12] <= 1'b0;
    v225_6_addr_2_reg_1561_pp0_iter3_reg[12] <= 1'b0;
    v225_7_addr_2_reg_1566[12] <= 1'b0;
    v225_7_addr_2_reg_1566_pp0_iter2_reg[12] <= 1'b0;
    v225_7_addr_2_reg_1566_pp0_iter3_reg[12] <= 1'b0;
    v225_7_addr_2_reg_1566_pp0_iter4_reg[12] <= 1'b0;
end
endmodule 