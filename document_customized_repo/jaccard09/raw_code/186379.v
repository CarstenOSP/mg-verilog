module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_124_p_din0,grp_fu_124_p_din1,grp_fu_124_p_opcode,grp_fu_124_p_dout0,grp_fu_124_p_ce,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_dout0,grp_fu_128_p_ce,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_dout0,grp_fu_132_p_ce); 
parameter    ap_ST_fsm_state1 = 30'd1;
parameter    ap_ST_fsm_state2 = 30'd2;
parameter    ap_ST_fsm_state3 = 30'd4;
parameter    ap_ST_fsm_state4 = 30'd8;
parameter    ap_ST_fsm_state5 = 30'd16;
parameter    ap_ST_fsm_state6 = 30'd32;
parameter    ap_ST_fsm_state7 = 30'd64;
parameter    ap_ST_fsm_state8 = 30'd128;
parameter    ap_ST_fsm_state9 = 30'd256;
parameter    ap_ST_fsm_state10 = 30'd512;
parameter    ap_ST_fsm_state11 = 30'd1024;
parameter    ap_ST_fsm_state12 = 30'd2048;
parameter    ap_ST_fsm_state13 = 30'd4096;
parameter    ap_ST_fsm_state14 = 30'd8192;
parameter    ap_ST_fsm_state15 = 30'd16384;
parameter    ap_ST_fsm_state16 = 30'd32768;
parameter    ap_ST_fsm_state17 = 30'd65536;
parameter    ap_ST_fsm_state18 = 30'd131072;
parameter    ap_ST_fsm_state19 = 30'd262144;
parameter    ap_ST_fsm_state20 = 30'd524288;
parameter    ap_ST_fsm_state21 = 30'd1048576;
parameter    ap_ST_fsm_state22 = 30'd2097152;
parameter    ap_ST_fsm_state23 = 30'd4194304;
parameter    ap_ST_fsm_state24 = 30'd8388608;
parameter    ap_ST_fsm_state25 = 30'd16777216;
parameter    ap_ST_fsm_state26 = 30'd33554432;
parameter    ap_ST_fsm_state27 = 30'd67108864;
parameter    ap_ST_fsm_state28 = 30'd134217728;
parameter    ap_ST_fsm_state29 = 30'd268435456;
parameter    ap_ST_fsm_state30 = 30'd536870912;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [14:0] v226_0_address1;
output   v226_0_ce1;
input  [31:0] v226_0_q1;
output  [14:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [14:0] v226_1_address1;
output   v226_1_ce1;
input  [31:0] v226_1_q1;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
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
output  [31:0] grp_fu_124_p_din0;
output  [31:0] grp_fu_124_p_din1;
output  [1:0] grp_fu_124_p_opcode;
input  [31:0] grp_fu_124_p_dout0;
output   grp_fu_124_p_ce;
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
input  [31:0] grp_fu_132_p_dout0;
output   grp_fu_132_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
reg[15:0] v225_address0;
reg v225_ce0;
reg v225_we0;
reg[31:0] v225_d0;
reg[15:0] v225_address1;
reg v225_ce1;
reg v225_we1;
reg[31:0] v225_d1;
(* fsm_encoding = "none" *) reg   [29:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_1074_p2;
wire   [31:0] grp_fu_926_p3;
reg   [31:0] reg_940;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state21;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done;
wire   [31:0] grp_fu_933_p3;
reg   [31:0] reg_944;
reg   [31:0] reg_948;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_952;
reg   [31:0] reg_956;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_960;
reg   [31:0] reg_964;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_968;
reg   [31:0] reg_972;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state20;
reg   [31:0] reg_976;
reg   [31:0] reg_980;
wire    ap_CS_fsm_state28;
wire   [31:0] grp_fu_894_p2;
reg   [31:0] reg_988;
wire   [31:0] grp_fu_898_p2;
reg   [31:0] reg_996;
wire   [31:0] grp_fu_902_p2;
reg   [31:0] reg_1004;
wire   [31:0] grp_fu_906_p2;
reg   [31:0] reg_1012;
wire   [31:0] grp_fu_910_p2;
reg   [31:0] reg_1020;
wire   [31:0] grp_fu_914_p2;
reg   [31:0] reg_1028;
wire   [31:0] grp_fu_918_p2;
reg   [31:0] reg_1036;
wire   [31:0] grp_fu_922_p2;
reg   [31:0] reg_1044;
reg   [15:0] phi_mul_load_reg_2510;
wire   [15:0] add_ln168_1_fu_1068_p2;
reg   [15:0] add_ln168_1_reg_2518;
wire   [7:0] add_ln168_fu_1080_p2;
reg   [7:0] add_ln168_reg_2526;
wire   [0:0] trunc_ln168_fu_1086_p1;
reg   [0:0] trunc_ln168_reg_2531;
wire   [14:0] zext_ln168_fu_1100_p1;
reg   [14:0] zext_ln168_reg_2537;
wire   [0:0] cmp11_fu_1104_p2;
reg   [0:0] cmp11_reg_2577;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_1_fu_1130_p3;
reg   [7:0] tmp_1_reg_2593;
wire   [7:0] add_ln169_3_fu_1142_p2;
reg   [7:0] add_ln169_3_reg_2603;
wire   [7:0] tmp_4_fu_1166_p3;
reg   [7:0] tmp_4_reg_2608;
wire    ap_CS_fsm_state4;
wire   [7:0] tmp_6_fu_1178_p3;
reg   [7:0] tmp_6_reg_2618;
wire   [7:0] empty_23_fu_1190_p2;
reg   [7:0] empty_23_reg_2628;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_26_fu_1200_p2;
reg   [7:0] empty_26_reg_2638;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_29_fu_1220_p2;
reg   [7:0] empty_29_reg_2668;
wire   [7:0] empty_32_fu_1230_p2;
reg   [7:0] empty_32_reg_2678;
wire   [7:0] empty_35_fu_1250_p2;
reg   [7:0] empty_35_reg_2708;
wire   [7:0] add_ln169_fu_1260_p2;
reg   [7:0] add_ln169_reg_2718;
wire   [7:0] empty_40_fu_1280_p2;
reg   [7:0] empty_40_reg_2748;
wire   [7:0] empty_43_fu_1290_p2;
reg   [7:0] empty_43_reg_2758;
wire   [7:0] empty_46_fu_1310_p2;
reg   [7:0] empty_46_reg_2788;
wire   [7:0] empty_49_fu_1320_p2;
reg   [7:0] empty_49_reg_2798;
wire   [7:0] empty_52_fu_1340_p2;
reg   [7:0] empty_52_reg_2828;
wire   [7:0] empty_55_fu_1350_p2;
reg   [7:0] empty_55_reg_2838;
wire   [7:0] empty_58_fu_1370_p2;
reg   [7:0] empty_58_reg_2868;
wire   [7:0] empty_61_fu_1380_p2;
reg   [7:0] empty_61_reg_2878;
wire   [31:0] v119_fu_1390_p1;
wire   [31:0] v132_fu_1395_p1;
wire   [31:0] v143_fu_1400_p1;
wire   [31:0] v154_fu_1405_p1;
wire   [31:0] v165_fu_1410_p1;
wire   [31:0] v176_fu_1415_p1;
wire   [31:0] v187_fu_1420_p1;
wire   [31:0] v198_fu_1425_p1;
wire   [31:0] v209_fu_1430_p1;
wire   [7:0] add_ln169_1_fu_1445_p2;
reg   [7:0] add_ln169_1_reg_2953;
wire   [7:0] empty_66_fu_1455_p2;
reg   [7:0] empty_66_reg_2963;
wire   [7:0] empty_69_fu_1475_p2;
reg   [7:0] empty_69_reg_2993;
wire   [7:0] empty_72_fu_1485_p2;
reg   [7:0] empty_72_reg_3003;
wire   [7:0] empty_75_fu_1505_p2;
reg   [7:0] empty_75_reg_3033;
wire   [7:0] empty_78_fu_1515_p2;
reg   [7:0] empty_78_reg_3043;
wire   [15:0] mul_ln171_fu_1529_p2;
reg   [15:0] mul_ln171_reg_3053;
wire   [15:0] mul_ln186_fu_1538_p2;
reg   [15:0] mul_ln186_reg_3058;
wire   [15:0] mul_ln199_fu_1547_p2;
reg   [15:0] mul_ln199_reg_3063;
wire   [15:0] mul_ln212_fu_1556_p2;
reg   [15:0] mul_ln212_reg_3068;
wire   [15:0] mul_ln225_fu_1565_p2;
reg   [15:0] mul_ln225_reg_3073;
wire   [15:0] mul_ln238_fu_1574_p2;
reg   [15:0] mul_ln238_reg_3078;
wire   [15:0] mul_ln251_fu_1583_p2;
reg   [15:0] mul_ln251_reg_3083;
wire   [15:0] mul_ln264_fu_1592_p2;
reg   [15:0] mul_ln264_reg_3088;
wire   [15:0] mul_ln277_fu_1601_p2;
reg   [15:0] mul_ln277_reg_3093;
wire   [7:0] empty_81_fu_1617_p2;
reg   [7:0] empty_81_reg_3118;
wire   [7:0] empty_84_fu_1627_p2;
reg   [7:0] empty_84_reg_3128;
wire   [31:0] v119_1_fu_1637_p1;
wire   [31:0] v132_1_fu_1642_p1;
wire   [31:0] v143_1_fu_1647_p1;
wire   [31:0] v154_1_fu_1652_p1;
wire   [31:0] v165_1_fu_1657_p1;
wire   [31:0] v176_1_fu_1662_p1;
wire   [31:0] v187_1_fu_1667_p1;
wire   [31:0] v198_1_fu_1672_p1;
wire   [31:0] v209_1_fu_1677_p1;
wire   [7:0] empty_87_fu_1692_p2;
reg   [7:0] empty_87_reg_3203;
wire   [7:0] add_ln169_2_fu_1702_p2;
reg   [7:0] add_ln169_2_reg_3213;
wire   [7:0] empty_92_fu_1722_p2;
reg   [7:0] empty_92_reg_3243;
wire   [7:0] empty_95_fu_1732_p2;
reg   [7:0] empty_95_reg_3253;
wire   [7:0] empty_98_fu_1752_p2;
reg   [7:0] empty_98_reg_3283;
wire   [7:0] empty_101_fu_1762_p2;
reg   [7:0] empty_101_reg_3293;
wire   [15:0] mul_ln171_1_fu_1775_p2;
reg   [15:0] mul_ln171_1_reg_3303;
wire   [15:0] mul_ln186_1_fu_1784_p2;
reg   [15:0] mul_ln186_1_reg_3308;
wire   [15:0] mul_ln199_1_fu_1793_p2;
reg   [15:0] mul_ln199_1_reg_3313;
wire   [15:0] mul_ln212_1_fu_1802_p2;
reg   [15:0] mul_ln212_1_reg_3318;
wire   [15:0] mul_ln225_1_fu_1811_p2;
reg   [15:0] mul_ln225_1_reg_3323;
wire   [15:0] mul_ln238_1_fu_1820_p2;
reg   [15:0] mul_ln238_1_reg_3328;
wire   [15:0] mul_ln251_1_fu_1829_p2;
reg   [15:0] mul_ln251_1_reg_3333;
wire   [15:0] mul_ln264_1_fu_1838_p2;
reg   [15:0] mul_ln264_1_reg_3338;
wire   [15:0] mul_ln277_1_fu_1847_p2;
reg   [15:0] mul_ln277_1_reg_3343;
wire   [7:0] empty_104_fu_1863_p2;
reg   [7:0] empty_104_reg_3368;
wire   [7:0] empty_107_fu_1873_p2;
reg   [7:0] empty_107_reg_3378;
wire   [7:0] empty_110_fu_1893_p2;
reg   [7:0] empty_110_reg_3408;
wire   [7:0] empty_113_fu_1903_p2;
reg   [7:0] empty_113_reg_3418;
wire   [31:0] v119_2_fu_1913_p1;
wire   [31:0] v132_2_fu_1918_p1;
wire   [31:0] v143_2_fu_1923_p1;
wire   [31:0] v154_2_fu_1928_p1;
wire   [31:0] v165_2_fu_1933_p1;
wire   [31:0] v176_2_fu_1938_p1;
wire   [31:0] v187_2_fu_1943_p1;
wire   [31:0] v198_2_fu_1948_p1;
wire   [31:0] v209_2_fu_1953_p1;
wire   [15:0] mul_ln171_2_fu_1991_p2;
reg   [15:0] mul_ln171_2_reg_3533;
wire   [15:0] mul_ln186_2_fu_2000_p2;
reg   [15:0] mul_ln186_2_reg_3538;
wire   [15:0] mul_ln199_2_fu_2009_p2;
reg   [15:0] mul_ln199_2_reg_3543;
wire   [15:0] mul_ln212_2_fu_2018_p2;
reg   [15:0] mul_ln212_2_reg_3548;
wire   [15:0] mul_ln225_2_fu_2027_p2;
reg   [15:0] mul_ln225_2_reg_3553;
wire   [15:0] mul_ln238_2_fu_2036_p2;
reg   [15:0] mul_ln238_2_reg_3558;
wire   [15:0] mul_ln251_2_fu_2045_p2;
reg   [15:0] mul_ln251_2_reg_3563;
wire   [15:0] mul_ln264_2_fu_2054_p2;
reg   [15:0] mul_ln264_2_reg_3568;
wire   [15:0] mul_ln277_2_fu_2063_p2;
reg   [15:0] mul_ln277_2_reg_3573;
wire   [31:0] v119_3_fu_2069_p1;
wire    ap_CS_fsm_state25;
wire   [31:0] v132_3_fu_2074_p1;
wire   [31:0] v143_3_fu_2079_p1;
wire   [31:0] v154_3_fu_2084_p1;
wire   [31:0] v165_3_fu_2089_p1;
wire   [31:0] v176_3_fu_2094_p1;
wire   [31:0] v187_3_fu_2099_p1;
wire   [31:0] v198_3_fu_2104_p1;
wire   [31:0] v209_3_fu_2109_p1;
wire   [15:0] mul_ln171_3_fu_2117_p2;
reg   [15:0] mul_ln171_3_reg_3623;
wire   [15:0] mul_ln186_3_fu_2126_p2;
reg   [15:0] mul_ln186_3_reg_3628;
wire   [15:0] mul_ln199_3_fu_2135_p2;
reg   [15:0] mul_ln199_3_reg_3633;
wire   [15:0] mul_ln212_3_fu_2144_p2;
reg   [15:0] mul_ln212_3_reg_3638;
wire   [15:0] mul_ln225_3_fu_2153_p2;
reg   [15:0] mul_ln225_3_reg_3643;
wire   [15:0] mul_ln238_3_fu_2162_p2;
reg   [15:0] mul_ln238_3_reg_3648;
wire   [15:0] mul_ln251_3_fu_2171_p2;
reg   [15:0] mul_ln251_3_reg_3653;
wire   [15:0] mul_ln264_3_fu_2180_p2;
reg   [15:0] mul_ln264_3_reg_3658;
wire   [15:0] mul_ln277_3_fu_2189_p2;
reg   [15:0] mul_ln277_3_reg_3663;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3668_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3668_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3668_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3668_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3672_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3672_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3672_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3668_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3668_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3668_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3668_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3672_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3672_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3672_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3668_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3668_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3668_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3668_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3672_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3672_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3672_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3668_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3668_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3668_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3668_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3672_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3672_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3672_p_ce;
reg   [7:0] v115_reg_766;
wire    ap_CS_fsm_state30;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_start_reg;
wire    ap_CS_fsm_state26;
reg    grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_start_reg;
wire    ap_CS_fsm_state29;
wire   [63:0] p_cast986_fu_1210_p1;
wire   [63:0] p_cast_fu_1215_p1;
wire   [63:0] p_cast987_fu_1240_p1;
wire   [63:0] p_cast988_fu_1245_p1;
wire   [63:0] p_cast989_fu_1270_p1;
wire   [63:0] p_cast990_fu_1275_p1;
wire   [63:0] p_cast991_fu_1300_p1;
wire   [63:0] p_cast992_fu_1305_p1;
wire   [63:0] p_cast993_fu_1330_p1;
wire   [63:0] p_cast994_fu_1335_p1;
wire   [63:0] p_cast995_fu_1360_p1;
wire   [63:0] p_cast996_fu_1365_p1;
wire   [63:0] p_cast997_fu_1435_p1;
wire   [63:0] p_cast998_fu_1440_p1;
wire   [63:0] p_cast999_fu_1465_p1;
wire   [63:0] p_cast1000_fu_1470_p1;
wire   [63:0] p_cast1001_fu_1495_p1;
wire   [63:0] p_cast1002_fu_1500_p1;
wire   [63:0] p_cast1003_fu_1607_p1;
wire   [63:0] p_cast1004_fu_1612_p1;
wire   [63:0] p_cast1005_fu_1682_p1;
wire   [63:0] p_cast1006_fu_1687_p1;
wire   [63:0] p_cast1007_fu_1712_p1;
wire   [63:0] p_cast1008_fu_1717_p1;
wire   [63:0] p_cast1009_fu_1742_p1;
wire   [63:0] p_cast1010_fu_1747_p1;
wire   [63:0] p_cast1011_fu_1853_p1;
wire   [63:0] p_cast1012_fu_1858_p1;
wire   [63:0] p_cast1013_fu_1883_p1;
wire   [63:0] p_cast1014_fu_1888_p1;
wire   [63:0] p_cast1015_fu_1958_p1;
wire   [63:0] p_cast1016_fu_1963_p1;
wire   [63:0] p_cast1017_fu_1968_p1;
wire   [63:0] p_cast1018_fu_1973_p1;
wire   [63:0] p_cast1019_fu_1978_p1;
wire   [63:0] p_cast1020_fu_1983_p1;
reg   [15:0] phi_mul_fu_150;
wire   [0:0] icmp_ln169_fu_1110_p2;
reg   [7:0] v114_fu_154;
reg    v236_write_local;
reg    v226_0_ce1_local;
reg   [14:0] v226_0_address1_local;
reg    v226_0_ce0_local;
reg   [14:0] v226_0_address0_local;
reg    v226_1_ce1_local;
reg   [14:0] v226_1_address1_local;
reg    v226_1_ce0_local;
reg   [14:0] v226_1_address0_local;
reg   [31:0] grp_fu_890_p0;
reg   [31:0] grp_fu_894_p0;
reg   [31:0] grp_fu_898_p0;
reg   [31:0] grp_fu_902_p0;
reg   [31:0] grp_fu_906_p0;
reg   [31:0] grp_fu_910_p0;
reg   [31:0] grp_fu_914_p0;
reg   [31:0] grp_fu_918_p0;
reg   [31:0] grp_fu_922_p0;
wire   [6:0] lshr_ln_fu_1090_p4;
wire   [6:0] tmp_fu_1120_p4;
wire   [5:0] tmp_2_fu_1156_p4;
wire   [14:0] grp_fu_2195_p3;
wire   [14:0] grp_fu_2203_p3;
wire   [14:0] grp_fu_2211_p3;
wire   [14:0] grp_fu_2219_p3;
wire   [14:0] grp_fu_2227_p3;
wire   [14:0] grp_fu_2235_p3;
wire   [14:0] grp_fu_2243_p3;
wire   [14:0] grp_fu_2251_p3;
wire   [14:0] grp_fu_2259_p3;
wire   [14:0] grp_fu_2267_p3;
wire   [14:0] grp_fu_2275_p3;
wire   [14:0] grp_fu_2283_p3;
wire   [14:0] grp_fu_2291_p3;
wire   [14:0] grp_fu_2299_p3;
wire   [14:0] grp_fu_2307_p3;
wire   [14:0] grp_fu_2315_p3;
wire   [14:0] grp_fu_2323_p3;
wire   [14:0] grp_fu_2331_p3;
wire   [7:0] mul_ln171_fu_1529_p0;
wire   [8:0] mul_ln171_fu_1529_p1;
wire   [7:0] mul_ln186_fu_1538_p0;
wire   [8:0] mul_ln186_fu_1538_p1;
wire   [7:0] mul_ln199_fu_1547_p0;
wire   [8:0] mul_ln199_fu_1547_p1;
wire   [7:0] mul_ln212_fu_1556_p0;
wire   [8:0] mul_ln212_fu_1556_p1;
wire   [7:0] mul_ln225_fu_1565_p0;
wire   [8:0] mul_ln225_fu_1565_p1;
wire   [7:0] mul_ln238_fu_1574_p0;
wire   [8:0] mul_ln238_fu_1574_p1;
wire   [7:0] mul_ln251_fu_1583_p0;
wire   [8:0] mul_ln251_fu_1583_p1;
wire   [7:0] mul_ln264_fu_1592_p0;
wire   [8:0] mul_ln264_fu_1592_p1;
wire   [7:0] mul_ln277_fu_1601_p0;
wire   [8:0] mul_ln277_fu_1601_p1;
wire   [14:0] grp_fu_2339_p3;
wire   [14:0] grp_fu_2347_p3;
wire   [14:0] grp_fu_2355_p3;
wire   [14:0] grp_fu_2363_p3;
wire   [14:0] grp_fu_2371_p3;
wire   [14:0] grp_fu_2379_p3;
wire   [14:0] grp_fu_2387_p3;
wire   [14:0] grp_fu_2395_p3;
wire   [7:0] mul_ln171_1_fu_1775_p0;
wire   [8:0] mul_ln171_1_fu_1775_p1;
wire   [7:0] mul_ln186_1_fu_1784_p0;
wire   [8:0] mul_ln186_1_fu_1784_p1;
wire   [7:0] mul_ln199_1_fu_1793_p0;
wire   [8:0] mul_ln199_1_fu_1793_p1;
wire   [7:0] mul_ln212_1_fu_1802_p0;
wire   [8:0] mul_ln212_1_fu_1802_p1;
wire   [7:0] mul_ln225_1_fu_1811_p0;
wire   [8:0] mul_ln225_1_fu_1811_p1;
wire   [7:0] mul_ln238_1_fu_1820_p0;
wire   [8:0] mul_ln238_1_fu_1820_p1;
wire   [7:0] mul_ln251_1_fu_1829_p0;
wire   [8:0] mul_ln251_1_fu_1829_p1;
wire   [7:0] mul_ln264_1_fu_1838_p0;
wire   [8:0] mul_ln264_1_fu_1838_p1;
wire   [7:0] mul_ln277_1_fu_1847_p0;
wire   [8:0] mul_ln277_1_fu_1847_p1;
wire   [14:0] grp_fu_2403_p3;
wire   [14:0] grp_fu_2411_p3;
wire   [14:0] grp_fu_2419_p3;
wire   [14:0] grp_fu_2427_p3;
wire   [14:0] grp_fu_2435_p3;
wire   [14:0] grp_fu_2443_p3;
wire   [14:0] grp_fu_2451_p3;
wire   [14:0] grp_fu_2459_p3;
wire   [14:0] grp_fu_2467_p3;
wire   [14:0] grp_fu_2475_p3;
wire   [7:0] mul_ln171_2_fu_1991_p0;
wire   [8:0] mul_ln171_2_fu_1991_p1;
wire   [7:0] mul_ln186_2_fu_2000_p0;
wire   [8:0] mul_ln186_2_fu_2000_p1;
wire   [7:0] mul_ln199_2_fu_2009_p0;
wire   [8:0] mul_ln199_2_fu_2009_p1;
wire   [7:0] mul_ln212_2_fu_2018_p0;
wire   [8:0] mul_ln212_2_fu_2018_p1;
wire   [7:0] mul_ln225_2_fu_2027_p0;
wire   [8:0] mul_ln225_2_fu_2027_p1;
wire   [7:0] mul_ln238_2_fu_2036_p0;
wire   [8:0] mul_ln238_2_fu_2036_p1;
wire   [7:0] mul_ln251_2_fu_2045_p0;
wire   [8:0] mul_ln251_2_fu_2045_p1;
wire   [7:0] mul_ln264_2_fu_2054_p0;
wire   [8:0] mul_ln264_2_fu_2054_p1;
wire   [7:0] mul_ln277_2_fu_2063_p0;
wire   [8:0] mul_ln277_2_fu_2063_p1;
wire   [7:0] mul_ln171_3_fu_2117_p0;
wire   [8:0] mul_ln171_3_fu_2117_p1;
wire   [7:0] mul_ln186_3_fu_2126_p0;
wire   [8:0] mul_ln186_3_fu_2126_p1;
wire   [7:0] mul_ln199_3_fu_2135_p0;
wire   [8:0] mul_ln199_3_fu_2135_p1;
wire   [7:0] mul_ln212_3_fu_2144_p0;
wire   [8:0] mul_ln212_3_fu_2144_p1;
wire   [7:0] mul_ln225_3_fu_2153_p0;
wire   [8:0] mul_ln225_3_fu_2153_p1;
wire   [7:0] mul_ln238_3_fu_2162_p0;
wire   [8:0] mul_ln238_3_fu_2162_p1;
wire   [7:0] mul_ln251_3_fu_2171_p0;
wire   [8:0] mul_ln251_3_fu_2171_p1;
wire   [7:0] mul_ln264_3_fu_2180_p0;
wire   [8:0] mul_ln264_3_fu_2180_p1;
wire   [7:0] mul_ln277_3_fu_2189_p0;
wire   [8:0] mul_ln277_3_fu_2189_p1;
wire   [7:0] grp_fu_2195_p0;
wire   [6:0] grp_fu_2195_p1;
wire   [6:0] grp_fu_2195_p2;
wire   [7:0] grp_fu_2203_p0;
wire   [6:0] grp_fu_2203_p1;
wire   [6:0] grp_fu_2203_p2;
wire   [7:0] grp_fu_2211_p0;
wire   [6:0] grp_fu_2211_p1;
wire   [6:0] grp_fu_2211_p2;
wire   [7:0] grp_fu_2219_p0;
wire   [6:0] grp_fu_2219_p1;
wire   [6:0] grp_fu_2219_p2;
wire   [7:0] grp_fu_2227_p0;
wire   [6:0] grp_fu_2227_p1;
wire   [6:0] grp_fu_2227_p2;
wire   [7:0] grp_fu_2235_p0;
wire   [6:0] grp_fu_2235_p1;
wire   [6:0] grp_fu_2235_p2;
wire   [7:0] grp_fu_2243_p0;
wire   [6:0] grp_fu_2243_p1;
wire   [6:0] grp_fu_2243_p2;
wire   [7:0] grp_fu_2251_p0;
wire   [6:0] grp_fu_2251_p1;
wire   [6:0] grp_fu_2251_p2;
wire   [7:0] grp_fu_2259_p0;
wire   [6:0] grp_fu_2259_p1;
wire   [6:0] grp_fu_2259_p2;
wire   [7:0] grp_fu_2267_p0;
wire   [6:0] grp_fu_2267_p1;
wire   [6:0] grp_fu_2267_p2;
wire   [7:0] grp_fu_2275_p0;
wire   [6:0] grp_fu_2275_p1;
wire   [6:0] grp_fu_2275_p2;
wire   [7:0] grp_fu_2283_p0;
wire   [6:0] grp_fu_2283_p1;
wire   [6:0] grp_fu_2283_p2;
wire   [7:0] grp_fu_2291_p0;
wire   [6:0] grp_fu_2291_p1;
wire   [6:0] grp_fu_2291_p2;
wire   [7:0] grp_fu_2299_p0;
wire   [6:0] grp_fu_2299_p1;
wire   [6:0] grp_fu_2299_p2;
wire   [7:0] grp_fu_2307_p0;
wire   [6:0] grp_fu_2307_p1;
wire   [6:0] grp_fu_2307_p2;
wire   [7:0] grp_fu_2315_p0;
wire   [6:0] grp_fu_2315_p1;
wire   [6:0] grp_fu_2315_p2;
wire   [7:0] grp_fu_2323_p0;
wire   [6:0] grp_fu_2323_p1;
wire   [6:0] grp_fu_2323_p2;
wire   [7:0] grp_fu_2331_p0;
wire   [6:0] grp_fu_2331_p1;
wire   [6:0] grp_fu_2331_p2;
wire   [7:0] grp_fu_2339_p0;
wire   [6:0] grp_fu_2339_p1;
wire   [6:0] grp_fu_2339_p2;
wire   [7:0] grp_fu_2347_p0;
wire   [6:0] grp_fu_2347_p1;
wire   [6:0] grp_fu_2347_p2;
wire   [7:0] grp_fu_2355_p0;
wire   [6:0] grp_fu_2355_p1;
wire   [6:0] grp_fu_2355_p2;
wire   [7:0] grp_fu_2363_p0;
wire   [6:0] grp_fu_2363_p1;
wire   [6:0] grp_fu_2363_p2;
wire   [7:0] grp_fu_2371_p0;
wire   [6:0] grp_fu_2371_p1;
wire   [6:0] grp_fu_2371_p2;
wire   [7:0] grp_fu_2379_p0;
wire   [6:0] grp_fu_2379_p1;
wire   [6:0] grp_fu_2379_p2;
wire   [7:0] grp_fu_2387_p0;
wire   [6:0] grp_fu_2387_p1;
wire   [6:0] grp_fu_2387_p2;
wire   [7:0] grp_fu_2395_p0;
wire   [6:0] grp_fu_2395_p1;
wire   [6:0] grp_fu_2395_p2;
wire   [7:0] grp_fu_2403_p0;
wire   [6:0] grp_fu_2403_p1;
wire   [6:0] grp_fu_2403_p2;
wire   [7:0] grp_fu_2411_p0;
wire   [6:0] grp_fu_2411_p1;
wire   [6:0] grp_fu_2411_p2;
wire   [7:0] grp_fu_2419_p0;
wire   [6:0] grp_fu_2419_p1;
wire   [6:0] grp_fu_2419_p2;
wire   [7:0] grp_fu_2427_p0;
wire   [6:0] grp_fu_2427_p1;
wire   [6:0] grp_fu_2427_p2;
wire   [7:0] grp_fu_2435_p0;
wire   [6:0] grp_fu_2435_p1;
wire   [6:0] grp_fu_2435_p2;
wire   [7:0] grp_fu_2443_p0;
wire   [6:0] grp_fu_2443_p1;
wire   [6:0] grp_fu_2443_p2;
wire   [7:0] grp_fu_2451_p0;
wire   [6:0] grp_fu_2451_p1;
wire   [6:0] grp_fu_2451_p2;
wire   [7:0] grp_fu_2459_p0;
wire   [6:0] grp_fu_2459_p1;
wire   [6:0] grp_fu_2459_p2;
wire   [7:0] grp_fu_2467_p0;
wire   [6:0] grp_fu_2467_p1;
wire   [6:0] grp_fu_2467_p2;
wire   [7:0] grp_fu_2475_p0;
wire   [6:0] grp_fu_2475_p1;
wire   [6:0] grp_fu_2475_p2;
reg    grp_fu_890_ce;
wire    ap_CS_fsm_state27;
reg    grp_fu_894_ce;
reg    grp_fu_898_ce;
reg    grp_fu_902_ce;
reg    grp_fu_906_ce;
reg    grp_fu_910_ce;
reg    grp_fu_914_ce;
reg    grp_fu_918_ce;
reg    grp_fu_922_ce;
reg    grp_fu_2371_ce;
reg    grp_fu_2379_ce;
reg    grp_fu_2387_ce;
reg    grp_fu_2395_ce;
reg    grp_fu_2403_ce;
reg    grp_fu_2411_ce;
reg    grp_fu_2419_ce;
reg    grp_fu_2427_ce;
reg    grp_fu_2435_ce;
reg    grp_fu_2443_ce;
reg    grp_fu_2451_ce;
reg    grp_fu_2459_ce;
reg    grp_fu_2467_ce;
reg    grp_fu_2475_ce;
reg   [31:0] grp_fu_3668_p0;
reg   [31:0] grp_fu_3668_p1;
reg    grp_fu_3668_ce;
reg   [31:0] grp_fu_3672_p0;
reg   [31:0] grp_fu_3672_p1;
reg    grp_fu_3672_ce;
reg   [29:0] ap_NS_fsm;
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
reg    ap_ST_fsm_state21_blk;
wire    ap_ST_fsm_state22_blk;
wire    ap_ST_fsm_state23_blk;
wire    ap_ST_fsm_state24_blk;
wire    ap_ST_fsm_state25_blk;
reg    ap_ST_fsm_state26_blk;
wire    ap_ST_fsm_state27_blk;
wire    ap_ST_fsm_state28_blk;
wire    ap_ST_fsm_state29_blk;
reg    ap_ST_fsm_state30_blk;
wire   [14:0] grp_fu_2195_p00;
wire   [14:0] grp_fu_2203_p00;
wire   [14:0] grp_fu_2211_p00;
wire   [14:0] grp_fu_2219_p00;
wire   [14:0] grp_fu_2227_p00;
wire   [14:0] grp_fu_2235_p00;
wire   [14:0] grp_fu_2243_p00;
wire   [14:0] grp_fu_2251_p00;
wire   [14:0] grp_fu_2259_p00;
wire   [14:0] grp_fu_2267_p00;
wire   [14:0] grp_fu_2275_p00;
wire   [14:0] grp_fu_2283_p00;
wire   [14:0] grp_fu_2291_p00;
wire   [14:0] grp_fu_2299_p00;
wire   [14:0] grp_fu_2307_p00;
wire   [14:0] grp_fu_2315_p00;
wire   [14:0] grp_fu_2323_p00;
wire   [14:0] grp_fu_2331_p00;
wire   [14:0] grp_fu_2339_p00;
wire   [14:0] grp_fu_2347_p00;
wire   [14:0] grp_fu_2355_p00;
wire   [14:0] grp_fu_2363_p00;
wire   [14:0] grp_fu_2371_p00;
wire   [14:0] grp_fu_2379_p00;
wire   [14:0] grp_fu_2387_p00;
wire   [14:0] grp_fu_2395_p00;
wire   [14:0] grp_fu_2403_p00;
wire   [14:0] grp_fu_2411_p00;
wire   [14:0] grp_fu_2419_p00;
wire   [14:0] grp_fu_2427_p00;
wire   [14:0] grp_fu_2435_p00;
wire   [14:0] grp_fu_2443_p00;
wire   [14:0] grp_fu_2451_p00;
wire   [14:0] grp_fu_2459_p00;
wire   [14:0] grp_fu_2467_p00;
wire   [14:0] grp_fu_2475_p00;
wire   [15:0] mul_ln171_1_fu_1775_p00;
wire   [15:0] mul_ln171_2_fu_1991_p00;
wire   [15:0] mul_ln171_3_fu_2117_p00;
wire   [15:0] mul_ln171_fu_1529_p00;
wire   [15:0] mul_ln186_1_fu_1784_p00;
wire   [15:0] mul_ln186_2_fu_2000_p00;
wire   [15:0] mul_ln186_3_fu_2126_p00;
wire   [15:0] mul_ln186_fu_1538_p00;
wire   [15:0] mul_ln199_1_fu_1793_p00;
wire   [15:0] mul_ln199_2_fu_2009_p00;
wire   [15:0] mul_ln199_3_fu_2135_p00;
wire   [15:0] mul_ln199_fu_1547_p00;
wire   [15:0] mul_ln212_1_fu_1802_p00;
wire   [15:0] mul_ln212_2_fu_2018_p00;
wire   [15:0] mul_ln212_3_fu_2144_p00;
wire   [15:0] mul_ln212_fu_1556_p00;
wire   [15:0] mul_ln225_1_fu_1811_p00;
wire   [15:0] mul_ln225_2_fu_2027_p00;
wire   [15:0] mul_ln225_3_fu_2153_p00;
wire   [15:0] mul_ln225_fu_1565_p00;
wire   [15:0] mul_ln238_1_fu_1820_p00;
wire   [15:0] mul_ln238_2_fu_2036_p00;
wire   [15:0] mul_ln238_3_fu_2162_p00;
wire   [15:0] mul_ln238_fu_1574_p00;
wire   [15:0] mul_ln251_1_fu_1829_p00;
wire   [15:0] mul_ln251_2_fu_2045_p00;
wire   [15:0] mul_ln251_3_fu_2171_p00;
wire   [15:0] mul_ln251_fu_1583_p00;
wire   [15:0] mul_ln264_1_fu_1838_p00;
wire   [15:0] mul_ln264_2_fu_2054_p00;
wire   [15:0] mul_ln264_3_fu_2180_p00;
wire   [15:0] mul_ln264_fu_1592_p00;
wire   [15:0] mul_ln277_1_fu_1847_p00;
wire   [15:0] mul_ln277_2_fu_2063_p00;
wire   [15:0] mul_ln277_3_fu_2189_p00;
wire   [15:0] mul_ln277_fu_1601_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 30'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_start_reg = 1'b0;
#0 phi_mul_fu_150 = 16'd0;
#0 v114_fu_154 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_778(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_d1),.v225_q1(v225_q1),.phi_mul(phi_mul_load_reg_2510),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_3053),.mul_ln186(mul_ln186_reg_3058),.mul_ln199(mul_ln199_reg_3063),.mul_ln212(mul_ln212_reg_3068),.mul_ln225(mul_ln225_reg_3073),.mul_ln238(mul_ln238_reg_3078),.mul_ln251(mul_ln251_reg_3083),.mul_ln264(mul_ln264_reg_3088),.mul_ln277(mul_ln277_reg_3093),.cmp11(cmp11_reg_2577),.v120(reg_980),.v133(reg_988),.v144(reg_996),.v155(reg_1004),.v166(reg_1012),.v177(reg_1020),.v188(reg_1028),.v199(reg_1036),.v210(reg_1044),.grp_fu_3668_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3668_p_din0),.grp_fu_3668_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3668_p_din1),.grp_fu_3668_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3668_p_opcode),.grp_fu_3668_p_dout0(grp_fu_124_p_dout0),.grp_fu_3668_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3668_p_ce),.grp_fu_3672_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3672_p_din0),.grp_fu_3672_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3672_p_din1),.grp_fu_3672_p_dout0(grp_fu_128_p_dout0),.grp_fu_3672_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3672_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_806(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_d1),.v225_q1(v225_q1),.phi_mul(phi_mul_load_reg_2510),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v227_ce1),.v227_q1(v227_q1),.mul_ln171_1(mul_ln171_1_reg_3303),.mul_ln186_1(mul_ln186_1_reg_3308),.mul_ln199_1(mul_ln199_1_reg_3313),.mul_ln212_1(mul_ln212_1_reg_3318),.mul_ln225_1(mul_ln225_1_reg_3323),.mul_ln238_1(mul_ln238_1_reg_3328),.mul_ln251_1(mul_ln251_1_reg_3333),.mul_ln264_1(mul_ln264_1_reg_3338),.mul_ln277_1(mul_ln277_1_reg_3343),.cmp11(cmp11_reg_2577),.v120_1(reg_980),.v133_1(reg_988),.v144_1(reg_996),.v155_1(reg_1004),.v166_1(reg_1012),.v177_1(reg_1020),.v188_1(reg_1028),.v199_1(reg_1036),.v210_1(reg_1044),.grp_fu_3668_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3668_p_din0),.grp_fu_3668_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3668_p_din1),.grp_fu_3668_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3668_p_opcode),.grp_fu_3668_p_dout0(grp_fu_124_p_dout0),.grp_fu_3668_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3668_p_ce),.grp_fu_3672_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3672_p_din0),.grp_fu_3672_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3672_p_din1),.grp_fu_3672_p_dout0(grp_fu_128_p_dout0),.grp_fu_3672_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3672_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_54 grp_kernel_2mm_node1_Pipeline_label_54_fu_834(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_d1),.v225_q1(v225_q1),.phi_mul(phi_mul_load_reg_2510),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v227_ce1),.v227_q1(v227_q1),.mul_ln171_2(mul_ln171_2_reg_3533),.mul_ln186_2(mul_ln186_2_reg_3538),.mul_ln199_2(mul_ln199_2_reg_3543),.mul_ln212_2(mul_ln212_2_reg_3548),.mul_ln225_2(mul_ln225_2_reg_3553),.mul_ln238_2(mul_ln238_2_reg_3558),.mul_ln251_2(mul_ln251_2_reg_3563),.mul_ln264_2(mul_ln264_2_reg_3568),.mul_ln277_2(mul_ln277_2_reg_3573),.cmp11(cmp11_reg_2577),.v120_2(reg_980),.v133_2(reg_988),.v144_2(reg_996),.v155_2(reg_1004),.v166_2(reg_1012),.v177_2(reg_1020),.v188_2(reg_1028),.v199_2(reg_1036),.v210_2(reg_1044),.grp_fu_3668_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3668_p_din0),.grp_fu_3668_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3668_p_din1),.grp_fu_3668_p_opcode(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3668_p_opcode),.grp_fu_3668_p_dout0(grp_fu_124_p_dout0),.grp_fu_3668_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3668_p_ce),.grp_fu_3672_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3672_p_din0),.grp_fu_3672_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3672_p_din1),.grp_fu_3672_p_dout0(grp_fu_128_p_dout0),.grp_fu_3672_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3672_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_55 grp_kernel_2mm_node1_Pipeline_label_55_fu_862(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_d1),.v225_q1(v225_q1),.phi_mul(phi_mul_load_reg_2510),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v227_ce1),.v227_q1(v227_q1),.mul_ln171_3(mul_ln171_3_reg_3623),.mul_ln186_3(mul_ln186_3_reg_3628),.mul_ln199_3(mul_ln199_3_reg_3633),.mul_ln212_3(mul_ln212_3_reg_3638),.mul_ln225_3(mul_ln225_3_reg_3643),.mul_ln238_3(mul_ln238_3_reg_3648),.mul_ln251_3(mul_ln251_3_reg_3653),.mul_ln264_3(mul_ln264_3_reg_3658),.mul_ln277_3(mul_ln277_3_reg_3663),.cmp11(cmp11_reg_2577),.v120_3(reg_980),.v133_3(reg_988),.v144_3(reg_996),.v155_3(reg_1004),.v166_3(reg_1012),.v177_3(reg_1020),.v188_3(reg_1028),.v199_3(reg_1036),.v210_3(reg_1044),.grp_fu_3668_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3668_p_din0),.grp_fu_3668_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3668_p_din1),.grp_fu_3668_p_opcode(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3668_p_opcode),.grp_fu_3668_p_dout0(grp_fu_124_p_dout0),.grp_fu_3668_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3668_p_ce),.grp_fu_3672_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3672_p_din0),.grp_fu_3672_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3672_p_din1),.grp_fu_3672_p_dout0(grp_fu_128_p_dout0),.grp_fu_3672_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3672_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_894_p0),.din1(v113),.ce(grp_fu_894_ce),.dout(grp_fu_894_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_898_p0),.din1(v113),.ce(grp_fu_898_ce),.dout(grp_fu_898_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_902_p0),.din1(v113),.ce(grp_fu_902_ce),.dout(grp_fu_902_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_906_p0),.din1(v113),.ce(grp_fu_906_ce),.dout(grp_fu_906_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U102(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_910_p0),.din1(v113),.ce(grp_fu_910_ce),.dout(grp_fu_910_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U103(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_914_p0),.din1(v113),.ce(grp_fu_914_ce),.dout(grp_fu_914_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_918_p0),.din1(v113),.ce(grp_fu_918_ce),.dout(grp_fu_918_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_922_p0),.din1(v113),.ce(grp_fu_922_ce),.dout(grp_fu_922_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U106(.din0(mul_ln171_fu_1529_p0),.din1(mul_ln171_fu_1529_p1),.dout(mul_ln171_fu_1529_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U107(.din0(mul_ln186_fu_1538_p0),.din1(mul_ln186_fu_1538_p1),.dout(mul_ln186_fu_1538_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U108(.din0(mul_ln199_fu_1547_p0),.din1(mul_ln199_fu_1547_p1),.dout(mul_ln199_fu_1547_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U109(.din0(mul_ln212_fu_1556_p0),.din1(mul_ln212_fu_1556_p1),.dout(mul_ln212_fu_1556_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U110(.din0(mul_ln225_fu_1565_p0),.din1(mul_ln225_fu_1565_p1),.dout(mul_ln225_fu_1565_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U111(.din0(mul_ln238_fu_1574_p0),.din1(mul_ln238_fu_1574_p1),.dout(mul_ln238_fu_1574_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U112(.din0(mul_ln251_fu_1583_p0),.din1(mul_ln251_fu_1583_p1),.dout(mul_ln251_fu_1583_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U113(.din0(mul_ln264_fu_1592_p0),.din1(mul_ln264_fu_1592_p1),.dout(mul_ln264_fu_1592_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U114(.din0(mul_ln277_fu_1601_p0),.din1(mul_ln277_fu_1601_p1),.dout(mul_ln277_fu_1601_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U115(.din0(mul_ln171_1_fu_1775_p0),.din1(mul_ln171_1_fu_1775_p1),.dout(mul_ln171_1_fu_1775_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U116(.din0(mul_ln186_1_fu_1784_p0),.din1(mul_ln186_1_fu_1784_p1),.dout(mul_ln186_1_fu_1784_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U117(.din0(mul_ln199_1_fu_1793_p0),.din1(mul_ln199_1_fu_1793_p1),.dout(mul_ln199_1_fu_1793_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U118(.din0(mul_ln212_1_fu_1802_p0),.din1(mul_ln212_1_fu_1802_p1),.dout(mul_ln212_1_fu_1802_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U119(.din0(mul_ln225_1_fu_1811_p0),.din1(mul_ln225_1_fu_1811_p1),.dout(mul_ln225_1_fu_1811_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U120(.din0(mul_ln238_1_fu_1820_p0),.din1(mul_ln238_1_fu_1820_p1),.dout(mul_ln238_1_fu_1820_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U121(.din0(mul_ln251_1_fu_1829_p0),.din1(mul_ln251_1_fu_1829_p1),.dout(mul_ln251_1_fu_1829_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U122(.din0(mul_ln264_1_fu_1838_p0),.din1(mul_ln264_1_fu_1838_p1),.dout(mul_ln264_1_fu_1838_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U123(.din0(mul_ln277_1_fu_1847_p0),.din1(mul_ln277_1_fu_1847_p1),.dout(mul_ln277_1_fu_1847_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U124(.din0(mul_ln171_2_fu_1991_p0),.din1(mul_ln171_2_fu_1991_p1),.dout(mul_ln171_2_fu_1991_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U125(.din0(mul_ln186_2_fu_2000_p0),.din1(mul_ln186_2_fu_2000_p1),.dout(mul_ln186_2_fu_2000_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U126(.din0(mul_ln199_2_fu_2009_p0),.din1(mul_ln199_2_fu_2009_p1),.dout(mul_ln199_2_fu_2009_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U127(.din0(mul_ln212_2_fu_2018_p0),.din1(mul_ln212_2_fu_2018_p1),.dout(mul_ln212_2_fu_2018_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U128(.din0(mul_ln225_2_fu_2027_p0),.din1(mul_ln225_2_fu_2027_p1),.dout(mul_ln225_2_fu_2027_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U129(.din0(mul_ln238_2_fu_2036_p0),.din1(mul_ln238_2_fu_2036_p1),.dout(mul_ln238_2_fu_2036_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U130(.din0(mul_ln251_2_fu_2045_p0),.din1(mul_ln251_2_fu_2045_p1),.dout(mul_ln251_2_fu_2045_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U131(.din0(mul_ln264_2_fu_2054_p0),.din1(mul_ln264_2_fu_2054_p1),.dout(mul_ln264_2_fu_2054_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U132(.din0(mul_ln277_2_fu_2063_p0),.din1(mul_ln277_2_fu_2063_p1),.dout(mul_ln277_2_fu_2063_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U133(.din0(mul_ln171_3_fu_2117_p0),.din1(mul_ln171_3_fu_2117_p1),.dout(mul_ln171_3_fu_2117_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U134(.din0(mul_ln186_3_fu_2126_p0),.din1(mul_ln186_3_fu_2126_p1),.dout(mul_ln186_3_fu_2126_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U135(.din0(mul_ln199_3_fu_2135_p0),.din1(mul_ln199_3_fu_2135_p1),.dout(mul_ln199_3_fu_2135_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U136(.din0(mul_ln212_3_fu_2144_p0),.din1(mul_ln212_3_fu_2144_p1),.dout(mul_ln212_3_fu_2144_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U137(.din0(mul_ln225_3_fu_2153_p0),.din1(mul_ln225_3_fu_2153_p1),.dout(mul_ln225_3_fu_2153_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U138(.din0(mul_ln238_3_fu_2162_p0),.din1(mul_ln238_3_fu_2162_p1),.dout(mul_ln238_3_fu_2162_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U139(.din0(mul_ln251_3_fu_2171_p0),.din1(mul_ln251_3_fu_2171_p1),.dout(mul_ln251_3_fu_2171_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U140(.din0(mul_ln264_3_fu_2180_p0),.din1(mul_ln264_3_fu_2180_p1),.dout(mul_ln264_3_fu_2180_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U141(.din0(mul_ln277_3_fu_2189_p0),.din1(mul_ln277_3_fu_2189_p1),.dout(mul_ln277_3_fu_2189_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U142(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2195_p0),.din1(grp_fu_2195_p1),.din2(grp_fu_2195_p2),.ce(1'b1),.dout(grp_fu_2195_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U143(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2203_p0),.din1(grp_fu_2203_p1),.din2(grp_fu_2203_p2),.ce(1'b1),.dout(grp_fu_2203_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U144(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2211_p0),.din1(grp_fu_2211_p1),.din2(grp_fu_2211_p2),.ce(1'b1),.dout(grp_fu_2211_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U145(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2219_p0),.din1(grp_fu_2219_p1),.din2(grp_fu_2219_p2),.ce(1'b1),.dout(grp_fu_2219_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U146(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2227_p0),.din1(grp_fu_2227_p1),.din2(grp_fu_2227_p2),.ce(1'b1),.dout(grp_fu_2227_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U147(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2235_p0),.din1(grp_fu_2235_p1),.din2(grp_fu_2235_p2),.ce(1'b1),.dout(grp_fu_2235_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U148(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2243_p0),.din1(grp_fu_2243_p1),.din2(grp_fu_2243_p2),.ce(1'b1),.dout(grp_fu_2243_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U149(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2251_p0),.din1(grp_fu_2251_p1),.din2(grp_fu_2251_p2),.ce(1'b1),.dout(grp_fu_2251_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U150(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2259_p0),.din1(grp_fu_2259_p1),.din2(grp_fu_2259_p2),.ce(1'b1),.dout(grp_fu_2259_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U151(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2267_p0),.din1(grp_fu_2267_p1),.din2(grp_fu_2267_p2),.ce(1'b1),.dout(grp_fu_2267_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U152(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2275_p0),.din1(grp_fu_2275_p1),.din2(grp_fu_2275_p2),.ce(1'b1),.dout(grp_fu_2275_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U153(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2283_p0),.din1(grp_fu_2283_p1),.din2(grp_fu_2283_p2),.ce(1'b1),.dout(grp_fu_2283_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U154(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2291_p0),.din1(grp_fu_2291_p1),.din2(grp_fu_2291_p2),.ce(1'b1),.dout(grp_fu_2291_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U155(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2299_p0),.din1(grp_fu_2299_p1),.din2(grp_fu_2299_p2),.ce(1'b1),.dout(grp_fu_2299_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U156(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2307_p0),.din1(grp_fu_2307_p1),.din2(grp_fu_2307_p2),.ce(1'b1),.dout(grp_fu_2307_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U157(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2315_p0),.din1(grp_fu_2315_p1),.din2(grp_fu_2315_p2),.ce(1'b1),.dout(grp_fu_2315_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U158(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2323_p0),.din1(grp_fu_2323_p1),.din2(grp_fu_2323_p2),.ce(1'b1),.dout(grp_fu_2323_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U159(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2331_p0),.din1(grp_fu_2331_p1),.din2(grp_fu_2331_p2),.ce(1'b1),.dout(grp_fu_2331_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U160(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2339_p0),.din1(grp_fu_2339_p1),.din2(grp_fu_2339_p2),.ce(1'b1),.dout(grp_fu_2339_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U161(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2347_p0),.din1(grp_fu_2347_p1),.din2(grp_fu_2347_p2),.ce(1'b1),.dout(grp_fu_2347_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U162(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2355_p0),.din1(grp_fu_2355_p1),.din2(grp_fu_2355_p2),.ce(1'b1),.dout(grp_fu_2355_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U163(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2363_p0),.din1(grp_fu_2363_p1),.din2(grp_fu_2363_p2),.ce(1'b1),.dout(grp_fu_2363_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U164(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2371_p0),.din1(grp_fu_2371_p1),.din2(grp_fu_2371_p2),.ce(grp_fu_2371_ce),.dout(grp_fu_2371_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U165(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2379_p0),.din1(grp_fu_2379_p1),.din2(grp_fu_2379_p2),.ce(grp_fu_2379_ce),.dout(grp_fu_2379_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U166(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2387_p0),.din1(grp_fu_2387_p1),.din2(grp_fu_2387_p2),.ce(grp_fu_2387_ce),.dout(grp_fu_2387_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U167(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2395_p0),.din1(grp_fu_2395_p1),.din2(grp_fu_2395_p2),.ce(grp_fu_2395_ce),.dout(grp_fu_2395_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U168(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2403_p0),.din1(grp_fu_2403_p1),.din2(grp_fu_2403_p2),.ce(grp_fu_2403_ce),.dout(grp_fu_2403_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U169(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2411_p0),.din1(grp_fu_2411_p1),.din2(grp_fu_2411_p2),.ce(grp_fu_2411_ce),.dout(grp_fu_2411_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U170(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2419_p0),.din1(grp_fu_2419_p1),.din2(grp_fu_2419_p2),.ce(grp_fu_2419_ce),.dout(grp_fu_2419_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U171(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2427_p0),.din1(grp_fu_2427_p1),.din2(grp_fu_2427_p2),.ce(grp_fu_2427_ce),.dout(grp_fu_2427_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U172(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2435_p0),.din1(grp_fu_2435_p1),.din2(grp_fu_2435_p2),.ce(grp_fu_2435_ce),.dout(grp_fu_2435_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U173(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2443_p0),.din1(grp_fu_2443_p1),.din2(grp_fu_2443_p2),.ce(grp_fu_2443_ce),.dout(grp_fu_2443_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U174(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2451_p0),.din1(grp_fu_2451_p1),.din2(grp_fu_2451_p2),.ce(grp_fu_2451_ce),.dout(grp_fu_2451_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U175(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2459_p0),.din1(grp_fu_2459_p1),.din2(grp_fu_2459_p2),.ce(grp_fu_2459_ce),.dout(grp_fu_2459_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U176(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2467_p0),.din1(grp_fu_2467_p1),.din2(grp_fu_2467_p2),.ce(grp_fu_2467_ce),.dout(grp_fu_2467_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U177(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2475_p0),.din1(grp_fu_2475_p1),.din2(grp_fu_2475_p2),.ce(grp_fu_2475_ce),.dout(grp_fu_2475_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_150 <= 16'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln169_fu_1110_p2 == 1'd0))) begin
        phi_mul_fu_150 <= add_ln168_1_reg_2518;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_154 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln169_fu_1110_p2 == 1'd0))) begin
        v114_fu_154 <= add_ln168_reg_2526;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1074_p2 == 1'd0))) begin
        v115_reg_766 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
        v115_reg_766 <= add_ln169_3_reg_2603;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_2518 <= add_ln168_1_fu_1068_p2;
        add_ln168_reg_2526 <= add_ln168_fu_1080_p2;
        cmp11_reg_2577 <= cmp11_fu_1104_p2;
        phi_mul_load_reg_2510 <= phi_mul_fu_150;
        trunc_ln168_reg_2531 <= trunc_ln168_fu_1086_p1;
        zext_ln168_reg_2537[6 : 0] <= zext_ln168_fu_1100_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        add_ln169_1_reg_2953 <= add_ln169_1_fu_1445_p2;
        empty_66_reg_2963 <= empty_66_fu_1455_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        add_ln169_2_reg_3213 <= add_ln169_2_fu_1702_p2;
        empty_87_reg_3203 <= empty_87_fu_1692_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_3_reg_2603 <= add_ln169_3_fu_1142_p2;
        tmp_1_reg_2593[7 : 1] <= tmp_1_fu_1130_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln169_reg_2718 <= add_ln169_fu_1260_p2;
        empty_35_reg_2708 <= empty_35_fu_1250_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        empty_101_reg_3293 <= empty_101_fu_1762_p2;
        empty_98_reg_3283 <= empty_98_fu_1752_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        empty_104_reg_3368 <= empty_104_fu_1863_p2;
        empty_107_reg_3378 <= empty_107_fu_1873_p2;
        mul_ln171_1_reg_3303 <= mul_ln171_1_fu_1775_p2;
        mul_ln186_1_reg_3308 <= mul_ln186_1_fu_1784_p2;
        mul_ln199_1_reg_3313 <= mul_ln199_1_fu_1793_p2;
        mul_ln212_1_reg_3318 <= mul_ln212_1_fu_1802_p2;
        mul_ln225_1_reg_3323 <= mul_ln225_1_fu_1811_p2;
        mul_ln238_1_reg_3328 <= mul_ln238_1_fu_1820_p2;
        mul_ln251_1_reg_3333 <= mul_ln251_1_fu_1829_p2;
        mul_ln264_1_reg_3338 <= mul_ln264_1_fu_1838_p2;
        mul_ln277_1_reg_3343 <= mul_ln277_1_fu_1847_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        empty_110_reg_3408 <= empty_110_fu_1893_p2;
        empty_113_reg_3418 <= empty_113_fu_1903_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_23_reg_2628 <= empty_23_fu_1190_p2;
        empty_26_reg_2638 <= empty_26_fu_1200_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_29_reg_2668 <= empty_29_fu_1220_p2;
        empty_32_reg_2678 <= empty_32_fu_1230_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_40_reg_2748 <= empty_40_fu_1280_p2;
        empty_43_reg_2758 <= empty_43_fu_1290_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_46_reg_2788 <= empty_46_fu_1310_p2;
        empty_49_reg_2798 <= empty_49_fu_1320_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_52_reg_2828 <= empty_52_fu_1340_p2;
        empty_55_reg_2838 <= empty_55_fu_1350_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        empty_58_reg_2868 <= empty_58_fu_1370_p2;
        empty_61_reg_2878 <= empty_61_fu_1380_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        empty_69_reg_2993 <= empty_69_fu_1475_p2;
        empty_72_reg_3003 <= empty_72_fu_1485_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        empty_75_reg_3033 <= empty_75_fu_1505_p2;
        empty_78_reg_3043 <= empty_78_fu_1515_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        empty_81_reg_3118 <= empty_81_fu_1617_p2;
        empty_84_reg_3128 <= empty_84_fu_1627_p2;
        mul_ln171_reg_3053 <= mul_ln171_fu_1529_p2;
        mul_ln186_reg_3058 <= mul_ln186_fu_1538_p2;
        mul_ln199_reg_3063 <= mul_ln199_fu_1547_p2;
        mul_ln212_reg_3068 <= mul_ln212_fu_1556_p2;
        mul_ln225_reg_3073 <= mul_ln225_fu_1565_p2;
        mul_ln238_reg_3078 <= mul_ln238_fu_1574_p2;
        mul_ln251_reg_3083 <= mul_ln251_fu_1583_p2;
        mul_ln264_reg_3088 <= mul_ln264_fu_1592_p2;
        mul_ln277_reg_3093 <= mul_ln277_fu_1601_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        empty_92_reg_3243 <= empty_92_fu_1722_p2;
        empty_95_reg_3253 <= empty_95_fu_1732_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        mul_ln171_2_reg_3533 <= mul_ln171_2_fu_1991_p2;
        mul_ln186_2_reg_3538 <= mul_ln186_2_fu_2000_p2;
        mul_ln199_2_reg_3543 <= mul_ln199_2_fu_2009_p2;
        mul_ln212_2_reg_3548 <= mul_ln212_2_fu_2018_p2;
        mul_ln225_2_reg_3553 <= mul_ln225_2_fu_2027_p2;
        mul_ln238_2_reg_3558 <= mul_ln238_2_fu_2036_p2;
        mul_ln251_2_reg_3563 <= mul_ln251_2_fu_2045_p2;
        mul_ln264_2_reg_3568 <= mul_ln264_2_fu_2054_p2;
        mul_ln277_2_reg_3573 <= mul_ln277_2_fu_2063_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        mul_ln171_3_reg_3623 <= mul_ln171_3_fu_2117_p2;
        mul_ln186_3_reg_3628 <= mul_ln186_3_fu_2126_p2;
        mul_ln199_3_reg_3633 <= mul_ln199_3_fu_2135_p2;
        mul_ln212_3_reg_3638 <= mul_ln212_3_fu_2144_p2;
        mul_ln225_3_reg_3643 <= mul_ln225_3_fu_2153_p2;
        mul_ln238_3_reg_3648 <= mul_ln238_3_fu_2162_p2;
        mul_ln251_3_reg_3653 <= mul_ln251_3_fu_2171_p2;
        mul_ln264_3_reg_3658 <= mul_ln264_3_fu_2180_p2;
        mul_ln277_3_reg_3663 <= mul_ln277_3_fu_2189_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_1004 <= grp_fu_902_p2;
        reg_1012 <= grp_fu_906_p2;
        reg_1020 <= grp_fu_910_p2;
        reg_1028 <= grp_fu_914_p2;
        reg_1036 <= grp_fu_918_p2;
        reg_1044 <= grp_fu_922_p2;
        reg_980 <= grp_fu_132_p_dout0;
        reg_988 <= grp_fu_894_p2;
        reg_996 <= grp_fu_898_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)))) begin
        reg_940 <= grp_fu_926_p3;
        reg_944 <= grp_fu_933_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_948 <= grp_fu_926_p3;
        reg_952 <= grp_fu_933_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_956 <= grp_fu_926_p3;
        reg_960 <= grp_fu_933_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_964 <= grp_fu_926_p3;
        reg_968 <= grp_fu_933_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_972 <= grp_fu_926_p3;
        reg_976 <= grp_fu_933_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_4_reg_2608[7 : 2] <= tmp_4_fu_1166_p3[7 : 2];
        tmp_6_reg_2618[7 : 2] <= tmp_6_fu_1178_p3[7 : 2];
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b0)) begin
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
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
assign ap_ST_fsm_state22_blk = 1'b0;
assign ap_ST_fsm_state23_blk = 1'b0;
assign ap_ST_fsm_state24_blk = 1'b0;
assign ap_ST_fsm_state25_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done == 1'b0)) begin
        ap_ST_fsm_state26_blk = 1'b1;
    end else begin
        ap_ST_fsm_state26_blk = 1'b0;
    end
end
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
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_done == 1'b0)) begin
        ap_ST_fsm_state30_blk = 1'b1;
    end else begin
        ap_ST_fsm_state30_blk = 1'b0;
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1074_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1074_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_2371_ce = 1'b1;
    end else begin
        grp_fu_2371_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_2379_ce = 1'b1;
    end else begin
        grp_fu_2379_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_2387_ce = 1'b1;
    end else begin
        grp_fu_2387_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_2395_ce = 1'b1;
    end else begin
        grp_fu_2395_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_2403_ce = 1'b1;
    end else begin
        grp_fu_2403_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_2411_ce = 1'b1;
    end else begin
        grp_fu_2411_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_2419_ce = 1'b1;
    end else begin
        grp_fu_2419_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_2427_ce = 1'b1;
    end else begin
        grp_fu_2427_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)))) begin
        grp_fu_2435_ce = 1'b1;
    end else begin
        grp_fu_2435_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)))) begin
        grp_fu_2443_ce = 1'b1;
    end else begin
        grp_fu_2443_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)))) begin
        grp_fu_2451_ce = 1'b1;
    end else begin
        grp_fu_2451_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)))) begin
        grp_fu_2459_ce = 1'b1;
    end else begin
        grp_fu_2459_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)))) begin
        grp_fu_2467_ce = 1'b1;
    end else begin
        grp_fu_2467_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)))) begin
        grp_fu_2475_ce = 1'b1;
    end else begin
        grp_fu_2475_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3668_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3668_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3668_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3668_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3668_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3668_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3668_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3668_p_ce;
    end else begin
        grp_fu_3668_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3668_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3668_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3668_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3668_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3668_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3668_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3668_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3668_p_din0;
    end else begin
        grp_fu_3668_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3668_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3668_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3668_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3668_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3668_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3668_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3668_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3668_p_din1;
    end else begin
        grp_fu_3668_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3672_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3672_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3672_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3672_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3672_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3672_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3672_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3672_p_ce;
    end else begin
        grp_fu_3672_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3672_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3672_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3672_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3672_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3672_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3672_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3672_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3672_p_din0;
    end else begin
        grp_fu_3672_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_3672_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_grp_fu_3672_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_3672_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_grp_fu_3672_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3672_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_grp_fu_3672_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3672_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_grp_fu_3672_p_din1;
    end else begin
        grp_fu_3672_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_890_ce = 1'b1;
    end else begin
        grp_fu_890_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_890_p0 = v119_3_fu_2069_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_890_p0 = v119_2_fu_1913_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_890_p0 = v119_1_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_890_p0 = v119_fu_1390_p1;
    end else begin
        grp_fu_890_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_894_ce = 1'b1;
    end else begin
        grp_fu_894_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_894_p0 = v132_3_fu_2074_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_894_p0 = v132_2_fu_1918_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_894_p0 = v132_1_fu_1642_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_894_p0 = v132_fu_1395_p1;
    end else begin
        grp_fu_894_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_898_ce = 1'b1;
    end else begin
        grp_fu_898_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_898_p0 = v143_3_fu_2079_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_898_p0 = v143_2_fu_1923_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_898_p0 = v143_1_fu_1647_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_898_p0 = v143_fu_1400_p1;
    end else begin
        grp_fu_898_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_902_ce = 1'b1;
    end else begin
        grp_fu_902_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_902_p0 = v154_3_fu_2084_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_902_p0 = v154_2_fu_1928_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_902_p0 = v154_1_fu_1652_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_902_p0 = v154_fu_1405_p1;
    end else begin
        grp_fu_902_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_906_ce = 1'b1;
    end else begin
        grp_fu_906_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_906_p0 = v165_3_fu_2089_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_906_p0 = v165_2_fu_1933_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_906_p0 = v165_1_fu_1657_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_906_p0 = v165_fu_1410_p1;
    end else begin
        grp_fu_906_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_910_ce = 1'b1;
    end else begin
        grp_fu_910_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_910_p0 = v176_3_fu_2094_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_910_p0 = v176_2_fu_1938_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_910_p0 = v176_1_fu_1662_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_910_p0 = v176_fu_1415_p1;
    end else begin
        grp_fu_910_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_914_ce = 1'b1;
    end else begin
        grp_fu_914_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_914_p0 = v187_3_fu_2099_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_914_p0 = v187_2_fu_1943_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_914_p0 = v187_1_fu_1667_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_914_p0 = v187_fu_1420_p1;
    end else begin
        grp_fu_914_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_918_ce = 1'b1;
    end else begin
        grp_fu_918_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_918_p0 = v198_3_fu_2104_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_918_p0 = v198_2_fu_1948_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_918_p0 = v198_1_fu_1672_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_918_p0 = v198_fu_1425_p1;
    end else begin
        grp_fu_918_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_922_ce = 1'b1;
    end else begin
        grp_fu_922_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_922_p0 = v209_3_fu_2109_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_922_p0 = v209_2_fu_1953_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_922_p0 = v209_1_fu_1677_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_922_p0 = v209_fu_1430_p1;
    end else begin
        grp_fu_922_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_0_address0_local = p_cast1020_fu_1983_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_0_address0_local = p_cast1018_fu_1973_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_0_address0_local = p_cast1016_fu_1963_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_0_address0_local = p_cast1014_fu_1888_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_0_address0_local = p_cast1012_fu_1858_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_0_address0_local = p_cast1010_fu_1747_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_0_address0_local = p_cast1008_fu_1717_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_0_address0_local = p_cast1006_fu_1687_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_0_address0_local = p_cast1004_fu_1612_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address0_local = p_cast1002_fu_1500_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address0_local = p_cast1000_fu_1470_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address0_local = p_cast998_fu_1440_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address0_local = p_cast996_fu_1365_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast994_fu_1335_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast992_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast990_fu_1275_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast988_fu_1245_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast_fu_1215_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_0_address1_local = p_cast1019_fu_1978_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_0_address1_local = p_cast1017_fu_1968_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_0_address1_local = p_cast1015_fu_1958_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_0_address1_local = p_cast1013_fu_1883_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_0_address1_local = p_cast1011_fu_1853_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_0_address1_local = p_cast1009_fu_1742_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_0_address1_local = p_cast1007_fu_1712_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_0_address1_local = p_cast1005_fu_1682_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_0_address1_local = p_cast1003_fu_1607_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address1_local = p_cast1001_fu_1495_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address1_local = p_cast999_fu_1465_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address1_local = p_cast997_fu_1435_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address1_local = p_cast995_fu_1360_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast993_fu_1330_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast991_fu_1300_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast989_fu_1270_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast987_fu_1240_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address1_local = p_cast986_fu_1210_p1;
    end else begin
        v226_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_0_ce0_local = 1'b1;
    end else begin
        v226_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_0_ce1_local = 1'b1;
    end else begin
        v226_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_1_address0_local = p_cast1020_fu_1983_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_1_address0_local = p_cast1018_fu_1973_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_1_address0_local = p_cast1016_fu_1963_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_1_address0_local = p_cast1014_fu_1888_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_1_address0_local = p_cast1012_fu_1858_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_1_address0_local = p_cast1010_fu_1747_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_1_address0_local = p_cast1008_fu_1717_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_1_address0_local = p_cast1006_fu_1687_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_1_address0_local = p_cast1004_fu_1612_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address0_local = p_cast1002_fu_1500_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address0_local = p_cast1000_fu_1470_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address0_local = p_cast998_fu_1440_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address0_local = p_cast996_fu_1365_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address0_local = p_cast994_fu_1335_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast992_fu_1305_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast990_fu_1275_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast988_fu_1245_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast_fu_1215_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_1_address1_local = p_cast1019_fu_1978_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_1_address1_local = p_cast1017_fu_1968_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_1_address1_local = p_cast1015_fu_1958_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_1_address1_local = p_cast1013_fu_1883_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_1_address1_local = p_cast1011_fu_1853_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_1_address1_local = p_cast1009_fu_1742_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_1_address1_local = p_cast1007_fu_1712_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_1_address1_local = p_cast1005_fu_1682_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_1_address1_local = p_cast1003_fu_1607_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address1_local = p_cast1001_fu_1495_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address1_local = p_cast999_fu_1465_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address1_local = p_cast997_fu_1435_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address1_local = p_cast995_fu_1360_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast993_fu_1330_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast991_fu_1300_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast989_fu_1270_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast987_fu_1240_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address1_local = p_cast986_fu_1210_p1;
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1074_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1074_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1074_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1074_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln169_fu_1110_p2 == 1'd0))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
            if (((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
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
            if (((grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
                ap_NS_fsm = ap_ST_fsm_state27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state26;
            end
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
            if (((grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state30;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_1_fu_1068_p2 = (phi_mul_fu_150 + 16'd190);
assign add_ln168_fu_1080_p2 = (v114_fu_154 + 8'd1);
assign add_ln169_1_fu_1445_p2 = (v115_reg_766 + 8'd18);
assign add_ln169_2_fu_1702_p2 = (v115_reg_766 + 8'd27);
assign add_ln169_3_fu_1142_p2 = (v115_reg_766 + 8'd36);
assign add_ln169_fu_1260_p2 = (v115_reg_766 + 8'd9);
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
assign ap_CS_fsm_state27 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_state28 = ap_CS_fsm[32'd27];
assign ap_CS_fsm_state29 = ap_CS_fsm[32'd28];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state30 = ap_CS_fsm[32'd29];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_1074_p2 == 1'd1));
end
assign cmp11_fu_1104_p2 = ((v114_fu_154 == 8'd0) ? 1'b1 : 1'b0);
assign empty_101_fu_1762_p2 = (v115_reg_766 + 8'd31);
assign empty_104_fu_1863_p2 = (v115_reg_766 + 8'd32);
assign empty_107_fu_1873_p2 = (v115_reg_766 + 8'd33);
assign empty_110_fu_1893_p2 = (v115_reg_766 + 8'd34);
assign empty_113_fu_1903_p2 = (v115_reg_766 + 8'd35);
assign empty_23_fu_1190_p2 = (v115_reg_766 + 8'd4);
assign empty_26_fu_1200_p2 = (v115_reg_766 + 8'd5);
assign empty_29_fu_1220_p2 = (v115_reg_766 + 8'd6);
assign empty_32_fu_1230_p2 = (v115_reg_766 + 8'd7);
assign empty_35_fu_1250_p2 = (v115_reg_766 + 8'd8);
assign empty_40_fu_1280_p2 = (v115_reg_766 + 8'd10);
assign empty_43_fu_1290_p2 = (v115_reg_766 + 8'd11);
assign empty_46_fu_1310_p2 = (v115_reg_766 + 8'd12);
assign empty_49_fu_1320_p2 = (v115_reg_766 + 8'd13);
assign empty_52_fu_1340_p2 = (v115_reg_766 + 8'd14);
assign empty_55_fu_1350_p2 = (v115_reg_766 + 8'd15);
assign empty_58_fu_1370_p2 = (v115_reg_766 + 8'd16);
assign empty_61_fu_1380_p2 = (v115_reg_766 + 8'd17);
assign empty_66_fu_1455_p2 = (v115_reg_766 + 8'd19);
assign empty_69_fu_1475_p2 = (v115_reg_766 + 8'd20);
assign empty_72_fu_1485_p2 = (v115_reg_766 + 8'd21);
assign empty_75_fu_1505_p2 = (v115_reg_766 + 8'd22);
assign empty_78_fu_1515_p2 = (v115_reg_766 + 8'd23);
assign empty_81_fu_1617_p2 = (v115_reg_766 + 8'd24);
assign empty_84_fu_1627_p2 = (v115_reg_766 + 8'd25);
assign empty_87_fu_1692_p2 = (v115_reg_766 + 8'd26);
assign empty_92_fu_1722_p2 = (v115_reg_766 + 8'd28);
assign empty_95_fu_1732_p2 = (v115_reg_766 + 8'd29);
assign empty_98_fu_1752_p2 = (v115_reg_766 + 8'd30);
assign grp_fu_124_p_ce = grp_fu_3668_ce;
assign grp_fu_124_p_din0 = grp_fu_3668_p0;
assign grp_fu_124_p_din1 = grp_fu_3668_p1;
assign grp_fu_124_p_opcode = 2'd0;
assign grp_fu_128_p_ce = grp_fu_3672_ce;
assign grp_fu_128_p_din0 = grp_fu_3672_p0;
assign grp_fu_128_p_din1 = grp_fu_3672_p1;
assign grp_fu_132_p_ce = grp_fu_890_ce;
assign grp_fu_132_p_din0 = grp_fu_890_p0;
assign grp_fu_132_p_din1 = v113;
assign grp_fu_2195_p0 = grp_fu_2195_p00;
assign grp_fu_2195_p00 = v115_reg_766;
assign grp_fu_2195_p1 = 15'd105;
assign grp_fu_2195_p2 = zext_ln168_reg_2537;
assign grp_fu_2203_p0 = grp_fu_2203_p00;
assign grp_fu_2203_p00 = tmp_1_fu_1130_p3;
assign grp_fu_2203_p1 = 15'd105;
assign grp_fu_2203_p2 = zext_ln168_reg_2537;
assign grp_fu_2211_p0 = grp_fu_2211_p00;
assign grp_fu_2211_p00 = tmp_4_fu_1166_p3;
assign grp_fu_2211_p1 = 15'd105;
assign grp_fu_2211_p2 = zext_ln168_reg_2537;
assign grp_fu_2219_p0 = grp_fu_2219_p00;
assign grp_fu_2219_p00 = tmp_6_fu_1178_p3;
assign grp_fu_2219_p1 = 15'd105;
assign grp_fu_2219_p2 = zext_ln168_reg_2537;
assign grp_fu_2227_p0 = grp_fu_2227_p00;
assign grp_fu_2227_p00 = empty_23_fu_1190_p2;
assign grp_fu_2227_p1 = 15'd105;
assign grp_fu_2227_p2 = zext_ln168_reg_2537;
assign grp_fu_2235_p0 = grp_fu_2235_p00;
assign grp_fu_2235_p00 = empty_26_fu_1200_p2;
assign grp_fu_2235_p1 = 15'd105;
assign grp_fu_2235_p2 = zext_ln168_reg_2537;
assign grp_fu_2243_p0 = grp_fu_2243_p00;
assign grp_fu_2243_p00 = empty_29_fu_1220_p2;
assign grp_fu_2243_p1 = 15'd105;
assign grp_fu_2243_p2 = zext_ln168_reg_2537;
assign grp_fu_2251_p0 = grp_fu_2251_p00;
assign grp_fu_2251_p00 = empty_32_fu_1230_p2;
assign grp_fu_2251_p1 = 15'd105;
assign grp_fu_2251_p2 = zext_ln168_reg_2537;
assign grp_fu_2259_p0 = grp_fu_2259_p00;
assign grp_fu_2259_p00 = empty_35_fu_1250_p2;
assign grp_fu_2259_p1 = 15'd105;
assign grp_fu_2259_p2 = zext_ln168_reg_2537;
assign grp_fu_2267_p0 = grp_fu_2267_p00;
assign grp_fu_2267_p00 = add_ln169_fu_1260_p2;
assign grp_fu_2267_p1 = 15'd105;
assign grp_fu_2267_p2 = zext_ln168_reg_2537;
assign grp_fu_2275_p0 = grp_fu_2275_p00;
assign grp_fu_2275_p00 = empty_40_fu_1280_p2;
assign grp_fu_2275_p1 = 15'd105;
assign grp_fu_2275_p2 = zext_ln168_reg_2537;
assign grp_fu_2283_p0 = grp_fu_2283_p00;
assign grp_fu_2283_p00 = empty_43_fu_1290_p2;
assign grp_fu_2283_p1 = 15'd105;
assign grp_fu_2283_p2 = zext_ln168_reg_2537;
assign grp_fu_2291_p0 = grp_fu_2291_p00;
assign grp_fu_2291_p00 = empty_46_fu_1310_p2;
assign grp_fu_2291_p1 = 15'd105;
assign grp_fu_2291_p2 = zext_ln168_reg_2537;
assign grp_fu_2299_p0 = grp_fu_2299_p00;
assign grp_fu_2299_p00 = empty_49_fu_1320_p2;
assign grp_fu_2299_p1 = 15'd105;
assign grp_fu_2299_p2 = zext_ln168_reg_2537;
assign grp_fu_2307_p0 = grp_fu_2307_p00;
assign grp_fu_2307_p00 = empty_52_fu_1340_p2;
assign grp_fu_2307_p1 = 15'd105;
assign grp_fu_2307_p2 = zext_ln168_reg_2537;
assign grp_fu_2315_p0 = grp_fu_2315_p00;
assign grp_fu_2315_p00 = empty_55_fu_1350_p2;
assign grp_fu_2315_p1 = 15'd105;
assign grp_fu_2315_p2 = zext_ln168_reg_2537;
assign grp_fu_2323_p0 = grp_fu_2323_p00;
assign grp_fu_2323_p00 = empty_58_fu_1370_p2;
assign grp_fu_2323_p1 = 15'd105;
assign grp_fu_2323_p2 = zext_ln168_reg_2537;
assign grp_fu_2331_p0 = grp_fu_2331_p00;
assign grp_fu_2331_p00 = empty_61_fu_1380_p2;
assign grp_fu_2331_p1 = 15'd105;
assign grp_fu_2331_p2 = zext_ln168_reg_2537;
assign grp_fu_2339_p0 = grp_fu_2339_p00;
assign grp_fu_2339_p00 = add_ln169_1_fu_1445_p2;
assign grp_fu_2339_p1 = 15'd105;
assign grp_fu_2339_p2 = zext_ln168_reg_2537;
assign grp_fu_2347_p0 = grp_fu_2347_p00;
assign grp_fu_2347_p00 = empty_66_fu_1455_p2;
assign grp_fu_2347_p1 = 15'd105;
assign grp_fu_2347_p2 = zext_ln168_reg_2537;
assign grp_fu_2355_p0 = grp_fu_2355_p00;
assign grp_fu_2355_p00 = empty_69_fu_1475_p2;
assign grp_fu_2355_p1 = 15'd105;
assign grp_fu_2355_p2 = zext_ln168_reg_2537;
assign grp_fu_2363_p0 = grp_fu_2363_p00;
assign grp_fu_2363_p00 = empty_72_fu_1485_p2;
assign grp_fu_2363_p1 = 15'd105;
assign grp_fu_2363_p2 = zext_ln168_reg_2537;
assign grp_fu_2371_p0 = grp_fu_2371_p00;
assign grp_fu_2371_p00 = empty_75_fu_1505_p2;
assign grp_fu_2371_p1 = 15'd105;
assign grp_fu_2371_p2 = zext_ln168_reg_2537;
assign grp_fu_2379_p0 = grp_fu_2379_p00;
assign grp_fu_2379_p00 = empty_78_fu_1515_p2;
assign grp_fu_2379_p1 = 15'd105;
assign grp_fu_2379_p2 = zext_ln168_reg_2537;
assign grp_fu_2387_p0 = grp_fu_2387_p00;
assign grp_fu_2387_p00 = empty_81_fu_1617_p2;
assign grp_fu_2387_p1 = 15'd105;
assign grp_fu_2387_p2 = zext_ln168_reg_2537;
assign grp_fu_2395_p0 = grp_fu_2395_p00;
assign grp_fu_2395_p00 = empty_84_fu_1627_p2;
assign grp_fu_2395_p1 = 15'd105;
assign grp_fu_2395_p2 = zext_ln168_reg_2537;
assign grp_fu_2403_p0 = grp_fu_2403_p00;
assign grp_fu_2403_p00 = empty_87_fu_1692_p2;
assign grp_fu_2403_p1 = 15'd105;
assign grp_fu_2403_p2 = zext_ln168_reg_2537;
assign grp_fu_2411_p0 = grp_fu_2411_p00;
assign grp_fu_2411_p00 = add_ln169_2_fu_1702_p2;
assign grp_fu_2411_p1 = 15'd105;
assign grp_fu_2411_p2 = zext_ln168_reg_2537;
assign grp_fu_2419_p0 = grp_fu_2419_p00;
assign grp_fu_2419_p00 = empty_92_fu_1722_p2;
assign grp_fu_2419_p1 = 15'd105;
assign grp_fu_2419_p2 = zext_ln168_reg_2537;
assign grp_fu_2427_p0 = grp_fu_2427_p00;
assign grp_fu_2427_p00 = empty_95_fu_1732_p2;
assign grp_fu_2427_p1 = 15'd105;
assign grp_fu_2427_p2 = zext_ln168_reg_2537;
assign grp_fu_2435_p0 = grp_fu_2435_p00;
assign grp_fu_2435_p00 = empty_98_fu_1752_p2;
assign grp_fu_2435_p1 = 15'd105;
assign grp_fu_2435_p2 = zext_ln168_reg_2537;
assign grp_fu_2443_p0 = grp_fu_2443_p00;
assign grp_fu_2443_p00 = empty_101_fu_1762_p2;
assign grp_fu_2443_p1 = 15'd105;
assign grp_fu_2443_p2 = zext_ln168_reg_2537;
assign grp_fu_2451_p0 = grp_fu_2451_p00;
assign grp_fu_2451_p00 = empty_104_fu_1863_p2;
assign grp_fu_2451_p1 = 15'd105;
assign grp_fu_2451_p2 = zext_ln168_reg_2537;
assign grp_fu_2459_p0 = grp_fu_2459_p00;
assign grp_fu_2459_p00 = empty_107_fu_1873_p2;
assign grp_fu_2459_p1 = 15'd105;
assign grp_fu_2459_p2 = zext_ln168_reg_2537;
assign grp_fu_2467_p0 = grp_fu_2467_p00;
assign grp_fu_2467_p00 = empty_110_fu_1893_p2;
assign grp_fu_2467_p1 = 15'd105;
assign grp_fu_2467_p2 = zext_ln168_reg_2537;
assign grp_fu_2475_p0 = grp_fu_2475_p00;
assign grp_fu_2475_p00 = empty_113_fu_1903_p2;
assign grp_fu_2475_p1 = 15'd105;
assign grp_fu_2475_p2 = zext_ln168_reg_2537;
assign grp_fu_926_p3 = ((trunc_ln168_reg_2531[0:0] == 1'b1) ? v226_1_q1 : v226_0_q1);
assign grp_fu_933_p3 = ((trunc_ln168_reg_2531[0:0] == 1'b1) ? v226_1_q0 : v226_0_q0);
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_806_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_start = grp_kernel_2mm_node1_Pipeline_label_54_fu_834_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_start = grp_kernel_2mm_node1_Pipeline_label_55_fu_862_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_778_ap_start_reg;
assign icmp_ln168_fu_1074_p2 = ((v114_fu_154 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_1110_p2 = ((v115_reg_766 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1090_p4 = {{v114_fu_154[7:1]}};
assign mul_ln171_1_fu_1775_p0 = mul_ln171_1_fu_1775_p00;
assign mul_ln171_1_fu_1775_p00 = add_ln169_reg_2718;
assign mul_ln171_1_fu_1775_p1 = 16'd190;
assign mul_ln171_2_fu_1991_p0 = mul_ln171_2_fu_1991_p00;
assign mul_ln171_2_fu_1991_p00 = add_ln169_1_reg_2953;
assign mul_ln171_2_fu_1991_p1 = 16'd190;
assign mul_ln171_3_fu_2117_p0 = mul_ln171_3_fu_2117_p00;
assign mul_ln171_3_fu_2117_p00 = add_ln169_2_reg_3213;
assign mul_ln171_3_fu_2117_p1 = 16'd190;
assign mul_ln171_fu_1529_p0 = mul_ln171_fu_1529_p00;
assign mul_ln171_fu_1529_p00 = v115_reg_766;
assign mul_ln171_fu_1529_p1 = 16'd190;
assign mul_ln186_1_fu_1784_p0 = mul_ln186_1_fu_1784_p00;
assign mul_ln186_1_fu_1784_p00 = empty_40_reg_2748;
assign mul_ln186_1_fu_1784_p1 = 16'd190;
assign mul_ln186_2_fu_2000_p0 = mul_ln186_2_fu_2000_p00;
assign mul_ln186_2_fu_2000_p00 = empty_66_reg_2963;
assign mul_ln186_2_fu_2000_p1 = 16'd190;
assign mul_ln186_3_fu_2126_p0 = mul_ln186_3_fu_2126_p00;
assign mul_ln186_3_fu_2126_p00 = empty_92_reg_3243;
assign mul_ln186_3_fu_2126_p1 = 16'd190;
assign mul_ln186_fu_1538_p0 = mul_ln186_fu_1538_p00;
assign mul_ln186_fu_1538_p00 = tmp_1_reg_2593;
assign mul_ln186_fu_1538_p1 = 16'd190;
assign mul_ln199_1_fu_1793_p0 = mul_ln199_1_fu_1793_p00;
assign mul_ln199_1_fu_1793_p00 = empty_43_reg_2758;
assign mul_ln199_1_fu_1793_p1 = 16'd190;
assign mul_ln199_2_fu_2009_p0 = mul_ln199_2_fu_2009_p00;
assign mul_ln199_2_fu_2009_p00 = empty_69_reg_2993;
assign mul_ln199_2_fu_2009_p1 = 16'd190;
assign mul_ln199_3_fu_2135_p0 = mul_ln199_3_fu_2135_p00;
assign mul_ln199_3_fu_2135_p00 = empty_95_reg_3253;
assign mul_ln199_3_fu_2135_p1 = 16'd190;
assign mul_ln199_fu_1547_p0 = mul_ln199_fu_1547_p00;
assign mul_ln199_fu_1547_p00 = tmp_4_reg_2608;
assign mul_ln199_fu_1547_p1 = 16'd190;
assign mul_ln212_1_fu_1802_p0 = mul_ln212_1_fu_1802_p00;
assign mul_ln212_1_fu_1802_p00 = empty_46_reg_2788;
assign mul_ln212_1_fu_1802_p1 = 16'd190;
assign mul_ln212_2_fu_2018_p0 = mul_ln212_2_fu_2018_p00;
assign mul_ln212_2_fu_2018_p00 = empty_72_reg_3003;
assign mul_ln212_2_fu_2018_p1 = 16'd190;
assign mul_ln212_3_fu_2144_p0 = mul_ln212_3_fu_2144_p00;
assign mul_ln212_3_fu_2144_p00 = empty_98_reg_3283;
assign mul_ln212_3_fu_2144_p1 = 16'd190;
assign mul_ln212_fu_1556_p0 = mul_ln212_fu_1556_p00;
assign mul_ln212_fu_1556_p00 = tmp_6_reg_2618;
assign mul_ln212_fu_1556_p1 = 16'd190;
assign mul_ln225_1_fu_1811_p0 = mul_ln225_1_fu_1811_p00;
assign mul_ln225_1_fu_1811_p00 = empty_49_reg_2798;
assign mul_ln225_1_fu_1811_p1 = 16'd190;
assign mul_ln225_2_fu_2027_p0 = mul_ln225_2_fu_2027_p00;
assign mul_ln225_2_fu_2027_p00 = empty_75_reg_3033;
assign mul_ln225_2_fu_2027_p1 = 16'd190;
assign mul_ln225_3_fu_2153_p0 = mul_ln225_3_fu_2153_p00;
assign mul_ln225_3_fu_2153_p00 = empty_101_reg_3293;
assign mul_ln225_3_fu_2153_p1 = 16'd190;
assign mul_ln225_fu_1565_p0 = mul_ln225_fu_1565_p00;
assign mul_ln225_fu_1565_p00 = empty_23_reg_2628;
assign mul_ln225_fu_1565_p1 = 16'd190;
assign mul_ln238_1_fu_1820_p0 = mul_ln238_1_fu_1820_p00;
assign mul_ln238_1_fu_1820_p00 = empty_52_reg_2828;
assign mul_ln238_1_fu_1820_p1 = 16'd190;
assign mul_ln238_2_fu_2036_p0 = mul_ln238_2_fu_2036_p00;
assign mul_ln238_2_fu_2036_p00 = empty_78_reg_3043;
assign mul_ln238_2_fu_2036_p1 = 16'd190;
assign mul_ln238_3_fu_2162_p0 = mul_ln238_3_fu_2162_p00;
assign mul_ln238_3_fu_2162_p00 = empty_104_reg_3368;
assign mul_ln238_3_fu_2162_p1 = 16'd190;
assign mul_ln238_fu_1574_p0 = mul_ln238_fu_1574_p00;
assign mul_ln238_fu_1574_p00 = empty_26_reg_2638;
assign mul_ln238_fu_1574_p1 = 16'd190;
assign mul_ln251_1_fu_1829_p0 = mul_ln251_1_fu_1829_p00;
assign mul_ln251_1_fu_1829_p00 = empty_55_reg_2838;
assign mul_ln251_1_fu_1829_p1 = 16'd190;
assign mul_ln251_2_fu_2045_p0 = mul_ln251_2_fu_2045_p00;
assign mul_ln251_2_fu_2045_p00 = empty_81_reg_3118;
assign mul_ln251_2_fu_2045_p1 = 16'd190;
assign mul_ln251_3_fu_2171_p0 = mul_ln251_3_fu_2171_p00;
assign mul_ln251_3_fu_2171_p00 = empty_107_reg_3378;
assign mul_ln251_3_fu_2171_p1 = 16'd190;
assign mul_ln251_fu_1583_p0 = mul_ln251_fu_1583_p00;
assign mul_ln251_fu_1583_p00 = empty_29_reg_2668;
assign mul_ln251_fu_1583_p1 = 16'd190;
assign mul_ln264_1_fu_1838_p0 = mul_ln264_1_fu_1838_p00;
assign mul_ln264_1_fu_1838_p00 = empty_58_reg_2868;
assign mul_ln264_1_fu_1838_p1 = 16'd190;
assign mul_ln264_2_fu_2054_p0 = mul_ln264_2_fu_2054_p00;
assign mul_ln264_2_fu_2054_p00 = empty_84_reg_3128;
assign mul_ln264_2_fu_2054_p1 = 16'd190;
assign mul_ln264_3_fu_2180_p0 = mul_ln264_3_fu_2180_p00;
assign mul_ln264_3_fu_2180_p00 = empty_110_reg_3408;
assign mul_ln264_3_fu_2180_p1 = 16'd190;
assign mul_ln264_fu_1592_p0 = mul_ln264_fu_1592_p00;
assign mul_ln264_fu_1592_p00 = empty_32_reg_2678;
assign mul_ln264_fu_1592_p1 = 16'd190;
assign mul_ln277_1_fu_1847_p0 = mul_ln277_1_fu_1847_p00;
assign mul_ln277_1_fu_1847_p00 = empty_61_reg_2878;
assign mul_ln277_1_fu_1847_p1 = 16'd190;
assign mul_ln277_2_fu_2063_p0 = mul_ln277_2_fu_2063_p00;
assign mul_ln277_2_fu_2063_p00 = empty_87_reg_3203;
assign mul_ln277_2_fu_2063_p1 = 16'd190;
assign mul_ln277_3_fu_2189_p0 = mul_ln277_3_fu_2189_p00;
assign mul_ln277_3_fu_2189_p00 = empty_113_reg_3418;
assign mul_ln277_3_fu_2189_p1 = 16'd190;
assign mul_ln277_fu_1601_p0 = mul_ln277_fu_1601_p00;
assign mul_ln277_fu_1601_p00 = empty_35_reg_2708;
assign mul_ln277_fu_1601_p1 = 16'd190;
assign p_cast1000_fu_1470_p1 = grp_fu_2315_p3;
assign p_cast1001_fu_1495_p1 = grp_fu_2323_p3;
assign p_cast1002_fu_1500_p1 = grp_fu_2331_p3;
assign p_cast1003_fu_1607_p1 = grp_fu_2339_p3;
assign p_cast1004_fu_1612_p1 = grp_fu_2347_p3;
assign p_cast1005_fu_1682_p1 = grp_fu_2355_p3;
assign p_cast1006_fu_1687_p1 = grp_fu_2363_p3;
assign p_cast1007_fu_1712_p1 = grp_fu_2371_p3;
assign p_cast1008_fu_1717_p1 = grp_fu_2379_p3;
assign p_cast1009_fu_1742_p1 = grp_fu_2387_p3;
assign p_cast1010_fu_1747_p1 = grp_fu_2395_p3;
assign p_cast1011_fu_1853_p1 = grp_fu_2403_p3;
assign p_cast1012_fu_1858_p1 = grp_fu_2411_p3;
assign p_cast1013_fu_1883_p1 = grp_fu_2419_p3;
assign p_cast1014_fu_1888_p1 = grp_fu_2427_p3;
assign p_cast1015_fu_1958_p1 = grp_fu_2435_p3;
assign p_cast1016_fu_1963_p1 = grp_fu_2443_p3;
assign p_cast1017_fu_1968_p1 = grp_fu_2451_p3;
assign p_cast1018_fu_1973_p1 = grp_fu_2459_p3;
assign p_cast1019_fu_1978_p1 = grp_fu_2467_p3;
assign p_cast1020_fu_1983_p1 = grp_fu_2475_p3;
assign p_cast986_fu_1210_p1 = grp_fu_2195_p3;
assign p_cast987_fu_1240_p1 = grp_fu_2211_p3;
assign p_cast988_fu_1245_p1 = grp_fu_2219_p3;
assign p_cast989_fu_1270_p1 = grp_fu_2227_p3;
assign p_cast990_fu_1275_p1 = grp_fu_2235_p3;
assign p_cast991_fu_1300_p1 = grp_fu_2243_p3;
assign p_cast992_fu_1305_p1 = grp_fu_2251_p3;
assign p_cast993_fu_1330_p1 = grp_fu_2259_p3;
assign p_cast994_fu_1335_p1 = grp_fu_2267_p3;
assign p_cast995_fu_1360_p1 = grp_fu_2275_p3;
assign p_cast996_fu_1365_p1 = grp_fu_2283_p3;
assign p_cast997_fu_1435_p1 = grp_fu_2291_p3;
assign p_cast998_fu_1440_p1 = grp_fu_2299_p3;
assign p_cast999_fu_1465_p1 = grp_fu_2307_p3;
assign p_cast_fu_1215_p1 = grp_fu_2203_p3;
assign tmp_1_fu_1130_p3 = {{tmp_fu_1120_p4}, {1'd1}};
assign tmp_2_fu_1156_p4 = {{v115_reg_766[7:2]}};
assign tmp_4_fu_1166_p3 = {{tmp_2_fu_1156_p4}, {2'd2}};
assign tmp_6_fu_1178_p3 = {{tmp_2_fu_1156_p4}, {2'd3}};
assign tmp_fu_1120_p4 = {{v115_reg_766[7:1]}};
assign trunc_ln168_fu_1086_p1 = v114_fu_154[0:0];
assign v119_1_fu_1637_p1 = reg_976;
assign v119_2_fu_1913_p1 = reg_940;
assign v119_3_fu_2069_p1 = reg_976;
assign v119_fu_1390_p1 = reg_940;
assign v132_1_fu_1642_p1 = reg_940;
assign v132_2_fu_1918_p1 = reg_944;
assign v132_3_fu_2074_p1 = reg_940;
assign v132_fu_1395_p1 = reg_944;
assign v143_1_fu_1647_p1 = reg_944;
assign v143_2_fu_1923_p1 = reg_948;
assign v143_3_fu_2079_p1 = reg_944;
assign v143_fu_1400_p1 = reg_948;
assign v154_1_fu_1652_p1 = reg_948;
assign v154_2_fu_1928_p1 = reg_952;
assign v154_3_fu_2084_p1 = reg_948;
assign v154_fu_1405_p1 = reg_952;
assign v165_1_fu_1657_p1 = reg_952;
assign v165_2_fu_1933_p1 = reg_956;
assign v165_3_fu_2089_p1 = reg_952;
assign v165_fu_1410_p1 = reg_956;
assign v176_1_fu_1662_p1 = reg_956;
assign v176_2_fu_1938_p1 = reg_960;
assign v176_3_fu_2094_p1 = reg_956;
assign v176_fu_1415_p1 = reg_960;
assign v187_1_fu_1667_p1 = reg_960;
assign v187_2_fu_1943_p1 = reg_964;
assign v187_3_fu_2099_p1 = reg_960;
assign v187_fu_1420_p1 = reg_964;
assign v198_1_fu_1672_p1 = reg_964;
assign v198_2_fu_1948_p1 = reg_968;
assign v198_3_fu_2104_p1 = reg_964;
assign v198_fu_1425_p1 = reg_968;
assign v209_1_fu_1677_p1 = reg_968;
assign v209_2_fu_1953_p1 = reg_972;
assign v209_3_fu_2109_p1 = reg_968;
assign v209_fu_1430_p1 = reg_972;
assign v226_0_address0 = v226_0_address0_local;
assign v226_0_address1 = v226_0_address1_local;
assign v226_0_ce0 = v226_0_ce0_local;
assign v226_0_ce1 = v226_0_ce1_local;
assign v226_1_address0 = v226_1_address0_local;
assign v226_1_address1 = v226_1_address1_local;
assign v226_1_ce0 = v226_1_ce0_local;
assign v226_1_ce1 = v226_1_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_1100_p1 = lshr_ln_fu_1090_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_2537[14:7] <= 8'b00000000;
    tmp_1_reg_2593[0] <= 1'b1;
    tmp_4_reg_2608[1:0] <= 2'b10;
    tmp_6_reg_2618[1:0] <= 2'b11;
end
endmodule 