module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v4,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_opcode,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_opcode,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce); 
parameter    ap_ST_fsm_state1 = 24'd1;
parameter    ap_ST_fsm_state2 = 24'd2;
parameter    ap_ST_fsm_state3 = 24'd4;
parameter    ap_ST_fsm_state4 = 24'd8;
parameter    ap_ST_fsm_state5 = 24'd16;
parameter    ap_ST_fsm_state6 = 24'd32;
parameter    ap_ST_fsm_state7 = 24'd64;
parameter    ap_ST_fsm_state8 = 24'd128;
parameter    ap_ST_fsm_state9 = 24'd256;
parameter    ap_ST_fsm_state10 = 24'd512;
parameter    ap_ST_fsm_state11 = 24'd1024;
parameter    ap_ST_fsm_state12 = 24'd2048;
parameter    ap_ST_fsm_state13 = 24'd4096;
parameter    ap_ST_fsm_state14 = 24'd8192;
parameter    ap_ST_fsm_state15 = 24'd16384;
parameter    ap_ST_fsm_state16 = 24'd32768;
parameter    ap_ST_fsm_state17 = 24'd65536;
parameter    ap_ST_fsm_state18 = 24'd131072;
parameter    ap_ST_fsm_state19 = 24'd262144;
parameter    ap_ST_fsm_state20 = 24'd524288;
parameter    ap_ST_fsm_state21 = 24'd1048576;
parameter    ap_ST_fsm_state22 = 24'd2097152;
parameter    ap_ST_fsm_state23 = 24'd4194304;
parameter    ap_ST_fsm_state24 = 24'd8388608;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [14:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [14:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [14:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [14:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [12:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [12:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [12:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [12:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [12:0] v228_2_address0;
output   v228_2_ce0;
input  [31:0] v228_2_q0;
output  [12:0] v228_2_address1;
output   v228_2_ce1;
input  [31:0] v228_2_q1;
output  [12:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [12:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
output  [12:0] v228_4_address0;
output   v228_4_ce0;
input  [31:0] v228_4_q0;
output  [12:0] v228_4_address1;
output   v228_4_ce1;
input  [31:0] v228_4_q1;
output  [12:0] v228_5_address0;
output   v228_5_ce0;
input  [31:0] v228_5_q0;
output  [12:0] v228_5_address1;
output   v228_5_ce1;
input  [31:0] v228_5_q1;
output  [12:0] v228_6_address0;
output   v228_6_ce0;
input  [31:0] v228_6_q0;
output  [12:0] v228_6_address1;
output   v228_6_ce1;
input  [31:0] v228_6_q1;
output  [12:0] v228_7_address0;
output   v228_7_ce0;
input  [31:0] v228_7_q0;
output  [12:0] v228_7_address1;
output   v228_7_ce1;
input  [31:0] v228_7_q1;
output  [13:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [13:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [13:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [13:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
output  [13:0] v229_2_address0;
output   v229_2_ce0;
output   v229_2_we0;
output  [31:0] v229_2_d0;
input  [31:0] v229_2_q0;
output  [13:0] v229_2_address1;
output   v229_2_ce1;
output   v229_2_we1;
output  [31:0] v229_2_d1;
input  [31:0] v229_2_q1;
output  [13:0] v229_3_address0;
output   v229_3_ce0;
output   v229_3_we0;
output  [31:0] v229_3_d0;
input  [31:0] v229_3_q0;
output  [13:0] v229_3_address1;
output   v229_3_ce1;
output   v229_3_we1;
output  [31:0] v229_3_d1;
input  [31:0] v229_3_q1;
input  [31:0] v4;
output  [31:0] grp_fu_208_p_din0;
output  [31:0] grp_fu_208_p_din1;
output  [1:0] grp_fu_208_p_opcode;
input  [31:0] grp_fu_208_p_dout0;
output   grp_fu_208_p_ce;
output  [31:0] grp_fu_212_p_din0;
output  [31:0] grp_fu_212_p_din1;
output  [1:0] grp_fu_212_p_opcode;
input  [31:0] grp_fu_212_p_dout0;
output   grp_fu_212_p_ce;
output  [31:0] grp_fu_216_p_din0;
output  [31:0] grp_fu_216_p_din1;
input  [31:0] grp_fu_216_p_dout0;
output   grp_fu_216_p_ce;
output  [31:0] grp_fu_220_p_din0;
output  [31:0] grp_fu_220_p_din1;
input  [31:0] grp_fu_220_p_dout0;
output   grp_fu_220_p_ce;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
input  [31:0] grp_fu_192_p_dout0;
output   grp_fu_192_p_ce;
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
output  [31:0] grp_fu_200_p_din0;
output  [31:0] grp_fu_200_p_din1;
input  [31:0] grp_fu_200_p_dout0;
output   grp_fu_200_p_ce;
output  [31:0] grp_fu_204_p_din0;
output  [31:0] grp_fu_204_p_din1;
input  [31:0] grp_fu_204_p_dout0;
output   grp_fu_204_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[13:0] v229_0_address0;
reg v229_0_ce0;
reg v229_0_we0;
reg[31:0] v229_0_d0;
reg[13:0] v229_0_address1;
reg v229_0_ce1;
reg v229_0_we1;
reg[31:0] v229_0_d1;
reg[13:0] v229_1_address0;
reg v229_1_ce0;
reg v229_1_we0;
reg[31:0] v229_1_d0;
reg[13:0] v229_1_address1;
reg v229_1_ce1;
reg v229_1_we1;
reg[31:0] v229_1_d1;
reg[13:0] v229_2_address0;
reg v229_2_ce0;
reg v229_2_we0;
reg[31:0] v229_2_d0;
reg[13:0] v229_2_address1;
reg v229_2_ce1;
reg v229_2_we1;
reg[31:0] v229_2_d1;
reg[13:0] v229_3_address0;
reg v229_3_ce0;
reg v229_3_we0;
reg[31:0] v229_3_d0;
reg[13:0] v229_3_address1;
reg v229_3_ce1;
reg v229_3_we1;
reg[31:0] v229_3_d1;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [2:0] trunc_ln31_fu_418_p1;
reg   [2:0] trunc_ln31_reg_1290;
wire    ap_CS_fsm_state2;
wire   [12:0] mul_ln38_fu_436_p2;
reg   [12:0] mul_ln38_reg_1296;
wire   [14:0] zext_ln31_fu_452_p1;
reg   [14:0] zext_ln31_reg_1302;
wire   [0:0] cmp11_fu_456_p2;
reg   [0:0] cmp11_reg_1324;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_472_p2;
reg   [7:0] add_ln32_reg_1337;
wire    ap_CS_fsm_state4;
reg   [5:0] tmp_reg_1347;
reg   [5:0] tmp_s_reg_1357;
wire    ap_CS_fsm_state5;
reg   [5:0] tmp_19_reg_1367;
wire    ap_CS_fsm_state6;
reg   [5:0] tmp_20_reg_1382;
reg   [5:0] tmp_21_reg_1392;
reg   [31:0] v224_0_load_reg_1397;
wire    ap_CS_fsm_state7;
reg   [5:0] tmp_22_reg_1417;
reg   [31:0] v224_0_load_1_reg_1422;
wire    ap_CS_fsm_state8;
reg   [31:0] v224_0_load_2_reg_1427;
reg   [31:0] v224_0_load_3_reg_1442;
wire    ap_CS_fsm_state9;
reg   [31:0] v224_0_load_4_reg_1447;
reg   [31:0] v224_0_load_5_reg_1462;
wire    ap_CS_fsm_state10;
reg   [31:0] v224_0_load_6_reg_1467;
wire   [1:0] trunc_ln32_fu_634_p1;
reg   [1:0] trunc_ln32_reg_1482;
wire    ap_CS_fsm_state11;
wire   [13:0] mul_ln34_fu_652_p2;
reg   [13:0] mul_ln34_reg_1488;
wire   [13:0] mul_ln49_fu_661_p2;
reg   [13:0] mul_ln49_reg_1493;
wire   [13:0] mul_ln62_fu_670_p2;
reg   [13:0] mul_ln62_reg_1498;
wire   [13:0] mul_ln75_fu_679_p2;
reg   [13:0] mul_ln75_reg_1503;
wire   [13:0] mul_ln88_fu_695_p2;
reg   [13:0] mul_ln88_reg_1508;
wire   [13:0] mul_ln101_fu_704_p2;
reg   [13:0] mul_ln101_reg_1513;
wire   [13:0] mul_ln114_fu_713_p2;
reg   [13:0] mul_ln114_reg_1518;
wire   [13:0] mul_ln127_fu_722_p2;
reg   [13:0] mul_ln127_reg_1523;
reg   [31:0] v224_0_load_7_reg_1528;
wire   [13:0] mul_ln140_fu_738_p2;
reg   [13:0] mul_ln140_reg_1533;
reg   [31:0] v224_0_load_8_reg_1538;
wire   [31:0] v11_fu_744_p1;
reg   [31:0] v11_reg_1543;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_748_p1;
reg   [31:0] v24_reg_1548;
wire   [31:0] v35_fu_752_p1;
reg   [31:0] v35_reg_1553;
wire   [31:0] v46_fu_756_p1;
reg   [31:0] v46_reg_1558;
wire   [31:0] v57_fu_760_p1;
reg   [31:0] v57_reg_1563;
wire   [31:0] v68_fu_764_p1;
reg   [31:0] v68_reg_1568;
wire   [31:0] v79_fu_768_p1;
reg   [31:0] v79_reg_1573;
wire   [31:0] v90_fu_772_p1;
reg   [31:0] v90_reg_1578;
wire   [31:0] v101_fu_776_p1;
reg   [31:0] v101_reg_1583;
wire   [0:0] empty_280_fu_780_p2;
reg   [0:0] empty_280_reg_1588;
wire    ap_CS_fsm_state14;
wire   [7:0] add_ln32_1_fu_796_p2;
reg   [7:0] add_ln32_1_reg_1601;
wire    ap_CS_fsm_state15;
reg   [5:0] tmp_23_reg_1611;
reg   [5:0] tmp_24_reg_1621;
wire    ap_CS_fsm_state16;
reg   [5:0] tmp_25_reg_1631;
wire    ap_CS_fsm_state17;
reg   [5:0] tmp_26_reg_1646;
reg   [5:0] tmp_27_reg_1656;
reg   [31:0] v224_1_load_reg_1661;
wire    ap_CS_fsm_state18;
reg   [5:0] tmp_28_reg_1681;
reg   [31:0] v224_1_load_1_reg_1686;
wire    ap_CS_fsm_state19;
reg   [31:0] v224_1_load_2_reg_1691;
reg   [31:0] v224_1_load_3_reg_1706;
wire    ap_CS_fsm_state20;
reg   [31:0] v224_1_load_4_reg_1711;
reg   [31:0] v224_1_load_5_reg_1726;
wire    ap_CS_fsm_state21;
reg   [31:0] v224_1_load_6_reg_1731;
wire   [1:0] trunc_ln32_1_fu_968_p1;
reg   [1:0] trunc_ln32_1_reg_1746;
wire    ap_CS_fsm_state22;
wire   [13:0] mul_ln34_1_fu_986_p2;
reg   [13:0] mul_ln34_1_reg_1752;
wire   [13:0] mul_ln49_1_fu_995_p2;
reg   [13:0] mul_ln49_1_reg_1757;
wire   [13:0] mul_ln62_1_fu_1004_p2;
reg   [13:0] mul_ln62_1_reg_1762;
wire   [13:0] mul_ln75_1_fu_1013_p2;
reg   [13:0] mul_ln75_1_reg_1767;
wire   [13:0] mul_ln88_1_fu_1029_p2;
reg   [13:0] mul_ln88_1_reg_1772;
wire   [13:0] mul_ln101_1_fu_1038_p2;
reg   [13:0] mul_ln101_1_reg_1777;
wire   [13:0] mul_ln114_1_fu_1047_p2;
reg   [13:0] mul_ln114_1_reg_1782;
wire   [13:0] mul_ln127_1_fu_1056_p2;
reg   [13:0] mul_ln127_1_reg_1787;
reg   [31:0] v224_1_load_7_reg_1792;
wire   [13:0] mul_ln140_1_fu_1072_p2;
reg   [13:0] mul_ln140_1_reg_1797;
reg   [31:0] v224_1_load_8_reg_1802;
wire   [31:0] v11_1_fu_1078_p1;
reg   [31:0] v11_1_reg_1807;
wire    ap_CS_fsm_state23;
wire   [31:0] v24_1_fu_1082_p1;
reg   [31:0] v24_1_reg_1812;
wire   [31:0] v35_1_fu_1086_p1;
reg   [31:0] v35_1_reg_1817;
wire   [31:0] v46_1_fu_1090_p1;
reg   [31:0] v46_1_reg_1822;
wire   [31:0] v57_1_fu_1094_p1;
reg   [31:0] v57_1_reg_1827;
wire   [31:0] v68_1_fu_1098_p1;
reg   [31:0] v68_1_reg_1832;
wire   [31:0] v79_1_fu_1102_p1;
reg   [31:0] v79_1_reg_1837;
wire   [31:0] v90_1_fu_1106_p1;
reg   [31:0] v90_1_reg_1842;
wire   [31:0] v101_1_fu_1110_p1;
reg   [31:0] v101_1_reg_1847;
wire   [0:0] empty_309_fu_1114_p2;
reg   [0:0] empty_309_reg_1852;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_4_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_6_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1857_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1857_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1857_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1857_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1861_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1861_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1861_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1861_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1865_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1865_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1865_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1865_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1869_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1869_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1869_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1869_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1873_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1873_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1873_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1873_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1877_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1877_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1877_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1877_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1881_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1881_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1881_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1885_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1885_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1885_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1889_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1889_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1889_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1893_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1893_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1893_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1897_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1897_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1897_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1901_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1901_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1901_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1905_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1905_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1905_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1909_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1909_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1909_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1913_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1913_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1913_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1917_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1917_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1917_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1921_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1921_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1921_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_5_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_7_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1857_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1857_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1857_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1857_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1861_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1861_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1861_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1861_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1865_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1865_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1865_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1865_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1869_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1869_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1869_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1869_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1873_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1873_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1873_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1873_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1877_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1877_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1877_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1877_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1881_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1881_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1881_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1885_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1885_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1885_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1889_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1889_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1889_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1893_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1893_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1893_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1897_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1897_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1897_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1901_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1901_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1901_p_ce;
reg   [7:0] v6_reg_294;
wire   [0:0] icmp_ln31_fu_412_p2;
wire    ap_CS_fsm_state13;
reg   [7:0] v6_1_reg_306;
wire    ap_CS_fsm_state24;
wire   [0:0] icmp_ln32_fu_462_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_start_reg;
wire   [63:0] p_cast3992_fu_538_p1;
wire   [63:0] p_cast_fu_582_p1;
wire   [63:0] p_cast3993_fu_586_p1;
wire   [63:0] p_cast3994_fu_610_p1;
wire   [63:0] p_cast3995_fu_614_p1;
wire   [63:0] p_cast3996_fu_618_p1;
wire   [63:0] p_cast3997_fu_622_p1;
wire   [63:0] p_cast3998_fu_626_p1;
wire   [63:0] p_cast3999_fu_630_p1;
wire   [63:0] p_cast4000_fu_872_p1;
wire   [63:0] p_cast4001_fu_916_p1;
wire   [63:0] p_cast4002_fu_920_p1;
wire   [63:0] p_cast4003_fu_944_p1;
wire   [63:0] p_cast4004_fu_948_p1;
wire   [63:0] p_cast4005_fu_952_p1;
wire   [63:0] p_cast4006_fu_956_p1;
wire   [63:0] p_cast4007_fu_960_p1;
wire   [63:0] p_cast4008_fu_964_p1;
reg   [7:0] v5_fu_116;
wire   [7:0] add_ln31_fu_802_p2;
wire   [0:0] icmp_ln32_1_fu_786_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_0_ce0_local;
reg   [14:0] v224_0_address0_local;
reg    v224_0_ce1_local;
reg   [14:0] v224_0_address1_local;
reg    v224_1_ce0_local;
reg   [14:0] v224_1_address0_local;
reg    v224_1_ce1_local;
reg   [14:0] v224_1_address1_local;
wire   [4:0] lshr_ln_fu_422_p4;
wire   [4:0] mul_ln38_fu_436_p0;
wire   [8:0] mul_ln38_fu_436_p1;
wire   [6:0] lshr_ln31_1_fu_442_p4;
wire   [7:0] empty_254_fu_478_p2;
wire   [7:0] empty_257_fu_498_p2;
wire   [7:0] empty_260_fu_518_p2;
wire   [14:0] grp_fu_1120_p3;
wire   [7:0] empty_267_fu_542_p2;
wire   [7:0] empty_270_fu_562_p2;
wire   [14:0] grp_fu_1128_p3;
wire   [14:0] grp_fu_1136_p3;
wire   [7:0] empty_273_fu_590_p2;
wire   [14:0] grp_fu_1144_p3;
wire   [14:0] grp_fu_1152_p4;
wire   [14:0] grp_fu_1162_p3;
wire   [14:0] grp_fu_1170_p3;
wire   [14:0] grp_fu_1178_p3;
wire   [14:0] grp_fu_1186_p4;
wire   [5:0] lshr_ln2_fu_638_p4;
wire   [5:0] mul_ln34_fu_652_p0;
wire   [8:0] mul_ln34_fu_652_p1;
wire   [5:0] mul_ln49_fu_661_p0;
wire   [8:0] mul_ln49_fu_661_p1;
wire   [5:0] mul_ln62_fu_670_p0;
wire   [8:0] mul_ln62_fu_670_p1;
wire   [5:0] mul_ln75_fu_679_p0;
wire   [8:0] mul_ln75_fu_679_p1;
wire   [5:0] empty_266_fu_685_p2;
wire   [5:0] mul_ln88_fu_695_p0;
wire   [8:0] mul_ln88_fu_695_p1;
wire   [5:0] mul_ln101_fu_704_p0;
wire   [8:0] mul_ln101_fu_704_p1;
wire   [5:0] mul_ln114_fu_713_p0;
wire   [8:0] mul_ln114_fu_713_p1;
wire   [5:0] mul_ln127_fu_722_p0;
wire   [8:0] mul_ln127_fu_722_p1;
wire   [5:0] empty_279_fu_728_p2;
wire   [5:0] mul_ln140_fu_738_p0;
wire   [8:0] mul_ln140_fu_738_p1;
wire   [7:0] empty_283_fu_812_p2;
wire   [7:0] empty_286_fu_832_p2;
wire   [7:0] empty_289_fu_852_p2;
wire   [14:0] grp_fu_1196_p3;
wire   [7:0] empty_296_fu_876_p2;
wire   [7:0] empty_299_fu_896_p2;
wire   [14:0] grp_fu_1204_p3;
wire   [14:0] grp_fu_1212_p3;
wire   [7:0] empty_302_fu_924_p2;
wire   [14:0] grp_fu_1220_p3;
wire   [14:0] grp_fu_1228_p4;
wire   [14:0] grp_fu_1238_p3;
wire   [14:0] grp_fu_1246_p3;
wire   [14:0] grp_fu_1254_p3;
wire   [14:0] grp_fu_1262_p4;
wire   [5:0] lshr_ln32_1_fu_972_p4;
wire   [5:0] mul_ln34_1_fu_986_p0;
wire   [8:0] mul_ln34_1_fu_986_p1;
wire   [5:0] mul_ln49_1_fu_995_p0;
wire   [8:0] mul_ln49_1_fu_995_p1;
wire   [5:0] mul_ln62_1_fu_1004_p0;
wire   [8:0] mul_ln62_1_fu_1004_p1;
wire   [5:0] mul_ln75_1_fu_1013_p0;
wire   [8:0] mul_ln75_1_fu_1013_p1;
wire   [5:0] empty_295_fu_1019_p2;
wire   [5:0] mul_ln88_1_fu_1029_p0;
wire   [8:0] mul_ln88_1_fu_1029_p1;
wire   [5:0] mul_ln101_1_fu_1038_p0;
wire   [8:0] mul_ln101_1_fu_1038_p1;
wire   [5:0] mul_ln114_1_fu_1047_p0;
wire   [8:0] mul_ln114_1_fu_1047_p1;
wire   [5:0] mul_ln127_1_fu_1056_p0;
wire   [8:0] mul_ln127_1_fu_1056_p1;
wire   [5:0] empty_308_fu_1062_p2;
wire   [5:0] mul_ln140_1_fu_1072_p0;
wire   [8:0] mul_ln140_1_fu_1072_p1;
wire   [7:0] grp_fu_1120_p0;
wire   [6:0] grp_fu_1120_p1;
wire   [6:0] grp_fu_1120_p2;
wire   [7:0] grp_fu_1128_p0;
wire   [6:0] grp_fu_1128_p1;
wire   [6:0] grp_fu_1128_p2;
wire   [7:0] grp_fu_1136_p0;
wire   [6:0] grp_fu_1136_p1;
wire   [6:0] grp_fu_1136_p2;
wire   [7:0] grp_fu_1144_p0;
wire   [6:0] grp_fu_1144_p1;
wire   [6:0] grp_fu_1144_p2;
wire   [2:0] grp_fu_1152_p1;
wire   [6:0] grp_fu_1152_p2;
wire   [6:0] grp_fu_1152_p3;
wire   [7:0] grp_fu_1162_p0;
wire   [6:0] grp_fu_1162_p1;
wire   [6:0] grp_fu_1162_p2;
wire   [7:0] grp_fu_1170_p0;
wire   [6:0] grp_fu_1170_p1;
wire   [6:0] grp_fu_1170_p2;
wire   [7:0] grp_fu_1178_p0;
wire   [6:0] grp_fu_1178_p1;
wire   [6:0] grp_fu_1178_p2;
wire   [3:0] grp_fu_1186_p1;
wire   [6:0] grp_fu_1186_p2;
wire   [6:0] grp_fu_1186_p3;
wire   [7:0] grp_fu_1196_p0;
wire   [6:0] grp_fu_1196_p1;
wire   [6:0] grp_fu_1196_p2;
wire   [7:0] grp_fu_1204_p0;
wire   [6:0] grp_fu_1204_p1;
wire   [6:0] grp_fu_1204_p2;
wire   [7:0] grp_fu_1212_p0;
wire   [6:0] grp_fu_1212_p1;
wire   [6:0] grp_fu_1212_p2;
wire   [7:0] grp_fu_1220_p0;
wire   [6:0] grp_fu_1220_p1;
wire   [6:0] grp_fu_1220_p2;
wire   [2:0] grp_fu_1228_p1;
wire   [6:0] grp_fu_1228_p2;
wire   [6:0] grp_fu_1228_p3;
wire   [7:0] grp_fu_1238_p0;
wire   [6:0] grp_fu_1238_p1;
wire   [6:0] grp_fu_1238_p2;
wire   [7:0] grp_fu_1246_p0;
wire   [6:0] grp_fu_1246_p1;
wire   [6:0] grp_fu_1246_p2;
wire   [7:0] grp_fu_1254_p0;
wire   [6:0] grp_fu_1254_p1;
wire   [6:0] grp_fu_1254_p2;
wire   [3:0] grp_fu_1262_p1;
wire   [6:0] grp_fu_1262_p2;
wire   [6:0] grp_fu_1262_p3;
reg   [31:0] grp_fu_1857_p0;
reg   [31:0] grp_fu_1857_p1;
reg    grp_fu_1857_ce;
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
wire   [31:0] grp_fu_1873_p2;
reg   [31:0] grp_fu_1873_p0;
reg   [31:0] grp_fu_1873_p1;
reg    grp_fu_1873_ce;
wire   [31:0] grp_fu_1877_p2;
reg   [31:0] grp_fu_1877_p0;
reg   [31:0] grp_fu_1877_p1;
reg    grp_fu_1877_ce;
reg   [31:0] grp_fu_1881_p0;
reg   [31:0] grp_fu_1881_p1;
reg    grp_fu_1881_ce;
reg   [31:0] grp_fu_1885_p0;
reg   [31:0] grp_fu_1885_p1;
reg    grp_fu_1885_ce;
reg   [31:0] grp_fu_1889_p0;
reg   [31:0] grp_fu_1889_p1;
reg    grp_fu_1889_ce;
reg   [31:0] grp_fu_1893_p0;
reg   [31:0] grp_fu_1893_p1;
reg    grp_fu_1893_ce;
reg   [31:0] grp_fu_1897_p0;
reg   [31:0] grp_fu_1897_p1;
reg    grp_fu_1897_ce;
reg   [31:0] grp_fu_1901_p0;
reg   [31:0] grp_fu_1901_p1;
reg    grp_fu_1901_ce;
reg    grp_fu_1905_ce;
reg    grp_fu_1909_ce;
reg    grp_fu_1913_ce;
reg    grp_fu_1917_ce;
reg    grp_fu_1921_ce;
reg   [23:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
reg    ap_ST_fsm_state24_blk;
wire   [14:0] grp_fu_1120_p00;
wire   [14:0] grp_fu_1128_p00;
wire   [14:0] grp_fu_1136_p00;
wire   [14:0] grp_fu_1144_p00;
wire   [14:0] grp_fu_1162_p00;
wire   [14:0] grp_fu_1170_p00;
wire   [14:0] grp_fu_1178_p00;
wire   [14:0] grp_fu_1196_p00;
wire   [14:0] grp_fu_1204_p00;
wire   [14:0] grp_fu_1212_p00;
wire   [14:0] grp_fu_1220_p00;
wire   [14:0] grp_fu_1238_p00;
wire   [14:0] grp_fu_1246_p00;
wire   [14:0] grp_fu_1254_p00;
wire   [13:0] mul_ln101_1_fu_1038_p00;
wire   [13:0] mul_ln101_fu_704_p00;
wire   [13:0] mul_ln114_1_fu_1047_p00;
wire   [13:0] mul_ln114_fu_713_p00;
wire   [13:0] mul_ln127_1_fu_1056_p00;
wire   [13:0] mul_ln127_fu_722_p00;
wire   [13:0] mul_ln140_1_fu_1072_p00;
wire   [13:0] mul_ln140_fu_738_p00;
wire   [13:0] mul_ln34_1_fu_986_p00;
wire   [13:0] mul_ln34_fu_652_p00;
wire   [12:0] mul_ln38_fu_436_p00;
wire   [13:0] mul_ln49_1_fu_995_p00;
wire   [13:0] mul_ln49_fu_661_p00;
wire   [13:0] mul_ln62_1_fu_1004_p00;
wire   [13:0] mul_ln62_fu_670_p00;
wire   [13:0] mul_ln75_1_fu_1013_p00;
wire   [13:0] mul_ln75_fu_679_p00;
wire   [13:0] mul_ln88_1_fu_1029_p00;
wire   [13:0] mul_ln88_fu_695_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_start_reg = 1'b0;
#0 v5_fu_116 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_318(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_d1),.v229_3_q1(v229_3_q1),.mul_ln38(mul_ln38_reg_1296),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_4_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_4_address0),.v228_4_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_4_ce0),.v228_4_q0(v228_4_q0),.v228_4_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_4_address1),.v228_4_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_4_ce1),.v228_4_q1(v228_4_q1),.v228_6_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_6_address0),.v228_6_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_6_ce0),.v228_6_q0(v228_6_q0),.v228_6_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_6_address1),.v228_6_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_6_ce1),.v228_6_q1(v228_6_q1),.mul_ln34(mul_ln34_reg_1488),.mul_ln88(mul_ln88_reg_1508),.mul_ln140(mul_ln140_reg_1533),.mul_ln75(mul_ln75_reg_1503),.mul_ln127(mul_ln127_reg_1523),.mul_ln62(mul_ln62_reg_1498),.mul_ln114(mul_ln114_reg_1518),.mul_ln49(mul_ln49_reg_1493),.mul_ln101(mul_ln101_reg_1513),.empty_19(trunc_ln32_reg_1482),.v4(v4),.cmp11(cmp11_reg_1324),.empty_20(trunc_ln31_reg_1290),.v11(v11_reg_1543),.v24(v24_reg_1548),.v35(v35_reg_1553),.v46(v46_reg_1558),.v57(v57_reg_1563),.v68(v68_reg_1568),.v79(v79_reg_1573),.v90(v90_reg_1578),.v101(v101_reg_1583),.empty(empty_280_reg_1588),.grp_fu_1857_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1857_p_din0),.grp_fu_1857_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1857_p_din1),.grp_fu_1857_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1857_p_opcode),.grp_fu_1857_p_dout0(grp_fu_208_p_dout0),.grp_fu_1857_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1857_p_ce),.grp_fu_1861_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1861_p_din0),.grp_fu_1861_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1861_p_din1),.grp_fu_1861_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1861_p_opcode),.grp_fu_1861_p_dout0(grp_fu_212_p_dout0),.grp_fu_1861_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1861_p_ce),.grp_fu_1865_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1865_p_din0),.grp_fu_1865_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1865_p_din1),.grp_fu_1865_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1865_p_opcode),.grp_fu_1865_p_dout0(grp_fu_1865_p2),.grp_fu_1865_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1865_p_ce),.grp_fu_1869_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1869_p_din0),.grp_fu_1869_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1869_p_din1),.grp_fu_1869_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1869_p_opcode),.grp_fu_1869_p_dout0(grp_fu_1869_p2),.grp_fu_1869_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1869_p_ce),.grp_fu_1873_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1873_p_din0),.grp_fu_1873_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1873_p_din1),.grp_fu_1873_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1873_p_opcode),.grp_fu_1873_p_dout0(grp_fu_1873_p2),.grp_fu_1873_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1873_p_ce),.grp_fu_1877_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1877_p_din0),.grp_fu_1877_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1877_p_din1),.grp_fu_1877_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1877_p_opcode),.grp_fu_1877_p_dout0(grp_fu_1877_p2),.grp_fu_1877_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1877_p_ce),.grp_fu_1881_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1881_p_din0),.grp_fu_1881_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1881_p_din1),.grp_fu_1881_p_dout0(grp_fu_216_p_dout0),.grp_fu_1881_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1881_p_ce),.grp_fu_1885_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1885_p_din0),.grp_fu_1885_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1885_p_din1),.grp_fu_1885_p_dout0(grp_fu_220_p_dout0),.grp_fu_1885_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1885_p_ce),.grp_fu_1889_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1889_p_din0),.grp_fu_1889_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1889_p_din1),.grp_fu_1889_p_dout0(grp_fu_172_p_dout0),.grp_fu_1889_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1889_p_ce),.grp_fu_1893_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1893_p_din0),.grp_fu_1893_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1893_p_din1),.grp_fu_1893_p_dout0(grp_fu_176_p_dout0),.grp_fu_1893_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1893_p_ce),.grp_fu_1897_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1897_p_din0),.grp_fu_1897_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1897_p_din1),.grp_fu_1897_p_dout0(grp_fu_180_p_dout0),.grp_fu_1897_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1897_p_ce),.grp_fu_1901_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1901_p_din0),.grp_fu_1901_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1901_p_din1),.grp_fu_1901_p_dout0(grp_fu_184_p_dout0),.grp_fu_1901_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1901_p_ce),.grp_fu_1905_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1905_p_din0),.grp_fu_1905_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1905_p_din1),.grp_fu_1905_p_dout0(grp_fu_188_p_dout0),.grp_fu_1905_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1905_p_ce),.grp_fu_1909_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1909_p_din0),.grp_fu_1909_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1909_p_din1),.grp_fu_1909_p_dout0(grp_fu_192_p_dout0),.grp_fu_1909_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1909_p_ce),.grp_fu_1913_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1913_p_din0),.grp_fu_1913_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1913_p_din1),.grp_fu_1913_p_dout0(grp_fu_196_p_dout0),.grp_fu_1913_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1913_p_ce),.grp_fu_1917_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1917_p_din0),.grp_fu_1917_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1917_p_din1),.grp_fu_1917_p_dout0(grp_fu_200_p_dout0),.grp_fu_1917_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1917_p_ce),.grp_fu_1921_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1921_p_din0),.grp_fu_1921_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1921_p_din1),.grp_fu_1921_p_dout0(grp_fu_204_p_dout0),.grp_fu_1921_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1921_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_210 grp_kernel_2mm_node0_Pipeline_label_210_fu_362(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_d1),.v229_3_q1(v229_3_q1),.mul_ln38(mul_ln38_reg_1296),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_3_ce1),.v228_3_q1(v228_3_q1),.v228_5_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_5_address0),.v228_5_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_5_ce0),.v228_5_q0(v228_5_q0),.v228_5_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_5_address1),.v228_5_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_5_ce1),.v228_5_q1(v228_5_q1),.v228_7_address0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_7_address0),.v228_7_ce0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_7_ce0),.v228_7_q0(v228_7_q0),.v228_7_address1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_7_address1),.v228_7_ce1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_7_ce1),.v228_7_q1(v228_7_q1),.mul_ln34_1(mul_ln34_1_reg_1752),.mul_ln88_1(mul_ln88_1_reg_1772),.mul_ln140_1(mul_ln140_1_reg_1797),.mul_ln75_1(mul_ln75_1_reg_1767),.mul_ln127_1(mul_ln127_1_reg_1787),.mul_ln62_1(mul_ln62_1_reg_1762),.mul_ln114_1(mul_ln114_1_reg_1782),.mul_ln49_1(mul_ln49_1_reg_1757),.mul_ln101_1(mul_ln101_1_reg_1777),.empty_17(trunc_ln32_1_reg_1746),.empty_18(trunc_ln31_reg_1290),.v11_1(v11_1_reg_1807),.v24_1(v24_1_reg_1812),.v35_1(v35_1_reg_1817),.v46_1(v46_1_reg_1822),.v57_1(v57_1_reg_1827),.v68_1(v68_1_reg_1832),.v79_1(v79_1_reg_1837),.v90_1(v90_1_reg_1842),.v101_1(v101_1_reg_1847),.empty(empty_309_reg_1852),.grp_fu_1857_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1857_p_din0),.grp_fu_1857_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1857_p_din1),.grp_fu_1857_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1857_p_opcode),.grp_fu_1857_p_dout0(grp_fu_208_p_dout0),.grp_fu_1857_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1857_p_ce),.grp_fu_1861_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1861_p_din0),.grp_fu_1861_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1861_p_din1),.grp_fu_1861_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1861_p_opcode),.grp_fu_1861_p_dout0(grp_fu_212_p_dout0),.grp_fu_1861_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1861_p_ce),.grp_fu_1865_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1865_p_din0),.grp_fu_1865_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1865_p_din1),.grp_fu_1865_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1865_p_opcode),.grp_fu_1865_p_dout0(grp_fu_1865_p2),.grp_fu_1865_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1865_p_ce),.grp_fu_1869_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1869_p_din0),.grp_fu_1869_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1869_p_din1),.grp_fu_1869_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1869_p_opcode),.grp_fu_1869_p_dout0(grp_fu_1869_p2),.grp_fu_1869_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1869_p_ce),.grp_fu_1873_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1873_p_din0),.grp_fu_1873_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1873_p_din1),.grp_fu_1873_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1873_p_opcode),.grp_fu_1873_p_dout0(grp_fu_1873_p2),.grp_fu_1873_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1873_p_ce),.grp_fu_1877_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1877_p_din0),.grp_fu_1877_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1877_p_din1),.grp_fu_1877_p_opcode(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1877_p_opcode),.grp_fu_1877_p_dout0(grp_fu_1877_p2),.grp_fu_1877_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1877_p_ce),.grp_fu_1881_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1881_p_din0),.grp_fu_1881_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1881_p_din1),.grp_fu_1881_p_dout0(grp_fu_216_p_dout0),.grp_fu_1881_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1881_p_ce),.grp_fu_1885_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1885_p_din0),.grp_fu_1885_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1885_p_din1),.grp_fu_1885_p_dout0(grp_fu_220_p_dout0),.grp_fu_1885_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1885_p_ce),.grp_fu_1889_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1889_p_din0),.grp_fu_1889_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1889_p_din1),.grp_fu_1889_p_dout0(grp_fu_172_p_dout0),.grp_fu_1889_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1889_p_ce),.grp_fu_1893_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1893_p_din0),.grp_fu_1893_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1893_p_din1),.grp_fu_1893_p_dout0(grp_fu_176_p_dout0),.grp_fu_1893_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1893_p_ce),.grp_fu_1897_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1897_p_din0),.grp_fu_1897_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1897_p_din1),.grp_fu_1897_p_dout0(grp_fu_180_p_dout0),.grp_fu_1897_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1897_p_ce),.grp_fu_1901_p_din0(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1901_p_din0),.grp_fu_1901_p_din1(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1901_p_din1),.grp_fu_1901_p_dout0(grp_fu_184_p_dout0),.grp_fu_1901_p_ce(grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1901_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U454(.din0(mul_ln38_fu_436_p0),.din1(mul_ln38_fu_436_p1),.dout(mul_ln38_fu_436_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U455(.din0(mul_ln34_fu_652_p0),.din1(mul_ln34_fu_652_p1),.dout(mul_ln34_fu_652_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U456(.din0(mul_ln49_fu_661_p0),.din1(mul_ln49_fu_661_p1),.dout(mul_ln49_fu_661_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U457(.din0(mul_ln62_fu_670_p0),.din1(mul_ln62_fu_670_p1),.dout(mul_ln62_fu_670_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U458(.din0(mul_ln75_fu_679_p0),.din1(mul_ln75_fu_679_p1),.dout(mul_ln75_fu_679_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U459(.din0(mul_ln88_fu_695_p0),.din1(mul_ln88_fu_695_p1),.dout(mul_ln88_fu_695_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U460(.din0(mul_ln101_fu_704_p0),.din1(mul_ln101_fu_704_p1),.dout(mul_ln101_fu_704_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U461(.din0(mul_ln114_fu_713_p0),.din1(mul_ln114_fu_713_p1),.dout(mul_ln114_fu_713_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U462(.din0(mul_ln127_fu_722_p0),.din1(mul_ln127_fu_722_p1),.dout(mul_ln127_fu_722_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U463(.din0(mul_ln140_fu_738_p0),.din1(mul_ln140_fu_738_p1),.dout(mul_ln140_fu_738_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U464(.din0(mul_ln34_1_fu_986_p0),.din1(mul_ln34_1_fu_986_p1),.dout(mul_ln34_1_fu_986_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U465(.din0(mul_ln49_1_fu_995_p0),.din1(mul_ln49_1_fu_995_p1),.dout(mul_ln49_1_fu_995_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U466(.din0(mul_ln62_1_fu_1004_p0),.din1(mul_ln62_1_fu_1004_p1),.dout(mul_ln62_1_fu_1004_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U467(.din0(mul_ln75_1_fu_1013_p0),.din1(mul_ln75_1_fu_1013_p1),.dout(mul_ln75_1_fu_1013_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U468(.din0(mul_ln88_1_fu_1029_p0),.din1(mul_ln88_1_fu_1029_p1),.dout(mul_ln88_1_fu_1029_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U469(.din0(mul_ln101_1_fu_1038_p0),.din1(mul_ln101_1_fu_1038_p1),.dout(mul_ln101_1_fu_1038_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U470(.din0(mul_ln114_1_fu_1047_p0),.din1(mul_ln114_1_fu_1047_p1),.dout(mul_ln114_1_fu_1047_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U471(.din0(mul_ln127_1_fu_1056_p0),.din1(mul_ln127_1_fu_1056_p1),.dout(mul_ln127_1_fu_1056_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U472(.din0(mul_ln140_1_fu_1072_p0),.din1(mul_ln140_1_fu_1072_p1),.dout(mul_ln140_1_fu_1072_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U473(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1120_p0),.din1(grp_fu_1120_p1),.din2(grp_fu_1120_p2),.ce(1'b1),.dout(grp_fu_1120_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U474(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1128_p0),.din1(grp_fu_1128_p1),.din2(grp_fu_1128_p2),.ce(1'b1),.dout(grp_fu_1128_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U475(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1136_p0),.din1(grp_fu_1136_p1),.din2(grp_fu_1136_p2),.ce(1'b1),.dout(grp_fu_1136_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U476(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1144_p0),.din1(grp_fu_1144_p1),.din2(grp_fu_1144_p2),.ce(1'b1),.dout(grp_fu_1144_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U477(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_294),.din1(grp_fu_1152_p1),.din2(grp_fu_1152_p2),.din3(grp_fu_1152_p3),.ce(1'b1),.dout(grp_fu_1152_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U478(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1162_p0),.din1(grp_fu_1162_p1),.din2(grp_fu_1162_p2),.ce(1'b1),.dout(grp_fu_1162_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U479(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1170_p0),.din1(grp_fu_1170_p1),.din2(grp_fu_1170_p2),.ce(1'b1),.dout(grp_fu_1170_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U480(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1178_p0),.din1(grp_fu_1178_p1),.din2(grp_fu_1178_p2),.ce(1'b1),.dout(grp_fu_1178_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U481(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_294),.din1(grp_fu_1186_p1),.din2(grp_fu_1186_p2),.din3(grp_fu_1186_p3),.ce(1'b1),.dout(grp_fu_1186_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U482(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1196_p0),.din1(grp_fu_1196_p1),.din2(grp_fu_1196_p2),.ce(1'b1),.dout(grp_fu_1196_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U483(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1204_p0),.din1(grp_fu_1204_p1),.din2(grp_fu_1204_p2),.ce(1'b1),.dout(grp_fu_1204_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U484(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1212_p0),.din1(grp_fu_1212_p1),.din2(grp_fu_1212_p2),.ce(1'b1),.dout(grp_fu_1212_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U485(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1220_p0),.din1(grp_fu_1220_p1),.din2(grp_fu_1220_p2),.ce(1'b1),.dout(grp_fu_1220_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U486(.clk(ap_clk),.reset(ap_rst),.din0(v6_1_reg_306),.din1(grp_fu_1228_p1),.din2(grp_fu_1228_p2),.din3(grp_fu_1228_p3),.ce(1'b1),.dout(grp_fu_1228_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U487(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1238_p0),.din1(grp_fu_1238_p1),.din2(grp_fu_1238_p2),.ce(1'b1),.dout(grp_fu_1238_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U488(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1246_p0),.din1(grp_fu_1246_p1),.din2(grp_fu_1246_p2),.ce(1'b1),.dout(grp_fu_1246_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U489(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1254_p0),.din1(grp_fu_1254_p1),.din2(grp_fu_1254_p2),.ce(1'b1),.dout(grp_fu_1254_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U490(.clk(ap_clk),.reset(ap_rst),.din0(v6_1_reg_306),.din1(grp_fu_1262_p1),.din2(grp_fu_1262_p2),.din3(grp_fu_1262_p3),.ce(1'b1),.dout(grp_fu_1262_p4));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U493(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1865_p0),.din1(grp_fu_1865_p1),.ce(grp_fu_1865_ce),.dout(grp_fu_1865_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U494(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1869_p0),.din1(grp_fu_1869_p1),.ce(grp_fu_1869_ce),.dout(grp_fu_1869_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U495(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1873_p0),.din1(grp_fu_1873_p1),.ce(grp_fu_1873_ce),.dout(grp_fu_1873_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U496(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1877_p0),.din1(grp_fu_1877_p1),.ce(grp_fu_1877_ce),.dout(grp_fu_1877_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state23)) begin
            grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_116 <= 8'd0;
    end else if (((icmp_ln32_1_fu_786_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        v5_fu_116 <= add_ln31_fu_802_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_462_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v6_1_reg_306 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
        v6_1_reg_306 <= add_ln32_1_reg_1601;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_294 <= add_ln32_reg_1337;
    end else if (((icmp_ln31_fu_412_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_294 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        add_ln32_1_reg_1601 <= add_ln32_1_fu_796_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_1337 <= add_ln32_fu_472_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1324 <= cmp11_fu_456_p2;
        mul_ln38_reg_1296 <= mul_ln38_fu_436_p2;
        trunc_ln31_reg_1290 <= trunc_ln31_fu_418_p1;
        zext_ln31_reg_1302[6 : 0] <= zext_ln31_fu_452_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_280_reg_1588 <= empty_280_fu_780_p2;
        v101_reg_1583 <= v101_fu_776_p1;
        v11_reg_1543 <= v11_fu_744_p1;
        v24_reg_1548 <= v24_fu_748_p1;
        v35_reg_1553 <= v35_fu_752_p1;
        v46_reg_1558 <= v46_fu_756_p1;
        v57_reg_1563 <= v57_fu_760_p1;
        v68_reg_1568 <= v68_fu_764_p1;
        v79_reg_1573 <= v79_fu_768_p1;
        v90_reg_1578 <= v90_fu_772_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        empty_309_reg_1852 <= empty_309_fu_1114_p2;
        v101_1_reg_1847 <= v101_1_fu_1110_p1;
        v11_1_reg_1807 <= v11_1_fu_1078_p1;
        v24_1_reg_1812 <= v24_1_fu_1082_p1;
        v35_1_reg_1817 <= v35_1_fu_1086_p1;
        v46_1_reg_1822 <= v46_1_fu_1090_p1;
        v57_1_reg_1827 <= v57_1_fu_1094_p1;
        v68_1_reg_1832 <= v68_1_fu_1098_p1;
        v79_1_reg_1837 <= v79_1_fu_1102_p1;
        v90_1_reg_1842 <= v90_1_fu_1106_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        mul_ln101_1_reg_1777 <= mul_ln101_1_fu_1038_p2;
        mul_ln114_1_reg_1782 <= mul_ln114_1_fu_1047_p2;
        mul_ln127_1_reg_1787 <= mul_ln127_1_fu_1056_p2;
        mul_ln140_1_reg_1797 <= mul_ln140_1_fu_1072_p2;
        mul_ln34_1_reg_1752 <= mul_ln34_1_fu_986_p2;
        mul_ln49_1_reg_1757 <= mul_ln49_1_fu_995_p2;
        mul_ln62_1_reg_1762 <= mul_ln62_1_fu_1004_p2;
        mul_ln75_1_reg_1767 <= mul_ln75_1_fu_1013_p2;
        mul_ln88_1_reg_1772 <= mul_ln88_1_fu_1029_p2;
        trunc_ln32_1_reg_1746 <= trunc_ln32_1_fu_968_p1;
        v224_1_load_7_reg_1792 <= v224_1_q0;
        v224_1_load_8_reg_1802 <= v224_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_1513 <= mul_ln101_fu_704_p2;
        mul_ln114_reg_1518 <= mul_ln114_fu_713_p2;
        mul_ln127_reg_1523 <= mul_ln127_fu_722_p2;
        mul_ln140_reg_1533 <= mul_ln140_fu_738_p2;
        mul_ln34_reg_1488 <= mul_ln34_fu_652_p2;
        mul_ln49_reg_1493 <= mul_ln49_fu_661_p2;
        mul_ln62_reg_1498 <= mul_ln62_fu_670_p2;
        mul_ln75_reg_1503 <= mul_ln75_fu_679_p2;
        mul_ln88_reg_1508 <= mul_ln88_fu_695_p2;
        trunc_ln32_reg_1482 <= trunc_ln32_fu_634_p1;
        v224_0_load_7_reg_1528 <= v224_0_q0;
        v224_0_load_8_reg_1538 <= v224_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_19_reg_1367 <= {{empty_260_fu_518_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_20_reg_1382 <= {{empty_267_fu_542_p2[7:2]}};
        tmp_21_reg_1392 <= {{empty_270_fu_562_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_22_reg_1417 <= {{empty_273_fu_590_p2[7:2]}};
        v224_0_load_reg_1397 <= v224_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp_23_reg_1611 <= {{empty_283_fu_812_p2[7:2]}};
        tmp_24_reg_1621 <= {{empty_286_fu_832_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        tmp_25_reg_1631 <= {{empty_289_fu_852_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        tmp_26_reg_1646 <= {{empty_296_fu_876_p2[7:2]}};
        tmp_27_reg_1656 <= {{empty_299_fu_896_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        tmp_28_reg_1681 <= {{empty_302_fu_924_p2[7:2]}};
        v224_1_load_reg_1661 <= v224_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_1347 <= {{empty_254_fu_478_p2[7:2]}};
        tmp_s_reg_1357 <= {{empty_257_fu_498_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_load_1_reg_1422 <= v224_0_q1;
        v224_0_load_2_reg_1427 <= v224_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_load_3_reg_1442 <= v224_0_q0;
        v224_0_load_4_reg_1447 <= v224_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_load_5_reg_1462 <= v224_0_q0;
        v224_0_load_6_reg_1467 <= v224_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_1_load_1_reg_1686 <= v224_1_q1;
        v224_1_load_2_reg_1691 <= v224_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_1_load_3_reg_1706 <= v224_1_q0;
        v224_1_load_4_reg_1711 <= v224_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_1_load_5_reg_1726 <= v224_1_q0;
        v224_1_load_6_reg_1731 <= v224_1_q1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_done == 1'b0)) begin
        ap_ST_fsm_state24_blk = 1'b1;
    end else begin
        ap_ST_fsm_state24_blk = 1'b0;
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_412_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_412_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1857_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1857_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1857_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1857_p_ce;
    end else begin
        grp_fu_1857_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1857_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1857_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1857_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1857_p_din0;
    end else begin
        grp_fu_1857_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1857_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1857_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1857_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1857_p_din1;
    end else begin
        grp_fu_1857_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1861_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1861_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1861_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1861_p_ce;
    end else begin
        grp_fu_1861_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1861_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1861_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1861_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1861_p_din0;
    end else begin
        grp_fu_1861_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1861_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1861_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1861_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1861_p_din1;
    end else begin
        grp_fu_1861_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1865_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1865_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1865_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1865_p_ce;
    end else begin
        grp_fu_1865_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1865_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1865_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1865_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1865_p_din0;
    end else begin
        grp_fu_1865_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1865_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1865_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1865_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1865_p_din1;
    end else begin
        grp_fu_1865_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1869_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1869_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1869_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1869_p_ce;
    end else begin
        grp_fu_1869_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1869_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1869_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1869_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1869_p_din0;
    end else begin
        grp_fu_1869_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1869_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1869_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1869_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1869_p_din1;
    end else begin
        grp_fu_1869_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1873_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1873_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1873_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1873_p_ce;
    end else begin
        grp_fu_1873_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1873_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1873_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1873_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1873_p_din0;
    end else begin
        grp_fu_1873_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1873_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1873_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1873_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1873_p_din1;
    end else begin
        grp_fu_1873_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1877_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1877_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1877_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1877_p_ce;
    end else begin
        grp_fu_1877_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1877_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1877_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1877_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1877_p_din0;
    end else begin
        grp_fu_1877_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1877_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1877_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1877_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1877_p_din1;
    end else begin
        grp_fu_1877_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1881_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1881_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1881_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1881_p_ce;
    end else begin
        grp_fu_1881_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1881_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1881_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1881_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1881_p_din0;
    end else begin
        grp_fu_1881_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1881_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1881_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1881_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1881_p_din1;
    end else begin
        grp_fu_1881_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1885_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1885_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1885_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1885_p_ce;
    end else begin
        grp_fu_1885_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1885_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1885_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1885_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1885_p_din0;
    end else begin
        grp_fu_1885_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1885_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1885_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1885_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1885_p_din1;
    end else begin
        grp_fu_1885_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1889_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1889_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1889_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1889_p_ce;
    end else begin
        grp_fu_1889_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1889_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1889_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1889_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1889_p_din0;
    end else begin
        grp_fu_1889_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1889_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1889_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1889_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1889_p_din1;
    end else begin
        grp_fu_1889_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1893_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1893_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1893_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1893_p_ce;
    end else begin
        grp_fu_1893_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1893_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1893_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1893_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1893_p_din0;
    end else begin
        grp_fu_1893_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1893_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1893_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1893_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1893_p_din1;
    end else begin
        grp_fu_1893_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1897_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1897_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1897_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1897_p_ce;
    end else begin
        grp_fu_1897_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1897_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1897_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1897_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1897_p_din0;
    end else begin
        grp_fu_1897_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1897_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1897_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1897_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1897_p_din1;
    end else begin
        grp_fu_1897_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1901_ce = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1901_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1901_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1901_p_ce;
    end else begin
        grp_fu_1901_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1901_p0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1901_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1901_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1901_p_din0;
    end else begin
        grp_fu_1901_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1901_p1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_grp_fu_1901_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1901_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1901_p_din1;
    end else begin
        grp_fu_1901_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1905_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1905_p_ce;
    end else begin
        grp_fu_1905_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1909_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1909_p_ce;
    end else begin
        grp_fu_1909_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1913_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1913_p_ce;
    end else begin
        grp_fu_1913_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1917_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1917_p_ce;
    end else begin
        grp_fu_1917_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1921_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1921_p_ce;
    end else begin
        grp_fu_1921_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address0_local = p_cast3998_fu_626_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address0_local = p_cast3996_fu_618_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address0_local = p_cast3994_fu_610_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast3993_fu_586_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast3992_fu_538_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address1_local = p_cast3999_fu_630_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address1_local = p_cast3997_fu_622_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address1_local = p_cast3995_fu_614_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast_fu_582_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_1_address0_local = p_cast4007_fu_960_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_1_address0_local = p_cast4005_fu_952_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_1_address0_local = p_cast4003_fu_944_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_1_address0_local = p_cast4002_fu_920_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_1_address0_local = p_cast4000_fu_872_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_1_address1_local = p_cast4008_fu_964_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_1_address1_local = p_cast4006_fu_956_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_1_address1_local = p_cast4004_fu_948_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_1_address1_local = p_cast4001_fu_916_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_address0;
    end else begin
        v229_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_address1;
    end else begin
        v229_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_ce0;
    end else begin
        v229_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_ce1;
    end else begin
        v229_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_d0;
    end else begin
        v229_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_d1;
    end else begin
        v229_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_we0;
    end else begin
        v229_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_2_we1;
    end else begin
        v229_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_address0;
    end else begin
        v229_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_address1;
    end else begin
        v229_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_ce0;
    end else begin
        v229_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_ce1;
    end else begin
        v229_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_d0;
    end else begin
        v229_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_d1;
    end else begin
        v229_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_we0;
    end else begin
        v229_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v229_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v229_3_we1;
    end else begin
        v229_3_we1 = 1'b0;
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
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v236_read_local = 1'b1;
    end else begin
        v236_read_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln31_fu_412_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_462_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((icmp_ln32_1_fu_786_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state22;
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state24;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_802_p2 = (v5_fu_116 + 8'd2);
assign add_ln32_1_fu_796_p2 = (v6_1_reg_306 + 8'd9);
assign add_ln32_fu_472_p2 = (v6_reg_294 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];
assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];
assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];
assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];
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
assign cmp11_fu_456_p2 = ((v5_fu_116 == 8'd0) ? 1'b1 : 1'b0);
assign empty_254_fu_478_p2 = (v6_reg_294 + 8'd1);
assign empty_257_fu_498_p2 = (v6_reg_294 + 8'd2);
assign empty_260_fu_518_p2 = (v6_reg_294 + 8'd3);
assign empty_266_fu_685_p2 = (lshr_ln2_fu_638_p4 + 6'd1);
assign empty_267_fu_542_p2 = (v6_reg_294 + 8'd5);
assign empty_270_fu_562_p2 = (v6_reg_294 + 8'd6);
assign empty_273_fu_590_p2 = (v6_reg_294 + 8'd7);
assign empty_279_fu_728_p2 = (lshr_ln2_fu_638_p4 + 6'd2);
assign empty_280_fu_780_p2 = ((trunc_ln32_reg_1482 == 2'd3) ? 1'b1 : 1'b0);
assign empty_283_fu_812_p2 = (v6_1_reg_306 + 8'd1);
assign empty_286_fu_832_p2 = (v6_1_reg_306 + 8'd2);
assign empty_289_fu_852_p2 = (v6_1_reg_306 + 8'd3);
assign empty_295_fu_1019_p2 = (lshr_ln32_1_fu_972_p4 + 6'd1);
assign empty_296_fu_876_p2 = (v6_1_reg_306 + 8'd5);
assign empty_299_fu_896_p2 = (v6_1_reg_306 + 8'd6);
assign empty_302_fu_924_p2 = (v6_1_reg_306 + 8'd7);
assign empty_308_fu_1062_p2 = (lshr_ln32_1_fu_972_p4 + 6'd2);
assign empty_309_fu_1114_p2 = ((trunc_ln32_1_reg_1746 == 2'd3) ? 1'b1 : 1'b0);
assign grp_fu_1120_p0 = grp_fu_1120_p00;
assign grp_fu_1120_p00 = v6_reg_294;
assign grp_fu_1120_p1 = 15'd95;
assign grp_fu_1120_p2 = zext_ln31_reg_1302;
assign grp_fu_1128_p0 = grp_fu_1128_p00;
assign grp_fu_1128_p00 = empty_254_fu_478_p2;
assign grp_fu_1128_p1 = 15'd95;
assign grp_fu_1128_p2 = zext_ln31_reg_1302;
assign grp_fu_1136_p0 = grp_fu_1136_p00;
assign grp_fu_1136_p00 = empty_257_fu_498_p2;
assign grp_fu_1136_p1 = 15'd95;
assign grp_fu_1136_p2 = zext_ln31_reg_1302;
assign grp_fu_1144_p0 = grp_fu_1144_p00;
assign grp_fu_1144_p00 = empty_260_fu_518_p2;
assign grp_fu_1144_p1 = 15'd95;
assign grp_fu_1144_p2 = zext_ln31_reg_1302;
assign grp_fu_1152_p1 = 8'd4;
assign grp_fu_1152_p2 = 15'd95;
assign grp_fu_1152_p3 = zext_ln31_reg_1302;
assign grp_fu_1162_p0 = grp_fu_1162_p00;
assign grp_fu_1162_p00 = empty_267_fu_542_p2;
assign grp_fu_1162_p1 = 15'd95;
assign grp_fu_1162_p2 = zext_ln31_reg_1302;
assign grp_fu_1170_p0 = grp_fu_1170_p00;
assign grp_fu_1170_p00 = empty_270_fu_562_p2;
assign grp_fu_1170_p1 = 15'd95;
assign grp_fu_1170_p2 = zext_ln31_reg_1302;
assign grp_fu_1178_p0 = grp_fu_1178_p00;
assign grp_fu_1178_p00 = empty_273_fu_590_p2;
assign grp_fu_1178_p1 = 15'd95;
assign grp_fu_1178_p2 = zext_ln31_reg_1302;
assign grp_fu_1186_p1 = 8'd8;
assign grp_fu_1186_p2 = 15'd95;
assign grp_fu_1186_p3 = zext_ln31_reg_1302;
assign grp_fu_1196_p0 = grp_fu_1196_p00;
assign grp_fu_1196_p00 = v6_1_reg_306;
assign grp_fu_1196_p1 = 15'd95;
assign grp_fu_1196_p2 = zext_ln31_reg_1302;
assign grp_fu_1204_p0 = grp_fu_1204_p00;
assign grp_fu_1204_p00 = empty_283_fu_812_p2;
assign grp_fu_1204_p1 = 15'd95;
assign grp_fu_1204_p2 = zext_ln31_reg_1302;
assign grp_fu_1212_p0 = grp_fu_1212_p00;
assign grp_fu_1212_p00 = empty_286_fu_832_p2;
assign grp_fu_1212_p1 = 15'd95;
assign grp_fu_1212_p2 = zext_ln31_reg_1302;
assign grp_fu_1220_p0 = grp_fu_1220_p00;
assign grp_fu_1220_p00 = empty_289_fu_852_p2;
assign grp_fu_1220_p1 = 15'd95;
assign grp_fu_1220_p2 = zext_ln31_reg_1302;
assign grp_fu_1228_p1 = 8'd4;
assign grp_fu_1228_p2 = 15'd95;
assign grp_fu_1228_p3 = zext_ln31_reg_1302;
assign grp_fu_1238_p0 = grp_fu_1238_p00;
assign grp_fu_1238_p00 = empty_296_fu_876_p2;
assign grp_fu_1238_p1 = 15'd95;
assign grp_fu_1238_p2 = zext_ln31_reg_1302;
assign grp_fu_1246_p0 = grp_fu_1246_p00;
assign grp_fu_1246_p00 = empty_299_fu_896_p2;
assign grp_fu_1246_p1 = 15'd95;
assign grp_fu_1246_p2 = zext_ln31_reg_1302;
assign grp_fu_1254_p0 = grp_fu_1254_p00;
assign grp_fu_1254_p00 = empty_302_fu_924_p2;
assign grp_fu_1254_p1 = 15'd95;
assign grp_fu_1254_p2 = zext_ln31_reg_1302;
assign grp_fu_1262_p1 = 8'd8;
assign grp_fu_1262_p2 = 15'd95;
assign grp_fu_1262_p3 = zext_ln31_reg_1302;
assign grp_fu_172_p_ce = grp_fu_1889_ce;
assign grp_fu_172_p_din0 = grp_fu_1889_p0;
assign grp_fu_172_p_din1 = grp_fu_1889_p1;
assign grp_fu_176_p_ce = grp_fu_1893_ce;
assign grp_fu_176_p_din0 = grp_fu_1893_p0;
assign grp_fu_176_p_din1 = grp_fu_1893_p1;
assign grp_fu_180_p_ce = grp_fu_1897_ce;
assign grp_fu_180_p_din0 = grp_fu_1897_p0;
assign grp_fu_180_p_din1 = grp_fu_1897_p1;
assign grp_fu_184_p_ce = grp_fu_1901_ce;
assign grp_fu_184_p_din0 = grp_fu_1901_p0;
assign grp_fu_184_p_din1 = grp_fu_1901_p1;
assign grp_fu_188_p_ce = grp_fu_1905_ce;
assign grp_fu_188_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1905_p_din0;
assign grp_fu_188_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1905_p_din1;
assign grp_fu_192_p_ce = grp_fu_1909_ce;
assign grp_fu_192_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1909_p_din0;
assign grp_fu_192_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1909_p_din1;
assign grp_fu_196_p_ce = grp_fu_1913_ce;
assign grp_fu_196_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1913_p_din0;
assign grp_fu_196_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1913_p_din1;
assign grp_fu_200_p_ce = grp_fu_1917_ce;
assign grp_fu_200_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1917_p_din0;
assign grp_fu_200_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1917_p_din1;
assign grp_fu_204_p_ce = grp_fu_1921_ce;
assign grp_fu_204_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1921_p_din0;
assign grp_fu_204_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_grp_fu_1921_p_din1;
assign grp_fu_208_p_ce = grp_fu_1857_ce;
assign grp_fu_208_p_din0 = grp_fu_1857_p0;
assign grp_fu_208_p_din1 = grp_fu_1857_p1;
assign grp_fu_208_p_opcode = 2'd0;
assign grp_fu_212_p_ce = grp_fu_1861_ce;
assign grp_fu_212_p_din0 = grp_fu_1861_p0;
assign grp_fu_212_p_din1 = grp_fu_1861_p1;
assign grp_fu_212_p_opcode = 2'd0;
assign grp_fu_216_p_ce = grp_fu_1881_ce;
assign grp_fu_216_p_din0 = grp_fu_1881_p0;
assign grp_fu_216_p_din1 = grp_fu_1881_p1;
assign grp_fu_220_p_ce = grp_fu_1885_ce;
assign grp_fu_220_p_din0 = grp_fu_1885_p0;
assign grp_fu_220_p_din1 = grp_fu_1885_p1;
assign grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_start = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_ap_start_reg;
assign icmp_ln31_fu_412_p2 = ((v5_fu_116 < 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_1_fu_786_p2 = ((v6_1_reg_306 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_462_p2 = ((v6_reg_294 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_638_p4 = {{v6_reg_294[7:2]}};
assign lshr_ln31_1_fu_442_p4 = {{v5_fu_116[7:1]}};
assign lshr_ln32_1_fu_972_p4 = {{v6_1_reg_306[7:2]}};
assign lshr_ln_fu_422_p4 = {{v5_fu_116[7:3]}};
assign mul_ln101_1_fu_1038_p0 = mul_ln101_1_fu_1038_p00;
assign mul_ln101_1_fu_1038_p00 = tmp_26_reg_1646;
assign mul_ln101_1_fu_1038_p1 = 14'd220;
assign mul_ln101_fu_704_p0 = mul_ln101_fu_704_p00;
assign mul_ln101_fu_704_p00 = tmp_20_reg_1382;
assign mul_ln101_fu_704_p1 = 14'd220;
assign mul_ln114_1_fu_1047_p0 = mul_ln114_1_fu_1047_p00;
assign mul_ln114_1_fu_1047_p00 = tmp_27_reg_1656;
assign mul_ln114_1_fu_1047_p1 = 14'd220;
assign mul_ln114_fu_713_p0 = mul_ln114_fu_713_p00;
assign mul_ln114_fu_713_p00 = tmp_21_reg_1392;
assign mul_ln114_fu_713_p1 = 14'd220;
assign mul_ln127_1_fu_1056_p0 = mul_ln127_1_fu_1056_p00;
assign mul_ln127_1_fu_1056_p00 = tmp_28_reg_1681;
assign mul_ln127_1_fu_1056_p1 = 14'd220;
assign mul_ln127_fu_722_p0 = mul_ln127_fu_722_p00;
assign mul_ln127_fu_722_p00 = tmp_22_reg_1417;
assign mul_ln127_fu_722_p1 = 14'd220;
assign mul_ln140_1_fu_1072_p0 = mul_ln140_1_fu_1072_p00;
assign mul_ln140_1_fu_1072_p00 = empty_308_fu_1062_p2;
assign mul_ln140_1_fu_1072_p1 = 14'd220;
assign mul_ln140_fu_738_p0 = mul_ln140_fu_738_p00;
assign mul_ln140_fu_738_p00 = empty_279_fu_728_p2;
assign mul_ln140_fu_738_p1 = 14'd220;
assign mul_ln34_1_fu_986_p0 = mul_ln34_1_fu_986_p00;
assign mul_ln34_1_fu_986_p00 = lshr_ln32_1_fu_972_p4;
assign mul_ln34_1_fu_986_p1 = 14'd220;
assign mul_ln34_fu_652_p0 = mul_ln34_fu_652_p00;
assign mul_ln34_fu_652_p00 = lshr_ln2_fu_638_p4;
assign mul_ln34_fu_652_p1 = 14'd220;
assign mul_ln38_fu_436_p0 = mul_ln38_fu_436_p00;
assign mul_ln38_fu_436_p00 = lshr_ln_fu_422_p4;
assign mul_ln38_fu_436_p1 = 13'd220;
assign mul_ln49_1_fu_995_p0 = mul_ln49_1_fu_995_p00;
assign mul_ln49_1_fu_995_p00 = tmp_23_reg_1611;
assign mul_ln49_1_fu_995_p1 = 14'd220;
assign mul_ln49_fu_661_p0 = mul_ln49_fu_661_p00;
assign mul_ln49_fu_661_p00 = tmp_reg_1347;
assign mul_ln49_fu_661_p1 = 14'd220;
assign mul_ln62_1_fu_1004_p0 = mul_ln62_1_fu_1004_p00;
assign mul_ln62_1_fu_1004_p00 = tmp_24_reg_1621;
assign mul_ln62_1_fu_1004_p1 = 14'd220;
assign mul_ln62_fu_670_p0 = mul_ln62_fu_670_p00;
assign mul_ln62_fu_670_p00 = tmp_s_reg_1357;
assign mul_ln62_fu_670_p1 = 14'd220;
assign mul_ln75_1_fu_1013_p0 = mul_ln75_1_fu_1013_p00;
assign mul_ln75_1_fu_1013_p00 = tmp_25_reg_1631;
assign mul_ln75_1_fu_1013_p1 = 14'd220;
assign mul_ln75_fu_679_p0 = mul_ln75_fu_679_p00;
assign mul_ln75_fu_679_p00 = tmp_19_reg_1367;
assign mul_ln75_fu_679_p1 = 14'd220;
assign mul_ln88_1_fu_1029_p0 = mul_ln88_1_fu_1029_p00;
assign mul_ln88_1_fu_1029_p00 = empty_295_fu_1019_p2;
assign mul_ln88_1_fu_1029_p1 = 14'd220;
assign mul_ln88_fu_695_p0 = mul_ln88_fu_695_p00;
assign mul_ln88_fu_695_p00 = empty_266_fu_685_p2;
assign mul_ln88_fu_695_p1 = 14'd220;
assign p_cast3992_fu_538_p1 = grp_fu_1120_p3;
assign p_cast3993_fu_586_p1 = grp_fu_1136_p3;
assign p_cast3994_fu_610_p1 = grp_fu_1144_p3;
assign p_cast3995_fu_614_p1 = grp_fu_1152_p4;
assign p_cast3996_fu_618_p1 = grp_fu_1162_p3;
assign p_cast3997_fu_622_p1 = grp_fu_1170_p3;
assign p_cast3998_fu_626_p1 = grp_fu_1178_p3;
assign p_cast3999_fu_630_p1 = grp_fu_1186_p4;
assign p_cast4000_fu_872_p1 = grp_fu_1196_p3;
assign p_cast4001_fu_916_p1 = grp_fu_1204_p3;
assign p_cast4002_fu_920_p1 = grp_fu_1212_p3;
assign p_cast4003_fu_944_p1 = grp_fu_1220_p3;
assign p_cast4004_fu_948_p1 = grp_fu_1228_p4;
assign p_cast4005_fu_952_p1 = grp_fu_1238_p3;
assign p_cast4006_fu_956_p1 = grp_fu_1246_p3;
assign p_cast4007_fu_960_p1 = grp_fu_1254_p3;
assign p_cast4008_fu_964_p1 = grp_fu_1262_p4;
assign p_cast_fu_582_p1 = grp_fu_1128_p3;
assign trunc_ln31_fu_418_p1 = v5_fu_116[2:0];
assign trunc_ln32_1_fu_968_p1 = v6_1_reg_306[1:0];
assign trunc_ln32_fu_634_p1 = v6_reg_294[1:0];
assign v101_1_fu_1110_p1 = v224_1_load_8_reg_1802;
assign v101_fu_776_p1 = v224_0_load_8_reg_1538;
assign v11_1_fu_1078_p1 = v224_1_load_reg_1661;
assign v11_fu_744_p1 = v224_0_load_reg_1397;
assign v224_0_address0 = v224_0_address0_local;
assign v224_0_address1 = v224_0_address1_local;
assign v224_0_ce0 = v224_0_ce0_local;
assign v224_0_ce1 = v224_0_ce1_local;
assign v224_1_address0 = v224_1_address0_local;
assign v224_1_address1 = v224_1_address1_local;
assign v224_1_ce0 = v224_1_ce0_local;
assign v224_1_ce1 = v224_1_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_3_ce1;
assign v228_4_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_4_address0;
assign v228_4_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_4_address1;
assign v228_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_4_ce0;
assign v228_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_4_ce1;
assign v228_5_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_5_address0;
assign v228_5_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_5_address1;
assign v228_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_5_ce0;
assign v228_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_5_ce1;
assign v228_6_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_6_address0;
assign v228_6_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_6_address1;
assign v228_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_6_ce0;
assign v228_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_318_v228_6_ce1;
assign v228_7_address0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_7_address0;
assign v228_7_address1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_7_address1;
assign v228_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_7_ce0;
assign v228_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_210_fu_362_v228_7_ce1;
assign v236_read = v236_read_local;
assign v24_1_fu_1082_p1 = v224_1_load_1_reg_1686;
assign v24_fu_748_p1 = v224_0_load_1_reg_1422;
assign v35_1_fu_1086_p1 = v224_1_load_2_reg_1691;
assign v35_fu_752_p1 = v224_0_load_2_reg_1427;
assign v46_1_fu_1090_p1 = v224_1_load_3_reg_1706;
assign v46_fu_756_p1 = v224_0_load_3_reg_1442;
assign v57_1_fu_1094_p1 = v224_1_load_4_reg_1711;
assign v57_fu_760_p1 = v224_0_load_4_reg_1447;
assign v68_1_fu_1098_p1 = v224_1_load_5_reg_1726;
assign v68_fu_764_p1 = v224_0_load_5_reg_1462;
assign v79_1_fu_1102_p1 = v224_1_load_6_reg_1731;
assign v79_fu_768_p1 = v224_0_load_6_reg_1467;
assign v90_1_fu_1106_p1 = v224_1_load_7_reg_1792;
assign v90_fu_772_p1 = v224_0_load_7_reg_1528;
assign zext_ln31_fu_452_p1 = lshr_ln31_1_fu_442_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1302[14:7] <= 8'b00000000;
end
endmodule 