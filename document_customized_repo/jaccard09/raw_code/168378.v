module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v4,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_opcode,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce); 
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
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
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
output  [14:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [14:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [14:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [14:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
input  [31:0] v4;
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
output  [1:0] grp_fu_168_p_opcode;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[14:0] v229_0_address0;
reg v229_0_ce0;
reg v229_0_we0;
reg[31:0] v229_0_d0;
reg[14:0] v229_0_address1;
reg v229_0_ce1;
reg v229_0_we1;
reg[31:0] v229_0_d1;
reg[14:0] v229_1_address0;
reg v229_1_ce0;
reg v229_1_we0;
reg[31:0] v229_1_d0;
reg[14:0] v229_1_address1;
reg v229_1_ce1;
reg v229_1_we1;
reg[31:0] v229_1_d1;
(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [31:0] reg_381;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state18;
reg   [31:0] reg_386;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state19;
reg   [31:0] reg_390;
reg   [31:0] reg_394;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state20;
reg   [31:0] reg_399;
reg   [31:0] reg_404;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state21;
reg   [31:0] reg_409;
reg   [31:0] reg_414;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_419;
wire   [15:0] zext_ln31_fu_438_p1;
reg   [15:0] zext_ln31_reg_1283;
wire    ap_CS_fsm_state2;
wire   [2:0] trunc_ln31_fu_442_p1;
reg   [2:0] trunc_ln31_reg_1296;
wire   [12:0] mul_ln38_fu_460_p2;
reg   [12:0] mul_ln38_reg_1302;
wire   [0:0] cmp11_fu_466_p2;
reg   [0:0] cmp11_reg_1308;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_fu_482_p2;
reg   [7:0] add_ln32_reg_1321;
wire   [15:0] zext_ln32_fu_505_p1;
reg   [15:0] zext_ln32_reg_1326;
wire    ap_CS_fsm_state4;
reg   [6:0] tmp_reg_1344;
wire    ap_CS_fsm_state5;
reg   [6:0] tmp_s_reg_1354;
wire    ap_CS_fsm_state6;
reg   [6:0] tmp_18_reg_1369;
reg   [6:0] tmp_19_reg_1389;
wire   [0:0] trunc_ln32_fu_625_p1;
reg   [0:0] trunc_ln32_reg_1424;
wire   [14:0] mul_ln34_fu_643_p2;
reg   [14:0] mul_ln34_reg_1429;
wire   [14:0] mul_ln49_fu_652_p2;
reg   [14:0] mul_ln49_reg_1434;
wire   [14:0] mul_ln62_fu_668_p2;
reg   [14:0] mul_ln62_reg_1439;
wire   [14:0] mul_ln75_fu_677_p2;
reg   [14:0] mul_ln75_reg_1444;
wire   [14:0] mul_ln88_fu_693_p2;
reg   [14:0] mul_ln88_reg_1449;
wire   [14:0] mul_ln101_fu_702_p2;
reg   [14:0] mul_ln101_reg_1454;
wire   [14:0] mul_ln114_fu_718_p2;
reg   [14:0] mul_ln114_reg_1459;
wire   [14:0] mul_ln127_fu_727_p2;
reg   [14:0] mul_ln127_reg_1464;
wire   [14:0] mul_ln140_fu_743_p2;
reg   [14:0] mul_ln140_reg_1469;
wire   [31:0] v11_fu_749_p1;
reg   [31:0] v11_reg_1474;
wire    ap_CS_fsm_state12;
wire   [31:0] v24_fu_754_p1;
reg   [31:0] v24_reg_1479;
wire   [31:0] v35_fu_759_p1;
reg   [31:0] v35_reg_1484;
wire   [31:0] v46_fu_764_p1;
reg   [31:0] v46_reg_1489;
wire   [31:0] v57_fu_769_p1;
reg   [31:0] v57_reg_1494;
wire   [31:0] v68_fu_774_p1;
reg   [31:0] v68_reg_1499;
wire   [31:0] v79_fu_779_p1;
reg   [31:0] v79_reg_1504;
wire   [31:0] v90_fu_784_p1;
reg   [31:0] v90_reg_1509;
wire   [31:0] v101_fu_789_p1;
reg   [31:0] v101_reg_1514;
wire    ap_CS_fsm_state14;
wire   [7:0] add_ln32_1_fu_804_p2;
reg   [7:0] add_ln32_1_reg_1527;
wire    ap_CS_fsm_state15;
reg   [6:0] tmp_21_reg_1537;
wire    ap_CS_fsm_state16;
reg   [6:0] tmp_22_reg_1547;
wire    ap_CS_fsm_state17;
reg   [6:0] tmp_23_reg_1562;
reg   [6:0] tmp_24_reg_1582;
wire   [0:0] trunc_ln32_1_fu_936_p1;
reg   [0:0] trunc_ln32_1_reg_1617;
wire   [14:0] mul_ln34_1_fu_954_p2;
reg   [14:0] mul_ln34_1_reg_1622;
wire   [14:0] mul_ln49_1_fu_963_p2;
reg   [14:0] mul_ln49_1_reg_1627;
wire   [14:0] mul_ln62_1_fu_979_p2;
reg   [14:0] mul_ln62_1_reg_1632;
wire   [14:0] mul_ln75_1_fu_988_p2;
reg   [14:0] mul_ln75_1_reg_1637;
wire   [14:0] mul_ln88_1_fu_1004_p2;
reg   [14:0] mul_ln88_1_reg_1642;
wire   [14:0] mul_ln101_1_fu_1013_p2;
reg   [14:0] mul_ln101_1_reg_1647;
wire   [14:0] mul_ln114_1_fu_1029_p2;
reg   [14:0] mul_ln114_1_reg_1652;
wire   [14:0] mul_ln127_1_fu_1038_p2;
reg   [14:0] mul_ln127_1_reg_1657;
wire   [14:0] mul_ln140_1_fu_1054_p2;
reg   [14:0] mul_ln140_1_reg_1662;
wire   [31:0] v11_1_fu_1060_p1;
reg   [31:0] v11_1_reg_1667;
wire    ap_CS_fsm_state23;
wire   [31:0] v24_1_fu_1065_p1;
reg   [31:0] v24_1_reg_1672;
wire   [31:0] v35_1_fu_1070_p1;
reg   [31:0] v35_1_reg_1677;
wire   [31:0] v46_1_fu_1075_p1;
reg   [31:0] v46_1_reg_1682;
wire   [31:0] v57_1_fu_1080_p1;
reg   [31:0] v57_1_reg_1687;
wire   [31:0] v68_1_fu_1085_p1;
reg   [31:0] v68_1_reg_1692;
wire   [31:0] v79_1_fu_1090_p1;
reg   [31:0] v79_1_reg_1697;
wire   [31:0] v90_1_fu_1095_p1;
reg   [31:0] v90_1_reg_1702;
wire   [31:0] v101_1_fu_1100_p1;
reg   [31:0] v101_1_reg_1707;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_4_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_6_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1712_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1712_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1712_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1712_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1716_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1716_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1716_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1716_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1720_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1720_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1720_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1720_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1724_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1724_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1724_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1728_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1728_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1728_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1732_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1732_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1732_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1736_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1736_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1736_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1740_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1740_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1740_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1744_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1744_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1744_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_d1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_5_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_7_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1712_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1712_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1712_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1712_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1716_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1716_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1716_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1716_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1720_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1720_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1720_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1720_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1724_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1724_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1724_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1728_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1728_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1728_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1732_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1732_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1732_p_ce;
reg   [7:0] v6_reg_281;
wire   [0:0] icmp_ln31_fu_432_p2;
wire    ap_CS_fsm_state13;
reg   [7:0] v6_1_reg_293;
wire    ap_CS_fsm_state24;
wire   [0:0] icmp_ln32_fu_472_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_start_reg;
wire   [63:0] p_cast4369_fu_549_p1;
wire   [63:0] p_cast_fu_573_p1;
wire   [63:0] p_cast4370_fu_577_p1;
wire   [63:0] p_cast4371_fu_601_p1;
wire   [63:0] p_cast4372_fu_605_p1;
wire   [63:0] p_cast4373_fu_609_p1;
wire   [63:0] p_cast4374_fu_613_p1;
wire   [63:0] p_cast4375_fu_617_p1;
wire   [63:0] p_cast4376_fu_621_p1;
wire   [63:0] p_cast4377_fu_860_p1;
wire   [63:0] p_cast4378_fu_884_p1;
wire   [63:0] p_cast4379_fu_888_p1;
wire   [63:0] p_cast4380_fu_912_p1;
wire   [63:0] p_cast4381_fu_916_p1;
wire   [63:0] p_cast4382_fu_920_p1;
wire   [63:0] p_cast4383_fu_924_p1;
wire   [63:0] p_cast4384_fu_928_p1;
wire   [63:0] p_cast4385_fu_932_p1;
reg   [7:0] v5_fu_112;
wire   [7:0] add_ln31_fu_810_p2;
wire   [0:0] icmp_ln32_1_fu_794_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_ce0_local;
reg   [15:0] v224_address0_local;
reg    v224_ce1_local;
reg   [15:0] v224_address1_local;
wire   [4:0] lshr_ln_fu_446_p4;
wire   [4:0] mul_ln38_fu_460_p0;
wire   [8:0] mul_ln38_fu_460_p1;
wire   [6:0] tmp_20_fu_488_p4;
wire   [7:0] or_ln_fu_497_p3;
wire   [7:0] empty_123_fu_509_p2;
wire   [7:0] empty_130_fu_529_p2;
wire   [15:0] grp_fu_1105_p3;
wire   [7:0] empty_137_fu_553_p2;
wire   [15:0] grp_fu_1113_p3;
wire   [15:0] grp_fu_1121_p4;
wire   [7:0] empty_144_fu_581_p2;
wire   [15:0] grp_fu_1131_p3;
wire   [15:0] grp_fu_1139_p4;
wire   [15:0] grp_fu_1149_p3;
wire   [15:0] grp_fu_1157_p4;
wire   [15:0] grp_fu_1167_p3;
wire   [15:0] grp_fu_1175_p4;
wire   [6:0] lshr_ln1_fu_629_p4;
wire   [6:0] mul_ln34_fu_643_p0;
wire   [8:0] mul_ln34_fu_643_p1;
wire   [6:0] mul_ln49_fu_652_p0;
wire   [8:0] mul_ln49_fu_652_p1;
wire   [6:0] empty_129_fu_658_p2;
wire   [6:0] mul_ln62_fu_668_p0;
wire   [8:0] mul_ln62_fu_668_p1;
wire   [6:0] mul_ln75_fu_677_p0;
wire   [8:0] mul_ln75_fu_677_p1;
wire   [6:0] empty_136_fu_683_p2;
wire   [6:0] mul_ln88_fu_693_p0;
wire   [8:0] mul_ln88_fu_693_p1;
wire   [6:0] mul_ln101_fu_702_p0;
wire   [8:0] mul_ln101_fu_702_p1;
wire   [6:0] empty_143_fu_708_p2;
wire   [6:0] mul_ln114_fu_718_p0;
wire   [8:0] mul_ln114_fu_718_p1;
wire   [6:0] mul_ln127_fu_727_p0;
wire   [8:0] mul_ln127_fu_727_p1;
wire   [6:0] empty_150_fu_733_p2;
wire   [6:0] mul_ln140_fu_743_p0;
wire   [8:0] mul_ln140_fu_743_p1;
wire   [7:0] empty_153_fu_820_p2;
wire   [7:0] empty_160_fu_840_p2;
wire   [15:0] grp_fu_1185_p3;
wire   [7:0] empty_167_fu_864_p2;
wire   [15:0] grp_fu_1193_p3;
wire   [15:0] grp_fu_1201_p4;
wire   [7:0] empty_174_fu_892_p2;
wire   [15:0] grp_fu_1211_p3;
wire   [15:0] grp_fu_1219_p4;
wire   [15:0] grp_fu_1229_p3;
wire   [15:0] grp_fu_1237_p4;
wire   [15:0] grp_fu_1247_p3;
wire   [15:0] grp_fu_1255_p4;
wire   [6:0] lshr_ln32_1_fu_940_p4;
wire   [6:0] mul_ln34_1_fu_954_p0;
wire   [8:0] mul_ln34_1_fu_954_p1;
wire   [6:0] mul_ln49_1_fu_963_p0;
wire   [8:0] mul_ln49_1_fu_963_p1;
wire   [6:0] empty_159_fu_969_p2;
wire   [6:0] mul_ln62_1_fu_979_p0;
wire   [8:0] mul_ln62_1_fu_979_p1;
wire   [6:0] mul_ln75_1_fu_988_p0;
wire   [8:0] mul_ln75_1_fu_988_p1;
wire   [6:0] empty_166_fu_994_p2;
wire   [6:0] mul_ln88_1_fu_1004_p0;
wire   [8:0] mul_ln88_1_fu_1004_p1;
wire   [6:0] mul_ln101_1_fu_1013_p0;
wire   [8:0] mul_ln101_1_fu_1013_p1;
wire   [6:0] empty_173_fu_1019_p2;
wire   [6:0] mul_ln114_1_fu_1029_p0;
wire   [8:0] mul_ln114_1_fu_1029_p1;
wire   [6:0] mul_ln127_1_fu_1038_p0;
wire   [8:0] mul_ln127_1_fu_1038_p1;
wire   [6:0] empty_180_fu_1044_p2;
wire   [6:0] mul_ln140_1_fu_1054_p0;
wire   [8:0] mul_ln140_1_fu_1054_p1;
wire   [7:0] grp_fu_1105_p0;
wire   [7:0] grp_fu_1105_p1;
wire   [7:0] grp_fu_1105_p2;
wire   [7:0] grp_fu_1113_p0;
wire   [7:0] grp_fu_1113_p1;
wire   [7:0] grp_fu_1113_p2;
wire   [1:0] grp_fu_1121_p1;
wire   [7:0] grp_fu_1121_p2;
wire   [7:0] grp_fu_1121_p3;
wire   [7:0] grp_fu_1131_p0;
wire   [7:0] grp_fu_1131_p1;
wire   [7:0] grp_fu_1131_p2;
wire   [2:0] grp_fu_1139_p1;
wire   [7:0] grp_fu_1139_p2;
wire   [7:0] grp_fu_1139_p3;
wire   [7:0] grp_fu_1149_p0;
wire   [7:0] grp_fu_1149_p1;
wire   [7:0] grp_fu_1149_p2;
wire   [2:0] grp_fu_1157_p1;
wire   [7:0] grp_fu_1157_p2;
wire   [7:0] grp_fu_1157_p3;
wire   [7:0] grp_fu_1167_p0;
wire   [7:0] grp_fu_1167_p1;
wire   [7:0] grp_fu_1167_p2;
wire   [3:0] grp_fu_1175_p1;
wire   [7:0] grp_fu_1175_p2;
wire   [7:0] grp_fu_1175_p3;
wire   [7:0] grp_fu_1185_p0;
wire   [7:0] grp_fu_1185_p1;
wire   [7:0] grp_fu_1185_p2;
wire   [7:0] grp_fu_1193_p0;
wire   [7:0] grp_fu_1193_p1;
wire   [7:0] grp_fu_1193_p2;
wire   [1:0] grp_fu_1201_p1;
wire   [7:0] grp_fu_1201_p2;
wire   [7:0] grp_fu_1201_p3;
wire   [7:0] grp_fu_1211_p0;
wire   [7:0] grp_fu_1211_p1;
wire   [7:0] grp_fu_1211_p2;
wire   [2:0] grp_fu_1219_p1;
wire   [7:0] grp_fu_1219_p2;
wire   [7:0] grp_fu_1219_p3;
wire   [7:0] grp_fu_1229_p0;
wire   [7:0] grp_fu_1229_p1;
wire   [7:0] grp_fu_1229_p2;
wire   [2:0] grp_fu_1237_p1;
wire   [7:0] grp_fu_1237_p2;
wire   [7:0] grp_fu_1237_p3;
wire   [7:0] grp_fu_1247_p0;
wire   [7:0] grp_fu_1247_p1;
wire   [7:0] grp_fu_1247_p2;
wire   [3:0] grp_fu_1255_p1;
wire   [7:0] grp_fu_1255_p2;
wire   [7:0] grp_fu_1255_p3;
reg   [31:0] grp_fu_1712_p0;
reg   [31:0] grp_fu_1712_p1;
reg    grp_fu_1712_ce;
wire   [31:0] grp_fu_1716_p2;
reg   [31:0] grp_fu_1716_p0;
reg   [31:0] grp_fu_1716_p1;
reg    grp_fu_1716_ce;
wire   [31:0] grp_fu_1720_p2;
reg   [31:0] grp_fu_1720_p0;
reg   [31:0] grp_fu_1720_p1;
reg    grp_fu_1720_ce;
reg   [31:0] grp_fu_1724_p0;
reg   [31:0] grp_fu_1724_p1;
reg    grp_fu_1724_ce;
reg   [31:0] grp_fu_1728_p0;
reg   [31:0] grp_fu_1728_p1;
reg    grp_fu_1728_ce;
reg   [31:0] grp_fu_1732_p0;
reg   [31:0] grp_fu_1732_p1;
reg    grp_fu_1732_ce;
reg    grp_fu_1736_ce;
reg    grp_fu_1740_ce;
reg    grp_fu_1744_ce;
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
wire   [15:0] grp_fu_1105_p00;
wire   [15:0] grp_fu_1113_p00;
wire   [15:0] grp_fu_1131_p00;
wire   [15:0] grp_fu_1149_p00;
wire   [15:0] grp_fu_1167_p00;
wire   [15:0] grp_fu_1185_p00;
wire   [15:0] grp_fu_1193_p00;
wire   [15:0] grp_fu_1211_p00;
wire   [15:0] grp_fu_1229_p00;
wire   [15:0] grp_fu_1247_p00;
wire   [14:0] mul_ln101_1_fu_1013_p00;
wire   [14:0] mul_ln101_fu_702_p00;
wire   [14:0] mul_ln114_1_fu_1029_p00;
wire   [14:0] mul_ln114_fu_718_p00;
wire   [14:0] mul_ln127_1_fu_1038_p00;
wire   [14:0] mul_ln127_fu_727_p00;
wire   [14:0] mul_ln140_1_fu_1054_p00;
wire   [14:0] mul_ln140_fu_743_p00;
wire   [14:0] mul_ln34_1_fu_954_p00;
wire   [14:0] mul_ln34_fu_643_p00;
wire   [12:0] mul_ln38_fu_460_p00;
wire   [14:0] mul_ln49_1_fu_963_p00;
wire   [14:0] mul_ln49_fu_652_p00;
wire   [14:0] mul_ln62_1_fu_979_p00;
wire   [14:0] mul_ln62_fu_668_p00;
wire   [14:0] mul_ln75_1_fu_988_p00;
wire   [14:0] mul_ln75_fu_677_p00;
wire   [14:0] mul_ln88_1_fu_1004_p00;
wire   [14:0] mul_ln88_fu_693_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 24'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_start_reg = 1'b0;
#0 v5_fu_112 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_305(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_d1),.v229_1_q1(v229_1_q1),.mul_ln38(mul_ln38_reg_1302),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_4_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_4_address0),.v228_4_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_4_ce0),.v228_4_q0(v228_4_q0),.v228_4_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_4_address1),.v228_4_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_4_ce1),.v228_4_q1(v228_4_q1),.v228_6_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_6_address0),.v228_6_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_6_ce0),.v228_6_q0(v228_6_q0),.v228_6_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_6_address1),.v228_6_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_6_ce1),.v228_6_q1(v228_6_q1),.mul_ln34(mul_ln34_reg_1429),.mul_ln62(mul_ln62_reg_1439),.mul_ln88(mul_ln88_reg_1449),.mul_ln114(mul_ln114_reg_1459),.mul_ln140(mul_ln140_reg_1469),.mul_ln49(mul_ln49_reg_1434),.mul_ln75(mul_ln75_reg_1444),.mul_ln101(mul_ln101_reg_1454),.mul_ln127(mul_ln127_reg_1464),.empty_18(trunc_ln32_reg_1424),.v4(v4),.cmp11(cmp11_reg_1308),.empty(trunc_ln31_reg_1296),.v11(v11_reg_1474),.v24(v24_reg_1479),.v35(v35_reg_1484),.v46(v46_reg_1489),.v57(v57_reg_1494),.v68(v68_reg_1499),.v79(v79_reg_1504),.v90(v90_reg_1509),.v101(v101_reg_1514),.grp_fu_1712_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1712_p_din0),.grp_fu_1712_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1712_p_din1),.grp_fu_1712_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1712_p_opcode),.grp_fu_1712_p_dout0(grp_fu_168_p_dout0),.grp_fu_1712_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1712_p_ce),.grp_fu_1716_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1716_p_din0),.grp_fu_1716_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1716_p_din1),.grp_fu_1716_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1716_p_opcode),.grp_fu_1716_p_dout0(grp_fu_1716_p2),.grp_fu_1716_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1716_p_ce),.grp_fu_1720_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1720_p_din0),.grp_fu_1720_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1720_p_din1),.grp_fu_1720_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1720_p_opcode),.grp_fu_1720_p_dout0(grp_fu_1720_p2),.grp_fu_1720_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1720_p_ce),.grp_fu_1724_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1724_p_din0),.grp_fu_1724_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1724_p_din1),.grp_fu_1724_p_dout0(grp_fu_172_p_dout0),.grp_fu_1724_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1724_p_ce),.grp_fu_1728_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1728_p_din0),.grp_fu_1728_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1728_p_din1),.grp_fu_1728_p_dout0(grp_fu_176_p_dout0),.grp_fu_1728_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1728_p_ce),.grp_fu_1732_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1732_p_din0),.grp_fu_1732_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1732_p_din1),.grp_fu_1732_p_dout0(grp_fu_180_p_dout0),.grp_fu_1732_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1732_p_ce),.grp_fu_1736_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1736_p_din0),.grp_fu_1736_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1736_p_din1),.grp_fu_1736_p_dout0(grp_fu_184_p_dout0),.grp_fu_1736_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1736_p_ce),.grp_fu_1740_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1740_p_din0),.grp_fu_1740_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1740_p_din1),.grp_fu_1740_p_dout0(grp_fu_188_p_dout0),.grp_fu_1740_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1740_p_ce),.grp_fu_1744_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1744_p_din0),.grp_fu_1744_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1744_p_din1),.grp_fu_1744_p_dout0(grp_fu_192_p_dout0),.grp_fu_1744_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1744_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_26 grp_kernel_2mm_node0_Pipeline_label_26_fu_344(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_d1),.v229_1_q1(v229_1_q1),.mul_ln38(mul_ln38_reg_1302),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_3_ce1),.v228_3_q1(v228_3_q1),.v228_5_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_5_address0),.v228_5_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_5_ce0),.v228_5_q0(v228_5_q0),.v228_5_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_5_address1),.v228_5_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_5_ce1),.v228_5_q1(v228_5_q1),.v228_7_address0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_7_address0),.v228_7_ce0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_7_ce0),.v228_7_q0(v228_7_q0),.v228_7_address1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_7_address1),.v228_7_ce1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_7_ce1),.v228_7_q1(v228_7_q1),.mul_ln34_1(mul_ln34_1_reg_1622),.mul_ln62_1(mul_ln62_1_reg_1632),.mul_ln88_1(mul_ln88_1_reg_1642),.mul_ln114_1(mul_ln114_1_reg_1652),.mul_ln140_1(mul_ln140_1_reg_1662),.mul_ln49_1(mul_ln49_1_reg_1627),.mul_ln75_1(mul_ln75_1_reg_1637),.mul_ln101_1(mul_ln101_1_reg_1647),.mul_ln127_1(mul_ln127_1_reg_1657),.empty_17(trunc_ln32_1_reg_1617),.empty(trunc_ln31_reg_1296),.v11_1(v11_1_reg_1667),.v24_1(v24_1_reg_1672),.v35_1(v35_1_reg_1677),.v46_1(v46_1_reg_1682),.v57_1(v57_1_reg_1687),.v68_1(v68_1_reg_1692),.v79_1(v79_1_reg_1697),.v90_1(v90_1_reg_1702),.v101_1(v101_1_reg_1707),.grp_fu_1712_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1712_p_din0),.grp_fu_1712_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1712_p_din1),.grp_fu_1712_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1712_p_opcode),.grp_fu_1712_p_dout0(grp_fu_168_p_dout0),.grp_fu_1712_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1712_p_ce),.grp_fu_1716_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1716_p_din0),.grp_fu_1716_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1716_p_din1),.grp_fu_1716_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1716_p_opcode),.grp_fu_1716_p_dout0(grp_fu_1716_p2),.grp_fu_1716_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1716_p_ce),.grp_fu_1720_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1720_p_din0),.grp_fu_1720_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1720_p_din1),.grp_fu_1720_p_opcode(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1720_p_opcode),.grp_fu_1720_p_dout0(grp_fu_1720_p2),.grp_fu_1720_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1720_p_ce),.grp_fu_1724_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1724_p_din0),.grp_fu_1724_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1724_p_din1),.grp_fu_1724_p_dout0(grp_fu_172_p_dout0),.grp_fu_1724_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1724_p_ce),.grp_fu_1728_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1728_p_din0),.grp_fu_1728_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1728_p_din1),.grp_fu_1728_p_dout0(grp_fu_176_p_dout0),.grp_fu_1728_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1728_p_ce),.grp_fu_1732_p_din0(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1732_p_din0),.grp_fu_1732_p_din1(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1732_p_din1),.grp_fu_1732_p_dout0(grp_fu_180_p_dout0),.grp_fu_1732_p_ce(grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1732_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U297(.din0(mul_ln38_fu_460_p0),.din1(mul_ln38_fu_460_p1),.dout(mul_ln38_fu_460_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U298(.din0(mul_ln34_fu_643_p0),.din1(mul_ln34_fu_643_p1),.dout(mul_ln34_fu_643_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U299(.din0(mul_ln49_fu_652_p0),.din1(mul_ln49_fu_652_p1),.dout(mul_ln49_fu_652_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U300(.din0(mul_ln62_fu_668_p0),.din1(mul_ln62_fu_668_p1),.dout(mul_ln62_fu_668_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U301(.din0(mul_ln75_fu_677_p0),.din1(mul_ln75_fu_677_p1),.dout(mul_ln75_fu_677_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U302(.din0(mul_ln88_fu_693_p0),.din1(mul_ln88_fu_693_p1),.dout(mul_ln88_fu_693_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U303(.din0(mul_ln101_fu_702_p0),.din1(mul_ln101_fu_702_p1),.dout(mul_ln101_fu_702_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U304(.din0(mul_ln114_fu_718_p0),.din1(mul_ln114_fu_718_p1),.dout(mul_ln114_fu_718_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U305(.din0(mul_ln127_fu_727_p0),.din1(mul_ln127_fu_727_p1),.dout(mul_ln127_fu_727_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U306(.din0(mul_ln140_fu_743_p0),.din1(mul_ln140_fu_743_p1),.dout(mul_ln140_fu_743_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U307(.din0(mul_ln34_1_fu_954_p0),.din1(mul_ln34_1_fu_954_p1),.dout(mul_ln34_1_fu_954_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U308(.din0(mul_ln49_1_fu_963_p0),.din1(mul_ln49_1_fu_963_p1),.dout(mul_ln49_1_fu_963_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U309(.din0(mul_ln62_1_fu_979_p0),.din1(mul_ln62_1_fu_979_p1),.dout(mul_ln62_1_fu_979_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U310(.din0(mul_ln75_1_fu_988_p0),.din1(mul_ln75_1_fu_988_p1),.dout(mul_ln75_1_fu_988_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U311(.din0(mul_ln88_1_fu_1004_p0),.din1(mul_ln88_1_fu_1004_p1),.dout(mul_ln88_1_fu_1004_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U312(.din0(mul_ln101_1_fu_1013_p0),.din1(mul_ln101_1_fu_1013_p1),.dout(mul_ln101_1_fu_1013_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U313(.din0(mul_ln114_1_fu_1029_p0),.din1(mul_ln114_1_fu_1029_p1),.dout(mul_ln114_1_fu_1029_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U314(.din0(mul_ln127_1_fu_1038_p0),.din1(mul_ln127_1_fu_1038_p1),.dout(mul_ln127_1_fu_1038_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U315(.din0(mul_ln140_1_fu_1054_p0),.din1(mul_ln140_1_fu_1054_p1),.dout(mul_ln140_1_fu_1054_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U316(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1105_p0),.din1(grp_fu_1105_p1),.din2(grp_fu_1105_p2),.ce(1'b1),.dout(grp_fu_1105_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U317(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1113_p0),.din1(grp_fu_1113_p1),.din2(grp_fu_1113_p2),.ce(1'b1),.dout(grp_fu_1113_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U318(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_281),.din1(grp_fu_1121_p1),.din2(grp_fu_1121_p2),.din3(grp_fu_1121_p3),.ce(1'b1),.dout(grp_fu_1121_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U319(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1131_p0),.din1(grp_fu_1131_p1),.din2(grp_fu_1131_p2),.ce(1'b1),.dout(grp_fu_1131_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U320(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_281),.din1(grp_fu_1139_p1),.din2(grp_fu_1139_p2),.din3(grp_fu_1139_p3),.ce(1'b1),.dout(grp_fu_1139_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U321(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1149_p0),.din1(grp_fu_1149_p1),.din2(grp_fu_1149_p2),.ce(1'b1),.dout(grp_fu_1149_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U322(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_281),.din1(grp_fu_1157_p1),.din2(grp_fu_1157_p2),.din3(grp_fu_1157_p3),.ce(1'b1),.dout(grp_fu_1157_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U323(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1167_p0),.din1(grp_fu_1167_p1),.din2(grp_fu_1167_p2),.ce(1'b1),.dout(grp_fu_1167_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U324(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_281),.din1(grp_fu_1175_p1),.din2(grp_fu_1175_p2),.din3(grp_fu_1175_p3),.ce(1'b1),.dout(grp_fu_1175_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U325(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1185_p0),.din1(grp_fu_1185_p1),.din2(grp_fu_1185_p2),.ce(1'b1),.dout(grp_fu_1185_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U326(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1193_p0),.din1(grp_fu_1193_p1),.din2(grp_fu_1193_p2),.ce(1'b1),.dout(grp_fu_1193_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U327(.clk(ap_clk),.reset(ap_rst),.din0(v6_1_reg_293),.din1(grp_fu_1201_p1),.din2(grp_fu_1201_p2),.din3(grp_fu_1201_p3),.ce(1'b1),.dout(grp_fu_1201_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U328(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1211_p0),.din1(grp_fu_1211_p1),.din2(grp_fu_1211_p2),.ce(1'b1),.dout(grp_fu_1211_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U329(.clk(ap_clk),.reset(ap_rst),.din0(v6_1_reg_293),.din1(grp_fu_1219_p1),.din2(grp_fu_1219_p2),.din3(grp_fu_1219_p3),.ce(1'b1),.dout(grp_fu_1219_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U330(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1229_p0),.din1(grp_fu_1229_p1),.din2(grp_fu_1229_p2),.ce(1'b1),.dout(grp_fu_1229_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U331(.clk(ap_clk),.reset(ap_rst),.din0(v6_1_reg_293),.din1(grp_fu_1237_p1),.din2(grp_fu_1237_p2),.din3(grp_fu_1237_p3),.ce(1'b1),.dout(grp_fu_1237_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U332(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1247_p0),.din1(grp_fu_1247_p1),.din2(grp_fu_1247_p2),.ce(1'b1),.dout(grp_fu_1247_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U333(.clk(ap_clk),.reset(ap_rst),.din0(v6_1_reg_293),.din1(grp_fu_1255_p1),.din2(grp_fu_1255_p2),.din3(grp_fu_1255_p3),.ce(1'b1),.dout(grp_fu_1255_p4));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U335(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1716_p0),.din1(grp_fu_1716_p1),.ce(grp_fu_1716_ce),.dout(grp_fu_1716_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U336(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1720_p0),.din1(grp_fu_1720_p1),.ce(grp_fu_1720_ce),.dout(grp_fu_1720_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state23)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        reg_381 <= v224_q1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        reg_381 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        reg_394 <= v224_q1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_394 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        reg_399 <= v224_q0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_399 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        reg_404 <= v224_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_404 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        reg_409 <= v224_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_409 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_414 <= v224_q1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_414 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_419 <= v224_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_419 <= v224_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_112 <= 8'd0;
    end else if (((icmp_ln32_1_fu_794_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        v5_fu_112 <= add_ln31_fu_810_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_472_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v6_1_reg_293 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
        v6_1_reg_293 <= add_ln32_1_reg_1527;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
        v6_reg_281 <= add_ln32_reg_1321;
    end else if (((icmp_ln31_fu_432_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_281 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        add_ln32_1_reg_1527 <= add_ln32_1_fu_804_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_1321 <= add_ln32_fu_482_p2;
        zext_ln32_reg_1326[7 : 1] <= zext_ln32_fu_505_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1308 <= cmp11_fu_466_p2;
        mul_ln38_reg_1302 <= mul_ln38_fu_460_p2;
        trunc_ln31_reg_1296 <= trunc_ln31_fu_442_p1;
        zext_ln31_reg_1283[7 : 0] <= zext_ln31_fu_438_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        mul_ln101_1_reg_1647 <= mul_ln101_1_fu_1013_p2;
        mul_ln114_1_reg_1652 <= mul_ln114_1_fu_1029_p2;
        mul_ln127_1_reg_1657 <= mul_ln127_1_fu_1038_p2;
        mul_ln140_1_reg_1662 <= mul_ln140_1_fu_1054_p2;
        mul_ln34_1_reg_1622 <= mul_ln34_1_fu_954_p2;
        mul_ln49_1_reg_1627 <= mul_ln49_1_fu_963_p2;
        mul_ln62_1_reg_1632 <= mul_ln62_1_fu_979_p2;
        mul_ln75_1_reg_1637 <= mul_ln75_1_fu_988_p2;
        mul_ln88_1_reg_1642 <= mul_ln88_1_fu_1004_p2;
        trunc_ln32_1_reg_1617 <= trunc_ln32_1_fu_936_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln101_reg_1454 <= mul_ln101_fu_702_p2;
        mul_ln114_reg_1459 <= mul_ln114_fu_718_p2;
        mul_ln127_reg_1464 <= mul_ln127_fu_727_p2;
        mul_ln140_reg_1469 <= mul_ln140_fu_743_p2;
        mul_ln34_reg_1429 <= mul_ln34_fu_643_p2;
        mul_ln49_reg_1434 <= mul_ln49_fu_652_p2;
        mul_ln62_reg_1439 <= mul_ln62_fu_668_p2;
        mul_ln75_reg_1444 <= mul_ln75_fu_677_p2;
        mul_ln88_reg_1449 <= mul_ln88_fu_693_p2;
        trunc_ln32_reg_1424 <= trunc_ln32_fu_625_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_386 <= v224_q1;
        reg_390 <= v224_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_18_reg_1369 <= {{empty_137_fu_553_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_19_reg_1389 <= {{empty_144_fu_581_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        tmp_21_reg_1537 <= {{empty_153_fu_820_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        tmp_22_reg_1547 <= {{empty_160_fu_840_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        tmp_23_reg_1562 <= {{empty_167_fu_864_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        tmp_24_reg_1582 <= {{empty_174_fu_892_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_1344 <= {{empty_123_fu_509_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_s_reg_1354 <= {{empty_130_fu_529_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v101_1_reg_1707 <= v101_1_fu_1100_p1;
        v11_1_reg_1667 <= v11_1_fu_1060_p1;
        v24_1_reg_1672 <= v24_1_fu_1065_p1;
        v35_1_reg_1677 <= v35_1_fu_1070_p1;
        v46_1_reg_1682 <= v46_1_fu_1075_p1;
        v57_1_reg_1687 <= v57_1_fu_1080_p1;
        v68_1_reg_1692 <= v68_1_fu_1085_p1;
        v79_1_reg_1697 <= v79_1_fu_1090_p1;
        v90_1_reg_1702 <= v90_1_fu_1095_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_1514 <= v101_fu_789_p1;
        v11_reg_1474 <= v11_fu_749_p1;
        v24_reg_1479 <= v24_fu_754_p1;
        v35_reg_1484 <= v35_fu_759_p1;
        v46_reg_1489 <= v46_fu_764_p1;
        v57_reg_1494 <= v57_fu_769_p1;
        v68_reg_1499 <= v68_fu_774_p1;
        v79_reg_1504 <= v79_fu_779_p1;
        v90_reg_1509 <= v90_fu_784_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_done == 1'b0)) begin
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_432_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_432_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1712_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1712_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1712_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1712_p_ce;
    end else begin
        grp_fu_1712_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1712_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1712_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1712_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1712_p_din0;
    end else begin
        grp_fu_1712_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1712_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1712_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1712_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1712_p_din1;
    end else begin
        grp_fu_1712_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1716_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1716_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1716_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1716_p_ce;
    end else begin
        grp_fu_1716_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1716_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1716_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1716_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1716_p_din0;
    end else begin
        grp_fu_1716_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1716_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1716_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1716_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1716_p_din1;
    end else begin
        grp_fu_1716_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1720_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1720_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1720_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1720_p_ce;
    end else begin
        grp_fu_1720_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1720_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1720_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1720_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1720_p_din0;
    end else begin
        grp_fu_1720_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1720_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1720_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1720_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1720_p_din1;
    end else begin
        grp_fu_1720_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1724_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1724_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1724_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1724_p_ce;
    end else begin
        grp_fu_1724_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1724_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1724_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1724_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1724_p_din0;
    end else begin
        grp_fu_1724_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1724_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1724_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1724_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1724_p_din1;
    end else begin
        grp_fu_1724_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1728_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1728_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1728_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1728_p_ce;
    end else begin
        grp_fu_1728_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1728_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1728_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1728_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1728_p_din0;
    end else begin
        grp_fu_1728_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1728_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1728_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1728_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1728_p_din1;
    end else begin
        grp_fu_1728_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1732_ce = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1732_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1732_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1732_p_ce;
    end else begin
        grp_fu_1732_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1732_p0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1732_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1732_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1732_p_din0;
    end else begin
        grp_fu_1732_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        grp_fu_1732_p1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_grp_fu_1732_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1732_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1732_p_din1;
    end else begin
        grp_fu_1732_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1736_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1736_p_ce;
    end else begin
        grp_fu_1736_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1740_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1740_p_ce;
    end else begin
        grp_fu_1740_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_1744_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1744_p_ce;
    end else begin
        grp_fu_1744_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_address0_local = p_cast4385_fu_932_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_address0_local = p_cast4383_fu_924_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_address0_local = p_cast4381_fu_916_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address0_local = p_cast4379_fu_888_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0_local = p_cast4375_fu_617_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0_local = p_cast4373_fu_609_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0_local = p_cast4371_fu_601_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0_local = p_cast4370_fu_577_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0_local = p_cast4369_fu_549_p1;
    end else begin
        v224_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_address1_local = p_cast4384_fu_928_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_address1_local = p_cast4382_fu_920_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_address1_local = p_cast4380_fu_912_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address1_local = p_cast4378_fu_884_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_address1_local = p_cast4377_fu_860_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1_local = p_cast4376_fu_621_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address1_local = p_cast4374_fu_613_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1_local = p_cast4372_fu_605_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address1_local = p_cast_fu_573_p1;
    end else begin
        v224_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7))) begin
        v224_ce0_local = 1'b1;
    end else begin
        v224_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state7))) begin
        v224_ce1_local = 1'b1;
    end else begin
        v224_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
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
            if (((icmp_ln31_fu_432_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_472_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state14 : begin
            if (((icmp_ln32_1_fu_794_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state24))) begin
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
assign add_ln31_fu_810_p2 = (v5_fu_112 + 8'd2);
assign add_ln32_1_fu_804_p2 = (v6_1_reg_293 + 8'd9);
assign add_ln32_fu_482_p2 = (v6_reg_281 + 8'd9);
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
assign cmp11_fu_466_p2 = ((v5_fu_112 == 8'd0) ? 1'b1 : 1'b0);
assign empty_123_fu_509_p2 = (v6_reg_281 + 8'd1);
assign empty_129_fu_658_p2 = (lshr_ln1_fu_629_p4 + 7'd1);
assign empty_130_fu_529_p2 = (v6_reg_281 + 8'd3);
assign empty_136_fu_683_p2 = (lshr_ln1_fu_629_p4 + 7'd2);
assign empty_137_fu_553_p2 = (v6_reg_281 + 8'd5);
assign empty_143_fu_708_p2 = (lshr_ln1_fu_629_p4 + 7'd3);
assign empty_144_fu_581_p2 = (v6_reg_281 + 8'd7);
assign empty_150_fu_733_p2 = (lshr_ln1_fu_629_p4 + 7'd4);
assign empty_153_fu_820_p2 = (v6_1_reg_293 + 8'd1);
assign empty_159_fu_969_p2 = (lshr_ln32_1_fu_940_p4 + 7'd1);
assign empty_160_fu_840_p2 = (v6_1_reg_293 + 8'd3);
assign empty_166_fu_994_p2 = (lshr_ln32_1_fu_940_p4 + 7'd2);
assign empty_167_fu_864_p2 = (v6_1_reg_293 + 8'd5);
assign empty_173_fu_1019_p2 = (lshr_ln32_1_fu_940_p4 + 7'd3);
assign empty_174_fu_892_p2 = (v6_1_reg_293 + 8'd7);
assign empty_180_fu_1044_p2 = (lshr_ln32_1_fu_940_p4 + 7'd4);
assign grp_fu_1105_p0 = grp_fu_1105_p00;
assign grp_fu_1105_p00 = v6_reg_281;
assign grp_fu_1105_p1 = 16'd190;
assign grp_fu_1105_p2 = zext_ln31_reg_1283;
assign grp_fu_1113_p0 = grp_fu_1113_p00;
assign grp_fu_1113_p00 = empty_123_fu_509_p2;
assign grp_fu_1113_p1 = 16'd190;
assign grp_fu_1113_p2 = zext_ln31_reg_1283;
assign grp_fu_1121_p1 = 8'd2;
assign grp_fu_1121_p2 = 16'd190;
assign grp_fu_1121_p3 = zext_ln31_reg_1283;
assign grp_fu_1131_p0 = grp_fu_1131_p00;
assign grp_fu_1131_p00 = empty_130_fu_529_p2;
assign grp_fu_1131_p1 = 16'd190;
assign grp_fu_1131_p2 = zext_ln31_reg_1283;
assign grp_fu_1139_p1 = 8'd4;
assign grp_fu_1139_p2 = 16'd190;
assign grp_fu_1139_p3 = zext_ln31_reg_1283;
assign grp_fu_1149_p0 = grp_fu_1149_p00;
assign grp_fu_1149_p00 = empty_137_fu_553_p2;
assign grp_fu_1149_p1 = 16'd190;
assign grp_fu_1149_p2 = zext_ln31_reg_1283;
assign grp_fu_1157_p1 = 8'd6;
assign grp_fu_1157_p2 = 16'd190;
assign grp_fu_1157_p3 = zext_ln31_reg_1283;
assign grp_fu_1167_p0 = grp_fu_1167_p00;
assign grp_fu_1167_p00 = empty_144_fu_581_p2;
assign grp_fu_1167_p1 = 16'd190;
assign grp_fu_1167_p2 = zext_ln31_reg_1283;
assign grp_fu_1175_p1 = 8'd8;
assign grp_fu_1175_p2 = 16'd190;
assign grp_fu_1175_p3 = zext_ln31_reg_1283;
assign grp_fu_1185_p0 = grp_fu_1185_p00;
assign grp_fu_1185_p00 = v6_1_reg_293;
assign grp_fu_1185_p1 = 16'd190;
assign grp_fu_1185_p2 = zext_ln32_reg_1326;
assign grp_fu_1193_p0 = grp_fu_1193_p00;
assign grp_fu_1193_p00 = empty_153_fu_820_p2;
assign grp_fu_1193_p1 = 16'd190;
assign grp_fu_1193_p2 = zext_ln32_reg_1326;
assign grp_fu_1201_p1 = 8'd2;
assign grp_fu_1201_p2 = 16'd190;
assign grp_fu_1201_p3 = zext_ln32_reg_1326;
assign grp_fu_1211_p0 = grp_fu_1211_p00;
assign grp_fu_1211_p00 = empty_160_fu_840_p2;
assign grp_fu_1211_p1 = 16'd190;
assign grp_fu_1211_p2 = zext_ln32_reg_1326;
assign grp_fu_1219_p1 = 8'd4;
assign grp_fu_1219_p2 = 16'd190;
assign grp_fu_1219_p3 = zext_ln32_reg_1326;
assign grp_fu_1229_p0 = grp_fu_1229_p00;
assign grp_fu_1229_p00 = empty_167_fu_864_p2;
assign grp_fu_1229_p1 = 16'd190;
assign grp_fu_1229_p2 = zext_ln32_reg_1326;
assign grp_fu_1237_p1 = 8'd6;
assign grp_fu_1237_p2 = 16'd190;
assign grp_fu_1237_p3 = zext_ln32_reg_1326;
assign grp_fu_1247_p0 = grp_fu_1247_p00;
assign grp_fu_1247_p00 = empty_174_fu_892_p2;
assign grp_fu_1247_p1 = 16'd190;
assign grp_fu_1247_p2 = zext_ln32_reg_1326;
assign grp_fu_1255_p1 = 8'd8;
assign grp_fu_1255_p2 = 16'd190;
assign grp_fu_1255_p3 = zext_ln32_reg_1326;
assign grp_fu_168_p_ce = grp_fu_1712_ce;
assign grp_fu_168_p_din0 = grp_fu_1712_p0;
assign grp_fu_168_p_din1 = grp_fu_1712_p1;
assign grp_fu_168_p_opcode = 2'd0;
assign grp_fu_172_p_ce = grp_fu_1724_ce;
assign grp_fu_172_p_din0 = grp_fu_1724_p0;
assign grp_fu_172_p_din1 = grp_fu_1724_p1;
assign grp_fu_176_p_ce = grp_fu_1728_ce;
assign grp_fu_176_p_din0 = grp_fu_1728_p0;
assign grp_fu_176_p_din1 = grp_fu_1728_p1;
assign grp_fu_180_p_ce = grp_fu_1732_ce;
assign grp_fu_180_p_din0 = grp_fu_1732_p0;
assign grp_fu_180_p_din1 = grp_fu_1732_p1;
assign grp_fu_184_p_ce = grp_fu_1736_ce;
assign grp_fu_184_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1736_p_din0;
assign grp_fu_184_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1736_p_din1;
assign grp_fu_188_p_ce = grp_fu_1740_ce;
assign grp_fu_188_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1740_p_din0;
assign grp_fu_188_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1740_p_din1;
assign grp_fu_192_p_ce = grp_fu_1744_ce;
assign grp_fu_192_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1744_p_din0;
assign grp_fu_192_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_grp_fu_1744_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_start = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_ap_start_reg;
assign icmp_ln31_fu_432_p2 = ((v5_fu_112 < 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_1_fu_794_p2 = ((v6_1_reg_293 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_472_p2 = ((v6_reg_281 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_629_p4 = {{v6_reg_281[7:1]}};
assign lshr_ln32_1_fu_940_p4 = {{v6_1_reg_293[7:1]}};
assign lshr_ln_fu_446_p4 = {{v5_fu_112[7:3]}};
assign mul_ln101_1_fu_1013_p0 = mul_ln101_1_fu_1013_p00;
assign mul_ln101_1_fu_1013_p00 = tmp_23_reg_1562;
assign mul_ln101_1_fu_1013_p1 = 15'd220;
assign mul_ln101_fu_702_p0 = mul_ln101_fu_702_p00;
assign mul_ln101_fu_702_p00 = tmp_18_reg_1369;
assign mul_ln101_fu_702_p1 = 15'd220;
assign mul_ln114_1_fu_1029_p0 = mul_ln114_1_fu_1029_p00;
assign mul_ln114_1_fu_1029_p00 = empty_173_fu_1019_p2;
assign mul_ln114_1_fu_1029_p1 = 15'd220;
assign mul_ln114_fu_718_p0 = mul_ln114_fu_718_p00;
assign mul_ln114_fu_718_p00 = empty_143_fu_708_p2;
assign mul_ln114_fu_718_p1 = 15'd220;
assign mul_ln127_1_fu_1038_p0 = mul_ln127_1_fu_1038_p00;
assign mul_ln127_1_fu_1038_p00 = tmp_24_reg_1582;
assign mul_ln127_1_fu_1038_p1 = 15'd220;
assign mul_ln127_fu_727_p0 = mul_ln127_fu_727_p00;
assign mul_ln127_fu_727_p00 = tmp_19_reg_1389;
assign mul_ln127_fu_727_p1 = 15'd220;
assign mul_ln140_1_fu_1054_p0 = mul_ln140_1_fu_1054_p00;
assign mul_ln140_1_fu_1054_p00 = empty_180_fu_1044_p2;
assign mul_ln140_1_fu_1054_p1 = 15'd220;
assign mul_ln140_fu_743_p0 = mul_ln140_fu_743_p00;
assign mul_ln140_fu_743_p00 = empty_150_fu_733_p2;
assign mul_ln140_fu_743_p1 = 15'd220;
assign mul_ln34_1_fu_954_p0 = mul_ln34_1_fu_954_p00;
assign mul_ln34_1_fu_954_p00 = lshr_ln32_1_fu_940_p4;
assign mul_ln34_1_fu_954_p1 = 15'd220;
assign mul_ln34_fu_643_p0 = mul_ln34_fu_643_p00;
assign mul_ln34_fu_643_p00 = lshr_ln1_fu_629_p4;
assign mul_ln34_fu_643_p1 = 15'd220;
assign mul_ln38_fu_460_p0 = mul_ln38_fu_460_p00;
assign mul_ln38_fu_460_p00 = lshr_ln_fu_446_p4;
assign mul_ln38_fu_460_p1 = 13'd220;
assign mul_ln49_1_fu_963_p0 = mul_ln49_1_fu_963_p00;
assign mul_ln49_1_fu_963_p00 = tmp_21_reg_1537;
assign mul_ln49_1_fu_963_p1 = 15'd220;
assign mul_ln49_fu_652_p0 = mul_ln49_fu_652_p00;
assign mul_ln49_fu_652_p00 = tmp_reg_1344;
assign mul_ln49_fu_652_p1 = 15'd220;
assign mul_ln62_1_fu_979_p0 = mul_ln62_1_fu_979_p00;
assign mul_ln62_1_fu_979_p00 = empty_159_fu_969_p2;
assign mul_ln62_1_fu_979_p1 = 15'd220;
assign mul_ln62_fu_668_p0 = mul_ln62_fu_668_p00;
assign mul_ln62_fu_668_p00 = empty_129_fu_658_p2;
assign mul_ln62_fu_668_p1 = 15'd220;
assign mul_ln75_1_fu_988_p0 = mul_ln75_1_fu_988_p00;
assign mul_ln75_1_fu_988_p00 = tmp_22_reg_1547;
assign mul_ln75_1_fu_988_p1 = 15'd220;
assign mul_ln75_fu_677_p0 = mul_ln75_fu_677_p00;
assign mul_ln75_fu_677_p00 = tmp_s_reg_1354;
assign mul_ln75_fu_677_p1 = 15'd220;
assign mul_ln88_1_fu_1004_p0 = mul_ln88_1_fu_1004_p00;
assign mul_ln88_1_fu_1004_p00 = empty_166_fu_994_p2;
assign mul_ln88_1_fu_1004_p1 = 15'd220;
assign mul_ln88_fu_693_p0 = mul_ln88_fu_693_p00;
assign mul_ln88_fu_693_p00 = empty_136_fu_683_p2;
assign mul_ln88_fu_693_p1 = 15'd220;
assign or_ln_fu_497_p3 = {{tmp_20_fu_488_p4}, {1'd1}};
assign p_cast4369_fu_549_p1 = grp_fu_1105_p3;
assign p_cast4370_fu_577_p1 = grp_fu_1121_p4;
assign p_cast4371_fu_601_p1 = grp_fu_1131_p3;
assign p_cast4372_fu_605_p1 = grp_fu_1139_p4;
assign p_cast4373_fu_609_p1 = grp_fu_1149_p3;
assign p_cast4374_fu_613_p1 = grp_fu_1157_p4;
assign p_cast4375_fu_617_p1 = grp_fu_1167_p3;
assign p_cast4376_fu_621_p1 = grp_fu_1175_p4;
assign p_cast4377_fu_860_p1 = grp_fu_1185_p3;
assign p_cast4378_fu_884_p1 = grp_fu_1193_p3;
assign p_cast4379_fu_888_p1 = grp_fu_1201_p4;
assign p_cast4380_fu_912_p1 = grp_fu_1211_p3;
assign p_cast4381_fu_916_p1 = grp_fu_1219_p4;
assign p_cast4382_fu_920_p1 = grp_fu_1229_p3;
assign p_cast4383_fu_924_p1 = grp_fu_1237_p4;
assign p_cast4384_fu_928_p1 = grp_fu_1247_p3;
assign p_cast4385_fu_932_p1 = grp_fu_1255_p4;
assign p_cast_fu_573_p1 = grp_fu_1113_p3;
assign tmp_20_fu_488_p4 = {{v5_fu_112[7:1]}};
assign trunc_ln31_fu_442_p1 = v5_fu_112[2:0];
assign trunc_ln32_1_fu_936_p1 = v6_1_reg_293[0:0];
assign trunc_ln32_fu_625_p1 = v6_reg_281[0:0];
assign v101_1_fu_1100_p1 = reg_419;
assign v101_fu_789_p1 = reg_419;
assign v11_1_fu_1060_p1 = reg_381;
assign v11_fu_749_p1 = reg_381;
assign v224_address0 = v224_address0_local;
assign v224_address1 = v224_address1_local;
assign v224_ce0 = v224_ce0_local;
assign v224_ce1 = v224_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_3_ce1;
assign v228_4_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_4_address0;
assign v228_4_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_4_address1;
assign v228_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_4_ce0;
assign v228_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_4_ce1;
assign v228_5_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_5_address0;
assign v228_5_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_5_address1;
assign v228_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_5_ce0;
assign v228_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_5_ce1;
assign v228_6_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_6_address0;
assign v228_6_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_6_address1;
assign v228_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_6_ce0;
assign v228_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_305_v228_6_ce1;
assign v228_7_address0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_7_address0;
assign v228_7_address1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_7_address1;
assign v228_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_7_ce0;
assign v228_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_26_fu_344_v228_7_ce1;
assign v236_read = v236_read_local;
assign v24_1_fu_1065_p1 = reg_386;
assign v24_fu_754_p1 = reg_386;
assign v35_1_fu_1070_p1 = reg_390;
assign v35_fu_759_p1 = reg_390;
assign v46_1_fu_1075_p1 = reg_394;
assign v46_fu_764_p1 = reg_394;
assign v57_1_fu_1080_p1 = reg_399;
assign v57_fu_769_p1 = reg_399;
assign v68_1_fu_1085_p1 = reg_404;
assign v68_fu_774_p1 = reg_404;
assign v79_1_fu_1090_p1 = reg_409;
assign v79_fu_779_p1 = reg_409;
assign v90_1_fu_1095_p1 = reg_414;
assign v90_fu_784_p1 = reg_414;
assign zext_ln31_fu_438_p1 = v5_fu_112;
assign zext_ln32_fu_505_p1 = or_ln_fu_497_p3;
always @ (posedge ap_clk) begin
    zext_ln31_reg_1283[15:8] <= 8'b00000000;
    zext_ln32_reg_1326[0] <= 1'b1;
    zext_ln32_reg_1326[15:8] <= 8'b00000000;
end
endmodule 