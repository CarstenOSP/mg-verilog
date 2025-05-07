module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v224_4_address0,v224_4_ce0,v224_4_q0,v224_4_address1,v224_4_ce1,v224_4_q1,v224_5_address0,v224_5_ce0,v224_5_q0,v224_5_address1,v224_5_ce1,v224_5_q1,v224_6_address0,v224_6_ce0,v224_6_q0,v224_6_address1,v224_6_ce1,v224_6_q1,v224_7_address0,v224_7_ce0,v224_7_q0,v224_7_address1,v224_7_ce1,v224_7_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_opcode,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce); 
parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [12:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [12:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [12:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [12:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [12:0] v224_2_address0;
output   v224_2_ce0;
input  [31:0] v224_2_q0;
output  [12:0] v224_2_address1;
output   v224_2_ce1;
input  [31:0] v224_2_q1;
output  [12:0] v224_3_address0;
output   v224_3_ce0;
input  [31:0] v224_3_q0;
output  [12:0] v224_3_address1;
output   v224_3_ce1;
input  [31:0] v224_3_q1;
output  [12:0] v224_4_address0;
output   v224_4_ce0;
input  [31:0] v224_4_q0;
output  [12:0] v224_4_address1;
output   v224_4_ce1;
input  [31:0] v224_4_q1;
output  [12:0] v224_5_address0;
output   v224_5_ce0;
input  [31:0] v224_5_q0;
output  [12:0] v224_5_address1;
output   v224_5_ce1;
input  [31:0] v224_5_q1;
output  [12:0] v224_6_address0;
output   v224_6_ce0;
input  [31:0] v224_6_q0;
output  [12:0] v224_6_address1;
output   v224_6_ce1;
input  [31:0] v224_6_q1;
output  [12:0] v224_7_address0;
output   v224_7_ce0;
input  [31:0] v224_7_q0;
output  [12:0] v224_7_address1;
output   v224_7_ce1;
input  [31:0] v224_7_q1;
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
output  [15:0] v229_address0;
output   v229_ce0;
output   v229_we0;
output  [31:0] v229_d0;
input  [31:0] v229_q0;
output  [15:0] v229_address1;
output   v229_ce1;
output   v229_we1;
output  [31:0] v229_d1;
input  [31:0] v229_q1;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v229_address0;
reg v229_ce0;
reg v229_we0;
reg[31:0] v229_d0;
reg[15:0] v229_address1;
reg v229_ce1;
reg v229_we1;
reg[31:0] v229_d1;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [2:0] trunc_ln31_fu_874_p1;
reg   [2:0] trunc_ln31_reg_2602;
wire    ap_CS_fsm_state2;
wire   [14:0] mul_ln38_fu_892_p2;
reg   [14:0] mul_ln38_reg_2624;
wire   [12:0] zext_ln31_fu_908_p1;
reg   [12:0] zext_ln31_reg_2630;
wire   [0:0] cmp11_fu_912_p2;
reg   [0:0] cmp11_reg_2652;
wire    ap_CS_fsm_state3;
wire   [7:0] empty_77_fu_963_p2;
reg   [7:0] empty_77_reg_2680;
wire   [7:0] empty_84_fu_969_p2;
reg   [7:0] empty_84_reg_2687;
wire   [7:0] add_ln32_fu_975_p2;
reg   [7:0] add_ln32_reg_2694;
wire   [31:0] v11_fu_997_p11;
reg   [31:0] v11_reg_2699;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_91_fu_1094_p2;
reg   [7:0] empty_91_reg_2744;
wire   [7:0] empty_98_fu_1100_p2;
reg   [7:0] empty_98_reg_2751;
wire   [31:0] v24_fu_1122_p11;
reg   [31:0] v24_reg_2758;
wire    ap_CS_fsm_state5;
wire   [31:0] v35_2_fu_1161_p11;
reg   [31:0] v35_2_reg_2763;
wire   [7:0] empty_105_fu_1258_p2;
reg   [7:0] empty_105_reg_2808;
wire   [7:0] empty_112_fu_1264_p2;
reg   [7:0] empty_112_reg_2815;
wire   [31:0] v46_2_fu_1286_p11;
reg   [31:0] v46_2_reg_2822;
wire    ap_CS_fsm_state6;
wire   [31:0] v57_2_fu_1325_p11;
reg   [31:0] v57_2_reg_2827;
wire   [7:0] empty_119_fu_1422_p2;
reg   [7:0] empty_119_reg_2872;
wire   [7:0] empty_126_fu_1428_p2;
reg   [7:0] empty_126_reg_2879;
wire   [31:0] v68_2_fu_1450_p11;
reg   [31:0] v68_2_reg_2886;
wire    ap_CS_fsm_state7;
wire   [31:0] v79_2_fu_1489_p11;
reg   [31:0] v79_2_reg_2891;
wire   [15:0] mul_ln34_fu_1590_p2;
reg   [15:0] mul_ln34_reg_2936;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln49_fu_1599_p2;
reg   [15:0] mul_ln49_reg_2941;
wire   [15:0] mul_ln62_fu_1608_p2;
reg   [15:0] mul_ln62_reg_2946;
wire   [15:0] mul_ln75_fu_1617_p2;
reg   [15:0] mul_ln75_reg_2951;
wire   [15:0] mul_ln88_fu_1626_p2;
reg   [15:0] mul_ln88_reg_2956;
wire   [15:0] mul_ln101_fu_1635_p2;
reg   [15:0] mul_ln101_reg_2961;
wire   [15:0] mul_ln114_fu_1644_p2;
reg   [15:0] mul_ln114_reg_2966;
wire   [15:0] mul_ln127_fu_1653_p2;
reg   [15:0] mul_ln127_reg_2971;
wire   [31:0] v90_2_fu_1675_p11;
reg   [31:0] v90_2_reg_2976;
wire   [15:0] mul_ln140_fu_1701_p2;
reg   [15:0] mul_ln140_reg_2981;
wire   [31:0] v101_2_fu_1723_p11;
reg   [31:0] v101_2_reg_2986;
wire    ap_CS_fsm_state11;
wire   [7:0] empty_139_fu_1791_p2;
reg   [7:0] empty_139_reg_3014;
wire   [7:0] empty_146_fu_1797_p2;
reg   [7:0] empty_146_reg_3021;
wire   [7:0] add_ln32_1_fu_1803_p2;
reg   [7:0] add_ln32_1_reg_3028;
wire   [31:0] v11_1_fu_1835_p11;
reg   [31:0] v11_1_reg_3033;
wire    ap_CS_fsm_state12;
wire   [7:0] empty_153_fu_1932_p2;
reg   [7:0] empty_153_reg_3078;
wire   [7:0] empty_160_fu_1938_p2;
reg   [7:0] empty_160_reg_3085;
wire   [31:0] v24_1_fu_1960_p11;
reg   [31:0] v24_1_reg_3092;
wire    ap_CS_fsm_state13;
wire   [31:0] v35_1_fu_1999_p11;
reg   [31:0] v35_1_reg_3097;
wire   [7:0] empty_167_fu_2096_p2;
reg   [7:0] empty_167_reg_3142;
wire   [7:0] empty_174_fu_2102_p2;
reg   [7:0] empty_174_reg_3149;
wire   [31:0] v46_1_fu_2124_p11;
reg   [31:0] v46_1_reg_3156;
wire    ap_CS_fsm_state14;
wire   [31:0] v57_1_fu_2163_p11;
reg   [31:0] v57_1_reg_3161;
wire   [7:0] empty_181_fu_2260_p2;
reg   [7:0] empty_181_reg_3206;
wire   [7:0] empty_188_fu_2266_p2;
reg   [7:0] empty_188_reg_3213;
wire   [31:0] v68_1_fu_2288_p11;
reg   [31:0] v68_1_reg_3220;
wire    ap_CS_fsm_state15;
wire   [31:0] v79_1_fu_2327_p11;
reg   [31:0] v79_1_reg_3225;
wire   [15:0] mul_ln34_1_fu_2428_p2;
reg   [15:0] mul_ln34_1_reg_3270;
wire    ap_CS_fsm_state16;
wire   [15:0] mul_ln49_1_fu_2437_p2;
reg   [15:0] mul_ln49_1_reg_3275;
wire   [15:0] mul_ln62_1_fu_2446_p2;
reg   [15:0] mul_ln62_1_reg_3280;
wire   [15:0] mul_ln75_1_fu_2455_p2;
reg   [15:0] mul_ln75_1_reg_3285;
wire   [15:0] mul_ln88_1_fu_2464_p2;
reg   [15:0] mul_ln88_1_reg_3290;
wire   [15:0] mul_ln101_1_fu_2473_p2;
reg   [15:0] mul_ln101_1_reg_3295;
wire   [15:0] mul_ln114_1_fu_2482_p2;
reg   [15:0] mul_ln114_1_reg_3300;
wire   [15:0] mul_ln127_1_fu_2491_p2;
reg   [15:0] mul_ln127_1_reg_3305;
wire   [31:0] v90_1_fu_2513_p11;
reg   [31:0] v90_1_reg_3310;
wire   [15:0] mul_ln140_1_fu_2539_p2;
reg   [15:0] mul_ln140_1_reg_3315;
wire   [31:0] v101_1_fu_2561_p11;
reg   [31:0] v101_1_reg_3320;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3325_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3325_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3325_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3325_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3329_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3329_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3329_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3333_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3333_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3333_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v228_1_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3325_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3325_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3325_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3325_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3329_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3329_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3329_p_ce;
reg   [7:0] v6_reg_780;
wire   [0:0] icmp_ln31_fu_868_p2;
wire    ap_CS_fsm_state10;
reg   [7:0] v6_1_reg_792;
wire    ap_CS_fsm_state18;
wire   [0:0] icmp_ln32_fu_918_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start_reg;
wire    ap_CS_fsm_state9;
reg    grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_start_reg;
wire    ap_CS_fsm_state17;
wire   [63:0] p_cast1430_fu_955_p1;
wire   [63:0] p_cast_fu_1049_p1;
wire   [63:0] p_cast1431_fu_1086_p1;
wire   [63:0] p_cast1432_fu_1213_p1;
wire   [63:0] p_cast1433_fu_1250_p1;
wire   [63:0] p_cast1434_fu_1377_p1;
wire   [63:0] p_cast1435_fu_1414_p1;
wire   [63:0] p_cast1436_fu_1541_p1;
wire   [63:0] p_cast1437_fu_1578_p1;
wire   [63:0] p_cast1438_fu_1783_p1;
wire   [0:0] icmp_ln32_1_fu_1746_p2;
wire   [63:0] p_cast1439_fu_1887_p1;
wire   [63:0] p_cast1440_fu_1924_p1;
wire   [63:0] p_cast1441_fu_2051_p1;
wire   [63:0] p_cast1442_fu_2088_p1;
wire   [63:0] p_cast1443_fu_2215_p1;
wire   [63:0] p_cast1444_fu_2252_p1;
wire   [63:0] p_cast1445_fu_2379_p1;
wire   [63:0] p_cast1446_fu_2416_p1;
reg   [7:0] v5_fu_116;
wire   [7:0] add_ln31_fu_1809_p2;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_0_ce0_local;
reg   [12:0] v224_0_address0_local;
reg    v224_0_ce1_local;
reg   [12:0] v224_0_address1_local;
reg    v224_2_ce0_local;
reg   [12:0] v224_2_address0_local;
reg    v224_2_ce1_local;
reg   [12:0] v224_2_address1_local;
reg    v224_4_ce0_local;
reg   [12:0] v224_4_address0_local;
reg    v224_4_ce1_local;
reg   [12:0] v224_4_address1_local;
reg    v224_6_ce0_local;
reg   [12:0] v224_6_address0_local;
reg    v224_6_ce1_local;
reg   [12:0] v224_6_address1_local;
reg    v224_1_ce0_local;
reg   [12:0] v224_1_address0_local;
reg    v224_1_ce1_local;
reg   [12:0] v224_1_address1_local;
reg    v224_3_ce0_local;
reg   [12:0] v224_3_address0_local;
reg    v224_3_ce1_local;
reg   [12:0] v224_3_address1_local;
reg    v224_5_ce0_local;
reg   [12:0] v224_5_address0_local;
reg    v224_5_ce1_local;
reg   [12:0] v224_5_address1_local;
reg    v224_7_ce0_local;
reg   [12:0] v224_7_address0_local;
reg    v224_7_ce1_local;
reg   [12:0] v224_7_address1_local;
wire   [6:0] lshr_ln_fu_878_p4;
wire   [6:0] mul_ln38_fu_892_p0;
wire   [8:0] mul_ln38_fu_892_p1;
wire   [4:0] lshr_ln31_1_fu_898_p4;
wire   [10:0] tmp_fu_932_p3;
wire   [12:0] p_shl1_fu_924_p3;
wire   [12:0] p_shl1539_fu_940_p1;
wire   [12:0] empty_fu_944_p2;
wire   [12:0] empty_72_fu_950_p2;
wire   [31:0] v11_fu_997_p2;
wire   [31:0] v11_fu_997_p4;
wire   [31:0] v11_fu_997_p6;
wire   [31:0] v11_fu_997_p8;
wire   [31:0] v11_fu_997_p9;
wire   [10:0] tmp_13_fu_1027_p3;
wire   [12:0] p_shl2_fu_1020_p3;
wire   [12:0] p_shl1537_fu_1034_p1;
wire   [12:0] empty_78_fu_1038_p2;
wire   [12:0] empty_79_fu_1044_p2;
wire   [10:0] tmp_14_fu_1064_p3;
wire   [12:0] p_shl3_fu_1057_p3;
wire   [12:0] p_shl1535_fu_1071_p1;
wire   [12:0] empty_85_fu_1075_p2;
wire   [12:0] empty_86_fu_1081_p2;
wire   [31:0] v24_fu_1122_p2;
wire   [31:0] v24_fu_1122_p4;
wire   [31:0] v24_fu_1122_p6;
wire   [31:0] v24_fu_1122_p8;
wire   [31:0] v24_fu_1122_p9;
wire   [31:0] v35_2_fu_1161_p2;
wire   [31:0] v35_2_fu_1161_p4;
wire   [31:0] v35_2_fu_1161_p6;
wire   [31:0] v35_2_fu_1161_p8;
wire   [31:0] v35_2_fu_1161_p9;
wire   [10:0] tmp_15_fu_1191_p3;
wire   [12:0] p_shl4_fu_1184_p3;
wire   [12:0] p_shl1533_fu_1198_p1;
wire   [12:0] empty_92_fu_1202_p2;
wire   [12:0] empty_93_fu_1208_p2;
wire   [10:0] tmp_16_fu_1228_p3;
wire   [12:0] p_shl5_fu_1221_p3;
wire   [12:0] p_shl1531_fu_1235_p1;
wire   [12:0] empty_99_fu_1239_p2;
wire   [12:0] empty_100_fu_1245_p2;
wire   [31:0] v46_2_fu_1286_p2;
wire   [31:0] v46_2_fu_1286_p4;
wire   [31:0] v46_2_fu_1286_p6;
wire   [31:0] v46_2_fu_1286_p8;
wire   [31:0] v46_2_fu_1286_p9;
wire   [31:0] v57_2_fu_1325_p2;
wire   [31:0] v57_2_fu_1325_p4;
wire   [31:0] v57_2_fu_1325_p6;
wire   [31:0] v57_2_fu_1325_p8;
wire   [31:0] v57_2_fu_1325_p9;
wire   [10:0] tmp_17_fu_1355_p3;
wire   [12:0] p_shl6_fu_1348_p3;
wire   [12:0] p_shl1529_fu_1362_p1;
wire   [12:0] empty_106_fu_1366_p2;
wire   [12:0] empty_107_fu_1372_p2;
wire   [10:0] tmp_18_fu_1392_p3;
wire   [12:0] p_shl7_fu_1385_p3;
wire   [12:0] p_shl1527_fu_1399_p1;
wire   [12:0] empty_113_fu_1403_p2;
wire   [12:0] empty_114_fu_1409_p2;
wire   [31:0] v68_2_fu_1450_p2;
wire   [31:0] v68_2_fu_1450_p4;
wire   [31:0] v68_2_fu_1450_p6;
wire   [31:0] v68_2_fu_1450_p8;
wire   [31:0] v68_2_fu_1450_p9;
wire   [31:0] v79_2_fu_1489_p2;
wire   [31:0] v79_2_fu_1489_p4;
wire   [31:0] v79_2_fu_1489_p6;
wire   [31:0] v79_2_fu_1489_p8;
wire   [31:0] v79_2_fu_1489_p9;
wire   [10:0] tmp_19_fu_1519_p3;
wire   [12:0] p_shl8_fu_1512_p3;
wire   [12:0] p_shl1525_fu_1526_p1;
wire   [12:0] empty_120_fu_1530_p2;
wire   [12:0] empty_121_fu_1536_p2;
wire   [10:0] tmp_20_fu_1556_p3;
wire   [12:0] p_shl9_fu_1549_p3;
wire   [12:0] p_shl1523_fu_1563_p1;
wire   [12:0] empty_127_fu_1567_p2;
wire   [12:0] empty_128_fu_1573_p2;
wire   [7:0] mul_ln34_fu_1590_p0;
wire   [8:0] mul_ln34_fu_1590_p1;
wire   [7:0] mul_ln49_fu_1599_p0;
wire   [8:0] mul_ln49_fu_1599_p1;
wire   [7:0] mul_ln62_fu_1608_p0;
wire   [8:0] mul_ln62_fu_1608_p1;
wire   [7:0] mul_ln75_fu_1617_p0;
wire   [8:0] mul_ln75_fu_1617_p1;
wire   [7:0] mul_ln88_fu_1626_p0;
wire   [8:0] mul_ln88_fu_1626_p1;
wire   [7:0] mul_ln101_fu_1635_p0;
wire   [8:0] mul_ln101_fu_1635_p1;
wire   [7:0] mul_ln114_fu_1644_p0;
wire   [8:0] mul_ln114_fu_1644_p1;
wire   [7:0] mul_ln127_fu_1653_p0;
wire   [8:0] mul_ln127_fu_1653_p1;
wire   [31:0] v90_2_fu_1675_p2;
wire   [31:0] v90_2_fu_1675_p4;
wire   [31:0] v90_2_fu_1675_p6;
wire   [31:0] v90_2_fu_1675_p8;
wire   [31:0] v90_2_fu_1675_p9;
wire   [7:0] mul_ln140_fu_1701_p0;
wire   [8:0] mul_ln140_fu_1701_p1;
wire   [31:0] v101_2_fu_1723_p2;
wire   [31:0] v101_2_fu_1723_p4;
wire   [31:0] v101_2_fu_1723_p6;
wire   [31:0] v101_2_fu_1723_p8;
wire   [31:0] v101_2_fu_1723_p9;
wire   [10:0] tmp_21_fu_1760_p3;
wire   [12:0] p_shl10_fu_1752_p3;
wire   [12:0] p_shl1521_fu_1768_p1;
wire   [12:0] empty_133_fu_1772_p2;
wire   [12:0] empty_134_fu_1778_p2;
wire   [31:0] v11_1_fu_1835_p2;
wire   [31:0] v11_1_fu_1835_p4;
wire   [31:0] v11_1_fu_1835_p6;
wire   [31:0] v11_1_fu_1835_p8;
wire   [31:0] v11_1_fu_1835_p9;
wire   [10:0] tmp_22_fu_1865_p3;
wire   [12:0] p_shl11_fu_1858_p3;
wire   [12:0] p_shl1519_fu_1872_p1;
wire   [12:0] empty_140_fu_1876_p2;
wire   [12:0] empty_141_fu_1882_p2;
wire   [10:0] tmp_23_fu_1902_p3;
wire   [12:0] p_shl12_fu_1895_p3;
wire   [12:0] p_shl1517_fu_1909_p1;
wire   [12:0] empty_147_fu_1913_p2;
wire   [12:0] empty_148_fu_1919_p2;
wire   [31:0] v24_1_fu_1960_p2;
wire   [31:0] v24_1_fu_1960_p4;
wire   [31:0] v24_1_fu_1960_p6;
wire   [31:0] v24_1_fu_1960_p8;
wire   [31:0] v24_1_fu_1960_p9;
wire   [31:0] v35_1_fu_1999_p2;
wire   [31:0] v35_1_fu_1999_p4;
wire   [31:0] v35_1_fu_1999_p6;
wire   [31:0] v35_1_fu_1999_p8;
wire   [31:0] v35_1_fu_1999_p9;
wire   [10:0] tmp_24_fu_2029_p3;
wire   [12:0] p_shl13_fu_2022_p3;
wire   [12:0] p_shl1515_fu_2036_p1;
wire   [12:0] empty_154_fu_2040_p2;
wire   [12:0] empty_155_fu_2046_p2;
wire   [10:0] tmp_25_fu_2066_p3;
wire   [12:0] p_shl14_fu_2059_p3;
wire   [12:0] p_shl1513_fu_2073_p1;
wire   [12:0] empty_161_fu_2077_p2;
wire   [12:0] empty_162_fu_2083_p2;
wire   [31:0] v46_1_fu_2124_p2;
wire   [31:0] v46_1_fu_2124_p4;
wire   [31:0] v46_1_fu_2124_p6;
wire   [31:0] v46_1_fu_2124_p8;
wire   [31:0] v46_1_fu_2124_p9;
wire   [31:0] v57_1_fu_2163_p2;
wire   [31:0] v57_1_fu_2163_p4;
wire   [31:0] v57_1_fu_2163_p6;
wire   [31:0] v57_1_fu_2163_p8;
wire   [31:0] v57_1_fu_2163_p9;
wire   [10:0] tmp_26_fu_2193_p3;
wire   [12:0] p_shl15_fu_2186_p3;
wire   [12:0] p_shl1511_fu_2200_p1;
wire   [12:0] empty_168_fu_2204_p2;
wire   [12:0] empty_169_fu_2210_p2;
wire   [10:0] tmp_27_fu_2230_p3;
wire   [12:0] p_shl16_fu_2223_p3;
wire   [12:0] p_shl1509_fu_2237_p1;
wire   [12:0] empty_175_fu_2241_p2;
wire   [12:0] empty_176_fu_2247_p2;
wire   [31:0] v68_1_fu_2288_p2;
wire   [31:0] v68_1_fu_2288_p4;
wire   [31:0] v68_1_fu_2288_p6;
wire   [31:0] v68_1_fu_2288_p8;
wire   [31:0] v68_1_fu_2288_p9;
wire   [31:0] v79_1_fu_2327_p2;
wire   [31:0] v79_1_fu_2327_p4;
wire   [31:0] v79_1_fu_2327_p6;
wire   [31:0] v79_1_fu_2327_p8;
wire   [31:0] v79_1_fu_2327_p9;
wire   [10:0] tmp_28_fu_2357_p3;
wire   [12:0] p_shl17_fu_2350_p3;
wire   [12:0] p_shl1507_fu_2364_p1;
wire   [12:0] empty_182_fu_2368_p2;
wire   [12:0] empty_183_fu_2374_p2;
wire   [10:0] tmp_29_fu_2394_p3;
wire   [12:0] p_shl_fu_2387_p3;
wire   [12:0] p_shl1505_fu_2401_p1;
wire   [12:0] empty_189_fu_2405_p2;
wire   [12:0] empty_190_fu_2411_p2;
wire   [7:0] mul_ln34_1_fu_2428_p0;
wire   [8:0] mul_ln34_1_fu_2428_p1;
wire   [7:0] mul_ln49_1_fu_2437_p0;
wire   [8:0] mul_ln49_1_fu_2437_p1;
wire   [7:0] mul_ln62_1_fu_2446_p0;
wire   [8:0] mul_ln62_1_fu_2446_p1;
wire   [7:0] mul_ln75_1_fu_2455_p0;
wire   [8:0] mul_ln75_1_fu_2455_p1;
wire   [7:0] mul_ln88_1_fu_2464_p0;
wire   [8:0] mul_ln88_1_fu_2464_p1;
wire   [7:0] mul_ln101_1_fu_2473_p0;
wire   [8:0] mul_ln101_1_fu_2473_p1;
wire   [7:0] mul_ln114_1_fu_2482_p0;
wire   [8:0] mul_ln114_1_fu_2482_p1;
wire   [7:0] mul_ln127_1_fu_2491_p0;
wire   [8:0] mul_ln127_1_fu_2491_p1;
wire   [31:0] v90_1_fu_2513_p2;
wire   [31:0] v90_1_fu_2513_p4;
wire   [31:0] v90_1_fu_2513_p6;
wire   [31:0] v90_1_fu_2513_p8;
wire   [31:0] v90_1_fu_2513_p9;
wire   [7:0] mul_ln140_1_fu_2539_p0;
wire   [8:0] mul_ln140_1_fu_2539_p1;
wire   [31:0] v101_1_fu_2561_p2;
wire   [31:0] v101_1_fu_2561_p4;
wire   [31:0] v101_1_fu_2561_p6;
wire   [31:0] v101_1_fu_2561_p8;
wire   [31:0] v101_1_fu_2561_p9;
reg   [31:0] grp_fu_3325_p0;
reg   [31:0] grp_fu_3325_p1;
reg    grp_fu_3325_ce;
reg   [31:0] grp_fu_3329_p0;
reg   [31:0] grp_fu_3329_p1;
reg    grp_fu_3329_ce;
reg    grp_fu_3333_ce;
reg   [17:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
reg    ap_ST_fsm_state18_blk;
wire   [15:0] mul_ln101_1_fu_2473_p00;
wire   [15:0] mul_ln101_fu_1635_p00;
wire   [15:0] mul_ln114_1_fu_2482_p00;
wire   [15:0] mul_ln114_fu_1644_p00;
wire   [15:0] mul_ln127_1_fu_2491_p00;
wire   [15:0] mul_ln127_fu_1653_p00;
wire   [15:0] mul_ln140_1_fu_2539_p00;
wire   [15:0] mul_ln140_fu_1701_p00;
wire   [15:0] mul_ln34_1_fu_2428_p00;
wire   [15:0] mul_ln34_fu_1590_p00;
wire   [14:0] mul_ln38_fu_892_p00;
wire   [15:0] mul_ln49_1_fu_2437_p00;
wire   [15:0] mul_ln49_fu_1599_p00;
wire   [15:0] mul_ln62_1_fu_2446_p00;
wire   [15:0] mul_ln62_fu_1608_p00;
wire   [15:0] mul_ln75_1_fu_2455_p00;
wire   [15:0] mul_ln75_fu_1617_p00;
wire   [15:0] mul_ln88_1_fu_2464_p00;
wire   [15:0] mul_ln88_fu_1626_p00;
wire   [2:0] v11_fu_997_p1;
wire   [2:0] v11_fu_997_p3;
wire  signed [2:0] v11_fu_997_p5;
wire  signed [2:0] v11_fu_997_p7;
wire   [2:0] v24_fu_1122_p1;
wire   [2:0] v24_fu_1122_p3;
wire  signed [2:0] v24_fu_1122_p5;
wire  signed [2:0] v24_fu_1122_p7;
wire   [2:0] v35_2_fu_1161_p1;
wire   [2:0] v35_2_fu_1161_p3;
wire  signed [2:0] v35_2_fu_1161_p5;
wire  signed [2:0] v35_2_fu_1161_p7;
wire   [2:0] v46_2_fu_1286_p1;
wire   [2:0] v46_2_fu_1286_p3;
wire  signed [2:0] v46_2_fu_1286_p5;
wire  signed [2:0] v46_2_fu_1286_p7;
wire   [2:0] v57_2_fu_1325_p1;
wire   [2:0] v57_2_fu_1325_p3;
wire  signed [2:0] v57_2_fu_1325_p5;
wire  signed [2:0] v57_2_fu_1325_p7;
wire   [2:0] v68_2_fu_1450_p1;
wire   [2:0] v68_2_fu_1450_p3;
wire  signed [2:0] v68_2_fu_1450_p5;
wire  signed [2:0] v68_2_fu_1450_p7;
wire   [2:0] v79_2_fu_1489_p1;
wire   [2:0] v79_2_fu_1489_p3;
wire  signed [2:0] v79_2_fu_1489_p5;
wire  signed [2:0] v79_2_fu_1489_p7;
wire   [2:0] v90_2_fu_1675_p1;
wire   [2:0] v90_2_fu_1675_p3;
wire  signed [2:0] v90_2_fu_1675_p5;
wire  signed [2:0] v90_2_fu_1675_p7;
wire   [2:0] v101_2_fu_1723_p1;
wire   [2:0] v101_2_fu_1723_p3;
wire  signed [2:0] v101_2_fu_1723_p5;
wire  signed [2:0] v101_2_fu_1723_p7;
wire   [2:0] v11_1_fu_1835_p1;
wire   [2:0] v11_1_fu_1835_p3;
wire  signed [2:0] v11_1_fu_1835_p5;
wire  signed [2:0] v11_1_fu_1835_p7;
wire   [2:0] v24_1_fu_1960_p1;
wire   [2:0] v24_1_fu_1960_p3;
wire  signed [2:0] v24_1_fu_1960_p5;
wire  signed [2:0] v24_1_fu_1960_p7;
wire   [2:0] v35_1_fu_1999_p1;
wire   [2:0] v35_1_fu_1999_p3;
wire  signed [2:0] v35_1_fu_1999_p5;
wire  signed [2:0] v35_1_fu_1999_p7;
wire   [2:0] v46_1_fu_2124_p1;
wire   [2:0] v46_1_fu_2124_p3;
wire  signed [2:0] v46_1_fu_2124_p5;
wire  signed [2:0] v46_1_fu_2124_p7;
wire   [2:0] v57_1_fu_2163_p1;
wire   [2:0] v57_1_fu_2163_p3;
wire  signed [2:0] v57_1_fu_2163_p5;
wire  signed [2:0] v57_1_fu_2163_p7;
wire   [2:0] v68_1_fu_2288_p1;
wire   [2:0] v68_1_fu_2288_p3;
wire  signed [2:0] v68_1_fu_2288_p5;
wire  signed [2:0] v68_1_fu_2288_p7;
wire   [2:0] v79_1_fu_2327_p1;
wire   [2:0] v79_1_fu_2327_p3;
wire  signed [2:0] v79_1_fu_2327_p5;
wire  signed [2:0] v79_1_fu_2327_p7;
wire   [2:0] v90_1_fu_2513_p1;
wire   [2:0] v90_1_fu_2513_p3;
wire  signed [2:0] v90_1_fu_2513_p5;
wire  signed [2:0] v90_1_fu_2513_p7;
wire   [2:0] v101_1_fu_2561_p1;
wire   [2:0] v101_1_fu_2561_p3;
wire  signed [2:0] v101_1_fu_2561_p5;
wire  signed [2:0] v101_1_fu_2561_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_start_reg = 1'b0;
#0 v5_fu_116 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_804(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_d1),.v229_q1(v229_q1),.mul_ln38(mul_ln38_reg_2624),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_ce1),.v228_0_q1(v228_0_q1),.mul_ln34(mul_ln34_reg_2936),.mul_ln49(mul_ln49_reg_2941),.mul_ln62(mul_ln62_reg_2946),.mul_ln75(mul_ln75_reg_2951),.mul_ln88(mul_ln88_reg_2956),.mul_ln101(mul_ln101_reg_2961),.mul_ln114(mul_ln114_reg_2966),.mul_ln127(mul_ln127_reg_2971),.mul_ln140(mul_ln140_reg_2981),.v4(v4),.cmp11(cmp11_reg_2652),.v11(v11_reg_2699),.v24(v24_reg_2758),.v35_2(v35_2_reg_2763),.v46_2(v46_2_reg_2822),.v57_2(v57_2_reg_2827),.v68_2(v68_2_reg_2886),.v79_2(v79_2_reg_2891),.v90_2(v90_2_reg_2976),.v101_2(v101_2_reg_2986),.grp_fu_3325_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3325_p_din0),.grp_fu_3325_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3325_p_din1),.grp_fu_3325_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3325_p_opcode),.grp_fu_3325_p_dout0(grp_fu_168_p_dout0),.grp_fu_3325_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3325_p_ce),.grp_fu_3329_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3329_p_din0),.grp_fu_3329_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3329_p_din1),.grp_fu_3329_p_dout0(grp_fu_172_p_dout0),.grp_fu_3329_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3329_p_ce),.grp_fu_3333_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3333_p_din0),.grp_fu_3333_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3333_p_din1),.grp_fu_3333_p_dout0(grp_fu_176_p_dout0),.grp_fu_3333_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3333_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_24 grp_kernel_2mm_node0_Pipeline_label_24_fu_833(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_d1),.v229_q1(v229_q1),.mul_ln38(mul_ln38_reg_2624),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v228_1_ce1),.v228_1_q1(v228_1_q1),.mul_ln34_1(mul_ln34_1_reg_3270),.mul_ln49_1(mul_ln49_1_reg_3275),.mul_ln62_1(mul_ln62_1_reg_3280),.mul_ln75_1(mul_ln75_1_reg_3285),.mul_ln88_1(mul_ln88_1_reg_3290),.mul_ln101_1(mul_ln101_1_reg_3295),.mul_ln114_1(mul_ln114_1_reg_3300),.mul_ln127_1(mul_ln127_1_reg_3305),.mul_ln140_1(mul_ln140_1_reg_3315),.v11_1(v11_1_reg_3033),.v24_1(v24_1_reg_3092),.v35_1(v35_1_reg_3097),.v46_1(v46_1_reg_3156),.v57_1(v57_1_reg_3161),.v68_1(v68_1_reg_3220),.v79_1(v79_1_reg_3225),.v90_1(v90_1_reg_3310),.v101_1(v101_1_reg_3320),.grp_fu_3325_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3325_p_din0),.grp_fu_3325_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3325_p_din1),.grp_fu_3325_p_opcode(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3325_p_opcode),.grp_fu_3325_p_dout0(grp_fu_168_p_dout0),.grp_fu_3325_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3325_p_ce),.grp_fu_3329_p_din0(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3329_p_din0),.grp_fu_3329_p_din1(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3329_p_din1),.grp_fu_3329_p_dout0(grp_fu_172_p_dout0),.grp_fu_3329_p_ce(grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3329_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U214(.din0(mul_ln38_fu_892_p0),.din1(mul_ln38_fu_892_p1),.dout(mul_ln38_fu_892_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U215(.din0(v11_fu_997_p2),.din1(v11_fu_997_p4),.din2(v11_fu_997_p6),.din3(v11_fu_997_p8),.def(v11_fu_997_p9),.sel(trunc_ln31_reg_2602),.dout(v11_fu_997_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U216(.din0(v24_fu_1122_p2),.din1(v24_fu_1122_p4),.din2(v24_fu_1122_p6),.din3(v24_fu_1122_p8),.def(v24_fu_1122_p9),.sel(trunc_ln31_reg_2602),.dout(v24_fu_1122_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U217(.din0(v35_2_fu_1161_p2),.din1(v35_2_fu_1161_p4),.din2(v35_2_fu_1161_p6),.din3(v35_2_fu_1161_p8),.def(v35_2_fu_1161_p9),.sel(trunc_ln31_reg_2602),.dout(v35_2_fu_1161_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U218(.din0(v46_2_fu_1286_p2),.din1(v46_2_fu_1286_p4),.din2(v46_2_fu_1286_p6),.din3(v46_2_fu_1286_p8),.def(v46_2_fu_1286_p9),.sel(trunc_ln31_reg_2602),.dout(v46_2_fu_1286_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U219(.din0(v57_2_fu_1325_p2),.din1(v57_2_fu_1325_p4),.din2(v57_2_fu_1325_p6),.din3(v57_2_fu_1325_p8),.def(v57_2_fu_1325_p9),.sel(trunc_ln31_reg_2602),.dout(v57_2_fu_1325_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U220(.din0(v68_2_fu_1450_p2),.din1(v68_2_fu_1450_p4),.din2(v68_2_fu_1450_p6),.din3(v68_2_fu_1450_p8),.def(v68_2_fu_1450_p9),.sel(trunc_ln31_reg_2602),.dout(v68_2_fu_1450_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U221(.din0(v79_2_fu_1489_p2),.din1(v79_2_fu_1489_p4),.din2(v79_2_fu_1489_p6),.din3(v79_2_fu_1489_p8),.def(v79_2_fu_1489_p9),.sel(trunc_ln31_reg_2602),.dout(v79_2_fu_1489_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U222(.din0(mul_ln34_fu_1590_p0),.din1(mul_ln34_fu_1590_p1),.dout(mul_ln34_fu_1590_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U223(.din0(mul_ln49_fu_1599_p0),.din1(mul_ln49_fu_1599_p1),.dout(mul_ln49_fu_1599_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U224(.din0(mul_ln62_fu_1608_p0),.din1(mul_ln62_fu_1608_p1),.dout(mul_ln62_fu_1608_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U225(.din0(mul_ln75_fu_1617_p0),.din1(mul_ln75_fu_1617_p1),.dout(mul_ln75_fu_1617_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U226(.din0(mul_ln88_fu_1626_p0),.din1(mul_ln88_fu_1626_p1),.dout(mul_ln88_fu_1626_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U227(.din0(mul_ln101_fu_1635_p0),.din1(mul_ln101_fu_1635_p1),.dout(mul_ln101_fu_1635_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U228(.din0(mul_ln114_fu_1644_p0),.din1(mul_ln114_fu_1644_p1),.dout(mul_ln114_fu_1644_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U229(.din0(mul_ln127_fu_1653_p0),.din1(mul_ln127_fu_1653_p1),.dout(mul_ln127_fu_1653_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U230(.din0(v90_2_fu_1675_p2),.din1(v90_2_fu_1675_p4),.din2(v90_2_fu_1675_p6),.din3(v90_2_fu_1675_p8),.def(v90_2_fu_1675_p9),.sel(trunc_ln31_reg_2602),.dout(v90_2_fu_1675_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U231(.din0(mul_ln140_fu_1701_p0),.din1(mul_ln140_fu_1701_p1),.dout(mul_ln140_fu_1701_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U232(.din0(v101_2_fu_1723_p2),.din1(v101_2_fu_1723_p4),.din2(v101_2_fu_1723_p6),.din3(v101_2_fu_1723_p8),.def(v101_2_fu_1723_p9),.sel(trunc_ln31_reg_2602),.dout(v101_2_fu_1723_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U233(.din0(v11_1_fu_1835_p2),.din1(v11_1_fu_1835_p4),.din2(v11_1_fu_1835_p6),.din3(v11_1_fu_1835_p8),.def(v11_1_fu_1835_p9),.sel(trunc_ln31_reg_2602),.dout(v11_1_fu_1835_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U234(.din0(v24_1_fu_1960_p2),.din1(v24_1_fu_1960_p4),.din2(v24_1_fu_1960_p6),.din3(v24_1_fu_1960_p8),.def(v24_1_fu_1960_p9),.sel(trunc_ln31_reg_2602),.dout(v24_1_fu_1960_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U235(.din0(v35_1_fu_1999_p2),.din1(v35_1_fu_1999_p4),.din2(v35_1_fu_1999_p6),.din3(v35_1_fu_1999_p8),.def(v35_1_fu_1999_p9),.sel(trunc_ln31_reg_2602),.dout(v35_1_fu_1999_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U236(.din0(v46_1_fu_2124_p2),.din1(v46_1_fu_2124_p4),.din2(v46_1_fu_2124_p6),.din3(v46_1_fu_2124_p8),.def(v46_1_fu_2124_p9),.sel(trunc_ln31_reg_2602),.dout(v46_1_fu_2124_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U237(.din0(v57_1_fu_2163_p2),.din1(v57_1_fu_2163_p4),.din2(v57_1_fu_2163_p6),.din3(v57_1_fu_2163_p8),.def(v57_1_fu_2163_p9),.sel(trunc_ln31_reg_2602),.dout(v57_1_fu_2163_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U238(.din0(v68_1_fu_2288_p2),.din1(v68_1_fu_2288_p4),.din2(v68_1_fu_2288_p6),.din3(v68_1_fu_2288_p8),.def(v68_1_fu_2288_p9),.sel(trunc_ln31_reg_2602),.dout(v68_1_fu_2288_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U239(.din0(v79_1_fu_2327_p2),.din1(v79_1_fu_2327_p4),.din2(v79_1_fu_2327_p6),.din3(v79_1_fu_2327_p8),.def(v79_1_fu_2327_p9),.sel(trunc_ln31_reg_2602),.dout(v79_1_fu_2327_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U240(.din0(mul_ln34_1_fu_2428_p0),.din1(mul_ln34_1_fu_2428_p1),.dout(mul_ln34_1_fu_2428_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U241(.din0(mul_ln49_1_fu_2437_p0),.din1(mul_ln49_1_fu_2437_p1),.dout(mul_ln49_1_fu_2437_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U242(.din0(mul_ln62_1_fu_2446_p0),.din1(mul_ln62_1_fu_2446_p1),.dout(mul_ln62_1_fu_2446_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U243(.din0(mul_ln75_1_fu_2455_p0),.din1(mul_ln75_1_fu_2455_p1),.dout(mul_ln75_1_fu_2455_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U244(.din0(mul_ln88_1_fu_2464_p0),.din1(mul_ln88_1_fu_2464_p1),.dout(mul_ln88_1_fu_2464_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U245(.din0(mul_ln101_1_fu_2473_p0),.din1(mul_ln101_1_fu_2473_p1),.dout(mul_ln101_1_fu_2473_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U246(.din0(mul_ln114_1_fu_2482_p0),.din1(mul_ln114_1_fu_2482_p1),.dout(mul_ln114_1_fu_2482_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U247(.din0(mul_ln127_1_fu_2491_p0),.din1(mul_ln127_1_fu_2491_p1),.dout(mul_ln127_1_fu_2491_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U248(.din0(v90_1_fu_2513_p2),.din1(v90_1_fu_2513_p4),.din2(v90_1_fu_2513_p6),.din3(v90_1_fu_2513_p8),.def(v90_1_fu_2513_p9),.sel(trunc_ln31_reg_2602),.dout(v90_1_fu_2513_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U249(.din0(mul_ln140_1_fu_2539_p0),.din1(mul_ln140_1_fu_2539_p1),.dout(mul_ln140_1_fu_2539_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U250(.din0(v101_1_fu_2561_p2),.din1(v101_1_fu_2561_p4),.din2(v101_1_fu_2561_p6),.din3(v101_1_fu_2561_p8),.def(v101_1_fu_2561_p9),.sel(trunc_ln31_reg_2602),.dout(v101_1_fu_2561_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_116 <= 8'd0;
    end else if (((icmp_ln32_1_fu_1746_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        v5_fu_116 <= add_ln31_fu_1809_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln32_fu_918_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v6_1_reg_792 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
        v6_1_reg_792 <= add_ln32_1_reg_3028;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v6_reg_780 <= add_ln32_reg_2694;
    end else if (((icmp_ln31_fu_868_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_780 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        add_ln32_1_reg_3028 <= add_ln32_1_fu_1803_p2;
        empty_139_reg_3014 <= empty_139_fu_1791_p2;
        empty_146_reg_3021 <= empty_146_fu_1797_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_2694 <= add_ln32_fu_975_p2;
        empty_77_reg_2680 <= empty_77_fu_963_p2;
        empty_84_reg_2687 <= empty_84_fu_969_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_2652 <= cmp11_fu_912_p2;
        mul_ln38_reg_2624 <= mul_ln38_fu_892_p2;
        trunc_ln31_reg_2602 <= trunc_ln31_fu_874_p1;
        zext_ln31_reg_2630[4 : 0] <= zext_ln31_fu_908_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_105_reg_2808 <= empty_105_fu_1258_p2;
        empty_112_reg_2815 <= empty_112_fu_1264_p2;
        v24_reg_2758 <= v24_fu_1122_p11;
        v35_2_reg_2763 <= v35_2_fu_1161_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_119_reg_2872 <= empty_119_fu_1422_p2;
        empty_126_reg_2879 <= empty_126_fu_1428_p2;
        v46_2_reg_2822 <= v46_2_fu_1286_p11;
        v57_2_reg_2827 <= v57_2_fu_1325_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        empty_153_reg_3078 <= empty_153_fu_1932_p2;
        empty_160_reg_3085 <= empty_160_fu_1938_p2;
        v11_1_reg_3033 <= v11_1_fu_1835_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        empty_167_reg_3142 <= empty_167_fu_2096_p2;
        empty_174_reg_3149 <= empty_174_fu_2102_p2;
        v24_1_reg_3092 <= v24_1_fu_1960_p11;
        v35_1_reg_3097 <= v35_1_fu_1999_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        empty_181_reg_3206 <= empty_181_fu_2260_p2;
        empty_188_reg_3213 <= empty_188_fu_2266_p2;
        v46_1_reg_3156 <= v46_1_fu_2124_p11;
        v57_1_reg_3161 <= v57_1_fu_2163_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_91_reg_2744 <= empty_91_fu_1094_p2;
        empty_98_reg_2751 <= empty_98_fu_1100_p2;
        v11_reg_2699 <= v11_fu_997_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        mul_ln101_1_reg_3295 <= mul_ln101_1_fu_2473_p2;
        mul_ln114_1_reg_3300 <= mul_ln114_1_fu_2482_p2;
        mul_ln127_1_reg_3305 <= mul_ln127_1_fu_2491_p2;
        mul_ln140_1_reg_3315 <= mul_ln140_1_fu_2539_p2;
        mul_ln34_1_reg_3270 <= mul_ln34_1_fu_2428_p2;
        mul_ln49_1_reg_3275 <= mul_ln49_1_fu_2437_p2;
        mul_ln62_1_reg_3280 <= mul_ln62_1_fu_2446_p2;
        mul_ln75_1_reg_3285 <= mul_ln75_1_fu_2455_p2;
        mul_ln88_1_reg_3290 <= mul_ln88_1_fu_2464_p2;
        v101_1_reg_3320 <= v101_1_fu_2561_p11;
        v90_1_reg_3310 <= v90_1_fu_2513_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln101_reg_2961 <= mul_ln101_fu_1635_p2;
        mul_ln114_reg_2966 <= mul_ln114_fu_1644_p2;
        mul_ln127_reg_2971 <= mul_ln127_fu_1653_p2;
        mul_ln140_reg_2981 <= mul_ln140_fu_1701_p2;
        mul_ln34_reg_2936 <= mul_ln34_fu_1590_p2;
        mul_ln49_reg_2941 <= mul_ln49_fu_1599_p2;
        mul_ln62_reg_2946 <= mul_ln62_fu_1608_p2;
        mul_ln75_reg_2951 <= mul_ln75_fu_1617_p2;
        mul_ln88_reg_2956 <= mul_ln88_fu_1626_p2;
        v101_2_reg_2986 <= v101_2_fu_1723_p11;
        v90_2_reg_2976 <= v90_2_fu_1675_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v68_1_reg_3220 <= v68_1_fu_2288_p11;
        v79_1_reg_3225 <= v79_1_fu_2327_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v68_2_reg_2886 <= v68_2_fu_1450_p11;
        v79_2_reg_2891 <= v79_2_fu_1489_p11;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
assign ap_ST_fsm_state17_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_done == 1'b0)) begin
        ap_ST_fsm_state18_blk = 1'b1;
    end else begin
        ap_ST_fsm_state18_blk = 1'b0;
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln31_fu_868_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2)))) begin
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
    if (((icmp_ln31_fu_868_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3325_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3325_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3325_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3325_p_ce;
    end else begin
        grp_fu_3325_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3325_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3325_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3325_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3325_p_din0;
    end else begin
        grp_fu_3325_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3325_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3325_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3325_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3325_p_din1;
    end else begin
        grp_fu_3325_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3329_ce = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3329_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3329_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3329_p_ce;
    end else begin
        grp_fu_3329_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3329_p0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3329_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3329_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3329_p_din0;
    end else begin
        grp_fu_3329_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_3329_p1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_grp_fu_3329_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3329_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3329_p_din1;
    end else begin
        grp_fu_3329_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_3333_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3333_p_ce;
    end else begin
        grp_fu_3333_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast1436_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast1434_fu_1377_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast1432_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast1431_fu_1086_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast1430_fu_955_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast1437_fu_1578_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast1435_fu_1414_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast1433_fu_1250_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast_fu_1049_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_1_address0_local = p_cast1445_fu_2379_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address0_local = p_cast1443_fu_2215_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address0_local = p_cast1441_fu_2051_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address0_local = p_cast1440_fu_1924_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address0_local = p_cast1438_fu_1783_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_1_address1_local = p_cast1446_fu_2416_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address1_local = p_cast1444_fu_2252_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_1_address1_local = p_cast1442_fu_2088_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_1_address1_local = p_cast1439_fu_1887_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address0_local = p_cast1436_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast1434_fu_1377_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast1432_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast1431_fu_1086_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast1430_fu_955_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast1437_fu_1578_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast1435_fu_1414_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast1433_fu_1250_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast_fu_1049_p1;
    end else begin
        v224_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_2_ce0_local = 1'b1;
    end else begin
        v224_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_2_ce1_local = 1'b1;
    end else begin
        v224_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_3_address0_local = p_cast1445_fu_2379_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_3_address0_local = p_cast1443_fu_2215_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_3_address0_local = p_cast1441_fu_2051_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_3_address0_local = p_cast1440_fu_1924_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address0_local = p_cast1438_fu_1783_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_3_address1_local = p_cast1446_fu_2416_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_3_address1_local = p_cast1444_fu_2252_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_3_address1_local = p_cast1442_fu_2088_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_3_address1_local = p_cast1439_fu_1887_p1;
    end else begin
        v224_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        v224_3_ce0_local = 1'b1;
    end else begin
        v224_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        v224_3_ce1_local = 1'b1;
    end else begin
        v224_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_4_address0_local = p_cast1436_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_4_address0_local = p_cast1434_fu_1377_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_4_address0_local = p_cast1432_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_4_address0_local = p_cast1431_fu_1086_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_4_address0_local = p_cast1430_fu_955_p1;
    end else begin
        v224_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_4_address1_local = p_cast1437_fu_1578_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_4_address1_local = p_cast1435_fu_1414_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_4_address1_local = p_cast1433_fu_1250_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_4_address1_local = p_cast_fu_1049_p1;
    end else begin
        v224_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_4_ce0_local = 1'b1;
    end else begin
        v224_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_4_ce1_local = 1'b1;
    end else begin
        v224_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_5_address0_local = p_cast1445_fu_2379_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_5_address0_local = p_cast1443_fu_2215_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_5_address0_local = p_cast1441_fu_2051_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_5_address0_local = p_cast1440_fu_1924_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_5_address0_local = p_cast1438_fu_1783_p1;
    end else begin
        v224_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_5_address1_local = p_cast1446_fu_2416_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_5_address1_local = p_cast1444_fu_2252_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_5_address1_local = p_cast1442_fu_2088_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_5_address1_local = p_cast1439_fu_1887_p1;
    end else begin
        v224_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        v224_5_ce0_local = 1'b1;
    end else begin
        v224_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        v224_5_ce1_local = 1'b1;
    end else begin
        v224_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_6_address0_local = p_cast1436_fu_1541_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_6_address0_local = p_cast1434_fu_1377_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_6_address0_local = p_cast1432_fu_1213_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_6_address0_local = p_cast1431_fu_1086_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_6_address0_local = p_cast1430_fu_955_p1;
    end else begin
        v224_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_6_address1_local = p_cast1437_fu_1578_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_6_address1_local = p_cast1435_fu_1414_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_6_address1_local = p_cast1433_fu_1250_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_6_address1_local = p_cast_fu_1049_p1;
    end else begin
        v224_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_6_ce0_local = 1'b1;
    end else begin
        v224_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_6_ce1_local = 1'b1;
    end else begin
        v224_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_7_address0_local = p_cast1445_fu_2379_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_7_address0_local = p_cast1443_fu_2215_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_7_address0_local = p_cast1441_fu_2051_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_7_address0_local = p_cast1440_fu_1924_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_7_address0_local = p_cast1438_fu_1783_p1;
    end else begin
        v224_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        v224_7_address1_local = p_cast1446_fu_2416_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_7_address1_local = p_cast1444_fu_2252_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v224_7_address1_local = p_cast1442_fu_2088_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_7_address1_local = p_cast1439_fu_1887_p1;
    end else begin
        v224_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11))) begin
        v224_7_ce0_local = 1'b1;
    end else begin
        v224_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12))) begin
        v224_7_ce1_local = 1'b1;
    end else begin
        v224_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_we1;
    end else begin
        v229_we1 = 1'b0;
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
            if (((icmp_ln31_fu_868_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_918_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((icmp_ln32_1_fu_1746_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
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
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_1809_p2 = (v5_fu_116 + 8'd2);
assign add_ln32_1_fu_1803_p2 = (v6_1_reg_792 + 8'd9);
assign add_ln32_fu_975_p2 = (v6_reg_780 + 8'd9);
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
assign cmp11_fu_912_p2 = ((v5_fu_116 == 8'd0) ? 1'b1 : 1'b0);
assign empty_100_fu_1245_p2 = (empty_99_fu_1239_p2 + zext_ln31_reg_2630);
assign empty_105_fu_1258_p2 = (v6_reg_780 + 8'd5);
assign empty_106_fu_1366_p2 = (p_shl6_fu_1348_p3 - p_shl1529_fu_1362_p1);
assign empty_107_fu_1372_p2 = (empty_106_fu_1366_p2 + zext_ln31_reg_2630);
assign empty_112_fu_1264_p2 = (v6_reg_780 + 8'd6);
assign empty_113_fu_1403_p2 = (p_shl7_fu_1385_p3 - p_shl1527_fu_1399_p1);
assign empty_114_fu_1409_p2 = (empty_113_fu_1403_p2 + zext_ln31_reg_2630);
assign empty_119_fu_1422_p2 = (v6_reg_780 + 8'd7);
assign empty_120_fu_1530_p2 = (p_shl8_fu_1512_p3 - p_shl1525_fu_1526_p1);
assign empty_121_fu_1536_p2 = (empty_120_fu_1530_p2 + zext_ln31_reg_2630);
assign empty_126_fu_1428_p2 = (v6_reg_780 + 8'd8);
assign empty_127_fu_1567_p2 = (p_shl9_fu_1549_p3 - p_shl1523_fu_1563_p1);
assign empty_128_fu_1573_p2 = (empty_127_fu_1567_p2 + zext_ln31_reg_2630);
assign empty_133_fu_1772_p2 = (p_shl10_fu_1752_p3 - p_shl1521_fu_1768_p1);
assign empty_134_fu_1778_p2 = (empty_133_fu_1772_p2 + zext_ln31_reg_2630);
assign empty_139_fu_1791_p2 = (v6_1_reg_792 + 8'd1);
assign empty_140_fu_1876_p2 = (p_shl11_fu_1858_p3 - p_shl1519_fu_1872_p1);
assign empty_141_fu_1882_p2 = (empty_140_fu_1876_p2 + zext_ln31_reg_2630);
assign empty_146_fu_1797_p2 = (v6_1_reg_792 + 8'd2);
assign empty_147_fu_1913_p2 = (p_shl12_fu_1895_p3 - p_shl1517_fu_1909_p1);
assign empty_148_fu_1919_p2 = (empty_147_fu_1913_p2 + zext_ln31_reg_2630);
assign empty_153_fu_1932_p2 = (v6_1_reg_792 + 8'd3);
assign empty_154_fu_2040_p2 = (p_shl13_fu_2022_p3 - p_shl1515_fu_2036_p1);
assign empty_155_fu_2046_p2 = (empty_154_fu_2040_p2 + zext_ln31_reg_2630);
assign empty_160_fu_1938_p2 = (v6_1_reg_792 + 8'd4);
assign empty_161_fu_2077_p2 = (p_shl14_fu_2059_p3 - p_shl1513_fu_2073_p1);
assign empty_162_fu_2083_p2 = (empty_161_fu_2077_p2 + zext_ln31_reg_2630);
assign empty_167_fu_2096_p2 = (v6_1_reg_792 + 8'd5);
assign empty_168_fu_2204_p2 = (p_shl15_fu_2186_p3 - p_shl1511_fu_2200_p1);
assign empty_169_fu_2210_p2 = (empty_168_fu_2204_p2 + zext_ln31_reg_2630);
assign empty_174_fu_2102_p2 = (v6_1_reg_792 + 8'd6);
assign empty_175_fu_2241_p2 = (p_shl16_fu_2223_p3 - p_shl1509_fu_2237_p1);
assign empty_176_fu_2247_p2 = (empty_175_fu_2241_p2 + zext_ln31_reg_2630);
assign empty_181_fu_2260_p2 = (v6_1_reg_792 + 8'd7);
assign empty_182_fu_2368_p2 = (p_shl17_fu_2350_p3 - p_shl1507_fu_2364_p1);
assign empty_183_fu_2374_p2 = (empty_182_fu_2368_p2 + zext_ln31_reg_2630);
assign empty_188_fu_2266_p2 = (v6_1_reg_792 + 8'd8);
assign empty_189_fu_2405_p2 = (p_shl_fu_2387_p3 - p_shl1505_fu_2401_p1);
assign empty_190_fu_2411_p2 = (empty_189_fu_2405_p2 + zext_ln31_reg_2630);
assign empty_72_fu_950_p2 = (empty_fu_944_p2 + zext_ln31_reg_2630);
assign empty_77_fu_963_p2 = (v6_reg_780 + 8'd1);
assign empty_78_fu_1038_p2 = (p_shl2_fu_1020_p3 - p_shl1537_fu_1034_p1);
assign empty_79_fu_1044_p2 = (empty_78_fu_1038_p2 + zext_ln31_reg_2630);
assign empty_84_fu_969_p2 = (v6_reg_780 + 8'd2);
assign empty_85_fu_1075_p2 = (p_shl3_fu_1057_p3 - p_shl1535_fu_1071_p1);
assign empty_86_fu_1081_p2 = (empty_85_fu_1075_p2 + zext_ln31_reg_2630);
assign empty_91_fu_1094_p2 = (v6_reg_780 + 8'd3);
assign empty_92_fu_1202_p2 = (p_shl4_fu_1184_p3 - p_shl1533_fu_1198_p1);
assign empty_93_fu_1208_p2 = (empty_92_fu_1202_p2 + zext_ln31_reg_2630);
assign empty_98_fu_1100_p2 = (v6_reg_780 + 8'd4);
assign empty_99_fu_1239_p2 = (p_shl5_fu_1221_p3 - p_shl1531_fu_1235_p1);
assign empty_fu_944_p2 = (p_shl1_fu_924_p3 - p_shl1539_fu_940_p1);
assign grp_fu_168_p_ce = grp_fu_3325_ce;
assign grp_fu_168_p_din0 = grp_fu_3325_p0;
assign grp_fu_168_p_din1 = grp_fu_3325_p1;
assign grp_fu_168_p_opcode = 2'd0;
assign grp_fu_172_p_ce = grp_fu_3329_ce;
assign grp_fu_172_p_din0 = grp_fu_3329_p0;
assign grp_fu_172_p_din1 = grp_fu_3329_p1;
assign grp_fu_176_p_ce = grp_fu_3333_ce;
assign grp_fu_176_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3333_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_3333_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_start = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start_reg;
assign icmp_ln31_fu_868_p2 = ((v5_fu_116 < 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_1_fu_1746_p2 = ((v6_1_reg_792 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_918_p2 = ((v6_reg_780 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln31_1_fu_898_p4 = {{v5_fu_116[7:3]}};
assign lshr_ln_fu_878_p4 = {{v5_fu_116[7:1]}};
assign mul_ln101_1_fu_2473_p0 = mul_ln101_1_fu_2473_p00;
assign mul_ln101_1_fu_2473_p00 = empty_167_reg_3142;
assign mul_ln101_1_fu_2473_p1 = 16'd220;
assign mul_ln101_fu_1635_p0 = mul_ln101_fu_1635_p00;
assign mul_ln101_fu_1635_p00 = empty_105_reg_2808;
assign mul_ln101_fu_1635_p1 = 16'd220;
assign mul_ln114_1_fu_2482_p0 = mul_ln114_1_fu_2482_p00;
assign mul_ln114_1_fu_2482_p00 = empty_174_reg_3149;
assign mul_ln114_1_fu_2482_p1 = 16'd220;
assign mul_ln114_fu_1644_p0 = mul_ln114_fu_1644_p00;
assign mul_ln114_fu_1644_p00 = empty_112_reg_2815;
assign mul_ln114_fu_1644_p1 = 16'd220;
assign mul_ln127_1_fu_2491_p0 = mul_ln127_1_fu_2491_p00;
assign mul_ln127_1_fu_2491_p00 = empty_181_reg_3206;
assign mul_ln127_1_fu_2491_p1 = 16'd220;
assign mul_ln127_fu_1653_p0 = mul_ln127_fu_1653_p00;
assign mul_ln127_fu_1653_p00 = empty_119_reg_2872;
assign mul_ln127_fu_1653_p1 = 16'd220;
assign mul_ln140_1_fu_2539_p0 = mul_ln140_1_fu_2539_p00;
assign mul_ln140_1_fu_2539_p00 = empty_188_reg_3213;
assign mul_ln140_1_fu_2539_p1 = 16'd220;
assign mul_ln140_fu_1701_p0 = mul_ln140_fu_1701_p00;
assign mul_ln140_fu_1701_p00 = empty_126_reg_2879;
assign mul_ln140_fu_1701_p1 = 16'd220;
assign mul_ln34_1_fu_2428_p0 = mul_ln34_1_fu_2428_p00;
assign mul_ln34_1_fu_2428_p00 = v6_1_reg_792;
assign mul_ln34_1_fu_2428_p1 = 16'd220;
assign mul_ln34_fu_1590_p0 = mul_ln34_fu_1590_p00;
assign mul_ln34_fu_1590_p00 = v6_reg_780;
assign mul_ln34_fu_1590_p1 = 16'd220;
assign mul_ln38_fu_892_p0 = mul_ln38_fu_892_p00;
assign mul_ln38_fu_892_p00 = lshr_ln_fu_878_p4;
assign mul_ln38_fu_892_p1 = 15'd220;
assign mul_ln49_1_fu_2437_p0 = mul_ln49_1_fu_2437_p00;
assign mul_ln49_1_fu_2437_p00 = empty_139_reg_3014;
assign mul_ln49_1_fu_2437_p1 = 16'd220;
assign mul_ln49_fu_1599_p0 = mul_ln49_fu_1599_p00;
assign mul_ln49_fu_1599_p00 = empty_77_reg_2680;
assign mul_ln49_fu_1599_p1 = 16'd220;
assign mul_ln62_1_fu_2446_p0 = mul_ln62_1_fu_2446_p00;
assign mul_ln62_1_fu_2446_p00 = empty_146_reg_3021;
assign mul_ln62_1_fu_2446_p1 = 16'd220;
assign mul_ln62_fu_1608_p0 = mul_ln62_fu_1608_p00;
assign mul_ln62_fu_1608_p00 = empty_84_reg_2687;
assign mul_ln62_fu_1608_p1 = 16'd220;
assign mul_ln75_1_fu_2455_p0 = mul_ln75_1_fu_2455_p00;
assign mul_ln75_1_fu_2455_p00 = empty_153_reg_3078;
assign mul_ln75_1_fu_2455_p1 = 16'd220;
assign mul_ln75_fu_1617_p0 = mul_ln75_fu_1617_p00;
assign mul_ln75_fu_1617_p00 = empty_91_reg_2744;
assign mul_ln75_fu_1617_p1 = 16'd220;
assign mul_ln88_1_fu_2464_p0 = mul_ln88_1_fu_2464_p00;
assign mul_ln88_1_fu_2464_p00 = empty_160_reg_3085;
assign mul_ln88_1_fu_2464_p1 = 16'd220;
assign mul_ln88_fu_1626_p0 = mul_ln88_fu_1626_p00;
assign mul_ln88_fu_1626_p00 = empty_98_reg_2751;
assign mul_ln88_fu_1626_p1 = 16'd220;
assign p_cast1430_fu_955_p1 = empty_72_fu_950_p2;
assign p_cast1431_fu_1086_p1 = empty_86_fu_1081_p2;
assign p_cast1432_fu_1213_p1 = empty_93_fu_1208_p2;
assign p_cast1433_fu_1250_p1 = empty_100_fu_1245_p2;
assign p_cast1434_fu_1377_p1 = empty_107_fu_1372_p2;
assign p_cast1435_fu_1414_p1 = empty_114_fu_1409_p2;
assign p_cast1436_fu_1541_p1 = empty_121_fu_1536_p2;
assign p_cast1437_fu_1578_p1 = empty_128_fu_1573_p2;
assign p_cast1438_fu_1783_p1 = empty_134_fu_1778_p2;
assign p_cast1439_fu_1887_p1 = empty_141_fu_1882_p2;
assign p_cast1440_fu_1924_p1 = empty_148_fu_1919_p2;
assign p_cast1441_fu_2051_p1 = empty_155_fu_2046_p2;
assign p_cast1442_fu_2088_p1 = empty_162_fu_2083_p2;
assign p_cast1443_fu_2215_p1 = empty_169_fu_2210_p2;
assign p_cast1444_fu_2252_p1 = empty_176_fu_2247_p2;
assign p_cast1445_fu_2379_p1 = empty_183_fu_2374_p2;
assign p_cast1446_fu_2416_p1 = empty_190_fu_2411_p2;
assign p_cast_fu_1049_p1 = empty_79_fu_1044_p2;
assign p_shl10_fu_1752_p3 = {{v6_1_reg_792}, {5'd0}};
assign p_shl11_fu_1858_p3 = {{empty_139_reg_3014}, {5'd0}};
assign p_shl12_fu_1895_p3 = {{empty_146_reg_3021}, {5'd0}};
assign p_shl13_fu_2022_p3 = {{empty_153_reg_3078}, {5'd0}};
assign p_shl14_fu_2059_p3 = {{empty_160_reg_3085}, {5'd0}};
assign p_shl1505_fu_2401_p1 = tmp_29_fu_2394_p3;
assign p_shl1507_fu_2364_p1 = tmp_28_fu_2357_p3;
assign p_shl1509_fu_2237_p1 = tmp_27_fu_2230_p3;
assign p_shl1511_fu_2200_p1 = tmp_26_fu_2193_p3;
assign p_shl1513_fu_2073_p1 = tmp_25_fu_2066_p3;
assign p_shl1515_fu_2036_p1 = tmp_24_fu_2029_p3;
assign p_shl1517_fu_1909_p1 = tmp_23_fu_1902_p3;
assign p_shl1519_fu_1872_p1 = tmp_22_fu_1865_p3;
assign p_shl1521_fu_1768_p1 = tmp_21_fu_1760_p3;
assign p_shl1523_fu_1563_p1 = tmp_20_fu_1556_p3;
assign p_shl1525_fu_1526_p1 = tmp_19_fu_1519_p3;
assign p_shl1527_fu_1399_p1 = tmp_18_fu_1392_p3;
assign p_shl1529_fu_1362_p1 = tmp_17_fu_1355_p3;
assign p_shl1531_fu_1235_p1 = tmp_16_fu_1228_p3;
assign p_shl1533_fu_1198_p1 = tmp_15_fu_1191_p3;
assign p_shl1535_fu_1071_p1 = tmp_14_fu_1064_p3;
assign p_shl1537_fu_1034_p1 = tmp_13_fu_1027_p3;
assign p_shl1539_fu_940_p1 = tmp_fu_932_p3;
assign p_shl15_fu_2186_p3 = {{empty_167_reg_3142}, {5'd0}};
assign p_shl16_fu_2223_p3 = {{empty_174_reg_3149}, {5'd0}};
assign p_shl17_fu_2350_p3 = {{empty_181_reg_3206}, {5'd0}};
assign p_shl1_fu_924_p3 = {{v6_reg_780}, {5'd0}};
assign p_shl2_fu_1020_p3 = {{empty_77_reg_2680}, {5'd0}};
assign p_shl3_fu_1057_p3 = {{empty_84_reg_2687}, {5'd0}};
assign p_shl4_fu_1184_p3 = {{empty_91_reg_2744}, {5'd0}};
assign p_shl5_fu_1221_p3 = {{empty_98_reg_2751}, {5'd0}};
assign p_shl6_fu_1348_p3 = {{empty_105_reg_2808}, {5'd0}};
assign p_shl7_fu_1385_p3 = {{empty_112_reg_2815}, {5'd0}};
assign p_shl8_fu_1512_p3 = {{empty_119_reg_2872}, {5'd0}};
assign p_shl9_fu_1549_p3 = {{empty_126_reg_2879}, {5'd0}};
assign p_shl_fu_2387_p3 = {{empty_188_reg_3213}, {5'd0}};
assign tmp_13_fu_1027_p3 = {{empty_77_reg_2680}, {3'd0}};
assign tmp_14_fu_1064_p3 = {{empty_84_reg_2687}, {3'd0}};
assign tmp_15_fu_1191_p3 = {{empty_91_reg_2744}, {3'd0}};
assign tmp_16_fu_1228_p3 = {{empty_98_reg_2751}, {3'd0}};
assign tmp_17_fu_1355_p3 = {{empty_105_reg_2808}, {3'd0}};
assign tmp_18_fu_1392_p3 = {{empty_112_reg_2815}, {3'd0}};
assign tmp_19_fu_1519_p3 = {{empty_119_reg_2872}, {3'd0}};
assign tmp_20_fu_1556_p3 = {{empty_126_reg_2879}, {3'd0}};
assign tmp_21_fu_1760_p3 = {{v6_1_reg_792}, {3'd0}};
assign tmp_22_fu_1865_p3 = {{empty_139_reg_3014}, {3'd0}};
assign tmp_23_fu_1902_p3 = {{empty_146_reg_3021}, {3'd0}};
assign tmp_24_fu_2029_p3 = {{empty_153_reg_3078}, {3'd0}};
assign tmp_25_fu_2066_p3 = {{empty_160_reg_3085}, {3'd0}};
assign tmp_26_fu_2193_p3 = {{empty_167_reg_3142}, {3'd0}};
assign tmp_27_fu_2230_p3 = {{empty_174_reg_3149}, {3'd0}};
assign tmp_28_fu_2357_p3 = {{empty_181_reg_3206}, {3'd0}};
assign tmp_29_fu_2394_p3 = {{empty_188_reg_3213}, {3'd0}};
assign tmp_fu_932_p3 = {{v6_reg_780}, {3'd0}};
assign trunc_ln31_fu_874_p1 = v5_fu_116[2:0];
assign v101_1_fu_2561_p2 = v224_1_q1;
assign v101_1_fu_2561_p4 = v224_3_q1;
assign v101_1_fu_2561_p6 = v224_5_q1;
assign v101_1_fu_2561_p8 = v224_7_q1;
assign v101_1_fu_2561_p9 = 'bx;
assign v101_2_fu_1723_p2 = v224_0_q1;
assign v101_2_fu_1723_p4 = v224_2_q1;
assign v101_2_fu_1723_p6 = v224_4_q1;
assign v101_2_fu_1723_p8 = v224_6_q1;
assign v101_2_fu_1723_p9 = 'bx;
assign v11_1_fu_1835_p2 = v224_1_q0;
assign v11_1_fu_1835_p4 = v224_3_q0;
assign v11_1_fu_1835_p6 = v224_5_q0;
assign v11_1_fu_1835_p8 = v224_7_q0;
assign v11_1_fu_1835_p9 = 'bx;
assign v11_fu_997_p2 = v224_0_q0;
assign v11_fu_997_p4 = v224_2_q0;
assign v11_fu_997_p6 = v224_4_q0;
assign v11_fu_997_p8 = v224_6_q0;
assign v11_fu_997_p9 = 'bx;
assign v224_0_address0 = v224_0_address0_local;
assign v224_0_address1 = v224_0_address1_local;
assign v224_0_ce0 = v224_0_ce0_local;
assign v224_0_ce1 = v224_0_ce1_local;
assign v224_1_address0 = v224_1_address0_local;
assign v224_1_address1 = v224_1_address1_local;
assign v224_1_ce0 = v224_1_ce0_local;
assign v224_1_ce1 = v224_1_ce1_local;
assign v224_2_address0 = v224_2_address0_local;
assign v224_2_address1 = v224_2_address1_local;
assign v224_2_ce0 = v224_2_ce0_local;
assign v224_2_ce1 = v224_2_ce1_local;
assign v224_3_address0 = v224_3_address0_local;
assign v224_3_address1 = v224_3_address1_local;
assign v224_3_ce0 = v224_3_ce0_local;
assign v224_3_ce1 = v224_3_ce1_local;
assign v224_4_address0 = v224_4_address0_local;
assign v224_4_address1 = v224_4_address1_local;
assign v224_4_ce0 = v224_4_ce0_local;
assign v224_4_ce1 = v224_4_ce1_local;
assign v224_5_address0 = v224_5_address0_local;
assign v224_5_address1 = v224_5_address1_local;
assign v224_5_ce0 = v224_5_ce0_local;
assign v224_5_ce1 = v224_5_ce1_local;
assign v224_6_address0 = v224_6_address0_local;
assign v224_6_address1 = v224_6_address1_local;
assign v224_6_ce0 = v224_6_ce0_local;
assign v224_6_ce1 = v224_6_ce1_local;
assign v224_7_address0 = v224_7_address0_local;
assign v224_7_address1 = v224_7_address1_local;
assign v224_7_ce0 = v224_7_ce0_local;
assign v224_7_ce1 = v224_7_ce1_local;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_24_fu_833_v228_1_ce1;
assign v236_read = v236_read_local;
assign v24_1_fu_1960_p2 = v224_1_q1;
assign v24_1_fu_1960_p4 = v224_3_q1;
assign v24_1_fu_1960_p6 = v224_5_q1;
assign v24_1_fu_1960_p8 = v224_7_q1;
assign v24_1_fu_1960_p9 = 'bx;
assign v24_fu_1122_p2 = v224_0_q1;
assign v24_fu_1122_p4 = v224_2_q1;
assign v24_fu_1122_p6 = v224_4_q1;
assign v24_fu_1122_p8 = v224_6_q1;
assign v24_fu_1122_p9 = 'bx;
assign v35_1_fu_1999_p2 = v224_1_q0;
assign v35_1_fu_1999_p4 = v224_3_q0;
assign v35_1_fu_1999_p6 = v224_5_q0;
assign v35_1_fu_1999_p8 = v224_7_q0;
assign v35_1_fu_1999_p9 = 'bx;
assign v35_2_fu_1161_p2 = v224_0_q0;
assign v35_2_fu_1161_p4 = v224_2_q0;
assign v35_2_fu_1161_p6 = v224_4_q0;
assign v35_2_fu_1161_p8 = v224_6_q0;
assign v35_2_fu_1161_p9 = 'bx;
assign v46_1_fu_2124_p2 = v224_1_q0;
assign v46_1_fu_2124_p4 = v224_3_q0;
assign v46_1_fu_2124_p6 = v224_5_q0;
assign v46_1_fu_2124_p8 = v224_7_q0;
assign v46_1_fu_2124_p9 = 'bx;
assign v46_2_fu_1286_p2 = v224_0_q0;
assign v46_2_fu_1286_p4 = v224_2_q0;
assign v46_2_fu_1286_p6 = v224_4_q0;
assign v46_2_fu_1286_p8 = v224_6_q0;
assign v46_2_fu_1286_p9 = 'bx;
assign v57_1_fu_2163_p2 = v224_1_q1;
assign v57_1_fu_2163_p4 = v224_3_q1;
assign v57_1_fu_2163_p6 = v224_5_q1;
assign v57_1_fu_2163_p8 = v224_7_q1;
assign v57_1_fu_2163_p9 = 'bx;
assign v57_2_fu_1325_p2 = v224_0_q1;
assign v57_2_fu_1325_p4 = v224_2_q1;
assign v57_2_fu_1325_p6 = v224_4_q1;
assign v57_2_fu_1325_p8 = v224_6_q1;
assign v57_2_fu_1325_p9 = 'bx;
assign v68_1_fu_2288_p2 = v224_1_q0;
assign v68_1_fu_2288_p4 = v224_3_q0;
assign v68_1_fu_2288_p6 = v224_5_q0;
assign v68_1_fu_2288_p8 = v224_7_q0;
assign v68_1_fu_2288_p9 = 'bx;
assign v68_2_fu_1450_p2 = v224_0_q0;
assign v68_2_fu_1450_p4 = v224_2_q0;
assign v68_2_fu_1450_p6 = v224_4_q0;
assign v68_2_fu_1450_p8 = v224_6_q0;
assign v68_2_fu_1450_p9 = 'bx;
assign v79_1_fu_2327_p2 = v224_1_q1;
assign v79_1_fu_2327_p4 = v224_3_q1;
assign v79_1_fu_2327_p6 = v224_5_q1;
assign v79_1_fu_2327_p8 = v224_7_q1;
assign v79_1_fu_2327_p9 = 'bx;
assign v79_2_fu_1489_p2 = v224_0_q1;
assign v79_2_fu_1489_p4 = v224_2_q1;
assign v79_2_fu_1489_p6 = v224_4_q1;
assign v79_2_fu_1489_p8 = v224_6_q1;
assign v79_2_fu_1489_p9 = 'bx;
assign v90_1_fu_2513_p2 = v224_1_q0;
assign v90_1_fu_2513_p4 = v224_3_q0;
assign v90_1_fu_2513_p6 = v224_5_q0;
assign v90_1_fu_2513_p8 = v224_7_q0;
assign v90_1_fu_2513_p9 = 'bx;
assign v90_2_fu_1675_p2 = v224_0_q0;
assign v90_2_fu_1675_p4 = v224_2_q0;
assign v90_2_fu_1675_p6 = v224_4_q0;
assign v90_2_fu_1675_p8 = v224_6_q0;
assign v90_2_fu_1675_p9 = 'bx;
assign zext_ln31_fu_908_p1 = lshr_ln31_1_fu_898_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_2630[12:5] <= 8'b00000000;
end
endmodule 