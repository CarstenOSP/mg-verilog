module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce); 
parameter    ap_ST_fsm_state1 = 17'd1;
parameter    ap_ST_fsm_state2 = 17'd2;
parameter    ap_ST_fsm_state3 = 17'd4;
parameter    ap_ST_fsm_state4 = 17'd8;
parameter    ap_ST_fsm_state5 = 17'd16;
parameter    ap_ST_fsm_state6 = 17'd32;
parameter    ap_ST_fsm_state7 = 17'd64;
parameter    ap_ST_fsm_state8 = 17'd128;
parameter    ap_ST_fsm_state9 = 17'd256;
parameter    ap_ST_fsm_state10 = 17'd512;
parameter    ap_ST_fsm_state11 = 17'd1024;
parameter    ap_ST_fsm_state12 = 17'd2048;
parameter    ap_ST_fsm_state13 = 17'd4096;
parameter    ap_ST_fsm_state14 = 17'd8192;
parameter    ap_ST_fsm_state15 = 17'd16384;
parameter    ap_ST_fsm_state16 = 17'd32768;
parameter    ap_ST_fsm_state17 = 17'd65536;
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
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_544_p2;
reg   [15:0] phi_mul_load_reg_1279;
wire   [15:0] add_ln168_1_fu_538_p2;
reg   [15:0] add_ln168_1_reg_1284;
wire   [7:0] add_ln168_fu_550_p2;
reg   [7:0] add_ln168_reg_1292;
wire   [1:0] trunc_ln168_fu_556_p1;
reg   [1:0] trunc_ln168_reg_1297;
wire   [13:0] zext_ln168_fu_570_p1;
reg   [13:0] zext_ln168_reg_1310;
wire   [0:0] cmp11_fu_574_p2;
reg   [0:0] cmp11_reg_1323;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_590_p2;
reg   [7:0] add_ln169_reg_1336;
wire   [7:0] empty_21_fu_604_p2;
reg   [7:0] empty_21_reg_1341;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_28_fu_614_p2;
reg   [7:0] empty_28_reg_1351;
wire   [7:0] empty_35_fu_624_p2;
reg   [7:0] empty_35_reg_1361;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_42_fu_634_p2;
reg   [7:0] empty_42_reg_1371;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_49_fu_651_p2;
reg   [7:0] empty_49_reg_1401;
wire   [7:0] empty_56_fu_661_p2;
reg   [7:0] empty_56_reg_1411;
wire   [31:0] v_fu_687_p11;
reg   [31:0] v_reg_1421;
wire    ap_CS_fsm_state7;
wire   [7:0] empty_63_fu_724_p2;
reg   [7:0] empty_63_reg_1466;
wire   [7:0] empty_70_fu_734_p2;
reg   [7:0] empty_70_reg_1476;
wire   [31:0] v37_fu_760_p11;
reg   [31:0] v37_reg_1486;
wire    ap_CS_fsm_state8;
wire   [31:0] v39_fu_799_p11;
reg   [31:0] v39_reg_1491;
wire   [31:0] v41_fu_852_p11;
reg   [31:0] v41_reg_1536;
wire    ap_CS_fsm_state9;
wire   [31:0] v43_fu_891_p11;
reg   [31:0] v43_reg_1541;
wire   [31:0] v45_fu_944_p11;
reg   [31:0] v45_reg_1586;
wire    ap_CS_fsm_state10;
wire   [31:0] v47_fu_983_p11;
reg   [31:0] v47_reg_1591;
wire   [31:0] v49_fu_1036_p11;
reg   [31:0] v49_reg_1636;
wire    ap_CS_fsm_state11;
wire   [31:0] v51_fu_1075_p11;
reg   [31:0] v51_reg_1641;
wire   [15:0] mul_ln171_fu_1102_p2;
reg   [15:0] mul_ln171_reg_1646;
wire    ap_CS_fsm_state15;
reg   [31:0] v36_reg_1651;
wire   [15:0] mul_ln186_fu_1111_p2;
reg   [15:0] mul_ln186_reg_1656;
reg   [31:0] v38_reg_1661;
wire   [15:0] mul_ln199_fu_1120_p2;
reg   [15:0] mul_ln199_reg_1666;
reg   [31:0] v40_reg_1671;
wire   [15:0] mul_ln212_fu_1129_p2;
reg   [15:0] mul_ln212_reg_1676;
reg   [31:0] v42_reg_1681;
wire   [15:0] mul_ln225_fu_1138_p2;
reg   [15:0] mul_ln225_reg_1686;
reg   [31:0] v44_reg_1691;
wire   [15:0] mul_ln238_fu_1147_p2;
reg   [15:0] mul_ln238_reg_1696;
reg   [31:0] v46_reg_1701;
wire   [15:0] mul_ln251_fu_1156_p2;
reg   [15:0] mul_ln251_reg_1706;
reg   [31:0] v48_reg_1711;
wire   [15:0] mul_ln264_fu_1165_p2;
reg   [15:0] mul_ln264_reg_1716;
reg   [31:0] v50_reg_1721;
wire   [15:0] mul_ln277_fu_1174_p2;
reg   [15:0] mul_ln277_reg_1726;
reg   [31:0] v52_reg_1731;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_1736_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_1736_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_1736_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_1736_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_486_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_486_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_486_p_ce;
reg   [7:0] v115_reg_446;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [63:0] p_cast1196_fu_644_p1;
wire   [63:0] p_cast_fu_710_p1;
wire   [63:0] p_cast1197_fu_717_p1;
wire   [63:0] p_cast1198_fu_822_p1;
wire   [63:0] p_cast1199_fu_829_p1;
wire   [63:0] p_cast1200_fu_914_p1;
wire   [63:0] p_cast1201_fu_921_p1;
wire   [63:0] p_cast1202_fu_1006_p1;
wire   [63:0] p_cast1203_fu_1013_p1;
reg   [15:0] phi_mul_fu_100;
wire   [0:0] icmp_ln169_fu_580_p2;
reg   [7:0] v114_fu_104;
reg    v236_write_local;
reg    v226_0_ce0_local;
reg   [13:0] v226_0_address0_local;
reg    v226_0_ce1_local;
reg   [13:0] v226_0_address1_local;
reg    v226_1_ce0_local;
reg   [13:0] v226_1_address0_local;
reg    v226_1_ce1_local;
reg   [13:0] v226_1_address1_local;
reg    v226_2_ce0_local;
reg   [13:0] v226_2_address0_local;
reg    v226_2_ce1_local;
reg   [13:0] v226_2_address1_local;
reg    v226_3_ce0_local;
reg   [13:0] v226_3_address0_local;
reg    v226_3_ce1_local;
reg   [13:0] v226_3_address1_local;
reg   [31:0] grp_fu_486_p0;
reg   [31:0] grp_fu_486_p1;
wire    ap_CS_fsm_state12;
wire   [5:0] lshr_ln_fu_560_p4;
wire   [13:0] grp_fu_1180_p3;
wire   [31:0] v_fu_687_p2;
wire   [31:0] v_fu_687_p4;
wire   [31:0] v_fu_687_p6;
wire   [31:0] v_fu_687_p8;
wire   [31:0] v_fu_687_p9;
wire   [13:0] grp_fu_1188_p3;
wire   [13:0] grp_fu_1196_p3;
wire   [31:0] v37_fu_760_p2;
wire   [31:0] v37_fu_760_p4;
wire   [31:0] v37_fu_760_p6;
wire   [31:0] v37_fu_760_p8;
wire   [31:0] v37_fu_760_p9;
wire   [31:0] v39_fu_799_p2;
wire   [31:0] v39_fu_799_p4;
wire   [31:0] v39_fu_799_p6;
wire   [31:0] v39_fu_799_p8;
wire   [31:0] v39_fu_799_p9;
wire   [13:0] grp_fu_1204_p3;
wire   [13:0] grp_fu_1212_p3;
wire   [31:0] v41_fu_852_p2;
wire   [31:0] v41_fu_852_p4;
wire   [31:0] v41_fu_852_p6;
wire   [31:0] v41_fu_852_p8;
wire   [31:0] v41_fu_852_p9;
wire   [31:0] v43_fu_891_p2;
wire   [31:0] v43_fu_891_p4;
wire   [31:0] v43_fu_891_p6;
wire   [31:0] v43_fu_891_p8;
wire   [31:0] v43_fu_891_p9;
wire   [13:0] grp_fu_1220_p3;
wire   [13:0] grp_fu_1228_p3;
wire   [31:0] v45_fu_944_p2;
wire   [31:0] v45_fu_944_p4;
wire   [31:0] v45_fu_944_p6;
wire   [31:0] v45_fu_944_p8;
wire   [31:0] v45_fu_944_p9;
wire   [31:0] v47_fu_983_p2;
wire   [31:0] v47_fu_983_p4;
wire   [31:0] v47_fu_983_p6;
wire   [31:0] v47_fu_983_p8;
wire   [31:0] v47_fu_983_p9;
wire   [13:0] grp_fu_1236_p3;
wire   [13:0] grp_fu_1244_p3;
wire   [31:0] v49_fu_1036_p2;
wire   [31:0] v49_fu_1036_p4;
wire   [31:0] v49_fu_1036_p6;
wire   [31:0] v49_fu_1036_p8;
wire   [31:0] v49_fu_1036_p9;
wire   [31:0] v51_fu_1075_p2;
wire   [31:0] v51_fu_1075_p4;
wire   [31:0] v51_fu_1075_p6;
wire   [31:0] v51_fu_1075_p8;
wire   [31:0] v51_fu_1075_p9;
wire   [7:0] mul_ln171_fu_1102_p0;
wire   [8:0] mul_ln171_fu_1102_p1;
wire   [7:0] mul_ln186_fu_1111_p0;
wire   [8:0] mul_ln186_fu_1111_p1;
wire   [7:0] mul_ln199_fu_1120_p0;
wire   [8:0] mul_ln199_fu_1120_p1;
wire   [7:0] mul_ln212_fu_1129_p0;
wire   [8:0] mul_ln212_fu_1129_p1;
wire   [7:0] mul_ln225_fu_1138_p0;
wire   [8:0] mul_ln225_fu_1138_p1;
wire   [7:0] mul_ln238_fu_1147_p0;
wire   [8:0] mul_ln238_fu_1147_p1;
wire   [7:0] mul_ln251_fu_1156_p0;
wire   [8:0] mul_ln251_fu_1156_p1;
wire   [7:0] mul_ln264_fu_1165_p0;
wire   [8:0] mul_ln264_fu_1165_p1;
wire   [7:0] mul_ln277_fu_1174_p0;
wire   [8:0] mul_ln277_fu_1174_p1;
wire   [7:0] grp_fu_1180_p0;
wire   [5:0] grp_fu_1180_p1;
wire   [5:0] grp_fu_1180_p2;
wire   [7:0] grp_fu_1188_p0;
wire   [5:0] grp_fu_1188_p1;
wire   [5:0] grp_fu_1188_p2;
wire   [7:0] grp_fu_1196_p0;
wire   [5:0] grp_fu_1196_p1;
wire   [5:0] grp_fu_1196_p2;
wire   [7:0] grp_fu_1204_p0;
wire   [5:0] grp_fu_1204_p1;
wire   [5:0] grp_fu_1204_p2;
wire   [7:0] grp_fu_1212_p0;
wire   [5:0] grp_fu_1212_p1;
wire   [5:0] grp_fu_1212_p2;
wire   [7:0] grp_fu_1220_p0;
wire   [5:0] grp_fu_1220_p1;
wire   [5:0] grp_fu_1220_p2;
wire   [7:0] grp_fu_1228_p0;
wire   [5:0] grp_fu_1228_p1;
wire   [5:0] grp_fu_1228_p2;
wire   [7:0] grp_fu_1236_p0;
wire   [5:0] grp_fu_1236_p1;
wire   [5:0] grp_fu_1236_p2;
wire   [7:0] grp_fu_1244_p0;
wire   [5:0] grp_fu_1244_p1;
wire   [5:0] grp_fu_1244_p2;
reg    grp_fu_486_ce;
reg    grp_fu_1736_ce;
reg   [16:0] ap_NS_fsm;
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
wire   [13:0] grp_fu_1180_p00;
wire   [13:0] grp_fu_1188_p00;
wire   [13:0] grp_fu_1196_p00;
wire   [13:0] grp_fu_1204_p00;
wire   [13:0] grp_fu_1212_p00;
wire   [13:0] grp_fu_1220_p00;
wire   [13:0] grp_fu_1228_p00;
wire   [13:0] grp_fu_1236_p00;
wire   [13:0] grp_fu_1244_p00;
wire   [15:0] mul_ln171_fu_1102_p00;
wire   [15:0] mul_ln186_fu_1111_p00;
wire   [15:0] mul_ln199_fu_1120_p00;
wire   [15:0] mul_ln212_fu_1129_p00;
wire   [15:0] mul_ln225_fu_1138_p00;
wire   [15:0] mul_ln238_fu_1147_p00;
wire   [15:0] mul_ln251_fu_1156_p00;
wire   [15:0] mul_ln264_fu_1165_p00;
wire   [15:0] mul_ln277_fu_1174_p00;
wire   [1:0] v_fu_687_p1;
wire   [1:0] v_fu_687_p3;
wire  signed [1:0] v_fu_687_p5;
wire  signed [1:0] v_fu_687_p7;
wire   [1:0] v37_fu_760_p1;
wire   [1:0] v37_fu_760_p3;
wire  signed [1:0] v37_fu_760_p5;
wire  signed [1:0] v37_fu_760_p7;
wire   [1:0] v39_fu_799_p1;
wire   [1:0] v39_fu_799_p3;
wire  signed [1:0] v39_fu_799_p5;
wire  signed [1:0] v39_fu_799_p7;
wire   [1:0] v41_fu_852_p1;
wire   [1:0] v41_fu_852_p3;
wire  signed [1:0] v41_fu_852_p5;
wire  signed [1:0] v41_fu_852_p7;
wire   [1:0] v43_fu_891_p1;
wire   [1:0] v43_fu_891_p3;
wire  signed [1:0] v43_fu_891_p5;
wire  signed [1:0] v43_fu_891_p7;
wire   [1:0] v45_fu_944_p1;
wire   [1:0] v45_fu_944_p3;
wire  signed [1:0] v45_fu_944_p5;
wire  signed [1:0] v45_fu_944_p7;
wire   [1:0] v47_fu_983_p1;
wire   [1:0] v47_fu_983_p3;
wire  signed [1:0] v47_fu_983_p5;
wire  signed [1:0] v47_fu_983_p7;
wire   [1:0] v49_fu_1036_p1;
wire   [1:0] v49_fu_1036_p3;
wire  signed [1:0] v49_fu_1036_p5;
wire  signed [1:0] v49_fu_1036_p7;
wire   [1:0] v51_fu_1075_p1;
wire   [1:0] v51_fu_1075_p3;
wire  signed [1:0] v51_fu_1075_p5;
wire  signed [1:0] v51_fu_1075_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_start_reg = 1'b0;
#0 phi_mul_fu_100 = 16'd0;
#0 v114_fu_104 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_458(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_d1),.v225_q1(v225_q1),.phi_mul(phi_mul_load_reg_1279),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1646),.mul_ln186(mul_ln186_reg_1656),.mul_ln199(mul_ln199_reg_1666),.mul_ln212(mul_ln212_reg_1676),.mul_ln225(mul_ln225_reg_1686),.mul_ln238(mul_ln238_reg_1696),.mul_ln251(mul_ln251_reg_1706),.mul_ln264(mul_ln264_reg_1716),.mul_ln277(mul_ln277_reg_1726),.cmp11(cmp11_reg_1323),.v120(v36_reg_1651),.v133(v38_reg_1661),.v144(v40_reg_1671),.v155(v42_reg_1681),.v166(v44_reg_1691),.v177(v46_reg_1701),.v188(v48_reg_1711),.v199(v50_reg_1721),.v210(v52_reg_1731),.grp_fu_1736_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_1736_p_din0),.grp_fu_1736_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_1736_p_din1),.grp_fu_1736_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_1736_p_opcode),.grp_fu_1736_p_dout0(grp_fu_148_p_dout0),.grp_fu_1736_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_1736_p_ce),.grp_fu_486_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_486_p_din0),.grp_fu_486_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_486_p_din1),.grp_fu_486_p_dout0(grp_fu_152_p_dout0),.grp_fu_486_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_486_p_ce));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U34(.din0(v_fu_687_p2),.din1(v_fu_687_p4),.din2(v_fu_687_p6),.din3(v_fu_687_p8),.def(v_fu_687_p9),.sel(trunc_ln168_reg_1297),.dout(v_fu_687_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U35(.din0(v37_fu_760_p2),.din1(v37_fu_760_p4),.din2(v37_fu_760_p6),.din3(v37_fu_760_p8),.def(v37_fu_760_p9),.sel(trunc_ln168_reg_1297),.dout(v37_fu_760_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U36(.din0(v39_fu_799_p2),.din1(v39_fu_799_p4),.din2(v39_fu_799_p6),.din3(v39_fu_799_p8),.def(v39_fu_799_p9),.sel(trunc_ln168_reg_1297),.dout(v39_fu_799_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U37(.din0(v41_fu_852_p2),.din1(v41_fu_852_p4),.din2(v41_fu_852_p6),.din3(v41_fu_852_p8),.def(v41_fu_852_p9),.sel(trunc_ln168_reg_1297),.dout(v41_fu_852_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U38(.din0(v43_fu_891_p2),.din1(v43_fu_891_p4),.din2(v43_fu_891_p6),.din3(v43_fu_891_p8),.def(v43_fu_891_p9),.sel(trunc_ln168_reg_1297),.dout(v43_fu_891_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U39(.din0(v45_fu_944_p2),.din1(v45_fu_944_p4),.din2(v45_fu_944_p6),.din3(v45_fu_944_p8),.def(v45_fu_944_p9),.sel(trunc_ln168_reg_1297),.dout(v45_fu_944_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U40(.din0(v47_fu_983_p2),.din1(v47_fu_983_p4),.din2(v47_fu_983_p6),.din3(v47_fu_983_p8),.def(v47_fu_983_p9),.sel(trunc_ln168_reg_1297),.dout(v47_fu_983_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U41(.din0(v49_fu_1036_p2),.din1(v49_fu_1036_p4),.din2(v49_fu_1036_p6),.din3(v49_fu_1036_p8),.def(v49_fu_1036_p9),.sel(trunc_ln168_reg_1297),.dout(v49_fu_1036_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U42(.din0(v51_fu_1075_p2),.din1(v51_fu_1075_p4),.din2(v51_fu_1075_p6),.din3(v51_fu_1075_p8),.def(v51_fu_1075_p9),.sel(trunc_ln168_reg_1297),.dout(v51_fu_1075_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U43(.din0(mul_ln171_fu_1102_p0),.din1(mul_ln171_fu_1102_p1),.dout(mul_ln171_fu_1102_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U44(.din0(mul_ln186_fu_1111_p0),.din1(mul_ln186_fu_1111_p1),.dout(mul_ln186_fu_1111_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U45(.din0(mul_ln199_fu_1120_p0),.din1(mul_ln199_fu_1120_p1),.dout(mul_ln199_fu_1120_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U46(.din0(mul_ln212_fu_1129_p0),.din1(mul_ln212_fu_1129_p1),.dout(mul_ln212_fu_1129_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U47(.din0(mul_ln225_fu_1138_p0),.din1(mul_ln225_fu_1138_p1),.dout(mul_ln225_fu_1138_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U48(.din0(mul_ln238_fu_1147_p0),.din1(mul_ln238_fu_1147_p1),.dout(mul_ln238_fu_1147_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U49(.din0(mul_ln251_fu_1156_p0),.din1(mul_ln251_fu_1156_p1),.dout(mul_ln251_fu_1156_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U50(.din0(mul_ln264_fu_1165_p0),.din1(mul_ln264_fu_1165_p1),.dout(mul_ln264_fu_1165_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U51(.din0(mul_ln277_fu_1174_p0),.din1(mul_ln277_fu_1174_p1),.dout(mul_ln277_fu_1174_p2));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1180_p0),.din1(grp_fu_1180_p1),.din2(grp_fu_1180_p2),.ce(1'b1),.dout(grp_fu_1180_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1188_p0),.din1(grp_fu_1188_p1),.din2(grp_fu_1188_p2),.ce(1'b1),.dout(grp_fu_1188_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1196_p0),.din1(grp_fu_1196_p1),.din2(grp_fu_1196_p2),.ce(1'b1),.dout(grp_fu_1196_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1204_p0),.din1(grp_fu_1204_p1),.din2(grp_fu_1204_p2),.ce(1'b1),.dout(grp_fu_1204_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1212_p0),.din1(grp_fu_1212_p1),.din2(grp_fu_1212_p2),.ce(1'b1),.dout(grp_fu_1212_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U57(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1220_p0),.din1(grp_fu_1220_p1),.din2(grp_fu_1220_p2),.ce(1'b1),.dout(grp_fu_1220_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U58(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1228_p0),.din1(grp_fu_1228_p1),.din2(grp_fu_1228_p2),.ce(1'b1),.dout(grp_fu_1228_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U59(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1236_p0),.din1(grp_fu_1236_p1),.din2(grp_fu_1236_p2),.ce(1'b1),.dout(grp_fu_1236_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U60(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1244_p0),.din1(grp_fu_1244_p1),.din2(grp_fu_1244_p2),.ce(1'b1),.dout(grp_fu_1244_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_100 <= 16'd0;
    end else if (((icmp_ln169_fu_580_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_100 <= add_ln168_1_reg_1284;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_104 <= 8'd0;
    end else if (((icmp_ln169_fu_580_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_104 <= add_ln168_reg_1292;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_446 <= add_ln169_reg_1336;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_544_p2 == 1'd0))) begin
        v115_reg_446 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_1284 <= add_ln168_1_fu_538_p2;
        add_ln168_reg_1292 <= add_ln168_fu_550_p2;
        cmp11_reg_1323 <= cmp11_fu_574_p2;
        phi_mul_load_reg_1279 <= phi_mul_fu_100;
        trunc_ln168_reg_1297 <= trunc_ln168_fu_556_p1;
        zext_ln168_reg_1310[5 : 0] <= zext_ln168_fu_570_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_1336 <= add_ln169_fu_590_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_21_reg_1341 <= empty_21_fu_604_p2;
        empty_28_reg_1351 <= empty_28_fu_614_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_35_reg_1361 <= empty_35_fu_624_p2;
        empty_42_reg_1371 <= empty_42_fu_634_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_49_reg_1401 <= empty_49_fu_651_p2;
        empty_56_reg_1411 <= empty_56_fu_661_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_63_reg_1466 <= empty_63_fu_724_p2;
        empty_70_reg_1476 <= empty_70_fu_734_p2;
        v_reg_1421 <= v_fu_687_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1646 <= mul_ln171_fu_1102_p2;
        mul_ln186_reg_1656 <= mul_ln186_fu_1111_p2;
        mul_ln199_reg_1666 <= mul_ln199_fu_1120_p2;
        mul_ln212_reg_1676 <= mul_ln212_fu_1129_p2;
        mul_ln225_reg_1686 <= mul_ln225_fu_1138_p2;
        mul_ln238_reg_1696 <= mul_ln238_fu_1147_p2;
        mul_ln251_reg_1706 <= mul_ln251_fu_1156_p2;
        mul_ln264_reg_1716 <= mul_ln264_fu_1165_p2;
        mul_ln277_reg_1726 <= mul_ln277_fu_1174_p2;
        v36_reg_1651 <= grp_fu_152_p_dout0;
        v38_reg_1661 <= grp_fu_156_p_dout0;
        v40_reg_1671 <= grp_fu_160_p_dout0;
        v42_reg_1681 <= grp_fu_164_p_dout0;
        v44_reg_1691 <= grp_fu_168_p_dout0;
        v46_reg_1701 <= grp_fu_172_p_dout0;
        v48_reg_1711 <= grp_fu_176_p_dout0;
        v50_reg_1721 <= grp_fu_180_p_dout0;
        v52_reg_1731 <= grp_fu_184_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v37_reg_1486 <= v37_fu_760_p11;
        v39_reg_1491 <= v39_fu_799_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v41_reg_1536 <= v41_fu_852_p11;
        v43_reg_1541 <= v43_fu_891_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v45_reg_1586 <= v45_fu_944_p11;
        v47_reg_1591 <= v47_fu_983_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v49_reg_1636 <= v49_fu_1036_p11;
        v51_reg_1641 <= v51_fu_1075_p11;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_done == 1'b0)) begin
        ap_ST_fsm_state17_blk = 1'b1;
    end else begin
        ap_ST_fsm_state17_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_544_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_544_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1736_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_1736_p_ce;
    end else begin
        grp_fu_1736_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_486_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_486_p_ce;
    end else begin
        grp_fu_486_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_486_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_486_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_486_p0 = v_reg_1421;
    end else begin
        grp_fu_486_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_486_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_486_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_486_p1 = v113;
    end else begin
        grp_fu_486_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast1202_fu_1006_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast1200_fu_914_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast1198_fu_822_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast1197_fu_717_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast1196_fu_644_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast1203_fu_1013_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast1201_fu_921_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast1199_fu_829_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_710_p1;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address0_local = p_cast1202_fu_1006_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast1200_fu_914_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast1198_fu_822_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast1197_fu_717_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast1196_fu_644_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast1203_fu_1013_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast1201_fu_921_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast1199_fu_829_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_710_p1;
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address0_local = p_cast1202_fu_1006_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast1200_fu_914_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast1198_fu_822_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast1197_fu_717_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast1196_fu_644_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast1203_fu_1013_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast1201_fu_921_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast1199_fu_829_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast_fu_710_p1;
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
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address0_local = p_cast1202_fu_1006_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast1200_fu_914_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast1198_fu_822_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast1197_fu_717_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast1196_fu_644_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast1203_fu_1013_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast1201_fu_921_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast1199_fu_829_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast_fu_710_p1;
    end else begin
        v226_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_3_ce0_local = 1'b1;
    end else begin
        v226_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_3_ce1_local = 1'b1;
    end else begin
        v226_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_544_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_544_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_544_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_544_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_580_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_1_fu_538_p2 = (phi_mul_fu_100 + 16'd190);
assign add_ln168_fu_550_p2 = (v114_fu_104 + 8'd1);
assign add_ln169_fu_590_p2 = (v115_reg_446 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_544_p2 == 1'd1));
end
assign cmp11_fu_574_p2 = ((v114_fu_104 == 8'd0) ? 1'b1 : 1'b0);
assign empty_21_fu_604_p2 = (v115_reg_446 + 8'd1);
assign empty_28_fu_614_p2 = (v115_reg_446 + 8'd2);
assign empty_35_fu_624_p2 = (v115_reg_446 + 8'd3);
assign empty_42_fu_634_p2 = (v115_reg_446 + 8'd4);
assign empty_49_fu_651_p2 = (v115_reg_446 + 8'd5);
assign empty_56_fu_661_p2 = (v115_reg_446 + 8'd6);
assign empty_63_fu_724_p2 = (v115_reg_446 + 8'd7);
assign empty_70_fu_734_p2 = (v115_reg_446 + 8'd8);
assign grp_fu_1180_p0 = grp_fu_1180_p00;
assign grp_fu_1180_p00 = v115_reg_446;
assign grp_fu_1180_p1 = 14'd53;
assign grp_fu_1180_p2 = zext_ln168_reg_1310;
assign grp_fu_1188_p0 = grp_fu_1188_p00;
assign grp_fu_1188_p00 = empty_21_fu_604_p2;
assign grp_fu_1188_p1 = 14'd53;
assign grp_fu_1188_p2 = zext_ln168_reg_1310;
assign grp_fu_1196_p0 = grp_fu_1196_p00;
assign grp_fu_1196_p00 = empty_28_fu_614_p2;
assign grp_fu_1196_p1 = 14'd53;
assign grp_fu_1196_p2 = zext_ln168_reg_1310;
assign grp_fu_1204_p0 = grp_fu_1204_p00;
assign grp_fu_1204_p00 = empty_35_fu_624_p2;
assign grp_fu_1204_p1 = 14'd53;
assign grp_fu_1204_p2 = zext_ln168_reg_1310;
assign grp_fu_1212_p0 = grp_fu_1212_p00;
assign grp_fu_1212_p00 = empty_42_fu_634_p2;
assign grp_fu_1212_p1 = 14'd53;
assign grp_fu_1212_p2 = zext_ln168_reg_1310;
assign grp_fu_1220_p0 = grp_fu_1220_p00;
assign grp_fu_1220_p00 = empty_49_fu_651_p2;
assign grp_fu_1220_p1 = 14'd53;
assign grp_fu_1220_p2 = zext_ln168_reg_1310;
assign grp_fu_1228_p0 = grp_fu_1228_p00;
assign grp_fu_1228_p00 = empty_56_fu_661_p2;
assign grp_fu_1228_p1 = 14'd53;
assign grp_fu_1228_p2 = zext_ln168_reg_1310;
assign grp_fu_1236_p0 = grp_fu_1236_p00;
assign grp_fu_1236_p00 = empty_63_fu_724_p2;
assign grp_fu_1236_p1 = 14'd53;
assign grp_fu_1236_p2 = zext_ln168_reg_1310;
assign grp_fu_1244_p0 = grp_fu_1244_p00;
assign grp_fu_1244_p00 = empty_70_fu_734_p2;
assign grp_fu_1244_p1 = 14'd53;
assign grp_fu_1244_p2 = zext_ln168_reg_1310;
assign grp_fu_148_p_ce = grp_fu_1736_ce;
assign grp_fu_148_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_1736_p_din0;
assign grp_fu_148_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_grp_fu_1736_p_din1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_486_ce;
assign grp_fu_152_p_din0 = grp_fu_486_p0;
assign grp_fu_152_p_din1 = grp_fu_486_p1;
assign grp_fu_156_p_ce = 1'b1;
assign grp_fu_156_p_din0 = v37_reg_1486;
assign grp_fu_156_p_din1 = v113;
assign grp_fu_160_p_ce = 1'b1;
assign grp_fu_160_p_din0 = v39_reg_1491;
assign grp_fu_160_p_din1 = v113;
assign grp_fu_164_p_ce = 1'b1;
assign grp_fu_164_p_din0 = v41_reg_1536;
assign grp_fu_164_p_din1 = v113;
assign grp_fu_168_p_ce = 1'b1;
assign grp_fu_168_p_din0 = v43_reg_1541;
assign grp_fu_168_p_din1 = v113;
assign grp_fu_172_p_ce = 1'b1;
assign grp_fu_172_p_din0 = v45_reg_1586;
assign grp_fu_172_p_din1 = v113;
assign grp_fu_176_p_ce = 1'b1;
assign grp_fu_176_p_din0 = v47_reg_1591;
assign grp_fu_176_p_din1 = v113;
assign grp_fu_180_p_ce = 1'b1;
assign grp_fu_180_p_din0 = v49_reg_1636;
assign grp_fu_180_p_din1 = v113;
assign grp_fu_184_p_ce = 1'b1;
assign grp_fu_184_p_din0 = v51_reg_1641;
assign grp_fu_184_p_din1 = v113;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_ap_start_reg;
assign icmp_ln168_fu_544_p2 = ((v114_fu_104 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_580_p2 = ((v115_reg_446 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_560_p4 = {{v114_fu_104[7:2]}};
assign mul_ln171_fu_1102_p0 = mul_ln171_fu_1102_p00;
assign mul_ln171_fu_1102_p00 = v115_reg_446;
assign mul_ln171_fu_1102_p1 = 16'd190;
assign mul_ln186_fu_1111_p0 = mul_ln186_fu_1111_p00;
assign mul_ln186_fu_1111_p00 = empty_21_reg_1341;
assign mul_ln186_fu_1111_p1 = 16'd190;
assign mul_ln199_fu_1120_p0 = mul_ln199_fu_1120_p00;
assign mul_ln199_fu_1120_p00 = empty_28_reg_1351;
assign mul_ln199_fu_1120_p1 = 16'd190;
assign mul_ln212_fu_1129_p0 = mul_ln212_fu_1129_p00;
assign mul_ln212_fu_1129_p00 = empty_35_reg_1361;
assign mul_ln212_fu_1129_p1 = 16'd190;
assign mul_ln225_fu_1138_p0 = mul_ln225_fu_1138_p00;
assign mul_ln225_fu_1138_p00 = empty_42_reg_1371;
assign mul_ln225_fu_1138_p1 = 16'd190;
assign mul_ln238_fu_1147_p0 = mul_ln238_fu_1147_p00;
assign mul_ln238_fu_1147_p00 = empty_49_reg_1401;
assign mul_ln238_fu_1147_p1 = 16'd190;
assign mul_ln251_fu_1156_p0 = mul_ln251_fu_1156_p00;
assign mul_ln251_fu_1156_p00 = empty_56_reg_1411;
assign mul_ln251_fu_1156_p1 = 16'd190;
assign mul_ln264_fu_1165_p0 = mul_ln264_fu_1165_p00;
assign mul_ln264_fu_1165_p00 = empty_63_reg_1466;
assign mul_ln264_fu_1165_p1 = 16'd190;
assign mul_ln277_fu_1174_p0 = mul_ln277_fu_1174_p00;
assign mul_ln277_fu_1174_p00 = empty_70_reg_1476;
assign mul_ln277_fu_1174_p1 = 16'd190;
assign p_cast1196_fu_644_p1 = grp_fu_1180_p3;
assign p_cast1197_fu_717_p1 = grp_fu_1196_p3;
assign p_cast1198_fu_822_p1 = grp_fu_1204_p3;
assign p_cast1199_fu_829_p1 = grp_fu_1212_p3;
assign p_cast1200_fu_914_p1 = grp_fu_1220_p3;
assign p_cast1201_fu_921_p1 = grp_fu_1228_p3;
assign p_cast1202_fu_1006_p1 = grp_fu_1236_p3;
assign p_cast1203_fu_1013_p1 = grp_fu_1244_p3;
assign p_cast_fu_710_p1 = grp_fu_1188_p3;
assign trunc_ln168_fu_556_p1 = v114_fu_104[1:0];
assign v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_address0;
assign v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_address1;
assign v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_ce0;
assign v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_ce1;
assign v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_d0;
assign v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_d1;
assign v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_we0;
assign v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v225_we1;
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
assign v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v227_address0;
assign v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v227_address1;
assign v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v227_ce0;
assign v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_458_v227_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v37_fu_760_p2 = v226_0_q1;
assign v37_fu_760_p4 = v226_1_q1;
assign v37_fu_760_p6 = v226_2_q1;
assign v37_fu_760_p8 = v226_3_q1;
assign v37_fu_760_p9 = 'bx;
assign v39_fu_799_p2 = v226_0_q0;
assign v39_fu_799_p4 = v226_1_q0;
assign v39_fu_799_p6 = v226_2_q0;
assign v39_fu_799_p8 = v226_3_q0;
assign v39_fu_799_p9 = 'bx;
assign v41_fu_852_p2 = v226_0_q0;
assign v41_fu_852_p4 = v226_1_q0;
assign v41_fu_852_p6 = v226_2_q0;
assign v41_fu_852_p8 = v226_3_q0;
assign v41_fu_852_p9 = 'bx;
assign v43_fu_891_p2 = v226_0_q1;
assign v43_fu_891_p4 = v226_1_q1;
assign v43_fu_891_p6 = v226_2_q1;
assign v43_fu_891_p8 = v226_3_q1;
assign v43_fu_891_p9 = 'bx;
assign v45_fu_944_p2 = v226_0_q0;
assign v45_fu_944_p4 = v226_1_q0;
assign v45_fu_944_p6 = v226_2_q0;
assign v45_fu_944_p8 = v226_3_q0;
assign v45_fu_944_p9 = 'bx;
assign v47_fu_983_p2 = v226_0_q1;
assign v47_fu_983_p4 = v226_1_q1;
assign v47_fu_983_p6 = v226_2_q1;
assign v47_fu_983_p8 = v226_3_q1;
assign v47_fu_983_p9 = 'bx;
assign v49_fu_1036_p2 = v226_0_q0;
assign v49_fu_1036_p4 = v226_1_q0;
assign v49_fu_1036_p6 = v226_2_q0;
assign v49_fu_1036_p8 = v226_3_q0;
assign v49_fu_1036_p9 = 'bx;
assign v51_fu_1075_p2 = v226_0_q1;
assign v51_fu_1075_p4 = v226_1_q1;
assign v51_fu_1075_p6 = v226_2_q1;
assign v51_fu_1075_p8 = v226_3_q1;
assign v51_fu_1075_p9 = 'bx;
assign v_fu_687_p2 = v226_0_q0;
assign v_fu_687_p4 = v226_1_q0;
assign v_fu_687_p6 = v226_2_q0;
assign v_fu_687_p8 = v226_3_q0;
assign v_fu_687_p9 = 'bx;
assign zext_ln168_fu_570_p1 = lshr_ln_fu_560_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1310[13:6] <= 8'b00000000;
end
endmodule 