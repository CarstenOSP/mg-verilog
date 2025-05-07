module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v229_2_address0,v229_2_ce0,v229_2_we0,v229_2_d0,v229_2_q0,v229_2_address1,v229_2_ce1,v229_2_we1,v229_2_d1,v229_2_q1,v229_3_address0,v229_3_ce0,v229_3_we0,v229_3_d0,v229_3_q0,v229_3_address1,v229_3_ce1,v229_3_we1,v229_3_d1,v229_3_q1,v4,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_opcode,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_opcode,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce); 
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
output  [14:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [14:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [14:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [14:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
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
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
output  [1:0] grp_fu_168_p_opcode;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
output  [1:0] grp_fu_172_p_opcode;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
output  [1:0] grp_fu_176_p_opcode;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[14:0] v228_0_address0;
reg v228_0_ce0;
reg[14:0] v228_0_address1;
reg v228_0_ce1;
reg[14:0] v228_1_address0;
reg v228_1_ce0;
reg[14:0] v228_1_address1;
reg v228_1_ce1;
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
(* fsm_encoding = "none" *) reg   [25:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [31:0] grp_fu_924_p3;
reg   [31:0] reg_938;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state21;
wire   [31:0] grp_fu_931_p3;
reg   [31:0] reg_942;
reg   [31:0] reg_946;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_950;
reg   [31:0] reg_954;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_958;
reg   [31:0] reg_962;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_966;
reg   [31:0] reg_970;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state20;
reg   [31:0] reg_974;
wire   [7:0] add_ln31_fu_992_p2;
reg   [7:0] add_ln31_reg_1963;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln31_fu_998_p1;
reg   [0:0] trunc_ln31_reg_1968;
wire   [14:0] zext_ln38_fu_1012_p1;
reg   [14:0] zext_ln38_reg_1978;
wire   [14:0] mul_ln38_fu_1016_p2;
reg   [14:0] mul_ln38_reg_2018;
wire   [0:0] cmp11_fu_1022_p2;
reg   [0:0] cmp11_reg_2026;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln32_3_fu_1060_p2;
reg   [7:0] add_ln32_3_reg_2047;
wire   [5:0] lshr_ln2_fu_1070_p4;
reg   [5:0] lshr_ln2_reg_2052;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire   [13:0] mul_ln34_fu_1157_p2;
reg   [13:0] mul_ln34_reg_2175;
wire   [13:0] mul_ln88_fu_1172_p2;
reg   [13:0] mul_ln88_reg_2180;
wire   [13:0] mul_ln140_fu_1187_p2;
reg   [13:0] mul_ln140_reg_2185;
wire   [31:0] v11_fu_1203_p1;
reg   [31:0] v11_reg_2211;
wire   [31:0] v24_fu_1208_p1;
reg   [31:0] v24_reg_2216;
wire   [31:0] v35_fu_1213_p1;
reg   [31:0] v35_reg_2221;
wire   [31:0] v46_fu_1218_p1;
reg   [31:0] v46_reg_2226;
wire   [31:0] v57_fu_1223_p1;
reg   [31:0] v57_reg_2231;
wire   [31:0] v68_fu_1228_p1;
reg   [31:0] v68_reg_2236;
wire   [31:0] v79_fu_1233_p1;
reg   [31:0] v79_reg_2241;
wire   [31:0] v90_fu_1238_p1;
reg   [31:0] v90_reg_2246;
wire   [31:0] v101_fu_1243_p1;
reg   [31:0] v101_reg_2251;
wire   [13:0] mul_ln75_fu_1287_p2;
reg   [13:0] mul_ln75_reg_2316;
wire   [13:0] mul_ln127_fu_1302_p2;
reg   [13:0] mul_ln127_reg_2321;
wire   [31:0] v11_1_fu_1318_p1;
reg   [31:0] v11_1_reg_2347;
wire   [31:0] v24_1_fu_1323_p1;
reg   [31:0] v24_1_reg_2352;
wire   [31:0] v35_1_fu_1328_p1;
reg   [31:0] v35_1_reg_2357;
wire   [31:0] v46_1_fu_1333_p1;
reg   [31:0] v46_1_reg_2362;
wire   [31:0] v57_1_fu_1338_p1;
reg   [31:0] v57_1_reg_2367;
wire   [31:0] v68_1_fu_1343_p1;
reg   [31:0] v68_1_reg_2372;
wire   [31:0] v79_1_fu_1348_p1;
reg   [31:0] v79_1_reg_2377;
wire   [31:0] v90_1_fu_1353_p1;
reg   [31:0] v90_1_reg_2382;
wire   [31:0] v101_1_fu_1358_p1;
reg   [31:0] v101_1_reg_2387;
wire   [13:0] mul_ln62_fu_1412_p2;
reg   [13:0] mul_ln62_reg_2472;
wire   [13:0] mul_ln114_fu_1427_p2;
reg   [13:0] mul_ln114_reg_2477;
wire   [31:0] v11_2_fu_1443_p1;
reg   [31:0] v11_2_reg_2503;
wire   [31:0] v24_2_fu_1448_p1;
reg   [31:0] v24_2_reg_2508;
wire   [31:0] v35_2_fu_1453_p1;
reg   [31:0] v35_2_reg_2513;
wire   [31:0] v46_2_fu_1458_p1;
reg   [31:0] v46_2_reg_2518;
wire   [31:0] v57_2_fu_1463_p1;
reg   [31:0] v57_2_reg_2523;
wire   [31:0] v68_2_fu_1468_p1;
reg   [31:0] v68_2_reg_2528;
wire   [31:0] v79_2_fu_1473_p1;
reg   [31:0] v79_2_reg_2533;
wire   [31:0] v90_2_fu_1478_p1;
reg   [31:0] v90_2_reg_2538;
wire   [31:0] v101_2_fu_1483_p1;
reg   [31:0] v101_2_reg_2543;
wire   [13:0] mul_ln49_fu_1527_p2;
reg   [13:0] mul_ln49_reg_2608;
wire   [13:0] mul_ln101_fu_1542_p2;
reg   [13:0] mul_ln101_reg_2613;
wire   [31:0] v11_3_fu_1548_p1;
reg   [31:0] v11_3_reg_2618;
wire    ap_CS_fsm_state25;
wire   [31:0] v24_3_fu_1553_p1;
reg   [31:0] v24_3_reg_2623;
wire   [31:0] v35_3_fu_1558_p1;
reg   [31:0] v35_3_reg_2628;
wire   [31:0] v46_3_fu_1563_p1;
reg   [31:0] v46_3_reg_2633;
wire   [31:0] v57_3_fu_1568_p1;
reg   [31:0] v57_3_reg_2638;
wire   [31:0] v68_3_fu_1573_p1;
reg   [31:0] v68_3_reg_2643;
wire   [31:0] v79_3_fu_1578_p1;
reg   [31:0] v79_3_reg_2648;
wire   [31:0] v90_3_fu_1583_p1;
reg   [31:0] v90_3_reg_2653;
wire   [31:0] v101_3_fu_1588_p1;
reg   [31:0] v101_3_reg_2658;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_0_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_1_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2663_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2663_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2663_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2663_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2667_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2667_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2667_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2667_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2671_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2671_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2671_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2671_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2675_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2675_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2675_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2679_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2679_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2679_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2683_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2683_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2683_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2687_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2687_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2687_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2691_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2691_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2691_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2695_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2695_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2695_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_0_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_1_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2663_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2663_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2663_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2663_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2667_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2667_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2667_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2667_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2671_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2671_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2671_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2671_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2675_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2675_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2675_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2679_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2679_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2679_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2683_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2683_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2683_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2687_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2687_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2687_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2691_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2691_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2691_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2695_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2695_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2695_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_0_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_1_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2663_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2663_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2663_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2663_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2667_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2667_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2667_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2667_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2671_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2671_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2671_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2671_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2675_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2675_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2675_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2679_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2679_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2679_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2683_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2683_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2683_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2687_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2687_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2687_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2691_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2691_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2691_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2695_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2695_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2695_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_d0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_0_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_1_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2663_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2663_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2663_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2663_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2667_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2667_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2667_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2667_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2671_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2671_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2671_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2671_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2675_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2675_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2675_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2679_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2679_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2679_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2683_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2683_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2683_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2687_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2687_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2687_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2691_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2691_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2691_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2695_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2695_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2695_p_ce;
reg   [7:0] v6_reg_784;
wire    ap_CS_fsm_state26;
wire   [0:0] icmp_ln31_fu_986_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_start_reg;
wire   [63:0] p_cast4720_fu_1104_p1;
wire   [63:0] p_cast_fu_1109_p1;
wire   [63:0] p_cast4721_fu_1114_p1;
wire   [63:0] p_cast4722_fu_1119_p1;
wire   [63:0] p_cast4723_fu_1124_p1;
wire   [63:0] p_cast4724_fu_1129_p1;
wire   [63:0] p_cast4725_fu_1134_p1;
wire   [63:0] p_cast4726_fu_1139_p1;
wire   [63:0] p_cast4727_fu_1144_p1;
wire   [63:0] p_cast4728_fu_1149_p1;
wire   [63:0] p_cast4729_fu_1193_p1;
wire   [63:0] p_cast4730_fu_1198_p1;
wire   [63:0] p_cast4731_fu_1248_p1;
wire   [63:0] p_cast4732_fu_1253_p1;
wire   [63:0] p_cast4733_fu_1258_p1;
wire   [63:0] p_cast4734_fu_1263_p1;
wire   [63:0] p_cast4735_fu_1268_p1;
wire   [63:0] p_cast4736_fu_1273_p1;
wire   [63:0] p_cast4737_fu_1308_p1;
wire   [63:0] p_cast4738_fu_1313_p1;
wire   [63:0] p_cast4739_fu_1363_p1;
wire   [63:0] p_cast4740_fu_1368_p1;
wire   [63:0] p_cast4741_fu_1373_p1;
wire   [63:0] p_cast4742_fu_1378_p1;
wire   [63:0] p_cast4743_fu_1383_p1;
wire   [63:0] p_cast4744_fu_1388_p1;
wire   [63:0] p_cast4745_fu_1393_p1;
wire   [63:0] p_cast4746_fu_1398_p1;
wire   [63:0] p_cast4747_fu_1433_p1;
wire   [63:0] p_cast4748_fu_1438_p1;
wire   [63:0] p_cast4749_fu_1488_p1;
wire   [63:0] p_cast4750_fu_1493_p1;
wire   [63:0] p_cast4751_fu_1498_p1;
wire   [63:0] p_cast4752_fu_1503_p1;
wire   [63:0] p_cast4753_fu_1508_p1;
wire   [63:0] p_cast4754_fu_1513_p1;
reg   [7:0] v5_fu_174;
wire   [0:0] icmp_ln32_fu_1028_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_0_ce1_local;
reg   [14:0] v224_0_address1_local;
reg    v224_0_ce0_local;
reg   [14:0] v224_0_address0_local;
reg    v224_1_ce1_local;
reg   [14:0] v224_1_address1_local;
reg    v224_1_ce0_local;
reg   [14:0] v224_1_address0_local;
wire   [6:0] lshr_ln_fu_1002_p4;
wire   [6:0] mul_ln38_fu_1016_p0;
wire   [8:0] mul_ln38_fu_1016_p1;
wire   [6:0] tmp_fu_1038_p4;
wire   [7:0] tmp_17_fu_1048_p3;
wire   [7:0] tmp_20_fu_1080_p3;
wire   [7:0] tmp_s_fu_1092_p3;
wire   [14:0] grp_fu_1593_p3;
wire   [14:0] grp_fu_1601_p3;
wire   [14:0] grp_fu_1609_p3;
wire   [14:0] grp_fu_1617_p3;
wire   [14:0] grp_fu_1625_p4;
wire   [14:0] grp_fu_1635_p4;
wire   [14:0] grp_fu_1645_p4;
wire   [14:0] grp_fu_1655_p4;
wire   [14:0] grp_fu_1665_p4;
wire   [14:0] grp_fu_1675_p4;
wire   [5:0] mul_ln34_fu_1157_p0;
wire   [8:0] mul_ln34_fu_1157_p1;
wire   [5:0] empty_58_fu_1163_p2;
wire   [5:0] mul_ln88_fu_1172_p0;
wire   [8:0] mul_ln88_fu_1172_p1;
wire   [5:0] empty_71_fu_1178_p2;
wire   [5:0] mul_ln140_fu_1187_p0;
wire   [8:0] mul_ln140_fu_1187_p1;
wire   [14:0] grp_fu_1685_p4;
wire   [14:0] grp_fu_1695_p4;
wire   [14:0] grp_fu_1705_p4;
wire   [14:0] grp_fu_1715_p4;
wire   [14:0] grp_fu_1725_p4;
wire   [14:0] grp_fu_1735_p4;
wire   [14:0] grp_fu_1745_p4;
wire   [14:0] grp_fu_1755_p4;
wire   [5:0] empty_83_fu_1278_p2;
wire   [5:0] mul_ln75_fu_1287_p0;
wire   [8:0] mul_ln75_fu_1287_p1;
wire   [5:0] empty_96_fu_1293_p2;
wire   [5:0] mul_ln127_fu_1302_p0;
wire   [8:0] mul_ln127_fu_1302_p1;
wire   [14:0] grp_fu_1765_p4;
wire   [14:0] grp_fu_1775_p4;
wire   [14:0] grp_fu_1785_p4;
wire   [14:0] grp_fu_1795_p4;
wire   [14:0] grp_fu_1805_p4;
wire   [14:0] grp_fu_1815_p4;
wire   [14:0] grp_fu_1825_p4;
wire   [14:0] grp_fu_1835_p4;
wire   [14:0] grp_fu_1845_p4;
wire   [14:0] grp_fu_1855_p4;
wire   [5:0] empty_108_fu_1403_p2;
wire   [5:0] mul_ln62_fu_1412_p0;
wire   [8:0] mul_ln62_fu_1412_p1;
wire   [5:0] empty_121_fu_1418_p2;
wire   [5:0] mul_ln114_fu_1427_p0;
wire   [8:0] mul_ln114_fu_1427_p1;
wire   [14:0] grp_fu_1865_p4;
wire   [14:0] grp_fu_1875_p4;
wire   [14:0] grp_fu_1885_p4;
wire   [14:0] grp_fu_1895_p4;
wire   [14:0] grp_fu_1905_p4;
wire   [14:0] grp_fu_1915_p4;
wire   [14:0] grp_fu_1925_p4;
wire   [14:0] grp_fu_1935_p4;
wire   [5:0] empty_133_fu_1518_p2;
wire   [5:0] mul_ln49_fu_1527_p0;
wire   [8:0] mul_ln49_fu_1527_p1;
wire   [5:0] empty_146_fu_1533_p2;
wire   [5:0] mul_ln101_fu_1542_p0;
wire   [8:0] mul_ln101_fu_1542_p1;
wire   [7:0] grp_fu_1593_p0;
wire   [6:0] grp_fu_1593_p1;
wire   [6:0] grp_fu_1593_p2;
wire    ap_CS_fsm_state5;
wire   [7:0] grp_fu_1601_p0;
wire   [6:0] grp_fu_1601_p1;
wire   [6:0] grp_fu_1601_p2;
wire   [7:0] grp_fu_1609_p0;
wire   [6:0] grp_fu_1609_p1;
wire   [6:0] grp_fu_1609_p2;
wire   [7:0] grp_fu_1617_p0;
wire   [6:0] grp_fu_1617_p1;
wire   [6:0] grp_fu_1617_p2;
wire   [2:0] grp_fu_1625_p1;
wire   [6:0] grp_fu_1625_p2;
wire   [6:0] grp_fu_1625_p3;
wire   [2:0] grp_fu_1635_p1;
wire   [6:0] grp_fu_1635_p2;
wire   [6:0] grp_fu_1635_p3;
wire   [2:0] grp_fu_1645_p1;
wire   [6:0] grp_fu_1645_p2;
wire   [6:0] grp_fu_1645_p3;
wire   [2:0] grp_fu_1655_p1;
wire   [6:0] grp_fu_1655_p2;
wire   [6:0] grp_fu_1655_p3;
wire   [3:0] grp_fu_1665_p1;
wire   [6:0] grp_fu_1665_p2;
wire   [6:0] grp_fu_1665_p3;
wire   [3:0] grp_fu_1675_p1;
wire   [6:0] grp_fu_1675_p2;
wire   [6:0] grp_fu_1675_p3;
wire   [3:0] grp_fu_1685_p1;
wire   [6:0] grp_fu_1685_p2;
wire   [6:0] grp_fu_1685_p3;
wire   [3:0] grp_fu_1695_p1;
wire   [6:0] grp_fu_1695_p2;
wire   [6:0] grp_fu_1695_p3;
wire   [3:0] grp_fu_1705_p1;
wire   [6:0] grp_fu_1705_p2;
wire   [6:0] grp_fu_1705_p3;
wire   [3:0] grp_fu_1715_p1;
wire   [6:0] grp_fu_1715_p2;
wire   [6:0] grp_fu_1715_p3;
wire   [3:0] grp_fu_1725_p1;
wire   [6:0] grp_fu_1725_p2;
wire   [6:0] grp_fu_1725_p3;
wire   [3:0] grp_fu_1735_p1;
wire   [6:0] grp_fu_1735_p2;
wire   [6:0] grp_fu_1735_p3;
wire   [4:0] grp_fu_1745_p1;
wire   [6:0] grp_fu_1745_p2;
wire   [6:0] grp_fu_1745_p3;
wire   [4:0] grp_fu_1755_p1;
wire   [6:0] grp_fu_1755_p2;
wire   [6:0] grp_fu_1755_p3;
wire   [4:0] grp_fu_1765_p1;
wire   [6:0] grp_fu_1765_p2;
wire   [6:0] grp_fu_1765_p3;
wire   [4:0] grp_fu_1775_p1;
wire   [6:0] grp_fu_1775_p2;
wire   [6:0] grp_fu_1775_p3;
wire   [4:0] grp_fu_1785_p1;
wire   [6:0] grp_fu_1785_p2;
wire   [6:0] grp_fu_1785_p3;
wire   [4:0] grp_fu_1795_p1;
wire   [6:0] grp_fu_1795_p2;
wire   [6:0] grp_fu_1795_p3;
wire   [4:0] grp_fu_1805_p1;
wire   [6:0] grp_fu_1805_p2;
wire   [6:0] grp_fu_1805_p3;
wire   [4:0] grp_fu_1815_p1;
wire   [6:0] grp_fu_1815_p2;
wire   [6:0] grp_fu_1815_p3;
wire   [4:0] grp_fu_1825_p1;
wire   [6:0] grp_fu_1825_p2;
wire   [6:0] grp_fu_1825_p3;
wire   [4:0] grp_fu_1835_p1;
wire   [6:0] grp_fu_1835_p2;
wire   [6:0] grp_fu_1835_p3;
wire   [4:0] grp_fu_1845_p1;
wire   [6:0] grp_fu_1845_p2;
wire   [6:0] grp_fu_1845_p3;
wire   [4:0] grp_fu_1855_p1;
wire   [6:0] grp_fu_1855_p2;
wire   [6:0] grp_fu_1855_p3;
wire   [4:0] grp_fu_1865_p1;
wire   [6:0] grp_fu_1865_p2;
wire   [6:0] grp_fu_1865_p3;
wire   [4:0] grp_fu_1875_p1;
wire   [6:0] grp_fu_1875_p2;
wire   [6:0] grp_fu_1875_p3;
wire   [4:0] grp_fu_1885_p1;
wire   [6:0] grp_fu_1885_p2;
wire   [6:0] grp_fu_1885_p3;
wire   [4:0] grp_fu_1895_p1;
wire   [6:0] grp_fu_1895_p2;
wire   [6:0] grp_fu_1895_p3;
wire   [5:0] grp_fu_1905_p1;
wire   [6:0] grp_fu_1905_p2;
wire   [6:0] grp_fu_1905_p3;
wire   [5:0] grp_fu_1915_p1;
wire   [6:0] grp_fu_1915_p2;
wire   [6:0] grp_fu_1915_p3;
wire   [5:0] grp_fu_1925_p1;
wire   [6:0] grp_fu_1925_p2;
wire   [6:0] grp_fu_1925_p3;
wire   [5:0] grp_fu_1935_p1;
wire   [6:0] grp_fu_1935_p2;
wire   [6:0] grp_fu_1935_p3;
reg    grp_fu_1725_ce;
reg    grp_fu_1735_ce;
reg    grp_fu_1745_ce;
reg    grp_fu_1755_ce;
reg    grp_fu_1765_ce;
reg    grp_fu_1775_ce;
reg    grp_fu_1785_ce;
reg    grp_fu_1795_ce;
reg    grp_fu_1805_ce;
reg    grp_fu_1815_ce;
reg    grp_fu_1825_ce;
reg    grp_fu_1835_ce;
reg    grp_fu_1845_ce;
reg    grp_fu_1855_ce;
reg    grp_fu_1865_ce;
reg    grp_fu_1875_ce;
reg    grp_fu_1905_ce;
reg    grp_fu_1915_ce;
reg    grp_fu_1925_ce;
reg    grp_fu_1935_ce;
reg   [31:0] grp_fu_2663_p0;
reg   [31:0] grp_fu_2663_p1;
reg    grp_fu_2663_ce;
reg   [31:0] grp_fu_2667_p0;
reg   [31:0] grp_fu_2667_p1;
reg    grp_fu_2667_ce;
reg   [31:0] grp_fu_2671_p0;
reg   [31:0] grp_fu_2671_p1;
reg    grp_fu_2671_ce;
reg   [31:0] grp_fu_2675_p0;
reg   [31:0] grp_fu_2675_p1;
reg    grp_fu_2675_ce;
reg   [31:0] grp_fu_2679_p0;
reg   [31:0] grp_fu_2679_p1;
reg    grp_fu_2679_ce;
reg   [31:0] grp_fu_2683_p0;
reg   [31:0] grp_fu_2683_p1;
reg    grp_fu_2683_ce;
reg   [31:0] grp_fu_2687_p0;
reg   [31:0] grp_fu_2687_p1;
reg    grp_fu_2687_ce;
reg   [31:0] grp_fu_2691_p0;
reg   [31:0] grp_fu_2691_p1;
reg    grp_fu_2691_ce;
reg   [31:0] grp_fu_2695_p0;
reg   [31:0] grp_fu_2695_p1;
reg    grp_fu_2695_ce;
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
wire   [14:0] grp_fu_1593_p00;
wire   [14:0] grp_fu_1601_p00;
wire   [14:0] grp_fu_1609_p00;
wire   [14:0] grp_fu_1617_p00;
wire   [13:0] mul_ln101_fu_1542_p00;
wire   [13:0] mul_ln114_fu_1427_p00;
wire   [13:0] mul_ln127_fu_1302_p00;
wire   [13:0] mul_ln140_fu_1187_p00;
wire   [13:0] mul_ln34_fu_1157_p00;
wire   [14:0] mul_ln38_fu_1016_p00;
wire   [13:0] mul_ln49_fu_1527_p00;
wire   [13:0] mul_ln62_fu_1412_p00;
wire   [13:0] mul_ln75_fu_1287_p00;
wire   [13:0] mul_ln88_fu_1172_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 26'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_start_reg = 1'b0;
#0 v5_fu_174 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_796(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_d1),.v229_3_q1(v229_3_q1),.mul_ln38(mul_ln38_reg_2018),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_1_ce1),.v228_1_q1(v228_1_q1),.mul_ln34(mul_ln34_reg_2175),.mul_ln88(mul_ln88_reg_2180),.mul_ln140(mul_ln140_reg_2185),.v4(v4),.cmp11(cmp11_reg_2026),.empty(trunc_ln31_reg_1968),.v11(v11_reg_2211),.v24(v24_reg_2216),.v35(v35_reg_2221),.v46(v46_reg_2226),.v57(v57_reg_2231),.v68(v68_reg_2236),.v79(v79_reg_2241),.v90(v90_reg_2246),.v101(v101_reg_2251),.grp_fu_2663_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2663_p_din0),.grp_fu_2663_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2663_p_din1),.grp_fu_2663_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2663_p_opcode),.grp_fu_2663_p_dout0(grp_fu_168_p_dout0),.grp_fu_2663_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2663_p_ce),.grp_fu_2667_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2667_p_din0),.grp_fu_2667_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2667_p_din1),.grp_fu_2667_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2667_p_opcode),.grp_fu_2667_p_dout0(grp_fu_172_p_dout0),.grp_fu_2667_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2667_p_ce),.grp_fu_2671_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2671_p_din0),.grp_fu_2671_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2671_p_din1),.grp_fu_2671_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2671_p_opcode),.grp_fu_2671_p_dout0(grp_fu_176_p_dout0),.grp_fu_2671_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2671_p_ce),.grp_fu_2675_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2675_p_din0),.grp_fu_2675_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2675_p_din1),.grp_fu_2675_p_dout0(grp_fu_180_p_dout0),.grp_fu_2675_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2675_p_ce),.grp_fu_2679_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2679_p_din0),.grp_fu_2679_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2679_p_din1),.grp_fu_2679_p_dout0(grp_fu_184_p_dout0),.grp_fu_2679_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2679_p_ce),.grp_fu_2683_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2683_p_din0),.grp_fu_2683_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2683_p_din1),.grp_fu_2683_p_dout0(grp_fu_188_p_dout0),.grp_fu_2683_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2683_p_ce),.grp_fu_2687_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2687_p_din0),.grp_fu_2687_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2687_p_din1),.grp_fu_2687_p_dout0(grp_fu_192_p_dout0),.grp_fu_2687_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2687_p_ce),.grp_fu_2691_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2691_p_din0),.grp_fu_2691_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2691_p_din1),.grp_fu_2691_p_dout0(grp_fu_196_p_dout0),.grp_fu_2691_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2691_p_ce),.grp_fu_2695_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2695_p_din0),.grp_fu_2695_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2695_p_din1),.grp_fu_2695_p_dout0(grp_fu_200_p_dout0),.grp_fu_2695_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2695_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_23 grp_kernel_2mm_node0_Pipeline_label_23_fu_828(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_d1),.v229_3_q1(v229_3_q1),.mul_ln38(mul_ln38_reg_2018),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_1_ce1),.v228_1_q1(v228_1_q1),.mul_ln75(mul_ln75_reg_2316),.mul_ln127(mul_ln127_reg_2321),.mul_ln140(mul_ln140_reg_2185),.v4(v4),.cmp11(cmp11_reg_2026),.empty(trunc_ln31_reg_1968),.v11_1(v11_1_reg_2347),.v24_1(v24_1_reg_2352),.v35_1(v35_1_reg_2357),.v46_1(v46_1_reg_2362),.v57_1(v57_1_reg_2367),.v68_1(v68_1_reg_2372),.v79_1(v79_1_reg_2377),.v90_1(v90_1_reg_2382),.v101_1(v101_1_reg_2387),.grp_fu_2663_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2663_p_din0),.grp_fu_2663_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2663_p_din1),.grp_fu_2663_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2663_p_opcode),.grp_fu_2663_p_dout0(grp_fu_168_p_dout0),.grp_fu_2663_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2663_p_ce),.grp_fu_2667_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2667_p_din0),.grp_fu_2667_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2667_p_din1),.grp_fu_2667_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2667_p_opcode),.grp_fu_2667_p_dout0(grp_fu_172_p_dout0),.grp_fu_2667_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2667_p_ce),.grp_fu_2671_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2671_p_din0),.grp_fu_2671_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2671_p_din1),.grp_fu_2671_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2671_p_opcode),.grp_fu_2671_p_dout0(grp_fu_176_p_dout0),.grp_fu_2671_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2671_p_ce),.grp_fu_2675_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2675_p_din0),.grp_fu_2675_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2675_p_din1),.grp_fu_2675_p_dout0(grp_fu_180_p_dout0),.grp_fu_2675_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2675_p_ce),.grp_fu_2679_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2679_p_din0),.grp_fu_2679_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2679_p_din1),.grp_fu_2679_p_dout0(grp_fu_184_p_dout0),.grp_fu_2679_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2679_p_ce),.grp_fu_2683_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2683_p_din0),.grp_fu_2683_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2683_p_din1),.grp_fu_2683_p_dout0(grp_fu_188_p_dout0),.grp_fu_2683_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2683_p_ce),.grp_fu_2687_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2687_p_din0),.grp_fu_2687_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2687_p_din1),.grp_fu_2687_p_dout0(grp_fu_192_p_dout0),.grp_fu_2687_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2687_p_ce),.grp_fu_2691_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2691_p_din0),.grp_fu_2691_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2691_p_din1),.grp_fu_2691_p_dout0(grp_fu_196_p_dout0),.grp_fu_2691_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2691_p_ce),.grp_fu_2695_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2695_p_din0),.grp_fu_2695_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2695_p_din1),.grp_fu_2695_p_dout0(grp_fu_200_p_dout0),.grp_fu_2695_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2695_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_24 grp_kernel_2mm_node0_Pipeline_label_24_fu_860(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_d1),.v229_3_q1(v229_3_q1),.mul_ln38(mul_ln38_reg_2018),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_1_ce1),.v228_1_q1(v228_1_q1),.mul_ln62(mul_ln62_reg_2472),.mul_ln114(mul_ln114_reg_2477),.mul_ln127(mul_ln127_reg_2321),.v4(v4),.cmp11(cmp11_reg_2026),.empty(trunc_ln31_reg_1968),.v11_2(v11_2_reg_2503),.v24_2(v24_2_reg_2508),.v35_2(v35_2_reg_2513),.v46_2(v46_2_reg_2518),.v57_2(v57_2_reg_2523),.v68_2(v68_2_reg_2528),.v79_2(v79_2_reg_2533),.v90_2(v90_2_reg_2538),.v101_2(v101_2_reg_2543),.grp_fu_2663_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2663_p_din0),.grp_fu_2663_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2663_p_din1),.grp_fu_2663_p_opcode(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2663_p_opcode),.grp_fu_2663_p_dout0(grp_fu_168_p_dout0),.grp_fu_2663_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2663_p_ce),.grp_fu_2667_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2667_p_din0),.grp_fu_2667_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2667_p_din1),.grp_fu_2667_p_opcode(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2667_p_opcode),.grp_fu_2667_p_dout0(grp_fu_172_p_dout0),.grp_fu_2667_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2667_p_ce),.grp_fu_2671_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2671_p_din0),.grp_fu_2671_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2671_p_din1),.grp_fu_2671_p_opcode(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2671_p_opcode),.grp_fu_2671_p_dout0(grp_fu_176_p_dout0),.grp_fu_2671_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2671_p_ce),.grp_fu_2675_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2675_p_din0),.grp_fu_2675_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2675_p_din1),.grp_fu_2675_p_dout0(grp_fu_180_p_dout0),.grp_fu_2675_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2675_p_ce),.grp_fu_2679_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2679_p_din0),.grp_fu_2679_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2679_p_din1),.grp_fu_2679_p_dout0(grp_fu_184_p_dout0),.grp_fu_2679_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2679_p_ce),.grp_fu_2683_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2683_p_din0),.grp_fu_2683_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2683_p_din1),.grp_fu_2683_p_dout0(grp_fu_188_p_dout0),.grp_fu_2683_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2683_p_ce),.grp_fu_2687_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2687_p_din0),.grp_fu_2687_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2687_p_din1),.grp_fu_2687_p_dout0(grp_fu_192_p_dout0),.grp_fu_2687_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2687_p_ce),.grp_fu_2691_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2691_p_din0),.grp_fu_2691_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2691_p_din1),.grp_fu_2691_p_dout0(grp_fu_196_p_dout0),.grp_fu_2691_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2691_p_ce),.grp_fu_2695_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2695_p_din0),.grp_fu_2695_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2695_p_din1),.grp_fu_2695_p_dout0(grp_fu_200_p_dout0),.grp_fu_2695_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2695_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_25 grp_kernel_2mm_node0_Pipeline_label_25_fu_892(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_ready),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_d1),.v229_0_q1(v229_0_q1),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_2_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_address0),.v229_2_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_ce0),.v229_2_we0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_we0),.v229_2_d0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_d0),.v229_2_q0(v229_2_q0),.v229_2_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_address1),.v229_2_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_ce1),.v229_2_we1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_we1),.v229_2_d1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_d1),.v229_2_q1(v229_2_q1),.v229_3_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_address0),.v229_3_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_ce0),.v229_3_we0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_we0),.v229_3_d0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_d0),.v229_3_q0(v229_3_q0),.v229_3_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_address1),.v229_3_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_ce1),.v229_3_we1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_we1),.v229_3_d1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_d1),.v229_3_q1(v229_3_q1),.mul_ln38(mul_ln38_reg_2018),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_1_ce1),.v228_1_q1(v228_1_q1),.mul_ln49(mul_ln49_reg_2608),.mul_ln101(mul_ln101_reg_2613),.mul_ln114(mul_ln114_reg_2477),.v4(v4),.cmp11(cmp11_reg_2026),.empty(trunc_ln31_reg_1968),.v11_3(v11_3_reg_2618),.v24_3(v24_3_reg_2623),.v35_3(v35_3_reg_2628),.v46_3(v46_3_reg_2633),.v57_3(v57_3_reg_2638),.v68_3(v68_3_reg_2643),.v79_3(v79_3_reg_2648),.v90_3(v90_3_reg_2653),.v101_3(v101_3_reg_2658),.grp_fu_2663_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2663_p_din0),.grp_fu_2663_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2663_p_din1),.grp_fu_2663_p_opcode(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2663_p_opcode),.grp_fu_2663_p_dout0(grp_fu_168_p_dout0),.grp_fu_2663_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2663_p_ce),.grp_fu_2667_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2667_p_din0),.grp_fu_2667_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2667_p_din1),.grp_fu_2667_p_opcode(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2667_p_opcode),.grp_fu_2667_p_dout0(grp_fu_172_p_dout0),.grp_fu_2667_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2667_p_ce),.grp_fu_2671_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2671_p_din0),.grp_fu_2671_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2671_p_din1),.grp_fu_2671_p_opcode(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2671_p_opcode),.grp_fu_2671_p_dout0(grp_fu_176_p_dout0),.grp_fu_2671_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2671_p_ce),.grp_fu_2675_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2675_p_din0),.grp_fu_2675_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2675_p_din1),.grp_fu_2675_p_dout0(grp_fu_180_p_dout0),.grp_fu_2675_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2675_p_ce),.grp_fu_2679_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2679_p_din0),.grp_fu_2679_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2679_p_din1),.grp_fu_2679_p_dout0(grp_fu_184_p_dout0),.grp_fu_2679_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2679_p_ce),.grp_fu_2683_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2683_p_din0),.grp_fu_2683_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2683_p_din1),.grp_fu_2683_p_dout0(grp_fu_188_p_dout0),.grp_fu_2683_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2683_p_ce),.grp_fu_2687_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2687_p_din0),.grp_fu_2687_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2687_p_din1),.grp_fu_2687_p_dout0(grp_fu_192_p_dout0),.grp_fu_2687_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2687_p_ce),.grp_fu_2691_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2691_p_din0),.grp_fu_2691_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2691_p_din1),.grp_fu_2691_p_dout0(grp_fu_196_p_dout0),.grp_fu_2691_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2691_p_ce),.grp_fu_2695_p_din0(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2695_p_din0),.grp_fu_2695_p_din1(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2695_p_din1),.grp_fu_2695_p_dout0(grp_fu_200_p_dout0),.grp_fu_2695_p_ce(grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2695_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U230(.din0(mul_ln38_fu_1016_p0),.din1(mul_ln38_fu_1016_p1),.dout(mul_ln38_fu_1016_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U231(.din0(mul_ln34_fu_1157_p0),.din1(mul_ln34_fu_1157_p1),.dout(mul_ln34_fu_1157_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U232(.din0(mul_ln88_fu_1172_p0),.din1(mul_ln88_fu_1172_p1),.dout(mul_ln88_fu_1172_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U233(.din0(mul_ln140_fu_1187_p0),.din1(mul_ln140_fu_1187_p1),.dout(mul_ln140_fu_1187_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U234(.din0(mul_ln75_fu_1287_p0),.din1(mul_ln75_fu_1287_p1),.dout(mul_ln75_fu_1287_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U235(.din0(mul_ln127_fu_1302_p0),.din1(mul_ln127_fu_1302_p1),.dout(mul_ln127_fu_1302_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U236(.din0(mul_ln62_fu_1412_p0),.din1(mul_ln62_fu_1412_p1),.dout(mul_ln62_fu_1412_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U237(.din0(mul_ln114_fu_1427_p0),.din1(mul_ln114_fu_1427_p1),.dout(mul_ln114_fu_1427_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U238(.din0(mul_ln49_fu_1527_p0),.din1(mul_ln49_fu_1527_p1),.dout(mul_ln49_fu_1527_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U239(.din0(mul_ln101_fu_1542_p0),.din1(mul_ln101_fu_1542_p1),.dout(mul_ln101_fu_1542_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U240(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1593_p0),.din1(grp_fu_1593_p1),.din2(grp_fu_1593_p2),.ce(1'b1),.dout(grp_fu_1593_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U241(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1601_p0),.din1(grp_fu_1601_p1),.din2(grp_fu_1601_p2),.ce(1'b1),.dout(grp_fu_1601_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U242(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1609_p0),.din1(grp_fu_1609_p1),.din2(grp_fu_1609_p2),.ce(1'b1),.dout(grp_fu_1609_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U243(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1617_p0),.din1(grp_fu_1617_p1),.din2(grp_fu_1617_p2),.ce(1'b1),.dout(grp_fu_1617_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U244(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1625_p1),.din2(grp_fu_1625_p2),.din3(grp_fu_1625_p3),.ce(1'b1),.dout(grp_fu_1625_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U245(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1635_p1),.din2(grp_fu_1635_p2),.din3(grp_fu_1635_p3),.ce(1'b1),.dout(grp_fu_1635_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U246(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1645_p1),.din2(grp_fu_1645_p2),.din3(grp_fu_1645_p3),.ce(1'b1),.dout(grp_fu_1645_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U247(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1655_p1),.din2(grp_fu_1655_p2),.din3(grp_fu_1655_p3),.ce(1'b1),.dout(grp_fu_1655_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U248(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1665_p1),.din2(grp_fu_1665_p2),.din3(grp_fu_1665_p3),.ce(1'b1),.dout(grp_fu_1665_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U249(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1675_p1),.din2(grp_fu_1675_p2),.din3(grp_fu_1675_p3),.ce(1'b1),.dout(grp_fu_1675_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U250(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1685_p1),.din2(grp_fu_1685_p2),.din3(grp_fu_1685_p3),.ce(1'b1),.dout(grp_fu_1685_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U251(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1695_p1),.din2(grp_fu_1695_p2),.din3(grp_fu_1695_p3),.ce(1'b1),.dout(grp_fu_1695_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U252(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1705_p1),.din2(grp_fu_1705_p2),.din3(grp_fu_1705_p3),.ce(1'b1),.dout(grp_fu_1705_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U253(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1715_p1),.din2(grp_fu_1715_p2),.din3(grp_fu_1715_p3),.ce(1'b1),.dout(grp_fu_1715_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U254(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1725_p1),.din2(grp_fu_1725_p2),.din3(grp_fu_1725_p3),.ce(grp_fu_1725_ce),.dout(grp_fu_1725_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U255(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1735_p1),.din2(grp_fu_1735_p2),.din3(grp_fu_1735_p3),.ce(grp_fu_1735_ce),.dout(grp_fu_1735_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U256(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1745_p1),.din2(grp_fu_1745_p2),.din3(grp_fu_1745_p3),.ce(grp_fu_1745_ce),.dout(grp_fu_1745_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U257(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1755_p1),.din2(grp_fu_1755_p2),.din3(grp_fu_1755_p3),.ce(grp_fu_1755_ce),.dout(grp_fu_1755_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U258(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1765_p1),.din2(grp_fu_1765_p2),.din3(grp_fu_1765_p3),.ce(grp_fu_1765_ce),.dout(grp_fu_1765_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U259(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1775_p1),.din2(grp_fu_1775_p2),.din3(grp_fu_1775_p3),.ce(grp_fu_1775_ce),.dout(grp_fu_1775_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U260(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1785_p1),.din2(grp_fu_1785_p2),.din3(grp_fu_1785_p3),.ce(grp_fu_1785_ce),.dout(grp_fu_1785_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U261(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1795_p1),.din2(grp_fu_1795_p2),.din3(grp_fu_1795_p3),.ce(grp_fu_1795_ce),.dout(grp_fu_1795_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U262(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1805_p1),.din2(grp_fu_1805_p2),.din3(grp_fu_1805_p3),.ce(grp_fu_1805_ce),.dout(grp_fu_1805_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U263(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1815_p1),.din2(grp_fu_1815_p2),.din3(grp_fu_1815_p3),.ce(grp_fu_1815_ce),.dout(grp_fu_1815_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U264(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1825_p1),.din2(grp_fu_1825_p2),.din3(grp_fu_1825_p3),.ce(grp_fu_1825_ce),.dout(grp_fu_1825_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U265(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1835_p1),.din2(grp_fu_1835_p2),.din3(grp_fu_1835_p3),.ce(grp_fu_1835_ce),.dout(grp_fu_1835_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U266(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1845_p1),.din2(grp_fu_1845_p2),.din3(grp_fu_1845_p3),.ce(grp_fu_1845_ce),.dout(grp_fu_1845_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U267(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1855_p1),.din2(grp_fu_1855_p2),.din3(grp_fu_1855_p3),.ce(grp_fu_1855_ce),.dout(grp_fu_1855_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U268(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1865_p1),.din2(grp_fu_1865_p2),.din3(grp_fu_1865_p3),.ce(grp_fu_1865_ce),.dout(grp_fu_1865_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U269(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1875_p1),.din2(grp_fu_1875_p2),.din3(grp_fu_1875_p3),.ce(grp_fu_1875_ce),.dout(grp_fu_1875_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U270(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1885_p1),.din2(grp_fu_1885_p2),.din3(grp_fu_1885_p3),.ce(1'b1),.dout(grp_fu_1885_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U271(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1895_p1),.din2(grp_fu_1895_p2),.din3(grp_fu_1895_p3),.ce(1'b1),.dout(grp_fu_1895_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1_U272(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1905_p1),.din2(grp_fu_1905_p2),.din3(grp_fu_1905_p3),.ce(grp_fu_1905_ce),.dout(grp_fu_1905_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1_U273(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1915_p1),.din2(grp_fu_1915_p2),.din3(grp_fu_1915_p3),.ce(grp_fu_1915_ce),.dout(grp_fu_1915_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1_U274(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1925_p1),.din2(grp_fu_1925_p2),.din3(grp_fu_1925_p3),.ce(grp_fu_1925_ce),.dout(grp_fu_1925_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1_U275(.clk(ap_clk),.reset(ap_rst),.din0(v6_reg_784),.din1(grp_fu_1935_p1),.din2(grp_fu_1935_p2),.din3(grp_fu_1935_p3),.ce(grp_fu_1935_ce),.dout(grp_fu_1935_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state21)) begin
            grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state12)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v5_fu_174 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_1028_p2 == 1'd0))) begin
        v5_fu_174 <= add_ln31_reg_1963;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_986_p2 == 1'd0))) begin
        v6_reg_784 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
        v6_reg_784 <= add_ln32_3_reg_2047;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_1963 <= add_ln31_fu_992_p2;
        cmp11_reg_2026 <= cmp11_fu_1022_p2;
        mul_ln38_reg_2018 <= mul_ln38_fu_1016_p2;
        trunc_ln31_reg_1968 <= trunc_ln31_fu_998_p1;
        zext_ln38_reg_1978[6 : 0] <= zext_ln38_fu_1012_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_3_reg_2047 <= add_ln32_3_fu_1060_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        lshr_ln2_reg_2052 <= {{v6_reg_784[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        mul_ln101_reg_2613 <= mul_ln101_fu_1542_p2;
        mul_ln49_reg_2608 <= mul_ln49_fu_1527_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        mul_ln114_reg_2477 <= mul_ln114_fu_1427_p2;
        mul_ln62_reg_2472 <= mul_ln62_fu_1412_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln127_reg_2321 <= mul_ln127_fu_1302_p2;
        mul_ln75_reg_2316 <= mul_ln75_fu_1287_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        mul_ln140_reg_2185 <= mul_ln140_fu_1187_p2;
        mul_ln34_reg_2175 <= mul_ln34_fu_1157_p2;
        mul_ln88_reg_2180 <= mul_ln88_fu_1172_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_938 <= grp_fu_924_p3;
        reg_942 <= grp_fu_931_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_946 <= grp_fu_924_p3;
        reg_950 <= grp_fu_931_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_954 <= grp_fu_924_p3;
        reg_958 <= grp_fu_931_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_962 <= grp_fu_924_p3;
        reg_966 <= grp_fu_931_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_970 <= grp_fu_924_p3;
        reg_974 <= grp_fu_931_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v101_1_reg_2387 <= v101_1_fu_1358_p1;
        v11_1_reg_2347 <= v11_1_fu_1318_p1;
        v24_1_reg_2352 <= v24_1_fu_1323_p1;
        v35_1_reg_2357 <= v35_1_fu_1328_p1;
        v46_1_reg_2362 <= v46_1_fu_1333_p1;
        v57_1_reg_2367 <= v57_1_fu_1338_p1;
        v68_1_reg_2372 <= v68_1_fu_1343_p1;
        v79_1_reg_2377 <= v79_1_fu_1348_p1;
        v90_1_reg_2382 <= v90_1_fu_1353_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v101_2_reg_2543 <= v101_2_fu_1483_p1;
        v11_2_reg_2503 <= v11_2_fu_1443_p1;
        v24_2_reg_2508 <= v24_2_fu_1448_p1;
        v35_2_reg_2513 <= v35_2_fu_1453_p1;
        v46_2_reg_2518 <= v46_2_fu_1458_p1;
        v57_2_reg_2523 <= v57_2_fu_1463_p1;
        v68_2_reg_2528 <= v68_2_fu_1468_p1;
        v79_2_reg_2533 <= v79_2_fu_1473_p1;
        v90_2_reg_2538 <= v90_2_fu_1478_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v101_3_reg_2658 <= v101_3_fu_1588_p1;
        v11_3_reg_2618 <= v11_3_fu_1548_p1;
        v24_3_reg_2623 <= v24_3_fu_1553_p1;
        v35_3_reg_2628 <= v35_3_fu_1558_p1;
        v46_3_reg_2633 <= v46_3_fu_1563_p1;
        v57_3_reg_2638 <= v57_3_fu_1568_p1;
        v68_3_reg_2643 <= v68_3_fu_1573_p1;
        v79_3_reg_2648 <= v79_3_fu_1578_p1;
        v90_3_reg_2653 <= v90_3_fu_1583_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v101_reg_2251 <= v101_fu_1243_p1;
        v11_reg_2211 <= v11_fu_1203_p1;
        v24_reg_2216 <= v24_fu_1208_p1;
        v35_reg_2221 <= v35_fu_1213_p1;
        v46_reg_2226 <= v46_fu_1218_p1;
        v57_reg_2231 <= v57_fu_1223_p1;
        v68_reg_2236 <= v68_fu_1228_p1;
        v79_reg_2241 <= v79_fu_1233_p1;
        v90_reg_2246 <= v90_fu_1238_p1;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b0)) begin
        ap_ST_fsm_state13_blk = 1'b1;
    end else begin
        ap_ST_fsm_state13_blk = 1'b0;
    end
end
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_done == 1'b0)) begin
        ap_ST_fsm_state22_blk = 1'b1;
    end else begin
        ap_ST_fsm_state22_blk = 1'b0;
    end
end
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_done == 1'b0)) begin
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_986_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_986_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1725_ce = 1'b1;
    end else begin
        grp_fu_1725_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1735_ce = 1'b1;
    end else begin
        grp_fu_1735_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1745_ce = 1'b1;
    end else begin
        grp_fu_1745_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1755_ce = 1'b1;
    end else begin
        grp_fu_1755_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1765_ce = 1'b1;
    end else begin
        grp_fu_1765_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1775_ce = 1'b1;
    end else begin
        grp_fu_1775_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1785_ce = 1'b1;
    end else begin
        grp_fu_1785_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        grp_fu_1795_ce = 1'b1;
    end else begin
        grp_fu_1795_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1805_ce = 1'b1;
    end else begin
        grp_fu_1805_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1815_ce = 1'b1;
    end else begin
        grp_fu_1815_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1825_ce = 1'b1;
    end else begin
        grp_fu_1825_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1835_ce = 1'b1;
    end else begin
        grp_fu_1835_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1845_ce = 1'b1;
    end else begin
        grp_fu_1845_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1855_ce = 1'b1;
    end else begin
        grp_fu_1855_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1865_ce = 1'b1;
    end else begin
        grp_fu_1865_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1875_ce = 1'b1;
    end else begin
        grp_fu_1875_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1905_ce = 1'b1;
    end else begin
        grp_fu_1905_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1915_ce = 1'b1;
    end else begin
        grp_fu_1915_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1925_ce = 1'b1;
    end else begin
        grp_fu_1925_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state21) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)))) begin
        grp_fu_1935_ce = 1'b1;
    end else begin
        grp_fu_1935_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2663_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2663_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2663_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2663_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2663_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2663_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2663_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2663_p_ce;
    end else begin
        grp_fu_2663_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2663_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2663_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2663_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2663_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2663_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2663_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2663_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2663_p_din0;
    end else begin
        grp_fu_2663_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2663_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2663_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2663_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2663_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2663_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2663_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2663_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2663_p_din1;
    end else begin
        grp_fu_2663_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2667_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2667_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2667_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2667_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2667_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2667_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2667_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2667_p_ce;
    end else begin
        grp_fu_2667_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2667_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2667_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2667_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2667_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2667_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2667_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2667_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2667_p_din0;
    end else begin
        grp_fu_2667_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2667_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2667_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2667_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2667_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2667_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2667_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2667_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2667_p_din1;
    end else begin
        grp_fu_2667_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2671_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2671_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2671_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2671_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2671_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2671_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2671_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2671_p_ce;
    end else begin
        grp_fu_2671_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2671_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2671_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2671_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2671_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2671_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2671_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2671_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2671_p_din0;
    end else begin
        grp_fu_2671_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2671_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2671_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2671_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2671_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2671_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2671_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2671_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2671_p_din1;
    end else begin
        grp_fu_2671_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2675_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2675_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2675_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2675_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2675_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2675_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2675_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2675_p_ce;
    end else begin
        grp_fu_2675_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2675_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2675_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2675_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2675_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2675_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2675_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2675_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2675_p_din0;
    end else begin
        grp_fu_2675_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2675_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2675_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2675_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2675_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2675_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2675_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2675_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2675_p_din1;
    end else begin
        grp_fu_2675_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2679_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2679_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2679_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2679_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2679_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2679_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2679_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2679_p_ce;
    end else begin
        grp_fu_2679_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2679_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2679_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2679_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2679_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2679_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2679_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2679_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2679_p_din0;
    end else begin
        grp_fu_2679_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2679_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2679_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2679_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2679_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2679_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2679_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2679_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2679_p_din1;
    end else begin
        grp_fu_2679_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2683_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2683_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2683_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2683_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2683_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2683_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2683_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2683_p_ce;
    end else begin
        grp_fu_2683_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2683_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2683_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2683_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2683_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2683_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2683_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2683_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2683_p_din0;
    end else begin
        grp_fu_2683_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2683_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2683_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2683_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2683_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2683_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2683_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2683_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2683_p_din1;
    end else begin
        grp_fu_2683_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2687_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2687_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2687_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2687_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2687_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2687_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2687_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2687_p_ce;
    end else begin
        grp_fu_2687_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2687_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2687_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2687_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2687_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2687_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2687_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2687_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2687_p_din0;
    end else begin
        grp_fu_2687_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2687_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2687_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2687_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2687_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2687_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2687_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2687_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2687_p_din1;
    end else begin
        grp_fu_2687_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2691_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2691_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2691_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2691_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2691_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2691_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2691_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2691_p_ce;
    end else begin
        grp_fu_2691_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2691_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2691_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2691_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2691_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2691_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2691_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2691_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2691_p_din0;
    end else begin
        grp_fu_2691_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2691_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2691_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2691_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2691_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2691_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2691_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2691_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2691_p_din1;
    end else begin
        grp_fu_2691_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2695_ce = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2695_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2695_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2695_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2695_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2695_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2695_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2695_p_ce;
    end else begin
        grp_fu_2695_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2695_p0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2695_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2695_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2695_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2695_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2695_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2695_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2695_p_din0;
    end else begin
        grp_fu_2695_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2695_p1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_grp_fu_2695_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        grp_fu_2695_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_grp_fu_2695_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2695_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_grp_fu_2695_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        grp_fu_2695_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_grp_fu_2695_p_din1;
    end else begin
        grp_fu_2695_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_0_address0_local = p_cast4754_fu_1513_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_0_address0_local = p_cast4752_fu_1503_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_0_address0_local = p_cast4750_fu_1493_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_0_address0_local = p_cast4748_fu_1438_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_0_address0_local = p_cast4746_fu_1398_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_0_address0_local = p_cast4744_fu_1388_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_0_address0_local = p_cast4742_fu_1378_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_0_address0_local = p_cast4740_fu_1368_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_0_address0_local = p_cast4738_fu_1313_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_0_address0_local = p_cast4736_fu_1273_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_0_address0_local = p_cast4734_fu_1263_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_0_address0_local = p_cast4732_fu_1253_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address0_local = p_cast4730_fu_1198_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address0_local = p_cast4728_fu_1149_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address0_local = p_cast4726_fu_1139_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address0_local = p_cast4724_fu_1129_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast4722_fu_1119_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast_fu_1109_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_0_address1_local = p_cast4753_fu_1508_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_0_address1_local = p_cast4751_fu_1498_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_0_address1_local = p_cast4749_fu_1488_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_0_address1_local = p_cast4747_fu_1433_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_0_address1_local = p_cast4745_fu_1393_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_0_address1_local = p_cast4743_fu_1383_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_0_address1_local = p_cast4741_fu_1373_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_0_address1_local = p_cast4739_fu_1363_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_0_address1_local = p_cast4737_fu_1308_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_0_address1_local = p_cast4735_fu_1268_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_0_address1_local = p_cast4733_fu_1258_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_0_address1_local = p_cast4731_fu_1248_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address1_local = p_cast4729_fu_1193_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address1_local = p_cast4727_fu_1144_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address1_local = p_cast4725_fu_1134_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address1_local = p_cast4723_fu_1124_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast4721_fu_1114_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast4720_fu_1104_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_1_address0_local = p_cast4754_fu_1513_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_1_address0_local = p_cast4752_fu_1503_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_1_address0_local = p_cast4750_fu_1493_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_1_address0_local = p_cast4748_fu_1438_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_1_address0_local = p_cast4746_fu_1398_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_1_address0_local = p_cast4744_fu_1388_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_1_address0_local = p_cast4742_fu_1378_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_1_address0_local = p_cast4740_fu_1368_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_1_address0_local = p_cast4738_fu_1313_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address0_local = p_cast4736_fu_1273_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address0_local = p_cast4734_fu_1263_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address0_local = p_cast4732_fu_1253_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address0_local = p_cast4730_fu_1198_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address0_local = p_cast4728_fu_1149_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address0_local = p_cast4726_fu_1139_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address0_local = p_cast4724_fu_1129_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast4722_fu_1119_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast_fu_1109_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v224_1_address1_local = p_cast4753_fu_1508_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v224_1_address1_local = p_cast4751_fu_1498_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v224_1_address1_local = p_cast4749_fu_1488_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v224_1_address1_local = p_cast4747_fu_1433_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v224_1_address1_local = p_cast4745_fu_1393_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_1_address1_local = p_cast4743_fu_1383_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v224_1_address1_local = p_cast4741_fu_1373_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_1_address1_local = p_cast4739_fu_1363_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_1_address1_local = p_cast4737_fu_1308_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address1_local = p_cast4735_fu_1268_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address1_local = p_cast4733_fu_1258_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address1_local = p_cast4731_fu_1248_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address1_local = p_cast4729_fu_1193_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address1_local = p_cast4727_fu_1144_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address1_local = p_cast4725_fu_1134_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address1_local = p_cast4723_fu_1124_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast4721_fu_1114_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast4720_fu_1104_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22)) | ((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13)))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_0_address0;
    end else begin
        v228_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_0_address1;
    end else begin
        v228_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_0_ce0;
    end else begin
        v228_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_0_ce1;
    end else begin
        v228_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_1_address0;
    end else begin
        v228_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_1_address1;
    end else begin
        v228_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_1_ce0;
    end else begin
        v228_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v228_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v228_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v228_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v228_1_ce1;
    end else begin
        v228_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_address0;
    end else begin
        v229_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_address1;
    end else begin
        v229_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_ce0;
    end else begin
        v229_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_ce1;
    end else begin
        v229_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_d0;
    end else begin
        v229_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_d1;
    end else begin
        v229_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_we0;
    end else begin
        v229_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_2_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_2_we1;
    end else begin
        v229_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_address0;
    end else begin
        v229_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_address1;
    end else begin
        v229_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_ce0;
    end else begin
        v229_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_ce1;
    end else begin
        v229_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_d0;
    end else begin
        v229_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_d1;
    end else begin
        v229_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_we0;
    end else begin
        v229_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_v229_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_v229_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_v229_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v229_3_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_v229_3_we1;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln31_fu_986_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln32_fu_1028_p2 == 1'd0))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state13))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state22))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
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
assign add_ln31_fu_992_p2 = (v5_fu_174 + 8'd1);
assign add_ln32_3_fu_1060_p2 = (v6_reg_784 + 8'd36);
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
assign cmp11_fu_1022_p2 = ((v5_fu_174 == 8'd0) ? 1'b1 : 1'b0);
assign empty_108_fu_1403_p2 = (lshr_ln2_reg_2052 + 6'd5);
assign empty_121_fu_1418_p2 = (lshr_ln2_reg_2052 + 6'd6);
assign empty_133_fu_1518_p2 = (lshr_ln2_reg_2052 + 6'd7);
assign empty_146_fu_1533_p2 = (lshr_ln2_reg_2052 + 6'd8);
assign empty_58_fu_1163_p2 = (lshr_ln2_reg_2052 + 6'd1);
assign empty_71_fu_1178_p2 = (lshr_ln2_reg_2052 + 6'd2);
assign empty_83_fu_1278_p2 = (lshr_ln2_reg_2052 + 6'd3);
assign empty_96_fu_1293_p2 = (lshr_ln2_reg_2052 + 6'd4);
assign grp_fu_1593_p0 = grp_fu_1593_p00;
assign grp_fu_1593_p00 = v6_reg_784;
assign grp_fu_1593_p1 = 15'd95;
assign grp_fu_1593_p2 = zext_ln38_reg_1978;
assign grp_fu_1601_p0 = grp_fu_1601_p00;
assign grp_fu_1601_p00 = tmp_17_fu_1048_p3;
assign grp_fu_1601_p1 = 15'd95;
assign grp_fu_1601_p2 = zext_ln38_reg_1978;
assign grp_fu_1609_p0 = grp_fu_1609_p00;
assign grp_fu_1609_p00 = tmp_20_fu_1080_p3;
assign grp_fu_1609_p1 = 15'd95;
assign grp_fu_1609_p2 = zext_ln38_reg_1978;
assign grp_fu_1617_p0 = grp_fu_1617_p00;
assign grp_fu_1617_p00 = tmp_s_fu_1092_p3;
assign grp_fu_1617_p1 = 15'd95;
assign grp_fu_1617_p2 = zext_ln38_reg_1978;
assign grp_fu_1625_p1 = 8'd4;
assign grp_fu_1625_p2 = 15'd95;
assign grp_fu_1625_p3 = zext_ln38_reg_1978;
assign grp_fu_1635_p1 = 8'd5;
assign grp_fu_1635_p2 = 15'd95;
assign grp_fu_1635_p3 = zext_ln38_reg_1978;
assign grp_fu_1645_p1 = 8'd6;
assign grp_fu_1645_p2 = 15'd95;
assign grp_fu_1645_p3 = zext_ln38_reg_1978;
assign grp_fu_1655_p1 = 8'd7;
assign grp_fu_1655_p2 = 15'd95;
assign grp_fu_1655_p3 = zext_ln38_reg_1978;
assign grp_fu_1665_p1 = 8'd8;
assign grp_fu_1665_p2 = 15'd95;
assign grp_fu_1665_p3 = zext_ln38_reg_1978;
assign grp_fu_1675_p1 = 8'd9;
assign grp_fu_1675_p2 = 15'd95;
assign grp_fu_1675_p3 = zext_ln38_reg_1978;
assign grp_fu_1685_p1 = 8'd10;
assign grp_fu_1685_p2 = 15'd95;
assign grp_fu_1685_p3 = zext_ln38_reg_1978;
assign grp_fu_168_p_ce = grp_fu_2663_ce;
assign grp_fu_168_p_din0 = grp_fu_2663_p0;
assign grp_fu_168_p_din1 = grp_fu_2663_p1;
assign grp_fu_168_p_opcode = 2'd0;
assign grp_fu_1695_p1 = 8'd11;
assign grp_fu_1695_p2 = 15'd95;
assign grp_fu_1695_p3 = zext_ln38_reg_1978;
assign grp_fu_1705_p1 = 8'd12;
assign grp_fu_1705_p2 = 15'd95;
assign grp_fu_1705_p3 = zext_ln38_reg_1978;
assign grp_fu_1715_p1 = 8'd13;
assign grp_fu_1715_p2 = 15'd95;
assign grp_fu_1715_p3 = zext_ln38_reg_1978;
assign grp_fu_1725_p1 = 8'd14;
assign grp_fu_1725_p2 = 15'd95;
assign grp_fu_1725_p3 = zext_ln38_reg_1978;
assign grp_fu_172_p_ce = grp_fu_2667_ce;
assign grp_fu_172_p_din0 = grp_fu_2667_p0;
assign grp_fu_172_p_din1 = grp_fu_2667_p1;
assign grp_fu_172_p_opcode = 2'd0;
assign grp_fu_1735_p1 = 8'd15;
assign grp_fu_1735_p2 = 15'd95;
assign grp_fu_1735_p3 = zext_ln38_reg_1978;
assign grp_fu_1745_p1 = 8'd16;
assign grp_fu_1745_p2 = 15'd95;
assign grp_fu_1745_p3 = zext_ln38_reg_1978;
assign grp_fu_1755_p1 = 8'd17;
assign grp_fu_1755_p2 = 15'd95;
assign grp_fu_1755_p3 = zext_ln38_reg_1978;
assign grp_fu_1765_p1 = 8'd18;
assign grp_fu_1765_p2 = 15'd95;
assign grp_fu_1765_p3 = zext_ln38_reg_1978;
assign grp_fu_176_p_ce = grp_fu_2671_ce;
assign grp_fu_176_p_din0 = grp_fu_2671_p0;
assign grp_fu_176_p_din1 = grp_fu_2671_p1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_1775_p1 = 8'd19;
assign grp_fu_1775_p2 = 15'd95;
assign grp_fu_1775_p3 = zext_ln38_reg_1978;
assign grp_fu_1785_p1 = 8'd20;
assign grp_fu_1785_p2 = 15'd95;
assign grp_fu_1785_p3 = zext_ln38_reg_1978;
assign grp_fu_1795_p1 = 8'd21;
assign grp_fu_1795_p2 = 15'd95;
assign grp_fu_1795_p3 = zext_ln38_reg_1978;
assign grp_fu_1805_p1 = 8'd22;
assign grp_fu_1805_p2 = 15'd95;
assign grp_fu_1805_p3 = zext_ln38_reg_1978;
assign grp_fu_180_p_ce = grp_fu_2675_ce;
assign grp_fu_180_p_din0 = grp_fu_2675_p0;
assign grp_fu_180_p_din1 = grp_fu_2675_p1;
assign grp_fu_1815_p1 = 8'd23;
assign grp_fu_1815_p2 = 15'd95;
assign grp_fu_1815_p3 = zext_ln38_reg_1978;
assign grp_fu_1825_p1 = 8'd24;
assign grp_fu_1825_p2 = 15'd95;
assign grp_fu_1825_p3 = zext_ln38_reg_1978;
assign grp_fu_1835_p1 = 8'd25;
assign grp_fu_1835_p2 = 15'd95;
assign grp_fu_1835_p3 = zext_ln38_reg_1978;
assign grp_fu_1845_p1 = 8'd26;
assign grp_fu_1845_p2 = 15'd95;
assign grp_fu_1845_p3 = zext_ln38_reg_1978;
assign grp_fu_184_p_ce = grp_fu_2679_ce;
assign grp_fu_184_p_din0 = grp_fu_2679_p0;
assign grp_fu_184_p_din1 = grp_fu_2679_p1;
assign grp_fu_1855_p1 = 8'd27;
assign grp_fu_1855_p2 = 15'd95;
assign grp_fu_1855_p3 = zext_ln38_reg_1978;
assign grp_fu_1865_p1 = 8'd28;
assign grp_fu_1865_p2 = 15'd95;
assign grp_fu_1865_p3 = zext_ln38_reg_1978;
assign grp_fu_1875_p1 = 8'd29;
assign grp_fu_1875_p2 = 15'd95;
assign grp_fu_1875_p3 = zext_ln38_reg_1978;
assign grp_fu_1885_p1 = 8'd30;
assign grp_fu_1885_p2 = 15'd95;
assign grp_fu_1885_p3 = zext_ln38_reg_1978;
assign grp_fu_188_p_ce = grp_fu_2683_ce;
assign grp_fu_188_p_din0 = grp_fu_2683_p0;
assign grp_fu_188_p_din1 = grp_fu_2683_p1;
assign grp_fu_1895_p1 = 8'd31;
assign grp_fu_1895_p2 = 15'd95;
assign grp_fu_1895_p3 = zext_ln38_reg_1978;
assign grp_fu_1905_p1 = 8'd32;
assign grp_fu_1905_p2 = 15'd95;
assign grp_fu_1905_p3 = zext_ln38_reg_1978;
assign grp_fu_1915_p1 = 8'd33;
assign grp_fu_1915_p2 = 15'd95;
assign grp_fu_1915_p3 = zext_ln38_reg_1978;
assign grp_fu_1925_p1 = 8'd34;
assign grp_fu_1925_p2 = 15'd95;
assign grp_fu_1925_p3 = zext_ln38_reg_1978;
assign grp_fu_192_p_ce = grp_fu_2687_ce;
assign grp_fu_192_p_din0 = grp_fu_2687_p0;
assign grp_fu_192_p_din1 = grp_fu_2687_p1;
assign grp_fu_1935_p1 = 8'd35;
assign grp_fu_1935_p2 = 15'd95;
assign grp_fu_1935_p3 = zext_ln38_reg_1978;
assign grp_fu_196_p_ce = grp_fu_2691_ce;
assign grp_fu_196_p_din0 = grp_fu_2691_p0;
assign grp_fu_196_p_din1 = grp_fu_2691_p1;
assign grp_fu_200_p_ce = grp_fu_2695_ce;
assign grp_fu_200_p_din0 = grp_fu_2695_p0;
assign grp_fu_200_p_din1 = grp_fu_2695_p1;
assign grp_fu_924_p3 = ((trunc_ln31_reg_1968[0:0] == 1'b1) ? v224_1_q1 : v224_0_q1);
assign grp_fu_931_p3 = ((trunc_ln31_reg_1968[0:0] == 1'b1) ? v224_1_q0 : v224_0_q0);
assign grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_start = grp_kernel_2mm_node0_Pipeline_label_23_fu_828_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_start = grp_kernel_2mm_node0_Pipeline_label_24_fu_860_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_start = grp_kernel_2mm_node0_Pipeline_label_25_fu_892_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_796_ap_start_reg;
assign icmp_ln31_fu_986_p2 = ((v5_fu_174 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_1028_p2 = ((v6_reg_784 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_1070_p4 = {{v6_reg_784[7:2]}};
assign lshr_ln_fu_1002_p4 = {{v5_fu_174[7:1]}};
assign mul_ln101_fu_1542_p0 = mul_ln101_fu_1542_p00;
assign mul_ln101_fu_1542_p00 = empty_146_fu_1533_p2;
assign mul_ln101_fu_1542_p1 = 14'd220;
assign mul_ln114_fu_1427_p0 = mul_ln114_fu_1427_p00;
assign mul_ln114_fu_1427_p00 = empty_121_fu_1418_p2;
assign mul_ln114_fu_1427_p1 = 14'd220;
assign mul_ln127_fu_1302_p0 = mul_ln127_fu_1302_p00;
assign mul_ln127_fu_1302_p00 = empty_96_fu_1293_p2;
assign mul_ln127_fu_1302_p1 = 14'd220;
assign mul_ln140_fu_1187_p0 = mul_ln140_fu_1187_p00;
assign mul_ln140_fu_1187_p00 = empty_71_fu_1178_p2;
assign mul_ln140_fu_1187_p1 = 14'd220;
assign mul_ln34_fu_1157_p0 = mul_ln34_fu_1157_p00;
assign mul_ln34_fu_1157_p00 = lshr_ln2_reg_2052;
assign mul_ln34_fu_1157_p1 = 14'd220;
assign mul_ln38_fu_1016_p0 = mul_ln38_fu_1016_p00;
assign mul_ln38_fu_1016_p00 = lshr_ln_fu_1002_p4;
assign mul_ln38_fu_1016_p1 = 15'd220;
assign mul_ln49_fu_1527_p0 = mul_ln49_fu_1527_p00;
assign mul_ln49_fu_1527_p00 = empty_133_fu_1518_p2;
assign mul_ln49_fu_1527_p1 = 14'd220;
assign mul_ln62_fu_1412_p0 = mul_ln62_fu_1412_p00;
assign mul_ln62_fu_1412_p00 = empty_108_fu_1403_p2;
assign mul_ln62_fu_1412_p1 = 14'd220;
assign mul_ln75_fu_1287_p0 = mul_ln75_fu_1287_p00;
assign mul_ln75_fu_1287_p00 = empty_83_fu_1278_p2;
assign mul_ln75_fu_1287_p1 = 14'd220;
assign mul_ln88_fu_1172_p0 = mul_ln88_fu_1172_p00;
assign mul_ln88_fu_1172_p00 = empty_58_fu_1163_p2;
assign mul_ln88_fu_1172_p1 = 14'd220;
assign p_cast4720_fu_1104_p1 = grp_fu_1593_p3;
assign p_cast4721_fu_1114_p1 = grp_fu_1609_p3;
assign p_cast4722_fu_1119_p1 = grp_fu_1617_p3;
assign p_cast4723_fu_1124_p1 = grp_fu_1625_p4;
assign p_cast4724_fu_1129_p1 = grp_fu_1635_p4;
assign p_cast4725_fu_1134_p1 = grp_fu_1645_p4;
assign p_cast4726_fu_1139_p1 = grp_fu_1655_p4;
assign p_cast4727_fu_1144_p1 = grp_fu_1665_p4;
assign p_cast4728_fu_1149_p1 = grp_fu_1675_p4;
assign p_cast4729_fu_1193_p1 = grp_fu_1685_p4;
assign p_cast4730_fu_1198_p1 = grp_fu_1695_p4;
assign p_cast4731_fu_1248_p1 = grp_fu_1705_p4;
assign p_cast4732_fu_1253_p1 = grp_fu_1715_p4;
assign p_cast4733_fu_1258_p1 = grp_fu_1725_p4;
assign p_cast4734_fu_1263_p1 = grp_fu_1735_p4;
assign p_cast4735_fu_1268_p1 = grp_fu_1745_p4;
assign p_cast4736_fu_1273_p1 = grp_fu_1755_p4;
assign p_cast4737_fu_1308_p1 = grp_fu_1765_p4;
assign p_cast4738_fu_1313_p1 = grp_fu_1775_p4;
assign p_cast4739_fu_1363_p1 = grp_fu_1785_p4;
assign p_cast4740_fu_1368_p1 = grp_fu_1795_p4;
assign p_cast4741_fu_1373_p1 = grp_fu_1805_p4;
assign p_cast4742_fu_1378_p1 = grp_fu_1815_p4;
assign p_cast4743_fu_1383_p1 = grp_fu_1825_p4;
assign p_cast4744_fu_1388_p1 = grp_fu_1835_p4;
assign p_cast4745_fu_1393_p1 = grp_fu_1845_p4;
assign p_cast4746_fu_1398_p1 = grp_fu_1855_p4;
assign p_cast4747_fu_1433_p1 = grp_fu_1865_p4;
assign p_cast4748_fu_1438_p1 = grp_fu_1875_p4;
assign p_cast4749_fu_1488_p1 = grp_fu_1885_p4;
assign p_cast4750_fu_1493_p1 = grp_fu_1895_p4;
assign p_cast4751_fu_1498_p1 = grp_fu_1905_p4;
assign p_cast4752_fu_1503_p1 = grp_fu_1915_p4;
assign p_cast4753_fu_1508_p1 = grp_fu_1925_p4;
assign p_cast4754_fu_1513_p1 = grp_fu_1935_p4;
assign p_cast_fu_1109_p1 = grp_fu_1601_p3;
assign tmp_17_fu_1048_p3 = {{tmp_fu_1038_p4}, {1'd1}};
assign tmp_20_fu_1080_p3 = {{lshr_ln2_fu_1070_p4}, {2'd2}};
assign tmp_fu_1038_p4 = {{v6_reg_784[7:1]}};
assign tmp_s_fu_1092_p3 = {{lshr_ln2_fu_1070_p4}, {2'd3}};
assign trunc_ln31_fu_998_p1 = v5_fu_174[0:0];
assign v101_1_fu_1358_p1 = reg_966;
assign v101_2_fu_1483_p1 = reg_970;
assign v101_3_fu_1588_p1 = reg_966;
assign v101_fu_1243_p1 = reg_970;
assign v11_1_fu_1318_p1 = reg_974;
assign v11_2_fu_1443_p1 = reg_938;
assign v11_3_fu_1548_p1 = reg_974;
assign v11_fu_1203_p1 = reg_938;
assign v224_0_address0 = v224_0_address0_local;
assign v224_0_address1 = v224_0_address1_local;
assign v224_0_ce0 = v224_0_ce0_local;
assign v224_0_ce1 = v224_0_ce1_local;
assign v224_1_address0 = v224_1_address0_local;
assign v224_1_address1 = v224_1_address1_local;
assign v224_1_ce0 = v224_1_ce0_local;
assign v224_1_ce1 = v224_1_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_1323_p1 = reg_938;
assign v24_2_fu_1448_p1 = reg_942;
assign v24_3_fu_1553_p1 = reg_938;
assign v24_fu_1208_p1 = reg_942;
assign v35_1_fu_1328_p1 = reg_942;
assign v35_2_fu_1453_p1 = reg_946;
assign v35_3_fu_1558_p1 = reg_942;
assign v35_fu_1213_p1 = reg_946;
assign v46_1_fu_1333_p1 = reg_946;
assign v46_2_fu_1458_p1 = reg_950;
assign v46_3_fu_1563_p1 = reg_946;
assign v46_fu_1218_p1 = reg_950;
assign v57_1_fu_1338_p1 = reg_950;
assign v57_2_fu_1463_p1 = reg_954;
assign v57_3_fu_1568_p1 = reg_950;
assign v57_fu_1223_p1 = reg_954;
assign v68_1_fu_1343_p1 = reg_954;
assign v68_2_fu_1468_p1 = reg_958;
assign v68_3_fu_1573_p1 = reg_954;
assign v68_fu_1228_p1 = reg_958;
assign v79_1_fu_1348_p1 = reg_958;
assign v79_2_fu_1473_p1 = reg_962;
assign v79_3_fu_1578_p1 = reg_958;
assign v79_fu_1233_p1 = reg_962;
assign v90_1_fu_1353_p1 = reg_962;
assign v90_2_fu_1478_p1 = reg_966;
assign v90_3_fu_1583_p1 = reg_962;
assign v90_fu_1238_p1 = reg_966;
assign zext_ln38_fu_1012_p1 = lshr_ln_fu_1002_p4;
always @ (posedge ap_clk) begin
    zext_ln38_reg_1978[14:7] <= 8'b00000000;
end
endmodule 