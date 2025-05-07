module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v226_4_address0,v226_4_ce0,v226_4_q0,v226_4_address1,v226_4_ce1,v226_4_q1,v226_5_address0,v226_5_ce0,v226_5_q0,v226_5_address1,v226_5_ce1,v226_5_q1,v226_6_address0,v226_6_ce0,v226_6_q0,v226_6_address1,v226_6_ce1,v226_6_q1,v226_7_address0,v226_7_ce0,v226_7_q0,v226_7_address1,v226_7_ce1,v226_7_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_opcode,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce); 
parameter    ap_ST_fsm_state1 = 32'd1;
parameter    ap_ST_fsm_state2 = 32'd2;
parameter    ap_ST_fsm_state3 = 32'd4;
parameter    ap_ST_fsm_state4 = 32'd8;
parameter    ap_ST_fsm_state5 = 32'd16;
parameter    ap_ST_fsm_state6 = 32'd32;
parameter    ap_ST_fsm_state7 = 32'd64;
parameter    ap_ST_fsm_state8 = 32'd128;
parameter    ap_ST_fsm_state9 = 32'd256;
parameter    ap_ST_fsm_state10 = 32'd512;
parameter    ap_ST_fsm_state11 = 32'd1024;
parameter    ap_ST_fsm_state12 = 32'd2048;
parameter    ap_ST_fsm_state13 = 32'd4096;
parameter    ap_ST_fsm_state14 = 32'd8192;
parameter    ap_ST_fsm_state15 = 32'd16384;
parameter    ap_ST_fsm_state16 = 32'd32768;
parameter    ap_ST_fsm_state17 = 32'd65536;
parameter    ap_ST_fsm_state18 = 32'd131072;
parameter    ap_ST_fsm_state19 = 32'd262144;
parameter    ap_ST_fsm_state20 = 32'd524288;
parameter    ap_ST_fsm_state21 = 32'd1048576;
parameter    ap_ST_fsm_state22 = 32'd2097152;
parameter    ap_ST_fsm_state23 = 32'd4194304;
parameter    ap_ST_fsm_state24 = 32'd8388608;
parameter    ap_ST_fsm_state25 = 32'd16777216;
parameter    ap_ST_fsm_state26 = 32'd33554432;
parameter    ap_ST_fsm_state27 = 32'd67108864;
parameter    ap_ST_fsm_state28 = 32'd134217728;
parameter    ap_ST_fsm_state29 = 32'd268435456;
parameter    ap_ST_fsm_state30 = 32'd536870912;
parameter    ap_ST_fsm_state31 = 32'd1073741824;
parameter    ap_ST_fsm_state32 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [12:0] v226_0_address1;
output   v226_0_ce1;
input  [31:0] v226_0_q1;
output  [12:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [12:0] v226_1_address1;
output   v226_1_ce1;
input  [31:0] v226_1_q1;
output  [12:0] v226_2_address0;
output   v226_2_ce0;
input  [31:0] v226_2_q0;
output  [12:0] v226_2_address1;
output   v226_2_ce1;
input  [31:0] v226_2_q1;
output  [12:0] v226_3_address0;
output   v226_3_ce0;
input  [31:0] v226_3_q0;
output  [12:0] v226_3_address1;
output   v226_3_ce1;
input  [31:0] v226_3_q1;
output  [12:0] v226_4_address0;
output   v226_4_ce0;
input  [31:0] v226_4_q0;
output  [12:0] v226_4_address1;
output   v226_4_ce1;
input  [31:0] v226_4_q1;
output  [12:0] v226_5_address0;
output   v226_5_ce0;
input  [31:0] v226_5_q0;
output  [12:0] v226_5_address1;
output   v226_5_ce1;
input  [31:0] v226_5_q1;
output  [12:0] v226_6_address0;
output   v226_6_ce0;
input  [31:0] v226_6_q0;
output  [12:0] v226_6_address1;
output   v226_6_ce1;
input  [31:0] v226_6_q1;
output  [12:0] v226_7_address0;
output   v226_7_ce0;
input  [31:0] v226_7_q0;
output  [12:0] v226_7_address1;
output   v226_7_ce1;
input  [31:0] v226_7_q1;
output  [14:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [14:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [14:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [14:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [15:0] v225_address0;
output   v225_ce0;
output   v225_we0;
output  [31:0] v225_d0;
input  [31:0] v225_q0;
output  [15:0] v225_address1;
output   v225_ce1;
output   v225_we1;
output  [31:0] v225_d1;
input  [31:0] v225_q1;
input  [31:0] v113;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
output  [1:0] grp_fu_152_p_opcode;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v225_address0;
reg v225_ce0;
reg v225_we0;
reg[31:0] v225_d0;
reg[15:0] v225_address1;
reg v225_ce1;
reg v225_we1;
reg[31:0] v225_d1;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_957_p2;
reg   [31:0] reg_895;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state30;
reg   [31:0] reg_901;
wire   [31:0] grp_fu_867_p2;
reg   [31:0] reg_907;
wire   [31:0] grp_fu_871_p2;
reg   [31:0] reg_913;
wire   [31:0] grp_fu_875_p2;
reg   [31:0] reg_919;
wire   [31:0] grp_fu_879_p2;
reg   [31:0] reg_925;
wire   [31:0] grp_fu_883_p2;
reg   [31:0] reg_931;
wire   [31:0] grp_fu_887_p2;
reg   [31:0] reg_937;
wire   [31:0] grp_fu_891_p2;
reg   [31:0] reg_943;
wire   [2:0] trunc_ln168_fu_963_p1;
reg   [2:0] trunc_ln168_reg_2371;
wire   [14:0] mul_ln175_fu_981_p2;
reg   [14:0] mul_ln175_reg_2393;
wire   [12:0] zext_ln168_fu_997_p1;
reg   [12:0] zext_ln168_reg_2399;
wire   [0:0] cmp11_fu_1001_p2;
reg   [0:0] cmp11_reg_2421;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_1017_p2;
reg   [7:0] add_ln169_reg_2434;
wire   [7:0] empty_21_fu_1023_p2;
reg   [7:0] empty_21_reg_2439;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_28_fu_1033_p2;
reg   [7:0] empty_28_reg_2449;
wire   [7:0] empty_35_fu_1043_p2;
reg   [7:0] empty_35_reg_2459;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_42_fu_1053_p2;
reg   [7:0] empty_42_reg_2469;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_49_fu_1070_p2;
reg   [7:0] empty_49_reg_2499;
wire   [7:0] empty_56_fu_1080_p2;
reg   [7:0] empty_56_reg_2509;
wire   [31:0] v_fu_1106_p11;
reg   [31:0] v_reg_2519;
wire    ap_CS_fsm_state7;
wire   [7:0] empty_63_fu_1143_p2;
reg   [7:0] empty_63_reg_2564;
wire   [7:0] empty_70_fu_1153_p2;
reg   [7:0] empty_70_reg_2574;
wire   [31:0] v37_fu_1179_p11;
reg   [31:0] v37_reg_2584;
wire    ap_CS_fsm_state8;
wire   [31:0] v39_fu_1218_p11;
reg   [31:0] v39_reg_2589;
wire   [31:0] v41_fu_1271_p11;
reg   [31:0] v41_reg_2634;
wire    ap_CS_fsm_state9;
wire   [31:0] v43_fu_1310_p11;
reg   [31:0] v43_reg_2639;
wire   [31:0] v45_fu_1363_p11;
reg   [31:0] v45_reg_2684;
wire    ap_CS_fsm_state10;
wire   [31:0] v47_fu_1402_p11;
reg   [31:0] v47_reg_2689;
wire   [31:0] v49_fu_1455_p11;
reg   [31:0] v49_reg_2734;
wire    ap_CS_fsm_state11;
wire   [31:0] v51_fu_1494_p11;
reg   [31:0] v51_reg_2739;
wire   [15:0] mul_ln171_fu_1521_p2;
reg   [15:0] mul_ln171_reg_2744;
wire   [15:0] mul_ln186_fu_1530_p2;
reg   [15:0] mul_ln186_reg_2749;
wire   [15:0] mul_ln199_fu_1539_p2;
reg   [15:0] mul_ln199_reg_2754;
wire   [15:0] mul_ln212_fu_1548_p2;
reg   [15:0] mul_ln212_reg_2759;
wire   [15:0] mul_ln225_fu_1557_p2;
reg   [15:0] mul_ln225_reg_2764;
wire   [15:0] mul_ln238_fu_1566_p2;
reg   [15:0] mul_ln238_reg_2769;
wire   [15:0] mul_ln251_fu_1575_p2;
reg   [15:0] mul_ln251_reg_2774;
wire   [15:0] mul_ln264_fu_1584_p2;
reg   [15:0] mul_ln264_reg_2779;
wire   [15:0] mul_ln277_fu_1593_p2;
reg   [15:0] mul_ln277_reg_2784;
wire    ap_CS_fsm_state18;
wire   [7:0] add_ln169_1_fu_1609_p2;
reg   [7:0] add_ln169_1_reg_2797;
wire   [7:0] empty_83_fu_1625_p2;
reg   [7:0] empty_83_reg_2802;
wire    ap_CS_fsm_state19;
wire   [7:0] empty_90_fu_1635_p2;
reg   [7:0] empty_90_reg_2812;
wire   [7:0] empty_97_fu_1645_p2;
reg   [7:0] empty_97_reg_2822;
wire    ap_CS_fsm_state20;
wire   [7:0] empty_104_fu_1655_p2;
reg   [7:0] empty_104_reg_2832;
wire    ap_CS_fsm_state21;
wire   [7:0] empty_111_fu_1672_p2;
reg   [7:0] empty_111_reg_2862;
wire   [7:0] empty_118_fu_1682_p2;
reg   [7:0] empty_118_reg_2872;
wire   [31:0] v119_1_fu_1708_p11;
reg   [31:0] v119_1_reg_2882;
wire    ap_CS_fsm_state22;
wire   [7:0] empty_125_fu_1745_p2;
reg   [7:0] empty_125_reg_2927;
wire   [7:0] empty_132_fu_1755_p2;
reg   [7:0] empty_132_reg_2937;
wire   [31:0] v132_1_fu_1781_p11;
reg   [31:0] v132_1_reg_2947;
wire    ap_CS_fsm_state23;
wire   [31:0] v143_1_fu_1820_p11;
reg   [31:0] v143_1_reg_2952;
wire   [31:0] v154_1_fu_1873_p11;
reg   [31:0] v154_1_reg_2997;
wire    ap_CS_fsm_state24;
wire   [31:0] v165_1_fu_1912_p11;
reg   [31:0] v165_1_reg_3002;
wire   [31:0] v176_1_fu_1965_p11;
reg   [31:0] v176_1_reg_3047;
wire    ap_CS_fsm_state25;
wire   [31:0] v187_1_fu_2004_p11;
reg   [31:0] v187_1_reg_3052;
wire   [31:0] v198_1_fu_2057_p11;
reg   [31:0] v198_1_reg_3097;
wire    ap_CS_fsm_state26;
wire   [31:0] v209_1_fu_2096_p11;
reg   [31:0] v209_1_reg_3102;
wire   [15:0] mul_ln171_1_fu_2123_p2;
reg   [15:0] mul_ln171_1_reg_3107;
wire   [15:0] mul_ln186_1_fu_2132_p2;
reg   [15:0] mul_ln186_1_reg_3112;
wire   [15:0] mul_ln199_1_fu_2141_p2;
reg   [15:0] mul_ln199_1_reg_3117;
wire   [15:0] mul_ln212_1_fu_2150_p2;
reg   [15:0] mul_ln212_1_reg_3122;
wire   [15:0] mul_ln225_1_fu_2159_p2;
reg   [15:0] mul_ln225_1_reg_3127;
wire   [15:0] mul_ln238_1_fu_2168_p2;
reg   [15:0] mul_ln238_1_reg_3132;
wire   [15:0] mul_ln251_1_fu_2177_p2;
reg   [15:0] mul_ln251_1_reg_3137;
wire   [15:0] mul_ln264_1_fu_2186_p2;
reg   [15:0] mul_ln264_1_reg_3142;
wire   [15:0] mul_ln277_1_fu_2195_p2;
reg   [15:0] mul_ln277_1_reg_3147;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v227_0_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_3152_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_3152_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_3152_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_3152_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_859_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_859_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_859_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v227_1_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_3152_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_3152_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_3152_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_3152_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_859_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_859_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_859_p_ce;
reg   [7:0] v115_reg_780;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg   [7:0] v115_1_reg_792;
wire    ap_CS_fsm_state32;
wire   [0:0] icmp_ln169_fu_1007_p2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_start_reg;
wire    ap_CS_fsm_state16;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_start_reg;
wire    ap_CS_fsm_state31;
wire   [63:0] p_cast1430_fu_1063_p1;
wire   [63:0] p_cast_fu_1129_p1;
wire   [63:0] p_cast1431_fu_1136_p1;
wire   [63:0] p_cast1432_fu_1241_p1;
wire   [63:0] p_cast1433_fu_1248_p1;
wire   [63:0] p_cast1434_fu_1333_p1;
wire   [63:0] p_cast1435_fu_1340_p1;
wire   [63:0] p_cast1436_fu_1425_p1;
wire   [63:0] p_cast1437_fu_1432_p1;
wire   [63:0] p_cast1438_fu_1665_p1;
wire   [63:0] p_cast1439_fu_1731_p1;
wire   [63:0] p_cast1440_fu_1738_p1;
wire   [63:0] p_cast1441_fu_1843_p1;
wire   [63:0] p_cast1442_fu_1850_p1;
wire   [63:0] p_cast1443_fu_1935_p1;
wire   [63:0] p_cast1444_fu_1942_p1;
wire   [63:0] p_cast1445_fu_2027_p1;
wire   [63:0] p_cast1446_fu_2034_p1;
reg   [7:0] v114_fu_114;
wire   [7:0] add_ln168_fu_1615_p2;
wire   [0:0] icmp_ln169_1_fu_1599_p2;
reg    v236_write_local;
reg    v226_0_ce0_local;
reg   [12:0] v226_0_address0_local;
reg    v226_0_ce1_local;
reg   [12:0] v226_0_address1_local;
reg    v226_2_ce0_local;
reg   [12:0] v226_2_address0_local;
reg    v226_2_ce1_local;
reg   [12:0] v226_2_address1_local;
reg    v226_4_ce0_local;
reg   [12:0] v226_4_address0_local;
reg    v226_4_ce1_local;
reg   [12:0] v226_4_address1_local;
reg    v226_6_ce0_local;
reg   [12:0] v226_6_address0_local;
reg    v226_6_ce1_local;
reg   [12:0] v226_6_address1_local;
reg    v226_1_ce0_local;
reg   [12:0] v226_1_address0_local;
reg    v226_1_ce1_local;
reg   [12:0] v226_1_address1_local;
reg    v226_3_ce0_local;
reg   [12:0] v226_3_address0_local;
reg    v226_3_ce1_local;
reg   [12:0] v226_3_address1_local;
reg    v226_5_ce0_local;
reg   [12:0] v226_5_address0_local;
reg    v226_5_ce1_local;
reg   [12:0] v226_5_address1_local;
reg    v226_7_ce0_local;
reg   [12:0] v226_7_address0_local;
reg    v226_7_ce1_local;
reg   [12:0] v226_7_address1_local;
reg   [31:0] grp_fu_859_p0;
reg   [31:0] grp_fu_859_p1;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state27;
reg   [31:0] grp_fu_863_p0;
reg   [31:0] grp_fu_867_p0;
reg   [31:0] grp_fu_871_p0;
reg   [31:0] grp_fu_875_p0;
reg   [31:0] grp_fu_879_p0;
reg   [31:0] grp_fu_883_p0;
reg   [31:0] grp_fu_887_p0;
reg   [31:0] grp_fu_891_p0;
wire   [6:0] lshr_ln_fu_967_p4;
wire   [6:0] mul_ln175_fu_981_p0;
wire   [8:0] mul_ln175_fu_981_p1;
wire   [4:0] lshr_ln168_1_fu_987_p4;
wire   [12:0] grp_fu_2201_p3;
wire   [31:0] v_fu_1106_p2;
wire   [31:0] v_fu_1106_p4;
wire   [31:0] v_fu_1106_p6;
wire   [31:0] v_fu_1106_p8;
wire   [31:0] v_fu_1106_p9;
wire   [12:0] grp_fu_2209_p3;
wire   [12:0] grp_fu_2217_p3;
wire   [31:0] v37_fu_1179_p2;
wire   [31:0] v37_fu_1179_p4;
wire   [31:0] v37_fu_1179_p6;
wire   [31:0] v37_fu_1179_p8;
wire   [31:0] v37_fu_1179_p9;
wire   [31:0] v39_fu_1218_p2;
wire   [31:0] v39_fu_1218_p4;
wire   [31:0] v39_fu_1218_p6;
wire   [31:0] v39_fu_1218_p8;
wire   [31:0] v39_fu_1218_p9;
wire   [12:0] grp_fu_2225_p3;
wire   [12:0] grp_fu_2233_p3;
wire   [31:0] v41_fu_1271_p2;
wire   [31:0] v41_fu_1271_p4;
wire   [31:0] v41_fu_1271_p6;
wire   [31:0] v41_fu_1271_p8;
wire   [31:0] v41_fu_1271_p9;
wire   [31:0] v43_fu_1310_p2;
wire   [31:0] v43_fu_1310_p4;
wire   [31:0] v43_fu_1310_p6;
wire   [31:0] v43_fu_1310_p8;
wire   [31:0] v43_fu_1310_p9;
wire   [12:0] grp_fu_2241_p3;
wire   [12:0] grp_fu_2249_p3;
wire   [31:0] v45_fu_1363_p2;
wire   [31:0] v45_fu_1363_p4;
wire   [31:0] v45_fu_1363_p6;
wire   [31:0] v45_fu_1363_p8;
wire   [31:0] v45_fu_1363_p9;
wire   [31:0] v47_fu_1402_p2;
wire   [31:0] v47_fu_1402_p4;
wire   [31:0] v47_fu_1402_p6;
wire   [31:0] v47_fu_1402_p8;
wire   [31:0] v47_fu_1402_p9;
wire   [12:0] grp_fu_2257_p3;
wire   [12:0] grp_fu_2265_p3;
wire   [31:0] v49_fu_1455_p2;
wire   [31:0] v49_fu_1455_p4;
wire   [31:0] v49_fu_1455_p6;
wire   [31:0] v49_fu_1455_p8;
wire   [31:0] v49_fu_1455_p9;
wire   [31:0] v51_fu_1494_p2;
wire   [31:0] v51_fu_1494_p4;
wire   [31:0] v51_fu_1494_p6;
wire   [31:0] v51_fu_1494_p8;
wire   [31:0] v51_fu_1494_p9;
wire   [7:0] mul_ln171_fu_1521_p0;
wire   [8:0] mul_ln171_fu_1521_p1;
wire   [7:0] mul_ln186_fu_1530_p0;
wire   [8:0] mul_ln186_fu_1530_p1;
wire   [7:0] mul_ln199_fu_1539_p0;
wire   [8:0] mul_ln199_fu_1539_p1;
wire   [7:0] mul_ln212_fu_1548_p0;
wire   [8:0] mul_ln212_fu_1548_p1;
wire   [7:0] mul_ln225_fu_1557_p0;
wire   [8:0] mul_ln225_fu_1557_p1;
wire   [7:0] mul_ln238_fu_1566_p0;
wire   [8:0] mul_ln238_fu_1566_p1;
wire   [7:0] mul_ln251_fu_1575_p0;
wire   [8:0] mul_ln251_fu_1575_p1;
wire   [7:0] mul_ln264_fu_1584_p0;
wire   [8:0] mul_ln264_fu_1584_p1;
wire   [7:0] mul_ln277_fu_1593_p0;
wire   [8:0] mul_ln277_fu_1593_p1;
wire   [12:0] grp_fu_2273_p3;
wire   [31:0] v119_1_fu_1708_p2;
wire   [31:0] v119_1_fu_1708_p4;
wire   [31:0] v119_1_fu_1708_p6;
wire   [31:0] v119_1_fu_1708_p8;
wire   [31:0] v119_1_fu_1708_p9;
wire   [12:0] grp_fu_2281_p3;
wire   [12:0] grp_fu_2289_p3;
wire   [31:0] v132_1_fu_1781_p2;
wire   [31:0] v132_1_fu_1781_p4;
wire   [31:0] v132_1_fu_1781_p6;
wire   [31:0] v132_1_fu_1781_p8;
wire   [31:0] v132_1_fu_1781_p9;
wire   [31:0] v143_1_fu_1820_p2;
wire   [31:0] v143_1_fu_1820_p4;
wire   [31:0] v143_1_fu_1820_p6;
wire   [31:0] v143_1_fu_1820_p8;
wire   [31:0] v143_1_fu_1820_p9;
wire   [12:0] grp_fu_2297_p3;
wire   [12:0] grp_fu_2305_p3;
wire   [31:0] v154_1_fu_1873_p2;
wire   [31:0] v154_1_fu_1873_p4;
wire   [31:0] v154_1_fu_1873_p6;
wire   [31:0] v154_1_fu_1873_p8;
wire   [31:0] v154_1_fu_1873_p9;
wire   [31:0] v165_1_fu_1912_p2;
wire   [31:0] v165_1_fu_1912_p4;
wire   [31:0] v165_1_fu_1912_p6;
wire   [31:0] v165_1_fu_1912_p8;
wire   [31:0] v165_1_fu_1912_p9;
wire   [12:0] grp_fu_2313_p3;
wire   [12:0] grp_fu_2321_p3;
wire   [31:0] v176_1_fu_1965_p2;
wire   [31:0] v176_1_fu_1965_p4;
wire   [31:0] v176_1_fu_1965_p6;
wire   [31:0] v176_1_fu_1965_p8;
wire   [31:0] v176_1_fu_1965_p9;
wire   [31:0] v187_1_fu_2004_p2;
wire   [31:0] v187_1_fu_2004_p4;
wire   [31:0] v187_1_fu_2004_p6;
wire   [31:0] v187_1_fu_2004_p8;
wire   [31:0] v187_1_fu_2004_p9;
wire   [12:0] grp_fu_2329_p3;
wire   [12:0] grp_fu_2337_p3;
wire   [31:0] v198_1_fu_2057_p2;
wire   [31:0] v198_1_fu_2057_p4;
wire   [31:0] v198_1_fu_2057_p6;
wire   [31:0] v198_1_fu_2057_p8;
wire   [31:0] v198_1_fu_2057_p9;
wire   [31:0] v209_1_fu_2096_p2;
wire   [31:0] v209_1_fu_2096_p4;
wire   [31:0] v209_1_fu_2096_p6;
wire   [31:0] v209_1_fu_2096_p8;
wire   [31:0] v209_1_fu_2096_p9;
wire   [7:0] mul_ln171_1_fu_2123_p0;
wire   [8:0] mul_ln171_1_fu_2123_p1;
wire   [7:0] mul_ln186_1_fu_2132_p0;
wire   [8:0] mul_ln186_1_fu_2132_p1;
wire   [7:0] mul_ln199_1_fu_2141_p0;
wire   [8:0] mul_ln199_1_fu_2141_p1;
wire   [7:0] mul_ln212_1_fu_2150_p0;
wire   [8:0] mul_ln212_1_fu_2150_p1;
wire   [7:0] mul_ln225_1_fu_2159_p0;
wire   [8:0] mul_ln225_1_fu_2159_p1;
wire   [7:0] mul_ln238_1_fu_2168_p0;
wire   [8:0] mul_ln238_1_fu_2168_p1;
wire   [7:0] mul_ln251_1_fu_2177_p0;
wire   [8:0] mul_ln251_1_fu_2177_p1;
wire   [7:0] mul_ln264_1_fu_2186_p0;
wire   [8:0] mul_ln264_1_fu_2186_p1;
wire   [7:0] mul_ln277_1_fu_2195_p0;
wire   [8:0] mul_ln277_1_fu_2195_p1;
wire   [7:0] grp_fu_2201_p0;
wire   [4:0] grp_fu_2201_p1;
wire   [4:0] grp_fu_2201_p2;
wire   [7:0] grp_fu_2209_p0;
wire   [4:0] grp_fu_2209_p1;
wire   [4:0] grp_fu_2209_p2;
wire   [7:0] grp_fu_2217_p0;
wire   [4:0] grp_fu_2217_p1;
wire   [4:0] grp_fu_2217_p2;
wire   [7:0] grp_fu_2225_p0;
wire   [4:0] grp_fu_2225_p1;
wire   [4:0] grp_fu_2225_p2;
wire   [7:0] grp_fu_2233_p0;
wire   [4:0] grp_fu_2233_p1;
wire   [4:0] grp_fu_2233_p2;
wire   [7:0] grp_fu_2241_p0;
wire   [4:0] grp_fu_2241_p1;
wire   [4:0] grp_fu_2241_p2;
wire   [7:0] grp_fu_2249_p0;
wire   [4:0] grp_fu_2249_p1;
wire   [4:0] grp_fu_2249_p2;
wire   [7:0] grp_fu_2257_p0;
wire   [4:0] grp_fu_2257_p1;
wire   [4:0] grp_fu_2257_p2;
wire   [7:0] grp_fu_2265_p0;
wire   [4:0] grp_fu_2265_p1;
wire   [4:0] grp_fu_2265_p2;
wire   [7:0] grp_fu_2273_p0;
wire   [4:0] grp_fu_2273_p1;
wire   [4:0] grp_fu_2273_p2;
wire   [7:0] grp_fu_2281_p0;
wire   [4:0] grp_fu_2281_p1;
wire   [4:0] grp_fu_2281_p2;
wire   [7:0] grp_fu_2289_p0;
wire   [4:0] grp_fu_2289_p1;
wire   [4:0] grp_fu_2289_p2;
wire   [7:0] grp_fu_2297_p0;
wire   [4:0] grp_fu_2297_p1;
wire   [4:0] grp_fu_2297_p2;
wire   [7:0] grp_fu_2305_p0;
wire   [4:0] grp_fu_2305_p1;
wire   [4:0] grp_fu_2305_p2;
wire   [7:0] grp_fu_2313_p0;
wire   [4:0] grp_fu_2313_p1;
wire   [4:0] grp_fu_2313_p2;
wire   [7:0] grp_fu_2321_p0;
wire   [4:0] grp_fu_2321_p1;
wire   [4:0] grp_fu_2321_p2;
wire   [7:0] grp_fu_2329_p0;
wire   [4:0] grp_fu_2329_p1;
wire   [4:0] grp_fu_2329_p2;
wire   [7:0] grp_fu_2337_p0;
wire   [4:0] grp_fu_2337_p1;
wire   [4:0] grp_fu_2337_p2;
reg    grp_fu_859_ce;
reg   [31:0] grp_fu_3152_p0;
reg   [31:0] grp_fu_3152_p1;
reg    grp_fu_3152_ce;
reg   [31:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
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
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
reg    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ST_fsm_state19_blk;
wire    ap_ST_fsm_state20_blk;
wire    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
wire    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
wire    ap_ST_fsm_state30_blk;
wire    ap_ST_fsm_state31_blk;
reg    ap_ST_fsm_state32_blk;
wire   [12:0] grp_fu_2201_p00;
wire   [12:0] grp_fu_2209_p00;
wire   [12:0] grp_fu_2217_p00;
wire   [12:0] grp_fu_2225_p00;
wire   [12:0] grp_fu_2233_p00;
wire   [12:0] grp_fu_2241_p00;
wire   [12:0] grp_fu_2249_p00;
wire   [12:0] grp_fu_2257_p00;
wire   [12:0] grp_fu_2265_p00;
wire   [12:0] grp_fu_2273_p00;
wire   [12:0] grp_fu_2281_p00;
wire   [12:0] grp_fu_2289_p00;
wire   [12:0] grp_fu_2297_p00;
wire   [12:0] grp_fu_2305_p00;
wire   [12:0] grp_fu_2313_p00;
wire   [12:0] grp_fu_2321_p00;
wire   [12:0] grp_fu_2329_p00;
wire   [12:0] grp_fu_2337_p00;
wire   [15:0] mul_ln171_1_fu_2123_p00;
wire   [15:0] mul_ln171_fu_1521_p00;
wire   [14:0] mul_ln175_fu_981_p00;
wire   [15:0] mul_ln186_1_fu_2132_p00;
wire   [15:0] mul_ln186_fu_1530_p00;
wire   [15:0] mul_ln199_1_fu_2141_p00;
wire   [15:0] mul_ln199_fu_1539_p00;
wire   [15:0] mul_ln212_1_fu_2150_p00;
wire   [15:0] mul_ln212_fu_1548_p00;
wire   [15:0] mul_ln225_1_fu_2159_p00;
wire   [15:0] mul_ln225_fu_1557_p00;
wire   [15:0] mul_ln238_1_fu_2168_p00;
wire   [15:0] mul_ln238_fu_1566_p00;
wire   [15:0] mul_ln251_1_fu_2177_p00;
wire   [15:0] mul_ln251_fu_1575_p00;
wire   [15:0] mul_ln264_1_fu_2186_p00;
wire   [15:0] mul_ln264_fu_1584_p00;
wire   [15:0] mul_ln277_1_fu_2195_p00;
wire   [15:0] mul_ln277_fu_1593_p00;
wire   [2:0] v_fu_1106_p1;
wire   [2:0] v_fu_1106_p3;
wire  signed [2:0] v_fu_1106_p5;
wire  signed [2:0] v_fu_1106_p7;
wire   [2:0] v37_fu_1179_p1;
wire   [2:0] v37_fu_1179_p3;
wire  signed [2:0] v37_fu_1179_p5;
wire  signed [2:0] v37_fu_1179_p7;
wire   [2:0] v39_fu_1218_p1;
wire   [2:0] v39_fu_1218_p3;
wire  signed [2:0] v39_fu_1218_p5;
wire  signed [2:0] v39_fu_1218_p7;
wire   [2:0] v41_fu_1271_p1;
wire   [2:0] v41_fu_1271_p3;
wire  signed [2:0] v41_fu_1271_p5;
wire  signed [2:0] v41_fu_1271_p7;
wire   [2:0] v43_fu_1310_p1;
wire   [2:0] v43_fu_1310_p3;
wire  signed [2:0] v43_fu_1310_p5;
wire  signed [2:0] v43_fu_1310_p7;
wire   [2:0] v45_fu_1363_p1;
wire   [2:0] v45_fu_1363_p3;
wire  signed [2:0] v45_fu_1363_p5;
wire  signed [2:0] v45_fu_1363_p7;
wire   [2:0] v47_fu_1402_p1;
wire   [2:0] v47_fu_1402_p3;
wire  signed [2:0] v47_fu_1402_p5;
wire  signed [2:0] v47_fu_1402_p7;
wire   [2:0] v49_fu_1455_p1;
wire   [2:0] v49_fu_1455_p3;
wire  signed [2:0] v49_fu_1455_p5;
wire  signed [2:0] v49_fu_1455_p7;
wire   [2:0] v51_fu_1494_p1;
wire   [2:0] v51_fu_1494_p3;
wire  signed [2:0] v51_fu_1494_p5;
wire  signed [2:0] v51_fu_1494_p7;
wire   [2:0] v119_1_fu_1708_p1;
wire   [2:0] v119_1_fu_1708_p3;
wire  signed [2:0] v119_1_fu_1708_p5;
wire  signed [2:0] v119_1_fu_1708_p7;
wire   [2:0] v132_1_fu_1781_p1;
wire   [2:0] v132_1_fu_1781_p3;
wire  signed [2:0] v132_1_fu_1781_p5;
wire  signed [2:0] v132_1_fu_1781_p7;
wire   [2:0] v143_1_fu_1820_p1;
wire   [2:0] v143_1_fu_1820_p3;
wire  signed [2:0] v143_1_fu_1820_p5;
wire  signed [2:0] v143_1_fu_1820_p7;
wire   [2:0] v154_1_fu_1873_p1;
wire   [2:0] v154_1_fu_1873_p3;
wire  signed [2:0] v154_1_fu_1873_p5;
wire  signed [2:0] v154_1_fu_1873_p7;
wire   [2:0] v165_1_fu_1912_p1;
wire   [2:0] v165_1_fu_1912_p3;
wire  signed [2:0] v165_1_fu_1912_p5;
wire  signed [2:0] v165_1_fu_1912_p7;
wire   [2:0] v176_1_fu_1965_p1;
wire   [2:0] v176_1_fu_1965_p3;
wire  signed [2:0] v176_1_fu_1965_p5;
wire  signed [2:0] v176_1_fu_1965_p7;
wire   [2:0] v187_1_fu_2004_p1;
wire   [2:0] v187_1_fu_2004_p3;
wire  signed [2:0] v187_1_fu_2004_p5;
wire  signed [2:0] v187_1_fu_2004_p7;
wire   [2:0] v198_1_fu_2057_p1;
wire   [2:0] v198_1_fu_2057_p3;
wire  signed [2:0] v198_1_fu_2057_p5;
wire  signed [2:0] v198_1_fu_2057_p7;
wire   [2:0] v209_1_fu_2096_p1;
wire   [2:0] v209_1_fu_2096_p3;
wire  signed [2:0] v209_1_fu_2096_p5;
wire  signed [2:0] v209_1_fu_2096_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_start_reg = 1'b0;
#0 v114_fu_114 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_804(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_d1),.v225_q1(v225_q1),.mul_ln175(mul_ln175_reg_2393),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v227_0_ce1),.v227_0_q1(v227_0_q1),.mul_ln171(mul_ln171_reg_2744),.mul_ln186(mul_ln186_reg_2749),.mul_ln199(mul_ln199_reg_2754),.mul_ln212(mul_ln212_reg_2759),.mul_ln225(mul_ln225_reg_2764),.mul_ln238(mul_ln238_reg_2769),.mul_ln251(mul_ln251_reg_2774),.mul_ln264(mul_ln264_reg_2779),.mul_ln277(mul_ln277_reg_2784),.cmp11(cmp11_reg_2421),.v120(reg_895),.v133(reg_901),.v144(reg_907),.v155(reg_913),.v166(reg_919),.v177(reg_925),.v188(reg_931),.v199(reg_937),.v210(reg_943),.grp_fu_3152_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_3152_p_din0),.grp_fu_3152_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_3152_p_din1),.grp_fu_3152_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_3152_p_opcode),.grp_fu_3152_p_dout0(grp_fu_152_p_dout0),.grp_fu_3152_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_3152_p_ce),.grp_fu_859_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_859_p_din0),.grp_fu_859_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_859_p_din1),.grp_fu_859_p_dout0(grp_fu_156_p_dout0),.grp_fu_859_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_859_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_832(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_d1),.v225_q1(v225_q1),.mul_ln175(mul_ln175_reg_2393),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v227_1_ce1),.v227_1_q1(v227_1_q1),.mul_ln171_1(mul_ln171_1_reg_3107),.mul_ln186_1(mul_ln186_1_reg_3112),.mul_ln199_1(mul_ln199_1_reg_3117),.mul_ln212_1(mul_ln212_1_reg_3122),.mul_ln225_1(mul_ln225_1_reg_3127),.mul_ln238_1(mul_ln238_1_reg_3132),.mul_ln251_1(mul_ln251_1_reg_3137),.mul_ln264_1(mul_ln264_1_reg_3142),.mul_ln277_1(mul_ln277_1_reg_3147),.v120_1(reg_895),.v133_1(reg_901),.v144_1(reg_907),.v155_1(reg_913),.v166_1(reg_919),.v177_1(reg_925),.v188_1(reg_931),.v199_1(reg_937),.v210_1(reg_943),.grp_fu_3152_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_3152_p_din0),.grp_fu_3152_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_3152_p_din1),.grp_fu_3152_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_3152_p_opcode),.grp_fu_3152_p_dout0(grp_fu_152_p_dout0),.grp_fu_3152_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_3152_p_ce),.grp_fu_859_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_859_p_din0),.grp_fu_859_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_859_p_din1),.grp_fu_859_p_dout0(grp_fu_156_p_dout0),.grp_fu_859_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_859_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U50(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_867_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_867_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_871_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_871_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_875_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_875_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_879_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_879_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_883_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_883_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_887_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_887_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_891_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_891_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U57(.din0(mul_ln175_fu_981_p0),.din1(mul_ln175_fu_981_p1),.dout(mul_ln175_fu_981_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U58(.din0(v_fu_1106_p2),.din1(v_fu_1106_p4),.din2(v_fu_1106_p6),.din3(v_fu_1106_p8),.def(v_fu_1106_p9),.sel(trunc_ln168_reg_2371),.dout(v_fu_1106_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U59(.din0(v37_fu_1179_p2),.din1(v37_fu_1179_p4),.din2(v37_fu_1179_p6),.din3(v37_fu_1179_p8),.def(v37_fu_1179_p9),.sel(trunc_ln168_reg_2371),.dout(v37_fu_1179_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U60(.din0(v39_fu_1218_p2),.din1(v39_fu_1218_p4),.din2(v39_fu_1218_p6),.din3(v39_fu_1218_p8),.def(v39_fu_1218_p9),.sel(trunc_ln168_reg_2371),.dout(v39_fu_1218_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U61(.din0(v41_fu_1271_p2),.din1(v41_fu_1271_p4),.din2(v41_fu_1271_p6),.din3(v41_fu_1271_p8),.def(v41_fu_1271_p9),.sel(trunc_ln168_reg_2371),.dout(v41_fu_1271_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U62(.din0(v43_fu_1310_p2),.din1(v43_fu_1310_p4),.din2(v43_fu_1310_p6),.din3(v43_fu_1310_p8),.def(v43_fu_1310_p9),.sel(trunc_ln168_reg_2371),.dout(v43_fu_1310_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U63(.din0(v45_fu_1363_p2),.din1(v45_fu_1363_p4),.din2(v45_fu_1363_p6),.din3(v45_fu_1363_p8),.def(v45_fu_1363_p9),.sel(trunc_ln168_reg_2371),.dout(v45_fu_1363_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U64(.din0(v47_fu_1402_p2),.din1(v47_fu_1402_p4),.din2(v47_fu_1402_p6),.din3(v47_fu_1402_p8),.def(v47_fu_1402_p9),.sel(trunc_ln168_reg_2371),.dout(v47_fu_1402_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U65(.din0(v49_fu_1455_p2),.din1(v49_fu_1455_p4),.din2(v49_fu_1455_p6),.din3(v49_fu_1455_p8),.def(v49_fu_1455_p9),.sel(trunc_ln168_reg_2371),.dout(v49_fu_1455_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U66(.din0(v51_fu_1494_p2),.din1(v51_fu_1494_p4),.din2(v51_fu_1494_p6),.din3(v51_fu_1494_p8),.def(v51_fu_1494_p9),.sel(trunc_ln168_reg_2371),.dout(v51_fu_1494_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U67(.din0(mul_ln171_fu_1521_p0),.din1(mul_ln171_fu_1521_p1),.dout(mul_ln171_fu_1521_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U68(.din0(mul_ln186_fu_1530_p0),.din1(mul_ln186_fu_1530_p1),.dout(mul_ln186_fu_1530_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U69(.din0(mul_ln199_fu_1539_p0),.din1(mul_ln199_fu_1539_p1),.dout(mul_ln199_fu_1539_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U70(.din0(mul_ln212_fu_1548_p0),.din1(mul_ln212_fu_1548_p1),.dout(mul_ln212_fu_1548_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U71(.din0(mul_ln225_fu_1557_p0),.din1(mul_ln225_fu_1557_p1),.dout(mul_ln225_fu_1557_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U72(.din0(mul_ln238_fu_1566_p0),.din1(mul_ln238_fu_1566_p1),.dout(mul_ln238_fu_1566_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U73(.din0(mul_ln251_fu_1575_p0),.din1(mul_ln251_fu_1575_p1),.dout(mul_ln251_fu_1575_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U74(.din0(mul_ln264_fu_1584_p0),.din1(mul_ln264_fu_1584_p1),.dout(mul_ln264_fu_1584_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U75(.din0(mul_ln277_fu_1593_p0),.din1(mul_ln277_fu_1593_p1),.dout(mul_ln277_fu_1593_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U76(.din0(v119_1_fu_1708_p2),.din1(v119_1_fu_1708_p4),.din2(v119_1_fu_1708_p6),.din3(v119_1_fu_1708_p8),.def(v119_1_fu_1708_p9),.sel(trunc_ln168_reg_2371),.dout(v119_1_fu_1708_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U77(.din0(v132_1_fu_1781_p2),.din1(v132_1_fu_1781_p4),.din2(v132_1_fu_1781_p6),.din3(v132_1_fu_1781_p8),.def(v132_1_fu_1781_p9),.sel(trunc_ln168_reg_2371),.dout(v132_1_fu_1781_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U78(.din0(v143_1_fu_1820_p2),.din1(v143_1_fu_1820_p4),.din2(v143_1_fu_1820_p6),.din3(v143_1_fu_1820_p8),.def(v143_1_fu_1820_p9),.sel(trunc_ln168_reg_2371),.dout(v143_1_fu_1820_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U79(.din0(v154_1_fu_1873_p2),.din1(v154_1_fu_1873_p4),.din2(v154_1_fu_1873_p6),.din3(v154_1_fu_1873_p8),.def(v154_1_fu_1873_p9),.sel(trunc_ln168_reg_2371),.dout(v154_1_fu_1873_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U80(.din0(v165_1_fu_1912_p2),.din1(v165_1_fu_1912_p4),.din2(v165_1_fu_1912_p6),.din3(v165_1_fu_1912_p8),.def(v165_1_fu_1912_p9),.sel(trunc_ln168_reg_2371),.dout(v165_1_fu_1912_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U81(.din0(v176_1_fu_1965_p2),.din1(v176_1_fu_1965_p4),.din2(v176_1_fu_1965_p6),.din3(v176_1_fu_1965_p8),.def(v176_1_fu_1965_p9),.sel(trunc_ln168_reg_2371),.dout(v176_1_fu_1965_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U82(.din0(v187_1_fu_2004_p2),.din1(v187_1_fu_2004_p4),.din2(v187_1_fu_2004_p6),.din3(v187_1_fu_2004_p8),.def(v187_1_fu_2004_p9),.sel(trunc_ln168_reg_2371),.dout(v187_1_fu_2004_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U83(.din0(v198_1_fu_2057_p2),.din1(v198_1_fu_2057_p4),.din2(v198_1_fu_2057_p6),.din3(v198_1_fu_2057_p8),.def(v198_1_fu_2057_p9),.sel(trunc_ln168_reg_2371),.dout(v198_1_fu_2057_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U84(.din0(v209_1_fu_2096_p2),.din1(v209_1_fu_2096_p4),.din2(v209_1_fu_2096_p6),.din3(v209_1_fu_2096_p8),.def(v209_1_fu_2096_p9),.sel(trunc_ln168_reg_2371),.dout(v209_1_fu_2096_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U85(.din0(mul_ln171_1_fu_2123_p0),.din1(mul_ln171_1_fu_2123_p1),.dout(mul_ln171_1_fu_2123_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U86(.din0(mul_ln186_1_fu_2132_p0),.din1(mul_ln186_1_fu_2132_p1),.dout(mul_ln186_1_fu_2132_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U87(.din0(mul_ln199_1_fu_2141_p0),.din1(mul_ln199_1_fu_2141_p1),.dout(mul_ln199_1_fu_2141_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U88(.din0(mul_ln212_1_fu_2150_p0),.din1(mul_ln212_1_fu_2150_p1),.dout(mul_ln212_1_fu_2150_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U89(.din0(mul_ln225_1_fu_2159_p0),.din1(mul_ln225_1_fu_2159_p1),.dout(mul_ln225_1_fu_2159_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U90(.din0(mul_ln238_1_fu_2168_p0),.din1(mul_ln238_1_fu_2168_p1),.dout(mul_ln238_1_fu_2168_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U91(.din0(mul_ln251_1_fu_2177_p0),.din1(mul_ln251_1_fu_2177_p1),.dout(mul_ln251_1_fu_2177_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U92(.din0(mul_ln264_1_fu_2186_p0),.din1(mul_ln264_1_fu_2186_p1),.dout(mul_ln264_1_fu_2186_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U93(.din0(mul_ln277_1_fu_2195_p0),.din1(mul_ln277_1_fu_2195_p1),.dout(mul_ln277_1_fu_2195_p2));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U94(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2201_p0),.din1(grp_fu_2201_p1),.din2(grp_fu_2201_p2),.ce(1'b1),.dout(grp_fu_2201_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U95(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2209_p0),.din1(grp_fu_2209_p1),.din2(grp_fu_2209_p2),.ce(1'b1),.dout(grp_fu_2209_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U96(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2217_p0),.din1(grp_fu_2217_p1),.din2(grp_fu_2217_p2),.ce(1'b1),.dout(grp_fu_2217_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U97(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2225_p0),.din1(grp_fu_2225_p1),.din2(grp_fu_2225_p2),.ce(1'b1),.dout(grp_fu_2225_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2233_p0),.din1(grp_fu_2233_p1),.din2(grp_fu_2233_p2),.ce(1'b1),.dout(grp_fu_2233_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2241_p0),.din1(grp_fu_2241_p1),.din2(grp_fu_2241_p2),.ce(1'b1),.dout(grp_fu_2241_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2249_p0),.din1(grp_fu_2249_p1),.din2(grp_fu_2249_p2),.ce(1'b1),.dout(grp_fu_2249_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2257_p0),.din1(grp_fu_2257_p1),.din2(grp_fu_2257_p2),.ce(1'b1),.dout(grp_fu_2257_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U102(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2265_p0),.din1(grp_fu_2265_p1),.din2(grp_fu_2265_p2),.ce(1'b1),.dout(grp_fu_2265_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U103(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2273_p0),.din1(grp_fu_2273_p1),.din2(grp_fu_2273_p2),.ce(1'b1),.dout(grp_fu_2273_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2281_p0),.din1(grp_fu_2281_p1),.din2(grp_fu_2281_p2),.ce(1'b1),.dout(grp_fu_2281_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2289_p0),.din1(grp_fu_2289_p1),.din2(grp_fu_2289_p2),.ce(1'b1),.dout(grp_fu_2289_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U106(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2297_p0),.din1(grp_fu_2297_p1),.din2(grp_fu_2297_p2),.ce(1'b1),.dout(grp_fu_2297_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U107(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2305_p0),.din1(grp_fu_2305_p1),.din2(grp_fu_2305_p2),.ce(1'b1),.dout(grp_fu_2305_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U108(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2313_p0),.din1(grp_fu_2313_p1),.din2(grp_fu_2313_p2),.ce(1'b1),.dout(grp_fu_2313_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U109(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2321_p0),.din1(grp_fu_2321_p1),.din2(grp_fu_2321_p2),.ce(1'b1),.dout(grp_fu_2321_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U110(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2329_p0),.din1(grp_fu_2329_p1),.din2(grp_fu_2329_p2),.ce(1'b1),.dout(grp_fu_2329_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U111(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2337_p0),.din1(grp_fu_2337_p1),.din2(grp_fu_2337_p2),.ce(1'b1),.dout(grp_fu_2337_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state31)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_114 <= 8'd0;
    end else if (((icmp_ln169_1_fu_1599_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        v114_fu_114 <= add_ln168_fu_1615_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln169_fu_1007_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v115_1_reg_792 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
        v115_1_reg_792 <= add_ln169_1_reg_2797;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_780 <= add_ln169_reg_2434;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_957_p2 == 1'd1))) begin
        v115_reg_780 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        add_ln169_1_reg_2797 <= add_ln169_1_fu_1609_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_2434 <= add_ln169_fu_1017_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_2421 <= cmp11_fu_1001_p2;
        mul_ln175_reg_2393 <= mul_ln175_fu_981_p2;
        trunc_ln168_reg_2371 <= trunc_ln168_fu_963_p1;
        zext_ln168_reg_2399[4 : 0] <= zext_ln168_fu_997_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        empty_104_reg_2832 <= empty_104_fu_1655_p2;
        empty_97_reg_2822 <= empty_97_fu_1645_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        empty_111_reg_2862 <= empty_111_fu_1672_p2;
        empty_118_reg_2872 <= empty_118_fu_1682_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        empty_125_reg_2927 <= empty_125_fu_1745_p2;
        empty_132_reg_2937 <= empty_132_fu_1755_p2;
        v119_1_reg_2882 <= v119_1_fu_1708_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_21_reg_2439 <= empty_21_fu_1023_p2;
        empty_28_reg_2449 <= empty_28_fu_1033_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_35_reg_2459 <= empty_35_fu_1043_p2;
        empty_42_reg_2469 <= empty_42_fu_1053_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_49_reg_2499 <= empty_49_fu_1070_p2;
        empty_56_reg_2509 <= empty_56_fu_1080_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_63_reg_2564 <= empty_63_fu_1143_p2;
        empty_70_reg_2574 <= empty_70_fu_1153_p2;
        v_reg_2519 <= v_fu_1106_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        empty_83_reg_2802 <= empty_83_fu_1625_p2;
        empty_90_reg_2812 <= empty_90_fu_1635_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        mul_ln171_1_reg_3107 <= mul_ln171_1_fu_2123_p2;
        mul_ln186_1_reg_3112 <= mul_ln186_1_fu_2132_p2;
        mul_ln199_1_reg_3117 <= mul_ln199_1_fu_2141_p2;
        mul_ln212_1_reg_3122 <= mul_ln212_1_fu_2150_p2;
        mul_ln225_1_reg_3127 <= mul_ln225_1_fu_2159_p2;
        mul_ln238_1_reg_3132 <= mul_ln238_1_fu_2168_p2;
        mul_ln251_1_reg_3137 <= mul_ln251_1_fu_2177_p2;
        mul_ln264_1_reg_3142 <= mul_ln264_1_fu_2186_p2;
        mul_ln277_1_reg_3147 <= mul_ln277_1_fu_2195_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_2744 <= mul_ln171_fu_1521_p2;
        mul_ln186_reg_2749 <= mul_ln186_fu_1530_p2;
        mul_ln199_reg_2754 <= mul_ln199_fu_1539_p2;
        mul_ln212_reg_2759 <= mul_ln212_fu_1548_p2;
        mul_ln225_reg_2764 <= mul_ln225_fu_1557_p2;
        mul_ln238_reg_2769 <= mul_ln238_fu_1566_p2;
        mul_ln251_reg_2774 <= mul_ln251_fu_1575_p2;
        mul_ln264_reg_2779 <= mul_ln264_fu_1584_p2;
        mul_ln277_reg_2784 <= mul_ln277_fu_1593_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_895 <= grp_fu_156_p_dout0;
        reg_901 <= grp_fu_160_p_dout0;
        reg_907 <= grp_fu_867_p2;
        reg_913 <= grp_fu_871_p2;
        reg_919 <= grp_fu_875_p2;
        reg_925 <= grp_fu_879_p2;
        reg_931 <= grp_fu_883_p2;
        reg_937 <= grp_fu_887_p2;
        reg_943 <= grp_fu_891_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v132_1_reg_2947 <= v132_1_fu_1781_p11;
        v143_1_reg_2952 <= v143_1_fu_1820_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v154_1_reg_2997 <= v154_1_fu_1873_p11;
        v165_1_reg_3002 <= v165_1_fu_1912_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v176_1_reg_3047 <= v176_1_fu_1965_p11;
        v187_1_reg_3052 <= v187_1_fu_2004_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v198_1_reg_3097 <= v198_1_fu_2057_p11;
        v209_1_reg_3102 <= v209_1_fu_2096_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v37_reg_2584 <= v37_fu_1179_p11;
        v39_reg_2589 <= v39_fu_1218_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v41_reg_2634 <= v41_fu_1271_p11;
        v43_reg_2639 <= v43_fu_1310_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v45_reg_2684 <= v45_fu_1363_p11;
        v47_reg_2689 <= v47_fu_1402_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v49_reg_2734 <= v49_fu_1455_p11;
        v51_reg_2739 <= v51_fu_1494_p11;
    end
end
assign ap_ST_fsm_state10_blk = 1'b0;
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
assign ap_ST_fsm_state14_blk = 1'b0;
assign ap_ST_fsm_state15_blk = 1'b0;
assign ap_ST_fsm_state16_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
assign ap_ST_fsm_state18_blk = 1'b0;
assign ap_ST_fsm_state19_blk = 1'b0;
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state20_blk = 1'b0;
assign ap_ST_fsm_state21_blk = 1'b0;
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
assign ap_ST_fsm_state26_blk = 1'b0;
assign ap_ST_fsm_state27_blk = 1'b0;
assign ap_ST_fsm_state28_blk = 1'b0;
assign ap_ST_fsm_state29_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state2)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state30_blk = 1'b0;
assign ap_ST_fsm_state31_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_done == 1'b0)) begin
        ap_ST_fsm_state32_blk = 1'b1;
    end else begin
        ap_ST_fsm_state32_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_957_p2 == 1'd0)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_957_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3152_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_3152_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3152_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_3152_p_ce;
    end else begin
        grp_fu_3152_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3152_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_3152_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3152_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_3152_p_din0;
    end else begin
        grp_fu_3152_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_3152_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_3152_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3152_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_3152_p_din1;
    end else begin
        grp_fu_3152_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_859_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_859_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_859_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_859_p_ce;
    end else begin
        grp_fu_859_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_859_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_859_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_859_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_859_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_859_p0 = v119_1_reg_2882;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_859_p0 = v_reg_2519;
    end else begin
        grp_fu_859_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_859_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_grp_fu_859_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_859_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_grp_fu_859_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_859_p1 = v113;
    end else begin
        grp_fu_859_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_863_p0 = v132_1_reg_2947;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_863_p0 = v37_reg_2584;
    end else begin
        grp_fu_863_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_867_p0 = v143_1_reg_2952;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_867_p0 = v39_reg_2589;
    end else begin
        grp_fu_867_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_871_p0 = v154_1_reg_2997;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_871_p0 = v41_reg_2634;
    end else begin
        grp_fu_871_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_875_p0 = v165_1_reg_3002;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_875_p0 = v43_reg_2639;
    end else begin
        grp_fu_875_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_879_p0 = v176_1_reg_3047;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_879_p0 = v45_reg_2684;
    end else begin
        grp_fu_879_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_883_p0 = v187_1_reg_3052;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_883_p0 = v47_reg_2689;
    end else begin
        grp_fu_883_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_887_p0 = v198_1_reg_3097;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_887_p0 = v49_reg_2734;
    end else begin
        grp_fu_887_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_891_p0 = v209_1_reg_3102;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_891_p0 = v51_reg_2739;
    end else begin
        grp_fu_891_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast1436_fu_1425_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast1434_fu_1333_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast1432_fu_1241_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast1431_fu_1136_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast1430_fu_1063_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast1437_fu_1432_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast1435_fu_1340_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast1433_fu_1248_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_1129_p1;
    end else begin
        v226_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_0_ce0_local = 1'b1;
    end else begin
        v226_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_0_ce1_local = 1'b1;
    end else begin
        v226_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_1_address0_local = p_cast1445_fu_2027_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_1_address0_local = p_cast1443_fu_1935_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_1_address0_local = p_cast1441_fu_1843_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_1_address0_local = p_cast1440_fu_1738_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_1_address0_local = p_cast1438_fu_1665_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_1_address1_local = p_cast1446_fu_2034_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_1_address1_local = p_cast1444_fu_1942_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_1_address1_local = p_cast1442_fu_1850_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_1_address1_local = p_cast1439_fu_1731_p1;
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address0_local = p_cast1436_fu_1425_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast1434_fu_1333_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast1432_fu_1241_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast1431_fu_1136_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast1430_fu_1063_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast1437_fu_1432_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast1435_fu_1340_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast1433_fu_1248_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast_fu_1129_p1;
    end else begin
        v226_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_2_ce0_local = 1'b1;
    end else begin
        v226_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_2_ce1_local = 1'b1;
    end else begin
        v226_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_3_address0_local = p_cast1445_fu_2027_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_3_address0_local = p_cast1443_fu_1935_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_3_address0_local = p_cast1441_fu_1843_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_3_address0_local = p_cast1440_fu_1738_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_3_address0_local = p_cast1438_fu_1665_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_3_address1_local = p_cast1446_fu_2034_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_3_address1_local = p_cast1444_fu_1942_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_3_address1_local = p_cast1442_fu_1850_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_3_address1_local = p_cast1439_fu_1731_p1;
    end else begin
        v226_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21))) begin
        v226_3_ce0_local = 1'b1;
    end else begin
        v226_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22))) begin
        v226_3_ce1_local = 1'b1;
    end else begin
        v226_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_4_address0_local = p_cast1436_fu_1425_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address0_local = p_cast1434_fu_1333_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address0_local = p_cast1432_fu_1241_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address0_local = p_cast1431_fu_1136_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_4_address0_local = p_cast1430_fu_1063_p1;
    end else begin
        v226_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_4_address1_local = p_cast1437_fu_1432_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address1_local = p_cast1435_fu_1340_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address1_local = p_cast1433_fu_1248_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address1_local = p_cast_fu_1129_p1;
    end else begin
        v226_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_4_ce0_local = 1'b1;
    end else begin
        v226_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_4_ce1_local = 1'b1;
    end else begin
        v226_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_5_address0_local = p_cast1445_fu_2027_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_5_address0_local = p_cast1443_fu_1935_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_5_address0_local = p_cast1441_fu_1843_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_5_address0_local = p_cast1440_fu_1738_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_5_address0_local = p_cast1438_fu_1665_p1;
    end else begin
        v226_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_5_address1_local = p_cast1446_fu_2034_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_5_address1_local = p_cast1444_fu_1942_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_5_address1_local = p_cast1442_fu_1850_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_5_address1_local = p_cast1439_fu_1731_p1;
    end else begin
        v226_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21))) begin
        v226_5_ce0_local = 1'b1;
    end else begin
        v226_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22))) begin
        v226_5_ce1_local = 1'b1;
    end else begin
        v226_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_6_address0_local = p_cast1436_fu_1425_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address0_local = p_cast1434_fu_1333_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address0_local = p_cast1432_fu_1241_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address0_local = p_cast1431_fu_1136_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_6_address0_local = p_cast1430_fu_1063_p1;
    end else begin
        v226_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_6_address1_local = p_cast1437_fu_1432_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address1_local = p_cast1435_fu_1340_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address1_local = p_cast1433_fu_1248_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address1_local = p_cast_fu_1129_p1;
    end else begin
        v226_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_6_ce0_local = 1'b1;
    end else begin
        v226_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_6_ce1_local = 1'b1;
    end else begin
        v226_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_7_address0_local = p_cast1445_fu_2027_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_7_address0_local = p_cast1443_fu_1935_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_7_address0_local = p_cast1441_fu_1843_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_7_address0_local = p_cast1440_fu_1738_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_7_address0_local = p_cast1438_fu_1665_p1;
    end else begin
        v226_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_7_address1_local = p_cast1446_fu_2034_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_7_address1_local = p_cast1444_fu_1942_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_7_address1_local = p_cast1442_fu_1850_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_7_address1_local = p_cast1439_fu_1731_p1;
    end else begin
        v226_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state21))) begin
        v226_7_ce0_local = 1'b1;
    end else begin
        v226_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22))) begin
        v226_7_ce1_local = 1'b1;
    end else begin
        v226_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_957_p2 == 1'd0))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_957_p2 == 1'd0))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_957_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_957_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_1007_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((icmp_ln169_1_fu_1599_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
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
            ap_NS_fsm = ap_ST_fsm_state25;
        end
        ap_ST_fsm_state25 : begin
            ap_NS_fsm = ap_ST_fsm_state26;
        end
        ap_ST_fsm_state26 : begin
            ap_NS_fsm = ap_ST_fsm_state27;
        end
        ap_ST_fsm_state27 : begin
            ap_NS_fsm = ap_ST_fsm_state28;
        end
        ap_ST_fsm_state28 : begin
            ap_NS_fsm = ap_ST_fsm_state29;
        end
        ap_ST_fsm_state29 : begin
            ap_NS_fsm = ap_ST_fsm_state30;
        end
        ap_ST_fsm_state30 : begin
            ap_NS_fsm = ap_ST_fsm_state31;
        end
        ap_ST_fsm_state31 : begin
            ap_NS_fsm = ap_ST_fsm_state32;
        end
        ap_ST_fsm_state32 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state32;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_fu_1615_p2 = (v114_fu_114 + 8'd2);
assign add_ln169_1_fu_1609_p2 = (v115_1_reg_792 + 8'd9);
assign add_ln169_fu_1017_p2 = (v115_reg_780 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
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
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state31 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_state32 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((icmp_ln168_fu_957_p2 == 1'd0) & (v236_full_n == 1'b0));
end
assign cmp11_fu_1001_p2 = ((v114_fu_114 == 8'd0) ? 1'b1 : 1'b0);
assign empty_104_fu_1655_p2 = (v115_1_reg_792 + 8'd4);
assign empty_111_fu_1672_p2 = (v115_1_reg_792 + 8'd5);
assign empty_118_fu_1682_p2 = (v115_1_reg_792 + 8'd6);
assign empty_125_fu_1745_p2 = (v115_1_reg_792 + 8'd7);
assign empty_132_fu_1755_p2 = (v115_1_reg_792 + 8'd8);
assign empty_21_fu_1023_p2 = (v115_reg_780 + 8'd1);
assign empty_28_fu_1033_p2 = (v115_reg_780 + 8'd2);
assign empty_35_fu_1043_p2 = (v115_reg_780 + 8'd3);
assign empty_42_fu_1053_p2 = (v115_reg_780 + 8'd4);
assign empty_49_fu_1070_p2 = (v115_reg_780 + 8'd5);
assign empty_56_fu_1080_p2 = (v115_reg_780 + 8'd6);
assign empty_63_fu_1143_p2 = (v115_reg_780 + 8'd7);
assign empty_70_fu_1153_p2 = (v115_reg_780 + 8'd8);
assign empty_83_fu_1625_p2 = (v115_1_reg_792 + 8'd1);
assign empty_90_fu_1635_p2 = (v115_1_reg_792 + 8'd2);
assign empty_97_fu_1645_p2 = (v115_1_reg_792 + 8'd3);
assign grp_fu_152_p_ce = grp_fu_3152_ce;
assign grp_fu_152_p_din0 = grp_fu_3152_p0;
assign grp_fu_152_p_din1 = grp_fu_3152_p1;
assign grp_fu_152_p_opcode = 2'd0;
assign grp_fu_156_p_ce = grp_fu_859_ce;
assign grp_fu_156_p_din0 = grp_fu_859_p0;
assign grp_fu_156_p_din1 = grp_fu_859_p1;
assign grp_fu_160_p_ce = 1'b1;
assign grp_fu_160_p_din0 = grp_fu_863_p0;
assign grp_fu_160_p_din1 = v113;
assign grp_fu_2201_p0 = grp_fu_2201_p00;
assign grp_fu_2201_p00 = v115_reg_780;
assign grp_fu_2201_p1 = 13'd27;
assign grp_fu_2201_p2 = zext_ln168_reg_2399;
assign grp_fu_2209_p0 = grp_fu_2209_p00;
assign grp_fu_2209_p00 = empty_21_fu_1023_p2;
assign grp_fu_2209_p1 = 13'd27;
assign grp_fu_2209_p2 = zext_ln168_reg_2399;
assign grp_fu_2217_p0 = grp_fu_2217_p00;
assign grp_fu_2217_p00 = empty_28_fu_1033_p2;
assign grp_fu_2217_p1 = 13'd27;
assign grp_fu_2217_p2 = zext_ln168_reg_2399;
assign grp_fu_2225_p0 = grp_fu_2225_p00;
assign grp_fu_2225_p00 = empty_35_fu_1043_p2;
assign grp_fu_2225_p1 = 13'd27;
assign grp_fu_2225_p2 = zext_ln168_reg_2399;
assign grp_fu_2233_p0 = grp_fu_2233_p00;
assign grp_fu_2233_p00 = empty_42_fu_1053_p2;
assign grp_fu_2233_p1 = 13'd27;
assign grp_fu_2233_p2 = zext_ln168_reg_2399;
assign grp_fu_2241_p0 = grp_fu_2241_p00;
assign grp_fu_2241_p00 = empty_49_fu_1070_p2;
assign grp_fu_2241_p1 = 13'd27;
assign grp_fu_2241_p2 = zext_ln168_reg_2399;
assign grp_fu_2249_p0 = grp_fu_2249_p00;
assign grp_fu_2249_p00 = empty_56_fu_1080_p2;
assign grp_fu_2249_p1 = 13'd27;
assign grp_fu_2249_p2 = zext_ln168_reg_2399;
assign grp_fu_2257_p0 = grp_fu_2257_p00;
assign grp_fu_2257_p00 = empty_63_fu_1143_p2;
assign grp_fu_2257_p1 = 13'd27;
assign grp_fu_2257_p2 = zext_ln168_reg_2399;
assign grp_fu_2265_p0 = grp_fu_2265_p00;
assign grp_fu_2265_p00 = empty_70_fu_1153_p2;
assign grp_fu_2265_p1 = 13'd27;
assign grp_fu_2265_p2 = zext_ln168_reg_2399;
assign grp_fu_2273_p0 = grp_fu_2273_p00;
assign grp_fu_2273_p00 = v115_1_reg_792;
assign grp_fu_2273_p1 = 13'd27;
assign grp_fu_2273_p2 = zext_ln168_reg_2399;
assign grp_fu_2281_p0 = grp_fu_2281_p00;
assign grp_fu_2281_p00 = empty_83_fu_1625_p2;
assign grp_fu_2281_p1 = 13'd27;
assign grp_fu_2281_p2 = zext_ln168_reg_2399;
assign grp_fu_2289_p0 = grp_fu_2289_p00;
assign grp_fu_2289_p00 = empty_90_fu_1635_p2;
assign grp_fu_2289_p1 = 13'd27;
assign grp_fu_2289_p2 = zext_ln168_reg_2399;
assign grp_fu_2297_p0 = grp_fu_2297_p00;
assign grp_fu_2297_p00 = empty_97_fu_1645_p2;
assign grp_fu_2297_p1 = 13'd27;
assign grp_fu_2297_p2 = zext_ln168_reg_2399;
assign grp_fu_2305_p0 = grp_fu_2305_p00;
assign grp_fu_2305_p00 = empty_104_fu_1655_p2;
assign grp_fu_2305_p1 = 13'd27;
assign grp_fu_2305_p2 = zext_ln168_reg_2399;
assign grp_fu_2313_p0 = grp_fu_2313_p00;
assign grp_fu_2313_p00 = empty_111_fu_1672_p2;
assign grp_fu_2313_p1 = 13'd27;
assign grp_fu_2313_p2 = zext_ln168_reg_2399;
assign grp_fu_2321_p0 = grp_fu_2321_p00;
assign grp_fu_2321_p00 = empty_118_fu_1682_p2;
assign grp_fu_2321_p1 = 13'd27;
assign grp_fu_2321_p2 = zext_ln168_reg_2399;
assign grp_fu_2329_p0 = grp_fu_2329_p00;
assign grp_fu_2329_p00 = empty_125_fu_1745_p2;
assign grp_fu_2329_p1 = 13'd27;
assign grp_fu_2329_p2 = zext_ln168_reg_2399;
assign grp_fu_2337_p0 = grp_fu_2337_p00;
assign grp_fu_2337_p00 = empty_132_fu_1755_p2;
assign grp_fu_2337_p1 = 13'd27;
assign grp_fu_2337_p2 = zext_ln168_reg_2399;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_ap_start_reg;
assign icmp_ln168_fu_957_p2 = ((v114_fu_114 < 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_1_fu_1599_p2 = ((v115_1_reg_792 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_1007_p2 = ((v115_reg_780 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln168_1_fu_987_p4 = {{v114_fu_114[7:3]}};
assign lshr_ln_fu_967_p4 = {{v114_fu_114[7:1]}};
assign mul_ln171_1_fu_2123_p0 = mul_ln171_1_fu_2123_p00;
assign mul_ln171_1_fu_2123_p00 = v115_1_reg_792;
assign mul_ln171_1_fu_2123_p1 = 16'd190;
assign mul_ln171_fu_1521_p0 = mul_ln171_fu_1521_p00;
assign mul_ln171_fu_1521_p00 = v115_reg_780;
assign mul_ln171_fu_1521_p1 = 16'd190;
assign mul_ln175_fu_981_p0 = mul_ln175_fu_981_p00;
assign mul_ln175_fu_981_p00 = lshr_ln_fu_967_p4;
assign mul_ln175_fu_981_p1 = 15'd190;
assign mul_ln186_1_fu_2132_p0 = mul_ln186_1_fu_2132_p00;
assign mul_ln186_1_fu_2132_p00 = empty_83_reg_2802;
assign mul_ln186_1_fu_2132_p1 = 16'd190;
assign mul_ln186_fu_1530_p0 = mul_ln186_fu_1530_p00;
assign mul_ln186_fu_1530_p00 = empty_21_reg_2439;
assign mul_ln186_fu_1530_p1 = 16'd190;
assign mul_ln199_1_fu_2141_p0 = mul_ln199_1_fu_2141_p00;
assign mul_ln199_1_fu_2141_p00 = empty_90_reg_2812;
assign mul_ln199_1_fu_2141_p1 = 16'd190;
assign mul_ln199_fu_1539_p0 = mul_ln199_fu_1539_p00;
assign mul_ln199_fu_1539_p00 = empty_28_reg_2449;
assign mul_ln199_fu_1539_p1 = 16'd190;
assign mul_ln212_1_fu_2150_p0 = mul_ln212_1_fu_2150_p00;
assign mul_ln212_1_fu_2150_p00 = empty_97_reg_2822;
assign mul_ln212_1_fu_2150_p1 = 16'd190;
assign mul_ln212_fu_1548_p0 = mul_ln212_fu_1548_p00;
assign mul_ln212_fu_1548_p00 = empty_35_reg_2459;
assign mul_ln212_fu_1548_p1 = 16'd190;
assign mul_ln225_1_fu_2159_p0 = mul_ln225_1_fu_2159_p00;
assign mul_ln225_1_fu_2159_p00 = empty_104_reg_2832;
assign mul_ln225_1_fu_2159_p1 = 16'd190;
assign mul_ln225_fu_1557_p0 = mul_ln225_fu_1557_p00;
assign mul_ln225_fu_1557_p00 = empty_42_reg_2469;
assign mul_ln225_fu_1557_p1 = 16'd190;
assign mul_ln238_1_fu_2168_p0 = mul_ln238_1_fu_2168_p00;
assign mul_ln238_1_fu_2168_p00 = empty_111_reg_2862;
assign mul_ln238_1_fu_2168_p1 = 16'd190;
assign mul_ln238_fu_1566_p0 = mul_ln238_fu_1566_p00;
assign mul_ln238_fu_1566_p00 = empty_49_reg_2499;
assign mul_ln238_fu_1566_p1 = 16'd190;
assign mul_ln251_1_fu_2177_p0 = mul_ln251_1_fu_2177_p00;
assign mul_ln251_1_fu_2177_p00 = empty_118_reg_2872;
assign mul_ln251_1_fu_2177_p1 = 16'd190;
assign mul_ln251_fu_1575_p0 = mul_ln251_fu_1575_p00;
assign mul_ln251_fu_1575_p00 = empty_56_reg_2509;
assign mul_ln251_fu_1575_p1 = 16'd190;
assign mul_ln264_1_fu_2186_p0 = mul_ln264_1_fu_2186_p00;
assign mul_ln264_1_fu_2186_p00 = empty_125_reg_2927;
assign mul_ln264_1_fu_2186_p1 = 16'd190;
assign mul_ln264_fu_1584_p0 = mul_ln264_fu_1584_p00;
assign mul_ln264_fu_1584_p00 = empty_63_reg_2564;
assign mul_ln264_fu_1584_p1 = 16'd190;
assign mul_ln277_1_fu_2195_p0 = mul_ln277_1_fu_2195_p00;
assign mul_ln277_1_fu_2195_p00 = empty_132_reg_2937;
assign mul_ln277_1_fu_2195_p1 = 16'd190;
assign mul_ln277_fu_1593_p0 = mul_ln277_fu_1593_p00;
assign mul_ln277_fu_1593_p00 = empty_70_reg_2574;
assign mul_ln277_fu_1593_p1 = 16'd190;
assign p_cast1430_fu_1063_p1 = grp_fu_2201_p3;
assign p_cast1431_fu_1136_p1 = grp_fu_2217_p3;
assign p_cast1432_fu_1241_p1 = grp_fu_2225_p3;
assign p_cast1433_fu_1248_p1 = grp_fu_2233_p3;
assign p_cast1434_fu_1333_p1 = grp_fu_2241_p3;
assign p_cast1435_fu_1340_p1 = grp_fu_2249_p3;
assign p_cast1436_fu_1425_p1 = grp_fu_2257_p3;
assign p_cast1437_fu_1432_p1 = grp_fu_2265_p3;
assign p_cast1438_fu_1665_p1 = grp_fu_2273_p3;
assign p_cast1439_fu_1731_p1 = grp_fu_2281_p3;
assign p_cast1440_fu_1738_p1 = grp_fu_2289_p3;
assign p_cast1441_fu_1843_p1 = grp_fu_2297_p3;
assign p_cast1442_fu_1850_p1 = grp_fu_2305_p3;
assign p_cast1443_fu_1935_p1 = grp_fu_2313_p3;
assign p_cast1444_fu_1942_p1 = grp_fu_2321_p3;
assign p_cast1445_fu_2027_p1 = grp_fu_2329_p3;
assign p_cast1446_fu_2034_p1 = grp_fu_2337_p3;
assign p_cast_fu_1129_p1 = grp_fu_2209_p3;
assign trunc_ln168_fu_963_p1 = v114_fu_114[2:0];
assign v119_1_fu_1708_p2 = v226_1_q0;
assign v119_1_fu_1708_p4 = v226_3_q0;
assign v119_1_fu_1708_p6 = v226_5_q0;
assign v119_1_fu_1708_p8 = v226_7_q0;
assign v119_1_fu_1708_p9 = 'bx;
assign v132_1_fu_1781_p2 = v226_1_q1;
assign v132_1_fu_1781_p4 = v226_3_q1;
assign v132_1_fu_1781_p6 = v226_5_q1;
assign v132_1_fu_1781_p8 = v226_7_q1;
assign v132_1_fu_1781_p9 = 'bx;
assign v143_1_fu_1820_p2 = v226_1_q0;
assign v143_1_fu_1820_p4 = v226_3_q0;
assign v143_1_fu_1820_p6 = v226_5_q0;
assign v143_1_fu_1820_p8 = v226_7_q0;
assign v143_1_fu_1820_p9 = 'bx;
assign v154_1_fu_1873_p2 = v226_1_q0;
assign v154_1_fu_1873_p4 = v226_3_q0;
assign v154_1_fu_1873_p6 = v226_5_q0;
assign v154_1_fu_1873_p8 = v226_7_q0;
assign v154_1_fu_1873_p9 = 'bx;
assign v165_1_fu_1912_p2 = v226_1_q1;
assign v165_1_fu_1912_p4 = v226_3_q1;
assign v165_1_fu_1912_p6 = v226_5_q1;
assign v165_1_fu_1912_p8 = v226_7_q1;
assign v165_1_fu_1912_p9 = 'bx;
assign v176_1_fu_1965_p2 = v226_1_q0;
assign v176_1_fu_1965_p4 = v226_3_q0;
assign v176_1_fu_1965_p6 = v226_5_q0;
assign v176_1_fu_1965_p8 = v226_7_q0;
assign v176_1_fu_1965_p9 = 'bx;
assign v187_1_fu_2004_p2 = v226_1_q1;
assign v187_1_fu_2004_p4 = v226_3_q1;
assign v187_1_fu_2004_p6 = v226_5_q1;
assign v187_1_fu_2004_p8 = v226_7_q1;
assign v187_1_fu_2004_p9 = 'bx;
assign v198_1_fu_2057_p2 = v226_1_q0;
assign v198_1_fu_2057_p4 = v226_3_q0;
assign v198_1_fu_2057_p6 = v226_5_q0;
assign v198_1_fu_2057_p8 = v226_7_q0;
assign v198_1_fu_2057_p9 = 'bx;
assign v209_1_fu_2096_p2 = v226_1_q1;
assign v209_1_fu_2096_p4 = v226_3_q1;
assign v209_1_fu_2096_p6 = v226_5_q1;
assign v209_1_fu_2096_p8 = v226_7_q1;
assign v209_1_fu_2096_p9 = 'bx;
assign v226_0_address0 = v226_0_address0_local;
assign v226_0_address1 = v226_0_address1_local;
assign v226_0_ce0 = v226_0_ce0_local;
assign v226_0_ce1 = v226_0_ce1_local;
assign v226_1_address0 = v226_1_address0_local;
assign v226_1_address1 = v226_1_address1_local;
assign v226_1_ce0 = v226_1_ce0_local;
assign v226_1_ce1 = v226_1_ce1_local;
assign v226_2_address0 = v226_2_address0_local;
assign v226_2_address1 = v226_2_address1_local;
assign v226_2_ce0 = v226_2_ce0_local;
assign v226_2_ce1 = v226_2_ce1_local;
assign v226_3_address0 = v226_3_address0_local;
assign v226_3_address1 = v226_3_address1_local;
assign v226_3_ce0 = v226_3_ce0_local;
assign v226_3_ce1 = v226_3_ce1_local;
assign v226_4_address0 = v226_4_address0_local;
assign v226_4_address1 = v226_4_address1_local;
assign v226_4_ce0 = v226_4_ce0_local;
assign v226_4_ce1 = v226_4_ce1_local;
assign v226_5_address0 = v226_5_address0_local;
assign v226_5_address1 = v226_5_address1_local;
assign v226_5_ce0 = v226_5_ce0_local;
assign v226_5_ce1 = v226_5_ce1_local;
assign v226_6_address0 = v226_6_address0_local;
assign v226_6_address1 = v226_6_address1_local;
assign v226_6_ce0 = v226_6_ce0_local;
assign v226_6_ce1 = v226_6_ce1_local;
assign v226_7_address0 = v226_7_address0_local;
assign v226_7_address1 = v226_7_address1_local;
assign v226_7_ce0 = v226_7_ce0_local;
assign v226_7_ce1 = v226_7_ce1_local;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_804_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_832_v227_1_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v37_fu_1179_p2 = v226_0_q1;
assign v37_fu_1179_p4 = v226_2_q1;
assign v37_fu_1179_p6 = v226_4_q1;
assign v37_fu_1179_p8 = v226_6_q1;
assign v37_fu_1179_p9 = 'bx;
assign v39_fu_1218_p2 = v226_0_q0;
assign v39_fu_1218_p4 = v226_2_q0;
assign v39_fu_1218_p6 = v226_4_q0;
assign v39_fu_1218_p8 = v226_6_q0;
assign v39_fu_1218_p9 = 'bx;
assign v41_fu_1271_p2 = v226_0_q0;
assign v41_fu_1271_p4 = v226_2_q0;
assign v41_fu_1271_p6 = v226_4_q0;
assign v41_fu_1271_p8 = v226_6_q0;
assign v41_fu_1271_p9 = 'bx;
assign v43_fu_1310_p2 = v226_0_q1;
assign v43_fu_1310_p4 = v226_2_q1;
assign v43_fu_1310_p6 = v226_4_q1;
assign v43_fu_1310_p8 = v226_6_q1;
assign v43_fu_1310_p9 = 'bx;
assign v45_fu_1363_p2 = v226_0_q0;
assign v45_fu_1363_p4 = v226_2_q0;
assign v45_fu_1363_p6 = v226_4_q0;
assign v45_fu_1363_p8 = v226_6_q0;
assign v45_fu_1363_p9 = 'bx;
assign v47_fu_1402_p2 = v226_0_q1;
assign v47_fu_1402_p4 = v226_2_q1;
assign v47_fu_1402_p6 = v226_4_q1;
assign v47_fu_1402_p8 = v226_6_q1;
assign v47_fu_1402_p9 = 'bx;
assign v49_fu_1455_p2 = v226_0_q0;
assign v49_fu_1455_p4 = v226_2_q0;
assign v49_fu_1455_p6 = v226_4_q0;
assign v49_fu_1455_p8 = v226_6_q0;
assign v49_fu_1455_p9 = 'bx;
assign v51_fu_1494_p2 = v226_0_q1;
assign v51_fu_1494_p4 = v226_2_q1;
assign v51_fu_1494_p6 = v226_4_q1;
assign v51_fu_1494_p8 = v226_6_q1;
assign v51_fu_1494_p9 = 'bx;
assign v_fu_1106_p2 = v226_0_q0;
assign v_fu_1106_p4 = v226_2_q0;
assign v_fu_1106_p6 = v226_4_q0;
assign v_fu_1106_p8 = v226_6_q0;
assign v_fu_1106_p9 = 'bx;
assign zext_ln168_fu_997_p1 = lshr_ln168_1_fu_987_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_2399[12:5] <= 8'b00000000;
end
endmodule 