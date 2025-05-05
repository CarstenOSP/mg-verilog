module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_opcode,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce); 
parameter    ap_ST_fsm_state1 = 21'd1;
parameter    ap_ST_fsm_state2 = 21'd2;
parameter    ap_ST_fsm_state3 = 21'd4;
parameter    ap_ST_fsm_state4 = 21'd8;
parameter    ap_ST_fsm_state5 = 21'd16;
parameter    ap_ST_fsm_state6 = 21'd32;
parameter    ap_ST_fsm_state7 = 21'd64;
parameter    ap_ST_fsm_state8 = 21'd128;
parameter    ap_ST_fsm_state9 = 21'd256;
parameter    ap_ST_fsm_state10 = 21'd512;
parameter    ap_ST_fsm_state11 = 21'd1024;
parameter    ap_ST_fsm_state12 = 21'd2048;
parameter    ap_ST_fsm_state13 = 21'd4096;
parameter    ap_ST_fsm_state14 = 21'd8192;
parameter    ap_ST_fsm_state15 = 21'd16384;
parameter    ap_ST_fsm_state16 = 21'd32768;
parameter    ap_ST_fsm_state17 = 21'd65536;
parameter    ap_ST_fsm_state18 = 21'd131072;
parameter    ap_ST_fsm_state19 = 21'd262144;
parameter    ap_ST_fsm_state20 = 21'd524288;
parameter    ap_ST_fsm_state21 = 21'd1048576;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [13:0] v226_0_address1;
output   v226_0_ce1;
input  [31:0] v226_0_q1;
output  [13:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [13:0] v226_1_address1;
output   v226_1_ce1;
input  [31:0] v226_1_q1;
output  [13:0] v226_2_address0;
output   v226_2_ce0;
input  [31:0] v226_2_q0;
output  [13:0] v226_2_address1;
output   v226_2_ce1;
input  [31:0] v226_2_q1;
output  [13:0] v226_3_address0;
output   v226_3_ce0;
input  [31:0] v226_3_q0;
output  [13:0] v226_3_address1;
output   v226_3_ce1;
input  [31:0] v226_3_q1;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[14:0] v227_0_address0;
reg v227_0_ce0;
reg[14:0] v227_0_address1;
reg v227_0_ce1;
reg[14:0] v227_1_address0;
reg v227_1_ce0;
reg[14:0] v227_1_address1;
reg v227_1_ce1;
reg[15:0] v225_address0;
reg v225_ce0;
reg v225_we0;
reg[31:0] v225_d0;
reg[15:0] v225_address1;
reg v225_ce1;
reg v225_we1;
reg[31:0] v225_d1;
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_928_p2;
reg   [31:0] reg_866;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state19;
wire   [31:0] grp_fu_834_p2;
reg   [31:0] reg_872;
wire   [31:0] grp_fu_838_p2;
reg   [31:0] reg_878;
wire   [31:0] grp_fu_842_p2;
reg   [31:0] reg_884;
wire   [31:0] grp_fu_846_p2;
reg   [31:0] reg_890;
wire   [31:0] grp_fu_850_p2;
reg   [31:0] reg_896;
wire   [31:0] grp_fu_854_p2;
reg   [31:0] reg_902;
wire   [31:0] grp_fu_858_p2;
reg   [31:0] reg_908;
wire   [31:0] grp_fu_862_p2;
reg   [31:0] reg_914;
wire   [7:0] add_ln168_fu_934_p2;
reg   [7:0] add_ln168_reg_2348;
wire   [1:0] trunc_ln168_fu_940_p1;
reg   [1:0] trunc_ln168_reg_2353;
wire   [0:0] trunc_ln168_1_fu_944_p1;
reg   [0:0] trunc_ln168_1_reg_2375;
wire   [14:0] mul_ln175_fu_962_p2;
reg   [14:0] mul_ln175_reg_2381;
wire   [13:0] zext_ln168_fu_978_p1;
reg   [13:0] zext_ln168_reg_2387;
wire   [0:0] cmp11_fu_982_p2;
reg   [0:0] cmp11_reg_2409;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_1_fu_1008_p3;
reg   [7:0] tmp_1_reg_2423;
wire   [7:0] add_ln169_1_fu_1020_p2;
reg   [7:0] add_ln169_1_reg_2433;
wire   [7:0] empty_25_fu_1030_p2;
reg   [7:0] empty_25_reg_2438;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_32_fu_1040_p2;
reg   [7:0] empty_32_reg_2448;
wire   [7:0] empty_39_fu_1050_p2;
reg   [7:0] empty_39_reg_2458;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_46_fu_1060_p2;
reg   [7:0] empty_46_reg_2468;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_53_fu_1084_p2;
reg   [7:0] empty_53_reg_2518;
wire   [7:0] empty_60_fu_1094_p2;
reg   [7:0] empty_60_reg_2528;
wire   [31:0] v_fu_1120_p11;
reg   [31:0] v_reg_2538;
wire    ap_CS_fsm_state7;
wire   [31:0] v37_fu_1159_p11;
reg   [31:0] v37_reg_2543;
wire   [7:0] empty_67_fu_1196_p2;
reg   [7:0] empty_67_reg_2588;
wire   [7:0] add_ln169_fu_1206_p2;
reg   [7:0] add_ln169_reg_2598;
wire   [31:0] v39_fu_1232_p11;
reg   [31:0] v39_reg_2608;
wire    ap_CS_fsm_state8;
wire   [31:0] v41_fu_1271_p11;
reg   [31:0] v41_reg_2613;
wire   [7:0] empty_80_fu_1308_p2;
reg   [7:0] empty_80_reg_2658;
wire   [7:0] empty_87_fu_1318_p2;
reg   [7:0] empty_87_reg_2668;
wire   [31:0] v43_fu_1344_p11;
reg   [31:0] v43_reg_2678;
wire    ap_CS_fsm_state9;
wire   [31:0] v45_fu_1383_p11;
reg   [31:0] v45_reg_2683;
wire   [7:0] empty_94_fu_1420_p2;
reg   [7:0] empty_94_reg_2728;
wire   [7:0] empty_101_fu_1430_p2;
reg   [7:0] empty_101_reg_2738;
wire   [31:0] v47_fu_1456_p11;
reg   [31:0] v47_reg_2748;
wire    ap_CS_fsm_state10;
wire   [31:0] v49_fu_1495_p11;
reg   [31:0] v49_reg_2753;
wire   [7:0] empty_108_fu_1532_p2;
reg   [7:0] empty_108_reg_2798;
wire   [7:0] empty_115_fu_1542_p2;
reg   [7:0] empty_115_reg_2808;
wire   [31:0] v51_fu_1568_p11;
reg   [31:0] v51_reg_2818;
wire    ap_CS_fsm_state11;
wire   [31:0] v119_1_fu_1607_p11;
reg   [31:0] v119_1_reg_2823;
wire   [7:0] empty_122_fu_1644_p2;
reg   [7:0] empty_122_reg_2868;
wire   [7:0] empty_129_fu_1654_p2;
reg   [7:0] empty_129_reg_2878;
wire   [31:0] v132_1_fu_1680_p11;
reg   [31:0] v132_1_reg_2888;
wire    ap_CS_fsm_state12;
wire   [31:0] v143_1_fu_1719_p11;
reg   [31:0] v143_1_reg_2893;
wire   [31:0] v154_1_fu_1772_p11;
reg   [31:0] v154_1_reg_2938;
wire    ap_CS_fsm_state13;
wire   [31:0] v165_1_fu_1811_p11;
reg   [31:0] v165_1_reg_2943;
wire   [31:0] v176_1_fu_1864_p11;
reg   [31:0] v176_1_reg_2988;
wire    ap_CS_fsm_state14;
wire   [31:0] v187_1_fu_1903_p11;
reg   [31:0] v187_1_reg_2993;
wire   [15:0] mul_ln171_fu_1944_p2;
reg   [15:0] mul_ln171_reg_3038;
wire   [15:0] mul_ln186_fu_1953_p2;
reg   [15:0] mul_ln186_reg_3043;
wire   [15:0] mul_ln199_fu_1962_p2;
reg   [15:0] mul_ln199_reg_3048;
wire   [15:0] mul_ln212_fu_1971_p2;
reg   [15:0] mul_ln212_reg_3053;
wire   [15:0] mul_ln225_fu_1980_p2;
reg   [15:0] mul_ln225_reg_3058;
wire   [15:0] mul_ln238_fu_1989_p2;
reg   [15:0] mul_ln238_reg_3063;
wire   [15:0] mul_ln251_fu_1998_p2;
reg   [15:0] mul_ln251_reg_3068;
wire   [15:0] mul_ln264_fu_2007_p2;
reg   [15:0] mul_ln264_reg_3073;
wire   [15:0] mul_ln277_fu_2016_p2;
reg   [15:0] mul_ln277_reg_3078;
wire   [31:0] v198_1_fu_2038_p11;
reg   [31:0] v198_1_reg_3083;
wire   [31:0] v209_1_fu_2077_p11;
reg   [31:0] v209_1_reg_3088;
wire   [15:0] mul_ln171_1_fu_2103_p2;
reg   [15:0] mul_ln171_1_reg_3093;
wire   [15:0] mul_ln186_1_fu_2112_p2;
reg   [15:0] mul_ln186_1_reg_3098;
wire   [15:0] mul_ln199_1_fu_2121_p2;
reg   [15:0] mul_ln199_1_reg_3103;
wire   [15:0] mul_ln212_1_fu_2130_p2;
reg   [15:0] mul_ln212_1_reg_3108;
wire   [15:0] mul_ln225_1_fu_2139_p2;
reg   [15:0] mul_ln225_1_reg_3113;
wire   [15:0] mul_ln238_1_fu_2148_p2;
reg   [15:0] mul_ln238_1_reg_3118;
wire   [15:0] mul_ln251_1_fu_2157_p2;
reg   [15:0] mul_ln251_1_reg_3123;
wire   [15:0] mul_ln264_1_fu_2166_p2;
reg   [15:0] mul_ln264_1_reg_3128;
wire   [15:0] mul_ln277_1_fu_2175_p2;
reg   [15:0] mul_ln277_1_reg_3133;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_0_ce1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_1_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3138_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3138_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3138_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3138_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3142_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3142_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3142_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_0_ce1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_1_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3138_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3138_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3138_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3138_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3142_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3142_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3142_p_ce;
reg   [7:0] v115_reg_756;
wire    ap_CS_fsm_state21;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_start_reg;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_start_reg;
wire    ap_CS_fsm_state20;
wire   [63:0] p_cast1521_fu_1070_p1;
wire   [63:0] p_cast_fu_1077_p1;
wire   [63:0] p_cast1522_fu_1182_p1;
wire   [63:0] p_cast1523_fu_1189_p1;
wire   [63:0] p_cast1524_fu_1294_p1;
wire   [63:0] p_cast1525_fu_1301_p1;
wire   [63:0] p_cast1526_fu_1406_p1;
wire   [63:0] p_cast1527_fu_1413_p1;
wire   [63:0] p_cast1528_fu_1518_p1;
wire   [63:0] p_cast1529_fu_1525_p1;
wire   [63:0] p_cast1530_fu_1630_p1;
wire   [63:0] p_cast1531_fu_1637_p1;
wire   [63:0] p_cast1532_fu_1742_p1;
wire   [63:0] p_cast1533_fu_1749_p1;
wire   [63:0] p_cast1534_fu_1834_p1;
wire   [63:0] p_cast1535_fu_1841_p1;
wire   [63:0] p_cast1536_fu_1926_p1;
wire   [63:0] p_cast1537_fu_1933_p1;
reg   [7:0] v114_fu_126;
wire   [0:0] icmp_ln169_fu_988_p2;
reg    v236_write_local;
reg    v226_0_ce1_local;
reg   [13:0] v226_0_address1_local;
reg    v226_0_ce0_local;
reg   [13:0] v226_0_address0_local;
reg    v226_1_ce1_local;
reg   [13:0] v226_1_address1_local;
reg    v226_1_ce0_local;
reg   [13:0] v226_1_address0_local;
reg    v226_2_ce1_local;
reg   [13:0] v226_2_address1_local;
reg    v226_2_ce0_local;
reg   [13:0] v226_2_address0_local;
reg    v226_3_ce1_local;
reg   [13:0] v226_3_address1_local;
reg    v226_3_ce0_local;
reg   [13:0] v226_3_address0_local;
reg   [31:0] grp_fu_830_p0;
reg   [31:0] grp_fu_834_p0;
reg   [31:0] grp_fu_838_p0;
reg   [31:0] grp_fu_842_p0;
reg   [31:0] grp_fu_846_p0;
reg   [31:0] grp_fu_850_p0;
reg   [31:0] grp_fu_854_p0;
reg   [31:0] grp_fu_858_p0;
reg   [31:0] grp_fu_862_p0;
wire   [6:0] lshr_ln_fu_948_p4;
wire   [6:0] mul_ln175_fu_962_p0;
wire   [8:0] mul_ln175_fu_962_p1;
wire   [5:0] lshr_ln168_1_fu_968_p4;
wire   [6:0] tmp_fu_998_p4;
wire   [13:0] grp_fu_2181_p3;
wire   [13:0] grp_fu_2189_p3;
wire   [31:0] v_fu_1120_p2;
wire   [31:0] v_fu_1120_p4;
wire   [31:0] v_fu_1120_p6;
wire   [31:0] v_fu_1120_p8;
wire   [31:0] v_fu_1120_p9;
wire   [31:0] v37_fu_1159_p2;
wire   [31:0] v37_fu_1159_p4;
wire   [31:0] v37_fu_1159_p6;
wire   [31:0] v37_fu_1159_p8;
wire   [31:0] v37_fu_1159_p9;
wire   [13:0] grp_fu_2197_p3;
wire   [13:0] grp_fu_2205_p3;
wire   [31:0] v39_fu_1232_p2;
wire   [31:0] v39_fu_1232_p4;
wire   [31:0] v39_fu_1232_p6;
wire   [31:0] v39_fu_1232_p8;
wire   [31:0] v39_fu_1232_p9;
wire   [31:0] v41_fu_1271_p2;
wire   [31:0] v41_fu_1271_p4;
wire   [31:0] v41_fu_1271_p6;
wire   [31:0] v41_fu_1271_p8;
wire   [31:0] v41_fu_1271_p9;
wire   [13:0] grp_fu_2213_p3;
wire   [13:0] grp_fu_2221_p3;
wire   [31:0] v43_fu_1344_p2;
wire   [31:0] v43_fu_1344_p4;
wire   [31:0] v43_fu_1344_p6;
wire   [31:0] v43_fu_1344_p8;
wire   [31:0] v43_fu_1344_p9;
wire   [31:0] v45_fu_1383_p2;
wire   [31:0] v45_fu_1383_p4;
wire   [31:0] v45_fu_1383_p6;
wire   [31:0] v45_fu_1383_p8;
wire   [31:0] v45_fu_1383_p9;
wire   [13:0] grp_fu_2229_p3;
wire   [13:0] grp_fu_2237_p3;
wire   [31:0] v47_fu_1456_p2;
wire   [31:0] v47_fu_1456_p4;
wire   [31:0] v47_fu_1456_p6;
wire   [31:0] v47_fu_1456_p8;
wire   [31:0] v47_fu_1456_p9;
wire   [31:0] v49_fu_1495_p2;
wire   [31:0] v49_fu_1495_p4;
wire   [31:0] v49_fu_1495_p6;
wire   [31:0] v49_fu_1495_p8;
wire   [31:0] v49_fu_1495_p9;
wire   [13:0] grp_fu_2245_p3;
wire   [13:0] grp_fu_2253_p3;
wire   [31:0] v51_fu_1568_p2;
wire   [31:0] v51_fu_1568_p4;
wire   [31:0] v51_fu_1568_p6;
wire   [31:0] v51_fu_1568_p8;
wire   [31:0] v51_fu_1568_p9;
wire   [31:0] v119_1_fu_1607_p2;
wire   [31:0] v119_1_fu_1607_p4;
wire   [31:0] v119_1_fu_1607_p6;
wire   [31:0] v119_1_fu_1607_p8;
wire   [31:0] v119_1_fu_1607_p9;
wire   [13:0] grp_fu_2261_p3;
wire   [13:0] grp_fu_2269_p3;
wire   [31:0] v132_1_fu_1680_p2;
wire   [31:0] v132_1_fu_1680_p4;
wire   [31:0] v132_1_fu_1680_p6;
wire   [31:0] v132_1_fu_1680_p8;
wire   [31:0] v132_1_fu_1680_p9;
wire   [31:0] v143_1_fu_1719_p2;
wire   [31:0] v143_1_fu_1719_p4;
wire   [31:0] v143_1_fu_1719_p6;
wire   [31:0] v143_1_fu_1719_p8;
wire   [31:0] v143_1_fu_1719_p9;
wire   [13:0] grp_fu_2277_p3;
wire   [13:0] grp_fu_2285_p3;
wire   [31:0] v154_1_fu_1772_p2;
wire   [31:0] v154_1_fu_1772_p4;
wire   [31:0] v154_1_fu_1772_p6;
wire   [31:0] v154_1_fu_1772_p8;
wire   [31:0] v154_1_fu_1772_p9;
wire   [31:0] v165_1_fu_1811_p2;
wire   [31:0] v165_1_fu_1811_p4;
wire   [31:0] v165_1_fu_1811_p6;
wire   [31:0] v165_1_fu_1811_p8;
wire   [31:0] v165_1_fu_1811_p9;
wire   [13:0] grp_fu_2293_p3;
wire   [13:0] grp_fu_2301_p3;
wire   [31:0] v176_1_fu_1864_p2;
wire   [31:0] v176_1_fu_1864_p4;
wire   [31:0] v176_1_fu_1864_p6;
wire   [31:0] v176_1_fu_1864_p8;
wire   [31:0] v176_1_fu_1864_p9;
wire   [31:0] v187_1_fu_1903_p2;
wire   [31:0] v187_1_fu_1903_p4;
wire   [31:0] v187_1_fu_1903_p6;
wire   [31:0] v187_1_fu_1903_p8;
wire   [31:0] v187_1_fu_1903_p9;
wire   [13:0] grp_fu_2309_p3;
wire   [13:0] grp_fu_2317_p3;
wire   [7:0] mul_ln171_fu_1944_p0;
wire   [8:0] mul_ln171_fu_1944_p1;
wire   [7:0] mul_ln186_fu_1953_p0;
wire   [8:0] mul_ln186_fu_1953_p1;
wire   [7:0] mul_ln199_fu_1962_p0;
wire   [8:0] mul_ln199_fu_1962_p1;
wire   [7:0] mul_ln212_fu_1971_p0;
wire   [8:0] mul_ln212_fu_1971_p1;
wire   [7:0] mul_ln225_fu_1980_p0;
wire   [8:0] mul_ln225_fu_1980_p1;
wire   [7:0] mul_ln238_fu_1989_p0;
wire   [8:0] mul_ln238_fu_1989_p1;
wire   [7:0] mul_ln251_fu_1998_p0;
wire   [8:0] mul_ln251_fu_1998_p1;
wire   [7:0] mul_ln264_fu_2007_p0;
wire   [8:0] mul_ln264_fu_2007_p1;
wire   [7:0] mul_ln277_fu_2016_p0;
wire   [8:0] mul_ln277_fu_2016_p1;
wire   [31:0] v198_1_fu_2038_p2;
wire   [31:0] v198_1_fu_2038_p4;
wire   [31:0] v198_1_fu_2038_p6;
wire   [31:0] v198_1_fu_2038_p8;
wire   [31:0] v198_1_fu_2038_p9;
wire   [31:0] v209_1_fu_2077_p2;
wire   [31:0] v209_1_fu_2077_p4;
wire   [31:0] v209_1_fu_2077_p6;
wire   [31:0] v209_1_fu_2077_p8;
wire   [31:0] v209_1_fu_2077_p9;
wire   [7:0] mul_ln171_1_fu_2103_p0;
wire   [8:0] mul_ln171_1_fu_2103_p1;
wire   [7:0] mul_ln186_1_fu_2112_p0;
wire   [8:0] mul_ln186_1_fu_2112_p1;
wire   [7:0] mul_ln199_1_fu_2121_p0;
wire   [8:0] mul_ln199_1_fu_2121_p1;
wire   [7:0] mul_ln212_1_fu_2130_p0;
wire   [8:0] mul_ln212_1_fu_2130_p1;
wire   [7:0] mul_ln225_1_fu_2139_p0;
wire   [8:0] mul_ln225_1_fu_2139_p1;
wire   [7:0] mul_ln238_1_fu_2148_p0;
wire   [8:0] mul_ln238_1_fu_2148_p1;
wire   [7:0] mul_ln251_1_fu_2157_p0;
wire   [8:0] mul_ln251_1_fu_2157_p1;
wire   [7:0] mul_ln264_1_fu_2166_p0;
wire   [8:0] mul_ln264_1_fu_2166_p1;
wire   [7:0] mul_ln277_1_fu_2175_p0;
wire   [8:0] mul_ln277_1_fu_2175_p1;
wire   [7:0] grp_fu_2181_p0;
wire   [5:0] grp_fu_2181_p1;
wire   [5:0] grp_fu_2181_p2;
wire   [7:0] grp_fu_2189_p0;
wire   [5:0] grp_fu_2189_p1;
wire   [5:0] grp_fu_2189_p2;
wire   [7:0] grp_fu_2197_p0;
wire   [5:0] grp_fu_2197_p1;
wire   [5:0] grp_fu_2197_p2;
wire   [7:0] grp_fu_2205_p0;
wire   [5:0] grp_fu_2205_p1;
wire   [5:0] grp_fu_2205_p2;
wire   [7:0] grp_fu_2213_p0;
wire   [5:0] grp_fu_2213_p1;
wire   [5:0] grp_fu_2213_p2;
wire   [7:0] grp_fu_2221_p0;
wire   [5:0] grp_fu_2221_p1;
wire   [5:0] grp_fu_2221_p2;
wire   [7:0] grp_fu_2229_p0;
wire   [5:0] grp_fu_2229_p1;
wire   [5:0] grp_fu_2229_p2;
wire   [7:0] grp_fu_2237_p0;
wire   [5:0] grp_fu_2237_p1;
wire   [5:0] grp_fu_2237_p2;
wire   [7:0] grp_fu_2245_p0;
wire   [5:0] grp_fu_2245_p1;
wire   [5:0] grp_fu_2245_p2;
wire   [7:0] grp_fu_2253_p0;
wire   [5:0] grp_fu_2253_p1;
wire   [5:0] grp_fu_2253_p2;
wire   [7:0] grp_fu_2261_p0;
wire   [5:0] grp_fu_2261_p1;
wire   [5:0] grp_fu_2261_p2;
wire   [7:0] grp_fu_2269_p0;
wire   [5:0] grp_fu_2269_p1;
wire   [5:0] grp_fu_2269_p2;
wire   [7:0] grp_fu_2277_p0;
wire   [5:0] grp_fu_2277_p1;
wire   [5:0] grp_fu_2277_p2;
wire   [7:0] grp_fu_2285_p0;
wire   [5:0] grp_fu_2285_p1;
wire   [5:0] grp_fu_2285_p2;
wire   [7:0] grp_fu_2293_p0;
wire   [5:0] grp_fu_2293_p1;
wire   [5:0] grp_fu_2293_p2;
wire   [7:0] grp_fu_2301_p0;
wire   [5:0] grp_fu_2301_p1;
wire   [5:0] grp_fu_2301_p2;
wire   [7:0] grp_fu_2309_p0;
wire   [5:0] grp_fu_2309_p1;
wire   [5:0] grp_fu_2309_p2;
wire   [7:0] grp_fu_2317_p0;
wire   [5:0] grp_fu_2317_p1;
wire   [5:0] grp_fu_2317_p2;
reg    grp_fu_830_ce;
wire    ap_CS_fsm_state18;
reg    grp_fu_834_ce;
reg    grp_fu_838_ce;
reg    grp_fu_842_ce;
reg    grp_fu_846_ce;
reg    grp_fu_850_ce;
reg    grp_fu_854_ce;
reg    grp_fu_858_ce;
reg    grp_fu_862_ce;
reg   [31:0] grp_fu_3138_p0;
reg   [31:0] grp_fu_3138_p1;
reg    grp_fu_3138_ce;
reg   [31:0] grp_fu_3142_p0;
reg   [31:0] grp_fu_3142_p1;
reg    grp_fu_3142_ce;
reg   [20:0] ap_NS_fsm;
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
wire   [13:0] grp_fu_2181_p00;
wire   [13:0] grp_fu_2189_p00;
wire   [13:0] grp_fu_2197_p00;
wire   [13:0] grp_fu_2205_p00;
wire   [13:0] grp_fu_2213_p00;
wire   [13:0] grp_fu_2221_p00;
wire   [13:0] grp_fu_2229_p00;
wire   [13:0] grp_fu_2237_p00;
wire   [13:0] grp_fu_2245_p00;
wire   [13:0] grp_fu_2253_p00;
wire   [13:0] grp_fu_2261_p00;
wire   [13:0] grp_fu_2269_p00;
wire   [13:0] grp_fu_2277_p00;
wire   [13:0] grp_fu_2285_p00;
wire   [13:0] grp_fu_2293_p00;
wire   [13:0] grp_fu_2301_p00;
wire   [13:0] grp_fu_2309_p00;
wire   [13:0] grp_fu_2317_p00;
wire   [15:0] mul_ln171_1_fu_2103_p00;
wire   [15:0] mul_ln171_fu_1944_p00;
wire   [14:0] mul_ln175_fu_962_p00;
wire   [15:0] mul_ln186_1_fu_2112_p00;
wire   [15:0] mul_ln186_fu_1953_p00;
wire   [15:0] mul_ln199_1_fu_2121_p00;
wire   [15:0] mul_ln199_fu_1962_p00;
wire   [15:0] mul_ln212_1_fu_2130_p00;
wire   [15:0] mul_ln212_fu_1971_p00;
wire   [15:0] mul_ln225_1_fu_2139_p00;
wire   [15:0] mul_ln225_fu_1980_p00;
wire   [15:0] mul_ln238_1_fu_2148_p00;
wire   [15:0] mul_ln238_fu_1989_p00;
wire   [15:0] mul_ln251_1_fu_2157_p00;
wire   [15:0] mul_ln251_fu_1998_p00;
wire   [15:0] mul_ln264_1_fu_2166_p00;
wire   [15:0] mul_ln264_fu_2007_p00;
wire   [15:0] mul_ln277_1_fu_2175_p00;
wire   [15:0] mul_ln277_fu_2016_p00;
wire   [1:0] v_fu_1120_p1;
wire   [1:0] v_fu_1120_p3;
wire  signed [1:0] v_fu_1120_p5;
wire  signed [1:0] v_fu_1120_p7;
wire   [1:0] v37_fu_1159_p1;
wire   [1:0] v37_fu_1159_p3;
wire  signed [1:0] v37_fu_1159_p5;
wire  signed [1:0] v37_fu_1159_p7;
wire   [1:0] v39_fu_1232_p1;
wire   [1:0] v39_fu_1232_p3;
wire  signed [1:0] v39_fu_1232_p5;
wire  signed [1:0] v39_fu_1232_p7;
wire   [1:0] v41_fu_1271_p1;
wire   [1:0] v41_fu_1271_p3;
wire  signed [1:0] v41_fu_1271_p5;
wire  signed [1:0] v41_fu_1271_p7;
wire   [1:0] v43_fu_1344_p1;
wire   [1:0] v43_fu_1344_p3;
wire  signed [1:0] v43_fu_1344_p5;
wire  signed [1:0] v43_fu_1344_p7;
wire   [1:0] v45_fu_1383_p1;
wire   [1:0] v45_fu_1383_p3;
wire  signed [1:0] v45_fu_1383_p5;
wire  signed [1:0] v45_fu_1383_p7;
wire   [1:0] v47_fu_1456_p1;
wire   [1:0] v47_fu_1456_p3;
wire  signed [1:0] v47_fu_1456_p5;
wire  signed [1:0] v47_fu_1456_p7;
wire   [1:0] v49_fu_1495_p1;
wire   [1:0] v49_fu_1495_p3;
wire  signed [1:0] v49_fu_1495_p5;
wire  signed [1:0] v49_fu_1495_p7;
wire   [1:0] v51_fu_1568_p1;
wire   [1:0] v51_fu_1568_p3;
wire  signed [1:0] v51_fu_1568_p5;
wire  signed [1:0] v51_fu_1568_p7;
wire   [1:0] v119_1_fu_1607_p1;
wire   [1:0] v119_1_fu_1607_p3;
wire  signed [1:0] v119_1_fu_1607_p5;
wire  signed [1:0] v119_1_fu_1607_p7;
wire   [1:0] v132_1_fu_1680_p1;
wire   [1:0] v132_1_fu_1680_p3;
wire  signed [1:0] v132_1_fu_1680_p5;
wire  signed [1:0] v132_1_fu_1680_p7;
wire   [1:0] v143_1_fu_1719_p1;
wire   [1:0] v143_1_fu_1719_p3;
wire  signed [1:0] v143_1_fu_1719_p5;
wire  signed [1:0] v143_1_fu_1719_p7;
wire   [1:0] v154_1_fu_1772_p1;
wire   [1:0] v154_1_fu_1772_p3;
wire  signed [1:0] v154_1_fu_1772_p5;
wire  signed [1:0] v154_1_fu_1772_p7;
wire   [1:0] v165_1_fu_1811_p1;
wire   [1:0] v165_1_fu_1811_p3;
wire  signed [1:0] v165_1_fu_1811_p5;
wire  signed [1:0] v165_1_fu_1811_p7;
wire   [1:0] v176_1_fu_1864_p1;
wire   [1:0] v176_1_fu_1864_p3;
wire  signed [1:0] v176_1_fu_1864_p5;
wire  signed [1:0] v176_1_fu_1864_p7;
wire   [1:0] v187_1_fu_1903_p1;
wire   [1:0] v187_1_fu_1903_p3;
wire  signed [1:0] v187_1_fu_1903_p5;
wire  signed [1:0] v187_1_fu_1903_p7;
wire   [1:0] v198_1_fu_2038_p1;
wire   [1:0] v198_1_fu_2038_p3;
wire  signed [1:0] v198_1_fu_2038_p5;
wire  signed [1:0] v198_1_fu_2038_p7;
wire   [1:0] v209_1_fu_2077_p1;
wire   [1:0] v209_1_fu_2077_p3;
wire  signed [1:0] v209_1_fu_2077_p5;
wire  signed [1:0] v209_1_fu_2077_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_start_reg = 1'b0;
#0 v114_fu_126 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_768(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_ready),.mul_ln175(mul_ln175_reg_2381),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_1_ce1),.v227_1_q1(v227_1_q1),.mul_ln171(mul_ln171_reg_3038),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_d1),.v225_q1(v225_q1),.mul_ln186(mul_ln186_reg_3043),.mul_ln199(mul_ln199_reg_3048),.mul_ln212(mul_ln212_reg_3053),.mul_ln225(mul_ln225_reg_3058),.mul_ln238(mul_ln238_reg_3063),.mul_ln251(mul_ln251_reg_3068),.mul_ln264(mul_ln264_reg_3073),.mul_ln277(mul_ln277_reg_3078),.cmp11(cmp11_reg_2409),.empty(trunc_ln168_1_reg_2375),.v120(reg_866),.v133(reg_872),.v144(reg_878),.v155(reg_884),.v166(reg_890),.v177(reg_896),.v188(reg_902),.v199(reg_908),.v210(reg_914),.grp_fu_3138_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3138_p_din0),.grp_fu_3138_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3138_p_din1),.grp_fu_3138_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3138_p_opcode),.grp_fu_3138_p_dout0(grp_fu_140_p_dout0),.grp_fu_3138_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3138_p_ce),.grp_fu_3142_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3142_p_din0),.grp_fu_3142_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3142_p_din1),.grp_fu_3142_p_dout0(grp_fu_144_p_dout0),.grp_fu_3142_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3142_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_799(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_ready),.mul_ln175(mul_ln175_reg_2381),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_1_ce1),.v227_1_q1(v227_1_q1),.mul_ln171_1(mul_ln171_1_reg_3093),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_d1),.v225_q1(v225_q1),.mul_ln186_1(mul_ln186_1_reg_3098),.mul_ln199_1(mul_ln199_1_reg_3103),.mul_ln212_1(mul_ln212_1_reg_3108),.mul_ln225_1(mul_ln225_1_reg_3113),.mul_ln238_1(mul_ln238_1_reg_3118),.mul_ln251_1(mul_ln251_1_reg_3123),.mul_ln264_1(mul_ln264_1_reg_3128),.mul_ln277_1(mul_ln277_1_reg_3133),.cmp11(cmp11_reg_2409),.empty(trunc_ln168_1_reg_2375),.v120_1(reg_866),.v133_1(reg_872),.v144_1(reg_878),.v155_1(reg_884),.v166_1(reg_890),.v177_1(reg_896),.v188_1(reg_902),.v199_1(reg_908),.v210_1(reg_914),.grp_fu_3138_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3138_p_din0),.grp_fu_3138_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3138_p_din1),.grp_fu_3138_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3138_p_opcode),.grp_fu_3138_p_dout0(grp_fu_140_p_dout0),.grp_fu_3138_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3138_p_ce),.grp_fu_3142_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3142_p_din0),.grp_fu_3142_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3142_p_din1),.grp_fu_3142_p_dout0(grp_fu_144_p_dout0),.grp_fu_3142_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3142_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_834_p0),.din1(v113),.ce(grp_fu_834_ce),.dout(grp_fu_834_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_838_p0),.din1(v113),.ce(grp_fu_838_ce),.dout(grp_fu_838_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_842_p0),.din1(v113),.ce(grp_fu_842_ce),.dout(grp_fu_842_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U57(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_846_p0),.din1(v113),.ce(grp_fu_846_ce),.dout(grp_fu_846_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U58(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_850_p0),.din1(v113),.ce(grp_fu_850_ce),.dout(grp_fu_850_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U59(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_854_p0),.din1(v113),.ce(grp_fu_854_ce),.dout(grp_fu_854_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U60(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_858_p0),.din1(v113),.ce(grp_fu_858_ce),.dout(grp_fu_858_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U61(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_862_p0),.din1(v113),.ce(grp_fu_862_ce),.dout(grp_fu_862_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U62(.din0(mul_ln175_fu_962_p0),.din1(mul_ln175_fu_962_p1),.dout(mul_ln175_fu_962_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U63(.din0(v_fu_1120_p2),.din1(v_fu_1120_p4),.din2(v_fu_1120_p6),.din3(v_fu_1120_p8),.def(v_fu_1120_p9),.sel(trunc_ln168_reg_2353),.dout(v_fu_1120_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U64(.din0(v37_fu_1159_p2),.din1(v37_fu_1159_p4),.din2(v37_fu_1159_p6),.din3(v37_fu_1159_p8),.def(v37_fu_1159_p9),.sel(trunc_ln168_reg_2353),.dout(v37_fu_1159_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U65(.din0(v39_fu_1232_p2),.din1(v39_fu_1232_p4),.din2(v39_fu_1232_p6),.din3(v39_fu_1232_p8),.def(v39_fu_1232_p9),.sel(trunc_ln168_reg_2353),.dout(v39_fu_1232_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U66(.din0(v41_fu_1271_p2),.din1(v41_fu_1271_p4),.din2(v41_fu_1271_p6),.din3(v41_fu_1271_p8),.def(v41_fu_1271_p9),.sel(trunc_ln168_reg_2353),.dout(v41_fu_1271_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U67(.din0(v43_fu_1344_p2),.din1(v43_fu_1344_p4),.din2(v43_fu_1344_p6),.din3(v43_fu_1344_p8),.def(v43_fu_1344_p9),.sel(trunc_ln168_reg_2353),.dout(v43_fu_1344_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U68(.din0(v45_fu_1383_p2),.din1(v45_fu_1383_p4),.din2(v45_fu_1383_p6),.din3(v45_fu_1383_p8),.def(v45_fu_1383_p9),.sel(trunc_ln168_reg_2353),.dout(v45_fu_1383_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U69(.din0(v47_fu_1456_p2),.din1(v47_fu_1456_p4),.din2(v47_fu_1456_p6),.din3(v47_fu_1456_p8),.def(v47_fu_1456_p9),.sel(trunc_ln168_reg_2353),.dout(v47_fu_1456_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U70(.din0(v49_fu_1495_p2),.din1(v49_fu_1495_p4),.din2(v49_fu_1495_p6),.din3(v49_fu_1495_p8),.def(v49_fu_1495_p9),.sel(trunc_ln168_reg_2353),.dout(v49_fu_1495_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U71(.din0(v51_fu_1568_p2),.din1(v51_fu_1568_p4),.din2(v51_fu_1568_p6),.din3(v51_fu_1568_p8),.def(v51_fu_1568_p9),.sel(trunc_ln168_reg_2353),.dout(v51_fu_1568_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U72(.din0(v119_1_fu_1607_p2),.din1(v119_1_fu_1607_p4),.din2(v119_1_fu_1607_p6),.din3(v119_1_fu_1607_p8),.def(v119_1_fu_1607_p9),.sel(trunc_ln168_reg_2353),.dout(v119_1_fu_1607_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U73(.din0(v132_1_fu_1680_p2),.din1(v132_1_fu_1680_p4),.din2(v132_1_fu_1680_p6),.din3(v132_1_fu_1680_p8),.def(v132_1_fu_1680_p9),.sel(trunc_ln168_reg_2353),.dout(v132_1_fu_1680_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U74(.din0(v143_1_fu_1719_p2),.din1(v143_1_fu_1719_p4),.din2(v143_1_fu_1719_p6),.din3(v143_1_fu_1719_p8),.def(v143_1_fu_1719_p9),.sel(trunc_ln168_reg_2353),.dout(v143_1_fu_1719_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U75(.din0(v154_1_fu_1772_p2),.din1(v154_1_fu_1772_p4),.din2(v154_1_fu_1772_p6),.din3(v154_1_fu_1772_p8),.def(v154_1_fu_1772_p9),.sel(trunc_ln168_reg_2353),.dout(v154_1_fu_1772_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U76(.din0(v165_1_fu_1811_p2),.din1(v165_1_fu_1811_p4),.din2(v165_1_fu_1811_p6),.din3(v165_1_fu_1811_p8),.def(v165_1_fu_1811_p9),.sel(trunc_ln168_reg_2353),.dout(v165_1_fu_1811_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U77(.din0(v176_1_fu_1864_p2),.din1(v176_1_fu_1864_p4),.din2(v176_1_fu_1864_p6),.din3(v176_1_fu_1864_p8),.def(v176_1_fu_1864_p9),.sel(trunc_ln168_reg_2353),.dout(v176_1_fu_1864_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U78(.din0(v187_1_fu_1903_p2),.din1(v187_1_fu_1903_p4),.din2(v187_1_fu_1903_p6),.din3(v187_1_fu_1903_p8),.def(v187_1_fu_1903_p9),.sel(trunc_ln168_reg_2353),.dout(v187_1_fu_1903_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U79(.din0(mul_ln171_fu_1944_p0),.din1(mul_ln171_fu_1944_p1),.dout(mul_ln171_fu_1944_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U80(.din0(mul_ln186_fu_1953_p0),.din1(mul_ln186_fu_1953_p1),.dout(mul_ln186_fu_1953_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U81(.din0(mul_ln199_fu_1962_p0),.din1(mul_ln199_fu_1962_p1),.dout(mul_ln199_fu_1962_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U82(.din0(mul_ln212_fu_1971_p0),.din1(mul_ln212_fu_1971_p1),.dout(mul_ln212_fu_1971_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U83(.din0(mul_ln225_fu_1980_p0),.din1(mul_ln225_fu_1980_p1),.dout(mul_ln225_fu_1980_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U84(.din0(mul_ln238_fu_1989_p0),.din1(mul_ln238_fu_1989_p1),.dout(mul_ln238_fu_1989_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U85(.din0(mul_ln251_fu_1998_p0),.din1(mul_ln251_fu_1998_p1),.dout(mul_ln251_fu_1998_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U86(.din0(mul_ln264_fu_2007_p0),.din1(mul_ln264_fu_2007_p1),.dout(mul_ln264_fu_2007_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U87(.din0(mul_ln277_fu_2016_p0),.din1(mul_ln277_fu_2016_p1),.dout(mul_ln277_fu_2016_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U88(.din0(v198_1_fu_2038_p2),.din1(v198_1_fu_2038_p4),.din2(v198_1_fu_2038_p6),.din3(v198_1_fu_2038_p8),.def(v198_1_fu_2038_p9),.sel(trunc_ln168_reg_2353),.dout(v198_1_fu_2038_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U89(.din0(v209_1_fu_2077_p2),.din1(v209_1_fu_2077_p4),.din2(v209_1_fu_2077_p6),.din3(v209_1_fu_2077_p8),.def(v209_1_fu_2077_p9),.sel(trunc_ln168_reg_2353),.dout(v209_1_fu_2077_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U90(.din0(mul_ln171_1_fu_2103_p0),.din1(mul_ln171_1_fu_2103_p1),.dout(mul_ln171_1_fu_2103_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U91(.din0(mul_ln186_1_fu_2112_p0),.din1(mul_ln186_1_fu_2112_p1),.dout(mul_ln186_1_fu_2112_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U92(.din0(mul_ln199_1_fu_2121_p0),.din1(mul_ln199_1_fu_2121_p1),.dout(mul_ln199_1_fu_2121_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U93(.din0(mul_ln212_1_fu_2130_p0),.din1(mul_ln212_1_fu_2130_p1),.dout(mul_ln212_1_fu_2130_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U94(.din0(mul_ln225_1_fu_2139_p0),.din1(mul_ln225_1_fu_2139_p1),.dout(mul_ln225_1_fu_2139_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U95(.din0(mul_ln238_1_fu_2148_p0),.din1(mul_ln238_1_fu_2148_p1),.dout(mul_ln238_1_fu_2148_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U96(.din0(mul_ln251_1_fu_2157_p0),.din1(mul_ln251_1_fu_2157_p1),.dout(mul_ln251_1_fu_2157_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U97(.din0(mul_ln264_1_fu_2166_p0),.din1(mul_ln264_1_fu_2166_p1),.dout(mul_ln264_1_fu_2166_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U98(.din0(mul_ln277_1_fu_2175_p0),.din1(mul_ln277_1_fu_2175_p1),.dout(mul_ln277_1_fu_2175_p2));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2181_p0),.din1(grp_fu_2181_p1),.din2(grp_fu_2181_p2),.ce(1'b1),.dout(grp_fu_2181_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2189_p0),.din1(grp_fu_2189_p1),.din2(grp_fu_2189_p2),.ce(1'b1),.dout(grp_fu_2189_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2197_p0),.din1(grp_fu_2197_p1),.din2(grp_fu_2197_p2),.ce(1'b1),.dout(grp_fu_2197_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U102(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2205_p0),.din1(grp_fu_2205_p1),.din2(grp_fu_2205_p2),.ce(1'b1),.dout(grp_fu_2205_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U103(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2213_p0),.din1(grp_fu_2213_p1),.din2(grp_fu_2213_p2),.ce(1'b1),.dout(grp_fu_2213_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2221_p0),.din1(grp_fu_2221_p1),.din2(grp_fu_2221_p2),.ce(1'b1),.dout(grp_fu_2221_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2229_p0),.din1(grp_fu_2229_p1),.din2(grp_fu_2229_p2),.ce(1'b1),.dout(grp_fu_2229_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U106(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2237_p0),.din1(grp_fu_2237_p1),.din2(grp_fu_2237_p2),.ce(1'b1),.dout(grp_fu_2237_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U107(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2245_p0),.din1(grp_fu_2245_p1),.din2(grp_fu_2245_p2),.ce(1'b1),.dout(grp_fu_2245_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U108(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2253_p0),.din1(grp_fu_2253_p1),.din2(grp_fu_2253_p2),.ce(1'b1),.dout(grp_fu_2253_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U109(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2261_p0),.din1(grp_fu_2261_p1),.din2(grp_fu_2261_p2),.ce(1'b1),.dout(grp_fu_2261_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U110(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2269_p0),.din1(grp_fu_2269_p1),.din2(grp_fu_2269_p2),.ce(1'b1),.dout(grp_fu_2269_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U111(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2277_p0),.din1(grp_fu_2277_p1),.din2(grp_fu_2277_p2),.ce(1'b1),.dout(grp_fu_2277_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U112(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2285_p0),.din1(grp_fu_2285_p1),.din2(grp_fu_2285_p2),.ce(1'b1),.dout(grp_fu_2285_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U113(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2293_p0),.din1(grp_fu_2293_p1),.din2(grp_fu_2293_p2),.ce(1'b1),.dout(grp_fu_2293_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U114(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2301_p0),.din1(grp_fu_2301_p1),.din2(grp_fu_2301_p2),.ce(1'b1),.dout(grp_fu_2301_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U115(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2309_p0),.din1(grp_fu_2309_p1),.din2(grp_fu_2309_p2),.ce(1'b1),.dout(grp_fu_2309_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U116(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2317_p0),.din1(grp_fu_2317_p1),.din2(grp_fu_2317_p2),.ce(1'b1),.dout(grp_fu_2317_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_126 <= 8'd0;
    end else if (((icmp_ln169_fu_988_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_126 <= add_ln168_reg_2348;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_928_p2 == 1'd0))) begin
        v115_reg_756 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        v115_reg_756 <= add_ln169_1_reg_2433;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_2348 <= add_ln168_fu_934_p2;
        cmp11_reg_2409 <= cmp11_fu_982_p2;
        mul_ln175_reg_2381 <= mul_ln175_fu_962_p2;
        trunc_ln168_1_reg_2375 <= trunc_ln168_1_fu_944_p1;
        trunc_ln168_reg_2353 <= trunc_ln168_fu_940_p1;
        zext_ln168_reg_2387[5 : 0] <= zext_ln168_fu_978_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_1_reg_2433 <= add_ln169_1_fu_1020_p2;
        tmp_1_reg_2423[7 : 1] <= tmp_1_fu_1008_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln169_reg_2598 <= add_ln169_fu_1206_p2;
        empty_67_reg_2588 <= empty_67_fu_1196_p2;
        v37_reg_2543 <= v37_fu_1159_p11;
        v_reg_2538 <= v_fu_1120_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_101_reg_2738 <= empty_101_fu_1430_p2;
        empty_94_reg_2728 <= empty_94_fu_1420_p2;
        v43_reg_2678 <= v43_fu_1344_p11;
        v45_reg_2683 <= v45_fu_1383_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_108_reg_2798 <= empty_108_fu_1532_p2;
        empty_115_reg_2808 <= empty_115_fu_1542_p2;
        v47_reg_2748 <= v47_fu_1456_p11;
        v49_reg_2753 <= v49_fu_1495_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        empty_122_reg_2868 <= empty_122_fu_1644_p2;
        empty_129_reg_2878 <= empty_129_fu_1654_p2;
        v119_1_reg_2823 <= v119_1_fu_1607_p11;
        v51_reg_2818 <= v51_fu_1568_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_25_reg_2438 <= empty_25_fu_1030_p2;
        empty_32_reg_2448 <= empty_32_fu_1040_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_39_reg_2458 <= empty_39_fu_1050_p2;
        empty_46_reg_2468 <= empty_46_fu_1060_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_53_reg_2518 <= empty_53_fu_1084_p2;
        empty_60_reg_2528 <= empty_60_fu_1094_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_80_reg_2658 <= empty_80_fu_1308_p2;
        empty_87_reg_2668 <= empty_87_fu_1318_p2;
        v39_reg_2608 <= v39_fu_1232_p11;
        v41_reg_2613 <= v41_fu_1271_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_ln171_1_reg_3093 <= mul_ln171_1_fu_2103_p2;
        mul_ln186_1_reg_3098 <= mul_ln186_1_fu_2112_p2;
        mul_ln199_1_reg_3103 <= mul_ln199_1_fu_2121_p2;
        mul_ln212_1_reg_3108 <= mul_ln212_1_fu_2130_p2;
        mul_ln225_1_reg_3113 <= mul_ln225_1_fu_2139_p2;
        mul_ln238_1_reg_3118 <= mul_ln238_1_fu_2148_p2;
        mul_ln251_1_reg_3123 <= mul_ln251_1_fu_2157_p2;
        mul_ln264_1_reg_3128 <= mul_ln264_1_fu_2166_p2;
        mul_ln277_1_reg_3133 <= mul_ln277_1_fu_2175_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_3038 <= mul_ln171_fu_1944_p2;
        mul_ln186_reg_3043 <= mul_ln186_fu_1953_p2;
        mul_ln199_reg_3048 <= mul_ln199_fu_1962_p2;
        mul_ln212_reg_3053 <= mul_ln212_fu_1971_p2;
        mul_ln225_reg_3058 <= mul_ln225_fu_1980_p2;
        mul_ln238_reg_3063 <= mul_ln238_fu_1989_p2;
        mul_ln251_reg_3068 <= mul_ln251_fu_1998_p2;
        mul_ln264_reg_3073 <= mul_ln264_fu_2007_p2;
        mul_ln277_reg_3078 <= mul_ln277_fu_2016_p2;
        v198_1_reg_3083 <= v198_1_fu_2038_p11;
        v209_1_reg_3088 <= v209_1_fu_2077_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_866 <= grp_fu_148_p_dout0;
        reg_872 <= grp_fu_834_p2;
        reg_878 <= grp_fu_838_p2;
        reg_884 <= grp_fu_842_p2;
        reg_890 <= grp_fu_846_p2;
        reg_896 <= grp_fu_850_p2;
        reg_902 <= grp_fu_854_p2;
        reg_908 <= grp_fu_858_p2;
        reg_914 <= grp_fu_862_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v132_1_reg_2888 <= v132_1_fu_1680_p11;
        v143_1_reg_2893 <= v143_1_fu_1719_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        v154_1_reg_2938 <= v154_1_fu_1772_p11;
        v165_1_reg_2943 <= v165_1_fu_1811_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v176_1_reg_2988 <= v176_1_fu_1864_p11;
        v187_1_reg_2993 <= v187_1_fu_1903_p11;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_done == 1'b0)) begin
        ap_ST_fsm_state21_blk = 1'b1;
    end else begin
        ap_ST_fsm_state21_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state2)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_928_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_928_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3138_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3138_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3138_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3138_p_ce;
    end else begin
        grp_fu_3138_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3138_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3138_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3138_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3138_p_din0;
    end else begin
        grp_fu_3138_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3138_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3138_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3138_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3138_p_din1;
    end else begin
        grp_fu_3138_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3142_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3142_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3142_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3142_p_ce;
    end else begin
        grp_fu_3142_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3142_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3142_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3142_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3142_p_din0;
    end else begin
        grp_fu_3142_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_3142_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_grp_fu_3142_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_3142_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_grp_fu_3142_p_din1;
    end else begin
        grp_fu_3142_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_830_ce = 1'b1;
    end else begin
        grp_fu_830_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_830_p0 = v119_1_reg_2823;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_830_p0 = v_reg_2538;
    end else begin
        grp_fu_830_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_834_ce = 1'b1;
    end else begin
        grp_fu_834_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_834_p0 = v132_1_reg_2888;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_834_p0 = v37_reg_2543;
    end else begin
        grp_fu_834_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_838_ce = 1'b1;
    end else begin
        grp_fu_838_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_838_p0 = v143_1_reg_2893;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_838_p0 = v39_reg_2608;
    end else begin
        grp_fu_838_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_842_ce = 1'b1;
    end else begin
        grp_fu_842_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_842_p0 = v154_1_reg_2938;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_842_p0 = v41_reg_2613;
    end else begin
        grp_fu_842_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_846_ce = 1'b1;
    end else begin
        grp_fu_846_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_846_p0 = v165_1_reg_2943;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_846_p0 = v43_reg_2678;
    end else begin
        grp_fu_846_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_850_ce = 1'b1;
    end else begin
        grp_fu_850_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_850_p0 = v176_1_reg_2988;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_850_p0 = v45_reg_2683;
    end else begin
        grp_fu_850_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_854_ce = 1'b1;
    end else begin
        grp_fu_854_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_854_p0 = v187_1_reg_2993;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_854_p0 = v47_reg_2748;
    end else begin
        grp_fu_854_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_858_ce = 1'b1;
    end else begin
        grp_fu_858_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_858_p0 = v198_1_reg_3083;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_858_p0 = v49_reg_2753;
    end else begin
        grp_fu_858_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_862_ce = 1'b1;
    end else begin
        grp_fu_862_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_862_p0 = v209_1_reg_3088;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_862_p0 = v51_reg_2818;
    end else begin
        grp_fu_862_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address0_local = p_cast1537_fu_1933_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address0_local = p_cast1535_fu_1841_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address0_local = p_cast1533_fu_1749_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address0_local = p_cast1531_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast1529_fu_1525_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast1527_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast1525_fu_1301_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast1523_fu_1189_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast_fu_1077_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address1_local = p_cast1536_fu_1926_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address1_local = p_cast1534_fu_1834_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address1_local = p_cast1532_fu_1742_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address1_local = p_cast1530_fu_1630_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast1528_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast1526_fu_1406_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast1524_fu_1294_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast1522_fu_1182_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address1_local = p_cast1521_fu_1070_p1;
    end else begin
        v226_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_0_ce0_local = 1'b1;
    end else begin
        v226_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_0_ce1_local = 1'b1;
    end else begin
        v226_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address0_local = p_cast1537_fu_1933_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address0_local = p_cast1535_fu_1841_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address0_local = p_cast1533_fu_1749_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address0_local = p_cast1531_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address0_local = p_cast1529_fu_1525_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast1527_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast1525_fu_1301_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast1523_fu_1189_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast_fu_1077_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address1_local = p_cast1536_fu_1926_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address1_local = p_cast1534_fu_1834_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address1_local = p_cast1532_fu_1742_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address1_local = p_cast1530_fu_1630_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast1528_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast1526_fu_1406_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast1524_fu_1294_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast1522_fu_1182_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address1_local = p_cast1521_fu_1070_p1;
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_2_address0_local = p_cast1537_fu_1933_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_2_address0_local = p_cast1535_fu_1841_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_2_address0_local = p_cast1533_fu_1749_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_2_address0_local = p_cast1531_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address0_local = p_cast1529_fu_1525_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast1527_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast1525_fu_1301_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast1523_fu_1189_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast_fu_1077_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_2_address1_local = p_cast1536_fu_1926_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_2_address1_local = p_cast1534_fu_1834_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_2_address1_local = p_cast1532_fu_1742_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_2_address1_local = p_cast1530_fu_1630_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast1528_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast1526_fu_1406_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast1524_fu_1294_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast1522_fu_1182_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address1_local = p_cast1521_fu_1070_p1;
    end else begin
        v226_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_2_ce0_local = 1'b1;
    end else begin
        v226_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_2_ce1_local = 1'b1;
    end else begin
        v226_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_3_address0_local = p_cast1537_fu_1933_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_3_address0_local = p_cast1535_fu_1841_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_3_address0_local = p_cast1533_fu_1749_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_3_address0_local = p_cast1531_fu_1637_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address0_local = p_cast1529_fu_1525_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast1527_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast1525_fu_1301_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast1523_fu_1189_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast_fu_1077_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_3_address1_local = p_cast1536_fu_1926_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_3_address1_local = p_cast1534_fu_1834_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_3_address1_local = p_cast1532_fu_1742_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_3_address1_local = p_cast1530_fu_1630_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast1528_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast1526_fu_1406_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast1524_fu_1294_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast1522_fu_1182_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address1_local = p_cast1521_fu_1070_p1;
    end else begin
        v226_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_3_ce0_local = 1'b1;
    end else begin
        v226_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_3_ce1_local = 1'b1;
    end else begin
        v226_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_0_address0;
    end else begin
        v227_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_0_address1;
    end else begin
        v227_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_0_ce0;
    end else begin
        v227_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_0_ce1;
    end else begin
        v227_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_1_address0;
    end else begin
        v227_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_1_address1;
    end else begin
        v227_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_1_ce0;
    end else begin
        v227_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_v227_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_v227_1_ce1;
    end else begin
        v227_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_928_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_928_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_928_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_928_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_988_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_fu_934_p2 = (v114_fu_126 + 8'd1);
assign add_ln169_1_fu_1020_p2 = (v115_reg_756 + 8'd18);
assign add_ln169_fu_1206_p2 = (v115_reg_756 + 8'd9);
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
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_928_p2 == 1'd1));
end
assign cmp11_fu_982_p2 = ((v114_fu_126 == 8'd0) ? 1'b1 : 1'b0);
assign empty_101_fu_1430_p2 = (v115_reg_756 + 8'd13);
assign empty_108_fu_1532_p2 = (v115_reg_756 + 8'd14);
assign empty_115_fu_1542_p2 = (v115_reg_756 + 8'd15);
assign empty_122_fu_1644_p2 = (v115_reg_756 + 8'd16);
assign empty_129_fu_1654_p2 = (v115_reg_756 + 8'd17);
assign empty_25_fu_1030_p2 = (v115_reg_756 + 8'd2);
assign empty_32_fu_1040_p2 = (v115_reg_756 + 8'd3);
assign empty_39_fu_1050_p2 = (v115_reg_756 + 8'd4);
assign empty_46_fu_1060_p2 = (v115_reg_756 + 8'd5);
assign empty_53_fu_1084_p2 = (v115_reg_756 + 8'd6);
assign empty_60_fu_1094_p2 = (v115_reg_756 + 8'd7);
assign empty_67_fu_1196_p2 = (v115_reg_756 + 8'd8);
assign empty_80_fu_1308_p2 = (v115_reg_756 + 8'd10);
assign empty_87_fu_1318_p2 = (v115_reg_756 + 8'd11);
assign empty_94_fu_1420_p2 = (v115_reg_756 + 8'd12);
assign grp_fu_140_p_ce = grp_fu_3138_ce;
assign grp_fu_140_p_din0 = grp_fu_3138_p0;
assign grp_fu_140_p_din1 = grp_fu_3138_p1;
assign grp_fu_140_p_opcode = 2'd0;
assign grp_fu_144_p_ce = grp_fu_3142_ce;
assign grp_fu_144_p_din0 = grp_fu_3142_p0;
assign grp_fu_144_p_din1 = grp_fu_3142_p1;
assign grp_fu_148_p_ce = grp_fu_830_ce;
assign grp_fu_148_p_din0 = grp_fu_830_p0;
assign grp_fu_148_p_din1 = v113;
assign grp_fu_2181_p0 = grp_fu_2181_p00;
assign grp_fu_2181_p00 = v115_reg_756;
assign grp_fu_2181_p1 = 14'd53;
assign grp_fu_2181_p2 = zext_ln168_reg_2387;
assign grp_fu_2189_p0 = grp_fu_2189_p00;
assign grp_fu_2189_p00 = tmp_1_fu_1008_p3;
assign grp_fu_2189_p1 = 14'd53;
assign grp_fu_2189_p2 = zext_ln168_reg_2387;
assign grp_fu_2197_p0 = grp_fu_2197_p00;
assign grp_fu_2197_p00 = empty_25_fu_1030_p2;
assign grp_fu_2197_p1 = 14'd53;
assign grp_fu_2197_p2 = zext_ln168_reg_2387;
assign grp_fu_2205_p0 = grp_fu_2205_p00;
assign grp_fu_2205_p00 = empty_32_fu_1040_p2;
assign grp_fu_2205_p1 = 14'd53;
assign grp_fu_2205_p2 = zext_ln168_reg_2387;
assign grp_fu_2213_p0 = grp_fu_2213_p00;
assign grp_fu_2213_p00 = empty_39_fu_1050_p2;
assign grp_fu_2213_p1 = 14'd53;
assign grp_fu_2213_p2 = zext_ln168_reg_2387;
assign grp_fu_2221_p0 = grp_fu_2221_p00;
assign grp_fu_2221_p00 = empty_46_fu_1060_p2;
assign grp_fu_2221_p1 = 14'd53;
assign grp_fu_2221_p2 = zext_ln168_reg_2387;
assign grp_fu_2229_p0 = grp_fu_2229_p00;
assign grp_fu_2229_p00 = empty_53_fu_1084_p2;
assign grp_fu_2229_p1 = 14'd53;
assign grp_fu_2229_p2 = zext_ln168_reg_2387;
assign grp_fu_2237_p0 = grp_fu_2237_p00;
assign grp_fu_2237_p00 = empty_60_fu_1094_p2;
assign grp_fu_2237_p1 = 14'd53;
assign grp_fu_2237_p2 = zext_ln168_reg_2387;
assign grp_fu_2245_p0 = grp_fu_2245_p00;
assign grp_fu_2245_p00 = empty_67_fu_1196_p2;
assign grp_fu_2245_p1 = 14'd53;
assign grp_fu_2245_p2 = zext_ln168_reg_2387;
assign grp_fu_2253_p0 = grp_fu_2253_p00;
assign grp_fu_2253_p00 = add_ln169_fu_1206_p2;
assign grp_fu_2253_p1 = 14'd53;
assign grp_fu_2253_p2 = zext_ln168_reg_2387;
assign grp_fu_2261_p0 = grp_fu_2261_p00;
assign grp_fu_2261_p00 = empty_80_fu_1308_p2;
assign grp_fu_2261_p1 = 14'd53;
assign grp_fu_2261_p2 = zext_ln168_reg_2387;
assign grp_fu_2269_p0 = grp_fu_2269_p00;
assign grp_fu_2269_p00 = empty_87_fu_1318_p2;
assign grp_fu_2269_p1 = 14'd53;
assign grp_fu_2269_p2 = zext_ln168_reg_2387;
assign grp_fu_2277_p0 = grp_fu_2277_p00;
assign grp_fu_2277_p00 = empty_94_fu_1420_p2;
assign grp_fu_2277_p1 = 14'd53;
assign grp_fu_2277_p2 = zext_ln168_reg_2387;
assign grp_fu_2285_p0 = grp_fu_2285_p00;
assign grp_fu_2285_p00 = empty_101_fu_1430_p2;
assign grp_fu_2285_p1 = 14'd53;
assign grp_fu_2285_p2 = zext_ln168_reg_2387;
assign grp_fu_2293_p0 = grp_fu_2293_p00;
assign grp_fu_2293_p00 = empty_108_fu_1532_p2;
assign grp_fu_2293_p1 = 14'd53;
assign grp_fu_2293_p2 = zext_ln168_reg_2387;
assign grp_fu_2301_p0 = grp_fu_2301_p00;
assign grp_fu_2301_p00 = empty_115_fu_1542_p2;
assign grp_fu_2301_p1 = 14'd53;
assign grp_fu_2301_p2 = zext_ln168_reg_2387;
assign grp_fu_2309_p0 = grp_fu_2309_p00;
assign grp_fu_2309_p00 = empty_122_fu_1644_p2;
assign grp_fu_2309_p1 = 14'd53;
assign grp_fu_2309_p2 = zext_ln168_reg_2387;
assign grp_fu_2317_p0 = grp_fu_2317_p00;
assign grp_fu_2317_p00 = empty_129_fu_1654_p2;
assign grp_fu_2317_p1 = 14'd53;
assign grp_fu_2317_p2 = zext_ln168_reg_2387;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_799_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_768_ap_start_reg;
assign icmp_ln168_fu_928_p2 = ((v114_fu_126 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_988_p2 = ((v115_reg_756 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln168_1_fu_968_p4 = {{v114_fu_126[7:2]}};
assign lshr_ln_fu_948_p4 = {{v114_fu_126[7:1]}};
assign mul_ln171_1_fu_2103_p0 = mul_ln171_1_fu_2103_p00;
assign mul_ln171_1_fu_2103_p00 = add_ln169_reg_2598;
assign mul_ln171_1_fu_2103_p1 = 16'd190;
assign mul_ln171_fu_1944_p0 = mul_ln171_fu_1944_p00;
assign mul_ln171_fu_1944_p00 = v115_reg_756;
assign mul_ln171_fu_1944_p1 = 16'd190;
assign mul_ln175_fu_962_p0 = mul_ln175_fu_962_p00;
assign mul_ln175_fu_962_p00 = lshr_ln_fu_948_p4;
assign mul_ln175_fu_962_p1 = 15'd190;
assign mul_ln186_1_fu_2112_p0 = mul_ln186_1_fu_2112_p00;
assign mul_ln186_1_fu_2112_p00 = empty_80_reg_2658;
assign mul_ln186_1_fu_2112_p1 = 16'd190;
assign mul_ln186_fu_1953_p0 = mul_ln186_fu_1953_p00;
assign mul_ln186_fu_1953_p00 = tmp_1_reg_2423;
assign mul_ln186_fu_1953_p1 = 16'd190;
assign mul_ln199_1_fu_2121_p0 = mul_ln199_1_fu_2121_p00;
assign mul_ln199_1_fu_2121_p00 = empty_87_reg_2668;
assign mul_ln199_1_fu_2121_p1 = 16'd190;
assign mul_ln199_fu_1962_p0 = mul_ln199_fu_1962_p00;
assign mul_ln199_fu_1962_p00 = empty_25_reg_2438;
assign mul_ln199_fu_1962_p1 = 16'd190;
assign mul_ln212_1_fu_2130_p0 = mul_ln212_1_fu_2130_p00;
assign mul_ln212_1_fu_2130_p00 = empty_94_reg_2728;
assign mul_ln212_1_fu_2130_p1 = 16'd190;
assign mul_ln212_fu_1971_p0 = mul_ln212_fu_1971_p00;
assign mul_ln212_fu_1971_p00 = empty_32_reg_2448;
assign mul_ln212_fu_1971_p1 = 16'd190;
assign mul_ln225_1_fu_2139_p0 = mul_ln225_1_fu_2139_p00;
assign mul_ln225_1_fu_2139_p00 = empty_101_reg_2738;
assign mul_ln225_1_fu_2139_p1 = 16'd190;
assign mul_ln225_fu_1980_p0 = mul_ln225_fu_1980_p00;
assign mul_ln225_fu_1980_p00 = empty_39_reg_2458;
assign mul_ln225_fu_1980_p1 = 16'd190;
assign mul_ln238_1_fu_2148_p0 = mul_ln238_1_fu_2148_p00;
assign mul_ln238_1_fu_2148_p00 = empty_108_reg_2798;
assign mul_ln238_1_fu_2148_p1 = 16'd190;
assign mul_ln238_fu_1989_p0 = mul_ln238_fu_1989_p00;
assign mul_ln238_fu_1989_p00 = empty_46_reg_2468;
assign mul_ln238_fu_1989_p1 = 16'd190;
assign mul_ln251_1_fu_2157_p0 = mul_ln251_1_fu_2157_p00;
assign mul_ln251_1_fu_2157_p00 = empty_115_reg_2808;
assign mul_ln251_1_fu_2157_p1 = 16'd190;
assign mul_ln251_fu_1998_p0 = mul_ln251_fu_1998_p00;
assign mul_ln251_fu_1998_p00 = empty_53_reg_2518;
assign mul_ln251_fu_1998_p1 = 16'd190;
assign mul_ln264_1_fu_2166_p0 = mul_ln264_1_fu_2166_p00;
assign mul_ln264_1_fu_2166_p00 = empty_122_reg_2868;
assign mul_ln264_1_fu_2166_p1 = 16'd190;
assign mul_ln264_fu_2007_p0 = mul_ln264_fu_2007_p00;
assign mul_ln264_fu_2007_p00 = empty_60_reg_2528;
assign mul_ln264_fu_2007_p1 = 16'd190;
assign mul_ln277_1_fu_2175_p0 = mul_ln277_1_fu_2175_p00;
assign mul_ln277_1_fu_2175_p00 = empty_129_reg_2878;
assign mul_ln277_1_fu_2175_p1 = 16'd190;
assign mul_ln277_fu_2016_p0 = mul_ln277_fu_2016_p00;
assign mul_ln277_fu_2016_p00 = empty_67_reg_2588;
assign mul_ln277_fu_2016_p1 = 16'd190;
assign p_cast1521_fu_1070_p1 = grp_fu_2181_p3;
assign p_cast1522_fu_1182_p1 = grp_fu_2197_p3;
assign p_cast1523_fu_1189_p1 = grp_fu_2205_p3;
assign p_cast1524_fu_1294_p1 = grp_fu_2213_p3;
assign p_cast1525_fu_1301_p1 = grp_fu_2221_p3;
assign p_cast1526_fu_1406_p1 = grp_fu_2229_p3;
assign p_cast1527_fu_1413_p1 = grp_fu_2237_p3;
assign p_cast1528_fu_1518_p1 = grp_fu_2245_p3;
assign p_cast1529_fu_1525_p1 = grp_fu_2253_p3;
assign p_cast1530_fu_1630_p1 = grp_fu_2261_p3;
assign p_cast1531_fu_1637_p1 = grp_fu_2269_p3;
assign p_cast1532_fu_1742_p1 = grp_fu_2277_p3;
assign p_cast1533_fu_1749_p1 = grp_fu_2285_p3;
assign p_cast1534_fu_1834_p1 = grp_fu_2293_p3;
assign p_cast1535_fu_1841_p1 = grp_fu_2301_p3;
assign p_cast1536_fu_1926_p1 = grp_fu_2309_p3;
assign p_cast1537_fu_1933_p1 = grp_fu_2317_p3;
assign p_cast_fu_1077_p1 = grp_fu_2189_p3;
assign tmp_1_fu_1008_p3 = {{tmp_fu_998_p4}, {1'd1}};
assign tmp_fu_998_p4 = {{v115_reg_756[7:1]}};
assign trunc_ln168_1_fu_944_p1 = v114_fu_126[0:0];
assign trunc_ln168_fu_940_p1 = v114_fu_126[1:0];
assign v119_1_fu_1607_p2 = v226_0_q0;
assign v119_1_fu_1607_p4 = v226_1_q0;
assign v119_1_fu_1607_p6 = v226_2_q0;
assign v119_1_fu_1607_p8 = v226_3_q0;
assign v119_1_fu_1607_p9 = 'bx;
assign v132_1_fu_1680_p2 = v226_0_q1;
assign v132_1_fu_1680_p4 = v226_1_q1;
assign v132_1_fu_1680_p6 = v226_2_q1;
assign v132_1_fu_1680_p8 = v226_3_q1;
assign v132_1_fu_1680_p9 = 'bx;
assign v143_1_fu_1719_p2 = v226_0_q0;
assign v143_1_fu_1719_p4 = v226_1_q0;
assign v143_1_fu_1719_p6 = v226_2_q0;
assign v143_1_fu_1719_p8 = v226_3_q0;
assign v143_1_fu_1719_p9 = 'bx;
assign v154_1_fu_1772_p2 = v226_0_q1;
assign v154_1_fu_1772_p4 = v226_1_q1;
assign v154_1_fu_1772_p6 = v226_2_q1;
assign v154_1_fu_1772_p8 = v226_3_q1;
assign v154_1_fu_1772_p9 = 'bx;
assign v165_1_fu_1811_p2 = v226_0_q0;
assign v165_1_fu_1811_p4 = v226_1_q0;
assign v165_1_fu_1811_p6 = v226_2_q0;
assign v165_1_fu_1811_p8 = v226_3_q0;
assign v165_1_fu_1811_p9 = 'bx;
assign v176_1_fu_1864_p2 = v226_0_q1;
assign v176_1_fu_1864_p4 = v226_1_q1;
assign v176_1_fu_1864_p6 = v226_2_q1;
assign v176_1_fu_1864_p8 = v226_3_q1;
assign v176_1_fu_1864_p9 = 'bx;
assign v187_1_fu_1903_p2 = v226_0_q0;
assign v187_1_fu_1903_p4 = v226_1_q0;
assign v187_1_fu_1903_p6 = v226_2_q0;
assign v187_1_fu_1903_p8 = v226_3_q0;
assign v187_1_fu_1903_p9 = 'bx;
assign v198_1_fu_2038_p2 = v226_0_q1;
assign v198_1_fu_2038_p4 = v226_1_q1;
assign v198_1_fu_2038_p6 = v226_2_q1;
assign v198_1_fu_2038_p8 = v226_3_q1;
assign v198_1_fu_2038_p9 = 'bx;
assign v209_1_fu_2077_p2 = v226_0_q0;
assign v209_1_fu_2077_p4 = v226_1_q0;
assign v209_1_fu_2077_p6 = v226_2_q0;
assign v209_1_fu_2077_p8 = v226_3_q0;
assign v209_1_fu_2077_p9 = 'bx;
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
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v37_fu_1159_p2 = v226_0_q0;
assign v37_fu_1159_p4 = v226_1_q0;
assign v37_fu_1159_p6 = v226_2_q0;
assign v37_fu_1159_p8 = v226_3_q0;
assign v37_fu_1159_p9 = 'bx;
assign v39_fu_1232_p2 = v226_0_q1;
assign v39_fu_1232_p4 = v226_1_q1;
assign v39_fu_1232_p6 = v226_2_q1;
assign v39_fu_1232_p8 = v226_3_q1;
assign v39_fu_1232_p9 = 'bx;
assign v41_fu_1271_p2 = v226_0_q0;
assign v41_fu_1271_p4 = v226_1_q0;
assign v41_fu_1271_p6 = v226_2_q0;
assign v41_fu_1271_p8 = v226_3_q0;
assign v41_fu_1271_p9 = 'bx;
assign v43_fu_1344_p2 = v226_0_q1;
assign v43_fu_1344_p4 = v226_1_q1;
assign v43_fu_1344_p6 = v226_2_q1;
assign v43_fu_1344_p8 = v226_3_q1;
assign v43_fu_1344_p9 = 'bx;
assign v45_fu_1383_p2 = v226_0_q0;
assign v45_fu_1383_p4 = v226_1_q0;
assign v45_fu_1383_p6 = v226_2_q0;
assign v45_fu_1383_p8 = v226_3_q0;
assign v45_fu_1383_p9 = 'bx;
assign v47_fu_1456_p2 = v226_0_q1;
assign v47_fu_1456_p4 = v226_1_q1;
assign v47_fu_1456_p6 = v226_2_q1;
assign v47_fu_1456_p8 = v226_3_q1;
assign v47_fu_1456_p9 = 'bx;
assign v49_fu_1495_p2 = v226_0_q0;
assign v49_fu_1495_p4 = v226_1_q0;
assign v49_fu_1495_p6 = v226_2_q0;
assign v49_fu_1495_p8 = v226_3_q0;
assign v49_fu_1495_p9 = 'bx;
assign v51_fu_1568_p2 = v226_0_q1;
assign v51_fu_1568_p4 = v226_1_q1;
assign v51_fu_1568_p6 = v226_2_q1;
assign v51_fu_1568_p8 = v226_3_q1;
assign v51_fu_1568_p9 = 'bx;
assign v_fu_1120_p2 = v226_0_q1;
assign v_fu_1120_p4 = v226_1_q1;
assign v_fu_1120_p6 = v226_2_q1;
assign v_fu_1120_p8 = v226_3_q1;
assign v_fu_1120_p9 = 'bx;
assign zext_ln168_fu_978_p1 = lshr_ln168_1_fu_968_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_2387[13:6] <= 8'b00000000;
    tmp_1_reg_2423[0] <= 1'b1;
end
endmodule 