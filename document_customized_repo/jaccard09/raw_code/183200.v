module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v4,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_opcode,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_opcode,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce); 
parameter    ap_ST_fsm_state1 = 26'd1;
parameter    ap_ST_fsm_state2 = 26'd2;
parameter    ap_ST_fsm_state3 = 26'd4;
parameter    ap_ST_fsm_state4 = 26'd8;
parameter    ap_ST_fsm_state5 = 26'd16;
parameter    ap_ST_fsm_state6 = 26'd32;
parameter    ap_ST_fsm_state7 = 26'd64;
parameter    ap_ST_fsm_state8 = 26'd128;
parameter    ap_ST_fsm_state9 = 26'd256;
parameter    ap_ST_fsm_state10 = 26'd512;
parameter    ap_ST_fsm_state11 = 26'd1024;
parameter    ap_ST_fsm_state12 = 26'd2048;
parameter    ap_ST_fsm_state13 = 26'd4096;
parameter    ap_ST_fsm_state14 = 26'd8192;
parameter    ap_ST_fsm_state15 = 26'd16384;
parameter    ap_ST_fsm_state16 = 26'd32768;
parameter    ap_ST_fsm_state17 = 26'd65536;
parameter    ap_ST_fsm_state18 = 26'd131072;
parameter    ap_ST_fsm_state19 = 26'd262144;
parameter    ap_ST_fsm_state20 = 26'd524288;
parameter    ap_ST_fsm_state21 = 26'd1048576;
parameter    ap_ST_fsm_state22 = 26'd2097152;
parameter    ap_ST_fsm_state23 = 26'd4194304;
parameter    ap_ST_fsm_state24 = 26'd8388608;
parameter    ap_ST_fsm_state25 = 26'd16777216;
parameter    ap_ST_fsm_state26 = 26'd33554432;
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
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
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
output  [31:0] grp_fu_136_p_din0;
output  [31:0] grp_fu_136_p_din1;
output  [1:0] grp_fu_136_p_opcode;
input  [31:0] grp_fu_136_p_dout0;
output   grp_fu_136_p_ce;
output  [31:0] grp_fu_140_p_din0;
output  [31:0] grp_fu_140_p_din1;
output  [1:0] grp_fu_140_p_opcode;
input  [31:0] grp_fu_140_p_dout0;
output   grp_fu_140_p_ce;
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
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
(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [31:0] grp_fu_922_p3;
reg   [31:0] reg_936;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state21;
wire   [31:0] grp_fu_929_p3;
reg   [31:0] reg_940;
reg   [31:0] reg_944;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_948;
reg   [31:0] reg_952;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_956;
reg   [31:0] reg_960;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_964;
reg   [31:0] reg_968;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state20;
reg   [31:0] reg_972;
reg   [15:0] phi_mul_load_reg_2114;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_992_p2;
reg   [15:0] add_ln31_1_reg_2122;
wire   [7:0] add_ln31_fu_1004_p2;
reg   [7:0] add_ln31_reg_2130;
wire   [0:0] trunc_ln31_fu_1010_p1;
reg   [0:0] trunc_ln31_reg_2135;
wire   [14:0] zext_ln31_fu_1024_p1;
reg   [14:0] zext_ln31_reg_2141;
wire   [0:0] cmp11_fu_1028_p2;
reg   [0:0] cmp11_reg_2181;
wire    ap_CS_fsm_state3;
wire   [6:0] lshr_ln2_fu_1044_p4;
reg   [6:0] lshr_ln2_reg_2197;
wire   [7:0] add_ln32_3_fu_1066_p2;
reg   [7:0] add_ln32_3_reg_2223;
wire   [5:0] tmp_6_fu_1080_p4;
reg   [5:0] tmp_6_reg_2228;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire   [14:0] mul_ln34_fu_1167_p2;
reg   [14:0] mul_ln34_reg_2343;
wire   [14:0] mul_ln62_fu_1184_p2;
reg   [14:0] mul_ln62_reg_2348;
wire   [14:0] mul_ln88_fu_1199_p2;
reg   [14:0] mul_ln88_reg_2353;
wire   [14:0] mul_ln114_fu_1214_p2;
reg   [14:0] mul_ln114_reg_2358;
wire   [14:0] mul_ln140_fu_1229_p2;
reg   [14:0] mul_ln140_reg_2363;
wire   [31:0] v11_fu_1245_p1;
reg   [31:0] v11_reg_2389;
wire   [31:0] v24_fu_1250_p1;
reg   [31:0] v24_reg_2394;
wire   [31:0] v35_fu_1255_p1;
reg   [31:0] v35_reg_2399;
wire   [31:0] v46_fu_1260_p1;
reg   [31:0] v46_reg_2404;
wire   [31:0] v57_fu_1265_p1;
reg   [31:0] v57_reg_2409;
wire   [31:0] v68_fu_1270_p1;
reg   [31:0] v68_reg_2414;
wire   [31:0] v79_fu_1275_p1;
reg   [31:0] v79_reg_2419;
wire   [31:0] v90_fu_1280_p1;
reg   [31:0] v90_reg_2424;
wire   [31:0] v101_fu_1285_p1;
reg   [31:0] v101_reg_2429;
wire   [14:0] mul_ln49_fu_1329_p2;
reg   [14:0] mul_ln49_reg_2494;
wire   [14:0] mul_ln75_fu_1344_p2;
reg   [14:0] mul_ln75_reg_2499;
wire   [14:0] mul_ln101_fu_1359_p2;
reg   [14:0] mul_ln101_reg_2504;
wire   [14:0] mul_ln127_fu_1374_p2;
reg   [14:0] mul_ln127_reg_2509;
wire   [31:0] v11_1_fu_1390_p1;
reg   [31:0] v11_1_reg_2534;
wire   [31:0] v24_1_fu_1395_p1;
reg   [31:0] v24_1_reg_2539;
wire   [31:0] v35_1_fu_1400_p1;
reg   [31:0] v35_1_reg_2544;
wire   [31:0] v46_1_fu_1405_p1;
reg   [31:0] v46_1_reg_2549;
wire   [31:0] v57_1_fu_1410_p1;
reg   [31:0] v57_1_reg_2554;
wire   [31:0] v68_1_fu_1415_p1;
reg   [31:0] v68_1_reg_2559;
wire   [31:0] v79_1_fu_1420_p1;
reg   [31:0] v79_1_reg_2564;
wire   [31:0] v90_1_fu_1425_p1;
reg   [31:0] v90_1_reg_2569;
wire   [31:0] v101_1_fu_1430_p1;
reg   [31:0] v101_1_reg_2574;
wire   [14:0] mul_ln34_1_fu_1484_p2;
reg   [14:0] mul_ln34_1_reg_2659;
wire   [14:0] mul_ln62_1_fu_1499_p2;
reg   [14:0] mul_ln62_1_reg_2664;
wire   [14:0] mul_ln88_1_fu_1514_p2;
reg   [14:0] mul_ln88_1_reg_2669;
wire   [14:0] mul_ln114_1_fu_1529_p2;
reg   [14:0] mul_ln114_1_reg_2674;
wire   [14:0] mul_ln140_1_fu_1544_p2;
reg   [14:0] mul_ln140_1_reg_2679;
wire   [31:0] v11_2_fu_1560_p1;
reg   [31:0] v11_2_reg_2705;
wire   [31:0] v24_2_fu_1565_p1;
reg   [31:0] v24_2_reg_2710;
wire   [31:0] v35_2_fu_1570_p1;
reg   [31:0] v35_2_reg_2715;
wire   [31:0] v46_2_fu_1575_p1;
reg   [31:0] v46_2_reg_2720;
wire   [31:0] v57_2_fu_1580_p1;
reg   [31:0] v57_2_reg_2725;
wire   [31:0] v68_2_fu_1585_p1;
reg   [31:0] v68_2_reg_2730;
wire   [31:0] v79_2_fu_1590_p1;
reg   [31:0] v79_2_reg_2735;
wire   [31:0] v90_2_fu_1595_p1;
reg   [31:0] v90_2_reg_2740;
wire   [31:0] v101_2_fu_1600_p1;
reg   [31:0] v101_2_reg_2745;
wire   [14:0] mul_ln49_1_fu_1644_p2;
reg   [14:0] mul_ln49_1_reg_2810;
wire   [14:0] mul_ln75_1_fu_1659_p2;
reg   [14:0] mul_ln75_1_reg_2815;
wire   [14:0] mul_ln101_1_fu_1674_p2;
reg   [14:0] mul_ln101_1_reg_2820;
wire   [14:0] mul_ln127_1_fu_1689_p2;
reg   [14:0] mul_ln127_1_reg_2825;
wire   [31:0] v11_3_fu_1695_p1;
reg   [31:0] v11_3_reg_2830;
wire    ap_CS_fsm_state25;
wire   [31:0] v24_3_fu_1700_p1;
reg   [31:0] v24_3_reg_2835;
wire   [31:0] v35_3_fu_1705_p1;
reg   [31:0] v35_3_reg_2840;
wire   [31:0] v46_3_fu_1710_p1;
reg   [31:0] v46_3_reg_2845;
wire   [31:0] v57_3_fu_1715_p1;
reg   [31:0] v57_3_reg_2850;
wire   [31:0] v68_3_fu_1720_p1;
reg   [31:0] v68_3_reg_2855;
wire   [31:0] v79_3_fu_1725_p1;
reg   [31:0] v79_3_reg_2860;
wire   [31:0] v90_3_fu_1730_p1;
reg   [31:0] v90_3_reg_2865;
wire   [31:0] v101_3_fu_1735_p1;
reg   [31:0] v101_3_reg_2870;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2875_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2875_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2875_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2875_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2879_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2879_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2879_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2879_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2883_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2883_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2883_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2887_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2887_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2887_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2891_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2891_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2891_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2895_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2895_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2895_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2875_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2875_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2875_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2875_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2879_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2879_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2879_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2879_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2883_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2883_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2883_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2887_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2887_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2887_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2891_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2891_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2891_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2895_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2895_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2895_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2875_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2875_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2875_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2875_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2879_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2879_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2879_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2879_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2883_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2883_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2883_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2887_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2887_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2887_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2891_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2891_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2891_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2895_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2895_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2895_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2875_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2875_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2875_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2875_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2879_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2879_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2879_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2879_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2883_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2883_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2883_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2887_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2887_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2887_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2891_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2891_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2891_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2895_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2895_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2895_p_ce;
reg   [7:0] v6_reg_802;
wire    ap_CS_fsm_state26;
wire   [0:0] icmp_ln31_fu_998_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_start_reg;
wire   [63:0] p_cast972_fu_1114_p1;
wire   [63:0] p_cast_fu_1119_p1;
wire   [63:0] p_cast973_fu_1124_p1;
wire   [63:0] p_cast974_fu_1129_p1;
wire   [63:0] p_cast975_fu_1134_p1;
wire   [63:0] p_cast976_fu_1139_p1;
wire   [63:0] p_cast977_fu_1144_p1;
wire   [63:0] p_cast978_fu_1149_p1;
wire   [63:0] p_cast979_fu_1154_p1;
wire   [63:0] p_cast980_fu_1159_p1;
wire   [63:0] p_cast981_fu_1235_p1;
wire   [63:0] p_cast982_fu_1240_p1;
wire   [63:0] p_cast983_fu_1290_p1;
wire   [63:0] p_cast984_fu_1295_p1;
wire   [63:0] p_cast985_fu_1300_p1;
wire   [63:0] p_cast986_fu_1305_p1;
wire   [63:0] p_cast987_fu_1310_p1;
wire   [63:0] p_cast988_fu_1315_p1;
wire   [63:0] p_cast989_fu_1380_p1;
wire   [63:0] p_cast990_fu_1385_p1;
wire   [63:0] p_cast991_fu_1435_p1;
wire   [63:0] p_cast992_fu_1440_p1;
wire   [63:0] p_cast993_fu_1445_p1;
wire   [63:0] p_cast994_fu_1450_p1;
wire   [63:0] p_cast995_fu_1455_p1;
wire   [63:0] p_cast996_fu_1460_p1;
wire   [63:0] p_cast997_fu_1465_p1;
wire   [63:0] p_cast998_fu_1470_p1;
wire   [63:0] p_cast999_fu_1550_p1;
wire   [63:0] p_cast1000_fu_1555_p1;
wire   [63:0] p_cast1001_fu_1605_p1;
wire   [63:0] p_cast1002_fu_1610_p1;
wire   [63:0] p_cast1003_fu_1615_p1;
wire   [63:0] p_cast1004_fu_1620_p1;
wire   [63:0] p_cast1005_fu_1625_p1;
wire   [63:0] p_cast1006_fu_1630_p1;
reg   [15:0] phi_mul_fu_188;
wire   [0:0] icmp_ln32_fu_1034_p2;
reg    ap_block_state1;
reg   [7:0] v5_fu_192;
reg    v236_read_local;
reg    v224_0_ce1_local;
reg   [14:0] v224_0_address1_local;
reg    v224_0_ce0_local;
reg   [14:0] v224_0_address0_local;
reg    v224_1_ce1_local;
reg   [14:0] v224_1_address1_local;
reg    v224_1_ce0_local;
reg   [14:0] v224_1_address0_local;
wire   [6:0] lshr_ln_fu_1014_p4;
wire   [7:0] tmp_5_fu_1054_p3;
wire   [7:0] tmp_8_fu_1090_p3;
wire   [7:0] tmp_1_fu_1102_p3;
wire   [14:0] grp_fu_1740_p3;
wire   [14:0] grp_fu_1748_p3;
wire   [14:0] grp_fu_1756_p3;
wire   [14:0] grp_fu_1764_p3;
wire   [14:0] grp_fu_1772_p4;
wire   [14:0] grp_fu_1782_p4;
wire   [14:0] grp_fu_1792_p4;
wire   [14:0] grp_fu_1802_p4;
wire   [14:0] grp_fu_1812_p4;
wire   [14:0] grp_fu_1822_p4;
wire   [6:0] mul_ln34_fu_1167_p0;
wire   [8:0] mul_ln34_fu_1167_p1;
wire   [6:0] tmp_s_fu_1173_p3;
wire   [6:0] mul_ln62_fu_1184_p0;
wire   [8:0] mul_ln62_fu_1184_p1;
wire   [6:0] empty_54_fu_1190_p2;
wire   [6:0] mul_ln88_fu_1199_p0;
wire   [8:0] mul_ln88_fu_1199_p1;
wire   [6:0] empty_61_fu_1205_p2;
wire   [6:0] mul_ln114_fu_1214_p0;
wire   [8:0] mul_ln114_fu_1214_p1;
wire   [6:0] empty_68_fu_1220_p2;
wire   [6:0] mul_ln140_fu_1229_p0;
wire   [8:0] mul_ln140_fu_1229_p1;
wire   [14:0] grp_fu_1832_p4;
wire   [14:0] grp_fu_1842_p4;
wire   [14:0] grp_fu_1852_p4;
wire   [14:0] grp_fu_1862_p4;
wire   [14:0] grp_fu_1872_p4;
wire   [14:0] grp_fu_1882_p4;
wire   [14:0] grp_fu_1892_p4;
wire   [14:0] grp_fu_1902_p4;
wire   [6:0] empty_74_fu_1320_p2;
wire   [6:0] mul_ln49_fu_1329_p0;
wire   [8:0] mul_ln49_fu_1329_p1;
wire   [6:0] empty_81_fu_1335_p2;
wire   [6:0] mul_ln75_fu_1344_p0;
wire   [8:0] mul_ln75_fu_1344_p1;
wire   [6:0] empty_88_fu_1350_p2;
wire   [6:0] mul_ln101_fu_1359_p0;
wire   [8:0] mul_ln101_fu_1359_p1;
wire   [6:0] empty_95_fu_1365_p2;
wire   [6:0] mul_ln127_fu_1374_p0;
wire   [8:0] mul_ln127_fu_1374_p1;
wire   [14:0] grp_fu_1912_p4;
wire   [14:0] grp_fu_1922_p4;
wire   [14:0] grp_fu_1932_p4;
wire   [14:0] grp_fu_1942_p4;
wire   [14:0] grp_fu_1952_p4;
wire   [14:0] grp_fu_1962_p4;
wire   [14:0] grp_fu_1972_p4;
wire   [14:0] grp_fu_1982_p4;
wire   [14:0] grp_fu_1992_p4;
wire   [14:0] grp_fu_2002_p4;
wire   [6:0] empty_101_fu_1475_p2;
wire   [6:0] mul_ln34_1_fu_1484_p0;
wire   [8:0] mul_ln34_1_fu_1484_p1;
wire   [6:0] empty_108_fu_1490_p2;
wire   [6:0] mul_ln62_1_fu_1499_p0;
wire   [8:0] mul_ln62_1_fu_1499_p1;
wire   [6:0] empty_115_fu_1505_p2;
wire   [6:0] mul_ln88_1_fu_1514_p0;
wire   [8:0] mul_ln88_1_fu_1514_p1;
wire   [6:0] empty_122_fu_1520_p2;
wire   [6:0] mul_ln114_1_fu_1529_p0;
wire   [8:0] mul_ln114_1_fu_1529_p1;
wire   [6:0] empty_129_fu_1535_p2;
wire   [6:0] mul_ln140_1_fu_1544_p0;
wire   [8:0] mul_ln140_1_fu_1544_p1;
wire   [14:0] grp_fu_2012_p4;
wire   [14:0] grp_fu_2022_p4;
wire   [14:0] grp_fu_2032_p4;
wire   [14:0] grp_fu_2042_p4;
wire   [14:0] grp_fu_2052_p4;
wire   [14:0] grp_fu_2062_p4;
wire   [14:0] grp_fu_2072_p4;
wire   [14:0] grp_fu_2082_p4;
wire   [6:0] empty_135_fu_1635_p2;
wire   [6:0] mul_ln49_1_fu_1644_p0;
wire   [8:0] mul_ln49_1_fu_1644_p1;
wire   [6:0] empty_142_fu_1650_p2;
wire   [6:0] mul_ln75_1_fu_1659_p0;
wire   [8:0] mul_ln75_1_fu_1659_p1;
wire   [6:0] empty_149_fu_1665_p2;
wire   [6:0] mul_ln101_1_fu_1674_p0;
wire   [8:0] mul_ln101_1_fu_1674_p1;
wire   [6:0] empty_156_fu_1680_p2;
wire   [6:0] mul_ln127_1_fu_1689_p0;
wire   [8:0] mul_ln127_1_fu_1689_p1;
wire   [7:0] grp_fu_1740_p0;
wire   [6:0] grp_fu_1740_p1;
wire   [6:0] grp_fu_1740_p2;
wire    ap_CS_fsm_state5;
wire   [7:0] grp_fu_1748_p0;
wire   [6:0] grp_fu_1748_p1;
wire   [6:0] grp_fu_1748_p2;
wire   [7:0] grp_fu_1756_p0;
wire   [6:0] grp_fu_1756_p1;
wire   [6:0] grp_fu_1756_p2;
wire   [7:0] grp_fu_1764_p0;
wire   [6:0] grp_fu_1764_p1;
wire   [6:0] grp_fu_1764_p2;
wire   [2:0] grp_fu_1772_p1;
wire   [6:0] grp_fu_1772_p2;
wire   [6:0] grp_fu_1772_p3;
wire   [2:0] grp_fu_1782_p1;
wire   [6:0] grp_fu_1782_p2;
wire   [6:0] grp_fu_1782_p3;
wire   [2:0] grp_fu_1792_p1;
wire   [6:0] grp_fu_1792_p2;
wire   [6:0] grp_fu_1792_p3;
wire   [2:0] grp_fu_1802_p1;
wire   [6:0] grp_fu_1802_p2;
wire   [6:0] grp_fu_1802_p3;
wire   [3:0] grp_fu_1812_p1;
wire   [6:0] grp_fu_1812_p2;
wire   [6:0] grp_fu_1812_p3;
wire   [3:0] grp_fu_1822_p1;
wire   [6:0] grp_fu_1822_p2;
wire   [6:0] grp_fu_1822_p3;
wire   [3:0] grp_fu_1832_p1;
wire   [6:0] grp_fu_1832_p2;
wire   [6:0] grp_fu_1832_p3;
wire   [3:0] grp_fu_1842_p1;
wire   [6:0] grp_fu_1842_p2;
wire   [6:0] grp_fu_1842_p3;
wire   [3:0] grp_fu_1852_p1;
wire   [6:0] grp_fu_1852_p2;
wire   [6:0] grp_fu_1852_p3;
wire   [3:0] grp_fu_1862_p1;
wire   [6:0] grp_fu_1862_p2;
wire   [6:0] grp_fu_1862_p3;
wire   [3:0] grp_fu_1872_p1;
wire   [6:0] grp_fu_1872_p2;
wire   [6:0] grp_fu_1872_p3;
wire   [3:0] grp_fu_1882_p1;
wire   [6:0] grp_fu_1882_p2;
wire   [6:0] grp_fu_1882_p3;
wire   [4:0] grp_fu_1892_p1;
wire   [6:0] grp_fu_1892_p2;
wire   [6:0] grp_fu_1892_p3;
wire   [4:0] grp_fu_1902_p1;
wire   [6:0] grp_fu_1902_p2;
wire   [6:0] grp_fu_1902_p3;
wire   [4:0] grp_fu_1912_p1;
wire   [6:0] grp_fu_1912_p2;
wire   [6:0] grp_fu_1912_p3;
wire   [4:0] grp_fu_1922_p1;
wire   [6:0] grp_fu_1922_p2;
wire   [6:0] grp_fu_1922_p3;
wire   [4:0] grp_fu_1932_p1;
wire   [6:0] grp_fu_1932_p2;
wire   [6:0] grp_fu_1932_p3;
wire   [4:0] grp_fu_1942_p1;
wire   [6:0] grp_fu_1942_p2;
wire   [6:0] grp_fu_1942_p3;
wire   [4:0] grp_fu_1952_p1;
wire   [6:0] grp_fu_1952_p2;
wire   [6:0] grp_fu_1952_p3;
wire   [4:0] grp_fu_1962_p1;
wire   [6:0] grp_fu_1962_p2;
wire   [6:0] grp_fu_1962_p3;
wire   [4:0] grp_fu_1972_p1;
wire   [6:0] grp_fu_1972_p2;
wire   [6:0] grp_fu_1972_p3;
wire   [4:0] grp_fu_1982_p1;
wire   [6:0] grp_fu_1982_p2;
wire   [6:0] grp_fu_1982_p3;
wire   [4:0] grp_fu_1992_p1;
wire   [6:0] grp_fu_1992_p2;
wire   [6:0] grp_fu_1992_p3;
wire   [4:0] grp_fu_2002_p1;
wire   [6:0] grp_fu_2002_p2;
wire   [6:0] grp_fu_2002_p3;
wire   [4:0] grp_fu_2012_p1;
wire   [6:0] grp_fu_2012_p2;
wire   [6:0] grp_fu_2012_p3;
wire   [4:0] grp_fu_2022_p1;
wire   [6:0] grp_fu_2022_p2;
wire   [6:0] grp_fu_2022_p3;
wire   [4:0] grp_fu_2032_p1;
wire   [6:0] grp_fu_2032_p2;
wire   [6:0] grp_fu_2032_p3;
wire   [4:0] grp_fu_2042_p1;
wire   [6:0] grp_fu_2042_p2;
wire   [6:0] grp_fu_2042_p3;
wire   [5:0] grp_fu_2052_p1;
wire   [6:0] grp_fu_2052_p2;
wire   [6:0] grp_fu_2052_p3;
wire   [5:0] grp_fu_2062_p1;
wire   [6:0] grp_fu_2062_p2;
wire   [6:0] grp_fu_2062_p3;
wire   [5:0] grp_fu_2072_p1;
wire   [6:0] grp_fu_2072_p2;
wire   [6:0] grp_fu_2072_p3;
wire   [5:0] grp_fu_2082_p1;
wire   [6:0] grp_fu_2082_p2;
wire   [6:0] grp_fu_2082_p3;
reg    grp_fu_1872_ce;
reg    grp_fu_1882_ce;
reg    grp_fu_1892_ce;
reg    grp_fu_1902_ce;
reg    grp_fu_1912_ce;
reg    grp_fu_1922_ce;
reg    grp_fu_1932_ce;
reg    grp_fu_1942_ce;
reg    grp_fu_1952_ce;
reg    grp_fu_1962_ce;
reg    grp_fu_1972_ce;
reg    grp_fu_1982_ce;
reg    grp_fu_1992_ce;
reg    grp_fu_2002_ce;
reg    grp_fu_2012_ce;
reg    grp_fu_2022_ce;
reg    grp_fu_2052_ce;
reg    grp_fu_2062_ce;
reg    grp_fu_2072_ce;
reg    grp_fu_2082_ce;
reg   [31:0] grp_fu_2875_p0;
reg   [31:0] grp_fu_2875_p1;
reg    grp_fu_2875_ce;
reg   [31:0] grp_fu_2879_p0;
reg   [31:0] grp_fu_2879_p1;
reg    grp_fu_2879_ce;
reg   [31:0] grp_fu_2883_p0;
reg   [31:0] grp_fu_2883_p1;
reg    grp_fu_2883_ce;
reg   [31:0] grp_fu_2887_p0;
reg   [31:0] grp_fu_2887_p1;
reg    grp_fu_2887_ce;
reg   [31:0] grp_fu_2891_p0;
reg   [31:0] grp_fu_2891_p1;
reg    grp_fu_2891_ce;
reg   [31:0] grp_fu_2895_p0;
reg   [31:0] grp_fu_2895_p1;
reg    grp_fu_2895_ce;
reg   [25:0] ap_NS_fsm;
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
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
reg    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
reg    ap_ST_fsm_state26_blk;
wire   [14:0] grp_fu_1740_p00;
wire   [14:0] grp_fu_1748_p00;
wire   [14:0] grp_fu_1756_p00;
wire   [14:0] grp_fu_1764_p00;
wire   [14:0] mul_ln101_1_fu_1674_p00;
wire   [14:0] mul_ln101_fu_1359_p00;
wire   [14:0] mul_ln114_1_fu_1529_p00;
wire   [14:0] mul_ln114_fu_1214_p00;
wire   [14:0] mul_ln127_1_fu_1689_p00;
wire   [14:0] mul_ln127_fu_1374_p00;
wire   [14:0] mul_ln140_1_fu_1544_p00;
wire   [14:0] mul_ln140_fu_1229_p00;
wire   [14:0] mul_ln34_1_fu_1484_p00;
wire   [14:0] mul_ln34_fu_1167_p00;
wire   [14:0] mul_ln49_1_fu_1644_p00;
wire   [14:0] mul_ln49_fu_1329_p00;
wire   [14:0] mul_ln62_1_fu_1499_p00;
wire   [14:0] mul_ln62_fu_1184_p00;
wire   [14:0] mul_ln75_1_fu_1659_p00;
wire   [14:0] mul_ln75_fu_1344_p00;
wire   [14:0] mul_ln88_1_fu_1514_p00;
wire   [14:0] mul_ln88_fu_1199_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 26'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_start_reg = 1'b0;
#0 phi_mul_fu_188 = 16'd0;
#0 v5_fu_192 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_814(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_2114),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_2343),.mul_ln62(mul_ln62_reg_2348),.mul_ln88(mul_ln88_reg_2353),.mul_ln114(mul_ln114_reg_2358),.mul_ln140(mul_ln140_reg_2363),.v4(v4),.cmp11(cmp11_reg_2181),.v11(v11_reg_2389),.v24(v24_reg_2394),.v35(v35_reg_2399),.v46(v46_reg_2404),.v57(v57_reg_2409),.v68(v68_reg_2414),.v79(v79_reg_2419),.v90(v90_reg_2424),.v101(v101_reg_2429),.grp_fu_2875_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2875_p_din0),.grp_fu_2875_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2875_p_din1),.grp_fu_2875_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2875_p_opcode),.grp_fu_2875_p_dout0(grp_fu_136_p_dout0),.grp_fu_2875_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2875_p_ce),.grp_fu_2879_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2879_p_din0),.grp_fu_2879_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2879_p_din1),.grp_fu_2879_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2879_p_opcode),.grp_fu_2879_p_dout0(grp_fu_140_p_dout0),.grp_fu_2879_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2879_p_ce),.grp_fu_2883_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2883_p_din0),.grp_fu_2883_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2883_p_din1),.grp_fu_2883_p_dout0(grp_fu_144_p_dout0),.grp_fu_2883_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2883_p_ce),.grp_fu_2887_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2887_p_din0),.grp_fu_2887_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2887_p_din1),.grp_fu_2887_p_dout0(grp_fu_148_p_dout0),.grp_fu_2887_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2887_p_ce),.grp_fu_2891_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2891_p_din0),.grp_fu_2891_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2891_p_din1),.grp_fu_2891_p_dout0(grp_fu_152_p_dout0),.grp_fu_2891_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2891_p_ce),.grp_fu_2895_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2895_p_din0),.grp_fu_2895_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2895_p_din1),.grp_fu_2895_p_dout0(grp_fu_156_p_dout0),.grp_fu_2895_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2895_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_23 grp_kernel_2mm_node0_Pipeline_label_23_fu_841(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_2114),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v228_ce1),.v228_q1(v228_q1),.mul_ln49(mul_ln49_reg_2494),.mul_ln75(mul_ln75_reg_2499),.mul_ln101(mul_ln101_reg_2504),.mul_ln127(mul_ln127_reg_2509),.mul_ln140(mul_ln140_reg_2363),.v4(v4),.cmp11(cmp11_reg_2181),.v11_1(v11_1_reg_2534),.v24_1(v24_1_reg_2539),.v35_1(v35_1_reg_2544),.v46_1(v46_1_reg_2549),.v57_1(v57_1_reg_2554),.v68_1(v68_1_reg_2559),.v79_1(v79_1_reg_2564),.v90_1(v90_1_reg_2569),.v101_1(v101_1_reg_2574),.grp_fu_2875_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2875_p_din0),.grp_fu_2875_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2875_p_din1),.grp_fu_2875_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2875_p_opcode),.grp_fu_2875_p_dout0(grp_fu_136_p_dout0),.grp_fu_2875_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2875_p_ce),.grp_fu_2879_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2879_p_din0),.grp_fu_2879_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2879_p_din1),.grp_fu_2879_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2879_p_opcode),.grp_fu_2879_p_dout0(grp_fu_140_p_dout0),.grp_fu_2879_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2879_p_ce),.grp_fu_2883_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2883_p_din0),.grp_fu_2883_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2883_p_din1),.grp_fu_2883_p_dout0(grp_fu_144_p_dout0),.grp_fu_2883_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2883_p_ce),.grp_fu_2887_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2887_p_din0),.grp_fu_2887_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2887_p_din1),.grp_fu_2887_p_dout0(grp_fu_148_p_dout0),.grp_fu_2887_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2887_p_ce),.grp_fu_2891_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2891_p_din0),.grp_fu_2891_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2891_p_din1),.grp_fu_2891_p_dout0(grp_fu_152_p_dout0),.grp_fu_2891_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2891_p_ce),.grp_fu_2895_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2895_p_din0),.grp_fu_2895_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2895_p_din1),.grp_fu_2895_p_dout0(grp_fu_156_p_dout0),.grp_fu_2895_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2895_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_24 grp_kernel_2mm_node0_Pipeline_label_24_fu_868(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_2114),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v228_ce1),.v228_q1(v228_q1),.mul_ln34_1(mul_ln34_1_reg_2659),.mul_ln62_1(mul_ln62_1_reg_2664),.mul_ln88_1(mul_ln88_1_reg_2669),.mul_ln114_1(mul_ln114_1_reg_2674),.mul_ln140_1(mul_ln140_1_reg_2679),.v4(v4),.cmp11(cmp11_reg_2181),.v11_2(v11_2_reg_2705),.v24_2(v24_2_reg_2710),.v35_2(v35_2_reg_2715),.v46_2(v46_2_reg_2720),.v57_2(v57_2_reg_2725),.v68_2(v68_2_reg_2730),.v79_2(v79_2_reg_2735),.v90_2(v90_2_reg_2740),.v101_2(v101_2_reg_2745),.grp_fu_2875_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2875_p_din0),.grp_fu_2875_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2875_p_din1),.grp_fu_2875_p_opcode(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2875_p_opcode),.grp_fu_2875_p_dout0(grp_fu_136_p_dout0),.grp_fu_2875_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2875_p_ce),.grp_fu_2879_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2879_p_din0),.grp_fu_2879_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2879_p_din1),.grp_fu_2879_p_opcode(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2879_p_opcode),.grp_fu_2879_p_dout0(grp_fu_140_p_dout0),.grp_fu_2879_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2879_p_ce),.grp_fu_2883_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2883_p_din0),.grp_fu_2883_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2883_p_din1),.grp_fu_2883_p_dout0(grp_fu_144_p_dout0),.grp_fu_2883_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2883_p_ce),.grp_fu_2887_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2887_p_din0),.grp_fu_2887_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2887_p_din1),.grp_fu_2887_p_dout0(grp_fu_148_p_dout0),.grp_fu_2887_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2887_p_ce),.grp_fu_2891_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2891_p_din0),.grp_fu_2891_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2891_p_din1),.grp_fu_2891_p_dout0(grp_fu_152_p_dout0),.grp_fu_2891_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2891_p_ce),.grp_fu_2895_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2895_p_din0),.grp_fu_2895_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2895_p_din1),.grp_fu_2895_p_dout0(grp_fu_156_p_dout0),.grp_fu_2895_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2895_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_25 grp_kernel_2mm_node0_Pipeline_label_25_fu_895(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_d1),.v229_0_q1(v229_0_q1),.phi_mul(phi_mul_load_reg_2114),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v228_ce1),.v228_q1(v228_q1),.mul_ln49_1(mul_ln49_1_reg_2810),.mul_ln75_1(mul_ln75_1_reg_2815),.mul_ln101_1(mul_ln101_1_reg_2820),.mul_ln127_1(mul_ln127_1_reg_2825),.mul_ln140_1(mul_ln140_1_reg_2679),.v4(v4),.cmp11(cmp11_reg_2181),.v11_3(v11_3_reg_2830),.v24_3(v24_3_reg_2835),.v35_3(v35_3_reg_2840),.v46_3(v46_3_reg_2845),.v57_3(v57_3_reg_2850),.v68_3(v68_3_reg_2855),.v79_3(v79_3_reg_2860),.v90_3(v90_3_reg_2865),.v101_3(v101_3_reg_2870),.grp_fu_2875_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2875_p_din0),.grp_fu_2875_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2875_p_din1),.grp_fu_2875_p_opcode(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2875_p_opcode),.grp_fu_2875_p_dout0(grp_fu_136_p_dout0),.grp_fu_2875_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2875_p_ce),.grp_fu_2879_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2879_p_din0),.grp_fu_2879_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2879_p_din1),.grp_fu_2879_p_opcode(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2879_p_opcode),.grp_fu_2879_p_dout0(grp_fu_140_p_dout0),.grp_fu_2879_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2879_p_ce),.grp_fu_2883_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2883_p_din0),.grp_fu_2883_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2883_p_din1),.grp_fu_2883_p_dout0(grp_fu_144_p_dout0),.grp_fu_2883_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2883_p_ce),.grp_fu_2887_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2887_p_din0),.grp_fu_2887_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2887_p_din1),.grp_fu_2887_p_dout0(grp_fu_148_p_dout0),.grp_fu_2887_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2887_p_ce),.grp_fu_2891_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2891_p_din0),.grp_fu_2891_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2891_p_din1),.grp_fu_2891_p_dout0(grp_fu_152_p_dout0),.grp_fu_2891_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2891_p_ce),.grp_fu_2895_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2895_p_din0),.grp_fu_2895_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2895_p_din1),.grp_fu_2895_p_dout0(grp_fu_156_p_dout0),.grp_fu_2895_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2895_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U161(.din0(mul_ln34_fu_1167_p0),.din1(mul_ln34_fu_1167_p1),.dout(mul_ln34_fu_1167_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U162(.din0(mul_ln62_fu_1184_p0),.din1(mul_ln62_fu_1184_p1),.dout(mul_ln62_fu_1184_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U163(.din0(mul_ln88_fu_1199_p0),.din1(mul_ln88_fu_1199_p1),.dout(mul_ln88_fu_1199_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U164(.din0(mul_ln114_fu_1214_p0),.din1(mul_ln114_fu_1214_p1),.dout(mul_ln114_fu_1214_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U165(.din0(mul_ln140_fu_1229_p0),.din1(mul_ln140_fu_1229_p1),.dout(mul_ln140_fu_1229_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U166(.din0(mul_ln49_fu_1329_p0),.din1(mul_ln49_fu_1329_p1),.dout(mul_ln49_fu_1329_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U167(.din0(mul_ln75_fu_1344_p0),.din1(mul_ln75_fu_1344_p1),.dout(mul_ln75_fu_1344_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U168(.din0(mul_ln101_fu_1359_p0),.din1(mul_ln101_fu_1359_p1),.dout(mul_ln101_fu_1359_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U169(.din0(mul_ln127_fu_1374_p0),.din1(mul_ln127_fu_1374_p1),.dout(mul_ln127_fu_1374_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U170(.din0(mul_ln34_1_fu_1484_p0),.din1(mul_ln34_1_fu_1484_p1),.dout(mul_ln34_1_fu_1484_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U171(.din0(mul_ln62_1_fu_1499_p0),.din1(mul_ln62_1_fu_1499_p1),.dout(mul_ln62_1_fu_1499_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U172(.din0(mul_ln88_1_fu_1514_p0),.din1(mul_ln88_1_fu_1514_p1),.dout(mul_ln88_1_fu_1514_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U173(.din0(mul_ln114_1_fu_1529_p0),.din1(mul_ln114_1_fu_1529_p1),.dout(mul_ln114_1_fu_1529_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U174(.din0(mul_ln140_1_fu_1544_p0),.din1(mul_ln140_1_fu_1544_p1),.dout(mul_ln140_1_fu_1544_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U175(.din0(mul_ln49_1_fu_1644_p0),.din1(mul_ln49_1_fu_1644_p1),.dout(mul_ln49_1_fu_1644_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U176(.din0(mul_ln75_1_fu_1659_p0),.din1(mul_ln75_1_fu_1659_p1),.dout(mul_ln75_1_fu_1659_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U177(.din0(mul_ln101_1_fu_1674_p0),.din1(mul_ln101_1_fu_1674_p1),.dout(mul_ln101_1_fu_1674_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U178(.din0(mul_ln127_1_fu_1689_p0),.din1(mul_ln127_1_fu_1689_p1),.dout(mul_ln127_1_fu_1689_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U179(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1740_p0),.din1(grp_fu_1740_p1),.din2(grp_fu_1740_p2),.ce(1'b1),.dout(grp_fu_1740_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U180(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1748_p0),.din1(grp_fu_1748_p1),.din2(grp_fu_1748_p2),.ce(1'b1),.dout(grp_fu_1748_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U181(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1756_p0),.din1(grp_fu_1756_p1),.din2(grp_fu_1756_p2),.ce(1'b1),.dout(grp_fu_1756_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U182(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1764_p0),.din1(grp_fu_1764_p1),.din2(grp_fu_1764_p2),.ce(1'b1),.dout(grp_fu_1764_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U183(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1772_p1),.din2(grp_fu_1772_p2),.din3(grp_fu_1772_p3),.ce(1'b1),.dout(grp_fu_1772_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U184(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1782_p1),.din2(grp_fu_1782_p2),.din3(grp_fu_1782_p3),.ce(1'b1),.dout(grp_fu_1782_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U185(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1792_p1),.din2(grp_fu_1792_p2),.din3(grp_fu_1792_p3),.ce(1'b1),.dout(grp_fu_1792_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U186(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1802_p1),.din2(grp_fu_1802_p2),.din3(grp_fu_1802_p3),.ce(1'b1),.dout(grp_fu_1802_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U187(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1812_p1),.din2(grp_fu_1812_p2),.din3(grp_fu_1812_p3),.ce(1'b1),.dout(grp_fu_1812_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U188(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1822_p1),.din2(grp_fu_1822_p2),.din3(grp_fu_1822_p3),.ce(1'b1),.dout(grp_fu_1822_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U189(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1832_p1),.din2(grp_fu_1832_p2),.din3(grp_fu_1832_p3),.ce(1'b1),.dout(grp_fu_1832_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U190(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1842_p1),.din2(grp_fu_1842_p2),.din3(grp_fu_1842_p3),.ce(1'b1),.dout(grp_fu_1842_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U191(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1852_p1),.din2(grp_fu_1852_p2),.din3(grp_fu_1852_p3),.ce(1'b1),.dout(grp_fu_1852_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U192(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1862_p1),.din2(grp_fu_1862_p2),.din3(grp_fu_1862_p3),.ce(1'b1),.dout(grp_fu_1862_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U193(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1872_p1),.din2(grp_fu_1872_p2),.din3(grp_fu_1872_p3),.ce(grp_fu_1872_ce),.dout(grp_fu_1872_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U194(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1882_p1),.din2(grp_fu_1882_p2),.din3(grp_fu_1882_p3),.ce(grp_fu_1882_ce),.dout(grp_fu_1882_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U195(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1892_p1),.din2(grp_fu_1892_p2),.din3(grp_fu_1892_p3),.ce(grp_fu_1892_ce),.dout(grp_fu_1892_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U196(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1902_p1),.din2(grp_fu_1902_p2),.din3(grp_fu_1902_p3),.ce(grp_fu_1902_ce),.dout(grp_fu_1902_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U197(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1912_p1),.din2(grp_fu_1912_p2),.din3(grp_fu_1912_p3),.ce(grp_fu_1912_ce),.dout(grp_fu_1912_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U198(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1922_p1),.din2(grp_fu_1922_p2),.din3(grp_fu_1922_p3),.ce(grp_fu_1922_ce),.dout(grp_fu_1922_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U199(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1932_p1),.din2(grp_fu_1932_p2),.din3(grp_fu_1932_p3),.ce(grp_fu_1932_ce),.dout(grp_fu_1932_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U200(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1942_p1),.din2(grp_fu_1942_p2),.din3(grp_fu_1942_p3),.ce(grp_fu_1942_ce),.dout(grp_fu_1942_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U201(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1952_p1),.din2(grp_fu_1952_p2),.din3(grp_fu_1952_p3),.ce(grp_fu_1952_ce),.dout(grp_fu_1952_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U202(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1962_p1),.din2(grp_fu_1962_p2),.din3(grp_fu_1962_p3),.ce(grp_fu_1962_ce),.dout(grp_fu_1962_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U203(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1972_p1),.din2(grp_fu_1972_p2),.din3(grp_fu_1972_p3),.ce(grp_fu_1972_ce),.dout(grp_fu_1972_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U204(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1982_p1),.din2(grp_fu_1982_p2),.din3(grp_fu_1982_p3),.ce(grp_fu_1982_ce),.dout(grp_fu_1982_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U205(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_1992_p1),.din2(grp_fu_1992_p2),.din3(grp_fu_1992_p3),.ce(grp_fu_1992_ce),.dout(grp_fu_1992_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U206(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_2002_p1),.din2(grp_fu_2002_p2),.din3(grp_fu_2002_p3),.ce(grp_fu_2002_ce),.dout(grp_fu_2002_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U207(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_2012_p1),.din2(grp_fu_2012_p2),.din3(grp_fu_2012_p3),.ce(grp_fu_2012_ce),.dout(grp_fu_2012_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U208(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_2022_p1),.din2(grp_fu_2022_p2),.din3(grp_fu_2022_p3),.ce(grp_fu_2022_ce),.dout(grp_fu_2022_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U209(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_2032_p1),.din2(grp_fu_2032_p2),.din3(grp_fu_2032_p3),.ce(1'b1),.dout(grp_fu_2032_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U210(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_2042_p1),.din2(grp_fu_2042_p2),.din3(grp_fu_2042_p3),.ce(1'b1),.dout(grp_fu_2042_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1_U211(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_2052_p1),.din2(grp_fu_2052_p2),.din3(grp_fu_2052_p3),.ce(grp_fu_2052_ce),.dout(grp_fu_2052_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1_U212(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_2062_p1),.din2(grp_fu_2062_p2),.din3(grp_fu_2062_p3),.ce(grp_fu_2062_ce),.dout(grp_fu_2062_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1_U213(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_2072_p1),.din2(grp_fu_2072_p2),.din3(grp_fu_2072_p3),.ce(grp_fu_2072_ce),.dout(grp_fu_2072_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1_U214(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_802),.din1(grp_fu_2082_p1),.din2(grp_fu_2082_p2),.din3(grp_fu_2082_p3),.ce(grp_fu_2082_ce),.dout(grp_fu_2082_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state21)) begin
            grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_188 <= 16'd0;
    end else if (((icmp_ln32_fu_1034_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_188 <= add_ln31_1_reg_2122;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_192 <= 8'd0;
    end else if (((icmp_ln32_fu_1034_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_192 <= add_ln31_reg_2130;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_998_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_802 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        v6_reg_802 <= add_ln32_3_reg_2223;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_2122 <= add_ln31_1_fu_992_p2;
        add_ln31_reg_2130 <= add_ln31_fu_1004_p2;
        cmp11_reg_2181 <= cmp11_fu_1028_p2;
        phi_mul_load_reg_2114 <= phi_mul_fu_188;
        trunc_ln31_reg_2135 <= trunc_ln31_fu_1010_p1;
        zext_ln31_reg_2141[6 : 0] <= zext_ln31_fu_1024_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_3_reg_2223 <= add_ln32_3_fu_1066_p2;
        lshr_ln2_reg_2197 <= {{v6_reg_802[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        mul_ln101_1_reg_2820 <= mul_ln101_1_fu_1674_p2;
        mul_ln127_1_reg_2825 <= mul_ln127_1_fu_1689_p2;
        mul_ln49_1_reg_2810 <= mul_ln49_1_fu_1644_p2;
        mul_ln75_1_reg_2815 <= mul_ln75_1_fu_1659_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln101_reg_2504 <= mul_ln101_fu_1359_p2;
        mul_ln127_reg_2509 <= mul_ln127_fu_1374_p2;
        mul_ln49_reg_2494 <= mul_ln49_fu_1329_p2;
        mul_ln75_reg_2499 <= mul_ln75_fu_1344_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        mul_ln114_1_reg_2674 <= mul_ln114_1_fu_1529_p2;
        mul_ln140_1_reg_2679 <= mul_ln140_1_fu_1544_p2;
        mul_ln34_1_reg_2659 <= mul_ln34_1_fu_1484_p2;
        mul_ln62_1_reg_2664 <= mul_ln62_1_fu_1499_p2;
        mul_ln88_1_reg_2669 <= mul_ln88_1_fu_1514_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln114_reg_2358 <= mul_ln114_fu_1214_p2;
        mul_ln140_reg_2363 <= mul_ln140_fu_1229_p2;
        mul_ln34_reg_2343 <= mul_ln34_fu_1167_p2;
        mul_ln62_reg_2348 <= mul_ln62_fu_1184_p2;
        mul_ln88_reg_2353 <= mul_ln88_fu_1199_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_936 <= grp_fu_922_p3;
        reg_940 <= grp_fu_929_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_944 <= grp_fu_922_p3;
        reg_948 <= grp_fu_929_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_952 <= grp_fu_922_p3;
        reg_956 <= grp_fu_929_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_960 <= grp_fu_922_p3;
        reg_964 <= grp_fu_929_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_968 <= grp_fu_922_p3;
        reg_972 <= grp_fu_929_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_6_reg_2228 <= {{v6_reg_802[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v101_1_reg_2574 <= v101_1_fu_1430_p1;
        v11_1_reg_2534 <= v11_1_fu_1390_p1;
        v24_1_reg_2539 <= v24_1_fu_1395_p1;
        v35_1_reg_2544 <= v35_1_fu_1400_p1;
        v46_1_reg_2549 <= v46_1_fu_1405_p1;
        v57_1_reg_2554 <= v57_1_fu_1410_p1;
        v68_1_reg_2559 <= v68_1_fu_1415_p1;
        v79_1_reg_2564 <= v79_1_fu_1420_p1;
        v90_1_reg_2569 <= v90_1_fu_1425_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v101_2_reg_2745 <= v101_2_fu_1600_p1;
        v11_2_reg_2705 <= v11_2_fu_1560_p1;
        v24_2_reg_2710 <= v24_2_fu_1565_p1;
        v35_2_reg_2715 <= v35_2_fu_1570_p1;
        v46_2_reg_2720 <= v46_2_fu_1575_p1;
        v57_2_reg_2725 <= v57_2_fu_1580_p1;
        v68_2_reg_2730 <= v68_2_fu_1585_p1;
        v79_2_reg_2735 <= v79_2_fu_1590_p1;
        v90_2_reg_2740 <= v90_2_fu_1595_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v101_3_reg_2870 <= v101_3_fu_1735_p1;
        v11_3_reg_2830 <= v11_3_fu_1695_p1;
        v24_3_reg_2835 <= v24_3_fu_1700_p1;
        v35_3_reg_2840 <= v35_3_fu_1705_p1;
        v46_3_reg_2845 <= v46_3_fu_1710_p1;
        v57_3_reg_2850 <= v57_3_fu_1715_p1;
        v68_3_reg_2855 <= v68_3_fu_1720_p1;
        v79_3_reg_2860 <= v79_3_fu_1725_p1;
        v90_3_reg_2865 <= v90_3_fu_1730_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_2429 <= v101_fu_1285_p1;
        v11_reg_2389 <= v11_fu_1245_p1;
        v24_reg_2394 <= v24_fu_1250_p1;
        v35_reg_2399 <= v35_fu_1255_p1;
        v46_reg_2404 <= v46_fu_1260_p1;
        v57_reg_2409 <= v57_fu_1265_p1;
        v68_reg_2414 <= v68_fu_1270_p1;
        v79_reg_2419 <= v79_fu_1275_p1;
        v90_reg_2424 <= v90_fu_1280_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
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
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_done == 1'b0)) begin
        ap_ST_fsm_state22_blk = 1'b1;
    end else begin
        ap_ST_fsm_state22_blk = 1'b0;
    end
end
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_done == 1'b0)) begin
        ap_ST_fsm_state26_blk = 1'b1;
    end else begin
        ap_ST_fsm_state26_blk = 1'b0;
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_998_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_998_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1872_ce = 1'b1;
    end else begin
        grp_fu_1872_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1882_ce = 1'b1;
    end else begin
        grp_fu_1882_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1892_ce = 1'b1;
    end else begin
        grp_fu_1892_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1902_ce = 1'b1;
    end else begin
        grp_fu_1902_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1912_ce = 1'b1;
    end else begin
        grp_fu_1912_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1922_ce = 1'b1;
    end else begin
        grp_fu_1922_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1932_ce = 1'b1;
    end else begin
        grp_fu_1932_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1942_ce = 1'b1;
    end else begin
        grp_fu_1942_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1952_ce = 1'b1;
    end else begin
        grp_fu_1952_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1962_ce = 1'b1;
    end else begin
        grp_fu_1962_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1972_ce = 1'b1;
    end else begin
        grp_fu_1972_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1982_ce = 1'b1;
    end else begin
        grp_fu_1982_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1992_ce = 1'b1;
    end else begin
        grp_fu_1992_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_2002_ce = 1'b1;
    end else begin
        grp_fu_2002_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_2012_ce = 1'b1;
    end else begin
        grp_fu_2012_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_2022_ce = 1'b1;
    end else begin
        grp_fu_2022_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_2052_ce = 1'b1;
    end else begin
        grp_fu_2052_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_2062_ce = 1'b1;
    end else begin
        grp_fu_2062_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_2072_ce = 1'b1;
    end else begin
        grp_fu_2072_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_2082_ce = 1'b1;
    end else begin
        grp_fu_2082_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2875_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2875_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2875_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2875_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2875_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2875_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2875_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2875_p_ce;
    end else begin
        grp_fu_2875_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2875_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2875_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2875_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2875_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2875_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2875_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2875_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2875_p_din0;
    end else begin
        grp_fu_2875_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2875_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2875_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2875_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2875_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2875_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2875_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2875_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2875_p_din1;
    end else begin
        grp_fu_2875_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2879_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2879_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2879_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2879_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2879_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2879_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2879_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2879_p_ce;
    end else begin
        grp_fu_2879_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2879_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2879_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2879_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2879_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2879_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2879_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2879_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2879_p_din0;
    end else begin
        grp_fu_2879_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2879_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2879_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2879_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2879_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2879_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2879_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2879_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2879_p_din1;
    end else begin
        grp_fu_2879_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2883_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2883_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2883_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2883_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2883_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2883_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2883_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2883_p_ce;
    end else begin
        grp_fu_2883_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2883_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2883_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2883_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2883_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2883_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2883_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2883_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2883_p_din0;
    end else begin
        grp_fu_2883_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2883_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2883_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2883_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2883_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2883_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2883_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2883_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2883_p_din1;
    end else begin
        grp_fu_2883_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2887_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2887_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2887_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2887_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2887_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2887_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2887_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2887_p_ce;
    end else begin
        grp_fu_2887_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2887_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2887_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2887_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2887_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2887_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2887_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2887_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2887_p_din0;
    end else begin
        grp_fu_2887_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2887_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2887_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2887_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2887_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2887_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2887_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2887_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2887_p_din1;
    end else begin
        grp_fu_2887_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2891_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2891_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2891_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2891_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2891_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2891_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2891_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2891_p_ce;
    end else begin
        grp_fu_2891_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2891_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2891_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2891_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2891_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2891_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2891_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2891_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2891_p_din0;
    end else begin
        grp_fu_2891_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2891_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2891_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2891_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2891_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2891_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2891_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2891_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2891_p_din1;
    end else begin
        grp_fu_2891_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2895_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2895_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2895_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2895_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2895_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2895_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2895_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2895_p_ce;
    end else begin
        grp_fu_2895_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2895_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2895_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2895_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2895_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2895_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2895_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2895_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2895_p_din0;
    end else begin
        grp_fu_2895_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2895_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_grp_fu_2895_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2895_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_grp_fu_2895_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2895_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_grp_fu_2895_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2895_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_grp_fu_2895_p_din1;
    end else begin
        grp_fu_2895_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_0_address0_local = p_cast1006_fu_1630_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_0_address0_local = p_cast1004_fu_1620_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_0_address0_local = p_cast1002_fu_1610_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_0_address0_local = p_cast1000_fu_1555_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_0_address0_local = p_cast998_fu_1470_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_0_address0_local = p_cast996_fu_1460_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_0_address0_local = p_cast994_fu_1450_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_0_address0_local = p_cast992_fu_1440_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_0_address0_local = p_cast990_fu_1385_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_0_address0_local = p_cast988_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_0_address0_local = p_cast986_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_0_address0_local = p_cast984_fu_1295_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address0_local = p_cast982_fu_1240_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address0_local = p_cast980_fu_1159_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address0_local = p_cast978_fu_1149_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address0_local = p_cast976_fu_1139_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast974_fu_1129_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast_fu_1119_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_0_address1_local = p_cast1005_fu_1625_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_0_address1_local = p_cast1003_fu_1615_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_0_address1_local = p_cast1001_fu_1605_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_0_address1_local = p_cast999_fu_1550_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_0_address1_local = p_cast997_fu_1465_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_0_address1_local = p_cast995_fu_1455_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_0_address1_local = p_cast993_fu_1445_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_0_address1_local = p_cast991_fu_1435_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_0_address1_local = p_cast989_fu_1380_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_0_address1_local = p_cast987_fu_1310_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_0_address1_local = p_cast985_fu_1300_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_0_address1_local = p_cast983_fu_1290_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address1_local = p_cast981_fu_1235_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address1_local = p_cast979_fu_1154_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address1_local = p_cast977_fu_1144_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address1_local = p_cast975_fu_1134_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast973_fu_1124_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast972_fu_1114_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_1_address0_local = p_cast1006_fu_1630_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_1_address0_local = p_cast1004_fu_1620_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_1_address0_local = p_cast1002_fu_1610_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_1_address0_local = p_cast1000_fu_1555_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_1_address0_local = p_cast998_fu_1470_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_1_address0_local = p_cast996_fu_1460_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_1_address0_local = p_cast994_fu_1450_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_1_address0_local = p_cast992_fu_1440_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_1_address0_local = p_cast990_fu_1385_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address0_local = p_cast988_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address0_local = p_cast986_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address0_local = p_cast984_fu_1295_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address0_local = p_cast982_fu_1240_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address0_local = p_cast980_fu_1159_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address0_local = p_cast978_fu_1149_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address0_local = p_cast976_fu_1139_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast974_fu_1129_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast_fu_1119_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_1_address1_local = p_cast1005_fu_1625_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_1_address1_local = p_cast1003_fu_1615_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_1_address1_local = p_cast1001_fu_1605_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_1_address1_local = p_cast999_fu_1550_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_1_address1_local = p_cast997_fu_1465_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_1_address1_local = p_cast995_fu_1455_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_1_address1_local = p_cast993_fu_1445_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_1_address1_local = p_cast991_fu_1435_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_1_address1_local = p_cast989_fu_1380_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address1_local = p_cast987_fu_1310_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address1_local = p_cast985_fu_1300_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address1_local = p_cast983_fu_1290_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address1_local = p_cast981_fu_1235_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address1_local = p_cast979_fu_1154_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address1_local = p_cast977_fu_1144_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address1_local = p_cast975_fu_1134_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast973_fu_1124_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast972_fu_1114_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_v229_1_we1;
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
            if (((icmp_ln31_fu_998_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_1034_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
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
            if (((grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
                ap_NS_fsm = ap_ST_fsm_state23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_992_p2 = (phi_mul_fu_188 + 16'd220);
assign add_ln31_fu_1004_p2 = (v5_fu_192 + 8'd1);
assign add_ln32_3_fu_1066_p2 = (v6_reg_802 + 8'd36);
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
assign ap_CS_fsm_state25 = ap_CS_fsm[32'd24];
assign ap_CS_fsm_state26 = ap_CS_fsm[32'd25];
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
assign cmp11_fu_1028_p2 = ((v5_fu_192 == 8'd0) ? 1'b1 : 1'b0);
assign empty_101_fu_1475_p2 = (lshr_ln2_reg_2197 + 7'd9);
assign empty_108_fu_1490_p2 = (lshr_ln2_reg_2197 + 7'd10);
assign empty_115_fu_1505_p2 = (lshr_ln2_reg_2197 + 7'd11);
assign empty_122_fu_1520_p2 = (lshr_ln2_reg_2197 + 7'd12);
assign empty_129_fu_1535_p2 = (lshr_ln2_reg_2197 + 7'd13);
assign empty_135_fu_1635_p2 = (lshr_ln2_reg_2197 + 7'd14);
assign empty_142_fu_1650_p2 = (lshr_ln2_reg_2197 + 7'd15);
assign empty_149_fu_1665_p2 = (lshr_ln2_reg_2197 + 7'd16);
assign empty_156_fu_1680_p2 = (lshr_ln2_reg_2197 + 7'd17);
assign empty_54_fu_1190_p2 = (lshr_ln2_reg_2197 + 7'd2);
assign empty_61_fu_1205_p2 = (lshr_ln2_reg_2197 + 7'd3);
assign empty_68_fu_1220_p2 = (lshr_ln2_reg_2197 + 7'd4);
assign empty_74_fu_1320_p2 = (lshr_ln2_reg_2197 + 7'd5);
assign empty_81_fu_1335_p2 = (lshr_ln2_reg_2197 + 7'd6);
assign empty_88_fu_1350_p2 = (lshr_ln2_reg_2197 + 7'd7);
assign empty_95_fu_1365_p2 = (lshr_ln2_reg_2197 + 7'd8);
assign grp_fu_136_p_ce = grp_fu_2875_ce;
assign grp_fu_136_p_din0 = grp_fu_2875_p0;
assign grp_fu_136_p_din1 = grp_fu_2875_p1;
assign grp_fu_136_p_opcode = 2'd0;
assign grp_fu_140_p_ce = grp_fu_2879_ce;
assign grp_fu_140_p_din0 = grp_fu_2879_p0;
assign grp_fu_140_p_din1 = grp_fu_2879_p1;
assign grp_fu_140_p_opcode = 2'd0;
assign grp_fu_144_p_ce = grp_fu_2883_ce;
assign grp_fu_144_p_din0 = grp_fu_2883_p0;
assign grp_fu_144_p_din1 = grp_fu_2883_p1;
assign grp_fu_148_p_ce = grp_fu_2887_ce;
assign grp_fu_148_p_din0 = grp_fu_2887_p0;
assign grp_fu_148_p_din1 = grp_fu_2887_p1;
assign grp_fu_152_p_ce = grp_fu_2891_ce;
assign grp_fu_152_p_din0 = grp_fu_2891_p0;
assign grp_fu_152_p_din1 = grp_fu_2891_p1;
assign grp_fu_156_p_ce = grp_fu_2895_ce;
assign grp_fu_156_p_din0 = grp_fu_2895_p0;
assign grp_fu_156_p_din1 = grp_fu_2895_p1;
assign grp_fu_1740_p0 = grp_fu_1740_p00;
assign grp_fu_1740_p00 = v6_reg_802;
assign grp_fu_1740_p1 = 15'd95;
assign grp_fu_1740_p2 = zext_ln31_reg_2141;
assign grp_fu_1748_p0 = grp_fu_1748_p00;
assign grp_fu_1748_p00 = tmp_5_fu_1054_p3;
assign grp_fu_1748_p1 = 15'd95;
assign grp_fu_1748_p2 = zext_ln31_reg_2141;
assign grp_fu_1756_p0 = grp_fu_1756_p00;
assign grp_fu_1756_p00 = tmp_8_fu_1090_p3;
assign grp_fu_1756_p1 = 15'd95;
assign grp_fu_1756_p2 = zext_ln31_reg_2141;
assign grp_fu_1764_p0 = grp_fu_1764_p00;
assign grp_fu_1764_p00 = tmp_1_fu_1102_p3;
assign grp_fu_1764_p1 = 15'd95;
assign grp_fu_1764_p2 = zext_ln31_reg_2141;
assign grp_fu_1772_p1 = 8'd4;
assign grp_fu_1772_p2 = 15'd95;
assign grp_fu_1772_p3 = zext_ln31_reg_2141;
assign grp_fu_1782_p1 = 8'd5;
assign grp_fu_1782_p2 = 15'd95;
assign grp_fu_1782_p3 = zext_ln31_reg_2141;
assign grp_fu_1792_p1 = 8'd6;
assign grp_fu_1792_p2 = 15'd95;
assign grp_fu_1792_p3 = zext_ln31_reg_2141;
assign grp_fu_1802_p1 = 8'd7;
assign grp_fu_1802_p2 = 15'd95;
assign grp_fu_1802_p3 = zext_ln31_reg_2141;
assign grp_fu_1812_p1 = 8'd8;
assign grp_fu_1812_p2 = 15'd95;
assign grp_fu_1812_p3 = zext_ln31_reg_2141;
assign grp_fu_1822_p1 = 8'd9;
assign grp_fu_1822_p2 = 15'd95;
assign grp_fu_1822_p3 = zext_ln31_reg_2141;
assign grp_fu_1832_p1 = 8'd10;
assign grp_fu_1832_p2 = 15'd95;
assign grp_fu_1832_p3 = zext_ln31_reg_2141;
assign grp_fu_1842_p1 = 8'd11;
assign grp_fu_1842_p2 = 15'd95;
assign grp_fu_1842_p3 = zext_ln31_reg_2141;
assign grp_fu_1852_p1 = 8'd12;
assign grp_fu_1852_p2 = 15'd95;
assign grp_fu_1852_p3 = zext_ln31_reg_2141;
assign grp_fu_1862_p1 = 8'd13;
assign grp_fu_1862_p2 = 15'd95;
assign grp_fu_1862_p3 = zext_ln31_reg_2141;
assign grp_fu_1872_p1 = 8'd14;
assign grp_fu_1872_p2 = 15'd95;
assign grp_fu_1872_p3 = zext_ln31_reg_2141;
assign grp_fu_1882_p1 = 8'd15;
assign grp_fu_1882_p2 = 15'd95;
assign grp_fu_1882_p3 = zext_ln31_reg_2141;
assign grp_fu_1892_p1 = 8'd16;
assign grp_fu_1892_p2 = 15'd95;
assign grp_fu_1892_p3 = zext_ln31_reg_2141;
assign grp_fu_1902_p1 = 8'd17;
assign grp_fu_1902_p2 = 15'd95;
assign grp_fu_1902_p3 = zext_ln31_reg_2141;
assign grp_fu_1912_p1 = 8'd18;
assign grp_fu_1912_p2 = 15'd95;
assign grp_fu_1912_p3 = zext_ln31_reg_2141;
assign grp_fu_1922_p1 = 8'd19;
assign grp_fu_1922_p2 = 15'd95;
assign grp_fu_1922_p3 = zext_ln31_reg_2141;
assign grp_fu_1932_p1 = 8'd20;
assign grp_fu_1932_p2 = 15'd95;
assign grp_fu_1932_p3 = zext_ln31_reg_2141;
assign grp_fu_1942_p1 = 8'd21;
assign grp_fu_1942_p2 = 15'd95;
assign grp_fu_1942_p3 = zext_ln31_reg_2141;
assign grp_fu_1952_p1 = 8'd22;
assign grp_fu_1952_p2 = 15'd95;
assign grp_fu_1952_p3 = zext_ln31_reg_2141;
assign grp_fu_1962_p1 = 8'd23;
assign grp_fu_1962_p2 = 15'd95;
assign grp_fu_1962_p3 = zext_ln31_reg_2141;
assign grp_fu_1972_p1 = 8'd24;
assign grp_fu_1972_p2 = 15'd95;
assign grp_fu_1972_p3 = zext_ln31_reg_2141;
assign grp_fu_1982_p1 = 8'd25;
assign grp_fu_1982_p2 = 15'd95;
assign grp_fu_1982_p3 = zext_ln31_reg_2141;
assign grp_fu_1992_p1 = 8'd26;
assign grp_fu_1992_p2 = 15'd95;
assign grp_fu_1992_p3 = zext_ln31_reg_2141;
assign grp_fu_2002_p1 = 8'd27;
assign grp_fu_2002_p2 = 15'd95;
assign grp_fu_2002_p3 = zext_ln31_reg_2141;
assign grp_fu_2012_p1 = 8'd28;
assign grp_fu_2012_p2 = 15'd95;
assign grp_fu_2012_p3 = zext_ln31_reg_2141;
assign grp_fu_2022_p1 = 8'd29;
assign grp_fu_2022_p2 = 15'd95;
assign grp_fu_2022_p3 = zext_ln31_reg_2141;
assign grp_fu_2032_p1 = 8'd30;
assign grp_fu_2032_p2 = 15'd95;
assign grp_fu_2032_p3 = zext_ln31_reg_2141;
assign grp_fu_2042_p1 = 8'd31;
assign grp_fu_2042_p2 = 15'd95;
assign grp_fu_2042_p3 = zext_ln31_reg_2141;
assign grp_fu_2052_p1 = 8'd32;
assign grp_fu_2052_p2 = 15'd95;
assign grp_fu_2052_p3 = zext_ln31_reg_2141;
assign grp_fu_2062_p1 = 8'd33;
assign grp_fu_2062_p2 = 15'd95;
assign grp_fu_2062_p3 = zext_ln31_reg_2141;
assign grp_fu_2072_p1 = 8'd34;
assign grp_fu_2072_p2 = 15'd95;
assign grp_fu_2072_p3 = zext_ln31_reg_2141;
assign grp_fu_2082_p1 = 8'd35;
assign grp_fu_2082_p2 = 15'd95;
assign grp_fu_2082_p3 = zext_ln31_reg_2141;
assign grp_fu_922_p3 = ((trunc_ln31_reg_2135[0:0] == 1'b1) ? v224_1_q1 : v224_0_q1);
assign grp_fu_929_p3 = ((trunc_ln31_reg_2135[0:0] == 1'b1) ? v224_1_q0 : v224_0_q0);
assign grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_start = grp_kernel_2mm_node0_Pipeline_label_23_fu_841_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_start = grp_kernel_2mm_node0_Pipeline_label_24_fu_868_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_start = grp_kernel_2mm_node0_Pipeline_label_25_fu_895_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_814_ap_start_reg;
assign icmp_ln31_fu_998_p2 = ((v5_fu_192 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_1034_p2 = ((v6_reg_802 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_1044_p4 = {{v6_reg_802[7:1]}};
assign lshr_ln_fu_1014_p4 = {{v5_fu_192[7:1]}};
assign mul_ln101_1_fu_1674_p0 = mul_ln101_1_fu_1674_p00;
assign mul_ln101_1_fu_1674_p00 = empty_149_fu_1665_p2;
assign mul_ln101_1_fu_1674_p1 = 15'd220;
assign mul_ln101_fu_1359_p0 = mul_ln101_fu_1359_p00;
assign mul_ln101_fu_1359_p00 = empty_88_fu_1350_p2;
assign mul_ln101_fu_1359_p1 = 15'd220;
assign mul_ln114_1_fu_1529_p0 = mul_ln114_1_fu_1529_p00;
assign mul_ln114_1_fu_1529_p00 = empty_122_fu_1520_p2;
assign mul_ln114_1_fu_1529_p1 = 15'd220;
assign mul_ln114_fu_1214_p0 = mul_ln114_fu_1214_p00;
assign mul_ln114_fu_1214_p00 = empty_61_fu_1205_p2;
assign mul_ln114_fu_1214_p1 = 15'd220;
assign mul_ln127_1_fu_1689_p0 = mul_ln127_1_fu_1689_p00;
assign mul_ln127_1_fu_1689_p00 = empty_156_fu_1680_p2;
assign mul_ln127_1_fu_1689_p1 = 15'd220;
assign mul_ln127_fu_1374_p0 = mul_ln127_fu_1374_p00;
assign mul_ln127_fu_1374_p00 = empty_95_fu_1365_p2;
assign mul_ln127_fu_1374_p1 = 15'd220;
assign mul_ln140_1_fu_1544_p0 = mul_ln140_1_fu_1544_p00;
assign mul_ln140_1_fu_1544_p00 = empty_129_fu_1535_p2;
assign mul_ln140_1_fu_1544_p1 = 15'd220;
assign mul_ln140_fu_1229_p0 = mul_ln140_fu_1229_p00;
assign mul_ln140_fu_1229_p00 = empty_68_fu_1220_p2;
assign mul_ln140_fu_1229_p1 = 15'd220;
assign mul_ln34_1_fu_1484_p0 = mul_ln34_1_fu_1484_p00;
assign mul_ln34_1_fu_1484_p00 = empty_101_fu_1475_p2;
assign mul_ln34_1_fu_1484_p1 = 15'd220;
assign mul_ln34_fu_1167_p0 = mul_ln34_fu_1167_p00;
assign mul_ln34_fu_1167_p00 = lshr_ln2_reg_2197;
assign mul_ln34_fu_1167_p1 = 15'd220;
assign mul_ln49_1_fu_1644_p0 = mul_ln49_1_fu_1644_p00;
assign mul_ln49_1_fu_1644_p00 = empty_135_fu_1635_p2;
assign mul_ln49_1_fu_1644_p1 = 15'd220;
assign mul_ln49_fu_1329_p0 = mul_ln49_fu_1329_p00;
assign mul_ln49_fu_1329_p00 = empty_74_fu_1320_p2;
assign mul_ln49_fu_1329_p1 = 15'd220;
assign mul_ln62_1_fu_1499_p0 = mul_ln62_1_fu_1499_p00;
assign mul_ln62_1_fu_1499_p00 = empty_108_fu_1490_p2;
assign mul_ln62_1_fu_1499_p1 = 15'd220;
assign mul_ln62_fu_1184_p0 = mul_ln62_fu_1184_p00;
assign mul_ln62_fu_1184_p00 = tmp_s_fu_1173_p3;
assign mul_ln62_fu_1184_p1 = 15'd220;
assign mul_ln75_1_fu_1659_p0 = mul_ln75_1_fu_1659_p00;
assign mul_ln75_1_fu_1659_p00 = empty_142_fu_1650_p2;
assign mul_ln75_1_fu_1659_p1 = 15'd220;
assign mul_ln75_fu_1344_p0 = mul_ln75_fu_1344_p00;
assign mul_ln75_fu_1344_p00 = empty_81_fu_1335_p2;
assign mul_ln75_fu_1344_p1 = 15'd220;
assign mul_ln88_1_fu_1514_p0 = mul_ln88_1_fu_1514_p00;
assign mul_ln88_1_fu_1514_p00 = empty_115_fu_1505_p2;
assign mul_ln88_1_fu_1514_p1 = 15'd220;
assign mul_ln88_fu_1199_p0 = mul_ln88_fu_1199_p00;
assign mul_ln88_fu_1199_p00 = empty_54_fu_1190_p2;
assign mul_ln88_fu_1199_p1 = 15'd220;
assign p_cast1000_fu_1555_p1 = grp_fu_2022_p4;
assign p_cast1001_fu_1605_p1 = grp_fu_2032_p4;
assign p_cast1002_fu_1610_p1 = grp_fu_2042_p4;
assign p_cast1003_fu_1615_p1 = grp_fu_2052_p4;
assign p_cast1004_fu_1620_p1 = grp_fu_2062_p4;
assign p_cast1005_fu_1625_p1 = grp_fu_2072_p4;
assign p_cast1006_fu_1630_p1 = grp_fu_2082_p4;
assign p_cast972_fu_1114_p1 = grp_fu_1740_p3;
assign p_cast973_fu_1124_p1 = grp_fu_1756_p3;
assign p_cast974_fu_1129_p1 = grp_fu_1764_p3;
assign p_cast975_fu_1134_p1 = grp_fu_1772_p4;
assign p_cast976_fu_1139_p1 = grp_fu_1782_p4;
assign p_cast977_fu_1144_p1 = grp_fu_1792_p4;
assign p_cast978_fu_1149_p1 = grp_fu_1802_p4;
assign p_cast979_fu_1154_p1 = grp_fu_1812_p4;
assign p_cast980_fu_1159_p1 = grp_fu_1822_p4;
assign p_cast981_fu_1235_p1 = grp_fu_1832_p4;
assign p_cast982_fu_1240_p1 = grp_fu_1842_p4;
assign p_cast983_fu_1290_p1 = grp_fu_1852_p4;
assign p_cast984_fu_1295_p1 = grp_fu_1862_p4;
assign p_cast985_fu_1300_p1 = grp_fu_1872_p4;
assign p_cast986_fu_1305_p1 = grp_fu_1882_p4;
assign p_cast987_fu_1310_p1 = grp_fu_1892_p4;
assign p_cast988_fu_1315_p1 = grp_fu_1902_p4;
assign p_cast989_fu_1380_p1 = grp_fu_1912_p4;
assign p_cast990_fu_1385_p1 = grp_fu_1922_p4;
assign p_cast991_fu_1435_p1 = grp_fu_1932_p4;
assign p_cast992_fu_1440_p1 = grp_fu_1942_p4;
assign p_cast993_fu_1445_p1 = grp_fu_1952_p4;
assign p_cast994_fu_1450_p1 = grp_fu_1962_p4;
assign p_cast995_fu_1455_p1 = grp_fu_1972_p4;
assign p_cast996_fu_1460_p1 = grp_fu_1982_p4;
assign p_cast997_fu_1465_p1 = grp_fu_1992_p4;
assign p_cast998_fu_1470_p1 = grp_fu_2002_p4;
assign p_cast999_fu_1550_p1 = grp_fu_2012_p4;
assign p_cast_fu_1119_p1 = grp_fu_1748_p3;
assign tmp_1_fu_1102_p3 = {{tmp_6_fu_1080_p4}, {2'd3}};
assign tmp_5_fu_1054_p3 = {{lshr_ln2_fu_1044_p4}, {1'd1}};
assign tmp_6_fu_1080_p4 = {{v6_reg_802[7:2]}};
assign tmp_8_fu_1090_p3 = {{tmp_6_fu_1080_p4}, {2'd2}};
assign tmp_s_fu_1173_p3 = {{tmp_6_reg_2228}, {1'd1}};
assign trunc_ln31_fu_1010_p1 = v5_fu_192[0:0];
assign v101_1_fu_1430_p1 = reg_964;
assign v101_2_fu_1600_p1 = reg_968;
assign v101_3_fu_1735_p1 = reg_964;
assign v101_fu_1285_p1 = reg_968;
assign v11_1_fu_1390_p1 = reg_972;
assign v11_2_fu_1560_p1 = reg_936;
assign v11_3_fu_1695_p1 = reg_972;
assign v11_fu_1245_p1 = reg_936;
assign v224_0_address0 = v224_0_address0_local;
assign v224_0_address1 = v224_0_address1_local;
assign v224_0_ce0 = v224_0_ce0_local;
assign v224_0_ce1 = v224_0_ce1_local;
assign v224_1_address0 = v224_1_address0_local;
assign v224_1_address1 = v224_1_address1_local;
assign v224_1_ce0 = v224_1_ce0_local;
assign v224_1_ce1 = v224_1_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_1395_p1 = reg_936;
assign v24_2_fu_1565_p1 = reg_940;
assign v24_3_fu_1700_p1 = reg_936;
assign v24_fu_1250_p1 = reg_940;
assign v35_1_fu_1400_p1 = reg_940;
assign v35_2_fu_1570_p1 = reg_944;
assign v35_3_fu_1705_p1 = reg_940;
assign v35_fu_1255_p1 = reg_944;
assign v46_1_fu_1405_p1 = reg_944;
assign v46_2_fu_1575_p1 = reg_948;
assign v46_3_fu_1710_p1 = reg_944;
assign v46_fu_1260_p1 = reg_948;
assign v57_1_fu_1410_p1 = reg_948;
assign v57_2_fu_1580_p1 = reg_952;
assign v57_3_fu_1715_p1 = reg_948;
assign v57_fu_1265_p1 = reg_952;
assign v68_1_fu_1415_p1 = reg_952;
assign v68_2_fu_1585_p1 = reg_956;
assign v68_3_fu_1720_p1 = reg_952;
assign v68_fu_1270_p1 = reg_956;
assign v79_1_fu_1420_p1 = reg_956;
assign v79_2_fu_1590_p1 = reg_960;
assign v79_3_fu_1725_p1 = reg_956;
assign v79_fu_1275_p1 = reg_960;
assign v90_1_fu_1425_p1 = reg_960;
assign v90_2_fu_1595_p1 = reg_964;
assign v90_3_fu_1730_p1 = reg_960;
assign v90_fu_1280_p1 = reg_964;
assign zext_ln31_fu_1024_p1 = lshr_ln_fu_1014_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_2141[14:7] <= 8'b00000000;
end
endmodule 