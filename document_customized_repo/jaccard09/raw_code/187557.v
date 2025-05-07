module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v113,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_opcode,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_opcode,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_opcode,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_dout0,grp_fu_224_p_ce,grp_fu_228_p_din0,grp_fu_228_p_din1,grp_fu_228_p_dout0,grp_fu_228_p_ce); 
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
output  [12:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [12:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [12:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [12:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [12:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [12:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [12:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [12:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [12:0] v227_4_address0;
output   v227_4_ce0;
input  [31:0] v227_4_q0;
output  [12:0] v227_4_address1;
output   v227_4_ce1;
input  [31:0] v227_4_q1;
output  [12:0] v227_5_address0;
output   v227_5_ce0;
input  [31:0] v227_5_q0;
output  [12:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
output  [12:0] v227_6_address0;
output   v227_6_ce0;
input  [31:0] v227_6_q0;
output  [12:0] v227_6_address1;
output   v227_6_ce1;
input  [31:0] v227_6_q1;
output  [12:0] v227_7_address0;
output   v227_7_ce0;
input  [31:0] v227_7_q0;
output  [12:0] v227_7_address1;
output   v227_7_ce1;
input  [31:0] v227_7_q1;
output  [0:0] v236_din;
input   v236_full_n;
output   v236_write;
output  [14:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [14:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
output  [14:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [14:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
input  [31:0] v113;
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
output  [1:0] grp_fu_184_p_opcode;
input  [31:0] grp_fu_184_p_dout0;
output   grp_fu_184_p_ce;
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
output  [1:0] grp_fu_188_p_opcode;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
output  [1:0] grp_fu_192_p_opcode;
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
output  [31:0] grp_fu_204_p_din0;
output  [31:0] grp_fu_204_p_din1;
input  [31:0] grp_fu_204_p_dout0;
output   grp_fu_204_p_ce;
output  [31:0] grp_fu_208_p_din0;
output  [31:0] grp_fu_208_p_din1;
input  [31:0] grp_fu_208_p_dout0;
output   grp_fu_208_p_ce;
output  [31:0] grp_fu_212_p_din0;
output  [31:0] grp_fu_212_p_din1;
input  [31:0] grp_fu_212_p_dout0;
output   grp_fu_212_p_ce;
output  [31:0] grp_fu_216_p_din0;
output  [31:0] grp_fu_216_p_din1;
input  [31:0] grp_fu_216_p_dout0;
output   grp_fu_216_p_ce;
output  [31:0] grp_fu_220_p_din0;
output  [31:0] grp_fu_220_p_din1;
input  [31:0] grp_fu_220_p_dout0;
output   grp_fu_220_p_ce;
output  [31:0] grp_fu_224_p_din0;
output  [31:0] grp_fu_224_p_din1;
input  [31:0] grp_fu_224_p_dout0;
output   grp_fu_224_p_ce;
output  [31:0] grp_fu_228_p_din0;
output  [31:0] grp_fu_228_p_din1;
input  [31:0] grp_fu_228_p_dout0;
output   grp_fu_228_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[14:0] v225_0_address0;
reg v225_0_ce0;
reg v225_0_we0;
reg[31:0] v225_0_d0;
reg[14:0] v225_0_address1;
reg v225_0_ce1;
reg v225_0_we1;
reg[31:0] v225_0_d1;
reg[14:0] v225_1_address0;
reg v225_1_ce0;
reg v225_1_we0;
reg[31:0] v225_1_d0;
reg[14:0] v225_1_address1;
reg v225_1_ce1;
reg v225_1_we1;
reg[31:0] v225_1_d1;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_489_p2;
reg   [31:0] reg_427;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state30;
reg   [31:0] reg_433;
reg   [31:0] reg_439;
reg   [31:0] reg_445;
reg   [31:0] reg_451;
reg   [31:0] reg_457;
reg   [31:0] reg_463;
reg   [31:0] reg_469;
reg   [31:0] reg_475;
wire   [2:0] trunc_ln168_fu_495_p1;
reg   [2:0] trunc_ln168_reg_1319;
wire   [12:0] mul_ln175_fu_513_p2;
reg   [12:0] mul_ln175_reg_1325;
wire   [14:0] zext_ln168_fu_529_p1;
reg   [14:0] zext_ln168_reg_1331;
wire   [0:0] cmp11_fu_533_p2;
reg   [0:0] cmp11_reg_1353;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_549_p2;
reg   [7:0] add_ln169_reg_1366;
wire    ap_CS_fsm_state4;
reg   [6:0] tmp_reg_1376;
wire    ap_CS_fsm_state5;
reg   [6:0] tmp_1_reg_1386;
wire    ap_CS_fsm_state6;
reg   [6:0] tmp_2_reg_1401;
reg   [31:0] v226_0_load_reg_1406;
wire    ap_CS_fsm_state7;
reg   [6:0] tmp_3_reg_1426;
reg   [31:0] v226_0_load_1_reg_1431;
wire    ap_CS_fsm_state8;
reg   [31:0] v226_0_load_2_reg_1436;
reg   [31:0] v226_0_load_3_reg_1451;
wire    ap_CS_fsm_state9;
reg   [31:0] v226_0_load_4_reg_1456;
reg   [31:0] v226_0_load_5_reg_1471;
wire    ap_CS_fsm_state10;
reg   [31:0] v226_0_load_6_reg_1476;
reg   [31:0] v226_0_load_7_reg_1491;
wire    ap_CS_fsm_state11;
reg   [31:0] v226_0_load_8_reg_1496;
wire   [31:0] v119_fu_671_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_675_p1;
wire   [31:0] v143_fu_679_p1;
wire   [31:0] v154_fu_683_p1;
wire   [31:0] v165_fu_687_p1;
wire   [31:0] v176_fu_691_p1;
wire   [31:0] v187_fu_695_p1;
wire   [31:0] v198_fu_699_p1;
wire   [31:0] v209_fu_703_p1;
wire   [0:0] trunc_ln169_fu_707_p1;
reg   [0:0] trunc_ln169_reg_1546;
wire   [14:0] mul_ln171_fu_725_p2;
reg   [14:0] mul_ln171_reg_1551;
wire   [14:0] mul_ln186_fu_734_p2;
reg   [14:0] mul_ln186_reg_1556;
wire   [14:0] mul_ln199_fu_750_p2;
reg   [14:0] mul_ln199_reg_1561;
wire   [14:0] mul_ln212_fu_759_p2;
reg   [14:0] mul_ln212_reg_1566;
wire   [14:0] mul_ln225_fu_775_p2;
reg   [14:0] mul_ln225_reg_1571;
wire   [14:0] mul_ln238_fu_784_p2;
reg   [14:0] mul_ln238_reg_1576;
wire   [14:0] mul_ln251_fu_800_p2;
reg   [14:0] mul_ln251_reg_1581;
wire   [14:0] mul_ln264_fu_809_p2;
reg   [14:0] mul_ln264_reg_1586;
wire   [14:0] mul_ln277_fu_825_p2;
reg   [14:0] mul_ln277_reg_1591;
wire    ap_CS_fsm_state18;
wire   [7:0] add_ln169_1_fu_841_p2;
reg   [7:0] add_ln169_1_reg_1604;
wire    ap_CS_fsm_state19;
reg   [6:0] tmp_s_reg_1614;
wire    ap_CS_fsm_state20;
reg   [6:0] tmp_6_reg_1624;
wire    ap_CS_fsm_state21;
reg   [6:0] tmp_7_reg_1639;
reg   [31:0] v226_1_load_reg_1644;
wire    ap_CS_fsm_state22;
reg   [6:0] tmp_8_reg_1664;
reg   [31:0] v226_1_load_1_reg_1669;
wire    ap_CS_fsm_state23;
reg   [31:0] v226_1_load_2_reg_1674;
reg   [31:0] v226_1_load_3_reg_1689;
wire    ap_CS_fsm_state24;
reg   [31:0] v226_1_load_4_reg_1694;
reg   [31:0] v226_1_load_5_reg_1709;
wire    ap_CS_fsm_state25;
reg   [31:0] v226_1_load_6_reg_1714;
reg   [31:0] v226_1_load_7_reg_1729;
wire    ap_CS_fsm_state26;
reg   [31:0] v226_1_load_8_reg_1734;
wire   [31:0] v119_1_fu_973_p1;
wire    ap_CS_fsm_state27;
wire   [31:0] v132_1_fu_977_p1;
wire   [31:0] v143_1_fu_981_p1;
wire   [31:0] v154_1_fu_985_p1;
wire   [31:0] v165_1_fu_989_p1;
wire   [31:0] v176_1_fu_993_p1;
wire   [31:0] v187_1_fu_997_p1;
wire   [31:0] v198_1_fu_1001_p1;
wire   [31:0] v209_1_fu_1005_p1;
wire   [0:0] trunc_ln169_1_fu_1009_p1;
reg   [0:0] trunc_ln169_1_reg_1784;
wire   [14:0] mul_ln171_1_fu_1027_p2;
reg   [14:0] mul_ln171_1_reg_1789;
wire   [14:0] mul_ln186_1_fu_1036_p2;
reg   [14:0] mul_ln186_1_reg_1794;
wire   [14:0] mul_ln199_1_fu_1052_p2;
reg   [14:0] mul_ln199_1_reg_1799;
wire   [14:0] mul_ln212_1_fu_1061_p2;
reg   [14:0] mul_ln212_1_reg_1804;
wire   [14:0] mul_ln225_1_fu_1077_p2;
reg   [14:0] mul_ln225_1_reg_1809;
wire   [14:0] mul_ln238_1_fu_1086_p2;
reg   [14:0] mul_ln238_1_reg_1814;
wire   [14:0] mul_ln251_1_fu_1102_p2;
reg   [14:0] mul_ln251_1_reg_1819;
wire   [14:0] mul_ln264_1_fu_1111_p2;
reg   [14:0] mul_ln264_1_reg_1824;
wire   [14:0] mul_ln277_1_fu_1127_p2;
reg   [14:0] mul_ln277_1_reg_1829;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_0_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_0_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_2_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_2_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_4_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_4_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_6_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_6_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1834_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1834_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1834_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1834_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1838_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1838_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1838_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1838_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1842_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1842_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1842_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1842_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_391_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_391_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_391_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_395_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_395_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_395_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_399_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_399_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_399_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_1_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_1_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_3_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_3_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_5_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_5_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_7_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_7_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1834_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1834_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1834_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1834_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1838_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1838_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1838_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1838_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1842_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1842_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1842_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1842_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_391_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_391_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_391_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_395_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_395_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_395_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_399_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_399_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_399_p_ce;
reg   [7:0] v115_reg_292;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg   [7:0] v115_1_reg_304;
wire    ap_CS_fsm_state32;
wire   [0:0] icmp_ln169_fu_539_p2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_start_reg;
wire    ap_CS_fsm_state16;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_start_reg;
wire    ap_CS_fsm_state31;
wire   [63:0] p_cast2256_fu_595_p1;
wire   [63:0] p_cast_fu_619_p1;
wire   [63:0] p_cast2257_fu_623_p1;
wire   [63:0] p_cast2258_fu_647_p1;
wire   [63:0] p_cast2259_fu_651_p1;
wire   [63:0] p_cast2260_fu_655_p1;
wire   [63:0] p_cast2261_fu_659_p1;
wire   [63:0] p_cast2262_fu_663_p1;
wire   [63:0] p_cast2263_fu_667_p1;
wire   [63:0] p_cast2264_fu_897_p1;
wire   [63:0] p_cast2265_fu_921_p1;
wire   [63:0] p_cast2266_fu_925_p1;
wire   [63:0] p_cast2267_fu_949_p1;
wire   [63:0] p_cast2268_fu_953_p1;
wire   [63:0] p_cast2269_fu_957_p1;
wire   [63:0] p_cast2270_fu_961_p1;
wire   [63:0] p_cast2271_fu_965_p1;
wire   [63:0] p_cast2272_fu_969_p1;
reg   [7:0] v114_fu_112;
wire   [7:0] add_ln168_fu_847_p2;
wire   [0:0] icmp_ln169_1_fu_831_p2;
reg    v236_write_local;
reg    v226_0_ce0_local;
reg   [14:0] v226_0_address0_local;
reg    v226_0_ce1_local;
reg   [14:0] v226_0_address1_local;
reg    v226_1_ce0_local;
reg   [14:0] v226_1_address0_local;
reg    v226_1_ce1_local;
reg   [14:0] v226_1_address1_local;
reg   [31:0] grp_fu_391_p0;
reg   [31:0] grp_fu_391_p1;
reg   [31:0] grp_fu_395_p0;
reg   [31:0] grp_fu_395_p1;
reg   [31:0] grp_fu_399_p0;
reg   [31:0] grp_fu_399_p1;
reg   [31:0] grp_fu_403_p0;
reg   [31:0] grp_fu_407_p0;
reg   [31:0] grp_fu_411_p0;
reg   [31:0] grp_fu_415_p0;
reg   [31:0] grp_fu_419_p0;
reg   [31:0] grp_fu_423_p0;
wire   [4:0] lshr_ln_fu_499_p4;
wire   [4:0] mul_ln175_fu_513_p0;
wire   [8:0] mul_ln175_fu_513_p1;
wire   [6:0] lshr_ln168_1_fu_519_p4;
wire   [7:0] empty_27_fu_555_p2;
wire   [7:0] empty_34_fu_575_p2;
wire   [14:0] grp_fu_1133_p3;
wire   [7:0] empty_41_fu_599_p2;
wire   [14:0] grp_fu_1141_p3;
wire   [14:0] grp_fu_1149_p4;
wire   [7:0] empty_48_fu_627_p2;
wire   [14:0] grp_fu_1159_p3;
wire   [14:0] grp_fu_1167_p4;
wire   [14:0] grp_fu_1177_p3;
wire   [14:0] grp_fu_1185_p4;
wire   [14:0] grp_fu_1195_p3;
wire   [14:0] grp_fu_1203_p4;
wire   [6:0] lshr_ln1_fu_711_p4;
wire   [6:0] mul_ln171_fu_725_p0;
wire   [8:0] mul_ln171_fu_725_p1;
wire   [6:0] mul_ln186_fu_734_p0;
wire   [8:0] mul_ln186_fu_734_p1;
wire   [6:0] empty_33_fu_740_p2;
wire   [6:0] mul_ln199_fu_750_p0;
wire   [8:0] mul_ln199_fu_750_p1;
wire   [6:0] mul_ln212_fu_759_p0;
wire   [8:0] mul_ln212_fu_759_p1;
wire   [6:0] empty_40_fu_765_p2;
wire   [6:0] mul_ln225_fu_775_p0;
wire   [8:0] mul_ln225_fu_775_p1;
wire   [6:0] mul_ln238_fu_784_p0;
wire   [8:0] mul_ln238_fu_784_p1;
wire   [6:0] empty_47_fu_790_p2;
wire   [6:0] mul_ln251_fu_800_p0;
wire   [8:0] mul_ln251_fu_800_p1;
wire   [6:0] mul_ln264_fu_809_p0;
wire   [8:0] mul_ln264_fu_809_p1;
wire   [6:0] empty_54_fu_815_p2;
wire   [6:0] mul_ln277_fu_825_p0;
wire   [8:0] mul_ln277_fu_825_p1;
wire   [7:0] empty_57_fu_857_p2;
wire   [7:0] empty_64_fu_877_p2;
wire   [14:0] grp_fu_1213_p3;
wire   [7:0] empty_71_fu_901_p2;
wire   [14:0] grp_fu_1221_p3;
wire   [14:0] grp_fu_1229_p4;
wire   [7:0] empty_78_fu_929_p2;
wire   [14:0] grp_fu_1239_p3;
wire   [14:0] grp_fu_1247_p4;
wire   [14:0] grp_fu_1257_p3;
wire   [14:0] grp_fu_1265_p4;
wire   [14:0] grp_fu_1275_p3;
wire   [14:0] grp_fu_1283_p4;
wire   [6:0] lshr_ln169_1_fu_1013_p4;
wire   [6:0] mul_ln171_1_fu_1027_p0;
wire   [8:0] mul_ln171_1_fu_1027_p1;
wire   [6:0] mul_ln186_1_fu_1036_p0;
wire   [8:0] mul_ln186_1_fu_1036_p1;
wire   [6:0] empty_63_fu_1042_p2;
wire   [6:0] mul_ln199_1_fu_1052_p0;
wire   [8:0] mul_ln199_1_fu_1052_p1;
wire   [6:0] mul_ln212_1_fu_1061_p0;
wire   [8:0] mul_ln212_1_fu_1061_p1;
wire   [6:0] empty_70_fu_1067_p2;
wire   [6:0] mul_ln225_1_fu_1077_p0;
wire   [8:0] mul_ln225_1_fu_1077_p1;
wire   [6:0] mul_ln238_1_fu_1086_p0;
wire   [8:0] mul_ln238_1_fu_1086_p1;
wire   [6:0] empty_77_fu_1092_p2;
wire   [6:0] mul_ln251_1_fu_1102_p0;
wire   [8:0] mul_ln251_1_fu_1102_p1;
wire   [6:0] mul_ln264_1_fu_1111_p0;
wire   [8:0] mul_ln264_1_fu_1111_p1;
wire   [6:0] empty_84_fu_1117_p2;
wire   [6:0] mul_ln277_1_fu_1127_p0;
wire   [8:0] mul_ln277_1_fu_1127_p1;
wire   [7:0] grp_fu_1133_p0;
wire   [6:0] grp_fu_1133_p1;
wire   [6:0] grp_fu_1133_p2;
wire   [7:0] grp_fu_1141_p0;
wire   [6:0] grp_fu_1141_p1;
wire   [6:0] grp_fu_1141_p2;
wire   [1:0] grp_fu_1149_p1;
wire   [6:0] grp_fu_1149_p2;
wire   [6:0] grp_fu_1149_p3;
wire   [7:0] grp_fu_1159_p0;
wire   [6:0] grp_fu_1159_p1;
wire   [6:0] grp_fu_1159_p2;
wire   [2:0] grp_fu_1167_p1;
wire   [6:0] grp_fu_1167_p2;
wire   [6:0] grp_fu_1167_p3;
wire   [7:0] grp_fu_1177_p0;
wire   [6:0] grp_fu_1177_p1;
wire   [6:0] grp_fu_1177_p2;
wire   [2:0] grp_fu_1185_p1;
wire   [6:0] grp_fu_1185_p2;
wire   [6:0] grp_fu_1185_p3;
wire   [7:0] grp_fu_1195_p0;
wire   [6:0] grp_fu_1195_p1;
wire   [6:0] grp_fu_1195_p2;
wire   [3:0] grp_fu_1203_p1;
wire   [6:0] grp_fu_1203_p2;
wire   [6:0] grp_fu_1203_p3;
wire   [7:0] grp_fu_1213_p0;
wire   [6:0] grp_fu_1213_p1;
wire   [6:0] grp_fu_1213_p2;
wire   [7:0] grp_fu_1221_p0;
wire   [6:0] grp_fu_1221_p1;
wire   [6:0] grp_fu_1221_p2;
wire   [1:0] grp_fu_1229_p1;
wire   [6:0] grp_fu_1229_p2;
wire   [6:0] grp_fu_1229_p3;
wire   [7:0] grp_fu_1239_p0;
wire   [6:0] grp_fu_1239_p1;
wire   [6:0] grp_fu_1239_p2;
wire   [2:0] grp_fu_1247_p1;
wire   [6:0] grp_fu_1247_p2;
wire   [6:0] grp_fu_1247_p3;
wire   [7:0] grp_fu_1257_p0;
wire   [6:0] grp_fu_1257_p1;
wire   [6:0] grp_fu_1257_p2;
wire   [2:0] grp_fu_1265_p1;
wire   [6:0] grp_fu_1265_p2;
wire   [6:0] grp_fu_1265_p3;
wire   [7:0] grp_fu_1275_p0;
wire   [6:0] grp_fu_1275_p1;
wire   [6:0] grp_fu_1275_p2;
wire   [3:0] grp_fu_1283_p1;
wire   [6:0] grp_fu_1283_p2;
wire   [6:0] grp_fu_1283_p3;
reg    grp_fu_391_ce;
reg    grp_fu_395_ce;
reg    grp_fu_399_ce;
reg   [31:0] grp_fu_1834_p0;
reg   [31:0] grp_fu_1834_p1;
reg    grp_fu_1834_ce;
reg   [31:0] grp_fu_1838_p0;
reg   [31:0] grp_fu_1838_p1;
reg    grp_fu_1838_ce;
reg   [31:0] grp_fu_1842_p0;
reg   [31:0] grp_fu_1842_p1;
reg    grp_fu_1842_ce;
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
wire   [14:0] grp_fu_1133_p00;
wire   [14:0] grp_fu_1141_p00;
wire   [14:0] grp_fu_1159_p00;
wire   [14:0] grp_fu_1177_p00;
wire   [14:0] grp_fu_1195_p00;
wire   [14:0] grp_fu_1213_p00;
wire   [14:0] grp_fu_1221_p00;
wire   [14:0] grp_fu_1239_p00;
wire   [14:0] grp_fu_1257_p00;
wire   [14:0] grp_fu_1275_p00;
wire   [14:0] mul_ln171_1_fu_1027_p00;
wire   [14:0] mul_ln171_fu_725_p00;
wire   [12:0] mul_ln175_fu_513_p00;
wire   [14:0] mul_ln186_1_fu_1036_p00;
wire   [14:0] mul_ln186_fu_734_p00;
wire   [14:0] mul_ln199_1_fu_1052_p00;
wire   [14:0] mul_ln199_fu_750_p00;
wire   [14:0] mul_ln212_1_fu_1061_p00;
wire   [14:0] mul_ln212_fu_759_p00;
wire   [14:0] mul_ln225_1_fu_1077_p00;
wire   [14:0] mul_ln225_fu_775_p00;
wire   [14:0] mul_ln238_1_fu_1086_p00;
wire   [14:0] mul_ln238_fu_784_p00;
wire   [14:0] mul_ln251_1_fu_1102_p00;
wire   [14:0] mul_ln251_fu_800_p00;
wire   [14:0] mul_ln264_1_fu_1111_p00;
wire   [14:0] mul_ln264_fu_809_p00;
wire   [14:0] mul_ln277_1_fu_1127_p00;
wire   [14:0] mul_ln277_fu_825_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_start_reg = 1'b0;
#0 v114_fu_112 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_316(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_d1),.v225_1_q1(v225_1_q1),.mul_ln175(mul_ln175_reg_1325),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_4_address0),.v227_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_4_ce0),.v227_4_q0(v227_4_q0),.v227_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_4_address1),.v227_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_4_ce1),.v227_4_q1(v227_4_q1),.v227_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_6_address0),.v227_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_6_ce0),.v227_6_q0(v227_6_q0),.v227_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_6_address1),.v227_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_6_ce1),.v227_6_q1(v227_6_q1),.mul_ln171(mul_ln171_reg_1551),.mul_ln199(mul_ln199_reg_1561),.mul_ln225(mul_ln225_reg_1571),.mul_ln251(mul_ln251_reg_1581),.mul_ln277(mul_ln277_reg_1591),.mul_ln186(mul_ln186_reg_1556),.mul_ln212(mul_ln212_reg_1566),.mul_ln238(mul_ln238_reg_1576),.mul_ln264(mul_ln264_reg_1586),.empty_20(trunc_ln169_reg_1546),.cmp11(cmp11_reg_1353),.empty(trunc_ln168_reg_1319),.v120(reg_427),.v133(reg_433),.v144(reg_439),.v155(reg_445),.v166(reg_451),.v177(reg_457),.v188(reg_463),.v199(reg_469),.v210(reg_475),.grp_fu_1834_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1834_p_din0),.grp_fu_1834_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1834_p_din1),.grp_fu_1834_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1834_p_opcode),.grp_fu_1834_p_dout0(grp_fu_184_p_dout0),.grp_fu_1834_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1834_p_ce),.grp_fu_1838_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1838_p_din0),.grp_fu_1838_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1838_p_din1),.grp_fu_1838_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1838_p_opcode),.grp_fu_1838_p_dout0(grp_fu_188_p_dout0),.grp_fu_1838_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1838_p_ce),.grp_fu_1842_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1842_p_din0),.grp_fu_1842_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1842_p_din1),.grp_fu_1842_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1842_p_opcode),.grp_fu_1842_p_dout0(grp_fu_192_p_dout0),.grp_fu_1842_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1842_p_ce),.grp_fu_391_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_391_p_din0),.grp_fu_391_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_391_p_din1),.grp_fu_391_p_dout0(grp_fu_196_p_dout0),.grp_fu_391_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_391_p_ce),.grp_fu_395_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_395_p_din0),.grp_fu_395_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_395_p_din1),.grp_fu_395_p_dout0(grp_fu_200_p_dout0),.grp_fu_395_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_395_p_ce),.grp_fu_399_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_399_p_din0),.grp_fu_399_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_399_p_din1),.grp_fu_399_p_dout0(grp_fu_204_p_dout0),.grp_fu_399_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_399_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_354(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_d1),.v225_1_q1(v225_1_q1),.mul_ln175(mul_ln175_reg_1325),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_3_ce1),.v227_3_q1(v227_3_q1),.v227_5_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_5_address0),.v227_5_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_5_ce0),.v227_5_q0(v227_5_q0),.v227_5_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_5_address1),.v227_5_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_5_ce1),.v227_5_q1(v227_5_q1),.v227_7_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_7_address0),.v227_7_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_7_ce0),.v227_7_q0(v227_7_q0),.v227_7_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_7_address1),.v227_7_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_7_ce1),.v227_7_q1(v227_7_q1),.mul_ln171_1(mul_ln171_1_reg_1789),.mul_ln199_1(mul_ln199_1_reg_1799),.mul_ln225_1(mul_ln225_1_reg_1809),.mul_ln251_1(mul_ln251_1_reg_1819),.mul_ln277_1(mul_ln277_1_reg_1829),.mul_ln186_1(mul_ln186_1_reg_1794),.mul_ln212_1(mul_ln212_1_reg_1804),.mul_ln238_1(mul_ln238_1_reg_1814),.mul_ln264_1(mul_ln264_1_reg_1824),.empty_19(trunc_ln169_1_reg_1784),.empty(trunc_ln168_reg_1319),.v120_4(reg_427),.v133_1(reg_433),.v144_1(reg_439),.v155_1(reg_445),.v166_1(reg_451),.v177_1(reg_457),.v188_1(reg_463),.v199_1(reg_469),.v210_1(reg_475),.grp_fu_1834_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1834_p_din0),.grp_fu_1834_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1834_p_din1),.grp_fu_1834_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1834_p_opcode),.grp_fu_1834_p_dout0(grp_fu_184_p_dout0),.grp_fu_1834_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1834_p_ce),.grp_fu_1838_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1838_p_din0),.grp_fu_1838_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1838_p_din1),.grp_fu_1838_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1838_p_opcode),.grp_fu_1838_p_dout0(grp_fu_188_p_dout0),.grp_fu_1838_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1838_p_ce),.grp_fu_1842_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1842_p_din0),.grp_fu_1842_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1842_p_din1),.grp_fu_1842_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1842_p_opcode),.grp_fu_1842_p_dout0(grp_fu_192_p_dout0),.grp_fu_1842_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1842_p_ce),.grp_fu_391_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_391_p_din0),.grp_fu_391_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_391_p_din1),.grp_fu_391_p_dout0(grp_fu_196_p_dout0),.grp_fu_391_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_391_p_ce),.grp_fu_395_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_395_p_din0),.grp_fu_395_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_395_p_din1),.grp_fu_395_p_dout0(grp_fu_200_p_dout0),.grp_fu_395_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_395_p_ce),.grp_fu_399_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_399_p_din0),.grp_fu_399_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_399_p_din1),.grp_fu_399_p_dout0(grp_fu_204_p_dout0),.grp_fu_399_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_399_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U94(.din0(mul_ln175_fu_513_p0),.din1(mul_ln175_fu_513_p1),.dout(mul_ln175_fu_513_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U95(.din0(mul_ln171_fu_725_p0),.din1(mul_ln171_fu_725_p1),.dout(mul_ln171_fu_725_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U96(.din0(mul_ln186_fu_734_p0),.din1(mul_ln186_fu_734_p1),.dout(mul_ln186_fu_734_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U97(.din0(mul_ln199_fu_750_p0),.din1(mul_ln199_fu_750_p1),.dout(mul_ln199_fu_750_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U98(.din0(mul_ln212_fu_759_p0),.din1(mul_ln212_fu_759_p1),.dout(mul_ln212_fu_759_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U99(.din0(mul_ln225_fu_775_p0),.din1(mul_ln225_fu_775_p1),.dout(mul_ln225_fu_775_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U100(.din0(mul_ln238_fu_784_p0),.din1(mul_ln238_fu_784_p1),.dout(mul_ln238_fu_784_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U101(.din0(mul_ln251_fu_800_p0),.din1(mul_ln251_fu_800_p1),.dout(mul_ln251_fu_800_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U102(.din0(mul_ln264_fu_809_p0),.din1(mul_ln264_fu_809_p1),.dout(mul_ln264_fu_809_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U103(.din0(mul_ln277_fu_825_p0),.din1(mul_ln277_fu_825_p1),.dout(mul_ln277_fu_825_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U104(.din0(mul_ln171_1_fu_1027_p0),.din1(mul_ln171_1_fu_1027_p1),.dout(mul_ln171_1_fu_1027_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U105(.din0(mul_ln186_1_fu_1036_p0),.din1(mul_ln186_1_fu_1036_p1),.dout(mul_ln186_1_fu_1036_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U106(.din0(mul_ln199_1_fu_1052_p0),.din1(mul_ln199_1_fu_1052_p1),.dout(mul_ln199_1_fu_1052_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U107(.din0(mul_ln212_1_fu_1061_p0),.din1(mul_ln212_1_fu_1061_p1),.dout(mul_ln212_1_fu_1061_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U108(.din0(mul_ln225_1_fu_1077_p0),.din1(mul_ln225_1_fu_1077_p1),.dout(mul_ln225_1_fu_1077_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U109(.din0(mul_ln238_1_fu_1086_p0),.din1(mul_ln238_1_fu_1086_p1),.dout(mul_ln238_1_fu_1086_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U110(.din0(mul_ln251_1_fu_1102_p0),.din1(mul_ln251_1_fu_1102_p1),.dout(mul_ln251_1_fu_1102_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U111(.din0(mul_ln264_1_fu_1111_p0),.din1(mul_ln264_1_fu_1111_p1),.dout(mul_ln264_1_fu_1111_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U112(.din0(mul_ln277_1_fu_1127_p0),.din1(mul_ln277_1_fu_1127_p1),.dout(mul_ln277_1_fu_1127_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U113(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1133_p0),.din1(grp_fu_1133_p1),.din2(grp_fu_1133_p2),.ce(1'b1),.dout(grp_fu_1133_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U114(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1141_p0),.din1(grp_fu_1141_p1),.din2(grp_fu_1141_p2),.ce(1'b1),.dout(grp_fu_1141_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_2ns_7ns_7ns_15_4_1_U115(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_292),.din1(grp_fu_1149_p1),.din2(grp_fu_1149_p2),.din3(grp_fu_1149_p3),.ce(1'b1),.dout(grp_fu_1149_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U116(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1159_p0),.din1(grp_fu_1159_p1),.din2(grp_fu_1159_p2),.ce(1'b1),.dout(grp_fu_1159_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U117(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_292),.din1(grp_fu_1167_p1),.din2(grp_fu_1167_p2),.din3(grp_fu_1167_p3),.ce(1'b1),.dout(grp_fu_1167_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U118(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1177_p0),.din1(grp_fu_1177_p1),.din2(grp_fu_1177_p2),.ce(1'b1),.dout(grp_fu_1177_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U119(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_292),.din1(grp_fu_1185_p1),.din2(grp_fu_1185_p2),.din3(grp_fu_1185_p3),.ce(1'b1),.dout(grp_fu_1185_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U120(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1195_p0),.din1(grp_fu_1195_p1),.din2(grp_fu_1195_p2),.ce(1'b1),.dout(grp_fu_1195_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U121(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_292),.din1(grp_fu_1203_p1),.din2(grp_fu_1203_p2),.din3(grp_fu_1203_p3),.ce(1'b1),.dout(grp_fu_1203_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U122(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1213_p0),.din1(grp_fu_1213_p1),.din2(grp_fu_1213_p2),.ce(1'b1),.dout(grp_fu_1213_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U123(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1221_p0),.din1(grp_fu_1221_p1),.din2(grp_fu_1221_p2),.ce(1'b1),.dout(grp_fu_1221_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_2ns_7ns_7ns_15_4_1_U124(.clk(ap_clk),.reset(ap_rst),.din0(v115_1_reg_304),.din1(grp_fu_1229_p1),.din2(grp_fu_1229_p2),.din3(grp_fu_1229_p3),.ce(1'b1),.dout(grp_fu_1229_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U125(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1239_p0),.din1(grp_fu_1239_p1),.din2(grp_fu_1239_p2),.ce(1'b1),.dout(grp_fu_1239_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U126(.clk(ap_clk),.reset(ap_rst),.din0(v115_1_reg_304),.din1(grp_fu_1247_p1),.din2(grp_fu_1247_p2),.din3(grp_fu_1247_p3),.ce(1'b1),.dout(grp_fu_1247_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U127(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1257_p0),.din1(grp_fu_1257_p1),.din2(grp_fu_1257_p2),.ce(1'b1),.dout(grp_fu_1257_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U128(.clk(ap_clk),.reset(ap_rst),.din0(v115_1_reg_304),.din1(grp_fu_1265_p1),.din2(grp_fu_1265_p2),.din3(grp_fu_1265_p3),.ce(1'b1),.dout(grp_fu_1265_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U129(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1275_p0),.din1(grp_fu_1275_p1),.din2(grp_fu_1275_p2),.ce(1'b1),.dout(grp_fu_1275_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U130(.clk(ap_clk),.reset(ap_rst),.din0(v115_1_reg_304),.din1(grp_fu_1283_p1),.din2(grp_fu_1283_p2),.din3(grp_fu_1283_p3),.ce(1'b1),.dout(grp_fu_1283_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state31)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_112 <= 8'd0;
    end else if (((icmp_ln169_1_fu_831_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
        v114_fu_112 <= add_ln168_fu_847_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln169_fu_539_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v115_1_reg_304 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
        v115_1_reg_304 <= add_ln169_1_reg_1604;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_292 <= add_ln169_reg_1366;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_489_p2 == 1'd1))) begin
        v115_reg_292 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        add_ln169_1_reg_1604 <= add_ln169_1_fu_841_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_1366 <= add_ln169_fu_549_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_1353 <= cmp11_fu_533_p2;
        mul_ln175_reg_1325 <= mul_ln175_fu_513_p2;
        trunc_ln168_reg_1319 <= trunc_ln168_fu_495_p1;
        zext_ln168_reg_1331[6 : 0] <= zext_ln168_fu_529_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        mul_ln171_1_reg_1789 <= mul_ln171_1_fu_1027_p2;
        mul_ln186_1_reg_1794 <= mul_ln186_1_fu_1036_p2;
        mul_ln199_1_reg_1799 <= mul_ln199_1_fu_1052_p2;
        mul_ln212_1_reg_1804 <= mul_ln212_1_fu_1061_p2;
        mul_ln225_1_reg_1809 <= mul_ln225_1_fu_1077_p2;
        mul_ln238_1_reg_1814 <= mul_ln238_1_fu_1086_p2;
        mul_ln251_1_reg_1819 <= mul_ln251_1_fu_1102_p2;
        mul_ln264_1_reg_1824 <= mul_ln264_1_fu_1111_p2;
        mul_ln277_1_reg_1829 <= mul_ln277_1_fu_1127_p2;
        trunc_ln169_1_reg_1784 <= trunc_ln169_1_fu_1009_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1551 <= mul_ln171_fu_725_p2;
        mul_ln186_reg_1556 <= mul_ln186_fu_734_p2;
        mul_ln199_reg_1561 <= mul_ln199_fu_750_p2;
        mul_ln212_reg_1566 <= mul_ln212_fu_759_p2;
        mul_ln225_reg_1571 <= mul_ln225_fu_775_p2;
        mul_ln238_reg_1576 <= mul_ln238_fu_784_p2;
        mul_ln251_reg_1581 <= mul_ln251_fu_800_p2;
        mul_ln264_reg_1586 <= mul_ln264_fu_809_p2;
        mul_ln277_reg_1591 <= mul_ln277_fu_825_p2;
        trunc_ln169_reg_1546 <= trunc_ln169_fu_707_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state30) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_427 <= grp_fu_196_p_dout0;
        reg_433 <= grp_fu_200_p_dout0;
        reg_439 <= grp_fu_204_p_dout0;
        reg_445 <= grp_fu_208_p_dout0;
        reg_451 <= grp_fu_212_p_dout0;
        reg_457 <= grp_fu_216_p_dout0;
        reg_463 <= grp_fu_220_p_dout0;
        reg_469 <= grp_fu_224_p_dout0;
        reg_475 <= grp_fu_228_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_1_reg_1386 <= {{empty_34_fu_575_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_2_reg_1401 <= {{empty_41_fu_599_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_3_reg_1426 <= {{empty_48_fu_627_p2[7:1]}};
        v226_0_load_reg_1406 <= v226_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        tmp_6_reg_1624 <= {{empty_64_fu_877_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        tmp_7_reg_1639 <= {{empty_71_fu_901_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        tmp_8_reg_1664 <= {{empty_78_fu_929_p2[7:1]}};
        v226_1_load_reg_1644 <= v226_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_1376 <= {{empty_27_fu_555_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        tmp_s_reg_1614 <= {{empty_57_fu_857_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_load_1_reg_1431 <= v226_0_q1;
        v226_0_load_2_reg_1436 <= v226_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_load_3_reg_1451 <= v226_0_q0;
        v226_0_load_4_reg_1456 <= v226_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_load_5_reg_1471 <= v226_0_q0;
        v226_0_load_6_reg_1476 <= v226_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_load_7_reg_1491 <= v226_0_q0;
        v226_0_load_8_reg_1496 <= v226_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_1_load_1_reg_1669 <= v226_1_q1;
        v226_1_load_2_reg_1674 <= v226_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_1_load_3_reg_1689 <= v226_1_q0;
        v226_1_load_4_reg_1694 <= v226_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_1_load_5_reg_1709 <= v226_1_q0;
        v226_1_load_6_reg_1714 <= v226_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state26)) begin
        v226_1_load_7_reg_1729 <= v226_1_q0;
        v226_1_load_8_reg_1734 <= v226_1_q1;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_489_p2 == 1'd0)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_489_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1834_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1834_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1834_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1834_p_ce;
    end else begin
        grp_fu_1834_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1834_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1834_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1834_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1834_p_din0;
    end else begin
        grp_fu_1834_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1834_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1834_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1834_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1834_p_din1;
    end else begin
        grp_fu_1834_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1838_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1838_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1838_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1838_p_ce;
    end else begin
        grp_fu_1838_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1838_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1838_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1838_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1838_p_din0;
    end else begin
        grp_fu_1838_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1838_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1838_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1838_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1838_p_din1;
    end else begin
        grp_fu_1838_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1842_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1842_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1842_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1842_p_ce;
    end else begin
        grp_fu_1842_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1842_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1842_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1842_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1842_p_din0;
    end else begin
        grp_fu_1842_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_1842_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_1842_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1842_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_1842_p_din1;
    end else begin
        grp_fu_1842_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_391_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_391_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_391_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_391_p_ce;
    end else begin
        grp_fu_391_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_391_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_391_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_391_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_391_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_391_p0 = v119_1_fu_973_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_391_p0 = v119_fu_671_p1;
    end else begin
        grp_fu_391_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_391_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_391_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_391_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_391_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_391_p1 = v113;
    end else begin
        grp_fu_391_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_395_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_395_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_395_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_395_p_ce;
    end else begin
        grp_fu_395_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_395_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_395_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_395_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_395_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_395_p0 = v132_1_fu_977_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_395_p0 = v132_fu_675_p1;
    end else begin
        grp_fu_395_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_395_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_395_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_395_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_395_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_395_p1 = v113;
    end else begin
        grp_fu_395_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_399_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_399_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_399_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_399_p_ce;
    end else begin
        grp_fu_399_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_399_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_399_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_399_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_399_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_399_p0 = v143_1_fu_981_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_399_p0 = v143_fu_679_p1;
    end else begin
        grp_fu_399_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        grp_fu_399_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_grp_fu_399_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_399_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_grp_fu_399_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_399_p1 = v113;
    end else begin
        grp_fu_399_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_403_p0 = v154_1_fu_985_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_403_p0 = v154_fu_683_p1;
    end else begin
        grp_fu_403_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_407_p0 = v165_1_fu_989_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_407_p0 = v165_fu_687_p1;
    end else begin
        grp_fu_407_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_411_p0 = v176_1_fu_993_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_411_p0 = v176_fu_691_p1;
    end else begin
        grp_fu_411_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_415_p0 = v187_1_fu_997_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_415_p0 = v187_fu_695_p1;
    end else begin
        grp_fu_415_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_419_p0 = v198_1_fu_1001_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_419_p0 = v198_fu_699_p1;
    end else begin
        grp_fu_419_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state27)) begin
        grp_fu_423_p0 = v209_1_fu_1005_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_423_p0 = v209_fu_703_p1;
    end else begin
        grp_fu_423_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_address0;
    end else begin
        v225_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_address1;
    end else begin
        v225_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_ce0;
    end else begin
        v225_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_ce1;
    end else begin
        v225_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_d0;
    end else begin
        v225_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_d1;
    end else begin
        v225_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_we0;
    end else begin
        v225_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_0_we1;
    end else begin
        v225_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_address0;
    end else begin
        v225_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_address1;
    end else begin
        v225_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_ce0;
    end else begin
        v225_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_ce1;
    end else begin
        v225_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_d0;
    end else begin
        v225_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_d1;
    end else begin
        v225_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_we0;
    end else begin
        v225_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state32)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v225_1_we1;
    end else begin
        v225_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast2262_fu_663_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast2260_fu_655_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast2258_fu_647_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast2257_fu_623_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast2256_fu_595_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast2263_fu_667_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast2261_fu_659_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast2259_fu_651_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_619_p1;
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
        v226_1_address0_local = p_cast2271_fu_965_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_1_address0_local = p_cast2269_fu_957_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_1_address0_local = p_cast2267_fu_949_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_1_address0_local = p_cast2266_fu_925_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_1_address0_local = p_cast2264_fu_897_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        v226_1_address1_local = p_cast2272_fu_969_p1;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        v226_1_address1_local = p_cast2270_fu_961_p1;
    end else if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_1_address1_local = p_cast2268_fu_953_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_1_address1_local = p_cast2265_fu_921_p1;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_489_p2 == 1'd0))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_489_p2 == 1'd0))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_489_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_489_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_539_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state18 : begin
            if (((icmp_ln169_1_fu_831_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state18))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state32))) begin
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
assign add_ln168_fu_847_p2 = (v114_fu_112 + 8'd2);
assign add_ln169_1_fu_841_p2 = (v115_1_reg_304 + 8'd9);
assign add_ln169_fu_549_p2 = (v115_reg_292 + 8'd9);
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
    ap_block_state2 = ((icmp_ln168_fu_489_p2 == 1'd0) & (v236_full_n == 1'b0));
end
assign cmp11_fu_533_p2 = ((v114_fu_112 == 8'd0) ? 1'b1 : 1'b0);
assign empty_27_fu_555_p2 = (v115_reg_292 + 8'd1);
assign empty_33_fu_740_p2 = (lshr_ln1_fu_711_p4 + 7'd1);
assign empty_34_fu_575_p2 = (v115_reg_292 + 8'd3);
assign empty_40_fu_765_p2 = (lshr_ln1_fu_711_p4 + 7'd2);
assign empty_41_fu_599_p2 = (v115_reg_292 + 8'd5);
assign empty_47_fu_790_p2 = (lshr_ln1_fu_711_p4 + 7'd3);
assign empty_48_fu_627_p2 = (v115_reg_292 + 8'd7);
assign empty_54_fu_815_p2 = (lshr_ln1_fu_711_p4 + 7'd4);
assign empty_57_fu_857_p2 = (v115_1_reg_304 + 8'd1);
assign empty_63_fu_1042_p2 = (lshr_ln169_1_fu_1013_p4 + 7'd1);
assign empty_64_fu_877_p2 = (v115_1_reg_304 + 8'd3);
assign empty_70_fu_1067_p2 = (lshr_ln169_1_fu_1013_p4 + 7'd2);
assign empty_71_fu_901_p2 = (v115_1_reg_304 + 8'd5);
assign empty_77_fu_1092_p2 = (lshr_ln169_1_fu_1013_p4 + 7'd3);
assign empty_78_fu_929_p2 = (v115_1_reg_304 + 8'd7);
assign empty_84_fu_1117_p2 = (lshr_ln169_1_fu_1013_p4 + 7'd4);
assign grp_fu_1133_p0 = grp_fu_1133_p00;
assign grp_fu_1133_p00 = v115_reg_292;
assign grp_fu_1133_p1 = 15'd105;
assign grp_fu_1133_p2 = zext_ln168_reg_1331;
assign grp_fu_1141_p0 = grp_fu_1141_p00;
assign grp_fu_1141_p00 = empty_27_fu_555_p2;
assign grp_fu_1141_p1 = 15'd105;
assign grp_fu_1141_p2 = zext_ln168_reg_1331;
assign grp_fu_1149_p1 = 8'd2;
assign grp_fu_1149_p2 = 15'd105;
assign grp_fu_1149_p3 = zext_ln168_reg_1331;
assign grp_fu_1159_p0 = grp_fu_1159_p00;
assign grp_fu_1159_p00 = empty_34_fu_575_p2;
assign grp_fu_1159_p1 = 15'd105;
assign grp_fu_1159_p2 = zext_ln168_reg_1331;
assign grp_fu_1167_p1 = 8'd4;
assign grp_fu_1167_p2 = 15'd105;
assign grp_fu_1167_p3 = zext_ln168_reg_1331;
assign grp_fu_1177_p0 = grp_fu_1177_p00;
assign grp_fu_1177_p00 = empty_41_fu_599_p2;
assign grp_fu_1177_p1 = 15'd105;
assign grp_fu_1177_p2 = zext_ln168_reg_1331;
assign grp_fu_1185_p1 = 8'd6;
assign grp_fu_1185_p2 = 15'd105;
assign grp_fu_1185_p3 = zext_ln168_reg_1331;
assign grp_fu_1195_p0 = grp_fu_1195_p00;
assign grp_fu_1195_p00 = empty_48_fu_627_p2;
assign grp_fu_1195_p1 = 15'd105;
assign grp_fu_1195_p2 = zext_ln168_reg_1331;
assign grp_fu_1203_p1 = 8'd8;
assign grp_fu_1203_p2 = 15'd105;
assign grp_fu_1203_p3 = zext_ln168_reg_1331;
assign grp_fu_1213_p0 = grp_fu_1213_p00;
assign grp_fu_1213_p00 = v115_1_reg_304;
assign grp_fu_1213_p1 = 15'd105;
assign grp_fu_1213_p2 = zext_ln168_reg_1331;
assign grp_fu_1221_p0 = grp_fu_1221_p00;
assign grp_fu_1221_p00 = empty_57_fu_857_p2;
assign grp_fu_1221_p1 = 15'd105;
assign grp_fu_1221_p2 = zext_ln168_reg_1331;
assign grp_fu_1229_p1 = 8'd2;
assign grp_fu_1229_p2 = 15'd105;
assign grp_fu_1229_p3 = zext_ln168_reg_1331;
assign grp_fu_1239_p0 = grp_fu_1239_p00;
assign grp_fu_1239_p00 = empty_64_fu_877_p2;
assign grp_fu_1239_p1 = 15'd105;
assign grp_fu_1239_p2 = zext_ln168_reg_1331;
assign grp_fu_1247_p1 = 8'd4;
assign grp_fu_1247_p2 = 15'd105;
assign grp_fu_1247_p3 = zext_ln168_reg_1331;
assign grp_fu_1257_p0 = grp_fu_1257_p00;
assign grp_fu_1257_p00 = empty_71_fu_901_p2;
assign grp_fu_1257_p1 = 15'd105;
assign grp_fu_1257_p2 = zext_ln168_reg_1331;
assign grp_fu_1265_p1 = 8'd6;
assign grp_fu_1265_p2 = 15'd105;
assign grp_fu_1265_p3 = zext_ln168_reg_1331;
assign grp_fu_1275_p0 = grp_fu_1275_p00;
assign grp_fu_1275_p00 = empty_78_fu_929_p2;
assign grp_fu_1275_p1 = 15'd105;
assign grp_fu_1275_p2 = zext_ln168_reg_1331;
assign grp_fu_1283_p1 = 8'd8;
assign grp_fu_1283_p2 = 15'd105;
assign grp_fu_1283_p3 = zext_ln168_reg_1331;
assign grp_fu_184_p_ce = grp_fu_1834_ce;
assign grp_fu_184_p_din0 = grp_fu_1834_p0;
assign grp_fu_184_p_din1 = grp_fu_1834_p1;
assign grp_fu_184_p_opcode = 2'd0;
assign grp_fu_188_p_ce = grp_fu_1838_ce;
assign grp_fu_188_p_din0 = grp_fu_1838_p0;
assign grp_fu_188_p_din1 = grp_fu_1838_p1;
assign grp_fu_188_p_opcode = 2'd0;
assign grp_fu_192_p_ce = grp_fu_1842_ce;
assign grp_fu_192_p_din0 = grp_fu_1842_p0;
assign grp_fu_192_p_din1 = grp_fu_1842_p1;
assign grp_fu_192_p_opcode = 2'd0;
assign grp_fu_196_p_ce = grp_fu_391_ce;
assign grp_fu_196_p_din0 = grp_fu_391_p0;
assign grp_fu_196_p_din1 = grp_fu_391_p1;
assign grp_fu_200_p_ce = grp_fu_395_ce;
assign grp_fu_200_p_din0 = grp_fu_395_p0;
assign grp_fu_200_p_din1 = grp_fu_395_p1;
assign grp_fu_204_p_ce = grp_fu_399_ce;
assign grp_fu_204_p_din0 = grp_fu_399_p0;
assign grp_fu_204_p_din1 = grp_fu_399_p1;
assign grp_fu_208_p_ce = 1'b1;
assign grp_fu_208_p_din0 = grp_fu_403_p0;
assign grp_fu_208_p_din1 = v113;
assign grp_fu_212_p_ce = 1'b1;
assign grp_fu_212_p_din0 = grp_fu_407_p0;
assign grp_fu_212_p_din1 = v113;
assign grp_fu_216_p_ce = 1'b1;
assign grp_fu_216_p_din0 = grp_fu_411_p0;
assign grp_fu_216_p_din1 = v113;
assign grp_fu_220_p_ce = 1'b1;
assign grp_fu_220_p_din0 = grp_fu_415_p0;
assign grp_fu_220_p_din1 = v113;
assign grp_fu_224_p_ce = 1'b1;
assign grp_fu_224_p_din0 = grp_fu_419_p0;
assign grp_fu_224_p_din1 = v113;
assign grp_fu_228_p_ce = 1'b1;
assign grp_fu_228_p_din0 = grp_fu_423_p0;
assign grp_fu_228_p_din1 = v113;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_ap_start_reg;
assign icmp_ln168_fu_489_p2 = ((v114_fu_112 < 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_1_fu_831_p2 = ((v115_1_reg_304 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_539_p2 = ((v115_reg_292 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln168_1_fu_519_p4 = {{v114_fu_112[7:1]}};
assign lshr_ln169_1_fu_1013_p4 = {{v115_1_reg_304[7:1]}};
assign lshr_ln1_fu_711_p4 = {{v115_reg_292[7:1]}};
assign lshr_ln_fu_499_p4 = {{v114_fu_112[7:3]}};
assign mul_ln171_1_fu_1027_p0 = mul_ln171_1_fu_1027_p00;
assign mul_ln171_1_fu_1027_p00 = lshr_ln169_1_fu_1013_p4;
assign mul_ln171_1_fu_1027_p1 = 15'd190;
assign mul_ln171_fu_725_p0 = mul_ln171_fu_725_p00;
assign mul_ln171_fu_725_p00 = lshr_ln1_fu_711_p4;
assign mul_ln171_fu_725_p1 = 15'd190;
assign mul_ln175_fu_513_p0 = mul_ln175_fu_513_p00;
assign mul_ln175_fu_513_p00 = lshr_ln_fu_499_p4;
assign mul_ln175_fu_513_p1 = 13'd190;
assign mul_ln186_1_fu_1036_p0 = mul_ln186_1_fu_1036_p00;
assign mul_ln186_1_fu_1036_p00 = tmp_s_reg_1614;
assign mul_ln186_1_fu_1036_p1 = 15'd190;
assign mul_ln186_fu_734_p0 = mul_ln186_fu_734_p00;
assign mul_ln186_fu_734_p00 = tmp_reg_1376;
assign mul_ln186_fu_734_p1 = 15'd190;
assign mul_ln199_1_fu_1052_p0 = mul_ln199_1_fu_1052_p00;
assign mul_ln199_1_fu_1052_p00 = empty_63_fu_1042_p2;
assign mul_ln199_1_fu_1052_p1 = 15'd190;
assign mul_ln199_fu_750_p0 = mul_ln199_fu_750_p00;
assign mul_ln199_fu_750_p00 = empty_33_fu_740_p2;
assign mul_ln199_fu_750_p1 = 15'd190;
assign mul_ln212_1_fu_1061_p0 = mul_ln212_1_fu_1061_p00;
assign mul_ln212_1_fu_1061_p00 = tmp_6_reg_1624;
assign mul_ln212_1_fu_1061_p1 = 15'd190;
assign mul_ln212_fu_759_p0 = mul_ln212_fu_759_p00;
assign mul_ln212_fu_759_p00 = tmp_1_reg_1386;
assign mul_ln212_fu_759_p1 = 15'd190;
assign mul_ln225_1_fu_1077_p0 = mul_ln225_1_fu_1077_p00;
assign mul_ln225_1_fu_1077_p00 = empty_70_fu_1067_p2;
assign mul_ln225_1_fu_1077_p1 = 15'd190;
assign mul_ln225_fu_775_p0 = mul_ln225_fu_775_p00;
assign mul_ln225_fu_775_p00 = empty_40_fu_765_p2;
assign mul_ln225_fu_775_p1 = 15'd190;
assign mul_ln238_1_fu_1086_p0 = mul_ln238_1_fu_1086_p00;
assign mul_ln238_1_fu_1086_p00 = tmp_7_reg_1639;
assign mul_ln238_1_fu_1086_p1 = 15'd190;
assign mul_ln238_fu_784_p0 = mul_ln238_fu_784_p00;
assign mul_ln238_fu_784_p00 = tmp_2_reg_1401;
assign mul_ln238_fu_784_p1 = 15'd190;
assign mul_ln251_1_fu_1102_p0 = mul_ln251_1_fu_1102_p00;
assign mul_ln251_1_fu_1102_p00 = empty_77_fu_1092_p2;
assign mul_ln251_1_fu_1102_p1 = 15'd190;
assign mul_ln251_fu_800_p0 = mul_ln251_fu_800_p00;
assign mul_ln251_fu_800_p00 = empty_47_fu_790_p2;
assign mul_ln251_fu_800_p1 = 15'd190;
assign mul_ln264_1_fu_1111_p0 = mul_ln264_1_fu_1111_p00;
assign mul_ln264_1_fu_1111_p00 = tmp_8_reg_1664;
assign mul_ln264_1_fu_1111_p1 = 15'd190;
assign mul_ln264_fu_809_p0 = mul_ln264_fu_809_p00;
assign mul_ln264_fu_809_p00 = tmp_3_reg_1426;
assign mul_ln264_fu_809_p1 = 15'd190;
assign mul_ln277_1_fu_1127_p0 = mul_ln277_1_fu_1127_p00;
assign mul_ln277_1_fu_1127_p00 = empty_84_fu_1117_p2;
assign mul_ln277_1_fu_1127_p1 = 15'd190;
assign mul_ln277_fu_825_p0 = mul_ln277_fu_825_p00;
assign mul_ln277_fu_825_p00 = empty_54_fu_815_p2;
assign mul_ln277_fu_825_p1 = 15'd190;
assign p_cast2256_fu_595_p1 = grp_fu_1133_p3;
assign p_cast2257_fu_623_p1 = grp_fu_1149_p4;
assign p_cast2258_fu_647_p1 = grp_fu_1159_p3;
assign p_cast2259_fu_651_p1 = grp_fu_1167_p4;
assign p_cast2260_fu_655_p1 = grp_fu_1177_p3;
assign p_cast2261_fu_659_p1 = grp_fu_1185_p4;
assign p_cast2262_fu_663_p1 = grp_fu_1195_p3;
assign p_cast2263_fu_667_p1 = grp_fu_1203_p4;
assign p_cast2264_fu_897_p1 = grp_fu_1213_p3;
assign p_cast2265_fu_921_p1 = grp_fu_1221_p3;
assign p_cast2266_fu_925_p1 = grp_fu_1229_p4;
assign p_cast2267_fu_949_p1 = grp_fu_1239_p3;
assign p_cast2268_fu_953_p1 = grp_fu_1247_p4;
assign p_cast2269_fu_957_p1 = grp_fu_1257_p3;
assign p_cast2270_fu_961_p1 = grp_fu_1265_p4;
assign p_cast2271_fu_965_p1 = grp_fu_1275_p3;
assign p_cast2272_fu_969_p1 = grp_fu_1283_p4;
assign p_cast_fu_619_p1 = grp_fu_1141_p3;
assign trunc_ln168_fu_495_p1 = v114_fu_112[2:0];
assign trunc_ln169_1_fu_1009_p1 = v115_1_reg_304[0:0];
assign trunc_ln169_fu_707_p1 = v115_reg_292[0:0];
assign v119_1_fu_973_p1 = v226_1_load_reg_1644;
assign v119_fu_671_p1 = v226_0_load_reg_1406;
assign v132_1_fu_977_p1 = v226_1_load_1_reg_1669;
assign v132_fu_675_p1 = v226_0_load_1_reg_1431;
assign v143_1_fu_981_p1 = v226_1_load_2_reg_1674;
assign v143_fu_679_p1 = v226_0_load_2_reg_1436;
assign v154_1_fu_985_p1 = v226_1_load_3_reg_1689;
assign v154_fu_683_p1 = v226_0_load_3_reg_1451;
assign v165_1_fu_989_p1 = v226_1_load_4_reg_1694;
assign v165_fu_687_p1 = v226_0_load_4_reg_1456;
assign v176_1_fu_993_p1 = v226_1_load_5_reg_1709;
assign v176_fu_691_p1 = v226_0_load_5_reg_1471;
assign v187_1_fu_997_p1 = v226_1_load_6_reg_1714;
assign v187_fu_695_p1 = v226_0_load_6_reg_1476;
assign v198_1_fu_1001_p1 = v226_1_load_7_reg_1729;
assign v198_fu_699_p1 = v226_0_load_7_reg_1491;
assign v209_1_fu_1005_p1 = v226_1_load_8_reg_1734;
assign v209_fu_703_p1 = v226_0_load_8_reg_1496;
assign v226_0_address0 = v226_0_address0_local;
assign v226_0_address1 = v226_0_address1_local;
assign v226_0_ce0 = v226_0_ce0_local;
assign v226_0_ce1 = v226_0_ce1_local;
assign v226_1_address0 = v226_1_address0_local;
assign v226_1_address1 = v226_1_address1_local;
assign v226_1_ce0 = v226_1_ce0_local;
assign v226_1_ce1 = v226_1_ce1_local;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_3_ce1;
assign v227_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_4_address0;
assign v227_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_4_address1;
assign v227_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_4_ce0;
assign v227_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_4_ce1;
assign v227_5_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_5_address0;
assign v227_5_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_5_address1;
assign v227_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_5_ce0;
assign v227_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_5_ce1;
assign v227_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_6_address0;
assign v227_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_6_address1;
assign v227_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_6_ce0;
assign v227_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_316_v227_6_ce1;
assign v227_7_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_7_address0;
assign v227_7_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_7_address1;
assign v227_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_7_ce0;
assign v227_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_354_v227_7_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_529_p1 = lshr_ln168_1_fu_519_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1331[14:7] <= 8'b00000000;
end
endmodule 