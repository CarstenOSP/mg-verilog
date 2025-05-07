module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v113,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_opcode,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce); 
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
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [15:0] v226_address1;
output   v226_ce1;
input  [31:0] v226_q1;
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
reg[14:0] v227_0_address0;
reg v227_0_ce0;
reg[14:0] v227_0_address1;
reg v227_0_ce1;
reg[14:0] v227_1_address0;
reg v227_1_ce0;
reg[14:0] v227_1_address1;
reg v227_1_ce1;
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
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_514_p2;
reg   [31:0] reg_420;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
reg   [31:0] reg_424;
reg   [31:0] reg_428;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_432;
reg   [31:0] reg_436;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_440;
reg   [31:0] reg_444;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_448;
wire   [31:0] grp_fu_384_p2;
reg   [31:0] reg_452;
wire    ap_CS_fsm_state19;
wire   [31:0] grp_fu_388_p2;
reg   [31:0] reg_458;
wire   [31:0] grp_fu_392_p2;
reg   [31:0] reg_464;
wire   [31:0] grp_fu_396_p2;
reg   [31:0] reg_470;
wire   [31:0] grp_fu_400_p2;
reg   [31:0] reg_476;
wire   [31:0] grp_fu_404_p2;
reg   [31:0] reg_482;
wire   [31:0] grp_fu_408_p2;
reg   [31:0] reg_488;
wire   [31:0] grp_fu_412_p2;
reg   [31:0] reg_494;
wire   [31:0] grp_fu_416_p2;
reg   [31:0] reg_500;
wire   [7:0] add_ln168_fu_520_p2;
reg   [7:0] add_ln168_reg_1383;
wire   [15:0] zext_ln168_fu_526_p1;
reg   [15:0] zext_ln168_reg_1388;
wire   [0:0] trunc_ln168_fu_530_p1;
reg   [0:0] trunc_ln168_reg_1410;
wire   [14:0] mul_ln175_fu_548_p2;
reg   [14:0] mul_ln175_reg_1416;
wire   [0:0] cmp11_fu_554_p2;
reg   [0:0] cmp11_reg_1422;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_1_fu_592_p2;
reg   [7:0] add_ln169_1_reg_1441;
wire    ap_CS_fsm_state4;
reg   [5:0] tmp_2_reg_1451;
reg   [5:0] tmp_3_reg_1461;
wire    ap_CS_fsm_state5;
reg   [5:0] tmp_4_reg_1471;
wire    ap_CS_fsm_state6;
reg   [5:0] tmp_5_reg_1491;
reg   [5:0] tmp_6_reg_1501;
reg   [5:0] tmp_s_reg_1521;
reg   [5:0] tmp_11_reg_1541;
reg   [5:0] tmp_12_reg_1551;
reg   [5:0] tmp_13_reg_1571;
reg   [5:0] tmp_14_reg_1591;
reg   [5:0] tmp_15_reg_1601;
reg   [31:0] v226_load_8_reg_1606;
wire    ap_CS_fsm_state11;
reg   [31:0] v226_load_9_reg_1611;
reg   [5:0] tmp_16_reg_1631;
wire   [31:0] v119_fu_890_p1;
wire   [31:0] v132_fu_895_p1;
wire   [31:0] v143_fu_900_p1;
wire   [31:0] v154_fu_905_p1;
wire   [31:0] v165_fu_910_p1;
wire   [31:0] v176_fu_915_p1;
wire   [31:0] v187_fu_920_p1;
wire   [31:0] v198_fu_925_p1;
wire   [31:0] v209_fu_930_p1;
wire   [5:0] lshr_ln1_fu_962_p4;
reg   [5:0] lshr_ln1_reg_1711;
wire   [13:0] mul_ln171_fu_976_p2;
reg   [13:0] mul_ln171_reg_1717;
wire   [13:0] mul_ln199_fu_985_p2;
reg   [13:0] mul_ln199_reg_1722;
wire   [13:0] mul_ln212_fu_994_p2;
reg   [13:0] mul_ln212_reg_1727;
wire   [13:0] mul_ln225_fu_1010_p2;
reg   [13:0] mul_ln225_reg_1732;
wire   [13:0] mul_ln238_fu_1019_p2;
reg   [13:0] mul_ln238_reg_1737;
wire   [13:0] mul_ln251_fu_1028_p2;
reg   [13:0] mul_ln251_reg_1742;
wire   [13:0] mul_ln264_fu_1037_p2;
reg   [13:0] mul_ln264_reg_1747;
wire   [13:0] mul_ln277_fu_1053_p2;
reg   [13:0] mul_ln277_reg_1752;
wire   [0:0] icmp_ln178_fu_1059_p2;
reg   [0:0] icmp_ln178_reg_1757;
wire   [0:0] icmp_ln171_fu_1065_p2;
reg   [0:0] icmp_ln171_reg_1763;
wire   [31:0] v119_1_fu_1071_p1;
wire    ap_CS_fsm_state16;
wire   [31:0] v132_1_fu_1075_p1;
wire   [31:0] v143_1_fu_1080_p1;
wire   [31:0] v154_1_fu_1085_p1;
wire   [31:0] v165_1_fu_1090_p1;
wire   [31:0] v176_1_fu_1095_p1;
wire   [31:0] v187_1_fu_1100_p1;
wire   [31:0] v198_1_fu_1105_p1;
wire   [31:0] v209_1_fu_1110_p1;
wire   [13:0] mul_ln171_1_fu_1118_p2;
reg   [13:0] mul_ln171_1_reg_1814;
wire   [13:0] mul_ln186_fu_1127_p2;
reg   [13:0] mul_ln186_reg_1819;
wire   [13:0] mul_ln199_1_fu_1136_p2;
reg   [13:0] mul_ln199_1_reg_1824;
wire   [13:0] mul_ln212_1_fu_1151_p2;
reg   [13:0] mul_ln212_1_reg_1829;
wire   [13:0] mul_ln225_1_fu_1160_p2;
reg   [13:0] mul_ln225_1_reg_1834;
wire   [13:0] mul_ln238_1_fu_1169_p2;
reg   [13:0] mul_ln238_1_reg_1839;
wire   [13:0] mul_ln251_1_fu_1178_p2;
reg   [13:0] mul_ln251_1_reg_1844;
wire   [13:0] mul_ln264_1_fu_1193_p2;
reg   [13:0] mul_ln264_1_reg_1849;
wire   [13:0] mul_ln277_1_fu_1202_p2;
reg   [13:0] mul_ln277_1_reg_1854;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_0_ce1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_1_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1859_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1859_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1859_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1859_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1863_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1863_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1863_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1863_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1867_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1867_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1867_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1867_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1871_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1871_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1871_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1871_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1875_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1875_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1875_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1875_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1879_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1879_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1879_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1879_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1883_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1883_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1883_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1887_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1887_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1887_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1891_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1891_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1891_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1895_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1895_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1895_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1899_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1899_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1899_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_0_ce1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_1_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1859_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1859_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1859_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1859_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1863_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1863_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1863_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1863_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1867_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1867_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1867_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1867_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1871_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1871_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1871_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1871_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1875_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1875_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1875_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1875_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1879_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1879_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1879_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1879_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1883_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1883_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1883_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1887_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1887_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1887_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1891_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1891_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1891_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1895_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1895_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1895_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1899_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1899_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1899_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_384_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_384_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_384_p_ce;
reg   [7:0] v115_reg_295;
wire    ap_CS_fsm_state21;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_start_reg;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start_reg;
wire    ap_CS_fsm_state20;
wire   [63:0] p_cast3992_fu_662_p1;
wire   [63:0] p_cast_fu_666_p1;
wire   [63:0] p_cast3993_fu_710_p1;
wire   [63:0] p_cast3994_fu_714_p1;
wire   [63:0] p_cast3995_fu_738_p1;
wire   [63:0] p_cast3996_fu_742_p1;
wire   [63:0] p_cast3997_fu_786_p1;
wire   [63:0] p_cast3998_fu_790_p1;
wire   [63:0] p_cast3999_fu_814_p1;
wire   [63:0] p_cast4000_fu_818_p1;
wire   [63:0] p_cast4001_fu_862_p1;
wire   [63:0] p_cast4002_fu_866_p1;
wire   [63:0] p_cast4003_fu_934_p1;
wire   [63:0] p_cast4004_fu_938_p1;
wire   [63:0] p_cast4005_fu_942_p1;
wire   [63:0] p_cast4006_fu_946_p1;
wire   [63:0] p_cast4007_fu_950_p1;
wire   [63:0] p_cast4008_fu_954_p1;
reg   [7:0] v114_fu_124;
wire   [0:0] icmp_ln169_fu_560_p2;
reg    v236_write_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg   [31:0] grp_fu_384_p0;
reg   [31:0] grp_fu_384_p1;
reg   [31:0] grp_fu_388_p0;
reg   [31:0] grp_fu_392_p0;
reg   [31:0] grp_fu_396_p0;
reg   [31:0] grp_fu_400_p0;
reg   [31:0] grp_fu_404_p0;
reg   [31:0] grp_fu_408_p0;
reg   [31:0] grp_fu_412_p0;
reg   [31:0] grp_fu_416_p0;
wire   [6:0] lshr_ln_fu_534_p4;
wire   [6:0] mul_ln175_fu_548_p0;
wire   [8:0] mul_ln175_fu_548_p1;
wire   [6:0] tmp_fu_570_p4;
wire   [7:0] tmp_1_fu_580_p3;
wire   [7:0] empty_21_fu_602_p2;
wire   [7:0] empty_24_fu_622_p2;
wire   [7:0] empty_31_fu_642_p2;
wire   [15:0] grp_fu_1208_p3;
wire   [15:0] grp_fu_1216_p3;
wire   [7:0] empty_34_fu_670_p2;
wire   [7:0] empty_37_fu_690_p2;
wire   [15:0] grp_fu_1224_p3;
wire   [15:0] grp_fu_1232_p3;
wire   [7:0] add_ln169_fu_718_p2;
wire   [15:0] grp_fu_1240_p4;
wire   [15:0] grp_fu_1250_p3;
wire   [7:0] empty_46_fu_746_p2;
wire   [7:0] empty_49_fu_766_p2;
wire   [15:0] grp_fu_1258_p3;
wire   [15:0] grp_fu_1266_p3;
wire   [7:0] empty_56_fu_794_p2;
wire   [15:0] grp_fu_1274_p4;
wire   [15:0] grp_fu_1284_p3;
wire   [7:0] empty_59_fu_822_p2;
wire   [7:0] empty_62_fu_842_p2;
wire   [15:0] grp_fu_1292_p3;
wire   [15:0] grp_fu_1300_p3;
wire   [7:0] empty_69_fu_870_p2;
wire   [15:0] grp_fu_1308_p4;
wire   [15:0] grp_fu_1318_p3;
wire   [15:0] grp_fu_1326_p3;
wire   [15:0] grp_fu_1334_p3;
wire   [15:0] grp_fu_1342_p4;
wire   [15:0] grp_fu_1352_p3;
wire   [5:0] mul_ln171_fu_976_p0;
wire   [8:0] mul_ln171_fu_976_p1;
wire   [5:0] mul_ln199_fu_985_p0;
wire   [8:0] mul_ln199_fu_985_p1;
wire   [5:0] mul_ln212_fu_994_p0;
wire   [8:0] mul_ln212_fu_994_p1;
wire   [5:0] empty_30_fu_1000_p2;
wire   [5:0] mul_ln225_fu_1010_p0;
wire   [8:0] mul_ln225_fu_1010_p1;
wire   [5:0] mul_ln238_fu_1019_p0;
wire   [8:0] mul_ln238_fu_1019_p1;
wire   [5:0] mul_ln251_fu_1028_p0;
wire   [8:0] mul_ln251_fu_1028_p1;
wire   [5:0] mul_ln264_fu_1037_p0;
wire   [8:0] mul_ln264_fu_1037_p1;
wire   [5:0] empty_43_fu_1043_p2;
wire   [5:0] mul_ln277_fu_1053_p0;
wire   [8:0] mul_ln277_fu_1053_p1;
wire   [1:0] trunc_ln169_fu_958_p1;
wire   [5:0] mul_ln171_1_fu_1118_p0;
wire   [8:0] mul_ln171_1_fu_1118_p1;
wire   [5:0] mul_ln186_fu_1127_p0;
wire   [8:0] mul_ln186_fu_1127_p1;
wire   [5:0] mul_ln199_1_fu_1136_p0;
wire   [8:0] mul_ln199_1_fu_1136_p1;
wire   [5:0] empty_55_fu_1142_p2;
wire   [5:0] mul_ln212_1_fu_1151_p0;
wire   [8:0] mul_ln212_1_fu_1151_p1;
wire   [5:0] mul_ln225_1_fu_1160_p0;
wire   [8:0] mul_ln225_1_fu_1160_p1;
wire   [5:0] mul_ln238_1_fu_1169_p0;
wire   [8:0] mul_ln238_1_fu_1169_p1;
wire   [5:0] mul_ln251_1_fu_1178_p0;
wire   [8:0] mul_ln251_1_fu_1178_p1;
wire   [5:0] empty_68_fu_1184_p2;
wire   [5:0] mul_ln264_1_fu_1193_p0;
wire   [8:0] mul_ln264_1_fu_1193_p1;
wire   [5:0] mul_ln277_1_fu_1202_p0;
wire   [8:0] mul_ln277_1_fu_1202_p1;
wire   [7:0] grp_fu_1208_p0;
wire   [7:0] grp_fu_1208_p1;
wire   [7:0] grp_fu_1208_p2;
wire   [7:0] grp_fu_1216_p0;
wire   [7:0] grp_fu_1216_p1;
wire   [7:0] grp_fu_1216_p2;
wire   [7:0] grp_fu_1224_p0;
wire   [7:0] grp_fu_1224_p1;
wire   [7:0] grp_fu_1224_p2;
wire   [7:0] grp_fu_1232_p0;
wire   [7:0] grp_fu_1232_p1;
wire   [7:0] grp_fu_1232_p2;
wire   [2:0] grp_fu_1240_p1;
wire   [7:0] grp_fu_1240_p2;
wire   [7:0] grp_fu_1240_p3;
wire   [7:0] grp_fu_1250_p0;
wire   [7:0] grp_fu_1250_p1;
wire   [7:0] grp_fu_1250_p2;
wire   [7:0] grp_fu_1258_p0;
wire   [7:0] grp_fu_1258_p1;
wire   [7:0] grp_fu_1258_p2;
wire   [7:0] grp_fu_1266_p0;
wire   [7:0] grp_fu_1266_p1;
wire   [7:0] grp_fu_1266_p2;
wire   [3:0] grp_fu_1274_p1;
wire   [7:0] grp_fu_1274_p2;
wire   [7:0] grp_fu_1274_p3;
wire   [7:0] grp_fu_1284_p0;
wire   [7:0] grp_fu_1284_p1;
wire   [7:0] grp_fu_1284_p2;
wire   [7:0] grp_fu_1292_p0;
wire   [7:0] grp_fu_1292_p1;
wire   [7:0] grp_fu_1292_p2;
wire   [7:0] grp_fu_1300_p0;
wire   [7:0] grp_fu_1300_p1;
wire   [7:0] grp_fu_1300_p2;
wire   [3:0] grp_fu_1308_p1;
wire   [7:0] grp_fu_1308_p2;
wire   [7:0] grp_fu_1308_p3;
wire   [7:0] grp_fu_1318_p0;
wire   [7:0] grp_fu_1318_p1;
wire   [7:0] grp_fu_1318_p2;
wire   [7:0] grp_fu_1326_p0;
wire   [7:0] grp_fu_1326_p1;
wire   [7:0] grp_fu_1326_p2;
wire   [7:0] grp_fu_1334_p0;
wire   [7:0] grp_fu_1334_p1;
wire   [7:0] grp_fu_1334_p2;
wire   [4:0] grp_fu_1342_p1;
wire   [7:0] grp_fu_1342_p2;
wire   [7:0] grp_fu_1342_p3;
wire   [7:0] grp_fu_1352_p0;
wire   [7:0] grp_fu_1352_p1;
wire   [7:0] grp_fu_1352_p2;
reg    grp_fu_384_ce;
wire    ap_CS_fsm_state18;
reg    grp_fu_388_ce;
reg    grp_fu_392_ce;
reg    grp_fu_396_ce;
reg    grp_fu_400_ce;
reg    grp_fu_404_ce;
reg    grp_fu_408_ce;
reg    grp_fu_412_ce;
reg    grp_fu_416_ce;
reg   [31:0] grp_fu_1859_p0;
reg   [31:0] grp_fu_1859_p1;
reg    grp_fu_1859_ce;
wire   [31:0] grp_fu_1863_p2;
reg   [31:0] grp_fu_1863_p0;
reg   [31:0] grp_fu_1863_p1;
reg    grp_fu_1863_ce;
wire   [31:0] grp_fu_1867_p2;
reg   [31:0] grp_fu_1867_p0;
reg   [31:0] grp_fu_1867_p1;
reg    grp_fu_1867_ce;
wire   [31:0] grp_fu_1871_p2;
reg   [31:0] grp_fu_1871_p0;
reg   [31:0] grp_fu_1871_p1;
reg    grp_fu_1871_ce;
wire   [31:0] grp_fu_1875_p2;
reg   [31:0] grp_fu_1875_p0;
reg   [31:0] grp_fu_1875_p1;
reg    grp_fu_1875_ce;
wire   [31:0] grp_fu_1879_p2;
reg   [31:0] grp_fu_1879_p0;
reg   [31:0] grp_fu_1879_p1;
reg    grp_fu_1879_ce;
reg   [31:0] grp_fu_1883_p0;
reg   [31:0] grp_fu_1883_p1;
reg    grp_fu_1883_ce;
reg   [31:0] grp_fu_1887_p0;
reg   [31:0] grp_fu_1887_p1;
reg    grp_fu_1887_ce;
wire   [31:0] grp_fu_1891_p2;
reg   [31:0] grp_fu_1891_p0;
reg   [31:0] grp_fu_1891_p1;
reg    grp_fu_1891_ce;
wire   [31:0] grp_fu_1895_p2;
reg   [31:0] grp_fu_1895_p0;
reg   [31:0] grp_fu_1895_p1;
reg    grp_fu_1895_ce;
wire   [31:0] grp_fu_1899_p2;
reg   [31:0] grp_fu_1899_p0;
reg   [31:0] grp_fu_1899_p1;
reg    grp_fu_1899_ce;
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
wire   [15:0] grp_fu_1208_p00;
wire   [15:0] grp_fu_1216_p00;
wire   [15:0] grp_fu_1224_p00;
wire   [15:0] grp_fu_1232_p00;
wire   [15:0] grp_fu_1250_p00;
wire   [15:0] grp_fu_1258_p00;
wire   [15:0] grp_fu_1266_p00;
wire   [15:0] grp_fu_1284_p00;
wire   [15:0] grp_fu_1292_p00;
wire   [15:0] grp_fu_1300_p00;
wire   [15:0] grp_fu_1318_p00;
wire   [15:0] grp_fu_1326_p00;
wire   [15:0] grp_fu_1334_p00;
wire   [15:0] grp_fu_1352_p00;
wire   [13:0] mul_ln171_1_fu_1118_p00;
wire   [13:0] mul_ln171_fu_976_p00;
wire   [14:0] mul_ln175_fu_548_p00;
wire   [13:0] mul_ln186_fu_1127_p00;
wire   [13:0] mul_ln199_1_fu_1136_p00;
wire   [13:0] mul_ln199_fu_985_p00;
wire   [13:0] mul_ln212_1_fu_1151_p00;
wire   [13:0] mul_ln212_fu_994_p00;
wire   [13:0] mul_ln225_1_fu_1160_p00;
wire   [13:0] mul_ln225_fu_1010_p00;
wire   [13:0] mul_ln238_1_fu_1169_p00;
wire   [13:0] mul_ln238_fu_1019_p00;
wire   [13:0] mul_ln251_1_fu_1178_p00;
wire   [13:0] mul_ln251_fu_1028_p00;
wire   [13:0] mul_ln264_1_fu_1193_p00;
wire   [13:0] mul_ln264_fu_1037_p00;
wire   [13:0] mul_ln277_1_fu_1202_p00;
wire   [13:0] mul_ln277_fu_1053_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start_reg = 1'b0;
#0 v114_fu_124 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_307(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_d1),.v225_3_q1(v225_3_q1),.mul_ln175(mul_ln175_reg_1416),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_1_ce1),.v227_1_q1(v227_1_q1),.mul_ln171(mul_ln171_reg_1717),.mul_ln225(mul_ln225_reg_1732),.mul_ln277(mul_ln277_reg_1752),.mul_ln199(mul_ln199_reg_1722),.mul_ln251(mul_ln251_reg_1742),.mul_ln238(mul_ln238_reg_1737),.mul_ln212(mul_ln212_reg_1727),.mul_ln264(mul_ln264_reg_1747),.icmp_ln171(icmp_ln171_reg_1763),.cmp11(cmp11_reg_1422),.empty(trunc_ln168_reg_1410),.v120(reg_452),.v133(reg_458),.v144(reg_464),.v155(reg_470),.v166(reg_476),.v177(reg_482),.v188(reg_488),.v199(reg_494),.v210(reg_500),.icmp_ln178(icmp_ln178_reg_1757),.grp_fu_1859_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1859_p_din0),.grp_fu_1859_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1859_p_din1),.grp_fu_1859_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1859_p_opcode),.grp_fu_1859_p_dout0(grp_fu_168_p_dout0),.grp_fu_1859_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1859_p_ce),.grp_fu_1863_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1863_p_din0),.grp_fu_1863_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1863_p_din1),.grp_fu_1863_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1863_p_opcode),.grp_fu_1863_p_dout0(grp_fu_1863_p2),.grp_fu_1863_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1863_p_ce),.grp_fu_1867_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1867_p_din0),.grp_fu_1867_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1867_p_din1),.grp_fu_1867_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1867_p_opcode),.grp_fu_1867_p_dout0(grp_fu_1867_p2),.grp_fu_1867_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1867_p_ce),.grp_fu_1871_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1871_p_din0),.grp_fu_1871_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1871_p_din1),.grp_fu_1871_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1871_p_opcode),.grp_fu_1871_p_dout0(grp_fu_1871_p2),.grp_fu_1871_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1871_p_ce),.grp_fu_1875_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1875_p_din0),.grp_fu_1875_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1875_p_din1),.grp_fu_1875_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1875_p_opcode),.grp_fu_1875_p_dout0(grp_fu_1875_p2),.grp_fu_1875_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1875_p_ce),.grp_fu_1879_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1879_p_din0),.grp_fu_1879_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1879_p_din1),.grp_fu_1879_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1879_p_opcode),.grp_fu_1879_p_dout0(grp_fu_1879_p2),.grp_fu_1879_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1879_p_ce),.grp_fu_1883_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1883_p_din0),.grp_fu_1883_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1883_p_din1),.grp_fu_1883_p_dout0(grp_fu_172_p_dout0),.grp_fu_1883_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1883_p_ce),.grp_fu_1887_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1887_p_din0),.grp_fu_1887_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1887_p_din1),.grp_fu_1887_p_dout0(grp_fu_176_p_dout0),.grp_fu_1887_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1887_p_ce),.grp_fu_1891_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1891_p_din0),.grp_fu_1891_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1891_p_din1),.grp_fu_1891_p_dout0(grp_fu_1891_p2),.grp_fu_1891_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1891_p_ce),.grp_fu_1895_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1895_p_din0),.grp_fu_1895_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1895_p_din1),.grp_fu_1895_p_dout0(grp_fu_1895_p2),.grp_fu_1895_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1895_p_ce),.grp_fu_1899_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1899_p_din0),.grp_fu_1899_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1899_p_din1),.grp_fu_1899_p_dout0(grp_fu_1899_p2),.grp_fu_1899_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1899_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_345(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_d1),.v225_3_q1(v225_3_q1),.mul_ln175(mul_ln175_reg_1416),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_1_ce1),.v227_1_q1(v227_1_q1),.mul_ln186(mul_ln186_reg_1819),.mul_ln212_1(mul_ln212_1_reg_1829),.mul_ln264_1(mul_ln264_1_reg_1849),.mul_ln238_1(mul_ln238_1_reg_1839),.mul_ln171_1(mul_ln171_1_reg_1814),.mul_ln225_1(mul_ln225_1_reg_1834),.mul_ln277_1(mul_ln277_1_reg_1854),.mul_ln199_1(mul_ln199_1_reg_1824),.mul_ln251_1(mul_ln251_1_reg_1844),.icmp_ln171(icmp_ln171_reg_1763),.cmp11(cmp11_reg_1422),.empty(trunc_ln168_reg_1410),.v120_1(reg_452),.v133_1(reg_458),.v144_1(reg_464),.v155_1(reg_470),.v166_1(reg_476),.v177_1(reg_482),.v188_1(reg_488),.v199_1(reg_494),.v210_1(reg_500),.icmp_ln178(icmp_ln178_reg_1757),.grp_fu_1859_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1859_p_din0),.grp_fu_1859_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1859_p_din1),.grp_fu_1859_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1859_p_opcode),.grp_fu_1859_p_dout0(grp_fu_168_p_dout0),.grp_fu_1859_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1859_p_ce),.grp_fu_1863_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1863_p_din0),.grp_fu_1863_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1863_p_din1),.grp_fu_1863_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1863_p_opcode),.grp_fu_1863_p_dout0(grp_fu_1863_p2),.grp_fu_1863_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1863_p_ce),.grp_fu_1867_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1867_p_din0),.grp_fu_1867_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1867_p_din1),.grp_fu_1867_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1867_p_opcode),.grp_fu_1867_p_dout0(grp_fu_1867_p2),.grp_fu_1867_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1867_p_ce),.grp_fu_1871_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1871_p_din0),.grp_fu_1871_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1871_p_din1),.grp_fu_1871_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1871_p_opcode),.grp_fu_1871_p_dout0(grp_fu_1871_p2),.grp_fu_1871_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1871_p_ce),.grp_fu_1875_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1875_p_din0),.grp_fu_1875_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1875_p_din1),.grp_fu_1875_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1875_p_opcode),.grp_fu_1875_p_dout0(grp_fu_1875_p2),.grp_fu_1875_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1875_p_ce),.grp_fu_1879_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1879_p_din0),.grp_fu_1879_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1879_p_din1),.grp_fu_1879_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1879_p_opcode),.grp_fu_1879_p_dout0(grp_fu_1879_p2),.grp_fu_1879_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1879_p_ce),.grp_fu_1883_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1883_p_din0),.grp_fu_1883_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1883_p_din1),.grp_fu_1883_p_dout0(grp_fu_172_p_dout0),.grp_fu_1883_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1883_p_ce),.grp_fu_1887_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1887_p_din0),.grp_fu_1887_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1887_p_din1),.grp_fu_1887_p_dout0(grp_fu_176_p_dout0),.grp_fu_1887_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1887_p_ce),.grp_fu_1891_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1891_p_din0),.grp_fu_1891_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1891_p_din1),.grp_fu_1891_p_dout0(grp_fu_1891_p2),.grp_fu_1891_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1891_p_ce),.grp_fu_1895_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1895_p_din0),.grp_fu_1895_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1895_p_din1),.grp_fu_1895_p_dout0(grp_fu_1895_p2),.grp_fu_1895_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1895_p_ce),.grp_fu_1899_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1899_p_din0),.grp_fu_1899_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1899_p_din1),.grp_fu_1899_p_dout0(grp_fu_1899_p2),.grp_fu_1899_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1899_p_ce),.grp_fu_384_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_384_p_din0),.grp_fu_384_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_384_p_din1),.grp_fu_384_p_dout0(grp_fu_384_p2),.grp_fu_384_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_384_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_384_p0),.din1(grp_fu_384_p1),.ce(grp_fu_384_ce),.dout(grp_fu_384_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U86(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_388_p0),.din1(v113),.ce(grp_fu_388_ce),.dout(grp_fu_388_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U87(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_392_p0),.din1(v113),.ce(grp_fu_392_ce),.dout(grp_fu_392_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U88(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_396_p0),.din1(v113),.ce(grp_fu_396_ce),.dout(grp_fu_396_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U89(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_400_p0),.din1(v113),.ce(grp_fu_400_ce),.dout(grp_fu_400_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U90(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_404_p0),.din1(v113),.ce(grp_fu_404_ce),.dout(grp_fu_404_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U91(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_408_p0),.din1(v113),.ce(grp_fu_408_ce),.dout(grp_fu_408_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U92(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_412_p0),.din1(v113),.ce(grp_fu_412_ce),.dout(grp_fu_412_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_416_p0),.din1(v113),.ce(grp_fu_416_ce),.dout(grp_fu_416_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U94(.din0(mul_ln175_fu_548_p0),.din1(mul_ln175_fu_548_p1),.dout(mul_ln175_fu_548_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U95(.din0(mul_ln171_fu_976_p0),.din1(mul_ln171_fu_976_p1),.dout(mul_ln171_fu_976_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U96(.din0(mul_ln199_fu_985_p0),.din1(mul_ln199_fu_985_p1),.dout(mul_ln199_fu_985_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U97(.din0(mul_ln212_fu_994_p0),.din1(mul_ln212_fu_994_p1),.dout(mul_ln212_fu_994_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U98(.din0(mul_ln225_fu_1010_p0),.din1(mul_ln225_fu_1010_p1),.dout(mul_ln225_fu_1010_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U99(.din0(mul_ln238_fu_1019_p0),.din1(mul_ln238_fu_1019_p1),.dout(mul_ln238_fu_1019_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U100(.din0(mul_ln251_fu_1028_p0),.din1(mul_ln251_fu_1028_p1),.dout(mul_ln251_fu_1028_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U101(.din0(mul_ln264_fu_1037_p0),.din1(mul_ln264_fu_1037_p1),.dout(mul_ln264_fu_1037_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U102(.din0(mul_ln277_fu_1053_p0),.din1(mul_ln277_fu_1053_p1),.dout(mul_ln277_fu_1053_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U103(.din0(mul_ln171_1_fu_1118_p0),.din1(mul_ln171_1_fu_1118_p1),.dout(mul_ln171_1_fu_1118_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U104(.din0(mul_ln186_fu_1127_p0),.din1(mul_ln186_fu_1127_p1),.dout(mul_ln186_fu_1127_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U105(.din0(mul_ln199_1_fu_1136_p0),.din1(mul_ln199_1_fu_1136_p1),.dout(mul_ln199_1_fu_1136_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U106(.din0(mul_ln212_1_fu_1151_p0),.din1(mul_ln212_1_fu_1151_p1),.dout(mul_ln212_1_fu_1151_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U107(.din0(mul_ln225_1_fu_1160_p0),.din1(mul_ln225_1_fu_1160_p1),.dout(mul_ln225_1_fu_1160_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U108(.din0(mul_ln238_1_fu_1169_p0),.din1(mul_ln238_1_fu_1169_p1),.dout(mul_ln238_1_fu_1169_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U109(.din0(mul_ln251_1_fu_1178_p0),.din1(mul_ln251_1_fu_1178_p1),.dout(mul_ln251_1_fu_1178_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U110(.din0(mul_ln264_1_fu_1193_p0),.din1(mul_ln264_1_fu_1193_p1),.dout(mul_ln264_1_fu_1193_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U111(.din0(mul_ln277_1_fu_1202_p0),.din1(mul_ln277_1_fu_1202_p1),.dout(mul_ln277_1_fu_1202_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U112(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1208_p0),.din1(grp_fu_1208_p1),.din2(grp_fu_1208_p2),.ce(1'b1),.dout(grp_fu_1208_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U113(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1216_p0),.din1(grp_fu_1216_p1),.din2(grp_fu_1216_p2),.ce(1'b1),.dout(grp_fu_1216_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U114(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1224_p0),.din1(grp_fu_1224_p1),.din2(grp_fu_1224_p2),.ce(1'b1),.dout(grp_fu_1224_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U115(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1232_p0),.din1(grp_fu_1232_p1),.din2(grp_fu_1232_p2),.ce(1'b1),.dout(grp_fu_1232_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U116(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_295),.din1(grp_fu_1240_p1),.din2(grp_fu_1240_p2),.din3(grp_fu_1240_p3),.ce(1'b1),.dout(grp_fu_1240_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U117(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1250_p0),.din1(grp_fu_1250_p1),.din2(grp_fu_1250_p2),.ce(1'b1),.dout(grp_fu_1250_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U118(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1258_p0),.din1(grp_fu_1258_p1),.din2(grp_fu_1258_p2),.ce(1'b1),.dout(grp_fu_1258_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U119(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1266_p0),.din1(grp_fu_1266_p1),.din2(grp_fu_1266_p2),.ce(1'b1),.dout(grp_fu_1266_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U120(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_295),.din1(grp_fu_1274_p1),.din2(grp_fu_1274_p2),.din3(grp_fu_1274_p3),.ce(1'b1),.dout(grp_fu_1274_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U121(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1284_p0),.din1(grp_fu_1284_p1),.din2(grp_fu_1284_p2),.ce(1'b1),.dout(grp_fu_1284_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U122(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1292_p0),.din1(grp_fu_1292_p1),.din2(grp_fu_1292_p2),.ce(1'b1),.dout(grp_fu_1292_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U123(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1300_p0),.din1(grp_fu_1300_p1),.din2(grp_fu_1300_p2),.ce(1'b1),.dout(grp_fu_1300_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U124(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_295),.din1(grp_fu_1308_p1),.din2(grp_fu_1308_p2),.din3(grp_fu_1308_p3),.ce(1'b1),.dout(grp_fu_1308_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U125(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1318_p0),.din1(grp_fu_1318_p1),.din2(grp_fu_1318_p2),.ce(1'b1),.dout(grp_fu_1318_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U126(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1326_p0),.din1(grp_fu_1326_p1),.din2(grp_fu_1326_p2),.ce(1'b1),.dout(grp_fu_1326_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U127(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1334_p0),.din1(grp_fu_1334_p1),.din2(grp_fu_1334_p2),.ce(1'b1),.dout(grp_fu_1334_p3));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U128(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_295),.din1(grp_fu_1342_p1),.din2(grp_fu_1342_p2),.din3(grp_fu_1342_p3),.ce(1'b1),.dout(grp_fu_1342_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U129(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1352_p0),.din1(grp_fu_1352_p1),.din2(grp_fu_1352_p2),.ce(1'b1),.dout(grp_fu_1352_p3));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U131(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1863_p0),.din1(grp_fu_1863_p1),.ce(grp_fu_1863_ce),.dout(grp_fu_1863_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U132(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1867_p0),.din1(grp_fu_1867_p1),.ce(grp_fu_1867_ce),.dout(grp_fu_1867_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U133(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1871_p0),.din1(grp_fu_1871_p1),.ce(grp_fu_1871_ce),.dout(grp_fu_1871_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U134(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1875_p0),.din1(grp_fu_1875_p1),.ce(grp_fu_1875_ce),.dout(grp_fu_1875_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U135(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1879_p0),.din1(grp_fu_1879_p1),.ce(grp_fu_1879_ce),.dout(grp_fu_1879_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U138(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1891_p0),.din1(grp_fu_1891_p1),.ce(grp_fu_1891_ce),.dout(grp_fu_1891_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U139(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1895_p0),.din1(grp_fu_1895_p1),.ce(grp_fu_1895_ce),.dout(grp_fu_1895_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U140(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1899_p0),.din1(grp_fu_1899_p1),.ce(grp_fu_1899_ce),.dout(grp_fu_1899_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_124 <= 8'd0;
    end else if (((icmp_ln169_fu_560_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_124 <= add_ln168_reg_1383;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_514_p2 == 1'd0))) begin
        v115_reg_295 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        v115_reg_295 <= add_ln169_1_reg_1441;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_1383 <= add_ln168_fu_520_p2;
        cmp11_reg_1422 <= cmp11_fu_554_p2;
        mul_ln175_reg_1416 <= mul_ln175_fu_548_p2;
        trunc_ln168_reg_1410 <= trunc_ln168_fu_530_p1;
        zext_ln168_reg_1388[7 : 0] <= zext_ln168_fu_526_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_1_reg_1441 <= add_ln169_1_fu_592_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        icmp_ln171_reg_1763 <= icmp_ln171_fu_1065_p2;
        icmp_ln178_reg_1757 <= icmp_ln178_fu_1059_p2;
        lshr_ln1_reg_1711 <= {{v115_reg_295[7:2]}};
        mul_ln171_reg_1717 <= mul_ln171_fu_976_p2;
        mul_ln199_reg_1722 <= mul_ln199_fu_985_p2;
        mul_ln212_reg_1727 <= mul_ln212_fu_994_p2;
        mul_ln225_reg_1732 <= mul_ln225_fu_1010_p2;
        mul_ln238_reg_1737 <= mul_ln238_fu_1019_p2;
        mul_ln251_reg_1742 <= mul_ln251_fu_1028_p2;
        mul_ln264_reg_1747 <= mul_ln264_fu_1037_p2;
        mul_ln277_reg_1752 <= mul_ln277_fu_1053_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_ln171_1_reg_1814 <= mul_ln171_1_fu_1118_p2;
        mul_ln186_reg_1819 <= mul_ln186_fu_1127_p2;
        mul_ln199_1_reg_1824 <= mul_ln199_1_fu_1136_p2;
        mul_ln212_1_reg_1829 <= mul_ln212_1_fu_1151_p2;
        mul_ln225_1_reg_1834 <= mul_ln225_1_fu_1160_p2;
        mul_ln238_1_reg_1839 <= mul_ln238_1_fu_1169_p2;
        mul_ln251_1_reg_1844 <= mul_ln251_1_fu_1178_p2;
        mul_ln264_1_reg_1849 <= mul_ln264_1_fu_1193_p2;
        mul_ln277_1_reg_1854 <= mul_ln277_1_fu_1202_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_420 <= v226_q1;
        reg_424 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_428 <= v226_q1;
        reg_432 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_436 <= v226_q1;
        reg_440 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_444 <= v226_q1;
        reg_448 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_452 <= grp_fu_384_p2;
        reg_458 <= grp_fu_388_p2;
        reg_464 <= grp_fu_392_p2;
        reg_470 <= grp_fu_396_p2;
        reg_476 <= grp_fu_400_p2;
        reg_482 <= grp_fu_404_p2;
        reg_488 <= grp_fu_408_p2;
        reg_494 <= grp_fu_412_p2;
        reg_500 <= grp_fu_416_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_11_reg_1541 <= {{empty_46_fu_746_p2[7:2]}};
        tmp_12_reg_1551 <= {{empty_49_fu_766_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_13_reg_1571 <= {{empty_56_fu_794_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp_14_reg_1591 <= {{empty_59_fu_822_p2[7:2]}};
        tmp_15_reg_1601 <= {{empty_62_fu_842_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_16_reg_1631 <= {{empty_69_fu_870_p2[7:2]}};
        v226_load_8_reg_1606 <= v226_q1;
        v226_load_9_reg_1611 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_2_reg_1451 <= {{empty_21_fu_602_p2[7:2]}};
        tmp_3_reg_1461 <= {{empty_24_fu_622_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_4_reg_1471 <= {{empty_31_fu_642_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_5_reg_1491 <= {{empty_34_fu_670_p2[7:2]}};
        tmp_6_reg_1501 <= {{empty_37_fu_690_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_s_reg_1521 <= {{add_ln169_fu_718_p2[7:2]}};
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_514_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_514_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1859_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1859_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1859_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1859_p_ce;
    end else begin
        grp_fu_1859_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1859_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1859_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1859_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1859_p_din0;
    end else begin
        grp_fu_1859_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1859_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1859_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1859_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1859_p_din1;
    end else begin
        grp_fu_1859_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1863_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1863_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1863_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1863_p_ce;
    end else begin
        grp_fu_1863_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1863_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1863_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1863_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1863_p_din0;
    end else begin
        grp_fu_1863_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1863_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1863_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1863_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1863_p_din1;
    end else begin
        grp_fu_1863_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1867_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1867_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1867_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1867_p_ce;
    end else begin
        grp_fu_1867_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1867_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1867_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1867_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1867_p_din0;
    end else begin
        grp_fu_1867_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1867_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1867_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1867_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1867_p_din1;
    end else begin
        grp_fu_1867_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1871_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1871_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1871_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1871_p_ce;
    end else begin
        grp_fu_1871_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1871_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1871_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1871_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1871_p_din0;
    end else begin
        grp_fu_1871_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1871_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1871_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1871_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1871_p_din1;
    end else begin
        grp_fu_1871_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1875_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1875_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1875_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1875_p_ce;
    end else begin
        grp_fu_1875_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1875_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1875_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1875_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1875_p_din0;
    end else begin
        grp_fu_1875_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1875_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1875_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1875_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1875_p_din1;
    end else begin
        grp_fu_1875_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1879_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1879_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1879_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1879_p_ce;
    end else begin
        grp_fu_1879_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1879_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1879_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1879_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1879_p_din0;
    end else begin
        grp_fu_1879_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1879_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1879_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1879_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1879_p_din1;
    end else begin
        grp_fu_1879_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1883_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1883_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1883_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1883_p_ce;
    end else begin
        grp_fu_1883_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1883_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1883_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1883_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1883_p_din0;
    end else begin
        grp_fu_1883_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1883_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1883_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1883_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1883_p_din1;
    end else begin
        grp_fu_1883_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1887_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1887_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1887_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1887_p_ce;
    end else begin
        grp_fu_1887_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1887_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1887_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1887_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1887_p_din0;
    end else begin
        grp_fu_1887_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1887_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1887_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1887_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1887_p_din1;
    end else begin
        grp_fu_1887_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1891_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1891_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1891_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1891_p_ce;
    end else begin
        grp_fu_1891_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1891_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1891_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1891_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1891_p_din0;
    end else begin
        grp_fu_1891_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1891_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1891_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1891_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1891_p_din1;
    end else begin
        grp_fu_1891_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1895_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1895_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1895_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1895_p_ce;
    end else begin
        grp_fu_1895_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1895_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1895_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1895_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1895_p_din0;
    end else begin
        grp_fu_1895_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1895_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1895_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1895_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1895_p_din1;
    end else begin
        grp_fu_1895_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1899_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1899_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1899_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1899_p_ce;
    end else begin
        grp_fu_1899_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1899_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1899_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1899_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1899_p_din0;
    end else begin
        grp_fu_1899_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1899_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1899_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1899_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_grp_fu_1899_p_din1;
    end else begin
        grp_fu_1899_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_384_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_384_p_ce;
    end else if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_384_ce = 1'b1;
    end else begin
        grp_fu_384_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_384_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_384_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_384_p0 = v119_1_fu_1071_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_384_p0 = v119_fu_890_p1;
    end else begin
        grp_fu_384_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_384_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_384_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_384_p1 = v113;
    end else begin
        grp_fu_384_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_388_ce = 1'b1;
    end else begin
        grp_fu_388_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_388_p0 = v132_1_fu_1075_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_388_p0 = v132_fu_895_p1;
    end else begin
        grp_fu_388_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_392_ce = 1'b1;
    end else begin
        grp_fu_392_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_392_p0 = v143_1_fu_1080_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_392_p0 = v143_fu_900_p1;
    end else begin
        grp_fu_392_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_396_ce = 1'b1;
    end else begin
        grp_fu_396_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_396_p0 = v154_1_fu_1085_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_396_p0 = v154_fu_905_p1;
    end else begin
        grp_fu_396_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_400_ce = 1'b1;
    end else begin
        grp_fu_400_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_400_p0 = v165_1_fu_1090_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_400_p0 = v165_fu_910_p1;
    end else begin
        grp_fu_400_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_404_ce = 1'b1;
    end else begin
        grp_fu_404_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_404_p0 = v176_1_fu_1095_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_404_p0 = v176_fu_915_p1;
    end else begin
        grp_fu_404_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_408_ce = 1'b1;
    end else begin
        grp_fu_408_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_408_p0 = v187_1_fu_1100_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_408_p0 = v187_fu_920_p1;
    end else begin
        grp_fu_408_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_412_ce = 1'b1;
    end else begin
        grp_fu_412_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_412_p0 = v198_1_fu_1105_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_412_p0 = v198_fu_925_p1;
    end else begin
        grp_fu_412_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_416_ce = 1'b1;
    end else begin
        grp_fu_416_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_416_p0 = v209_1_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_416_p0 = v209_fu_930_p1;
    end else begin
        grp_fu_416_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_address0;
    end else begin
        v225_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_address1;
    end else begin
        v225_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_ce0;
    end else begin
        v225_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_ce1;
    end else begin
        v225_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_d0;
    end else begin
        v225_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_d1;
    end else begin
        v225_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_we0;
    end else begin
        v225_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_0_we1;
    end else begin
        v225_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_address0;
    end else begin
        v225_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_address1;
    end else begin
        v225_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_ce0;
    end else begin
        v225_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_ce1;
    end else begin
        v225_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_d0;
    end else begin
        v225_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_d1;
    end else begin
        v225_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_we0;
    end else begin
        v225_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_1_we1;
    end else begin
        v225_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_address0;
    end else begin
        v225_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_address1;
    end else begin
        v225_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_ce0;
    end else begin
        v225_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_ce1;
    end else begin
        v225_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_d0;
    end else begin
        v225_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_d1;
    end else begin
        v225_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_we0;
    end else begin
        v225_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_2_we1;
    end else begin
        v225_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_address0;
    end else begin
        v225_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_address1;
    end else begin
        v225_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_ce0;
    end else begin
        v225_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_ce1;
    end else begin
        v225_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_d0;
    end else begin
        v225_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_d1;
    end else begin
        v225_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_we0;
    end else begin
        v225_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v225_3_we1;
    end else begin
        v225_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_address0_local = p_cast4008_fu_954_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_address0_local = p_cast4006_fu_946_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_address0_local = p_cast4004_fu_938_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_address0_local = p_cast4002_fu_866_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast4000_fu_818_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast3998_fu_790_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast3996_fu_742_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast3994_fu_714_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast_fu_666_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_address1_local = p_cast4007_fu_950_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_address1_local = p_cast4005_fu_942_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_address1_local = p_cast4003_fu_934_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_address1_local = p_cast4001_fu_862_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast3999_fu_814_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast3997_fu_786_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast3995_fu_738_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast3993_fu_710_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address1_local = p_cast3992_fu_662_p1;
    end else begin
        v226_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_ce0_local = 1'b1;
    end else begin
        v226_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_ce1_local = 1'b1;
    end else begin
        v226_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_0_address0;
    end else begin
        v227_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_0_address1;
    end else begin
        v227_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_0_ce0;
    end else begin
        v227_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_0_ce1;
    end else begin
        v227_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_1_address0;
    end else begin
        v227_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_1_address1;
    end else begin
        v227_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_1_ce0;
    end else begin
        v227_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_v227_1_ce1;
    end else begin
        v227_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_514_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_514_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_514_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_514_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_560_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
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
assign add_ln168_fu_520_p2 = (v114_fu_124 + 8'd1);
assign add_ln169_1_fu_592_p2 = (v115_reg_295 + 8'd18);
assign add_ln169_fu_718_p2 = (v115_reg_295 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_514_p2 == 1'd1));
end
assign cmp11_fu_554_p2 = ((v114_fu_124 == 8'd0) ? 1'b1 : 1'b0);
assign empty_21_fu_602_p2 = (v115_reg_295 + 8'd2);
assign empty_24_fu_622_p2 = (v115_reg_295 + 8'd3);
assign empty_30_fu_1000_p2 = (lshr_ln1_fu_962_p4 + 6'd1);
assign empty_31_fu_642_p2 = (v115_reg_295 + 8'd5);
assign empty_34_fu_670_p2 = (v115_reg_295 + 8'd6);
assign empty_37_fu_690_p2 = (v115_reg_295 + 8'd7);
assign empty_43_fu_1043_p2 = (lshr_ln1_fu_962_p4 + 6'd2);
assign empty_46_fu_746_p2 = (v115_reg_295 + 8'd10);
assign empty_49_fu_766_p2 = (v115_reg_295 + 8'd11);
assign empty_55_fu_1142_p2 = (lshr_ln1_reg_1711 + 6'd3);
assign empty_56_fu_794_p2 = (v115_reg_295 + 8'd13);
assign empty_59_fu_822_p2 = (v115_reg_295 + 8'd14);
assign empty_62_fu_842_p2 = (v115_reg_295 + 8'd15);
assign empty_68_fu_1184_p2 = (lshr_ln1_reg_1711 + 6'd4);
assign empty_69_fu_870_p2 = (v115_reg_295 + 8'd17);
assign grp_fu_1208_p0 = grp_fu_1208_p00;
assign grp_fu_1208_p00 = v115_reg_295;
assign grp_fu_1208_p1 = 16'd210;
assign grp_fu_1208_p2 = zext_ln168_reg_1388;
assign grp_fu_1216_p0 = grp_fu_1216_p00;
assign grp_fu_1216_p00 = tmp_1_fu_580_p3;
assign grp_fu_1216_p1 = 16'd210;
assign grp_fu_1216_p2 = zext_ln168_reg_1388;
assign grp_fu_1224_p0 = grp_fu_1224_p00;
assign grp_fu_1224_p00 = empty_21_fu_602_p2;
assign grp_fu_1224_p1 = 16'd210;
assign grp_fu_1224_p2 = zext_ln168_reg_1388;
assign grp_fu_1232_p0 = grp_fu_1232_p00;
assign grp_fu_1232_p00 = empty_24_fu_622_p2;
assign grp_fu_1232_p1 = 16'd210;
assign grp_fu_1232_p2 = zext_ln168_reg_1388;
assign grp_fu_1240_p1 = 8'd4;
assign grp_fu_1240_p2 = 16'd210;
assign grp_fu_1240_p3 = zext_ln168_reg_1388;
assign grp_fu_1250_p0 = grp_fu_1250_p00;
assign grp_fu_1250_p00 = empty_31_fu_642_p2;
assign grp_fu_1250_p1 = 16'd210;
assign grp_fu_1250_p2 = zext_ln168_reg_1388;
assign grp_fu_1258_p0 = grp_fu_1258_p00;
assign grp_fu_1258_p00 = empty_34_fu_670_p2;
assign grp_fu_1258_p1 = 16'd210;
assign grp_fu_1258_p2 = zext_ln168_reg_1388;
assign grp_fu_1266_p0 = grp_fu_1266_p00;
assign grp_fu_1266_p00 = empty_37_fu_690_p2;
assign grp_fu_1266_p1 = 16'd210;
assign grp_fu_1266_p2 = zext_ln168_reg_1388;
assign grp_fu_1274_p1 = 8'd8;
assign grp_fu_1274_p2 = 16'd210;
assign grp_fu_1274_p3 = zext_ln168_reg_1388;
assign grp_fu_1284_p0 = grp_fu_1284_p00;
assign grp_fu_1284_p00 = add_ln169_fu_718_p2;
assign grp_fu_1284_p1 = 16'd210;
assign grp_fu_1284_p2 = zext_ln168_reg_1388;
assign grp_fu_1292_p0 = grp_fu_1292_p00;
assign grp_fu_1292_p00 = empty_46_fu_746_p2;
assign grp_fu_1292_p1 = 16'd210;
assign grp_fu_1292_p2 = zext_ln168_reg_1388;
assign grp_fu_1300_p0 = grp_fu_1300_p00;
assign grp_fu_1300_p00 = empty_49_fu_766_p2;
assign grp_fu_1300_p1 = 16'd210;
assign grp_fu_1300_p2 = zext_ln168_reg_1388;
assign grp_fu_1308_p1 = 8'd12;
assign grp_fu_1308_p2 = 16'd210;
assign grp_fu_1308_p3 = zext_ln168_reg_1388;
assign grp_fu_1318_p0 = grp_fu_1318_p00;
assign grp_fu_1318_p00 = empty_56_fu_794_p2;
assign grp_fu_1318_p1 = 16'd210;
assign grp_fu_1318_p2 = zext_ln168_reg_1388;
assign grp_fu_1326_p0 = grp_fu_1326_p00;
assign grp_fu_1326_p00 = empty_59_fu_822_p2;
assign grp_fu_1326_p1 = 16'd210;
assign grp_fu_1326_p2 = zext_ln168_reg_1388;
assign grp_fu_1334_p0 = grp_fu_1334_p00;
assign grp_fu_1334_p00 = empty_62_fu_842_p2;
assign grp_fu_1334_p1 = 16'd210;
assign grp_fu_1334_p2 = zext_ln168_reg_1388;
assign grp_fu_1342_p1 = 8'd16;
assign grp_fu_1342_p2 = 16'd210;
assign grp_fu_1342_p3 = zext_ln168_reg_1388;
assign grp_fu_1352_p0 = grp_fu_1352_p00;
assign grp_fu_1352_p00 = empty_69_fu_870_p2;
assign grp_fu_1352_p1 = 16'd210;
assign grp_fu_1352_p2 = zext_ln168_reg_1388;
assign grp_fu_168_p_ce = grp_fu_1859_ce;
assign grp_fu_168_p_din0 = grp_fu_1859_p0;
assign grp_fu_168_p_din1 = grp_fu_1859_p1;
assign grp_fu_168_p_opcode = 2'd0;
assign grp_fu_172_p_ce = grp_fu_1883_ce;
assign grp_fu_172_p_din0 = grp_fu_1883_p0;
assign grp_fu_172_p_din1 = grp_fu_1883_p1;
assign grp_fu_176_p_ce = grp_fu_1887_ce;
assign grp_fu_176_p_din0 = grp_fu_1887_p0;
assign grp_fu_176_p_din1 = grp_fu_1887_p1;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_307_ap_start_reg;
assign icmp_ln168_fu_514_p2 = ((v114_fu_124 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_560_p2 = ((v115_reg_295 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln171_fu_1065_p2 = ((trunc_ln169_fu_958_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln178_fu_1059_p2 = ((trunc_ln169_fu_958_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_962_p4 = {{v115_reg_295[7:2]}};
assign lshr_ln_fu_534_p4 = {{v114_fu_124[7:1]}};
assign mul_ln171_1_fu_1118_p0 = mul_ln171_1_fu_1118_p00;
assign mul_ln171_1_fu_1118_p00 = tmp_s_reg_1521;
assign mul_ln171_1_fu_1118_p1 = 14'd190;
assign mul_ln171_fu_976_p0 = mul_ln171_fu_976_p00;
assign mul_ln171_fu_976_p00 = lshr_ln1_fu_962_p4;
assign mul_ln171_fu_976_p1 = 14'd190;
assign mul_ln175_fu_548_p0 = mul_ln175_fu_548_p00;
assign mul_ln175_fu_548_p00 = lshr_ln_fu_534_p4;
assign mul_ln175_fu_548_p1 = 15'd190;
assign mul_ln186_fu_1127_p0 = mul_ln186_fu_1127_p00;
assign mul_ln186_fu_1127_p00 = tmp_11_reg_1541;
assign mul_ln186_fu_1127_p1 = 14'd190;
assign mul_ln199_1_fu_1136_p0 = mul_ln199_1_fu_1136_p00;
assign mul_ln199_1_fu_1136_p00 = tmp_12_reg_1551;
assign mul_ln199_1_fu_1136_p1 = 14'd190;
assign mul_ln199_fu_985_p0 = mul_ln199_fu_985_p00;
assign mul_ln199_fu_985_p00 = tmp_2_reg_1451;
assign mul_ln199_fu_985_p1 = 14'd190;
assign mul_ln212_1_fu_1151_p0 = mul_ln212_1_fu_1151_p00;
assign mul_ln212_1_fu_1151_p00 = empty_55_fu_1142_p2;
assign mul_ln212_1_fu_1151_p1 = 14'd190;
assign mul_ln212_fu_994_p0 = mul_ln212_fu_994_p00;
assign mul_ln212_fu_994_p00 = tmp_3_reg_1461;
assign mul_ln212_fu_994_p1 = 14'd190;
assign mul_ln225_1_fu_1160_p0 = mul_ln225_1_fu_1160_p00;
assign mul_ln225_1_fu_1160_p00 = tmp_13_reg_1571;
assign mul_ln225_1_fu_1160_p1 = 14'd190;
assign mul_ln225_fu_1010_p0 = mul_ln225_fu_1010_p00;
assign mul_ln225_fu_1010_p00 = empty_30_fu_1000_p2;
assign mul_ln225_fu_1010_p1 = 14'd190;
assign mul_ln238_1_fu_1169_p0 = mul_ln238_1_fu_1169_p00;
assign mul_ln238_1_fu_1169_p00 = tmp_14_reg_1591;
assign mul_ln238_1_fu_1169_p1 = 14'd190;
assign mul_ln238_fu_1019_p0 = mul_ln238_fu_1019_p00;
assign mul_ln238_fu_1019_p00 = tmp_4_reg_1471;
assign mul_ln238_fu_1019_p1 = 14'd190;
assign mul_ln251_1_fu_1178_p0 = mul_ln251_1_fu_1178_p00;
assign mul_ln251_1_fu_1178_p00 = tmp_15_reg_1601;
assign mul_ln251_1_fu_1178_p1 = 14'd190;
assign mul_ln251_fu_1028_p0 = mul_ln251_fu_1028_p00;
assign mul_ln251_fu_1028_p00 = tmp_5_reg_1491;
assign mul_ln251_fu_1028_p1 = 14'd190;
assign mul_ln264_1_fu_1193_p0 = mul_ln264_1_fu_1193_p00;
assign mul_ln264_1_fu_1193_p00 = empty_68_fu_1184_p2;
assign mul_ln264_1_fu_1193_p1 = 14'd190;
assign mul_ln264_fu_1037_p0 = mul_ln264_fu_1037_p00;
assign mul_ln264_fu_1037_p00 = tmp_6_reg_1501;
assign mul_ln264_fu_1037_p1 = 14'd190;
assign mul_ln277_1_fu_1202_p0 = mul_ln277_1_fu_1202_p00;
assign mul_ln277_1_fu_1202_p00 = tmp_16_reg_1631;
assign mul_ln277_1_fu_1202_p1 = 14'd190;
assign mul_ln277_fu_1053_p0 = mul_ln277_fu_1053_p00;
assign mul_ln277_fu_1053_p00 = empty_43_fu_1043_p2;
assign mul_ln277_fu_1053_p1 = 14'd190;
assign p_cast3992_fu_662_p1 = grp_fu_1208_p3;
assign p_cast3993_fu_710_p1 = grp_fu_1224_p3;
assign p_cast3994_fu_714_p1 = grp_fu_1232_p3;
assign p_cast3995_fu_738_p1 = grp_fu_1240_p4;
assign p_cast3996_fu_742_p1 = grp_fu_1250_p3;
assign p_cast3997_fu_786_p1 = grp_fu_1258_p3;
assign p_cast3998_fu_790_p1 = grp_fu_1266_p3;
assign p_cast3999_fu_814_p1 = grp_fu_1274_p4;
assign p_cast4000_fu_818_p1 = grp_fu_1284_p3;
assign p_cast4001_fu_862_p1 = grp_fu_1292_p3;
assign p_cast4002_fu_866_p1 = grp_fu_1300_p3;
assign p_cast4003_fu_934_p1 = grp_fu_1308_p4;
assign p_cast4004_fu_938_p1 = grp_fu_1318_p3;
assign p_cast4005_fu_942_p1 = grp_fu_1326_p3;
assign p_cast4006_fu_946_p1 = grp_fu_1334_p3;
assign p_cast4007_fu_950_p1 = grp_fu_1342_p4;
assign p_cast4008_fu_954_p1 = grp_fu_1352_p3;
assign p_cast_fu_666_p1 = grp_fu_1216_p3;
assign tmp_1_fu_580_p3 = {{tmp_fu_570_p4}, {1'd1}};
assign tmp_fu_570_p4 = {{v115_reg_295[7:1]}};
assign trunc_ln168_fu_530_p1 = v114_fu_124[0:0];
assign trunc_ln169_fu_958_p1 = v115_reg_295[1:0];
assign v119_1_fu_1071_p1 = v226_load_9_reg_1611;
assign v119_fu_890_p1 = reg_420;
assign v132_1_fu_1075_p1 = reg_420;
assign v132_fu_895_p1 = reg_424;
assign v143_1_fu_1080_p1 = reg_424;
assign v143_fu_900_p1 = reg_428;
assign v154_1_fu_1085_p1 = reg_428;
assign v154_fu_905_p1 = reg_432;
assign v165_1_fu_1090_p1 = reg_432;
assign v165_fu_910_p1 = reg_436;
assign v176_1_fu_1095_p1 = reg_436;
assign v176_fu_915_p1 = reg_440;
assign v187_1_fu_1100_p1 = reg_440;
assign v187_fu_920_p1 = reg_444;
assign v198_1_fu_1105_p1 = reg_444;
assign v198_fu_925_p1 = reg_448;
assign v209_1_fu_1110_p1 = reg_448;
assign v209_fu_930_p1 = v226_load_8_reg_1606;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_526_p1 = v114_fu_124;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1388[15:8] <= 8'b00000000;
end
endmodule 