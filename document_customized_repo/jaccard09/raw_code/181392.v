module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v229_4_address0,v229_4_ce0,v229_4_we0,v229_4_d0,v229_4_q0,v229_4_address1,v229_4_ce1,v229_4_we1,v229_4_d1,v229_4_q1,v229_5_address0,v229_5_ce0,v229_5_we0,v229_5_d0,v229_5_q0,v229_5_address1,v229_5_ce1,v229_5_we1,v229_5_d1,v229_5_q1,v229_6_address0,v229_6_ce0,v229_6_we0,v229_6_d0,v229_6_q0,v229_6_address1,v229_6_ce1,v229_6_we1,v229_6_d1,v229_6_q1,v229_7_address0,v229_7_ce0,v229_7_we0,v229_7_d0,v229_7_q0,v229_7_address1,v229_7_ce1,v229_7_we1,v229_7_d1,v229_7_q1,v4,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce); 
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
output  [12:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [12:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [12:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [12:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [12:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [12:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [12:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [12:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
output  [12:0] v229_4_address0;
output   v229_4_ce0;
output   v229_4_we0;
output  [31:0] v229_4_d0;
input  [31:0] v229_4_q0;
output  [12:0] v229_4_address1;
output   v229_4_ce1;
output   v229_4_we1;
output  [31:0] v229_4_d1;
input  [31:0] v229_4_q1;
output  [12:0] v229_5_address0;
output   v229_5_ce0;
output   v229_5_we0;
output  [31:0] v229_5_d0;
input  [31:0] v229_5_q0;
output  [12:0] v229_5_address1;
output   v229_5_ce1;
output   v229_5_we1;
output  [31:0] v229_5_d1;
input  [31:0] v229_5_q1;
output  [12:0] v229_6_address0;
output   v229_6_ce0;
output   v229_6_we0;
output  [31:0] v229_6_d0;
input  [31:0] v229_6_q0;
output  [12:0] v229_6_address1;
output   v229_6_ce1;
output   v229_6_we1;
output  [31:0] v229_6_d1;
input  [31:0] v229_6_q1;
output  [12:0] v229_7_address0;
output   v229_7_ce0;
output   v229_7_we0;
output  [31:0] v229_7_d0;
input  [31:0] v229_7_q0;
output  [12:0] v229_7_address1;
output   v229_7_ce1;
output   v229_7_we1;
output  [31:0] v229_7_d1;
input  [31:0] v229_7_q1;
input  [31:0] v4;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
output  [1:0] grp_fu_148_p_opcode;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v228_address0;
reg v228_ce0;
reg[15:0] v228_address1;
reg v228_ce1;
reg[12:0] v229_0_address0;
reg v229_0_ce0;
reg v229_0_we0;
reg[31:0] v229_0_d0;
reg[12:0] v229_0_address1;
reg v229_0_ce1;
reg v229_0_we1;
reg[31:0] v229_0_d1;
reg[12:0] v229_1_address0;
reg v229_1_ce0;
reg v229_1_we0;
reg[31:0] v229_1_d0;
reg[12:0] v229_1_address1;
reg v229_1_ce1;
reg v229_1_we1;
reg[31:0] v229_1_d1;
reg[12:0] v229_2_address0;
reg v229_2_ce0;
reg v229_2_we0;
reg[31:0] v229_2_d0;
reg[12:0] v229_2_address1;
reg v229_2_ce1;
reg v229_2_we1;
reg[31:0] v229_2_d1;
reg[12:0] v229_3_address0;
reg v229_3_ce0;
reg v229_3_we0;
reg[31:0] v229_3_d0;
reg[12:0] v229_3_address1;
reg v229_3_ce1;
reg v229_3_we1;
reg[31:0] v229_3_d1;
reg[12:0] v229_4_address0;
reg v229_4_ce0;
reg v229_4_we0;
reg[31:0] v229_4_d0;
reg[12:0] v229_4_address1;
reg v229_4_ce1;
reg v229_4_we1;
reg[31:0] v229_4_d1;
reg[12:0] v229_5_address0;
reg v229_5_ce0;
reg v229_5_we0;
reg[31:0] v229_5_d0;
reg[12:0] v229_5_address1;
reg v229_5_ce1;
reg v229_5_we1;
reg[31:0] v229_5_d1;
reg[12:0] v229_6_address0;
reg v229_6_ce0;
reg v229_6_we0;
reg[31:0] v229_6_d0;
reg[12:0] v229_6_address1;
reg v229_6_ce1;
reg v229_6_we1;
reg[31:0] v229_6_d1;
reg[12:0] v229_7_address0;
reg v229_7_ce0;
reg v229_7_we0;
reg[31:0] v229_7_d0;
reg[12:0] v229_7_address1;
reg v229_7_ce1;
reg v229_7_we1;
reg[31:0] v229_7_d1;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [31:0] reg_402;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
reg   [31:0] reg_406;
reg   [31:0] reg_410;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_414;
reg   [31:0] reg_418;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_422;
reg   [31:0] reg_426;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_430;
reg   [15:0] phi_mul_load_reg_1319;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_450_p2;
reg   [15:0] add_ln31_1_reg_1325;
wire   [7:0] add_ln31_fu_462_p2;
reg   [7:0] add_ln31_reg_1333;
wire   [15:0] zext_ln31_fu_468_p1;
reg   [15:0] zext_ln31_reg_1338;
wire   [0:0] cmp11_fu_472_p2;
reg   [0:0] cmp11_reg_1360;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_1_fu_510_p2;
reg   [7:0] add_ln32_1_reg_1379;
wire    ap_CS_fsm_state4;
reg   [4:0] tmp_9_reg_1389;
reg   [4:0] tmp_s_reg_1399;
wire    ap_CS_fsm_state5;
reg   [4:0] tmp_7_reg_1409;
reg   [4:0] tmp_10_reg_1419;
wire    ap_CS_fsm_state6;
reg   [4:0] tmp_11_reg_1439;
reg   [4:0] tmp_12_reg_1449;
reg   [4:0] tmp_13_reg_1469;
reg   [4:0] tmp_14_reg_1489;
reg   [4:0] tmp_15_reg_1499;
reg   [4:0] tmp_16_reg_1519;
reg   [4:0] tmp_17_reg_1529;
reg   [4:0] tmp_18_reg_1549;
reg   [4:0] tmp_19_reg_1559;
wire   [2:0] trunc_ln32_fu_824_p1;
reg   [2:0] trunc_ln32_reg_1564;
wire    ap_CS_fsm_state11;
wire   [4:0] lshr_ln_fu_828_p4;
reg   [4:0] lshr_ln_reg_1571;
wire   [12:0] mul_ln34_fu_842_p2;
reg   [12:0] mul_ln34_reg_1576;
wire   [12:0] mul_ln62_fu_851_p2;
reg   [12:0] mul_ln62_reg_1581;
wire   [12:0] mul_ln75_fu_860_p2;
reg   [12:0] mul_ln75_reg_1586;
wire   [12:0] mul_ln88_fu_869_p2;
reg   [12:0] mul_ln88_reg_1591;
wire   [12:0] mul_ln101_fu_878_p2;
reg   [12:0] mul_ln101_reg_1596;
wire   [12:0] mul_ln114_fu_887_p2;
reg   [12:0] mul_ln114_reg_1601;
wire   [12:0] mul_ln127_fu_896_p2;
reg   [12:0] mul_ln127_reg_1606;
wire   [12:0] mul_ln140_fu_912_p2;
reg   [12:0] mul_ln140_reg_1611;
reg   [31:0] v224_load_8_reg_1616;
reg   [31:0] v224_load_9_reg_1621;
reg   [4:0] tmp_20_reg_1641;
wire   [31:0] v11_fu_946_p1;
reg   [31:0] v11_reg_1646;
wire   [31:0] v24_fu_951_p1;
reg   [31:0] v24_reg_1651;
wire   [31:0] v35_fu_956_p1;
reg   [31:0] v35_reg_1656;
wire   [31:0] v46_fu_961_p1;
reg   [31:0] v46_reg_1661;
wire   [31:0] v57_fu_966_p1;
reg   [31:0] v57_reg_1666;
wire   [31:0] v68_fu_971_p1;
reg   [31:0] v68_reg_1671;
wire   [31:0] v79_fu_976_p1;
reg   [31:0] v79_reg_1676;
wire   [31:0] v90_fu_981_p1;
reg   [31:0] v90_reg_1681;
wire   [31:0] v101_fu_986_p1;
reg   [31:0] v101_reg_1686;
wire   [0:0] empty_146_fu_990_p2;
reg   [0:0] empty_146_reg_1691;
wire   [12:0] mul_ln34_1_fu_1023_p2;
reg   [12:0] mul_ln34_1_reg_1727;
wire   [12:0] mul_ln49_fu_1032_p2;
reg   [12:0] mul_ln49_reg_1732;
wire   [12:0] mul_ln62_1_fu_1041_p2;
reg   [12:0] mul_ln62_1_reg_1737;
wire   [12:0] mul_ln75_1_fu_1050_p2;
reg   [12:0] mul_ln75_1_reg_1742;
wire   [12:0] mul_ln88_1_fu_1059_p2;
reg   [12:0] mul_ln88_1_reg_1747;
wire   [12:0] mul_ln101_1_fu_1068_p2;
reg   [12:0] mul_ln101_1_reg_1752;
wire   [12:0] mul_ln114_1_fu_1077_p2;
reg   [12:0] mul_ln114_1_reg_1757;
wire   [12:0] mul_ln127_1_fu_1092_p2;
reg   [12:0] mul_ln127_1_reg_1762;
wire   [12:0] mul_ln140_1_fu_1101_p2;
reg   [12:0] mul_ln140_1_reg_1767;
wire   [31:0] v11_1_fu_1107_p1;
reg   [31:0] v11_1_reg_1772;
wire    ap_CS_fsm_state16;
wire   [31:0] v24_1_fu_1111_p1;
reg   [31:0] v24_1_reg_1777;
wire   [31:0] v35_1_fu_1116_p1;
reg   [31:0] v35_1_reg_1782;
wire   [31:0] v46_1_fu_1121_p1;
reg   [31:0] v46_1_reg_1787;
wire   [31:0] v57_1_fu_1126_p1;
reg   [31:0] v57_1_reg_1792;
wire   [31:0] v68_1_fu_1131_p1;
reg   [31:0] v68_1_reg_1797;
wire   [31:0] v79_1_fu_1136_p1;
reg   [31:0] v79_1_reg_1802;
wire   [31:0] v90_1_fu_1141_p1;
reg   [31:0] v90_1_reg_1807;
wire   [31:0] v101_1_fu_1146_p1;
reg   [31:0] v101_1_reg_1812;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_ready;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1817_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1817_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1817_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1817_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1821_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1821_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1821_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1821_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1825_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1825_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1825_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1825_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1829_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1829_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1829_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1829_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1833_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1833_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1833_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1833_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1837_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1837_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1837_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1837_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1841_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1841_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1841_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1841_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1845_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1845_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1845_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1845_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1849_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1849_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1849_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1849_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1853_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1853_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1853_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1853_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1857_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1857_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1857_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1857_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1861_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1861_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1861_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1861_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1865_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1865_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1865_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1865_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1869_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1869_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1869_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1869_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1873_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1873_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1873_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1877_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1877_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1877_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1881_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1881_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1881_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1885_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1885_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1885_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1889_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1889_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1889_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1893_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1893_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1893_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1897_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1897_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1897_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1901_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1901_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1901_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1905_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1905_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1905_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1909_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1909_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1909_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1913_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1913_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1913_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1917_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1917_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1917_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1921_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1921_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1921_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1925_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1925_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1925_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1929_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1929_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1929_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1933_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1933_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1933_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1937_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1937_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1937_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1941_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1941_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1941_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1945_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1945_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1945_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1949_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1949_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1949_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_ready;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_d0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1817_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1817_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1817_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1817_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1821_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1821_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1821_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1821_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1825_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1825_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1825_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1825_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1829_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1829_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1829_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1829_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1833_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1833_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1833_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1833_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1837_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1837_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1837_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1837_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1841_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1841_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1841_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1841_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1845_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1845_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1845_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1845_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1849_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1849_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1849_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1849_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1853_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1853_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1853_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1853_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1857_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1857_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1857_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1857_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1861_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1861_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1861_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1861_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1865_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1865_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1865_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1865_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1869_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1869_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1869_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1869_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1873_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1873_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1873_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1877_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1877_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1877_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1881_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1881_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1881_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1885_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1885_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1885_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1889_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1889_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1889_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1893_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1893_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1893_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1897_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1897_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1897_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1901_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1901_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1901_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1905_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1905_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1905_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1909_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1909_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1909_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1913_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1913_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1913_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1917_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1917_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1917_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1921_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1921_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1921_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1925_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1925_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1925_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1929_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1929_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1929_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1933_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1933_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1933_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1937_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1937_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1937_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1941_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1941_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1941_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1945_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1945_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1945_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1949_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1949_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1949_p_ce;
reg   [7:0] v6_reg_301;
wire    ap_CS_fsm_state17;
wire   [0:0] icmp_ln31_fu_456_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_start_reg;
wire   [63:0] p_cast3725_fu_604_p1;
wire   [63:0] p_cast_fu_608_p1;
wire   [63:0] p_cast3726_fu_652_p1;
wire   [63:0] p_cast3727_fu_656_p1;
wire   [63:0] p_cast3728_fu_680_p1;
wire   [63:0] p_cast3729_fu_684_p1;
wire   [63:0] p_cast3730_fu_728_p1;
wire   [63:0] p_cast3731_fu_732_p1;
wire   [63:0] p_cast3732_fu_776_p1;
wire   [63:0] p_cast3733_fu_780_p1;
wire   [63:0] p_cast3734_fu_918_p1;
wire   [63:0] p_cast3735_fu_922_p1;
wire   [63:0] p_cast3736_fu_996_p1;
wire   [63:0] p_cast3737_fu_1000_p1;
wire   [63:0] p_cast3738_fu_1004_p1;
wire   [63:0] p_cast3739_fu_1008_p1;
wire   [63:0] p_cast3740_fu_1012_p1;
wire   [63:0] p_cast3741_fu_1016_p1;
reg   [15:0] phi_mul_fu_128;
wire   [0:0] icmp_ln32_fu_478_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_132;
reg    v236_read_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
wire   [6:0] tmp_fu_488_p4;
wire   [7:0] tmp_8_fu_498_p3;
wire   [7:0] empty_124_fu_524_p2;
wire   [7:0] empty_127_fu_544_p2;
wire   [7:0] empty_130_fu_564_p2;
wire   [7:0] empty_133_fu_584_p2;
wire   [15:0] grp_fu_1151_p3;
wire   [15:0] grp_fu_1159_p3;
wire   [7:0] empty_136_fu_612_p2;
wire   [7:0] empty_139_fu_632_p2;
wire   [15:0] grp_fu_1167_p3;
wire   [15:0] grp_fu_1175_p3;
wire   [7:0] add_ln32_fu_660_p2;
wire   [15:0] grp_fu_1183_p3;
wire   [15:0] grp_fu_1191_p3;
wire   [7:0] empty_149_fu_688_p2;
wire   [7:0] empty_152_fu_708_p2;
wire   [15:0] grp_fu_1199_p3;
wire   [15:0] grp_fu_1207_p3;
wire   [7:0] empty_155_fu_736_p2;
wire   [7:0] empty_158_fu_756_p2;
wire   [15:0] grp_fu_1215_p4;
wire   [15:0] grp_fu_1225_p3;
wire   [7:0] empty_161_fu_784_p2;
wire   [7:0] empty_164_fu_804_p2;
wire   [4:0] mul_ln34_fu_842_p0;
wire   [8:0] mul_ln34_fu_842_p1;
wire   [4:0] mul_ln62_fu_851_p0;
wire   [8:0] mul_ln62_fu_851_p1;
wire   [4:0] mul_ln75_fu_860_p0;
wire   [8:0] mul_ln75_fu_860_p1;
wire   [4:0] mul_ln88_fu_869_p0;
wire   [8:0] mul_ln88_fu_869_p1;
wire   [4:0] mul_ln101_fu_878_p0;
wire   [8:0] mul_ln101_fu_878_p1;
wire   [4:0] mul_ln114_fu_887_p0;
wire   [8:0] mul_ln114_fu_887_p1;
wire   [4:0] mul_ln127_fu_896_p0;
wire   [8:0] mul_ln127_fu_896_p1;
wire   [4:0] empty_145_fu_902_p2;
wire   [4:0] mul_ln140_fu_912_p0;
wire   [8:0] mul_ln140_fu_912_p1;
wire   [15:0] grp_fu_1233_p3;
wire   [15:0] grp_fu_1241_p3;
wire   [7:0] empty_171_fu_926_p2;
wire   [15:0] grp_fu_1249_p3;
wire   [15:0] grp_fu_1257_p3;
wire   [15:0] grp_fu_1265_p3;
wire   [15:0] grp_fu_1273_p3;
wire   [15:0] grp_fu_1281_p4;
wire   [15:0] grp_fu_1291_p3;
wire   [4:0] mul_ln34_1_fu_1023_p0;
wire   [8:0] mul_ln34_1_fu_1023_p1;
wire   [4:0] mul_ln49_fu_1032_p0;
wire   [8:0] mul_ln49_fu_1032_p1;
wire   [4:0] mul_ln62_1_fu_1041_p0;
wire   [8:0] mul_ln62_1_fu_1041_p1;
wire   [4:0] mul_ln75_1_fu_1050_p0;
wire   [8:0] mul_ln75_1_fu_1050_p1;
wire   [4:0] mul_ln88_1_fu_1059_p0;
wire   [8:0] mul_ln88_1_fu_1059_p1;
wire   [4:0] mul_ln101_1_fu_1068_p0;
wire   [8:0] mul_ln101_1_fu_1068_p1;
wire   [4:0] mul_ln114_1_fu_1077_p0;
wire   [8:0] mul_ln114_1_fu_1077_p1;
wire   [4:0] empty_170_fu_1083_p2;
wire   [4:0] mul_ln127_1_fu_1092_p0;
wire   [8:0] mul_ln127_1_fu_1092_p1;
wire   [4:0] mul_ln140_1_fu_1101_p0;
wire   [8:0] mul_ln140_1_fu_1101_p1;
wire   [7:0] grp_fu_1151_p0;
wire   [7:0] grp_fu_1151_p1;
wire   [7:0] grp_fu_1151_p2;
wire   [7:0] grp_fu_1159_p0;
wire   [7:0] grp_fu_1159_p1;
wire   [7:0] grp_fu_1159_p2;
wire   [7:0] grp_fu_1167_p0;
wire   [7:0] grp_fu_1167_p1;
wire   [7:0] grp_fu_1167_p2;
wire   [7:0] grp_fu_1175_p0;
wire   [7:0] grp_fu_1175_p1;
wire   [7:0] grp_fu_1175_p2;
wire   [7:0] grp_fu_1183_p0;
wire   [7:0] grp_fu_1183_p1;
wire   [7:0] grp_fu_1183_p2;
wire   [7:0] grp_fu_1191_p0;
wire   [7:0] grp_fu_1191_p1;
wire   [7:0] grp_fu_1191_p2;
wire   [7:0] grp_fu_1199_p0;
wire   [7:0] grp_fu_1199_p1;
wire   [7:0] grp_fu_1199_p2;
wire   [7:0] grp_fu_1207_p0;
wire   [7:0] grp_fu_1207_p1;
wire   [7:0] grp_fu_1207_p2;
wire   [3:0] grp_fu_1215_p1;
wire   [7:0] grp_fu_1215_p2;
wire   [7:0] grp_fu_1215_p3;
wire   [7:0] grp_fu_1225_p0;
wire   [7:0] grp_fu_1225_p1;
wire   [7:0] grp_fu_1225_p2;
wire   [7:0] grp_fu_1233_p0;
wire   [7:0] grp_fu_1233_p1;
wire   [7:0] grp_fu_1233_p2;
wire   [7:0] grp_fu_1241_p0;
wire   [7:0] grp_fu_1241_p1;
wire   [7:0] grp_fu_1241_p2;
wire   [7:0] grp_fu_1249_p0;
wire   [7:0] grp_fu_1249_p1;
wire   [7:0] grp_fu_1249_p2;
wire   [7:0] grp_fu_1257_p0;
wire   [7:0] grp_fu_1257_p1;
wire   [7:0] grp_fu_1257_p2;
wire   [7:0] grp_fu_1265_p0;
wire   [7:0] grp_fu_1265_p1;
wire   [7:0] grp_fu_1265_p2;
wire   [7:0] grp_fu_1273_p0;
wire   [7:0] grp_fu_1273_p1;
wire   [7:0] grp_fu_1273_p2;
wire   [4:0] grp_fu_1281_p1;
wire   [7:0] grp_fu_1281_p2;
wire   [7:0] grp_fu_1281_p3;
wire   [7:0] grp_fu_1291_p0;
wire   [7:0] grp_fu_1291_p1;
wire   [7:0] grp_fu_1291_p2;
reg    grp_fu_1265_ce;
reg    grp_fu_1273_ce;
reg    grp_fu_1281_ce;
reg    grp_fu_1291_ce;
reg   [31:0] grp_fu_1817_p0;
reg   [31:0] grp_fu_1817_p1;
reg    grp_fu_1817_ce;
wire   [31:0] grp_fu_1821_p2;
reg   [31:0] grp_fu_1821_p0;
reg   [31:0] grp_fu_1821_p1;
reg    grp_fu_1821_ce;
wire   [31:0] grp_fu_1825_p2;
reg   [31:0] grp_fu_1825_p0;
reg   [31:0] grp_fu_1825_p1;
reg    grp_fu_1825_ce;
wire   [31:0] grp_fu_1829_p2;
reg   [31:0] grp_fu_1829_p0;
reg   [31:0] grp_fu_1829_p1;
reg    grp_fu_1829_ce;
wire   [31:0] grp_fu_1833_p2;
reg   [31:0] grp_fu_1833_p0;
reg   [31:0] grp_fu_1833_p1;
reg    grp_fu_1833_ce;
wire   [31:0] grp_fu_1837_p2;
reg   [31:0] grp_fu_1837_p0;
reg   [31:0] grp_fu_1837_p1;
reg    grp_fu_1837_ce;
wire   [31:0] grp_fu_1841_p2;
reg   [31:0] grp_fu_1841_p0;
reg   [31:0] grp_fu_1841_p1;
reg    grp_fu_1841_ce;
wire   [31:0] grp_fu_1845_p2;
reg   [31:0] grp_fu_1845_p0;
reg   [31:0] grp_fu_1845_p1;
reg    grp_fu_1845_ce;
wire   [31:0] grp_fu_1849_p2;
reg   [31:0] grp_fu_1849_p0;
reg   [31:0] grp_fu_1849_p1;
reg    grp_fu_1849_ce;
wire   [31:0] grp_fu_1853_p2;
reg   [31:0] grp_fu_1853_p0;
reg   [31:0] grp_fu_1853_p1;
reg    grp_fu_1853_ce;
wire   [31:0] grp_fu_1857_p2;
reg   [31:0] grp_fu_1857_p0;
reg   [31:0] grp_fu_1857_p1;
reg    grp_fu_1857_ce;
wire   [31:0] grp_fu_1861_p2;
reg   [31:0] grp_fu_1861_p0;
reg   [31:0] grp_fu_1861_p1;
reg    grp_fu_1861_ce;
wire   [31:0] grp_fu_1865_p2;
reg   [31:0] grp_fu_1865_p0;
reg   [31:0] grp_fu_1865_p1;
reg    grp_fu_1865_ce;
wire   [31:0] grp_fu_1869_p2;
reg   [31:0] grp_fu_1869_p0;
reg   [31:0] grp_fu_1869_p1;
reg    grp_fu_1869_ce;
reg   [31:0] grp_fu_1873_p0;
reg   [31:0] grp_fu_1873_p1;
reg    grp_fu_1873_ce;
reg   [31:0] grp_fu_1877_p0;
reg   [31:0] grp_fu_1877_p1;
reg    grp_fu_1877_ce;
wire   [31:0] grp_fu_1881_p2;
reg   [31:0] grp_fu_1881_p0;
reg   [31:0] grp_fu_1881_p1;
reg    grp_fu_1881_ce;
wire   [31:0] grp_fu_1885_p2;
reg   [31:0] grp_fu_1885_p0;
reg   [31:0] grp_fu_1885_p1;
reg    grp_fu_1885_ce;
wire   [31:0] grp_fu_1889_p2;
reg   [31:0] grp_fu_1889_p0;
reg   [31:0] grp_fu_1889_p1;
reg    grp_fu_1889_ce;
wire   [31:0] grp_fu_1893_p2;
reg   [31:0] grp_fu_1893_p0;
reg   [31:0] grp_fu_1893_p1;
reg    grp_fu_1893_ce;
wire   [31:0] grp_fu_1897_p2;
reg   [31:0] grp_fu_1897_p0;
reg   [31:0] grp_fu_1897_p1;
reg    grp_fu_1897_ce;
wire   [31:0] grp_fu_1901_p2;
reg   [31:0] grp_fu_1901_p0;
reg   [31:0] grp_fu_1901_p1;
reg    grp_fu_1901_ce;
wire   [31:0] grp_fu_1905_p2;
reg   [31:0] grp_fu_1905_p0;
reg   [31:0] grp_fu_1905_p1;
reg    grp_fu_1905_ce;
wire   [31:0] grp_fu_1909_p2;
reg   [31:0] grp_fu_1909_p0;
reg   [31:0] grp_fu_1909_p1;
reg    grp_fu_1909_ce;
wire   [31:0] grp_fu_1913_p2;
reg   [31:0] grp_fu_1913_p0;
reg   [31:0] grp_fu_1913_p1;
reg    grp_fu_1913_ce;
wire   [31:0] grp_fu_1917_p2;
reg   [31:0] grp_fu_1917_p0;
reg   [31:0] grp_fu_1917_p1;
reg    grp_fu_1917_ce;
wire   [31:0] grp_fu_1921_p2;
reg   [31:0] grp_fu_1921_p0;
reg   [31:0] grp_fu_1921_p1;
reg    grp_fu_1921_ce;
wire   [31:0] grp_fu_1925_p2;
reg   [31:0] grp_fu_1925_p0;
reg   [31:0] grp_fu_1925_p1;
reg    grp_fu_1925_ce;
wire   [31:0] grp_fu_1929_p2;
reg   [31:0] grp_fu_1929_p0;
reg   [31:0] grp_fu_1929_p1;
reg    grp_fu_1929_ce;
wire   [31:0] grp_fu_1933_p2;
reg   [31:0] grp_fu_1933_p0;
reg   [31:0] grp_fu_1933_p1;
reg    grp_fu_1933_ce;
wire   [31:0] grp_fu_1937_p2;
reg   [31:0] grp_fu_1937_p0;
reg   [31:0] grp_fu_1937_p1;
reg    grp_fu_1937_ce;
wire   [31:0] grp_fu_1941_p2;
reg   [31:0] grp_fu_1941_p0;
reg   [31:0] grp_fu_1941_p1;
reg    grp_fu_1941_ce;
wire   [31:0] grp_fu_1945_p2;
reg   [31:0] grp_fu_1945_p0;
reg   [31:0] grp_fu_1945_p1;
reg    grp_fu_1945_ce;
wire   [31:0] grp_fu_1949_p2;
reg   [31:0] grp_fu_1949_p0;
reg   [31:0] grp_fu_1949_p1;
reg    grp_fu_1949_ce;
reg   [16:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
reg    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire   [15:0] grp_fu_1151_p00;
wire   [15:0] grp_fu_1159_p00;
wire   [15:0] grp_fu_1167_p00;
wire   [15:0] grp_fu_1175_p00;
wire   [15:0] grp_fu_1183_p00;
wire   [15:0] grp_fu_1191_p00;
wire   [15:0] grp_fu_1199_p00;
wire   [15:0] grp_fu_1207_p00;
wire   [15:0] grp_fu_1225_p00;
wire   [15:0] grp_fu_1233_p00;
wire   [15:0] grp_fu_1241_p00;
wire   [15:0] grp_fu_1249_p00;
wire   [15:0] grp_fu_1257_p00;
wire   [15:0] grp_fu_1265_p00;
wire   [15:0] grp_fu_1273_p00;
wire   [15:0] grp_fu_1291_p00;
wire   [12:0] mul_ln101_1_fu_1068_p00;
wire   [12:0] mul_ln101_fu_878_p00;
wire   [12:0] mul_ln114_1_fu_1077_p00;
wire   [12:0] mul_ln114_fu_887_p00;
wire   [12:0] mul_ln127_1_fu_1092_p00;
wire   [12:0] mul_ln127_fu_896_p00;
wire   [12:0] mul_ln140_1_fu_1101_p00;
wire   [12:0] mul_ln140_fu_912_p00;
wire   [12:0] mul_ln34_1_fu_1023_p00;
wire   [12:0] mul_ln34_fu_842_p00;
wire   [12:0] mul_ln49_fu_1032_p00;
wire   [12:0] mul_ln62_1_fu_1041_p00;
wire   [12:0] mul_ln62_fu_851_p00;
wire   [12:0] mul_ln75_1_fu_1050_p00;
wire   [12:0] mul_ln75_fu_860_p00;
wire   [12:0] mul_ln88_1_fu_1059_p00;
wire   [12:0] mul_ln88_fu_869_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_start_reg = 1'b0;
#0 phi_mul_fu_128 = 16'd0;
#0 v5_fu_132 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_313(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_4_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_address0),.v229_4_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_ce0),.v229_4_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_we0),.v229_4_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_d0),.v229_4_q0(v229_4_q0),.v229_4_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_address1),.v229_4_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_ce1),.v229_4_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_we1),.v229_4_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_d1),.v229_4_q1(v229_4_q1),.v229_5_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_address0),.v229_5_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_ce0),.v229_5_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_we0),.v229_5_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_d0),.v229_5_q0(v229_5_q0),.v229_5_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_address1),.v229_5_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_ce1),.v229_5_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_we1),.v229_5_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_d1),.v229_5_q1(v229_5_q1),.v229_6_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_address0),.v229_6_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_ce0),.v229_6_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_we0),.v229_6_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_d0),.v229_6_q0(v229_6_q0),.v229_6_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_address1),.v229_6_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_ce1),.v229_6_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_we1),.v229_6_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_d1),.v229_6_q1(v229_6_q1),.v229_7_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_address0),.v229_7_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_ce0),.v229_7_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_we0),.v229_7_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_d0),.v229_7_q0(v229_7_q0),.v229_7_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_address1),.v229_7_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_ce1),.v229_7_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_we1),.v229_7_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_d1),.v229_7_q1(v229_7_q1),.phi_mul(phi_mul_load_reg_1319),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_1576),.mul_ln140(mul_ln140_reg_1611),.mul_ln114(mul_ln114_reg_1601),.mul_ln88(mul_ln88_reg_1591),.mul_ln62(mul_ln62_reg_1581),.mul_ln127(mul_ln127_reg_1606),.mul_ln101(mul_ln101_reg_1596),.mul_ln75(mul_ln75_reg_1586),.empty_18(trunc_ln32_reg_1564),.v4(v4),.cmp11(cmp11_reg_1360),.v11(v11_reg_1646),.v24(v24_reg_1651),.v35(v35_reg_1656),.v46(v46_reg_1661),.v57(v57_reg_1666),.v68(v68_reg_1671),.v79(v79_reg_1676),.v90(v90_reg_1681),.v101(v101_reg_1686),.empty(empty_146_reg_1691),.grp_fu_1817_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1817_p_din0),.grp_fu_1817_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1817_p_din1),.grp_fu_1817_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1817_p_opcode),.grp_fu_1817_p_dout0(grp_fu_148_p_dout0),.grp_fu_1817_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1817_p_ce),.grp_fu_1821_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1821_p_din0),.grp_fu_1821_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1821_p_din1),.grp_fu_1821_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1821_p_opcode),.grp_fu_1821_p_dout0(grp_fu_1821_p2),.grp_fu_1821_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1821_p_ce),.grp_fu_1825_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1825_p_din0),.grp_fu_1825_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1825_p_din1),.grp_fu_1825_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1825_p_opcode),.grp_fu_1825_p_dout0(grp_fu_1825_p2),.grp_fu_1825_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1825_p_ce),.grp_fu_1829_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1829_p_din0),.grp_fu_1829_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1829_p_din1),.grp_fu_1829_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1829_p_opcode),.grp_fu_1829_p_dout0(grp_fu_1829_p2),.grp_fu_1829_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1829_p_ce),.grp_fu_1833_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1833_p_din0),.grp_fu_1833_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1833_p_din1),.grp_fu_1833_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1833_p_opcode),.grp_fu_1833_p_dout0(grp_fu_1833_p2),.grp_fu_1833_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1833_p_ce),.grp_fu_1837_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1837_p_din0),.grp_fu_1837_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1837_p_din1),.grp_fu_1837_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1837_p_opcode),.grp_fu_1837_p_dout0(grp_fu_1837_p2),.grp_fu_1837_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1837_p_ce),.grp_fu_1841_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1841_p_din0),.grp_fu_1841_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1841_p_din1),.grp_fu_1841_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1841_p_opcode),.grp_fu_1841_p_dout0(grp_fu_1841_p2),.grp_fu_1841_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1841_p_ce),.grp_fu_1845_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1845_p_din0),.grp_fu_1845_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1845_p_din1),.grp_fu_1845_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1845_p_opcode),.grp_fu_1845_p_dout0(grp_fu_1845_p2),.grp_fu_1845_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1845_p_ce),.grp_fu_1849_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1849_p_din0),.grp_fu_1849_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1849_p_din1),.grp_fu_1849_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1849_p_opcode),.grp_fu_1849_p_dout0(grp_fu_1849_p2),.grp_fu_1849_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1849_p_ce),.grp_fu_1853_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1853_p_din0),.grp_fu_1853_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1853_p_din1),.grp_fu_1853_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1853_p_opcode),.grp_fu_1853_p_dout0(grp_fu_1853_p2),.grp_fu_1853_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1853_p_ce),.grp_fu_1857_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1857_p_din0),.grp_fu_1857_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1857_p_din1),.grp_fu_1857_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1857_p_opcode),.grp_fu_1857_p_dout0(grp_fu_1857_p2),.grp_fu_1857_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1857_p_ce),.grp_fu_1861_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1861_p_din0),.grp_fu_1861_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1861_p_din1),.grp_fu_1861_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1861_p_opcode),.grp_fu_1861_p_dout0(grp_fu_1861_p2),.grp_fu_1861_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1861_p_ce),.grp_fu_1865_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1865_p_din0),.grp_fu_1865_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1865_p_din1),.grp_fu_1865_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1865_p_opcode),.grp_fu_1865_p_dout0(grp_fu_1865_p2),.grp_fu_1865_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1865_p_ce),.grp_fu_1869_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1869_p_din0),.grp_fu_1869_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1869_p_din1),.grp_fu_1869_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1869_p_opcode),.grp_fu_1869_p_dout0(grp_fu_1869_p2),.grp_fu_1869_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1869_p_ce),.grp_fu_1873_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1873_p_din0),.grp_fu_1873_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1873_p_din1),.grp_fu_1873_p_dout0(grp_fu_152_p_dout0),.grp_fu_1873_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1873_p_ce),.grp_fu_1877_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1877_p_din0),.grp_fu_1877_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1877_p_din1),.grp_fu_1877_p_dout0(grp_fu_156_p_dout0),.grp_fu_1877_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1877_p_ce),.grp_fu_1881_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1881_p_din0),.grp_fu_1881_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1881_p_din1),.grp_fu_1881_p_dout0(grp_fu_1881_p2),.grp_fu_1881_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1881_p_ce),.grp_fu_1885_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1885_p_din0),.grp_fu_1885_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1885_p_din1),.grp_fu_1885_p_dout0(grp_fu_1885_p2),.grp_fu_1885_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1885_p_ce),.grp_fu_1889_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1889_p_din0),.grp_fu_1889_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1889_p_din1),.grp_fu_1889_p_dout0(grp_fu_1889_p2),.grp_fu_1889_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1889_p_ce),.grp_fu_1893_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1893_p_din0),.grp_fu_1893_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1893_p_din1),.grp_fu_1893_p_dout0(grp_fu_1893_p2),.grp_fu_1893_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1893_p_ce),.grp_fu_1897_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1897_p_din0),.grp_fu_1897_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1897_p_din1),.grp_fu_1897_p_dout0(grp_fu_1897_p2),.grp_fu_1897_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1897_p_ce),.grp_fu_1901_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1901_p_din0),.grp_fu_1901_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1901_p_din1),.grp_fu_1901_p_dout0(grp_fu_1901_p2),.grp_fu_1901_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1901_p_ce),.grp_fu_1905_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1905_p_din0),.grp_fu_1905_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1905_p_din1),.grp_fu_1905_p_dout0(grp_fu_1905_p2),.grp_fu_1905_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1905_p_ce),.grp_fu_1909_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1909_p_din0),.grp_fu_1909_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1909_p_din1),.grp_fu_1909_p_dout0(grp_fu_1909_p2),.grp_fu_1909_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1909_p_ce),.grp_fu_1913_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1913_p_din0),.grp_fu_1913_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1913_p_din1),.grp_fu_1913_p_dout0(grp_fu_1913_p2),.grp_fu_1913_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1913_p_ce),.grp_fu_1917_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1917_p_din0),.grp_fu_1917_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1917_p_din1),.grp_fu_1917_p_dout0(grp_fu_1917_p2),.grp_fu_1917_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1917_p_ce),.grp_fu_1921_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1921_p_din0),.grp_fu_1921_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1921_p_din1),.grp_fu_1921_p_dout0(grp_fu_1921_p2),.grp_fu_1921_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1921_p_ce),.grp_fu_1925_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1925_p_din0),.grp_fu_1925_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1925_p_din1),.grp_fu_1925_p_dout0(grp_fu_1925_p2),.grp_fu_1925_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1925_p_ce),.grp_fu_1929_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1929_p_din0),.grp_fu_1929_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1929_p_din1),.grp_fu_1929_p_dout0(grp_fu_1929_p2),.grp_fu_1929_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1929_p_ce),.grp_fu_1933_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1933_p_din0),.grp_fu_1933_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1933_p_din1),.grp_fu_1933_p_dout0(grp_fu_1933_p2),.grp_fu_1933_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1933_p_ce),.grp_fu_1937_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1937_p_din0),.grp_fu_1937_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1937_p_din1),.grp_fu_1937_p_dout0(grp_fu_1937_p2),.grp_fu_1937_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1937_p_ce),.grp_fu_1941_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1941_p_din0),.grp_fu_1941_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1941_p_din1),.grp_fu_1941_p_dout0(grp_fu_1941_p2),.grp_fu_1941_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1941_p_ce),.grp_fu_1945_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1945_p_din0),.grp_fu_1945_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1945_p_din1),.grp_fu_1945_p_dout0(grp_fu_1945_p2),.grp_fu_1945_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1945_p_ce),.grp_fu_1949_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1949_p_din0),.grp_fu_1949_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1949_p_din1),.grp_fu_1949_p_dout0(grp_fu_1949_p2),.grp_fu_1949_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1949_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_26 grp_kernel_2mm_node0_Pipeline_label_26_fu_357(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_d1),.v229_3_q1(v229_3_q1),.v229_4_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_address0),.v229_4_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_ce0),.v229_4_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_we0),.v229_4_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_d0),.v229_4_q0(v229_4_q0),.v229_4_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_address1),.v229_4_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_ce1),.v229_4_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_we1),.v229_4_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_d1),.v229_4_q1(v229_4_q1),.v229_5_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_address0),.v229_5_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_ce0),.v229_5_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_we0),.v229_5_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_d0),.v229_5_q0(v229_5_q0),.v229_5_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_address1),.v229_5_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_ce1),.v229_5_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_we1),.v229_5_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_d1),.v229_5_q1(v229_5_q1),.v229_6_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_address0),.v229_6_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_ce0),.v229_6_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_we0),.v229_6_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_d0),.v229_6_q0(v229_6_q0),.v229_6_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_address1),.v229_6_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_ce1),.v229_6_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_we1),.v229_6_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_d1),.v229_6_q1(v229_6_q1),.v229_7_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_address0),.v229_7_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_ce0),.v229_7_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_we0),.v229_7_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_d0),.v229_7_q0(v229_7_q0),.v229_7_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_address1),.v229_7_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_ce1),.v229_7_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_we1),.v229_7_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_d1),.v229_7_q1(v229_7_q1),.phi_mul(phi_mul_load_reg_1319),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v228_ce1),.v228_q1(v228_q1),.mul_ln49(mul_ln49_reg_1732),.mul_ln127_1(mul_ln127_1_reg_1762),.mul_ln101_1(mul_ln101_1_reg_1752),.mul_ln75_1(mul_ln75_1_reg_1742),.mul_ln34_1(mul_ln34_1_reg_1727),.mul_ln140_1(mul_ln140_1_reg_1767),.mul_ln114_1(mul_ln114_1_reg_1757),.mul_ln88_1(mul_ln88_1_reg_1747),.mul_ln62_1(mul_ln62_1_reg_1737),.empty_17(trunc_ln32_reg_1564),.v4(v4),.cmp11(cmp11_reg_1360),.v11_1(v11_1_reg_1772),.v24_1(v24_1_reg_1777),.v35_1(v35_1_reg_1782),.v46_1(v46_1_reg_1787),.v57_1(v57_1_reg_1792),.v68_1(v68_1_reg_1797),.v79_1(v79_1_reg_1802),.v90_1(v90_1_reg_1807),.v101_1(v101_1_reg_1812),.empty(empty_146_reg_1691),.grp_fu_1817_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1817_p_din0),.grp_fu_1817_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1817_p_din1),.grp_fu_1817_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1817_p_opcode),.grp_fu_1817_p_dout0(grp_fu_148_p_dout0),.grp_fu_1817_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1817_p_ce),.grp_fu_1821_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1821_p_din0),.grp_fu_1821_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1821_p_din1),.grp_fu_1821_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1821_p_opcode),.grp_fu_1821_p_dout0(grp_fu_1821_p2),.grp_fu_1821_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1821_p_ce),.grp_fu_1825_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1825_p_din0),.grp_fu_1825_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1825_p_din1),.grp_fu_1825_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1825_p_opcode),.grp_fu_1825_p_dout0(grp_fu_1825_p2),.grp_fu_1825_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1825_p_ce),.grp_fu_1829_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1829_p_din0),.grp_fu_1829_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1829_p_din1),.grp_fu_1829_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1829_p_opcode),.grp_fu_1829_p_dout0(grp_fu_1829_p2),.grp_fu_1829_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1829_p_ce),.grp_fu_1833_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1833_p_din0),.grp_fu_1833_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1833_p_din1),.grp_fu_1833_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1833_p_opcode),.grp_fu_1833_p_dout0(grp_fu_1833_p2),.grp_fu_1833_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1833_p_ce),.grp_fu_1837_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1837_p_din0),.grp_fu_1837_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1837_p_din1),.grp_fu_1837_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1837_p_opcode),.grp_fu_1837_p_dout0(grp_fu_1837_p2),.grp_fu_1837_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1837_p_ce),.grp_fu_1841_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1841_p_din0),.grp_fu_1841_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1841_p_din1),.grp_fu_1841_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1841_p_opcode),.grp_fu_1841_p_dout0(grp_fu_1841_p2),.grp_fu_1841_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1841_p_ce),.grp_fu_1845_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1845_p_din0),.grp_fu_1845_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1845_p_din1),.grp_fu_1845_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1845_p_opcode),.grp_fu_1845_p_dout0(grp_fu_1845_p2),.grp_fu_1845_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1845_p_ce),.grp_fu_1849_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1849_p_din0),.grp_fu_1849_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1849_p_din1),.grp_fu_1849_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1849_p_opcode),.grp_fu_1849_p_dout0(grp_fu_1849_p2),.grp_fu_1849_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1849_p_ce),.grp_fu_1853_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1853_p_din0),.grp_fu_1853_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1853_p_din1),.grp_fu_1853_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1853_p_opcode),.grp_fu_1853_p_dout0(grp_fu_1853_p2),.grp_fu_1853_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1853_p_ce),.grp_fu_1857_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1857_p_din0),.grp_fu_1857_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1857_p_din1),.grp_fu_1857_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1857_p_opcode),.grp_fu_1857_p_dout0(grp_fu_1857_p2),.grp_fu_1857_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1857_p_ce),.grp_fu_1861_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1861_p_din0),.grp_fu_1861_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1861_p_din1),.grp_fu_1861_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1861_p_opcode),.grp_fu_1861_p_dout0(grp_fu_1861_p2),.grp_fu_1861_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1861_p_ce),.grp_fu_1865_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1865_p_din0),.grp_fu_1865_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1865_p_din1),.grp_fu_1865_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1865_p_opcode),.grp_fu_1865_p_dout0(grp_fu_1865_p2),.grp_fu_1865_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1865_p_ce),.grp_fu_1869_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1869_p_din0),.grp_fu_1869_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1869_p_din1),.grp_fu_1869_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1869_p_opcode),.grp_fu_1869_p_dout0(grp_fu_1869_p2),.grp_fu_1869_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1869_p_ce),.grp_fu_1873_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1873_p_din0),.grp_fu_1873_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1873_p_din1),.grp_fu_1873_p_dout0(grp_fu_152_p_dout0),.grp_fu_1873_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1873_p_ce),.grp_fu_1877_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1877_p_din0),.grp_fu_1877_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1877_p_din1),.grp_fu_1877_p_dout0(grp_fu_156_p_dout0),.grp_fu_1877_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1877_p_ce),.grp_fu_1881_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1881_p_din0),.grp_fu_1881_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1881_p_din1),.grp_fu_1881_p_dout0(grp_fu_1881_p2),.grp_fu_1881_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1881_p_ce),.grp_fu_1885_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1885_p_din0),.grp_fu_1885_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1885_p_din1),.grp_fu_1885_p_dout0(grp_fu_1885_p2),.grp_fu_1885_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1885_p_ce),.grp_fu_1889_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1889_p_din0),.grp_fu_1889_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1889_p_din1),.grp_fu_1889_p_dout0(grp_fu_1889_p2),.grp_fu_1889_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1889_p_ce),.grp_fu_1893_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1893_p_din0),.grp_fu_1893_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1893_p_din1),.grp_fu_1893_p_dout0(grp_fu_1893_p2),.grp_fu_1893_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1893_p_ce),.grp_fu_1897_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1897_p_din0),.grp_fu_1897_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1897_p_din1),.grp_fu_1897_p_dout0(grp_fu_1897_p2),.grp_fu_1897_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1897_p_ce),.grp_fu_1901_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1901_p_din0),.grp_fu_1901_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1901_p_din1),.grp_fu_1901_p_dout0(grp_fu_1901_p2),.grp_fu_1901_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1901_p_ce),.grp_fu_1905_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1905_p_din0),.grp_fu_1905_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1905_p_din1),.grp_fu_1905_p_dout0(grp_fu_1905_p2),.grp_fu_1905_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1905_p_ce),.grp_fu_1909_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1909_p_din0),.grp_fu_1909_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1909_p_din1),.grp_fu_1909_p_dout0(grp_fu_1909_p2),.grp_fu_1909_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1909_p_ce),.grp_fu_1913_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1913_p_din0),.grp_fu_1913_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1913_p_din1),.grp_fu_1913_p_dout0(grp_fu_1913_p2),.grp_fu_1913_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1913_p_ce),.grp_fu_1917_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1917_p_din0),.grp_fu_1917_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1917_p_din1),.grp_fu_1917_p_dout0(grp_fu_1917_p2),.grp_fu_1917_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1917_p_ce),.grp_fu_1921_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1921_p_din0),.grp_fu_1921_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1921_p_din1),.grp_fu_1921_p_dout0(grp_fu_1921_p2),.grp_fu_1921_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1921_p_ce),.grp_fu_1925_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1925_p_din0),.grp_fu_1925_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1925_p_din1),.grp_fu_1925_p_dout0(grp_fu_1925_p2),.grp_fu_1925_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1925_p_ce),.grp_fu_1929_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1929_p_din0),.grp_fu_1929_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1929_p_din1),.grp_fu_1929_p_dout0(grp_fu_1929_p2),.grp_fu_1929_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1929_p_ce),.grp_fu_1933_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1933_p_din0),.grp_fu_1933_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1933_p_din1),.grp_fu_1933_p_dout0(grp_fu_1933_p2),.grp_fu_1933_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1933_p_ce),.grp_fu_1937_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1937_p_din0),.grp_fu_1937_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1937_p_din1),.grp_fu_1937_p_dout0(grp_fu_1937_p2),.grp_fu_1937_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1937_p_ce),.grp_fu_1941_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1941_p_din0),.grp_fu_1941_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1941_p_din1),.grp_fu_1941_p_dout0(grp_fu_1941_p2),.grp_fu_1941_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1941_p_ce),.grp_fu_1945_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1945_p_din0),.grp_fu_1945_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1945_p_din1),.grp_fu_1945_p_dout0(grp_fu_1945_p2),.grp_fu_1945_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1945_p_ce),.grp_fu_1949_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1949_p_din0),.grp_fu_1949_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1949_p_din1),.grp_fu_1949_p_dout0(grp_fu_1949_p2),.grp_fu_1949_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1949_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U289(.din0(mul_ln34_fu_842_p0),.din1(mul_ln34_fu_842_p1),.dout(mul_ln34_fu_842_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U290(.din0(mul_ln62_fu_851_p0),.din1(mul_ln62_fu_851_p1),.dout(mul_ln62_fu_851_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U291(.din0(mul_ln75_fu_860_p0),.din1(mul_ln75_fu_860_p1),.dout(mul_ln75_fu_860_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U292(.din0(mul_ln88_fu_869_p0),.din1(mul_ln88_fu_869_p1),.dout(mul_ln88_fu_869_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U293(.din0(mul_ln101_fu_878_p0),.din1(mul_ln101_fu_878_p1),.dout(mul_ln101_fu_878_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U294(.din0(mul_ln114_fu_887_p0),.din1(mul_ln114_fu_887_p1),.dout(mul_ln114_fu_887_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U295(.din0(mul_ln127_fu_896_p0),.din1(mul_ln127_fu_896_p1),.dout(mul_ln127_fu_896_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U296(.din0(mul_ln140_fu_912_p0),.din1(mul_ln140_fu_912_p1),.dout(mul_ln140_fu_912_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U297(.din0(mul_ln34_1_fu_1023_p0),.din1(mul_ln34_1_fu_1023_p1),.dout(mul_ln34_1_fu_1023_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U298(.din0(mul_ln49_fu_1032_p0),.din1(mul_ln49_fu_1032_p1),.dout(mul_ln49_fu_1032_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U299(.din0(mul_ln62_1_fu_1041_p0),.din1(mul_ln62_1_fu_1041_p1),.dout(mul_ln62_1_fu_1041_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U300(.din0(mul_ln75_1_fu_1050_p0),.din1(mul_ln75_1_fu_1050_p1),.dout(mul_ln75_1_fu_1050_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U301(.din0(mul_ln88_1_fu_1059_p0),.din1(mul_ln88_1_fu_1059_p1),.dout(mul_ln88_1_fu_1059_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U302(.din0(mul_ln101_1_fu_1068_p0),.din1(mul_ln101_1_fu_1068_p1),.dout(mul_ln101_1_fu_1068_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U303(.din0(mul_ln114_1_fu_1077_p0),.din1(mul_ln114_1_fu_1077_p1),.dout(mul_ln114_1_fu_1077_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U304(.din0(mul_ln127_1_fu_1092_p0),.din1(mul_ln127_1_fu_1092_p1),.dout(mul_ln127_1_fu_1092_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U305(.din0(mul_ln140_1_fu_1101_p0),.din1(mul_ln140_1_fu_1101_p1),.dout(mul_ln140_1_fu_1101_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U306(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1151_p0),.din1(grp_fu_1151_p1),.din2(grp_fu_1151_p2),.ce(1'b1),.dout(grp_fu_1151_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U307(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1159_p0),.din1(grp_fu_1159_p1),.din2(grp_fu_1159_p2),.ce(1'b1),.dout(grp_fu_1159_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U308(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1167_p0),.din1(grp_fu_1167_p1),.din2(grp_fu_1167_p2),.ce(1'b1),.dout(grp_fu_1167_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U309(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1175_p0),.din1(grp_fu_1175_p1),.din2(grp_fu_1175_p2),.ce(1'b1),.dout(grp_fu_1175_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U310(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1183_p0),.din1(grp_fu_1183_p1),.din2(grp_fu_1183_p2),.ce(1'b1),.dout(grp_fu_1183_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U311(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1191_p0),.din1(grp_fu_1191_p1),.din2(grp_fu_1191_p2),.ce(1'b1),.dout(grp_fu_1191_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U312(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1199_p0),.din1(grp_fu_1199_p1),.din2(grp_fu_1199_p2),.ce(1'b1),.dout(grp_fu_1199_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U313(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1207_p0),.din1(grp_fu_1207_p1),.din2(grp_fu_1207_p2),.ce(1'b1),.dout(grp_fu_1207_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U314(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_301),.din1(grp_fu_1215_p1),.din2(grp_fu_1215_p2),.din3(grp_fu_1215_p3),.ce(1'b1),.dout(grp_fu_1215_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U315(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1225_p0),.din1(grp_fu_1225_p1),.din2(grp_fu_1225_p2),.ce(1'b1),.dout(grp_fu_1225_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U316(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1233_p0),.din1(grp_fu_1233_p1),.din2(grp_fu_1233_p2),.ce(1'b1),.dout(grp_fu_1233_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U317(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1241_p0),.din1(grp_fu_1241_p1),.din2(grp_fu_1241_p2),.ce(1'b1),.dout(grp_fu_1241_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U318(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1249_p0),.din1(grp_fu_1249_p1),.din2(grp_fu_1249_p2),.ce(1'b1),.dout(grp_fu_1249_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U319(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1257_p0),.din1(grp_fu_1257_p1),.din2(grp_fu_1257_p2),.ce(1'b1),.dout(grp_fu_1257_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U320(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1265_p0),.din1(grp_fu_1265_p1),.din2(grp_fu_1265_p2),.ce(grp_fu_1265_ce),.dout(grp_fu_1265_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U321(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1273_p0),.din1(grp_fu_1273_p1),.din2(grp_fu_1273_p2),.ce(grp_fu_1273_ce),.dout(grp_fu_1273_p3));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U322(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_301),.din1(grp_fu_1281_p1),.din2(grp_fu_1281_p2),.din3(grp_fu_1281_p3),.ce(grp_fu_1281_ce),.dout(grp_fu_1281_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U323(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1291_p0),.din1(grp_fu_1291_p1),.din2(grp_fu_1291_p2),.ce(grp_fu_1291_ce),.dout(grp_fu_1291_p3));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U325(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1821_p0),.din1(grp_fu_1821_p1),.ce(grp_fu_1821_ce),.dout(grp_fu_1821_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U326(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1825_p0),.din1(grp_fu_1825_p1),.ce(grp_fu_1825_ce),.dout(grp_fu_1825_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U327(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1829_p0),.din1(grp_fu_1829_p1),.ce(grp_fu_1829_ce),.dout(grp_fu_1829_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U328(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1833_p0),.din1(grp_fu_1833_p1),.ce(grp_fu_1833_ce),.dout(grp_fu_1833_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U329(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1837_p0),.din1(grp_fu_1837_p1),.ce(grp_fu_1837_ce),.dout(grp_fu_1837_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U330(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1841_p0),.din1(grp_fu_1841_p1),.ce(grp_fu_1841_ce),.dout(grp_fu_1841_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U331(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1845_p0),.din1(grp_fu_1845_p1),.ce(grp_fu_1845_ce),.dout(grp_fu_1845_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U332(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1849_p0),.din1(grp_fu_1849_p1),.ce(grp_fu_1849_ce),.dout(grp_fu_1849_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U333(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1853_p0),.din1(grp_fu_1853_p1),.ce(grp_fu_1853_ce),.dout(grp_fu_1853_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U334(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1857_p0),.din1(grp_fu_1857_p1),.ce(grp_fu_1857_ce),.dout(grp_fu_1857_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U335(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1861_p0),.din1(grp_fu_1861_p1),.ce(grp_fu_1861_ce),.dout(grp_fu_1861_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U336(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1865_p0),.din1(grp_fu_1865_p1),.ce(grp_fu_1865_ce),.dout(grp_fu_1865_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U337(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1869_p0),.din1(grp_fu_1869_p1),.ce(grp_fu_1869_ce),.dout(grp_fu_1869_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U340(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1881_p0),.din1(grp_fu_1881_p1),.ce(grp_fu_1881_ce),.dout(grp_fu_1881_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U341(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1885_p0),.din1(grp_fu_1885_p1),.ce(grp_fu_1885_ce),.dout(grp_fu_1885_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U342(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1889_p0),.din1(grp_fu_1889_p1),.ce(grp_fu_1889_ce),.dout(grp_fu_1889_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U343(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1893_p0),.din1(grp_fu_1893_p1),.ce(grp_fu_1893_ce),.dout(grp_fu_1893_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U344(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1897_p0),.din1(grp_fu_1897_p1),.ce(grp_fu_1897_ce),.dout(grp_fu_1897_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U345(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1901_p0),.din1(grp_fu_1901_p1),.ce(grp_fu_1901_ce),.dout(grp_fu_1901_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U346(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1905_p0),.din1(grp_fu_1905_p1),.ce(grp_fu_1905_ce),.dout(grp_fu_1905_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U347(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1909_p0),.din1(grp_fu_1909_p1),.ce(grp_fu_1909_ce),.dout(grp_fu_1909_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U348(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1913_p0),.din1(grp_fu_1913_p1),.ce(grp_fu_1913_ce),.dout(grp_fu_1913_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U349(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1917_p0),.din1(grp_fu_1917_p1),.ce(grp_fu_1917_ce),.dout(grp_fu_1917_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U350(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1921_p0),.din1(grp_fu_1921_p1),.ce(grp_fu_1921_ce),.dout(grp_fu_1921_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U351(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1925_p0),.din1(grp_fu_1925_p1),.ce(grp_fu_1925_ce),.dout(grp_fu_1925_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U352(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1929_p0),.din1(grp_fu_1929_p1),.ce(grp_fu_1929_ce),.dout(grp_fu_1929_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U353(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1933_p0),.din1(grp_fu_1933_p1),.ce(grp_fu_1933_ce),.dout(grp_fu_1933_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U354(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1937_p0),.din1(grp_fu_1937_p1),.ce(grp_fu_1937_ce),.dout(grp_fu_1937_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U355(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1941_p0),.din1(grp_fu_1941_p1),.ce(grp_fu_1941_ce),.dout(grp_fu_1941_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U356(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1945_p0),.din1(grp_fu_1945_p1),.ce(grp_fu_1945_ce),.dout(grp_fu_1945_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U357(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1949_p0),.din1(grp_fu_1949_p1),.ce(grp_fu_1949_ce),.dout(grp_fu_1949_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        phi_mul_fu_128 <= 16'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_478_p2 == 1'd0))) begin
        phi_mul_fu_128 <= add_ln31_1_reg_1325;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v5_fu_132 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_478_p2 == 1'd0))) begin
        v5_fu_132 <= add_ln31_reg_1333;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_456_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_301 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v6_reg_301 <= add_ln32_1_reg_1379;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_1325 <= add_ln31_1_fu_450_p2;
        add_ln31_reg_1333 <= add_ln31_fu_462_p2;
        cmp11_reg_1360 <= cmp11_fu_472_p2;
        phi_mul_load_reg_1319 <= phi_mul_fu_128;
        zext_ln31_reg_1338[7 : 0] <= zext_ln31_fu_468_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_1379 <= add_ln32_1_fu_510_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_146_reg_1691 <= empty_146_fu_990_p2;
        v101_reg_1686 <= v101_fu_986_p1;
        v11_reg_1646 <= v11_fu_946_p1;
        v24_reg_1651 <= v24_fu_951_p1;
        v35_reg_1656 <= v35_fu_956_p1;
        v46_reg_1661 <= v46_fu_961_p1;
        v57_reg_1666 <= v57_fu_966_p1;
        v68_reg_1671 <= v68_fu_971_p1;
        v79_reg_1676 <= v79_fu_976_p1;
        v90_reg_1681 <= v90_fu_981_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        lshr_ln_reg_1571 <= {{v6_reg_301[7:3]}};
        mul_ln101_reg_1596 <= mul_ln101_fu_878_p2;
        mul_ln114_reg_1601 <= mul_ln114_fu_887_p2;
        mul_ln127_reg_1606 <= mul_ln127_fu_896_p2;
        mul_ln140_reg_1611 <= mul_ln140_fu_912_p2;
        mul_ln34_reg_1576 <= mul_ln34_fu_842_p2;
        mul_ln62_reg_1581 <= mul_ln62_fu_851_p2;
        mul_ln75_reg_1586 <= mul_ln75_fu_860_p2;
        mul_ln88_reg_1591 <= mul_ln88_fu_869_p2;
        tmp_20_reg_1641 <= {{empty_171_fu_926_p2[7:3]}};
        trunc_ln32_reg_1564 <= trunc_ln32_fu_824_p1;
        v224_load_8_reg_1616 <= v224_q1;
        v224_load_9_reg_1621 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln101_1_reg_1752 <= mul_ln101_1_fu_1068_p2;
        mul_ln114_1_reg_1757 <= mul_ln114_1_fu_1077_p2;
        mul_ln127_1_reg_1762 <= mul_ln127_1_fu_1092_p2;
        mul_ln140_1_reg_1767 <= mul_ln140_1_fu_1101_p2;
        mul_ln34_1_reg_1727 <= mul_ln34_1_fu_1023_p2;
        mul_ln49_reg_1732 <= mul_ln49_fu_1032_p2;
        mul_ln62_1_reg_1737 <= mul_ln62_1_fu_1041_p2;
        mul_ln75_1_reg_1742 <= mul_ln75_1_fu_1050_p2;
        mul_ln88_1_reg_1747 <= mul_ln88_1_fu_1059_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_402 <= v224_q1;
        reg_406 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_410 <= v224_q1;
        reg_414 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_418 <= v224_q1;
        reg_422 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_426 <= v224_q1;
        reg_430 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_10_reg_1419 <= {{empty_133_fu_584_p2[7:3]}};
        tmp_7_reg_1409 <= {{empty_130_fu_564_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_11_reg_1439 <= {{empty_136_fu_612_p2[7:3]}};
        tmp_12_reg_1449 <= {{empty_139_fu_632_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_13_reg_1469 <= {{add_ln32_fu_660_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_14_reg_1489 <= {{empty_149_fu_688_p2[7:3]}};
        tmp_15_reg_1499 <= {{empty_152_fu_708_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_16_reg_1519 <= {{empty_155_fu_736_p2[7:3]}};
        tmp_17_reg_1529 <= {{empty_158_fu_756_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp_18_reg_1549 <= {{empty_161_fu_784_p2[7:3]}};
        tmp_19_reg_1559 <= {{empty_164_fu_804_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_9_reg_1389 <= {{empty_124_fu_524_p2[7:3]}};
        tmp_s_reg_1399 <= {{empty_127_fu_544_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v101_1_reg_1812 <= v101_1_fu_1146_p1;
        v11_1_reg_1772 <= v11_1_fu_1107_p1;
        v24_1_reg_1777 <= v24_1_fu_1111_p1;
        v35_1_reg_1782 <= v35_1_fu_1116_p1;
        v46_1_reg_1787 <= v46_1_fu_1121_p1;
        v57_1_reg_1792 <= v57_1_fu_1126_p1;
        v68_1_reg_1797 <= v68_1_fu_1131_p1;
        v79_1_reg_1802 <= v79_1_fu_1136_p1;
        v90_1_reg_1807 <= v90_1_fu_1141_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_456_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln31_fu_456_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1265_ce = 1'b1;
    end else begin
        grp_fu_1265_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1273_ce = 1'b1;
    end else begin
        grp_fu_1273_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1281_ce = 1'b1;
    end else begin
        grp_fu_1281_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1291_ce = 1'b1;
    end else begin
        grp_fu_1291_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1817_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1817_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1817_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1817_p_ce;
    end else begin
        grp_fu_1817_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1817_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1817_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1817_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1817_p_din0;
    end else begin
        grp_fu_1817_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1817_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1817_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1817_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1817_p_din1;
    end else begin
        grp_fu_1817_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1821_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1821_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1821_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1821_p_ce;
    end else begin
        grp_fu_1821_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1821_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1821_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1821_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1821_p_din0;
    end else begin
        grp_fu_1821_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1821_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1821_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1821_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1821_p_din1;
    end else begin
        grp_fu_1821_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1825_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1825_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1825_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1825_p_ce;
    end else begin
        grp_fu_1825_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1825_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1825_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1825_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1825_p_din0;
    end else begin
        grp_fu_1825_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1825_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1825_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1825_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1825_p_din1;
    end else begin
        grp_fu_1825_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1829_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1829_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1829_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1829_p_ce;
    end else begin
        grp_fu_1829_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1829_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1829_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1829_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1829_p_din0;
    end else begin
        grp_fu_1829_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1829_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1829_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1829_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1829_p_din1;
    end else begin
        grp_fu_1829_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1833_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1833_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1833_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1833_p_ce;
    end else begin
        grp_fu_1833_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1833_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1833_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1833_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1833_p_din0;
    end else begin
        grp_fu_1833_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1833_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1833_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1833_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1833_p_din1;
    end else begin
        grp_fu_1833_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1837_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1837_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1837_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1837_p_ce;
    end else begin
        grp_fu_1837_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1837_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1837_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1837_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1837_p_din0;
    end else begin
        grp_fu_1837_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1837_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1837_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1837_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1837_p_din1;
    end else begin
        grp_fu_1837_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1841_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1841_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1841_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1841_p_ce;
    end else begin
        grp_fu_1841_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1841_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1841_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1841_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1841_p_din0;
    end else begin
        grp_fu_1841_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1841_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1841_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1841_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1841_p_din1;
    end else begin
        grp_fu_1841_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1845_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1845_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1845_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1845_p_ce;
    end else begin
        grp_fu_1845_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1845_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1845_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1845_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1845_p_din0;
    end else begin
        grp_fu_1845_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1845_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1845_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1845_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1845_p_din1;
    end else begin
        grp_fu_1845_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1849_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1849_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1849_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1849_p_ce;
    end else begin
        grp_fu_1849_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1849_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1849_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1849_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1849_p_din0;
    end else begin
        grp_fu_1849_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1849_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1849_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1849_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1849_p_din1;
    end else begin
        grp_fu_1849_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1853_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1853_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1853_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1853_p_ce;
    end else begin
        grp_fu_1853_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1853_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1853_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1853_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1853_p_din0;
    end else begin
        grp_fu_1853_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1853_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1853_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1853_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1853_p_din1;
    end else begin
        grp_fu_1853_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1857_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1857_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1857_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1857_p_ce;
    end else begin
        grp_fu_1857_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1857_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1857_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1857_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1857_p_din0;
    end else begin
        grp_fu_1857_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1857_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1857_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1857_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1857_p_din1;
    end else begin
        grp_fu_1857_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1861_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1861_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1861_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1861_p_ce;
    end else begin
        grp_fu_1861_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1861_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1861_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1861_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1861_p_din0;
    end else begin
        grp_fu_1861_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1861_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1861_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1861_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1861_p_din1;
    end else begin
        grp_fu_1861_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1865_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1865_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1865_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1865_p_ce;
    end else begin
        grp_fu_1865_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1865_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1865_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1865_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1865_p_din0;
    end else begin
        grp_fu_1865_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1865_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1865_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1865_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1865_p_din1;
    end else begin
        grp_fu_1865_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1869_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1869_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1869_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1869_p_ce;
    end else begin
        grp_fu_1869_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1869_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1869_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1869_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1869_p_din0;
    end else begin
        grp_fu_1869_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1869_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1869_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1869_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1869_p_din1;
    end else begin
        grp_fu_1869_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1873_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1873_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1873_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1873_p_ce;
    end else begin
        grp_fu_1873_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1873_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1873_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1873_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1873_p_din0;
    end else begin
        grp_fu_1873_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1873_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1873_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1873_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1873_p_din1;
    end else begin
        grp_fu_1873_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1877_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1877_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1877_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1877_p_ce;
    end else begin
        grp_fu_1877_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1877_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1877_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1877_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1877_p_din0;
    end else begin
        grp_fu_1877_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1877_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1877_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1877_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1877_p_din1;
    end else begin
        grp_fu_1877_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1881_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1881_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1881_p_ce;
    end else begin
        grp_fu_1881_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1881_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1881_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1881_p_din0;
    end else begin
        grp_fu_1881_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1881_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1881_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1881_p_din1;
    end else begin
        grp_fu_1881_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1885_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1885_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1885_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1885_p_ce;
    end else begin
        grp_fu_1885_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1885_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1885_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1885_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1885_p_din0;
    end else begin
        grp_fu_1885_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1885_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1885_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1885_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1885_p_din1;
    end else begin
        grp_fu_1885_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1889_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1889_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1889_p_ce;
    end else begin
        grp_fu_1889_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1889_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1889_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1889_p_din0;
    end else begin
        grp_fu_1889_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1889_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1889_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1889_p_din1;
    end else begin
        grp_fu_1889_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1893_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1893_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1893_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1893_p_ce;
    end else begin
        grp_fu_1893_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1893_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1893_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1893_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1893_p_din0;
    end else begin
        grp_fu_1893_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1893_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1893_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1893_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1893_p_din1;
    end else begin
        grp_fu_1893_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1897_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1897_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1897_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1897_p_ce;
    end else begin
        grp_fu_1897_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1897_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1897_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1897_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1897_p_din0;
    end else begin
        grp_fu_1897_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1897_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1897_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1897_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1897_p_din1;
    end else begin
        grp_fu_1897_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1901_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1901_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1901_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1901_p_ce;
    end else begin
        grp_fu_1901_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1901_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1901_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1901_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1901_p_din0;
    end else begin
        grp_fu_1901_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1901_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1901_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1901_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1901_p_din1;
    end else begin
        grp_fu_1901_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1905_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1905_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1905_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1905_p_ce;
    end else begin
        grp_fu_1905_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1905_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1905_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1905_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1905_p_din0;
    end else begin
        grp_fu_1905_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1905_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1905_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1905_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1905_p_din1;
    end else begin
        grp_fu_1905_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1909_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1909_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1909_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1909_p_ce;
    end else begin
        grp_fu_1909_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1909_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1909_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1909_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1909_p_din0;
    end else begin
        grp_fu_1909_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1909_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1909_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1909_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1909_p_din1;
    end else begin
        grp_fu_1909_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1913_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1913_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1913_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1913_p_ce;
    end else begin
        grp_fu_1913_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1913_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1913_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1913_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1913_p_din0;
    end else begin
        grp_fu_1913_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1913_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1913_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1913_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1913_p_din1;
    end else begin
        grp_fu_1913_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1917_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1917_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1917_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1917_p_ce;
    end else begin
        grp_fu_1917_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1917_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1917_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1917_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1917_p_din0;
    end else begin
        grp_fu_1917_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1917_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1917_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1917_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1917_p_din1;
    end else begin
        grp_fu_1917_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1921_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1921_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1921_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1921_p_ce;
    end else begin
        grp_fu_1921_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1921_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1921_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1921_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1921_p_din0;
    end else begin
        grp_fu_1921_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1921_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1921_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1921_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1921_p_din1;
    end else begin
        grp_fu_1921_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1925_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1925_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1925_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1925_p_ce;
    end else begin
        grp_fu_1925_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1925_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1925_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1925_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1925_p_din0;
    end else begin
        grp_fu_1925_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1925_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1925_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1925_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1925_p_din1;
    end else begin
        grp_fu_1925_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1929_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1929_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1929_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1929_p_ce;
    end else begin
        grp_fu_1929_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1929_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1929_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1929_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1929_p_din0;
    end else begin
        grp_fu_1929_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1929_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1929_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1929_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1929_p_din1;
    end else begin
        grp_fu_1929_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1933_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1933_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1933_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1933_p_ce;
    end else begin
        grp_fu_1933_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1933_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1933_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1933_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1933_p_din0;
    end else begin
        grp_fu_1933_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1933_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1933_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1933_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1933_p_din1;
    end else begin
        grp_fu_1933_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1937_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1937_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1937_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1937_p_ce;
    end else begin
        grp_fu_1937_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1937_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1937_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1937_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1937_p_din0;
    end else begin
        grp_fu_1937_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1937_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1937_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1937_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1937_p_din1;
    end else begin
        grp_fu_1937_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1941_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1941_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1941_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1941_p_ce;
    end else begin
        grp_fu_1941_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1941_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1941_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1941_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1941_p_din0;
    end else begin
        grp_fu_1941_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1941_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1941_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1941_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1941_p_din1;
    end else begin
        grp_fu_1941_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1945_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1945_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1945_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1945_p_ce;
    end else begin
        grp_fu_1945_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1945_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1945_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1945_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1945_p_din0;
    end else begin
        grp_fu_1945_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1945_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1945_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1945_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1945_p_din1;
    end else begin
        grp_fu_1945_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1949_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1949_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1949_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1949_p_ce;
    end else begin
        grp_fu_1949_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1949_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1949_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1949_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1949_p_din0;
    end else begin
        grp_fu_1949_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1949_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_grp_fu_1949_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1949_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_grp_fu_1949_p_din1;
    end else begin
        grp_fu_1949_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address0_local = p_cast3741_fu_1016_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address0_local = p_cast3739_fu_1008_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address0_local = p_cast3737_fu_1000_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address0_local = p_cast3735_fu_922_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast3733_fu_780_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast3731_fu_732_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast3729_fu_684_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast3727_fu_656_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast_fu_608_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address1_local = p_cast3740_fu_1012_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_address1_local = p_cast3738_fu_1004_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address1_local = p_cast3736_fu_996_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_address1_local = p_cast3734_fu_918_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast3732_fu_776_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast3730_fu_728_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast3728_fu_680_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast3726_fu_652_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1_local = p_cast3725_fu_604_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_address0;
    end else begin
        v229_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_address1;
    end else begin
        v229_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_ce0;
    end else begin
        v229_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_ce1;
    end else begin
        v229_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_d0;
    end else begin
        v229_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_d1;
    end else begin
        v229_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_we0;
    end else begin
        v229_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_2_we1;
    end else begin
        v229_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_address0;
    end else begin
        v229_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_address1;
    end else begin
        v229_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_ce0;
    end else begin
        v229_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_ce1;
    end else begin
        v229_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_d0;
    end else begin
        v229_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_d1;
    end else begin
        v229_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_we0;
    end else begin
        v229_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_3_we1;
    end else begin
        v229_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_4_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_address0;
    end else begin
        v229_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_4_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_address1;
    end else begin
        v229_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_ce0;
    end else begin
        v229_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_ce1;
    end else begin
        v229_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_4_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_d0;
    end else begin
        v229_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_4_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_d1;
    end else begin
        v229_4_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_4_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_we0;
    end else begin
        v229_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_4_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_4_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_4_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_4_we1;
    end else begin
        v229_4_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_5_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_address0;
    end else begin
        v229_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_5_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_address1;
    end else begin
        v229_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_ce0;
    end else begin
        v229_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_ce1;
    end else begin
        v229_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_5_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_d0;
    end else begin
        v229_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_5_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_d1;
    end else begin
        v229_5_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_5_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_we0;
    end else begin
        v229_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_5_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_5_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_5_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_5_we1;
    end else begin
        v229_5_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_6_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_address0;
    end else begin
        v229_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_6_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_address1;
    end else begin
        v229_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_ce0;
    end else begin
        v229_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_ce1;
    end else begin
        v229_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_6_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_d0;
    end else begin
        v229_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_6_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_d1;
    end else begin
        v229_6_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_6_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_we0;
    end else begin
        v229_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_6_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_6_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_6_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_6_we1;
    end else begin
        v229_6_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_7_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_address0;
    end else begin
        v229_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_7_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_address1;
    end else begin
        v229_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_ce0;
    end else begin
        v229_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_ce1;
    end else begin
        v229_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_7_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_d0;
    end else begin
        v229_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_7_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_d1;
    end else begin
        v229_7_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_7_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_we0;
    end else begin
        v229_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_7_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_v229_7_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_7_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_v229_7_we1;
    end else begin
        v229_7_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v236_blk_n = v236_empty_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v236_read_local = 1'b1;
    end else begin
        v236_read_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln31_fu_456_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_478_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_450_p2 = (phi_mul_fu_128 + 16'd220);
assign add_ln31_fu_462_p2 = (v5_fu_132 + 8'd1);
assign add_ln32_1_fu_510_p2 = (v6_reg_301 + 8'd18);
assign add_ln32_fu_660_p2 = (v6_reg_301 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_fu_472_p2 = ((v5_fu_132 == 8'd0) ? 1'b1 : 1'b0);
assign empty_124_fu_524_p2 = (v6_reg_301 + 8'd2);
assign empty_127_fu_544_p2 = (v6_reg_301 + 8'd3);
assign empty_130_fu_564_p2 = (v6_reg_301 + 8'd4);
assign empty_133_fu_584_p2 = (v6_reg_301 + 8'd5);
assign empty_136_fu_612_p2 = (v6_reg_301 + 8'd6);
assign empty_139_fu_632_p2 = (v6_reg_301 + 8'd7);
assign empty_145_fu_902_p2 = (lshr_ln_fu_828_p4 + 5'd1);
assign empty_146_fu_990_p2 = ((trunc_ln32_reg_1564 == 3'd6) ? 1'b1 : 1'b0);
assign empty_149_fu_688_p2 = (v6_reg_301 + 8'd10);
assign empty_152_fu_708_p2 = (v6_reg_301 + 8'd11);
assign empty_155_fu_736_p2 = (v6_reg_301 + 8'd12);
assign empty_158_fu_756_p2 = (v6_reg_301 + 8'd13);
assign empty_161_fu_784_p2 = (v6_reg_301 + 8'd14);
assign empty_164_fu_804_p2 = (v6_reg_301 + 8'd15);
assign empty_170_fu_1083_p2 = (lshr_ln_reg_1571 + 5'd2);
assign empty_171_fu_926_p2 = (v6_reg_301 + 8'd17);
assign grp_fu_1151_p0 = grp_fu_1151_p00;
assign grp_fu_1151_p00 = v6_reg_301;
assign grp_fu_1151_p1 = 16'd190;
assign grp_fu_1151_p2 = zext_ln31_reg_1338;
assign grp_fu_1159_p0 = grp_fu_1159_p00;
assign grp_fu_1159_p00 = tmp_8_fu_498_p3;
assign grp_fu_1159_p1 = 16'd190;
assign grp_fu_1159_p2 = zext_ln31_reg_1338;
assign grp_fu_1167_p0 = grp_fu_1167_p00;
assign grp_fu_1167_p00 = empty_124_fu_524_p2;
assign grp_fu_1167_p1 = 16'd190;
assign grp_fu_1167_p2 = zext_ln31_reg_1338;
assign grp_fu_1175_p0 = grp_fu_1175_p00;
assign grp_fu_1175_p00 = empty_127_fu_544_p2;
assign grp_fu_1175_p1 = 16'd190;
assign grp_fu_1175_p2 = zext_ln31_reg_1338;
assign grp_fu_1183_p0 = grp_fu_1183_p00;
assign grp_fu_1183_p00 = empty_130_fu_564_p2;
assign grp_fu_1183_p1 = 16'd190;
assign grp_fu_1183_p2 = zext_ln31_reg_1338;
assign grp_fu_1191_p0 = grp_fu_1191_p00;
assign grp_fu_1191_p00 = empty_133_fu_584_p2;
assign grp_fu_1191_p1 = 16'd190;
assign grp_fu_1191_p2 = zext_ln31_reg_1338;
assign grp_fu_1199_p0 = grp_fu_1199_p00;
assign grp_fu_1199_p00 = empty_136_fu_612_p2;
assign grp_fu_1199_p1 = 16'd190;
assign grp_fu_1199_p2 = zext_ln31_reg_1338;
assign grp_fu_1207_p0 = grp_fu_1207_p00;
assign grp_fu_1207_p00 = empty_139_fu_632_p2;
assign grp_fu_1207_p1 = 16'd190;
assign grp_fu_1207_p2 = zext_ln31_reg_1338;
assign grp_fu_1215_p1 = 8'd8;
assign grp_fu_1215_p2 = 16'd190;
assign grp_fu_1215_p3 = zext_ln31_reg_1338;
assign grp_fu_1225_p0 = grp_fu_1225_p00;
assign grp_fu_1225_p00 = add_ln32_fu_660_p2;
assign grp_fu_1225_p1 = 16'd190;
assign grp_fu_1225_p2 = zext_ln31_reg_1338;
assign grp_fu_1233_p0 = grp_fu_1233_p00;
assign grp_fu_1233_p00 = empty_149_fu_688_p2;
assign grp_fu_1233_p1 = 16'd190;
assign grp_fu_1233_p2 = zext_ln31_reg_1338;
assign grp_fu_1241_p0 = grp_fu_1241_p00;
assign grp_fu_1241_p00 = empty_152_fu_708_p2;
assign grp_fu_1241_p1 = 16'd190;
assign grp_fu_1241_p2 = zext_ln31_reg_1338;
assign grp_fu_1249_p0 = grp_fu_1249_p00;
assign grp_fu_1249_p00 = empty_155_fu_736_p2;
assign grp_fu_1249_p1 = 16'd190;
assign grp_fu_1249_p2 = zext_ln31_reg_1338;
assign grp_fu_1257_p0 = grp_fu_1257_p00;
assign grp_fu_1257_p00 = empty_158_fu_756_p2;
assign grp_fu_1257_p1 = 16'd190;
assign grp_fu_1257_p2 = zext_ln31_reg_1338;
assign grp_fu_1265_p0 = grp_fu_1265_p00;
assign grp_fu_1265_p00 = empty_161_fu_784_p2;
assign grp_fu_1265_p1 = 16'd190;
assign grp_fu_1265_p2 = zext_ln31_reg_1338;
assign grp_fu_1273_p0 = grp_fu_1273_p00;
assign grp_fu_1273_p00 = empty_164_fu_804_p2;
assign grp_fu_1273_p1 = 16'd190;
assign grp_fu_1273_p2 = zext_ln31_reg_1338;
assign grp_fu_1281_p1 = 8'd16;
assign grp_fu_1281_p2 = 16'd190;
assign grp_fu_1281_p3 = zext_ln31_reg_1338;
assign grp_fu_1291_p0 = grp_fu_1291_p00;
assign grp_fu_1291_p00 = empty_171_fu_926_p2;
assign grp_fu_1291_p1 = 16'd190;
assign grp_fu_1291_p2 = zext_ln31_reg_1338;
assign grp_fu_148_p_ce = grp_fu_1817_ce;
assign grp_fu_148_p_din0 = grp_fu_1817_p0;
assign grp_fu_148_p_din1 = grp_fu_1817_p1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_1873_ce;
assign grp_fu_152_p_din0 = grp_fu_1873_p0;
assign grp_fu_152_p_din1 = grp_fu_1873_p1;
assign grp_fu_156_p_ce = grp_fu_1877_ce;
assign grp_fu_156_p_din0 = grp_fu_1877_p0;
assign grp_fu_156_p_din1 = grp_fu_1877_p1;
assign grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_start = grp_kernel_2mm_node0_Pipeline_label_26_fu_357_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_313_ap_start_reg;
assign icmp_ln31_fu_456_p2 = ((v5_fu_132 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_478_p2 = ((v6_reg_301 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_828_p4 = {{v6_reg_301[7:3]}};
assign mul_ln101_1_fu_1068_p0 = mul_ln101_1_fu_1068_p00;
assign mul_ln101_1_fu_1068_p00 = tmp_18_reg_1549;
assign mul_ln101_1_fu_1068_p1 = 13'd220;
assign mul_ln101_fu_878_p0 = mul_ln101_fu_878_p00;
assign mul_ln101_fu_878_p00 = tmp_10_reg_1419;
assign mul_ln101_fu_878_p1 = 13'd220;
assign mul_ln114_1_fu_1077_p0 = mul_ln114_1_fu_1077_p00;
assign mul_ln114_1_fu_1077_p00 = tmp_19_reg_1559;
assign mul_ln114_1_fu_1077_p1 = 13'd220;
assign mul_ln114_fu_887_p0 = mul_ln114_fu_887_p00;
assign mul_ln114_fu_887_p00 = tmp_11_reg_1439;
assign mul_ln114_fu_887_p1 = 13'd220;
assign mul_ln127_1_fu_1092_p0 = mul_ln127_1_fu_1092_p00;
assign mul_ln127_1_fu_1092_p00 = empty_170_fu_1083_p2;
assign mul_ln127_1_fu_1092_p1 = 13'd220;
assign mul_ln127_fu_896_p0 = mul_ln127_fu_896_p00;
assign mul_ln127_fu_896_p00 = tmp_12_reg_1449;
assign mul_ln127_fu_896_p1 = 13'd220;
assign mul_ln140_1_fu_1101_p0 = mul_ln140_1_fu_1101_p00;
assign mul_ln140_1_fu_1101_p00 = tmp_20_reg_1641;
assign mul_ln140_1_fu_1101_p1 = 13'd220;
assign mul_ln140_fu_912_p0 = mul_ln140_fu_912_p00;
assign mul_ln140_fu_912_p00 = empty_145_fu_902_p2;
assign mul_ln140_fu_912_p1 = 13'd220;
assign mul_ln34_1_fu_1023_p0 = mul_ln34_1_fu_1023_p00;
assign mul_ln34_1_fu_1023_p00 = tmp_13_reg_1469;
assign mul_ln34_1_fu_1023_p1 = 13'd220;
assign mul_ln34_fu_842_p0 = mul_ln34_fu_842_p00;
assign mul_ln34_fu_842_p00 = lshr_ln_fu_828_p4;
assign mul_ln34_fu_842_p1 = 13'd220;
assign mul_ln49_fu_1032_p0 = mul_ln49_fu_1032_p00;
assign mul_ln49_fu_1032_p00 = tmp_14_reg_1489;
assign mul_ln49_fu_1032_p1 = 13'd220;
assign mul_ln62_1_fu_1041_p0 = mul_ln62_1_fu_1041_p00;
assign mul_ln62_1_fu_1041_p00 = tmp_15_reg_1499;
assign mul_ln62_1_fu_1041_p1 = 13'd220;
assign mul_ln62_fu_851_p0 = mul_ln62_fu_851_p00;
assign mul_ln62_fu_851_p00 = tmp_9_reg_1389;
assign mul_ln62_fu_851_p1 = 13'd220;
assign mul_ln75_1_fu_1050_p0 = mul_ln75_1_fu_1050_p00;
assign mul_ln75_1_fu_1050_p00 = tmp_16_reg_1519;
assign mul_ln75_1_fu_1050_p1 = 13'd220;
assign mul_ln75_fu_860_p0 = mul_ln75_fu_860_p00;
assign mul_ln75_fu_860_p00 = tmp_s_reg_1399;
assign mul_ln75_fu_860_p1 = 13'd220;
assign mul_ln88_1_fu_1059_p0 = mul_ln88_1_fu_1059_p00;
assign mul_ln88_1_fu_1059_p00 = tmp_17_reg_1529;
assign mul_ln88_1_fu_1059_p1 = 13'd220;
assign mul_ln88_fu_869_p0 = mul_ln88_fu_869_p00;
assign mul_ln88_fu_869_p00 = tmp_7_reg_1409;
assign mul_ln88_fu_869_p1 = 13'd220;
assign p_cast3725_fu_604_p1 = grp_fu_1151_p3;
assign p_cast3726_fu_652_p1 = grp_fu_1167_p3;
assign p_cast3727_fu_656_p1 = grp_fu_1175_p3;
assign p_cast3728_fu_680_p1 = grp_fu_1183_p3;
assign p_cast3729_fu_684_p1 = grp_fu_1191_p3;
assign p_cast3730_fu_728_p1 = grp_fu_1199_p3;
assign p_cast3731_fu_732_p1 = grp_fu_1207_p3;
assign p_cast3732_fu_776_p1 = grp_fu_1215_p4;
assign p_cast3733_fu_780_p1 = grp_fu_1225_p3;
assign p_cast3734_fu_918_p1 = grp_fu_1233_p3;
assign p_cast3735_fu_922_p1 = grp_fu_1241_p3;
assign p_cast3736_fu_996_p1 = grp_fu_1249_p3;
assign p_cast3737_fu_1000_p1 = grp_fu_1257_p3;
assign p_cast3738_fu_1004_p1 = grp_fu_1265_p3;
assign p_cast3739_fu_1008_p1 = grp_fu_1273_p3;
assign p_cast3740_fu_1012_p1 = grp_fu_1281_p4;
assign p_cast3741_fu_1016_p1 = grp_fu_1291_p3;
assign p_cast_fu_608_p1 = grp_fu_1159_p3;
assign tmp_8_fu_498_p3 = {{tmp_fu_488_p4}, {1'd1}};
assign tmp_fu_488_p4 = {{v6_reg_301[7:1]}};
assign trunc_ln32_fu_824_p1 = v6_reg_301[2:0];
assign v101_1_fu_1146_p1 = reg_430;
assign v101_fu_986_p1 = v224_load_8_reg_1616;
assign v11_1_fu_1107_p1 = v224_load_9_reg_1621;
assign v11_fu_946_p1 = reg_402;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_1111_p1 = reg_402;
assign v24_fu_951_p1 = reg_406;
assign v35_1_fu_1116_p1 = reg_406;
assign v35_fu_956_p1 = reg_410;
assign v46_1_fu_1121_p1 = reg_410;
assign v46_fu_961_p1 = reg_414;
assign v57_1_fu_1126_p1 = reg_414;
assign v57_fu_966_p1 = reg_418;
assign v68_1_fu_1131_p1 = reg_418;
assign v68_fu_971_p1 = reg_422;
assign v79_1_fu_1136_p1 = reg_422;
assign v79_fu_976_p1 = reg_426;
assign v90_1_fu_1141_p1 = reg_426;
assign v90_fu_981_p1 = reg_430;
assign zext_ln31_fu_468_p1 = v5_fu_132;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1338[15:8] <= 8'b00000000;
end
endmodule 