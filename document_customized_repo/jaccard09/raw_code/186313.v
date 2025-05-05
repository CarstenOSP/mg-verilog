module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v113,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_opcode,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce); 
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
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
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
(* fsm_encoding = "none" *) reg   [29:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_791_p2;
reg   [31:0] reg_657;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state21;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done;
reg   [31:0] reg_661;
reg   [31:0] reg_665;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state22;
reg   [31:0] reg_669;
reg   [31:0] reg_673;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
wire    ap_CS_fsm_state18;
wire    ap_CS_fsm_state23;
reg   [31:0] reg_677;
reg   [31:0] reg_681;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state24;
reg   [31:0] reg_685;
reg   [31:0] reg_689;
wire    ap_CS_fsm_state11;
wire    ap_CS_fsm_state20;
reg   [31:0] reg_693;
wire   [31:0] grp_fu_621_p2;
reg   [31:0] reg_697;
wire    ap_CS_fsm_state28;
wire   [31:0] grp_fu_625_p2;
reg   [31:0] reg_705;
wire   [31:0] grp_fu_629_p2;
reg   [31:0] reg_713;
wire   [31:0] grp_fu_633_p2;
reg   [31:0] reg_721;
wire   [31:0] grp_fu_637_p2;
reg   [31:0] reg_729;
wire   [31:0] grp_fu_641_p2;
reg   [31:0] reg_737;
wire   [31:0] grp_fu_645_p2;
reg   [31:0] reg_745;
wire   [31:0] grp_fu_649_p2;
reg   [31:0] reg_753;
wire   [31:0] grp_fu_653_p2;
reg   [31:0] reg_761;
reg   [15:0] phi_mul_load_reg_1862;
wire   [15:0] add_ln168_1_fu_785_p2;
reg   [15:0] add_ln168_1_reg_1870;
wire   [7:0] add_ln168_fu_797_p2;
reg   [7:0] add_ln168_reg_1878;
wire   [15:0] zext_ln168_fu_803_p1;
reg   [15:0] zext_ln168_reg_1883;
wire   [0:0] cmp11_fu_807_p2;
reg   [0:0] cmp11_reg_1923;
wire    ap_CS_fsm_state3;
wire   [6:0] lshr_ln_fu_823_p4;
reg   [6:0] lshr_ln_reg_1939;
wire   [7:0] add_ln169_3_fu_845_p2;
reg   [7:0] add_ln169_3_reg_1965;
wire   [5:0] tmp_2_fu_859_p4;
reg   [5:0] tmp_2_reg_1970;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire   [31:0] v119_fu_941_p1;
wire   [31:0] v132_fu_946_p1;
wire   [31:0] v143_fu_951_p1;
wire   [31:0] v154_fu_956_p1;
wire   [31:0] v165_fu_961_p1;
wire   [31:0] v176_fu_966_p1;
wire   [31:0] v187_fu_971_p1;
wire   [31:0] v198_fu_976_p1;
wire   [31:0] v209_fu_981_p1;
wire   [14:0] mul_ln171_fu_1013_p2;
reg   [14:0] mul_ln171_reg_2120;
wire   [14:0] mul_ln199_fu_1030_p2;
reg   [14:0] mul_ln199_reg_2125;
wire   [14:0] mul_ln225_fu_1045_p2;
reg   [14:0] mul_ln225_reg_2130;
wire   [14:0] mul_ln251_fu_1060_p2;
reg   [14:0] mul_ln251_reg_2135;
wire   [14:0] mul_ln277_fu_1075_p2;
reg   [14:0] mul_ln277_reg_2140;
wire   [31:0] v119_1_fu_1089_p1;
wire   [31:0] v132_1_fu_1094_p1;
wire   [31:0] v143_1_fu_1099_p1;
wire   [31:0] v154_1_fu_1104_p1;
wire   [31:0] v165_1_fu_1109_p1;
wire   [31:0] v176_1_fu_1114_p1;
wire   [31:0] v187_1_fu_1119_p1;
wire   [31:0] v198_1_fu_1124_p1;
wire   [31:0] v209_1_fu_1129_p1;
wire   [14:0] mul_ln186_fu_1167_p2;
reg   [14:0] mul_ln186_reg_2231;
wire   [14:0] mul_ln212_fu_1182_p2;
reg   [14:0] mul_ln212_reg_2236;
wire   [14:0] mul_ln238_fu_1197_p2;
reg   [14:0] mul_ln238_reg_2241;
wire   [14:0] mul_ln264_fu_1212_p2;
reg   [14:0] mul_ln264_reg_2246;
wire   [31:0] v119_2_fu_1234_p1;
wire   [31:0] v132_2_fu_1239_p1;
wire   [31:0] v143_2_fu_1244_p1;
wire   [31:0] v154_2_fu_1249_p1;
wire   [31:0] v165_2_fu_1254_p1;
wire   [31:0] v176_2_fu_1259_p1;
wire   [31:0] v187_2_fu_1264_p1;
wire   [31:0] v198_2_fu_1269_p1;
wire   [31:0] v209_2_fu_1274_p1;
wire   [14:0] mul_ln171_1_fu_1312_p2;
reg   [14:0] mul_ln171_1_reg_2346;
wire   [14:0] mul_ln199_1_fu_1327_p2;
reg   [14:0] mul_ln199_1_reg_2351;
wire   [14:0] mul_ln225_1_fu_1342_p2;
reg   [14:0] mul_ln225_1_reg_2356;
wire   [14:0] mul_ln251_1_fu_1357_p2;
reg   [14:0] mul_ln251_1_reg_2361;
wire   [14:0] mul_ln277_1_fu_1372_p2;
reg   [14:0] mul_ln277_1_reg_2366;
wire   [31:0] v119_3_fu_1378_p1;
wire    ap_CS_fsm_state25;
wire   [31:0] v132_3_fu_1383_p1;
wire   [31:0] v143_3_fu_1388_p1;
wire   [31:0] v154_3_fu_1393_p1;
wire   [31:0] v165_3_fu_1398_p1;
wire   [31:0] v176_3_fu_1403_p1;
wire   [31:0] v187_3_fu_1408_p1;
wire   [31:0] v198_3_fu_1413_p1;
wire   [31:0] v209_3_fu_1418_p1;
wire   [14:0] mul_ln186_1_fu_1432_p2;
reg   [14:0] mul_ln186_1_reg_2417;
wire   [14:0] mul_ln212_1_fu_1447_p2;
reg   [14:0] mul_ln212_1_reg_2422;
wire   [14:0] mul_ln238_1_fu_1462_p2;
reg   [14:0] mul_ln238_1_reg_2427;
wire   [14:0] mul_ln264_1_fu_1477_p2;
reg   [14:0] mul_ln264_1_reg_2432;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2437_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2437_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2437_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2437_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2441_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2441_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2441_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2441_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2445_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2445_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2445_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2449_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2449_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2449_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2437_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2437_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2437_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2437_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2441_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2441_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2441_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2441_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2445_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2445_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2445_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2449_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2449_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2449_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2437_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2437_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2437_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2437_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2441_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2441_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2441_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2441_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2445_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2445_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2445_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2449_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2449_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2449_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2437_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2437_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2437_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2437_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2441_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2441_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2441_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2441_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2445_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2445_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2445_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2449_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2449_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2449_p_ce;
reg   [7:0] v115_reg_505;
wire    ap_CS_fsm_state30;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_start_reg;
wire    ap_CS_fsm_state26;
reg    grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_start_reg;
wire    ap_CS_fsm_state29;
wire   [63:0] p_cast756_fu_893_p1;
wire   [63:0] p_cast_fu_897_p1;
wire   [63:0] p_cast757_fu_901_p1;
wire   [63:0] p_cast758_fu_905_p1;
wire   [63:0] p_cast759_fu_909_p1;
wire   [63:0] p_cast760_fu_913_p1;
wire   [63:0] p_cast761_fu_917_p1;
wire   [63:0] p_cast762_fu_921_p1;
wire   [63:0] p_cast763_fu_925_p1;
wire   [63:0] p_cast764_fu_929_p1;
wire   [63:0] p_cast765_fu_933_p1;
wire   [63:0] p_cast766_fu_937_p1;
wire   [63:0] p_cast767_fu_986_p1;
wire   [63:0] p_cast768_fu_990_p1;
wire   [63:0] p_cast769_fu_994_p1;
wire   [63:0] p_cast770_fu_998_p1;
wire   [63:0] p_cast771_fu_1002_p1;
wire   [63:0] p_cast772_fu_1006_p1;
wire   [63:0] p_cast773_fu_1081_p1;
wire   [63:0] p_cast774_fu_1085_p1;
wire   [63:0] p_cast775_fu_1134_p1;
wire   [63:0] p_cast776_fu_1138_p1;
wire   [63:0] p_cast777_fu_1142_p1;
wire   [63:0] p_cast778_fu_1146_p1;
wire   [63:0] p_cast779_fu_1150_p1;
wire   [63:0] p_cast780_fu_1154_p1;
wire   [63:0] p_cast781_fu_1218_p1;
wire   [63:0] p_cast782_fu_1222_p1;
wire   [63:0] p_cast783_fu_1226_p1;
wire   [63:0] p_cast784_fu_1230_p1;
wire   [63:0] p_cast785_fu_1279_p1;
wire   [63:0] p_cast786_fu_1283_p1;
wire   [63:0] p_cast787_fu_1287_p1;
wire   [63:0] p_cast788_fu_1291_p1;
wire   [63:0] p_cast789_fu_1295_p1;
wire   [63:0] p_cast790_fu_1299_p1;
reg   [15:0] phi_mul_fu_186;
wire   [0:0] icmp_ln169_fu_813_p2;
reg   [7:0] v114_fu_190;
reg    v236_write_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg   [31:0] grp_fu_621_p0;
reg   [31:0] grp_fu_625_p0;
reg   [31:0] grp_fu_629_p0;
reg   [31:0] grp_fu_633_p0;
reg   [31:0] grp_fu_637_p0;
reg   [31:0] grp_fu_641_p0;
reg   [31:0] grp_fu_645_p0;
reg   [31:0] grp_fu_649_p0;
reg   [31:0] grp_fu_653_p0;
wire   [7:0] tmp_1_fu_833_p3;
wire   [7:0] tmp_4_fu_869_p3;
wire   [7:0] tmp_8_fu_881_p3;
wire   [15:0] grp_fu_1483_p3;
wire   [15:0] grp_fu_1491_p3;
wire   [15:0] grp_fu_1499_p3;
wire   [15:0] grp_fu_1507_p3;
wire   [15:0] grp_fu_1515_p4;
wire   [15:0] grp_fu_1525_p4;
wire   [15:0] grp_fu_1535_p4;
wire   [15:0] grp_fu_1545_p4;
wire   [15:0] grp_fu_1555_p4;
wire   [15:0] grp_fu_1565_p4;
wire   [15:0] grp_fu_1575_p4;
wire   [15:0] grp_fu_1585_p4;
wire   [15:0] grp_fu_1595_p4;
wire   [15:0] grp_fu_1605_p4;
wire   [15:0] grp_fu_1615_p4;
wire   [15:0] grp_fu_1625_p4;
wire   [15:0] grp_fu_1635_p4;
wire   [15:0] grp_fu_1645_p4;
wire   [6:0] mul_ln171_fu_1013_p0;
wire   [8:0] mul_ln171_fu_1013_p1;
wire   [6:0] tmp_6_fu_1019_p3;
wire   [6:0] mul_ln199_fu_1030_p0;
wire   [8:0] mul_ln199_fu_1030_p1;
wire   [6:0] empty_24_fu_1036_p2;
wire   [6:0] mul_ln225_fu_1045_p0;
wire   [8:0] mul_ln225_fu_1045_p1;
wire   [6:0] empty_31_fu_1051_p2;
wire   [6:0] mul_ln251_fu_1060_p0;
wire   [8:0] mul_ln251_fu_1060_p1;
wire   [6:0] empty_38_fu_1066_p2;
wire   [6:0] mul_ln277_fu_1075_p0;
wire   [8:0] mul_ln277_fu_1075_p1;
wire   [15:0] grp_fu_1655_p4;
wire   [15:0] grp_fu_1665_p4;
wire   [15:0] grp_fu_1675_p4;
wire   [15:0] grp_fu_1685_p4;
wire   [15:0] grp_fu_1695_p4;
wire   [15:0] grp_fu_1705_p4;
wire   [15:0] grp_fu_1715_p4;
wire   [15:0] grp_fu_1725_p4;
wire   [6:0] empty_44_fu_1158_p2;
wire   [6:0] mul_ln186_fu_1167_p0;
wire   [8:0] mul_ln186_fu_1167_p1;
wire   [6:0] empty_51_fu_1173_p2;
wire   [6:0] mul_ln212_fu_1182_p0;
wire   [8:0] mul_ln212_fu_1182_p1;
wire   [6:0] empty_58_fu_1188_p2;
wire   [6:0] mul_ln238_fu_1197_p0;
wire   [8:0] mul_ln238_fu_1197_p1;
wire   [6:0] empty_65_fu_1203_p2;
wire   [6:0] mul_ln264_fu_1212_p0;
wire   [8:0] mul_ln264_fu_1212_p1;
wire   [15:0] grp_fu_1735_p4;
wire   [15:0] grp_fu_1745_p4;
wire   [15:0] grp_fu_1755_p4;
wire   [15:0] grp_fu_1765_p4;
wire   [15:0] grp_fu_1775_p4;
wire   [15:0] grp_fu_1785_p4;
wire   [15:0] grp_fu_1795_p4;
wire   [15:0] grp_fu_1805_p4;
wire   [15:0] grp_fu_1815_p4;
wire   [15:0] grp_fu_1825_p4;
wire   [6:0] empty_71_fu_1303_p2;
wire   [6:0] mul_ln171_1_fu_1312_p0;
wire   [8:0] mul_ln171_1_fu_1312_p1;
wire   [6:0] empty_78_fu_1318_p2;
wire   [6:0] mul_ln199_1_fu_1327_p0;
wire   [8:0] mul_ln199_1_fu_1327_p1;
wire   [6:0] empty_85_fu_1333_p2;
wire   [6:0] mul_ln225_1_fu_1342_p0;
wire   [8:0] mul_ln225_1_fu_1342_p1;
wire   [6:0] empty_92_fu_1348_p2;
wire   [6:0] mul_ln251_1_fu_1357_p0;
wire   [8:0] mul_ln251_1_fu_1357_p1;
wire   [6:0] empty_99_fu_1363_p2;
wire   [6:0] mul_ln277_1_fu_1372_p0;
wire   [8:0] mul_ln277_1_fu_1372_p1;
wire   [6:0] empty_105_fu_1423_p2;
wire   [6:0] mul_ln186_1_fu_1432_p0;
wire   [8:0] mul_ln186_1_fu_1432_p1;
wire   [6:0] empty_112_fu_1438_p2;
wire   [6:0] mul_ln212_1_fu_1447_p0;
wire   [8:0] mul_ln212_1_fu_1447_p1;
wire   [6:0] empty_119_fu_1453_p2;
wire   [6:0] mul_ln238_1_fu_1462_p0;
wire   [8:0] mul_ln238_1_fu_1462_p1;
wire   [6:0] empty_126_fu_1468_p2;
wire   [6:0] mul_ln264_1_fu_1477_p0;
wire   [8:0] mul_ln264_1_fu_1477_p1;
wire   [7:0] grp_fu_1483_p0;
wire   [7:0] grp_fu_1483_p1;
wire   [7:0] grp_fu_1483_p2;
wire    ap_CS_fsm_state5;
wire   [7:0] grp_fu_1491_p0;
wire   [7:0] grp_fu_1491_p1;
wire   [7:0] grp_fu_1491_p2;
wire   [7:0] grp_fu_1499_p0;
wire   [7:0] grp_fu_1499_p1;
wire   [7:0] grp_fu_1499_p2;
wire   [7:0] grp_fu_1507_p0;
wire   [7:0] grp_fu_1507_p1;
wire   [7:0] grp_fu_1507_p2;
wire   [2:0] grp_fu_1515_p1;
wire   [7:0] grp_fu_1515_p2;
wire   [7:0] grp_fu_1515_p3;
wire   [2:0] grp_fu_1525_p1;
wire   [7:0] grp_fu_1525_p2;
wire   [7:0] grp_fu_1525_p3;
wire   [2:0] grp_fu_1535_p1;
wire   [7:0] grp_fu_1535_p2;
wire   [7:0] grp_fu_1535_p3;
wire   [2:0] grp_fu_1545_p1;
wire   [7:0] grp_fu_1545_p2;
wire   [7:0] grp_fu_1545_p3;
wire   [3:0] grp_fu_1555_p1;
wire   [7:0] grp_fu_1555_p2;
wire   [7:0] grp_fu_1555_p3;
wire   [3:0] grp_fu_1565_p1;
wire   [7:0] grp_fu_1565_p2;
wire   [7:0] grp_fu_1565_p3;
wire   [3:0] grp_fu_1575_p1;
wire   [7:0] grp_fu_1575_p2;
wire   [7:0] grp_fu_1575_p3;
wire   [3:0] grp_fu_1585_p1;
wire   [7:0] grp_fu_1585_p2;
wire   [7:0] grp_fu_1585_p3;
wire   [3:0] grp_fu_1595_p1;
wire   [7:0] grp_fu_1595_p2;
wire   [7:0] grp_fu_1595_p3;
wire   [3:0] grp_fu_1605_p1;
wire   [7:0] grp_fu_1605_p2;
wire   [7:0] grp_fu_1605_p3;
wire   [3:0] grp_fu_1615_p1;
wire   [7:0] grp_fu_1615_p2;
wire   [7:0] grp_fu_1615_p3;
wire   [3:0] grp_fu_1625_p1;
wire   [7:0] grp_fu_1625_p2;
wire   [7:0] grp_fu_1625_p3;
wire   [4:0] grp_fu_1635_p1;
wire   [7:0] grp_fu_1635_p2;
wire   [7:0] grp_fu_1635_p3;
wire   [4:0] grp_fu_1645_p1;
wire   [7:0] grp_fu_1645_p2;
wire   [7:0] grp_fu_1645_p3;
wire   [4:0] grp_fu_1655_p1;
wire   [7:0] grp_fu_1655_p2;
wire   [7:0] grp_fu_1655_p3;
wire   [4:0] grp_fu_1665_p1;
wire   [7:0] grp_fu_1665_p2;
wire   [7:0] grp_fu_1665_p3;
wire   [4:0] grp_fu_1675_p1;
wire   [7:0] grp_fu_1675_p2;
wire   [7:0] grp_fu_1675_p3;
wire   [4:0] grp_fu_1685_p1;
wire   [7:0] grp_fu_1685_p2;
wire   [7:0] grp_fu_1685_p3;
wire   [4:0] grp_fu_1695_p1;
wire   [7:0] grp_fu_1695_p2;
wire   [7:0] grp_fu_1695_p3;
wire   [4:0] grp_fu_1705_p1;
wire   [7:0] grp_fu_1705_p2;
wire   [7:0] grp_fu_1705_p3;
wire   [4:0] grp_fu_1715_p1;
wire   [7:0] grp_fu_1715_p2;
wire   [7:0] grp_fu_1715_p3;
wire   [4:0] grp_fu_1725_p1;
wire   [7:0] grp_fu_1725_p2;
wire   [7:0] grp_fu_1725_p3;
wire   [4:0] grp_fu_1735_p1;
wire   [7:0] grp_fu_1735_p2;
wire   [7:0] grp_fu_1735_p3;
wire   [4:0] grp_fu_1745_p1;
wire   [7:0] grp_fu_1745_p2;
wire   [7:0] grp_fu_1745_p3;
wire   [4:0] grp_fu_1755_p1;
wire   [7:0] grp_fu_1755_p2;
wire   [7:0] grp_fu_1755_p3;
wire   [4:0] grp_fu_1765_p1;
wire   [7:0] grp_fu_1765_p2;
wire   [7:0] grp_fu_1765_p3;
wire   [4:0] grp_fu_1775_p1;
wire   [7:0] grp_fu_1775_p2;
wire   [7:0] grp_fu_1775_p3;
wire   [4:0] grp_fu_1785_p1;
wire   [7:0] grp_fu_1785_p2;
wire   [7:0] grp_fu_1785_p3;
wire   [5:0] grp_fu_1795_p1;
wire   [7:0] grp_fu_1795_p2;
wire   [7:0] grp_fu_1795_p3;
wire   [5:0] grp_fu_1805_p1;
wire   [7:0] grp_fu_1805_p2;
wire   [7:0] grp_fu_1805_p3;
wire   [5:0] grp_fu_1815_p1;
wire   [7:0] grp_fu_1815_p2;
wire   [7:0] grp_fu_1815_p3;
wire   [5:0] grp_fu_1825_p1;
wire   [7:0] grp_fu_1825_p2;
wire   [7:0] grp_fu_1825_p3;
reg    grp_fu_621_ce;
wire    ap_CS_fsm_state27;
reg    grp_fu_625_ce;
reg    grp_fu_629_ce;
reg    grp_fu_633_ce;
reg    grp_fu_637_ce;
reg    grp_fu_641_ce;
reg    grp_fu_645_ce;
reg    grp_fu_649_ce;
reg    grp_fu_653_ce;
reg    grp_fu_1695_ce;
reg    grp_fu_1705_ce;
reg    grp_fu_1715_ce;
reg    grp_fu_1725_ce;
reg    grp_fu_1735_ce;
reg    grp_fu_1745_ce;
reg    grp_fu_1755_ce;
reg    grp_fu_1765_ce;
reg    grp_fu_1775_ce;
reg    grp_fu_1785_ce;
reg    grp_fu_1795_ce;
reg    grp_fu_1805_ce;
reg    grp_fu_1815_ce;
reg    grp_fu_1825_ce;
reg   [31:0] grp_fu_2437_p0;
reg   [31:0] grp_fu_2437_p1;
reg    grp_fu_2437_ce;
wire   [31:0] grp_fu_2441_p2;
reg   [31:0] grp_fu_2441_p0;
reg   [31:0] grp_fu_2441_p1;
reg    grp_fu_2441_ce;
reg   [31:0] grp_fu_2445_p0;
reg   [31:0] grp_fu_2445_p1;
reg    grp_fu_2445_ce;
reg   [31:0] grp_fu_2449_p0;
reg   [31:0] grp_fu_2449_p1;
reg    grp_fu_2449_ce;
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
wire   [15:0] grp_fu_1483_p00;
wire   [15:0] grp_fu_1491_p00;
wire   [15:0] grp_fu_1499_p00;
wire   [15:0] grp_fu_1507_p00;
wire   [14:0] mul_ln171_1_fu_1312_p00;
wire   [14:0] mul_ln171_fu_1013_p00;
wire   [14:0] mul_ln186_1_fu_1432_p00;
wire   [14:0] mul_ln186_fu_1167_p00;
wire   [14:0] mul_ln199_1_fu_1327_p00;
wire   [14:0] mul_ln199_fu_1030_p00;
wire   [14:0] mul_ln212_1_fu_1447_p00;
wire   [14:0] mul_ln212_fu_1182_p00;
wire   [14:0] mul_ln225_1_fu_1342_p00;
wire   [14:0] mul_ln225_fu_1045_p00;
wire   [14:0] mul_ln238_1_fu_1462_p00;
wire   [14:0] mul_ln238_fu_1197_p00;
wire   [14:0] mul_ln251_1_fu_1357_p00;
wire   [14:0] mul_ln251_fu_1060_p00;
wire   [14:0] mul_ln264_1_fu_1477_p00;
wire   [14:0] mul_ln264_fu_1212_p00;
wire   [14:0] mul_ln277_1_fu_1372_p00;
wire   [14:0] mul_ln277_fu_1075_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 30'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_start_reg = 1'b0;
#0 phi_mul_fu_186 = 16'd0;
#0 v114_fu_190 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_517(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_ready),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_d1),.v225_0_q1(v225_0_q1),.phi_mul(phi_mul_load_reg_1862),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_2120),.mul_ln199(mul_ln199_reg_2125),.mul_ln225(mul_ln225_reg_2130),.mul_ln251(mul_ln251_reg_2135),.mul_ln277(mul_ln277_reg_2140),.cmp11(cmp11_reg_1923),.v120(reg_697),.v133(reg_705),.v144(reg_713),.v155(reg_721),.v166(reg_729),.v177(reg_737),.v188(reg_745),.v199(reg_753),.v210(reg_761),.grp_fu_2437_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2437_p_din0),.grp_fu_2437_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2437_p_din1),.grp_fu_2437_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2437_p_opcode),.grp_fu_2437_p_dout0(grp_fu_152_p_dout0),.grp_fu_2437_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2437_p_ce),.grp_fu_2441_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2441_p_din0),.grp_fu_2441_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2441_p_din1),.grp_fu_2441_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2441_p_opcode),.grp_fu_2441_p_dout0(grp_fu_2441_p2),.grp_fu_2441_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2441_p_ce),.grp_fu_2445_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2445_p_din0),.grp_fu_2445_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2445_p_din1),.grp_fu_2445_p_dout0(grp_fu_156_p_dout0),.grp_fu_2445_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2445_p_ce),.grp_fu_2449_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2449_p_din0),.grp_fu_2449_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2449_p_din1),.grp_fu_2449_p_dout0(grp_fu_160_p_dout0),.grp_fu_2449_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2449_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_543(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_ready),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_d1),.v225_0_q1(v225_0_q1),.phi_mul(phi_mul_load_reg_1862),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v227_ce1),.v227_q1(v227_q1),.mul_ln186(mul_ln186_reg_2231),.mul_ln212(mul_ln212_reg_2236),.mul_ln238(mul_ln238_reg_2241),.mul_ln264(mul_ln264_reg_2246),.mul_ln277(mul_ln277_reg_2140),.cmp11(cmp11_reg_1923),.v120_1(reg_697),.v133_1(reg_705),.v144_1(reg_713),.v155_1(reg_721),.v166_1(reg_729),.v177_1(reg_737),.v188_1(reg_745),.v199_1(reg_753),.v210_1(reg_761),.grp_fu_2437_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2437_p_din0),.grp_fu_2437_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2437_p_din1),.grp_fu_2437_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2437_p_opcode),.grp_fu_2437_p_dout0(grp_fu_152_p_dout0),.grp_fu_2437_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2437_p_ce),.grp_fu_2441_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2441_p_din0),.grp_fu_2441_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2441_p_din1),.grp_fu_2441_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2441_p_opcode),.grp_fu_2441_p_dout0(grp_fu_2441_p2),.grp_fu_2441_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2441_p_ce),.grp_fu_2445_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2445_p_din0),.grp_fu_2445_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2445_p_din1),.grp_fu_2445_p_dout0(grp_fu_156_p_dout0),.grp_fu_2445_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2445_p_ce),.grp_fu_2449_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2449_p_din0),.grp_fu_2449_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2449_p_din1),.grp_fu_2449_p_dout0(grp_fu_160_p_dout0),.grp_fu_2449_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2449_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_54 grp_kernel_2mm_node1_Pipeline_label_54_fu_569(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_ready),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_d1),.v225_0_q1(v225_0_q1),.phi_mul(phi_mul_load_reg_1862),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v227_ce1),.v227_q1(v227_q1),.mul_ln171_1(mul_ln171_1_reg_2346),.mul_ln199_1(mul_ln199_1_reg_2351),.mul_ln225_1(mul_ln225_1_reg_2356),.mul_ln251_1(mul_ln251_1_reg_2361),.mul_ln277_1(mul_ln277_1_reg_2366),.cmp11(cmp11_reg_1923),.v120_2(reg_697),.v133_2(reg_705),.v144_2(reg_713),.v155_2(reg_721),.v166_2(reg_729),.v177_2(reg_737),.v188_2(reg_745),.v199_2(reg_753),.v210_2(reg_761),.grp_fu_2437_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2437_p_din0),.grp_fu_2437_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2437_p_din1),.grp_fu_2437_p_opcode(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2437_p_opcode),.grp_fu_2437_p_dout0(grp_fu_152_p_dout0),.grp_fu_2437_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2437_p_ce),.grp_fu_2441_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2441_p_din0),.grp_fu_2441_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2441_p_din1),.grp_fu_2441_p_opcode(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2441_p_opcode),.grp_fu_2441_p_dout0(grp_fu_2441_p2),.grp_fu_2441_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2441_p_ce),.grp_fu_2445_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2445_p_din0),.grp_fu_2445_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2445_p_din1),.grp_fu_2445_p_dout0(grp_fu_156_p_dout0),.grp_fu_2445_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2445_p_ce),.grp_fu_2449_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2449_p_din0),.grp_fu_2449_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2449_p_din1),.grp_fu_2449_p_dout0(grp_fu_160_p_dout0),.grp_fu_2449_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2449_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_55 grp_kernel_2mm_node1_Pipeline_label_55_fu_595(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_ready),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_d1),.v225_0_q1(v225_0_q1),.phi_mul(phi_mul_load_reg_1862),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v227_ce1),.v227_q1(v227_q1),.mul_ln186_1(mul_ln186_1_reg_2417),.mul_ln212_1(mul_ln212_1_reg_2422),.mul_ln238_1(mul_ln238_1_reg_2427),.mul_ln264_1(mul_ln264_1_reg_2432),.mul_ln277_1(mul_ln277_1_reg_2366),.cmp11(cmp11_reg_1923),.v120_3(reg_697),.v133_3(reg_705),.v144_3(reg_713),.v155_3(reg_721),.v166_3(reg_729),.v177_3(reg_737),.v188_3(reg_745),.v199_3(reg_753),.v210_3(reg_761),.grp_fu_2437_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2437_p_din0),.grp_fu_2437_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2437_p_din1),.grp_fu_2437_p_opcode(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2437_p_opcode),.grp_fu_2437_p_dout0(grp_fu_152_p_dout0),.grp_fu_2437_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2437_p_ce),.grp_fu_2441_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2441_p_din0),.grp_fu_2441_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2441_p_din1),.grp_fu_2441_p_opcode(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2441_p_opcode),.grp_fu_2441_p_dout0(grp_fu_2441_p2),.grp_fu_2441_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2441_p_ce),.grp_fu_2445_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2445_p_din0),.grp_fu_2445_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2445_p_din1),.grp_fu_2445_p_dout0(grp_fu_156_p_dout0),.grp_fu_2445_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2445_p_ce),.grp_fu_2449_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2449_p_din0),.grp_fu_2449_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2449_p_din1),.grp_fu_2449_p_dout0(grp_fu_160_p_dout0),.grp_fu_2449_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2449_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U93(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_621_p0),.din1(v113),.ce(grp_fu_621_ce),.dout(grp_fu_621_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U94(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_625_p0),.din1(v113),.ce(grp_fu_625_ce),.dout(grp_fu_625_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U95(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_629_p0),.din1(v113),.ce(grp_fu_629_ce),.dout(grp_fu_629_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U96(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_633_p0),.din1(v113),.ce(grp_fu_633_ce),.dout(grp_fu_633_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U97(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_637_p0),.din1(v113),.ce(grp_fu_637_ce),.dout(grp_fu_637_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_641_p0),.din1(v113),.ce(grp_fu_641_ce),.dout(grp_fu_641_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_645_p0),.din1(v113),.ce(grp_fu_645_ce),.dout(grp_fu_645_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_649_p0),.din1(v113),.ce(grp_fu_649_ce),.dout(grp_fu_649_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_653_p0),.din1(v113),.ce(grp_fu_653_ce),.dout(grp_fu_653_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U102(.din0(mul_ln171_fu_1013_p0),.din1(mul_ln171_fu_1013_p1),.dout(mul_ln171_fu_1013_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U103(.din0(mul_ln199_fu_1030_p0),.din1(mul_ln199_fu_1030_p1),.dout(mul_ln199_fu_1030_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U104(.din0(mul_ln225_fu_1045_p0),.din1(mul_ln225_fu_1045_p1),.dout(mul_ln225_fu_1045_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U105(.din0(mul_ln251_fu_1060_p0),.din1(mul_ln251_fu_1060_p1),.dout(mul_ln251_fu_1060_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U106(.din0(mul_ln277_fu_1075_p0),.din1(mul_ln277_fu_1075_p1),.dout(mul_ln277_fu_1075_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U107(.din0(mul_ln186_fu_1167_p0),.din1(mul_ln186_fu_1167_p1),.dout(mul_ln186_fu_1167_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U108(.din0(mul_ln212_fu_1182_p0),.din1(mul_ln212_fu_1182_p1),.dout(mul_ln212_fu_1182_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U109(.din0(mul_ln238_fu_1197_p0),.din1(mul_ln238_fu_1197_p1),.dout(mul_ln238_fu_1197_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U110(.din0(mul_ln264_fu_1212_p0),.din1(mul_ln264_fu_1212_p1),.dout(mul_ln264_fu_1212_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U111(.din0(mul_ln171_1_fu_1312_p0),.din1(mul_ln171_1_fu_1312_p1),.dout(mul_ln171_1_fu_1312_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U112(.din0(mul_ln199_1_fu_1327_p0),.din1(mul_ln199_1_fu_1327_p1),.dout(mul_ln199_1_fu_1327_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U113(.din0(mul_ln225_1_fu_1342_p0),.din1(mul_ln225_1_fu_1342_p1),.dout(mul_ln225_1_fu_1342_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U114(.din0(mul_ln251_1_fu_1357_p0),.din1(mul_ln251_1_fu_1357_p1),.dout(mul_ln251_1_fu_1357_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U115(.din0(mul_ln277_1_fu_1372_p0),.din1(mul_ln277_1_fu_1372_p1),.dout(mul_ln277_1_fu_1372_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U116(.din0(mul_ln186_1_fu_1432_p0),.din1(mul_ln186_1_fu_1432_p1),.dout(mul_ln186_1_fu_1432_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U117(.din0(mul_ln212_1_fu_1447_p0),.din1(mul_ln212_1_fu_1447_p1),.dout(mul_ln212_1_fu_1447_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U118(.din0(mul_ln238_1_fu_1462_p0),.din1(mul_ln238_1_fu_1462_p1),.dout(mul_ln238_1_fu_1462_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U119(.din0(mul_ln264_1_fu_1477_p0),.din1(mul_ln264_1_fu_1477_p1),.dout(mul_ln264_1_fu_1477_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U120(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1483_p0),.din1(grp_fu_1483_p1),.din2(grp_fu_1483_p2),.ce(1'b1),.dout(grp_fu_1483_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U121(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1491_p0),.din1(grp_fu_1491_p1),.din2(grp_fu_1491_p2),.ce(1'b1),.dout(grp_fu_1491_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U122(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1499_p0),.din1(grp_fu_1499_p1),.din2(grp_fu_1499_p2),.ce(1'b1),.dout(grp_fu_1499_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U123(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1507_p0),.din1(grp_fu_1507_p1),.din2(grp_fu_1507_p2),.ce(1'b1),.dout(grp_fu_1507_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U124(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1515_p1),.din2(grp_fu_1515_p2),.din3(grp_fu_1515_p3),.ce(1'b1),.dout(grp_fu_1515_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U125(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1525_p1),.din2(grp_fu_1525_p2),.din3(grp_fu_1525_p3),.ce(1'b1),.dout(grp_fu_1525_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U126(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1535_p1),.din2(grp_fu_1535_p2),.din3(grp_fu_1535_p3),.ce(1'b1),.dout(grp_fu_1535_p4));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U127(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1545_p1),.din2(grp_fu_1545_p2),.din3(grp_fu_1545_p3),.ce(1'b1),.dout(grp_fu_1545_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U128(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1555_p1),.din2(grp_fu_1555_p2),.din3(grp_fu_1555_p3),.ce(1'b1),.dout(grp_fu_1555_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U129(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1565_p1),.din2(grp_fu_1565_p2),.din3(grp_fu_1565_p3),.ce(1'b1),.dout(grp_fu_1565_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U130(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1575_p1),.din2(grp_fu_1575_p2),.din3(grp_fu_1575_p3),.ce(1'b1),.dout(grp_fu_1575_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U131(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1585_p1),.din2(grp_fu_1585_p2),.din3(grp_fu_1585_p3),.ce(1'b1),.dout(grp_fu_1585_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U132(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1595_p1),.din2(grp_fu_1595_p2),.din3(grp_fu_1595_p3),.ce(1'b1),.dout(grp_fu_1595_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U133(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1605_p1),.din2(grp_fu_1605_p2),.din3(grp_fu_1605_p3),.ce(1'b1),.dout(grp_fu_1605_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U134(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1615_p1),.din2(grp_fu_1615_p2),.din3(grp_fu_1615_p3),.ce(1'b1),.dout(grp_fu_1615_p4));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U135(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1625_p1),.din2(grp_fu_1625_p2),.din3(grp_fu_1625_p3),.ce(1'b1),.dout(grp_fu_1625_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U136(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1635_p1),.din2(grp_fu_1635_p2),.din3(grp_fu_1635_p3),.ce(1'b1),.dout(grp_fu_1635_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U137(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1645_p1),.din2(grp_fu_1645_p2),.din3(grp_fu_1645_p3),.ce(1'b1),.dout(grp_fu_1645_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U138(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1655_p1),.din2(grp_fu_1655_p2),.din3(grp_fu_1655_p3),.ce(1'b1),.dout(grp_fu_1655_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U139(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1665_p1),.din2(grp_fu_1665_p2),.din3(grp_fu_1665_p3),.ce(1'b1),.dout(grp_fu_1665_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U140(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1675_p1),.din2(grp_fu_1675_p2),.din3(grp_fu_1675_p3),.ce(1'b1),.dout(grp_fu_1675_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U141(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1685_p1),.din2(grp_fu_1685_p2),.din3(grp_fu_1685_p3),.ce(1'b1),.dout(grp_fu_1685_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U142(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1695_p1),.din2(grp_fu_1695_p2),.din3(grp_fu_1695_p3),.ce(grp_fu_1695_ce),.dout(grp_fu_1695_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U143(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1705_p1),.din2(grp_fu_1705_p2),.din3(grp_fu_1705_p3),.ce(grp_fu_1705_ce),.dout(grp_fu_1705_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U144(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1715_p1),.din2(grp_fu_1715_p2),.din3(grp_fu_1715_p3),.ce(grp_fu_1715_ce),.dout(grp_fu_1715_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U145(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1725_p1),.din2(grp_fu_1725_p2),.din3(grp_fu_1725_p3),.ce(grp_fu_1725_ce),.dout(grp_fu_1725_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U146(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1735_p1),.din2(grp_fu_1735_p2),.din3(grp_fu_1735_p3),.ce(grp_fu_1735_ce),.dout(grp_fu_1735_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U147(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1745_p1),.din2(grp_fu_1745_p2),.din3(grp_fu_1745_p3),.ce(grp_fu_1745_ce),.dout(grp_fu_1745_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U148(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1755_p1),.din2(grp_fu_1755_p2),.din3(grp_fu_1755_p3),.ce(grp_fu_1755_ce),.dout(grp_fu_1755_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U149(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1765_p1),.din2(grp_fu_1765_p2),.din3(grp_fu_1765_p3),.ce(grp_fu_1765_ce),.dout(grp_fu_1765_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U150(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1775_p1),.din2(grp_fu_1775_p2),.din3(grp_fu_1775_p3),.ce(grp_fu_1775_ce),.dout(grp_fu_1775_p4));
kernel_2mm_ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_5ns_8ns_8ns_16_4_1_U151(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1785_p1),.din2(grp_fu_1785_p2),.din3(grp_fu_1785_p3),.ce(grp_fu_1785_ce),.dout(grp_fu_1785_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1_U152(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1795_p1),.din2(grp_fu_1795_p2),.din3(grp_fu_1795_p3),.ce(grp_fu_1795_ce),.dout(grp_fu_1795_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1_U153(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1805_p1),.din2(grp_fu_1805_p2),.din3(grp_fu_1805_p3),.ce(grp_fu_1805_ce),.dout(grp_fu_1805_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1_U154(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1815_p1),.din2(grp_fu_1815_p2),.din3(grp_fu_1815_p3),.ce(grp_fu_1815_ce),.dout(grp_fu_1815_p4));
kernel_2mm_ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_6ns_8ns_8ns_16_4_1_U155(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_505),.din1(grp_fu_1825_p1),.din2(grp_fu_1825_p2),.din3(grp_fu_1825_p3),.ce(grp_fu_1825_ce),.dout(grp_fu_1825_p4));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U157(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_2441_p0),.din1(grp_fu_2441_p1),.ce(grp_fu_2441_ce),.dout(grp_fu_2441_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_186 <= 16'd0;
    end else if (((icmp_ln169_fu_813_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_186 <= add_ln168_1_reg_1870;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_190 <= 8'd0;
    end else if (((icmp_ln169_fu_813_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_190 <= add_ln168_reg_1878;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_791_p2 == 1'd0))) begin
        v115_reg_505 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
        v115_reg_505 <= add_ln169_3_reg_1965;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_1870 <= add_ln168_1_fu_785_p2;
        add_ln168_reg_1878 <= add_ln168_fu_797_p2;
        cmp11_reg_1923 <= cmp11_fu_807_p2;
        phi_mul_load_reg_1862 <= phi_mul_fu_186;
        zext_ln168_reg_1883[7 : 0] <= zext_ln168_fu_803_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_3_reg_1965 <= add_ln169_3_fu_845_p2;
        lshr_ln_reg_1939 <= {{v115_reg_505[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        mul_ln171_1_reg_2346 <= mul_ln171_1_fu_1312_p2;
        mul_ln199_1_reg_2351 <= mul_ln199_1_fu_1327_p2;
        mul_ln225_1_reg_2356 <= mul_ln225_1_fu_1342_p2;
        mul_ln251_1_reg_2361 <= mul_ln251_1_fu_1357_p2;
        mul_ln277_1_reg_2366 <= mul_ln277_1_fu_1372_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_2120 <= mul_ln171_fu_1013_p2;
        mul_ln199_reg_2125 <= mul_ln199_fu_1030_p2;
        mul_ln225_reg_2130 <= mul_ln225_fu_1045_p2;
        mul_ln251_reg_2135 <= mul_ln251_fu_1060_p2;
        mul_ln277_reg_2140 <= mul_ln277_fu_1075_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        mul_ln186_1_reg_2417 <= mul_ln186_1_fu_1432_p2;
        mul_ln212_1_reg_2422 <= mul_ln212_1_fu_1447_p2;
        mul_ln238_1_reg_2427 <= mul_ln238_1_fu_1462_p2;
        mul_ln264_1_reg_2432 <= mul_ln264_1_fu_1477_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_ln186_reg_2231 <= mul_ln186_fu_1167_p2;
        mul_ln212_reg_2236 <= mul_ln212_fu_1182_p2;
        mul_ln238_reg_2241 <= mul_ln238_fu_1197_p2;
        mul_ln264_reg_2246 <= mul_ln264_fu_1212_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        reg_657 <= v226_q1;
        reg_661 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state17) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_665 <= v226_q1;
        reg_669 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_673 <= v226_q1;
        reg_677 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_681 <= v226_q1;
        reg_685 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11))) begin
        reg_689 <= v226_q1;
        reg_693 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_697 <= grp_fu_621_p2;
        reg_705 <= grp_fu_625_p2;
        reg_713 <= grp_fu_629_p2;
        reg_721 <= grp_fu_633_p2;
        reg_729 <= grp_fu_637_p2;
        reg_737 <= grp_fu_641_p2;
        reg_745 <= grp_fu_645_p2;
        reg_753 <= grp_fu_649_p2;
        reg_761 <= grp_fu_653_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_2_reg_1970 <= {{v115_reg_505[7:2]}};
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_791_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_791_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1695_ce = 1'b1;
    end else begin
        grp_fu_1695_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1705_ce = 1'b1;
    end else begin
        grp_fu_1705_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1715_ce = 1'b1;
    end else begin
        grp_fu_1715_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1725_ce = 1'b1;
    end else begin
        grp_fu_1725_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1735_ce = 1'b1;
    end else begin
        grp_fu_1735_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1745_ce = 1'b1;
    end else begin
        grp_fu_1745_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1755_ce = 1'b1;
    end else begin
        grp_fu_1755_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1765_ce = 1'b1;
    end else begin
        grp_fu_1765_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_1775_ce = 1'b1;
    end else begin
        grp_fu_1775_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state18) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_1785_ce = 1'b1;
    end else begin
        grp_fu_1785_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_1795_ce = 1'b1;
    end else begin
        grp_fu_1795_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_1805_ce = 1'b1;
    end else begin
        grp_fu_1805_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_1815_ce = 1'b1;
    end else begin
        grp_fu_1815_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_1825_ce = 1'b1;
    end else begin
        grp_fu_1825_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2437_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2437_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2437_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2437_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2437_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2437_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2437_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2437_p_ce;
    end else begin
        grp_fu_2437_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2437_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2437_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2437_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2437_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2437_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2437_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2437_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2437_p_din0;
    end else begin
        grp_fu_2437_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2437_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2437_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2437_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2437_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2437_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2437_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2437_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2437_p_din1;
    end else begin
        grp_fu_2437_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2441_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2441_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2441_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2441_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2441_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2441_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2441_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2441_p_ce;
    end else begin
        grp_fu_2441_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2441_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2441_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2441_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2441_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2441_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2441_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2441_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2441_p_din0;
    end else begin
        grp_fu_2441_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2441_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2441_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2441_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2441_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2441_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2441_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2441_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2441_p_din1;
    end else begin
        grp_fu_2441_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2445_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2445_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2445_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2445_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2445_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2445_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2445_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2445_p_ce;
    end else begin
        grp_fu_2445_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2445_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2445_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2445_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2445_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2445_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2445_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2445_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2445_p_din0;
    end else begin
        grp_fu_2445_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2445_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2445_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2445_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2445_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2445_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2445_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2445_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2445_p_din1;
    end else begin
        grp_fu_2445_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2449_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2449_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2449_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2449_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2449_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2449_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2449_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2449_p_ce;
    end else begin
        grp_fu_2449_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2449_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2449_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2449_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2449_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2449_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2449_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2449_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2449_p_din0;
    end else begin
        grp_fu_2449_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_2449_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_grp_fu_2449_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_2449_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_grp_fu_2449_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_2449_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_grp_fu_2449_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_2449_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_grp_fu_2449_p_din1;
    end else begin
        grp_fu_2449_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_621_ce = 1'b1;
    end else begin
        grp_fu_621_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_621_p0 = v119_3_fu_1378_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_621_p0 = v119_2_fu_1234_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_621_p0 = v119_1_fu_1089_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_621_p0 = v119_fu_941_p1;
    end else begin
        grp_fu_621_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_625_ce = 1'b1;
    end else begin
        grp_fu_625_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_625_p0 = v132_3_fu_1383_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_625_p0 = v132_2_fu_1239_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_625_p0 = v132_1_fu_1094_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_625_p0 = v132_fu_946_p1;
    end else begin
        grp_fu_625_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_629_ce = 1'b1;
    end else begin
        grp_fu_629_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_629_p0 = v143_3_fu_1388_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_629_p0 = v143_2_fu_1244_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_629_p0 = v143_1_fu_1099_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_629_p0 = v143_fu_951_p1;
    end else begin
        grp_fu_629_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_633_ce = 1'b1;
    end else begin
        grp_fu_633_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_633_p0 = v154_3_fu_1393_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_633_p0 = v154_2_fu_1249_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_633_p0 = v154_1_fu_1104_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_633_p0 = v154_fu_956_p1;
    end else begin
        grp_fu_633_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_637_ce = 1'b1;
    end else begin
        grp_fu_637_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_637_p0 = v165_3_fu_1398_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_637_p0 = v165_2_fu_1254_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_637_p0 = v165_1_fu_1109_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_637_p0 = v165_fu_961_p1;
    end else begin
        grp_fu_637_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_641_ce = 1'b1;
    end else begin
        grp_fu_641_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_641_p0 = v176_3_fu_1403_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_641_p0 = v176_2_fu_1259_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_641_p0 = v176_1_fu_1114_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_641_p0 = v176_fu_966_p1;
    end else begin
        grp_fu_641_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_645_ce = 1'b1;
    end else begin
        grp_fu_645_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_645_p0 = v187_3_fu_1408_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_645_p0 = v187_2_fu_1264_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_645_p0 = v187_1_fu_1119_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_645_p0 = v187_fu_971_p1;
    end else begin
        grp_fu_645_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_649_ce = 1'b1;
    end else begin
        grp_fu_649_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_649_p0 = v198_3_fu_1413_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_649_p0 = v198_2_fu_1269_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_649_p0 = v198_1_fu_1124_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_649_p0 = v198_fu_976_p1;
    end else begin
        grp_fu_649_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state25) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        grp_fu_653_ce = 1'b1;
    end else begin
        grp_fu_653_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_653_p0 = v209_3_fu_1418_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_653_p0 = v209_2_fu_1274_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_653_p0 = v209_1_fu_1129_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_653_p0 = v209_fu_981_p1;
    end else begin
        grp_fu_653_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_address0;
    end else begin
        v225_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_address1;
    end else begin
        v225_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_ce0;
    end else begin
        v225_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_ce1;
    end else begin
        v225_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_d0;
    end else begin
        v225_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_d1;
    end else begin
        v225_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_we0;
    end else begin
        v225_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_0_we1;
    end else begin
        v225_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_address0;
    end else begin
        v225_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_address1;
    end else begin
        v225_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_ce0;
    end else begin
        v225_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_ce1;
    end else begin
        v225_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_d0;
    end else begin
        v225_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_d1;
    end else begin
        v225_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_we0;
    end else begin
        v225_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v225_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v225_1_we1;
    end else begin
        v225_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address0_local = p_cast790_fu_1299_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address0_local = p_cast788_fu_1291_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_address0_local = p_cast786_fu_1283_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_address0_local = p_cast784_fu_1230_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_address0_local = p_cast782_fu_1222_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_address0_local = p_cast780_fu_1154_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_address0_local = p_cast778_fu_1146_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_address0_local = p_cast776_fu_1138_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_address0_local = p_cast774_fu_1085_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_address0_local = p_cast772_fu_1006_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_address0_local = p_cast770_fu_998_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_address0_local = p_cast768_fu_990_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_address0_local = p_cast766_fu_937_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast764_fu_929_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast762_fu_921_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast760_fu_913_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast758_fu_905_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast_fu_897_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_address1_local = p_cast789_fu_1295_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_address1_local = p_cast787_fu_1287_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_address1_local = p_cast785_fu_1279_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_address1_local = p_cast783_fu_1226_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_address1_local = p_cast781_fu_1218_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_address1_local = p_cast779_fu_1150_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_address1_local = p_cast777_fu_1142_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_address1_local = p_cast775_fu_1134_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_address1_local = p_cast773_fu_1081_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_address1_local = p_cast771_fu_1002_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_address1_local = p_cast769_fu_994_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_address1_local = p_cast767_fu_986_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_address1_local = p_cast765_fu_933_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast763_fu_925_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast761_fu_917_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast759_fu_909_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast757_fu_901_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address1_local = p_cast756_fu_893_p1;
    end else begin
        v226_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        v226_ce0_local = 1'b1;
    end else begin
        v226_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)) | ((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1)))) begin
        v226_ce1_local = 1'b1;
    end else begin
        v226_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_791_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_791_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_791_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_791_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_813_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
            if (((1'b1 == ap_CS_fsm_state21) & (grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_done == 1'b1))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state30))) begin
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
assign add_ln168_1_fu_785_p2 = (phi_mul_fu_186 + 16'd190);
assign add_ln168_fu_797_p2 = (v114_fu_190 + 8'd1);
assign add_ln169_3_fu_845_p2 = (v115_reg_505 + 8'd36);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_791_p2 == 1'd1));
end
assign cmp11_fu_807_p2 = ((v114_fu_190 == 8'd0) ? 1'b1 : 1'b0);
assign empty_105_fu_1423_p2 = (lshr_ln_reg_1939 + 7'd14);
assign empty_112_fu_1438_p2 = (lshr_ln_reg_1939 + 7'd15);
assign empty_119_fu_1453_p2 = (lshr_ln_reg_1939 + 7'd16);
assign empty_126_fu_1468_p2 = (lshr_ln_reg_1939 + 7'd17);
assign empty_24_fu_1036_p2 = (lshr_ln_reg_1939 + 7'd2);
assign empty_31_fu_1051_p2 = (lshr_ln_reg_1939 + 7'd3);
assign empty_38_fu_1066_p2 = (lshr_ln_reg_1939 + 7'd4);
assign empty_44_fu_1158_p2 = (lshr_ln_reg_1939 + 7'd5);
assign empty_51_fu_1173_p2 = (lshr_ln_reg_1939 + 7'd6);
assign empty_58_fu_1188_p2 = (lshr_ln_reg_1939 + 7'd7);
assign empty_65_fu_1203_p2 = (lshr_ln_reg_1939 + 7'd8);
assign empty_71_fu_1303_p2 = (lshr_ln_reg_1939 + 7'd9);
assign empty_78_fu_1318_p2 = (lshr_ln_reg_1939 + 7'd10);
assign empty_85_fu_1333_p2 = (lshr_ln_reg_1939 + 7'd11);
assign empty_92_fu_1348_p2 = (lshr_ln_reg_1939 + 7'd12);
assign empty_99_fu_1363_p2 = (lshr_ln_reg_1939 + 7'd13);
assign grp_fu_1483_p0 = grp_fu_1483_p00;
assign grp_fu_1483_p00 = v115_reg_505;
assign grp_fu_1483_p1 = 16'd210;
assign grp_fu_1483_p2 = zext_ln168_reg_1883;
assign grp_fu_1491_p0 = grp_fu_1491_p00;
assign grp_fu_1491_p00 = tmp_1_fu_833_p3;
assign grp_fu_1491_p1 = 16'd210;
assign grp_fu_1491_p2 = zext_ln168_reg_1883;
assign grp_fu_1499_p0 = grp_fu_1499_p00;
assign grp_fu_1499_p00 = tmp_4_fu_869_p3;
assign grp_fu_1499_p1 = 16'd210;
assign grp_fu_1499_p2 = zext_ln168_reg_1883;
assign grp_fu_1507_p0 = grp_fu_1507_p00;
assign grp_fu_1507_p00 = tmp_8_fu_881_p3;
assign grp_fu_1507_p1 = 16'd210;
assign grp_fu_1507_p2 = zext_ln168_reg_1883;
assign grp_fu_1515_p1 = 8'd4;
assign grp_fu_1515_p2 = 16'd210;
assign grp_fu_1515_p3 = zext_ln168_reg_1883;
assign grp_fu_1525_p1 = 8'd5;
assign grp_fu_1525_p2 = 16'd210;
assign grp_fu_1525_p3 = zext_ln168_reg_1883;
assign grp_fu_152_p_ce = grp_fu_2437_ce;
assign grp_fu_152_p_din0 = grp_fu_2437_p0;
assign grp_fu_152_p_din1 = grp_fu_2437_p1;
assign grp_fu_152_p_opcode = 2'd0;
assign grp_fu_1535_p1 = 8'd6;
assign grp_fu_1535_p2 = 16'd210;
assign grp_fu_1535_p3 = zext_ln168_reg_1883;
assign grp_fu_1545_p1 = 8'd7;
assign grp_fu_1545_p2 = 16'd210;
assign grp_fu_1545_p3 = zext_ln168_reg_1883;
assign grp_fu_1555_p1 = 8'd8;
assign grp_fu_1555_p2 = 16'd210;
assign grp_fu_1555_p3 = zext_ln168_reg_1883;
assign grp_fu_1565_p1 = 8'd9;
assign grp_fu_1565_p2 = 16'd210;
assign grp_fu_1565_p3 = zext_ln168_reg_1883;
assign grp_fu_156_p_ce = grp_fu_2445_ce;
assign grp_fu_156_p_din0 = grp_fu_2445_p0;
assign grp_fu_156_p_din1 = grp_fu_2445_p1;
assign grp_fu_1575_p1 = 8'd10;
assign grp_fu_1575_p2 = 16'd210;
assign grp_fu_1575_p3 = zext_ln168_reg_1883;
assign grp_fu_1585_p1 = 8'd11;
assign grp_fu_1585_p2 = 16'd210;
assign grp_fu_1585_p3 = zext_ln168_reg_1883;
assign grp_fu_1595_p1 = 8'd12;
assign grp_fu_1595_p2 = 16'd210;
assign grp_fu_1595_p3 = zext_ln168_reg_1883;
assign grp_fu_1605_p1 = 8'd13;
assign grp_fu_1605_p2 = 16'd210;
assign grp_fu_1605_p3 = zext_ln168_reg_1883;
assign grp_fu_160_p_ce = grp_fu_2449_ce;
assign grp_fu_160_p_din0 = grp_fu_2449_p0;
assign grp_fu_160_p_din1 = grp_fu_2449_p1;
assign grp_fu_1615_p1 = 8'd14;
assign grp_fu_1615_p2 = 16'd210;
assign grp_fu_1615_p3 = zext_ln168_reg_1883;
assign grp_fu_1625_p1 = 8'd15;
assign grp_fu_1625_p2 = 16'd210;
assign grp_fu_1625_p3 = zext_ln168_reg_1883;
assign grp_fu_1635_p1 = 8'd16;
assign grp_fu_1635_p2 = 16'd210;
assign grp_fu_1635_p3 = zext_ln168_reg_1883;
assign grp_fu_1645_p1 = 8'd17;
assign grp_fu_1645_p2 = 16'd210;
assign grp_fu_1645_p3 = zext_ln168_reg_1883;
assign grp_fu_1655_p1 = 8'd18;
assign grp_fu_1655_p2 = 16'd210;
assign grp_fu_1655_p3 = zext_ln168_reg_1883;
assign grp_fu_1665_p1 = 8'd19;
assign grp_fu_1665_p2 = 16'd210;
assign grp_fu_1665_p3 = zext_ln168_reg_1883;
assign grp_fu_1675_p1 = 8'd20;
assign grp_fu_1675_p2 = 16'd210;
assign grp_fu_1675_p3 = zext_ln168_reg_1883;
assign grp_fu_1685_p1 = 8'd21;
assign grp_fu_1685_p2 = 16'd210;
assign grp_fu_1685_p3 = zext_ln168_reg_1883;
assign grp_fu_1695_p1 = 8'd22;
assign grp_fu_1695_p2 = 16'd210;
assign grp_fu_1695_p3 = zext_ln168_reg_1883;
assign grp_fu_1705_p1 = 8'd23;
assign grp_fu_1705_p2 = 16'd210;
assign grp_fu_1705_p3 = zext_ln168_reg_1883;
assign grp_fu_1715_p1 = 8'd24;
assign grp_fu_1715_p2 = 16'd210;
assign grp_fu_1715_p3 = zext_ln168_reg_1883;
assign grp_fu_1725_p1 = 8'd25;
assign grp_fu_1725_p2 = 16'd210;
assign grp_fu_1725_p3 = zext_ln168_reg_1883;
assign grp_fu_1735_p1 = 8'd26;
assign grp_fu_1735_p2 = 16'd210;
assign grp_fu_1735_p3 = zext_ln168_reg_1883;
assign grp_fu_1745_p1 = 8'd27;
assign grp_fu_1745_p2 = 16'd210;
assign grp_fu_1745_p3 = zext_ln168_reg_1883;
assign grp_fu_1755_p1 = 8'd28;
assign grp_fu_1755_p2 = 16'd210;
assign grp_fu_1755_p3 = zext_ln168_reg_1883;
assign grp_fu_1765_p1 = 8'd29;
assign grp_fu_1765_p2 = 16'd210;
assign grp_fu_1765_p3 = zext_ln168_reg_1883;
assign grp_fu_1775_p1 = 8'd30;
assign grp_fu_1775_p2 = 16'd210;
assign grp_fu_1775_p3 = zext_ln168_reg_1883;
assign grp_fu_1785_p1 = 8'd31;
assign grp_fu_1785_p2 = 16'd210;
assign grp_fu_1785_p3 = zext_ln168_reg_1883;
assign grp_fu_1795_p1 = 8'd32;
assign grp_fu_1795_p2 = 16'd210;
assign grp_fu_1795_p3 = zext_ln168_reg_1883;
assign grp_fu_1805_p1 = 8'd33;
assign grp_fu_1805_p2 = 16'd210;
assign grp_fu_1805_p3 = zext_ln168_reg_1883;
assign grp_fu_1815_p1 = 8'd34;
assign grp_fu_1815_p2 = 16'd210;
assign grp_fu_1815_p3 = zext_ln168_reg_1883;
assign grp_fu_1825_p1 = 8'd35;
assign grp_fu_1825_p2 = 16'd210;
assign grp_fu_1825_p3 = zext_ln168_reg_1883;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_543_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_start = grp_kernel_2mm_node1_Pipeline_label_54_fu_569_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_start = grp_kernel_2mm_node1_Pipeline_label_55_fu_595_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_517_ap_start_reg;
assign icmp_ln168_fu_791_p2 = ((v114_fu_190 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_813_p2 = ((v115_reg_505 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_823_p4 = {{v115_reg_505[7:1]}};
assign mul_ln171_1_fu_1312_p0 = mul_ln171_1_fu_1312_p00;
assign mul_ln171_1_fu_1312_p00 = empty_71_fu_1303_p2;
assign mul_ln171_1_fu_1312_p1 = 15'd190;
assign mul_ln171_fu_1013_p0 = mul_ln171_fu_1013_p00;
assign mul_ln171_fu_1013_p00 = lshr_ln_reg_1939;
assign mul_ln171_fu_1013_p1 = 15'd190;
assign mul_ln186_1_fu_1432_p0 = mul_ln186_1_fu_1432_p00;
assign mul_ln186_1_fu_1432_p00 = empty_105_fu_1423_p2;
assign mul_ln186_1_fu_1432_p1 = 15'd190;
assign mul_ln186_fu_1167_p0 = mul_ln186_fu_1167_p00;
assign mul_ln186_fu_1167_p00 = empty_44_fu_1158_p2;
assign mul_ln186_fu_1167_p1 = 15'd190;
assign mul_ln199_1_fu_1327_p0 = mul_ln199_1_fu_1327_p00;
assign mul_ln199_1_fu_1327_p00 = empty_78_fu_1318_p2;
assign mul_ln199_1_fu_1327_p1 = 15'd190;
assign mul_ln199_fu_1030_p0 = mul_ln199_fu_1030_p00;
assign mul_ln199_fu_1030_p00 = tmp_6_fu_1019_p3;
assign mul_ln199_fu_1030_p1 = 15'd190;
assign mul_ln212_1_fu_1447_p0 = mul_ln212_1_fu_1447_p00;
assign mul_ln212_1_fu_1447_p00 = empty_112_fu_1438_p2;
assign mul_ln212_1_fu_1447_p1 = 15'd190;
assign mul_ln212_fu_1182_p0 = mul_ln212_fu_1182_p00;
assign mul_ln212_fu_1182_p00 = empty_51_fu_1173_p2;
assign mul_ln212_fu_1182_p1 = 15'd190;
assign mul_ln225_1_fu_1342_p0 = mul_ln225_1_fu_1342_p00;
assign mul_ln225_1_fu_1342_p00 = empty_85_fu_1333_p2;
assign mul_ln225_1_fu_1342_p1 = 15'd190;
assign mul_ln225_fu_1045_p0 = mul_ln225_fu_1045_p00;
assign mul_ln225_fu_1045_p00 = empty_24_fu_1036_p2;
assign mul_ln225_fu_1045_p1 = 15'd190;
assign mul_ln238_1_fu_1462_p0 = mul_ln238_1_fu_1462_p00;
assign mul_ln238_1_fu_1462_p00 = empty_119_fu_1453_p2;
assign mul_ln238_1_fu_1462_p1 = 15'd190;
assign mul_ln238_fu_1197_p0 = mul_ln238_fu_1197_p00;
assign mul_ln238_fu_1197_p00 = empty_58_fu_1188_p2;
assign mul_ln238_fu_1197_p1 = 15'd190;
assign mul_ln251_1_fu_1357_p0 = mul_ln251_1_fu_1357_p00;
assign mul_ln251_1_fu_1357_p00 = empty_92_fu_1348_p2;
assign mul_ln251_1_fu_1357_p1 = 15'd190;
assign mul_ln251_fu_1060_p0 = mul_ln251_fu_1060_p00;
assign mul_ln251_fu_1060_p00 = empty_31_fu_1051_p2;
assign mul_ln251_fu_1060_p1 = 15'd190;
assign mul_ln264_1_fu_1477_p0 = mul_ln264_1_fu_1477_p00;
assign mul_ln264_1_fu_1477_p00 = empty_126_fu_1468_p2;
assign mul_ln264_1_fu_1477_p1 = 15'd190;
assign mul_ln264_fu_1212_p0 = mul_ln264_fu_1212_p00;
assign mul_ln264_fu_1212_p00 = empty_65_fu_1203_p2;
assign mul_ln264_fu_1212_p1 = 15'd190;
assign mul_ln277_1_fu_1372_p0 = mul_ln277_1_fu_1372_p00;
assign mul_ln277_1_fu_1372_p00 = empty_99_fu_1363_p2;
assign mul_ln277_1_fu_1372_p1 = 15'd190;
assign mul_ln277_fu_1075_p0 = mul_ln277_fu_1075_p00;
assign mul_ln277_fu_1075_p00 = empty_38_fu_1066_p2;
assign mul_ln277_fu_1075_p1 = 15'd190;
assign p_cast756_fu_893_p1 = grp_fu_1483_p3;
assign p_cast757_fu_901_p1 = grp_fu_1499_p3;
assign p_cast758_fu_905_p1 = grp_fu_1507_p3;
assign p_cast759_fu_909_p1 = grp_fu_1515_p4;
assign p_cast760_fu_913_p1 = grp_fu_1525_p4;
assign p_cast761_fu_917_p1 = grp_fu_1535_p4;
assign p_cast762_fu_921_p1 = grp_fu_1545_p4;
assign p_cast763_fu_925_p1 = grp_fu_1555_p4;
assign p_cast764_fu_929_p1 = grp_fu_1565_p4;
assign p_cast765_fu_933_p1 = grp_fu_1575_p4;
assign p_cast766_fu_937_p1 = grp_fu_1585_p4;
assign p_cast767_fu_986_p1 = grp_fu_1595_p4;
assign p_cast768_fu_990_p1 = grp_fu_1605_p4;
assign p_cast769_fu_994_p1 = grp_fu_1615_p4;
assign p_cast770_fu_998_p1 = grp_fu_1625_p4;
assign p_cast771_fu_1002_p1 = grp_fu_1635_p4;
assign p_cast772_fu_1006_p1 = grp_fu_1645_p4;
assign p_cast773_fu_1081_p1 = grp_fu_1655_p4;
assign p_cast774_fu_1085_p1 = grp_fu_1665_p4;
assign p_cast775_fu_1134_p1 = grp_fu_1675_p4;
assign p_cast776_fu_1138_p1 = grp_fu_1685_p4;
assign p_cast777_fu_1142_p1 = grp_fu_1695_p4;
assign p_cast778_fu_1146_p1 = grp_fu_1705_p4;
assign p_cast779_fu_1150_p1 = grp_fu_1715_p4;
assign p_cast780_fu_1154_p1 = grp_fu_1725_p4;
assign p_cast781_fu_1218_p1 = grp_fu_1735_p4;
assign p_cast782_fu_1222_p1 = grp_fu_1745_p4;
assign p_cast783_fu_1226_p1 = grp_fu_1755_p4;
assign p_cast784_fu_1230_p1 = grp_fu_1765_p4;
assign p_cast785_fu_1279_p1 = grp_fu_1775_p4;
assign p_cast786_fu_1283_p1 = grp_fu_1785_p4;
assign p_cast787_fu_1287_p1 = grp_fu_1795_p4;
assign p_cast788_fu_1291_p1 = grp_fu_1805_p4;
assign p_cast789_fu_1295_p1 = grp_fu_1815_p4;
assign p_cast790_fu_1299_p1 = grp_fu_1825_p4;
assign p_cast_fu_897_p1 = grp_fu_1491_p3;
assign tmp_1_fu_833_p3 = {{lshr_ln_fu_823_p4}, {1'd1}};
assign tmp_2_fu_859_p4 = {{v115_reg_505[7:2]}};
assign tmp_4_fu_869_p3 = {{tmp_2_fu_859_p4}, {2'd2}};
assign tmp_6_fu_1019_p3 = {{tmp_2_reg_1970}, {1'd1}};
assign tmp_8_fu_881_p3 = {{tmp_2_fu_859_p4}, {2'd3}};
assign v119_1_fu_1089_p1 = reg_693;
assign v119_2_fu_1234_p1 = reg_657;
assign v119_3_fu_1378_p1 = reg_693;
assign v119_fu_941_p1 = reg_657;
assign v132_1_fu_1094_p1 = reg_657;
assign v132_2_fu_1239_p1 = reg_661;
assign v132_3_fu_1383_p1 = reg_657;
assign v132_fu_946_p1 = reg_661;
assign v143_1_fu_1099_p1 = reg_661;
assign v143_2_fu_1244_p1 = reg_665;
assign v143_3_fu_1388_p1 = reg_661;
assign v143_fu_951_p1 = reg_665;
assign v154_1_fu_1104_p1 = reg_665;
assign v154_2_fu_1249_p1 = reg_669;
assign v154_3_fu_1393_p1 = reg_665;
assign v154_fu_956_p1 = reg_669;
assign v165_1_fu_1109_p1 = reg_669;
assign v165_2_fu_1254_p1 = reg_673;
assign v165_3_fu_1398_p1 = reg_669;
assign v165_fu_961_p1 = reg_673;
assign v176_1_fu_1114_p1 = reg_673;
assign v176_2_fu_1259_p1 = reg_677;
assign v176_3_fu_1403_p1 = reg_673;
assign v176_fu_966_p1 = reg_677;
assign v187_1_fu_1119_p1 = reg_677;
assign v187_2_fu_1264_p1 = reg_681;
assign v187_3_fu_1408_p1 = reg_677;
assign v187_fu_971_p1 = reg_681;
assign v198_1_fu_1124_p1 = reg_681;
assign v198_2_fu_1269_p1 = reg_685;
assign v198_3_fu_1413_p1 = reg_681;
assign v198_fu_976_p1 = reg_685;
assign v209_1_fu_1129_p1 = reg_685;
assign v209_2_fu_1274_p1 = reg_689;
assign v209_3_fu_1418_p1 = reg_685;
assign v209_fu_981_p1 = reg_689;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_803_p1 = v114_fu_190;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1883[15:8] <= 8'b00000000;
end
endmodule 