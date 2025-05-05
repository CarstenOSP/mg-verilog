module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v224_4_address0,v224_4_ce0,v224_4_q0,v224_4_address1,v224_4_ce1,v224_4_q1,v224_5_address0,v224_5_ce0,v224_5_q0,v224_5_address1,v224_5_ce1,v224_5_q1,v224_6_address0,v224_6_ce0,v224_6_q0,v224_6_address1,v224_6_ce1,v224_6_q1,v224_7_address0,v224_7_ce0,v224_7_q0,v224_7_address1,v224_7_ce1,v224_7_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
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
output  [13:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [13:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [13:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [13:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [13:0] v228_2_address0;
output   v228_2_ce0;
input  [31:0] v228_2_q0;
output  [13:0] v228_2_address1;
output   v228_2_ce1;
input  [31:0] v228_2_q1;
output  [13:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [13:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [7:0] add_ln31_fu_854_p2;
reg   [7:0] add_ln31_reg_2079;
wire    ap_CS_fsm_state2;
wire   [2:0] trunc_ln31_fu_860_p1;
reg   [2:0] trunc_ln31_reg_2084;
wire   [1:0] trunc_ln31_1_fu_864_p1;
reg   [1:0] trunc_ln31_1_reg_2097;
wire   [13:0] mul_ln38_fu_882_p2;
reg   [13:0] mul_ln38_reg_2102;
wire   [12:0] zext_ln31_fu_898_p1;
reg   [12:0] zext_ln31_reg_2107;
wire   [0:0] cmp11_fu_902_p2;
reg   [0:0] cmp11_reg_2120;
wire    ap_CS_fsm_state3;
wire   [7:0] empty_52_fu_957_p2;
reg   [7:0] empty_52_reg_2168;
wire   [7:0] empty_63_fu_963_p2;
reg   [7:0] empty_63_reg_2175;
wire   [7:0] add_ln32_fu_969_p2;
reg   [7:0] add_ln32_reg_2182;
wire   [31:0] v11_fu_1011_p19;
reg   [31:0] v11_reg_2187;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_74_fu_1132_p2;
reg   [7:0] empty_74_reg_2272;
wire   [7:0] empty_85_fu_1138_p2;
reg   [7:0] empty_85_reg_2279;
wire   [31:0] v24_1_fu_1176_p19;
reg   [31:0] v24_1_reg_2286;
wire    ap_CS_fsm_state5;
wire   [31:0] v35_1_fu_1247_p19;
reg   [31:0] v35_1_reg_2291;
wire   [7:0] empty_96_fu_1368_p2;
reg   [7:0] empty_96_reg_2376;
wire   [7:0] empty_107_fu_1374_p2;
reg   [7:0] empty_107_reg_2383;
wire   [31:0] v46_1_fu_1412_p19;
reg   [31:0] v46_1_reg_2390;
wire    ap_CS_fsm_state6;
wire   [31:0] v57_1_fu_1483_p19;
reg   [31:0] v57_1_reg_2395;
wire   [7:0] empty_118_fu_1604_p2;
reg   [7:0] empty_118_reg_2480;
wire   [7:0] empty_129_fu_1610_p2;
reg   [7:0] empty_129_reg_2487;
wire   [31:0] v68_1_fu_1648_p19;
reg   [31:0] v68_1_reg_2494;
wire    ap_CS_fsm_state7;
wire   [31:0] v79_1_fu_1719_p19;
reg   [31:0] v79_1_reg_2499;
wire   [15:0] mul_ln34_fu_1844_p2;
reg   [15:0] mul_ln34_reg_2584;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln49_fu_1853_p2;
reg   [15:0] mul_ln49_reg_2589;
wire   [15:0] mul_ln62_fu_1862_p2;
reg   [15:0] mul_ln62_reg_2594;
wire   [15:0] mul_ln75_fu_1871_p2;
reg   [15:0] mul_ln75_reg_2599;
wire   [15:0] mul_ln88_fu_1880_p2;
reg   [15:0] mul_ln88_reg_2604;
wire   [15:0] mul_ln101_fu_1889_p2;
reg   [15:0] mul_ln101_reg_2609;
wire   [15:0] mul_ln114_fu_1898_p2;
reg   [15:0] mul_ln114_reg_2614;
wire   [15:0] mul_ln127_fu_1907_p2;
reg   [15:0] mul_ln127_reg_2619;
wire   [31:0] v90_1_fu_1945_p19;
reg   [31:0] v90_1_reg_2624;
wire   [15:0] mul_ln140_fu_1987_p2;
reg   [15:0] mul_ln140_reg_2629;
wire   [31:0] v101_1_fu_2025_p19;
reg   [31:0] v101_1_reg_2634;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_ready;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_1_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_2_ce1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_3_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2639_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2639_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2639_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2639_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2643_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2643_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2643_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2647_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2647_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2647_p_ce;
reg   [7:0] v6_reg_792;
wire   [0:0] icmp_ln31_fu_848_p2;
wire    ap_CS_fsm_state10;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start_reg;
wire    ap_CS_fsm_state9;
wire   [63:0] p_cast1071_fu_945_p1;
wire   [0:0] icmp_ln32_fu_908_p2;
wire   [63:0] p_cast_fu_1079_p1;
wire   [63:0] p_cast1072_fu_1120_p1;
wire   [63:0] p_cast1073_fu_1315_p1;
wire   [63:0] p_cast1074_fu_1356_p1;
wire   [63:0] p_cast1075_fu_1551_p1;
wire   [63:0] p_cast1076_fu_1592_p1;
wire   [63:0] p_cast1077_fu_1787_p1;
wire   [63:0] p_cast1078_fu_1828_p1;
reg   [7:0] v5_fu_128;
reg    ap_block_state1;
reg    v236_read_local;
reg    v224_0_ce0_local;
reg   [12:0] v224_0_address0_local;
reg    v224_0_ce1_local;
reg   [12:0] v224_0_address1_local;
reg    v224_1_ce0_local;
reg   [12:0] v224_1_address0_local;
reg    v224_1_ce1_local;
reg   [12:0] v224_1_address1_local;
reg    v224_2_ce0_local;
reg   [12:0] v224_2_address0_local;
reg    v224_2_ce1_local;
reg   [12:0] v224_2_address1_local;
reg    v224_3_ce0_local;
reg   [12:0] v224_3_address0_local;
reg    v224_3_ce1_local;
reg   [12:0] v224_3_address1_local;
reg    v224_4_ce0_local;
reg   [12:0] v224_4_address0_local;
reg    v224_4_ce1_local;
reg   [12:0] v224_4_address1_local;
reg    v224_5_ce0_local;
reg   [12:0] v224_5_address0_local;
reg    v224_5_ce1_local;
reg   [12:0] v224_5_address1_local;
reg    v224_6_ce0_local;
reg   [12:0] v224_6_address0_local;
reg    v224_6_ce1_local;
reg   [12:0] v224_6_address1_local;
reg    v224_7_ce0_local;
reg   [12:0] v224_7_address0_local;
reg    v224_7_ce1_local;
reg   [12:0] v224_7_address1_local;
wire   [5:0] lshr_ln_fu_868_p4;
wire   [5:0] mul_ln38_fu_882_p0;
wire   [8:0] mul_ln38_fu_882_p1;
wire   [4:0] lshr_ln31_1_fu_888_p4;
wire   [10:0] tmp_fu_922_p3;
wire   [12:0] p_shl1_fu_914_p3;
wire   [12:0] p_shl1127_fu_930_p1;
wire   [12:0] empty_fu_934_p2;
wire   [12:0] empty_43_fu_940_p2;
wire   [31:0] v11_fu_1011_p2;
wire   [31:0] v11_fu_1011_p4;
wire   [31:0] v11_fu_1011_p6;
wire   [31:0] v11_fu_1011_p8;
wire   [31:0] v11_fu_1011_p10;
wire   [31:0] v11_fu_1011_p12;
wire   [31:0] v11_fu_1011_p14;
wire   [31:0] v11_fu_1011_p16;
wire   [31:0] v11_fu_1011_p17;
wire   [10:0] tmp_10_fu_1057_p3;
wire   [12:0] p_shl2_fu_1050_p3;
wire   [12:0] p_shl1125_fu_1064_p1;
wire   [12:0] empty_53_fu_1068_p2;
wire   [12:0] empty_54_fu_1074_p2;
wire   [10:0] tmp_11_fu_1098_p3;
wire   [12:0] p_shl3_fu_1091_p3;
wire   [12:0] p_shl1123_fu_1105_p1;
wire   [12:0] empty_64_fu_1109_p2;
wire   [12:0] empty_65_fu_1115_p2;
wire   [31:0] v24_1_fu_1176_p2;
wire   [31:0] v24_1_fu_1176_p4;
wire   [31:0] v24_1_fu_1176_p6;
wire   [31:0] v24_1_fu_1176_p8;
wire   [31:0] v24_1_fu_1176_p10;
wire   [31:0] v24_1_fu_1176_p12;
wire   [31:0] v24_1_fu_1176_p14;
wire   [31:0] v24_1_fu_1176_p16;
wire   [31:0] v24_1_fu_1176_p17;
wire   [31:0] v35_1_fu_1247_p2;
wire   [31:0] v35_1_fu_1247_p4;
wire   [31:0] v35_1_fu_1247_p6;
wire   [31:0] v35_1_fu_1247_p8;
wire   [31:0] v35_1_fu_1247_p10;
wire   [31:0] v35_1_fu_1247_p12;
wire   [31:0] v35_1_fu_1247_p14;
wire   [31:0] v35_1_fu_1247_p16;
wire   [31:0] v35_1_fu_1247_p17;
wire   [10:0] tmp_12_fu_1293_p3;
wire   [12:0] p_shl4_fu_1286_p3;
wire   [12:0] p_shl1121_fu_1300_p1;
wire   [12:0] empty_75_fu_1304_p2;
wire   [12:0] empty_76_fu_1310_p2;
wire   [10:0] tmp_13_fu_1334_p3;
wire   [12:0] p_shl5_fu_1327_p3;
wire   [12:0] p_shl1119_fu_1341_p1;
wire   [12:0] empty_86_fu_1345_p2;
wire   [12:0] empty_87_fu_1351_p2;
wire   [31:0] v46_1_fu_1412_p2;
wire   [31:0] v46_1_fu_1412_p4;
wire   [31:0] v46_1_fu_1412_p6;
wire   [31:0] v46_1_fu_1412_p8;
wire   [31:0] v46_1_fu_1412_p10;
wire   [31:0] v46_1_fu_1412_p12;
wire   [31:0] v46_1_fu_1412_p14;
wire   [31:0] v46_1_fu_1412_p16;
wire   [31:0] v46_1_fu_1412_p17;
wire   [31:0] v57_1_fu_1483_p2;
wire   [31:0] v57_1_fu_1483_p4;
wire   [31:0] v57_1_fu_1483_p6;
wire   [31:0] v57_1_fu_1483_p8;
wire   [31:0] v57_1_fu_1483_p10;
wire   [31:0] v57_1_fu_1483_p12;
wire   [31:0] v57_1_fu_1483_p14;
wire   [31:0] v57_1_fu_1483_p16;
wire   [31:0] v57_1_fu_1483_p17;
wire   [10:0] tmp_14_fu_1529_p3;
wire   [12:0] p_shl6_fu_1522_p3;
wire   [12:0] p_shl1117_fu_1536_p1;
wire   [12:0] empty_97_fu_1540_p2;
wire   [12:0] empty_98_fu_1546_p2;
wire   [10:0] tmp_15_fu_1570_p3;
wire   [12:0] p_shl7_fu_1563_p3;
wire   [12:0] p_shl1115_fu_1577_p1;
wire   [12:0] empty_108_fu_1581_p2;
wire   [12:0] empty_109_fu_1587_p2;
wire   [31:0] v68_1_fu_1648_p2;
wire   [31:0] v68_1_fu_1648_p4;
wire   [31:0] v68_1_fu_1648_p6;
wire   [31:0] v68_1_fu_1648_p8;
wire   [31:0] v68_1_fu_1648_p10;
wire   [31:0] v68_1_fu_1648_p12;
wire   [31:0] v68_1_fu_1648_p14;
wire   [31:0] v68_1_fu_1648_p16;
wire   [31:0] v68_1_fu_1648_p17;
wire   [31:0] v79_1_fu_1719_p2;
wire   [31:0] v79_1_fu_1719_p4;
wire   [31:0] v79_1_fu_1719_p6;
wire   [31:0] v79_1_fu_1719_p8;
wire   [31:0] v79_1_fu_1719_p10;
wire   [31:0] v79_1_fu_1719_p12;
wire   [31:0] v79_1_fu_1719_p14;
wire   [31:0] v79_1_fu_1719_p16;
wire   [31:0] v79_1_fu_1719_p17;
wire   [10:0] tmp_16_fu_1765_p3;
wire   [12:0] p_shl8_fu_1758_p3;
wire   [12:0] p_shl1113_fu_1772_p1;
wire   [12:0] empty_119_fu_1776_p2;
wire   [12:0] empty_120_fu_1782_p2;
wire   [10:0] tmp_17_fu_1806_p3;
wire   [12:0] p_shl_fu_1799_p3;
wire   [12:0] p_shl1111_fu_1813_p1;
wire   [12:0] empty_130_fu_1817_p2;
wire   [12:0] empty_131_fu_1823_p2;
wire   [7:0] mul_ln34_fu_1844_p0;
wire   [8:0] mul_ln34_fu_1844_p1;
wire   [7:0] mul_ln49_fu_1853_p0;
wire   [8:0] mul_ln49_fu_1853_p1;
wire   [7:0] mul_ln62_fu_1862_p0;
wire   [8:0] mul_ln62_fu_1862_p1;
wire   [7:0] mul_ln75_fu_1871_p0;
wire   [8:0] mul_ln75_fu_1871_p1;
wire   [7:0] mul_ln88_fu_1880_p0;
wire   [8:0] mul_ln88_fu_1880_p1;
wire   [7:0] mul_ln101_fu_1889_p0;
wire   [8:0] mul_ln101_fu_1889_p1;
wire   [7:0] mul_ln114_fu_1898_p0;
wire   [8:0] mul_ln114_fu_1898_p1;
wire   [7:0] mul_ln127_fu_1907_p0;
wire   [8:0] mul_ln127_fu_1907_p1;
wire   [31:0] v90_1_fu_1945_p2;
wire   [31:0] v90_1_fu_1945_p4;
wire   [31:0] v90_1_fu_1945_p6;
wire   [31:0] v90_1_fu_1945_p8;
wire   [31:0] v90_1_fu_1945_p10;
wire   [31:0] v90_1_fu_1945_p12;
wire   [31:0] v90_1_fu_1945_p14;
wire   [31:0] v90_1_fu_1945_p16;
wire   [31:0] v90_1_fu_1945_p17;
wire   [7:0] mul_ln140_fu_1987_p0;
wire   [8:0] mul_ln140_fu_1987_p1;
wire   [31:0] v101_1_fu_2025_p2;
wire   [31:0] v101_1_fu_2025_p4;
wire   [31:0] v101_1_fu_2025_p6;
wire   [31:0] v101_1_fu_2025_p8;
wire   [31:0] v101_1_fu_2025_p10;
wire   [31:0] v101_1_fu_2025_p12;
wire   [31:0] v101_1_fu_2025_p14;
wire   [31:0] v101_1_fu_2025_p16;
wire   [31:0] v101_1_fu_2025_p17;
reg    grp_fu_2639_ce;
reg    grp_fu_2643_ce;
reg    grp_fu_2647_ce;
reg   [9:0] ap_NS_fsm;
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
wire   [15:0] mul_ln101_fu_1889_p00;
wire   [15:0] mul_ln114_fu_1898_p00;
wire   [15:0] mul_ln127_fu_1907_p00;
wire   [15:0] mul_ln140_fu_1987_p00;
wire   [15:0] mul_ln34_fu_1844_p00;
wire   [13:0] mul_ln38_fu_882_p00;
wire   [15:0] mul_ln49_fu_1853_p00;
wire   [15:0] mul_ln62_fu_1862_p00;
wire   [15:0] mul_ln75_fu_1871_p00;
wire   [15:0] mul_ln88_fu_1880_p00;
wire   [2:0] v11_fu_1011_p1;
wire   [2:0] v11_fu_1011_p3;
wire   [2:0] v11_fu_1011_p5;
wire   [2:0] v11_fu_1011_p7;
wire  signed [2:0] v11_fu_1011_p9;
wire  signed [2:0] v11_fu_1011_p11;
wire  signed [2:0] v11_fu_1011_p13;
wire  signed [2:0] v11_fu_1011_p15;
wire   [2:0] v24_1_fu_1176_p1;
wire   [2:0] v24_1_fu_1176_p3;
wire   [2:0] v24_1_fu_1176_p5;
wire   [2:0] v24_1_fu_1176_p7;
wire  signed [2:0] v24_1_fu_1176_p9;
wire  signed [2:0] v24_1_fu_1176_p11;
wire  signed [2:0] v24_1_fu_1176_p13;
wire  signed [2:0] v24_1_fu_1176_p15;
wire   [2:0] v35_1_fu_1247_p1;
wire   [2:0] v35_1_fu_1247_p3;
wire   [2:0] v35_1_fu_1247_p5;
wire   [2:0] v35_1_fu_1247_p7;
wire  signed [2:0] v35_1_fu_1247_p9;
wire  signed [2:0] v35_1_fu_1247_p11;
wire  signed [2:0] v35_1_fu_1247_p13;
wire  signed [2:0] v35_1_fu_1247_p15;
wire   [2:0] v46_1_fu_1412_p1;
wire   [2:0] v46_1_fu_1412_p3;
wire   [2:0] v46_1_fu_1412_p5;
wire   [2:0] v46_1_fu_1412_p7;
wire  signed [2:0] v46_1_fu_1412_p9;
wire  signed [2:0] v46_1_fu_1412_p11;
wire  signed [2:0] v46_1_fu_1412_p13;
wire  signed [2:0] v46_1_fu_1412_p15;
wire   [2:0] v57_1_fu_1483_p1;
wire   [2:0] v57_1_fu_1483_p3;
wire   [2:0] v57_1_fu_1483_p5;
wire   [2:0] v57_1_fu_1483_p7;
wire  signed [2:0] v57_1_fu_1483_p9;
wire  signed [2:0] v57_1_fu_1483_p11;
wire  signed [2:0] v57_1_fu_1483_p13;
wire  signed [2:0] v57_1_fu_1483_p15;
wire   [2:0] v68_1_fu_1648_p1;
wire   [2:0] v68_1_fu_1648_p3;
wire   [2:0] v68_1_fu_1648_p5;
wire   [2:0] v68_1_fu_1648_p7;
wire  signed [2:0] v68_1_fu_1648_p9;
wire  signed [2:0] v68_1_fu_1648_p11;
wire  signed [2:0] v68_1_fu_1648_p13;
wire  signed [2:0] v68_1_fu_1648_p15;
wire   [2:0] v79_1_fu_1719_p1;
wire   [2:0] v79_1_fu_1719_p3;
wire   [2:0] v79_1_fu_1719_p5;
wire   [2:0] v79_1_fu_1719_p7;
wire  signed [2:0] v79_1_fu_1719_p9;
wire  signed [2:0] v79_1_fu_1719_p11;
wire  signed [2:0] v79_1_fu_1719_p13;
wire  signed [2:0] v79_1_fu_1719_p15;
wire   [2:0] v90_1_fu_1945_p1;
wire   [2:0] v90_1_fu_1945_p3;
wire   [2:0] v90_1_fu_1945_p5;
wire   [2:0] v90_1_fu_1945_p7;
wire  signed [2:0] v90_1_fu_1945_p9;
wire  signed [2:0] v90_1_fu_1945_p11;
wire  signed [2:0] v90_1_fu_1945_p13;
wire  signed [2:0] v90_1_fu_1945_p15;
wire   [2:0] v101_1_fu_2025_p1;
wire   [2:0] v101_1_fu_2025_p3;
wire   [2:0] v101_1_fu_2025_p5;
wire   [2:0] v101_1_fu_2025_p7;
wire  signed [2:0] v101_1_fu_2025_p9;
wire  signed [2:0] v101_1_fu_2025_p11;
wire  signed [2:0] v101_1_fu_2025_p13;
wire  signed [2:0] v101_1_fu_2025_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start_reg = 1'b0;
#0 v5_fu_128 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_804(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_ready),.mul_ln38(mul_ln38_reg_2102),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_3_ce1),.v228_3_q1(v228_3_q1),.mul_ln34(mul_ln34_reg_2584),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_2589),.mul_ln62(mul_ln62_reg_2594),.mul_ln75(mul_ln75_reg_2599),.mul_ln88(mul_ln88_reg_2604),.mul_ln101(mul_ln101_reg_2609),.mul_ln114(mul_ln114_reg_2614),.mul_ln127(mul_ln127_reg_2619),.mul_ln140(mul_ln140_reg_2629),.v4(v4),.cmp11(cmp11_reg_2120),.empty(trunc_ln31_1_reg_2097),.v11(v11_reg_2187),.v24_1(v24_1_reg_2286),.v35_1(v35_1_reg_2291),.v46_1(v46_1_reg_2390),.v57_1(v57_1_reg_2395),.v68_1(v68_1_reg_2494),.v79_1(v79_1_reg_2499),.v90_1(v90_1_reg_2624),.v101_1(v101_1_reg_2634),.grp_fu_2639_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2639_p_din0),.grp_fu_2639_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2639_p_din1),.grp_fu_2639_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2639_p_opcode),.grp_fu_2639_p_dout0(grp_fu_176_p_dout0),.grp_fu_2639_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2639_p_ce),.grp_fu_2643_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2643_p_din0),.grp_fu_2643_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2643_p_din1),.grp_fu_2643_p_dout0(grp_fu_180_p_dout0),.grp_fu_2643_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2643_p_ce),.grp_fu_2647_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2647_p_din0),.grp_fu_2647_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2647_p_din1),.grp_fu_2647_p_dout0(grp_fu_184_p_dout0),.grp_fu_2647_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2647_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U101(.din0(mul_ln38_fu_882_p0),.din1(mul_ln38_fu_882_p1),.dout(mul_ln38_fu_882_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U102(.din0(v11_fu_1011_p2),.din1(v11_fu_1011_p4),.din2(v11_fu_1011_p6),.din3(v11_fu_1011_p8),.din4(v11_fu_1011_p10),.din5(v11_fu_1011_p12),.din6(v11_fu_1011_p14),.din7(v11_fu_1011_p16),.def(v11_fu_1011_p17),.sel(trunc_ln31_reg_2084),.dout(v11_fu_1011_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U103(.din0(v24_1_fu_1176_p2),.din1(v24_1_fu_1176_p4),.din2(v24_1_fu_1176_p6),.din3(v24_1_fu_1176_p8),.din4(v24_1_fu_1176_p10),.din5(v24_1_fu_1176_p12),.din6(v24_1_fu_1176_p14),.din7(v24_1_fu_1176_p16),.def(v24_1_fu_1176_p17),.sel(trunc_ln31_reg_2084),.dout(v24_1_fu_1176_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U104(.din0(v35_1_fu_1247_p2),.din1(v35_1_fu_1247_p4),.din2(v35_1_fu_1247_p6),.din3(v35_1_fu_1247_p8),.din4(v35_1_fu_1247_p10),.din5(v35_1_fu_1247_p12),.din6(v35_1_fu_1247_p14),.din7(v35_1_fu_1247_p16),.def(v35_1_fu_1247_p17),.sel(trunc_ln31_reg_2084),.dout(v35_1_fu_1247_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U105(.din0(v46_1_fu_1412_p2),.din1(v46_1_fu_1412_p4),.din2(v46_1_fu_1412_p6),.din3(v46_1_fu_1412_p8),.din4(v46_1_fu_1412_p10),.din5(v46_1_fu_1412_p12),.din6(v46_1_fu_1412_p14),.din7(v46_1_fu_1412_p16),.def(v46_1_fu_1412_p17),.sel(trunc_ln31_reg_2084),.dout(v46_1_fu_1412_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U106(.din0(v57_1_fu_1483_p2),.din1(v57_1_fu_1483_p4),.din2(v57_1_fu_1483_p6),.din3(v57_1_fu_1483_p8),.din4(v57_1_fu_1483_p10),.din5(v57_1_fu_1483_p12),.din6(v57_1_fu_1483_p14),.din7(v57_1_fu_1483_p16),.def(v57_1_fu_1483_p17),.sel(trunc_ln31_reg_2084),.dout(v57_1_fu_1483_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U107(.din0(v68_1_fu_1648_p2),.din1(v68_1_fu_1648_p4),.din2(v68_1_fu_1648_p6),.din3(v68_1_fu_1648_p8),.din4(v68_1_fu_1648_p10),.din5(v68_1_fu_1648_p12),.din6(v68_1_fu_1648_p14),.din7(v68_1_fu_1648_p16),.def(v68_1_fu_1648_p17),.sel(trunc_ln31_reg_2084),.dout(v68_1_fu_1648_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U108(.din0(v79_1_fu_1719_p2),.din1(v79_1_fu_1719_p4),.din2(v79_1_fu_1719_p6),.din3(v79_1_fu_1719_p8),.din4(v79_1_fu_1719_p10),.din5(v79_1_fu_1719_p12),.din6(v79_1_fu_1719_p14),.din7(v79_1_fu_1719_p16),.def(v79_1_fu_1719_p17),.sel(trunc_ln31_reg_2084),.dout(v79_1_fu_1719_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U109(.din0(mul_ln34_fu_1844_p0),.din1(mul_ln34_fu_1844_p1),.dout(mul_ln34_fu_1844_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U110(.din0(mul_ln49_fu_1853_p0),.din1(mul_ln49_fu_1853_p1),.dout(mul_ln49_fu_1853_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U111(.din0(mul_ln62_fu_1862_p0),.din1(mul_ln62_fu_1862_p1),.dout(mul_ln62_fu_1862_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U112(.din0(mul_ln75_fu_1871_p0),.din1(mul_ln75_fu_1871_p1),.dout(mul_ln75_fu_1871_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U113(.din0(mul_ln88_fu_1880_p0),.din1(mul_ln88_fu_1880_p1),.dout(mul_ln88_fu_1880_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U114(.din0(mul_ln101_fu_1889_p0),.din1(mul_ln101_fu_1889_p1),.dout(mul_ln101_fu_1889_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U115(.din0(mul_ln114_fu_1898_p0),.din1(mul_ln114_fu_1898_p1),.dout(mul_ln114_fu_1898_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U116(.din0(mul_ln127_fu_1907_p0),.din1(mul_ln127_fu_1907_p1),.dout(mul_ln127_fu_1907_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U117(.din0(v90_1_fu_1945_p2),.din1(v90_1_fu_1945_p4),.din2(v90_1_fu_1945_p6),.din3(v90_1_fu_1945_p8),.din4(v90_1_fu_1945_p10),.din5(v90_1_fu_1945_p12),.din6(v90_1_fu_1945_p14),.din7(v90_1_fu_1945_p16),.def(v90_1_fu_1945_p17),.sel(trunc_ln31_reg_2084),.dout(v90_1_fu_1945_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U118(.din0(mul_ln140_fu_1987_p0),.din1(mul_ln140_fu_1987_p1),.dout(mul_ln140_fu_1987_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U119(.din0(v101_1_fu_2025_p2),.din1(v101_1_fu_2025_p4),.din2(v101_1_fu_2025_p6),.din3(v101_1_fu_2025_p8),.din4(v101_1_fu_2025_p10),.din5(v101_1_fu_2025_p12),.din6(v101_1_fu_2025_p14),.din7(v101_1_fu_2025_p16),.def(v101_1_fu_2025_p17),.sel(trunc_ln31_reg_2084),.dout(v101_1_fu_2025_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
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
        v5_fu_128 <= 8'd0;
    end else if (((icmp_ln32_fu_908_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_128 <= add_ln31_reg_2079;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        v6_reg_792 <= add_ln32_reg_2182;
    end else if (((icmp_ln31_fu_848_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_792 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_reg_2079 <= add_ln31_fu_854_p2;
        cmp11_reg_2120 <= cmp11_fu_902_p2;
        mul_ln38_reg_2102 <= mul_ln38_fu_882_p2;
        trunc_ln31_1_reg_2097 <= trunc_ln31_1_fu_864_p1;
        trunc_ln31_reg_2084 <= trunc_ln31_fu_860_p1;
        zext_ln31_reg_2107[4 : 0] <= zext_ln31_fu_898_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_reg_2182 <= add_ln32_fu_969_p2;
        empty_52_reg_2168 <= empty_52_fu_957_p2;
        empty_63_reg_2175 <= empty_63_fu_963_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_107_reg_2383 <= empty_107_fu_1374_p2;
        empty_96_reg_2376 <= empty_96_fu_1368_p2;
        v24_1_reg_2286 <= v24_1_fu_1176_p19;
        v35_1_reg_2291 <= v35_1_fu_1247_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_118_reg_2480 <= empty_118_fu_1604_p2;
        empty_129_reg_2487 <= empty_129_fu_1610_p2;
        v46_1_reg_2390 <= v46_1_fu_1412_p19;
        v57_1_reg_2395 <= v57_1_fu_1483_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_74_reg_2272 <= empty_74_fu_1132_p2;
        empty_85_reg_2279 <= empty_85_fu_1138_p2;
        v11_reg_2187 <= v11_fu_1011_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln101_reg_2609 <= mul_ln101_fu_1889_p2;
        mul_ln114_reg_2614 <= mul_ln114_fu_1898_p2;
        mul_ln127_reg_2619 <= mul_ln127_fu_1907_p2;
        mul_ln140_reg_2629 <= mul_ln140_fu_1987_p2;
        mul_ln34_reg_2584 <= mul_ln34_fu_1844_p2;
        mul_ln49_reg_2589 <= mul_ln49_fu_1853_p2;
        mul_ln62_reg_2594 <= mul_ln62_fu_1862_p2;
        mul_ln75_reg_2599 <= mul_ln75_fu_1871_p2;
        mul_ln88_reg_2604 <= mul_ln88_fu_1880_p2;
        v101_1_reg_2634 <= v101_1_fu_2025_p19;
        v90_1_reg_2624 <= v90_1_fu_1945_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v68_1_reg_2494 <= v68_1_fu_1648_p19;
        v79_1_reg_2499 <= v79_1_fu_1719_p19;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln31_fu_848_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln31_fu_848_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2639_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2639_p_ce;
    end else begin
        grp_fu_2639_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2643_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2643_p_ce;
    end else begin
        grp_fu_2643_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_2647_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2647_p_ce;
    end else begin
        grp_fu_2647_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast1077_fu_1787_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast1075_fu_1551_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast1073_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast1072_fu_1120_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast1071_fu_945_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast1078_fu_1828_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast1076_fu_1592_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast1074_fu_1356_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast_fu_1079_p1;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast1077_fu_1787_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast1075_fu_1551_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address0_local = p_cast1073_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address0_local = p_cast1072_fu_1120_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address0_local = p_cast1071_fu_945_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast1078_fu_1828_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast1076_fu_1592_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address1_local = p_cast1074_fu_1356_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address1_local = p_cast_fu_1079_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address0_local = p_cast1077_fu_1787_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast1075_fu_1551_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast1073_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast1072_fu_1120_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast1071_fu_945_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast1078_fu_1828_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast1076_fu_1592_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast1074_fu_1356_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast_fu_1079_p1;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address0_local = p_cast1077_fu_1787_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address0_local = p_cast1075_fu_1551_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address0_local = p_cast1073_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address0_local = p_cast1072_fu_1120_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address0_local = p_cast1071_fu_945_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address1_local = p_cast1078_fu_1828_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address1_local = p_cast1076_fu_1592_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address1_local = p_cast1074_fu_1356_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address1_local = p_cast_fu_1079_p1;
    end else begin
        v224_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_3_ce0_local = 1'b1;
    end else begin
        v224_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_3_ce1_local = 1'b1;
    end else begin
        v224_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_4_address0_local = p_cast1077_fu_1787_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_4_address0_local = p_cast1075_fu_1551_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_4_address0_local = p_cast1073_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_4_address0_local = p_cast1072_fu_1120_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_4_address0_local = p_cast1071_fu_945_p1;
    end else begin
        v224_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_4_address1_local = p_cast1078_fu_1828_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_4_address1_local = p_cast1076_fu_1592_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_4_address1_local = p_cast1074_fu_1356_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_4_address1_local = p_cast_fu_1079_p1;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_5_address0_local = p_cast1077_fu_1787_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_5_address0_local = p_cast1075_fu_1551_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_5_address0_local = p_cast1073_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_5_address0_local = p_cast1072_fu_1120_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_5_address0_local = p_cast1071_fu_945_p1;
    end else begin
        v224_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_5_address1_local = p_cast1078_fu_1828_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_5_address1_local = p_cast1076_fu_1592_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_5_address1_local = p_cast1074_fu_1356_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_5_address1_local = p_cast_fu_1079_p1;
    end else begin
        v224_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_5_ce0_local = 1'b1;
    end else begin
        v224_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_5_ce1_local = 1'b1;
    end else begin
        v224_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_6_address0_local = p_cast1077_fu_1787_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_6_address0_local = p_cast1075_fu_1551_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_6_address0_local = p_cast1073_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_6_address0_local = p_cast1072_fu_1120_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_6_address0_local = p_cast1071_fu_945_p1;
    end else begin
        v224_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_6_address1_local = p_cast1078_fu_1828_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_6_address1_local = p_cast1076_fu_1592_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_6_address1_local = p_cast1074_fu_1356_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_6_address1_local = p_cast_fu_1079_p1;
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
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_7_address0_local = p_cast1077_fu_1787_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_7_address0_local = p_cast1075_fu_1551_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_7_address0_local = p_cast1073_fu_1315_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_7_address0_local = p_cast1072_fu_1120_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_7_address0_local = p_cast1071_fu_945_p1;
    end else begin
        v224_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_7_address1_local = p_cast1078_fu_1828_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_7_address1_local = p_cast1076_fu_1592_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_7_address1_local = p_cast1074_fu_1356_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_7_address1_local = p_cast_fu_1079_p1;
    end else begin
        v224_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        v224_7_ce0_local = 1'b1;
    end else begin
        v224_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        v224_7_ce1_local = 1'b1;
    end else begin
        v224_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
            if (((icmp_ln31_fu_848_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_908_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_854_p2 = (v5_fu_128 + 8'd1);
assign add_ln32_fu_969_p2 = (v6_reg_792 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
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
assign cmp11_fu_902_p2 = ((v5_fu_128 == 8'd0) ? 1'b1 : 1'b0);
assign empty_107_fu_1374_p2 = (v6_reg_792 + 8'd6);
assign empty_108_fu_1581_p2 = (p_shl7_fu_1563_p3 - p_shl1115_fu_1577_p1);
assign empty_109_fu_1587_p2 = (empty_108_fu_1581_p2 + zext_ln31_reg_2107);
assign empty_118_fu_1604_p2 = (v6_reg_792 + 8'd7);
assign empty_119_fu_1776_p2 = (p_shl8_fu_1758_p3 - p_shl1113_fu_1772_p1);
assign empty_120_fu_1782_p2 = (empty_119_fu_1776_p2 + zext_ln31_reg_2107);
assign empty_129_fu_1610_p2 = (v6_reg_792 + 8'd8);
assign empty_130_fu_1817_p2 = (p_shl_fu_1799_p3 - p_shl1111_fu_1813_p1);
assign empty_131_fu_1823_p2 = (empty_130_fu_1817_p2 + zext_ln31_reg_2107);
assign empty_43_fu_940_p2 = (empty_fu_934_p2 + zext_ln31_reg_2107);
assign empty_52_fu_957_p2 = (v6_reg_792 + 8'd1);
assign empty_53_fu_1068_p2 = (p_shl2_fu_1050_p3 - p_shl1125_fu_1064_p1);
assign empty_54_fu_1074_p2 = (empty_53_fu_1068_p2 + zext_ln31_reg_2107);
assign empty_63_fu_963_p2 = (v6_reg_792 + 8'd2);
assign empty_64_fu_1109_p2 = (p_shl3_fu_1091_p3 - p_shl1123_fu_1105_p1);
assign empty_65_fu_1115_p2 = (empty_64_fu_1109_p2 + zext_ln31_reg_2107);
assign empty_74_fu_1132_p2 = (v6_reg_792 + 8'd3);
assign empty_75_fu_1304_p2 = (p_shl4_fu_1286_p3 - p_shl1121_fu_1300_p1);
assign empty_76_fu_1310_p2 = (empty_75_fu_1304_p2 + zext_ln31_reg_2107);
assign empty_85_fu_1138_p2 = (v6_reg_792 + 8'd4);
assign empty_86_fu_1345_p2 = (p_shl5_fu_1327_p3 - p_shl1119_fu_1341_p1);
assign empty_87_fu_1351_p2 = (empty_86_fu_1345_p2 + zext_ln31_reg_2107);
assign empty_96_fu_1368_p2 = (v6_reg_792 + 8'd5);
assign empty_97_fu_1540_p2 = (p_shl6_fu_1522_p3 - p_shl1117_fu_1536_p1);
assign empty_98_fu_1546_p2 = (empty_97_fu_1540_p2 + zext_ln31_reg_2107);
assign empty_fu_934_p2 = (p_shl1_fu_914_p3 - p_shl1127_fu_930_p1);
assign grp_fu_176_p_ce = grp_fu_2639_ce;
assign grp_fu_176_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2639_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2639_p_din1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_2643_ce;
assign grp_fu_180_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2643_p_din0;
assign grp_fu_180_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2643_p_din1;
assign grp_fu_184_p_ce = grp_fu_2647_ce;
assign grp_fu_184_p_din0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2647_p_din0;
assign grp_fu_184_p_din1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_grp_fu_2647_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_ap_start_reg;
assign icmp_ln31_fu_848_p2 = ((v5_fu_128 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_908_p2 = ((v6_reg_792 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln31_1_fu_888_p4 = {{v5_fu_128[7:3]}};
assign lshr_ln_fu_868_p4 = {{v5_fu_128[7:2]}};
assign mul_ln101_fu_1889_p0 = mul_ln101_fu_1889_p00;
assign mul_ln101_fu_1889_p00 = empty_96_reg_2376;
assign mul_ln101_fu_1889_p1 = 16'd220;
assign mul_ln114_fu_1898_p0 = mul_ln114_fu_1898_p00;
assign mul_ln114_fu_1898_p00 = empty_107_reg_2383;
assign mul_ln114_fu_1898_p1 = 16'd220;
assign mul_ln127_fu_1907_p0 = mul_ln127_fu_1907_p00;
assign mul_ln127_fu_1907_p00 = empty_118_reg_2480;
assign mul_ln127_fu_1907_p1 = 16'd220;
assign mul_ln140_fu_1987_p0 = mul_ln140_fu_1987_p00;
assign mul_ln140_fu_1987_p00 = empty_129_reg_2487;
assign mul_ln140_fu_1987_p1 = 16'd220;
assign mul_ln34_fu_1844_p0 = mul_ln34_fu_1844_p00;
assign mul_ln34_fu_1844_p00 = v6_reg_792;
assign mul_ln34_fu_1844_p1 = 16'd220;
assign mul_ln38_fu_882_p0 = mul_ln38_fu_882_p00;
assign mul_ln38_fu_882_p00 = lshr_ln_fu_868_p4;
assign mul_ln38_fu_882_p1 = 14'd220;
assign mul_ln49_fu_1853_p0 = mul_ln49_fu_1853_p00;
assign mul_ln49_fu_1853_p00 = empty_52_reg_2168;
assign mul_ln49_fu_1853_p1 = 16'd220;
assign mul_ln62_fu_1862_p0 = mul_ln62_fu_1862_p00;
assign mul_ln62_fu_1862_p00 = empty_63_reg_2175;
assign mul_ln62_fu_1862_p1 = 16'd220;
assign mul_ln75_fu_1871_p0 = mul_ln75_fu_1871_p00;
assign mul_ln75_fu_1871_p00 = empty_74_reg_2272;
assign mul_ln75_fu_1871_p1 = 16'd220;
assign mul_ln88_fu_1880_p0 = mul_ln88_fu_1880_p00;
assign mul_ln88_fu_1880_p00 = empty_85_reg_2279;
assign mul_ln88_fu_1880_p1 = 16'd220;
assign p_cast1071_fu_945_p1 = empty_43_fu_940_p2;
assign p_cast1072_fu_1120_p1 = empty_65_fu_1115_p2;
assign p_cast1073_fu_1315_p1 = empty_76_fu_1310_p2;
assign p_cast1074_fu_1356_p1 = empty_87_fu_1351_p2;
assign p_cast1075_fu_1551_p1 = empty_98_fu_1546_p2;
assign p_cast1076_fu_1592_p1 = empty_109_fu_1587_p2;
assign p_cast1077_fu_1787_p1 = empty_120_fu_1782_p2;
assign p_cast1078_fu_1828_p1 = empty_131_fu_1823_p2;
assign p_cast_fu_1079_p1 = empty_54_fu_1074_p2;
assign p_shl1111_fu_1813_p1 = tmp_17_fu_1806_p3;
assign p_shl1113_fu_1772_p1 = tmp_16_fu_1765_p3;
assign p_shl1115_fu_1577_p1 = tmp_15_fu_1570_p3;
assign p_shl1117_fu_1536_p1 = tmp_14_fu_1529_p3;
assign p_shl1119_fu_1341_p1 = tmp_13_fu_1334_p3;
assign p_shl1121_fu_1300_p1 = tmp_12_fu_1293_p3;
assign p_shl1123_fu_1105_p1 = tmp_11_fu_1098_p3;
assign p_shl1125_fu_1064_p1 = tmp_10_fu_1057_p3;
assign p_shl1127_fu_930_p1 = tmp_fu_922_p3;
assign p_shl1_fu_914_p3 = {{v6_reg_792}, {5'd0}};
assign p_shl2_fu_1050_p3 = {{empty_52_reg_2168}, {5'd0}};
assign p_shl3_fu_1091_p3 = {{empty_63_reg_2175}, {5'd0}};
assign p_shl4_fu_1286_p3 = {{empty_74_reg_2272}, {5'd0}};
assign p_shl5_fu_1327_p3 = {{empty_85_reg_2279}, {5'd0}};
assign p_shl6_fu_1522_p3 = {{empty_96_reg_2376}, {5'd0}};
assign p_shl7_fu_1563_p3 = {{empty_107_reg_2383}, {5'd0}};
assign p_shl8_fu_1758_p3 = {{empty_118_reg_2480}, {5'd0}};
assign p_shl_fu_1799_p3 = {{empty_129_reg_2487}, {5'd0}};
assign tmp_10_fu_1057_p3 = {{empty_52_reg_2168}, {3'd0}};
assign tmp_11_fu_1098_p3 = {{empty_63_reg_2175}, {3'd0}};
assign tmp_12_fu_1293_p3 = {{empty_74_reg_2272}, {3'd0}};
assign tmp_13_fu_1334_p3 = {{empty_85_reg_2279}, {3'd0}};
assign tmp_14_fu_1529_p3 = {{empty_96_reg_2376}, {3'd0}};
assign tmp_15_fu_1570_p3 = {{empty_107_reg_2383}, {3'd0}};
assign tmp_16_fu_1765_p3 = {{empty_118_reg_2480}, {3'd0}};
assign tmp_17_fu_1806_p3 = {{empty_129_reg_2487}, {3'd0}};
assign tmp_fu_922_p3 = {{v6_reg_792}, {3'd0}};
assign trunc_ln31_1_fu_864_p1 = v5_fu_128[1:0];
assign trunc_ln31_fu_860_p1 = v5_fu_128[2:0];
assign v101_1_fu_2025_p10 = v224_4_q1;
assign v101_1_fu_2025_p12 = v224_5_q1;
assign v101_1_fu_2025_p14 = v224_6_q1;
assign v101_1_fu_2025_p16 = v224_7_q1;
assign v101_1_fu_2025_p17 = 'bx;
assign v101_1_fu_2025_p2 = v224_0_q1;
assign v101_1_fu_2025_p4 = v224_1_q1;
assign v101_1_fu_2025_p6 = v224_2_q1;
assign v101_1_fu_2025_p8 = v224_3_q1;
assign v11_fu_1011_p10 = v224_4_q0;
assign v11_fu_1011_p12 = v224_5_q0;
assign v11_fu_1011_p14 = v224_6_q0;
assign v11_fu_1011_p16 = v224_7_q0;
assign v11_fu_1011_p17 = 'bx;
assign v11_fu_1011_p2 = v224_0_q0;
assign v11_fu_1011_p4 = v224_1_q0;
assign v11_fu_1011_p6 = v224_2_q0;
assign v11_fu_1011_p8 = v224_3_q0;
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
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v228_3_ce1;
assign v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_address0;
assign v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_address1;
assign v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_ce0;
assign v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_ce1;
assign v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_d0;
assign v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_d1;
assign v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_we0;
assign v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_804_v229_we1;
assign v236_read = v236_read_local;
assign v24_1_fu_1176_p10 = v224_4_q1;
assign v24_1_fu_1176_p12 = v224_5_q1;
assign v24_1_fu_1176_p14 = v224_6_q1;
assign v24_1_fu_1176_p16 = v224_7_q1;
assign v24_1_fu_1176_p17 = 'bx;
assign v24_1_fu_1176_p2 = v224_0_q1;
assign v24_1_fu_1176_p4 = v224_1_q1;
assign v24_1_fu_1176_p6 = v224_2_q1;
assign v24_1_fu_1176_p8 = v224_3_q1;
assign v35_1_fu_1247_p10 = v224_4_q0;
assign v35_1_fu_1247_p12 = v224_5_q0;
assign v35_1_fu_1247_p14 = v224_6_q0;
assign v35_1_fu_1247_p16 = v224_7_q0;
assign v35_1_fu_1247_p17 = 'bx;
assign v35_1_fu_1247_p2 = v224_0_q0;
assign v35_1_fu_1247_p4 = v224_1_q0;
assign v35_1_fu_1247_p6 = v224_2_q0;
assign v35_1_fu_1247_p8 = v224_3_q0;
assign v46_1_fu_1412_p10 = v224_4_q0;
assign v46_1_fu_1412_p12 = v224_5_q0;
assign v46_1_fu_1412_p14 = v224_6_q0;
assign v46_1_fu_1412_p16 = v224_7_q0;
assign v46_1_fu_1412_p17 = 'bx;
assign v46_1_fu_1412_p2 = v224_0_q0;
assign v46_1_fu_1412_p4 = v224_1_q0;
assign v46_1_fu_1412_p6 = v224_2_q0;
assign v46_1_fu_1412_p8 = v224_3_q0;
assign v57_1_fu_1483_p10 = v224_4_q1;
assign v57_1_fu_1483_p12 = v224_5_q1;
assign v57_1_fu_1483_p14 = v224_6_q1;
assign v57_1_fu_1483_p16 = v224_7_q1;
assign v57_1_fu_1483_p17 = 'bx;
assign v57_1_fu_1483_p2 = v224_0_q1;
assign v57_1_fu_1483_p4 = v224_1_q1;
assign v57_1_fu_1483_p6 = v224_2_q1;
assign v57_1_fu_1483_p8 = v224_3_q1;
assign v68_1_fu_1648_p10 = v224_4_q0;
assign v68_1_fu_1648_p12 = v224_5_q0;
assign v68_1_fu_1648_p14 = v224_6_q0;
assign v68_1_fu_1648_p16 = v224_7_q0;
assign v68_1_fu_1648_p17 = 'bx;
assign v68_1_fu_1648_p2 = v224_0_q0;
assign v68_1_fu_1648_p4 = v224_1_q0;
assign v68_1_fu_1648_p6 = v224_2_q0;
assign v68_1_fu_1648_p8 = v224_3_q0;
assign v79_1_fu_1719_p10 = v224_4_q1;
assign v79_1_fu_1719_p12 = v224_5_q1;
assign v79_1_fu_1719_p14 = v224_6_q1;
assign v79_1_fu_1719_p16 = v224_7_q1;
assign v79_1_fu_1719_p17 = 'bx;
assign v79_1_fu_1719_p2 = v224_0_q1;
assign v79_1_fu_1719_p4 = v224_1_q1;
assign v79_1_fu_1719_p6 = v224_2_q1;
assign v79_1_fu_1719_p8 = v224_3_q1;
assign v90_1_fu_1945_p10 = v224_4_q0;
assign v90_1_fu_1945_p12 = v224_5_q0;
assign v90_1_fu_1945_p14 = v224_6_q0;
assign v90_1_fu_1945_p16 = v224_7_q0;
assign v90_1_fu_1945_p17 = 'bx;
assign v90_1_fu_1945_p2 = v224_0_q0;
assign v90_1_fu_1945_p4 = v224_1_q0;
assign v90_1_fu_1945_p6 = v224_2_q0;
assign v90_1_fu_1945_p8 = v224_3_q0;
assign zext_ln31_fu_898_p1 = lshr_ln31_1_fu_888_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_2107[12:5] <= 8'b00000000;
end
endmodule 