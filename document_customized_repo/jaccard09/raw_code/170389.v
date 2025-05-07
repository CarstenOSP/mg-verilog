module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v113,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_opcode,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_opcode,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_opcode,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_opcode,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_opcode,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce); 
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
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
output  [1:0] grp_fu_144_p_opcode;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
output  [1:0] grp_fu_148_p_opcode;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
output  [1:0] grp_fu_152_p_opcode;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
output  [1:0] grp_fu_156_p_opcode;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
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
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_526_p2;
reg   [31:0] reg_418;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
reg   [31:0] reg_422;
reg   [31:0] reg_426;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_430;
reg   [31:0] reg_434;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_438;
reg   [31:0] reg_442;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_446;
reg   [31:0] reg_450;
wire    ap_CS_fsm_state19;
reg   [31:0] reg_456;
reg   [31:0] reg_462;
reg   [31:0] reg_468;
reg   [31:0] reg_474;
reg   [31:0] reg_480;
reg   [31:0] reg_486;
reg   [31:0] reg_492;
wire   [31:0] grp_fu_414_p2;
reg   [31:0] reg_498;
reg   [15:0] phi_mul_load_reg_1373;
wire   [15:0] add_ln168_1_fu_520_p2;
reg   [15:0] add_ln168_1_reg_1379;
wire   [7:0] add_ln168_fu_532_p2;
reg   [7:0] add_ln168_reg_1387;
wire   [15:0] zext_ln168_fu_538_p1;
reg   [15:0] zext_ln168_reg_1392;
wire   [0:0] cmp11_fu_542_p2;
reg   [0:0] cmp11_reg_1414;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_1_fu_580_p2;
reg   [7:0] add_ln169_1_reg_1433;
wire    ap_CS_fsm_state4;
reg   [5:0] tmp_2_reg_1443;
reg   [5:0] tmp_3_reg_1453;
wire    ap_CS_fsm_state5;
reg   [5:0] tmp_4_reg_1463;
wire    ap_CS_fsm_state6;
reg   [5:0] tmp_5_reg_1483;
reg   [5:0] tmp_6_reg_1493;
reg   [5:0] tmp_8_reg_1513;
reg   [5:0] tmp_9_reg_1533;
reg   [5:0] tmp_s_reg_1543;
reg   [5:0] tmp_7_reg_1563;
reg   [5:0] tmp_10_reg_1583;
reg   [5:0] tmp_11_reg_1593;
reg   [31:0] v226_load_8_reg_1598;
wire    ap_CS_fsm_state11;
reg   [31:0] v226_load_9_reg_1603;
reg   [5:0] tmp_12_reg_1623;
wire   [31:0] v119_fu_882_p1;
wire   [31:0] v132_fu_887_p1;
wire   [31:0] v143_fu_892_p1;
wire   [31:0] v154_fu_897_p1;
wire   [31:0] v165_fu_902_p1;
wire   [31:0] v176_fu_907_p1;
wire   [31:0] v187_fu_912_p1;
wire   [31:0] v198_fu_917_p1;
wire   [31:0] v209_fu_922_p1;
wire   [1:0] trunc_ln169_fu_950_p1;
reg   [1:0] trunc_ln169_reg_1703;
wire   [5:0] lshr_ln_fu_954_p4;
reg   [5:0] lshr_ln_reg_1710;
wire   [13:0] mul_ln171_fu_968_p2;
reg   [13:0] mul_ln171_reg_1716;
wire   [13:0] mul_ln199_fu_977_p2;
reg   [13:0] mul_ln199_reg_1721;
wire   [13:0] mul_ln212_fu_986_p2;
reg   [13:0] mul_ln212_reg_1726;
wire   [13:0] mul_ln225_fu_1002_p2;
reg   [13:0] mul_ln225_reg_1731;
wire   [13:0] mul_ln238_fu_1011_p2;
reg   [13:0] mul_ln238_reg_1736;
wire   [13:0] mul_ln251_fu_1020_p2;
reg   [13:0] mul_ln251_reg_1741;
wire   [13:0] mul_ln264_fu_1029_p2;
reg   [13:0] mul_ln264_reg_1746;
wire   [13:0] mul_ln277_fu_1045_p2;
reg   [13:0] mul_ln277_reg_1751;
wire   [0:0] icmp_ln178_fu_1051_p2;
reg   [0:0] icmp_ln178_reg_1756;
wire    ap_CS_fsm_state16;
wire   [31:0] v119_1_fu_1057_p1;
wire   [31:0] v132_1_fu_1061_p1;
wire   [31:0] v143_1_fu_1066_p1;
wire   [31:0] v154_1_fu_1071_p1;
wire   [31:0] v165_1_fu_1076_p1;
wire   [31:0] v176_1_fu_1081_p1;
wire   [31:0] v187_1_fu_1086_p1;
wire   [31:0] v198_1_fu_1091_p1;
wire   [31:0] v209_1_fu_1096_p1;
wire   [13:0] mul_ln171_1_fu_1104_p2;
reg   [13:0] mul_ln171_1_reg_1807;
wire   [13:0] mul_ln186_fu_1113_p2;
reg   [13:0] mul_ln186_reg_1812;
wire   [13:0] mul_ln199_1_fu_1122_p2;
reg   [13:0] mul_ln199_1_reg_1817;
wire   [13:0] mul_ln212_1_fu_1137_p2;
reg   [13:0] mul_ln212_1_reg_1822;
wire   [13:0] mul_ln225_1_fu_1146_p2;
reg   [13:0] mul_ln225_1_reg_1827;
wire   [13:0] mul_ln238_1_fu_1155_p2;
reg   [13:0] mul_ln238_1_reg_1832;
wire   [13:0] mul_ln251_1_fu_1164_p2;
reg   [13:0] mul_ln251_1_reg_1837;
wire   [13:0] mul_ln264_1_fu_1179_p2;
reg   [13:0] mul_ln264_1_reg_1842;
wire   [13:0] mul_ln277_1_fu_1188_p2;
reg   [13:0] mul_ln277_1_reg_1847;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1852_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1852_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1852_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1852_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1856_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1856_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1856_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1856_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1860_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1860_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1860_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1860_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1864_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1864_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1864_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1864_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1868_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1868_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1868_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1868_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1872_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1872_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1872_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1872_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1876_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1876_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1876_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1880_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1880_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1880_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1884_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1884_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1884_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1888_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1888_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1888_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1852_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1852_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1852_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1852_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1856_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1856_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1856_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1856_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1860_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1860_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1860_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1860_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1864_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1864_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1864_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1864_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1868_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1868_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1868_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1868_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1872_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1872_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1872_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1872_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1876_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1876_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1876_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1880_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1880_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1880_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1884_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1884_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1884_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1888_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1888_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1888_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_382_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_382_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_382_p_ce;
reg   [7:0] v115_reg_299;
wire    ap_CS_fsm_state21;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_start_reg;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start_reg;
wire    ap_CS_fsm_state20;
wire   [63:0] p_cast607_fu_654_p1;
wire   [63:0] p_cast_fu_658_p1;
wire   [63:0] p_cast608_fu_702_p1;
wire   [63:0] p_cast609_fu_706_p1;
wire   [63:0] p_cast610_fu_730_p1;
wire   [63:0] p_cast611_fu_734_p1;
wire   [63:0] p_cast612_fu_778_p1;
wire   [63:0] p_cast613_fu_782_p1;
wire   [63:0] p_cast614_fu_806_p1;
wire   [63:0] p_cast615_fu_810_p1;
wire   [63:0] p_cast616_fu_854_p1;
wire   [63:0] p_cast617_fu_858_p1;
wire   [63:0] p_cast618_fu_926_p1;
wire   [63:0] p_cast619_fu_930_p1;
wire   [63:0] p_cast620_fu_934_p1;
wire   [63:0] p_cast621_fu_938_p1;
wire   [63:0] p_cast622_fu_942_p1;
wire   [63:0] p_cast623_fu_946_p1;
reg   [15:0] phi_mul_fu_124;
wire   [0:0] icmp_ln169_fu_548_p2;
reg   [7:0] v114_fu_128;
reg    v236_write_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg   [31:0] grp_fu_382_p0;
reg   [31:0] grp_fu_382_p1;
reg   [31:0] grp_fu_386_p0;
reg   [31:0] grp_fu_390_p0;
reg   [31:0] grp_fu_394_p0;
reg   [31:0] grp_fu_398_p0;
reg   [31:0] grp_fu_402_p0;
reg   [31:0] grp_fu_406_p0;
reg   [31:0] grp_fu_410_p0;
reg   [31:0] grp_fu_414_p0;
wire   [6:0] tmp_fu_558_p4;
wire   [7:0] tmp_1_fu_568_p3;
wire   [7:0] empty_19_fu_594_p2;
wire   [7:0] empty_22_fu_614_p2;
wire   [7:0] empty_29_fu_634_p2;
wire   [15:0] grp_fu_1194_p3;
wire   [15:0] grp_fu_1202_p3;
wire   [7:0] empty_32_fu_662_p2;
wire   [7:0] empty_35_fu_682_p2;
wire   [15:0] grp_fu_1210_p3;
wire   [15:0] grp_fu_1218_p3;
wire   [7:0] add_ln169_fu_710_p2;
wire   [15:0] grp_fu_1226_p4;
wire   [15:0] grp_fu_1236_p3;
wire   [7:0] empty_44_fu_738_p2;
wire   [7:0] empty_47_fu_758_p2;
wire   [15:0] grp_fu_1244_p3;
wire   [15:0] grp_fu_1252_p3;
wire   [7:0] empty_54_fu_786_p2;
wire   [15:0] grp_fu_1260_p4;
wire   [15:0] grp_fu_1270_p3;
wire   [7:0] empty_57_fu_814_p2;
wire   [7:0] empty_60_fu_834_p2;
wire   [15:0] grp_fu_1278_p3;
wire   [15:0] grp_fu_1286_p3;
wire   [7:0] empty_67_fu_862_p2;
wire   [15:0] grp_fu_1294_p4;
wire   [15:0] grp_fu_1304_p3;
wire   [15:0] grp_fu_1312_p3;
wire   [15:0] grp_fu_1320_p3;
wire   [15:0] grp_fu_1328_p4;
wire   [15:0] grp_fu_1338_p3;
wire   [5:0] mul_ln171_fu_968_p0;
wire   [8:0] mul_ln171_fu_968_p1;
wire   [5:0] mul_ln199_fu_977_p0;
wire   [8:0] mul_ln199_fu_977_p1;
wire   [5:0] mul_ln212_fu_986_p0;
wire   [8:0] mul_ln212_fu_986_p1;
wire   [5:0] empty_28_fu_992_p2;
wire   [5:0] mul_ln225_fu_1002_p0;
wire   [8:0] mul_ln225_fu_1002_p1;
wire   [5:0] mul_ln238_fu_1011_p0;
wire   [8:0] mul_ln238_fu_1011_p1;
wire   [5:0] mul_ln251_fu_1020_p0;
wire   [8:0] mul_ln251_fu_1020_p1;
wire   [5:0] mul_ln264_fu_1029_p0;
wire   [8:0] mul_ln264_fu_1029_p1;
wire   [5:0] empty_41_fu_1035_p2;
wire   [5:0] mul_ln277_fu_1045_p0;
wire   [8:0] mul_ln277_fu_1045_p1;
wire   [5:0] mul_ln171_1_fu_1104_p0;
wire   [8:0] mul_ln171_1_fu_1104_p1;
wire   [5:0] mul_ln186_fu_1113_p0;
wire   [8:0] mul_ln186_fu_1113_p1;
wire   [5:0] mul_ln199_1_fu_1122_p0;
wire   [8:0] mul_ln199_1_fu_1122_p1;
wire   [5:0] empty_53_fu_1128_p2;
wire   [5:0] mul_ln212_1_fu_1137_p0;
wire   [8:0] mul_ln212_1_fu_1137_p1;
wire   [5:0] mul_ln225_1_fu_1146_p0;
wire   [8:0] mul_ln225_1_fu_1146_p1;
wire   [5:0] mul_ln238_1_fu_1155_p0;
wire   [8:0] mul_ln238_1_fu_1155_p1;
wire   [5:0] mul_ln251_1_fu_1164_p0;
wire   [8:0] mul_ln251_1_fu_1164_p1;
wire   [5:0] empty_66_fu_1170_p2;
wire   [5:0] mul_ln264_1_fu_1179_p0;
wire   [8:0] mul_ln264_1_fu_1179_p1;
wire   [5:0] mul_ln277_1_fu_1188_p0;
wire   [8:0] mul_ln277_1_fu_1188_p1;
wire   [7:0] grp_fu_1194_p0;
wire   [7:0] grp_fu_1194_p1;
wire   [7:0] grp_fu_1194_p2;
wire   [7:0] grp_fu_1202_p0;
wire   [7:0] grp_fu_1202_p1;
wire   [7:0] grp_fu_1202_p2;
wire   [7:0] grp_fu_1210_p0;
wire   [7:0] grp_fu_1210_p1;
wire   [7:0] grp_fu_1210_p2;
wire   [7:0] grp_fu_1218_p0;
wire   [7:0] grp_fu_1218_p1;
wire   [7:0] grp_fu_1218_p2;
wire   [2:0] grp_fu_1226_p1;
wire   [7:0] grp_fu_1226_p2;
wire   [7:0] grp_fu_1226_p3;
wire   [7:0] grp_fu_1236_p0;
wire   [7:0] grp_fu_1236_p1;
wire   [7:0] grp_fu_1236_p2;
wire   [7:0] grp_fu_1244_p0;
wire   [7:0] grp_fu_1244_p1;
wire   [7:0] grp_fu_1244_p2;
wire   [7:0] grp_fu_1252_p0;
wire   [7:0] grp_fu_1252_p1;
wire   [7:0] grp_fu_1252_p2;
wire   [3:0] grp_fu_1260_p1;
wire   [7:0] grp_fu_1260_p2;
wire   [7:0] grp_fu_1260_p3;
wire   [7:0] grp_fu_1270_p0;
wire   [7:0] grp_fu_1270_p1;
wire   [7:0] grp_fu_1270_p2;
wire   [7:0] grp_fu_1278_p0;
wire   [7:0] grp_fu_1278_p1;
wire   [7:0] grp_fu_1278_p2;
wire   [7:0] grp_fu_1286_p0;
wire   [7:0] grp_fu_1286_p1;
wire   [7:0] grp_fu_1286_p2;
wire   [3:0] grp_fu_1294_p1;
wire   [7:0] grp_fu_1294_p2;
wire   [7:0] grp_fu_1294_p3;
wire   [7:0] grp_fu_1304_p0;
wire   [7:0] grp_fu_1304_p1;
wire   [7:0] grp_fu_1304_p2;
wire   [7:0] grp_fu_1312_p0;
wire   [7:0] grp_fu_1312_p1;
wire   [7:0] grp_fu_1312_p2;
wire   [7:0] grp_fu_1320_p0;
wire   [7:0] grp_fu_1320_p1;
wire   [7:0] grp_fu_1320_p2;
wire   [4:0] grp_fu_1328_p1;
wire   [7:0] grp_fu_1328_p2;
wire   [7:0] grp_fu_1328_p3;
wire   [7:0] grp_fu_1338_p0;
wire   [7:0] grp_fu_1338_p1;
wire   [7:0] grp_fu_1338_p2;
reg    grp_fu_382_ce;
wire    ap_CS_fsm_state18;
reg    grp_fu_386_ce;
reg    grp_fu_390_ce;
reg    grp_fu_394_ce;
reg    grp_fu_398_ce;
reg    grp_fu_402_ce;
reg    grp_fu_406_ce;
reg    grp_fu_410_ce;
reg    grp_fu_414_ce;
reg   [31:0] grp_fu_1852_p0;
reg   [31:0] grp_fu_1852_p1;
reg    grp_fu_1852_ce;
reg   [31:0] grp_fu_1856_p0;
reg   [31:0] grp_fu_1856_p1;
reg    grp_fu_1856_ce;
reg   [31:0] grp_fu_1860_p0;
reg   [31:0] grp_fu_1860_p1;
reg    grp_fu_1860_ce;
reg   [31:0] grp_fu_1864_p0;
reg   [31:0] grp_fu_1864_p1;
reg    grp_fu_1864_ce;
reg   [31:0] grp_fu_1868_p0;
reg   [31:0] grp_fu_1868_p1;
reg    grp_fu_1868_ce;
reg   [31:0] grp_fu_1872_p0;
reg   [31:0] grp_fu_1872_p1;
reg    grp_fu_1872_ce;
reg   [31:0] grp_fu_1876_p0;
reg   [31:0] grp_fu_1876_p1;
reg    grp_fu_1876_ce;
reg   [31:0] grp_fu_1880_p0;
reg   [31:0] grp_fu_1880_p1;
reg    grp_fu_1880_ce;
reg   [31:0] grp_fu_1884_p0;
reg   [31:0] grp_fu_1884_p1;
reg    grp_fu_1884_ce;
reg   [31:0] grp_fu_1888_p0;
reg   [31:0] grp_fu_1888_p1;
reg    grp_fu_1888_ce;
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
wire   [15:0] grp_fu_1194_p00;
wire   [15:0] grp_fu_1202_p00;
wire   [15:0] grp_fu_1210_p00;
wire   [15:0] grp_fu_1218_p00;
wire   [15:0] grp_fu_1236_p00;
wire   [15:0] grp_fu_1244_p00;
wire   [15:0] grp_fu_1252_p00;
wire   [15:0] grp_fu_1270_p00;
wire   [15:0] grp_fu_1278_p00;
wire   [15:0] grp_fu_1286_p00;
wire   [15:0] grp_fu_1304_p00;
wire   [15:0] grp_fu_1312_p00;
wire   [15:0] grp_fu_1320_p00;
wire   [15:0] grp_fu_1338_p00;
wire   [13:0] mul_ln171_1_fu_1104_p00;
wire   [13:0] mul_ln171_fu_968_p00;
wire   [13:0] mul_ln186_fu_1113_p00;
wire   [13:0] mul_ln199_1_fu_1122_p00;
wire   [13:0] mul_ln199_fu_977_p00;
wire   [13:0] mul_ln212_1_fu_1137_p00;
wire   [13:0] mul_ln212_fu_986_p00;
wire   [13:0] mul_ln225_1_fu_1146_p00;
wire   [13:0] mul_ln225_fu_1002_p00;
wire   [13:0] mul_ln238_1_fu_1155_p00;
wire   [13:0] mul_ln238_fu_1011_p00;
wire   [13:0] mul_ln251_1_fu_1164_p00;
wire   [13:0] mul_ln251_fu_1020_p00;
wire   [13:0] mul_ln264_1_fu_1179_p00;
wire   [13:0] mul_ln264_fu_1029_p00;
wire   [13:0] mul_ln277_1_fu_1188_p00;
wire   [13:0] mul_ln277_fu_1045_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start_reg = 1'b0;
#0 phi_mul_fu_124 = 16'd0;
#0 v114_fu_128 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_311(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_ready),.cmp11(cmp11_reg_1414),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_d1),.v225_0_q1(v225_0_q1),.phi_mul(phi_mul_load_reg_1373),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1716),.mul_ln225(mul_ln225_reg_1731),.mul_ln277(mul_ln277_reg_1751),.mul_ln199(mul_ln199_reg_1721),.mul_ln251(mul_ln251_reg_1741),.mul_ln238(mul_ln238_reg_1736),.mul_ln212(mul_ln212_reg_1726),.mul_ln264(mul_ln264_reg_1746),.empty(trunc_ln169_reg_1703),.v120(reg_450),.v133(reg_456),.v144(reg_462),.v155(reg_468),.v166(reg_474),.v177(reg_480),.v188(reg_486),.v199(reg_492),.v210(reg_498),.icmp_ln178(icmp_ln178_reg_1756),.grp_fu_1852_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1852_p_din0),.grp_fu_1852_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1852_p_din1),.grp_fu_1852_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1852_p_opcode),.grp_fu_1852_p_dout0(grp_fu_144_p_dout0),.grp_fu_1852_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1852_p_ce),.grp_fu_1856_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1856_p_din0),.grp_fu_1856_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1856_p_din1),.grp_fu_1856_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1856_p_opcode),.grp_fu_1856_p_dout0(grp_fu_148_p_dout0),.grp_fu_1856_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1856_p_ce),.grp_fu_1860_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1860_p_din0),.grp_fu_1860_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1860_p_din1),.grp_fu_1860_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1860_p_opcode),.grp_fu_1860_p_dout0(grp_fu_152_p_dout0),.grp_fu_1860_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1860_p_ce),.grp_fu_1864_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1864_p_din0),.grp_fu_1864_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1864_p_din1),.grp_fu_1864_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1864_p_opcode),.grp_fu_1864_p_dout0(grp_fu_156_p_dout0),.grp_fu_1864_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1864_p_ce),.grp_fu_1868_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1868_p_din0),.grp_fu_1868_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1868_p_din1),.grp_fu_1868_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1868_p_opcode),.grp_fu_1868_p_dout0(grp_fu_160_p_dout0),.grp_fu_1868_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1868_p_ce),.grp_fu_1872_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1872_p_din0),.grp_fu_1872_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1872_p_din1),.grp_fu_1872_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1872_p_opcode),.grp_fu_1872_p_dout0(grp_fu_164_p_dout0),.grp_fu_1872_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1872_p_ce),.grp_fu_1876_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1876_p_din0),.grp_fu_1876_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1876_p_din1),.grp_fu_1876_p_dout0(grp_fu_168_p_dout0),.grp_fu_1876_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1876_p_ce),.grp_fu_1880_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1880_p_din0),.grp_fu_1880_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1880_p_din1),.grp_fu_1880_p_dout0(grp_fu_172_p_dout0),.grp_fu_1880_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1880_p_ce),.grp_fu_1884_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1884_p_din0),.grp_fu_1884_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1884_p_din1),.grp_fu_1884_p_dout0(grp_fu_176_p_dout0),.grp_fu_1884_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1884_p_ce),.grp_fu_1888_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1888_p_din0),.grp_fu_1888_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1888_p_din1),.grp_fu_1888_p_dout0(grp_fu_180_p_dout0),.grp_fu_1888_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1888_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_346(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_ready),.cmp11(cmp11_reg_1414),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_d1),.v225_0_q1(v225_0_q1),.phi_mul(phi_mul_load_reg_1373),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_ce1),.v227_q1(v227_q1),.mul_ln186(mul_ln186_reg_1812),.mul_ln212_1(mul_ln212_1_reg_1822),.mul_ln264_1(mul_ln264_1_reg_1842),.mul_ln238_1(mul_ln238_1_reg_1832),.mul_ln171_1(mul_ln171_1_reg_1807),.mul_ln225_1(mul_ln225_1_reg_1827),.mul_ln277_1(mul_ln277_1_reg_1847),.mul_ln199_1(mul_ln199_1_reg_1817),.mul_ln251_1(mul_ln251_1_reg_1837),.empty(trunc_ln169_reg_1703),.v120_1(reg_450),.v133_1(reg_456),.v144_1(reg_462),.v155_1(reg_468),.v166_1(reg_474),.v177_1(reg_480),.v188_1(reg_486),.v199_1(reg_492),.v210_1(reg_498),.icmp_ln178(icmp_ln178_reg_1756),.grp_fu_1852_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1852_p_din0),.grp_fu_1852_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1852_p_din1),.grp_fu_1852_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1852_p_opcode),.grp_fu_1852_p_dout0(grp_fu_144_p_dout0),.grp_fu_1852_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1852_p_ce),.grp_fu_1856_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1856_p_din0),.grp_fu_1856_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1856_p_din1),.grp_fu_1856_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1856_p_opcode),.grp_fu_1856_p_dout0(grp_fu_148_p_dout0),.grp_fu_1856_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1856_p_ce),.grp_fu_1860_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1860_p_din0),.grp_fu_1860_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1860_p_din1),.grp_fu_1860_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1860_p_opcode),.grp_fu_1860_p_dout0(grp_fu_152_p_dout0),.grp_fu_1860_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1860_p_ce),.grp_fu_1864_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1864_p_din0),.grp_fu_1864_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1864_p_din1),.grp_fu_1864_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1864_p_opcode),.grp_fu_1864_p_dout0(grp_fu_156_p_dout0),.grp_fu_1864_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1864_p_ce),.grp_fu_1868_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1868_p_din0),.grp_fu_1868_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1868_p_din1),.grp_fu_1868_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1868_p_opcode),.grp_fu_1868_p_dout0(grp_fu_160_p_dout0),.grp_fu_1868_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1868_p_ce),.grp_fu_1872_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1872_p_din0),.grp_fu_1872_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1872_p_din1),.grp_fu_1872_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1872_p_opcode),.grp_fu_1872_p_dout0(grp_fu_164_p_dout0),.grp_fu_1872_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1872_p_ce),.grp_fu_1876_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1876_p_din0),.grp_fu_1876_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1876_p_din1),.grp_fu_1876_p_dout0(grp_fu_168_p_dout0),.grp_fu_1876_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1876_p_ce),.grp_fu_1880_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1880_p_din0),.grp_fu_1880_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1880_p_din1),.grp_fu_1880_p_dout0(grp_fu_172_p_dout0),.grp_fu_1880_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1880_p_ce),.grp_fu_1884_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1884_p_din0),.grp_fu_1884_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1884_p_din1),.grp_fu_1884_p_dout0(grp_fu_176_p_dout0),.grp_fu_1884_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1884_p_ce),.grp_fu_1888_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1888_p_din0),.grp_fu_1888_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1888_p_din1),.grp_fu_1888_p_dout0(grp_fu_180_p_dout0),.grp_fu_1888_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1888_p_ce),.grp_fu_382_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_382_p_din0),.grp_fu_382_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_382_p_din1),.grp_fu_382_p_dout0(grp_fu_184_p_dout0),.grp_fu_382_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_382_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_414_p0),.din1(v113),.ce(grp_fu_414_ce),.dout(grp_fu_414_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U84(.din0(mul_ln171_fu_968_p0),.din1(mul_ln171_fu_968_p1),.dout(mul_ln171_fu_968_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U85(.din0(mul_ln199_fu_977_p0),.din1(mul_ln199_fu_977_p1),.dout(mul_ln199_fu_977_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U86(.din0(mul_ln212_fu_986_p0),.din1(mul_ln212_fu_986_p1),.dout(mul_ln212_fu_986_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U87(.din0(mul_ln225_fu_1002_p0),.din1(mul_ln225_fu_1002_p1),.dout(mul_ln225_fu_1002_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U88(.din0(mul_ln238_fu_1011_p0),.din1(mul_ln238_fu_1011_p1),.dout(mul_ln238_fu_1011_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U89(.din0(mul_ln251_fu_1020_p0),.din1(mul_ln251_fu_1020_p1),.dout(mul_ln251_fu_1020_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U90(.din0(mul_ln264_fu_1029_p0),.din1(mul_ln264_fu_1029_p1),.dout(mul_ln264_fu_1029_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U91(.din0(mul_ln277_fu_1045_p0),.din1(mul_ln277_fu_1045_p1),.dout(mul_ln277_fu_1045_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U92(.din0(mul_ln171_1_fu_1104_p0),.din1(mul_ln171_1_fu_1104_p1),.dout(mul_ln171_1_fu_1104_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U93(.din0(mul_ln186_fu_1113_p0),.din1(mul_ln186_fu_1113_p1),.dout(mul_ln186_fu_1113_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U94(.din0(mul_ln199_1_fu_1122_p0),.din1(mul_ln199_1_fu_1122_p1),.dout(mul_ln199_1_fu_1122_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U95(.din0(mul_ln212_1_fu_1137_p0),.din1(mul_ln212_1_fu_1137_p1),.dout(mul_ln212_1_fu_1137_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U96(.din0(mul_ln225_1_fu_1146_p0),.din1(mul_ln225_1_fu_1146_p1),.dout(mul_ln225_1_fu_1146_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U97(.din0(mul_ln238_1_fu_1155_p0),.din1(mul_ln238_1_fu_1155_p1),.dout(mul_ln238_1_fu_1155_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U98(.din0(mul_ln251_1_fu_1164_p0),.din1(mul_ln251_1_fu_1164_p1),.dout(mul_ln251_1_fu_1164_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U99(.din0(mul_ln264_1_fu_1179_p0),.din1(mul_ln264_1_fu_1179_p1),.dout(mul_ln264_1_fu_1179_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U100(.din0(mul_ln277_1_fu_1188_p0),.din1(mul_ln277_1_fu_1188_p1),.dout(mul_ln277_1_fu_1188_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1194_p0),.din1(grp_fu_1194_p1),.din2(grp_fu_1194_p2),.ce(1'b1),.dout(grp_fu_1194_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U102(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1202_p0),.din1(grp_fu_1202_p1),.din2(grp_fu_1202_p2),.ce(1'b1),.dout(grp_fu_1202_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U103(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1210_p0),.din1(grp_fu_1210_p1),.din2(grp_fu_1210_p2),.ce(1'b1),.dout(grp_fu_1210_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1218_p0),.din1(grp_fu_1218_p1),.din2(grp_fu_1218_p2),.ce(1'b1),.dout(grp_fu_1218_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_299),.din1(grp_fu_1226_p1),.din2(grp_fu_1226_p2),.din3(grp_fu_1226_p3),.ce(1'b1),.dout(grp_fu_1226_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U106(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1236_p0),.din1(grp_fu_1236_p1),.din2(grp_fu_1236_p2),.ce(1'b1),.dout(grp_fu_1236_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U107(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1244_p0),.din1(grp_fu_1244_p1),.din2(grp_fu_1244_p2),.ce(1'b1),.dout(grp_fu_1244_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U108(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1252_p0),.din1(grp_fu_1252_p1),.din2(grp_fu_1252_p2),.ce(1'b1),.dout(grp_fu_1252_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U109(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_299),.din1(grp_fu_1260_p1),.din2(grp_fu_1260_p2),.din3(grp_fu_1260_p3),.ce(1'b1),.dout(grp_fu_1260_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U110(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1270_p0),.din1(grp_fu_1270_p1),.din2(grp_fu_1270_p2),.ce(1'b1),.dout(grp_fu_1270_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U111(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1278_p0),.din1(grp_fu_1278_p1),.din2(grp_fu_1278_p2),.ce(1'b1),.dout(grp_fu_1278_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U112(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1286_p0),.din1(grp_fu_1286_p1),.din2(grp_fu_1286_p2),.ce(1'b1),.dout(grp_fu_1286_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U113(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_299),.din1(grp_fu_1294_p1),.din2(grp_fu_1294_p2),.din3(grp_fu_1294_p3),.ce(1'b1),.dout(grp_fu_1294_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U114(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1304_p0),.din1(grp_fu_1304_p1),.din2(grp_fu_1304_p2),.ce(1'b1),.dout(grp_fu_1304_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U115(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1312_p0),.din1(grp_fu_1312_p1),.din2(grp_fu_1312_p2),.ce(1'b1),.dout(grp_fu_1312_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U116(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1320_p0),.din1(grp_fu_1320_p1),.din2(grp_fu_1320_p2),.ce(1'b1),.dout(grp_fu_1320_p3));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U117(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_299),.din1(grp_fu_1328_p1),.din2(grp_fu_1328_p2),.din3(grp_fu_1328_p3),.ce(1'b1),.dout(grp_fu_1328_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U118(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1338_p0),.din1(grp_fu_1338_p1),.din2(grp_fu_1338_p2),.ce(1'b1),.dout(grp_fu_1338_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_124 <= 16'd0;
    end else if (((icmp_ln169_fu_548_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_124 <= add_ln168_1_reg_1379;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_128 <= 8'd0;
    end else if (((icmp_ln169_fu_548_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_128 <= add_ln168_reg_1387;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_526_p2 == 1'd0))) begin
        v115_reg_299 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        v115_reg_299 <= add_ln169_1_reg_1433;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_1379 <= add_ln168_1_fu_520_p2;
        add_ln168_reg_1387 <= add_ln168_fu_532_p2;
        cmp11_reg_1414 <= cmp11_fu_542_p2;
        phi_mul_load_reg_1373 <= phi_mul_fu_124;
        zext_ln168_reg_1392[7 : 0] <= zext_ln168_fu_538_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_1_reg_1433 <= add_ln169_1_fu_580_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        icmp_ln178_reg_1756 <= icmp_ln178_fu_1051_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        lshr_ln_reg_1710 <= {{v115_reg_299[7:2]}};
        mul_ln171_reg_1716 <= mul_ln171_fu_968_p2;
        mul_ln199_reg_1721 <= mul_ln199_fu_977_p2;
        mul_ln212_reg_1726 <= mul_ln212_fu_986_p2;
        mul_ln225_reg_1731 <= mul_ln225_fu_1002_p2;
        mul_ln238_reg_1736 <= mul_ln238_fu_1011_p2;
        mul_ln251_reg_1741 <= mul_ln251_fu_1020_p2;
        mul_ln264_reg_1746 <= mul_ln264_fu_1029_p2;
        mul_ln277_reg_1751 <= mul_ln277_fu_1045_p2;
        trunc_ln169_reg_1703 <= trunc_ln169_fu_950_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_ln171_1_reg_1807 <= mul_ln171_1_fu_1104_p2;
        mul_ln186_reg_1812 <= mul_ln186_fu_1113_p2;
        mul_ln199_1_reg_1817 <= mul_ln199_1_fu_1122_p2;
        mul_ln212_1_reg_1822 <= mul_ln212_1_fu_1137_p2;
        mul_ln225_1_reg_1827 <= mul_ln225_1_fu_1146_p2;
        mul_ln238_1_reg_1832 <= mul_ln238_1_fu_1155_p2;
        mul_ln251_1_reg_1837 <= mul_ln251_1_fu_1164_p2;
        mul_ln264_1_reg_1842 <= mul_ln264_1_fu_1179_p2;
        mul_ln277_1_reg_1847 <= mul_ln277_1_fu_1188_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_418 <= v226_q1;
        reg_422 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_426 <= v226_q1;
        reg_430 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_434 <= v226_q1;
        reg_438 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_442 <= v226_q1;
        reg_446 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_450 <= grp_fu_184_p_dout0;
        reg_456 <= grp_fu_188_p_dout0;
        reg_462 <= grp_fu_192_p_dout0;
        reg_468 <= grp_fu_196_p_dout0;
        reg_474 <= grp_fu_200_p_dout0;
        reg_480 <= grp_fu_204_p_dout0;
        reg_486 <= grp_fu_208_p_dout0;
        reg_492 <= grp_fu_212_p_dout0;
        reg_498 <= grp_fu_414_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        tmp_10_reg_1583 <= {{empty_57_fu_814_p2[7:2]}};
        tmp_11_reg_1593 <= {{empty_60_fu_834_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        tmp_12_reg_1623 <= {{empty_67_fu_862_p2[7:2]}};
        v226_load_8_reg_1598 <= v226_q1;
        v226_load_9_reg_1603 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_2_reg_1443 <= {{empty_19_fu_594_p2[7:2]}};
        tmp_3_reg_1453 <= {{empty_22_fu_614_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_4_reg_1463 <= {{empty_29_fu_634_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_5_reg_1483 <= {{empty_32_fu_662_p2[7:2]}};
        tmp_6_reg_1493 <= {{empty_35_fu_682_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        tmp_7_reg_1563 <= {{empty_54_fu_786_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_8_reg_1513 <= {{add_ln169_fu_710_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        tmp_9_reg_1533 <= {{empty_44_fu_738_p2[7:2]}};
        tmp_s_reg_1543 <= {{empty_47_fu_758_p2[7:2]}};
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_526_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_526_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1852_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1852_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1852_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1852_p_ce;
    end else begin
        grp_fu_1852_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1852_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1852_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1852_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1852_p_din0;
    end else begin
        grp_fu_1852_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1852_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1852_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1852_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1852_p_din1;
    end else begin
        grp_fu_1852_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1856_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1856_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1856_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1856_p_ce;
    end else begin
        grp_fu_1856_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1856_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1856_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1856_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1856_p_din0;
    end else begin
        grp_fu_1856_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1856_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1856_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1856_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1856_p_din1;
    end else begin
        grp_fu_1856_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1860_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1860_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1860_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1860_p_ce;
    end else begin
        grp_fu_1860_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1860_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1860_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1860_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1860_p_din0;
    end else begin
        grp_fu_1860_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1860_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1860_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1860_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1860_p_din1;
    end else begin
        grp_fu_1860_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1864_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1864_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1864_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1864_p_ce;
    end else begin
        grp_fu_1864_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1864_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1864_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1864_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1864_p_din0;
    end else begin
        grp_fu_1864_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1864_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1864_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1864_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1864_p_din1;
    end else begin
        grp_fu_1864_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1868_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1868_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1868_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1868_p_ce;
    end else begin
        grp_fu_1868_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1868_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1868_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1868_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1868_p_din0;
    end else begin
        grp_fu_1868_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1868_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1868_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1868_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1868_p_din1;
    end else begin
        grp_fu_1868_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1872_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1872_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1872_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1872_p_ce;
    end else begin
        grp_fu_1872_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1872_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1872_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1872_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1872_p_din0;
    end else begin
        grp_fu_1872_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1872_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1872_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1872_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1872_p_din1;
    end else begin
        grp_fu_1872_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1876_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1876_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1876_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1876_p_ce;
    end else begin
        grp_fu_1876_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1876_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1876_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1876_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1876_p_din0;
    end else begin
        grp_fu_1876_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1876_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1876_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1876_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1876_p_din1;
    end else begin
        grp_fu_1876_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1880_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1880_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1880_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1880_p_ce;
    end else begin
        grp_fu_1880_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1880_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1880_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1880_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1880_p_din0;
    end else begin
        grp_fu_1880_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1880_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1880_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1880_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1880_p_din1;
    end else begin
        grp_fu_1880_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1884_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1884_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1884_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1884_p_ce;
    end else begin
        grp_fu_1884_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1884_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1884_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1884_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1884_p_din0;
    end else begin
        grp_fu_1884_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1884_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1884_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1884_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1884_p_din1;
    end else begin
        grp_fu_1884_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1888_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1888_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1888_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1888_p_ce;
    end else begin
        grp_fu_1888_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1888_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1888_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1888_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1888_p_din0;
    end else begin
        grp_fu_1888_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1888_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1888_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1888_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_grp_fu_1888_p_din1;
    end else begin
        grp_fu_1888_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_382_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_382_p_ce;
    end else if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_382_ce = 1'b1;
    end else begin
        grp_fu_382_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_382_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_382_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_382_p0 = v119_1_fu_1057_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_382_p0 = v119_fu_882_p1;
    end else begin
        grp_fu_382_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_382_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_382_p_din1;
    end else if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12))) begin
        grp_fu_382_p1 = v113;
    end else begin
        grp_fu_382_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_386_ce = 1'b1;
    end else begin
        grp_fu_386_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_386_p0 = v132_1_fu_1061_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_386_p0 = v132_fu_887_p1;
    end else begin
        grp_fu_386_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_390_ce = 1'b1;
    end else begin
        grp_fu_390_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_390_p0 = v143_1_fu_1066_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_390_p0 = v143_fu_892_p1;
    end else begin
        grp_fu_390_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_394_ce = 1'b1;
    end else begin
        grp_fu_394_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_394_p0 = v154_1_fu_1071_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_394_p0 = v154_fu_897_p1;
    end else begin
        grp_fu_394_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_398_ce = 1'b1;
    end else begin
        grp_fu_398_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_398_p0 = v165_1_fu_1076_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_398_p0 = v165_fu_902_p1;
    end else begin
        grp_fu_398_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_402_ce = 1'b1;
    end else begin
        grp_fu_402_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_402_p0 = v176_1_fu_1081_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_402_p0 = v176_fu_907_p1;
    end else begin
        grp_fu_402_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_406_ce = 1'b1;
    end else begin
        grp_fu_406_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_406_p0 = v187_1_fu_1086_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_406_p0 = v187_fu_912_p1;
    end else begin
        grp_fu_406_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_410_ce = 1'b1;
    end else begin
        grp_fu_410_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_410_p0 = v198_1_fu_1091_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_410_p0 = v198_fu_917_p1;
    end else begin
        grp_fu_410_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_414_ce = 1'b1;
    end else begin
        grp_fu_414_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_414_p0 = v209_1_fu_1096_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_414_p0 = v209_fu_922_p1;
    end else begin
        grp_fu_414_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_address0;
    end else begin
        v225_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_address1;
    end else begin
        v225_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_ce0;
    end else begin
        v225_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_ce1;
    end else begin
        v225_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_d0;
    end else begin
        v225_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_d1;
    end else begin
        v225_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_we0;
    end else begin
        v225_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_0_we1;
    end else begin
        v225_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_address0;
    end else begin
        v225_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_address1;
    end else begin
        v225_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_ce0;
    end else begin
        v225_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_ce1;
    end else begin
        v225_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_d0;
    end else begin
        v225_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_d1;
    end else begin
        v225_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_we0;
    end else begin
        v225_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_1_we1;
    end else begin
        v225_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_address0;
    end else begin
        v225_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_address1;
    end else begin
        v225_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_ce0;
    end else begin
        v225_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_ce1;
    end else begin
        v225_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_d0;
    end else begin
        v225_2_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_d1;
    end else begin
        v225_2_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_we0;
    end else begin
        v225_2_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_2_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_2_we1;
    end else begin
        v225_2_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_address0;
    end else begin
        v225_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_address1;
    end else begin
        v225_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_ce0;
    end else begin
        v225_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_ce1;
    end else begin
        v225_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_d0;
    end else begin
        v225_3_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_d1;
    end else begin
        v225_3_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_we0;
    end else begin
        v225_3_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_3_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v225_3_we1;
    end else begin
        v225_3_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_address0_local = p_cast623_fu_946_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_address0_local = p_cast621_fu_938_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_address0_local = p_cast619_fu_930_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_address0_local = p_cast617_fu_858_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast615_fu_810_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast613_fu_782_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast611_fu_734_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast609_fu_706_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast_fu_658_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_address1_local = p_cast622_fu_942_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_address1_local = p_cast620_fu_934_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_address1_local = p_cast618_fu_926_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_address1_local = p_cast616_fu_854_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast614_fu_806_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast612_fu_778_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast610_fu_730_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast608_fu_702_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address1_local = p_cast607_fu_654_p1;
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
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_526_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_526_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_526_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_526_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_548_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
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
assign add_ln168_1_fu_520_p2 = (phi_mul_fu_124 + 16'd190);
assign add_ln168_fu_532_p2 = (v114_fu_128 + 8'd1);
assign add_ln169_1_fu_580_p2 = (v115_reg_299 + 8'd18);
assign add_ln169_fu_710_p2 = (v115_reg_299 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_526_p2 == 1'd1));
end
assign cmp11_fu_542_p2 = ((v114_fu_128 == 8'd0) ? 1'b1 : 1'b0);
assign empty_19_fu_594_p2 = (v115_reg_299 + 8'd2);
assign empty_22_fu_614_p2 = (v115_reg_299 + 8'd3);
assign empty_28_fu_992_p2 = (lshr_ln_fu_954_p4 + 6'd1);
assign empty_29_fu_634_p2 = (v115_reg_299 + 8'd5);
assign empty_32_fu_662_p2 = (v115_reg_299 + 8'd6);
assign empty_35_fu_682_p2 = (v115_reg_299 + 8'd7);
assign empty_41_fu_1035_p2 = (lshr_ln_fu_954_p4 + 6'd2);
assign empty_44_fu_738_p2 = (v115_reg_299 + 8'd10);
assign empty_47_fu_758_p2 = (v115_reg_299 + 8'd11);
assign empty_53_fu_1128_p2 = (lshr_ln_reg_1710 + 6'd3);
assign empty_54_fu_786_p2 = (v115_reg_299 + 8'd13);
assign empty_57_fu_814_p2 = (v115_reg_299 + 8'd14);
assign empty_60_fu_834_p2 = (v115_reg_299 + 8'd15);
assign empty_66_fu_1170_p2 = (lshr_ln_reg_1710 + 6'd4);
assign empty_67_fu_862_p2 = (v115_reg_299 + 8'd17);
assign grp_fu_1194_p0 = grp_fu_1194_p00;
assign grp_fu_1194_p00 = v115_reg_299;
assign grp_fu_1194_p1 = 16'd210;
assign grp_fu_1194_p2 = zext_ln168_reg_1392;
assign grp_fu_1202_p0 = grp_fu_1202_p00;
assign grp_fu_1202_p00 = tmp_1_fu_568_p3;
assign grp_fu_1202_p1 = 16'd210;
assign grp_fu_1202_p2 = zext_ln168_reg_1392;
assign grp_fu_1210_p0 = grp_fu_1210_p00;
assign grp_fu_1210_p00 = empty_19_fu_594_p2;
assign grp_fu_1210_p1 = 16'd210;
assign grp_fu_1210_p2 = zext_ln168_reg_1392;
assign grp_fu_1218_p0 = grp_fu_1218_p00;
assign grp_fu_1218_p00 = empty_22_fu_614_p2;
assign grp_fu_1218_p1 = 16'd210;
assign grp_fu_1218_p2 = zext_ln168_reg_1392;
assign grp_fu_1226_p1 = 8'd4;
assign grp_fu_1226_p2 = 16'd210;
assign grp_fu_1226_p3 = zext_ln168_reg_1392;
assign grp_fu_1236_p0 = grp_fu_1236_p00;
assign grp_fu_1236_p00 = empty_29_fu_634_p2;
assign grp_fu_1236_p1 = 16'd210;
assign grp_fu_1236_p2 = zext_ln168_reg_1392;
assign grp_fu_1244_p0 = grp_fu_1244_p00;
assign grp_fu_1244_p00 = empty_32_fu_662_p2;
assign grp_fu_1244_p1 = 16'd210;
assign grp_fu_1244_p2 = zext_ln168_reg_1392;
assign grp_fu_1252_p0 = grp_fu_1252_p00;
assign grp_fu_1252_p00 = empty_35_fu_682_p2;
assign grp_fu_1252_p1 = 16'd210;
assign grp_fu_1252_p2 = zext_ln168_reg_1392;
assign grp_fu_1260_p1 = 8'd8;
assign grp_fu_1260_p2 = 16'd210;
assign grp_fu_1260_p3 = zext_ln168_reg_1392;
assign grp_fu_1270_p0 = grp_fu_1270_p00;
assign grp_fu_1270_p00 = add_ln169_fu_710_p2;
assign grp_fu_1270_p1 = 16'd210;
assign grp_fu_1270_p2 = zext_ln168_reg_1392;
assign grp_fu_1278_p0 = grp_fu_1278_p00;
assign grp_fu_1278_p00 = empty_44_fu_738_p2;
assign grp_fu_1278_p1 = 16'd210;
assign grp_fu_1278_p2 = zext_ln168_reg_1392;
assign grp_fu_1286_p0 = grp_fu_1286_p00;
assign grp_fu_1286_p00 = empty_47_fu_758_p2;
assign grp_fu_1286_p1 = 16'd210;
assign grp_fu_1286_p2 = zext_ln168_reg_1392;
assign grp_fu_1294_p1 = 8'd12;
assign grp_fu_1294_p2 = 16'd210;
assign grp_fu_1294_p3 = zext_ln168_reg_1392;
assign grp_fu_1304_p0 = grp_fu_1304_p00;
assign grp_fu_1304_p00 = empty_54_fu_786_p2;
assign grp_fu_1304_p1 = 16'd210;
assign grp_fu_1304_p2 = zext_ln168_reg_1392;
assign grp_fu_1312_p0 = grp_fu_1312_p00;
assign grp_fu_1312_p00 = empty_57_fu_814_p2;
assign grp_fu_1312_p1 = 16'd210;
assign grp_fu_1312_p2 = zext_ln168_reg_1392;
assign grp_fu_1320_p0 = grp_fu_1320_p00;
assign grp_fu_1320_p00 = empty_60_fu_834_p2;
assign grp_fu_1320_p1 = 16'd210;
assign grp_fu_1320_p2 = zext_ln168_reg_1392;
assign grp_fu_1328_p1 = 8'd16;
assign grp_fu_1328_p2 = 16'd210;
assign grp_fu_1328_p3 = zext_ln168_reg_1392;
assign grp_fu_1338_p0 = grp_fu_1338_p00;
assign grp_fu_1338_p00 = empty_67_fu_862_p2;
assign grp_fu_1338_p1 = 16'd210;
assign grp_fu_1338_p2 = zext_ln168_reg_1392;
assign grp_fu_144_p_ce = grp_fu_1852_ce;
assign grp_fu_144_p_din0 = grp_fu_1852_p0;
assign grp_fu_144_p_din1 = grp_fu_1852_p1;
assign grp_fu_144_p_opcode = 2'd0;
assign grp_fu_148_p_ce = grp_fu_1856_ce;
assign grp_fu_148_p_din0 = grp_fu_1856_p0;
assign grp_fu_148_p_din1 = grp_fu_1856_p1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_1860_ce;
assign grp_fu_152_p_din0 = grp_fu_1860_p0;
assign grp_fu_152_p_din1 = grp_fu_1860_p1;
assign grp_fu_152_p_opcode = 2'd0;
assign grp_fu_156_p_ce = grp_fu_1864_ce;
assign grp_fu_156_p_din0 = grp_fu_1864_p0;
assign grp_fu_156_p_din1 = grp_fu_1864_p1;
assign grp_fu_156_p_opcode = 2'd0;
assign grp_fu_160_p_ce = grp_fu_1868_ce;
assign grp_fu_160_p_din0 = grp_fu_1868_p0;
assign grp_fu_160_p_din1 = grp_fu_1868_p1;
assign grp_fu_160_p_opcode = 2'd0;
assign grp_fu_164_p_ce = grp_fu_1872_ce;
assign grp_fu_164_p_din0 = grp_fu_1872_p0;
assign grp_fu_164_p_din1 = grp_fu_1872_p1;
assign grp_fu_164_p_opcode = 2'd0;
assign grp_fu_168_p_ce = grp_fu_1876_ce;
assign grp_fu_168_p_din0 = grp_fu_1876_p0;
assign grp_fu_168_p_din1 = grp_fu_1876_p1;
assign grp_fu_172_p_ce = grp_fu_1880_ce;
assign grp_fu_172_p_din0 = grp_fu_1880_p0;
assign grp_fu_172_p_din1 = grp_fu_1880_p1;
assign grp_fu_176_p_ce = grp_fu_1884_ce;
assign grp_fu_176_p_din0 = grp_fu_1884_p0;
assign grp_fu_176_p_din1 = grp_fu_1884_p1;
assign grp_fu_180_p_ce = grp_fu_1888_ce;
assign grp_fu_180_p_din0 = grp_fu_1888_p0;
assign grp_fu_180_p_din1 = grp_fu_1888_p1;
assign grp_fu_184_p_ce = grp_fu_382_ce;
assign grp_fu_184_p_din0 = grp_fu_382_p0;
assign grp_fu_184_p_din1 = grp_fu_382_p1;
assign grp_fu_188_p_ce = grp_fu_386_ce;
assign grp_fu_188_p_din0 = grp_fu_386_p0;
assign grp_fu_188_p_din1 = v113;
assign grp_fu_192_p_ce = grp_fu_390_ce;
assign grp_fu_192_p_din0 = grp_fu_390_p0;
assign grp_fu_192_p_din1 = v113;
assign grp_fu_196_p_ce = grp_fu_394_ce;
assign grp_fu_196_p_din0 = grp_fu_394_p0;
assign grp_fu_196_p_din1 = v113;
assign grp_fu_200_p_ce = grp_fu_398_ce;
assign grp_fu_200_p_din0 = grp_fu_398_p0;
assign grp_fu_200_p_din1 = v113;
assign grp_fu_204_p_ce = grp_fu_402_ce;
assign grp_fu_204_p_din0 = grp_fu_402_p0;
assign grp_fu_204_p_din1 = v113;
assign grp_fu_208_p_ce = grp_fu_406_ce;
assign grp_fu_208_p_din0 = grp_fu_406_p0;
assign grp_fu_208_p_din1 = v113;
assign grp_fu_212_p_ce = grp_fu_410_ce;
assign grp_fu_212_p_din0 = grp_fu_410_p0;
assign grp_fu_212_p_din1 = v113;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_311_ap_start_reg;
assign icmp_ln168_fu_526_p2 = ((v114_fu_128 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_548_p2 = ((v115_reg_299 < 8'd180) ? 1'b1 : 1'b0);
assign icmp_ln178_fu_1051_p2 = ((trunc_ln169_reg_1703 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_954_p4 = {{v115_reg_299[7:2]}};
assign mul_ln171_1_fu_1104_p0 = mul_ln171_1_fu_1104_p00;
assign mul_ln171_1_fu_1104_p00 = tmp_8_reg_1513;
assign mul_ln171_1_fu_1104_p1 = 14'd190;
assign mul_ln171_fu_968_p0 = mul_ln171_fu_968_p00;
assign mul_ln171_fu_968_p00 = lshr_ln_fu_954_p4;
assign mul_ln171_fu_968_p1 = 14'd190;
assign mul_ln186_fu_1113_p0 = mul_ln186_fu_1113_p00;
assign mul_ln186_fu_1113_p00 = tmp_9_reg_1533;
assign mul_ln186_fu_1113_p1 = 14'd190;
assign mul_ln199_1_fu_1122_p0 = mul_ln199_1_fu_1122_p00;
assign mul_ln199_1_fu_1122_p00 = tmp_s_reg_1543;
assign mul_ln199_1_fu_1122_p1 = 14'd190;
assign mul_ln199_fu_977_p0 = mul_ln199_fu_977_p00;
assign mul_ln199_fu_977_p00 = tmp_2_reg_1443;
assign mul_ln199_fu_977_p1 = 14'd190;
assign mul_ln212_1_fu_1137_p0 = mul_ln212_1_fu_1137_p00;
assign mul_ln212_1_fu_1137_p00 = empty_53_fu_1128_p2;
assign mul_ln212_1_fu_1137_p1 = 14'd190;
assign mul_ln212_fu_986_p0 = mul_ln212_fu_986_p00;
assign mul_ln212_fu_986_p00 = tmp_3_reg_1453;
assign mul_ln212_fu_986_p1 = 14'd190;
assign mul_ln225_1_fu_1146_p0 = mul_ln225_1_fu_1146_p00;
assign mul_ln225_1_fu_1146_p00 = tmp_7_reg_1563;
assign mul_ln225_1_fu_1146_p1 = 14'd190;
assign mul_ln225_fu_1002_p0 = mul_ln225_fu_1002_p00;
assign mul_ln225_fu_1002_p00 = empty_28_fu_992_p2;
assign mul_ln225_fu_1002_p1 = 14'd190;
assign mul_ln238_1_fu_1155_p0 = mul_ln238_1_fu_1155_p00;
assign mul_ln238_1_fu_1155_p00 = tmp_10_reg_1583;
assign mul_ln238_1_fu_1155_p1 = 14'd190;
assign mul_ln238_fu_1011_p0 = mul_ln238_fu_1011_p00;
assign mul_ln238_fu_1011_p00 = tmp_4_reg_1463;
assign mul_ln238_fu_1011_p1 = 14'd190;
assign mul_ln251_1_fu_1164_p0 = mul_ln251_1_fu_1164_p00;
assign mul_ln251_1_fu_1164_p00 = tmp_11_reg_1593;
assign mul_ln251_1_fu_1164_p1 = 14'd190;
assign mul_ln251_fu_1020_p0 = mul_ln251_fu_1020_p00;
assign mul_ln251_fu_1020_p00 = tmp_5_reg_1483;
assign mul_ln251_fu_1020_p1 = 14'd190;
assign mul_ln264_1_fu_1179_p0 = mul_ln264_1_fu_1179_p00;
assign mul_ln264_1_fu_1179_p00 = empty_66_fu_1170_p2;
assign mul_ln264_1_fu_1179_p1 = 14'd190;
assign mul_ln264_fu_1029_p0 = mul_ln264_fu_1029_p00;
assign mul_ln264_fu_1029_p00 = tmp_6_reg_1493;
assign mul_ln264_fu_1029_p1 = 14'd190;
assign mul_ln277_1_fu_1188_p0 = mul_ln277_1_fu_1188_p00;
assign mul_ln277_1_fu_1188_p00 = tmp_12_reg_1623;
assign mul_ln277_1_fu_1188_p1 = 14'd190;
assign mul_ln277_fu_1045_p0 = mul_ln277_fu_1045_p00;
assign mul_ln277_fu_1045_p00 = empty_41_fu_1035_p2;
assign mul_ln277_fu_1045_p1 = 14'd190;
assign p_cast607_fu_654_p1 = grp_fu_1194_p3;
assign p_cast608_fu_702_p1 = grp_fu_1210_p3;
assign p_cast609_fu_706_p1 = grp_fu_1218_p3;
assign p_cast610_fu_730_p1 = grp_fu_1226_p4;
assign p_cast611_fu_734_p1 = grp_fu_1236_p3;
assign p_cast612_fu_778_p1 = grp_fu_1244_p3;
assign p_cast613_fu_782_p1 = grp_fu_1252_p3;
assign p_cast614_fu_806_p1 = grp_fu_1260_p4;
assign p_cast615_fu_810_p1 = grp_fu_1270_p3;
assign p_cast616_fu_854_p1 = grp_fu_1278_p3;
assign p_cast617_fu_858_p1 = grp_fu_1286_p3;
assign p_cast618_fu_926_p1 = grp_fu_1294_p4;
assign p_cast619_fu_930_p1 = grp_fu_1304_p3;
assign p_cast620_fu_934_p1 = grp_fu_1312_p3;
assign p_cast621_fu_938_p1 = grp_fu_1320_p3;
assign p_cast622_fu_942_p1 = grp_fu_1328_p4;
assign p_cast623_fu_946_p1 = grp_fu_1338_p3;
assign p_cast_fu_658_p1 = grp_fu_1202_p3;
assign tmp_1_fu_568_p3 = {{tmp_fu_558_p4}, {1'd1}};
assign tmp_fu_558_p4 = {{v115_reg_299[7:1]}};
assign trunc_ln169_fu_950_p1 = v115_reg_299[1:0];
assign v119_1_fu_1057_p1 = v226_load_9_reg_1603;
assign v119_fu_882_p1 = reg_418;
assign v132_1_fu_1061_p1 = reg_418;
assign v132_fu_887_p1 = reg_422;
assign v143_1_fu_1066_p1 = reg_422;
assign v143_fu_892_p1 = reg_426;
assign v154_1_fu_1071_p1 = reg_426;
assign v154_fu_897_p1 = reg_430;
assign v165_1_fu_1076_p1 = reg_430;
assign v165_fu_902_p1 = reg_434;
assign v176_1_fu_1081_p1 = reg_434;
assign v176_fu_907_p1 = reg_438;
assign v187_1_fu_1086_p1 = reg_438;
assign v187_fu_912_p1 = reg_442;
assign v198_1_fu_1091_p1 = reg_442;
assign v198_fu_917_p1 = reg_446;
assign v209_1_fu_1096_p1 = reg_446;
assign v209_fu_922_p1 = v226_load_8_reg_1598;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_538_p1 = v114_fu_128;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1392[15:8] <= 8'b00000000;
end
endmodule 