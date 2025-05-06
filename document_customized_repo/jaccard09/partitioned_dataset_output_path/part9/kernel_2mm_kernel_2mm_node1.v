
module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce);  
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
output  [13:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [13:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [13:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [13:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [13:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [13:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [13:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [13:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_539_p2;
wire   [7:0] add_ln168_fu_545_p2;
reg   [7:0] add_ln168_reg_1272;
wire   [1:0] trunc_ln168_fu_551_p1;
reg   [1:0] trunc_ln168_reg_1277;
wire   [13:0] zext_ln175_fu_565_p1;
reg   [13:0] zext_ln175_reg_1291;
wire   [13:0] mul_ln175_fu_569_p2;
reg   [13:0] mul_ln175_reg_1304;
wire   [0:0] cmp11_fu_575_p2;
reg   [0:0] cmp11_reg_1309;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_591_p2;
reg   [7:0] add_ln169_reg_1322;
wire   [7:0] empty_19_fu_601_p2;
reg   [7:0] empty_19_reg_1327;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_26_fu_611_p2;
reg   [7:0] empty_26_reg_1337;
wire   [7:0] empty_33_fu_621_p2;
reg   [7:0] empty_33_reg_1347;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_40_fu_631_p2;
reg   [7:0] empty_40_reg_1357;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_47_fu_648_p2;
reg   [7:0] empty_47_reg_1387;
wire   [7:0] empty_54_fu_658_p2;
reg   [7:0] empty_54_reg_1397;
wire   [31:0] v_fu_684_p11;
reg   [31:0] v_reg_1407;
wire    ap_CS_fsm_state7;
wire   [7:0] empty_61_fu_721_p2;
reg   [7:0] empty_61_reg_1452;
wire   [7:0] empty_68_fu_731_p2;
reg   [7:0] empty_68_reg_1462;
wire   [31:0] v39_fu_757_p11;
reg   [31:0] v39_reg_1472;
wire    ap_CS_fsm_state8;
wire   [31:0] v41_fu_796_p11;
reg   [31:0] v41_reg_1477;
wire   [31:0] v43_fu_849_p11;
reg   [31:0] v43_reg_1522;
wire    ap_CS_fsm_state9;
wire   [31:0] v45_fu_888_p11;
reg   [31:0] v45_reg_1527;
wire   [31:0] v47_fu_941_p11;
reg   [31:0] v47_reg_1572;
wire    ap_CS_fsm_state10;
wire   [31:0] v49_fu_980_p11;
reg   [31:0] v49_reg_1577;
wire   [31:0] v51_fu_1033_p11;
reg   [31:0] v51_reg_1622;
wire    ap_CS_fsm_state11;
wire   [31:0] v53_fu_1072_p11;
reg   [31:0] v53_reg_1627;
wire   [15:0] mul_ln171_fu_1099_p2;
reg   [15:0] mul_ln171_reg_1632;
wire    ap_CS_fsm_state15;
reg   [31:0] v38_reg_1637;
wire   [15:0] mul_ln186_fu_1108_p2;
reg   [15:0] mul_ln186_reg_1642;
reg   [31:0] v40_reg_1647;
wire   [15:0] mul_ln199_fu_1117_p2;
reg   [15:0] mul_ln199_reg_1652;
reg   [31:0] v42_reg_1657;
wire   [15:0] mul_ln212_fu_1126_p2;
reg   [15:0] mul_ln212_reg_1662;
reg   [31:0] v44_reg_1667;
wire   [15:0] mul_ln225_fu_1135_p2;
reg   [15:0] mul_ln225_reg_1672;
reg   [31:0] v46_reg_1677;
wire   [15:0] mul_ln238_fu_1144_p2;
reg   [15:0] mul_ln238_reg_1682;
reg   [31:0] v48_reg_1687;
wire   [15:0] mul_ln251_fu_1153_p2;
reg   [15:0] mul_ln251_reg_1692;
wire   [31:0] grp_fu_519_p2;
reg   [31:0] v50_reg_1697;
wire   [15:0] mul_ln264_fu_1162_p2;
reg   [15:0] mul_ln264_reg_1702;
wire   [31:0] grp_fu_523_p2;
reg   [31:0] v52_reg_1707;
wire   [15:0] mul_ln277_fu_1171_p2;
reg   [15:0] mul_ln277_reg_1712;
wire   [31:0] grp_fu_527_p2;
reg   [31:0] v54_reg_1717;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_0_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_0_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_1_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_1_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_2_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_2_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_3_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_3_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_1722_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_1722_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_1722_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_1722_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_495_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_495_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_495_p_ce;
reg   [7:0] v115_reg_448;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [63:0] p_cast1478_fu_641_p1;
wire   [63:0] p_cast_fu_707_p1;
wire   [63:0] p_cast1479_fu_714_p1;
wire   [63:0] p_cast1480_fu_819_p1;
wire   [63:0] p_cast1481_fu_826_p1;
wire   [63:0] p_cast1482_fu_911_p1;
wire   [63:0] p_cast1483_fu_918_p1;
wire   [63:0] p_cast1484_fu_1003_p1;
wire   [63:0] p_cast1485_fu_1010_p1;
reg   [7:0] v114_fu_106;
wire   [0:0] icmp_ln169_fu_581_p2;
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
reg   [31:0] grp_fu_495_p0;
reg   [31:0] grp_fu_495_p1;
wire    ap_CS_fsm_state12;
wire   [5:0] lshr_ln_fu_555_p4;
wire   [5:0] mul_ln175_fu_569_p0;
wire   [8:0] mul_ln175_fu_569_p1;
wire   [13:0] grp_fu_1177_p3;
wire   [31:0] v_fu_684_p2;
wire   [31:0] v_fu_684_p4;
wire   [31:0] v_fu_684_p6;
wire   [31:0] v_fu_684_p8;
wire   [31:0] v_fu_684_p9;
wire   [13:0] grp_fu_1185_p3;
wire   [13:0] grp_fu_1193_p3;
wire   [31:0] v39_fu_757_p2;
wire   [31:0] v39_fu_757_p4;
wire   [31:0] v39_fu_757_p6;
wire   [31:0] v39_fu_757_p8;
wire   [31:0] v39_fu_757_p9;
wire   [31:0] v41_fu_796_p2;
wire   [31:0] v41_fu_796_p4;
wire   [31:0] v41_fu_796_p6;
wire   [31:0] v41_fu_796_p8;
wire   [31:0] v41_fu_796_p9;
wire   [13:0] grp_fu_1201_p3;
wire   [13:0] grp_fu_1209_p3;
wire   [31:0] v43_fu_849_p2;
wire   [31:0] v43_fu_849_p4;
wire   [31:0] v43_fu_849_p6;
wire   [31:0] v43_fu_849_p8;
wire   [31:0] v43_fu_849_p9;
wire   [31:0] v45_fu_888_p2;
wire   [31:0] v45_fu_888_p4;
wire   [31:0] v45_fu_888_p6;
wire   [31:0] v45_fu_888_p8;
wire   [31:0] v45_fu_888_p9;
wire   [13:0] grp_fu_1217_p3;
wire   [13:0] grp_fu_1225_p3;
wire   [31:0] v47_fu_941_p2;
wire   [31:0] v47_fu_941_p4;
wire   [31:0] v47_fu_941_p6;
wire   [31:0] v47_fu_941_p8;
wire   [31:0] v47_fu_941_p9;
wire   [31:0] v49_fu_980_p2;
wire   [31:0] v49_fu_980_p4;
wire   [31:0] v49_fu_980_p6;
wire   [31:0] v49_fu_980_p8;
wire   [31:0] v49_fu_980_p9;
wire   [13:0] grp_fu_1233_p3;
wire   [13:0] grp_fu_1241_p3;
wire   [31:0] v51_fu_1033_p2;
wire   [31:0] v51_fu_1033_p4;
wire   [31:0] v51_fu_1033_p6;
wire   [31:0] v51_fu_1033_p8;
wire   [31:0] v51_fu_1033_p9;
wire   [31:0] v53_fu_1072_p2;
wire   [31:0] v53_fu_1072_p4;
wire   [31:0] v53_fu_1072_p6;
wire   [31:0] v53_fu_1072_p8;
wire   [31:0] v53_fu_1072_p9;
wire   [7:0] mul_ln171_fu_1099_p0;
wire   [8:0] mul_ln171_fu_1099_p1;
wire   [7:0] mul_ln186_fu_1108_p0;
wire   [8:0] mul_ln186_fu_1108_p1;
wire   [7:0] mul_ln199_fu_1117_p0;
wire   [8:0] mul_ln199_fu_1117_p1;
wire   [7:0] mul_ln212_fu_1126_p0;
wire   [8:0] mul_ln212_fu_1126_p1;
wire   [7:0] mul_ln225_fu_1135_p0;
wire   [8:0] mul_ln225_fu_1135_p1;
wire   [7:0] mul_ln238_fu_1144_p0;
wire   [8:0] mul_ln238_fu_1144_p1;
wire   [7:0] mul_ln251_fu_1153_p0;
wire   [8:0] mul_ln251_fu_1153_p1;
wire   [7:0] mul_ln264_fu_1162_p0;
wire   [8:0] mul_ln264_fu_1162_p1;
wire   [7:0] mul_ln277_fu_1171_p0;
wire   [8:0] mul_ln277_fu_1171_p1;
wire   [7:0] grp_fu_1177_p0;
wire   [5:0] grp_fu_1177_p1;
wire   [5:0] grp_fu_1177_p2;
wire   [7:0] grp_fu_1185_p0;
wire   [5:0] grp_fu_1185_p1;
wire   [5:0] grp_fu_1185_p2;
wire   [7:0] grp_fu_1193_p0;
wire   [5:0] grp_fu_1193_p1;
wire   [5:0] grp_fu_1193_p2;
wire   [7:0] grp_fu_1201_p0;
wire   [5:0] grp_fu_1201_p1;
wire   [5:0] grp_fu_1201_p2;
wire   [7:0] grp_fu_1209_p0;
wire   [5:0] grp_fu_1209_p1;
wire   [5:0] grp_fu_1209_p2;
wire   [7:0] grp_fu_1217_p0;
wire   [5:0] grp_fu_1217_p1;
wire   [5:0] grp_fu_1217_p2;
wire   [7:0] grp_fu_1225_p0;
wire   [5:0] grp_fu_1225_p1;
wire   [5:0] grp_fu_1225_p2;
wire   [7:0] grp_fu_1233_p0;
wire   [5:0] grp_fu_1233_p1;
wire   [5:0] grp_fu_1233_p2;
wire   [7:0] grp_fu_1241_p0;
wire   [5:0] grp_fu_1241_p1;
wire   [5:0] grp_fu_1241_p2;
reg    grp_fu_495_ce;
reg    grp_fu_1722_ce;
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
wire   [13:0] grp_fu_1177_p00;
wire   [13:0] grp_fu_1185_p00;
wire   [13:0] grp_fu_1193_p00;
wire   [13:0] grp_fu_1201_p00;
wire   [13:0] grp_fu_1209_p00;
wire   [13:0] grp_fu_1217_p00;
wire   [13:0] grp_fu_1225_p00;
wire   [13:0] grp_fu_1233_p00;
wire   [13:0] grp_fu_1241_p00;
wire   [15:0] mul_ln171_fu_1099_p00;
wire   [13:0] mul_ln175_fu_569_p00;
wire   [15:0] mul_ln186_fu_1108_p00;
wire   [15:0] mul_ln199_fu_1117_p00;
wire   [15:0] mul_ln212_fu_1126_p00;
wire   [15:0] mul_ln225_fu_1135_p00;
wire   [15:0] mul_ln238_fu_1144_p00;
wire   [15:0] mul_ln251_fu_1153_p00;
wire   [15:0] mul_ln264_fu_1162_p00;
wire   [15:0] mul_ln277_fu_1171_p00;
wire   [1:0] v_fu_684_p1;
wire   [1:0] v_fu_684_p3;
wire  signed [1:0] v_fu_684_p5;
wire  signed [1:0] v_fu_684_p7;
wire   [1:0] v39_fu_757_p1;
wire   [1:0] v39_fu_757_p3;
wire  signed [1:0] v39_fu_757_p5;
wire  signed [1:0] v39_fu_757_p7;
wire   [1:0] v41_fu_796_p1;
wire   [1:0] v41_fu_796_p3;
wire  signed [1:0] v41_fu_796_p5;
wire  signed [1:0] v41_fu_796_p7;
wire   [1:0] v43_fu_849_p1;
wire   [1:0] v43_fu_849_p3;
wire  signed [1:0] v43_fu_849_p5;
wire  signed [1:0] v43_fu_849_p7;
wire   [1:0] v45_fu_888_p1;
wire   [1:0] v45_fu_888_p3;
wire  signed [1:0] v45_fu_888_p5;
wire  signed [1:0] v45_fu_888_p7;
wire   [1:0] v47_fu_941_p1;
wire   [1:0] v47_fu_941_p3;
wire  signed [1:0] v47_fu_941_p5;
wire  signed [1:0] v47_fu_941_p7;
wire   [1:0] v49_fu_980_p1;
wire   [1:0] v49_fu_980_p3;
wire  signed [1:0] v49_fu_980_p5;
wire  signed [1:0] v49_fu_980_p7;
wire   [1:0] v51_fu_1033_p1;
wire   [1:0] v51_fu_1033_p3;
wire  signed [1:0] v51_fu_1033_p5;
wire  signed [1:0] v51_fu_1033_p7;
wire   [1:0] v53_fu_1072_p1;
wire   [1:0] v53_fu_1072_p3;
wire  signed [1:0] v53_fu_1072_p5;
wire  signed [1:0] v53_fu_1072_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_start_reg = 1'b0;
#0 v114_fu_106 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_460(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_ready),.mul_ln175(mul_ln175_reg_1304),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_3_ce1),.v227_3_q1(v227_3_q1),.mul_ln171(mul_ln171_reg_1632),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_d1),.v225_q1(v225_q1),.mul_ln186(mul_ln186_reg_1642),.mul_ln199(mul_ln199_reg_1652),.mul_ln212(mul_ln212_reg_1662),.mul_ln225(mul_ln225_reg_1672),.mul_ln238(mul_ln238_reg_1682),.mul_ln251(mul_ln251_reg_1692),.mul_ln264(mul_ln264_reg_1702),.mul_ln277(mul_ln277_reg_1712),.cmp11(cmp11_reg_1309),.empty(trunc_ln168_reg_1277),.v120(v38_reg_1637),.v133(v40_reg_1647),.v144(v42_reg_1657),.v155(v44_reg_1667),.v166(v46_reg_1677),.v177(v48_reg_1687),.v188(v50_reg_1697),.v199(v52_reg_1707),.v210(v54_reg_1717),.grp_fu_1722_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_1722_p_din0),.grp_fu_1722_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_1722_p_din1),.grp_fu_1722_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_1722_p_opcode),.grp_fu_1722_p_dout0(grp_fu_148_p_dout0),.grp_fu_1722_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_1722_p_ce),.grp_fu_495_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_495_p_din0),.grp_fu_495_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_495_p_din1),.grp_fu_495_p_dout0(grp_fu_152_p_dout0),.grp_fu_495_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_495_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(v49_reg_1577),.din1(v113),.ce(1'b1),.dout(grp_fu_519_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(v51_reg_1622),.din1(v113),.ce(1'b1),.dout(grp_fu_523_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(v53_reg_1627),.din1(v113),.ce(1'b1),.dout(grp_fu_527_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U55(.din0(mul_ln175_fu_569_p0),.din1(mul_ln175_fu_569_p1),.dout(mul_ln175_fu_569_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U56(.din0(v_fu_684_p2),.din1(v_fu_684_p4),.din2(v_fu_684_p6),.din3(v_fu_684_p8),.def(v_fu_684_p9),.sel(trunc_ln168_reg_1277),.dout(v_fu_684_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U57(.din0(v39_fu_757_p2),.din1(v39_fu_757_p4),.din2(v39_fu_757_p6),.din3(v39_fu_757_p8),.def(v39_fu_757_p9),.sel(trunc_ln168_reg_1277),.dout(v39_fu_757_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U58(.din0(v41_fu_796_p2),.din1(v41_fu_796_p4),.din2(v41_fu_796_p6),.din3(v41_fu_796_p8),.def(v41_fu_796_p9),.sel(trunc_ln168_reg_1277),.dout(v41_fu_796_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U59(.din0(v43_fu_849_p2),.din1(v43_fu_849_p4),.din2(v43_fu_849_p6),.din3(v43_fu_849_p8),.def(v43_fu_849_p9),.sel(trunc_ln168_reg_1277),.dout(v43_fu_849_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U60(.din0(v45_fu_888_p2),.din1(v45_fu_888_p4),.din2(v45_fu_888_p6),.din3(v45_fu_888_p8),.def(v45_fu_888_p9),.sel(trunc_ln168_reg_1277),.dout(v45_fu_888_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U61(.din0(v47_fu_941_p2),.din1(v47_fu_941_p4),.din2(v47_fu_941_p6),.din3(v47_fu_941_p8),.def(v47_fu_941_p9),.sel(trunc_ln168_reg_1277),.dout(v47_fu_941_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U62(.din0(v49_fu_980_p2),.din1(v49_fu_980_p4),.din2(v49_fu_980_p6),.din3(v49_fu_980_p8),.def(v49_fu_980_p9),.sel(trunc_ln168_reg_1277),.dout(v49_fu_980_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U63(.din0(v51_fu_1033_p2),.din1(v51_fu_1033_p4),.din2(v51_fu_1033_p6),.din3(v51_fu_1033_p8),.def(v51_fu_1033_p9),.sel(trunc_ln168_reg_1277),.dout(v51_fu_1033_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U64(.din0(v53_fu_1072_p2),.din1(v53_fu_1072_p4),.din2(v53_fu_1072_p6),.din3(v53_fu_1072_p8),.def(v53_fu_1072_p9),.sel(trunc_ln168_reg_1277),.dout(v53_fu_1072_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U65(.din0(mul_ln171_fu_1099_p0),.din1(mul_ln171_fu_1099_p1),.dout(mul_ln171_fu_1099_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U66(.din0(mul_ln186_fu_1108_p0),.din1(mul_ln186_fu_1108_p1),.dout(mul_ln186_fu_1108_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U67(.din0(mul_ln199_fu_1117_p0),.din1(mul_ln199_fu_1117_p1),.dout(mul_ln199_fu_1117_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U68(.din0(mul_ln212_fu_1126_p0),.din1(mul_ln212_fu_1126_p1),.dout(mul_ln212_fu_1126_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U69(.din0(mul_ln225_fu_1135_p0),.din1(mul_ln225_fu_1135_p1),.dout(mul_ln225_fu_1135_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U70(.din0(mul_ln238_fu_1144_p0),.din1(mul_ln238_fu_1144_p1),.dout(mul_ln238_fu_1144_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U71(.din0(mul_ln251_fu_1153_p0),.din1(mul_ln251_fu_1153_p1),.dout(mul_ln251_fu_1153_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U72(.din0(mul_ln264_fu_1162_p0),.din1(mul_ln264_fu_1162_p1),.dout(mul_ln264_fu_1162_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U73(.din0(mul_ln277_fu_1171_p0),.din1(mul_ln277_fu_1171_p1),.dout(mul_ln277_fu_1171_p2));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U74(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1177_p0),.din1(grp_fu_1177_p1),.din2(grp_fu_1177_p2),.ce(1'b1),.dout(grp_fu_1177_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U75(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1185_p0),.din1(grp_fu_1185_p1),.din2(grp_fu_1185_p2),.ce(1'b1),.dout(grp_fu_1185_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1193_p0),.din1(grp_fu_1193_p1),.din2(grp_fu_1193_p2),.ce(1'b1),.dout(grp_fu_1193_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1201_p0),.din1(grp_fu_1201_p1),.din2(grp_fu_1201_p2),.ce(1'b1),.dout(grp_fu_1201_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1209_p0),.din1(grp_fu_1209_p1),.din2(grp_fu_1209_p2),.ce(1'b1),.dout(grp_fu_1209_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1217_p0),.din1(grp_fu_1217_p1),.din2(grp_fu_1217_p2),.ce(1'b1),.dout(grp_fu_1217_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1225_p0),.din1(grp_fu_1225_p1),.din2(grp_fu_1225_p2),.ce(1'b1),.dout(grp_fu_1225_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1233_p0),.din1(grp_fu_1233_p1),.din2(grp_fu_1233_p2),.ce(1'b1),.dout(grp_fu_1233_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1241_p0),.din1(grp_fu_1241_p1),.din2(grp_fu_1241_p2),.ce(1'b1),.dout(grp_fu_1241_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_106 <= 8'd0;
    end else if (((icmp_ln169_fu_581_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_106 <= add_ln168_reg_1272;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_448 <= add_ln169_reg_1322;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_539_p2 == 1'd0))) begin
        v115_reg_448 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_1272 <= add_ln168_fu_545_p2;
        cmp11_reg_1309 <= cmp11_fu_575_p2;
        mul_ln175_reg_1304 <= mul_ln175_fu_569_p2;
        trunc_ln168_reg_1277 <= trunc_ln168_fu_551_p1;
        zext_ln175_reg_1291[5 : 0] <= zext_ln175_fu_565_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_1322 <= add_ln169_fu_591_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_19_reg_1327 <= empty_19_fu_601_p2;
        empty_26_reg_1337 <= empty_26_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_33_reg_1347 <= empty_33_fu_621_p2;
        empty_40_reg_1357 <= empty_40_fu_631_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_47_reg_1387 <= empty_47_fu_648_p2;
        empty_54_reg_1397 <= empty_54_fu_658_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_61_reg_1452 <= empty_61_fu_721_p2;
        empty_68_reg_1462 <= empty_68_fu_731_p2;
        v_reg_1407 <= v_fu_684_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1632 <= mul_ln171_fu_1099_p2;
        mul_ln186_reg_1642 <= mul_ln186_fu_1108_p2;
        mul_ln199_reg_1652 <= mul_ln199_fu_1117_p2;
        mul_ln212_reg_1662 <= mul_ln212_fu_1126_p2;
        mul_ln225_reg_1672 <= mul_ln225_fu_1135_p2;
        mul_ln238_reg_1682 <= mul_ln238_fu_1144_p2;
        mul_ln251_reg_1692 <= mul_ln251_fu_1153_p2;
        mul_ln264_reg_1702 <= mul_ln264_fu_1162_p2;
        mul_ln277_reg_1712 <= mul_ln277_fu_1171_p2;
        v38_reg_1637 <= grp_fu_152_p_dout0;
        v40_reg_1647 <= grp_fu_156_p_dout0;
        v42_reg_1657 <= grp_fu_160_p_dout0;
        v44_reg_1667 <= grp_fu_164_p_dout0;
        v46_reg_1677 <= grp_fu_168_p_dout0;
        v48_reg_1687 <= grp_fu_172_p_dout0;
        v50_reg_1697 <= grp_fu_519_p2;
        v52_reg_1707 <= grp_fu_523_p2;
        v54_reg_1717 <= grp_fu_527_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v39_reg_1472 <= v39_fu_757_p11;
        v41_reg_1477 <= v41_fu_796_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v43_reg_1522 <= v43_fu_849_p11;
        v45_reg_1527 <= v45_fu_888_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v47_reg_1572 <= v47_fu_941_p11;
        v49_reg_1577 <= v49_fu_980_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v51_reg_1622 <= v51_fu_1033_p11;
        v53_reg_1627 <= v53_fu_1072_p11;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_539_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_539_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1722_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_1722_p_ce;
    end else begin
        grp_fu_1722_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_495_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_495_p_ce;
    end else begin
        grp_fu_495_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_495_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_495_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_495_p0 = v_reg_1407;
    end else begin
        grp_fu_495_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_495_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_495_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_495_p1 = v113;
    end else begin
        grp_fu_495_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast1484_fu_1003_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast1482_fu_911_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast1480_fu_819_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast1479_fu_714_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast1478_fu_641_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast1485_fu_1010_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast1483_fu_918_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast1481_fu_826_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_707_p1;
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
        v226_1_address0_local = p_cast1484_fu_1003_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast1482_fu_911_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast1480_fu_819_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast1479_fu_714_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast1478_fu_641_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast1485_fu_1010_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast1483_fu_918_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast1481_fu_826_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_707_p1;
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
        v226_2_address0_local = p_cast1484_fu_1003_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast1482_fu_911_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast1480_fu_819_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast1479_fu_714_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast1478_fu_641_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast1485_fu_1010_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast1483_fu_918_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast1481_fu_826_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast_fu_707_p1;
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
        v226_3_address0_local = p_cast1484_fu_1003_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast1482_fu_911_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast1480_fu_819_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast1479_fu_714_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast1478_fu_641_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast1485_fu_1010_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast1483_fu_918_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast1481_fu_826_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast_fu_707_p1;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_539_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_539_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_539_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_539_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_581_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_fu_545_p2 = (v114_fu_106 + 8'd1);
assign add_ln169_fu_591_p2 = (v115_reg_448 + 8'd9);
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
    ap_block_state2 = ((icmp_ln168_fu_539_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_575_p2 = ((v114_fu_106 == 8'd0) ? 1'b1 : 1'b0);
assign empty_19_fu_601_p2 = (v115_reg_448 + 8'd1);
assign empty_26_fu_611_p2 = (v115_reg_448 + 8'd2);
assign empty_33_fu_621_p2 = (v115_reg_448 + 8'd3);
assign empty_40_fu_631_p2 = (v115_reg_448 + 8'd4);
assign empty_47_fu_648_p2 = (v115_reg_448 + 8'd5);
assign empty_54_fu_658_p2 = (v115_reg_448 + 8'd6);
assign empty_61_fu_721_p2 = (v115_reg_448 + 8'd7);
assign empty_68_fu_731_p2 = (v115_reg_448 + 8'd8);
assign grp_fu_1177_p0 = grp_fu_1177_p00;
assign grp_fu_1177_p00 = v115_reg_448;
assign grp_fu_1177_p1 = 14'd53;
assign grp_fu_1177_p2 = zext_ln175_reg_1291;
assign grp_fu_1185_p0 = grp_fu_1185_p00;
assign grp_fu_1185_p00 = empty_19_fu_601_p2;
assign grp_fu_1185_p1 = 14'd53;
assign grp_fu_1185_p2 = zext_ln175_reg_1291;
assign grp_fu_1193_p0 = grp_fu_1193_p00;
assign grp_fu_1193_p00 = empty_26_fu_611_p2;
assign grp_fu_1193_p1 = 14'd53;
assign grp_fu_1193_p2 = zext_ln175_reg_1291;
assign grp_fu_1201_p0 = grp_fu_1201_p00;
assign grp_fu_1201_p00 = empty_33_fu_621_p2;
assign grp_fu_1201_p1 = 14'd53;
assign grp_fu_1201_p2 = zext_ln175_reg_1291;
assign grp_fu_1209_p0 = grp_fu_1209_p00;
assign grp_fu_1209_p00 = empty_40_fu_631_p2;
assign grp_fu_1209_p1 = 14'd53;
assign grp_fu_1209_p2 = zext_ln175_reg_1291;
assign grp_fu_1217_p0 = grp_fu_1217_p00;
assign grp_fu_1217_p00 = empty_47_fu_648_p2;
assign grp_fu_1217_p1 = 14'd53;
assign grp_fu_1217_p2 = zext_ln175_reg_1291;
assign grp_fu_1225_p0 = grp_fu_1225_p00;
assign grp_fu_1225_p00 = empty_54_fu_658_p2;
assign grp_fu_1225_p1 = 14'd53;
assign grp_fu_1225_p2 = zext_ln175_reg_1291;
assign grp_fu_1233_p0 = grp_fu_1233_p00;
assign grp_fu_1233_p00 = empty_61_fu_721_p2;
assign grp_fu_1233_p1 = 14'd53;
assign grp_fu_1233_p2 = zext_ln175_reg_1291;
assign grp_fu_1241_p0 = grp_fu_1241_p00;
assign grp_fu_1241_p00 = empty_68_fu_731_p2;
assign grp_fu_1241_p1 = 14'd53;
assign grp_fu_1241_p2 = zext_ln175_reg_1291;
assign grp_fu_148_p_ce = grp_fu_1722_ce;
assign grp_fu_148_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_1722_p_din0;
assign grp_fu_148_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_grp_fu_1722_p_din1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_495_ce;
assign grp_fu_152_p_din0 = grp_fu_495_p0;
assign grp_fu_152_p_din1 = grp_fu_495_p1;
assign grp_fu_156_p_ce = 1'b1;
assign grp_fu_156_p_din0 = v39_reg_1472;
assign grp_fu_156_p_din1 = v113;
assign grp_fu_160_p_ce = 1'b1;
assign grp_fu_160_p_din0 = v41_reg_1477;
assign grp_fu_160_p_din1 = v113;
assign grp_fu_164_p_ce = 1'b1;
assign grp_fu_164_p_din0 = v43_reg_1522;
assign grp_fu_164_p_din1 = v113;
assign grp_fu_168_p_ce = 1'b1;
assign grp_fu_168_p_din0 = v45_reg_1527;
assign grp_fu_168_p_din1 = v113;
assign grp_fu_172_p_ce = 1'b1;
assign grp_fu_172_p_din0 = v47_reg_1572;
assign grp_fu_172_p_din1 = v113;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_ap_start_reg;
assign icmp_ln168_fu_539_p2 = ((v114_fu_106 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_581_p2 = ((v115_reg_448 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_555_p4 = {{v114_fu_106[7:2]}};
assign mul_ln171_fu_1099_p0 = mul_ln171_fu_1099_p00;
assign mul_ln171_fu_1099_p00 = v115_reg_448;
assign mul_ln171_fu_1099_p1 = 16'd190;
assign mul_ln175_fu_569_p0 = mul_ln175_fu_569_p00;
assign mul_ln175_fu_569_p00 = lshr_ln_fu_555_p4;
assign mul_ln175_fu_569_p1 = 14'd190;
assign mul_ln186_fu_1108_p0 = mul_ln186_fu_1108_p00;
assign mul_ln186_fu_1108_p00 = empty_19_reg_1327;
assign mul_ln186_fu_1108_p1 = 16'd190;
assign mul_ln199_fu_1117_p0 = mul_ln199_fu_1117_p00;
assign mul_ln199_fu_1117_p00 = empty_26_reg_1337;
assign mul_ln199_fu_1117_p1 = 16'd190;
assign mul_ln212_fu_1126_p0 = mul_ln212_fu_1126_p00;
assign mul_ln212_fu_1126_p00 = empty_33_reg_1347;
assign mul_ln212_fu_1126_p1 = 16'd190;
assign mul_ln225_fu_1135_p0 = mul_ln225_fu_1135_p00;
assign mul_ln225_fu_1135_p00 = empty_40_reg_1357;
assign mul_ln225_fu_1135_p1 = 16'd190;
assign mul_ln238_fu_1144_p0 = mul_ln238_fu_1144_p00;
assign mul_ln238_fu_1144_p00 = empty_47_reg_1387;
assign mul_ln238_fu_1144_p1 = 16'd190;
assign mul_ln251_fu_1153_p0 = mul_ln251_fu_1153_p00;
assign mul_ln251_fu_1153_p00 = empty_54_reg_1397;
assign mul_ln251_fu_1153_p1 = 16'd190;
assign mul_ln264_fu_1162_p0 = mul_ln264_fu_1162_p00;
assign mul_ln264_fu_1162_p00 = empty_61_reg_1452;
assign mul_ln264_fu_1162_p1 = 16'd190;
assign mul_ln277_fu_1171_p0 = mul_ln277_fu_1171_p00;
assign mul_ln277_fu_1171_p00 = empty_68_reg_1462;
assign mul_ln277_fu_1171_p1 = 16'd190;
assign p_cast1478_fu_641_p1 = grp_fu_1177_p3;
assign p_cast1479_fu_714_p1 = grp_fu_1193_p3;
assign p_cast1480_fu_819_p1 = grp_fu_1201_p3;
assign p_cast1481_fu_826_p1 = grp_fu_1209_p3;
assign p_cast1482_fu_911_p1 = grp_fu_1217_p3;
assign p_cast1483_fu_918_p1 = grp_fu_1225_p3;
assign p_cast1484_fu_1003_p1 = grp_fu_1233_p3;
assign p_cast1485_fu_1010_p1 = grp_fu_1241_p3;
assign p_cast_fu_707_p1 = grp_fu_1185_p3;
assign trunc_ln168_fu_551_p1 = v114_fu_106[1:0];
assign v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_address0;
assign v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_address1;
assign v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_ce0;
assign v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_ce1;
assign v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_d0;
assign v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_d1;
assign v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_we0;
assign v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v225_we1;
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
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_460_v227_3_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v39_fu_757_p2 = v226_0_q1;
assign v39_fu_757_p4 = v226_1_q1;
assign v39_fu_757_p6 = v226_2_q1;
assign v39_fu_757_p8 = v226_3_q1;
assign v39_fu_757_p9 = 'bx;
assign v41_fu_796_p2 = v226_0_q0;
assign v41_fu_796_p4 = v226_1_q0;
assign v41_fu_796_p6 = v226_2_q0;
assign v41_fu_796_p8 = v226_3_q0;
assign v41_fu_796_p9 = 'bx;
assign v43_fu_849_p2 = v226_0_q0;
assign v43_fu_849_p4 = v226_1_q0;
assign v43_fu_849_p6 = v226_2_q0;
assign v43_fu_849_p8 = v226_3_q0;
assign v43_fu_849_p9 = 'bx;
assign v45_fu_888_p2 = v226_0_q1;
assign v45_fu_888_p4 = v226_1_q1;
assign v45_fu_888_p6 = v226_2_q1;
assign v45_fu_888_p8 = v226_3_q1;
assign v45_fu_888_p9 = 'bx;
assign v47_fu_941_p2 = v226_0_q0;
assign v47_fu_941_p4 = v226_1_q0;
assign v47_fu_941_p6 = v226_2_q0;
assign v47_fu_941_p8 = v226_3_q0;
assign v47_fu_941_p9 = 'bx;
assign v49_fu_980_p2 = v226_0_q1;
assign v49_fu_980_p4 = v226_1_q1;
assign v49_fu_980_p6 = v226_2_q1;
assign v49_fu_980_p8 = v226_3_q1;
assign v49_fu_980_p9 = 'bx;
assign v51_fu_1033_p2 = v226_0_q0;
assign v51_fu_1033_p4 = v226_1_q0;
assign v51_fu_1033_p6 = v226_2_q0;
assign v51_fu_1033_p8 = v226_3_q0;
assign v51_fu_1033_p9 = 'bx;
assign v53_fu_1072_p2 = v226_0_q1;
assign v53_fu_1072_p4 = v226_1_q1;
assign v53_fu_1072_p6 = v226_2_q1;
assign v53_fu_1072_p8 = v226_3_q1;
assign v53_fu_1072_p9 = 'bx;
assign v_fu_684_p2 = v226_0_q0;
assign v_fu_684_p4 = v226_1_q0;
assign v_fu_684_p6 = v226_2_q0;
assign v_fu_684_p8 = v226_3_q0;
assign v_fu_684_p9 = 'bx;
assign zext_ln175_fu_565_p1 = lshr_ln_fu_555_p4;
always @ (posedge ap_clk) begin
    zext_ln175_reg_1291[13:6] <= 8'b00000000;
end
endmodule 
