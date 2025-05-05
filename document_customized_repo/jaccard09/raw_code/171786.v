module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v113,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce); 
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
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [15:0] v226_address1;
output   v226_ce1;
input  [31:0] v226_q1;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [12:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [12:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
output  [12:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [12:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
output  [12:0] v225_2_address0;
output   v225_2_ce0;
output   v225_2_we0;
output  [31:0] v225_2_d0;
input  [31:0] v225_2_q0;
output  [12:0] v225_2_address1;
output   v225_2_ce1;
output   v225_2_we1;
output  [31:0] v225_2_d1;
input  [31:0] v225_2_q1;
output  [12:0] v225_3_address0;
output   v225_3_ce0;
output   v225_3_we0;
output  [31:0] v225_3_d0;
input  [31:0] v225_3_q0;
output  [12:0] v225_3_address1;
output   v225_3_ce1;
output   v225_3_we1;
output  [31:0] v225_3_d1;
input  [31:0] v225_3_q1;
output  [12:0] v225_4_address0;
output   v225_4_ce0;
output   v225_4_we0;
output  [31:0] v225_4_d0;
input  [31:0] v225_4_q0;
output  [12:0] v225_4_address1;
output   v225_4_ce1;
output   v225_4_we1;
output  [31:0] v225_4_d1;
input  [31:0] v225_4_q1;
output  [12:0] v225_5_address0;
output   v225_5_ce0;
output   v225_5_we0;
output  [31:0] v225_5_d0;
input  [31:0] v225_5_q0;
output  [12:0] v225_5_address1;
output   v225_5_ce1;
output   v225_5_we1;
output  [31:0] v225_5_d1;
input  [31:0] v225_5_q1;
output  [12:0] v225_6_address0;
output   v225_6_ce0;
output   v225_6_we0;
output  [31:0] v225_6_d0;
input  [31:0] v225_6_q0;
output  [12:0] v225_6_address1;
output   v225_6_ce1;
output   v225_6_we1;
output  [31:0] v225_6_d1;
input  [31:0] v225_6_q1;
output  [12:0] v225_7_address0;
output   v225_7_ce0;
output   v225_7_we0;
output  [31:0] v225_7_d0;
input  [31:0] v225_7_q0;
output  [12:0] v225_7_address1;
output   v225_7_ce1;
output   v225_7_we1;
output  [31:0] v225_7_d1;
input  [31:0] v225_7_q1;
input  [31:0] v113;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
output  [1:0] grp_fu_148_p_opcode;
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
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
reg[12:0] v225_0_address0;
reg v225_0_ce0;
reg v225_0_we0;
reg[31:0] v225_0_d0;
reg[12:0] v225_0_address1;
reg v225_0_ce1;
reg v225_0_we1;
reg[31:0] v225_0_d1;
reg[12:0] v225_1_address0;
reg v225_1_ce0;
reg v225_1_we0;
reg[31:0] v225_1_d0;
reg[12:0] v225_1_address1;
reg v225_1_ce1;
reg v225_1_we1;
reg[31:0] v225_1_d1;
reg[12:0] v225_2_address0;
reg v225_2_ce0;
reg v225_2_we0;
reg[31:0] v225_2_d0;
reg[12:0] v225_2_address1;
reg v225_2_ce1;
reg v225_2_we1;
reg[31:0] v225_2_d1;
reg[12:0] v225_3_address0;
reg v225_3_ce0;
reg v225_3_we0;
reg[31:0] v225_3_d0;
reg[12:0] v225_3_address1;
reg v225_3_ce1;
reg v225_3_we1;
reg[31:0] v225_3_d1;
reg[12:0] v225_4_address0;
reg v225_4_ce0;
reg v225_4_we0;
reg[31:0] v225_4_d0;
reg[12:0] v225_4_address1;
reg v225_4_ce1;
reg v225_4_we1;
reg[31:0] v225_4_d1;
reg[12:0] v225_5_address0;
reg v225_5_ce0;
reg v225_5_we0;
reg[31:0] v225_5_d0;
reg[12:0] v225_5_address1;
reg v225_5_ce1;
reg v225_5_we1;
reg[31:0] v225_5_d1;
reg[12:0] v225_6_address0;
reg v225_6_ce0;
reg v225_6_we0;
reg[31:0] v225_6_d0;
reg[12:0] v225_6_address1;
reg v225_6_ce1;
reg v225_6_we1;
reg[31:0] v225_6_d1;
reg[12:0] v225_7_address0;
reg v225_7_ce0;
reg v225_7_we0;
reg[31:0] v225_7_d0;
reg[12:0] v225_7_address1;
reg v225_7_ce1;
reg v225_7_we1;
reg[31:0] v225_7_d1;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_529_p2;
reg   [31:0] reg_424;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_429;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_433;
reg   [31:0] reg_437;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_442;
reg   [31:0] reg_447;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state25;
reg   [31:0] reg_452;
reg   [31:0] reg_457;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state26;
reg   [31:0] reg_462;
reg   [31:0] reg_467;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state30;
reg   [31:0] reg_473;
wire   [31:0] grp_fu_396_p2;
reg   [31:0] reg_479;
wire   [31:0] grp_fu_400_p2;
reg   [31:0] reg_485;
wire   [31:0] grp_fu_404_p2;
reg   [31:0] reg_491;
wire   [31:0] grp_fu_408_p2;
reg   [31:0] reg_497;
wire   [31:0] grp_fu_412_p2;
reg   [31:0] reg_503;
wire   [31:0] grp_fu_416_p2;
reg   [31:0] reg_509;
wire   [31:0] grp_fu_420_p2;
reg   [31:0] reg_515;
wire   [15:0] zext_ln175_fu_535_p1;
reg   [15:0] zext_ln175_reg_1454;
wire   [15:0] mul_ln175_fu_539_p2;
reg   [15:0] mul_ln175_reg_1467;
wire   [0:0] cmp11_fu_545_p2;
reg   [0:0] cmp11_reg_1472;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_561_p2;
reg   [7:0] add_ln169_reg_1485;
wire   [15:0] zext_ln175_5_fu_584_p1;
reg   [15:0] zext_ln175_5_reg_1490;
wire   [15:0] mul_ln175_1_fu_588_p2;
reg   [15:0] mul_ln175_1_reg_1503;
wire    ap_CS_fsm_state4;
reg   [4:0] tmp_reg_1513;
reg   [4:0] tmp_1_reg_1523;
wire    ap_CS_fsm_state5;
reg   [4:0] tmp_2_reg_1533;
reg   [4:0] tmp_3_reg_1543;
wire    ap_CS_fsm_state6;
reg   [4:0] tmp_4_reg_1558;
reg   [4:0] tmp_5_reg_1568;
reg   [4:0] tmp_6_reg_1588;
wire   [31:0] v119_fu_770_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_775_p1;
wire   [31:0] v143_fu_780_p1;
wire   [31:0] v154_fu_785_p1;
wire   [31:0] v165_fu_790_p1;
wire   [31:0] v176_fu_795_p1;
wire   [31:0] v187_fu_800_p1;
wire   [31:0] v198_fu_805_p1;
wire   [31:0] v209_fu_810_p1;
wire   [2:0] trunc_ln169_fu_815_p1;
reg   [2:0] trunc_ln169_reg_1668;
wire   [12:0] mul_ln171_fu_833_p2;
reg   [12:0] mul_ln171_reg_1674;
wire   [12:0] mul_ln186_fu_842_p2;
reg   [12:0] mul_ln186_reg_1679;
wire   [12:0] mul_ln199_fu_851_p2;
reg   [12:0] mul_ln199_reg_1684;
wire   [12:0] mul_ln212_fu_860_p2;
reg   [12:0] mul_ln212_reg_1689;
wire   [12:0] mul_ln225_fu_869_p2;
reg   [12:0] mul_ln225_reg_1694;
wire   [12:0] mul_ln238_fu_878_p2;
reg   [12:0] mul_ln238_reg_1699;
wire   [12:0] mul_ln251_fu_887_p2;
reg   [12:0] mul_ln251_reg_1704;
wire   [12:0] mul_ln264_fu_896_p2;
reg   [12:0] mul_ln264_reg_1709;
wire   [12:0] mul_ln277_fu_912_p2;
reg   [12:0] mul_ln277_reg_1714;
wire   [0:0] empty_44_fu_918_p2;
reg   [0:0] empty_44_reg_1719;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state18;
wire   [7:0] add_ln169_1_fu_934_p2;
reg   [7:0] add_ln169_1_reg_1732;
wire    ap_CS_fsm_state19;
reg   [4:0] tmp_9_reg_1742;
reg   [4:0] tmp_s_reg_1752;
wire    ap_CS_fsm_state20;
reg   [4:0] tmp_8_reg_1762;
reg   [4:0] tmp_10_reg_1772;
wire    ap_CS_fsm_state21;
reg   [4:0] tmp_11_reg_1787;
reg   [4:0] tmp_12_reg_1797;
reg   [4:0] tmp_13_reg_1817;
wire   [31:0] v119_1_fu_1126_p1;
wire    ap_CS_fsm_state27;
wire   [31:0] v132_1_fu_1131_p1;
wire   [31:0] v143_1_fu_1136_p1;
wire   [31:0] v154_1_fu_1141_p1;
wire   [31:0] v165_1_fu_1146_p1;
wire   [31:0] v176_1_fu_1151_p1;
wire   [31:0] v187_1_fu_1156_p1;
wire   [31:0] v198_1_fu_1161_p1;
wire   [31:0] v209_1_fu_1166_p1;
wire   [2:0] trunc_ln169_1_fu_1171_p1;
reg   [2:0] trunc_ln169_1_reg_1897;
wire   [12:0] mul_ln171_1_fu_1189_p2;
reg   [12:0] mul_ln171_1_reg_1903;
wire   [12:0] mul_ln186_1_fu_1198_p2;
reg   [12:0] mul_ln186_1_reg_1908;
wire   [12:0] mul_ln199_1_fu_1207_p2;
reg   [12:0] mul_ln199_1_reg_1913;
wire   [12:0] mul_ln212_1_fu_1216_p2;
reg   [12:0] mul_ln212_1_reg_1918;
wire   [12:0] mul_ln225_1_fu_1225_p2;
reg   [12:0] mul_ln225_1_reg_1923;
wire   [12:0] mul_ln238_1_fu_1234_p2;
reg   [12:0] mul_ln238_1_reg_1928;
wire   [12:0] mul_ln251_1_fu_1243_p2;
reg   [12:0] mul_ln251_1_reg_1933;
wire   [12:0] mul_ln264_1_fu_1252_p2;
reg   [12:0] mul_ln264_1_reg_1938;
wire   [12:0] mul_ln277_1_fu_1268_p2;
reg   [12:0] mul_ln277_1_reg_1943;
wire   [0:0] empty_72_fu_1274_p2;
reg   [0:0] empty_72_reg_1948;
wire    ap_CS_fsm_state31;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_ready;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1953_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1953_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1953_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1953_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1957_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1957_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1957_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1957_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1961_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1961_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1961_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1961_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1965_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1965_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1965_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1965_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1969_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1969_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1969_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1969_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1973_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1973_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1973_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1973_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_388_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_388_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_388_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_392_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_392_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_392_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_396_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_396_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_396_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_400_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_400_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_400_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_404_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_404_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_404_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_408_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_408_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_408_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_ready;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1953_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1953_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1953_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1953_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1957_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1957_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1957_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1957_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1961_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1961_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1961_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1961_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1965_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1965_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1965_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1965_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1969_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1969_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1969_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1969_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1973_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1973_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1973_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1973_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_388_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_388_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_388_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_392_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_392_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_392_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_396_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_396_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_396_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_400_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_400_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_400_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_404_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_404_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_404_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_408_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_408_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_408_p_ce;
reg   [7:0] v115_reg_277;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg   [7:0] v115_1_reg_289;
wire    ap_CS_fsm_state32;
wire   [0:0] icmp_ln169_fu_551_p2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start_reg;
wire   [63:0] p_cast1926_fu_674_p1;
wire   [63:0] p_cast_fu_718_p1;
wire   [63:0] p_cast1927_fu_722_p1;
wire   [63:0] p_cast1928_fu_746_p1;
wire   [63:0] p_cast1929_fu_750_p1;
wire   [63:0] p_cast1930_fu_754_p1;
wire   [63:0] p_cast1931_fu_758_p1;
wire   [63:0] p_cast1932_fu_762_p1;
wire   [63:0] p_cast1933_fu_766_p1;
wire   [63:0] p_cast1934_fu_1030_p1;
wire   [63:0] p_cast1935_fu_1074_p1;
wire   [63:0] p_cast1936_fu_1078_p1;
wire   [63:0] p_cast1937_fu_1102_p1;
wire   [63:0] p_cast1938_fu_1106_p1;
wire   [63:0] p_cast1939_fu_1110_p1;
wire   [63:0] p_cast1940_fu_1114_p1;
wire   [63:0] p_cast1941_fu_1118_p1;
wire   [63:0] p_cast1942_fu_1122_p1;
reg   [7:0] v114_fu_106;
wire   [7:0] add_ln168_fu_940_p2;
wire   [0:0] icmp_ln169_1_fu_924_p2;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_388_p0;
reg   [31:0] grp_fu_388_p1;
reg   [31:0] grp_fu_392_p0;
reg   [31:0] grp_fu_392_p1;
reg   [31:0] grp_fu_396_p0;
reg   [31:0] grp_fu_396_p1;
reg   [31:0] grp_fu_400_p0;
reg   [31:0] grp_fu_400_p1;
reg   [31:0] grp_fu_404_p0;
reg   [31:0] grp_fu_404_p1;
reg   [31:0] grp_fu_408_p0;
reg   [31:0] grp_fu_408_p1;
reg   [31:0] grp_fu_412_p0;
reg   [31:0] grp_fu_416_p0;
reg   [31:0] grp_fu_420_p0;
wire   [7:0] mul_ln175_fu_539_p0;
wire   [8:0] mul_ln175_fu_539_p1;
wire   [6:0] tmp_7_fu_567_p4;
wire   [7:0] or_ln_fu_576_p3;
wire   [7:0] mul_ln175_1_fu_588_p0;
wire   [8:0] mul_ln175_1_fu_588_p1;
wire   [7:0] empty_19_fu_594_p2;
wire   [7:0] empty_22_fu_614_p2;
wire   [7:0] empty_25_fu_634_p2;
wire   [7:0] empty_28_fu_654_p2;
wire   [15:0] grp_fu_1280_p3;
wire   [7:0] empty_31_fu_678_p2;
wire   [7:0] empty_34_fu_698_p2;
wire   [15:0] grp_fu_1288_p3;
wire   [15:0] grp_fu_1296_p3;
wire   [7:0] empty_37_fu_726_p2;
wire   [15:0] grp_fu_1304_p3;
wire   [15:0] grp_fu_1312_p3;
wire   [15:0] grp_fu_1320_p3;
wire   [15:0] grp_fu_1328_p3;
wire   [15:0] grp_fu_1336_p3;
wire   [15:0] grp_fu_1344_p4;
wire   [4:0] lshr_ln_fu_819_p4;
wire   [4:0] mul_ln171_fu_833_p0;
wire   [8:0] mul_ln171_fu_833_p1;
wire   [4:0] mul_ln186_fu_842_p0;
wire   [8:0] mul_ln186_fu_842_p1;
wire   [4:0] mul_ln199_fu_851_p0;
wire   [8:0] mul_ln199_fu_851_p1;
wire   [4:0] mul_ln212_fu_860_p0;
wire   [8:0] mul_ln212_fu_860_p1;
wire   [4:0] mul_ln225_fu_869_p0;
wire   [8:0] mul_ln225_fu_869_p1;
wire   [4:0] mul_ln238_fu_878_p0;
wire   [8:0] mul_ln238_fu_878_p1;
wire   [4:0] mul_ln251_fu_887_p0;
wire   [8:0] mul_ln251_fu_887_p1;
wire   [4:0] mul_ln264_fu_896_p0;
wire   [8:0] mul_ln264_fu_896_p1;
wire   [4:0] empty_43_fu_902_p2;
wire   [4:0] mul_ln277_fu_912_p0;
wire   [8:0] mul_ln277_fu_912_p1;
wire   [7:0] empty_47_fu_950_p2;
wire   [7:0] empty_50_fu_970_p2;
wire   [7:0] empty_53_fu_990_p2;
wire   [7:0] empty_56_fu_1010_p2;
wire   [15:0] grp_fu_1354_p3;
wire   [7:0] empty_59_fu_1034_p2;
wire   [7:0] empty_62_fu_1054_p2;
wire   [15:0] grp_fu_1362_p3;
wire   [15:0] grp_fu_1370_p3;
wire   [7:0] empty_65_fu_1082_p2;
wire   [15:0] grp_fu_1378_p3;
wire   [15:0] grp_fu_1386_p3;
wire   [15:0] grp_fu_1394_p3;
wire   [15:0] grp_fu_1402_p3;
wire   [15:0] grp_fu_1410_p3;
wire   [15:0] grp_fu_1418_p4;
wire   [4:0] lshr_ln169_1_fu_1175_p4;
wire   [4:0] mul_ln171_1_fu_1189_p0;
wire   [8:0] mul_ln171_1_fu_1189_p1;
wire   [4:0] mul_ln186_1_fu_1198_p0;
wire   [8:0] mul_ln186_1_fu_1198_p1;
wire   [4:0] mul_ln199_1_fu_1207_p0;
wire   [8:0] mul_ln199_1_fu_1207_p1;
wire   [4:0] mul_ln212_1_fu_1216_p0;
wire   [8:0] mul_ln212_1_fu_1216_p1;
wire   [4:0] mul_ln225_1_fu_1225_p0;
wire   [8:0] mul_ln225_1_fu_1225_p1;
wire   [4:0] mul_ln238_1_fu_1234_p0;
wire   [8:0] mul_ln238_1_fu_1234_p1;
wire   [4:0] mul_ln251_1_fu_1243_p0;
wire   [8:0] mul_ln251_1_fu_1243_p1;
wire   [4:0] mul_ln264_1_fu_1252_p0;
wire   [8:0] mul_ln264_1_fu_1252_p1;
wire   [4:0] empty_71_fu_1258_p2;
wire   [4:0] mul_ln277_1_fu_1268_p0;
wire   [8:0] mul_ln277_1_fu_1268_p1;
wire   [7:0] grp_fu_1280_p0;
wire   [7:0] grp_fu_1280_p1;
wire   [7:0] grp_fu_1280_p2;
wire   [7:0] grp_fu_1288_p0;
wire   [7:0] grp_fu_1288_p1;
wire   [7:0] grp_fu_1288_p2;
wire   [7:0] grp_fu_1296_p0;
wire   [7:0] grp_fu_1296_p1;
wire   [7:0] grp_fu_1296_p2;
wire   [7:0] grp_fu_1304_p0;
wire   [7:0] grp_fu_1304_p1;
wire   [7:0] grp_fu_1304_p2;
wire   [7:0] grp_fu_1312_p0;
wire   [7:0] grp_fu_1312_p1;
wire   [7:0] grp_fu_1312_p2;
wire   [7:0] grp_fu_1320_p0;
wire   [7:0] grp_fu_1320_p1;
wire   [7:0] grp_fu_1320_p2;
wire   [7:0] grp_fu_1328_p0;
wire   [7:0] grp_fu_1328_p1;
wire   [7:0] grp_fu_1328_p2;
wire   [7:0] grp_fu_1336_p0;
wire   [7:0] grp_fu_1336_p1;
wire   [7:0] grp_fu_1336_p2;
wire   [3:0] grp_fu_1344_p1;
wire   [7:0] grp_fu_1344_p2;
wire   [7:0] grp_fu_1344_p3;
wire   [7:0] grp_fu_1354_p0;
wire   [7:0] grp_fu_1354_p1;
wire   [7:0] grp_fu_1354_p2;
wire   [7:0] grp_fu_1362_p0;
wire   [7:0] grp_fu_1362_p1;
wire   [7:0] grp_fu_1362_p2;
wire   [7:0] grp_fu_1370_p0;
wire   [7:0] grp_fu_1370_p1;
wire   [7:0] grp_fu_1370_p2;
wire   [7:0] grp_fu_1378_p0;
wire   [7:0] grp_fu_1378_p1;
wire   [7:0] grp_fu_1378_p2;
wire   [7:0] grp_fu_1386_p0;
wire   [7:0] grp_fu_1386_p1;
wire   [7:0] grp_fu_1386_p2;
wire   [7:0] grp_fu_1394_p0;
wire   [7:0] grp_fu_1394_p1;
wire   [7:0] grp_fu_1394_p2;
wire   [7:0] grp_fu_1402_p0;
wire   [7:0] grp_fu_1402_p1;
wire   [7:0] grp_fu_1402_p2;
wire   [7:0] grp_fu_1410_p0;
wire   [7:0] grp_fu_1410_p1;
wire   [7:0] grp_fu_1410_p2;
wire   [3:0] grp_fu_1418_p1;
wire   [7:0] grp_fu_1418_p2;
wire   [7:0] grp_fu_1418_p3;
reg    grp_fu_388_ce;
reg    grp_fu_392_ce;
reg    grp_fu_396_ce;
reg    grp_fu_400_ce;
reg    grp_fu_404_ce;
reg    grp_fu_408_ce;
reg   [31:0] grp_fu_1953_p0;
reg   [31:0] grp_fu_1953_p1;
reg    grp_fu_1953_ce;
wire   [31:0] grp_fu_1957_p2;
reg   [31:0] grp_fu_1957_p0;
reg   [31:0] grp_fu_1957_p1;
reg    grp_fu_1957_ce;
wire   [31:0] grp_fu_1961_p2;
reg   [31:0] grp_fu_1961_p0;
reg   [31:0] grp_fu_1961_p1;
reg    grp_fu_1961_ce;
wire   [31:0] grp_fu_1965_p2;
reg   [31:0] grp_fu_1965_p0;
reg   [31:0] grp_fu_1965_p1;
reg    grp_fu_1965_ce;
wire   [31:0] grp_fu_1969_p2;
reg   [31:0] grp_fu_1969_p0;
reg   [31:0] grp_fu_1969_p1;
reg    grp_fu_1969_ce;
wire   [31:0] grp_fu_1973_p2;
reg   [31:0] grp_fu_1973_p0;
reg   [31:0] grp_fu_1973_p1;
reg    grp_fu_1973_ce;
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
wire   [15:0] grp_fu_1280_p00;
wire   [15:0] grp_fu_1288_p00;
wire   [15:0] grp_fu_1296_p00;
wire   [15:0] grp_fu_1304_p00;
wire   [15:0] grp_fu_1312_p00;
wire   [15:0] grp_fu_1320_p00;
wire   [15:0] grp_fu_1328_p00;
wire   [15:0] grp_fu_1336_p00;
wire   [15:0] grp_fu_1354_p00;
wire   [15:0] grp_fu_1362_p00;
wire   [15:0] grp_fu_1370_p00;
wire   [15:0] grp_fu_1378_p00;
wire   [15:0] grp_fu_1386_p00;
wire   [15:0] grp_fu_1394_p00;
wire   [15:0] grp_fu_1402_p00;
wire   [15:0] grp_fu_1410_p00;
wire   [12:0] mul_ln171_1_fu_1189_p00;
wire   [12:0] mul_ln171_fu_833_p00;
wire   [15:0] mul_ln175_1_fu_588_p00;
wire   [15:0] mul_ln175_fu_539_p00;
wire   [12:0] mul_ln186_1_fu_1198_p00;
wire   [12:0] mul_ln186_fu_842_p00;
wire   [12:0] mul_ln199_1_fu_1207_p00;
wire   [12:0] mul_ln199_fu_851_p00;
wire   [12:0] mul_ln212_1_fu_1216_p00;
wire   [12:0] mul_ln212_fu_860_p00;
wire   [12:0] mul_ln225_1_fu_1225_p00;
wire   [12:0] mul_ln225_fu_869_p00;
wire   [12:0] mul_ln238_1_fu_1234_p00;
wire   [12:0] mul_ln238_fu_878_p00;
wire   [12:0] mul_ln251_1_fu_1243_p00;
wire   [12:0] mul_ln251_fu_887_p00;
wire   [12:0] mul_ln264_1_fu_1252_p00;
wire   [12:0] mul_ln264_fu_896_p00;
wire   [12:0] mul_ln277_1_fu_1268_p00;
wire   [12:0] mul_ln277_fu_912_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start_reg = 1'b0;
#0 v114_fu_106 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_301(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_ready),.cmp11(cmp11_reg_1472),.v225_7_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_address0),.v225_7_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_ce0),.v225_7_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_we0),.v225_7_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_d0),.v225_7_q0(v225_7_q0),.v225_7_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_address1),.v225_7_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_ce1),.v225_7_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_we1),.v225_7_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_d1),.v225_7_q1(v225_7_q1),.v225_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_address0),.v225_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_ce0),.v225_6_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_we0),.v225_6_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_d0),.v225_6_q0(v225_6_q0),.v225_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_address1),.v225_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_ce1),.v225_6_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_we1),.v225_6_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_d1),.v225_6_q1(v225_6_q1),.v225_5_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_address0),.v225_5_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_ce0),.v225_5_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_we0),.v225_5_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_d0),.v225_5_q0(v225_5_q0),.v225_5_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_address1),.v225_5_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_ce1),.v225_5_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_we1),.v225_5_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_d1),.v225_5_q1(v225_5_q1),.v225_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_address0),.v225_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_ce0),.v225_4_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_we0),.v225_4_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_d0),.v225_4_q0(v225_4_q0),.v225_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_address1),.v225_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_ce1),.v225_4_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_we1),.v225_4_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_d1),.v225_4_q1(v225_4_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_d1),.v225_0_q1(v225_0_q1),.mul_ln175(mul_ln175_reg_1467),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1674),.mul_ln277(mul_ln277_reg_1714),.mul_ln264(mul_ln264_reg_1709),.mul_ln251(mul_ln251_reg_1704),.mul_ln238(mul_ln238_reg_1699),.mul_ln225(mul_ln225_reg_1694),.mul_ln212(mul_ln212_reg_1689),.mul_ln199(mul_ln199_reg_1684),.mul_ln186(mul_ln186_reg_1679),.empty_16(trunc_ln169_reg_1668),.v120(reg_467),.v133(reg_473),.v144(reg_479),.v155(reg_485),.v166(reg_491),.v177(reg_497),.v188(reg_503),.v199(reg_509),.v210(reg_515),.empty(empty_44_reg_1719),.grp_fu_1953_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1953_p_din0),.grp_fu_1953_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1953_p_din1),.grp_fu_1953_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1953_p_opcode),.grp_fu_1953_p_dout0(grp_fu_148_p_dout0),.grp_fu_1953_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1953_p_ce),.grp_fu_1957_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1957_p_din0),.grp_fu_1957_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1957_p_din1),.grp_fu_1957_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1957_p_opcode),.grp_fu_1957_p_dout0(grp_fu_1957_p2),.grp_fu_1957_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1957_p_ce),.grp_fu_1961_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1961_p_din0),.grp_fu_1961_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1961_p_din1),.grp_fu_1961_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1961_p_opcode),.grp_fu_1961_p_dout0(grp_fu_1961_p2),.grp_fu_1961_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1961_p_ce),.grp_fu_1965_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1965_p_din0),.grp_fu_1965_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1965_p_din1),.grp_fu_1965_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1965_p_opcode),.grp_fu_1965_p_dout0(grp_fu_1965_p2),.grp_fu_1965_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1965_p_ce),.grp_fu_1969_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1969_p_din0),.grp_fu_1969_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1969_p_din1),.grp_fu_1969_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1969_p_opcode),.grp_fu_1969_p_dout0(grp_fu_1969_p2),.grp_fu_1969_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1969_p_ce),.grp_fu_1973_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1973_p_din0),.grp_fu_1973_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1973_p_din1),.grp_fu_1973_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1973_p_opcode),.grp_fu_1973_p_dout0(grp_fu_1973_p2),.grp_fu_1973_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1973_p_ce),.grp_fu_388_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_388_p_din0),.grp_fu_388_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_388_p_din1),.grp_fu_388_p_dout0(grp_fu_152_p_dout0),.grp_fu_388_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_388_p_ce),.grp_fu_392_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_392_p_din0),.grp_fu_392_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_392_p_din1),.grp_fu_392_p_dout0(grp_fu_156_p_dout0),.grp_fu_392_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_392_p_ce),.grp_fu_396_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_396_p_din0),.grp_fu_396_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_396_p_din1),.grp_fu_396_p_dout0(grp_fu_396_p2),.grp_fu_396_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_396_p_ce),.grp_fu_400_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_400_p_din0),.grp_fu_400_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_400_p_din1),.grp_fu_400_p_dout0(grp_fu_400_p2),.grp_fu_400_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_400_p_ce),.grp_fu_404_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_404_p_din0),.grp_fu_404_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_404_p_din1),.grp_fu_404_p_dout0(grp_fu_404_p2),.grp_fu_404_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_404_p_ce),.grp_fu_408_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_408_p_din0),.grp_fu_408_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_408_p_din1),.grp_fu_408_p_dout0(grp_fu_408_p2),.grp_fu_408_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_408_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_345(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_ready),.v225_7_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_address0),.v225_7_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_ce0),.v225_7_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_we0),.v225_7_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_d0),.v225_7_q0(v225_7_q0),.v225_7_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_address1),.v225_7_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_ce1),.v225_7_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_we1),.v225_7_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_d1),.v225_7_q1(v225_7_q1),.v225_6_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_address0),.v225_6_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_ce0),.v225_6_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_we0),.v225_6_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_d0),.v225_6_q0(v225_6_q0),.v225_6_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_address1),.v225_6_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_ce1),.v225_6_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_we1),.v225_6_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_d1),.v225_6_q1(v225_6_q1),.v225_5_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_address0),.v225_5_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_ce0),.v225_5_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_we0),.v225_5_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_d0),.v225_5_q0(v225_5_q0),.v225_5_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_address1),.v225_5_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_ce1),.v225_5_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_we1),.v225_5_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_d1),.v225_5_q1(v225_5_q1),.v225_4_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_address0),.v225_4_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_ce0),.v225_4_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_we0),.v225_4_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_d0),.v225_4_q0(v225_4_q0),.v225_4_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_address1),.v225_4_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_ce1),.v225_4_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_we1),.v225_4_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_d1),.v225_4_q1(v225_4_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_d1),.v225_0_q1(v225_0_q1),.mul_ln175_1(mul_ln175_1_reg_1503),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_ce1),.v227_q1(v227_q1),.mul_ln171_1(mul_ln171_1_reg_1903),.mul_ln277_1(mul_ln277_1_reg_1943),.mul_ln264_1(mul_ln264_1_reg_1938),.mul_ln251_1(mul_ln251_1_reg_1933),.mul_ln238_1(mul_ln238_1_reg_1928),.mul_ln225_1(mul_ln225_1_reg_1923),.mul_ln212_1(mul_ln212_1_reg_1918),.mul_ln199_1(mul_ln199_1_reg_1913),.mul_ln186_1(mul_ln186_1_reg_1908),.empty_15(trunc_ln169_1_reg_1897),.v120_1(reg_467),.v133_1(reg_473),.v144_1(reg_479),.v155_1(reg_485),.v166_1(reg_491),.v177_1(reg_497),.v188_1(reg_503),.v199_1(reg_509),.v210_1(reg_515),.empty(empty_72_reg_1948),.grp_fu_1953_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1953_p_din0),.grp_fu_1953_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1953_p_din1),.grp_fu_1953_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1953_p_opcode),.grp_fu_1953_p_dout0(grp_fu_148_p_dout0),.grp_fu_1953_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1953_p_ce),.grp_fu_1957_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1957_p_din0),.grp_fu_1957_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1957_p_din1),.grp_fu_1957_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1957_p_opcode),.grp_fu_1957_p_dout0(grp_fu_1957_p2),.grp_fu_1957_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1957_p_ce),.grp_fu_1961_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1961_p_din0),.grp_fu_1961_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1961_p_din1),.grp_fu_1961_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1961_p_opcode),.grp_fu_1961_p_dout0(grp_fu_1961_p2),.grp_fu_1961_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1961_p_ce),.grp_fu_1965_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1965_p_din0),.grp_fu_1965_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1965_p_din1),.grp_fu_1965_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1965_p_opcode),.grp_fu_1965_p_dout0(grp_fu_1965_p2),.grp_fu_1965_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1965_p_ce),.grp_fu_1969_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1969_p_din0),.grp_fu_1969_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1969_p_din1),.grp_fu_1969_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1969_p_opcode),.grp_fu_1969_p_dout0(grp_fu_1969_p2),.grp_fu_1969_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1969_p_ce),.grp_fu_1973_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1973_p_din0),.grp_fu_1973_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1973_p_din1),.grp_fu_1973_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1973_p_opcode),.grp_fu_1973_p_dout0(grp_fu_1973_p2),.grp_fu_1973_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1973_p_ce),.grp_fu_388_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_388_p_din0),.grp_fu_388_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_388_p_din1),.grp_fu_388_p_dout0(grp_fu_152_p_dout0),.grp_fu_388_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_388_p_ce),.grp_fu_392_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_392_p_din0),.grp_fu_392_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_392_p_din1),.grp_fu_392_p_dout0(grp_fu_156_p_dout0),.grp_fu_392_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_392_p_ce),.grp_fu_396_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_396_p_din0),.grp_fu_396_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_396_p_din1),.grp_fu_396_p_dout0(grp_fu_396_p2),.grp_fu_396_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_396_p_ce),.grp_fu_400_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_400_p_din0),.grp_fu_400_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_400_p_din1),.grp_fu_400_p_dout0(grp_fu_400_p2),.grp_fu_400_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_400_p_ce),.grp_fu_404_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_404_p_din0),.grp_fu_404_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_404_p_din1),.grp_fu_404_p_dout0(grp_fu_404_p2),.grp_fu_404_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_404_p_ce),.grp_fu_408_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_408_p_din0),.grp_fu_408_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_408_p_din1),.grp_fu_408_p_dout0(grp_fu_408_p2),.grp_fu_408_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_408_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_396_p0),.din1(grp_fu_396_p1),.ce(grp_fu_396_ce),.dout(grp_fu_396_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U94(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_400_p0),.din1(grp_fu_400_p1),.ce(grp_fu_400_ce),.dout(grp_fu_400_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U95(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_404_p0),.din1(grp_fu_404_p1),.ce(grp_fu_404_ce),.dout(grp_fu_404_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U96(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_408_p0),.din1(grp_fu_408_p1),.ce(grp_fu_408_ce),.dout(grp_fu_408_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U97(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_412_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_412_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_416_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_416_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_420_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_420_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U100(.din0(mul_ln175_fu_539_p0),.din1(mul_ln175_fu_539_p1),.dout(mul_ln175_fu_539_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U101(.din0(mul_ln175_1_fu_588_p0),.din1(mul_ln175_1_fu_588_p1),.dout(mul_ln175_1_fu_588_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U102(.din0(mul_ln171_fu_833_p0),.din1(mul_ln171_fu_833_p1),.dout(mul_ln171_fu_833_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U103(.din0(mul_ln186_fu_842_p0),.din1(mul_ln186_fu_842_p1),.dout(mul_ln186_fu_842_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U104(.din0(mul_ln199_fu_851_p0),.din1(mul_ln199_fu_851_p1),.dout(mul_ln199_fu_851_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U105(.din0(mul_ln212_fu_860_p0),.din1(mul_ln212_fu_860_p1),.dout(mul_ln212_fu_860_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U106(.din0(mul_ln225_fu_869_p0),.din1(mul_ln225_fu_869_p1),.dout(mul_ln225_fu_869_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U107(.din0(mul_ln238_fu_878_p0),.din1(mul_ln238_fu_878_p1),.dout(mul_ln238_fu_878_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U108(.din0(mul_ln251_fu_887_p0),.din1(mul_ln251_fu_887_p1),.dout(mul_ln251_fu_887_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U109(.din0(mul_ln264_fu_896_p0),.din1(mul_ln264_fu_896_p1),.dout(mul_ln264_fu_896_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U110(.din0(mul_ln277_fu_912_p0),.din1(mul_ln277_fu_912_p1),.dout(mul_ln277_fu_912_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U111(.din0(mul_ln171_1_fu_1189_p0),.din1(mul_ln171_1_fu_1189_p1),.dout(mul_ln171_1_fu_1189_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U112(.din0(mul_ln186_1_fu_1198_p0),.din1(mul_ln186_1_fu_1198_p1),.dout(mul_ln186_1_fu_1198_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U113(.din0(mul_ln199_1_fu_1207_p0),.din1(mul_ln199_1_fu_1207_p1),.dout(mul_ln199_1_fu_1207_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U114(.din0(mul_ln212_1_fu_1216_p0),.din1(mul_ln212_1_fu_1216_p1),.dout(mul_ln212_1_fu_1216_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U115(.din0(mul_ln225_1_fu_1225_p0),.din1(mul_ln225_1_fu_1225_p1),.dout(mul_ln225_1_fu_1225_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U116(.din0(mul_ln238_1_fu_1234_p0),.din1(mul_ln238_1_fu_1234_p1),.dout(mul_ln238_1_fu_1234_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U117(.din0(mul_ln251_1_fu_1243_p0),.din1(mul_ln251_1_fu_1243_p1),.dout(mul_ln251_1_fu_1243_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U118(.din0(mul_ln264_1_fu_1252_p0),.din1(mul_ln264_1_fu_1252_p1),.dout(mul_ln264_1_fu_1252_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U119(.din0(mul_ln277_1_fu_1268_p0),.din1(mul_ln277_1_fu_1268_p1),.dout(mul_ln277_1_fu_1268_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U120(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1280_p0),.din1(grp_fu_1280_p1),.din2(grp_fu_1280_p2),.ce(1'b1),.dout(grp_fu_1280_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U121(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1288_p0),.din1(grp_fu_1288_p1),.din2(grp_fu_1288_p2),.ce(1'b1),.dout(grp_fu_1288_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U122(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1296_p0),.din1(grp_fu_1296_p1),.din2(grp_fu_1296_p2),.ce(1'b1),.dout(grp_fu_1296_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U123(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1304_p0),.din1(grp_fu_1304_p1),.din2(grp_fu_1304_p2),.ce(1'b1),.dout(grp_fu_1304_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U124(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1312_p0),.din1(grp_fu_1312_p1),.din2(grp_fu_1312_p2),.ce(1'b1),.dout(grp_fu_1312_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U125(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1320_p0),.din1(grp_fu_1320_p1),.din2(grp_fu_1320_p2),.ce(1'b1),.dout(grp_fu_1320_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U126(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1328_p0),.din1(grp_fu_1328_p1),.din2(grp_fu_1328_p2),.ce(1'b1),.dout(grp_fu_1328_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U127(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1336_p0),.din1(grp_fu_1336_p1),.din2(grp_fu_1336_p2),.ce(1'b1),.dout(grp_fu_1336_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U128(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_277),.din1(grp_fu_1344_p1),.din2(grp_fu_1344_p2),.din3(grp_fu_1344_p3),.ce(1'b1),.dout(grp_fu_1344_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U129(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1354_p0),.din1(grp_fu_1354_p1),.din2(grp_fu_1354_p2),.ce(1'b1),.dout(grp_fu_1354_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U130(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1362_p0),.din1(grp_fu_1362_p1),.din2(grp_fu_1362_p2),.ce(1'b1),.dout(grp_fu_1362_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U131(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1370_p0),.din1(grp_fu_1370_p1),.din2(grp_fu_1370_p2),.ce(1'b1),.dout(grp_fu_1370_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U132(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1378_p0),.din1(grp_fu_1378_p1),.din2(grp_fu_1378_p2),.ce(1'b1),.dout(grp_fu_1378_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U133(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1386_p0),.din1(grp_fu_1386_p1),.din2(grp_fu_1386_p2),.ce(1'b1),.dout(grp_fu_1386_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U134(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1394_p0),.din1(grp_fu_1394_p1),.din2(grp_fu_1394_p2),.ce(1'b1),.dout(grp_fu_1394_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U135(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1402_p0),.din1(grp_fu_1402_p1),.din2(grp_fu_1402_p2),.ce(1'b1),.dout(grp_fu_1402_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U136(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1410_p0),.din1(grp_fu_1410_p1),.din2(grp_fu_1410_p2),.ce(1'b1),.dout(grp_fu_1410_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U137(.clk(ap_clk),.reset(ap_rst),.din0(v115_1_reg_289),.din1(grp_fu_1418_p1),.din2(grp_fu_1418_p2),.din3(grp_fu_1418_p3),.ce(1'b1),.dout(grp_fu_1418_p4));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U139(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1957_p0),.din1(grp_fu_1957_p1),.ce(grp_fu_1957_ce),.dout(grp_fu_1957_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U140(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1961_p0),.din1(grp_fu_1961_p1),.ce(grp_fu_1961_ce),.dout(grp_fu_1961_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U141(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1965_p0),.din1(grp_fu_1965_p1),.ce(grp_fu_1965_ce),.dout(grp_fu_1965_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U142(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1969_p0),.din1(grp_fu_1969_p1),.ce(grp_fu_1969_ce),.dout(grp_fu_1969_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U143(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1973_p0),.din1(grp_fu_1973_p1),.ce(grp_fu_1973_ce),.dout(grp_fu_1973_p2));
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
        if ((1'b1 == ap_CS_fsm_state31)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        reg_424 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        reg_424 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        reg_437 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_437 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        reg_442 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        reg_442 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        reg_447 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_447 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        reg_452 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        reg_452 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        reg_457 <= v226_q1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_457 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        reg_462 <= v226_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        reg_462 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_106 <= 8'd0;
    end else if (((icmp_ln169_1_fu_924_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        v114_fu_106 <= add_ln168_fu_940_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln169_fu_551_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v115_1_reg_289 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
        v115_1_reg_289 <= add_ln169_1_reg_1732;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_277 <= add_ln169_reg_1485;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_529_p2 == 1'd1))) begin
        v115_reg_277 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        add_ln169_1_reg_1732 <= add_ln169_1_fu_934_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_1485 <= add_ln169_fu_561_p2;
        mul_ln175_1_reg_1503 <= mul_ln175_1_fu_588_p2;
        zext_ln175_5_reg_1490[7 : 1] <= zext_ln175_5_fu_584_p1[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1472 <= cmp11_fu_545_p2;
        mul_ln175_reg_1467 <= mul_ln175_fu_539_p2;
        zext_ln175_reg_1454[7 : 0] <= zext_ln175_fu_535_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_44_reg_1719 <= empty_44_fu_918_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state31)) begin
        empty_72_reg_1948 <= empty_72_fu_1274_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        mul_ln171_1_reg_1903 <= mul_ln171_1_fu_1189_p2;
        mul_ln186_1_reg_1908 <= mul_ln186_1_fu_1198_p2;
        mul_ln199_1_reg_1913 <= mul_ln199_1_fu_1207_p2;
        mul_ln212_1_reg_1918 <= mul_ln212_1_fu_1216_p2;
        mul_ln225_1_reg_1923 <= mul_ln225_1_fu_1225_p2;
        mul_ln238_1_reg_1928 <= mul_ln238_1_fu_1234_p2;
        mul_ln251_1_reg_1933 <= mul_ln251_1_fu_1243_p2;
        mul_ln264_1_reg_1938 <= mul_ln264_1_fu_1252_p2;
        mul_ln277_1_reg_1943 <= mul_ln277_1_fu_1268_p2;
        trunc_ln169_1_reg_1897 <= trunc_ln169_1_fu_1171_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1674 <= mul_ln171_fu_833_p2;
        mul_ln186_reg_1679 <= mul_ln186_fu_842_p2;
        mul_ln199_reg_1684 <= mul_ln199_fu_851_p2;
        mul_ln212_reg_1689 <= mul_ln212_fu_860_p2;
        mul_ln225_reg_1694 <= mul_ln225_fu_869_p2;
        mul_ln238_reg_1699 <= mul_ln238_fu_878_p2;
        mul_ln251_reg_1704 <= mul_ln251_fu_887_p2;
        mul_ln264_reg_1709 <= mul_ln264_fu_896_p2;
        mul_ln277_reg_1714 <= mul_ln277_fu_912_p2;
        trunc_ln169_reg_1668 <= trunc_ln169_fu_815_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_429 <= v226_q1;
        reg_433 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_467 <= grp_fu_152_p_dout0;
        reg_473 <= grp_fu_156_p_dout0;
        reg_479 <= grp_fu_396_p2;
        reg_485 <= grp_fu_400_p2;
        reg_491 <= grp_fu_404_p2;
        reg_497 <= grp_fu_408_p2;
        reg_503 <= grp_fu_412_p2;
        reg_509 <= grp_fu_416_p2;
        reg_515 <= grp_fu_420_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        tmp_10_reg_1772 <= {{empty_56_fu_1010_p2[7:3]}};
        tmp_8_reg_1762 <= {{empty_53_fu_990_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp_11_reg_1787 <= {{empty_59_fu_1034_p2[7:3]}};
        tmp_12_reg_1797 <= {{empty_62_fu_1054_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        tmp_13_reg_1817 <= {{empty_65_fu_1082_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_1523 <= {{empty_22_fu_614_p2[7:3]}};
        tmp_reg_1513 <= {{empty_19_fu_594_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_2_reg_1533 <= {{empty_25_fu_634_p2[7:3]}};
        tmp_3_reg_1543 <= {{empty_28_fu_654_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_4_reg_1558 <= {{empty_31_fu_678_p2[7:3]}};
        tmp_5_reg_1568 <= {{empty_34_fu_698_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_6_reg_1588 <= {{empty_37_fu_726_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        tmp_9_reg_1742 <= {{empty_47_fu_950_p2[7:3]}};
        tmp_s_reg_1752 <= {{empty_50_fu_970_p2[7:3]}};
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_529_p2 == 1'd0)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_529_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1953_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1953_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1953_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1953_p_ce;
    end else begin
        grp_fu_1953_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1953_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1953_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1953_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1953_p_din0;
    end else begin
        grp_fu_1953_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1953_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1953_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1953_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1953_p_din1;
    end else begin
        grp_fu_1953_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1957_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1957_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1957_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1957_p_ce;
    end else begin
        grp_fu_1957_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1957_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1957_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1957_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1957_p_din0;
    end else begin
        grp_fu_1957_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1957_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1957_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1957_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1957_p_din1;
    end else begin
        grp_fu_1957_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1961_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1961_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1961_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1961_p_ce;
    end else begin
        grp_fu_1961_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1961_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1961_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1961_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1961_p_din0;
    end else begin
        grp_fu_1961_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1961_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1961_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1961_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1961_p_din1;
    end else begin
        grp_fu_1961_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1965_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1965_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1965_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1965_p_ce;
    end else begin
        grp_fu_1965_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1965_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1965_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1965_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1965_p_din0;
    end else begin
        grp_fu_1965_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1965_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1965_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1965_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1965_p_din1;
    end else begin
        grp_fu_1965_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1969_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1969_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1969_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1969_p_ce;
    end else begin
        grp_fu_1969_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1969_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1969_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1969_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1969_p_din0;
    end else begin
        grp_fu_1969_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1969_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1969_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1969_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1969_p_din1;
    end else begin
        grp_fu_1969_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1973_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1973_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1973_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1973_p_ce;
    end else begin
        grp_fu_1973_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1973_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1973_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1973_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1973_p_din0;
    end else begin
        grp_fu_1973_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1973_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_1973_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1973_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_1973_p_din1;
    end else begin
        grp_fu_1973_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_388_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_388_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_388_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_388_p_ce;
    end else begin
        grp_fu_388_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_388_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_388_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_388_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_388_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_388_p0 = v119_1_fu_1126_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_388_p0 = v119_fu_770_p1;
    end else begin
        grp_fu_388_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_388_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_388_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_388_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_388_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_388_p1 = v113;
    end else begin
        grp_fu_388_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_392_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_392_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_392_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_392_p_ce;
    end else begin
        grp_fu_392_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_392_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_392_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_392_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_392_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_392_p0 = v132_1_fu_1131_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_392_p0 = v132_fu_775_p1;
    end else begin
        grp_fu_392_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_392_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_392_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_392_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_392_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_392_p1 = v113;
    end else begin
        grp_fu_392_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_396_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_396_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_396_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_396_p_ce;
    end else begin
        grp_fu_396_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_396_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_396_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_396_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_396_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_396_p0 = v143_1_fu_1136_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_396_p0 = v143_fu_780_p1;
    end else begin
        grp_fu_396_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_396_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_396_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_396_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_396_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_396_p1 = v113;
    end else begin
        grp_fu_396_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_400_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_400_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_400_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_400_p_ce;
    end else begin
        grp_fu_400_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_400_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_400_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_400_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_400_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_400_p0 = v154_1_fu_1141_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_400_p0 = v154_fu_785_p1;
    end else begin
        grp_fu_400_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_400_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_400_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_400_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_400_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_400_p1 = v113;
    end else begin
        grp_fu_400_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_404_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_404_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_404_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_404_p_ce;
    end else begin
        grp_fu_404_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_404_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_404_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_404_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_404_p0 = v165_1_fu_1146_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_404_p0 = v165_fu_790_p1;
    end else begin
        grp_fu_404_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_404_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_404_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_404_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_404_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_404_p1 = v113;
    end else begin
        grp_fu_404_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_408_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_408_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_408_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_408_p_ce;
    end else begin
        grp_fu_408_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_408_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_408_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_408_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_408_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_408_p0 = v176_1_fu_1151_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_408_p0 = v176_fu_795_p1;
    end else begin
        grp_fu_408_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_408_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_grp_fu_408_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_408_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_grp_fu_408_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_408_p1 = v113;
    end else begin
        grp_fu_408_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_412_p0 = v187_1_fu_1156_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_412_p0 = v187_fu_800_p1;
    end else begin
        grp_fu_412_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_416_p0 = v198_1_fu_1161_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_416_p0 = v198_fu_805_p1;
    end else begin
        grp_fu_416_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_420_p0 = v209_1_fu_1166_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_420_p0 = v209_fu_810_p1;
    end else begin
        grp_fu_420_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_address0;
    end else begin
        v225_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_address1;
    end else begin
        v225_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_ce0;
    end else begin
        v225_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_ce1;
    end else begin
        v225_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_d0;
    end else begin
        v225_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_d1;
    end else begin
        v225_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_we0;
    end else begin
        v225_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_0_we1;
    end else begin
        v225_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_address0;
    end else begin
        v225_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_address1;
    end else begin
        v225_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_ce0;
    end else begin
        v225_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_ce1;
    end else begin
        v225_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_d0;
    end else begin
        v225_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_d1;
    end else begin
        v225_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_we0;
    end else begin
        v225_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_1_we1;
    end else begin
        v225_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_address0;
    end else begin
        v225_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_address1;
    end else begin
        v225_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_ce0;
    end else begin
        v225_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_ce1;
    end else begin
        v225_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_d0;
    end else begin
        v225_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_d1;
    end else begin
        v225_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_we0;
    end else begin
        v225_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_2_we1;
    end else begin
        v225_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_address0;
    end else begin
        v225_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_address1;
    end else begin
        v225_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_ce0;
    end else begin
        v225_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_ce1;
    end else begin
        v225_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_d0;
    end else begin
        v225_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_d1;
    end else begin
        v225_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_we0;
    end else begin
        v225_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_3_we1;
    end else begin
        v225_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_4_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_address0;
    end else begin
        v225_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_4_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_address1;
    end else begin
        v225_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_ce0;
    end else begin
        v225_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_ce1;
    end else begin
        v225_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_4_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_d0;
    end else begin
        v225_4_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_4_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_d1;
    end else begin
        v225_4_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_4_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_we0;
    end else begin
        v225_4_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_4_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_4_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_4_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_4_we1;
    end else begin
        v225_4_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_5_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_address0;
    end else begin
        v225_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_5_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_address1;
    end else begin
        v225_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_ce0;
    end else begin
        v225_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_ce1;
    end else begin
        v225_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_5_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_d0;
    end else begin
        v225_5_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_5_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_d1;
    end else begin
        v225_5_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_5_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_we0;
    end else begin
        v225_5_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_5_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_5_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_5_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_5_we1;
    end else begin
        v225_5_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_6_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_address0;
    end else begin
        v225_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_6_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_address1;
    end else begin
        v225_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_ce0;
    end else begin
        v225_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_ce1;
    end else begin
        v225_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_6_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_d0;
    end else begin
        v225_6_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_6_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_d1;
    end else begin
        v225_6_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_6_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_we0;
    end else begin
        v225_6_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_6_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_6_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_6_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_6_we1;
    end else begin
        v225_6_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_7_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_address0;
    end else begin
        v225_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_7_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_address1;
    end else begin
        v225_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_ce0;
    end else begin
        v225_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_ce1;
    end else begin
        v225_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_7_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_d0;
    end else begin
        v225_7_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_7_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_d1;
    end else begin
        v225_7_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_7_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_we0;
    end else begin
        v225_7_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_7_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v225_7_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_7_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v225_7_we1;
    end else begin
        v225_7_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_address0_local = p_cast1942_fu_1122_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_address0_local = p_cast1940_fu_1114_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address0_local = p_cast1938_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address0_local = p_cast1936_fu_1078_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast1932_fu_762_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast1930_fu_754_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast1928_fu_746_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast1927_fu_722_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast1926_fu_674_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_address1_local = p_cast1941_fu_1118_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_address1_local = p_cast1939_fu_1110_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address1_local = p_cast1937_fu_1102_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address1_local = p_cast1935_fu_1074_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_address1_local = p_cast1934_fu_1030_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast1933_fu_766_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast1931_fu_758_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast1929_fu_750_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_718_p1;
    end else begin
        v226_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_ce0_local = 1'b1;
    end else begin
        v226_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state21) | (1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_ce1_local = 1'b1;
    end else begin
        v226_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_529_p2 == 1'd0))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_529_p2 == 1'd0))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_529_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_529_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_551_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((icmp_ln169_1_fu_924_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
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
assign add_ln168_fu_940_p2 = (v114_fu_106 + 8'd2);
assign add_ln169_1_fu_934_p2 = (v115_1_reg_289 + 8'd9);
assign add_ln169_fu_561_p2 = (v115_reg_277 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_529_p2 == 1'd0));
end
assign cmp11_fu_545_p2 = ((v114_fu_106 == 8'd0) ? 1'b1 : 1'b0);
assign empty_19_fu_594_p2 = (v115_reg_277 + 8'd1);
assign empty_22_fu_614_p2 = (v115_reg_277 + 8'd2);
assign empty_25_fu_634_p2 = (v115_reg_277 + 8'd3);
assign empty_28_fu_654_p2 = (v115_reg_277 + 8'd4);
assign empty_31_fu_678_p2 = (v115_reg_277 + 8'd5);
assign empty_34_fu_698_p2 = (v115_reg_277 + 8'd6);
assign empty_37_fu_726_p2 = (v115_reg_277 + 8'd7);
assign empty_43_fu_902_p2 = (lshr_ln_fu_819_p4 + 5'd1);
assign empty_44_fu_918_p2 = ((trunc_ln169_reg_1668 == 3'd7) ? 1'b1 : 1'b0);
assign empty_47_fu_950_p2 = (v115_1_reg_289 + 8'd1);
assign empty_50_fu_970_p2 = (v115_1_reg_289 + 8'd2);
assign empty_53_fu_990_p2 = (v115_1_reg_289 + 8'd3);
assign empty_56_fu_1010_p2 = (v115_1_reg_289 + 8'd4);
assign empty_59_fu_1034_p2 = (v115_1_reg_289 + 8'd5);
assign empty_62_fu_1054_p2 = (v115_1_reg_289 + 8'd6);
assign empty_65_fu_1082_p2 = (v115_1_reg_289 + 8'd7);
assign empty_71_fu_1258_p2 = (lshr_ln169_1_fu_1175_p4 + 5'd1);
assign empty_72_fu_1274_p2 = ((trunc_ln169_1_reg_1897 == 3'd7) ? 1'b1 : 1'b0);
assign grp_fu_1280_p0 = grp_fu_1280_p00;
assign grp_fu_1280_p00 = v115_reg_277;
assign grp_fu_1280_p1 = 16'd210;
assign grp_fu_1280_p2 = zext_ln175_reg_1454;
assign grp_fu_1288_p0 = grp_fu_1288_p00;
assign grp_fu_1288_p00 = empty_19_fu_594_p2;
assign grp_fu_1288_p1 = 16'd210;
assign grp_fu_1288_p2 = zext_ln175_reg_1454;
assign grp_fu_1296_p0 = grp_fu_1296_p00;
assign grp_fu_1296_p00 = empty_22_fu_614_p2;
assign grp_fu_1296_p1 = 16'd210;
assign grp_fu_1296_p2 = zext_ln175_reg_1454;
assign grp_fu_1304_p0 = grp_fu_1304_p00;
assign grp_fu_1304_p00 = empty_25_fu_634_p2;
assign grp_fu_1304_p1 = 16'd210;
assign grp_fu_1304_p2 = zext_ln175_reg_1454;
assign grp_fu_1312_p0 = grp_fu_1312_p00;
assign grp_fu_1312_p00 = empty_28_fu_654_p2;
assign grp_fu_1312_p1 = 16'd210;
assign grp_fu_1312_p2 = zext_ln175_reg_1454;
assign grp_fu_1320_p0 = grp_fu_1320_p00;
assign grp_fu_1320_p00 = empty_31_fu_678_p2;
assign grp_fu_1320_p1 = 16'd210;
assign grp_fu_1320_p2 = zext_ln175_reg_1454;
assign grp_fu_1328_p0 = grp_fu_1328_p00;
assign grp_fu_1328_p00 = empty_34_fu_698_p2;
assign grp_fu_1328_p1 = 16'd210;
assign grp_fu_1328_p2 = zext_ln175_reg_1454;
assign grp_fu_1336_p0 = grp_fu_1336_p00;
assign grp_fu_1336_p00 = empty_37_fu_726_p2;
assign grp_fu_1336_p1 = 16'd210;
assign grp_fu_1336_p2 = zext_ln175_reg_1454;
assign grp_fu_1344_p1 = 8'd8;
assign grp_fu_1344_p2 = 16'd210;
assign grp_fu_1344_p3 = zext_ln175_reg_1454;
assign grp_fu_1354_p0 = grp_fu_1354_p00;
assign grp_fu_1354_p00 = v115_1_reg_289;
assign grp_fu_1354_p1 = 16'd210;
assign grp_fu_1354_p2 = zext_ln175_5_reg_1490;
assign grp_fu_1362_p0 = grp_fu_1362_p00;
assign grp_fu_1362_p00 = empty_47_fu_950_p2;
assign grp_fu_1362_p1 = 16'd210;
assign grp_fu_1362_p2 = zext_ln175_5_reg_1490;
assign grp_fu_1370_p0 = grp_fu_1370_p00;
assign grp_fu_1370_p00 = empty_50_fu_970_p2;
assign grp_fu_1370_p1 = 16'd210;
assign grp_fu_1370_p2 = zext_ln175_5_reg_1490;
assign grp_fu_1378_p0 = grp_fu_1378_p00;
assign grp_fu_1378_p00 = empty_53_fu_990_p2;
assign grp_fu_1378_p1 = 16'd210;
assign grp_fu_1378_p2 = zext_ln175_5_reg_1490;
assign grp_fu_1386_p0 = grp_fu_1386_p00;
assign grp_fu_1386_p00 = empty_56_fu_1010_p2;
assign grp_fu_1386_p1 = 16'd210;
assign grp_fu_1386_p2 = zext_ln175_5_reg_1490;
assign grp_fu_1394_p0 = grp_fu_1394_p00;
assign grp_fu_1394_p00 = empty_59_fu_1034_p2;
assign grp_fu_1394_p1 = 16'd210;
assign grp_fu_1394_p2 = zext_ln175_5_reg_1490;
assign grp_fu_1402_p0 = grp_fu_1402_p00;
assign grp_fu_1402_p00 = empty_62_fu_1054_p2;
assign grp_fu_1402_p1 = 16'd210;
assign grp_fu_1402_p2 = zext_ln175_5_reg_1490;
assign grp_fu_1410_p0 = grp_fu_1410_p00;
assign grp_fu_1410_p00 = empty_65_fu_1082_p2;
assign grp_fu_1410_p1 = 16'd210;
assign grp_fu_1410_p2 = zext_ln175_5_reg_1490;
assign grp_fu_1418_p1 = 8'd8;
assign grp_fu_1418_p2 = 16'd210;
assign grp_fu_1418_p3 = zext_ln175_5_reg_1490;
assign grp_fu_148_p_ce = grp_fu_1953_ce;
assign grp_fu_148_p_din0 = grp_fu_1953_p0;
assign grp_fu_148_p_din1 = grp_fu_1953_p1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_388_ce;
assign grp_fu_152_p_din0 = grp_fu_388_p0;
assign grp_fu_152_p_din1 = grp_fu_388_p1;
assign grp_fu_156_p_ce = grp_fu_392_ce;
assign grp_fu_156_p_din0 = grp_fu_392_p0;
assign grp_fu_156_p_din1 = grp_fu_392_p1;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_345_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_301_ap_start_reg;
assign icmp_ln168_fu_529_p2 = ((v114_fu_106 < 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_1_fu_924_p2 = ((v115_1_reg_289 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_551_p2 = ((v115_reg_277 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln169_1_fu_1175_p4 = {{v115_1_reg_289[7:3]}};
assign lshr_ln_fu_819_p4 = {{v115_reg_277[7:3]}};
assign mul_ln171_1_fu_1189_p0 = mul_ln171_1_fu_1189_p00;
assign mul_ln171_1_fu_1189_p00 = lshr_ln169_1_fu_1175_p4;
assign mul_ln171_1_fu_1189_p1 = 13'd190;
assign mul_ln171_fu_833_p0 = mul_ln171_fu_833_p00;
assign mul_ln171_fu_833_p00 = lshr_ln_fu_819_p4;
assign mul_ln171_fu_833_p1 = 13'd190;
assign mul_ln175_1_fu_588_p0 = mul_ln175_1_fu_588_p00;
assign mul_ln175_1_fu_588_p00 = or_ln_fu_576_p3;
assign mul_ln175_1_fu_588_p1 = 16'd190;
assign mul_ln175_fu_539_p0 = mul_ln175_fu_539_p00;
assign mul_ln175_fu_539_p00 = v114_fu_106;
assign mul_ln175_fu_539_p1 = 16'd190;
assign mul_ln186_1_fu_1198_p0 = mul_ln186_1_fu_1198_p00;
assign mul_ln186_1_fu_1198_p00 = tmp_9_reg_1742;
assign mul_ln186_1_fu_1198_p1 = 13'd190;
assign mul_ln186_fu_842_p0 = mul_ln186_fu_842_p00;
assign mul_ln186_fu_842_p00 = tmp_reg_1513;
assign mul_ln186_fu_842_p1 = 13'd190;
assign mul_ln199_1_fu_1207_p0 = mul_ln199_1_fu_1207_p00;
assign mul_ln199_1_fu_1207_p00 = tmp_s_reg_1752;
assign mul_ln199_1_fu_1207_p1 = 13'd190;
assign mul_ln199_fu_851_p0 = mul_ln199_fu_851_p00;
assign mul_ln199_fu_851_p00 = tmp_1_reg_1523;
assign mul_ln199_fu_851_p1 = 13'd190;
assign mul_ln212_1_fu_1216_p0 = mul_ln212_1_fu_1216_p00;
assign mul_ln212_1_fu_1216_p00 = tmp_8_reg_1762;
assign mul_ln212_1_fu_1216_p1 = 13'd190;
assign mul_ln212_fu_860_p0 = mul_ln212_fu_860_p00;
assign mul_ln212_fu_860_p00 = tmp_2_reg_1533;
assign mul_ln212_fu_860_p1 = 13'd190;
assign mul_ln225_1_fu_1225_p0 = mul_ln225_1_fu_1225_p00;
assign mul_ln225_1_fu_1225_p00 = tmp_10_reg_1772;
assign mul_ln225_1_fu_1225_p1 = 13'd190;
assign mul_ln225_fu_869_p0 = mul_ln225_fu_869_p00;
assign mul_ln225_fu_869_p00 = tmp_3_reg_1543;
assign mul_ln225_fu_869_p1 = 13'd190;
assign mul_ln238_1_fu_1234_p0 = mul_ln238_1_fu_1234_p00;
assign mul_ln238_1_fu_1234_p00 = tmp_11_reg_1787;
assign mul_ln238_1_fu_1234_p1 = 13'd190;
assign mul_ln238_fu_878_p0 = mul_ln238_fu_878_p00;
assign mul_ln238_fu_878_p00 = tmp_4_reg_1558;
assign mul_ln238_fu_878_p1 = 13'd190;
assign mul_ln251_1_fu_1243_p0 = mul_ln251_1_fu_1243_p00;
assign mul_ln251_1_fu_1243_p00 = tmp_12_reg_1797;
assign mul_ln251_1_fu_1243_p1 = 13'd190;
assign mul_ln251_fu_887_p0 = mul_ln251_fu_887_p00;
assign mul_ln251_fu_887_p00 = tmp_5_reg_1568;
assign mul_ln251_fu_887_p1 = 13'd190;
assign mul_ln264_1_fu_1252_p0 = mul_ln264_1_fu_1252_p00;
assign mul_ln264_1_fu_1252_p00 = tmp_13_reg_1817;
assign mul_ln264_1_fu_1252_p1 = 13'd190;
assign mul_ln264_fu_896_p0 = mul_ln264_fu_896_p00;
assign mul_ln264_fu_896_p00 = tmp_6_reg_1588;
assign mul_ln264_fu_896_p1 = 13'd190;
assign mul_ln277_1_fu_1268_p0 = mul_ln277_1_fu_1268_p00;
assign mul_ln277_1_fu_1268_p00 = empty_71_fu_1258_p2;
assign mul_ln277_1_fu_1268_p1 = 13'd190;
assign mul_ln277_fu_912_p0 = mul_ln277_fu_912_p00;
assign mul_ln277_fu_912_p00 = empty_43_fu_902_p2;
assign mul_ln277_fu_912_p1 = 13'd190;
assign or_ln_fu_576_p3 = {{tmp_7_fu_567_p4}, {1'd1}};
assign p_cast1926_fu_674_p1 = grp_fu_1280_p3;
assign p_cast1927_fu_722_p1 = grp_fu_1296_p3;
assign p_cast1928_fu_746_p1 = grp_fu_1304_p3;
assign p_cast1929_fu_750_p1 = grp_fu_1312_p3;
assign p_cast1930_fu_754_p1 = grp_fu_1320_p3;
assign p_cast1931_fu_758_p1 = grp_fu_1328_p3;
assign p_cast1932_fu_762_p1 = grp_fu_1336_p3;
assign p_cast1933_fu_766_p1 = grp_fu_1344_p4;
assign p_cast1934_fu_1030_p1 = grp_fu_1354_p3;
assign p_cast1935_fu_1074_p1 = grp_fu_1362_p3;
assign p_cast1936_fu_1078_p1 = grp_fu_1370_p3;
assign p_cast1937_fu_1102_p1 = grp_fu_1378_p3;
assign p_cast1938_fu_1106_p1 = grp_fu_1386_p3;
assign p_cast1939_fu_1110_p1 = grp_fu_1394_p3;
assign p_cast1940_fu_1114_p1 = grp_fu_1402_p3;
assign p_cast1941_fu_1118_p1 = grp_fu_1410_p3;
assign p_cast1942_fu_1122_p1 = grp_fu_1418_p4;
assign p_cast_fu_718_p1 = grp_fu_1288_p3;
assign tmp_7_fu_567_p4 = {{v114_fu_106[7:1]}};
assign trunc_ln169_1_fu_1171_p1 = v115_1_reg_289[2:0];
assign trunc_ln169_fu_815_p1 = v115_reg_277[2:0];
assign v119_1_fu_1126_p1 = reg_424;
assign v119_fu_770_p1 = reg_424;
assign v132_1_fu_1131_p1 = reg_429;
assign v132_fu_775_p1 = reg_429;
assign v143_1_fu_1136_p1 = reg_433;
assign v143_fu_780_p1 = reg_433;
assign v154_1_fu_1141_p1 = reg_437;
assign v154_fu_785_p1 = reg_437;
assign v165_1_fu_1146_p1 = reg_442;
assign v165_fu_790_p1 = reg_442;
assign v176_1_fu_1151_p1 = reg_447;
assign v176_fu_795_p1 = reg_447;
assign v187_1_fu_1156_p1 = reg_452;
assign v187_fu_800_p1 = reg_452;
assign v198_1_fu_1161_p1 = reg_457;
assign v198_fu_805_p1 = reg_457;
assign v209_1_fu_1166_p1 = reg_462;
assign v209_fu_810_p1 = reg_462;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln175_5_fu_584_p1 = or_ln_fu_576_p3;
assign zext_ln175_fu_535_p1 = v114_fu_106;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1454[15:8] <= 8'b00000000;
    zext_ln175_5_reg_1490[0] <= 1'b1;
    zext_ln175_5_reg_1490[15:8] <= 8'b00000000;
end
endmodule 