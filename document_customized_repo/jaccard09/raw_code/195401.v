module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v113,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce); 
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
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
output  [1:0] grp_fu_176_p_opcode;
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
wire   [0:0] icmp_ln168_fu_584_p2;
reg   [15:0] phi_mul_load_reg_1408;
wire   [15:0] add_ln168_1_fu_578_p2;
reg   [15:0] add_ln168_1_reg_1413;
wire   [7:0] add_ln168_fu_590_p2;
reg   [7:0] add_ln168_reg_1421;
wire   [1:0] trunc_ln168_fu_596_p1;
reg   [1:0] trunc_ln168_reg_1426;
wire   [13:0] zext_ln168_fu_610_p1;
reg   [13:0] zext_ln168_reg_1439;
wire   [0:0] cmp11_fu_614_p2;
reg   [0:0] cmp11_reg_1452;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_630_p2;
reg   [7:0] add_ln169_reg_1465;
wire    ap_CS_fsm_state4;
reg   [4:0] tmp_reg_1475;
reg   [4:0] tmp_1_reg_1485;
wire    ap_CS_fsm_state5;
reg   [4:0] tmp_2_reg_1495;
reg   [4:0] tmp_3_reg_1505;
wire    ap_CS_fsm_state6;
reg   [4:0] tmp_4_reg_1535;
reg   [4:0] tmp_5_reg_1545;
wire   [31:0] v_fu_787_p11;
reg   [31:0] v_reg_1550;
wire    ap_CS_fsm_state7;
reg   [4:0] tmp_6_reg_1600;
wire   [31:0] v20_fu_860_p11;
reg   [31:0] v20_reg_1605;
wire    ap_CS_fsm_state8;
wire   [31:0] v22_fu_899_p11;
reg   [31:0] v22_reg_1610;
wire   [31:0] v24_fu_952_p11;
reg   [31:0] v24_reg_1655;
wire    ap_CS_fsm_state9;
wire   [31:0] v26_fu_991_p11;
reg   [31:0] v26_reg_1660;
wire   [31:0] v28_fu_1044_p11;
reg   [31:0] v28_reg_1705;
wire    ap_CS_fsm_state10;
wire   [31:0] v30_fu_1083_p11;
reg   [31:0] v30_reg_1710;
wire   [31:0] v32_fu_1136_p11;
reg   [31:0] v32_reg_1755;
wire    ap_CS_fsm_state11;
wire   [31:0] v34_fu_1175_p11;
reg   [31:0] v34_reg_1760;
wire   [2:0] trunc_ln169_fu_1198_p1;
reg   [2:0] trunc_ln169_reg_1765;
wire    ap_CS_fsm_state15;
wire   [12:0] mul_ln171_fu_1216_p2;
reg   [12:0] mul_ln171_reg_1771;
reg   [31:0] v19_reg_1776;
wire   [12:0] mul_ln186_fu_1225_p2;
reg   [12:0] mul_ln186_reg_1781;
reg   [31:0] v21_reg_1786;
wire   [12:0] mul_ln199_fu_1234_p2;
reg   [12:0] mul_ln199_reg_1791;
wire   [31:0] grp_fu_534_p2;
reg   [31:0] v23_reg_1796;
wire   [12:0] mul_ln212_fu_1243_p2;
reg   [12:0] mul_ln212_reg_1801;
wire   [31:0] grp_fu_538_p2;
reg   [31:0] v25_reg_1806;
wire   [12:0] mul_ln225_fu_1252_p2;
reg   [12:0] mul_ln225_reg_1811;
wire   [31:0] grp_fu_542_p2;
reg   [31:0] v27_reg_1816;
wire   [12:0] mul_ln238_fu_1261_p2;
reg   [12:0] mul_ln238_reg_1821;
wire   [31:0] grp_fu_546_p2;
reg   [31:0] v29_reg_1826;
wire   [12:0] mul_ln251_fu_1270_p2;
reg   [12:0] mul_ln251_reg_1831;
wire   [31:0] grp_fu_550_p2;
reg   [31:0] v31_reg_1836;
wire   [12:0] mul_ln264_fu_1279_p2;
reg   [12:0] mul_ln264_reg_1841;
wire   [31:0] grp_fu_554_p2;
reg   [31:0] v33_reg_1846;
wire   [12:0] mul_ln277_fu_1295_p2;
reg   [12:0] mul_ln277_reg_1851;
wire   [31:0] grp_fu_558_p2;
reg   [31:0] v35_reg_1856;
wire   [0:0] empty_78_fu_1301_p2;
reg   [0:0] empty_78_reg_1861;
wire    ap_CS_fsm_state16;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_ready;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_1866_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_1866_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_1866_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_1866_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_526_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_526_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_526_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_530_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_530_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_530_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_534_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_534_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_534_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_538_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_538_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_538_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_542_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_542_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_542_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_546_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_546_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_546_p_ce;
reg   [7:0] v115_reg_470;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_start_reg;
wire   [63:0] p_cast1147_fu_724_p1;
wire   [63:0] p_cast_fu_810_p1;
wire   [63:0] p_cast1148_fu_817_p1;
wire   [63:0] p_cast1149_fu_922_p1;
wire   [63:0] p_cast1150_fu_929_p1;
wire   [63:0] p_cast1151_fu_1014_p1;
wire   [63:0] p_cast1152_fu_1021_p1;
wire   [63:0] p_cast1153_fu_1106_p1;
wire   [63:0] p_cast1154_fu_1113_p1;
reg   [15:0] phi_mul_fu_124;
wire   [0:0] icmp_ln169_fu_620_p2;
reg   [7:0] v114_fu_128;
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
reg   [31:0] grp_fu_526_p0;
reg   [31:0] grp_fu_526_p1;
wire    ap_CS_fsm_state12;
reg   [31:0] grp_fu_530_p0;
reg   [31:0] grp_fu_530_p1;
reg   [31:0] grp_fu_534_p0;
reg   [31:0] grp_fu_534_p1;
reg   [31:0] grp_fu_538_p0;
reg   [31:0] grp_fu_538_p1;
reg   [31:0] grp_fu_542_p0;
reg   [31:0] grp_fu_542_p1;
reg   [31:0] grp_fu_546_p0;
reg   [31:0] grp_fu_546_p1;
wire   [5:0] lshr_ln_fu_600_p4;
wire   [7:0] empty_21_fu_644_p2;
wire   [7:0] empty_28_fu_664_p2;
wire   [7:0] empty_35_fu_684_p2;
wire   [7:0] empty_42_fu_704_p2;
wire   [13:0] grp_fu_1307_p3;
wire   [7:0] empty_49_fu_731_p2;
wire   [7:0] empty_56_fu_751_p2;
wire   [31:0] v_fu_787_p2;
wire   [31:0] v_fu_787_p4;
wire   [31:0] v_fu_787_p6;
wire   [31:0] v_fu_787_p8;
wire   [31:0] v_fu_787_p9;
wire   [13:0] grp_fu_1315_p3;
wire   [13:0] grp_fu_1323_p3;
wire   [7:0] empty_63_fu_824_p2;
wire   [31:0] v20_fu_860_p2;
wire   [31:0] v20_fu_860_p4;
wire   [31:0] v20_fu_860_p6;
wire   [31:0] v20_fu_860_p8;
wire   [31:0] v20_fu_860_p9;
wire   [31:0] v22_fu_899_p2;
wire   [31:0] v22_fu_899_p4;
wire   [31:0] v22_fu_899_p6;
wire   [31:0] v22_fu_899_p8;
wire   [31:0] v22_fu_899_p9;
wire   [13:0] grp_fu_1331_p3;
wire   [13:0] grp_fu_1339_p3;
wire   [31:0] v24_fu_952_p2;
wire   [31:0] v24_fu_952_p4;
wire   [31:0] v24_fu_952_p6;
wire   [31:0] v24_fu_952_p8;
wire   [31:0] v24_fu_952_p9;
wire   [31:0] v26_fu_991_p2;
wire   [31:0] v26_fu_991_p4;
wire   [31:0] v26_fu_991_p6;
wire   [31:0] v26_fu_991_p8;
wire   [31:0] v26_fu_991_p9;
wire   [13:0] grp_fu_1347_p3;
wire   [13:0] grp_fu_1355_p3;
wire   [31:0] v28_fu_1044_p2;
wire   [31:0] v28_fu_1044_p4;
wire   [31:0] v28_fu_1044_p6;
wire   [31:0] v28_fu_1044_p8;
wire   [31:0] v28_fu_1044_p9;
wire   [31:0] v30_fu_1083_p2;
wire   [31:0] v30_fu_1083_p4;
wire   [31:0] v30_fu_1083_p6;
wire   [31:0] v30_fu_1083_p8;
wire   [31:0] v30_fu_1083_p9;
wire   [13:0] grp_fu_1363_p3;
wire   [13:0] grp_fu_1371_p4;
wire   [31:0] v32_fu_1136_p2;
wire   [31:0] v32_fu_1136_p4;
wire   [31:0] v32_fu_1136_p6;
wire   [31:0] v32_fu_1136_p8;
wire   [31:0] v32_fu_1136_p9;
wire   [31:0] v34_fu_1175_p2;
wire   [31:0] v34_fu_1175_p4;
wire   [31:0] v34_fu_1175_p6;
wire   [31:0] v34_fu_1175_p8;
wire   [31:0] v34_fu_1175_p9;
wire   [4:0] lshr_ln1_fu_1202_p4;
wire   [4:0] mul_ln171_fu_1216_p0;
wire   [8:0] mul_ln171_fu_1216_p1;
wire   [4:0] mul_ln186_fu_1225_p0;
wire   [8:0] mul_ln186_fu_1225_p1;
wire   [4:0] mul_ln199_fu_1234_p0;
wire   [8:0] mul_ln199_fu_1234_p1;
wire   [4:0] mul_ln212_fu_1243_p0;
wire   [8:0] mul_ln212_fu_1243_p1;
wire   [4:0] mul_ln225_fu_1252_p0;
wire   [8:0] mul_ln225_fu_1252_p1;
wire   [4:0] mul_ln238_fu_1261_p0;
wire   [8:0] mul_ln238_fu_1261_p1;
wire   [4:0] mul_ln251_fu_1270_p0;
wire   [8:0] mul_ln251_fu_1270_p1;
wire   [4:0] mul_ln264_fu_1279_p0;
wire   [8:0] mul_ln264_fu_1279_p1;
wire   [4:0] empty_73_fu_1285_p2;
wire   [4:0] mul_ln277_fu_1295_p0;
wire   [8:0] mul_ln277_fu_1295_p1;
wire   [7:0] grp_fu_1307_p0;
wire   [5:0] grp_fu_1307_p1;
wire   [5:0] grp_fu_1307_p2;
wire   [7:0] grp_fu_1315_p0;
wire   [5:0] grp_fu_1315_p1;
wire   [5:0] grp_fu_1315_p2;
wire   [7:0] grp_fu_1323_p0;
wire   [5:0] grp_fu_1323_p1;
wire   [5:0] grp_fu_1323_p2;
wire   [7:0] grp_fu_1331_p0;
wire   [5:0] grp_fu_1331_p1;
wire   [5:0] grp_fu_1331_p2;
wire   [7:0] grp_fu_1339_p0;
wire   [5:0] grp_fu_1339_p1;
wire   [5:0] grp_fu_1339_p2;
wire   [7:0] grp_fu_1347_p0;
wire   [5:0] grp_fu_1347_p1;
wire   [5:0] grp_fu_1347_p2;
wire   [7:0] grp_fu_1355_p0;
wire   [5:0] grp_fu_1355_p1;
wire   [5:0] grp_fu_1355_p2;
wire   [7:0] grp_fu_1363_p0;
wire   [5:0] grp_fu_1363_p1;
wire   [5:0] grp_fu_1363_p2;
wire   [3:0] grp_fu_1371_p1;
wire   [5:0] grp_fu_1371_p2;
wire   [5:0] grp_fu_1371_p3;
reg    grp_fu_526_ce;
reg    grp_fu_530_ce;
reg    grp_fu_534_ce;
reg    grp_fu_538_ce;
reg    grp_fu_542_ce;
reg    grp_fu_546_ce;
reg    grp_fu_1866_ce;
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
wire   [13:0] grp_fu_1307_p00;
wire   [13:0] grp_fu_1315_p00;
wire   [13:0] grp_fu_1323_p00;
wire   [13:0] grp_fu_1331_p00;
wire   [13:0] grp_fu_1339_p00;
wire   [13:0] grp_fu_1347_p00;
wire   [13:0] grp_fu_1355_p00;
wire   [13:0] grp_fu_1363_p00;
wire   [12:0] mul_ln171_fu_1216_p00;
wire   [12:0] mul_ln186_fu_1225_p00;
wire   [12:0] mul_ln199_fu_1234_p00;
wire   [12:0] mul_ln212_fu_1243_p00;
wire   [12:0] mul_ln225_fu_1252_p00;
wire   [12:0] mul_ln238_fu_1261_p00;
wire   [12:0] mul_ln251_fu_1270_p00;
wire   [12:0] mul_ln264_fu_1279_p00;
wire   [12:0] mul_ln277_fu_1295_p00;
wire   [1:0] v_fu_787_p1;
wire   [1:0] v_fu_787_p3;
wire  signed [1:0] v_fu_787_p5;
wire  signed [1:0] v_fu_787_p7;
wire   [1:0] v20_fu_860_p1;
wire   [1:0] v20_fu_860_p3;
wire  signed [1:0] v20_fu_860_p5;
wire  signed [1:0] v20_fu_860_p7;
wire   [1:0] v22_fu_899_p1;
wire   [1:0] v22_fu_899_p3;
wire  signed [1:0] v22_fu_899_p5;
wire  signed [1:0] v22_fu_899_p7;
wire   [1:0] v24_fu_952_p1;
wire   [1:0] v24_fu_952_p3;
wire  signed [1:0] v24_fu_952_p5;
wire  signed [1:0] v24_fu_952_p7;
wire   [1:0] v26_fu_991_p1;
wire   [1:0] v26_fu_991_p3;
wire  signed [1:0] v26_fu_991_p5;
wire  signed [1:0] v26_fu_991_p7;
wire   [1:0] v28_fu_1044_p1;
wire   [1:0] v28_fu_1044_p3;
wire  signed [1:0] v28_fu_1044_p5;
wire  signed [1:0] v28_fu_1044_p7;
wire   [1:0] v30_fu_1083_p1;
wire   [1:0] v30_fu_1083_p3;
wire  signed [1:0] v30_fu_1083_p5;
wire  signed [1:0] v30_fu_1083_p7;
wire   [1:0] v32_fu_1136_p1;
wire   [1:0] v32_fu_1136_p3;
wire  signed [1:0] v32_fu_1136_p5;
wire  signed [1:0] v32_fu_1136_p7;
wire   [1:0] v34_fu_1175_p1;
wire   [1:0] v34_fu_1175_p3;
wire  signed [1:0] v34_fu_1175_p5;
wire  signed [1:0] v34_fu_1175_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_start_reg = 1'b0;
#0 phi_mul_fu_124 = 16'd0;
#0 v114_fu_128 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_482(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_ready),.cmp11(cmp11_reg_1452),.v225_7_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_address0),.v225_7_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_ce0),.v225_7_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_we0),.v225_7_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_d0),.v225_7_q0(v225_7_q0),.v225_7_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_address1),.v225_7_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_ce1),.v225_7_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_we1),.v225_7_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_d1),.v225_7_q1(v225_7_q1),.v225_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_address0),.v225_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_ce0),.v225_6_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_we0),.v225_6_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_d0),.v225_6_q0(v225_6_q0),.v225_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_address1),.v225_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_ce1),.v225_6_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_we1),.v225_6_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_d1),.v225_6_q1(v225_6_q1),.v225_5_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_address0),.v225_5_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_ce0),.v225_5_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_we0),.v225_5_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_d0),.v225_5_q0(v225_5_q0),.v225_5_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_address1),.v225_5_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_ce1),.v225_5_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_we1),.v225_5_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_d1),.v225_5_q1(v225_5_q1),.v225_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_address0),.v225_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_ce0),.v225_4_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_we0),.v225_4_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_d0),.v225_4_q0(v225_4_q0),.v225_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_address1),.v225_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_ce1),.v225_4_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_we1),.v225_4_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_d1),.v225_4_q1(v225_4_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_d1),.v225_0_q1(v225_0_q1),.phi_mul(phi_mul_load_reg_1408),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1771),.mul_ln277(mul_ln277_reg_1851),.mul_ln264(mul_ln264_reg_1841),.mul_ln251(mul_ln251_reg_1831),.mul_ln238(mul_ln238_reg_1821),.mul_ln225(mul_ln225_reg_1811),.mul_ln212(mul_ln212_reg_1801),.mul_ln199(mul_ln199_reg_1791),.mul_ln186(mul_ln186_reg_1781),.empty_13(trunc_ln169_reg_1765),.v120(v19_reg_1776),.v133(v21_reg_1786),.v144(v23_reg_1796),.v155(v25_reg_1806),.v166(v27_reg_1816),.v177(v29_reg_1826),.v188(v31_reg_1836),.v199(v33_reg_1846),.v210(v35_reg_1856),.empty(empty_78_reg_1861),.grp_fu_1866_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_1866_p_din0),.grp_fu_1866_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_1866_p_din1),.grp_fu_1866_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_1866_p_opcode),.grp_fu_1866_p_dout0(grp_fu_176_p_dout0),.grp_fu_1866_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_1866_p_ce),.grp_fu_526_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_526_p_din0),.grp_fu_526_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_526_p_din1),.grp_fu_526_p_dout0(grp_fu_180_p_dout0),.grp_fu_526_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_526_p_ce),.grp_fu_530_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_530_p_din0),.grp_fu_530_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_530_p_din1),.grp_fu_530_p_dout0(grp_fu_184_p_dout0),.grp_fu_530_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_530_p_ce),.grp_fu_534_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_534_p_din0),.grp_fu_534_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_534_p_din1),.grp_fu_534_p_dout0(grp_fu_534_p2),.grp_fu_534_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_534_p_ce),.grp_fu_538_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_538_p_din0),.grp_fu_538_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_538_p_din1),.grp_fu_538_p_dout0(grp_fu_538_p2),.grp_fu_538_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_538_p_ce),.grp_fu_542_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_542_p_din0),.grp_fu_542_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_542_p_din1),.grp_fu_542_p_dout0(grp_fu_542_p2),.grp_fu_542_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_542_p_ce),.grp_fu_546_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_546_p_din0),.grp_fu_546_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_546_p_din1),.grp_fu_546_p_dout0(grp_fu_546_p2),.grp_fu_546_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_546_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U50(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_534_p0),.din1(grp_fu_534_p1),.ce(grp_fu_534_ce),.dout(grp_fu_534_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_538_p0),.din1(grp_fu_538_p1),.ce(grp_fu_538_ce),.dout(grp_fu_538_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_542_p0),.din1(grp_fu_542_p1),.ce(grp_fu_542_ce),.dout(grp_fu_542_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_546_p0),.din1(grp_fu_546_p1),.ce(grp_fu_546_ce),.dout(grp_fu_546_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(v30_reg_1710),.din1(v113),.ce(1'b1),.dout(grp_fu_550_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(v32_reg_1755),.din1(v113),.ce(1'b1),.dout(grp_fu_554_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(v34_reg_1760),.din1(v113),.ce(1'b1),.dout(grp_fu_558_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U57(.din0(v_fu_787_p2),.din1(v_fu_787_p4),.din2(v_fu_787_p6),.din3(v_fu_787_p8),.def(v_fu_787_p9),.sel(trunc_ln168_reg_1426),.dout(v_fu_787_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U58(.din0(v20_fu_860_p2),.din1(v20_fu_860_p4),.din2(v20_fu_860_p6),.din3(v20_fu_860_p8),.def(v20_fu_860_p9),.sel(trunc_ln168_reg_1426),.dout(v20_fu_860_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U59(.din0(v22_fu_899_p2),.din1(v22_fu_899_p4),.din2(v22_fu_899_p6),.din3(v22_fu_899_p8),.def(v22_fu_899_p9),.sel(trunc_ln168_reg_1426),.dout(v22_fu_899_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U60(.din0(v24_fu_952_p2),.din1(v24_fu_952_p4),.din2(v24_fu_952_p6),.din3(v24_fu_952_p8),.def(v24_fu_952_p9),.sel(trunc_ln168_reg_1426),.dout(v24_fu_952_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U61(.din0(v26_fu_991_p2),.din1(v26_fu_991_p4),.din2(v26_fu_991_p6),.din3(v26_fu_991_p8),.def(v26_fu_991_p9),.sel(trunc_ln168_reg_1426),.dout(v26_fu_991_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U62(.din0(v28_fu_1044_p2),.din1(v28_fu_1044_p4),.din2(v28_fu_1044_p6),.din3(v28_fu_1044_p8),.def(v28_fu_1044_p9),.sel(trunc_ln168_reg_1426),.dout(v28_fu_1044_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U63(.din0(v30_fu_1083_p2),.din1(v30_fu_1083_p4),.din2(v30_fu_1083_p6),.din3(v30_fu_1083_p8),.def(v30_fu_1083_p9),.sel(trunc_ln168_reg_1426),.dout(v30_fu_1083_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U64(.din0(v32_fu_1136_p2),.din1(v32_fu_1136_p4),.din2(v32_fu_1136_p6),.din3(v32_fu_1136_p8),.def(v32_fu_1136_p9),.sel(trunc_ln168_reg_1426),.dout(v32_fu_1136_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U65(.din0(v34_fu_1175_p2),.din1(v34_fu_1175_p4),.din2(v34_fu_1175_p6),.din3(v34_fu_1175_p8),.def(v34_fu_1175_p9),.sel(trunc_ln168_reg_1426),.dout(v34_fu_1175_p11));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U66(.din0(mul_ln171_fu_1216_p0),.din1(mul_ln171_fu_1216_p1),.dout(mul_ln171_fu_1216_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U67(.din0(mul_ln186_fu_1225_p0),.din1(mul_ln186_fu_1225_p1),.dout(mul_ln186_fu_1225_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U68(.din0(mul_ln199_fu_1234_p0),.din1(mul_ln199_fu_1234_p1),.dout(mul_ln199_fu_1234_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U69(.din0(mul_ln212_fu_1243_p0),.din1(mul_ln212_fu_1243_p1),.dout(mul_ln212_fu_1243_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U70(.din0(mul_ln225_fu_1252_p0),.din1(mul_ln225_fu_1252_p1),.dout(mul_ln225_fu_1252_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U71(.din0(mul_ln238_fu_1261_p0),.din1(mul_ln238_fu_1261_p1),.dout(mul_ln238_fu_1261_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U72(.din0(mul_ln251_fu_1270_p0),.din1(mul_ln251_fu_1270_p1),.dout(mul_ln251_fu_1270_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U73(.din0(mul_ln264_fu_1279_p0),.din1(mul_ln264_fu_1279_p1),.dout(mul_ln264_fu_1279_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U74(.din0(mul_ln277_fu_1295_p0),.din1(mul_ln277_fu_1295_p1),.dout(mul_ln277_fu_1295_p2));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U75(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1307_p0),.din1(grp_fu_1307_p1),.din2(grp_fu_1307_p2),.ce(1'b1),.dout(grp_fu_1307_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1315_p0),.din1(grp_fu_1315_p1),.din2(grp_fu_1315_p2),.ce(1'b1),.dout(grp_fu_1315_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1323_p0),.din1(grp_fu_1323_p1),.din2(grp_fu_1323_p2),.ce(1'b1),.dout(grp_fu_1323_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1331_p0),.din1(grp_fu_1331_p1),.din2(grp_fu_1331_p2),.ce(1'b1),.dout(grp_fu_1331_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1339_p0),.din1(grp_fu_1339_p1),.din2(grp_fu_1339_p2),.ce(1'b1),.dout(grp_fu_1339_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1347_p0),.din1(grp_fu_1347_p1),.din2(grp_fu_1347_p2),.ce(1'b1),.dout(grp_fu_1347_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1355_p0),.din1(grp_fu_1355_p1),.din2(grp_fu_1355_p2),.ce(1'b1),.dout(grp_fu_1355_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1363_p0),.din1(grp_fu_1363_p1),.din2(grp_fu_1363_p2),.ce(1'b1),.dout(grp_fu_1363_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 6 ),.din3_WIDTH( 6 ),.dout_WIDTH( 14 ))
ama_addmuladd_8ns_4ns_6ns_6ns_14_4_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_470),.din1(grp_fu_1371_p1),.din2(grp_fu_1371_p2),.din3(grp_fu_1371_p3),.ce(1'b1),.dout(grp_fu_1371_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_124 <= 16'd0;
    end else if (((icmp_ln169_fu_620_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_124 <= add_ln168_1_reg_1413;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_128 <= 8'd0;
    end else if (((icmp_ln169_fu_620_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_128 <= add_ln168_reg_1421;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_470 <= add_ln169_reg_1465;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_584_p2 == 1'd0))) begin
        v115_reg_470 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_1413 <= add_ln168_1_fu_578_p2;
        add_ln168_reg_1421 <= add_ln168_fu_590_p2;
        cmp11_reg_1452 <= cmp11_fu_614_p2;
        phi_mul_load_reg_1408 <= phi_mul_fu_124;
        trunc_ln168_reg_1426 <= trunc_ln168_fu_596_p1;
        zext_ln168_reg_1439[5 : 0] <= zext_ln168_fu_610_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_1465 <= add_ln169_fu_630_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_78_reg_1861 <= empty_78_fu_1301_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1771 <= mul_ln171_fu_1216_p2;
        mul_ln186_reg_1781 <= mul_ln186_fu_1225_p2;
        mul_ln199_reg_1791 <= mul_ln199_fu_1234_p2;
        mul_ln212_reg_1801 <= mul_ln212_fu_1243_p2;
        mul_ln225_reg_1811 <= mul_ln225_fu_1252_p2;
        mul_ln238_reg_1821 <= mul_ln238_fu_1261_p2;
        mul_ln251_reg_1831 <= mul_ln251_fu_1270_p2;
        mul_ln264_reg_1841 <= mul_ln264_fu_1279_p2;
        mul_ln277_reg_1851 <= mul_ln277_fu_1295_p2;
        trunc_ln169_reg_1765 <= trunc_ln169_fu_1198_p1;
        v19_reg_1776 <= grp_fu_180_p_dout0;
        v21_reg_1786 <= grp_fu_184_p_dout0;
        v23_reg_1796 <= grp_fu_534_p2;
        v25_reg_1806 <= grp_fu_538_p2;
        v27_reg_1816 <= grp_fu_542_p2;
        v29_reg_1826 <= grp_fu_546_p2;
        v31_reg_1836 <= grp_fu_550_p2;
        v33_reg_1846 <= grp_fu_554_p2;
        v35_reg_1856 <= grp_fu_558_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_1485 <= {{empty_28_fu_664_p2[7:3]}};
        tmp_reg_1475 <= {{empty_21_fu_644_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_2_reg_1495 <= {{empty_35_fu_684_p2[7:3]}};
        tmp_3_reg_1505 <= {{empty_42_fu_704_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_4_reg_1535 <= {{empty_49_fu_731_p2[7:3]}};
        tmp_5_reg_1545 <= {{empty_56_fu_751_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_6_reg_1600 <= {{empty_63_fu_824_p2[7:3]}};
        v_reg_1550 <= v_fu_787_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v20_reg_1605 <= v20_fu_860_p11;
        v22_reg_1610 <= v22_fu_899_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v24_reg_1655 <= v24_fu_952_p11;
        v26_reg_1660 <= v26_fu_991_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v28_reg_1705 <= v28_fu_1044_p11;
        v30_reg_1710 <= v30_fu_1083_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v32_reg_1755 <= v32_fu_1136_p11;
        v34_reg_1760 <= v34_fu_1175_p11;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_584_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_584_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1866_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_1866_p_ce;
    end else begin
        grp_fu_1866_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_526_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_526_p_ce;
    end else begin
        grp_fu_526_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_526_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_526_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_526_p0 = v_reg_1550;
    end else begin
        grp_fu_526_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_526_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_526_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_526_p1 = v113;
    end else begin
        grp_fu_526_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_530_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_530_p_ce;
    end else begin
        grp_fu_530_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_530_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_530_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_530_p0 = v20_reg_1605;
    end else begin
        grp_fu_530_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_530_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_530_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_530_p1 = v113;
    end else begin
        grp_fu_530_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_534_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_534_p_ce;
    end else begin
        grp_fu_534_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_534_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_534_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_534_p0 = v22_reg_1610;
    end else begin
        grp_fu_534_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_534_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_534_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_534_p1 = v113;
    end else begin
        grp_fu_534_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_538_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_538_p_ce;
    end else begin
        grp_fu_538_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_538_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_538_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_538_p0 = v24_reg_1655;
    end else begin
        grp_fu_538_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_538_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_538_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_538_p1 = v113;
    end else begin
        grp_fu_538_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_542_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_542_p_ce;
    end else begin
        grp_fu_542_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_542_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_542_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_542_p0 = v26_reg_1660;
    end else begin
        grp_fu_542_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_542_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_542_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_542_p1 = v113;
    end else begin
        grp_fu_542_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_546_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_546_p_ce;
    end else begin
        grp_fu_546_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_546_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_546_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_546_p0 = v28_reg_1705;
    end else begin
        grp_fu_546_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_546_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_546_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_546_p1 = v113;
    end else begin
        grp_fu_546_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast1153_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast1151_fu_1014_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast1149_fu_922_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast1148_fu_817_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast1147_fu_724_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast1154_fu_1113_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast1152_fu_1021_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast1150_fu_929_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_810_p1;
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
        v226_1_address0_local = p_cast1153_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast1151_fu_1014_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast1149_fu_922_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast1148_fu_817_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast1147_fu_724_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast1154_fu_1113_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast1152_fu_1021_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast1150_fu_929_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_810_p1;
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
        v226_2_address0_local = p_cast1153_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast1151_fu_1014_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast1149_fu_922_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast1148_fu_817_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast1147_fu_724_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast1154_fu_1113_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast1152_fu_1021_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast1150_fu_929_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast_fu_810_p1;
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
        v226_3_address0_local = p_cast1153_fu_1106_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast1151_fu_1014_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast1149_fu_922_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast1148_fu_817_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast1147_fu_724_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast1154_fu_1113_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast1152_fu_1021_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast1150_fu_929_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast_fu_810_p1;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_584_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_584_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_584_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_584_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_620_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_1_fu_578_p2 = (phi_mul_fu_124 + 16'd190);
assign add_ln168_fu_590_p2 = (v114_fu_128 + 8'd1);
assign add_ln169_fu_630_p2 = (v115_reg_470 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_584_p2 == 1'd1));
end
assign cmp11_fu_614_p2 = ((v114_fu_128 == 8'd0) ? 1'b1 : 1'b0);
assign empty_21_fu_644_p2 = (v115_reg_470 + 8'd1);
assign empty_28_fu_664_p2 = (v115_reg_470 + 8'd2);
assign empty_35_fu_684_p2 = (v115_reg_470 + 8'd3);
assign empty_42_fu_704_p2 = (v115_reg_470 + 8'd4);
assign empty_49_fu_731_p2 = (v115_reg_470 + 8'd5);
assign empty_56_fu_751_p2 = (v115_reg_470 + 8'd6);
assign empty_63_fu_824_p2 = (v115_reg_470 + 8'd7);
assign empty_73_fu_1285_p2 = (lshr_ln1_fu_1202_p4 + 5'd1);
assign empty_78_fu_1301_p2 = ((trunc_ln169_reg_1765 == 3'd7) ? 1'b1 : 1'b0);
assign grp_fu_1307_p0 = grp_fu_1307_p00;
assign grp_fu_1307_p00 = v115_reg_470;
assign grp_fu_1307_p1 = 14'd53;
assign grp_fu_1307_p2 = zext_ln168_reg_1439;
assign grp_fu_1315_p0 = grp_fu_1315_p00;
assign grp_fu_1315_p00 = empty_21_fu_644_p2;
assign grp_fu_1315_p1 = 14'd53;
assign grp_fu_1315_p2 = zext_ln168_reg_1439;
assign grp_fu_1323_p0 = grp_fu_1323_p00;
assign grp_fu_1323_p00 = empty_28_fu_664_p2;
assign grp_fu_1323_p1 = 14'd53;
assign grp_fu_1323_p2 = zext_ln168_reg_1439;
assign grp_fu_1331_p0 = grp_fu_1331_p00;
assign grp_fu_1331_p00 = empty_35_fu_684_p2;
assign grp_fu_1331_p1 = 14'd53;
assign grp_fu_1331_p2 = zext_ln168_reg_1439;
assign grp_fu_1339_p0 = grp_fu_1339_p00;
assign grp_fu_1339_p00 = empty_42_fu_704_p2;
assign grp_fu_1339_p1 = 14'd53;
assign grp_fu_1339_p2 = zext_ln168_reg_1439;
assign grp_fu_1347_p0 = grp_fu_1347_p00;
assign grp_fu_1347_p00 = empty_49_fu_731_p2;
assign grp_fu_1347_p1 = 14'd53;
assign grp_fu_1347_p2 = zext_ln168_reg_1439;
assign grp_fu_1355_p0 = grp_fu_1355_p00;
assign grp_fu_1355_p00 = empty_56_fu_751_p2;
assign grp_fu_1355_p1 = 14'd53;
assign grp_fu_1355_p2 = zext_ln168_reg_1439;
assign grp_fu_1363_p0 = grp_fu_1363_p00;
assign grp_fu_1363_p00 = empty_63_fu_824_p2;
assign grp_fu_1363_p1 = 14'd53;
assign grp_fu_1363_p2 = zext_ln168_reg_1439;
assign grp_fu_1371_p1 = 8'd8;
assign grp_fu_1371_p2 = 14'd53;
assign grp_fu_1371_p3 = zext_ln168_reg_1439;
assign grp_fu_176_p_ce = grp_fu_1866_ce;
assign grp_fu_176_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_1866_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_grp_fu_1866_p_din1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_526_ce;
assign grp_fu_180_p_din0 = grp_fu_526_p0;
assign grp_fu_180_p_din1 = grp_fu_526_p1;
assign grp_fu_184_p_ce = grp_fu_530_ce;
assign grp_fu_184_p_din0 = grp_fu_530_p0;
assign grp_fu_184_p_din1 = grp_fu_530_p1;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_ap_start_reg;
assign icmp_ln168_fu_584_p2 = ((v114_fu_128 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_620_p2 = ((v115_reg_470 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1202_p4 = {{v115_reg_470[7:3]}};
assign lshr_ln_fu_600_p4 = {{v114_fu_128[7:2]}};
assign mul_ln171_fu_1216_p0 = mul_ln171_fu_1216_p00;
assign mul_ln171_fu_1216_p00 = lshr_ln1_fu_1202_p4;
assign mul_ln171_fu_1216_p1 = 13'd190;
assign mul_ln186_fu_1225_p0 = mul_ln186_fu_1225_p00;
assign mul_ln186_fu_1225_p00 = tmp_reg_1475;
assign mul_ln186_fu_1225_p1 = 13'd190;
assign mul_ln199_fu_1234_p0 = mul_ln199_fu_1234_p00;
assign mul_ln199_fu_1234_p00 = tmp_1_reg_1485;
assign mul_ln199_fu_1234_p1 = 13'd190;
assign mul_ln212_fu_1243_p0 = mul_ln212_fu_1243_p00;
assign mul_ln212_fu_1243_p00 = tmp_2_reg_1495;
assign mul_ln212_fu_1243_p1 = 13'd190;
assign mul_ln225_fu_1252_p0 = mul_ln225_fu_1252_p00;
assign mul_ln225_fu_1252_p00 = tmp_3_reg_1505;
assign mul_ln225_fu_1252_p1 = 13'd190;
assign mul_ln238_fu_1261_p0 = mul_ln238_fu_1261_p00;
assign mul_ln238_fu_1261_p00 = tmp_4_reg_1535;
assign mul_ln238_fu_1261_p1 = 13'd190;
assign mul_ln251_fu_1270_p0 = mul_ln251_fu_1270_p00;
assign mul_ln251_fu_1270_p00 = tmp_5_reg_1545;
assign mul_ln251_fu_1270_p1 = 13'd190;
assign mul_ln264_fu_1279_p0 = mul_ln264_fu_1279_p00;
assign mul_ln264_fu_1279_p00 = tmp_6_reg_1600;
assign mul_ln264_fu_1279_p1 = 13'd190;
assign mul_ln277_fu_1295_p0 = mul_ln277_fu_1295_p00;
assign mul_ln277_fu_1295_p00 = empty_73_fu_1285_p2;
assign mul_ln277_fu_1295_p1 = 13'd190;
assign p_cast1147_fu_724_p1 = grp_fu_1307_p3;
assign p_cast1148_fu_817_p1 = grp_fu_1323_p3;
assign p_cast1149_fu_922_p1 = grp_fu_1331_p3;
assign p_cast1150_fu_929_p1 = grp_fu_1339_p3;
assign p_cast1151_fu_1014_p1 = grp_fu_1347_p3;
assign p_cast1152_fu_1021_p1 = grp_fu_1355_p3;
assign p_cast1153_fu_1106_p1 = grp_fu_1363_p3;
assign p_cast1154_fu_1113_p1 = grp_fu_1371_p4;
assign p_cast_fu_810_p1 = grp_fu_1315_p3;
assign trunc_ln168_fu_596_p1 = v114_fu_128[1:0];
assign trunc_ln169_fu_1198_p1 = v115_reg_470[2:0];
assign v20_fu_860_p2 = v226_0_q1;
assign v20_fu_860_p4 = v226_1_q1;
assign v20_fu_860_p6 = v226_2_q1;
assign v20_fu_860_p8 = v226_3_q1;
assign v20_fu_860_p9 = 'bx;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_1_we1;
assign v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_address0;
assign v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_address1;
assign v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_ce0;
assign v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_ce1;
assign v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_d0;
assign v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_d1;
assign v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_we0;
assign v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_2_we1;
assign v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_address0;
assign v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_address1;
assign v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_ce0;
assign v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_ce1;
assign v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_d0;
assign v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_d1;
assign v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_we0;
assign v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_3_we1;
assign v225_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_address0;
assign v225_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_address1;
assign v225_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_ce0;
assign v225_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_ce1;
assign v225_4_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_d0;
assign v225_4_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_d1;
assign v225_4_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_we0;
assign v225_4_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_4_we1;
assign v225_5_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_address0;
assign v225_5_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_address1;
assign v225_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_ce0;
assign v225_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_ce1;
assign v225_5_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_d0;
assign v225_5_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_d1;
assign v225_5_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_we0;
assign v225_5_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_5_we1;
assign v225_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_address0;
assign v225_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_address1;
assign v225_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_ce0;
assign v225_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_ce1;
assign v225_6_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_d0;
assign v225_6_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_d1;
assign v225_6_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_we0;
assign v225_6_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_6_we1;
assign v225_7_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_address0;
assign v225_7_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_address1;
assign v225_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_ce0;
assign v225_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_ce1;
assign v225_7_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_d0;
assign v225_7_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_d1;
assign v225_7_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_we0;
assign v225_7_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v225_7_we1;
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
assign v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v227_address0;
assign v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v227_address1;
assign v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v227_ce0;
assign v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_482_v227_ce1;
assign v22_fu_899_p2 = v226_0_q0;
assign v22_fu_899_p4 = v226_1_q0;
assign v22_fu_899_p6 = v226_2_q0;
assign v22_fu_899_p8 = v226_3_q0;
assign v22_fu_899_p9 = 'bx;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v24_fu_952_p2 = v226_0_q0;
assign v24_fu_952_p4 = v226_1_q0;
assign v24_fu_952_p6 = v226_2_q0;
assign v24_fu_952_p8 = v226_3_q0;
assign v24_fu_952_p9 = 'bx;
assign v26_fu_991_p2 = v226_0_q1;
assign v26_fu_991_p4 = v226_1_q1;
assign v26_fu_991_p6 = v226_2_q1;
assign v26_fu_991_p8 = v226_3_q1;
assign v26_fu_991_p9 = 'bx;
assign v28_fu_1044_p2 = v226_0_q0;
assign v28_fu_1044_p4 = v226_1_q0;
assign v28_fu_1044_p6 = v226_2_q0;
assign v28_fu_1044_p8 = v226_3_q0;
assign v28_fu_1044_p9 = 'bx;
assign v30_fu_1083_p2 = v226_0_q1;
assign v30_fu_1083_p4 = v226_1_q1;
assign v30_fu_1083_p6 = v226_2_q1;
assign v30_fu_1083_p8 = v226_3_q1;
assign v30_fu_1083_p9 = 'bx;
assign v32_fu_1136_p2 = v226_0_q0;
assign v32_fu_1136_p4 = v226_1_q0;
assign v32_fu_1136_p6 = v226_2_q0;
assign v32_fu_1136_p8 = v226_3_q0;
assign v32_fu_1136_p9 = 'bx;
assign v34_fu_1175_p2 = v226_0_q1;
assign v34_fu_1175_p4 = v226_1_q1;
assign v34_fu_1175_p6 = v226_2_q1;
assign v34_fu_1175_p8 = v226_3_q1;
assign v34_fu_1175_p9 = 'bx;
assign v_fu_787_p2 = v226_0_q0;
assign v_fu_787_p4 = v226_1_q0;
assign v_fu_787_p6 = v226_2_q0;
assign v_fu_787_p8 = v226_3_q0;
assign v_fu_787_p9 = 'bx;
assign zext_ln168_fu_610_p1 = lshr_ln_fu_600_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1439[13:6] <= 8'b00000000;
end
endmodule 