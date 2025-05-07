module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v113,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_opcode,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_opcode,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_opcode,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce); 
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
output  [13:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [13:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
output  [13:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [13:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [13:0] v225_2_address0;
output   v225_2_ce0;
output   v225_2_we0;
output  [31:0] v225_2_d0;
input  [31:0] v225_2_q0;
output  [13:0] v225_2_address1;
output   v225_2_ce1;
output   v225_2_we1;
output  [31:0] v225_2_d1;
input  [31:0] v225_2_q1;
output  [13:0] v225_3_address0;
output   v225_3_ce0;
output   v225_3_we0;
output  [31:0] v225_3_d0;
input  [31:0] v225_3_q0;
output  [13:0] v225_3_address1;
output   v225_3_ce1;
output   v225_3_we1;
output  [31:0] v225_3_d1;
input  [31:0] v225_3_q1;
input  [31:0] v113;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
output  [1:0] grp_fu_160_p_opcode;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
output  [1:0] grp_fu_164_p_opcode;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
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
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
reg[13:0] v225_0_address0;
reg v225_0_ce0;
reg v225_0_we0;
reg[31:0] v225_0_d0;
reg[13:0] v225_0_address1;
reg v225_0_ce1;
reg v225_0_we1;
reg[31:0] v225_0_d1;
reg[13:0] v225_1_address0;
reg v225_1_ce0;
reg v225_1_we0;
reg[31:0] v225_1_d0;
reg[13:0] v225_1_address1;
reg v225_1_ce1;
reg v225_1_we1;
reg[31:0] v225_1_d1;
reg[13:0] v225_2_address0;
reg v225_2_ce0;
reg v225_2_we0;
reg[31:0] v225_2_d0;
reg[13:0] v225_2_address1;
reg v225_2_ce1;
reg v225_2_we1;
reg[31:0] v225_2_d1;
reg[13:0] v225_3_address0;
reg v225_3_ce0;
reg v225_3_we0;
reg[31:0] v225_3_d0;
reg[13:0] v225_3_address1;
reg v225_3_ce1;
reg v225_3_we1;
reg[31:0] v225_3_d1;
(* fsm_encoding = "none" *) reg   [29:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_1098_p2;
wire   [31:0] grp_fu_950_p3;
reg   [31:0] reg_964;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state21;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done;
wire   [31:0] grp_fu_957_p3;
reg   [31:0] reg_968;
reg   [31:0] reg_972;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_976;
reg   [31:0] reg_980;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_984;
reg   [31:0] reg_988;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_992;
reg   [31:0] reg_996;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state20;
reg   [31:0] reg_1000;
reg   [31:0] reg_1004;
wire    ap_CS_fsm_state28;
reg   [31:0] reg_1012;
reg   [31:0] reg_1020;
wire   [31:0] grp_fu_926_p2;
reg   [31:0] reg_1028;
wire   [31:0] grp_fu_930_p2;
reg   [31:0] reg_1036;
wire   [31:0] grp_fu_934_p2;
reg   [31:0] reg_1044;
wire   [31:0] grp_fu_938_p2;
reg   [31:0] reg_1052;
wire   [31:0] grp_fu_942_p2;
reg   [31:0] reg_1060;
wire   [31:0] grp_fu_946_p2;
reg   [31:0] reg_1068;
reg   [15:0] phi_mul_load_reg_2082;
wire   [15:0] add_ln168_1_fu_1092_p2;
reg   [15:0] add_ln168_1_reg_2090;
wire   [7:0] add_ln168_fu_1104_p2;
reg   [7:0] add_ln168_reg_2098;
wire   [0:0] trunc_ln168_fu_1110_p1;
reg   [0:0] trunc_ln168_reg_2103;
wire   [14:0] zext_ln168_fu_1124_p1;
reg   [14:0] zext_ln168_reg_2109;
wire   [0:0] cmp11_fu_1128_p2;
reg   [0:0] cmp11_reg_2149;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_3_fu_1166_p2;
reg   [7:0] add_ln169_3_reg_2170;
wire   [5:0] lshr_ln1_fu_1180_p4;
reg   [5:0] lshr_ln1_reg_2175;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire   [31:0] v119_fu_1274_p1;
wire   [31:0] v132_fu_1279_p1;
wire   [31:0] v143_fu_1284_p1;
wire   [31:0] v154_fu_1289_p1;
wire   [31:0] v165_fu_1294_p1;
wire   [31:0] v176_fu_1299_p1;
wire   [31:0] v187_fu_1304_p1;
wire   [31:0] v198_fu_1309_p1;
wire   [31:0] v209_fu_1314_p1;
wire   [13:0] mul_ln171_fu_1352_p2;
reg   [13:0] mul_ln171_reg_2423;
wire   [13:0] mul_ln225_fu_1367_p2;
reg   [13:0] mul_ln225_reg_2428;
wire   [13:0] mul_ln277_fu_1382_p2;
reg   [13:0] mul_ln277_reg_2433;
wire   [31:0] v119_1_fu_1398_p1;
wire   [31:0] v132_1_fu_1403_p1;
wire   [31:0] v143_1_fu_1408_p1;
wire   [31:0] v154_1_fu_1413_p1;
wire   [31:0] v165_1_fu_1418_p1;
wire   [31:0] v176_1_fu_1423_p1;
wire   [31:0] v187_1_fu_1428_p1;
wire   [31:0] v198_1_fu_1433_p1;
wire   [31:0] v209_1_fu_1438_p1;
wire   [13:0] mul_ln212_fu_1482_p2;
reg   [13:0] mul_ln212_reg_2564;
wire   [13:0] mul_ln264_fu_1497_p2;
reg   [13:0] mul_ln264_reg_2569;
wire   [31:0] v119_2_fu_1523_p1;
wire   [31:0] v132_2_fu_1528_p1;
wire   [31:0] v143_2_fu_1533_p1;
wire   [31:0] v154_2_fu_1538_p1;
wire   [31:0] v165_2_fu_1543_p1;
wire   [31:0] v176_2_fu_1548_p1;
wire   [31:0] v187_2_fu_1553_p1;
wire   [31:0] v198_2_fu_1558_p1;
wire   [31:0] v209_2_fu_1563_p1;
wire   [13:0] mul_ln199_fu_1607_p2;
reg   [13:0] mul_ln199_reg_2720;
wire   [13:0] mul_ln251_fu_1622_p2;
reg   [13:0] mul_ln251_reg_2725;
wire   [31:0] v119_3_fu_1628_p1;
wire    ap_CS_fsm_state25;
wire   [31:0] v132_3_fu_1633_p1;
wire   [31:0] v143_3_fu_1638_p1;
wire   [31:0] v154_3_fu_1643_p1;
wire   [31:0] v165_3_fu_1648_p1;
wire   [31:0] v176_3_fu_1653_p1;
wire   [31:0] v187_3_fu_1658_p1;
wire   [31:0] v198_3_fu_1663_p1;
wire   [31:0] v209_3_fu_1668_p1;
wire   [13:0] mul_ln186_fu_1682_p2;
reg   [13:0] mul_ln186_reg_2776;
wire   [13:0] mul_ln238_fu_1697_p2;
reg   [13:0] mul_ln238_reg_2781;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2786_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2786_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2786_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2786_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2790_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2790_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2790_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2790_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2794_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2794_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2794_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2794_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2798_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2798_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2798_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2802_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2802_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2802_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2806_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2806_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2806_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2786_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2786_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2786_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2786_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2790_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2790_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2790_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2790_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2794_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2794_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2794_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2794_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2798_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2798_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2798_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2802_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2802_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2802_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2806_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2806_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2806_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2786_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2786_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2786_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2786_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2790_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2790_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2790_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2790_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2794_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2794_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2794_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2794_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2798_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2798_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2798_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2802_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2802_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2802_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2806_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2806_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2806_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2786_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2786_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2786_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2786_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2790_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2790_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2790_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2790_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2794_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2794_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2794_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2794_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2798_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2798_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2798_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2802_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2802_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2802_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2806_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2806_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2806_p_ce;
reg   [7:0] v115_reg_790;
wire    ap_CS_fsm_state30;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_start_reg;
wire    ap_CS_fsm_state26;
reg    grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_start_reg;
wire    ap_CS_fsm_state29;
wire   [63:0] p_cast4336_fu_1214_p1;
wire   [63:0] p_cast_fu_1219_p1;
wire   [63:0] p_cast4337_fu_1224_p1;
wire   [63:0] p_cast4338_fu_1229_p1;
wire   [63:0] p_cast4339_fu_1234_p1;
wire   [63:0] p_cast4340_fu_1239_p1;
wire   [63:0] p_cast4341_fu_1244_p1;
wire   [63:0] p_cast4342_fu_1249_p1;
wire   [63:0] p_cast4343_fu_1254_p1;
wire   [63:0] p_cast4344_fu_1259_p1;
wire   [63:0] p_cast4345_fu_1264_p1;
wire   [63:0] p_cast4346_fu_1269_p1;
wire   [63:0] p_cast4347_fu_1319_p1;
wire   [63:0] p_cast4348_fu_1324_p1;
wire   [63:0] p_cast4349_fu_1329_p1;
wire   [63:0] p_cast4350_fu_1334_p1;
wire   [63:0] p_cast4351_fu_1339_p1;
wire   [63:0] p_cast4352_fu_1344_p1;
wire   [63:0] p_cast4353_fu_1388_p1;
wire   [63:0] p_cast4354_fu_1393_p1;
wire   [63:0] p_cast4355_fu_1443_p1;
wire   [63:0] p_cast4356_fu_1448_p1;
wire   [63:0] p_cast4357_fu_1453_p1;
wire   [63:0] p_cast4358_fu_1458_p1;
wire   [63:0] p_cast4359_fu_1463_p1;
wire   [63:0] p_cast4360_fu_1468_p1;
wire   [63:0] p_cast4361_fu_1503_p1;
wire   [63:0] p_cast4362_fu_1508_p1;
wire   [63:0] p_cast4363_fu_1513_p1;
wire   [63:0] p_cast4364_fu_1518_p1;
wire   [63:0] p_cast4365_fu_1568_p1;
wire   [63:0] p_cast4366_fu_1573_p1;
wire   [63:0] p_cast4367_fu_1578_p1;
wire   [63:0] p_cast4368_fu_1583_p1;
wire   [63:0] p_cast4369_fu_1588_p1;
wire   [63:0] p_cast4370_fu_1593_p1;
reg   [15:0] phi_mul_fu_174;
wire   [0:0] icmp_ln169_fu_1134_p2;
reg   [7:0] v114_fu_178;
reg    v236_write_local;
reg    v226_0_ce1_local;
reg   [14:0] v226_0_address1_local;
reg    v226_0_ce0_local;
reg   [14:0] v226_0_address0_local;
reg    v226_1_ce1_local;
reg   [14:0] v226_1_address1_local;
reg    v226_1_ce0_local;
reg   [14:0] v226_1_address0_local;
reg   [31:0] grp_fu_914_p0;
reg   [31:0] grp_fu_918_p0;
reg   [31:0] grp_fu_922_p0;
reg   [31:0] grp_fu_926_p0;
reg   [31:0] grp_fu_930_p0;
reg   [31:0] grp_fu_934_p0;
reg   [31:0] grp_fu_938_p0;
reg   [31:0] grp_fu_942_p0;
reg   [31:0] grp_fu_946_p0;
wire   [6:0] lshr_ln_fu_1114_p4;
wire   [6:0] tmp_fu_1144_p4;
wire   [7:0] tmp_1_fu_1154_p3;
wire   [7:0] tmp_4_fu_1190_p3;
wire   [7:0] tmp_6_fu_1202_p3;
wire   [14:0] grp_fu_1703_p3;
wire   [14:0] grp_fu_1711_p3;
wire   [14:0] grp_fu_1719_p3;
wire   [14:0] grp_fu_1727_p3;
wire   [14:0] grp_fu_1735_p4;
wire   [14:0] grp_fu_1745_p4;
wire   [14:0] grp_fu_1755_p4;
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
wire   [14:0] grp_fu_1865_p4;
wire   [5:0] mul_ln171_fu_1352_p0;
wire   [8:0] mul_ln171_fu_1352_p1;
wire   [5:0] empty_26_fu_1358_p2;
wire   [5:0] mul_ln225_fu_1367_p0;
wire   [8:0] mul_ln225_fu_1367_p1;
wire   [5:0] empty_39_fu_1373_p2;
wire   [5:0] mul_ln277_fu_1382_p0;
wire   [8:0] mul_ln277_fu_1382_p1;
wire   [14:0] grp_fu_1875_p4;
wire   [14:0] grp_fu_1885_p4;
wire   [14:0] grp_fu_1895_p4;
wire   [14:0] grp_fu_1905_p4;
wire   [14:0] grp_fu_1915_p4;
wire   [14:0] grp_fu_1925_p4;
wire   [14:0] grp_fu_1935_p4;
wire   [14:0] grp_fu_1945_p4;
wire   [5:0] empty_51_fu_1473_p2;
wire   [5:0] mul_ln212_fu_1482_p0;
wire   [8:0] mul_ln212_fu_1482_p1;
wire   [5:0] empty_64_fu_1488_p2;
wire   [5:0] mul_ln264_fu_1497_p0;
wire   [8:0] mul_ln264_fu_1497_p1;
wire   [14:0] grp_fu_1955_p4;
wire   [14:0] grp_fu_1965_p4;
wire   [14:0] grp_fu_1975_p4;
wire   [14:0] grp_fu_1985_p4;
wire   [14:0] grp_fu_1995_p4;
wire   [14:0] grp_fu_2005_p4;
wire   [14:0] grp_fu_2015_p4;
wire   [14:0] grp_fu_2025_p4;
wire   [14:0] grp_fu_2035_p4;
wire   [14:0] grp_fu_2045_p4;
wire   [5:0] empty_76_fu_1598_p2;
wire   [5:0] mul_ln199_fu_1607_p0;
wire   [8:0] mul_ln199_fu_1607_p1;
wire   [5:0] empty_89_fu_1613_p2;
wire   [5:0] mul_ln251_fu_1622_p0;
wire   [8:0] mul_ln251_fu_1622_p1;
wire   [5:0] empty_101_fu_1673_p2;
wire   [5:0] mul_ln186_fu_1682_p0;
wire   [8:0] mul_ln186_fu_1682_p1;
wire   [5:0] empty_114_fu_1688_p2;
wire   [5:0] mul_ln238_fu_1697_p0;
wire   [8:0] mul_ln238_fu_1697_p1;
wire   [7:0] grp_fu_1703_p0;
wire   [6:0] grp_fu_1703_p1;
wire   [6:0] grp_fu_1703_p2;
wire    ap_CS_fsm_state5;
wire   [7:0] grp_fu_1711_p0;
wire   [6:0] grp_fu_1711_p1;
wire   [6:0] grp_fu_1711_p2;
wire   [7:0] grp_fu_1719_p0;
wire   [6:0] grp_fu_1719_p1;
wire   [6:0] grp_fu_1719_p2;
wire   [7:0] grp_fu_1727_p0;
wire   [6:0] grp_fu_1727_p1;
wire   [6:0] grp_fu_1727_p2;
wire   [2:0] grp_fu_1735_p1;
wire   [6:0] grp_fu_1735_p2;
wire   [6:0] grp_fu_1735_p3;
wire   [2:0] grp_fu_1745_p1;
wire   [6:0] grp_fu_1745_p2;
wire   [6:0] grp_fu_1745_p3;
wire   [2:0] grp_fu_1755_p1;
wire   [6:0] grp_fu_1755_p2;
wire   [6:0] grp_fu_1755_p3;
wire   [2:0] grp_fu_1765_p1;
wire   [6:0] grp_fu_1765_p2;
wire   [6:0] grp_fu_1765_p3;
wire   [3:0] grp_fu_1775_p1;
wire   [6:0] grp_fu_1775_p2;
wire   [6:0] grp_fu_1775_p3;
wire   [3:0] grp_fu_1785_p1;
wire   [6:0] grp_fu_1785_p2;
wire   [6:0] grp_fu_1785_p3;
wire   [3:0] grp_fu_1795_p1;
wire   [6:0] grp_fu_1795_p2;
wire   [6:0] grp_fu_1795_p3;
wire   [3:0] grp_fu_1805_p1;
wire   [6:0] grp_fu_1805_p2;
wire   [6:0] grp_fu_1805_p3;
wire   [3:0] grp_fu_1815_p1;
wire   [6:0] grp_fu_1815_p2;
wire   [6:0] grp_fu_1815_p3;
wire   [3:0] grp_fu_1825_p1;
wire   [6:0] grp_fu_1825_p2;
wire   [6:0] grp_fu_1825_p3;
wire   [3:0] grp_fu_1835_p1;
wire   [6:0] grp_fu_1835_p2;
wire   [6:0] grp_fu_1835_p3;
wire   [3:0] grp_fu_1845_p1;
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
wire   [4:0] grp_fu_1905_p1;
wire   [6:0] grp_fu_1905_p2;
wire   [6:0] grp_fu_1905_p3;
wire   [4:0] grp_fu_1915_p1;
wire   [6:0] grp_fu_1915_p2;
wire   [6:0] grp_fu_1915_p3;
wire   [4:0] grp_fu_1925_p1;
wire   [6:0] grp_fu_1925_p2;
wire   [6:0] grp_fu_1925_p3;
wire   [4:0] grp_fu_1935_p1;
wire   [6:0] grp_fu_1935_p2;
wire   [6:0] grp_fu_1935_p3;
wire   [4:0] grp_fu_1945_p1;
wire   [6:0] grp_fu_1945_p2;
wire   [6:0] grp_fu_1945_p3;
wire   [4:0] grp_fu_1955_p1;
wire   [6:0] grp_fu_1955_p2;
wire   [6:0] grp_fu_1955_p3;
wire   [4:0] grp_fu_1965_p1;
wire   [6:0] grp_fu_1965_p2;
wire   [6:0] grp_fu_1965_p3;
wire   [4:0] grp_fu_1975_p1;
wire   [6:0] grp_fu_1975_p2;
wire   [6:0] grp_fu_1975_p3;
wire   [4:0] grp_fu_1985_p1;
wire   [6:0] grp_fu_1985_p2;
wire   [6:0] grp_fu_1985_p3;
wire   [4:0] grp_fu_1995_p1;
wire   [6:0] grp_fu_1995_p2;
wire   [6:0] grp_fu_1995_p3;
wire   [4:0] grp_fu_2005_p1;
wire   [6:0] grp_fu_2005_p2;
wire   [6:0] grp_fu_2005_p3;
wire   [5:0] grp_fu_2015_p1;
wire   [6:0] grp_fu_2015_p2;
wire   [6:0] grp_fu_2015_p3;
wire   [5:0] grp_fu_2025_p1;
wire   [6:0] grp_fu_2025_p2;
wire   [6:0] grp_fu_2025_p3;
wire   [5:0] grp_fu_2035_p1;
wire   [6:0] grp_fu_2035_p2;
wire   [6:0] grp_fu_2035_p3;
wire   [5:0] grp_fu_2045_p1;
wire   [6:0] grp_fu_2045_p2;
wire   [6:0] grp_fu_2045_p3;
reg    grp_fu_914_ce;
wire    ap_CS_fsm_state27;
reg    grp_fu_918_ce;
reg    grp_fu_922_ce;
reg    grp_fu_926_ce;
reg    grp_fu_930_ce;
reg    grp_fu_934_ce;
reg    grp_fu_938_ce;
reg    grp_fu_942_ce;
reg    grp_fu_946_ce;
reg    grp_fu_1915_ce;
reg    grp_fu_1925_ce;
reg    grp_fu_1935_ce;
reg    grp_fu_1945_ce;
reg    grp_fu_1955_ce;
reg    grp_fu_1965_ce;
reg    grp_fu_1975_ce;
reg    grp_fu_1985_ce;
reg    grp_fu_1995_ce;
reg    grp_fu_2005_ce;
reg    grp_fu_2015_ce;
reg    grp_fu_2025_ce;
reg    grp_fu_2035_ce;
reg    grp_fu_2045_ce;
reg   [31:0] grp_fu_2786_p0;
reg   [31:0] grp_fu_2786_p1;
reg    grp_fu_2786_ce;
reg   [31:0] grp_fu_2790_p0;
reg   [31:0] grp_fu_2790_p1;
reg    grp_fu_2790_ce;
reg   [31:0] grp_fu_2794_p0;
reg   [31:0] grp_fu_2794_p1;
reg    grp_fu_2794_ce;
reg   [31:0] grp_fu_2798_p0;
reg   [31:0] grp_fu_2798_p1;
reg    grp_fu_2798_ce;
reg   [31:0] grp_fu_2802_p0;
reg   [31:0] grp_fu_2802_p1;
reg    grp_fu_2802_ce;
reg   [31:0] grp_fu_2806_p0;
reg   [31:0] grp_fu_2806_p1;
reg    grp_fu_2806_ce;
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
wire   [14:0] grp_fu_1703_p00;
wire   [14:0] grp_fu_1711_p00;
wire   [14:0] grp_fu_1719_p00;
wire   [14:0] grp_fu_1727_p00;
wire   [13:0] mul_ln171_fu_1352_p00;
wire   [13:0] mul_ln186_fu_1682_p00;
wire   [13:0] mul_ln199_fu_1607_p00;
wire   [13:0] mul_ln212_fu_1482_p00;
wire   [13:0] mul_ln225_fu_1367_p00;
wire   [13:0] mul_ln238_fu_1697_p00;
wire   [13:0] mul_ln251_fu_1622_p00;
wire   [13:0] mul_ln264_fu_1497_p00;
wire   [13:0] mul_ln277_fu_1382_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 30'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_start_reg = 1'b0;
#0 phi_mul_fu_174 = 16'd0;
#0 v114_fu_178 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_802(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_d1),.v225_3_q1(v225_3_q1),.phi_mul(phi_mul_load_reg_2082),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_2423),.mul_ln225(mul_ln225_reg_2428),.mul_ln277(mul_ln277_reg_2433),.cmp11(cmp11_reg_2149),.v120(reg_1004),.v133(reg_1012),.v144(reg_1020),.v155(reg_1028),.v166(reg_1036),.v177(reg_1044),.v188(reg_1052),.v199(reg_1060),.v210(reg_1068),.grp_fu_2786_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2786_p_din0),.grp_fu_2786_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2786_p_din1),.grp_fu_2786_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2786_p_opcode),.grp_fu_2786_p_dout0(grp_fu_160_p_dout0),.grp_fu_2786_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2786_p_ce),.grp_fu_2790_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2790_p_din0),.grp_fu_2790_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2790_p_din1),.grp_fu_2790_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2790_p_opcode),.grp_fu_2790_p_dout0(grp_fu_164_p_dout0),.grp_fu_2790_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2790_p_ce),.grp_fu_2794_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2794_p_din0),.grp_fu_2794_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2794_p_din1),.grp_fu_2794_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2794_p_opcode),.grp_fu_2794_p_dout0(grp_fu_168_p_dout0),.grp_fu_2794_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2794_p_ce),.grp_fu_2798_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2798_p_din0),.grp_fu_2798_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2798_p_din1),.grp_fu_2798_p_dout0(grp_fu_172_p_dout0),.grp_fu_2798_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2798_p_ce),.grp_fu_2802_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2802_p_din0),.grp_fu_2802_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2802_p_din1),.grp_fu_2802_p_dout0(grp_fu_176_p_dout0),.grp_fu_2802_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2802_p_ce),.grp_fu_2806_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2806_p_din0),.grp_fu_2806_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2806_p_din1),.grp_fu_2806_p_dout0(grp_fu_180_p_dout0),.grp_fu_2806_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2806_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_830(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_d1),.v225_3_q1(v225_3_q1),.phi_mul(phi_mul_load_reg_2082),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v227_ce1),.v227_q1(v227_q1),.mul_ln212(mul_ln212_reg_2564),.mul_ln264(mul_ln264_reg_2569),.mul_ln277(mul_ln277_reg_2433),.cmp11(cmp11_reg_2149),.v120_1(reg_1004),.v133_1(reg_1012),.v144_1(reg_1020),.v155_1(reg_1028),.v166_1(reg_1036),.v177_1(reg_1044),.v188_1(reg_1052),.v199_1(reg_1060),.v210_1(reg_1068),.grp_fu_2786_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2786_p_din0),.grp_fu_2786_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2786_p_din1),.grp_fu_2786_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2786_p_opcode),.grp_fu_2786_p_dout0(grp_fu_160_p_dout0),.grp_fu_2786_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2786_p_ce),.grp_fu_2790_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2790_p_din0),.grp_fu_2790_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2790_p_din1),.grp_fu_2790_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2790_p_opcode),.grp_fu_2790_p_dout0(grp_fu_164_p_dout0),.grp_fu_2790_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2790_p_ce),.grp_fu_2794_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2794_p_din0),.grp_fu_2794_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2794_p_din1),.grp_fu_2794_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2794_p_opcode),.grp_fu_2794_p_dout0(grp_fu_168_p_dout0),.grp_fu_2794_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2794_p_ce),.grp_fu_2798_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2798_p_din0),.grp_fu_2798_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2798_p_din1),.grp_fu_2798_p_dout0(grp_fu_172_p_dout0),.grp_fu_2798_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2798_p_ce),.grp_fu_2802_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2802_p_din0),.grp_fu_2802_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2802_p_din1),.grp_fu_2802_p_dout0(grp_fu_176_p_dout0),.grp_fu_2802_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2802_p_ce),.grp_fu_2806_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2806_p_din0),.grp_fu_2806_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2806_p_din1),.grp_fu_2806_p_dout0(grp_fu_180_p_dout0),.grp_fu_2806_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2806_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_54 grp_kernel_2mm_node1_Pipeline_label_54_fu_858(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_d1),.v225_3_q1(v225_3_q1),.phi_mul(phi_mul_load_reg_2082),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v227_ce1),.v227_q1(v227_q1),.mul_ln199(mul_ln199_reg_2720),.mul_ln251(mul_ln251_reg_2725),.mul_ln264(mul_ln264_reg_2569),.cmp11(cmp11_reg_2149),.v120_2(reg_1004),.v133_2(reg_1012),.v144_2(reg_1020),.v155_2(reg_1028),.v166_2(reg_1036),.v177_2(reg_1044),.v188_2(reg_1052),.v199_2(reg_1060),.v210_2(reg_1068),.grp_fu_2786_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2786_p_din0),.grp_fu_2786_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2786_p_din1),.grp_fu_2786_p_opcode(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2786_p_opcode),.grp_fu_2786_p_dout0(grp_fu_160_p_dout0),.grp_fu_2786_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2786_p_ce),.grp_fu_2790_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2790_p_din0),.grp_fu_2790_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2790_p_din1),.grp_fu_2790_p_opcode(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2790_p_opcode),.grp_fu_2790_p_dout0(grp_fu_164_p_dout0),.grp_fu_2790_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2790_p_ce),.grp_fu_2794_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2794_p_din0),.grp_fu_2794_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2794_p_din1),.grp_fu_2794_p_opcode(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2794_p_opcode),.grp_fu_2794_p_dout0(grp_fu_168_p_dout0),.grp_fu_2794_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2794_p_ce),.grp_fu_2798_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2798_p_din0),.grp_fu_2798_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2798_p_din1),.grp_fu_2798_p_dout0(grp_fu_172_p_dout0),.grp_fu_2798_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2798_p_ce),.grp_fu_2802_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2802_p_din0),.grp_fu_2802_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2802_p_din1),.grp_fu_2802_p_dout0(grp_fu_176_p_dout0),.grp_fu_2802_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2802_p_ce),.grp_fu_2806_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2806_p_din0),.grp_fu_2806_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2806_p_din1),.grp_fu_2806_p_dout0(grp_fu_180_p_dout0),.grp_fu_2806_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2806_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_55 grp_kernel_2mm_node1_Pipeline_label_55_fu_886(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_d1),.v225_3_q1(v225_3_q1),.phi_mul(phi_mul_load_reg_2082),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v227_ce1),.v227_q1(v227_q1),.mul_ln186(mul_ln186_reg_2776),.mul_ln238(mul_ln238_reg_2781),.mul_ln251(mul_ln251_reg_2725),.cmp11(cmp11_reg_2149),.v120_3(reg_1004),.v133_3(reg_1012),.v144_3(reg_1020),.v155_3(reg_1028),.v166_3(reg_1036),.v177_3(reg_1044),.v188_3(reg_1052),.v199_3(reg_1060),.v210_3(reg_1068),.grp_fu_2786_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2786_p_din0),.grp_fu_2786_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2786_p_din1),.grp_fu_2786_p_opcode(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2786_p_opcode),.grp_fu_2786_p_dout0(grp_fu_160_p_dout0),.grp_fu_2786_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2786_p_ce),.grp_fu_2790_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2790_p_din0),.grp_fu_2790_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2790_p_din1),.grp_fu_2790_p_opcode(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2790_p_opcode),.grp_fu_2790_p_dout0(grp_fu_164_p_dout0),.grp_fu_2790_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2790_p_ce),.grp_fu_2794_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2794_p_din0),.grp_fu_2794_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2794_p_din1),.grp_fu_2794_p_opcode(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2794_p_opcode),.grp_fu_2794_p_dout0(grp_fu_168_p_dout0),.grp_fu_2794_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2794_p_ce),.grp_fu_2798_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2798_p_din0),.grp_fu_2798_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2798_p_din1),.grp_fu_2798_p_dout0(grp_fu_172_p_dout0),.grp_fu_2798_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2798_p_ce),.grp_fu_2802_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2802_p_din0),.grp_fu_2802_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2802_p_din1),.grp_fu_2802_p_dout0(grp_fu_176_p_dout0),.grp_fu_2802_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2802_p_ce),.grp_fu_2806_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2806_p_din0),.grp_fu_2806_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2806_p_din1),.grp_fu_2806_p_dout0(grp_fu_180_p_dout0),.grp_fu_2806_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2806_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_926_p0),.din1(v113),.ce(grp_fu_926_ce),.dout(grp_fu_926_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_930_p0),.din1(v113),.ce(grp_fu_930_ce),.dout(grp_fu_930_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U106(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_934_p0),.din1(v113),.ce(grp_fu_934_ce),.dout(grp_fu_934_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U107(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_938_p0),.din1(v113),.ce(grp_fu_938_ce),.dout(grp_fu_938_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U108(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_942_p0),.din1(v113),.ce(grp_fu_942_ce),.dout(grp_fu_942_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U109(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_946_p0),.din1(v113),.ce(grp_fu_946_ce),.dout(grp_fu_946_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U110(.din0(mul_ln171_fu_1352_p0),.din1(mul_ln171_fu_1352_p1),.dout(mul_ln171_fu_1352_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U111(.din0(mul_ln225_fu_1367_p0),.din1(mul_ln225_fu_1367_p1),.dout(mul_ln225_fu_1367_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U112(.din0(mul_ln277_fu_1382_p0),.din1(mul_ln277_fu_1382_p1),.dout(mul_ln277_fu_1382_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U113(.din0(mul_ln212_fu_1482_p0),.din1(mul_ln212_fu_1482_p1),.dout(mul_ln212_fu_1482_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U114(.din0(mul_ln264_fu_1497_p0),.din1(mul_ln264_fu_1497_p1),.dout(mul_ln264_fu_1497_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U115(.din0(mul_ln199_fu_1607_p0),.din1(mul_ln199_fu_1607_p1),.dout(mul_ln199_fu_1607_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U116(.din0(mul_ln251_fu_1622_p0),.din1(mul_ln251_fu_1622_p1),.dout(mul_ln251_fu_1622_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U117(.din0(mul_ln186_fu_1682_p0),.din1(mul_ln186_fu_1682_p1),.dout(mul_ln186_fu_1682_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U118(.din0(mul_ln238_fu_1697_p0),.din1(mul_ln238_fu_1697_p1),.dout(mul_ln238_fu_1697_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U119(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1703_p0),.din1(grp_fu_1703_p1),.din2(grp_fu_1703_p2),.ce(1'b1),.dout(grp_fu_1703_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U120(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1711_p0),.din1(grp_fu_1711_p1),.din2(grp_fu_1711_p2),.ce(1'b1),.dout(grp_fu_1711_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U121(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1719_p0),.din1(grp_fu_1719_p1),.din2(grp_fu_1719_p2),.ce(1'b1),.dout(grp_fu_1719_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U122(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1727_p0),.din1(grp_fu_1727_p1),.din2(grp_fu_1727_p2),.ce(1'b1),.dout(grp_fu_1727_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U123(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1735_p1),.din2(grp_fu_1735_p2),.din3(grp_fu_1735_p3),.ce(1'b1),.dout(grp_fu_1735_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U124(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1745_p1),.din2(grp_fu_1745_p2),.din3(grp_fu_1745_p3),.ce(1'b1),.dout(grp_fu_1745_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U125(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1755_p1),.din2(grp_fu_1755_p2),.din3(grp_fu_1755_p3),.ce(1'b1),.dout(grp_fu_1755_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U126(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1765_p1),.din2(grp_fu_1765_p2),.din3(grp_fu_1765_p3),.ce(1'b1),.dout(grp_fu_1765_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U127(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1775_p1),.din2(grp_fu_1775_p2),.din3(grp_fu_1775_p3),.ce(1'b1),.dout(grp_fu_1775_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U128(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1785_p1),.din2(grp_fu_1785_p2),.din3(grp_fu_1785_p3),.ce(1'b1),.dout(grp_fu_1785_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U129(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1795_p1),.din2(grp_fu_1795_p2),.din3(grp_fu_1795_p3),.ce(1'b1),.dout(grp_fu_1795_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U130(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1805_p1),.din2(grp_fu_1805_p2),.din3(grp_fu_1805_p3),.ce(1'b1),.dout(grp_fu_1805_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U131(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1815_p1),.din2(grp_fu_1815_p2),.din3(grp_fu_1815_p3),.ce(1'b1),.dout(grp_fu_1815_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U132(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1825_p1),.din2(grp_fu_1825_p2),.din3(grp_fu_1825_p3),.ce(1'b1),.dout(grp_fu_1825_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U133(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1835_p1),.din2(grp_fu_1835_p2),.din3(grp_fu_1835_p3),.ce(1'b1),.dout(grp_fu_1835_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U134(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1845_p1),.din2(grp_fu_1845_p2),.din3(grp_fu_1845_p3),.ce(1'b1),.dout(grp_fu_1845_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U135(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1855_p1),.din2(grp_fu_1855_p2),.din3(grp_fu_1855_p3),.ce(1'b1),.dout(grp_fu_1855_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U136(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1865_p1),.din2(grp_fu_1865_p2),.din3(grp_fu_1865_p3),.ce(1'b1),.dout(grp_fu_1865_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U137(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1875_p1),.din2(grp_fu_1875_p2),.din3(grp_fu_1875_p3),.ce(1'b1),.dout(grp_fu_1875_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U138(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1885_p1),.din2(grp_fu_1885_p2),.din3(grp_fu_1885_p3),.ce(1'b1),.dout(grp_fu_1885_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U139(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1895_p1),.din2(grp_fu_1895_p2),.din3(grp_fu_1895_p3),.ce(1'b1),.dout(grp_fu_1895_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U140(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1905_p1),.din2(grp_fu_1905_p2),.din3(grp_fu_1905_p3),.ce(1'b1),.dout(grp_fu_1905_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U141(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1915_p1),.din2(grp_fu_1915_p2),.din3(grp_fu_1915_p3),.ce(grp_fu_1915_ce),.dout(grp_fu_1915_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U142(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1925_p1),.din2(grp_fu_1925_p2),.din3(grp_fu_1925_p3),.ce(grp_fu_1925_ce),.dout(grp_fu_1925_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U143(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1935_p1),.din2(grp_fu_1935_p2),.din3(grp_fu_1935_p3),.ce(grp_fu_1935_ce),.dout(grp_fu_1935_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U144(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1945_p1),.din2(grp_fu_1945_p2),.din3(grp_fu_1945_p3),.ce(grp_fu_1945_ce),.dout(grp_fu_1945_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U145(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1955_p1),.din2(grp_fu_1955_p2),.din3(grp_fu_1955_p3),.ce(grp_fu_1955_ce),.dout(grp_fu_1955_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U146(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1965_p1),.din2(grp_fu_1965_p2),.din3(grp_fu_1965_p3),.ce(grp_fu_1965_ce),.dout(grp_fu_1965_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U147(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1975_p1),.din2(grp_fu_1975_p2),.din3(grp_fu_1975_p3),.ce(grp_fu_1975_ce),.dout(grp_fu_1975_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U148(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1985_p1),.din2(grp_fu_1985_p2),.din3(grp_fu_1985_p3),.ce(grp_fu_1985_ce),.dout(grp_fu_1985_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U149(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_1995_p1),.din2(grp_fu_1995_p2),.din3(grp_fu_1995_p3),.ce(grp_fu_1995_ce),.dout(grp_fu_1995_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_5ns_7ns_7ns_15_4_1_U150(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_2005_p1),.din2(grp_fu_2005_p2),.din3(grp_fu_2005_p3),.ce(grp_fu_2005_ce),.dout(grp_fu_2005_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1_U151(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_2015_p1),.din2(grp_fu_2015_p2),.din3(grp_fu_2015_p3),.ce(grp_fu_2015_ce),.dout(grp_fu_2015_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1_U152(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_2025_p1),.din2(grp_fu_2025_p2),.din3(grp_fu_2025_p3),.ce(grp_fu_2025_ce),.dout(grp_fu_2025_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1_U153(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_2035_p1),.din2(grp_fu_2035_p2),.din3(grp_fu_2035_p3),.ce(grp_fu_2035_ce),.dout(grp_fu_2035_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_6ns_7ns_7ns_15_4_1_U154(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_790),.din1(grp_fu_2045_p1),.din2(grp_fu_2045_p2),.din3(grp_fu_2045_p3),.ce(grp_fu_2045_ce),.dout(grp_fu_2045_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_174 <= 16'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln169_fu_1134_p2 == 1'd0))) begin
        phi_mul_fu_174 <= add_ln168_1_reg_2090;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_178 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln169_fu_1134_p2 == 1'd0))) begin
        v114_fu_178 <= add_ln168_reg_2098;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1098_p2 == 1'd0))) begin
        v115_reg_790 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
        v115_reg_790 <= add_ln169_3_reg_2170;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_2090 <= add_ln168_1_fu_1092_p2;
        add_ln168_reg_2098 <= add_ln168_fu_1104_p2;
        cmp11_reg_2149 <= cmp11_fu_1128_p2;
        phi_mul_load_reg_2082 <= phi_mul_fu_174;
        trunc_ln168_reg_2103 <= trunc_ln168_fu_1110_p1;
        zext_ln168_reg_2109[6 : 0] <= zext_ln168_fu_1124_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_3_reg_2170 <= add_ln169_3_fu_1166_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        lshr_ln1_reg_2175 <= {{v115_reg_790[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_2423 <= mul_ln171_fu_1352_p2;
        mul_ln225_reg_2428 <= mul_ln225_fu_1367_p2;
        mul_ln277_reg_2433 <= mul_ln277_fu_1382_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        mul_ln186_reg_2776 <= mul_ln186_fu_1682_p2;
        mul_ln238_reg_2781 <= mul_ln238_fu_1697_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        mul_ln199_reg_2720 <= mul_ln199_fu_1607_p2;
        mul_ln251_reg_2725 <= mul_ln251_fu_1622_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_ln212_reg_2564 <= mul_ln212_fu_1482_p2;
        mul_ln264_reg_2569 <= mul_ln264_fu_1497_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_1000 <= grp_fu_957_p3;
        reg_996 <= grp_fu_950_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_1004 <= grp_fu_184_p_dout0;
        reg_1012 <= grp_fu_188_p_dout0;
        reg_1020 <= grp_fu_192_p_dout0;
        reg_1028 <= grp_fu_926_p2;
        reg_1036 <= grp_fu_930_p2;
        reg_1044 <= grp_fu_934_p2;
        reg_1052 <= grp_fu_938_p2;
        reg_1060 <= grp_fu_942_p2;
        reg_1068 <= grp_fu_946_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)))) begin
        reg_964 <= grp_fu_950_p3;
        reg_968 <= grp_fu_957_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_972 <= grp_fu_950_p3;
        reg_976 <= grp_fu_957_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_980 <= grp_fu_950_p3;
        reg_984 <= grp_fu_957_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_988 <= grp_fu_950_p3;
        reg_992 <= grp_fu_957_p3;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1098_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1098_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1915_ce = 1'b1;
    end else begin
        grp_fu_1915_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1925_ce = 1'b1;
    end else begin
        grp_fu_1925_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1935_ce = 1'b1;
    end else begin
        grp_fu_1935_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1945_ce = 1'b1;
    end else begin
        grp_fu_1945_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1955_ce = 1'b1;
    end else begin
        grp_fu_1955_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1965_ce = 1'b1;
    end else begin
        grp_fu_1965_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1975_ce = 1'b1;
    end else begin
        grp_fu_1975_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1985_ce = 1'b1;
    end else begin
        grp_fu_1985_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)))) begin
        grp_fu_1995_ce = 1'b1;
    end else begin
        grp_fu_1995_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)))) begin
        grp_fu_2005_ce = 1'b1;
    end else begin
        grp_fu_2005_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)))) begin
        grp_fu_2015_ce = 1'b1;
    end else begin
        grp_fu_2015_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)))) begin
        grp_fu_2025_ce = 1'b1;
    end else begin
        grp_fu_2025_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)))) begin
        grp_fu_2035_ce = 1'b1;
    end else begin
        grp_fu_2035_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)))) begin
        grp_fu_2045_ce = 1'b1;
    end else begin
        grp_fu_2045_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2786_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2786_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2786_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2786_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2786_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2786_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2786_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2786_p_ce;
    end else begin
        grp_fu_2786_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2786_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2786_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2786_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2786_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2786_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2786_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2786_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2786_p_din0;
    end else begin
        grp_fu_2786_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2786_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2786_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2786_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2786_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2786_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2786_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2786_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2786_p_din1;
    end else begin
        grp_fu_2786_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2790_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2790_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2790_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2790_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2790_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2790_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2790_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2790_p_ce;
    end else begin
        grp_fu_2790_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2790_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2790_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2790_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2790_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2790_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2790_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2790_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2790_p_din0;
    end else begin
        grp_fu_2790_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2790_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2790_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2790_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2790_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2790_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2790_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2790_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2790_p_din1;
    end else begin
        grp_fu_2790_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2794_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2794_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2794_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2794_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2794_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2794_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2794_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2794_p_ce;
    end else begin
        grp_fu_2794_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2794_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2794_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2794_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2794_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2794_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2794_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2794_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2794_p_din0;
    end else begin
        grp_fu_2794_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2794_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2794_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2794_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2794_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2794_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2794_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2794_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2794_p_din1;
    end else begin
        grp_fu_2794_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2798_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2798_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2798_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2798_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2798_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2798_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2798_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2798_p_ce;
    end else begin
        grp_fu_2798_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2798_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2798_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2798_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2798_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2798_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2798_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2798_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2798_p_din0;
    end else begin
        grp_fu_2798_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2798_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2798_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2798_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2798_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2798_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2798_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2798_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2798_p_din1;
    end else begin
        grp_fu_2798_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2802_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2802_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2802_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2802_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2802_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2802_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2802_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2802_p_ce;
    end else begin
        grp_fu_2802_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2802_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2802_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2802_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2802_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2802_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2802_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2802_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2802_p_din0;
    end else begin
        grp_fu_2802_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2802_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2802_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2802_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2802_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2802_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2802_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2802_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2802_p_din1;
    end else begin
        grp_fu_2802_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2806_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2806_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2806_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2806_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2806_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2806_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2806_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2806_p_ce;
    end else begin
        grp_fu_2806_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2806_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2806_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2806_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2806_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2806_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2806_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2806_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2806_p_din0;
    end else begin
        grp_fu_2806_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2806_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_grp_fu_2806_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2806_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_grp_fu_2806_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2806_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_grp_fu_2806_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2806_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_grp_fu_2806_p_din1;
    end else begin
        grp_fu_2806_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_914_ce = 1'b1;
    end else begin
        grp_fu_914_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_914_p0 = v119_3_fu_1628_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_914_p0 = v119_2_fu_1523_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_914_p0 = v119_1_fu_1398_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_914_p0 = v119_fu_1274_p1;
    end else begin
        grp_fu_914_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_918_ce = 1'b1;
    end else begin
        grp_fu_918_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_918_p0 = v132_3_fu_1633_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_918_p0 = v132_2_fu_1528_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_918_p0 = v132_1_fu_1403_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_918_p0 = v132_fu_1279_p1;
    end else begin
        grp_fu_918_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_922_ce = 1'b1;
    end else begin
        grp_fu_922_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_922_p0 = v143_3_fu_1638_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_922_p0 = v143_2_fu_1533_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_922_p0 = v143_1_fu_1408_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_922_p0 = v143_fu_1284_p1;
    end else begin
        grp_fu_922_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_926_ce = 1'b1;
    end else begin
        grp_fu_926_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_926_p0 = v154_3_fu_1643_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_926_p0 = v154_2_fu_1538_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_926_p0 = v154_1_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_926_p0 = v154_fu_1289_p1;
    end else begin
        grp_fu_926_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_930_ce = 1'b1;
    end else begin
        grp_fu_930_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_930_p0 = v165_3_fu_1648_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_930_p0 = v165_2_fu_1543_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_930_p0 = v165_1_fu_1418_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_930_p0 = v165_fu_1294_p1;
    end else begin
        grp_fu_930_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_934_ce = 1'b1;
    end else begin
        grp_fu_934_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_934_p0 = v176_3_fu_1653_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_934_p0 = v176_2_fu_1548_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_934_p0 = v176_1_fu_1423_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_934_p0 = v176_fu_1299_p1;
    end else begin
        grp_fu_934_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_938_ce = 1'b1;
    end else begin
        grp_fu_938_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_938_p0 = v187_3_fu_1658_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_938_p0 = v187_2_fu_1553_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_938_p0 = v187_1_fu_1428_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_938_p0 = v187_fu_1304_p1;
    end else begin
        grp_fu_938_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_942_ce = 1'b1;
    end else begin
        grp_fu_942_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_942_p0 = v198_3_fu_1663_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_942_p0 = v198_2_fu_1558_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_942_p0 = v198_1_fu_1433_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_942_p0 = v198_fu_1309_p1;
    end else begin
        grp_fu_942_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_946_ce = 1'b1;
    end else begin
        grp_fu_946_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_946_p0 = v209_3_fu_1668_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_946_p0 = v209_2_fu_1563_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_946_p0 = v209_1_fu_1438_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_946_p0 = v209_fu_1314_p1;
    end else begin
        grp_fu_946_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_address0;
    end else begin
        v225_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_address1;
    end else begin
        v225_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_ce0;
    end else begin
        v225_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_ce1;
    end else begin
        v225_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_d0;
    end else begin
        v225_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_d1;
    end else begin
        v225_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_we0;
    end else begin
        v225_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_0_we1;
    end else begin
        v225_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_address0;
    end else begin
        v225_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_address1;
    end else begin
        v225_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_ce0;
    end else begin
        v225_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_ce1;
    end else begin
        v225_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_d0;
    end else begin
        v225_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_d1;
    end else begin
        v225_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_we0;
    end else begin
        v225_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_1_we1;
    end else begin
        v225_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_address0;
    end else begin
        v225_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_address1;
    end else begin
        v225_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_ce0;
    end else begin
        v225_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_ce1;
    end else begin
        v225_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_d0;
    end else begin
        v225_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_d1;
    end else begin
        v225_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_we0;
    end else begin
        v225_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_2_we1;
    end else begin
        v225_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_address0;
    end else begin
        v225_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_address1;
    end else begin
        v225_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_ce0;
    end else begin
        v225_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_ce1;
    end else begin
        v225_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_d0;
    end else begin
        v225_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_d1;
    end else begin
        v225_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_we0;
    end else begin
        v225_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v225_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v225_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v225_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v225_3_we1;
    end else begin
        v225_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_0_address0_local = p_cast4370_fu_1593_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_0_address0_local = p_cast4368_fu_1583_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_0_address0_local = p_cast4366_fu_1573_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_0_address0_local = p_cast4364_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_0_address0_local = p_cast4362_fu_1508_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_0_address0_local = p_cast4360_fu_1468_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_0_address0_local = p_cast4358_fu_1458_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_0_address0_local = p_cast4356_fu_1448_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_0_address0_local = p_cast4354_fu_1393_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address0_local = p_cast4352_fu_1344_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address0_local = p_cast4350_fu_1334_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address0_local = p_cast4348_fu_1324_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address0_local = p_cast4346_fu_1269_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast4344_fu_1259_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast4342_fu_1249_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast4340_fu_1239_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast4338_fu_1229_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast_fu_1219_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_0_address1_local = p_cast4369_fu_1588_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_0_address1_local = p_cast4367_fu_1578_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_0_address1_local = p_cast4365_fu_1568_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_0_address1_local = p_cast4363_fu_1513_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_0_address1_local = p_cast4361_fu_1503_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_0_address1_local = p_cast4359_fu_1463_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_0_address1_local = p_cast4357_fu_1453_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_0_address1_local = p_cast4355_fu_1443_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_0_address1_local = p_cast4353_fu_1388_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address1_local = p_cast4351_fu_1339_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address1_local = p_cast4349_fu_1329_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address1_local = p_cast4347_fu_1319_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address1_local = p_cast4345_fu_1264_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast4343_fu_1254_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast4341_fu_1244_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast4339_fu_1234_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast4337_fu_1224_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address1_local = p_cast4336_fu_1214_p1;
    end else begin
        v226_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_0_ce0_local = 1'b1;
    end else begin
        v226_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_0_ce1_local = 1'b1;
    end else begin
        v226_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_1_address0_local = p_cast4370_fu_1593_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_1_address0_local = p_cast4368_fu_1583_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_1_address0_local = p_cast4366_fu_1573_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_1_address0_local = p_cast4364_fu_1518_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_1_address0_local = p_cast4362_fu_1508_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_1_address0_local = p_cast4360_fu_1468_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_1_address0_local = p_cast4358_fu_1458_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_1_address0_local = p_cast4356_fu_1448_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_1_address0_local = p_cast4354_fu_1393_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address0_local = p_cast4352_fu_1344_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address0_local = p_cast4350_fu_1334_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address0_local = p_cast4348_fu_1324_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address0_local = p_cast4346_fu_1269_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address0_local = p_cast4344_fu_1259_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast4342_fu_1249_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast4340_fu_1239_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast4338_fu_1229_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast_fu_1219_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_1_address1_local = p_cast4369_fu_1588_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_1_address1_local = p_cast4367_fu_1578_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_1_address1_local = p_cast4365_fu_1568_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_1_address1_local = p_cast4363_fu_1513_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_1_address1_local = p_cast4361_fu_1503_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_1_address1_local = p_cast4359_fu_1463_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_1_address1_local = p_cast4357_fu_1453_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_1_address1_local = p_cast4355_fu_1443_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_1_address1_local = p_cast4353_fu_1388_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address1_local = p_cast4351_fu_1339_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address1_local = p_cast4349_fu_1329_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address1_local = p_cast4347_fu_1319_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address1_local = p_cast4345_fu_1264_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast4343_fu_1254_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast4341_fu_1244_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast4339_fu_1234_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast4337_fu_1224_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address1_local = p_cast4336_fu_1214_p1;
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1098_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1098_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1098_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1098_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln169_fu_1134_p2 == 1'd0))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
            if (((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_done == 1'b1))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
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
assign add_ln168_1_fu_1092_p2 = (phi_mul_fu_174 + 16'd190);
assign add_ln168_fu_1104_p2 = (v114_fu_178 + 8'd1);
assign add_ln169_3_fu_1166_p2 = (v115_reg_790 + 8'd36);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_1098_p2 == 1'd1));
end
assign cmp11_fu_1128_p2 = ((v114_fu_178 == 8'd0) ? 1'b1 : 1'b0);
assign empty_101_fu_1673_p2 = (lshr_ln1_reg_2175 + 6'd7);
assign empty_114_fu_1688_p2 = (lshr_ln1_reg_2175 + 6'd8);
assign empty_26_fu_1358_p2 = (lshr_ln1_reg_2175 + 6'd1);
assign empty_39_fu_1373_p2 = (lshr_ln1_reg_2175 + 6'd2);
assign empty_51_fu_1473_p2 = (lshr_ln1_reg_2175 + 6'd3);
assign empty_64_fu_1488_p2 = (lshr_ln1_reg_2175 + 6'd4);
assign empty_76_fu_1598_p2 = (lshr_ln1_reg_2175 + 6'd5);
assign empty_89_fu_1613_p2 = (lshr_ln1_reg_2175 + 6'd6);
assign grp_fu_160_p_ce = grp_fu_2786_ce;
assign grp_fu_160_p_din0 = grp_fu_2786_p0;
assign grp_fu_160_p_din1 = grp_fu_2786_p1;
assign grp_fu_160_p_opcode = 2'd0;
assign grp_fu_164_p_ce = grp_fu_2790_ce;
assign grp_fu_164_p_din0 = grp_fu_2790_p0;
assign grp_fu_164_p_din1 = grp_fu_2790_p1;
assign grp_fu_164_p_opcode = 2'd0;
assign grp_fu_168_p_ce = grp_fu_2794_ce;
assign grp_fu_168_p_din0 = grp_fu_2794_p0;
assign grp_fu_168_p_din1 = grp_fu_2794_p1;
assign grp_fu_168_p_opcode = 2'd0;
assign grp_fu_1703_p0 = grp_fu_1703_p00;
assign grp_fu_1703_p00 = v115_reg_790;
assign grp_fu_1703_p1 = 15'd105;
assign grp_fu_1703_p2 = zext_ln168_reg_2109;
assign grp_fu_1711_p0 = grp_fu_1711_p00;
assign grp_fu_1711_p00 = tmp_1_fu_1154_p3;
assign grp_fu_1711_p1 = 15'd105;
assign grp_fu_1711_p2 = zext_ln168_reg_2109;
assign grp_fu_1719_p0 = grp_fu_1719_p00;
assign grp_fu_1719_p00 = tmp_4_fu_1190_p3;
assign grp_fu_1719_p1 = 15'd105;
assign grp_fu_1719_p2 = zext_ln168_reg_2109;
assign grp_fu_1727_p0 = grp_fu_1727_p00;
assign grp_fu_1727_p00 = tmp_6_fu_1202_p3;
assign grp_fu_1727_p1 = 15'd105;
assign grp_fu_1727_p2 = zext_ln168_reg_2109;
assign grp_fu_172_p_ce = grp_fu_2798_ce;
assign grp_fu_172_p_din0 = grp_fu_2798_p0;
assign grp_fu_172_p_din1 = grp_fu_2798_p1;
assign grp_fu_1735_p1 = 8'd4;
assign grp_fu_1735_p2 = 15'd105;
assign grp_fu_1735_p3 = zext_ln168_reg_2109;
assign grp_fu_1745_p1 = 8'd5;
assign grp_fu_1745_p2 = 15'd105;
assign grp_fu_1745_p3 = zext_ln168_reg_2109;
assign grp_fu_1755_p1 = 8'd6;
assign grp_fu_1755_p2 = 15'd105;
assign grp_fu_1755_p3 = zext_ln168_reg_2109;
assign grp_fu_1765_p1 = 8'd7;
assign grp_fu_1765_p2 = 15'd105;
assign grp_fu_1765_p3 = zext_ln168_reg_2109;
assign grp_fu_176_p_ce = grp_fu_2802_ce;
assign grp_fu_176_p_din0 = grp_fu_2802_p0;
assign grp_fu_176_p_din1 = grp_fu_2802_p1;
assign grp_fu_1775_p1 = 8'd8;
assign grp_fu_1775_p2 = 15'd105;
assign grp_fu_1775_p3 = zext_ln168_reg_2109;
assign grp_fu_1785_p1 = 8'd9;
assign grp_fu_1785_p2 = 15'd105;
assign grp_fu_1785_p3 = zext_ln168_reg_2109;
assign grp_fu_1795_p1 = 8'd10;
assign grp_fu_1795_p2 = 15'd105;
assign grp_fu_1795_p3 = zext_ln168_reg_2109;
assign grp_fu_1805_p1 = 8'd11;
assign grp_fu_1805_p2 = 15'd105;
assign grp_fu_1805_p3 = zext_ln168_reg_2109;
assign grp_fu_180_p_ce = grp_fu_2806_ce;
assign grp_fu_180_p_din0 = grp_fu_2806_p0;
assign grp_fu_180_p_din1 = grp_fu_2806_p1;
assign grp_fu_1815_p1 = 8'd12;
assign grp_fu_1815_p2 = 15'd105;
assign grp_fu_1815_p3 = zext_ln168_reg_2109;
assign grp_fu_1825_p1 = 8'd13;
assign grp_fu_1825_p2 = 15'd105;
assign grp_fu_1825_p3 = zext_ln168_reg_2109;
assign grp_fu_1835_p1 = 8'd14;
assign grp_fu_1835_p2 = 15'd105;
assign grp_fu_1835_p3 = zext_ln168_reg_2109;
assign grp_fu_1845_p1 = 8'd15;
assign grp_fu_1845_p2 = 15'd105;
assign grp_fu_1845_p3 = zext_ln168_reg_2109;
assign grp_fu_184_p_ce = grp_fu_914_ce;
assign grp_fu_184_p_din0 = grp_fu_914_p0;
assign grp_fu_184_p_din1 = v113;
assign grp_fu_1855_p1 = 8'd16;
assign grp_fu_1855_p2 = 15'd105;
assign grp_fu_1855_p3 = zext_ln168_reg_2109;
assign grp_fu_1865_p1 = 8'd17;
assign grp_fu_1865_p2 = 15'd105;
assign grp_fu_1865_p3 = zext_ln168_reg_2109;
assign grp_fu_1875_p1 = 8'd18;
assign grp_fu_1875_p2 = 15'd105;
assign grp_fu_1875_p3 = zext_ln168_reg_2109;
assign grp_fu_1885_p1 = 8'd19;
assign grp_fu_1885_p2 = 15'd105;
assign grp_fu_1885_p3 = zext_ln168_reg_2109;
assign grp_fu_188_p_ce = grp_fu_918_ce;
assign grp_fu_188_p_din0 = grp_fu_918_p0;
assign grp_fu_188_p_din1 = v113;
assign grp_fu_1895_p1 = 8'd20;
assign grp_fu_1895_p2 = 15'd105;
assign grp_fu_1895_p3 = zext_ln168_reg_2109;
assign grp_fu_1905_p1 = 8'd21;
assign grp_fu_1905_p2 = 15'd105;
assign grp_fu_1905_p3 = zext_ln168_reg_2109;
assign grp_fu_1915_p1 = 8'd22;
assign grp_fu_1915_p2 = 15'd105;
assign grp_fu_1915_p3 = zext_ln168_reg_2109;
assign grp_fu_1925_p1 = 8'd23;
assign grp_fu_1925_p2 = 15'd105;
assign grp_fu_1925_p3 = zext_ln168_reg_2109;
assign grp_fu_192_p_ce = grp_fu_922_ce;
assign grp_fu_192_p_din0 = grp_fu_922_p0;
assign grp_fu_192_p_din1 = v113;
assign grp_fu_1935_p1 = 8'd24;
assign grp_fu_1935_p2 = 15'd105;
assign grp_fu_1935_p3 = zext_ln168_reg_2109;
assign grp_fu_1945_p1 = 8'd25;
assign grp_fu_1945_p2 = 15'd105;
assign grp_fu_1945_p3 = zext_ln168_reg_2109;
assign grp_fu_1955_p1 = 8'd26;
assign grp_fu_1955_p2 = 15'd105;
assign grp_fu_1955_p3 = zext_ln168_reg_2109;
assign grp_fu_1965_p1 = 8'd27;
assign grp_fu_1965_p2 = 15'd105;
assign grp_fu_1965_p3 = zext_ln168_reg_2109;
assign grp_fu_1975_p1 = 8'd28;
assign grp_fu_1975_p2 = 15'd105;
assign grp_fu_1975_p3 = zext_ln168_reg_2109;
assign grp_fu_1985_p1 = 8'd29;
assign grp_fu_1985_p2 = 15'd105;
assign grp_fu_1985_p3 = zext_ln168_reg_2109;
assign grp_fu_1995_p1 = 8'd30;
assign grp_fu_1995_p2 = 15'd105;
assign grp_fu_1995_p3 = zext_ln168_reg_2109;
assign grp_fu_2005_p1 = 8'd31;
assign grp_fu_2005_p2 = 15'd105;
assign grp_fu_2005_p3 = zext_ln168_reg_2109;
assign grp_fu_2015_p1 = 8'd32;
assign grp_fu_2015_p2 = 15'd105;
assign grp_fu_2015_p3 = zext_ln168_reg_2109;
assign grp_fu_2025_p1 = 8'd33;
assign grp_fu_2025_p2 = 15'd105;
assign grp_fu_2025_p3 = zext_ln168_reg_2109;
assign grp_fu_2035_p1 = 8'd34;
assign grp_fu_2035_p2 = 15'd105;
assign grp_fu_2035_p3 = zext_ln168_reg_2109;
assign grp_fu_2045_p1 = 8'd35;
assign grp_fu_2045_p2 = 15'd105;
assign grp_fu_2045_p3 = zext_ln168_reg_2109;
assign grp_fu_950_p3 = ((trunc_ln168_reg_2103[0:0] == 1'b1) ? v226_1_q1 : v226_0_q1);
assign grp_fu_957_p3 = ((trunc_ln168_reg_2103[0:0] == 1'b1) ? v226_1_q0 : v226_0_q0);
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_830_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_start = grp_kernel_2mm_node1_Pipeline_label_54_fu_858_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_start = grp_kernel_2mm_node1_Pipeline_label_55_fu_886_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_802_ap_start_reg;
assign icmp_ln168_fu_1098_p2 = ((v114_fu_178 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_1134_p2 = ((v115_reg_790 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1180_p4 = {{v115_reg_790[7:2]}};
assign lshr_ln_fu_1114_p4 = {{v114_fu_178[7:1]}};
assign mul_ln171_fu_1352_p0 = mul_ln171_fu_1352_p00;
assign mul_ln171_fu_1352_p00 = lshr_ln1_reg_2175;
assign mul_ln171_fu_1352_p1 = 14'd190;
assign mul_ln186_fu_1682_p0 = mul_ln186_fu_1682_p00;
assign mul_ln186_fu_1682_p00 = empty_101_fu_1673_p2;
assign mul_ln186_fu_1682_p1 = 14'd190;
assign mul_ln199_fu_1607_p0 = mul_ln199_fu_1607_p00;
assign mul_ln199_fu_1607_p00 = empty_76_fu_1598_p2;
assign mul_ln199_fu_1607_p1 = 14'd190;
assign mul_ln212_fu_1482_p0 = mul_ln212_fu_1482_p00;
assign mul_ln212_fu_1482_p00 = empty_51_fu_1473_p2;
assign mul_ln212_fu_1482_p1 = 14'd190;
assign mul_ln225_fu_1367_p0 = mul_ln225_fu_1367_p00;
assign mul_ln225_fu_1367_p00 = empty_26_fu_1358_p2;
assign mul_ln225_fu_1367_p1 = 14'd190;
assign mul_ln238_fu_1697_p0 = mul_ln238_fu_1697_p00;
assign mul_ln238_fu_1697_p00 = empty_114_fu_1688_p2;
assign mul_ln238_fu_1697_p1 = 14'd190;
assign mul_ln251_fu_1622_p0 = mul_ln251_fu_1622_p00;
assign mul_ln251_fu_1622_p00 = empty_89_fu_1613_p2;
assign mul_ln251_fu_1622_p1 = 14'd190;
assign mul_ln264_fu_1497_p0 = mul_ln264_fu_1497_p00;
assign mul_ln264_fu_1497_p00 = empty_64_fu_1488_p2;
assign mul_ln264_fu_1497_p1 = 14'd190;
assign mul_ln277_fu_1382_p0 = mul_ln277_fu_1382_p00;
assign mul_ln277_fu_1382_p00 = empty_39_fu_1373_p2;
assign mul_ln277_fu_1382_p1 = 14'd190;
assign p_cast4336_fu_1214_p1 = grp_fu_1703_p3;
assign p_cast4337_fu_1224_p1 = grp_fu_1719_p3;
assign p_cast4338_fu_1229_p1 = grp_fu_1727_p3;
assign p_cast4339_fu_1234_p1 = grp_fu_1735_p4;
assign p_cast4340_fu_1239_p1 = grp_fu_1745_p4;
assign p_cast4341_fu_1244_p1 = grp_fu_1755_p4;
assign p_cast4342_fu_1249_p1 = grp_fu_1765_p4;
assign p_cast4343_fu_1254_p1 = grp_fu_1775_p4;
assign p_cast4344_fu_1259_p1 = grp_fu_1785_p4;
assign p_cast4345_fu_1264_p1 = grp_fu_1795_p4;
assign p_cast4346_fu_1269_p1 = grp_fu_1805_p4;
assign p_cast4347_fu_1319_p1 = grp_fu_1815_p4;
assign p_cast4348_fu_1324_p1 = grp_fu_1825_p4;
assign p_cast4349_fu_1329_p1 = grp_fu_1835_p4;
assign p_cast4350_fu_1334_p1 = grp_fu_1845_p4;
assign p_cast4351_fu_1339_p1 = grp_fu_1855_p4;
assign p_cast4352_fu_1344_p1 = grp_fu_1865_p4;
assign p_cast4353_fu_1388_p1 = grp_fu_1875_p4;
assign p_cast4354_fu_1393_p1 = grp_fu_1885_p4;
assign p_cast4355_fu_1443_p1 = grp_fu_1895_p4;
assign p_cast4356_fu_1448_p1 = grp_fu_1905_p4;
assign p_cast4357_fu_1453_p1 = grp_fu_1915_p4;
assign p_cast4358_fu_1458_p1 = grp_fu_1925_p4;
assign p_cast4359_fu_1463_p1 = grp_fu_1935_p4;
assign p_cast4360_fu_1468_p1 = grp_fu_1945_p4;
assign p_cast4361_fu_1503_p1 = grp_fu_1955_p4;
assign p_cast4362_fu_1508_p1 = grp_fu_1965_p4;
assign p_cast4363_fu_1513_p1 = grp_fu_1975_p4;
assign p_cast4364_fu_1518_p1 = grp_fu_1985_p4;
assign p_cast4365_fu_1568_p1 = grp_fu_1995_p4;
assign p_cast4366_fu_1573_p1 = grp_fu_2005_p4;
assign p_cast4367_fu_1578_p1 = grp_fu_2015_p4;
assign p_cast4368_fu_1583_p1 = grp_fu_2025_p4;
assign p_cast4369_fu_1588_p1 = grp_fu_2035_p4;
assign p_cast4370_fu_1593_p1 = grp_fu_2045_p4;
assign p_cast_fu_1219_p1 = grp_fu_1711_p3;
assign tmp_1_fu_1154_p3 = {{tmp_fu_1144_p4}, {1'd1}};
assign tmp_4_fu_1190_p3 = {{lshr_ln1_fu_1180_p4}, {2'd2}};
assign tmp_6_fu_1202_p3 = {{lshr_ln1_fu_1180_p4}, {2'd3}};
assign tmp_fu_1144_p4 = {{v115_reg_790[7:1]}};
assign trunc_ln168_fu_1110_p1 = v114_fu_178[0:0];
assign v119_1_fu_1398_p1 = reg_1000;
assign v119_2_fu_1523_p1 = reg_964;
assign v119_3_fu_1628_p1 = reg_1000;
assign v119_fu_1274_p1 = reg_964;
assign v132_1_fu_1403_p1 = reg_964;
assign v132_2_fu_1528_p1 = reg_968;
assign v132_3_fu_1633_p1 = reg_964;
assign v132_fu_1279_p1 = reg_968;
assign v143_1_fu_1408_p1 = reg_968;
assign v143_2_fu_1533_p1 = reg_972;
assign v143_3_fu_1638_p1 = reg_968;
assign v143_fu_1284_p1 = reg_972;
assign v154_1_fu_1413_p1 = reg_972;
assign v154_2_fu_1538_p1 = reg_976;
assign v154_3_fu_1643_p1 = reg_972;
assign v154_fu_1289_p1 = reg_976;
assign v165_1_fu_1418_p1 = reg_976;
assign v165_2_fu_1543_p1 = reg_980;
assign v165_3_fu_1648_p1 = reg_976;
assign v165_fu_1294_p1 = reg_980;
assign v176_1_fu_1423_p1 = reg_980;
assign v176_2_fu_1548_p1 = reg_984;
assign v176_3_fu_1653_p1 = reg_980;
assign v176_fu_1299_p1 = reg_984;
assign v187_1_fu_1428_p1 = reg_984;
assign v187_2_fu_1553_p1 = reg_988;
assign v187_3_fu_1658_p1 = reg_984;
assign v187_fu_1304_p1 = reg_988;
assign v198_1_fu_1433_p1 = reg_988;
assign v198_2_fu_1558_p1 = reg_992;
assign v198_3_fu_1663_p1 = reg_988;
assign v198_fu_1309_p1 = reg_992;
assign v209_1_fu_1438_p1 = reg_992;
assign v209_2_fu_1563_p1 = reg_996;
assign v209_3_fu_1668_p1 = reg_992;
assign v209_fu_1314_p1 = reg_996;
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
assign zext_ln168_fu_1124_p1 = lshr_ln_fu_1114_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_2109[14:7] <= 8'b00000000;
end
endmodule 