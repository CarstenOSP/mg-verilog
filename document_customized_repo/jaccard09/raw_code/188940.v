module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v224_4_address0,v224_4_ce0,v224_4_q0,v224_4_address1,v224_4_ce1,v224_4_q1,v224_5_address0,v224_5_ce0,v224_5_q0,v224_5_address1,v224_5_ce1,v224_5_q1,v224_6_address0,v224_6_ce0,v224_6_q0,v224_6_address1,v224_6_ce1,v224_6_q1,v224_7_address0,v224_7_ce0,v224_7_q0,v224_7_address1,v224_7_ce1,v224_7_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce); 
parameter    ap_ST_fsm_state1 = 14'd1;
parameter    ap_ST_fsm_state2 = 14'd2;
parameter    ap_ST_fsm_state3 = 14'd4;
parameter    ap_ST_fsm_state4 = 14'd8;
parameter    ap_ST_fsm_state5 = 14'd16;
parameter    ap_ST_fsm_state6 = 14'd32;
parameter    ap_ST_fsm_state7 = 14'd64;
parameter    ap_ST_fsm_state8 = 14'd128;
parameter    ap_ST_fsm_state9 = 14'd256;
parameter    ap_ST_fsm_state10 = 14'd512;
parameter    ap_ST_fsm_state11 = 14'd1024;
parameter    ap_ST_fsm_state12 = 14'd2048;
parameter    ap_ST_fsm_state13 = 14'd4096;
parameter    ap_ST_fsm_state14 = 14'd8192;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [12:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [12:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [12:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [12:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [12:0] v224_2_address0;
output   v224_2_ce0;
input  [31:0] v224_2_q0;
output  [12:0] v224_2_address1;
output   v224_2_ce1;
input  [31:0] v224_2_q1;
output  [12:0] v224_3_address0;
output   v224_3_ce0;
input  [31:0] v224_3_q0;
output  [12:0] v224_3_address1;
output   v224_3_ce1;
input  [31:0] v224_3_q1;
output  [12:0] v224_4_address0;
output   v224_4_ce0;
input  [31:0] v224_4_q0;
output  [12:0] v224_4_address1;
output   v224_4_ce1;
input  [31:0] v224_4_q1;
output  [12:0] v224_5_address0;
output   v224_5_ce0;
input  [31:0] v224_5_q0;
output  [12:0] v224_5_address1;
output   v224_5_ce1;
input  [31:0] v224_5_q1;
output  [12:0] v224_6_address0;
output   v224_6_ce0;
input  [31:0] v224_6_q0;
output  [12:0] v224_6_address1;
output   v224_6_ce1;
input  [31:0] v224_6_q1;
output  [12:0] v224_7_address0;
output   v224_7_ce0;
input  [31:0] v224_7_q0;
output  [12:0] v224_7_address1;
output   v224_7_ce1;
input  [31:0] v224_7_q1;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
output  [15:0] v229_address0;
output   v229_ce0;
output   v229_we0;
output  [31:0] v229_d0;
input  [31:0] v229_q0;
output  [15:0] v229_address1;
output   v229_ce1;
output   v229_we1;
output  [31:0] v229_d1;
input  [31:0] v229_q1;
input  [31:0] v4;
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
reg[15:0] v228_address0;
reg v228_ce0;
reg[15:0] v228_address1;
reg v228_ce1;
reg[15:0] v229_address0;
reg v229_ce0;
reg v229_we0;
reg[31:0] v229_d0;
reg[15:0] v229_address1;
reg v229_ce1;
reg v229_we1;
reg[31:0] v229_d1;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [15:0] phi_mul_load_reg_3861;
wire    ap_CS_fsm_state2;
wire   [15:0] add_ln31_1_fu_1482_p2;
reg   [15:0] add_ln31_1_reg_3867;
wire   [7:0] add_ln31_fu_1494_p2;
reg   [7:0] add_ln31_reg_3875;
wire   [2:0] trunc_ln31_fu_1500_p1;
reg   [2:0] trunc_ln31_reg_3880;
wire   [12:0] zext_ln31_fu_1514_p1;
reg   [12:0] zext_ln31_reg_3902;
wire   [0:0] cmp11_fu_1518_p2;
reg   [0:0] cmp11_reg_3924;
wire    ap_CS_fsm_state3;
wire   [6:0] tmp_fu_1573_p4;
reg   [6:0] tmp_reg_3973;
wire   [7:0] empty_58_fu_1626_p2;
reg   [7:0] empty_58_reg_4018;
wire   [7:0] empty_69_fu_1632_p2;
reg   [7:0] empty_69_reg_4025;
wire   [7:0] add_ln32_1_fu_1638_p2;
reg   [7:0] add_ln32_1_reg_4032;
wire   [31:0] v11_2_fu_1684_p19;
reg   [31:0] v11_2_reg_4037;
wire    ap_CS_fsm_state4;
wire   [31:0] v24_2_fu_1755_p19;
reg   [31:0] v24_2_reg_4042;
wire   [7:0] empty_80_fu_1876_p2;
reg   [7:0] empty_80_reg_4127;
wire   [7:0] empty_91_fu_1882_p2;
reg   [7:0] empty_91_reg_4134;
wire   [31:0] v35_2_fu_1920_p19;
reg   [31:0] v35_2_reg_4141;
wire    ap_CS_fsm_state5;
wire   [31:0] v46_2_fu_1991_p19;
reg   [31:0] v46_2_reg_4146;
wire   [7:0] empty_102_fu_2112_p2;
reg   [7:0] empty_102_reg_4231;
wire   [7:0] empty_113_fu_2118_p2;
reg   [7:0] empty_113_reg_4238;
wire   [31:0] v57_2_fu_2156_p19;
reg   [31:0] v57_2_reg_4245;
wire    ap_CS_fsm_state6;
wire   [31:0] v_fu_2227_p19;
reg   [31:0] v_reg_4250;
wire   [7:0] empty_124_fu_2348_p2;
reg   [7:0] empty_124_reg_4335;
wire   [7:0] add_ln32_fu_2354_p2;
reg   [7:0] add_ln32_reg_4342;
wire   [31:0] v1_fu_2392_p19;
reg   [31:0] v1_reg_4349;
wire    ap_CS_fsm_state7;
wire   [31:0] v2_fu_2463_p19;
reg   [31:0] v2_reg_4354;
wire   [7:0] empty_145_fu_2584_p2;
reg   [7:0] empty_145_reg_4439;
wire   [7:0] empty_156_fu_2590_p2;
reg   [7:0] empty_156_reg_4446;
wire   [15:0] mul_ln34_fu_2600_p2;
reg   [15:0] mul_ln34_reg_4453;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln49_fu_2617_p2;
reg   [15:0] mul_ln49_reg_4458;
wire   [15:0] mul_ln62_fu_2626_p2;
reg   [15:0] mul_ln62_reg_4463;
wire   [15:0] mul_ln75_fu_2635_p2;
reg   [15:0] mul_ln75_reg_4468;
wire   [15:0] mul_ln88_fu_2644_p2;
reg   [15:0] mul_ln88_reg_4473;
wire   [15:0] mul_ln101_fu_2653_p2;
reg   [15:0] mul_ln101_reg_4478;
wire   [15:0] mul_ln114_fu_2662_p2;
reg   [15:0] mul_ln114_reg_4483;
wire   [15:0] mul_ln127_fu_2671_p2;
reg   [15:0] mul_ln127_reg_4488;
wire   [15:0] mul_ln140_fu_2680_p2;
reg   [15:0] mul_ln140_reg_4493;
wire   [31:0] v3_fu_2718_p19;
reg   [31:0] v3_reg_4498;
wire   [31:0] v11_1_fu_2789_p19;
reg   [31:0] v11_1_reg_4503;
wire   [7:0] empty_167_fu_2910_p2;
reg   [7:0] empty_167_reg_4588;
wire   [7:0] empty_178_fu_2916_p2;
reg   [7:0] empty_178_reg_4595;
wire   [31:0] v24_1_fu_2954_p19;
reg   [31:0] v24_1_reg_4602;
wire    ap_CS_fsm_state9;
wire   [31:0] v35_1_fu_3025_p19;
reg   [31:0] v35_1_reg_4607;
wire   [7:0] empty_189_fu_3146_p2;
reg   [7:0] empty_189_reg_4692;
wire   [7:0] empty_200_fu_3152_p2;
reg   [7:0] empty_200_reg_4699;
wire   [31:0] v46_1_fu_3190_p19;
reg   [31:0] v46_1_reg_4706;
wire    ap_CS_fsm_state10;
wire   [31:0] v57_1_fu_3261_p19;
reg   [31:0] v57_1_reg_4711;
wire   [7:0] empty_211_fu_3382_p2;
reg   [7:0] empty_211_reg_4796;
wire   [7:0] empty_222_fu_3388_p2;
reg   [7:0] empty_222_reg_4803;
wire   [31:0] v68_1_fu_3426_p19;
reg   [31:0] v68_1_reg_4810;
wire    ap_CS_fsm_state11;
wire   [31:0] v79_1_fu_3497_p19;
reg   [31:0] v79_1_reg_4815;
wire   [15:0] mul_ln34_1_fu_3621_p2;
reg   [15:0] mul_ln34_1_reg_4900;
wire    ap_CS_fsm_state12;
wire   [15:0] mul_ln49_1_fu_3630_p2;
reg   [15:0] mul_ln49_1_reg_4905;
wire   [15:0] mul_ln62_1_fu_3639_p2;
reg   [15:0] mul_ln62_1_reg_4910;
wire   [15:0] mul_ln75_1_fu_3648_p2;
reg   [15:0] mul_ln75_1_reg_4915;
wire   [15:0] mul_ln88_1_fu_3657_p2;
reg   [15:0] mul_ln88_1_reg_4920;
wire   [15:0] mul_ln101_1_fu_3666_p2;
reg   [15:0] mul_ln101_1_reg_4925;
wire   [15:0] mul_ln114_1_fu_3675_p2;
reg   [15:0] mul_ln114_1_reg_4930;
wire   [15:0] mul_ln127_1_fu_3684_p2;
reg   [15:0] mul_ln127_1_reg_4935;
wire   [31:0] v90_1_fu_3722_p19;
reg   [31:0] v90_1_reg_4940;
wire   [15:0] mul_ln140_1_fu_3764_p2;
reg   [15:0] mul_ln140_1_reg_4945;
wire   [31:0] v101_1_fu_3802_p19;
reg   [31:0] v101_1_reg_4950;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4955_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4955_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4955_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4955_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4959_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4959_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4959_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4963_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4963_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4963_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4955_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4955_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4955_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4955_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4959_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4959_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4959_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4963_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4963_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4963_p_ce;
reg   [7:0] v6_reg_1396;
wire    ap_CS_fsm_state14;
wire   [0:0] icmp_ln31_fu_1488_p2;
reg    grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_start_reg;
wire    ap_CS_fsm_state13;
wire   [63:0] p_cast1136_fu_1561_p1;
wire   [0:0] icmp_ln32_fu_1524_p2;
wire   [63:0] p_cast_fu_1614_p1;
wire   [63:0] p_cast1137_fu_1823_p1;
wire   [63:0] p_cast1138_fu_1864_p1;
wire   [63:0] p_cast1139_fu_2059_p1;
wire   [63:0] p_cast1140_fu_2100_p1;
wire   [63:0] p_cast1141_fu_2295_p1;
wire   [63:0] p_cast1142_fu_2336_p1;
wire   [63:0] p_cast1143_fu_2531_p1;
wire   [63:0] p_cast1144_fu_2572_p1;
wire   [63:0] p_cast1145_fu_2857_p1;
wire   [63:0] p_cast1146_fu_2898_p1;
wire   [63:0] p_cast1147_fu_3093_p1;
wire   [63:0] p_cast1148_fu_3134_p1;
wire   [63:0] p_cast1149_fu_3329_p1;
wire   [63:0] p_cast1150_fu_3370_p1;
wire   [63:0] p_cast1151_fu_3565_p1;
wire   [63:0] p_cast1152_fu_3606_p1;
reg   [15:0] phi_mul_fu_152;
reg    ap_block_state1;
reg   [7:0] v5_fu_156;
reg    v236_read_local;
reg    v224_0_ce1_local;
reg   [12:0] v224_0_address1_local;
reg    v224_0_ce0_local;
reg   [12:0] v224_0_address0_local;
reg    v224_1_ce1_local;
reg   [12:0] v224_1_address1_local;
reg    v224_1_ce0_local;
reg   [12:0] v224_1_address0_local;
reg    v224_2_ce1_local;
reg   [12:0] v224_2_address1_local;
reg    v224_2_ce0_local;
reg   [12:0] v224_2_address0_local;
reg    v224_3_ce1_local;
reg   [12:0] v224_3_address1_local;
reg    v224_3_ce0_local;
reg   [12:0] v224_3_address0_local;
reg    v224_4_ce1_local;
reg   [12:0] v224_4_address1_local;
reg    v224_4_ce0_local;
reg   [12:0] v224_4_address0_local;
reg    v224_5_ce1_local;
reg   [12:0] v224_5_address1_local;
reg    v224_5_ce0_local;
reg   [12:0] v224_5_address0_local;
reg    v224_6_ce1_local;
reg   [12:0] v224_6_address1_local;
reg    v224_6_ce0_local;
reg   [12:0] v224_6_address0_local;
reg    v224_7_ce1_local;
reg   [12:0] v224_7_address1_local;
reg    v224_7_ce0_local;
reg   [12:0] v224_7_address0_local;
wire   [4:0] lshr_ln_fu_1504_p4;
wire   [10:0] tmp_2_fu_1538_p3;
wire   [12:0] p_shl1_fu_1530_p3;
wire   [12:0] p_shl1242_fu_1546_p1;
wire   [12:0] empty_fu_1550_p2;
wire   [12:0] empty_39_fu_1556_p2;
wire   [10:0] tmp_3_fu_1591_p3;
wire   [12:0] p_shl2_fu_1583_p3;
wire   [12:0] p_shl1240_fu_1599_p1;
wire   [12:0] empty_48_fu_1603_p2;
wire   [12:0] empty_49_fu_1609_p2;
wire   [31:0] v11_2_fu_1684_p2;
wire   [31:0] v11_2_fu_1684_p4;
wire   [31:0] v11_2_fu_1684_p6;
wire   [31:0] v11_2_fu_1684_p8;
wire   [31:0] v11_2_fu_1684_p10;
wire   [31:0] v11_2_fu_1684_p12;
wire   [31:0] v11_2_fu_1684_p14;
wire   [31:0] v11_2_fu_1684_p16;
wire   [31:0] v11_2_fu_1684_p17;
wire   [31:0] v24_2_fu_1755_p2;
wire   [31:0] v24_2_fu_1755_p4;
wire   [31:0] v24_2_fu_1755_p6;
wire   [31:0] v24_2_fu_1755_p8;
wire   [31:0] v24_2_fu_1755_p10;
wire   [31:0] v24_2_fu_1755_p12;
wire   [31:0] v24_2_fu_1755_p14;
wire   [31:0] v24_2_fu_1755_p16;
wire   [31:0] v24_2_fu_1755_p17;
wire   [10:0] tmp_4_fu_1801_p3;
wire   [12:0] p_shl3_fu_1794_p3;
wire   [12:0] p_shl1238_fu_1808_p1;
wire   [12:0] empty_59_fu_1812_p2;
wire   [12:0] empty_60_fu_1818_p2;
wire   [10:0] tmp_5_fu_1842_p3;
wire   [12:0] p_shl4_fu_1835_p3;
wire   [12:0] p_shl1236_fu_1849_p1;
wire   [12:0] empty_70_fu_1853_p2;
wire   [12:0] empty_71_fu_1859_p2;
wire   [31:0] v35_2_fu_1920_p2;
wire   [31:0] v35_2_fu_1920_p4;
wire   [31:0] v35_2_fu_1920_p6;
wire   [31:0] v35_2_fu_1920_p8;
wire   [31:0] v35_2_fu_1920_p10;
wire   [31:0] v35_2_fu_1920_p12;
wire   [31:0] v35_2_fu_1920_p14;
wire   [31:0] v35_2_fu_1920_p16;
wire   [31:0] v35_2_fu_1920_p17;
wire   [31:0] v46_2_fu_1991_p2;
wire   [31:0] v46_2_fu_1991_p4;
wire   [31:0] v46_2_fu_1991_p6;
wire   [31:0] v46_2_fu_1991_p8;
wire   [31:0] v46_2_fu_1991_p10;
wire   [31:0] v46_2_fu_1991_p12;
wire   [31:0] v46_2_fu_1991_p14;
wire   [31:0] v46_2_fu_1991_p16;
wire   [31:0] v46_2_fu_1991_p17;
wire   [10:0] tmp_6_fu_2037_p3;
wire   [12:0] p_shl5_fu_2030_p3;
wire   [12:0] p_shl1234_fu_2044_p1;
wire   [12:0] empty_81_fu_2048_p2;
wire   [12:0] empty_82_fu_2054_p2;
wire   [10:0] tmp_7_fu_2078_p3;
wire   [12:0] p_shl6_fu_2071_p3;
wire   [12:0] p_shl1232_fu_2085_p1;
wire   [12:0] empty_92_fu_2089_p2;
wire   [12:0] empty_93_fu_2095_p2;
wire   [31:0] v57_2_fu_2156_p2;
wire   [31:0] v57_2_fu_2156_p4;
wire   [31:0] v57_2_fu_2156_p6;
wire   [31:0] v57_2_fu_2156_p8;
wire   [31:0] v57_2_fu_2156_p10;
wire   [31:0] v57_2_fu_2156_p12;
wire   [31:0] v57_2_fu_2156_p14;
wire   [31:0] v57_2_fu_2156_p16;
wire   [31:0] v57_2_fu_2156_p17;
wire   [31:0] v_fu_2227_p2;
wire   [31:0] v_fu_2227_p4;
wire   [31:0] v_fu_2227_p6;
wire   [31:0] v_fu_2227_p8;
wire   [31:0] v_fu_2227_p10;
wire   [31:0] v_fu_2227_p12;
wire   [31:0] v_fu_2227_p14;
wire   [31:0] v_fu_2227_p16;
wire   [31:0] v_fu_2227_p17;
wire   [10:0] tmp_8_fu_2273_p3;
wire   [12:0] p_shl7_fu_2266_p3;
wire   [12:0] p_shl1230_fu_2280_p1;
wire   [12:0] empty_103_fu_2284_p2;
wire   [12:0] empty_104_fu_2290_p2;
wire   [10:0] tmp_9_fu_2314_p3;
wire   [12:0] p_shl8_fu_2307_p3;
wire   [12:0] p_shl1228_fu_2321_p1;
wire   [12:0] empty_114_fu_2325_p2;
wire   [12:0] empty_115_fu_2331_p2;
wire   [31:0] v1_fu_2392_p2;
wire   [31:0] v1_fu_2392_p4;
wire   [31:0] v1_fu_2392_p6;
wire   [31:0] v1_fu_2392_p8;
wire   [31:0] v1_fu_2392_p10;
wire   [31:0] v1_fu_2392_p12;
wire   [31:0] v1_fu_2392_p14;
wire   [31:0] v1_fu_2392_p16;
wire   [31:0] v1_fu_2392_p17;
wire   [31:0] v2_fu_2463_p2;
wire   [31:0] v2_fu_2463_p4;
wire   [31:0] v2_fu_2463_p6;
wire   [31:0] v2_fu_2463_p8;
wire   [31:0] v2_fu_2463_p10;
wire   [31:0] v2_fu_2463_p12;
wire   [31:0] v2_fu_2463_p14;
wire   [31:0] v2_fu_2463_p16;
wire   [31:0] v2_fu_2463_p17;
wire   [10:0] tmp_10_fu_2509_p3;
wire   [12:0] p_shl9_fu_2502_p3;
wire   [12:0] p_shl1226_fu_2516_p1;
wire   [12:0] empty_125_fu_2520_p2;
wire   [12:0] empty_126_fu_2526_p2;
wire   [10:0] tmp_11_fu_2550_p3;
wire   [12:0] p_shl10_fu_2543_p3;
wire   [12:0] p_shl1224_fu_2557_p1;
wire   [12:0] empty_135_fu_2561_p2;
wire   [12:0] empty_136_fu_2567_p2;
wire   [7:0] mul_ln34_fu_2600_p0;
wire   [8:0] mul_ln34_fu_2600_p1;
wire   [7:0] tmp_1_fu_2606_p3;
wire   [7:0] mul_ln49_fu_2617_p0;
wire   [8:0] mul_ln49_fu_2617_p1;
wire   [7:0] mul_ln62_fu_2626_p0;
wire   [8:0] mul_ln62_fu_2626_p1;
wire   [7:0] mul_ln75_fu_2635_p0;
wire   [8:0] mul_ln75_fu_2635_p1;
wire   [7:0] mul_ln88_fu_2644_p0;
wire   [8:0] mul_ln88_fu_2644_p1;
wire   [7:0] mul_ln101_fu_2653_p0;
wire   [8:0] mul_ln101_fu_2653_p1;
wire   [7:0] mul_ln114_fu_2662_p0;
wire   [8:0] mul_ln114_fu_2662_p1;
wire   [7:0] mul_ln127_fu_2671_p0;
wire   [8:0] mul_ln127_fu_2671_p1;
wire   [7:0] mul_ln140_fu_2680_p0;
wire   [8:0] mul_ln140_fu_2680_p1;
wire   [31:0] v3_fu_2718_p2;
wire   [31:0] v3_fu_2718_p4;
wire   [31:0] v3_fu_2718_p6;
wire   [31:0] v3_fu_2718_p8;
wire   [31:0] v3_fu_2718_p10;
wire   [31:0] v3_fu_2718_p12;
wire   [31:0] v3_fu_2718_p14;
wire   [31:0] v3_fu_2718_p16;
wire   [31:0] v3_fu_2718_p17;
wire   [31:0] v11_1_fu_2789_p2;
wire   [31:0] v11_1_fu_2789_p4;
wire   [31:0] v11_1_fu_2789_p6;
wire   [31:0] v11_1_fu_2789_p8;
wire   [31:0] v11_1_fu_2789_p10;
wire   [31:0] v11_1_fu_2789_p12;
wire   [31:0] v11_1_fu_2789_p14;
wire   [31:0] v11_1_fu_2789_p16;
wire   [31:0] v11_1_fu_2789_p17;
wire   [10:0] tmp_12_fu_2835_p3;
wire   [12:0] p_shl11_fu_2828_p3;
wire   [12:0] p_shl1222_fu_2842_p1;
wire   [12:0] empty_146_fu_2846_p2;
wire   [12:0] empty_147_fu_2852_p2;
wire   [10:0] tmp_13_fu_2876_p3;
wire   [12:0] p_shl12_fu_2869_p3;
wire   [12:0] p_shl1220_fu_2883_p1;
wire   [12:0] empty_157_fu_2887_p2;
wire   [12:0] empty_158_fu_2893_p2;
wire   [31:0] v24_1_fu_2954_p2;
wire   [31:0] v24_1_fu_2954_p4;
wire   [31:0] v24_1_fu_2954_p6;
wire   [31:0] v24_1_fu_2954_p8;
wire   [31:0] v24_1_fu_2954_p10;
wire   [31:0] v24_1_fu_2954_p12;
wire   [31:0] v24_1_fu_2954_p14;
wire   [31:0] v24_1_fu_2954_p16;
wire   [31:0] v24_1_fu_2954_p17;
wire   [31:0] v35_1_fu_3025_p2;
wire   [31:0] v35_1_fu_3025_p4;
wire   [31:0] v35_1_fu_3025_p6;
wire   [31:0] v35_1_fu_3025_p8;
wire   [31:0] v35_1_fu_3025_p10;
wire   [31:0] v35_1_fu_3025_p12;
wire   [31:0] v35_1_fu_3025_p14;
wire   [31:0] v35_1_fu_3025_p16;
wire   [31:0] v35_1_fu_3025_p17;
wire   [10:0] tmp_14_fu_3071_p3;
wire   [12:0] p_shl13_fu_3064_p3;
wire   [12:0] p_shl1218_fu_3078_p1;
wire   [12:0] empty_168_fu_3082_p2;
wire   [12:0] empty_169_fu_3088_p2;
wire   [10:0] tmp_15_fu_3112_p3;
wire   [12:0] p_shl14_fu_3105_p3;
wire   [12:0] p_shl1216_fu_3119_p1;
wire   [12:0] empty_179_fu_3123_p2;
wire   [12:0] empty_180_fu_3129_p2;
wire   [31:0] v46_1_fu_3190_p2;
wire   [31:0] v46_1_fu_3190_p4;
wire   [31:0] v46_1_fu_3190_p6;
wire   [31:0] v46_1_fu_3190_p8;
wire   [31:0] v46_1_fu_3190_p10;
wire   [31:0] v46_1_fu_3190_p12;
wire   [31:0] v46_1_fu_3190_p14;
wire   [31:0] v46_1_fu_3190_p16;
wire   [31:0] v46_1_fu_3190_p17;
wire   [31:0] v57_1_fu_3261_p2;
wire   [31:0] v57_1_fu_3261_p4;
wire   [31:0] v57_1_fu_3261_p6;
wire   [31:0] v57_1_fu_3261_p8;
wire   [31:0] v57_1_fu_3261_p10;
wire   [31:0] v57_1_fu_3261_p12;
wire   [31:0] v57_1_fu_3261_p14;
wire   [31:0] v57_1_fu_3261_p16;
wire   [31:0] v57_1_fu_3261_p17;
wire   [10:0] tmp_16_fu_3307_p3;
wire   [12:0] p_shl15_fu_3300_p3;
wire   [12:0] p_shl1214_fu_3314_p1;
wire   [12:0] empty_190_fu_3318_p2;
wire   [12:0] empty_191_fu_3324_p2;
wire   [10:0] tmp_17_fu_3348_p3;
wire   [12:0] p_shl16_fu_3341_p3;
wire   [12:0] p_shl1212_fu_3355_p1;
wire   [12:0] empty_201_fu_3359_p2;
wire   [12:0] empty_202_fu_3365_p2;
wire   [31:0] v68_1_fu_3426_p2;
wire   [31:0] v68_1_fu_3426_p4;
wire   [31:0] v68_1_fu_3426_p6;
wire   [31:0] v68_1_fu_3426_p8;
wire   [31:0] v68_1_fu_3426_p10;
wire   [31:0] v68_1_fu_3426_p12;
wire   [31:0] v68_1_fu_3426_p14;
wire   [31:0] v68_1_fu_3426_p16;
wire   [31:0] v68_1_fu_3426_p17;
wire   [31:0] v79_1_fu_3497_p2;
wire   [31:0] v79_1_fu_3497_p4;
wire   [31:0] v79_1_fu_3497_p6;
wire   [31:0] v79_1_fu_3497_p8;
wire   [31:0] v79_1_fu_3497_p10;
wire   [31:0] v79_1_fu_3497_p12;
wire   [31:0] v79_1_fu_3497_p14;
wire   [31:0] v79_1_fu_3497_p16;
wire   [31:0] v79_1_fu_3497_p17;
wire   [10:0] tmp_18_fu_3543_p3;
wire   [12:0] p_shl17_fu_3536_p3;
wire   [12:0] p_shl1210_fu_3550_p1;
wire   [12:0] empty_212_fu_3554_p2;
wire   [12:0] empty_213_fu_3560_p2;
wire   [10:0] tmp_19_fu_3584_p3;
wire   [12:0] p_shl_fu_3577_p3;
wire   [12:0] p_shl1208_fu_3591_p1;
wire   [12:0] empty_223_fu_3595_p2;
wire   [12:0] empty_224_fu_3601_p2;
wire   [7:0] mul_ln34_1_fu_3621_p0;
wire   [8:0] mul_ln34_1_fu_3621_p1;
wire   [7:0] mul_ln49_1_fu_3630_p0;
wire   [8:0] mul_ln49_1_fu_3630_p1;
wire   [7:0] mul_ln62_1_fu_3639_p0;
wire   [8:0] mul_ln62_1_fu_3639_p1;
wire   [7:0] mul_ln75_1_fu_3648_p0;
wire   [8:0] mul_ln75_1_fu_3648_p1;
wire   [7:0] mul_ln88_1_fu_3657_p0;
wire   [8:0] mul_ln88_1_fu_3657_p1;
wire   [7:0] mul_ln101_1_fu_3666_p0;
wire   [8:0] mul_ln101_1_fu_3666_p1;
wire   [7:0] mul_ln114_1_fu_3675_p0;
wire   [8:0] mul_ln114_1_fu_3675_p1;
wire   [7:0] mul_ln127_1_fu_3684_p0;
wire   [8:0] mul_ln127_1_fu_3684_p1;
wire   [31:0] v90_1_fu_3722_p2;
wire   [31:0] v90_1_fu_3722_p4;
wire   [31:0] v90_1_fu_3722_p6;
wire   [31:0] v90_1_fu_3722_p8;
wire   [31:0] v90_1_fu_3722_p10;
wire   [31:0] v90_1_fu_3722_p12;
wire   [31:0] v90_1_fu_3722_p14;
wire   [31:0] v90_1_fu_3722_p16;
wire   [31:0] v90_1_fu_3722_p17;
wire   [7:0] mul_ln140_1_fu_3764_p0;
wire   [8:0] mul_ln140_1_fu_3764_p1;
wire   [31:0] v101_1_fu_3802_p2;
wire   [31:0] v101_1_fu_3802_p4;
wire   [31:0] v101_1_fu_3802_p6;
wire   [31:0] v101_1_fu_3802_p8;
wire   [31:0] v101_1_fu_3802_p10;
wire   [31:0] v101_1_fu_3802_p12;
wire   [31:0] v101_1_fu_3802_p14;
wire   [31:0] v101_1_fu_3802_p16;
wire   [31:0] v101_1_fu_3802_p17;
reg   [31:0] grp_fu_4955_p0;
reg   [31:0] grp_fu_4955_p1;
reg    grp_fu_4955_ce;
reg   [31:0] grp_fu_4959_p0;
reg   [31:0] grp_fu_4959_p1;
reg    grp_fu_4959_ce;
reg   [31:0] grp_fu_4963_p0;
reg   [31:0] grp_fu_4963_p1;
reg    grp_fu_4963_ce;
reg   [13:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire   [15:0] mul_ln101_1_fu_3666_p00;
wire   [15:0] mul_ln101_fu_2653_p00;
wire   [15:0] mul_ln114_1_fu_3675_p00;
wire   [15:0] mul_ln114_fu_2662_p00;
wire   [15:0] mul_ln127_1_fu_3684_p00;
wire   [15:0] mul_ln127_fu_2671_p00;
wire   [15:0] mul_ln140_1_fu_3764_p00;
wire   [15:0] mul_ln140_fu_2680_p00;
wire   [15:0] mul_ln34_1_fu_3621_p00;
wire   [15:0] mul_ln34_fu_2600_p00;
wire   [15:0] mul_ln49_1_fu_3630_p00;
wire   [15:0] mul_ln49_fu_2617_p00;
wire   [15:0] mul_ln62_1_fu_3639_p00;
wire   [15:0] mul_ln62_fu_2626_p00;
wire   [15:0] mul_ln75_1_fu_3648_p00;
wire   [15:0] mul_ln75_fu_2635_p00;
wire   [15:0] mul_ln88_1_fu_3657_p00;
wire   [15:0] mul_ln88_fu_2644_p00;
wire   [2:0] v11_2_fu_1684_p1;
wire   [2:0] v11_2_fu_1684_p3;
wire   [2:0] v11_2_fu_1684_p5;
wire   [2:0] v11_2_fu_1684_p7;
wire  signed [2:0] v11_2_fu_1684_p9;
wire  signed [2:0] v11_2_fu_1684_p11;
wire  signed [2:0] v11_2_fu_1684_p13;
wire  signed [2:0] v11_2_fu_1684_p15;
wire   [2:0] v24_2_fu_1755_p1;
wire   [2:0] v24_2_fu_1755_p3;
wire   [2:0] v24_2_fu_1755_p5;
wire   [2:0] v24_2_fu_1755_p7;
wire  signed [2:0] v24_2_fu_1755_p9;
wire  signed [2:0] v24_2_fu_1755_p11;
wire  signed [2:0] v24_2_fu_1755_p13;
wire  signed [2:0] v24_2_fu_1755_p15;
wire   [2:0] v35_2_fu_1920_p1;
wire   [2:0] v35_2_fu_1920_p3;
wire   [2:0] v35_2_fu_1920_p5;
wire   [2:0] v35_2_fu_1920_p7;
wire  signed [2:0] v35_2_fu_1920_p9;
wire  signed [2:0] v35_2_fu_1920_p11;
wire  signed [2:0] v35_2_fu_1920_p13;
wire  signed [2:0] v35_2_fu_1920_p15;
wire   [2:0] v46_2_fu_1991_p1;
wire   [2:0] v46_2_fu_1991_p3;
wire   [2:0] v46_2_fu_1991_p5;
wire   [2:0] v46_2_fu_1991_p7;
wire  signed [2:0] v46_2_fu_1991_p9;
wire  signed [2:0] v46_2_fu_1991_p11;
wire  signed [2:0] v46_2_fu_1991_p13;
wire  signed [2:0] v46_2_fu_1991_p15;
wire   [2:0] v57_2_fu_2156_p1;
wire   [2:0] v57_2_fu_2156_p3;
wire   [2:0] v57_2_fu_2156_p5;
wire   [2:0] v57_2_fu_2156_p7;
wire  signed [2:0] v57_2_fu_2156_p9;
wire  signed [2:0] v57_2_fu_2156_p11;
wire  signed [2:0] v57_2_fu_2156_p13;
wire  signed [2:0] v57_2_fu_2156_p15;
wire   [2:0] v_fu_2227_p1;
wire   [2:0] v_fu_2227_p3;
wire   [2:0] v_fu_2227_p5;
wire   [2:0] v_fu_2227_p7;
wire  signed [2:0] v_fu_2227_p9;
wire  signed [2:0] v_fu_2227_p11;
wire  signed [2:0] v_fu_2227_p13;
wire  signed [2:0] v_fu_2227_p15;
wire   [2:0] v1_fu_2392_p1;
wire   [2:0] v1_fu_2392_p3;
wire   [2:0] v1_fu_2392_p5;
wire   [2:0] v1_fu_2392_p7;
wire  signed [2:0] v1_fu_2392_p9;
wire  signed [2:0] v1_fu_2392_p11;
wire  signed [2:0] v1_fu_2392_p13;
wire  signed [2:0] v1_fu_2392_p15;
wire   [2:0] v2_fu_2463_p1;
wire   [2:0] v2_fu_2463_p3;
wire   [2:0] v2_fu_2463_p5;
wire   [2:0] v2_fu_2463_p7;
wire  signed [2:0] v2_fu_2463_p9;
wire  signed [2:0] v2_fu_2463_p11;
wire  signed [2:0] v2_fu_2463_p13;
wire  signed [2:0] v2_fu_2463_p15;
wire   [2:0] v3_fu_2718_p1;
wire   [2:0] v3_fu_2718_p3;
wire   [2:0] v3_fu_2718_p5;
wire   [2:0] v3_fu_2718_p7;
wire  signed [2:0] v3_fu_2718_p9;
wire  signed [2:0] v3_fu_2718_p11;
wire  signed [2:0] v3_fu_2718_p13;
wire  signed [2:0] v3_fu_2718_p15;
wire   [2:0] v11_1_fu_2789_p1;
wire   [2:0] v11_1_fu_2789_p3;
wire   [2:0] v11_1_fu_2789_p5;
wire   [2:0] v11_1_fu_2789_p7;
wire  signed [2:0] v11_1_fu_2789_p9;
wire  signed [2:0] v11_1_fu_2789_p11;
wire  signed [2:0] v11_1_fu_2789_p13;
wire  signed [2:0] v11_1_fu_2789_p15;
wire   [2:0] v24_1_fu_2954_p1;
wire   [2:0] v24_1_fu_2954_p3;
wire   [2:0] v24_1_fu_2954_p5;
wire   [2:0] v24_1_fu_2954_p7;
wire  signed [2:0] v24_1_fu_2954_p9;
wire  signed [2:0] v24_1_fu_2954_p11;
wire  signed [2:0] v24_1_fu_2954_p13;
wire  signed [2:0] v24_1_fu_2954_p15;
wire   [2:0] v35_1_fu_3025_p1;
wire   [2:0] v35_1_fu_3025_p3;
wire   [2:0] v35_1_fu_3025_p5;
wire   [2:0] v35_1_fu_3025_p7;
wire  signed [2:0] v35_1_fu_3025_p9;
wire  signed [2:0] v35_1_fu_3025_p11;
wire  signed [2:0] v35_1_fu_3025_p13;
wire  signed [2:0] v35_1_fu_3025_p15;
wire   [2:0] v46_1_fu_3190_p1;
wire   [2:0] v46_1_fu_3190_p3;
wire   [2:0] v46_1_fu_3190_p5;
wire   [2:0] v46_1_fu_3190_p7;
wire  signed [2:0] v46_1_fu_3190_p9;
wire  signed [2:0] v46_1_fu_3190_p11;
wire  signed [2:0] v46_1_fu_3190_p13;
wire  signed [2:0] v46_1_fu_3190_p15;
wire   [2:0] v57_1_fu_3261_p1;
wire   [2:0] v57_1_fu_3261_p3;
wire   [2:0] v57_1_fu_3261_p5;
wire   [2:0] v57_1_fu_3261_p7;
wire  signed [2:0] v57_1_fu_3261_p9;
wire  signed [2:0] v57_1_fu_3261_p11;
wire  signed [2:0] v57_1_fu_3261_p13;
wire  signed [2:0] v57_1_fu_3261_p15;
wire   [2:0] v68_1_fu_3426_p1;
wire   [2:0] v68_1_fu_3426_p3;
wire   [2:0] v68_1_fu_3426_p5;
wire   [2:0] v68_1_fu_3426_p7;
wire  signed [2:0] v68_1_fu_3426_p9;
wire  signed [2:0] v68_1_fu_3426_p11;
wire  signed [2:0] v68_1_fu_3426_p13;
wire  signed [2:0] v68_1_fu_3426_p15;
wire   [2:0] v79_1_fu_3497_p1;
wire   [2:0] v79_1_fu_3497_p3;
wire   [2:0] v79_1_fu_3497_p5;
wire   [2:0] v79_1_fu_3497_p7;
wire  signed [2:0] v79_1_fu_3497_p9;
wire  signed [2:0] v79_1_fu_3497_p11;
wire  signed [2:0] v79_1_fu_3497_p13;
wire  signed [2:0] v79_1_fu_3497_p15;
wire   [2:0] v90_1_fu_3722_p1;
wire   [2:0] v90_1_fu_3722_p3;
wire   [2:0] v90_1_fu_3722_p5;
wire   [2:0] v90_1_fu_3722_p7;
wire  signed [2:0] v90_1_fu_3722_p9;
wire  signed [2:0] v90_1_fu_3722_p11;
wire  signed [2:0] v90_1_fu_3722_p13;
wire  signed [2:0] v90_1_fu_3722_p15;
wire   [2:0] v101_1_fu_3802_p1;
wire   [2:0] v101_1_fu_3802_p3;
wire   [2:0] v101_1_fu_3802_p5;
wire   [2:0] v101_1_fu_3802_p7;
wire  signed [2:0] v101_1_fu_3802_p9;
wire  signed [2:0] v101_1_fu_3802_p11;
wire  signed [2:0] v101_1_fu_3802_p13;
wire  signed [2:0] v101_1_fu_3802_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_start_reg = 1'b0;
#0 phi_mul_fu_152 = 16'd0;
#0 v5_fu_156 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_2 grp_kernel_2mm_node0_Pipeline_label_2_fu_1408(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_ready),.phi_mul(phi_mul_load_reg_3861),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v228_ce1),.v228_q1(v228_q1),.mul_ln34(mul_ln34_reg_4453),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_d1),.v229_q1(v229_q1),.mul_ln49(mul_ln49_reg_4458),.mul_ln62(mul_ln62_reg_4463),.mul_ln75(mul_ln75_reg_4468),.mul_ln88(mul_ln88_reg_4473),.mul_ln101(mul_ln101_reg_4478),.mul_ln114(mul_ln114_reg_4483),.mul_ln127(mul_ln127_reg_4488),.mul_ln140(mul_ln140_reg_4493),.v4(v4),.cmp11(cmp11_reg_3924),.v11_2(v11_2_reg_4037),.v24_2(v24_2_reg_4042),.v35_2(v35_2_reg_4141),.v46_2(v46_2_reg_4146),.v57_2(v57_2_reg_4245),.v68(v_reg_4250),.v79(v1_reg_4349),.v90(v2_reg_4354),.v101(v3_reg_4498),.grp_fu_4955_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4955_p_din0),.grp_fu_4955_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4955_p_din1),.grp_fu_4955_p_opcode(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4955_p_opcode),.grp_fu_4955_p_dout0(grp_fu_148_p_dout0),.grp_fu_4955_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4955_p_ce),.grp_fu_4959_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4959_p_din0),.grp_fu_4959_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4959_p_din1),.grp_fu_4959_p_dout0(grp_fu_152_p_dout0),.grp_fu_4959_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4959_p_ce),.grp_fu_4963_p_din0(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4963_p_din0),.grp_fu_4963_p_din1(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4963_p_din1),.grp_fu_4963_p_dout0(grp_fu_156_p_dout0),.grp_fu_4963_p_ce(grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4963_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_23 grp_kernel_2mm_node0_Pipeline_label_23_fu_1437(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_ready),.phi_mul(phi_mul_load_reg_3861),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v228_ce1),.v228_q1(v228_q1),.mul_ln34_1(mul_ln34_1_reg_4900),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_d1),.v229_q1(v229_q1),.mul_ln49_1(mul_ln49_1_reg_4905),.mul_ln62_1(mul_ln62_1_reg_4910),.mul_ln75_1(mul_ln75_1_reg_4915),.mul_ln88_1(mul_ln88_1_reg_4920),.mul_ln101_1(mul_ln101_1_reg_4925),.mul_ln114_1(mul_ln114_1_reg_4930),.mul_ln127_1(mul_ln127_1_reg_4935),.mul_ln140_1(mul_ln140_1_reg_4945),.v4(v4),.cmp11(cmp11_reg_3924),.v11_1(v11_1_reg_4503),.v24_1(v24_1_reg_4602),.v35_1(v35_1_reg_4607),.v46_1(v46_1_reg_4706),.v57_1(v57_1_reg_4711),.v68_1(v68_1_reg_4810),.v79_1(v79_1_reg_4815),.v90_1(v90_1_reg_4940),.v101_1(v101_1_reg_4950),.grp_fu_4955_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4955_p_din0),.grp_fu_4955_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4955_p_din1),.grp_fu_4955_p_opcode(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4955_p_opcode),.grp_fu_4955_p_dout0(grp_fu_148_p_dout0),.grp_fu_4955_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4955_p_ce),.grp_fu_4959_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4959_p_din0),.grp_fu_4959_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4959_p_din1),.grp_fu_4959_p_dout0(grp_fu_152_p_dout0),.grp_fu_4959_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4959_p_ce),.grp_fu_4963_p_din0(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4963_p_din0),.grp_fu_4963_p_din1(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4963_p_din1),.grp_fu_4963_p_dout0(grp_fu_156_p_dout0),.grp_fu_4963_p_ce(grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4963_p_ce));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U91(.din0(v11_2_fu_1684_p2),.din1(v11_2_fu_1684_p4),.din2(v11_2_fu_1684_p6),.din3(v11_2_fu_1684_p8),.din4(v11_2_fu_1684_p10),.din5(v11_2_fu_1684_p12),.din6(v11_2_fu_1684_p14),.din7(v11_2_fu_1684_p16),.def(v11_2_fu_1684_p17),.sel(trunc_ln31_reg_3880),.dout(v11_2_fu_1684_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U92(.din0(v24_2_fu_1755_p2),.din1(v24_2_fu_1755_p4),.din2(v24_2_fu_1755_p6),.din3(v24_2_fu_1755_p8),.din4(v24_2_fu_1755_p10),.din5(v24_2_fu_1755_p12),.din6(v24_2_fu_1755_p14),.din7(v24_2_fu_1755_p16),.def(v24_2_fu_1755_p17),.sel(trunc_ln31_reg_3880),.dout(v24_2_fu_1755_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U93(.din0(v35_2_fu_1920_p2),.din1(v35_2_fu_1920_p4),.din2(v35_2_fu_1920_p6),.din3(v35_2_fu_1920_p8),.din4(v35_2_fu_1920_p10),.din5(v35_2_fu_1920_p12),.din6(v35_2_fu_1920_p14),.din7(v35_2_fu_1920_p16),.def(v35_2_fu_1920_p17),.sel(trunc_ln31_reg_3880),.dout(v35_2_fu_1920_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U94(.din0(v46_2_fu_1991_p2),.din1(v46_2_fu_1991_p4),.din2(v46_2_fu_1991_p6),.din3(v46_2_fu_1991_p8),.din4(v46_2_fu_1991_p10),.din5(v46_2_fu_1991_p12),.din6(v46_2_fu_1991_p14),.din7(v46_2_fu_1991_p16),.def(v46_2_fu_1991_p17),.sel(trunc_ln31_reg_3880),.dout(v46_2_fu_1991_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U95(.din0(v57_2_fu_2156_p2),.din1(v57_2_fu_2156_p4),.din2(v57_2_fu_2156_p6),.din3(v57_2_fu_2156_p8),.din4(v57_2_fu_2156_p10),.din5(v57_2_fu_2156_p12),.din6(v57_2_fu_2156_p14),.din7(v57_2_fu_2156_p16),.def(v57_2_fu_2156_p17),.sel(trunc_ln31_reg_3880),.dout(v57_2_fu_2156_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U96(.din0(v_fu_2227_p2),.din1(v_fu_2227_p4),.din2(v_fu_2227_p6),.din3(v_fu_2227_p8),.din4(v_fu_2227_p10),.din5(v_fu_2227_p12),.din6(v_fu_2227_p14),.din7(v_fu_2227_p16),.def(v_fu_2227_p17),.sel(trunc_ln31_reg_3880),.dout(v_fu_2227_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U97(.din0(v1_fu_2392_p2),.din1(v1_fu_2392_p4),.din2(v1_fu_2392_p6),.din3(v1_fu_2392_p8),.din4(v1_fu_2392_p10),.din5(v1_fu_2392_p12),.din6(v1_fu_2392_p14),.din7(v1_fu_2392_p16),.def(v1_fu_2392_p17),.sel(trunc_ln31_reg_3880),.dout(v1_fu_2392_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U98(.din0(v2_fu_2463_p2),.din1(v2_fu_2463_p4),.din2(v2_fu_2463_p6),.din3(v2_fu_2463_p8),.din4(v2_fu_2463_p10),.din5(v2_fu_2463_p12),.din6(v2_fu_2463_p14),.din7(v2_fu_2463_p16),.def(v2_fu_2463_p17),.sel(trunc_ln31_reg_3880),.dout(v2_fu_2463_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U99(.din0(mul_ln34_fu_2600_p0),.din1(mul_ln34_fu_2600_p1),.dout(mul_ln34_fu_2600_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U100(.din0(mul_ln49_fu_2617_p0),.din1(mul_ln49_fu_2617_p1),.dout(mul_ln49_fu_2617_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U101(.din0(mul_ln62_fu_2626_p0),.din1(mul_ln62_fu_2626_p1),.dout(mul_ln62_fu_2626_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U102(.din0(mul_ln75_fu_2635_p0),.din1(mul_ln75_fu_2635_p1),.dout(mul_ln75_fu_2635_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U103(.din0(mul_ln88_fu_2644_p0),.din1(mul_ln88_fu_2644_p1),.dout(mul_ln88_fu_2644_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U104(.din0(mul_ln101_fu_2653_p0),.din1(mul_ln101_fu_2653_p1),.dout(mul_ln101_fu_2653_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U105(.din0(mul_ln114_fu_2662_p0),.din1(mul_ln114_fu_2662_p1),.dout(mul_ln114_fu_2662_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U106(.din0(mul_ln127_fu_2671_p0),.din1(mul_ln127_fu_2671_p1),.dout(mul_ln127_fu_2671_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U107(.din0(mul_ln140_fu_2680_p0),.din1(mul_ln140_fu_2680_p1),.dout(mul_ln140_fu_2680_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U108(.din0(v3_fu_2718_p2),.din1(v3_fu_2718_p4),.din2(v3_fu_2718_p6),.din3(v3_fu_2718_p8),.din4(v3_fu_2718_p10),.din5(v3_fu_2718_p12),.din6(v3_fu_2718_p14),.din7(v3_fu_2718_p16),.def(v3_fu_2718_p17),.sel(trunc_ln31_reg_3880),.dout(v3_fu_2718_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U109(.din0(v11_1_fu_2789_p2),.din1(v11_1_fu_2789_p4),.din2(v11_1_fu_2789_p6),.din3(v11_1_fu_2789_p8),.din4(v11_1_fu_2789_p10),.din5(v11_1_fu_2789_p12),.din6(v11_1_fu_2789_p14),.din7(v11_1_fu_2789_p16),.def(v11_1_fu_2789_p17),.sel(trunc_ln31_reg_3880),.dout(v11_1_fu_2789_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U110(.din0(v24_1_fu_2954_p2),.din1(v24_1_fu_2954_p4),.din2(v24_1_fu_2954_p6),.din3(v24_1_fu_2954_p8),.din4(v24_1_fu_2954_p10),.din5(v24_1_fu_2954_p12),.din6(v24_1_fu_2954_p14),.din7(v24_1_fu_2954_p16),.def(v24_1_fu_2954_p17),.sel(trunc_ln31_reg_3880),.dout(v24_1_fu_2954_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U111(.din0(v35_1_fu_3025_p2),.din1(v35_1_fu_3025_p4),.din2(v35_1_fu_3025_p6),.din3(v35_1_fu_3025_p8),.din4(v35_1_fu_3025_p10),.din5(v35_1_fu_3025_p12),.din6(v35_1_fu_3025_p14),.din7(v35_1_fu_3025_p16),.def(v35_1_fu_3025_p17),.sel(trunc_ln31_reg_3880),.dout(v35_1_fu_3025_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U112(.din0(v46_1_fu_3190_p2),.din1(v46_1_fu_3190_p4),.din2(v46_1_fu_3190_p6),.din3(v46_1_fu_3190_p8),.din4(v46_1_fu_3190_p10),.din5(v46_1_fu_3190_p12),.din6(v46_1_fu_3190_p14),.din7(v46_1_fu_3190_p16),.def(v46_1_fu_3190_p17),.sel(trunc_ln31_reg_3880),.dout(v46_1_fu_3190_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U113(.din0(v57_1_fu_3261_p2),.din1(v57_1_fu_3261_p4),.din2(v57_1_fu_3261_p6),.din3(v57_1_fu_3261_p8),.din4(v57_1_fu_3261_p10),.din5(v57_1_fu_3261_p12),.din6(v57_1_fu_3261_p14),.din7(v57_1_fu_3261_p16),.def(v57_1_fu_3261_p17),.sel(trunc_ln31_reg_3880),.dout(v57_1_fu_3261_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U114(.din0(v68_1_fu_3426_p2),.din1(v68_1_fu_3426_p4),.din2(v68_1_fu_3426_p6),.din3(v68_1_fu_3426_p8),.din4(v68_1_fu_3426_p10),.din5(v68_1_fu_3426_p12),.din6(v68_1_fu_3426_p14),.din7(v68_1_fu_3426_p16),.def(v68_1_fu_3426_p17),.sel(trunc_ln31_reg_3880),.dout(v68_1_fu_3426_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U115(.din0(v79_1_fu_3497_p2),.din1(v79_1_fu_3497_p4),.din2(v79_1_fu_3497_p6),.din3(v79_1_fu_3497_p8),.din4(v79_1_fu_3497_p10),.din5(v79_1_fu_3497_p12),.din6(v79_1_fu_3497_p14),.din7(v79_1_fu_3497_p16),.def(v79_1_fu_3497_p17),.sel(trunc_ln31_reg_3880),.dout(v79_1_fu_3497_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U116(.din0(mul_ln34_1_fu_3621_p0),.din1(mul_ln34_1_fu_3621_p1),.dout(mul_ln34_1_fu_3621_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U117(.din0(mul_ln49_1_fu_3630_p0),.din1(mul_ln49_1_fu_3630_p1),.dout(mul_ln49_1_fu_3630_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U118(.din0(mul_ln62_1_fu_3639_p0),.din1(mul_ln62_1_fu_3639_p1),.dout(mul_ln62_1_fu_3639_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U119(.din0(mul_ln75_1_fu_3648_p0),.din1(mul_ln75_1_fu_3648_p1),.dout(mul_ln75_1_fu_3648_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U120(.din0(mul_ln88_1_fu_3657_p0),.din1(mul_ln88_1_fu_3657_p1),.dout(mul_ln88_1_fu_3657_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U121(.din0(mul_ln101_1_fu_3666_p0),.din1(mul_ln101_1_fu_3666_p1),.dout(mul_ln101_1_fu_3666_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U122(.din0(mul_ln114_1_fu_3675_p0),.din1(mul_ln114_1_fu_3675_p1),.dout(mul_ln114_1_fu_3675_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U123(.din0(mul_ln127_1_fu_3684_p0),.din1(mul_ln127_1_fu_3684_p1),.dout(mul_ln127_1_fu_3684_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U124(.din0(v90_1_fu_3722_p2),.din1(v90_1_fu_3722_p4),.din2(v90_1_fu_3722_p6),.din3(v90_1_fu_3722_p8),.din4(v90_1_fu_3722_p10),.din5(v90_1_fu_3722_p12),.din6(v90_1_fu_3722_p14),.din7(v90_1_fu_3722_p16),.def(v90_1_fu_3722_p17),.sel(trunc_ln31_reg_3880),.dout(v90_1_fu_3722_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U125(.din0(mul_ln140_1_fu_3764_p0),.din1(mul_ln140_1_fu_3764_p1),.dout(mul_ln140_1_fu_3764_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U126(.din0(v101_1_fu_3802_p2),.din1(v101_1_fu_3802_p4),.din2(v101_1_fu_3802_p6),.din3(v101_1_fu_3802_p8),.din4(v101_1_fu_3802_p10),.din5(v101_1_fu_3802_p12),.din6(v101_1_fu_3802_p14),.din7(v101_1_fu_3802_p16),.def(v101_1_fu_3802_p17),.sel(trunc_ln31_reg_3880),.dout(v101_1_fu_3802_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_152 <= 16'd0;
    end else if (((icmp_ln32_fu_1524_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_152 <= add_ln31_1_reg_3867;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_156 <= 8'd0;
    end else if (((icmp_ln32_fu_1524_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v5_fu_156 <= add_ln31_reg_3875;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln31_fu_1488_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v6_reg_1396 <= 8'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
        v6_reg_1396 <= add_ln32_1_reg_4032;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln31_1_reg_3867 <= add_ln31_1_fu_1482_p2;
        add_ln31_reg_3875 <= add_ln31_fu_1494_p2;
        cmp11_reg_3924 <= cmp11_fu_1518_p2;
        phi_mul_load_reg_3861 <= phi_mul_fu_152;
        trunc_ln31_reg_3880 <= trunc_ln31_fu_1500_p1;
        zext_ln31_reg_3902[4 : 0] <= zext_ln31_fu_1514_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln32_1_reg_4032 <= add_ln32_1_fu_1638_p2;
        empty_58_reg_4018 <= empty_58_fu_1626_p2;
        empty_69_reg_4025 <= empty_69_fu_1632_p2;
        tmp_reg_3973 <= {{v6_reg_1396[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln32_reg_4342 <= add_ln32_fu_2354_p2;
        empty_124_reg_4335 <= empty_124_fu_2348_p2;
        v57_2_reg_4245 <= v57_2_fu_2156_p19;
        v_reg_4250 <= v_fu_2227_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_102_reg_4231 <= empty_102_fu_2112_p2;
        empty_113_reg_4238 <= empty_113_fu_2118_p2;
        v35_2_reg_4141 <= v35_2_fu_1920_p19;
        v46_2_reg_4146 <= v46_2_fu_1991_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_145_reg_4439 <= empty_145_fu_2584_p2;
        empty_156_reg_4446 <= empty_156_fu_2590_p2;
        v1_reg_4349 <= v1_fu_2392_p19;
        v2_reg_4354 <= v2_fu_2463_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_167_reg_4588 <= empty_167_fu_2910_p2;
        empty_178_reg_4595 <= empty_178_fu_2916_p2;
        mul_ln101_reg_4478 <= mul_ln101_fu_2653_p2;
        mul_ln114_reg_4483 <= mul_ln114_fu_2662_p2;
        mul_ln127_reg_4488 <= mul_ln127_fu_2671_p2;
        mul_ln140_reg_4493 <= mul_ln140_fu_2680_p2;
        mul_ln34_reg_4453 <= mul_ln34_fu_2600_p2;
        mul_ln49_reg_4458 <= mul_ln49_fu_2617_p2;
        mul_ln62_reg_4463 <= mul_ln62_fu_2626_p2;
        mul_ln75_reg_4468 <= mul_ln75_fu_2635_p2;
        mul_ln88_reg_4473 <= mul_ln88_fu_2644_p2;
        v11_1_reg_4503 <= v11_1_fu_2789_p19;
        v3_reg_4498 <= v3_fu_2718_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_189_reg_4692 <= empty_189_fu_3146_p2;
        empty_200_reg_4699 <= empty_200_fu_3152_p2;
        v24_1_reg_4602 <= v24_1_fu_2954_p19;
        v35_1_reg_4607 <= v35_1_fu_3025_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_211_reg_4796 <= empty_211_fu_3382_p2;
        empty_222_reg_4803 <= empty_222_fu_3388_p2;
        v46_1_reg_4706 <= v46_1_fu_3190_p19;
        v57_1_reg_4711 <= v57_1_fu_3261_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_80_reg_4127 <= empty_80_fu_1876_p2;
        empty_91_reg_4134 <= empty_91_fu_1882_p2;
        v11_2_reg_4037 <= v11_2_fu_1684_p19;
        v24_2_reg_4042 <= v24_2_fu_1755_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        mul_ln101_1_reg_4925 <= mul_ln101_1_fu_3666_p2;
        mul_ln114_1_reg_4930 <= mul_ln114_1_fu_3675_p2;
        mul_ln127_1_reg_4935 <= mul_ln127_1_fu_3684_p2;
        mul_ln140_1_reg_4945 <= mul_ln140_1_fu_3764_p2;
        mul_ln34_1_reg_4900 <= mul_ln34_1_fu_3621_p2;
        mul_ln49_1_reg_4905 <= mul_ln49_1_fu_3630_p2;
        mul_ln62_1_reg_4910 <= mul_ln62_1_fu_3639_p2;
        mul_ln75_1_reg_4915 <= mul_ln75_1_fu_3648_p2;
        mul_ln88_1_reg_4920 <= mul_ln88_1_fu_3657_p2;
        v101_1_reg_4950 <= v101_1_fu_3802_p19;
        v90_1_reg_4940 <= v90_1_fu_3722_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v68_1_reg_4810 <= v68_1_fu_3426_p19;
        v79_1_reg_4815 <= v79_1_fu_3497_p19;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
assign ap_ST_fsm_state12_blk = 1'b0;
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
assign ap_ST_fsm_state6_blk = 1'b0;
assign ap_ST_fsm_state7_blk = 1'b0;
assign ap_ST_fsm_state8_blk = 1'b0;
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)) | ((icmp_ln31_fu_1488_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln31_fu_1488_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4955_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4955_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4955_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4955_p_ce;
    end else begin
        grp_fu_4955_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4955_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4955_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4955_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4955_p_din0;
    end else begin
        grp_fu_4955_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4955_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4955_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4955_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4955_p_din1;
    end else begin
        grp_fu_4955_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4959_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4959_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4959_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4959_p_ce;
    end else begin
        grp_fu_4959_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4959_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4959_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4959_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4959_p_din0;
    end else begin
        grp_fu_4959_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4959_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4959_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4959_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4959_p_din1;
    end else begin
        grp_fu_4959_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4963_ce = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4963_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4963_ce = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4963_p_ce;
    end else begin
        grp_fu_4963_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4963_p0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4963_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4963_p0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4963_p_din0;
    end else begin
        grp_fu_4963_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_4963_p1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_grp_fu_4963_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_4963_p1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_grp_fu_4963_p_din1;
    end else begin
        grp_fu_4963_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address0_local = p_cast1152_fu_3606_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address0_local = p_cast1150_fu_3370_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address0_local = p_cast1148_fu_3134_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address0_local = p_cast1146_fu_2898_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address0_local = p_cast1144_fu_2572_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address0_local = p_cast1142_fu_2336_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address0_local = p_cast1140_fu_2100_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0_local = p_cast1138_fu_1864_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address0_local = p_cast_fu_1614_p1;
    end else begin
        v224_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_0_address1_local = p_cast1151_fu_3565_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_0_address1_local = p_cast1149_fu_3329_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_0_address1_local = p_cast1147_fu_3093_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address1_local = p_cast1145_fu_2857_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_0_address1_local = p_cast1143_fu_2531_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_0_address1_local = p_cast1141_fu_2295_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_0_address1_local = p_cast1139_fu_2059_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1_local = p_cast1137_fu_1823_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_0_address1_local = p_cast1136_fu_1561_p1;
    end else begin
        v224_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_0_ce0_local = 1'b1;
    end else begin
        v224_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_0_ce1_local = 1'b1;
    end else begin
        v224_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address0_local = p_cast1152_fu_3606_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address0_local = p_cast1150_fu_3370_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address0_local = p_cast1148_fu_3134_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address0_local = p_cast1146_fu_2898_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address0_local = p_cast1144_fu_2572_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0_local = p_cast1142_fu_2336_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address0_local = p_cast1140_fu_2100_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address0_local = p_cast1138_fu_1864_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address0_local = p_cast_fu_1614_p1;
    end else begin
        v224_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_1_address1_local = p_cast1151_fu_3565_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address1_local = p_cast1149_fu_3329_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_1_address1_local = p_cast1147_fu_3093_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_1_address1_local = p_cast1145_fu_2857_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_1_address1_local = p_cast1143_fu_2531_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1_local = p_cast1141_fu_2295_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_1_address1_local = p_cast1139_fu_2059_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_1_address1_local = p_cast1137_fu_1823_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_1_address1_local = p_cast1136_fu_1561_p1;
    end else begin
        v224_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_1_ce0_local = 1'b1;
    end else begin
        v224_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_1_ce1_local = 1'b1;
    end else begin
        v224_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_2_address0_local = p_cast1152_fu_3606_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_2_address0_local = p_cast1150_fu_3370_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_2_address0_local = p_cast1148_fu_3134_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_address0_local = p_cast1146_fu_2898_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address0_local = p_cast1144_fu_2572_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address0_local = p_cast1142_fu_2336_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address0_local = p_cast1140_fu_2100_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address0_local = p_cast1138_fu_1864_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address0_local = p_cast_fu_1614_p1;
    end else begin
        v224_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_2_address1_local = p_cast1151_fu_3565_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_2_address1_local = p_cast1149_fu_3329_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_2_address1_local = p_cast1147_fu_3093_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_address1_local = p_cast1145_fu_2857_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_2_address1_local = p_cast1143_fu_2531_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_2_address1_local = p_cast1141_fu_2295_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_2_address1_local = p_cast1139_fu_2059_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_2_address1_local = p_cast1137_fu_1823_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_2_address1_local = p_cast1136_fu_1561_p1;
    end else begin
        v224_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_2_ce0_local = 1'b1;
    end else begin
        v224_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_2_ce1_local = 1'b1;
    end else begin
        v224_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address0_local = p_cast1152_fu_3606_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_address0_local = p_cast1150_fu_3370_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_3_address0_local = p_cast1148_fu_3134_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_3_address0_local = p_cast1146_fu_2898_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address0_local = p_cast1144_fu_2572_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address0_local = p_cast1142_fu_2336_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address0_local = p_cast1140_fu_2100_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address0_local = p_cast1138_fu_1864_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address0_local = p_cast_fu_1614_p1;
    end else begin
        v224_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_3_address1_local = p_cast1151_fu_3565_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_address1_local = p_cast1149_fu_3329_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_3_address1_local = p_cast1147_fu_3093_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_3_address1_local = p_cast1145_fu_2857_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_3_address1_local = p_cast1143_fu_2531_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_3_address1_local = p_cast1141_fu_2295_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_3_address1_local = p_cast1139_fu_2059_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_3_address1_local = p_cast1137_fu_1823_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_3_address1_local = p_cast1136_fu_1561_p1;
    end else begin
        v224_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_3_ce0_local = 1'b1;
    end else begin
        v224_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_3_ce1_local = 1'b1;
    end else begin
        v224_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_4_address0_local = p_cast1152_fu_3606_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_4_address0_local = p_cast1150_fu_3370_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_4_address0_local = p_cast1148_fu_3134_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_4_address0_local = p_cast1146_fu_2898_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_4_address0_local = p_cast1144_fu_2572_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_4_address0_local = p_cast1142_fu_2336_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_4_address0_local = p_cast1140_fu_2100_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_4_address0_local = p_cast1138_fu_1864_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_4_address0_local = p_cast_fu_1614_p1;
    end else begin
        v224_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_4_address1_local = p_cast1151_fu_3565_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_4_address1_local = p_cast1149_fu_3329_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_4_address1_local = p_cast1147_fu_3093_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_4_address1_local = p_cast1145_fu_2857_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_4_address1_local = p_cast1143_fu_2531_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_4_address1_local = p_cast1141_fu_2295_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_4_address1_local = p_cast1139_fu_2059_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_4_address1_local = p_cast1137_fu_1823_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_4_address1_local = p_cast1136_fu_1561_p1;
    end else begin
        v224_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_4_ce0_local = 1'b1;
    end else begin
        v224_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_4_ce1_local = 1'b1;
    end else begin
        v224_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_5_address0_local = p_cast1152_fu_3606_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_5_address0_local = p_cast1150_fu_3370_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_5_address0_local = p_cast1148_fu_3134_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_5_address0_local = p_cast1146_fu_2898_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_5_address0_local = p_cast1144_fu_2572_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_5_address0_local = p_cast1142_fu_2336_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_5_address0_local = p_cast1140_fu_2100_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_5_address0_local = p_cast1138_fu_1864_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_5_address0_local = p_cast_fu_1614_p1;
    end else begin
        v224_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_5_address1_local = p_cast1151_fu_3565_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_5_address1_local = p_cast1149_fu_3329_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_5_address1_local = p_cast1147_fu_3093_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_5_address1_local = p_cast1145_fu_2857_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_5_address1_local = p_cast1143_fu_2531_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_5_address1_local = p_cast1141_fu_2295_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_5_address1_local = p_cast1139_fu_2059_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_5_address1_local = p_cast1137_fu_1823_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_5_address1_local = p_cast1136_fu_1561_p1;
    end else begin
        v224_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_5_ce0_local = 1'b1;
    end else begin
        v224_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_5_ce1_local = 1'b1;
    end else begin
        v224_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_6_address0_local = p_cast1152_fu_3606_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_6_address0_local = p_cast1150_fu_3370_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_6_address0_local = p_cast1148_fu_3134_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_6_address0_local = p_cast1146_fu_2898_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_6_address0_local = p_cast1144_fu_2572_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_6_address0_local = p_cast1142_fu_2336_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_6_address0_local = p_cast1140_fu_2100_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_6_address0_local = p_cast1138_fu_1864_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_6_address0_local = p_cast_fu_1614_p1;
    end else begin
        v224_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_6_address1_local = p_cast1151_fu_3565_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_6_address1_local = p_cast1149_fu_3329_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_6_address1_local = p_cast1147_fu_3093_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_6_address1_local = p_cast1145_fu_2857_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_6_address1_local = p_cast1143_fu_2531_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_6_address1_local = p_cast1141_fu_2295_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_6_address1_local = p_cast1139_fu_2059_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_6_address1_local = p_cast1137_fu_1823_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_6_address1_local = p_cast1136_fu_1561_p1;
    end else begin
        v224_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_6_ce0_local = 1'b1;
    end else begin
        v224_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_6_ce1_local = 1'b1;
    end else begin
        v224_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_7_address0_local = p_cast1152_fu_3606_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_7_address0_local = p_cast1150_fu_3370_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_7_address0_local = p_cast1148_fu_3134_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_7_address0_local = p_cast1146_fu_2898_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_7_address0_local = p_cast1144_fu_2572_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_7_address0_local = p_cast1142_fu_2336_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_7_address0_local = p_cast1140_fu_2100_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_7_address0_local = p_cast1138_fu_1864_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_7_address0_local = p_cast_fu_1614_p1;
    end else begin
        v224_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v224_7_address1_local = p_cast1151_fu_3565_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_7_address1_local = p_cast1149_fu_3329_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_7_address1_local = p_cast1147_fu_3093_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_7_address1_local = p_cast1145_fu_2857_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_7_address1_local = p_cast1143_fu_2531_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_7_address1_local = p_cast1141_fu_2295_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_7_address1_local = p_cast1139_fu_2059_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_7_address1_local = p_cast1137_fu_1823_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_7_address1_local = p_cast1136_fu_1561_p1;
    end else begin
        v224_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_7_ce0_local = 1'b1;
    end else begin
        v224_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3) | ((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10)))) begin
        v224_7_ce1_local = 1'b1;
    end else begin
        v224_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_v229_we1;
    end else begin
        v229_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v236_blk_n = v236_empty_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v236_read_local = 1'b1;
    end else begin
        v236_read_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln31_fu_1488_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln32_fu_1524_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
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
            if (((grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_1_fu_1482_p2 = (phi_mul_fu_152 + 16'd220);
assign add_ln31_fu_1494_p2 = (v5_fu_156 + 8'd1);
assign add_ln32_1_fu_1638_p2 = (v6_reg_1396 + 8'd18);
assign add_ln32_fu_2354_p2 = (v6_reg_1396 + 8'd9);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_fu_1518_p2 = ((v5_fu_156 == 8'd0) ? 1'b1 : 1'b0);
assign empty_102_fu_2112_p2 = (v6_reg_1396 + 8'd6);
assign empty_103_fu_2284_p2 = (p_shl7_fu_2266_p3 - p_shl1230_fu_2280_p1);
assign empty_104_fu_2290_p2 = (empty_103_fu_2284_p2 + zext_ln31_reg_3902);
assign empty_113_fu_2118_p2 = (v6_reg_1396 + 8'd7);
assign empty_114_fu_2325_p2 = (p_shl8_fu_2307_p3 - p_shl1228_fu_2321_p1);
assign empty_115_fu_2331_p2 = (empty_114_fu_2325_p2 + zext_ln31_reg_3902);
assign empty_124_fu_2348_p2 = (v6_reg_1396 + 8'd8);
assign empty_125_fu_2520_p2 = (p_shl9_fu_2502_p3 - p_shl1226_fu_2516_p1);
assign empty_126_fu_2526_p2 = (empty_125_fu_2520_p2 + zext_ln31_reg_3902);
assign empty_135_fu_2561_p2 = (p_shl10_fu_2543_p3 - p_shl1224_fu_2557_p1);
assign empty_136_fu_2567_p2 = (empty_135_fu_2561_p2 + zext_ln31_reg_3902);
assign empty_145_fu_2584_p2 = (v6_reg_1396 + 8'd10);
assign empty_146_fu_2846_p2 = (p_shl11_fu_2828_p3 - p_shl1222_fu_2842_p1);
assign empty_147_fu_2852_p2 = (empty_146_fu_2846_p2 + zext_ln31_reg_3902);
assign empty_156_fu_2590_p2 = (v6_reg_1396 + 8'd11);
assign empty_157_fu_2887_p2 = (p_shl12_fu_2869_p3 - p_shl1220_fu_2883_p1);
assign empty_158_fu_2893_p2 = (empty_157_fu_2887_p2 + zext_ln31_reg_3902);
assign empty_167_fu_2910_p2 = (v6_reg_1396 + 8'd12);
assign empty_168_fu_3082_p2 = (p_shl13_fu_3064_p3 - p_shl1218_fu_3078_p1);
assign empty_169_fu_3088_p2 = (empty_168_fu_3082_p2 + zext_ln31_reg_3902);
assign empty_178_fu_2916_p2 = (v6_reg_1396 + 8'd13);
assign empty_179_fu_3123_p2 = (p_shl14_fu_3105_p3 - p_shl1216_fu_3119_p1);
assign empty_180_fu_3129_p2 = (empty_179_fu_3123_p2 + zext_ln31_reg_3902);
assign empty_189_fu_3146_p2 = (v6_reg_1396 + 8'd14);
assign empty_190_fu_3318_p2 = (p_shl15_fu_3300_p3 - p_shl1214_fu_3314_p1);
assign empty_191_fu_3324_p2 = (empty_190_fu_3318_p2 + zext_ln31_reg_3902);
assign empty_200_fu_3152_p2 = (v6_reg_1396 + 8'd15);
assign empty_201_fu_3359_p2 = (p_shl16_fu_3341_p3 - p_shl1212_fu_3355_p1);
assign empty_202_fu_3365_p2 = (empty_201_fu_3359_p2 + zext_ln31_reg_3902);
assign empty_211_fu_3382_p2 = (v6_reg_1396 + 8'd16);
assign empty_212_fu_3554_p2 = (p_shl17_fu_3536_p3 - p_shl1210_fu_3550_p1);
assign empty_213_fu_3560_p2 = (empty_212_fu_3554_p2 + zext_ln31_reg_3902);
assign empty_222_fu_3388_p2 = (v6_reg_1396 + 8'd17);
assign empty_223_fu_3595_p2 = (p_shl_fu_3577_p3 - p_shl1208_fu_3591_p1);
assign empty_224_fu_3601_p2 = (empty_223_fu_3595_p2 + zext_ln31_reg_3902);
assign empty_39_fu_1556_p2 = (empty_fu_1550_p2 + zext_ln31_reg_3902);
assign empty_48_fu_1603_p2 = (p_shl2_fu_1583_p3 - p_shl1240_fu_1599_p1);
assign empty_49_fu_1609_p2 = (empty_48_fu_1603_p2 + zext_ln31_reg_3902);
assign empty_58_fu_1626_p2 = (v6_reg_1396 + 8'd2);
assign empty_59_fu_1812_p2 = (p_shl3_fu_1794_p3 - p_shl1238_fu_1808_p1);
assign empty_60_fu_1818_p2 = (empty_59_fu_1812_p2 + zext_ln31_reg_3902);
assign empty_69_fu_1632_p2 = (v6_reg_1396 + 8'd3);
assign empty_70_fu_1853_p2 = (p_shl4_fu_1835_p3 - p_shl1236_fu_1849_p1);
assign empty_71_fu_1859_p2 = (empty_70_fu_1853_p2 + zext_ln31_reg_3902);
assign empty_80_fu_1876_p2 = (v6_reg_1396 + 8'd4);
assign empty_81_fu_2048_p2 = (p_shl5_fu_2030_p3 - p_shl1234_fu_2044_p1);
assign empty_82_fu_2054_p2 = (empty_81_fu_2048_p2 + zext_ln31_reg_3902);
assign empty_91_fu_1882_p2 = (v6_reg_1396 + 8'd5);
assign empty_92_fu_2089_p2 = (p_shl6_fu_2071_p3 - p_shl1232_fu_2085_p1);
assign empty_93_fu_2095_p2 = (empty_92_fu_2089_p2 + zext_ln31_reg_3902);
assign empty_fu_1550_p2 = (p_shl1_fu_1530_p3 - p_shl1242_fu_1546_p1);
assign grp_fu_148_p_ce = grp_fu_4955_ce;
assign grp_fu_148_p_din0 = grp_fu_4955_p0;
assign grp_fu_148_p_din1 = grp_fu_4955_p1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_4959_ce;
assign grp_fu_152_p_din0 = grp_fu_4959_p0;
assign grp_fu_152_p_din1 = grp_fu_4959_p1;
assign grp_fu_156_p_ce = grp_fu_4963_ce;
assign grp_fu_156_p_din0 = grp_fu_4963_p0;
assign grp_fu_156_p_din1 = grp_fu_4963_p1;
assign grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_start = grp_kernel_2mm_node0_Pipeline_label_23_fu_1437_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_start = grp_kernel_2mm_node0_Pipeline_label_2_fu_1408_ap_start_reg;
assign icmp_ln31_fu_1488_p2 = ((v5_fu_156 == 8'd190) ? 1'b1 : 1'b0);
assign icmp_ln32_fu_1524_p2 = ((v6_reg_1396 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1504_p4 = {{v5_fu_156[7:3]}};
assign mul_ln101_1_fu_3666_p0 = mul_ln101_1_fu_3666_p00;
assign mul_ln101_1_fu_3666_p00 = empty_189_reg_4692;
assign mul_ln101_1_fu_3666_p1 = 16'd220;
assign mul_ln101_fu_2653_p0 = mul_ln101_fu_2653_p00;
assign mul_ln101_fu_2653_p00 = empty_91_reg_4134;
assign mul_ln101_fu_2653_p1 = 16'd220;
assign mul_ln114_1_fu_3675_p0 = mul_ln114_1_fu_3675_p00;
assign mul_ln114_1_fu_3675_p00 = empty_200_reg_4699;
assign mul_ln114_1_fu_3675_p1 = 16'd220;
assign mul_ln114_fu_2662_p0 = mul_ln114_fu_2662_p00;
assign mul_ln114_fu_2662_p00 = empty_102_reg_4231;
assign mul_ln114_fu_2662_p1 = 16'd220;
assign mul_ln127_1_fu_3684_p0 = mul_ln127_1_fu_3684_p00;
assign mul_ln127_1_fu_3684_p00 = empty_211_reg_4796;
assign mul_ln127_1_fu_3684_p1 = 16'd220;
assign mul_ln127_fu_2671_p0 = mul_ln127_fu_2671_p00;
assign mul_ln127_fu_2671_p00 = empty_113_reg_4238;
assign mul_ln127_fu_2671_p1 = 16'd220;
assign mul_ln140_1_fu_3764_p0 = mul_ln140_1_fu_3764_p00;
assign mul_ln140_1_fu_3764_p00 = empty_222_reg_4803;
assign mul_ln140_1_fu_3764_p1 = 16'd220;
assign mul_ln140_fu_2680_p0 = mul_ln140_fu_2680_p00;
assign mul_ln140_fu_2680_p00 = empty_124_reg_4335;
assign mul_ln140_fu_2680_p1 = 16'd220;
assign mul_ln34_1_fu_3621_p0 = mul_ln34_1_fu_3621_p00;
assign mul_ln34_1_fu_3621_p00 = add_ln32_reg_4342;
assign mul_ln34_1_fu_3621_p1 = 16'd220;
assign mul_ln34_fu_2600_p0 = mul_ln34_fu_2600_p00;
assign mul_ln34_fu_2600_p00 = v6_reg_1396;
assign mul_ln34_fu_2600_p1 = 16'd220;
assign mul_ln49_1_fu_3630_p0 = mul_ln49_1_fu_3630_p00;
assign mul_ln49_1_fu_3630_p00 = empty_145_reg_4439;
assign mul_ln49_1_fu_3630_p1 = 16'd220;
assign mul_ln49_fu_2617_p0 = mul_ln49_fu_2617_p00;
assign mul_ln49_fu_2617_p00 = tmp_1_fu_2606_p3;
assign mul_ln49_fu_2617_p1 = 16'd220;
assign mul_ln62_1_fu_3639_p0 = mul_ln62_1_fu_3639_p00;
assign mul_ln62_1_fu_3639_p00 = empty_156_reg_4446;
assign mul_ln62_1_fu_3639_p1 = 16'd220;
assign mul_ln62_fu_2626_p0 = mul_ln62_fu_2626_p00;
assign mul_ln62_fu_2626_p00 = empty_58_reg_4018;
assign mul_ln62_fu_2626_p1 = 16'd220;
assign mul_ln75_1_fu_3648_p0 = mul_ln75_1_fu_3648_p00;
assign mul_ln75_1_fu_3648_p00 = empty_167_reg_4588;
assign mul_ln75_1_fu_3648_p1 = 16'd220;
assign mul_ln75_fu_2635_p0 = mul_ln75_fu_2635_p00;
assign mul_ln75_fu_2635_p00 = empty_69_reg_4025;
assign mul_ln75_fu_2635_p1 = 16'd220;
assign mul_ln88_1_fu_3657_p0 = mul_ln88_1_fu_3657_p00;
assign mul_ln88_1_fu_3657_p00 = empty_178_reg_4595;
assign mul_ln88_1_fu_3657_p1 = 16'd220;
assign mul_ln88_fu_2644_p0 = mul_ln88_fu_2644_p00;
assign mul_ln88_fu_2644_p00 = empty_80_reg_4127;
assign mul_ln88_fu_2644_p1 = 16'd220;
assign p_cast1136_fu_1561_p1 = empty_39_fu_1556_p2;
assign p_cast1137_fu_1823_p1 = empty_60_fu_1818_p2;
assign p_cast1138_fu_1864_p1 = empty_71_fu_1859_p2;
assign p_cast1139_fu_2059_p1 = empty_82_fu_2054_p2;
assign p_cast1140_fu_2100_p1 = empty_93_fu_2095_p2;
assign p_cast1141_fu_2295_p1 = empty_104_fu_2290_p2;
assign p_cast1142_fu_2336_p1 = empty_115_fu_2331_p2;
assign p_cast1143_fu_2531_p1 = empty_126_fu_2526_p2;
assign p_cast1144_fu_2572_p1 = empty_136_fu_2567_p2;
assign p_cast1145_fu_2857_p1 = empty_147_fu_2852_p2;
assign p_cast1146_fu_2898_p1 = empty_158_fu_2893_p2;
assign p_cast1147_fu_3093_p1 = empty_169_fu_3088_p2;
assign p_cast1148_fu_3134_p1 = empty_180_fu_3129_p2;
assign p_cast1149_fu_3329_p1 = empty_191_fu_3324_p2;
assign p_cast1150_fu_3370_p1 = empty_202_fu_3365_p2;
assign p_cast1151_fu_3565_p1 = empty_213_fu_3560_p2;
assign p_cast1152_fu_3606_p1 = empty_224_fu_3601_p2;
assign p_cast_fu_1614_p1 = empty_49_fu_1609_p2;
assign p_shl10_fu_2543_p3 = {{add_ln32_reg_4342}, {5'd0}};
assign p_shl11_fu_2828_p3 = {{empty_145_reg_4439}, {5'd0}};
assign p_shl1208_fu_3591_p1 = tmp_19_fu_3584_p3;
assign p_shl1210_fu_3550_p1 = tmp_18_fu_3543_p3;
assign p_shl1212_fu_3355_p1 = tmp_17_fu_3348_p3;
assign p_shl1214_fu_3314_p1 = tmp_16_fu_3307_p3;
assign p_shl1216_fu_3119_p1 = tmp_15_fu_3112_p3;
assign p_shl1218_fu_3078_p1 = tmp_14_fu_3071_p3;
assign p_shl1220_fu_2883_p1 = tmp_13_fu_2876_p3;
assign p_shl1222_fu_2842_p1 = tmp_12_fu_2835_p3;
assign p_shl1224_fu_2557_p1 = tmp_11_fu_2550_p3;
assign p_shl1226_fu_2516_p1 = tmp_10_fu_2509_p3;
assign p_shl1228_fu_2321_p1 = tmp_9_fu_2314_p3;
assign p_shl1230_fu_2280_p1 = tmp_8_fu_2273_p3;
assign p_shl1232_fu_2085_p1 = tmp_7_fu_2078_p3;
assign p_shl1234_fu_2044_p1 = tmp_6_fu_2037_p3;
assign p_shl1236_fu_1849_p1 = tmp_5_fu_1842_p3;
assign p_shl1238_fu_1808_p1 = tmp_4_fu_1801_p3;
assign p_shl1240_fu_1599_p1 = tmp_3_fu_1591_p3;
assign p_shl1242_fu_1546_p1 = tmp_2_fu_1538_p3;
assign p_shl12_fu_2869_p3 = {{empty_156_reg_4446}, {5'd0}};
assign p_shl13_fu_3064_p3 = {{empty_167_reg_4588}, {5'd0}};
assign p_shl14_fu_3105_p3 = {{empty_178_reg_4595}, {5'd0}};
assign p_shl15_fu_3300_p3 = {{empty_189_reg_4692}, {5'd0}};
assign p_shl16_fu_3341_p3 = {{empty_200_reg_4699}, {5'd0}};
assign p_shl17_fu_3536_p3 = {{empty_211_reg_4796}, {5'd0}};
assign p_shl1_fu_1530_p3 = {{v6_reg_1396}, {5'd0}};
assign p_shl2_fu_1583_p3 = {{tmp_fu_1573_p4}, {6'd32}};
assign p_shl3_fu_1794_p3 = {{empty_58_reg_4018}, {5'd0}};
assign p_shl4_fu_1835_p3 = {{empty_69_reg_4025}, {5'd0}};
assign p_shl5_fu_2030_p3 = {{empty_80_reg_4127}, {5'd0}};
assign p_shl6_fu_2071_p3 = {{empty_91_reg_4134}, {5'd0}};
assign p_shl7_fu_2266_p3 = {{empty_102_reg_4231}, {5'd0}};
assign p_shl8_fu_2307_p3 = {{empty_113_reg_4238}, {5'd0}};
assign p_shl9_fu_2502_p3 = {{empty_124_reg_4335}, {5'd0}};
assign p_shl_fu_3577_p3 = {{empty_222_reg_4803}, {5'd0}};
assign tmp_10_fu_2509_p3 = {{empty_124_reg_4335}, {3'd0}};
assign tmp_11_fu_2550_p3 = {{add_ln32_reg_4342}, {3'd0}};
assign tmp_12_fu_2835_p3 = {{empty_145_reg_4439}, {3'd0}};
assign tmp_13_fu_2876_p3 = {{empty_156_reg_4446}, {3'd0}};
assign tmp_14_fu_3071_p3 = {{empty_167_reg_4588}, {3'd0}};
assign tmp_15_fu_3112_p3 = {{empty_178_reg_4595}, {3'd0}};
assign tmp_16_fu_3307_p3 = {{empty_189_reg_4692}, {3'd0}};
assign tmp_17_fu_3348_p3 = {{empty_200_reg_4699}, {3'd0}};
assign tmp_18_fu_3543_p3 = {{empty_211_reg_4796}, {3'd0}};
assign tmp_19_fu_3584_p3 = {{empty_222_reg_4803}, {3'd0}};
assign tmp_1_fu_2606_p3 = {{tmp_reg_3973}, {1'd1}};
assign tmp_2_fu_1538_p3 = {{v6_reg_1396}, {3'd0}};
assign tmp_3_fu_1591_p3 = {{tmp_fu_1573_p4}, {4'd8}};
assign tmp_4_fu_1801_p3 = {{empty_58_reg_4018}, {3'd0}};
assign tmp_5_fu_1842_p3 = {{empty_69_reg_4025}, {3'd0}};
assign tmp_6_fu_2037_p3 = {{empty_80_reg_4127}, {3'd0}};
assign tmp_7_fu_2078_p3 = {{empty_91_reg_4134}, {3'd0}};
assign tmp_8_fu_2273_p3 = {{empty_102_reg_4231}, {3'd0}};
assign tmp_9_fu_2314_p3 = {{empty_113_reg_4238}, {3'd0}};
assign tmp_fu_1573_p4 = {{v6_reg_1396[7:1]}};
assign trunc_ln31_fu_1500_p1 = v5_fu_156[2:0];
assign v101_1_fu_3802_p10 = v224_4_q0;
assign v101_1_fu_3802_p12 = v224_5_q0;
assign v101_1_fu_3802_p14 = v224_6_q0;
assign v101_1_fu_3802_p16 = v224_7_q0;
assign v101_1_fu_3802_p17 = 'bx;
assign v101_1_fu_3802_p2 = v224_0_q0;
assign v101_1_fu_3802_p4 = v224_1_q0;
assign v101_1_fu_3802_p6 = v224_2_q0;
assign v101_1_fu_3802_p8 = v224_3_q0;
assign v11_1_fu_2789_p10 = v224_4_q0;
assign v11_1_fu_2789_p12 = v224_5_q0;
assign v11_1_fu_2789_p14 = v224_6_q0;
assign v11_1_fu_2789_p16 = v224_7_q0;
assign v11_1_fu_2789_p17 = 'bx;
assign v11_1_fu_2789_p2 = v224_0_q0;
assign v11_1_fu_2789_p4 = v224_1_q0;
assign v11_1_fu_2789_p6 = v224_2_q0;
assign v11_1_fu_2789_p8 = v224_3_q0;
assign v11_2_fu_1684_p10 = v224_4_q1;
assign v11_2_fu_1684_p12 = v224_5_q1;
assign v11_2_fu_1684_p14 = v224_6_q1;
assign v11_2_fu_1684_p16 = v224_7_q1;
assign v11_2_fu_1684_p17 = 'bx;
assign v11_2_fu_1684_p2 = v224_0_q1;
assign v11_2_fu_1684_p4 = v224_1_q1;
assign v11_2_fu_1684_p6 = v224_2_q1;
assign v11_2_fu_1684_p8 = v224_3_q1;
assign v1_fu_2392_p10 = v224_4_q1;
assign v1_fu_2392_p12 = v224_5_q1;
assign v1_fu_2392_p14 = v224_6_q1;
assign v1_fu_2392_p16 = v224_7_q1;
assign v1_fu_2392_p17 = 'bx;
assign v1_fu_2392_p2 = v224_0_q1;
assign v1_fu_2392_p4 = v224_1_q1;
assign v1_fu_2392_p6 = v224_2_q1;
assign v1_fu_2392_p8 = v224_3_q1;
assign v224_0_address0 = v224_0_address0_local;
assign v224_0_address1 = v224_0_address1_local;
assign v224_0_ce0 = v224_0_ce0_local;
assign v224_0_ce1 = v224_0_ce1_local;
assign v224_1_address0 = v224_1_address0_local;
assign v224_1_address1 = v224_1_address1_local;
assign v224_1_ce0 = v224_1_ce0_local;
assign v224_1_ce1 = v224_1_ce1_local;
assign v224_2_address0 = v224_2_address0_local;
assign v224_2_address1 = v224_2_address1_local;
assign v224_2_ce0 = v224_2_ce0_local;
assign v224_2_ce1 = v224_2_ce1_local;
assign v224_3_address0 = v224_3_address0_local;
assign v224_3_address1 = v224_3_address1_local;
assign v224_3_ce0 = v224_3_ce0_local;
assign v224_3_ce1 = v224_3_ce1_local;
assign v224_4_address0 = v224_4_address0_local;
assign v224_4_address1 = v224_4_address1_local;
assign v224_4_ce0 = v224_4_ce0_local;
assign v224_4_ce1 = v224_4_ce1_local;
assign v224_5_address0 = v224_5_address0_local;
assign v224_5_address1 = v224_5_address1_local;
assign v224_5_ce0 = v224_5_ce0_local;
assign v224_5_ce1 = v224_5_ce1_local;
assign v224_6_address0 = v224_6_address0_local;
assign v224_6_address1 = v224_6_address1_local;
assign v224_6_ce0 = v224_6_ce0_local;
assign v224_6_ce1 = v224_6_ce1_local;
assign v224_7_address0 = v224_7_address0_local;
assign v224_7_address1 = v224_7_address1_local;
assign v224_7_ce0 = v224_7_ce0_local;
assign v224_7_ce1 = v224_7_ce1_local;
assign v236_read = v236_read_local;
assign v24_1_fu_2954_p10 = v224_4_q1;
assign v24_1_fu_2954_p12 = v224_5_q1;
assign v24_1_fu_2954_p14 = v224_6_q1;
assign v24_1_fu_2954_p16 = v224_7_q1;
assign v24_1_fu_2954_p17 = 'bx;
assign v24_1_fu_2954_p2 = v224_0_q1;
assign v24_1_fu_2954_p4 = v224_1_q1;
assign v24_1_fu_2954_p6 = v224_2_q1;
assign v24_1_fu_2954_p8 = v224_3_q1;
assign v24_2_fu_1755_p10 = v224_4_q0;
assign v24_2_fu_1755_p12 = v224_5_q0;
assign v24_2_fu_1755_p14 = v224_6_q0;
assign v24_2_fu_1755_p16 = v224_7_q0;
assign v24_2_fu_1755_p17 = 'bx;
assign v24_2_fu_1755_p2 = v224_0_q0;
assign v24_2_fu_1755_p4 = v224_1_q0;
assign v24_2_fu_1755_p6 = v224_2_q0;
assign v24_2_fu_1755_p8 = v224_3_q0;
assign v2_fu_2463_p10 = v224_4_q0;
assign v2_fu_2463_p12 = v224_5_q0;
assign v2_fu_2463_p14 = v224_6_q0;
assign v2_fu_2463_p16 = v224_7_q0;
assign v2_fu_2463_p17 = 'bx;
assign v2_fu_2463_p2 = v224_0_q0;
assign v2_fu_2463_p4 = v224_1_q0;
assign v2_fu_2463_p6 = v224_2_q0;
assign v2_fu_2463_p8 = v224_3_q0;
assign v35_1_fu_3025_p10 = v224_4_q0;
assign v35_1_fu_3025_p12 = v224_5_q0;
assign v35_1_fu_3025_p14 = v224_6_q0;
assign v35_1_fu_3025_p16 = v224_7_q0;
assign v35_1_fu_3025_p17 = 'bx;
assign v35_1_fu_3025_p2 = v224_0_q0;
assign v35_1_fu_3025_p4 = v224_1_q0;
assign v35_1_fu_3025_p6 = v224_2_q0;
assign v35_1_fu_3025_p8 = v224_3_q0;
assign v35_2_fu_1920_p10 = v224_4_q1;
assign v35_2_fu_1920_p12 = v224_5_q1;
assign v35_2_fu_1920_p14 = v224_6_q1;
assign v35_2_fu_1920_p16 = v224_7_q1;
assign v35_2_fu_1920_p17 = 'bx;
assign v35_2_fu_1920_p2 = v224_0_q1;
assign v35_2_fu_1920_p4 = v224_1_q1;
assign v35_2_fu_1920_p6 = v224_2_q1;
assign v35_2_fu_1920_p8 = v224_3_q1;
assign v3_fu_2718_p10 = v224_4_q1;
assign v3_fu_2718_p12 = v224_5_q1;
assign v3_fu_2718_p14 = v224_6_q1;
assign v3_fu_2718_p16 = v224_7_q1;
assign v3_fu_2718_p17 = 'bx;
assign v3_fu_2718_p2 = v224_0_q1;
assign v3_fu_2718_p4 = v224_1_q1;
assign v3_fu_2718_p6 = v224_2_q1;
assign v3_fu_2718_p8 = v224_3_q1;
assign v46_1_fu_3190_p10 = v224_4_q1;
assign v46_1_fu_3190_p12 = v224_5_q1;
assign v46_1_fu_3190_p14 = v224_6_q1;
assign v46_1_fu_3190_p16 = v224_7_q1;
assign v46_1_fu_3190_p17 = 'bx;
assign v46_1_fu_3190_p2 = v224_0_q1;
assign v46_1_fu_3190_p4 = v224_1_q1;
assign v46_1_fu_3190_p6 = v224_2_q1;
assign v46_1_fu_3190_p8 = v224_3_q1;
assign v46_2_fu_1991_p10 = v224_4_q0;
assign v46_2_fu_1991_p12 = v224_5_q0;
assign v46_2_fu_1991_p14 = v224_6_q0;
assign v46_2_fu_1991_p16 = v224_7_q0;
assign v46_2_fu_1991_p17 = 'bx;
assign v46_2_fu_1991_p2 = v224_0_q0;
assign v46_2_fu_1991_p4 = v224_1_q0;
assign v46_2_fu_1991_p6 = v224_2_q0;
assign v46_2_fu_1991_p8 = v224_3_q0;
assign v57_1_fu_3261_p10 = v224_4_q0;
assign v57_1_fu_3261_p12 = v224_5_q0;
assign v57_1_fu_3261_p14 = v224_6_q0;
assign v57_1_fu_3261_p16 = v224_7_q0;
assign v57_1_fu_3261_p17 = 'bx;
assign v57_1_fu_3261_p2 = v224_0_q0;
assign v57_1_fu_3261_p4 = v224_1_q0;
assign v57_1_fu_3261_p6 = v224_2_q0;
assign v57_1_fu_3261_p8 = v224_3_q0;
assign v57_2_fu_2156_p10 = v224_4_q1;
assign v57_2_fu_2156_p12 = v224_5_q1;
assign v57_2_fu_2156_p14 = v224_6_q1;
assign v57_2_fu_2156_p16 = v224_7_q1;
assign v57_2_fu_2156_p17 = 'bx;
assign v57_2_fu_2156_p2 = v224_0_q1;
assign v57_2_fu_2156_p4 = v224_1_q1;
assign v57_2_fu_2156_p6 = v224_2_q1;
assign v57_2_fu_2156_p8 = v224_3_q1;
assign v68_1_fu_3426_p10 = v224_4_q1;
assign v68_1_fu_3426_p12 = v224_5_q1;
assign v68_1_fu_3426_p14 = v224_6_q1;
assign v68_1_fu_3426_p16 = v224_7_q1;
assign v68_1_fu_3426_p17 = 'bx;
assign v68_1_fu_3426_p2 = v224_0_q1;
assign v68_1_fu_3426_p4 = v224_1_q1;
assign v68_1_fu_3426_p6 = v224_2_q1;
assign v68_1_fu_3426_p8 = v224_3_q1;
assign v79_1_fu_3497_p10 = v224_4_q0;
assign v79_1_fu_3497_p12 = v224_5_q0;
assign v79_1_fu_3497_p14 = v224_6_q0;
assign v79_1_fu_3497_p16 = v224_7_q0;
assign v79_1_fu_3497_p17 = 'bx;
assign v79_1_fu_3497_p2 = v224_0_q0;
assign v79_1_fu_3497_p4 = v224_1_q0;
assign v79_1_fu_3497_p6 = v224_2_q0;
assign v79_1_fu_3497_p8 = v224_3_q0;
assign v90_1_fu_3722_p10 = v224_4_q1;
assign v90_1_fu_3722_p12 = v224_5_q1;
assign v90_1_fu_3722_p14 = v224_6_q1;
assign v90_1_fu_3722_p16 = v224_7_q1;
assign v90_1_fu_3722_p17 = 'bx;
assign v90_1_fu_3722_p2 = v224_0_q1;
assign v90_1_fu_3722_p4 = v224_1_q1;
assign v90_1_fu_3722_p6 = v224_2_q1;
assign v90_1_fu_3722_p8 = v224_3_q1;
assign v_fu_2227_p10 = v224_4_q0;
assign v_fu_2227_p12 = v224_5_q0;
assign v_fu_2227_p14 = v224_6_q0;
assign v_fu_2227_p16 = v224_7_q0;
assign v_fu_2227_p17 = 'bx;
assign v_fu_2227_p2 = v224_0_q0;
assign v_fu_2227_p4 = v224_1_q0;
assign v_fu_2227_p6 = v224_2_q0;
assign v_fu_2227_p8 = v224_3_q0;
assign zext_ln31_fu_1514_p1 = lshr_ln_fu_1504_p4;
always @ (posedge ap_clk) begin
    zext_ln31_reg_3902[12:5] <= 8'b00000000;
end
endmodule 