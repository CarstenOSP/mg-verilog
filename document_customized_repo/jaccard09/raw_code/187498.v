module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce); 
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
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_378_p2;
reg   [15:0] phi_mul_load_reg_780;
wire   [15:0] add_ln168_1_fu_372_p2;
reg   [15:0] add_ln168_1_reg_785;
wire   [7:0] add_ln168_fu_384_p2;
reg   [7:0] add_ln168_reg_793;
wire   [0:0] trunc_ln168_fu_390_p1;
reg   [0:0] trunc_ln168_reg_798;
wire   [14:0] zext_ln168_fu_404_p1;
reg   [14:0] zext_ln168_reg_804;
wire   [0:0] cmp11_fu_408_p2;
reg   [0:0] cmp11_reg_817;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_424_p2;
reg   [7:0] add_ln169_reg_830;
wire   [7:0] empty_16_fu_438_p2;
reg   [7:0] empty_16_reg_835;
wire    ap_CS_fsm_state4;
wire   [7:0] empty_19_fu_448_p2;
reg   [7:0] empty_19_reg_845;
wire   [7:0] empty_22_fu_458_p2;
reg   [7:0] empty_22_reg_855;
wire    ap_CS_fsm_state5;
wire   [7:0] empty_25_fu_468_p2;
reg   [7:0] empty_25_reg_865;
wire    ap_CS_fsm_state6;
wire   [7:0] empty_28_fu_483_p2;
reg   [7:0] empty_28_reg_885;
wire   [7:0] empty_31_fu_493_p2;
reg   [7:0] empty_31_reg_895;
wire   [31:0] grp_fu_342_p3;
reg   [31:0] v119_v_reg_905;
wire    ap_CS_fsm_state7;
wire   [7:0] empty_34_fu_513_p2;
reg   [7:0] empty_34_reg_930;
wire   [7:0] empty_37_fu_523_p2;
reg   [7:0] empty_37_reg_940;
wire   [31:0] grp_fu_349_p3;
reg   [31:0] v132_v_reg_950;
wire    ap_CS_fsm_state8;
reg   [31:0] v143_v_reg_955;
reg   [31:0] v154_v_reg_980;
wire    ap_CS_fsm_state9;
reg   [31:0] v165_v_reg_985;
reg   [31:0] v176_v_reg_1010;
wire    ap_CS_fsm_state10;
reg   [31:0] v187_v_reg_1015;
reg   [31:0] v198_v_reg_1040;
wire    ap_CS_fsm_state11;
reg   [31:0] v209_v_reg_1045;
wire   [31:0] v119_fu_563_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_567_p1;
wire   [31:0] v143_fu_571_p1;
wire   [31:0] v154_fu_575_p1;
wire   [31:0] v165_fu_579_p1;
wire   [31:0] v176_fu_583_p1;
wire   [31:0] v187_fu_587_p1;
wire   [31:0] v198_fu_591_p1;
wire   [31:0] v209_fu_595_p1;
wire   [15:0] mul_ln171_fu_603_p2;
reg   [15:0] mul_ln171_reg_1095;
wire    ap_CS_fsm_state15;
reg   [31:0] v_reg_1100;
wire   [15:0] mul_ln186_fu_612_p2;
reg   [15:0] mul_ln186_reg_1105;
reg   [31:0] v36_reg_1110;
wire   [15:0] mul_ln199_fu_621_p2;
reg   [15:0] mul_ln199_reg_1115;
reg   [31:0] v37_reg_1120;
wire   [15:0] mul_ln212_fu_630_p2;
reg   [15:0] mul_ln212_reg_1125;
reg   [31:0] v38_reg_1130;
wire   [15:0] mul_ln225_fu_639_p2;
reg   [15:0] mul_ln225_reg_1135;
reg   [31:0] v39_reg_1140;
wire   [15:0] mul_ln238_fu_648_p2;
reg   [15:0] mul_ln238_reg_1145;
reg   [31:0] v40_reg_1150;
wire   [15:0] mul_ln251_fu_657_p2;
reg   [15:0] mul_ln251_reg_1155;
reg   [31:0] v41_reg_1160;
wire   [15:0] mul_ln264_fu_666_p2;
reg   [15:0] mul_ln264_reg_1165;
reg   [31:0] v42_reg_1170;
wire   [15:0] mul_ln277_fu_675_p2;
reg   [15:0] mul_ln277_reg_1175;
reg   [31:0] v43_reg_1180;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_1185_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_1185_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_1185_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_1185_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_306_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_306_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_306_p_ce;
reg   [7:0] v115_reg_266;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [63:0] p_cast1082_fu_478_p1;
wire   [63:0] p_cast_fu_503_p1;
wire   [63:0] p_cast1083_fu_508_p1;
wire   [63:0] p_cast1084_fu_533_p1;
wire   [63:0] p_cast1085_fu_538_p1;
wire   [63:0] p_cast1086_fu_543_p1;
wire   [63:0] p_cast1087_fu_548_p1;
wire   [63:0] p_cast1088_fu_553_p1;
wire   [63:0] p_cast1089_fu_558_p1;
reg   [15:0] phi_mul_fu_82;
wire   [0:0] icmp_ln169_fu_414_p2;
reg   [7:0] v114_fu_86;
reg    v236_write_local;
reg    v226_0_ce0_local;
reg   [14:0] v226_0_address0_local;
reg    v226_0_ce1_local;
reg   [14:0] v226_0_address1_local;
reg    v226_1_ce0_local;
reg   [14:0] v226_1_address0_local;
reg    v226_1_ce1_local;
reg   [14:0] v226_1_address1_local;
reg   [31:0] grp_fu_306_p0;
reg   [31:0] grp_fu_306_p1;
wire   [6:0] lshr_ln_fu_394_p4;
wire   [14:0] grp_fu_681_p3;
wire   [14:0] grp_fu_689_p3;
wire   [14:0] grp_fu_697_p3;
wire   [14:0] grp_fu_705_p3;
wire   [14:0] grp_fu_713_p3;
wire   [14:0] grp_fu_721_p3;
wire   [14:0] grp_fu_729_p3;
wire   [14:0] grp_fu_737_p3;
wire   [14:0] grp_fu_745_p3;
wire   [7:0] mul_ln171_fu_603_p0;
wire   [8:0] mul_ln171_fu_603_p1;
wire   [7:0] mul_ln186_fu_612_p0;
wire   [8:0] mul_ln186_fu_612_p1;
wire   [7:0] mul_ln199_fu_621_p0;
wire   [8:0] mul_ln199_fu_621_p1;
wire   [7:0] mul_ln212_fu_630_p0;
wire   [8:0] mul_ln212_fu_630_p1;
wire   [7:0] mul_ln225_fu_639_p0;
wire   [8:0] mul_ln225_fu_639_p1;
wire   [7:0] mul_ln238_fu_648_p0;
wire   [8:0] mul_ln238_fu_648_p1;
wire   [7:0] mul_ln251_fu_657_p0;
wire   [8:0] mul_ln251_fu_657_p1;
wire   [7:0] mul_ln264_fu_666_p0;
wire   [8:0] mul_ln264_fu_666_p1;
wire   [7:0] mul_ln277_fu_675_p0;
wire   [8:0] mul_ln277_fu_675_p1;
wire   [7:0] grp_fu_681_p0;
wire   [6:0] grp_fu_681_p1;
wire   [6:0] grp_fu_681_p2;
wire   [7:0] grp_fu_689_p0;
wire   [6:0] grp_fu_689_p1;
wire   [6:0] grp_fu_689_p2;
wire   [7:0] grp_fu_697_p0;
wire   [6:0] grp_fu_697_p1;
wire   [6:0] grp_fu_697_p2;
wire   [7:0] grp_fu_705_p0;
wire   [6:0] grp_fu_705_p1;
wire   [6:0] grp_fu_705_p2;
wire   [7:0] grp_fu_713_p0;
wire   [6:0] grp_fu_713_p1;
wire   [6:0] grp_fu_713_p2;
wire   [7:0] grp_fu_721_p0;
wire   [6:0] grp_fu_721_p1;
wire   [6:0] grp_fu_721_p2;
wire   [7:0] grp_fu_729_p0;
wire   [6:0] grp_fu_729_p1;
wire   [6:0] grp_fu_729_p2;
wire   [7:0] grp_fu_737_p0;
wire   [6:0] grp_fu_737_p1;
wire   [6:0] grp_fu_737_p2;
wire   [7:0] grp_fu_745_p0;
wire   [6:0] grp_fu_745_p1;
wire   [6:0] grp_fu_745_p2;
reg    grp_fu_306_ce;
reg    grp_fu_1185_ce;
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
wire   [14:0] grp_fu_681_p00;
wire   [14:0] grp_fu_689_p00;
wire   [14:0] grp_fu_697_p00;
wire   [14:0] grp_fu_705_p00;
wire   [14:0] grp_fu_713_p00;
wire   [14:0] grp_fu_721_p00;
wire   [14:0] grp_fu_729_p00;
wire   [14:0] grp_fu_737_p00;
wire   [14:0] grp_fu_745_p00;
wire   [15:0] mul_ln171_fu_603_p00;
wire   [15:0] mul_ln186_fu_612_p00;
wire   [15:0] mul_ln199_fu_621_p00;
wire   [15:0] mul_ln212_fu_630_p00;
wire   [15:0] mul_ln225_fu_639_p00;
wire   [15:0] mul_ln238_fu_648_p00;
wire   [15:0] mul_ln251_fu_657_p00;
wire   [15:0] mul_ln264_fu_666_p00;
wire   [15:0] mul_ln277_fu_675_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_start_reg = 1'b0;
#0 phi_mul_fu_82 = 16'd0;
#0 v114_fu_86 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_278(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_ready),.phi_mul(phi_mul_load_reg_780),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1095),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_d1),.v225_q1(v225_q1),.mul_ln186(mul_ln186_reg_1105),.mul_ln199(mul_ln199_reg_1115),.mul_ln212(mul_ln212_reg_1125),.mul_ln225(mul_ln225_reg_1135),.mul_ln238(mul_ln238_reg_1145),.mul_ln251(mul_ln251_reg_1155),.mul_ln264(mul_ln264_reg_1165),.mul_ln277(mul_ln277_reg_1175),.cmp11(cmp11_reg_817),.v120(v_reg_1100),.v133(v36_reg_1110),.v144(v37_reg_1120),.v155(v38_reg_1130),.v166(v39_reg_1140),.v177(v40_reg_1150),.v188(v41_reg_1160),.v199(v42_reg_1170),.v210(v43_reg_1180),.grp_fu_1185_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_1185_p_din0),.grp_fu_1185_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_1185_p_din1),.grp_fu_1185_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_1185_p_opcode),.grp_fu_1185_p_dout0(grp_fu_176_p_dout0),.grp_fu_1185_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_1185_p_ce),.grp_fu_306_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_306_p_din0),.grp_fu_306_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_306_p_din1),.grp_fu_306_p_dout0(grp_fu_180_p_dout0),.grp_fu_306_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_306_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U34(.din0(mul_ln171_fu_603_p0),.din1(mul_ln171_fu_603_p1),.dout(mul_ln171_fu_603_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U35(.din0(mul_ln186_fu_612_p0),.din1(mul_ln186_fu_612_p1),.dout(mul_ln186_fu_612_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U36(.din0(mul_ln199_fu_621_p0),.din1(mul_ln199_fu_621_p1),.dout(mul_ln199_fu_621_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U37(.din0(mul_ln212_fu_630_p0),.din1(mul_ln212_fu_630_p1),.dout(mul_ln212_fu_630_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U38(.din0(mul_ln225_fu_639_p0),.din1(mul_ln225_fu_639_p1),.dout(mul_ln225_fu_639_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U39(.din0(mul_ln238_fu_648_p0),.din1(mul_ln238_fu_648_p1),.dout(mul_ln238_fu_648_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U40(.din0(mul_ln251_fu_657_p0),.din1(mul_ln251_fu_657_p1),.dout(mul_ln251_fu_657_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U41(.din0(mul_ln264_fu_666_p0),.din1(mul_ln264_fu_666_p1),.dout(mul_ln264_fu_666_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U42(.din0(mul_ln277_fu_675_p0),.din1(mul_ln277_fu_675_p1),.dout(mul_ln277_fu_675_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U43(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_681_p0),.din1(grp_fu_681_p1),.din2(grp_fu_681_p2),.ce(1'b1),.dout(grp_fu_681_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U44(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_689_p0),.din1(grp_fu_689_p1),.din2(grp_fu_689_p2),.ce(1'b1),.dout(grp_fu_689_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U45(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_697_p0),.din1(grp_fu_697_p1),.din2(grp_fu_697_p2),.ce(1'b1),.dout(grp_fu_697_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U46(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_705_p0),.din1(grp_fu_705_p1),.din2(grp_fu_705_p2),.ce(1'b1),.dout(grp_fu_705_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U47(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_713_p0),.din1(grp_fu_713_p1),.din2(grp_fu_713_p2),.ce(1'b1),.dout(grp_fu_713_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U48(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_721_p0),.din1(grp_fu_721_p1),.din2(grp_fu_721_p2),.ce(1'b1),.dout(grp_fu_721_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U49(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_729_p0),.din1(grp_fu_729_p1),.din2(grp_fu_729_p2),.ce(1'b1),.dout(grp_fu_729_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U50(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_737_p0),.din1(grp_fu_737_p1),.din2(grp_fu_737_p2),.ce(1'b1),.dout(grp_fu_737_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_745_p0),.din1(grp_fu_745_p1),.din2(grp_fu_745_p2),.ce(1'b1),.dout(grp_fu_745_p3));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_82 <= 16'd0;
    end else if (((icmp_ln169_fu_414_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_82 <= add_ln168_1_reg_785;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_86 <= 8'd0;
    end else if (((icmp_ln169_fu_414_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_86 <= add_ln168_reg_793;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_266 <= add_ln169_reg_830;
    end else if (((icmp_ln168_fu_378_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        v115_reg_266 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_785 <= add_ln168_1_fu_372_p2;
        add_ln168_reg_793 <= add_ln168_fu_384_p2;
        cmp11_reg_817 <= cmp11_fu_408_p2;
        phi_mul_load_reg_780 <= phi_mul_fu_82;
        trunc_ln168_reg_798 <= trunc_ln168_fu_390_p1;
        zext_ln168_reg_804[6 : 0] <= zext_ln168_fu_404_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_830 <= add_ln169_fu_424_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_16_reg_835 <= empty_16_fu_438_p2;
        empty_19_reg_845 <= empty_19_fu_448_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        empty_22_reg_855 <= empty_22_fu_458_p2;
        empty_25_reg_865 <= empty_25_fu_468_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        empty_28_reg_885 <= empty_28_fu_483_p2;
        empty_31_reg_895 <= empty_31_fu_493_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        empty_34_reg_930 <= empty_34_fu_513_p2;
        empty_37_reg_940 <= empty_37_fu_523_p2;
        v119_v_reg_905 <= grp_fu_342_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1095 <= mul_ln171_fu_603_p2;
        mul_ln186_reg_1105 <= mul_ln186_fu_612_p2;
        mul_ln199_reg_1115 <= mul_ln199_fu_621_p2;
        mul_ln212_reg_1125 <= mul_ln212_fu_630_p2;
        mul_ln225_reg_1135 <= mul_ln225_fu_639_p2;
        mul_ln238_reg_1145 <= mul_ln238_fu_648_p2;
        mul_ln251_reg_1155 <= mul_ln251_fu_657_p2;
        mul_ln264_reg_1165 <= mul_ln264_fu_666_p2;
        mul_ln277_reg_1175 <= mul_ln277_fu_675_p2;
        v36_reg_1110 <= grp_fu_184_p_dout0;
        v37_reg_1120 <= grp_fu_188_p_dout0;
        v38_reg_1130 <= grp_fu_192_p_dout0;
        v39_reg_1140 <= grp_fu_196_p_dout0;
        v40_reg_1150 <= grp_fu_200_p_dout0;
        v41_reg_1160 <= grp_fu_204_p_dout0;
        v42_reg_1170 <= grp_fu_208_p_dout0;
        v43_reg_1180 <= grp_fu_212_p_dout0;
        v_reg_1100 <= grp_fu_180_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v132_v_reg_950 <= grp_fu_349_p3;
        v143_v_reg_955 <= grp_fu_342_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v154_v_reg_980 <= grp_fu_342_p3;
        v165_v_reg_985 <= grp_fu_349_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v176_v_reg_1010 <= grp_fu_342_p3;
        v187_v_reg_1015 <= grp_fu_349_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v198_v_reg_1040 <= grp_fu_342_p3;
        v209_v_reg_1045 <= grp_fu_349_p3;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_done == 1'b0)) begin
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
    if ((((icmp_ln168_fu_378_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln168_fu_378_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1185_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_1185_p_ce;
    end else begin
        grp_fu_1185_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_306_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_306_p_ce;
    end else begin
        grp_fu_306_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_306_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_306_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_306_p0 = v119_fu_563_p1;
    end else begin
        grp_fu_306_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_306_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_306_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_306_p1 = v113;
    end else begin
        grp_fu_306_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast1088_fu_553_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast1086_fu_543_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast1084_fu_533_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast1083_fu_508_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast1082_fu_478_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast1089_fu_558_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast1087_fu_548_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast1085_fu_538_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_503_p1;
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
        v226_1_address0_local = p_cast1088_fu_553_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast1086_fu_543_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast1084_fu_533_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast1083_fu_508_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast1082_fu_478_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast1089_fu_558_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast1087_fu_548_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast1085_fu_538_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_503_p1;
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
    if (((icmp_ln168_fu_378_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((icmp_ln168_fu_378_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((icmp_ln168_fu_378_p2 == 1'd1) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln168_fu_378_p2 == 1'd0) & (1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_414_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_1_fu_372_p2 = (phi_mul_fu_82 + 16'd190);
assign add_ln168_fu_384_p2 = (v114_fu_86 + 8'd1);
assign add_ln169_fu_424_p2 = (v115_reg_266 + 8'd9);
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
    ap_block_state2 = ((icmp_ln168_fu_378_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_408_p2 = ((v114_fu_86 == 8'd0) ? 1'b1 : 1'b0);
assign empty_16_fu_438_p2 = (v115_reg_266 + 8'd1);
assign empty_19_fu_448_p2 = (v115_reg_266 + 8'd2);
assign empty_22_fu_458_p2 = (v115_reg_266 + 8'd3);
assign empty_25_fu_468_p2 = (v115_reg_266 + 8'd4);
assign empty_28_fu_483_p2 = (v115_reg_266 + 8'd5);
assign empty_31_fu_493_p2 = (v115_reg_266 + 8'd6);
assign empty_34_fu_513_p2 = (v115_reg_266 + 8'd7);
assign empty_37_fu_523_p2 = (v115_reg_266 + 8'd8);
assign grp_fu_176_p_ce = grp_fu_1185_ce;
assign grp_fu_176_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_1185_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_grp_fu_1185_p_din1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_306_ce;
assign grp_fu_180_p_din0 = grp_fu_306_p0;
assign grp_fu_180_p_din1 = grp_fu_306_p1;
assign grp_fu_184_p_ce = 1'b1;
assign grp_fu_184_p_din0 = v132_fu_567_p1;
assign grp_fu_184_p_din1 = v113;
assign grp_fu_188_p_ce = 1'b1;
assign grp_fu_188_p_din0 = v143_fu_571_p1;
assign grp_fu_188_p_din1 = v113;
assign grp_fu_192_p_ce = 1'b1;
assign grp_fu_192_p_din0 = v154_fu_575_p1;
assign grp_fu_192_p_din1 = v113;
assign grp_fu_196_p_ce = 1'b1;
assign grp_fu_196_p_din0 = v165_fu_579_p1;
assign grp_fu_196_p_din1 = v113;
assign grp_fu_200_p_ce = 1'b1;
assign grp_fu_200_p_din0 = v176_fu_583_p1;
assign grp_fu_200_p_din1 = v113;
assign grp_fu_204_p_ce = 1'b1;
assign grp_fu_204_p_din0 = v187_fu_587_p1;
assign grp_fu_204_p_din1 = v113;
assign grp_fu_208_p_ce = 1'b1;
assign grp_fu_208_p_din0 = v198_fu_591_p1;
assign grp_fu_208_p_din1 = v113;
assign grp_fu_212_p_ce = 1'b1;
assign grp_fu_212_p_din0 = v209_fu_595_p1;
assign grp_fu_212_p_din1 = v113;
assign grp_fu_342_p3 = ((trunc_ln168_reg_798[0:0] == 1'b1) ? v226_1_q0 : v226_0_q0);
assign grp_fu_349_p3 = ((trunc_ln168_reg_798[0:0] == 1'b1) ? v226_1_q1 : v226_0_q1);
assign grp_fu_681_p0 = grp_fu_681_p00;
assign grp_fu_681_p00 = v115_reg_266;
assign grp_fu_681_p1 = 15'd105;
assign grp_fu_681_p2 = zext_ln168_reg_804;
assign grp_fu_689_p0 = grp_fu_689_p00;
assign grp_fu_689_p00 = empty_16_fu_438_p2;
assign grp_fu_689_p1 = 15'd105;
assign grp_fu_689_p2 = zext_ln168_reg_804;
assign grp_fu_697_p0 = grp_fu_697_p00;
assign grp_fu_697_p00 = empty_19_fu_448_p2;
assign grp_fu_697_p1 = 15'd105;
assign grp_fu_697_p2 = zext_ln168_reg_804;
assign grp_fu_705_p0 = grp_fu_705_p00;
assign grp_fu_705_p00 = empty_22_fu_458_p2;
assign grp_fu_705_p1 = 15'd105;
assign grp_fu_705_p2 = zext_ln168_reg_804;
assign grp_fu_713_p0 = grp_fu_713_p00;
assign grp_fu_713_p00 = empty_25_fu_468_p2;
assign grp_fu_713_p1 = 15'd105;
assign grp_fu_713_p2 = zext_ln168_reg_804;
assign grp_fu_721_p0 = grp_fu_721_p00;
assign grp_fu_721_p00 = empty_28_fu_483_p2;
assign grp_fu_721_p1 = 15'd105;
assign grp_fu_721_p2 = zext_ln168_reg_804;
assign grp_fu_729_p0 = grp_fu_729_p00;
assign grp_fu_729_p00 = empty_31_fu_493_p2;
assign grp_fu_729_p1 = 15'd105;
assign grp_fu_729_p2 = zext_ln168_reg_804;
assign grp_fu_737_p0 = grp_fu_737_p00;
assign grp_fu_737_p00 = empty_34_fu_513_p2;
assign grp_fu_737_p1 = 15'd105;
assign grp_fu_737_p2 = zext_ln168_reg_804;
assign grp_fu_745_p0 = grp_fu_745_p00;
assign grp_fu_745_p00 = empty_37_fu_523_p2;
assign grp_fu_745_p1 = 15'd105;
assign grp_fu_745_p2 = zext_ln168_reg_804;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_ap_start_reg;
assign icmp_ln168_fu_378_p2 = ((v114_fu_86 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_414_p2 = ((v115_reg_266 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_394_p4 = {{v114_fu_86[7:1]}};
assign mul_ln171_fu_603_p0 = mul_ln171_fu_603_p00;
assign mul_ln171_fu_603_p00 = v115_reg_266;
assign mul_ln171_fu_603_p1 = 16'd190;
assign mul_ln186_fu_612_p0 = mul_ln186_fu_612_p00;
assign mul_ln186_fu_612_p00 = empty_16_reg_835;
assign mul_ln186_fu_612_p1 = 16'd190;
assign mul_ln199_fu_621_p0 = mul_ln199_fu_621_p00;
assign mul_ln199_fu_621_p00 = empty_19_reg_845;
assign mul_ln199_fu_621_p1 = 16'd190;
assign mul_ln212_fu_630_p0 = mul_ln212_fu_630_p00;
assign mul_ln212_fu_630_p00 = empty_22_reg_855;
assign mul_ln212_fu_630_p1 = 16'd190;
assign mul_ln225_fu_639_p0 = mul_ln225_fu_639_p00;
assign mul_ln225_fu_639_p00 = empty_25_reg_865;
assign mul_ln225_fu_639_p1 = 16'd190;
assign mul_ln238_fu_648_p0 = mul_ln238_fu_648_p00;
assign mul_ln238_fu_648_p00 = empty_28_reg_885;
assign mul_ln238_fu_648_p1 = 16'd190;
assign mul_ln251_fu_657_p0 = mul_ln251_fu_657_p00;
assign mul_ln251_fu_657_p00 = empty_31_reg_895;
assign mul_ln251_fu_657_p1 = 16'd190;
assign mul_ln264_fu_666_p0 = mul_ln264_fu_666_p00;
assign mul_ln264_fu_666_p00 = empty_34_reg_930;
assign mul_ln264_fu_666_p1 = 16'd190;
assign mul_ln277_fu_675_p0 = mul_ln277_fu_675_p00;
assign mul_ln277_fu_675_p00 = empty_37_reg_940;
assign mul_ln277_fu_675_p1 = 16'd190;
assign p_cast1082_fu_478_p1 = grp_fu_681_p3;
assign p_cast1083_fu_508_p1 = grp_fu_697_p3;
assign p_cast1084_fu_533_p1 = grp_fu_705_p3;
assign p_cast1085_fu_538_p1 = grp_fu_713_p3;
assign p_cast1086_fu_543_p1 = grp_fu_721_p3;
assign p_cast1087_fu_548_p1 = grp_fu_729_p3;
assign p_cast1088_fu_553_p1 = grp_fu_737_p3;
assign p_cast1089_fu_558_p1 = grp_fu_745_p3;
assign p_cast_fu_503_p1 = grp_fu_689_p3;
assign trunc_ln168_fu_390_p1 = v114_fu_86[0:0];
assign v119_fu_563_p1 = v119_v_reg_905;
assign v132_fu_567_p1 = v132_v_reg_950;
assign v143_fu_571_p1 = v143_v_reg_955;
assign v154_fu_575_p1 = v154_v_reg_980;
assign v165_fu_579_p1 = v165_v_reg_985;
assign v176_fu_583_p1 = v176_v_reg_1010;
assign v187_fu_587_p1 = v187_v_reg_1015;
assign v198_fu_591_p1 = v198_v_reg_1040;
assign v209_fu_595_p1 = v209_v_reg_1045;
assign v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_address0;
assign v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_address1;
assign v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_ce0;
assign v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_ce1;
assign v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_d0;
assign v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_d1;
assign v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_we0;
assign v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v225_we1;
assign v226_0_address0 = v226_0_address0_local;
assign v226_0_address1 = v226_0_address1_local;
assign v226_0_ce0 = v226_0_ce0_local;
assign v226_0_ce1 = v226_0_ce1_local;
assign v226_1_address0 = v226_1_address0_local;
assign v226_1_address1 = v226_1_address1_local;
assign v226_1_ce0 = v226_1_ce0_local;
assign v226_1_ce1 = v226_1_ce1_local;
assign v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v227_address0;
assign v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v227_address1;
assign v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v227_ce0;
assign v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_278_v227_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_404_p1 = lshr_ln_fu_394_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_804[14:7] <= 8'b00000000;
end
endmodule 