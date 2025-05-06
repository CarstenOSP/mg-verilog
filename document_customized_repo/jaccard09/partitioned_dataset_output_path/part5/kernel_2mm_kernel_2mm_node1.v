
module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v226_4_address0,v226_4_ce0,v226_4_q0,v226_4_address1,v226_4_ce1,v226_4_q1,v226_5_address0,v226_5_ce0,v226_5_q0,v226_5_address1,v226_5_ce1,v226_5_q1,v226_6_address0,v226_6_ce0,v226_6_q0,v226_6_address1,v226_6_ce1,v226_6_q1,v226_7_address0,v226_7_ce0,v226_7_q0,v226_7_address1,v226_7_ce1,v226_7_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_opcode,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce);  
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
output  [12:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [12:0] v226_0_address1;
output   v226_0_ce1;
input  [31:0] v226_0_q1;
output  [12:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [12:0] v226_1_address1;
output   v226_1_ce1;
input  [31:0] v226_1_q1;
output  [12:0] v226_2_address0;
output   v226_2_ce0;
input  [31:0] v226_2_q0;
output  [12:0] v226_2_address1;
output   v226_2_ce1;
input  [31:0] v226_2_q1;
output  [12:0] v226_3_address0;
output   v226_3_ce0;
input  [31:0] v226_3_q0;
output  [12:0] v226_3_address1;
output   v226_3_ce1;
input  [31:0] v226_3_q1;
output  [12:0] v226_4_address0;
output   v226_4_ce0;
input  [31:0] v226_4_q0;
output  [12:0] v226_4_address1;
output   v226_4_ce1;
input  [31:0] v226_4_q1;
output  [12:0] v226_5_address0;
output   v226_5_ce0;
input  [31:0] v226_5_q0;
output  [12:0] v226_5_address1;
output   v226_5_ce1;
input  [31:0] v226_5_q1;
output  [12:0] v226_6_address0;
output   v226_6_ce0;
input  [31:0] v226_6_q0;
output  [12:0] v226_6_address1;
output   v226_6_ce1;
input  [31:0] v226_6_q1;
output  [12:0] v226_7_address0;
output   v226_7_ce0;
input  [31:0] v226_7_q0;
output  [12:0] v226_7_address1;
output   v226_7_ce1;
input  [31:0] v226_7_q1;
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
output  [1:0] grp_fu_172_p_opcode;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
reg[15:0] v225_address0;
reg v225_ce0;
reg v225_we0;
reg[31:0] v225_d0;
reg[15:0] v225_address1;
reg v225_ce1;
reg v225_we1;
reg[31:0] v225_d1;
(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_1566_p2;
reg   [31:0] reg_1490;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state19;
reg   [31:0] reg_1496;
reg   [31:0] reg_1502;
reg   [31:0] reg_1508;
reg   [31:0] reg_1514;
wire   [31:0] grp_fu_1474_p2;
reg   [31:0] reg_1520;
wire   [31:0] grp_fu_1478_p2;
reg   [31:0] reg_1526;
wire   [31:0] grp_fu_1482_p2;
reg   [31:0] reg_1532;
wire   [31:0] grp_fu_1486_p2;
reg   [31:0] reg_1538;
reg   [15:0] phi_mul_load_reg_3618;
wire   [15:0] add_ln168_1_fu_1560_p2;
reg   [15:0] add_ln168_1_reg_3624;
wire   [7:0] add_ln168_fu_1572_p2;
reg   [7:0] add_ln168_reg_3632;
wire   [2:0] trunc_ln168_fu_1578_p1;
reg   [2:0] trunc_ln168_reg_3637;
wire   [12:0] zext_ln168_fu_1592_p1;
reg   [12:0] zext_ln168_reg_3659;
wire   [0:0] cmp11_fu_1596_p2;
reg   [0:0] cmp11_reg_3681;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_1_fu_1622_p3;
reg   [7:0] tmp_1_reg_3695;
wire   [7:0] add_ln169_1_fu_1634_p2;
reg   [7:0] add_ln169_1_reg_3705;
wire   [7:0] empty_33_fu_1648_p2;
reg   [7:0] empty_33_reg_3710;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_44_fu_1658_p2;
reg   [7:0] empty_44_reg_3720;
wire   [7:0] empty_55_fu_1668_p2;
reg   [7:0] empty_55_reg_3730;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_66_fu_1678_p2;
reg   [7:0] empty_66_reg_3740;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_77_fu_1710_p2;
reg   [7:0] empty_77_reg_3830;
wire   [7:0] empty_88_fu_1720_p2;
reg   [7:0] empty_88_reg_3840;
wire   [31:0] v_fu_1762_p19;
reg   [31:0] v_reg_3850;
wire    ap_CS_fsm_state7;
wire   [31:0] v2_fu_1833_p19;
reg   [31:0] v2_reg_3855;
wire   [7:0] empty_99_fu_1894_p2;
reg   [7:0] empty_99_reg_3940;
wire   [7:0] add_ln169_fu_1904_p2;
reg   [7:0] add_ln169_reg_3950;
wire   [31:0] v4_fu_1946_p19;
reg   [31:0] v4_reg_3960;
wire    ap_CS_fsm_state8;
wire   [31:0] v6_fu_2017_p19;
reg   [31:0] v6_reg_3965;
wire   [7:0] empty_120_fu_2078_p2;
reg   [7:0] empty_120_reg_4050;
wire   [7:0] empty_131_fu_2088_p2;
reg   [7:0] empty_131_reg_4060;
wire   [31:0] v8_fu_2130_p19;
reg   [31:0] v8_reg_4070;
wire    ap_CS_fsm_state9;
wire   [31:0] v10_fu_2201_p19;
reg   [31:0] v10_reg_4075;
wire   [7:0] empty_142_fu_2262_p2;
reg   [7:0] empty_142_reg_4160;
wire   [7:0] empty_153_fu_2272_p2;
reg   [7:0] empty_153_reg_4170;
wire   [31:0] v12_fu_2314_p19;
reg   [31:0] v12_reg_4180;
wire    ap_CS_fsm_state10;
wire   [31:0] v14_fu_2385_p19;
reg   [31:0] v14_reg_4185;
wire   [7:0] empty_164_fu_2446_p2;
reg   [7:0] empty_164_reg_4270;
wire   [7:0] empty_175_fu_2456_p2;
reg   [7:0] empty_175_reg_4280;
wire   [31:0] v16_fu_2498_p19;
reg   [31:0] v16_reg_4290;
wire    ap_CS_fsm_state11;
wire   [31:0] v119_1_fu_2569_p19;
reg   [31:0] v119_1_reg_4295;
wire   [7:0] empty_186_fu_2630_p2;
reg   [7:0] empty_186_reg_4380;
wire   [7:0] empty_197_fu_2640_p2;
reg   [7:0] empty_197_reg_4390;
wire   [31:0] v132_1_fu_2682_p19;
reg   [31:0] v132_1_reg_4400;
wire    ap_CS_fsm_state12;
wire   [31:0] v143_1_fu_2753_p19;
reg   [31:0] v143_1_reg_4405;
wire   [31:0] v154_1_fu_2846_p19;
reg   [31:0] v154_1_reg_4490;
wire    ap_CS_fsm_state13;
wire   [31:0] v165_1_fu_2917_p19;
reg   [31:0] v165_1_reg_4495;
wire   [31:0] v176_1_fu_3010_p19;
reg   [31:0] v176_1_reg_4580;
wire    ap_CS_fsm_state14;
wire   [31:0] v187_1_fu_3081_p19;
reg   [31:0] v187_1_reg_4585;
wire   [15:0] mul_ln171_fu_3146_p2;
reg   [15:0] mul_ln171_reg_4670;
wire   [15:0] mul_ln186_fu_3155_p2;
reg   [15:0] mul_ln186_reg_4675;
wire   [15:0] mul_ln199_fu_3164_p2;
reg   [15:0] mul_ln199_reg_4680;
wire   [15:0] mul_ln212_fu_3173_p2;
reg   [15:0] mul_ln212_reg_4685;
wire   [15:0] mul_ln225_fu_3182_p2;
reg   [15:0] mul_ln225_reg_4690;
wire   [15:0] mul_ln238_fu_3191_p2;
reg   [15:0] mul_ln238_reg_4695;
wire   [15:0] mul_ln251_fu_3200_p2;
reg   [15:0] mul_ln251_reg_4700;
wire   [15:0] mul_ln264_fu_3209_p2;
reg   [15:0] mul_ln264_reg_4705;
wire   [15:0] mul_ln277_fu_3218_p2;
reg   [15:0] mul_ln277_reg_4710;
wire   [31:0] v198_1_fu_3256_p19;
reg   [31:0] v198_1_reg_4715;
wire   [31:0] v209_1_fu_3327_p19;
reg   [31:0] v209_1_reg_4720;
wire   [15:0] mul_ln171_1_fu_3369_p2;
reg   [15:0] mul_ln171_1_reg_4725;
wire   [15:0] mul_ln186_1_fu_3378_p2;
reg   [15:0] mul_ln186_1_reg_4730;
wire   [15:0] mul_ln199_1_fu_3387_p2;
reg   [15:0] mul_ln199_1_reg_4735;
wire   [15:0] mul_ln212_1_fu_3396_p2;
reg   [15:0] mul_ln212_1_reg_4740;
wire   [15:0] mul_ln225_1_fu_3405_p2;
reg   [15:0] mul_ln225_1_reg_4745;
wire   [15:0] mul_ln238_1_fu_3414_p2;
reg   [15:0] mul_ln238_1_reg_4750;
wire   [15:0] mul_ln251_1_fu_3423_p2;
reg   [15:0] mul_ln251_1_reg_4755;
wire   [15:0] mul_ln264_1_fu_3432_p2;
reg   [15:0] mul_ln264_1_reg_4760;
wire   [15:0] mul_ln277_1_fu_3441_p2;
reg   [15:0] mul_ln277_1_reg_4765;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4770_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4770_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4770_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4770_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4774_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4774_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4774_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4770_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4770_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4770_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4770_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4774_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4774_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4774_p_ce;
reg   [7:0] v115_reg_1386;
wire    ap_CS_fsm_state21;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_start_reg;
wire    ap_CS_fsm_state16;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_start_reg;
wire    ap_CS_fsm_state20;
wire   [63:0] p_cast1136_fu_1688_p1;
wire   [63:0] p_cast_fu_1699_p1;
wire   [63:0] p_cast1137_fu_1872_p1;
wire   [63:0] p_cast1138_fu_1883_p1;
wire   [63:0] p_cast1139_fu_2056_p1;
wire   [63:0] p_cast1140_fu_2067_p1;
wire   [63:0] p_cast1141_fu_2240_p1;
wire   [63:0] p_cast1142_fu_2251_p1;
wire   [63:0] p_cast1143_fu_2424_p1;
wire   [63:0] p_cast1144_fu_2435_p1;
wire   [63:0] p_cast1145_fu_2608_p1;
wire   [63:0] p_cast1146_fu_2619_p1;
wire   [63:0] p_cast1147_fu_2792_p1;
wire   [63:0] p_cast1148_fu_2803_p1;
wire   [63:0] p_cast1149_fu_2956_p1;
wire   [63:0] p_cast1150_fu_2967_p1;
wire   [63:0] p_cast1151_fu_3120_p1;
wire   [63:0] p_cast1152_fu_3131_p1;
reg   [15:0] phi_mul_fu_140;
wire   [0:0] icmp_ln169_fu_1602_p2;
reg   [7:0] v114_fu_144;
reg    v236_write_local;
reg    v226_0_ce1_local;
reg   [12:0] v226_0_address1_local;
reg    v226_0_ce0_local;
reg   [12:0] v226_0_address0_local;
reg    v226_1_ce1_local;
reg   [12:0] v226_1_address1_local;
reg    v226_1_ce0_local;
reg   [12:0] v226_1_address0_local;
reg    v226_2_ce1_local;
reg   [12:0] v226_2_address1_local;
reg    v226_2_ce0_local;
reg   [12:0] v226_2_address0_local;
reg    v226_3_ce1_local;
reg   [12:0] v226_3_address1_local;
reg    v226_3_ce0_local;
reg   [12:0] v226_3_address0_local;
reg    v226_4_ce1_local;
reg   [12:0] v226_4_address1_local;
reg    v226_4_ce0_local;
reg   [12:0] v226_4_address0_local;
reg    v226_5_ce1_local;
reg   [12:0] v226_5_address1_local;
reg    v226_5_ce0_local;
reg   [12:0] v226_5_address0_local;
reg    v226_6_ce1_local;
reg   [12:0] v226_6_address1_local;
reg    v226_6_ce0_local;
reg   [12:0] v226_6_address0_local;
reg    v226_7_ce1_local;
reg   [12:0] v226_7_address1_local;
reg    v226_7_ce0_local;
reg   [12:0] v226_7_address0_local;
reg   [31:0] grp_fu_1454_p0;
reg   [31:0] grp_fu_1458_p0;
reg   [31:0] grp_fu_1462_p0;
reg   [31:0] grp_fu_1466_p0;
reg   [31:0] grp_fu_1470_p0;
reg   [31:0] grp_fu_1474_p0;
reg   [31:0] grp_fu_1478_p0;
reg   [31:0] grp_fu_1482_p0;
reg   [31:0] grp_fu_1486_p0;
wire   [4:0] lshr_ln_fu_1582_p4;
wire   [6:0] tmp_fu_1612_p4;
wire   [12:0] grp_fu_3447_p3;
wire   [12:0] grp_fu_3455_p3;
wire   [31:0] v_fu_1762_p2;
wire   [31:0] v_fu_1762_p4;
wire   [31:0] v_fu_1762_p6;
wire   [31:0] v_fu_1762_p8;
wire   [31:0] v_fu_1762_p10;
wire   [31:0] v_fu_1762_p12;
wire   [31:0] v_fu_1762_p14;
wire   [31:0] v_fu_1762_p16;
wire   [31:0] v_fu_1762_p17;
wire   [31:0] v2_fu_1833_p2;
wire   [31:0] v2_fu_1833_p4;
wire   [31:0] v2_fu_1833_p6;
wire   [31:0] v2_fu_1833_p8;
wire   [31:0] v2_fu_1833_p10;
wire   [31:0] v2_fu_1833_p12;
wire   [31:0] v2_fu_1833_p14;
wire   [31:0] v2_fu_1833_p16;
wire   [31:0] v2_fu_1833_p17;
wire   [12:0] grp_fu_3463_p3;
wire   [12:0] grp_fu_3471_p3;
wire   [31:0] v4_fu_1946_p2;
wire   [31:0] v4_fu_1946_p4;
wire   [31:0] v4_fu_1946_p6;
wire   [31:0] v4_fu_1946_p8;
wire   [31:0] v4_fu_1946_p10;
wire   [31:0] v4_fu_1946_p12;
wire   [31:0] v4_fu_1946_p14;
wire   [31:0] v4_fu_1946_p16;
wire   [31:0] v4_fu_1946_p17;
wire   [31:0] v6_fu_2017_p2;
wire   [31:0] v6_fu_2017_p4;
wire   [31:0] v6_fu_2017_p6;
wire   [31:0] v6_fu_2017_p8;
wire   [31:0] v6_fu_2017_p10;
wire   [31:0] v6_fu_2017_p12;
wire   [31:0] v6_fu_2017_p14;
wire   [31:0] v6_fu_2017_p16;
wire   [31:0] v6_fu_2017_p17;
wire   [12:0] grp_fu_3479_p3;
wire   [12:0] grp_fu_3487_p3;
wire   [31:0] v8_fu_2130_p2;
wire   [31:0] v8_fu_2130_p4;
wire   [31:0] v8_fu_2130_p6;
wire   [31:0] v8_fu_2130_p8;
wire   [31:0] v8_fu_2130_p10;
wire   [31:0] v8_fu_2130_p12;
wire   [31:0] v8_fu_2130_p14;
wire   [31:0] v8_fu_2130_p16;
wire   [31:0] v8_fu_2130_p17;
wire   [31:0] v10_fu_2201_p2;
wire   [31:0] v10_fu_2201_p4;
wire   [31:0] v10_fu_2201_p6;
wire   [31:0] v10_fu_2201_p8;
wire   [31:0] v10_fu_2201_p10;
wire   [31:0] v10_fu_2201_p12;
wire   [31:0] v10_fu_2201_p14;
wire   [31:0] v10_fu_2201_p16;
wire   [31:0] v10_fu_2201_p17;
wire   [12:0] grp_fu_3495_p3;
wire   [12:0] grp_fu_3503_p3;
wire   [31:0] v12_fu_2314_p2;
wire   [31:0] v12_fu_2314_p4;
wire   [31:0] v12_fu_2314_p6;
wire   [31:0] v12_fu_2314_p8;
wire   [31:0] v12_fu_2314_p10;
wire   [31:0] v12_fu_2314_p12;
wire   [31:0] v12_fu_2314_p14;
wire   [31:0] v12_fu_2314_p16;
wire   [31:0] v12_fu_2314_p17;
wire   [31:0] v14_fu_2385_p2;
wire   [31:0] v14_fu_2385_p4;
wire   [31:0] v14_fu_2385_p6;
wire   [31:0] v14_fu_2385_p8;
wire   [31:0] v14_fu_2385_p10;
wire   [31:0] v14_fu_2385_p12;
wire   [31:0] v14_fu_2385_p14;
wire   [31:0] v14_fu_2385_p16;
wire   [31:0] v14_fu_2385_p17;
wire   [12:0] grp_fu_3511_p3;
wire   [12:0] grp_fu_3519_p3;
wire   [31:0] v16_fu_2498_p2;
wire   [31:0] v16_fu_2498_p4;
wire   [31:0] v16_fu_2498_p6;
wire   [31:0] v16_fu_2498_p8;
wire   [31:0] v16_fu_2498_p10;
wire   [31:0] v16_fu_2498_p12;
wire   [31:0] v16_fu_2498_p14;
wire   [31:0] v16_fu_2498_p16;
wire   [31:0] v16_fu_2498_p17;
wire   [31:0] v119_1_fu_2569_p2;
wire   [31:0] v119_1_fu_2569_p4;
wire   [31:0] v119_1_fu_2569_p6;
wire   [31:0] v119_1_fu_2569_p8;
wire   [31:0] v119_1_fu_2569_p10;
wire   [31:0] v119_1_fu_2569_p12;
wire   [31:0] v119_1_fu_2569_p14;
wire   [31:0] v119_1_fu_2569_p16;
wire   [31:0] v119_1_fu_2569_p17;
wire   [12:0] grp_fu_3527_p3;
wire   [12:0] grp_fu_3535_p3;
wire   [31:0] v132_1_fu_2682_p2;
wire   [31:0] v132_1_fu_2682_p4;
wire   [31:0] v132_1_fu_2682_p6;
wire   [31:0] v132_1_fu_2682_p8;
wire   [31:0] v132_1_fu_2682_p10;
wire   [31:0] v132_1_fu_2682_p12;
wire   [31:0] v132_1_fu_2682_p14;
wire   [31:0] v132_1_fu_2682_p16;
wire   [31:0] v132_1_fu_2682_p17;
wire   [31:0] v143_1_fu_2753_p2;
wire   [31:0] v143_1_fu_2753_p4;
wire   [31:0] v143_1_fu_2753_p6;
wire   [31:0] v143_1_fu_2753_p8;
wire   [31:0] v143_1_fu_2753_p10;
wire   [31:0] v143_1_fu_2753_p12;
wire   [31:0] v143_1_fu_2753_p14;
wire   [31:0] v143_1_fu_2753_p16;
wire   [31:0] v143_1_fu_2753_p17;
wire   [12:0] grp_fu_3543_p3;
wire   [12:0] grp_fu_3551_p3;
wire   [31:0] v154_1_fu_2846_p2;
wire   [31:0] v154_1_fu_2846_p4;
wire   [31:0] v154_1_fu_2846_p6;
wire   [31:0] v154_1_fu_2846_p8;
wire   [31:0] v154_1_fu_2846_p10;
wire   [31:0] v154_1_fu_2846_p12;
wire   [31:0] v154_1_fu_2846_p14;
wire   [31:0] v154_1_fu_2846_p16;
wire   [31:0] v154_1_fu_2846_p17;
wire   [31:0] v165_1_fu_2917_p2;
wire   [31:0] v165_1_fu_2917_p4;
wire   [31:0] v165_1_fu_2917_p6;
wire   [31:0] v165_1_fu_2917_p8;
wire   [31:0] v165_1_fu_2917_p10;
wire   [31:0] v165_1_fu_2917_p12;
wire   [31:0] v165_1_fu_2917_p14;
wire   [31:0] v165_1_fu_2917_p16;
wire   [31:0] v165_1_fu_2917_p17;
wire   [12:0] grp_fu_3559_p3;
wire   [12:0] grp_fu_3567_p3;
wire   [31:0] v176_1_fu_3010_p2;
wire   [31:0] v176_1_fu_3010_p4;
wire   [31:0] v176_1_fu_3010_p6;
wire   [31:0] v176_1_fu_3010_p8;
wire   [31:0] v176_1_fu_3010_p10;
wire   [31:0] v176_1_fu_3010_p12;
wire   [31:0] v176_1_fu_3010_p14;
wire   [31:0] v176_1_fu_3010_p16;
wire   [31:0] v176_1_fu_3010_p17;
wire   [31:0] v187_1_fu_3081_p2;
wire   [31:0] v187_1_fu_3081_p4;
wire   [31:0] v187_1_fu_3081_p6;
wire   [31:0] v187_1_fu_3081_p8;
wire   [31:0] v187_1_fu_3081_p10;
wire   [31:0] v187_1_fu_3081_p12;
wire   [31:0] v187_1_fu_3081_p14;
wire   [31:0] v187_1_fu_3081_p16;
wire   [31:0] v187_1_fu_3081_p17;
wire   [12:0] grp_fu_3575_p3;
wire   [12:0] grp_fu_3583_p3;
wire   [7:0] mul_ln171_fu_3146_p0;
wire   [8:0] mul_ln171_fu_3146_p1;
wire   [7:0] mul_ln186_fu_3155_p0;
wire   [8:0] mul_ln186_fu_3155_p1;
wire   [7:0] mul_ln199_fu_3164_p0;
wire   [8:0] mul_ln199_fu_3164_p1;
wire   [7:0] mul_ln212_fu_3173_p0;
wire   [8:0] mul_ln212_fu_3173_p1;
wire   [7:0] mul_ln225_fu_3182_p0;
wire   [8:0] mul_ln225_fu_3182_p1;
wire   [7:0] mul_ln238_fu_3191_p0;
wire   [8:0] mul_ln238_fu_3191_p1;
wire   [7:0] mul_ln251_fu_3200_p0;
wire   [8:0] mul_ln251_fu_3200_p1;
wire   [7:0] mul_ln264_fu_3209_p0;
wire   [8:0] mul_ln264_fu_3209_p1;
wire   [7:0] mul_ln277_fu_3218_p0;
wire   [8:0] mul_ln277_fu_3218_p1;
wire   [31:0] v198_1_fu_3256_p2;
wire   [31:0] v198_1_fu_3256_p4;
wire   [31:0] v198_1_fu_3256_p6;
wire   [31:0] v198_1_fu_3256_p8;
wire   [31:0] v198_1_fu_3256_p10;
wire   [31:0] v198_1_fu_3256_p12;
wire   [31:0] v198_1_fu_3256_p14;
wire   [31:0] v198_1_fu_3256_p16;
wire   [31:0] v198_1_fu_3256_p17;
wire   [31:0] v209_1_fu_3327_p2;
wire   [31:0] v209_1_fu_3327_p4;
wire   [31:0] v209_1_fu_3327_p6;
wire   [31:0] v209_1_fu_3327_p8;
wire   [31:0] v209_1_fu_3327_p10;
wire   [31:0] v209_1_fu_3327_p12;
wire   [31:0] v209_1_fu_3327_p14;
wire   [31:0] v209_1_fu_3327_p16;
wire   [31:0] v209_1_fu_3327_p17;
wire   [7:0] mul_ln171_1_fu_3369_p0;
wire   [8:0] mul_ln171_1_fu_3369_p1;
wire   [7:0] mul_ln186_1_fu_3378_p0;
wire   [8:0] mul_ln186_1_fu_3378_p1;
wire   [7:0] mul_ln199_1_fu_3387_p0;
wire   [8:0] mul_ln199_1_fu_3387_p1;
wire   [7:0] mul_ln212_1_fu_3396_p0;
wire   [8:0] mul_ln212_1_fu_3396_p1;
wire   [7:0] mul_ln225_1_fu_3405_p0;
wire   [8:0] mul_ln225_1_fu_3405_p1;
wire   [7:0] mul_ln238_1_fu_3414_p0;
wire   [8:0] mul_ln238_1_fu_3414_p1;
wire   [7:0] mul_ln251_1_fu_3423_p0;
wire   [8:0] mul_ln251_1_fu_3423_p1;
wire   [7:0] mul_ln264_1_fu_3432_p0;
wire   [8:0] mul_ln264_1_fu_3432_p1;
wire   [7:0] mul_ln277_1_fu_3441_p0;
wire   [8:0] mul_ln277_1_fu_3441_p1;
wire   [7:0] grp_fu_3447_p0;
wire   [4:0] grp_fu_3447_p1;
wire   [4:0] grp_fu_3447_p2;
wire   [7:0] grp_fu_3455_p0;
wire   [4:0] grp_fu_3455_p1;
wire   [4:0] grp_fu_3455_p2;
wire   [7:0] grp_fu_3463_p0;
wire   [4:0] grp_fu_3463_p1;
wire   [4:0] grp_fu_3463_p2;
wire   [7:0] grp_fu_3471_p0;
wire   [4:0] grp_fu_3471_p1;
wire   [4:0] grp_fu_3471_p2;
wire   [7:0] grp_fu_3479_p0;
wire   [4:0] grp_fu_3479_p1;
wire   [4:0] grp_fu_3479_p2;
wire   [7:0] grp_fu_3487_p0;
wire   [4:0] grp_fu_3487_p1;
wire   [4:0] grp_fu_3487_p2;
wire   [7:0] grp_fu_3495_p0;
wire   [4:0] grp_fu_3495_p1;
wire   [4:0] grp_fu_3495_p2;
wire   [7:0] grp_fu_3503_p0;
wire   [4:0] grp_fu_3503_p1;
wire   [4:0] grp_fu_3503_p2;
wire   [7:0] grp_fu_3511_p0;
wire   [4:0] grp_fu_3511_p1;
wire   [4:0] grp_fu_3511_p2;
wire   [7:0] grp_fu_3519_p0;
wire   [4:0] grp_fu_3519_p1;
wire   [4:0] grp_fu_3519_p2;
wire   [7:0] grp_fu_3527_p0;
wire   [4:0] grp_fu_3527_p1;
wire   [4:0] grp_fu_3527_p2;
wire   [7:0] grp_fu_3535_p0;
wire   [4:0] grp_fu_3535_p1;
wire   [4:0] grp_fu_3535_p2;
wire   [7:0] grp_fu_3543_p0;
wire   [4:0] grp_fu_3543_p1;
wire   [4:0] grp_fu_3543_p2;
wire   [7:0] grp_fu_3551_p0;
wire   [4:0] grp_fu_3551_p1;
wire   [4:0] grp_fu_3551_p2;
wire   [7:0] grp_fu_3559_p0;
wire   [4:0] grp_fu_3559_p1;
wire   [4:0] grp_fu_3559_p2;
wire   [7:0] grp_fu_3567_p0;
wire   [4:0] grp_fu_3567_p1;
wire   [4:0] grp_fu_3567_p2;
wire   [7:0] grp_fu_3575_p0;
wire   [4:0] grp_fu_3575_p1;
wire   [4:0] grp_fu_3575_p2;
wire   [7:0] grp_fu_3583_p0;
wire   [4:0] grp_fu_3583_p1;
wire   [4:0] grp_fu_3583_p2;
reg    grp_fu_1454_ce;
wire    ap_CS_fsm_state18;
reg    grp_fu_1458_ce;
reg    grp_fu_1462_ce;
reg    grp_fu_1466_ce;
reg    grp_fu_1470_ce;
reg    grp_fu_1474_ce;
reg    grp_fu_1478_ce;
reg    grp_fu_1482_ce;
reg    grp_fu_1486_ce;
reg   [31:0] grp_fu_4770_p0;
reg   [31:0] grp_fu_4770_p1;
reg    grp_fu_4770_ce;
reg   [31:0] grp_fu_4774_p0;
reg   [31:0] grp_fu_4774_p1;
reg    grp_fu_4774_ce;
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
wire   [12:0] grp_fu_3447_p00;
wire   [12:0] grp_fu_3455_p00;
wire   [12:0] grp_fu_3463_p00;
wire   [12:0] grp_fu_3471_p00;
wire   [12:0] grp_fu_3479_p00;
wire   [12:0] grp_fu_3487_p00;
wire   [12:0] grp_fu_3495_p00;
wire   [12:0] grp_fu_3503_p00;
wire   [12:0] grp_fu_3511_p00;
wire   [12:0] grp_fu_3519_p00;
wire   [12:0] grp_fu_3527_p00;
wire   [12:0] grp_fu_3535_p00;
wire   [12:0] grp_fu_3543_p00;
wire   [12:0] grp_fu_3551_p00;
wire   [12:0] grp_fu_3559_p00;
wire   [12:0] grp_fu_3567_p00;
wire   [12:0] grp_fu_3575_p00;
wire   [12:0] grp_fu_3583_p00;
wire   [15:0] mul_ln171_1_fu_3369_p00;
wire   [15:0] mul_ln171_fu_3146_p00;
wire   [15:0] mul_ln186_1_fu_3378_p00;
wire   [15:0] mul_ln186_fu_3155_p00;
wire   [15:0] mul_ln199_1_fu_3387_p00;
wire   [15:0] mul_ln199_fu_3164_p00;
wire   [15:0] mul_ln212_1_fu_3396_p00;
wire   [15:0] mul_ln212_fu_3173_p00;
wire   [15:0] mul_ln225_1_fu_3405_p00;
wire   [15:0] mul_ln225_fu_3182_p00;
wire   [15:0] mul_ln238_1_fu_3414_p00;
wire   [15:0] mul_ln238_fu_3191_p00;
wire   [15:0] mul_ln251_1_fu_3423_p00;
wire   [15:0] mul_ln251_fu_3200_p00;
wire   [15:0] mul_ln264_1_fu_3432_p00;
wire   [15:0] mul_ln264_fu_3209_p00;
wire   [15:0] mul_ln277_1_fu_3441_p00;
wire   [15:0] mul_ln277_fu_3218_p00;
wire   [2:0] v_fu_1762_p1;
wire   [2:0] v_fu_1762_p3;
wire   [2:0] v_fu_1762_p5;
wire   [2:0] v_fu_1762_p7;
wire  signed [2:0] v_fu_1762_p9;
wire  signed [2:0] v_fu_1762_p11;
wire  signed [2:0] v_fu_1762_p13;
wire  signed [2:0] v_fu_1762_p15;
wire   [2:0] v2_fu_1833_p1;
wire   [2:0] v2_fu_1833_p3;
wire   [2:0] v2_fu_1833_p5;
wire   [2:0] v2_fu_1833_p7;
wire  signed [2:0] v2_fu_1833_p9;
wire  signed [2:0] v2_fu_1833_p11;
wire  signed [2:0] v2_fu_1833_p13;
wire  signed [2:0] v2_fu_1833_p15;
wire   [2:0] v4_fu_1946_p1;
wire   [2:0] v4_fu_1946_p3;
wire   [2:0] v4_fu_1946_p5;
wire   [2:0] v4_fu_1946_p7;
wire  signed [2:0] v4_fu_1946_p9;
wire  signed [2:0] v4_fu_1946_p11;
wire  signed [2:0] v4_fu_1946_p13;
wire  signed [2:0] v4_fu_1946_p15;
wire   [2:0] v6_fu_2017_p1;
wire   [2:0] v6_fu_2017_p3;
wire   [2:0] v6_fu_2017_p5;
wire   [2:0] v6_fu_2017_p7;
wire  signed [2:0] v6_fu_2017_p9;
wire  signed [2:0] v6_fu_2017_p11;
wire  signed [2:0] v6_fu_2017_p13;
wire  signed [2:0] v6_fu_2017_p15;
wire   [2:0] v8_fu_2130_p1;
wire   [2:0] v8_fu_2130_p3;
wire   [2:0] v8_fu_2130_p5;
wire   [2:0] v8_fu_2130_p7;
wire  signed [2:0] v8_fu_2130_p9;
wire  signed [2:0] v8_fu_2130_p11;
wire  signed [2:0] v8_fu_2130_p13;
wire  signed [2:0] v8_fu_2130_p15;
wire   [2:0] v10_fu_2201_p1;
wire   [2:0] v10_fu_2201_p3;
wire   [2:0] v10_fu_2201_p5;
wire   [2:0] v10_fu_2201_p7;
wire  signed [2:0] v10_fu_2201_p9;
wire  signed [2:0] v10_fu_2201_p11;
wire  signed [2:0] v10_fu_2201_p13;
wire  signed [2:0] v10_fu_2201_p15;
wire   [2:0] v12_fu_2314_p1;
wire   [2:0] v12_fu_2314_p3;
wire   [2:0] v12_fu_2314_p5;
wire   [2:0] v12_fu_2314_p7;
wire  signed [2:0] v12_fu_2314_p9;
wire  signed [2:0] v12_fu_2314_p11;
wire  signed [2:0] v12_fu_2314_p13;
wire  signed [2:0] v12_fu_2314_p15;
wire   [2:0] v14_fu_2385_p1;
wire   [2:0] v14_fu_2385_p3;
wire   [2:0] v14_fu_2385_p5;
wire   [2:0] v14_fu_2385_p7;
wire  signed [2:0] v14_fu_2385_p9;
wire  signed [2:0] v14_fu_2385_p11;
wire  signed [2:0] v14_fu_2385_p13;
wire  signed [2:0] v14_fu_2385_p15;
wire   [2:0] v16_fu_2498_p1;
wire   [2:0] v16_fu_2498_p3;
wire   [2:0] v16_fu_2498_p5;
wire   [2:0] v16_fu_2498_p7;
wire  signed [2:0] v16_fu_2498_p9;
wire  signed [2:0] v16_fu_2498_p11;
wire  signed [2:0] v16_fu_2498_p13;
wire  signed [2:0] v16_fu_2498_p15;
wire   [2:0] v119_1_fu_2569_p1;
wire   [2:0] v119_1_fu_2569_p3;
wire   [2:0] v119_1_fu_2569_p5;
wire   [2:0] v119_1_fu_2569_p7;
wire  signed [2:0] v119_1_fu_2569_p9;
wire  signed [2:0] v119_1_fu_2569_p11;
wire  signed [2:0] v119_1_fu_2569_p13;
wire  signed [2:0] v119_1_fu_2569_p15;
wire   [2:0] v132_1_fu_2682_p1;
wire   [2:0] v132_1_fu_2682_p3;
wire   [2:0] v132_1_fu_2682_p5;
wire   [2:0] v132_1_fu_2682_p7;
wire  signed [2:0] v132_1_fu_2682_p9;
wire  signed [2:0] v132_1_fu_2682_p11;
wire  signed [2:0] v132_1_fu_2682_p13;
wire  signed [2:0] v132_1_fu_2682_p15;
wire   [2:0] v143_1_fu_2753_p1;
wire   [2:0] v143_1_fu_2753_p3;
wire   [2:0] v143_1_fu_2753_p5;
wire   [2:0] v143_1_fu_2753_p7;
wire  signed [2:0] v143_1_fu_2753_p9;
wire  signed [2:0] v143_1_fu_2753_p11;
wire  signed [2:0] v143_1_fu_2753_p13;
wire  signed [2:0] v143_1_fu_2753_p15;
wire   [2:0] v154_1_fu_2846_p1;
wire   [2:0] v154_1_fu_2846_p3;
wire   [2:0] v154_1_fu_2846_p5;
wire   [2:0] v154_1_fu_2846_p7;
wire  signed [2:0] v154_1_fu_2846_p9;
wire  signed [2:0] v154_1_fu_2846_p11;
wire  signed [2:0] v154_1_fu_2846_p13;
wire  signed [2:0] v154_1_fu_2846_p15;
wire   [2:0] v165_1_fu_2917_p1;
wire   [2:0] v165_1_fu_2917_p3;
wire   [2:0] v165_1_fu_2917_p5;
wire   [2:0] v165_1_fu_2917_p7;
wire  signed [2:0] v165_1_fu_2917_p9;
wire  signed [2:0] v165_1_fu_2917_p11;
wire  signed [2:0] v165_1_fu_2917_p13;
wire  signed [2:0] v165_1_fu_2917_p15;
wire   [2:0] v176_1_fu_3010_p1;
wire   [2:0] v176_1_fu_3010_p3;
wire   [2:0] v176_1_fu_3010_p5;
wire   [2:0] v176_1_fu_3010_p7;
wire  signed [2:0] v176_1_fu_3010_p9;
wire  signed [2:0] v176_1_fu_3010_p11;
wire  signed [2:0] v176_1_fu_3010_p13;
wire  signed [2:0] v176_1_fu_3010_p15;
wire   [2:0] v187_1_fu_3081_p1;
wire   [2:0] v187_1_fu_3081_p3;
wire   [2:0] v187_1_fu_3081_p5;
wire   [2:0] v187_1_fu_3081_p7;
wire  signed [2:0] v187_1_fu_3081_p9;
wire  signed [2:0] v187_1_fu_3081_p11;
wire  signed [2:0] v187_1_fu_3081_p13;
wire  signed [2:0] v187_1_fu_3081_p15;
wire   [2:0] v198_1_fu_3256_p1;
wire   [2:0] v198_1_fu_3256_p3;
wire   [2:0] v198_1_fu_3256_p5;
wire   [2:0] v198_1_fu_3256_p7;
wire  signed [2:0] v198_1_fu_3256_p9;
wire  signed [2:0] v198_1_fu_3256_p11;
wire  signed [2:0] v198_1_fu_3256_p13;
wire  signed [2:0] v198_1_fu_3256_p15;
wire   [2:0] v209_1_fu_3327_p1;
wire   [2:0] v209_1_fu_3327_p3;
wire   [2:0] v209_1_fu_3327_p5;
wire   [2:0] v209_1_fu_3327_p7;
wire  signed [2:0] v209_1_fu_3327_p9;
wire  signed [2:0] v209_1_fu_3327_p11;
wire  signed [2:0] v209_1_fu_3327_p13;
wire  signed [2:0] v209_1_fu_3327_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_start_reg = 1'b0;
#0 phi_mul_fu_140 = 16'd0;
#0 v114_fu_144 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_1398(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_ready),.phi_mul(phi_mul_load_reg_3618),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_4670),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_d1),.v225_q1(v225_q1),.mul_ln186(mul_ln186_reg_4675),.mul_ln199(mul_ln199_reg_4680),.mul_ln212(mul_ln212_reg_4685),.mul_ln225(mul_ln225_reg_4690),.mul_ln238(mul_ln238_reg_4695),.mul_ln251(mul_ln251_reg_4700),.mul_ln264(mul_ln264_reg_4705),.mul_ln277(mul_ln277_reg_4710),.cmp11(cmp11_reg_3681),.v120(reg_1490),.v133(reg_1496),.v144(reg_1502),.v155(reg_1508),.v166(reg_1514),.v177(reg_1520),.v188(reg_1526),.v199(reg_1532),.v210(reg_1538),.grp_fu_4770_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4770_p_din0),.grp_fu_4770_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4770_p_din1),.grp_fu_4770_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4770_p_opcode),.grp_fu_4770_p_dout0(grp_fu_172_p_dout0),.grp_fu_4770_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4770_p_ce),.grp_fu_4774_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4774_p_din0),.grp_fu_4774_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4774_p_din1),.grp_fu_4774_p_dout0(grp_fu_176_p_dout0),.grp_fu_4774_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4774_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_1426(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_ready),.phi_mul(phi_mul_load_reg_3618),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v227_ce1),.v227_q1(v227_q1),.mul_ln171_1(mul_ln171_1_reg_4725),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_d1),.v225_q1(v225_q1),.mul_ln186_1(mul_ln186_1_reg_4730),.mul_ln199_1(mul_ln199_1_reg_4735),.mul_ln212_1(mul_ln212_1_reg_4740),.mul_ln225_1(mul_ln225_1_reg_4745),.mul_ln238_1(mul_ln238_1_reg_4750),.mul_ln251_1(mul_ln251_1_reg_4755),.mul_ln264_1(mul_ln264_1_reg_4760),.mul_ln277_1(mul_ln277_1_reg_4765),.cmp11(cmp11_reg_3681),.v120_1(reg_1490),.v133_1(reg_1496),.v144_1(reg_1502),.v155_1(reg_1508),.v166_1(reg_1514),.v177_1(reg_1520),.v188_1(reg_1526),.v199_1(reg_1532),.v210_1(reg_1538),.grp_fu_4770_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4770_p_din0),.grp_fu_4770_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4770_p_din1),.grp_fu_4770_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4770_p_opcode),.grp_fu_4770_p_dout0(grp_fu_172_p_dout0),.grp_fu_4770_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4770_p_ce),.grp_fu_4774_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4774_p_din0),.grp_fu_4774_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4774_p_din1),.grp_fu_4774_p_dout0(grp_fu_176_p_dout0),.grp_fu_4774_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4774_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1474_p0),.din1(v113),.ce(grp_fu_1474_ce),.dout(grp_fu_1474_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1478_p0),.din1(v113),.ce(grp_fu_1478_ce),.dout(grp_fu_1478_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1482_p0),.din1(v113),.ce(grp_fu_1482_ce),.dout(grp_fu_1482_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U57(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1486_p0),.din1(v113),.ce(grp_fu_1486_ce),.dout(grp_fu_1486_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U58(.din0(v_fu_1762_p2),.din1(v_fu_1762_p4),.din2(v_fu_1762_p6),.din3(v_fu_1762_p8),.din4(v_fu_1762_p10),.din5(v_fu_1762_p12),.din6(v_fu_1762_p14),.din7(v_fu_1762_p16),.def(v_fu_1762_p17),.sel(trunc_ln168_reg_3637),.dout(v_fu_1762_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U59(.din0(v2_fu_1833_p2),.din1(v2_fu_1833_p4),.din2(v2_fu_1833_p6),.din3(v2_fu_1833_p8),.din4(v2_fu_1833_p10),.din5(v2_fu_1833_p12),.din6(v2_fu_1833_p14),.din7(v2_fu_1833_p16),.def(v2_fu_1833_p17),.sel(trunc_ln168_reg_3637),.dout(v2_fu_1833_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U60(.din0(v4_fu_1946_p2),.din1(v4_fu_1946_p4),.din2(v4_fu_1946_p6),.din3(v4_fu_1946_p8),.din4(v4_fu_1946_p10),.din5(v4_fu_1946_p12),.din6(v4_fu_1946_p14),.din7(v4_fu_1946_p16),.def(v4_fu_1946_p17),.sel(trunc_ln168_reg_3637),.dout(v4_fu_1946_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U61(.din0(v6_fu_2017_p2),.din1(v6_fu_2017_p4),.din2(v6_fu_2017_p6),.din3(v6_fu_2017_p8),.din4(v6_fu_2017_p10),.din5(v6_fu_2017_p12),.din6(v6_fu_2017_p14),.din7(v6_fu_2017_p16),.def(v6_fu_2017_p17),.sel(trunc_ln168_reg_3637),.dout(v6_fu_2017_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U62(.din0(v8_fu_2130_p2),.din1(v8_fu_2130_p4),.din2(v8_fu_2130_p6),.din3(v8_fu_2130_p8),.din4(v8_fu_2130_p10),.din5(v8_fu_2130_p12),.din6(v8_fu_2130_p14),.din7(v8_fu_2130_p16),.def(v8_fu_2130_p17),.sel(trunc_ln168_reg_3637),.dout(v8_fu_2130_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U63(.din0(v10_fu_2201_p2),.din1(v10_fu_2201_p4),.din2(v10_fu_2201_p6),.din3(v10_fu_2201_p8),.din4(v10_fu_2201_p10),.din5(v10_fu_2201_p12),.din6(v10_fu_2201_p14),.din7(v10_fu_2201_p16),.def(v10_fu_2201_p17),.sel(trunc_ln168_reg_3637),.dout(v10_fu_2201_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U64(.din0(v12_fu_2314_p2),.din1(v12_fu_2314_p4),.din2(v12_fu_2314_p6),.din3(v12_fu_2314_p8),.din4(v12_fu_2314_p10),.din5(v12_fu_2314_p12),.din6(v12_fu_2314_p14),.din7(v12_fu_2314_p16),.def(v12_fu_2314_p17),.sel(trunc_ln168_reg_3637),.dout(v12_fu_2314_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U65(.din0(v14_fu_2385_p2),.din1(v14_fu_2385_p4),.din2(v14_fu_2385_p6),.din3(v14_fu_2385_p8),.din4(v14_fu_2385_p10),.din5(v14_fu_2385_p12),.din6(v14_fu_2385_p14),.din7(v14_fu_2385_p16),.def(v14_fu_2385_p17),.sel(trunc_ln168_reg_3637),.dout(v14_fu_2385_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U66(.din0(v16_fu_2498_p2),.din1(v16_fu_2498_p4),.din2(v16_fu_2498_p6),.din3(v16_fu_2498_p8),.din4(v16_fu_2498_p10),.din5(v16_fu_2498_p12),.din6(v16_fu_2498_p14),.din7(v16_fu_2498_p16),.def(v16_fu_2498_p17),.sel(trunc_ln168_reg_3637),.dout(v16_fu_2498_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U67(.din0(v119_1_fu_2569_p2),.din1(v119_1_fu_2569_p4),.din2(v119_1_fu_2569_p6),.din3(v119_1_fu_2569_p8),.din4(v119_1_fu_2569_p10),.din5(v119_1_fu_2569_p12),.din6(v119_1_fu_2569_p14),.din7(v119_1_fu_2569_p16),.def(v119_1_fu_2569_p17),.sel(trunc_ln168_reg_3637),.dout(v119_1_fu_2569_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U68(.din0(v132_1_fu_2682_p2),.din1(v132_1_fu_2682_p4),.din2(v132_1_fu_2682_p6),.din3(v132_1_fu_2682_p8),.din4(v132_1_fu_2682_p10),.din5(v132_1_fu_2682_p12),.din6(v132_1_fu_2682_p14),.din7(v132_1_fu_2682_p16),.def(v132_1_fu_2682_p17),.sel(trunc_ln168_reg_3637),.dout(v132_1_fu_2682_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U69(.din0(v143_1_fu_2753_p2),.din1(v143_1_fu_2753_p4),.din2(v143_1_fu_2753_p6),.din3(v143_1_fu_2753_p8),.din4(v143_1_fu_2753_p10),.din5(v143_1_fu_2753_p12),.din6(v143_1_fu_2753_p14),.din7(v143_1_fu_2753_p16),.def(v143_1_fu_2753_p17),.sel(trunc_ln168_reg_3637),.dout(v143_1_fu_2753_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U70(.din0(v154_1_fu_2846_p2),.din1(v154_1_fu_2846_p4),.din2(v154_1_fu_2846_p6),.din3(v154_1_fu_2846_p8),.din4(v154_1_fu_2846_p10),.din5(v154_1_fu_2846_p12),.din6(v154_1_fu_2846_p14),.din7(v154_1_fu_2846_p16),.def(v154_1_fu_2846_p17),.sel(trunc_ln168_reg_3637),.dout(v154_1_fu_2846_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U71(.din0(v165_1_fu_2917_p2),.din1(v165_1_fu_2917_p4),.din2(v165_1_fu_2917_p6),.din3(v165_1_fu_2917_p8),.din4(v165_1_fu_2917_p10),.din5(v165_1_fu_2917_p12),.din6(v165_1_fu_2917_p14),.din7(v165_1_fu_2917_p16),.def(v165_1_fu_2917_p17),.sel(trunc_ln168_reg_3637),.dout(v165_1_fu_2917_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U72(.din0(v176_1_fu_3010_p2),.din1(v176_1_fu_3010_p4),.din2(v176_1_fu_3010_p6),.din3(v176_1_fu_3010_p8),.din4(v176_1_fu_3010_p10),.din5(v176_1_fu_3010_p12),.din6(v176_1_fu_3010_p14),.din7(v176_1_fu_3010_p16),.def(v176_1_fu_3010_p17),.sel(trunc_ln168_reg_3637),.dout(v176_1_fu_3010_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U73(.din0(v187_1_fu_3081_p2),.din1(v187_1_fu_3081_p4),.din2(v187_1_fu_3081_p6),.din3(v187_1_fu_3081_p8),.din4(v187_1_fu_3081_p10),.din5(v187_1_fu_3081_p12),.din6(v187_1_fu_3081_p14),.din7(v187_1_fu_3081_p16),.def(v187_1_fu_3081_p17),.sel(trunc_ln168_reg_3637),.dout(v187_1_fu_3081_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U74(.din0(mul_ln171_fu_3146_p0),.din1(mul_ln171_fu_3146_p1),.dout(mul_ln171_fu_3146_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U75(.din0(mul_ln186_fu_3155_p0),.din1(mul_ln186_fu_3155_p1),.dout(mul_ln186_fu_3155_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U76(.din0(mul_ln199_fu_3164_p0),.din1(mul_ln199_fu_3164_p1),.dout(mul_ln199_fu_3164_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U77(.din0(mul_ln212_fu_3173_p0),.din1(mul_ln212_fu_3173_p1),.dout(mul_ln212_fu_3173_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U78(.din0(mul_ln225_fu_3182_p0),.din1(mul_ln225_fu_3182_p1),.dout(mul_ln225_fu_3182_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U79(.din0(mul_ln238_fu_3191_p0),.din1(mul_ln238_fu_3191_p1),.dout(mul_ln238_fu_3191_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U80(.din0(mul_ln251_fu_3200_p0),.din1(mul_ln251_fu_3200_p1),.dout(mul_ln251_fu_3200_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U81(.din0(mul_ln264_fu_3209_p0),.din1(mul_ln264_fu_3209_p1),.dout(mul_ln264_fu_3209_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U82(.din0(mul_ln277_fu_3218_p0),.din1(mul_ln277_fu_3218_p1),.dout(mul_ln277_fu_3218_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U83(.din0(v198_1_fu_3256_p2),.din1(v198_1_fu_3256_p4),.din2(v198_1_fu_3256_p6),.din3(v198_1_fu_3256_p8),.din4(v198_1_fu_3256_p10),.din5(v198_1_fu_3256_p12),.din6(v198_1_fu_3256_p14),.din7(v198_1_fu_3256_p16),.def(v198_1_fu_3256_p17),.sel(trunc_ln168_reg_3637),.dout(v198_1_fu_3256_p19));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U84(.din0(v209_1_fu_3327_p2),.din1(v209_1_fu_3327_p4),.din2(v209_1_fu_3327_p6),.din3(v209_1_fu_3327_p8),.din4(v209_1_fu_3327_p10),.din5(v209_1_fu_3327_p12),.din6(v209_1_fu_3327_p14),.din7(v209_1_fu_3327_p16),.def(v209_1_fu_3327_p17),.sel(trunc_ln168_reg_3637),.dout(v209_1_fu_3327_p19));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U85(.din0(mul_ln171_1_fu_3369_p0),.din1(mul_ln171_1_fu_3369_p1),.dout(mul_ln171_1_fu_3369_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U86(.din0(mul_ln186_1_fu_3378_p0),.din1(mul_ln186_1_fu_3378_p1),.dout(mul_ln186_1_fu_3378_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U87(.din0(mul_ln199_1_fu_3387_p0),.din1(mul_ln199_1_fu_3387_p1),.dout(mul_ln199_1_fu_3387_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U88(.din0(mul_ln212_1_fu_3396_p0),.din1(mul_ln212_1_fu_3396_p1),.dout(mul_ln212_1_fu_3396_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U89(.din0(mul_ln225_1_fu_3405_p0),.din1(mul_ln225_1_fu_3405_p1),.dout(mul_ln225_1_fu_3405_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U90(.din0(mul_ln238_1_fu_3414_p0),.din1(mul_ln238_1_fu_3414_p1),.dout(mul_ln238_1_fu_3414_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U91(.din0(mul_ln251_1_fu_3423_p0),.din1(mul_ln251_1_fu_3423_p1),.dout(mul_ln251_1_fu_3423_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U92(.din0(mul_ln264_1_fu_3432_p0),.din1(mul_ln264_1_fu_3432_p1),.dout(mul_ln264_1_fu_3432_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U93(.din0(mul_ln277_1_fu_3441_p0),.din1(mul_ln277_1_fu_3441_p1),.dout(mul_ln277_1_fu_3441_p2));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U94(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3447_p0),.din1(grp_fu_3447_p1),.din2(grp_fu_3447_p2),.ce(1'b1),.dout(grp_fu_3447_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U95(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3455_p0),.din1(grp_fu_3455_p1),.din2(grp_fu_3455_p2),.ce(1'b1),.dout(grp_fu_3455_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U96(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3463_p0),.din1(grp_fu_3463_p1),.din2(grp_fu_3463_p2),.ce(1'b1),.dout(grp_fu_3463_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U97(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3471_p0),.din1(grp_fu_3471_p1),.din2(grp_fu_3471_p2),.ce(1'b1),.dout(grp_fu_3471_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3479_p0),.din1(grp_fu_3479_p1),.din2(grp_fu_3479_p2),.ce(1'b1),.dout(grp_fu_3479_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3487_p0),.din1(grp_fu_3487_p1),.din2(grp_fu_3487_p2),.ce(1'b1),.dout(grp_fu_3487_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3495_p0),.din1(grp_fu_3495_p1),.din2(grp_fu_3495_p2),.ce(1'b1),.dout(grp_fu_3495_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3503_p0),.din1(grp_fu_3503_p1),.din2(grp_fu_3503_p2),.ce(1'b1),.dout(grp_fu_3503_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U102(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3511_p0),.din1(grp_fu_3511_p1),.din2(grp_fu_3511_p2),.ce(1'b1),.dout(grp_fu_3511_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U103(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3519_p0),.din1(grp_fu_3519_p1),.din2(grp_fu_3519_p2),.ce(1'b1),.dout(grp_fu_3519_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3527_p0),.din1(grp_fu_3527_p1),.din2(grp_fu_3527_p2),.ce(1'b1),.dout(grp_fu_3527_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3535_p0),.din1(grp_fu_3535_p1),.din2(grp_fu_3535_p2),.ce(1'b1),.dout(grp_fu_3535_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U106(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3543_p0),.din1(grp_fu_3543_p1),.din2(grp_fu_3543_p2),.ce(1'b1),.dout(grp_fu_3543_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U107(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3551_p0),.din1(grp_fu_3551_p1),.din2(grp_fu_3551_p2),.ce(1'b1),.dout(grp_fu_3551_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U108(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3559_p0),.din1(grp_fu_3559_p1),.din2(grp_fu_3559_p2),.ce(1'b1),.dout(grp_fu_3559_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U109(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3567_p0),.din1(grp_fu_3567_p1),.din2(grp_fu_3567_p2),.ce(1'b1),.dout(grp_fu_3567_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U110(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3575_p0),.din1(grp_fu_3575_p1),.din2(grp_fu_3575_p2),.ce(1'b1),.dout(grp_fu_3575_p3));
kernel_2mm_mac_muladd_8ns_5ns_5ns_13_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 13 ))
mac_muladd_8ns_5ns_5ns_13_4_1_U111(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_3583_p0),.din1(grp_fu_3583_p1),.din2(grp_fu_3583_p2),.ce(1'b1),.dout(grp_fu_3583_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_140 <= 16'd0;
    end else if (((icmp_ln169_fu_1602_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_140 <= add_ln168_1_reg_3624;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_144 <= 8'd0;
    end else if (((icmp_ln169_fu_1602_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_144 <= add_ln168_reg_3632;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1566_p2 == 1'd0))) begin
        v115_reg_1386 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        v115_reg_1386 <= add_ln169_1_reg_3705;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_3624 <= add_ln168_1_fu_1560_p2;
        add_ln168_reg_3632 <= add_ln168_fu_1572_p2;
        cmp11_reg_3681 <= cmp11_fu_1596_p2;
        phi_mul_load_reg_3618 <= phi_mul_fu_140;
        trunc_ln168_reg_3637 <= trunc_ln168_fu_1578_p1;
        zext_ln168_reg_3659[4 : 0] <= zext_ln168_fu_1592_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_1_reg_3705 <= add_ln169_1_fu_1634_p2;
        tmp_1_reg_3695[7 : 1] <= tmp_1_fu_1622_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln169_reg_3950 <= add_ln169_fu_1904_p2;
        empty_99_reg_3940 <= empty_99_fu_1894_p2;
        v2_reg_3855 <= v2_fu_1833_p19;
        v_reg_3850 <= v_fu_1762_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_120_reg_4050 <= empty_120_fu_2078_p2;
        empty_131_reg_4060 <= empty_131_fu_2088_p2;
        v4_reg_3960 <= v4_fu_1946_p19;
        v6_reg_3965 <= v6_fu_2017_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_142_reg_4160 <= empty_142_fu_2262_p2;
        empty_153_reg_4170 <= empty_153_fu_2272_p2;
        v10_reg_4075 <= v10_fu_2201_p19;
        v8_reg_4070 <= v8_fu_2130_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_164_reg_4270 <= empty_164_fu_2446_p2;
        empty_175_reg_4280 <= empty_175_fu_2456_p2;
        v12_reg_4180 <= v12_fu_2314_p19;
        v14_reg_4185 <= v14_fu_2385_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        empty_186_reg_4380 <= empty_186_fu_2630_p2;
        empty_197_reg_4390 <= empty_197_fu_2640_p2;
        v119_1_reg_4295 <= v119_1_fu_2569_p19;
        v16_reg_4290 <= v16_fu_2498_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_33_reg_3710 <= empty_33_fu_1648_p2;
        empty_44_reg_3720 <= empty_44_fu_1658_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_55_reg_3730 <= empty_55_fu_1668_p2;
        empty_66_reg_3740 <= empty_66_fu_1678_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_77_reg_3830 <= empty_77_fu_1710_p2;
        empty_88_reg_3840 <= empty_88_fu_1720_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_ln171_1_reg_4725 <= mul_ln171_1_fu_3369_p2;
        mul_ln186_1_reg_4730 <= mul_ln186_1_fu_3378_p2;
        mul_ln199_1_reg_4735 <= mul_ln199_1_fu_3387_p2;
        mul_ln212_1_reg_4740 <= mul_ln212_1_fu_3396_p2;
        mul_ln225_1_reg_4745 <= mul_ln225_1_fu_3405_p2;
        mul_ln238_1_reg_4750 <= mul_ln238_1_fu_3414_p2;
        mul_ln251_1_reg_4755 <= mul_ln251_1_fu_3423_p2;
        mul_ln264_1_reg_4760 <= mul_ln264_1_fu_3432_p2;
        mul_ln277_1_reg_4765 <= mul_ln277_1_fu_3441_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_4670 <= mul_ln171_fu_3146_p2;
        mul_ln186_reg_4675 <= mul_ln186_fu_3155_p2;
        mul_ln199_reg_4680 <= mul_ln199_fu_3164_p2;
        mul_ln212_reg_4685 <= mul_ln212_fu_3173_p2;
        mul_ln225_reg_4690 <= mul_ln225_fu_3182_p2;
        mul_ln238_reg_4695 <= mul_ln238_fu_3191_p2;
        mul_ln251_reg_4700 <= mul_ln251_fu_3200_p2;
        mul_ln264_reg_4705 <= mul_ln264_fu_3209_p2;
        mul_ln277_reg_4710 <= mul_ln277_fu_3218_p2;
        v198_1_reg_4715 <= v198_1_fu_3256_p19;
        v209_1_reg_4720 <= v209_1_fu_3327_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_1490 <= grp_fu_152_p_dout0;
        reg_1496 <= grp_fu_156_p_dout0;
        reg_1502 <= grp_fu_160_p_dout0;
        reg_1508 <= grp_fu_164_p_dout0;
        reg_1514 <= grp_fu_168_p_dout0;
        reg_1520 <= grp_fu_1474_p2;
        reg_1526 <= grp_fu_1478_p2;
        reg_1532 <= grp_fu_1482_p2;
        reg_1538 <= grp_fu_1486_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v132_1_reg_4400 <= v132_1_fu_2682_p19;
        v143_1_reg_4405 <= v143_1_fu_2753_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        v154_1_reg_4490 <= v154_1_fu_2846_p19;
        v165_1_reg_4495 <= v165_1_fu_2917_p19;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v176_1_reg_4580 <= v176_1_fu_3010_p19;
        v187_1_reg_4585 <= v187_1_fu_3081_p19;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1566_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1566_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1454_ce = 1'b1;
    end else begin
        grp_fu_1454_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1454_p0 = v119_1_reg_4295;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1454_p0 = v_reg_3850;
    end else begin
        grp_fu_1454_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1458_ce = 1'b1;
    end else begin
        grp_fu_1458_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1458_p0 = v132_1_reg_4400;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1458_p0 = v2_reg_3855;
    end else begin
        grp_fu_1458_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1462_ce = 1'b1;
    end else begin
        grp_fu_1462_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1462_p0 = v143_1_reg_4405;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1462_p0 = v4_reg_3960;
    end else begin
        grp_fu_1462_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1466_ce = 1'b1;
    end else begin
        grp_fu_1466_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1466_p0 = v154_1_reg_4490;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1466_p0 = v6_reg_3965;
    end else begin
        grp_fu_1466_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1470_ce = 1'b1;
    end else begin
        grp_fu_1470_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1470_p0 = v165_1_reg_4495;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1470_p0 = v8_reg_4070;
    end else begin
        grp_fu_1470_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1474_ce = 1'b1;
    end else begin
        grp_fu_1474_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1474_p0 = v176_1_reg_4580;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1474_p0 = v10_reg_4075;
    end else begin
        grp_fu_1474_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1478_ce = 1'b1;
    end else begin
        grp_fu_1478_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1478_p0 = v187_1_reg_4585;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1478_p0 = v12_reg_4180;
    end else begin
        grp_fu_1478_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1482_ce = 1'b1;
    end else begin
        grp_fu_1482_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1482_p0 = v198_1_reg_4715;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1482_p0 = v14_reg_4185;
    end else begin
        grp_fu_1482_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1486_ce = 1'b1;
    end else begin
        grp_fu_1486_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1486_p0 = v209_1_reg_4720;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1486_p0 = v16_reg_4290;
    end else begin
        grp_fu_1486_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_4770_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4770_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_4770_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4770_p_ce;
    end else begin
        grp_fu_4770_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_4770_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4770_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_4770_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4770_p_din0;
    end else begin
        grp_fu_4770_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_4770_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4770_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_4770_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4770_p_din1;
    end else begin
        grp_fu_4770_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_4774_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4774_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_4774_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4774_p_ce;
    end else begin
        grp_fu_4774_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_4774_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4774_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_4774_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4774_p_din0;
    end else begin
        grp_fu_4774_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_4774_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_grp_fu_4774_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_4774_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_grp_fu_4774_p_din1;
    end else begin
        grp_fu_4774_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address0_local = p_cast1152_fu_3131_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address0_local = p_cast1150_fu_2967_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address0_local = p_cast1148_fu_2803_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address0_local = p_cast1146_fu_2619_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast1144_fu_2435_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast1142_fu_2251_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast1140_fu_2067_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast1138_fu_1883_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast_fu_1699_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address1_local = p_cast1151_fu_3120_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address1_local = p_cast1149_fu_2956_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address1_local = p_cast1147_fu_2792_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address1_local = p_cast1145_fu_2608_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast1143_fu_2424_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast1141_fu_2240_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast1139_fu_2056_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast1137_fu_1872_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address1_local = p_cast1136_fu_1688_p1;
    end else begin
        v226_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_0_ce0_local = 1'b1;
    end else begin
        v226_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_0_ce1_local = 1'b1;
    end else begin
        v226_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address0_local = p_cast1152_fu_3131_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address0_local = p_cast1150_fu_2967_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address0_local = p_cast1148_fu_2803_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address0_local = p_cast1146_fu_2619_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address0_local = p_cast1144_fu_2435_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast1142_fu_2251_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast1140_fu_2067_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast1138_fu_1883_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast_fu_1699_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address1_local = p_cast1151_fu_3120_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address1_local = p_cast1149_fu_2956_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address1_local = p_cast1147_fu_2792_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address1_local = p_cast1145_fu_2608_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast1143_fu_2424_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast1141_fu_2240_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast1139_fu_2056_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast1137_fu_1872_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address1_local = p_cast1136_fu_1688_p1;
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_2_address0_local = p_cast1152_fu_3131_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_2_address0_local = p_cast1150_fu_2967_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_2_address0_local = p_cast1148_fu_2803_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_2_address0_local = p_cast1146_fu_2619_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address0_local = p_cast1144_fu_2435_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast1142_fu_2251_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast1140_fu_2067_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast1138_fu_1883_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast_fu_1699_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_2_address1_local = p_cast1151_fu_3120_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_2_address1_local = p_cast1149_fu_2956_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_2_address1_local = p_cast1147_fu_2792_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_2_address1_local = p_cast1145_fu_2608_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast1143_fu_2424_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast1141_fu_2240_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast1139_fu_2056_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast1137_fu_1872_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address1_local = p_cast1136_fu_1688_p1;
    end else begin
        v226_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_2_ce0_local = 1'b1;
    end else begin
        v226_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_2_ce1_local = 1'b1;
    end else begin
        v226_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_3_address0_local = p_cast1152_fu_3131_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_3_address0_local = p_cast1150_fu_2967_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_3_address0_local = p_cast1148_fu_2803_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_3_address0_local = p_cast1146_fu_2619_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address0_local = p_cast1144_fu_2435_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast1142_fu_2251_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast1140_fu_2067_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast1138_fu_1883_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast_fu_1699_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_3_address1_local = p_cast1151_fu_3120_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_3_address1_local = p_cast1149_fu_2956_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_3_address1_local = p_cast1147_fu_2792_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_3_address1_local = p_cast1145_fu_2608_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast1143_fu_2424_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast1141_fu_2240_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast1139_fu_2056_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast1137_fu_1872_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address1_local = p_cast1136_fu_1688_p1;
    end else begin
        v226_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_3_ce0_local = 1'b1;
    end else begin
        v226_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_3_ce1_local = 1'b1;
    end else begin
        v226_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_4_address0_local = p_cast1152_fu_3131_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_4_address0_local = p_cast1150_fu_2967_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_4_address0_local = p_cast1148_fu_2803_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_4_address0_local = p_cast1146_fu_2619_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_4_address0_local = p_cast1144_fu_2435_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address0_local = p_cast1142_fu_2251_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address0_local = p_cast1140_fu_2067_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address0_local = p_cast1138_fu_1883_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_4_address0_local = p_cast_fu_1699_p1;
    end else begin
        v226_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_4_address1_local = p_cast1151_fu_3120_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_4_address1_local = p_cast1149_fu_2956_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_4_address1_local = p_cast1147_fu_2792_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_4_address1_local = p_cast1145_fu_2608_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_4_address1_local = p_cast1143_fu_2424_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_4_address1_local = p_cast1141_fu_2240_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_4_address1_local = p_cast1139_fu_2056_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_4_address1_local = p_cast1137_fu_1872_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_4_address1_local = p_cast1136_fu_1688_p1;
    end else begin
        v226_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_4_ce0_local = 1'b1;
    end else begin
        v226_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_4_ce1_local = 1'b1;
    end else begin
        v226_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_5_address0_local = p_cast1152_fu_3131_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_5_address0_local = p_cast1150_fu_2967_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_5_address0_local = p_cast1148_fu_2803_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_5_address0_local = p_cast1146_fu_2619_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_5_address0_local = p_cast1144_fu_2435_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_5_address0_local = p_cast1142_fu_2251_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_5_address0_local = p_cast1140_fu_2067_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_5_address0_local = p_cast1138_fu_1883_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_5_address0_local = p_cast_fu_1699_p1;
    end else begin
        v226_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_5_address1_local = p_cast1151_fu_3120_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_5_address1_local = p_cast1149_fu_2956_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_5_address1_local = p_cast1147_fu_2792_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_5_address1_local = p_cast1145_fu_2608_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_5_address1_local = p_cast1143_fu_2424_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_5_address1_local = p_cast1141_fu_2240_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_5_address1_local = p_cast1139_fu_2056_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_5_address1_local = p_cast1137_fu_1872_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_5_address1_local = p_cast1136_fu_1688_p1;
    end else begin
        v226_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_5_ce0_local = 1'b1;
    end else begin
        v226_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_5_ce1_local = 1'b1;
    end else begin
        v226_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_6_address0_local = p_cast1152_fu_3131_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_6_address0_local = p_cast1150_fu_2967_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_6_address0_local = p_cast1148_fu_2803_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_6_address0_local = p_cast1146_fu_2619_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_6_address0_local = p_cast1144_fu_2435_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address0_local = p_cast1142_fu_2251_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address0_local = p_cast1140_fu_2067_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address0_local = p_cast1138_fu_1883_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_6_address0_local = p_cast_fu_1699_p1;
    end else begin
        v226_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_6_address1_local = p_cast1151_fu_3120_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_6_address1_local = p_cast1149_fu_2956_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_6_address1_local = p_cast1147_fu_2792_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_6_address1_local = p_cast1145_fu_2608_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_6_address1_local = p_cast1143_fu_2424_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_6_address1_local = p_cast1141_fu_2240_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_6_address1_local = p_cast1139_fu_2056_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_6_address1_local = p_cast1137_fu_1872_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_6_address1_local = p_cast1136_fu_1688_p1;
    end else begin
        v226_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_6_ce0_local = 1'b1;
    end else begin
        v226_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_6_ce1_local = 1'b1;
    end else begin
        v226_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_7_address0_local = p_cast1152_fu_3131_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_7_address0_local = p_cast1150_fu_2967_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_7_address0_local = p_cast1148_fu_2803_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_7_address0_local = p_cast1146_fu_2619_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_7_address0_local = p_cast1144_fu_2435_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_7_address0_local = p_cast1142_fu_2251_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_7_address0_local = p_cast1140_fu_2067_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_7_address0_local = p_cast1138_fu_1883_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_7_address0_local = p_cast_fu_1699_p1;
    end else begin
        v226_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_7_address1_local = p_cast1151_fu_3120_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_7_address1_local = p_cast1149_fu_2956_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_7_address1_local = p_cast1147_fu_2792_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_7_address1_local = p_cast1145_fu_2608_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_7_address1_local = p_cast1143_fu_2424_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_7_address1_local = p_cast1141_fu_2240_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_7_address1_local = p_cast1139_fu_2056_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_7_address1_local = p_cast1137_fu_1872_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_7_address1_local = p_cast1136_fu_1688_p1;
    end else begin
        v226_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_7_ce0_local = 1'b1;
    end else begin
        v226_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_7_ce1_local = 1'b1;
    end else begin
        v226_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1566_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1566_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1566_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1566_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_1602_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
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
assign add_ln168_1_fu_1560_p2 = (phi_mul_fu_140 + 16'd190);
assign add_ln168_fu_1572_p2 = (v114_fu_144 + 8'd1);
assign add_ln169_1_fu_1634_p2 = (v115_reg_1386 + 8'd18);
assign add_ln169_fu_1904_p2 = (v115_reg_1386 + 8'd9);
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
    ap_block_state2 = ((icmp_ln168_fu_1566_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_1596_p2 = ((v114_fu_144 == 8'd0) ? 1'b1 : 1'b0);
assign empty_120_fu_2078_p2 = (v115_reg_1386 + 8'd10);
assign empty_131_fu_2088_p2 = (v115_reg_1386 + 8'd11);
assign empty_142_fu_2262_p2 = (v115_reg_1386 + 8'd12);
assign empty_153_fu_2272_p2 = (v115_reg_1386 + 8'd13);
assign empty_164_fu_2446_p2 = (v115_reg_1386 + 8'd14);
assign empty_175_fu_2456_p2 = (v115_reg_1386 + 8'd15);
assign empty_186_fu_2630_p2 = (v115_reg_1386 + 8'd16);
assign empty_197_fu_2640_p2 = (v115_reg_1386 + 8'd17);
assign empty_33_fu_1648_p2 = (v115_reg_1386 + 8'd2);
assign empty_44_fu_1658_p2 = (v115_reg_1386 + 8'd3);
assign empty_55_fu_1668_p2 = (v115_reg_1386 + 8'd4);
assign empty_66_fu_1678_p2 = (v115_reg_1386 + 8'd5);
assign empty_77_fu_1710_p2 = (v115_reg_1386 + 8'd6);
assign empty_88_fu_1720_p2 = (v115_reg_1386 + 8'd7);
assign empty_99_fu_1894_p2 = (v115_reg_1386 + 8'd8);
assign grp_fu_152_p_ce = grp_fu_1454_ce;
assign grp_fu_152_p_din0 = grp_fu_1454_p0;
assign grp_fu_152_p_din1 = v113;
assign grp_fu_156_p_ce = grp_fu_1458_ce;
assign grp_fu_156_p_din0 = grp_fu_1458_p0;
assign grp_fu_156_p_din1 = v113;
assign grp_fu_160_p_ce = grp_fu_1462_ce;
assign grp_fu_160_p_din0 = grp_fu_1462_p0;
assign grp_fu_160_p_din1 = v113;
assign grp_fu_164_p_ce = grp_fu_1466_ce;
assign grp_fu_164_p_din0 = grp_fu_1466_p0;
assign grp_fu_164_p_din1 = v113;
assign grp_fu_168_p_ce = grp_fu_1470_ce;
assign grp_fu_168_p_din0 = grp_fu_1470_p0;
assign grp_fu_168_p_din1 = v113;
assign grp_fu_172_p_ce = grp_fu_4770_ce;
assign grp_fu_172_p_din0 = grp_fu_4770_p0;
assign grp_fu_172_p_din1 = grp_fu_4770_p1;
assign grp_fu_172_p_opcode = 2'd0;
assign grp_fu_176_p_ce = grp_fu_4774_ce;
assign grp_fu_176_p_din0 = grp_fu_4774_p0;
assign grp_fu_176_p_din1 = grp_fu_4774_p1;
assign grp_fu_3447_p0 = grp_fu_3447_p00;
assign grp_fu_3447_p00 = v115_reg_1386;
assign grp_fu_3447_p1 = 13'd27;
assign grp_fu_3447_p2 = zext_ln168_reg_3659;
assign grp_fu_3455_p0 = grp_fu_3455_p00;
assign grp_fu_3455_p00 = tmp_1_fu_1622_p3;
assign grp_fu_3455_p1 = 13'd27;
assign grp_fu_3455_p2 = zext_ln168_reg_3659;
assign grp_fu_3463_p0 = grp_fu_3463_p00;
assign grp_fu_3463_p00 = empty_33_fu_1648_p2;
assign grp_fu_3463_p1 = 13'd27;
assign grp_fu_3463_p2 = zext_ln168_reg_3659;
assign grp_fu_3471_p0 = grp_fu_3471_p00;
assign grp_fu_3471_p00 = empty_44_fu_1658_p2;
assign grp_fu_3471_p1 = 13'd27;
assign grp_fu_3471_p2 = zext_ln168_reg_3659;
assign grp_fu_3479_p0 = grp_fu_3479_p00;
assign grp_fu_3479_p00 = empty_55_fu_1668_p2;
assign grp_fu_3479_p1 = 13'd27;
assign grp_fu_3479_p2 = zext_ln168_reg_3659;
assign grp_fu_3487_p0 = grp_fu_3487_p00;
assign grp_fu_3487_p00 = empty_66_fu_1678_p2;
assign grp_fu_3487_p1 = 13'd27;
assign grp_fu_3487_p2 = zext_ln168_reg_3659;
assign grp_fu_3495_p0 = grp_fu_3495_p00;
assign grp_fu_3495_p00 = empty_77_fu_1710_p2;
assign grp_fu_3495_p1 = 13'd27;
assign grp_fu_3495_p2 = zext_ln168_reg_3659;
assign grp_fu_3503_p0 = grp_fu_3503_p00;
assign grp_fu_3503_p00 = empty_88_fu_1720_p2;
assign grp_fu_3503_p1 = 13'd27;
assign grp_fu_3503_p2 = zext_ln168_reg_3659;
assign grp_fu_3511_p0 = grp_fu_3511_p00;
assign grp_fu_3511_p00 = empty_99_fu_1894_p2;
assign grp_fu_3511_p1 = 13'd27;
assign grp_fu_3511_p2 = zext_ln168_reg_3659;
assign grp_fu_3519_p0 = grp_fu_3519_p00;
assign grp_fu_3519_p00 = add_ln169_fu_1904_p2;
assign grp_fu_3519_p1 = 13'd27;
assign grp_fu_3519_p2 = zext_ln168_reg_3659;
assign grp_fu_3527_p0 = grp_fu_3527_p00;
assign grp_fu_3527_p00 = empty_120_fu_2078_p2;
assign grp_fu_3527_p1 = 13'd27;
assign grp_fu_3527_p2 = zext_ln168_reg_3659;
assign grp_fu_3535_p0 = grp_fu_3535_p00;
assign grp_fu_3535_p00 = empty_131_fu_2088_p2;
assign grp_fu_3535_p1 = 13'd27;
assign grp_fu_3535_p2 = zext_ln168_reg_3659;
assign grp_fu_3543_p0 = grp_fu_3543_p00;
assign grp_fu_3543_p00 = empty_142_fu_2262_p2;
assign grp_fu_3543_p1 = 13'd27;
assign grp_fu_3543_p2 = zext_ln168_reg_3659;
assign grp_fu_3551_p0 = grp_fu_3551_p00;
assign grp_fu_3551_p00 = empty_153_fu_2272_p2;
assign grp_fu_3551_p1 = 13'd27;
assign grp_fu_3551_p2 = zext_ln168_reg_3659;
assign grp_fu_3559_p0 = grp_fu_3559_p00;
assign grp_fu_3559_p00 = empty_164_fu_2446_p2;
assign grp_fu_3559_p1 = 13'd27;
assign grp_fu_3559_p2 = zext_ln168_reg_3659;
assign grp_fu_3567_p0 = grp_fu_3567_p00;
assign grp_fu_3567_p00 = empty_175_fu_2456_p2;
assign grp_fu_3567_p1 = 13'd27;
assign grp_fu_3567_p2 = zext_ln168_reg_3659;
assign grp_fu_3575_p0 = grp_fu_3575_p00;
assign grp_fu_3575_p00 = empty_186_fu_2630_p2;
assign grp_fu_3575_p1 = 13'd27;
assign grp_fu_3575_p2 = zext_ln168_reg_3659;
assign grp_fu_3583_p0 = grp_fu_3583_p00;
assign grp_fu_3583_p00 = empty_197_fu_2640_p2;
assign grp_fu_3583_p1 = 13'd27;
assign grp_fu_3583_p2 = zext_ln168_reg_3659;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_1426_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_1398_ap_start_reg;
assign icmp_ln168_fu_1566_p2 = ((v114_fu_144 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_1602_p2 = ((v115_reg_1386 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1582_p4 = {{v114_fu_144[7:3]}};
assign mul_ln171_1_fu_3369_p0 = mul_ln171_1_fu_3369_p00;
assign mul_ln171_1_fu_3369_p00 = add_ln169_reg_3950;
assign mul_ln171_1_fu_3369_p1 = 16'd190;
assign mul_ln171_fu_3146_p0 = mul_ln171_fu_3146_p00;
assign mul_ln171_fu_3146_p00 = v115_reg_1386;
assign mul_ln171_fu_3146_p1 = 16'd190;
assign mul_ln186_1_fu_3378_p0 = mul_ln186_1_fu_3378_p00;
assign mul_ln186_1_fu_3378_p00 = empty_120_reg_4050;
assign mul_ln186_1_fu_3378_p1 = 16'd190;
assign mul_ln186_fu_3155_p0 = mul_ln186_fu_3155_p00;
assign mul_ln186_fu_3155_p00 = tmp_1_reg_3695;
assign mul_ln186_fu_3155_p1 = 16'd190;
assign mul_ln199_1_fu_3387_p0 = mul_ln199_1_fu_3387_p00;
assign mul_ln199_1_fu_3387_p00 = empty_131_reg_4060;
assign mul_ln199_1_fu_3387_p1 = 16'd190;
assign mul_ln199_fu_3164_p0 = mul_ln199_fu_3164_p00;
assign mul_ln199_fu_3164_p00 = empty_33_reg_3710;
assign mul_ln199_fu_3164_p1 = 16'd190;
assign mul_ln212_1_fu_3396_p0 = mul_ln212_1_fu_3396_p00;
assign mul_ln212_1_fu_3396_p00 = empty_142_reg_4160;
assign mul_ln212_1_fu_3396_p1 = 16'd190;
assign mul_ln212_fu_3173_p0 = mul_ln212_fu_3173_p00;
assign mul_ln212_fu_3173_p00 = empty_44_reg_3720;
assign mul_ln212_fu_3173_p1 = 16'd190;
assign mul_ln225_1_fu_3405_p0 = mul_ln225_1_fu_3405_p00;
assign mul_ln225_1_fu_3405_p00 = empty_153_reg_4170;
assign mul_ln225_1_fu_3405_p1 = 16'd190;
assign mul_ln225_fu_3182_p0 = mul_ln225_fu_3182_p00;
assign mul_ln225_fu_3182_p00 = empty_55_reg_3730;
assign mul_ln225_fu_3182_p1 = 16'd190;
assign mul_ln238_1_fu_3414_p0 = mul_ln238_1_fu_3414_p00;
assign mul_ln238_1_fu_3414_p00 = empty_164_reg_4270;
assign mul_ln238_1_fu_3414_p1 = 16'd190;
assign mul_ln238_fu_3191_p0 = mul_ln238_fu_3191_p00;
assign mul_ln238_fu_3191_p00 = empty_66_reg_3740;
assign mul_ln238_fu_3191_p1 = 16'd190;
assign mul_ln251_1_fu_3423_p0 = mul_ln251_1_fu_3423_p00;
assign mul_ln251_1_fu_3423_p00 = empty_175_reg_4280;
assign mul_ln251_1_fu_3423_p1 = 16'd190;
assign mul_ln251_fu_3200_p0 = mul_ln251_fu_3200_p00;
assign mul_ln251_fu_3200_p00 = empty_77_reg_3830;
assign mul_ln251_fu_3200_p1 = 16'd190;
assign mul_ln264_1_fu_3432_p0 = mul_ln264_1_fu_3432_p00;
assign mul_ln264_1_fu_3432_p00 = empty_186_reg_4380;
assign mul_ln264_1_fu_3432_p1 = 16'd190;
assign mul_ln264_fu_3209_p0 = mul_ln264_fu_3209_p00;
assign mul_ln264_fu_3209_p00 = empty_88_reg_3840;
assign mul_ln264_fu_3209_p1 = 16'd190;
assign mul_ln277_1_fu_3441_p0 = mul_ln277_1_fu_3441_p00;
assign mul_ln277_1_fu_3441_p00 = empty_197_reg_4390;
assign mul_ln277_1_fu_3441_p1 = 16'd190;
assign mul_ln277_fu_3218_p0 = mul_ln277_fu_3218_p00;
assign mul_ln277_fu_3218_p00 = empty_99_reg_3940;
assign mul_ln277_fu_3218_p1 = 16'd190;
assign p_cast1136_fu_1688_p1 = grp_fu_3447_p3;
assign p_cast1137_fu_1872_p1 = grp_fu_3463_p3;
assign p_cast1138_fu_1883_p1 = grp_fu_3471_p3;
assign p_cast1139_fu_2056_p1 = grp_fu_3479_p3;
assign p_cast1140_fu_2067_p1 = grp_fu_3487_p3;
assign p_cast1141_fu_2240_p1 = grp_fu_3495_p3;
assign p_cast1142_fu_2251_p1 = grp_fu_3503_p3;
assign p_cast1143_fu_2424_p1 = grp_fu_3511_p3;
assign p_cast1144_fu_2435_p1 = grp_fu_3519_p3;
assign p_cast1145_fu_2608_p1 = grp_fu_3527_p3;
assign p_cast1146_fu_2619_p1 = grp_fu_3535_p3;
assign p_cast1147_fu_2792_p1 = grp_fu_3543_p3;
assign p_cast1148_fu_2803_p1 = grp_fu_3551_p3;
assign p_cast1149_fu_2956_p1 = grp_fu_3559_p3;
assign p_cast1150_fu_2967_p1 = grp_fu_3567_p3;
assign p_cast1151_fu_3120_p1 = grp_fu_3575_p3;
assign p_cast1152_fu_3131_p1 = grp_fu_3583_p3;
assign p_cast_fu_1699_p1 = grp_fu_3455_p3;
assign tmp_1_fu_1622_p3 = {{tmp_fu_1612_p4}, {1'd1}};
assign tmp_fu_1612_p4 = {{v115_reg_1386[7:1]}};
assign trunc_ln168_fu_1578_p1 = v114_fu_144[2:0];
assign v10_fu_2201_p10 = v226_4_q0;
assign v10_fu_2201_p12 = v226_5_q0;
assign v10_fu_2201_p14 = v226_6_q0;
assign v10_fu_2201_p16 = v226_7_q0;
assign v10_fu_2201_p17 = 'bx;
assign v10_fu_2201_p2 = v226_0_q0;
assign v10_fu_2201_p4 = v226_1_q0;
assign v10_fu_2201_p6 = v226_2_q0;
assign v10_fu_2201_p8 = v226_3_q0;
assign v119_1_fu_2569_p10 = v226_4_q0;
assign v119_1_fu_2569_p12 = v226_5_q0;
assign v119_1_fu_2569_p14 = v226_6_q0;
assign v119_1_fu_2569_p16 = v226_7_q0;
assign v119_1_fu_2569_p17 = 'bx;
assign v119_1_fu_2569_p2 = v226_0_q0;
assign v119_1_fu_2569_p4 = v226_1_q0;
assign v119_1_fu_2569_p6 = v226_2_q0;
assign v119_1_fu_2569_p8 = v226_3_q0;
assign v12_fu_2314_p10 = v226_4_q1;
assign v12_fu_2314_p12 = v226_5_q1;
assign v12_fu_2314_p14 = v226_6_q1;
assign v12_fu_2314_p16 = v226_7_q1;
assign v12_fu_2314_p17 = 'bx;
assign v12_fu_2314_p2 = v226_0_q1;
assign v12_fu_2314_p4 = v226_1_q1;
assign v12_fu_2314_p6 = v226_2_q1;
assign v12_fu_2314_p8 = v226_3_q1;
assign v132_1_fu_2682_p10 = v226_4_q1;
assign v132_1_fu_2682_p12 = v226_5_q1;
assign v132_1_fu_2682_p14 = v226_6_q1;
assign v132_1_fu_2682_p16 = v226_7_q1;
assign v132_1_fu_2682_p17 = 'bx;
assign v132_1_fu_2682_p2 = v226_0_q1;
assign v132_1_fu_2682_p4 = v226_1_q1;
assign v132_1_fu_2682_p6 = v226_2_q1;
assign v132_1_fu_2682_p8 = v226_3_q1;
assign v143_1_fu_2753_p10 = v226_4_q0;
assign v143_1_fu_2753_p12 = v226_5_q0;
assign v143_1_fu_2753_p14 = v226_6_q0;
assign v143_1_fu_2753_p16 = v226_7_q0;
assign v143_1_fu_2753_p17 = 'bx;
assign v143_1_fu_2753_p2 = v226_0_q0;
assign v143_1_fu_2753_p4 = v226_1_q0;
assign v143_1_fu_2753_p6 = v226_2_q0;
assign v143_1_fu_2753_p8 = v226_3_q0;
assign v14_fu_2385_p10 = v226_4_q0;
assign v14_fu_2385_p12 = v226_5_q0;
assign v14_fu_2385_p14 = v226_6_q0;
assign v14_fu_2385_p16 = v226_7_q0;
assign v14_fu_2385_p17 = 'bx;
assign v14_fu_2385_p2 = v226_0_q0;
assign v14_fu_2385_p4 = v226_1_q0;
assign v14_fu_2385_p6 = v226_2_q0;
assign v14_fu_2385_p8 = v226_3_q0;
assign v154_1_fu_2846_p10 = v226_4_q1;
assign v154_1_fu_2846_p12 = v226_5_q1;
assign v154_1_fu_2846_p14 = v226_6_q1;
assign v154_1_fu_2846_p16 = v226_7_q1;
assign v154_1_fu_2846_p17 = 'bx;
assign v154_1_fu_2846_p2 = v226_0_q1;
assign v154_1_fu_2846_p4 = v226_1_q1;
assign v154_1_fu_2846_p6 = v226_2_q1;
assign v154_1_fu_2846_p8 = v226_3_q1;
assign v165_1_fu_2917_p10 = v226_4_q0;
assign v165_1_fu_2917_p12 = v226_5_q0;
assign v165_1_fu_2917_p14 = v226_6_q0;
assign v165_1_fu_2917_p16 = v226_7_q0;
assign v165_1_fu_2917_p17 = 'bx;
assign v165_1_fu_2917_p2 = v226_0_q0;
assign v165_1_fu_2917_p4 = v226_1_q0;
assign v165_1_fu_2917_p6 = v226_2_q0;
assign v165_1_fu_2917_p8 = v226_3_q0;
assign v16_fu_2498_p10 = v226_4_q1;
assign v16_fu_2498_p12 = v226_5_q1;
assign v16_fu_2498_p14 = v226_6_q1;
assign v16_fu_2498_p16 = v226_7_q1;
assign v16_fu_2498_p17 = 'bx;
assign v16_fu_2498_p2 = v226_0_q1;
assign v16_fu_2498_p4 = v226_1_q1;
assign v16_fu_2498_p6 = v226_2_q1;
assign v16_fu_2498_p8 = v226_3_q1;
assign v176_1_fu_3010_p10 = v226_4_q1;
assign v176_1_fu_3010_p12 = v226_5_q1;
assign v176_1_fu_3010_p14 = v226_6_q1;
assign v176_1_fu_3010_p16 = v226_7_q1;
assign v176_1_fu_3010_p17 = 'bx;
assign v176_1_fu_3010_p2 = v226_0_q1;
assign v176_1_fu_3010_p4 = v226_1_q1;
assign v176_1_fu_3010_p6 = v226_2_q1;
assign v176_1_fu_3010_p8 = v226_3_q1;
assign v187_1_fu_3081_p10 = v226_4_q0;
assign v187_1_fu_3081_p12 = v226_5_q0;
assign v187_1_fu_3081_p14 = v226_6_q0;
assign v187_1_fu_3081_p16 = v226_7_q0;
assign v187_1_fu_3081_p17 = 'bx;
assign v187_1_fu_3081_p2 = v226_0_q0;
assign v187_1_fu_3081_p4 = v226_1_q0;
assign v187_1_fu_3081_p6 = v226_2_q0;
assign v187_1_fu_3081_p8 = v226_3_q0;
assign v198_1_fu_3256_p10 = v226_4_q1;
assign v198_1_fu_3256_p12 = v226_5_q1;
assign v198_1_fu_3256_p14 = v226_6_q1;
assign v198_1_fu_3256_p16 = v226_7_q1;
assign v198_1_fu_3256_p17 = 'bx;
assign v198_1_fu_3256_p2 = v226_0_q1;
assign v198_1_fu_3256_p4 = v226_1_q1;
assign v198_1_fu_3256_p6 = v226_2_q1;
assign v198_1_fu_3256_p8 = v226_3_q1;
assign v209_1_fu_3327_p10 = v226_4_q0;
assign v209_1_fu_3327_p12 = v226_5_q0;
assign v209_1_fu_3327_p14 = v226_6_q0;
assign v209_1_fu_3327_p16 = v226_7_q0;
assign v209_1_fu_3327_p17 = 'bx;
assign v209_1_fu_3327_p2 = v226_0_q0;
assign v209_1_fu_3327_p4 = v226_1_q0;
assign v209_1_fu_3327_p6 = v226_2_q0;
assign v209_1_fu_3327_p8 = v226_3_q0;
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
assign v226_4_address0 = v226_4_address0_local;
assign v226_4_address1 = v226_4_address1_local;
assign v226_4_ce0 = v226_4_ce0_local;
assign v226_4_ce1 = v226_4_ce1_local;
assign v226_5_address0 = v226_5_address0_local;
assign v226_5_address1 = v226_5_address1_local;
assign v226_5_ce0 = v226_5_ce0_local;
assign v226_5_ce1 = v226_5_ce1_local;
assign v226_6_address0 = v226_6_address0_local;
assign v226_6_address1 = v226_6_address1_local;
assign v226_6_ce0 = v226_6_ce0_local;
assign v226_6_ce1 = v226_6_ce1_local;
assign v226_7_address0 = v226_7_address0_local;
assign v226_7_address1 = v226_7_address1_local;
assign v226_7_ce0 = v226_7_ce0_local;
assign v226_7_ce1 = v226_7_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v2_fu_1833_p10 = v226_4_q0;
assign v2_fu_1833_p12 = v226_5_q0;
assign v2_fu_1833_p14 = v226_6_q0;
assign v2_fu_1833_p16 = v226_7_q0;
assign v2_fu_1833_p17 = 'bx;
assign v2_fu_1833_p2 = v226_0_q0;
assign v2_fu_1833_p4 = v226_1_q0;
assign v2_fu_1833_p6 = v226_2_q0;
assign v2_fu_1833_p8 = v226_3_q0;
assign v4_fu_1946_p10 = v226_4_q1;
assign v4_fu_1946_p12 = v226_5_q1;
assign v4_fu_1946_p14 = v226_6_q1;
assign v4_fu_1946_p16 = v226_7_q1;
assign v4_fu_1946_p17 = 'bx;
assign v4_fu_1946_p2 = v226_0_q1;
assign v4_fu_1946_p4 = v226_1_q1;
assign v4_fu_1946_p6 = v226_2_q1;
assign v4_fu_1946_p8 = v226_3_q1;
assign v6_fu_2017_p10 = v226_4_q0;
assign v6_fu_2017_p12 = v226_5_q0;
assign v6_fu_2017_p14 = v226_6_q0;
assign v6_fu_2017_p16 = v226_7_q0;
assign v6_fu_2017_p17 = 'bx;
assign v6_fu_2017_p2 = v226_0_q0;
assign v6_fu_2017_p4 = v226_1_q0;
assign v6_fu_2017_p6 = v226_2_q0;
assign v6_fu_2017_p8 = v226_3_q0;
assign v8_fu_2130_p10 = v226_4_q1;
assign v8_fu_2130_p12 = v226_5_q1;
assign v8_fu_2130_p14 = v226_6_q1;
assign v8_fu_2130_p16 = v226_7_q1;
assign v8_fu_2130_p17 = 'bx;
assign v8_fu_2130_p2 = v226_0_q1;
assign v8_fu_2130_p4 = v226_1_q1;
assign v8_fu_2130_p6 = v226_2_q1;
assign v8_fu_2130_p8 = v226_3_q1;
assign v_fu_1762_p10 = v226_4_q1;
assign v_fu_1762_p12 = v226_5_q1;
assign v_fu_1762_p14 = v226_6_q1;
assign v_fu_1762_p16 = v226_7_q1;
assign v_fu_1762_p17 = 'bx;
assign v_fu_1762_p2 = v226_0_q1;
assign v_fu_1762_p4 = v226_1_q1;
assign v_fu_1762_p6 = v226_2_q1;
assign v_fu_1762_p8 = v226_3_q1;
assign zext_ln168_fu_1592_p1 = lshr_ln_fu_1582_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_3659[12:5] <= 8'b00000000;
    tmp_1_reg_3695[0] <= 1'b1;
end
endmodule 
