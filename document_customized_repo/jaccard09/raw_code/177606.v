module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce); 
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
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
output  [1:0] grp_fu_176_p_opcode;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
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
(* fsm_encoding = "none" *) reg   [29:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_1626_p2;
reg   [31:0] reg_1532;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state19;
wire    ap_CS_fsm_state24;
wire    ap_CS_fsm_state28;
wire   [31:0] grp_fu_1500_p2;
reg   [31:0] reg_1540;
wire   [31:0] grp_fu_1504_p2;
reg   [31:0] reg_1548;
wire   [31:0] grp_fu_1508_p2;
reg   [31:0] reg_1556;
wire   [31:0] grp_fu_1512_p2;
reg   [31:0] reg_1564;
wire   [31:0] grp_fu_1516_p2;
reg   [31:0] reg_1572;
wire   [31:0] grp_fu_1520_p2;
reg   [31:0] reg_1580;
wire   [31:0] grp_fu_1524_p2;
reg   [31:0] reg_1588;
wire   [31:0] grp_fu_1528_p2;
reg   [31:0] reg_1596;
reg   [15:0] phi_mul_load_reg_4358;
wire   [15:0] add_ln168_1_fu_1620_p2;
reg   [15:0] add_ln168_1_reg_4366;
wire   [7:0] add_ln168_fu_1632_p2;
reg   [7:0] add_ln168_reg_4374;
wire   [1:0] trunc_ln168_fu_1638_p1;
reg   [1:0] trunc_ln168_reg_4379;
wire   [13:0] zext_ln168_fu_1652_p1;
reg   [13:0] zext_ln168_reg_4419;
wire   [0:0] cmp11_fu_1656_p2;
reg   [0:0] cmp11_reg_4459;
wire    ap_CS_fsm_state3;
wire   [7:0] tmp_1_fu_1682_p3;
reg   [7:0] tmp_1_reg_4475;
wire   [7:0] add_ln169_3_fu_1694_p2;
reg   [7:0] add_ln169_3_reg_4485;
wire   [7:0] tmp_4_fu_1718_p3;
reg   [7:0] tmp_4_reg_4490;
wire    ap_CS_fsm_state4;
wire   [7:0] tmp_6_fu_1730_p3;
reg   [7:0] tmp_6_reg_4500;
wire   [7:0] empty_39_fu_1742_p2;
reg   [7:0] empty_39_reg_4510;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_46_fu_1752_p2;
reg   [7:0] empty_46_reg_4520;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_53_fu_1776_p2;
reg   [7:0] empty_53_reg_4570;
wire   [7:0] empty_60_fu_1786_p2;
reg   [7:0] empty_60_reg_4580;
wire   [31:0] v_fu_1812_p11;
reg   [31:0] v_reg_4590;
wire    ap_CS_fsm_state7;
wire   [31:0] v2_fu_1851_p11;
reg   [31:0] v2_reg_4595;
wire   [7:0] empty_67_fu_1888_p2;
reg   [7:0] empty_67_reg_4640;
wire   [7:0] add_ln169_fu_1898_p2;
reg   [7:0] add_ln169_reg_4650;
wire   [31:0] v4_fu_1924_p11;
reg   [31:0] v4_reg_4660;
wire    ap_CS_fsm_state8;
wire   [31:0] v6_fu_1963_p11;
reg   [31:0] v6_reg_4665;
wire   [7:0] empty_80_fu_2000_p2;
reg   [7:0] empty_80_reg_4710;
wire   [7:0] empty_87_fu_2010_p2;
reg   [7:0] empty_87_reg_4720;
wire   [31:0] v8_fu_2036_p11;
reg   [31:0] v8_reg_4730;
wire    ap_CS_fsm_state9;
wire   [31:0] v10_fu_2075_p11;
reg   [31:0] v10_reg_4735;
wire   [7:0] empty_94_fu_2112_p2;
reg   [7:0] empty_94_reg_4780;
wire   [7:0] empty_101_fu_2122_p2;
reg   [7:0] empty_101_reg_4790;
wire   [31:0] v12_fu_2148_p11;
reg   [31:0] v12_reg_4800;
wire    ap_CS_fsm_state10;
wire   [31:0] v14_fu_2187_p11;
reg   [31:0] v14_reg_4805;
wire   [7:0] empty_108_fu_2224_p2;
reg   [7:0] empty_108_reg_4850;
wire   [7:0] empty_115_fu_2234_p2;
reg   [7:0] empty_115_reg_4860;
wire   [31:0] v16_fu_2260_p11;
reg   [31:0] v16_reg_4870;
wire    ap_CS_fsm_state11;
wire   [31:0] v119_1_fu_2299_p11;
reg   [31:0] v119_1_reg_4875;
wire   [7:0] empty_122_fu_2336_p2;
reg   [7:0] empty_122_reg_4920;
wire   [7:0] empty_129_fu_2346_p2;
reg   [7:0] empty_129_reg_4930;
wire   [31:0] v132_1_fu_2372_p11;
reg   [31:0] v132_1_reg_4940;
wire    ap_CS_fsm_state12;
wire   [31:0] v143_1_fu_2411_p11;
reg   [31:0] v143_1_reg_4945;
wire   [7:0] add_ln169_1_fu_2448_p2;
reg   [7:0] add_ln169_1_reg_4990;
wire   [7:0] empty_142_fu_2458_p2;
reg   [7:0] empty_142_reg_5000;
wire   [31:0] v154_1_fu_2484_p11;
reg   [31:0] v154_1_reg_5010;
wire    ap_CS_fsm_state13;
wire   [31:0] v165_1_fu_2523_p11;
reg   [31:0] v165_1_reg_5015;
wire   [7:0] empty_149_fu_2560_p2;
reg   [7:0] empty_149_reg_5060;
wire   [7:0] empty_156_fu_2570_p2;
reg   [7:0] empty_156_reg_5070;
wire   [31:0] v176_1_fu_2596_p11;
reg   [31:0] v176_1_reg_5080;
wire    ap_CS_fsm_state14;
wire   [31:0] v187_1_fu_2635_p11;
reg   [31:0] v187_1_reg_5085;
wire   [7:0] empty_163_fu_2672_p2;
reg   [7:0] empty_163_reg_5130;
wire   [7:0] empty_170_fu_2682_p2;
reg   [7:0] empty_170_reg_5140;
wire   [15:0] mul_ln171_fu_2696_p2;
reg   [15:0] mul_ln171_reg_5150;
wire   [15:0] mul_ln186_fu_2705_p2;
reg   [15:0] mul_ln186_reg_5155;
wire   [15:0] mul_ln199_fu_2714_p2;
reg   [15:0] mul_ln199_reg_5160;
wire   [15:0] mul_ln212_fu_2723_p2;
reg   [15:0] mul_ln212_reg_5165;
wire   [15:0] mul_ln225_fu_2732_p2;
reg   [15:0] mul_ln225_reg_5170;
wire   [15:0] mul_ln238_fu_2741_p2;
reg   [15:0] mul_ln238_reg_5175;
wire   [15:0] mul_ln251_fu_2750_p2;
reg   [15:0] mul_ln251_reg_5180;
wire   [15:0] mul_ln264_fu_2759_p2;
reg   [15:0] mul_ln264_reg_5185;
wire   [15:0] mul_ln277_fu_2768_p2;
reg   [15:0] mul_ln277_reg_5190;
wire   [31:0] v198_1_fu_2790_p11;
reg   [31:0] v198_1_reg_5195;
wire   [31:0] v209_1_fu_2829_p11;
reg   [31:0] v209_1_reg_5200;
wire   [7:0] empty_177_fu_2866_p2;
reg   [7:0] empty_177_reg_5245;
wire   [7:0] empty_184_fu_2876_p2;
reg   [7:0] empty_184_reg_5255;
wire   [31:0] v119_2_fu_2902_p11;
reg   [31:0] v119_2_reg_5265;
wire    ap_CS_fsm_state16;
wire   [31:0] v132_2_fu_2941_p11;
reg   [31:0] v132_2_reg_5270;
wire   [7:0] empty_191_fu_2978_p2;
reg   [7:0] empty_191_reg_5315;
wire   [7:0] add_ln169_2_fu_2988_p2;
reg   [7:0] add_ln169_2_reg_5325;
wire   [31:0] v143_2_fu_3014_p11;
reg   [31:0] v143_2_reg_5335;
wire    ap_CS_fsm_state17;
wire   [31:0] v154_2_fu_3053_p11;
reg   [31:0] v154_2_reg_5340;
wire   [7:0] empty_204_fu_3090_p2;
reg   [7:0] empty_204_reg_5385;
wire   [7:0] empty_211_fu_3100_p2;
reg   [7:0] empty_211_reg_5395;
wire   [31:0] v165_2_fu_3126_p11;
reg   [31:0] v165_2_reg_5405;
wire    ap_CS_fsm_state18;
wire   [31:0] v176_2_fu_3165_p11;
reg   [31:0] v176_2_reg_5410;
wire   [7:0] empty_218_fu_3202_p2;
reg   [7:0] empty_218_reg_5455;
wire   [7:0] empty_225_fu_3212_p2;
reg   [7:0] empty_225_reg_5465;
wire   [15:0] mul_ln171_1_fu_3225_p2;
reg   [15:0] mul_ln171_1_reg_5475;
wire   [15:0] mul_ln186_1_fu_3234_p2;
reg   [15:0] mul_ln186_1_reg_5480;
wire   [15:0] mul_ln199_1_fu_3243_p2;
reg   [15:0] mul_ln199_1_reg_5485;
wire   [15:0] mul_ln212_1_fu_3252_p2;
reg   [15:0] mul_ln212_1_reg_5490;
wire   [15:0] mul_ln225_1_fu_3261_p2;
reg   [15:0] mul_ln225_1_reg_5495;
wire   [15:0] mul_ln238_1_fu_3270_p2;
reg   [15:0] mul_ln238_1_reg_5500;
wire   [15:0] mul_ln251_1_fu_3279_p2;
reg   [15:0] mul_ln251_1_reg_5505;
wire   [15:0] mul_ln264_1_fu_3288_p2;
reg   [15:0] mul_ln264_1_reg_5510;
wire   [15:0] mul_ln277_1_fu_3297_p2;
reg   [15:0] mul_ln277_1_reg_5515;
wire   [31:0] v187_2_fu_3319_p11;
reg   [31:0] v187_2_reg_5520;
wire   [31:0] v198_2_fu_3358_p11;
reg   [31:0] v198_2_reg_5525;
wire   [7:0] empty_232_fu_3395_p2;
reg   [7:0] empty_232_reg_5570;
wire   [7:0] empty_239_fu_3405_p2;
reg   [7:0] empty_239_reg_5580;
wire   [31:0] v209_2_fu_3431_p11;
reg   [31:0] v209_2_reg_5590;
wire    ap_CS_fsm_state20;
wire   [31:0] v119_3_fu_3470_p11;
reg   [31:0] v119_3_reg_5595;
wire   [7:0] empty_246_fu_3507_p2;
reg   [7:0] empty_246_reg_5640;
wire   [7:0] empty_253_fu_3517_p2;
reg   [7:0] empty_253_reg_5650;
wire   [31:0] v132_3_fu_3543_p11;
reg   [31:0] v132_3_reg_5660;
wire    ap_CS_fsm_state21;
wire   [31:0] v143_3_fu_3582_p11;
reg   [31:0] v143_3_reg_5665;
wire   [31:0] v154_3_fu_3635_p11;
reg   [31:0] v154_3_reg_5710;
wire    ap_CS_fsm_state22;
wire   [31:0] v165_3_fu_3674_p11;
reg   [31:0] v165_3_reg_5715;
wire   [31:0] v176_3_fu_3727_p11;
reg   [31:0] v176_3_reg_5760;
wire    ap_CS_fsm_state23;
wire   [31:0] v187_3_fu_3766_p11;
reg   [31:0] v187_3_reg_5765;
wire   [15:0] mul_ln171_2_fu_3806_p2;
reg   [15:0] mul_ln171_2_reg_5810;
wire   [15:0] mul_ln186_2_fu_3815_p2;
reg   [15:0] mul_ln186_2_reg_5815;
wire   [15:0] mul_ln199_2_fu_3824_p2;
reg   [15:0] mul_ln199_2_reg_5820;
wire   [15:0] mul_ln212_2_fu_3833_p2;
reg   [15:0] mul_ln212_2_reg_5825;
wire   [15:0] mul_ln225_2_fu_3842_p2;
reg   [15:0] mul_ln225_2_reg_5830;
wire   [15:0] mul_ln238_2_fu_3851_p2;
reg   [15:0] mul_ln238_2_reg_5835;
wire   [15:0] mul_ln251_2_fu_3860_p2;
reg   [15:0] mul_ln251_2_reg_5840;
wire   [15:0] mul_ln264_2_fu_3869_p2;
reg   [15:0] mul_ln264_2_reg_5845;
wire   [15:0] mul_ln277_2_fu_3878_p2;
reg   [15:0] mul_ln277_2_reg_5850;
wire   [31:0] v198_3_fu_3900_p11;
reg   [31:0] v198_3_reg_5855;
wire   [31:0] v209_3_fu_3939_p11;
reg   [31:0] v209_3_reg_5860;
wire   [15:0] mul_ln171_3_fu_3965_p2;
reg   [15:0] mul_ln171_3_reg_5865;
wire   [15:0] mul_ln186_3_fu_3974_p2;
reg   [15:0] mul_ln186_3_reg_5870;
wire   [15:0] mul_ln199_3_fu_3983_p2;
reg   [15:0] mul_ln199_3_reg_5875;
wire   [15:0] mul_ln212_3_fu_3992_p2;
reg   [15:0] mul_ln212_3_reg_5880;
wire   [15:0] mul_ln225_3_fu_4001_p2;
reg   [15:0] mul_ln225_3_reg_5885;
wire   [15:0] mul_ln238_3_fu_4010_p2;
reg   [15:0] mul_ln238_3_reg_5890;
wire   [15:0] mul_ln251_3_fu_4019_p2;
reg   [15:0] mul_ln251_3_reg_5895;
wire   [15:0] mul_ln264_3_fu_4028_p2;
reg   [15:0] mul_ln264_3_reg_5900;
wire   [15:0] mul_ln277_3_fu_4037_p2;
reg   [15:0] mul_ln277_3_reg_5905;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5910_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5910_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5910_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5910_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5914_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5914_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5914_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5910_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5910_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5910_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5910_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5914_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5914_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5914_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5910_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5910_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5910_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5910_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5914_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5914_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5914_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5910_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5910_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5910_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5910_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5914_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5914_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5914_p_ce;
reg   [7:0] v115_reg_1372;
wire    ap_CS_fsm_state30;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_start_reg;
wire    ap_CS_fsm_state25;
wire    ap_CS_fsm_state26;
reg    grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_start_reg;
wire    ap_CS_fsm_state29;
wire   [63:0] p_cast1418_fu_1762_p1;
wire   [63:0] p_cast_fu_1769_p1;
wire   [63:0] p_cast1419_fu_1874_p1;
wire   [63:0] p_cast1420_fu_1881_p1;
wire   [63:0] p_cast1421_fu_1986_p1;
wire   [63:0] p_cast1422_fu_1993_p1;
wire   [63:0] p_cast1423_fu_2098_p1;
wire   [63:0] p_cast1424_fu_2105_p1;
wire   [63:0] p_cast1425_fu_2210_p1;
wire   [63:0] p_cast1426_fu_2217_p1;
wire   [63:0] p_cast1427_fu_2322_p1;
wire   [63:0] p_cast1428_fu_2329_p1;
wire   [63:0] p_cast1429_fu_2434_p1;
wire   [63:0] p_cast1430_fu_2441_p1;
wire   [63:0] p_cast1431_fu_2546_p1;
wire   [63:0] p_cast1432_fu_2553_p1;
wire   [63:0] p_cast1433_fu_2658_p1;
wire   [63:0] p_cast1434_fu_2665_p1;
wire   [63:0] p_cast1435_fu_2852_p1;
wire   [63:0] p_cast1436_fu_2859_p1;
wire   [63:0] p_cast1437_fu_2964_p1;
wire   [63:0] p_cast1438_fu_2971_p1;
wire   [63:0] p_cast1439_fu_3076_p1;
wire   [63:0] p_cast1440_fu_3083_p1;
wire   [63:0] p_cast1441_fu_3188_p1;
wire   [63:0] p_cast1442_fu_3195_p1;
wire   [63:0] p_cast1443_fu_3381_p1;
wire   [63:0] p_cast1444_fu_3388_p1;
wire   [63:0] p_cast1445_fu_3493_p1;
wire   [63:0] p_cast1446_fu_3500_p1;
wire   [63:0] p_cast1447_fu_3605_p1;
wire   [63:0] p_cast1448_fu_3612_p1;
wire   [63:0] p_cast1449_fu_3697_p1;
wire   [63:0] p_cast1450_fu_3704_p1;
wire   [63:0] p_cast1451_fu_3789_p1;
wire   [63:0] p_cast1452_fu_3796_p1;
reg   [15:0] phi_mul_fu_162;
wire   [0:0] icmp_ln169_fu_1662_p2;
reg   [7:0] v114_fu_166;
reg    v236_write_local;
reg    v226_0_ce1_local;
reg   [13:0] v226_0_address1_local;
reg    v226_0_ce0_local;
reg   [13:0] v226_0_address0_local;
reg    v226_1_ce1_local;
reg   [13:0] v226_1_address1_local;
reg    v226_1_ce0_local;
reg   [13:0] v226_1_address0_local;
reg    v226_2_ce1_local;
reg   [13:0] v226_2_address1_local;
reg    v226_2_ce0_local;
reg   [13:0] v226_2_address0_local;
reg    v226_3_ce1_local;
reg   [13:0] v226_3_address1_local;
reg    v226_3_ce0_local;
reg   [13:0] v226_3_address0_local;
reg   [31:0] grp_fu_1496_p0;
reg   [31:0] grp_fu_1500_p0;
reg   [31:0] grp_fu_1504_p0;
reg   [31:0] grp_fu_1508_p0;
reg   [31:0] grp_fu_1512_p0;
reg   [31:0] grp_fu_1516_p0;
reg   [31:0] grp_fu_1520_p0;
reg   [31:0] grp_fu_1524_p0;
reg   [31:0] grp_fu_1528_p0;
wire   [5:0] lshr_ln_fu_1642_p4;
wire   [6:0] tmp_fu_1672_p4;
wire   [5:0] tmp_2_fu_1708_p4;
wire   [13:0] grp_fu_4043_p3;
wire   [13:0] grp_fu_4051_p3;
wire   [31:0] v_fu_1812_p2;
wire   [31:0] v_fu_1812_p4;
wire   [31:0] v_fu_1812_p6;
wire   [31:0] v_fu_1812_p8;
wire   [31:0] v_fu_1812_p9;
wire   [31:0] v2_fu_1851_p2;
wire   [31:0] v2_fu_1851_p4;
wire   [31:0] v2_fu_1851_p6;
wire   [31:0] v2_fu_1851_p8;
wire   [31:0] v2_fu_1851_p9;
wire   [13:0] grp_fu_4059_p3;
wire   [13:0] grp_fu_4067_p3;
wire   [31:0] v4_fu_1924_p2;
wire   [31:0] v4_fu_1924_p4;
wire   [31:0] v4_fu_1924_p6;
wire   [31:0] v4_fu_1924_p8;
wire   [31:0] v4_fu_1924_p9;
wire   [31:0] v6_fu_1963_p2;
wire   [31:0] v6_fu_1963_p4;
wire   [31:0] v6_fu_1963_p6;
wire   [31:0] v6_fu_1963_p8;
wire   [31:0] v6_fu_1963_p9;
wire   [13:0] grp_fu_4075_p3;
wire   [13:0] grp_fu_4083_p3;
wire   [31:0] v8_fu_2036_p2;
wire   [31:0] v8_fu_2036_p4;
wire   [31:0] v8_fu_2036_p6;
wire   [31:0] v8_fu_2036_p8;
wire   [31:0] v8_fu_2036_p9;
wire   [31:0] v10_fu_2075_p2;
wire   [31:0] v10_fu_2075_p4;
wire   [31:0] v10_fu_2075_p6;
wire   [31:0] v10_fu_2075_p8;
wire   [31:0] v10_fu_2075_p9;
wire   [13:0] grp_fu_4091_p3;
wire   [13:0] grp_fu_4099_p3;
wire   [31:0] v12_fu_2148_p2;
wire   [31:0] v12_fu_2148_p4;
wire   [31:0] v12_fu_2148_p6;
wire   [31:0] v12_fu_2148_p8;
wire   [31:0] v12_fu_2148_p9;
wire   [31:0] v14_fu_2187_p2;
wire   [31:0] v14_fu_2187_p4;
wire   [31:0] v14_fu_2187_p6;
wire   [31:0] v14_fu_2187_p8;
wire   [31:0] v14_fu_2187_p9;
wire   [13:0] grp_fu_4107_p3;
wire   [13:0] grp_fu_4115_p3;
wire   [31:0] v16_fu_2260_p2;
wire   [31:0] v16_fu_2260_p4;
wire   [31:0] v16_fu_2260_p6;
wire   [31:0] v16_fu_2260_p8;
wire   [31:0] v16_fu_2260_p9;
wire   [31:0] v119_1_fu_2299_p2;
wire   [31:0] v119_1_fu_2299_p4;
wire   [31:0] v119_1_fu_2299_p6;
wire   [31:0] v119_1_fu_2299_p8;
wire   [31:0] v119_1_fu_2299_p9;
wire   [13:0] grp_fu_4123_p3;
wire   [13:0] grp_fu_4131_p3;
wire   [31:0] v132_1_fu_2372_p2;
wire   [31:0] v132_1_fu_2372_p4;
wire   [31:0] v132_1_fu_2372_p6;
wire   [31:0] v132_1_fu_2372_p8;
wire   [31:0] v132_1_fu_2372_p9;
wire   [31:0] v143_1_fu_2411_p2;
wire   [31:0] v143_1_fu_2411_p4;
wire   [31:0] v143_1_fu_2411_p6;
wire   [31:0] v143_1_fu_2411_p8;
wire   [31:0] v143_1_fu_2411_p9;
wire   [13:0] grp_fu_4139_p3;
wire   [13:0] grp_fu_4147_p3;
wire   [31:0] v154_1_fu_2484_p2;
wire   [31:0] v154_1_fu_2484_p4;
wire   [31:0] v154_1_fu_2484_p6;
wire   [31:0] v154_1_fu_2484_p8;
wire   [31:0] v154_1_fu_2484_p9;
wire   [31:0] v165_1_fu_2523_p2;
wire   [31:0] v165_1_fu_2523_p4;
wire   [31:0] v165_1_fu_2523_p6;
wire   [31:0] v165_1_fu_2523_p8;
wire   [31:0] v165_1_fu_2523_p9;
wire   [13:0] grp_fu_4155_p3;
wire   [13:0] grp_fu_4163_p3;
wire   [31:0] v176_1_fu_2596_p2;
wire   [31:0] v176_1_fu_2596_p4;
wire   [31:0] v176_1_fu_2596_p6;
wire   [31:0] v176_1_fu_2596_p8;
wire   [31:0] v176_1_fu_2596_p9;
wire   [31:0] v187_1_fu_2635_p2;
wire   [31:0] v187_1_fu_2635_p4;
wire   [31:0] v187_1_fu_2635_p6;
wire   [31:0] v187_1_fu_2635_p8;
wire   [31:0] v187_1_fu_2635_p9;
wire   [13:0] grp_fu_4171_p3;
wire   [13:0] grp_fu_4179_p3;
wire   [7:0] mul_ln171_fu_2696_p0;
wire   [8:0] mul_ln171_fu_2696_p1;
wire   [7:0] mul_ln186_fu_2705_p0;
wire   [8:0] mul_ln186_fu_2705_p1;
wire   [7:0] mul_ln199_fu_2714_p0;
wire   [8:0] mul_ln199_fu_2714_p1;
wire   [7:0] mul_ln212_fu_2723_p0;
wire   [8:0] mul_ln212_fu_2723_p1;
wire   [7:0] mul_ln225_fu_2732_p0;
wire   [8:0] mul_ln225_fu_2732_p1;
wire   [7:0] mul_ln238_fu_2741_p0;
wire   [8:0] mul_ln238_fu_2741_p1;
wire   [7:0] mul_ln251_fu_2750_p0;
wire   [8:0] mul_ln251_fu_2750_p1;
wire   [7:0] mul_ln264_fu_2759_p0;
wire   [8:0] mul_ln264_fu_2759_p1;
wire   [7:0] mul_ln277_fu_2768_p0;
wire   [8:0] mul_ln277_fu_2768_p1;
wire   [31:0] v198_1_fu_2790_p2;
wire   [31:0] v198_1_fu_2790_p4;
wire   [31:0] v198_1_fu_2790_p6;
wire   [31:0] v198_1_fu_2790_p8;
wire   [31:0] v198_1_fu_2790_p9;
wire   [31:0] v209_1_fu_2829_p2;
wire   [31:0] v209_1_fu_2829_p4;
wire   [31:0] v209_1_fu_2829_p6;
wire   [31:0] v209_1_fu_2829_p8;
wire   [31:0] v209_1_fu_2829_p9;
wire   [13:0] grp_fu_4187_p3;
wire   [13:0] grp_fu_4195_p3;
wire   [31:0] v119_2_fu_2902_p2;
wire   [31:0] v119_2_fu_2902_p4;
wire   [31:0] v119_2_fu_2902_p6;
wire   [31:0] v119_2_fu_2902_p8;
wire   [31:0] v119_2_fu_2902_p9;
wire   [31:0] v132_2_fu_2941_p2;
wire   [31:0] v132_2_fu_2941_p4;
wire   [31:0] v132_2_fu_2941_p6;
wire   [31:0] v132_2_fu_2941_p8;
wire   [31:0] v132_2_fu_2941_p9;
wire   [13:0] grp_fu_4203_p3;
wire   [13:0] grp_fu_4211_p3;
wire   [31:0] v143_2_fu_3014_p2;
wire   [31:0] v143_2_fu_3014_p4;
wire   [31:0] v143_2_fu_3014_p6;
wire   [31:0] v143_2_fu_3014_p8;
wire   [31:0] v143_2_fu_3014_p9;
wire   [31:0] v154_2_fu_3053_p2;
wire   [31:0] v154_2_fu_3053_p4;
wire   [31:0] v154_2_fu_3053_p6;
wire   [31:0] v154_2_fu_3053_p8;
wire   [31:0] v154_2_fu_3053_p9;
wire   [13:0] grp_fu_4219_p3;
wire   [13:0] grp_fu_4227_p3;
wire   [31:0] v165_2_fu_3126_p2;
wire   [31:0] v165_2_fu_3126_p4;
wire   [31:0] v165_2_fu_3126_p6;
wire   [31:0] v165_2_fu_3126_p8;
wire   [31:0] v165_2_fu_3126_p9;
wire   [31:0] v176_2_fu_3165_p2;
wire   [31:0] v176_2_fu_3165_p4;
wire   [31:0] v176_2_fu_3165_p6;
wire   [31:0] v176_2_fu_3165_p8;
wire   [31:0] v176_2_fu_3165_p9;
wire   [13:0] grp_fu_4235_p3;
wire   [13:0] grp_fu_4243_p3;
wire   [7:0] mul_ln171_1_fu_3225_p0;
wire   [8:0] mul_ln171_1_fu_3225_p1;
wire   [7:0] mul_ln186_1_fu_3234_p0;
wire   [8:0] mul_ln186_1_fu_3234_p1;
wire   [7:0] mul_ln199_1_fu_3243_p0;
wire   [8:0] mul_ln199_1_fu_3243_p1;
wire   [7:0] mul_ln212_1_fu_3252_p0;
wire   [8:0] mul_ln212_1_fu_3252_p1;
wire   [7:0] mul_ln225_1_fu_3261_p0;
wire   [8:0] mul_ln225_1_fu_3261_p1;
wire   [7:0] mul_ln238_1_fu_3270_p0;
wire   [8:0] mul_ln238_1_fu_3270_p1;
wire   [7:0] mul_ln251_1_fu_3279_p0;
wire   [8:0] mul_ln251_1_fu_3279_p1;
wire   [7:0] mul_ln264_1_fu_3288_p0;
wire   [8:0] mul_ln264_1_fu_3288_p1;
wire   [7:0] mul_ln277_1_fu_3297_p0;
wire   [8:0] mul_ln277_1_fu_3297_p1;
wire   [31:0] v187_2_fu_3319_p2;
wire   [31:0] v187_2_fu_3319_p4;
wire   [31:0] v187_2_fu_3319_p6;
wire   [31:0] v187_2_fu_3319_p8;
wire   [31:0] v187_2_fu_3319_p9;
wire   [31:0] v198_2_fu_3358_p2;
wire   [31:0] v198_2_fu_3358_p4;
wire   [31:0] v198_2_fu_3358_p6;
wire   [31:0] v198_2_fu_3358_p8;
wire   [31:0] v198_2_fu_3358_p9;
wire   [13:0] grp_fu_4251_p3;
wire   [13:0] grp_fu_4259_p3;
wire   [31:0] v209_2_fu_3431_p2;
wire   [31:0] v209_2_fu_3431_p4;
wire   [31:0] v209_2_fu_3431_p6;
wire   [31:0] v209_2_fu_3431_p8;
wire   [31:0] v209_2_fu_3431_p9;
wire   [31:0] v119_3_fu_3470_p2;
wire   [31:0] v119_3_fu_3470_p4;
wire   [31:0] v119_3_fu_3470_p6;
wire   [31:0] v119_3_fu_3470_p8;
wire   [31:0] v119_3_fu_3470_p9;
wire   [13:0] grp_fu_4267_p3;
wire   [13:0] grp_fu_4275_p3;
wire   [31:0] v132_3_fu_3543_p2;
wire   [31:0] v132_3_fu_3543_p4;
wire   [31:0] v132_3_fu_3543_p6;
wire   [31:0] v132_3_fu_3543_p8;
wire   [31:0] v132_3_fu_3543_p9;
wire   [31:0] v143_3_fu_3582_p2;
wire   [31:0] v143_3_fu_3582_p4;
wire   [31:0] v143_3_fu_3582_p6;
wire   [31:0] v143_3_fu_3582_p8;
wire   [31:0] v143_3_fu_3582_p9;
wire   [13:0] grp_fu_4283_p3;
wire   [13:0] grp_fu_4291_p3;
wire   [31:0] v154_3_fu_3635_p2;
wire   [31:0] v154_3_fu_3635_p4;
wire   [31:0] v154_3_fu_3635_p6;
wire   [31:0] v154_3_fu_3635_p8;
wire   [31:0] v154_3_fu_3635_p9;
wire   [31:0] v165_3_fu_3674_p2;
wire   [31:0] v165_3_fu_3674_p4;
wire   [31:0] v165_3_fu_3674_p6;
wire   [31:0] v165_3_fu_3674_p8;
wire   [31:0] v165_3_fu_3674_p9;
wire   [13:0] grp_fu_4299_p3;
wire   [13:0] grp_fu_4307_p3;
wire   [31:0] v176_3_fu_3727_p2;
wire   [31:0] v176_3_fu_3727_p4;
wire   [31:0] v176_3_fu_3727_p6;
wire   [31:0] v176_3_fu_3727_p8;
wire   [31:0] v176_3_fu_3727_p9;
wire   [31:0] v187_3_fu_3766_p2;
wire   [31:0] v187_3_fu_3766_p4;
wire   [31:0] v187_3_fu_3766_p6;
wire   [31:0] v187_3_fu_3766_p8;
wire   [31:0] v187_3_fu_3766_p9;
wire   [13:0] grp_fu_4315_p3;
wire   [13:0] grp_fu_4323_p3;
wire   [7:0] mul_ln171_2_fu_3806_p0;
wire   [8:0] mul_ln171_2_fu_3806_p1;
wire   [7:0] mul_ln186_2_fu_3815_p0;
wire   [8:0] mul_ln186_2_fu_3815_p1;
wire   [7:0] mul_ln199_2_fu_3824_p0;
wire   [8:0] mul_ln199_2_fu_3824_p1;
wire   [7:0] mul_ln212_2_fu_3833_p0;
wire   [8:0] mul_ln212_2_fu_3833_p1;
wire   [7:0] mul_ln225_2_fu_3842_p0;
wire   [8:0] mul_ln225_2_fu_3842_p1;
wire   [7:0] mul_ln238_2_fu_3851_p0;
wire   [8:0] mul_ln238_2_fu_3851_p1;
wire   [7:0] mul_ln251_2_fu_3860_p0;
wire   [8:0] mul_ln251_2_fu_3860_p1;
wire   [7:0] mul_ln264_2_fu_3869_p0;
wire   [8:0] mul_ln264_2_fu_3869_p1;
wire   [7:0] mul_ln277_2_fu_3878_p0;
wire   [8:0] mul_ln277_2_fu_3878_p1;
wire   [31:0] v198_3_fu_3900_p2;
wire   [31:0] v198_3_fu_3900_p4;
wire   [31:0] v198_3_fu_3900_p6;
wire   [31:0] v198_3_fu_3900_p8;
wire   [31:0] v198_3_fu_3900_p9;
wire   [31:0] v209_3_fu_3939_p2;
wire   [31:0] v209_3_fu_3939_p4;
wire   [31:0] v209_3_fu_3939_p6;
wire   [31:0] v209_3_fu_3939_p8;
wire   [31:0] v209_3_fu_3939_p9;
wire   [7:0] mul_ln171_3_fu_3965_p0;
wire   [8:0] mul_ln171_3_fu_3965_p1;
wire   [7:0] mul_ln186_3_fu_3974_p0;
wire   [8:0] mul_ln186_3_fu_3974_p1;
wire   [7:0] mul_ln199_3_fu_3983_p0;
wire   [8:0] mul_ln199_3_fu_3983_p1;
wire   [7:0] mul_ln212_3_fu_3992_p0;
wire   [8:0] mul_ln212_3_fu_3992_p1;
wire   [7:0] mul_ln225_3_fu_4001_p0;
wire   [8:0] mul_ln225_3_fu_4001_p1;
wire   [7:0] mul_ln238_3_fu_4010_p0;
wire   [8:0] mul_ln238_3_fu_4010_p1;
wire   [7:0] mul_ln251_3_fu_4019_p0;
wire   [8:0] mul_ln251_3_fu_4019_p1;
wire   [7:0] mul_ln264_3_fu_4028_p0;
wire   [8:0] mul_ln264_3_fu_4028_p1;
wire   [7:0] mul_ln277_3_fu_4037_p0;
wire   [8:0] mul_ln277_3_fu_4037_p1;
wire   [7:0] grp_fu_4043_p0;
wire   [5:0] grp_fu_4043_p1;
wire   [5:0] grp_fu_4043_p2;
wire   [7:0] grp_fu_4051_p0;
wire   [5:0] grp_fu_4051_p1;
wire   [5:0] grp_fu_4051_p2;
wire   [7:0] grp_fu_4059_p0;
wire   [5:0] grp_fu_4059_p1;
wire   [5:0] grp_fu_4059_p2;
wire   [7:0] grp_fu_4067_p0;
wire   [5:0] grp_fu_4067_p1;
wire   [5:0] grp_fu_4067_p2;
wire   [7:0] grp_fu_4075_p0;
wire   [5:0] grp_fu_4075_p1;
wire   [5:0] grp_fu_4075_p2;
wire   [7:0] grp_fu_4083_p0;
wire   [5:0] grp_fu_4083_p1;
wire   [5:0] grp_fu_4083_p2;
wire   [7:0] grp_fu_4091_p0;
wire   [5:0] grp_fu_4091_p1;
wire   [5:0] grp_fu_4091_p2;
wire   [7:0] grp_fu_4099_p0;
wire   [5:0] grp_fu_4099_p1;
wire   [5:0] grp_fu_4099_p2;
wire   [7:0] grp_fu_4107_p0;
wire   [5:0] grp_fu_4107_p1;
wire   [5:0] grp_fu_4107_p2;
wire   [7:0] grp_fu_4115_p0;
wire   [5:0] grp_fu_4115_p1;
wire   [5:0] grp_fu_4115_p2;
wire   [7:0] grp_fu_4123_p0;
wire   [5:0] grp_fu_4123_p1;
wire   [5:0] grp_fu_4123_p2;
wire   [7:0] grp_fu_4131_p0;
wire   [5:0] grp_fu_4131_p1;
wire   [5:0] grp_fu_4131_p2;
wire   [7:0] grp_fu_4139_p0;
wire   [5:0] grp_fu_4139_p1;
wire   [5:0] grp_fu_4139_p2;
wire   [7:0] grp_fu_4147_p0;
wire   [5:0] grp_fu_4147_p1;
wire   [5:0] grp_fu_4147_p2;
wire   [7:0] grp_fu_4155_p0;
wire   [5:0] grp_fu_4155_p1;
wire   [5:0] grp_fu_4155_p2;
wire   [7:0] grp_fu_4163_p0;
wire   [5:0] grp_fu_4163_p1;
wire   [5:0] grp_fu_4163_p2;
wire   [7:0] grp_fu_4171_p0;
wire   [5:0] grp_fu_4171_p1;
wire   [5:0] grp_fu_4171_p2;
wire   [7:0] grp_fu_4179_p0;
wire   [5:0] grp_fu_4179_p1;
wire   [5:0] grp_fu_4179_p2;
wire   [7:0] grp_fu_4187_p0;
wire   [5:0] grp_fu_4187_p1;
wire   [5:0] grp_fu_4187_p2;
wire   [7:0] grp_fu_4195_p0;
wire   [5:0] grp_fu_4195_p1;
wire   [5:0] grp_fu_4195_p2;
wire   [7:0] grp_fu_4203_p0;
wire   [5:0] grp_fu_4203_p1;
wire   [5:0] grp_fu_4203_p2;
wire   [7:0] grp_fu_4211_p0;
wire   [5:0] grp_fu_4211_p1;
wire   [5:0] grp_fu_4211_p2;
wire   [7:0] grp_fu_4219_p0;
wire   [5:0] grp_fu_4219_p1;
wire   [5:0] grp_fu_4219_p2;
wire   [7:0] grp_fu_4227_p0;
wire   [5:0] grp_fu_4227_p1;
wire   [5:0] grp_fu_4227_p2;
wire   [7:0] grp_fu_4235_p0;
wire   [5:0] grp_fu_4235_p1;
wire   [5:0] grp_fu_4235_p2;
wire   [7:0] grp_fu_4243_p0;
wire   [5:0] grp_fu_4243_p1;
wire   [5:0] grp_fu_4243_p2;
wire   [7:0] grp_fu_4251_p0;
wire   [5:0] grp_fu_4251_p1;
wire   [5:0] grp_fu_4251_p2;
wire   [7:0] grp_fu_4259_p0;
wire   [5:0] grp_fu_4259_p1;
wire   [5:0] grp_fu_4259_p2;
wire   [7:0] grp_fu_4267_p0;
wire   [5:0] grp_fu_4267_p1;
wire   [5:0] grp_fu_4267_p2;
wire   [7:0] grp_fu_4275_p0;
wire   [5:0] grp_fu_4275_p1;
wire   [5:0] grp_fu_4275_p2;
wire   [7:0] grp_fu_4283_p0;
wire   [5:0] grp_fu_4283_p1;
wire   [5:0] grp_fu_4283_p2;
wire   [7:0] grp_fu_4291_p0;
wire   [5:0] grp_fu_4291_p1;
wire   [5:0] grp_fu_4291_p2;
wire   [7:0] grp_fu_4299_p0;
wire   [5:0] grp_fu_4299_p1;
wire   [5:0] grp_fu_4299_p2;
wire   [7:0] grp_fu_4307_p0;
wire   [5:0] grp_fu_4307_p1;
wire   [5:0] grp_fu_4307_p2;
wire   [7:0] grp_fu_4315_p0;
wire   [5:0] grp_fu_4315_p1;
wire   [5:0] grp_fu_4315_p2;
wire   [7:0] grp_fu_4323_p0;
wire   [5:0] grp_fu_4323_p1;
wire   [5:0] grp_fu_4323_p2;
reg    grp_fu_1496_ce;
wire    ap_CS_fsm_state27;
reg    grp_fu_1500_ce;
reg    grp_fu_1504_ce;
reg    grp_fu_1508_ce;
reg    grp_fu_1512_ce;
reg    grp_fu_1516_ce;
reg    grp_fu_1520_ce;
reg    grp_fu_1524_ce;
reg    grp_fu_1528_ce;
reg    grp_fu_4219_ce;
reg    grp_fu_4227_ce;
reg    grp_fu_4235_ce;
reg    grp_fu_4243_ce;
reg    grp_fu_4251_ce;
reg    grp_fu_4259_ce;
reg    grp_fu_4267_ce;
reg    grp_fu_4275_ce;
reg    grp_fu_4283_ce;
reg    grp_fu_4291_ce;
reg    grp_fu_4299_ce;
reg    grp_fu_4307_ce;
reg    grp_fu_4315_ce;
reg    grp_fu_4323_ce;
reg   [31:0] grp_fu_5910_p0;
reg   [31:0] grp_fu_5910_p1;
reg    grp_fu_5910_ce;
reg   [31:0] grp_fu_5914_p0;
reg   [31:0] grp_fu_5914_p1;
reg    grp_fu_5914_ce;
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
wire   [13:0] grp_fu_4043_p00;
wire   [13:0] grp_fu_4051_p00;
wire   [13:0] grp_fu_4059_p00;
wire   [13:0] grp_fu_4067_p00;
wire   [13:0] grp_fu_4075_p00;
wire   [13:0] grp_fu_4083_p00;
wire   [13:0] grp_fu_4091_p00;
wire   [13:0] grp_fu_4099_p00;
wire   [13:0] grp_fu_4107_p00;
wire   [13:0] grp_fu_4115_p00;
wire   [13:0] grp_fu_4123_p00;
wire   [13:0] grp_fu_4131_p00;
wire   [13:0] grp_fu_4139_p00;
wire   [13:0] grp_fu_4147_p00;
wire   [13:0] grp_fu_4155_p00;
wire   [13:0] grp_fu_4163_p00;
wire   [13:0] grp_fu_4171_p00;
wire   [13:0] grp_fu_4179_p00;
wire   [13:0] grp_fu_4187_p00;
wire   [13:0] grp_fu_4195_p00;
wire   [13:0] grp_fu_4203_p00;
wire   [13:0] grp_fu_4211_p00;
wire   [13:0] grp_fu_4219_p00;
wire   [13:0] grp_fu_4227_p00;
wire   [13:0] grp_fu_4235_p00;
wire   [13:0] grp_fu_4243_p00;
wire   [13:0] grp_fu_4251_p00;
wire   [13:0] grp_fu_4259_p00;
wire   [13:0] grp_fu_4267_p00;
wire   [13:0] grp_fu_4275_p00;
wire   [13:0] grp_fu_4283_p00;
wire   [13:0] grp_fu_4291_p00;
wire   [13:0] grp_fu_4299_p00;
wire   [13:0] grp_fu_4307_p00;
wire   [13:0] grp_fu_4315_p00;
wire   [13:0] grp_fu_4323_p00;
wire   [15:0] mul_ln171_1_fu_3225_p00;
wire   [15:0] mul_ln171_2_fu_3806_p00;
wire   [15:0] mul_ln171_3_fu_3965_p00;
wire   [15:0] mul_ln171_fu_2696_p00;
wire   [15:0] mul_ln186_1_fu_3234_p00;
wire   [15:0] mul_ln186_2_fu_3815_p00;
wire   [15:0] mul_ln186_3_fu_3974_p00;
wire   [15:0] mul_ln186_fu_2705_p00;
wire   [15:0] mul_ln199_1_fu_3243_p00;
wire   [15:0] mul_ln199_2_fu_3824_p00;
wire   [15:0] mul_ln199_3_fu_3983_p00;
wire   [15:0] mul_ln199_fu_2714_p00;
wire   [15:0] mul_ln212_1_fu_3252_p00;
wire   [15:0] mul_ln212_2_fu_3833_p00;
wire   [15:0] mul_ln212_3_fu_3992_p00;
wire   [15:0] mul_ln212_fu_2723_p00;
wire   [15:0] mul_ln225_1_fu_3261_p00;
wire   [15:0] mul_ln225_2_fu_3842_p00;
wire   [15:0] mul_ln225_3_fu_4001_p00;
wire   [15:0] mul_ln225_fu_2732_p00;
wire   [15:0] mul_ln238_1_fu_3270_p00;
wire   [15:0] mul_ln238_2_fu_3851_p00;
wire   [15:0] mul_ln238_3_fu_4010_p00;
wire   [15:0] mul_ln238_fu_2741_p00;
wire   [15:0] mul_ln251_1_fu_3279_p00;
wire   [15:0] mul_ln251_2_fu_3860_p00;
wire   [15:0] mul_ln251_3_fu_4019_p00;
wire   [15:0] mul_ln251_fu_2750_p00;
wire   [15:0] mul_ln264_1_fu_3288_p00;
wire   [15:0] mul_ln264_2_fu_3869_p00;
wire   [15:0] mul_ln264_3_fu_4028_p00;
wire   [15:0] mul_ln264_fu_2759_p00;
wire   [15:0] mul_ln277_1_fu_3297_p00;
wire   [15:0] mul_ln277_2_fu_3878_p00;
wire   [15:0] mul_ln277_3_fu_4037_p00;
wire   [15:0] mul_ln277_fu_2768_p00;
wire   [1:0] v_fu_1812_p1;
wire   [1:0] v_fu_1812_p3;
wire  signed [1:0] v_fu_1812_p5;
wire  signed [1:0] v_fu_1812_p7;
wire   [1:0] v2_fu_1851_p1;
wire   [1:0] v2_fu_1851_p3;
wire  signed [1:0] v2_fu_1851_p5;
wire  signed [1:0] v2_fu_1851_p7;
wire   [1:0] v4_fu_1924_p1;
wire   [1:0] v4_fu_1924_p3;
wire  signed [1:0] v4_fu_1924_p5;
wire  signed [1:0] v4_fu_1924_p7;
wire   [1:0] v6_fu_1963_p1;
wire   [1:0] v6_fu_1963_p3;
wire  signed [1:0] v6_fu_1963_p5;
wire  signed [1:0] v6_fu_1963_p7;
wire   [1:0] v8_fu_2036_p1;
wire   [1:0] v8_fu_2036_p3;
wire  signed [1:0] v8_fu_2036_p5;
wire  signed [1:0] v8_fu_2036_p7;
wire   [1:0] v10_fu_2075_p1;
wire   [1:0] v10_fu_2075_p3;
wire  signed [1:0] v10_fu_2075_p5;
wire  signed [1:0] v10_fu_2075_p7;
wire   [1:0] v12_fu_2148_p1;
wire   [1:0] v12_fu_2148_p3;
wire  signed [1:0] v12_fu_2148_p5;
wire  signed [1:0] v12_fu_2148_p7;
wire   [1:0] v14_fu_2187_p1;
wire   [1:0] v14_fu_2187_p3;
wire  signed [1:0] v14_fu_2187_p5;
wire  signed [1:0] v14_fu_2187_p7;
wire   [1:0] v16_fu_2260_p1;
wire   [1:0] v16_fu_2260_p3;
wire  signed [1:0] v16_fu_2260_p5;
wire  signed [1:0] v16_fu_2260_p7;
wire   [1:0] v119_1_fu_2299_p1;
wire   [1:0] v119_1_fu_2299_p3;
wire  signed [1:0] v119_1_fu_2299_p5;
wire  signed [1:0] v119_1_fu_2299_p7;
wire   [1:0] v132_1_fu_2372_p1;
wire   [1:0] v132_1_fu_2372_p3;
wire  signed [1:0] v132_1_fu_2372_p5;
wire  signed [1:0] v132_1_fu_2372_p7;
wire   [1:0] v143_1_fu_2411_p1;
wire   [1:0] v143_1_fu_2411_p3;
wire  signed [1:0] v143_1_fu_2411_p5;
wire  signed [1:0] v143_1_fu_2411_p7;
wire   [1:0] v154_1_fu_2484_p1;
wire   [1:0] v154_1_fu_2484_p3;
wire  signed [1:0] v154_1_fu_2484_p5;
wire  signed [1:0] v154_1_fu_2484_p7;
wire   [1:0] v165_1_fu_2523_p1;
wire   [1:0] v165_1_fu_2523_p3;
wire  signed [1:0] v165_1_fu_2523_p5;
wire  signed [1:0] v165_1_fu_2523_p7;
wire   [1:0] v176_1_fu_2596_p1;
wire   [1:0] v176_1_fu_2596_p3;
wire  signed [1:0] v176_1_fu_2596_p5;
wire  signed [1:0] v176_1_fu_2596_p7;
wire   [1:0] v187_1_fu_2635_p1;
wire   [1:0] v187_1_fu_2635_p3;
wire  signed [1:0] v187_1_fu_2635_p5;
wire  signed [1:0] v187_1_fu_2635_p7;
wire   [1:0] v198_1_fu_2790_p1;
wire   [1:0] v198_1_fu_2790_p3;
wire  signed [1:0] v198_1_fu_2790_p5;
wire  signed [1:0] v198_1_fu_2790_p7;
wire   [1:0] v209_1_fu_2829_p1;
wire   [1:0] v209_1_fu_2829_p3;
wire  signed [1:0] v209_1_fu_2829_p5;
wire  signed [1:0] v209_1_fu_2829_p7;
wire   [1:0] v119_2_fu_2902_p1;
wire   [1:0] v119_2_fu_2902_p3;
wire  signed [1:0] v119_2_fu_2902_p5;
wire  signed [1:0] v119_2_fu_2902_p7;
wire   [1:0] v132_2_fu_2941_p1;
wire   [1:0] v132_2_fu_2941_p3;
wire  signed [1:0] v132_2_fu_2941_p5;
wire  signed [1:0] v132_2_fu_2941_p7;
wire   [1:0] v143_2_fu_3014_p1;
wire   [1:0] v143_2_fu_3014_p3;
wire  signed [1:0] v143_2_fu_3014_p5;
wire  signed [1:0] v143_2_fu_3014_p7;
wire   [1:0] v154_2_fu_3053_p1;
wire   [1:0] v154_2_fu_3053_p3;
wire  signed [1:0] v154_2_fu_3053_p5;
wire  signed [1:0] v154_2_fu_3053_p7;
wire   [1:0] v165_2_fu_3126_p1;
wire   [1:0] v165_2_fu_3126_p3;
wire  signed [1:0] v165_2_fu_3126_p5;
wire  signed [1:0] v165_2_fu_3126_p7;
wire   [1:0] v176_2_fu_3165_p1;
wire   [1:0] v176_2_fu_3165_p3;
wire  signed [1:0] v176_2_fu_3165_p5;
wire  signed [1:0] v176_2_fu_3165_p7;
wire   [1:0] v187_2_fu_3319_p1;
wire   [1:0] v187_2_fu_3319_p3;
wire  signed [1:0] v187_2_fu_3319_p5;
wire  signed [1:0] v187_2_fu_3319_p7;
wire   [1:0] v198_2_fu_3358_p1;
wire   [1:0] v198_2_fu_3358_p3;
wire  signed [1:0] v198_2_fu_3358_p5;
wire  signed [1:0] v198_2_fu_3358_p7;
wire   [1:0] v209_2_fu_3431_p1;
wire   [1:0] v209_2_fu_3431_p3;
wire  signed [1:0] v209_2_fu_3431_p5;
wire  signed [1:0] v209_2_fu_3431_p7;
wire   [1:0] v119_3_fu_3470_p1;
wire   [1:0] v119_3_fu_3470_p3;
wire  signed [1:0] v119_3_fu_3470_p5;
wire  signed [1:0] v119_3_fu_3470_p7;
wire   [1:0] v132_3_fu_3543_p1;
wire   [1:0] v132_3_fu_3543_p3;
wire  signed [1:0] v132_3_fu_3543_p5;
wire  signed [1:0] v132_3_fu_3543_p7;
wire   [1:0] v143_3_fu_3582_p1;
wire   [1:0] v143_3_fu_3582_p3;
wire  signed [1:0] v143_3_fu_3582_p5;
wire  signed [1:0] v143_3_fu_3582_p7;
wire   [1:0] v154_3_fu_3635_p1;
wire   [1:0] v154_3_fu_3635_p3;
wire  signed [1:0] v154_3_fu_3635_p5;
wire  signed [1:0] v154_3_fu_3635_p7;
wire   [1:0] v165_3_fu_3674_p1;
wire   [1:0] v165_3_fu_3674_p3;
wire  signed [1:0] v165_3_fu_3674_p5;
wire  signed [1:0] v165_3_fu_3674_p7;
wire   [1:0] v176_3_fu_3727_p1;
wire   [1:0] v176_3_fu_3727_p3;
wire  signed [1:0] v176_3_fu_3727_p5;
wire  signed [1:0] v176_3_fu_3727_p7;
wire   [1:0] v187_3_fu_3766_p1;
wire   [1:0] v187_3_fu_3766_p3;
wire  signed [1:0] v187_3_fu_3766_p5;
wire  signed [1:0] v187_3_fu_3766_p7;
wire   [1:0] v198_3_fu_3900_p1;
wire   [1:0] v198_3_fu_3900_p3;
wire  signed [1:0] v198_3_fu_3900_p5;
wire  signed [1:0] v198_3_fu_3900_p7;
wire   [1:0] v209_3_fu_3939_p1;
wire   [1:0] v209_3_fu_3939_p3;
wire  signed [1:0] v209_3_fu_3939_p5;
wire  signed [1:0] v209_3_fu_3939_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 30'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_start_reg = 1'b0;
#0 phi_mul_fu_162 = 16'd0;
#0 v114_fu_166 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_1384(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_d1),.v225_q1(v225_q1),.phi_mul(phi_mul_load_reg_4358),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_5150),.mul_ln186(mul_ln186_reg_5155),.mul_ln199(mul_ln199_reg_5160),.mul_ln212(mul_ln212_reg_5165),.mul_ln225(mul_ln225_reg_5170),.mul_ln238(mul_ln238_reg_5175),.mul_ln251(mul_ln251_reg_5180),.mul_ln264(mul_ln264_reg_5185),.mul_ln277(mul_ln277_reg_5190),.cmp11(cmp11_reg_4459),.v120(reg_1532),.v133(reg_1540),.v144(reg_1548),.v155(reg_1556),.v166(reg_1564),.v177(reg_1572),.v188(reg_1580),.v199(reg_1588),.v210(reg_1596),.grp_fu_5910_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5910_p_din0),.grp_fu_5910_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5910_p_din1),.grp_fu_5910_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5910_p_opcode),.grp_fu_5910_p_dout0(grp_fu_176_p_dout0),.grp_fu_5910_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5910_p_ce),.grp_fu_5914_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5914_p_din0),.grp_fu_5914_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5914_p_din1),.grp_fu_5914_p_dout0(grp_fu_180_p_dout0),.grp_fu_5914_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5914_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_1412(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_d1),.v225_q1(v225_q1),.phi_mul(phi_mul_load_reg_4358),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v227_ce1),.v227_q1(v227_q1),.mul_ln171_1(mul_ln171_1_reg_5475),.mul_ln186_1(mul_ln186_1_reg_5480),.mul_ln199_1(mul_ln199_1_reg_5485),.mul_ln212_1(mul_ln212_1_reg_5490),.mul_ln225_1(mul_ln225_1_reg_5495),.mul_ln238_1(mul_ln238_1_reg_5500),.mul_ln251_1(mul_ln251_1_reg_5505),.mul_ln264_1(mul_ln264_1_reg_5510),.mul_ln277_1(mul_ln277_1_reg_5515),.cmp11(cmp11_reg_4459),.v120_1(reg_1532),.v133_1(reg_1540),.v144_1(reg_1548),.v155_1(reg_1556),.v166_1(reg_1564),.v177_1(reg_1572),.v188_1(reg_1580),.v199_1(reg_1588),.v210_1(reg_1596),.grp_fu_5910_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5910_p_din0),.grp_fu_5910_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5910_p_din1),.grp_fu_5910_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5910_p_opcode),.grp_fu_5910_p_dout0(grp_fu_176_p_dout0),.grp_fu_5910_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5910_p_ce),.grp_fu_5914_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5914_p_din0),.grp_fu_5914_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5914_p_din1),.grp_fu_5914_p_dout0(grp_fu_180_p_dout0),.grp_fu_5914_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5914_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_54 grp_kernel_2mm_node1_Pipeline_label_54_fu_1440(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_d1),.v225_q1(v225_q1),.phi_mul(phi_mul_load_reg_4358),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v227_ce1),.v227_q1(v227_q1),.mul_ln171_2(mul_ln171_2_reg_5810),.mul_ln186_2(mul_ln186_2_reg_5815),.mul_ln199_2(mul_ln199_2_reg_5820),.mul_ln212_2(mul_ln212_2_reg_5825),.mul_ln225_2(mul_ln225_2_reg_5830),.mul_ln238_2(mul_ln238_2_reg_5835),.mul_ln251_2(mul_ln251_2_reg_5840),.mul_ln264_2(mul_ln264_2_reg_5845),.mul_ln277_2(mul_ln277_2_reg_5850),.cmp11(cmp11_reg_4459),.v120_2(reg_1532),.v133_2(reg_1540),.v144_2(reg_1548),.v155_2(reg_1556),.v166_2(reg_1564),.v177_2(reg_1572),.v188_2(reg_1580),.v199_2(reg_1588),.v210_2(reg_1596),.grp_fu_5910_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5910_p_din0),.grp_fu_5910_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5910_p_din1),.grp_fu_5910_p_opcode(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5910_p_opcode),.grp_fu_5910_p_dout0(grp_fu_176_p_dout0),.grp_fu_5910_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5910_p_ce),.grp_fu_5914_p_din0(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5914_p_din0),.grp_fu_5914_p_din1(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5914_p_din1),.grp_fu_5914_p_dout0(grp_fu_180_p_dout0),.grp_fu_5914_p_ce(grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5914_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_55 grp_kernel_2mm_node1_Pipeline_label_55_fu_1468(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_d1),.v225_q1(v225_q1),.phi_mul(phi_mul_load_reg_4358),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v227_ce1),.v227_q1(v227_q1),.mul_ln171_3(mul_ln171_3_reg_5865),.mul_ln186_3(mul_ln186_3_reg_5870),.mul_ln199_3(mul_ln199_3_reg_5875),.mul_ln212_3(mul_ln212_3_reg_5880),.mul_ln225_3(mul_ln225_3_reg_5885),.mul_ln238_3(mul_ln238_3_reg_5890),.mul_ln251_3(mul_ln251_3_reg_5895),.mul_ln264_3(mul_ln264_3_reg_5900),.mul_ln277_3(mul_ln277_3_reg_5905),.cmp11(cmp11_reg_4459),.v120_3(reg_1532),.v133_3(reg_1540),.v144_3(reg_1548),.v155_3(reg_1556),.v166_3(reg_1564),.v177_3(reg_1572),.v188_3(reg_1580),.v199_3(reg_1588),.v210_3(reg_1596),.grp_fu_5910_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5910_p_din0),.grp_fu_5910_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5910_p_din1),.grp_fu_5910_p_opcode(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5910_p_opcode),.grp_fu_5910_p_dout0(grp_fu_176_p_dout0),.grp_fu_5910_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5910_p_ce),.grp_fu_5914_p_din0(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5914_p_din0),.grp_fu_5914_p_din1(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5914_p_din1),.grp_fu_5914_p_dout0(grp_fu_180_p_dout0),.grp_fu_5914_p_ce(grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5914_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U98(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1500_p0),.din1(v113),.ce(grp_fu_1500_ce),.dout(grp_fu_1500_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U99(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1504_p0),.din1(v113),.ce(grp_fu_1504_ce),.dout(grp_fu_1504_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U100(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1508_p0),.din1(v113),.ce(grp_fu_1508_ce),.dout(grp_fu_1508_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U101(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1512_p0),.din1(v113),.ce(grp_fu_1512_ce),.dout(grp_fu_1512_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U102(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1516_p0),.din1(v113),.ce(grp_fu_1516_ce),.dout(grp_fu_1516_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U103(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1520_p0),.din1(v113),.ce(grp_fu_1520_ce),.dout(grp_fu_1520_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U104(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1524_p0),.din1(v113),.ce(grp_fu_1524_ce),.dout(grp_fu_1524_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U105(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1528_p0),.din1(v113),.ce(grp_fu_1528_ce),.dout(grp_fu_1528_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U106(.din0(v_fu_1812_p2),.din1(v_fu_1812_p4),.din2(v_fu_1812_p6),.din3(v_fu_1812_p8),.def(v_fu_1812_p9),.sel(trunc_ln168_reg_4379),.dout(v_fu_1812_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U107(.din0(v2_fu_1851_p2),.din1(v2_fu_1851_p4),.din2(v2_fu_1851_p6),.din3(v2_fu_1851_p8),.def(v2_fu_1851_p9),.sel(trunc_ln168_reg_4379),.dout(v2_fu_1851_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U108(.din0(v4_fu_1924_p2),.din1(v4_fu_1924_p4),.din2(v4_fu_1924_p6),.din3(v4_fu_1924_p8),.def(v4_fu_1924_p9),.sel(trunc_ln168_reg_4379),.dout(v4_fu_1924_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U109(.din0(v6_fu_1963_p2),.din1(v6_fu_1963_p4),.din2(v6_fu_1963_p6),.din3(v6_fu_1963_p8),.def(v6_fu_1963_p9),.sel(trunc_ln168_reg_4379),.dout(v6_fu_1963_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U110(.din0(v8_fu_2036_p2),.din1(v8_fu_2036_p4),.din2(v8_fu_2036_p6),.din3(v8_fu_2036_p8),.def(v8_fu_2036_p9),.sel(trunc_ln168_reg_4379),.dout(v8_fu_2036_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U111(.din0(v10_fu_2075_p2),.din1(v10_fu_2075_p4),.din2(v10_fu_2075_p6),.din3(v10_fu_2075_p8),.def(v10_fu_2075_p9),.sel(trunc_ln168_reg_4379),.dout(v10_fu_2075_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U112(.din0(v12_fu_2148_p2),.din1(v12_fu_2148_p4),.din2(v12_fu_2148_p6),.din3(v12_fu_2148_p8),.def(v12_fu_2148_p9),.sel(trunc_ln168_reg_4379),.dout(v12_fu_2148_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U113(.din0(v14_fu_2187_p2),.din1(v14_fu_2187_p4),.din2(v14_fu_2187_p6),.din3(v14_fu_2187_p8),.def(v14_fu_2187_p9),.sel(trunc_ln168_reg_4379),.dout(v14_fu_2187_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U114(.din0(v16_fu_2260_p2),.din1(v16_fu_2260_p4),.din2(v16_fu_2260_p6),.din3(v16_fu_2260_p8),.def(v16_fu_2260_p9),.sel(trunc_ln168_reg_4379),.dout(v16_fu_2260_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U115(.din0(v119_1_fu_2299_p2),.din1(v119_1_fu_2299_p4),.din2(v119_1_fu_2299_p6),.din3(v119_1_fu_2299_p8),.def(v119_1_fu_2299_p9),.sel(trunc_ln168_reg_4379),.dout(v119_1_fu_2299_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U116(.din0(v132_1_fu_2372_p2),.din1(v132_1_fu_2372_p4),.din2(v132_1_fu_2372_p6),.din3(v132_1_fu_2372_p8),.def(v132_1_fu_2372_p9),.sel(trunc_ln168_reg_4379),.dout(v132_1_fu_2372_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U117(.din0(v143_1_fu_2411_p2),.din1(v143_1_fu_2411_p4),.din2(v143_1_fu_2411_p6),.din3(v143_1_fu_2411_p8),.def(v143_1_fu_2411_p9),.sel(trunc_ln168_reg_4379),.dout(v143_1_fu_2411_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U118(.din0(v154_1_fu_2484_p2),.din1(v154_1_fu_2484_p4),.din2(v154_1_fu_2484_p6),.din3(v154_1_fu_2484_p8),.def(v154_1_fu_2484_p9),.sel(trunc_ln168_reg_4379),.dout(v154_1_fu_2484_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U119(.din0(v165_1_fu_2523_p2),.din1(v165_1_fu_2523_p4),.din2(v165_1_fu_2523_p6),.din3(v165_1_fu_2523_p8),.def(v165_1_fu_2523_p9),.sel(trunc_ln168_reg_4379),.dout(v165_1_fu_2523_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U120(.din0(v176_1_fu_2596_p2),.din1(v176_1_fu_2596_p4),.din2(v176_1_fu_2596_p6),.din3(v176_1_fu_2596_p8),.def(v176_1_fu_2596_p9),.sel(trunc_ln168_reg_4379),.dout(v176_1_fu_2596_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U121(.din0(v187_1_fu_2635_p2),.din1(v187_1_fu_2635_p4),.din2(v187_1_fu_2635_p6),.din3(v187_1_fu_2635_p8),.def(v187_1_fu_2635_p9),.sel(trunc_ln168_reg_4379),.dout(v187_1_fu_2635_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U122(.din0(mul_ln171_fu_2696_p0),.din1(mul_ln171_fu_2696_p1),.dout(mul_ln171_fu_2696_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U123(.din0(mul_ln186_fu_2705_p0),.din1(mul_ln186_fu_2705_p1),.dout(mul_ln186_fu_2705_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U124(.din0(mul_ln199_fu_2714_p0),.din1(mul_ln199_fu_2714_p1),.dout(mul_ln199_fu_2714_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U125(.din0(mul_ln212_fu_2723_p0),.din1(mul_ln212_fu_2723_p1),.dout(mul_ln212_fu_2723_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U126(.din0(mul_ln225_fu_2732_p0),.din1(mul_ln225_fu_2732_p1),.dout(mul_ln225_fu_2732_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U127(.din0(mul_ln238_fu_2741_p0),.din1(mul_ln238_fu_2741_p1),.dout(mul_ln238_fu_2741_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U128(.din0(mul_ln251_fu_2750_p0),.din1(mul_ln251_fu_2750_p1),.dout(mul_ln251_fu_2750_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U129(.din0(mul_ln264_fu_2759_p0),.din1(mul_ln264_fu_2759_p1),.dout(mul_ln264_fu_2759_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U130(.din0(mul_ln277_fu_2768_p0),.din1(mul_ln277_fu_2768_p1),.dout(mul_ln277_fu_2768_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U131(.din0(v198_1_fu_2790_p2),.din1(v198_1_fu_2790_p4),.din2(v198_1_fu_2790_p6),.din3(v198_1_fu_2790_p8),.def(v198_1_fu_2790_p9),.sel(trunc_ln168_reg_4379),.dout(v198_1_fu_2790_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U132(.din0(v209_1_fu_2829_p2),.din1(v209_1_fu_2829_p4),.din2(v209_1_fu_2829_p6),.din3(v209_1_fu_2829_p8),.def(v209_1_fu_2829_p9),.sel(trunc_ln168_reg_4379),.dout(v209_1_fu_2829_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U133(.din0(v119_2_fu_2902_p2),.din1(v119_2_fu_2902_p4),.din2(v119_2_fu_2902_p6),.din3(v119_2_fu_2902_p8),.def(v119_2_fu_2902_p9),.sel(trunc_ln168_reg_4379),.dout(v119_2_fu_2902_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U134(.din0(v132_2_fu_2941_p2),.din1(v132_2_fu_2941_p4),.din2(v132_2_fu_2941_p6),.din3(v132_2_fu_2941_p8),.def(v132_2_fu_2941_p9),.sel(trunc_ln168_reg_4379),.dout(v132_2_fu_2941_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U135(.din0(v143_2_fu_3014_p2),.din1(v143_2_fu_3014_p4),.din2(v143_2_fu_3014_p6),.din3(v143_2_fu_3014_p8),.def(v143_2_fu_3014_p9),.sel(trunc_ln168_reg_4379),.dout(v143_2_fu_3014_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U136(.din0(v154_2_fu_3053_p2),.din1(v154_2_fu_3053_p4),.din2(v154_2_fu_3053_p6),.din3(v154_2_fu_3053_p8),.def(v154_2_fu_3053_p9),.sel(trunc_ln168_reg_4379),.dout(v154_2_fu_3053_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U137(.din0(v165_2_fu_3126_p2),.din1(v165_2_fu_3126_p4),.din2(v165_2_fu_3126_p6),.din3(v165_2_fu_3126_p8),.def(v165_2_fu_3126_p9),.sel(trunc_ln168_reg_4379),.dout(v165_2_fu_3126_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U138(.din0(v176_2_fu_3165_p2),.din1(v176_2_fu_3165_p4),.din2(v176_2_fu_3165_p6),.din3(v176_2_fu_3165_p8),.def(v176_2_fu_3165_p9),.sel(trunc_ln168_reg_4379),.dout(v176_2_fu_3165_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U139(.din0(mul_ln171_1_fu_3225_p0),.din1(mul_ln171_1_fu_3225_p1),.dout(mul_ln171_1_fu_3225_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U140(.din0(mul_ln186_1_fu_3234_p0),.din1(mul_ln186_1_fu_3234_p1),.dout(mul_ln186_1_fu_3234_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U141(.din0(mul_ln199_1_fu_3243_p0),.din1(mul_ln199_1_fu_3243_p1),.dout(mul_ln199_1_fu_3243_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U142(.din0(mul_ln212_1_fu_3252_p0),.din1(mul_ln212_1_fu_3252_p1),.dout(mul_ln212_1_fu_3252_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U143(.din0(mul_ln225_1_fu_3261_p0),.din1(mul_ln225_1_fu_3261_p1),.dout(mul_ln225_1_fu_3261_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U144(.din0(mul_ln238_1_fu_3270_p0),.din1(mul_ln238_1_fu_3270_p1),.dout(mul_ln238_1_fu_3270_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U145(.din0(mul_ln251_1_fu_3279_p0),.din1(mul_ln251_1_fu_3279_p1),.dout(mul_ln251_1_fu_3279_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U146(.din0(mul_ln264_1_fu_3288_p0),.din1(mul_ln264_1_fu_3288_p1),.dout(mul_ln264_1_fu_3288_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U147(.din0(mul_ln277_1_fu_3297_p0),.din1(mul_ln277_1_fu_3297_p1),.dout(mul_ln277_1_fu_3297_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U148(.din0(v187_2_fu_3319_p2),.din1(v187_2_fu_3319_p4),.din2(v187_2_fu_3319_p6),.din3(v187_2_fu_3319_p8),.def(v187_2_fu_3319_p9),.sel(trunc_ln168_reg_4379),.dout(v187_2_fu_3319_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U149(.din0(v198_2_fu_3358_p2),.din1(v198_2_fu_3358_p4),.din2(v198_2_fu_3358_p6),.din3(v198_2_fu_3358_p8),.def(v198_2_fu_3358_p9),.sel(trunc_ln168_reg_4379),.dout(v198_2_fu_3358_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U150(.din0(v209_2_fu_3431_p2),.din1(v209_2_fu_3431_p4),.din2(v209_2_fu_3431_p6),.din3(v209_2_fu_3431_p8),.def(v209_2_fu_3431_p9),.sel(trunc_ln168_reg_4379),.dout(v209_2_fu_3431_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U151(.din0(v119_3_fu_3470_p2),.din1(v119_3_fu_3470_p4),.din2(v119_3_fu_3470_p6),.din3(v119_3_fu_3470_p8),.def(v119_3_fu_3470_p9),.sel(trunc_ln168_reg_4379),.dout(v119_3_fu_3470_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U152(.din0(v132_3_fu_3543_p2),.din1(v132_3_fu_3543_p4),.din2(v132_3_fu_3543_p6),.din3(v132_3_fu_3543_p8),.def(v132_3_fu_3543_p9),.sel(trunc_ln168_reg_4379),.dout(v132_3_fu_3543_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U153(.din0(v143_3_fu_3582_p2),.din1(v143_3_fu_3582_p4),.din2(v143_3_fu_3582_p6),.din3(v143_3_fu_3582_p8),.def(v143_3_fu_3582_p9),.sel(trunc_ln168_reg_4379),.dout(v143_3_fu_3582_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U154(.din0(v154_3_fu_3635_p2),.din1(v154_3_fu_3635_p4),.din2(v154_3_fu_3635_p6),.din3(v154_3_fu_3635_p8),.def(v154_3_fu_3635_p9),.sel(trunc_ln168_reg_4379),.dout(v154_3_fu_3635_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U155(.din0(v165_3_fu_3674_p2),.din1(v165_3_fu_3674_p4),.din2(v165_3_fu_3674_p6),.din3(v165_3_fu_3674_p8),.def(v165_3_fu_3674_p9),.sel(trunc_ln168_reg_4379),.dout(v165_3_fu_3674_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U156(.din0(v176_3_fu_3727_p2),.din1(v176_3_fu_3727_p4),.din2(v176_3_fu_3727_p6),.din3(v176_3_fu_3727_p8),.def(v176_3_fu_3727_p9),.sel(trunc_ln168_reg_4379),.dout(v176_3_fu_3727_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U157(.din0(v187_3_fu_3766_p2),.din1(v187_3_fu_3766_p4),.din2(v187_3_fu_3766_p6),.din3(v187_3_fu_3766_p8),.def(v187_3_fu_3766_p9),.sel(trunc_ln168_reg_4379),.dout(v187_3_fu_3766_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U158(.din0(mul_ln171_2_fu_3806_p0),.din1(mul_ln171_2_fu_3806_p1),.dout(mul_ln171_2_fu_3806_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U159(.din0(mul_ln186_2_fu_3815_p0),.din1(mul_ln186_2_fu_3815_p1),.dout(mul_ln186_2_fu_3815_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U160(.din0(mul_ln199_2_fu_3824_p0),.din1(mul_ln199_2_fu_3824_p1),.dout(mul_ln199_2_fu_3824_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U161(.din0(mul_ln212_2_fu_3833_p0),.din1(mul_ln212_2_fu_3833_p1),.dout(mul_ln212_2_fu_3833_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U162(.din0(mul_ln225_2_fu_3842_p0),.din1(mul_ln225_2_fu_3842_p1),.dout(mul_ln225_2_fu_3842_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U163(.din0(mul_ln238_2_fu_3851_p0),.din1(mul_ln238_2_fu_3851_p1),.dout(mul_ln238_2_fu_3851_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U164(.din0(mul_ln251_2_fu_3860_p0),.din1(mul_ln251_2_fu_3860_p1),.dout(mul_ln251_2_fu_3860_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U165(.din0(mul_ln264_2_fu_3869_p0),.din1(mul_ln264_2_fu_3869_p1),.dout(mul_ln264_2_fu_3869_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U166(.din0(mul_ln277_2_fu_3878_p0),.din1(mul_ln277_2_fu_3878_p1),.dout(mul_ln277_2_fu_3878_p2));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U167(.din0(v198_3_fu_3900_p2),.din1(v198_3_fu_3900_p4),.din2(v198_3_fu_3900_p6),.din3(v198_3_fu_3900_p8),.def(v198_3_fu_3900_p9),.sel(trunc_ln168_reg_4379),.dout(v198_3_fu_3900_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U168(.din0(v209_3_fu_3939_p2),.din1(v209_3_fu_3939_p4),.din2(v209_3_fu_3939_p6),.din3(v209_3_fu_3939_p8),.def(v209_3_fu_3939_p9),.sel(trunc_ln168_reg_4379),.dout(v209_3_fu_3939_p11));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U169(.din0(mul_ln171_3_fu_3965_p0),.din1(mul_ln171_3_fu_3965_p1),.dout(mul_ln171_3_fu_3965_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U170(.din0(mul_ln186_3_fu_3974_p0),.din1(mul_ln186_3_fu_3974_p1),.dout(mul_ln186_3_fu_3974_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U171(.din0(mul_ln199_3_fu_3983_p0),.din1(mul_ln199_3_fu_3983_p1),.dout(mul_ln199_3_fu_3983_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U172(.din0(mul_ln212_3_fu_3992_p0),.din1(mul_ln212_3_fu_3992_p1),.dout(mul_ln212_3_fu_3992_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U173(.din0(mul_ln225_3_fu_4001_p0),.din1(mul_ln225_3_fu_4001_p1),.dout(mul_ln225_3_fu_4001_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U174(.din0(mul_ln238_3_fu_4010_p0),.din1(mul_ln238_3_fu_4010_p1),.dout(mul_ln238_3_fu_4010_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U175(.din0(mul_ln251_3_fu_4019_p0),.din1(mul_ln251_3_fu_4019_p1),.dout(mul_ln251_3_fu_4019_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U176(.din0(mul_ln264_3_fu_4028_p0),.din1(mul_ln264_3_fu_4028_p1),.dout(mul_ln264_3_fu_4028_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U177(.din0(mul_ln277_3_fu_4037_p0),.din1(mul_ln277_3_fu_4037_p1),.dout(mul_ln277_3_fu_4037_p2));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U178(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4043_p0),.din1(grp_fu_4043_p1),.din2(grp_fu_4043_p2),.ce(1'b1),.dout(grp_fu_4043_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U179(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4051_p0),.din1(grp_fu_4051_p1),.din2(grp_fu_4051_p2),.ce(1'b1),.dout(grp_fu_4051_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U180(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4059_p0),.din1(grp_fu_4059_p1),.din2(grp_fu_4059_p2),.ce(1'b1),.dout(grp_fu_4059_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U181(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4067_p0),.din1(grp_fu_4067_p1),.din2(grp_fu_4067_p2),.ce(1'b1),.dout(grp_fu_4067_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U182(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4075_p0),.din1(grp_fu_4075_p1),.din2(grp_fu_4075_p2),.ce(1'b1),.dout(grp_fu_4075_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U183(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4083_p0),.din1(grp_fu_4083_p1),.din2(grp_fu_4083_p2),.ce(1'b1),.dout(grp_fu_4083_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U184(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4091_p0),.din1(grp_fu_4091_p1),.din2(grp_fu_4091_p2),.ce(1'b1),.dout(grp_fu_4091_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U185(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4099_p0),.din1(grp_fu_4099_p1),.din2(grp_fu_4099_p2),.ce(1'b1),.dout(grp_fu_4099_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U186(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4107_p0),.din1(grp_fu_4107_p1),.din2(grp_fu_4107_p2),.ce(1'b1),.dout(grp_fu_4107_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U187(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4115_p0),.din1(grp_fu_4115_p1),.din2(grp_fu_4115_p2),.ce(1'b1),.dout(grp_fu_4115_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U188(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4123_p0),.din1(grp_fu_4123_p1),.din2(grp_fu_4123_p2),.ce(1'b1),.dout(grp_fu_4123_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U189(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4131_p0),.din1(grp_fu_4131_p1),.din2(grp_fu_4131_p2),.ce(1'b1),.dout(grp_fu_4131_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U190(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4139_p0),.din1(grp_fu_4139_p1),.din2(grp_fu_4139_p2),.ce(1'b1),.dout(grp_fu_4139_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U191(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4147_p0),.din1(grp_fu_4147_p1),.din2(grp_fu_4147_p2),.ce(1'b1),.dout(grp_fu_4147_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U192(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4155_p0),.din1(grp_fu_4155_p1),.din2(grp_fu_4155_p2),.ce(1'b1),.dout(grp_fu_4155_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U193(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4163_p0),.din1(grp_fu_4163_p1),.din2(grp_fu_4163_p2),.ce(1'b1),.dout(grp_fu_4163_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U194(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4171_p0),.din1(grp_fu_4171_p1),.din2(grp_fu_4171_p2),.ce(1'b1),.dout(grp_fu_4171_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U195(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4179_p0),.din1(grp_fu_4179_p1),.din2(grp_fu_4179_p2),.ce(1'b1),.dout(grp_fu_4179_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U196(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4187_p0),.din1(grp_fu_4187_p1),.din2(grp_fu_4187_p2),.ce(1'b1),.dout(grp_fu_4187_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U197(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4195_p0),.din1(grp_fu_4195_p1),.din2(grp_fu_4195_p2),.ce(1'b1),.dout(grp_fu_4195_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U198(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4203_p0),.din1(grp_fu_4203_p1),.din2(grp_fu_4203_p2),.ce(1'b1),.dout(grp_fu_4203_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U199(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4211_p0),.din1(grp_fu_4211_p1),.din2(grp_fu_4211_p2),.ce(1'b1),.dout(grp_fu_4211_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U200(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4219_p0),.din1(grp_fu_4219_p1),.din2(grp_fu_4219_p2),.ce(grp_fu_4219_ce),.dout(grp_fu_4219_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U201(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4227_p0),.din1(grp_fu_4227_p1),.din2(grp_fu_4227_p2),.ce(grp_fu_4227_ce),.dout(grp_fu_4227_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U202(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4235_p0),.din1(grp_fu_4235_p1),.din2(grp_fu_4235_p2),.ce(grp_fu_4235_ce),.dout(grp_fu_4235_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U203(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4243_p0),.din1(grp_fu_4243_p1),.din2(grp_fu_4243_p2),.ce(grp_fu_4243_ce),.dout(grp_fu_4243_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U204(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4251_p0),.din1(grp_fu_4251_p1),.din2(grp_fu_4251_p2),.ce(grp_fu_4251_ce),.dout(grp_fu_4251_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U205(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4259_p0),.din1(grp_fu_4259_p1),.din2(grp_fu_4259_p2),.ce(grp_fu_4259_ce),.dout(grp_fu_4259_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U206(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4267_p0),.din1(grp_fu_4267_p1),.din2(grp_fu_4267_p2),.ce(grp_fu_4267_ce),.dout(grp_fu_4267_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U207(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4275_p0),.din1(grp_fu_4275_p1),.din2(grp_fu_4275_p2),.ce(grp_fu_4275_ce),.dout(grp_fu_4275_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U208(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4283_p0),.din1(grp_fu_4283_p1),.din2(grp_fu_4283_p2),.ce(grp_fu_4283_ce),.dout(grp_fu_4283_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U209(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4291_p0),.din1(grp_fu_4291_p1),.din2(grp_fu_4291_p2),.ce(grp_fu_4291_ce),.dout(grp_fu_4291_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U210(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4299_p0),.din1(grp_fu_4299_p1),.din2(grp_fu_4299_p2),.ce(grp_fu_4299_ce),.dout(grp_fu_4299_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U211(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4307_p0),.din1(grp_fu_4307_p1),.din2(grp_fu_4307_p2),.ce(grp_fu_4307_ce),.dout(grp_fu_4307_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U212(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4315_p0),.din1(grp_fu_4315_p1),.din2(grp_fu_4315_p2),.ce(grp_fu_4315_ce),.dout(grp_fu_4315_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U213(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_4323_p0),.din1(grp_fu_4323_p1),.din2(grp_fu_4323_p2),.ce(grp_fu_4323_ce),.dout(grp_fu_4323_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state20)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state25)) begin
            grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state29)) begin
            grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_162 <= 16'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln169_fu_1662_p2 == 1'd0))) begin
        phi_mul_fu_162 <= add_ln168_1_reg_4366;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_166 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln169_fu_1662_p2 == 1'd0))) begin
        v114_fu_166 <= add_ln168_reg_4374;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1626_p2 == 1'd0) & (1'b0 == ap_block_state2))) begin
        v115_reg_1372 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state30) & (grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_done == 1'b1))) begin
        v115_reg_1372 <= add_ln169_3_reg_4485;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_4366 <= add_ln168_1_fu_1620_p2;
        add_ln168_reg_4374 <= add_ln168_fu_1632_p2;
        cmp11_reg_4459 <= cmp11_fu_1656_p2;
        phi_mul_load_reg_4358 <= phi_mul_fu_162;
        trunc_ln168_reg_4379 <= trunc_ln168_fu_1638_p1;
        zext_ln168_reg_4419[5 : 0] <= zext_ln168_fu_1652_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        add_ln169_1_reg_4990 <= add_ln169_1_fu_2448_p2;
        empty_142_reg_5000 <= empty_142_fu_2458_p2;
        v132_1_reg_4940 <= v132_1_fu_2372_p11;
        v143_1_reg_4945 <= v143_1_fu_2411_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        add_ln169_2_reg_5325 <= add_ln169_2_fu_2988_p2;
        empty_191_reg_5315 <= empty_191_fu_2978_p2;
        v119_2_reg_5265 <= v119_2_fu_2902_p11;
        v132_2_reg_5270 <= v132_2_fu_2941_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_3_reg_4485 <= add_ln169_3_fu_1694_p2;
        tmp_1_reg_4475[7 : 1] <= tmp_1_fu_1682_p3[7 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln169_reg_4650 <= add_ln169_fu_1898_p2;
        empty_67_reg_4640 <= empty_67_fu_1888_p2;
        v2_reg_4595 <= v2_fu_1851_p11;
        v_reg_4590 <= v_fu_1812_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        empty_101_reg_4790 <= empty_101_fu_2122_p2;
        empty_94_reg_4780 <= empty_94_fu_2112_p2;
        v10_reg_4735 <= v10_fu_2075_p11;
        v8_reg_4730 <= v8_fu_2036_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        empty_108_reg_4850 <= empty_108_fu_2224_p2;
        empty_115_reg_4860 <= empty_115_fu_2234_p2;
        v12_reg_4800 <= v12_fu_2148_p11;
        v14_reg_4805 <= v14_fu_2187_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        empty_122_reg_4920 <= empty_122_fu_2336_p2;
        empty_129_reg_4930 <= empty_129_fu_2346_p2;
        v119_1_reg_4875 <= v119_1_fu_2299_p11;
        v16_reg_4870 <= v16_fu_2260_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        empty_149_reg_5060 <= empty_149_fu_2560_p2;
        empty_156_reg_5070 <= empty_156_fu_2570_p2;
        v154_1_reg_5010 <= v154_1_fu_2484_p11;
        v165_1_reg_5015 <= v165_1_fu_2523_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        empty_163_reg_5130 <= empty_163_fu_2672_p2;
        empty_170_reg_5140 <= empty_170_fu_2682_p2;
        v176_1_reg_5080 <= v176_1_fu_2596_p11;
        v187_1_reg_5085 <= v187_1_fu_2635_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        empty_177_reg_5245 <= empty_177_fu_2866_p2;
        empty_184_reg_5255 <= empty_184_fu_2876_p2;
        mul_ln171_reg_5150 <= mul_ln171_fu_2696_p2;
        mul_ln186_reg_5155 <= mul_ln186_fu_2705_p2;
        mul_ln199_reg_5160 <= mul_ln199_fu_2714_p2;
        mul_ln212_reg_5165 <= mul_ln212_fu_2723_p2;
        mul_ln225_reg_5170 <= mul_ln225_fu_2732_p2;
        mul_ln238_reg_5175 <= mul_ln238_fu_2741_p2;
        mul_ln251_reg_5180 <= mul_ln251_fu_2750_p2;
        mul_ln264_reg_5185 <= mul_ln264_fu_2759_p2;
        mul_ln277_reg_5190 <= mul_ln277_fu_2768_p2;
        v198_1_reg_5195 <= v198_1_fu_2790_p11;
        v209_1_reg_5200 <= v209_1_fu_2829_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        empty_204_reg_5385 <= empty_204_fu_3090_p2;
        empty_211_reg_5395 <= empty_211_fu_3100_p2;
        v143_2_reg_5335 <= v143_2_fu_3014_p11;
        v154_2_reg_5340 <= v154_2_fu_3053_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        empty_218_reg_5455 <= empty_218_fu_3202_p2;
        empty_225_reg_5465 <= empty_225_fu_3212_p2;
        v165_2_reg_5405 <= v165_2_fu_3126_p11;
        v176_2_reg_5410 <= v176_2_fu_3165_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        empty_232_reg_5570 <= empty_232_fu_3395_p2;
        empty_239_reg_5580 <= empty_239_fu_3405_p2;
        mul_ln171_1_reg_5475 <= mul_ln171_1_fu_3225_p2;
        mul_ln186_1_reg_5480 <= mul_ln186_1_fu_3234_p2;
        mul_ln199_1_reg_5485 <= mul_ln199_1_fu_3243_p2;
        mul_ln212_1_reg_5490 <= mul_ln212_1_fu_3252_p2;
        mul_ln225_1_reg_5495 <= mul_ln225_1_fu_3261_p2;
        mul_ln238_1_reg_5500 <= mul_ln238_1_fu_3270_p2;
        mul_ln251_1_reg_5505 <= mul_ln251_1_fu_3279_p2;
        mul_ln264_1_reg_5510 <= mul_ln264_1_fu_3288_p2;
        mul_ln277_1_reg_5515 <= mul_ln277_1_fu_3297_p2;
        v187_2_reg_5520 <= v187_2_fu_3319_p11;
        v198_2_reg_5525 <= v198_2_fu_3358_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        empty_246_reg_5640 <= empty_246_fu_3507_p2;
        empty_253_reg_5650 <= empty_253_fu_3517_p2;
        v119_3_reg_5595 <= v119_3_fu_3470_p11;
        v209_2_reg_5590 <= v209_2_fu_3431_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_39_reg_4510 <= empty_39_fu_1742_p2;
        empty_46_reg_4520 <= empty_46_fu_1752_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_53_reg_4570 <= empty_53_fu_1776_p2;
        empty_60_reg_4580 <= empty_60_fu_1786_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        empty_80_reg_4710 <= empty_80_fu_2000_p2;
        empty_87_reg_4720 <= empty_87_fu_2010_p2;
        v4_reg_4660 <= v4_fu_1924_p11;
        v6_reg_4665 <= v6_fu_1963_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        mul_ln171_2_reg_5810 <= mul_ln171_2_fu_3806_p2;
        mul_ln186_2_reg_5815 <= mul_ln186_2_fu_3815_p2;
        mul_ln199_2_reg_5820 <= mul_ln199_2_fu_3824_p2;
        mul_ln212_2_reg_5825 <= mul_ln212_2_fu_3833_p2;
        mul_ln225_2_reg_5830 <= mul_ln225_2_fu_3842_p2;
        mul_ln238_2_reg_5835 <= mul_ln238_2_fu_3851_p2;
        mul_ln251_2_reg_5840 <= mul_ln251_2_fu_3860_p2;
        mul_ln264_2_reg_5845 <= mul_ln264_2_fu_3869_p2;
        mul_ln277_2_reg_5850 <= mul_ln277_2_fu_3878_p2;
        v198_3_reg_5855 <= v198_3_fu_3900_p11;
        v209_3_reg_5860 <= v209_3_fu_3939_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state28)) begin
        mul_ln171_3_reg_5865 <= mul_ln171_3_fu_3965_p2;
        mul_ln186_3_reg_5870 <= mul_ln186_3_fu_3974_p2;
        mul_ln199_3_reg_5875 <= mul_ln199_3_fu_3983_p2;
        mul_ln212_3_reg_5880 <= mul_ln212_3_fu_3992_p2;
        mul_ln225_3_reg_5885 <= mul_ln225_3_fu_4001_p2;
        mul_ln238_3_reg_5890 <= mul_ln238_3_fu_4010_p2;
        mul_ln251_3_reg_5895 <= mul_ln251_3_fu_4019_p2;
        mul_ln264_3_reg_5900 <= mul_ln264_3_fu_4028_p2;
        mul_ln277_3_reg_5905 <= mul_ln277_3_fu_4037_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_1532 <= grp_fu_172_p_dout0;
        reg_1540 <= grp_fu_1500_p2;
        reg_1548 <= grp_fu_1504_p2;
        reg_1556 <= grp_fu_1508_p2;
        reg_1564 <= grp_fu_1512_p2;
        reg_1572 <= grp_fu_1516_p2;
        reg_1580 <= grp_fu_1520_p2;
        reg_1588 <= grp_fu_1524_p2;
        reg_1596 <= grp_fu_1528_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_4_reg_4490[7 : 2] <= tmp_4_fu_1718_p3[7 : 2];
        tmp_6_reg_4500[7 : 2] <= tmp_6_fu_1730_p3[7 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v132_3_reg_5660 <= v132_3_fu_3543_p11;
        v143_3_reg_5665 <= v143_3_fu_3582_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        v154_3_reg_5710 <= v154_3_fu_3635_p11;
        v165_3_reg_5715 <= v165_3_fu_3674_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v176_3_reg_5760 <= v176_3_fu_3727_p11;
        v187_3_reg_5765 <= v187_3_fu_3766_p11;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_done == 1'b0)) begin
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
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1626_p2 == 1'd1) & (1'b0 == ap_block_state2)))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1626_p2 == 1'd1) & (1'b0 == ap_block_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state25) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1496_ce = 1'b1;
    end else begin
        grp_fu_1496_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1496_p0 = v119_3_reg_5595;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1496_p0 = v119_2_reg_5265;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1496_p0 = v119_1_reg_4875;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1496_p0 = v_reg_4590;
    end else begin
        grp_fu_1496_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state25) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1500_ce = 1'b1;
    end else begin
        grp_fu_1500_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1500_p0 = v132_3_reg_5660;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1500_p0 = v132_2_reg_5270;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1500_p0 = v132_1_reg_4940;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1500_p0 = v2_reg_4595;
    end else begin
        grp_fu_1500_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state25) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1504_ce = 1'b1;
    end else begin
        grp_fu_1504_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1504_p0 = v143_3_reg_5665;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1504_p0 = v143_2_reg_5335;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1504_p0 = v143_1_reg_4945;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1504_p0 = v4_reg_4660;
    end else begin
        grp_fu_1504_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state25) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1508_ce = 1'b1;
    end else begin
        grp_fu_1508_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1508_p0 = v154_3_reg_5710;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1508_p0 = v154_2_reg_5340;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1508_p0 = v154_1_reg_5010;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1508_p0 = v6_reg_4665;
    end else begin
        grp_fu_1508_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state25) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1512_ce = 1'b1;
    end else begin
        grp_fu_1512_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1512_p0 = v165_3_reg_5715;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1512_p0 = v165_2_reg_5405;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1512_p0 = v165_1_reg_5015;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1512_p0 = v8_reg_4730;
    end else begin
        grp_fu_1512_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state25) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1516_ce = 1'b1;
    end else begin
        grp_fu_1516_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1516_p0 = v176_3_reg_5760;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1516_p0 = v176_2_reg_5410;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1516_p0 = v176_1_reg_5080;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1516_p0 = v10_reg_4735;
    end else begin
        grp_fu_1516_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state25) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1520_ce = 1'b1;
    end else begin
        grp_fu_1520_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1520_p0 = v187_3_reg_5765;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1520_p0 = v187_2_reg_5520;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1520_p0 = v187_1_reg_5085;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1520_p0 = v12_reg_4800;
    end else begin
        grp_fu_1520_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state25) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1524_ce = 1'b1;
    end else begin
        grp_fu_1524_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1524_p0 = v198_3_reg_5855;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1524_p0 = v198_2_reg_5525;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1524_p0 = v198_1_reg_5195;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1524_p0 = v14_reg_4805;
    end else begin
        grp_fu_1524_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state27) | (1'b1 == ap_CS_fsm_state28) | (1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state25) | ((grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26)) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_1528_ce = 1'b1;
    end else begin
        grp_fu_1528_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state25)) begin
        grp_fu_1528_p0 = v209_3_reg_5860;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1528_p0 = v209_2_reg_5590;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_1528_p0 = v209_1_reg_5200;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_1528_p0 = v16_reg_4870;
    end else begin
        grp_fu_1528_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_4219_ce = 1'b1;
    end else begin
        grp_fu_4219_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_4227_ce = 1'b1;
    end else begin
        grp_fu_4227_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_4235_ce = 1'b1;
    end else begin
        grp_fu_4235_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_4243_ce = 1'b1;
    end else begin
        grp_fu_4243_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_4251_ce = 1'b1;
    end else begin
        grp_fu_4251_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_4259_ce = 1'b1;
    end else begin
        grp_fu_4259_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_4267_ce = 1'b1;
    end else begin
        grp_fu_4267_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_4275_ce = 1'b1;
    end else begin
        grp_fu_4275_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        grp_fu_4283_ce = 1'b1;
    end else begin
        grp_fu_4283_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state19) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        grp_fu_4291_ce = 1'b1;
    end else begin
        grp_fu_4291_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        grp_fu_4299_ce = 1'b1;
    end else begin
        grp_fu_4299_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state19) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        grp_fu_4307_ce = 1'b1;
    end else begin
        grp_fu_4307_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        grp_fu_4315_ce = 1'b1;
    end else begin
        grp_fu_4315_ce = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)))) begin
        grp_fu_4323_ce = 1'b1;
    end else begin
        grp_fu_4323_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_5910_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5910_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_5910_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5910_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_5910_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5910_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_5910_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5910_p_ce;
    end else begin
        grp_fu_5910_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_5910_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5910_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_5910_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5910_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_5910_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5910_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_5910_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5910_p_din0;
    end else begin
        grp_fu_5910_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_5910_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5910_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_5910_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5910_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_5910_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5910_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_5910_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5910_p_din1;
    end else begin
        grp_fu_5910_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_5914_ce = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5914_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_5914_ce = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5914_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_5914_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5914_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_5914_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5914_p_ce;
    end else begin
        grp_fu_5914_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_5914_p0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5914_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_5914_p0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5914_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_5914_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5914_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_5914_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5914_p_din0;
    end else begin
        grp_fu_5914_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        grp_fu_5914_p1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_grp_fu_5914_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        grp_fu_5914_p1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_grp_fu_5914_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_5914_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_grp_fu_5914_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_5914_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_grp_fu_5914_p_din1;
    end else begin
        grp_fu_5914_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_0_address0_local = p_cast1452_fu_3796_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_0_address0_local = p_cast1450_fu_3704_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_0_address0_local = p_cast1448_fu_3612_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_0_address0_local = p_cast1446_fu_3500_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_0_address0_local = p_cast1444_fu_3388_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_0_address0_local = p_cast1442_fu_3195_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_0_address0_local = p_cast1440_fu_3083_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_0_address0_local = p_cast1438_fu_2971_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_0_address0_local = p_cast1436_fu_2859_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address0_local = p_cast1434_fu_2665_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address0_local = p_cast1432_fu_2553_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address0_local = p_cast1430_fu_2441_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address0_local = p_cast1428_fu_2329_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast1426_fu_2217_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast1424_fu_2105_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast1422_fu_1993_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast1420_fu_1881_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast_fu_1769_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_0_address1_local = p_cast1451_fu_3789_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_0_address1_local = p_cast1449_fu_3697_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_0_address1_local = p_cast1447_fu_3605_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_0_address1_local = p_cast1445_fu_3493_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_0_address1_local = p_cast1443_fu_3381_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_0_address1_local = p_cast1441_fu_3188_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_0_address1_local = p_cast1439_fu_3076_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_0_address1_local = p_cast1437_fu_2964_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_0_address1_local = p_cast1435_fu_2852_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_0_address1_local = p_cast1433_fu_2658_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_0_address1_local = p_cast1431_fu_2546_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address1_local = p_cast1429_fu_2434_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_0_address1_local = p_cast1427_fu_2322_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast1425_fu_2210_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast1423_fu_2098_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast1421_fu_1986_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast1419_fu_1874_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address1_local = p_cast1418_fu_1762_p1;
    end else begin
        v226_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_0_ce0_local = 1'b1;
    end else begin
        v226_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_0_ce1_local = 1'b1;
    end else begin
        v226_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_1_address0_local = p_cast1452_fu_3796_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_1_address0_local = p_cast1450_fu_3704_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_1_address0_local = p_cast1448_fu_3612_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_1_address0_local = p_cast1446_fu_3500_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_1_address0_local = p_cast1444_fu_3388_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_1_address0_local = p_cast1442_fu_3195_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_1_address0_local = p_cast1440_fu_3083_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_1_address0_local = p_cast1438_fu_2971_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_1_address0_local = p_cast1436_fu_2859_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address0_local = p_cast1434_fu_2665_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address0_local = p_cast1432_fu_2553_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address0_local = p_cast1430_fu_2441_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address0_local = p_cast1428_fu_2329_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address0_local = p_cast1426_fu_2217_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast1424_fu_2105_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast1422_fu_1993_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast1420_fu_1881_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast_fu_1769_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_1_address1_local = p_cast1451_fu_3789_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_1_address1_local = p_cast1449_fu_3697_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_1_address1_local = p_cast1447_fu_3605_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_1_address1_local = p_cast1445_fu_3493_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_1_address1_local = p_cast1443_fu_3381_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_1_address1_local = p_cast1441_fu_3188_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_1_address1_local = p_cast1439_fu_3076_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_1_address1_local = p_cast1437_fu_2964_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_1_address1_local = p_cast1435_fu_2852_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address1_local = p_cast1433_fu_2658_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_1_address1_local = p_cast1431_fu_2546_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_1_address1_local = p_cast1429_fu_2434_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_1_address1_local = p_cast1427_fu_2322_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast1425_fu_2210_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast1423_fu_2098_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast1421_fu_1986_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast1419_fu_1874_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address1_local = p_cast1418_fu_1762_p1;
    end else begin
        v226_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_1_ce0_local = 1'b1;
    end else begin
        v226_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_1_ce1_local = 1'b1;
    end else begin
        v226_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_2_address0_local = p_cast1452_fu_3796_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_2_address0_local = p_cast1450_fu_3704_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_2_address0_local = p_cast1448_fu_3612_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_2_address0_local = p_cast1446_fu_3500_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_2_address0_local = p_cast1444_fu_3388_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_2_address0_local = p_cast1442_fu_3195_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_2_address0_local = p_cast1440_fu_3083_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_2_address0_local = p_cast1438_fu_2971_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_2_address0_local = p_cast1436_fu_2859_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_2_address0_local = p_cast1434_fu_2665_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_2_address0_local = p_cast1432_fu_2553_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_2_address0_local = p_cast1430_fu_2441_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_2_address0_local = p_cast1428_fu_2329_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address0_local = p_cast1426_fu_2217_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast1424_fu_2105_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast1422_fu_1993_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast1420_fu_1881_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast_fu_1769_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_2_address1_local = p_cast1451_fu_3789_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_2_address1_local = p_cast1449_fu_3697_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_2_address1_local = p_cast1447_fu_3605_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_2_address1_local = p_cast1445_fu_3493_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_2_address1_local = p_cast1443_fu_3381_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_2_address1_local = p_cast1441_fu_3188_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_2_address1_local = p_cast1439_fu_3076_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_2_address1_local = p_cast1437_fu_2964_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_2_address1_local = p_cast1435_fu_2852_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_2_address1_local = p_cast1433_fu_2658_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_2_address1_local = p_cast1431_fu_2546_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_2_address1_local = p_cast1429_fu_2434_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_2_address1_local = p_cast1427_fu_2322_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast1425_fu_2210_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast1423_fu_2098_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast1421_fu_1986_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast1419_fu_1874_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address1_local = p_cast1418_fu_1762_p1;
    end else begin
        v226_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_2_ce0_local = 1'b1;
    end else begin
        v226_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_2_ce1_local = 1'b1;
    end else begin
        v226_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_3_address0_local = p_cast1452_fu_3796_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_3_address0_local = p_cast1450_fu_3704_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_3_address0_local = p_cast1448_fu_3612_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_3_address0_local = p_cast1446_fu_3500_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_3_address0_local = p_cast1444_fu_3388_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_3_address0_local = p_cast1442_fu_3195_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_3_address0_local = p_cast1440_fu_3083_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_3_address0_local = p_cast1438_fu_2971_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_3_address0_local = p_cast1436_fu_2859_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_3_address0_local = p_cast1434_fu_2665_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_3_address0_local = p_cast1432_fu_2553_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_3_address0_local = p_cast1430_fu_2441_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_3_address0_local = p_cast1428_fu_2329_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address0_local = p_cast1426_fu_2217_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast1424_fu_2105_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast1422_fu_1993_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast1420_fu_1881_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast_fu_1769_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state23)) begin
        v226_3_address1_local = p_cast1451_fu_3789_p1;
    end else if ((1'b1 == ap_CS_fsm_state22)) begin
        v226_3_address1_local = p_cast1449_fu_3697_p1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v226_3_address1_local = p_cast1447_fu_3605_p1;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        v226_3_address1_local = p_cast1445_fu_3493_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        v226_3_address1_local = p_cast1443_fu_3381_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_3_address1_local = p_cast1441_fu_3188_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v226_3_address1_local = p_cast1439_fu_3076_p1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_3_address1_local = p_cast1437_fu_2964_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        v226_3_address1_local = p_cast1435_fu_2852_p1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_3_address1_local = p_cast1433_fu_2658_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_3_address1_local = p_cast1431_fu_2546_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_3_address1_local = p_cast1429_fu_2434_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_3_address1_local = p_cast1427_fu_2322_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast1425_fu_2210_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast1423_fu_2098_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast1421_fu_1986_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast1419_fu_1874_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address1_local = p_cast1418_fu_1762_p1;
    end else begin
        v226_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_3_ce0_local = 1'b1;
    end else begin
        v226_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | ((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21)) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        v226_3_ce1_local = 1'b1;
    end else begin
        v226_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state30)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state26)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1626_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1626_p2 == 1'd1) & (1'b0 == ap_block_state2))) begin
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1626_p2 == 1'd1) & (1'b0 == ap_block_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_1626_p2 == 1'd0) & (1'b0 == ap_block_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln169_fu_1662_p2 == 1'd0))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state26))) begin
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
            if (((1'b1 == ap_CS_fsm_state30) & (grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_done == 1'b1))) begin
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
assign add_ln168_1_fu_1620_p2 = (phi_mul_fu_162 + 16'd190);
assign add_ln168_fu_1632_p2 = (v114_fu_166 + 8'd1);
assign add_ln169_1_fu_2448_p2 = (v115_reg_1372 + 8'd18);
assign add_ln169_2_fu_2988_p2 = (v115_reg_1372 + 8'd27);
assign add_ln169_3_fu_1694_p2 = (v115_reg_1372 + 8'd36);
assign add_ln169_fu_1898_p2 = (v115_reg_1372 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_1626_p2 == 1'd1));
end
assign cmp11_fu_1656_p2 = ((v114_fu_166 == 8'd0) ? 1'b1 : 1'b0);
assign empty_101_fu_2122_p2 = (v115_reg_1372 + 8'd13);
assign empty_108_fu_2224_p2 = (v115_reg_1372 + 8'd14);
assign empty_115_fu_2234_p2 = (v115_reg_1372 + 8'd15);
assign empty_122_fu_2336_p2 = (v115_reg_1372 + 8'd16);
assign empty_129_fu_2346_p2 = (v115_reg_1372 + 8'd17);
assign empty_142_fu_2458_p2 = (v115_reg_1372 + 8'd19);
assign empty_149_fu_2560_p2 = (v115_reg_1372 + 8'd20);
assign empty_156_fu_2570_p2 = (v115_reg_1372 + 8'd21);
assign empty_163_fu_2672_p2 = (v115_reg_1372 + 8'd22);
assign empty_170_fu_2682_p2 = (v115_reg_1372 + 8'd23);
assign empty_177_fu_2866_p2 = (v115_reg_1372 + 8'd24);
assign empty_184_fu_2876_p2 = (v115_reg_1372 + 8'd25);
assign empty_191_fu_2978_p2 = (v115_reg_1372 + 8'd26);
assign empty_204_fu_3090_p2 = (v115_reg_1372 + 8'd28);
assign empty_211_fu_3100_p2 = (v115_reg_1372 + 8'd29);
assign empty_218_fu_3202_p2 = (v115_reg_1372 + 8'd30);
assign empty_225_fu_3212_p2 = (v115_reg_1372 + 8'd31);
assign empty_232_fu_3395_p2 = (v115_reg_1372 + 8'd32);
assign empty_239_fu_3405_p2 = (v115_reg_1372 + 8'd33);
assign empty_246_fu_3507_p2 = (v115_reg_1372 + 8'd34);
assign empty_253_fu_3517_p2 = (v115_reg_1372 + 8'd35);
assign empty_39_fu_1742_p2 = (v115_reg_1372 + 8'd4);
assign empty_46_fu_1752_p2 = (v115_reg_1372 + 8'd5);
assign empty_53_fu_1776_p2 = (v115_reg_1372 + 8'd6);
assign empty_60_fu_1786_p2 = (v115_reg_1372 + 8'd7);
assign empty_67_fu_1888_p2 = (v115_reg_1372 + 8'd8);
assign empty_80_fu_2000_p2 = (v115_reg_1372 + 8'd10);
assign empty_87_fu_2010_p2 = (v115_reg_1372 + 8'd11);
assign empty_94_fu_2112_p2 = (v115_reg_1372 + 8'd12);
assign grp_fu_172_p_ce = grp_fu_1496_ce;
assign grp_fu_172_p_din0 = grp_fu_1496_p0;
assign grp_fu_172_p_din1 = v113;
assign grp_fu_176_p_ce = grp_fu_5910_ce;
assign grp_fu_176_p_din0 = grp_fu_5910_p0;
assign grp_fu_176_p_din1 = grp_fu_5910_p1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_5914_ce;
assign grp_fu_180_p_din0 = grp_fu_5914_p0;
assign grp_fu_180_p_din1 = grp_fu_5914_p1;
assign grp_fu_4043_p0 = grp_fu_4043_p00;
assign grp_fu_4043_p00 = v115_reg_1372;
assign grp_fu_4043_p1 = 14'd53;
assign grp_fu_4043_p2 = zext_ln168_reg_4419;
assign grp_fu_4051_p0 = grp_fu_4051_p00;
assign grp_fu_4051_p00 = tmp_1_fu_1682_p3;
assign grp_fu_4051_p1 = 14'd53;
assign grp_fu_4051_p2 = zext_ln168_reg_4419;
assign grp_fu_4059_p0 = grp_fu_4059_p00;
assign grp_fu_4059_p00 = tmp_4_fu_1718_p3;
assign grp_fu_4059_p1 = 14'd53;
assign grp_fu_4059_p2 = zext_ln168_reg_4419;
assign grp_fu_4067_p0 = grp_fu_4067_p00;
assign grp_fu_4067_p00 = tmp_6_fu_1730_p3;
assign grp_fu_4067_p1 = 14'd53;
assign grp_fu_4067_p2 = zext_ln168_reg_4419;
assign grp_fu_4075_p0 = grp_fu_4075_p00;
assign grp_fu_4075_p00 = empty_39_fu_1742_p2;
assign grp_fu_4075_p1 = 14'd53;
assign grp_fu_4075_p2 = zext_ln168_reg_4419;
assign grp_fu_4083_p0 = grp_fu_4083_p00;
assign grp_fu_4083_p00 = empty_46_fu_1752_p2;
assign grp_fu_4083_p1 = 14'd53;
assign grp_fu_4083_p2 = zext_ln168_reg_4419;
assign grp_fu_4091_p0 = grp_fu_4091_p00;
assign grp_fu_4091_p00 = empty_53_fu_1776_p2;
assign grp_fu_4091_p1 = 14'd53;
assign grp_fu_4091_p2 = zext_ln168_reg_4419;
assign grp_fu_4099_p0 = grp_fu_4099_p00;
assign grp_fu_4099_p00 = empty_60_fu_1786_p2;
assign grp_fu_4099_p1 = 14'd53;
assign grp_fu_4099_p2 = zext_ln168_reg_4419;
assign grp_fu_4107_p0 = grp_fu_4107_p00;
assign grp_fu_4107_p00 = empty_67_fu_1888_p2;
assign grp_fu_4107_p1 = 14'd53;
assign grp_fu_4107_p2 = zext_ln168_reg_4419;
assign grp_fu_4115_p0 = grp_fu_4115_p00;
assign grp_fu_4115_p00 = add_ln169_fu_1898_p2;
assign grp_fu_4115_p1 = 14'd53;
assign grp_fu_4115_p2 = zext_ln168_reg_4419;
assign grp_fu_4123_p0 = grp_fu_4123_p00;
assign grp_fu_4123_p00 = empty_80_fu_2000_p2;
assign grp_fu_4123_p1 = 14'd53;
assign grp_fu_4123_p2 = zext_ln168_reg_4419;
assign grp_fu_4131_p0 = grp_fu_4131_p00;
assign grp_fu_4131_p00 = empty_87_fu_2010_p2;
assign grp_fu_4131_p1 = 14'd53;
assign grp_fu_4131_p2 = zext_ln168_reg_4419;
assign grp_fu_4139_p0 = grp_fu_4139_p00;
assign grp_fu_4139_p00 = empty_94_fu_2112_p2;
assign grp_fu_4139_p1 = 14'd53;
assign grp_fu_4139_p2 = zext_ln168_reg_4419;
assign grp_fu_4147_p0 = grp_fu_4147_p00;
assign grp_fu_4147_p00 = empty_101_fu_2122_p2;
assign grp_fu_4147_p1 = 14'd53;
assign grp_fu_4147_p2 = zext_ln168_reg_4419;
assign grp_fu_4155_p0 = grp_fu_4155_p00;
assign grp_fu_4155_p00 = empty_108_fu_2224_p2;
assign grp_fu_4155_p1 = 14'd53;
assign grp_fu_4155_p2 = zext_ln168_reg_4419;
assign grp_fu_4163_p0 = grp_fu_4163_p00;
assign grp_fu_4163_p00 = empty_115_fu_2234_p2;
assign grp_fu_4163_p1 = 14'd53;
assign grp_fu_4163_p2 = zext_ln168_reg_4419;
assign grp_fu_4171_p0 = grp_fu_4171_p00;
assign grp_fu_4171_p00 = empty_122_fu_2336_p2;
assign grp_fu_4171_p1 = 14'd53;
assign grp_fu_4171_p2 = zext_ln168_reg_4419;
assign grp_fu_4179_p0 = grp_fu_4179_p00;
assign grp_fu_4179_p00 = empty_129_fu_2346_p2;
assign grp_fu_4179_p1 = 14'd53;
assign grp_fu_4179_p2 = zext_ln168_reg_4419;
assign grp_fu_4187_p0 = grp_fu_4187_p00;
assign grp_fu_4187_p00 = add_ln169_1_fu_2448_p2;
assign grp_fu_4187_p1 = 14'd53;
assign grp_fu_4187_p2 = zext_ln168_reg_4419;
assign grp_fu_4195_p0 = grp_fu_4195_p00;
assign grp_fu_4195_p00 = empty_142_fu_2458_p2;
assign grp_fu_4195_p1 = 14'd53;
assign grp_fu_4195_p2 = zext_ln168_reg_4419;
assign grp_fu_4203_p0 = grp_fu_4203_p00;
assign grp_fu_4203_p00 = empty_149_fu_2560_p2;
assign grp_fu_4203_p1 = 14'd53;
assign grp_fu_4203_p2 = zext_ln168_reg_4419;
assign grp_fu_4211_p0 = grp_fu_4211_p00;
assign grp_fu_4211_p00 = empty_156_fu_2570_p2;
assign grp_fu_4211_p1 = 14'd53;
assign grp_fu_4211_p2 = zext_ln168_reg_4419;
assign grp_fu_4219_p0 = grp_fu_4219_p00;
assign grp_fu_4219_p00 = empty_163_fu_2672_p2;
assign grp_fu_4219_p1 = 14'd53;
assign grp_fu_4219_p2 = zext_ln168_reg_4419;
assign grp_fu_4227_p0 = grp_fu_4227_p00;
assign grp_fu_4227_p00 = empty_170_fu_2682_p2;
assign grp_fu_4227_p1 = 14'd53;
assign grp_fu_4227_p2 = zext_ln168_reg_4419;
assign grp_fu_4235_p0 = grp_fu_4235_p00;
assign grp_fu_4235_p00 = empty_177_fu_2866_p2;
assign grp_fu_4235_p1 = 14'd53;
assign grp_fu_4235_p2 = zext_ln168_reg_4419;
assign grp_fu_4243_p0 = grp_fu_4243_p00;
assign grp_fu_4243_p00 = empty_184_fu_2876_p2;
assign grp_fu_4243_p1 = 14'd53;
assign grp_fu_4243_p2 = zext_ln168_reg_4419;
assign grp_fu_4251_p0 = grp_fu_4251_p00;
assign grp_fu_4251_p00 = empty_191_fu_2978_p2;
assign grp_fu_4251_p1 = 14'd53;
assign grp_fu_4251_p2 = zext_ln168_reg_4419;
assign grp_fu_4259_p0 = grp_fu_4259_p00;
assign grp_fu_4259_p00 = add_ln169_2_fu_2988_p2;
assign grp_fu_4259_p1 = 14'd53;
assign grp_fu_4259_p2 = zext_ln168_reg_4419;
assign grp_fu_4267_p0 = grp_fu_4267_p00;
assign grp_fu_4267_p00 = empty_204_fu_3090_p2;
assign grp_fu_4267_p1 = 14'd53;
assign grp_fu_4267_p2 = zext_ln168_reg_4419;
assign grp_fu_4275_p0 = grp_fu_4275_p00;
assign grp_fu_4275_p00 = empty_211_fu_3100_p2;
assign grp_fu_4275_p1 = 14'd53;
assign grp_fu_4275_p2 = zext_ln168_reg_4419;
assign grp_fu_4283_p0 = grp_fu_4283_p00;
assign grp_fu_4283_p00 = empty_218_fu_3202_p2;
assign grp_fu_4283_p1 = 14'd53;
assign grp_fu_4283_p2 = zext_ln168_reg_4419;
assign grp_fu_4291_p0 = grp_fu_4291_p00;
assign grp_fu_4291_p00 = empty_225_fu_3212_p2;
assign grp_fu_4291_p1 = 14'd53;
assign grp_fu_4291_p2 = zext_ln168_reg_4419;
assign grp_fu_4299_p0 = grp_fu_4299_p00;
assign grp_fu_4299_p00 = empty_232_fu_3395_p2;
assign grp_fu_4299_p1 = 14'd53;
assign grp_fu_4299_p2 = zext_ln168_reg_4419;
assign grp_fu_4307_p0 = grp_fu_4307_p00;
assign grp_fu_4307_p00 = empty_239_fu_3405_p2;
assign grp_fu_4307_p1 = 14'd53;
assign grp_fu_4307_p2 = zext_ln168_reg_4419;
assign grp_fu_4315_p0 = grp_fu_4315_p00;
assign grp_fu_4315_p00 = empty_246_fu_3507_p2;
assign grp_fu_4315_p1 = 14'd53;
assign grp_fu_4315_p2 = zext_ln168_reg_4419;
assign grp_fu_4323_p0 = grp_fu_4323_p00;
assign grp_fu_4323_p00 = empty_253_fu_3517_p2;
assign grp_fu_4323_p1 = 14'd53;
assign grp_fu_4323_p2 = zext_ln168_reg_4419;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_1412_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_start = grp_kernel_2mm_node1_Pipeline_label_54_fu_1440_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_start = grp_kernel_2mm_node1_Pipeline_label_55_fu_1468_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_1384_ap_start_reg;
assign icmp_ln168_fu_1626_p2 = ((v114_fu_166 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_1662_p2 = ((v115_reg_1372 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_1642_p4 = {{v114_fu_166[7:2]}};
assign mul_ln171_1_fu_3225_p0 = mul_ln171_1_fu_3225_p00;
assign mul_ln171_1_fu_3225_p00 = add_ln169_reg_4650;
assign mul_ln171_1_fu_3225_p1 = 16'd190;
assign mul_ln171_2_fu_3806_p0 = mul_ln171_2_fu_3806_p00;
assign mul_ln171_2_fu_3806_p00 = add_ln169_1_reg_4990;
assign mul_ln171_2_fu_3806_p1 = 16'd190;
assign mul_ln171_3_fu_3965_p0 = mul_ln171_3_fu_3965_p00;
assign mul_ln171_3_fu_3965_p00 = add_ln169_2_reg_5325;
assign mul_ln171_3_fu_3965_p1 = 16'd190;
assign mul_ln171_fu_2696_p0 = mul_ln171_fu_2696_p00;
assign mul_ln171_fu_2696_p00 = v115_reg_1372;
assign mul_ln171_fu_2696_p1 = 16'd190;
assign mul_ln186_1_fu_3234_p0 = mul_ln186_1_fu_3234_p00;
assign mul_ln186_1_fu_3234_p00 = empty_80_reg_4710;
assign mul_ln186_1_fu_3234_p1 = 16'd190;
assign mul_ln186_2_fu_3815_p0 = mul_ln186_2_fu_3815_p00;
assign mul_ln186_2_fu_3815_p00 = empty_142_reg_5000;
assign mul_ln186_2_fu_3815_p1 = 16'd190;
assign mul_ln186_3_fu_3974_p0 = mul_ln186_3_fu_3974_p00;
assign mul_ln186_3_fu_3974_p00 = empty_204_reg_5385;
assign mul_ln186_3_fu_3974_p1 = 16'd190;
assign mul_ln186_fu_2705_p0 = mul_ln186_fu_2705_p00;
assign mul_ln186_fu_2705_p00 = tmp_1_reg_4475;
assign mul_ln186_fu_2705_p1 = 16'd190;
assign mul_ln199_1_fu_3243_p0 = mul_ln199_1_fu_3243_p00;
assign mul_ln199_1_fu_3243_p00 = empty_87_reg_4720;
assign mul_ln199_1_fu_3243_p1 = 16'd190;
assign mul_ln199_2_fu_3824_p0 = mul_ln199_2_fu_3824_p00;
assign mul_ln199_2_fu_3824_p00 = empty_149_reg_5060;
assign mul_ln199_2_fu_3824_p1 = 16'd190;
assign mul_ln199_3_fu_3983_p0 = mul_ln199_3_fu_3983_p00;
assign mul_ln199_3_fu_3983_p00 = empty_211_reg_5395;
assign mul_ln199_3_fu_3983_p1 = 16'd190;
assign mul_ln199_fu_2714_p0 = mul_ln199_fu_2714_p00;
assign mul_ln199_fu_2714_p00 = tmp_4_reg_4490;
assign mul_ln199_fu_2714_p1 = 16'd190;
assign mul_ln212_1_fu_3252_p0 = mul_ln212_1_fu_3252_p00;
assign mul_ln212_1_fu_3252_p00 = empty_94_reg_4780;
assign mul_ln212_1_fu_3252_p1 = 16'd190;
assign mul_ln212_2_fu_3833_p0 = mul_ln212_2_fu_3833_p00;
assign mul_ln212_2_fu_3833_p00 = empty_156_reg_5070;
assign mul_ln212_2_fu_3833_p1 = 16'd190;
assign mul_ln212_3_fu_3992_p0 = mul_ln212_3_fu_3992_p00;
assign mul_ln212_3_fu_3992_p00 = empty_218_reg_5455;
assign mul_ln212_3_fu_3992_p1 = 16'd190;
assign mul_ln212_fu_2723_p0 = mul_ln212_fu_2723_p00;
assign mul_ln212_fu_2723_p00 = tmp_6_reg_4500;
assign mul_ln212_fu_2723_p1 = 16'd190;
assign mul_ln225_1_fu_3261_p0 = mul_ln225_1_fu_3261_p00;
assign mul_ln225_1_fu_3261_p00 = empty_101_reg_4790;
assign mul_ln225_1_fu_3261_p1 = 16'd190;
assign mul_ln225_2_fu_3842_p0 = mul_ln225_2_fu_3842_p00;
assign mul_ln225_2_fu_3842_p00 = empty_163_reg_5130;
assign mul_ln225_2_fu_3842_p1 = 16'd190;
assign mul_ln225_3_fu_4001_p0 = mul_ln225_3_fu_4001_p00;
assign mul_ln225_3_fu_4001_p00 = empty_225_reg_5465;
assign mul_ln225_3_fu_4001_p1 = 16'd190;
assign mul_ln225_fu_2732_p0 = mul_ln225_fu_2732_p00;
assign mul_ln225_fu_2732_p00 = empty_39_reg_4510;
assign mul_ln225_fu_2732_p1 = 16'd190;
assign mul_ln238_1_fu_3270_p0 = mul_ln238_1_fu_3270_p00;
assign mul_ln238_1_fu_3270_p00 = empty_108_reg_4850;
assign mul_ln238_1_fu_3270_p1 = 16'd190;
assign mul_ln238_2_fu_3851_p0 = mul_ln238_2_fu_3851_p00;
assign mul_ln238_2_fu_3851_p00 = empty_170_reg_5140;
assign mul_ln238_2_fu_3851_p1 = 16'd190;
assign mul_ln238_3_fu_4010_p0 = mul_ln238_3_fu_4010_p00;
assign mul_ln238_3_fu_4010_p00 = empty_232_reg_5570;
assign mul_ln238_3_fu_4010_p1 = 16'd190;
assign mul_ln238_fu_2741_p0 = mul_ln238_fu_2741_p00;
assign mul_ln238_fu_2741_p00 = empty_46_reg_4520;
assign mul_ln238_fu_2741_p1 = 16'd190;
assign mul_ln251_1_fu_3279_p0 = mul_ln251_1_fu_3279_p00;
assign mul_ln251_1_fu_3279_p00 = empty_115_reg_4860;
assign mul_ln251_1_fu_3279_p1 = 16'd190;
assign mul_ln251_2_fu_3860_p0 = mul_ln251_2_fu_3860_p00;
assign mul_ln251_2_fu_3860_p00 = empty_177_reg_5245;
assign mul_ln251_2_fu_3860_p1 = 16'd190;
assign mul_ln251_3_fu_4019_p0 = mul_ln251_3_fu_4019_p00;
assign mul_ln251_3_fu_4019_p00 = empty_239_reg_5580;
assign mul_ln251_3_fu_4019_p1 = 16'd190;
assign mul_ln251_fu_2750_p0 = mul_ln251_fu_2750_p00;
assign mul_ln251_fu_2750_p00 = empty_53_reg_4570;
assign mul_ln251_fu_2750_p1 = 16'd190;
assign mul_ln264_1_fu_3288_p0 = mul_ln264_1_fu_3288_p00;
assign mul_ln264_1_fu_3288_p00 = empty_122_reg_4920;
assign mul_ln264_1_fu_3288_p1 = 16'd190;
assign mul_ln264_2_fu_3869_p0 = mul_ln264_2_fu_3869_p00;
assign mul_ln264_2_fu_3869_p00 = empty_184_reg_5255;
assign mul_ln264_2_fu_3869_p1 = 16'd190;
assign mul_ln264_3_fu_4028_p0 = mul_ln264_3_fu_4028_p00;
assign mul_ln264_3_fu_4028_p00 = empty_246_reg_5640;
assign mul_ln264_3_fu_4028_p1 = 16'd190;
assign mul_ln264_fu_2759_p0 = mul_ln264_fu_2759_p00;
assign mul_ln264_fu_2759_p00 = empty_60_reg_4580;
assign mul_ln264_fu_2759_p1 = 16'd190;
assign mul_ln277_1_fu_3297_p0 = mul_ln277_1_fu_3297_p00;
assign mul_ln277_1_fu_3297_p00 = empty_129_reg_4930;
assign mul_ln277_1_fu_3297_p1 = 16'd190;
assign mul_ln277_2_fu_3878_p0 = mul_ln277_2_fu_3878_p00;
assign mul_ln277_2_fu_3878_p00 = empty_191_reg_5315;
assign mul_ln277_2_fu_3878_p1 = 16'd190;
assign mul_ln277_3_fu_4037_p0 = mul_ln277_3_fu_4037_p00;
assign mul_ln277_3_fu_4037_p00 = empty_253_reg_5650;
assign mul_ln277_3_fu_4037_p1 = 16'd190;
assign mul_ln277_fu_2768_p0 = mul_ln277_fu_2768_p00;
assign mul_ln277_fu_2768_p00 = empty_67_reg_4640;
assign mul_ln277_fu_2768_p1 = 16'd190;
assign p_cast1418_fu_1762_p1 = grp_fu_4043_p3;
assign p_cast1419_fu_1874_p1 = grp_fu_4059_p3;
assign p_cast1420_fu_1881_p1 = grp_fu_4067_p3;
assign p_cast1421_fu_1986_p1 = grp_fu_4075_p3;
assign p_cast1422_fu_1993_p1 = grp_fu_4083_p3;
assign p_cast1423_fu_2098_p1 = grp_fu_4091_p3;
assign p_cast1424_fu_2105_p1 = grp_fu_4099_p3;
assign p_cast1425_fu_2210_p1 = grp_fu_4107_p3;
assign p_cast1426_fu_2217_p1 = grp_fu_4115_p3;
assign p_cast1427_fu_2322_p1 = grp_fu_4123_p3;
assign p_cast1428_fu_2329_p1 = grp_fu_4131_p3;
assign p_cast1429_fu_2434_p1 = grp_fu_4139_p3;
assign p_cast1430_fu_2441_p1 = grp_fu_4147_p3;
assign p_cast1431_fu_2546_p1 = grp_fu_4155_p3;
assign p_cast1432_fu_2553_p1 = grp_fu_4163_p3;
assign p_cast1433_fu_2658_p1 = grp_fu_4171_p3;
assign p_cast1434_fu_2665_p1 = grp_fu_4179_p3;
assign p_cast1435_fu_2852_p1 = grp_fu_4187_p3;
assign p_cast1436_fu_2859_p1 = grp_fu_4195_p3;
assign p_cast1437_fu_2964_p1 = grp_fu_4203_p3;
assign p_cast1438_fu_2971_p1 = grp_fu_4211_p3;
assign p_cast1439_fu_3076_p1 = grp_fu_4219_p3;
assign p_cast1440_fu_3083_p1 = grp_fu_4227_p3;
assign p_cast1441_fu_3188_p1 = grp_fu_4235_p3;
assign p_cast1442_fu_3195_p1 = grp_fu_4243_p3;
assign p_cast1443_fu_3381_p1 = grp_fu_4251_p3;
assign p_cast1444_fu_3388_p1 = grp_fu_4259_p3;
assign p_cast1445_fu_3493_p1 = grp_fu_4267_p3;
assign p_cast1446_fu_3500_p1 = grp_fu_4275_p3;
assign p_cast1447_fu_3605_p1 = grp_fu_4283_p3;
assign p_cast1448_fu_3612_p1 = grp_fu_4291_p3;
assign p_cast1449_fu_3697_p1 = grp_fu_4299_p3;
assign p_cast1450_fu_3704_p1 = grp_fu_4307_p3;
assign p_cast1451_fu_3789_p1 = grp_fu_4315_p3;
assign p_cast1452_fu_3796_p1 = grp_fu_4323_p3;
assign p_cast_fu_1769_p1 = grp_fu_4051_p3;
assign tmp_1_fu_1682_p3 = {{tmp_fu_1672_p4}, {1'd1}};
assign tmp_2_fu_1708_p4 = {{v115_reg_1372[7:2]}};
assign tmp_4_fu_1718_p3 = {{tmp_2_fu_1708_p4}, {2'd2}};
assign tmp_6_fu_1730_p3 = {{tmp_2_fu_1708_p4}, {2'd3}};
assign tmp_fu_1672_p4 = {{v115_reg_1372[7:1]}};
assign trunc_ln168_fu_1638_p1 = v114_fu_166[1:0];
assign v10_fu_2075_p2 = v226_0_q0;
assign v10_fu_2075_p4 = v226_1_q0;
assign v10_fu_2075_p6 = v226_2_q0;
assign v10_fu_2075_p8 = v226_3_q0;
assign v10_fu_2075_p9 = 'bx;
assign v119_1_fu_2299_p2 = v226_0_q0;
assign v119_1_fu_2299_p4 = v226_1_q0;
assign v119_1_fu_2299_p6 = v226_2_q0;
assign v119_1_fu_2299_p8 = v226_3_q0;
assign v119_1_fu_2299_p9 = 'bx;
assign v119_2_fu_2902_p2 = v226_0_q1;
assign v119_2_fu_2902_p4 = v226_1_q1;
assign v119_2_fu_2902_p6 = v226_2_q1;
assign v119_2_fu_2902_p8 = v226_3_q1;
assign v119_2_fu_2902_p9 = 'bx;
assign v119_3_fu_3470_p2 = v226_0_q0;
assign v119_3_fu_3470_p4 = v226_1_q0;
assign v119_3_fu_3470_p6 = v226_2_q0;
assign v119_3_fu_3470_p8 = v226_3_q0;
assign v119_3_fu_3470_p9 = 'bx;
assign v12_fu_2148_p2 = v226_0_q1;
assign v12_fu_2148_p4 = v226_1_q1;
assign v12_fu_2148_p6 = v226_2_q1;
assign v12_fu_2148_p8 = v226_3_q1;
assign v12_fu_2148_p9 = 'bx;
assign v132_1_fu_2372_p2 = v226_0_q1;
assign v132_1_fu_2372_p4 = v226_1_q1;
assign v132_1_fu_2372_p6 = v226_2_q1;
assign v132_1_fu_2372_p8 = v226_3_q1;
assign v132_1_fu_2372_p9 = 'bx;
assign v132_2_fu_2941_p2 = v226_0_q0;
assign v132_2_fu_2941_p4 = v226_1_q0;
assign v132_2_fu_2941_p6 = v226_2_q0;
assign v132_2_fu_2941_p8 = v226_3_q0;
assign v132_2_fu_2941_p9 = 'bx;
assign v132_3_fu_3543_p2 = v226_0_q1;
assign v132_3_fu_3543_p4 = v226_1_q1;
assign v132_3_fu_3543_p6 = v226_2_q1;
assign v132_3_fu_3543_p8 = v226_3_q1;
assign v132_3_fu_3543_p9 = 'bx;
assign v143_1_fu_2411_p2 = v226_0_q0;
assign v143_1_fu_2411_p4 = v226_1_q0;
assign v143_1_fu_2411_p6 = v226_2_q0;
assign v143_1_fu_2411_p8 = v226_3_q0;
assign v143_1_fu_2411_p9 = 'bx;
assign v143_2_fu_3014_p2 = v226_0_q1;
assign v143_2_fu_3014_p4 = v226_1_q1;
assign v143_2_fu_3014_p6 = v226_2_q1;
assign v143_2_fu_3014_p8 = v226_3_q1;
assign v143_2_fu_3014_p9 = 'bx;
assign v143_3_fu_3582_p2 = v226_0_q0;
assign v143_3_fu_3582_p4 = v226_1_q0;
assign v143_3_fu_3582_p6 = v226_2_q0;
assign v143_3_fu_3582_p8 = v226_3_q0;
assign v143_3_fu_3582_p9 = 'bx;
assign v14_fu_2187_p2 = v226_0_q0;
assign v14_fu_2187_p4 = v226_1_q0;
assign v14_fu_2187_p6 = v226_2_q0;
assign v14_fu_2187_p8 = v226_3_q0;
assign v14_fu_2187_p9 = 'bx;
assign v154_1_fu_2484_p2 = v226_0_q1;
assign v154_1_fu_2484_p4 = v226_1_q1;
assign v154_1_fu_2484_p6 = v226_2_q1;
assign v154_1_fu_2484_p8 = v226_3_q1;
assign v154_1_fu_2484_p9 = 'bx;
assign v154_2_fu_3053_p2 = v226_0_q0;
assign v154_2_fu_3053_p4 = v226_1_q0;
assign v154_2_fu_3053_p6 = v226_2_q0;
assign v154_2_fu_3053_p8 = v226_3_q0;
assign v154_2_fu_3053_p9 = 'bx;
assign v154_3_fu_3635_p2 = v226_0_q1;
assign v154_3_fu_3635_p4 = v226_1_q1;
assign v154_3_fu_3635_p6 = v226_2_q1;
assign v154_3_fu_3635_p8 = v226_3_q1;
assign v154_3_fu_3635_p9 = 'bx;
assign v165_1_fu_2523_p2 = v226_0_q0;
assign v165_1_fu_2523_p4 = v226_1_q0;
assign v165_1_fu_2523_p6 = v226_2_q0;
assign v165_1_fu_2523_p8 = v226_3_q0;
assign v165_1_fu_2523_p9 = 'bx;
assign v165_2_fu_3126_p2 = v226_0_q1;
assign v165_2_fu_3126_p4 = v226_1_q1;
assign v165_2_fu_3126_p6 = v226_2_q1;
assign v165_2_fu_3126_p8 = v226_3_q1;
assign v165_2_fu_3126_p9 = 'bx;
assign v165_3_fu_3674_p2 = v226_0_q0;
assign v165_3_fu_3674_p4 = v226_1_q0;
assign v165_3_fu_3674_p6 = v226_2_q0;
assign v165_3_fu_3674_p8 = v226_3_q0;
assign v165_3_fu_3674_p9 = 'bx;
assign v16_fu_2260_p2 = v226_0_q1;
assign v16_fu_2260_p4 = v226_1_q1;
assign v16_fu_2260_p6 = v226_2_q1;
assign v16_fu_2260_p8 = v226_3_q1;
assign v16_fu_2260_p9 = 'bx;
assign v176_1_fu_2596_p2 = v226_0_q1;
assign v176_1_fu_2596_p4 = v226_1_q1;
assign v176_1_fu_2596_p6 = v226_2_q1;
assign v176_1_fu_2596_p8 = v226_3_q1;
assign v176_1_fu_2596_p9 = 'bx;
assign v176_2_fu_3165_p2 = v226_0_q0;
assign v176_2_fu_3165_p4 = v226_1_q0;
assign v176_2_fu_3165_p6 = v226_2_q0;
assign v176_2_fu_3165_p8 = v226_3_q0;
assign v176_2_fu_3165_p9 = 'bx;
assign v176_3_fu_3727_p2 = v226_0_q1;
assign v176_3_fu_3727_p4 = v226_1_q1;
assign v176_3_fu_3727_p6 = v226_2_q1;
assign v176_3_fu_3727_p8 = v226_3_q1;
assign v176_3_fu_3727_p9 = 'bx;
assign v187_1_fu_2635_p2 = v226_0_q0;
assign v187_1_fu_2635_p4 = v226_1_q0;
assign v187_1_fu_2635_p6 = v226_2_q0;
assign v187_1_fu_2635_p8 = v226_3_q0;
assign v187_1_fu_2635_p9 = 'bx;
assign v187_2_fu_3319_p2 = v226_0_q1;
assign v187_2_fu_3319_p4 = v226_1_q1;
assign v187_2_fu_3319_p6 = v226_2_q1;
assign v187_2_fu_3319_p8 = v226_3_q1;
assign v187_2_fu_3319_p9 = 'bx;
assign v187_3_fu_3766_p2 = v226_0_q0;
assign v187_3_fu_3766_p4 = v226_1_q0;
assign v187_3_fu_3766_p6 = v226_2_q0;
assign v187_3_fu_3766_p8 = v226_3_q0;
assign v187_3_fu_3766_p9 = 'bx;
assign v198_1_fu_2790_p2 = v226_0_q1;
assign v198_1_fu_2790_p4 = v226_1_q1;
assign v198_1_fu_2790_p6 = v226_2_q1;
assign v198_1_fu_2790_p8 = v226_3_q1;
assign v198_1_fu_2790_p9 = 'bx;
assign v198_2_fu_3358_p2 = v226_0_q0;
assign v198_2_fu_3358_p4 = v226_1_q0;
assign v198_2_fu_3358_p6 = v226_2_q0;
assign v198_2_fu_3358_p8 = v226_3_q0;
assign v198_2_fu_3358_p9 = 'bx;
assign v198_3_fu_3900_p2 = v226_0_q1;
assign v198_3_fu_3900_p4 = v226_1_q1;
assign v198_3_fu_3900_p6 = v226_2_q1;
assign v198_3_fu_3900_p8 = v226_3_q1;
assign v198_3_fu_3900_p9 = 'bx;
assign v209_1_fu_2829_p2 = v226_0_q0;
assign v209_1_fu_2829_p4 = v226_1_q0;
assign v209_1_fu_2829_p6 = v226_2_q0;
assign v209_1_fu_2829_p8 = v226_3_q0;
assign v209_1_fu_2829_p9 = 'bx;
assign v209_2_fu_3431_p2 = v226_0_q1;
assign v209_2_fu_3431_p4 = v226_1_q1;
assign v209_2_fu_3431_p6 = v226_2_q1;
assign v209_2_fu_3431_p8 = v226_3_q1;
assign v209_2_fu_3431_p9 = 'bx;
assign v209_3_fu_3939_p2 = v226_0_q0;
assign v209_3_fu_3939_p4 = v226_1_q0;
assign v209_3_fu_3939_p6 = v226_2_q0;
assign v209_3_fu_3939_p8 = v226_3_q0;
assign v209_3_fu_3939_p9 = 'bx;
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
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v2_fu_1851_p2 = v226_0_q0;
assign v2_fu_1851_p4 = v226_1_q0;
assign v2_fu_1851_p6 = v226_2_q0;
assign v2_fu_1851_p8 = v226_3_q0;
assign v2_fu_1851_p9 = 'bx;
assign v4_fu_1924_p2 = v226_0_q1;
assign v4_fu_1924_p4 = v226_1_q1;
assign v4_fu_1924_p6 = v226_2_q1;
assign v4_fu_1924_p8 = v226_3_q1;
assign v4_fu_1924_p9 = 'bx;
assign v6_fu_1963_p2 = v226_0_q0;
assign v6_fu_1963_p4 = v226_1_q0;
assign v6_fu_1963_p6 = v226_2_q0;
assign v6_fu_1963_p8 = v226_3_q0;
assign v6_fu_1963_p9 = 'bx;
assign v8_fu_2036_p2 = v226_0_q1;
assign v8_fu_2036_p4 = v226_1_q1;
assign v8_fu_2036_p6 = v226_2_q1;
assign v8_fu_2036_p8 = v226_3_q1;
assign v8_fu_2036_p9 = 'bx;
assign v_fu_1812_p2 = v226_0_q1;
assign v_fu_1812_p4 = v226_1_q1;
assign v_fu_1812_p6 = v226_2_q1;
assign v_fu_1812_p8 = v226_3_q1;
assign v_fu_1812_p9 = 'bx;
assign zext_ln168_fu_1652_p1 = lshr_ln_fu_1642_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_4419[13:6] <= 8'b00000000;
    tmp_1_reg_4475[0] <= 1'b1;
    tmp_4_reg_4490[1:0] <= 2'b10;
    tmp_6_reg_4500[1:0] <= 2'b11;
end
endmodule 