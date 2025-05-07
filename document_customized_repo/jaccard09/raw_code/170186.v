module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_opcode,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_dout0,grp_fu_224_p_ce,grp_fu_228_p_din0,grp_fu_228_p_din1,grp_fu_228_p_dout0,grp_fu_228_p_ce); 
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
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
output  [1:0] grp_fu_188_p_opcode;
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
reg[12:0] v227_0_address0;
reg v227_0_ce0;
reg[12:0] v227_0_address1;
reg v227_0_ce1;
reg[12:0] v227_1_address0;
reg v227_1_ce0;
reg[12:0] v227_1_address1;
reg v227_1_ce1;
reg[12:0] v227_2_address0;
reg v227_2_ce0;
reg[12:0] v227_2_address1;
reg v227_2_ce1;
reg[12:0] v227_3_address0;
reg v227_3_ce0;
reg[12:0] v227_3_address1;
reg v227_3_ce1;
reg[12:0] v227_4_address0;
reg v227_4_ce0;
reg[12:0] v227_4_address1;
reg v227_4_ce1;
reg[12:0] v227_5_address0;
reg v227_5_ce0;
reg[12:0] v227_5_address1;
reg v227_5_ce1;
reg[12:0] v227_6_address0;
reg v227_6_ce0;
reg[12:0] v227_6_address1;
reg v227_6_ce1;
reg[12:0] v227_7_address0;
reg v227_7_ce0;
reg[12:0] v227_7_address1;
reg v227_7_ce1;
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
wire   [0:0] icmp_ln168_fu_519_p2;
reg   [31:0] reg_425;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state12;
reg   [31:0] reg_429;
reg   [31:0] reg_433;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state13;
reg   [31:0] reg_437;
reg   [31:0] reg_441;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state14;
reg   [31:0] reg_445;
reg   [31:0] reg_449;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state15;
reg   [31:0] reg_453;
reg   [31:0] reg_457;
wire    ap_CS_fsm_state19;
reg   [31:0] reg_463;
reg   [31:0] reg_469;
reg   [31:0] reg_475;
reg   [31:0] reg_481;
reg   [31:0] reg_487;
reg   [31:0] reg_493;
reg   [31:0] reg_499;
reg   [31:0] reg_505;
wire   [7:0] add_ln168_fu_525_p2;
reg   [7:0] add_ln168_reg_1184;
wire   [15:0] zext_ln168_fu_531_p1;
reg   [15:0] zext_ln168_reg_1189;
wire   [2:0] trunc_ln168_fu_535_p1;
reg   [2:0] trunc_ln168_reg_1211;
wire   [12:0] mul_ln175_fu_553_p2;
reg   [12:0] mul_ln175_reg_1217;
wire   [0:0] cmp11_fu_559_p2;
reg   [0:0] cmp11_reg_1223;
wire   [15:0] v115_cast_fu_571_p1;
reg   [15:0] v115_cast_reg_1232;
wire    ap_CS_fsm_state3;
wire   [15:0] tmp_1_cast_fu_593_p1;
reg   [15:0] tmp_1_cast_reg_1238;
wire   [7:0] add_ln169_1_fu_597_p2;
reg   [7:0] add_ln169_1_reg_1244;
wire   [15:0] p_cast3371_fu_613_p1;
reg   [15:0] p_cast3371_reg_1249;
wire    ap_CS_fsm_state4;
wire   [15:0] p_cast3372_fu_623_p1;
reg   [15:0] p_cast3372_reg_1255;
wire   [15:0] p_cast3373_fu_633_p1;
reg   [15:0] p_cast3373_reg_1261;
wire    ap_CS_fsm_state5;
wire   [15:0] p_cast3374_fu_643_p1;
reg   [15:0] p_cast3374_reg_1267;
wire    ap_CS_fsm_state6;
wire   [15:0] p_cast3375_fu_661_p1;
reg   [15:0] p_cast3375_reg_1283;
wire   [15:0] p_cast3376_fu_671_p1;
reg   [15:0] p_cast3376_reg_1289;
wire   [15:0] p_cast3377_fu_689_p1;
reg   [15:0] p_cast3377_reg_1305;
wire   [15:0] add_ln169_cast3378_fu_699_p1;
reg   [15:0] add_ln169_cast3378_reg_1311;
wire   [15:0] p_cast3379_fu_717_p1;
reg   [15:0] p_cast3379_reg_1327;
wire   [15:0] p_cast3380_fu_727_p1;
reg   [15:0] p_cast3380_reg_1333;
wire   [15:0] p_cast3381_fu_745_p1;
reg   [15:0] p_cast3381_reg_1349;
wire   [15:0] p_cast3382_fu_755_p1;
reg   [15:0] p_cast3382_reg_1355;
wire   [15:0] p_cast3383_fu_773_p1;
reg   [15:0] p_cast3383_reg_1371;
wire   [15:0] p_cast3384_fu_783_p1;
reg   [15:0] p_cast3384_reg_1377;
reg   [31:0] v226_load_8_reg_1383;
wire    ap_CS_fsm_state11;
reg   [31:0] v226_load_9_reg_1388;
wire   [15:0] p_cast3385_fu_801_p1;
reg   [15:0] p_cast3385_reg_1403;
wire   [15:0] p_cast3386_fu_811_p1;
reg   [15:0] p_cast3386_reg_1409;
wire   [31:0] v119_fu_815_p1;
wire   [31:0] v132_fu_820_p1;
wire   [31:0] v143_fu_825_p1;
wire   [31:0] v154_fu_830_p1;
wire   [31:0] v165_fu_835_p1;
wire   [31:0] v176_fu_840_p1;
wire   [31:0] v187_fu_845_p1;
wire   [31:0] v198_fu_850_p1;
wire   [31:0] v209_fu_855_p1;
wire   [15:0] mul_ln171_fu_883_p2;
reg   [15:0] mul_ln171_reg_1490;
wire   [15:0] mul_ln186_fu_888_p2;
reg   [15:0] mul_ln186_reg_1495;
wire   [15:0] mul_ln199_fu_893_p2;
reg   [15:0] mul_ln199_reg_1500;
wire   [15:0] mul_ln212_fu_898_p2;
reg   [15:0] mul_ln212_reg_1505;
wire   [15:0] mul_ln225_fu_903_p2;
reg   [15:0] mul_ln225_reg_1510;
wire   [15:0] mul_ln238_fu_908_p2;
reg   [15:0] mul_ln238_reg_1515;
wire   [15:0] mul_ln251_fu_913_p2;
reg   [15:0] mul_ln251_reg_1520;
wire   [15:0] mul_ln264_fu_918_p2;
reg   [15:0] mul_ln264_reg_1525;
wire   [15:0] mul_ln277_fu_923_p2;
reg   [15:0] mul_ln277_reg_1530;
wire   [31:0] v119_1_fu_928_p1;
wire    ap_CS_fsm_state16;
wire   [31:0] v132_1_fu_932_p1;
wire   [31:0] v143_1_fu_937_p1;
wire   [31:0] v154_1_fu_942_p1;
wire   [31:0] v165_1_fu_947_p1;
wire   [31:0] v176_1_fu_952_p1;
wire   [31:0] v187_1_fu_957_p1;
wire   [31:0] v198_1_fu_962_p1;
wire   [31:0] v209_1_fu_967_p1;
wire   [15:0] mul_ln171_1_fu_972_p2;
reg   [15:0] mul_ln171_1_reg_1580;
wire   [15:0] mul_ln186_1_fu_977_p2;
reg   [15:0] mul_ln186_1_reg_1585;
wire   [15:0] mul_ln199_1_fu_982_p2;
reg   [15:0] mul_ln199_1_reg_1590;
wire   [15:0] mul_ln212_1_fu_987_p2;
reg   [15:0] mul_ln212_1_reg_1595;
wire   [15:0] mul_ln225_1_fu_992_p2;
reg   [15:0] mul_ln225_1_reg_1600;
wire   [15:0] mul_ln238_1_fu_997_p2;
reg   [15:0] mul_ln238_1_reg_1605;
wire   [15:0] mul_ln251_1_fu_1002_p2;
reg   [15:0] mul_ln251_1_reg_1610;
wire   [15:0] mul_ln264_1_fu_1007_p2;
reg   [15:0] mul_ln264_1_reg_1615;
wire   [15:0] mul_ln277_1_fu_1012_p2;
reg   [15:0] mul_ln277_1_reg_1620;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_ready;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_0_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_0_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_1_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_1_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_2_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_2_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_3_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_3_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_4_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_4_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_5_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_5_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_6_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_6_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_7_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_7_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1625_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1625_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1625_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1625_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1629_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1629_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1629_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_ready;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_0_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_0_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_1_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_1_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_2_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_2_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_3_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_3_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_4_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_4_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_5_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_5_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_6_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_6_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_7_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_7_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1625_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1625_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1625_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1625_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1629_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1629_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1629_p_ce;
reg   [7:0] v115_reg_291;
wire    ap_CS_fsm_state21;
reg    ap_block_state2;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_start_reg;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start_reg;
wire    ap_CS_fsm_state20;
wire   [63:0] p_cast3387_fu_647_p1;
wire   [63:0] p_cast_fu_651_p1;
wire   [63:0] p_cast3388_fu_675_p1;
wire   [63:0] p_cast3389_fu_679_p1;
wire   [63:0] p_cast3390_fu_703_p1;
wire   [63:0] p_cast3391_fu_707_p1;
wire   [63:0] p_cast3392_fu_731_p1;
wire   [63:0] p_cast3393_fu_735_p1;
wire   [63:0] p_cast3394_fu_759_p1;
wire   [63:0] p_cast3395_fu_763_p1;
wire   [63:0] p_cast3396_fu_787_p1;
wire   [63:0] p_cast3397_fu_791_p1;
wire   [63:0] p_cast3398_fu_859_p1;
wire   [63:0] p_cast3399_fu_863_p1;
wire   [63:0] p_cast3400_fu_867_p1;
wire   [63:0] p_cast3401_fu_871_p1;
wire   [63:0] p_cast3402_fu_875_p1;
wire   [63:0] p_cast3403_fu_879_p1;
reg   [7:0] v114_fu_120;
wire   [0:0] icmp_ln169_fu_565_p2;
reg    v236_write_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg   [31:0] grp_fu_389_p0;
reg   [31:0] grp_fu_393_p0;
reg   [31:0] grp_fu_397_p0;
reg   [31:0] grp_fu_401_p0;
reg   [31:0] grp_fu_405_p0;
reg   [31:0] grp_fu_409_p0;
reg   [31:0] grp_fu_413_p0;
reg   [31:0] grp_fu_417_p0;
reg   [31:0] grp_fu_421_p0;
wire   [4:0] lshr_ln_fu_539_p4;
wire   [4:0] mul_ln175_fu_553_p0;
wire   [8:0] mul_ln175_fu_553_p1;
wire   [6:0] tmp_fu_575_p4;
wire   [7:0] tmp_1_fu_585_p3;
wire   [7:0] empty_19_fu_607_p2;
wire   [7:0] empty_22_fu_617_p2;
wire   [7:0] empty_25_fu_627_p2;
wire   [7:0] empty_28_fu_637_p2;
wire   [15:0] grp_fu_1017_p3;
wire   [15:0] grp_fu_1025_p3;
wire   [7:0] empty_31_fu_655_p2;
wire   [7:0] empty_34_fu_665_p2;
wire   [15:0] grp_fu_1033_p3;
wire   [15:0] grp_fu_1041_p3;
wire   [7:0] empty_37_fu_683_p2;
wire   [7:0] add_ln169_fu_693_p2;
wire   [15:0] grp_fu_1049_p3;
wire   [15:0] grp_fu_1057_p3;
wire   [7:0] empty_42_fu_711_p2;
wire   [7:0] empty_45_fu_721_p2;
wire   [15:0] grp_fu_1065_p3;
wire   [15:0] grp_fu_1073_p3;
wire   [7:0] empty_48_fu_739_p2;
wire   [7:0] empty_51_fu_749_p2;
wire   [15:0] grp_fu_1081_p3;
wire   [15:0] grp_fu_1089_p3;
wire   [7:0] empty_54_fu_767_p2;
wire   [7:0] empty_57_fu_777_p2;
wire   [15:0] grp_fu_1097_p3;
wire   [15:0] grp_fu_1105_p3;
wire   [7:0] empty_60_fu_795_p2;
wire   [7:0] empty_63_fu_805_p2;
wire   [15:0] grp_fu_1113_p3;
wire   [15:0] grp_fu_1121_p3;
wire   [15:0] grp_fu_1129_p3;
wire   [15:0] grp_fu_1137_p3;
wire   [15:0] grp_fu_1145_p3;
wire   [15:0] grp_fu_1153_p3;
wire   [7:0] mul_ln171_fu_883_p0;
wire   [8:0] mul_ln171_fu_883_p1;
wire   [7:0] mul_ln186_fu_888_p0;
wire   [8:0] mul_ln186_fu_888_p1;
wire   [7:0] mul_ln199_fu_893_p0;
wire   [8:0] mul_ln199_fu_893_p1;
wire   [7:0] mul_ln212_fu_898_p0;
wire   [8:0] mul_ln212_fu_898_p1;
wire   [7:0] mul_ln225_fu_903_p0;
wire   [8:0] mul_ln225_fu_903_p1;
wire   [7:0] mul_ln238_fu_908_p0;
wire   [8:0] mul_ln238_fu_908_p1;
wire   [7:0] mul_ln251_fu_913_p0;
wire   [8:0] mul_ln251_fu_913_p1;
wire   [7:0] mul_ln264_fu_918_p0;
wire   [8:0] mul_ln264_fu_918_p1;
wire   [7:0] mul_ln277_fu_923_p0;
wire   [8:0] mul_ln277_fu_923_p1;
wire   [7:0] mul_ln171_1_fu_972_p0;
wire   [8:0] mul_ln171_1_fu_972_p1;
wire   [7:0] mul_ln186_1_fu_977_p0;
wire   [8:0] mul_ln186_1_fu_977_p1;
wire   [7:0] mul_ln199_1_fu_982_p0;
wire   [8:0] mul_ln199_1_fu_982_p1;
wire   [7:0] mul_ln212_1_fu_987_p0;
wire   [8:0] mul_ln212_1_fu_987_p1;
wire   [7:0] mul_ln225_1_fu_992_p0;
wire   [8:0] mul_ln225_1_fu_992_p1;
wire   [7:0] mul_ln238_1_fu_997_p0;
wire   [8:0] mul_ln238_1_fu_997_p1;
wire   [7:0] mul_ln251_1_fu_1002_p0;
wire   [8:0] mul_ln251_1_fu_1002_p1;
wire   [7:0] mul_ln264_1_fu_1007_p0;
wire   [8:0] mul_ln264_1_fu_1007_p1;
wire   [7:0] mul_ln277_1_fu_1012_p0;
wire   [8:0] mul_ln277_1_fu_1012_p1;
wire   [7:0] grp_fu_1017_p0;
wire   [7:0] grp_fu_1017_p1;
wire   [7:0] grp_fu_1017_p2;
wire   [7:0] grp_fu_1025_p0;
wire   [7:0] grp_fu_1025_p1;
wire   [7:0] grp_fu_1025_p2;
wire   [7:0] grp_fu_1033_p0;
wire   [7:0] grp_fu_1033_p1;
wire   [7:0] grp_fu_1033_p2;
wire   [7:0] grp_fu_1041_p0;
wire   [7:0] grp_fu_1041_p1;
wire   [7:0] grp_fu_1041_p2;
wire   [7:0] grp_fu_1049_p0;
wire   [7:0] grp_fu_1049_p1;
wire   [7:0] grp_fu_1049_p2;
wire   [7:0] grp_fu_1057_p0;
wire   [7:0] grp_fu_1057_p1;
wire   [7:0] grp_fu_1057_p2;
wire   [7:0] grp_fu_1065_p0;
wire   [7:0] grp_fu_1065_p1;
wire   [7:0] grp_fu_1065_p2;
wire   [7:0] grp_fu_1073_p0;
wire   [7:0] grp_fu_1073_p1;
wire   [7:0] grp_fu_1073_p2;
wire   [7:0] grp_fu_1081_p0;
wire   [7:0] grp_fu_1081_p1;
wire   [7:0] grp_fu_1081_p2;
wire   [7:0] grp_fu_1089_p0;
wire   [7:0] grp_fu_1089_p1;
wire   [7:0] grp_fu_1089_p2;
wire   [7:0] grp_fu_1097_p0;
wire   [7:0] grp_fu_1097_p1;
wire   [7:0] grp_fu_1097_p2;
wire   [7:0] grp_fu_1105_p0;
wire   [7:0] grp_fu_1105_p1;
wire   [7:0] grp_fu_1105_p2;
wire   [7:0] grp_fu_1113_p0;
wire   [7:0] grp_fu_1113_p1;
wire   [7:0] grp_fu_1113_p2;
wire   [7:0] grp_fu_1121_p0;
wire   [7:0] grp_fu_1121_p1;
wire   [7:0] grp_fu_1121_p2;
wire   [7:0] grp_fu_1129_p0;
wire   [7:0] grp_fu_1129_p1;
wire   [7:0] grp_fu_1129_p2;
wire   [7:0] grp_fu_1137_p0;
wire   [7:0] grp_fu_1137_p1;
wire   [7:0] grp_fu_1137_p2;
wire   [7:0] grp_fu_1145_p0;
wire   [7:0] grp_fu_1145_p1;
wire   [7:0] grp_fu_1145_p2;
wire   [7:0] grp_fu_1153_p0;
wire   [7:0] grp_fu_1153_p1;
wire   [7:0] grp_fu_1153_p2;
reg    grp_fu_389_ce;
wire    ap_CS_fsm_state18;
reg    grp_fu_393_ce;
reg    grp_fu_397_ce;
reg    grp_fu_401_ce;
reg    grp_fu_405_ce;
reg    grp_fu_409_ce;
reg    grp_fu_413_ce;
reg    grp_fu_417_ce;
reg    grp_fu_421_ce;
reg   [31:0] grp_fu_1625_p0;
reg   [31:0] grp_fu_1625_p1;
reg    grp_fu_1625_ce;
reg   [31:0] grp_fu_1629_p0;
reg   [31:0] grp_fu_1629_p1;
reg    grp_fu_1629_ce;
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
wire   [15:0] grp_fu_1017_p00;
wire   [15:0] grp_fu_1025_p00;
wire   [15:0] grp_fu_1033_p00;
wire   [15:0] grp_fu_1041_p00;
wire   [15:0] grp_fu_1049_p00;
wire   [15:0] grp_fu_1057_p00;
wire   [15:0] grp_fu_1065_p00;
wire   [15:0] grp_fu_1073_p00;
wire   [15:0] grp_fu_1081_p00;
wire   [15:0] grp_fu_1089_p00;
wire   [15:0] grp_fu_1097_p00;
wire   [15:0] grp_fu_1105_p00;
wire   [15:0] grp_fu_1113_p00;
wire   [15:0] grp_fu_1121_p00;
wire   [15:0] grp_fu_1129_p00;
wire   [15:0] grp_fu_1137_p00;
wire   [15:0] grp_fu_1145_p00;
wire   [15:0] grp_fu_1153_p00;
wire   [12:0] mul_ln175_fu_553_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 21'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start_reg = 1'b0;
#0 v114_fu_120 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_303(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_ready),.mul_ln175(mul_ln175_reg_1217),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_3_ce1),.v227_3_q1(v227_3_q1),.v227_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_4_address0),.v227_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_4_ce0),.v227_4_q0(v227_4_q0),.v227_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_4_address1),.v227_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_4_ce1),.v227_4_q1(v227_4_q1),.v227_5_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_5_address0),.v227_5_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_5_ce0),.v227_5_q0(v227_5_q0),.v227_5_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_5_address1),.v227_5_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_5_ce1),.v227_5_q1(v227_5_q1),.v227_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_6_address0),.v227_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_6_ce0),.v227_6_q0(v227_6_q0),.v227_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_6_address1),.v227_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_6_ce1),.v227_6_q1(v227_6_q1),.v227_7_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_7_address0),.v227_7_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_7_ce0),.v227_7_q0(v227_7_q0),.v227_7_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_7_address1),.v227_7_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_7_ce1),.v227_7_q1(v227_7_q1),.mul_ln171(mul_ln171_reg_1490),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_d1),.v225_q1(v225_q1),.mul_ln186(mul_ln186_reg_1495),.mul_ln199(mul_ln199_reg_1500),.mul_ln212(mul_ln212_reg_1505),.mul_ln225(mul_ln225_reg_1510),.mul_ln238(mul_ln238_reg_1515),.mul_ln251(mul_ln251_reg_1520),.mul_ln264(mul_ln264_reg_1525),.mul_ln277(mul_ln277_reg_1530),.cmp11(cmp11_reg_1223),.empty(trunc_ln168_reg_1211),.v120(reg_457),.v133(reg_463),.v144(reg_469),.v155(reg_475),.v166(reg_481),.v177(reg_487),.v188(reg_493),.v199(reg_499),.v210(reg_505),.grp_fu_1625_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1625_p_din0),.grp_fu_1625_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1625_p_din1),.grp_fu_1625_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1625_p_opcode),.grp_fu_1625_p_dout0(grp_fu_188_p_dout0),.grp_fu_1625_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1625_p_ce),.grp_fu_1629_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1629_p_din0),.grp_fu_1629_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1629_p_din1),.grp_fu_1629_p_dout0(grp_fu_192_p_dout0),.grp_fu_1629_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1629_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_53 grp_kernel_2mm_node1_Pipeline_label_53_fu_346(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_ready),.mul_ln175(mul_ln175_reg_1217),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_3_ce1),.v227_3_q1(v227_3_q1),.v227_4_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_4_address0),.v227_4_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_4_ce0),.v227_4_q0(v227_4_q0),.v227_4_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_4_address1),.v227_4_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_4_ce1),.v227_4_q1(v227_4_q1),.v227_5_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_5_address0),.v227_5_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_5_ce0),.v227_5_q0(v227_5_q0),.v227_5_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_5_address1),.v227_5_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_5_ce1),.v227_5_q1(v227_5_q1),.v227_6_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_6_address0),.v227_6_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_6_ce0),.v227_6_q0(v227_6_q0),.v227_6_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_6_address1),.v227_6_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_6_ce1),.v227_6_q1(v227_6_q1),.v227_7_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_7_address0),.v227_7_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_7_ce0),.v227_7_q0(v227_7_q0),.v227_7_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_7_address1),.v227_7_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_7_ce1),.v227_7_q1(v227_7_q1),.mul_ln171_1(mul_ln171_1_reg_1580),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_d1),.v225_q1(v225_q1),.mul_ln186_1(mul_ln186_1_reg_1585),.mul_ln199_1(mul_ln199_1_reg_1590),.mul_ln212_1(mul_ln212_1_reg_1595),.mul_ln225_1(mul_ln225_1_reg_1600),.mul_ln238_1(mul_ln238_1_reg_1605),.mul_ln251_1(mul_ln251_1_reg_1610),.mul_ln264_1(mul_ln264_1_reg_1615),.mul_ln277_1(mul_ln277_1_reg_1620),.cmp11(cmp11_reg_1223),.empty(trunc_ln168_reg_1211),.v120_1(reg_457),.v133_1(reg_463),.v144_1(reg_469),.v155_1(reg_475),.v166_1(reg_481),.v177_1(reg_487),.v188_1(reg_493),.v199_1(reg_499),.v210_1(reg_505),.grp_fu_1625_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1625_p_din0),.grp_fu_1625_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1625_p_din1),.grp_fu_1625_p_opcode(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1625_p_opcode),.grp_fu_1625_p_dout0(grp_fu_188_p_dout0),.grp_fu_1625_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1625_p_ce),.grp_fu_1629_p_din0(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1629_p_din0),.grp_fu_1629_p_din1(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1629_p_din1),.grp_fu_1629_p_dout0(grp_fu_192_p_dout0),.grp_fu_1629_p_ce(grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1629_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U107(.din0(mul_ln175_fu_553_p0),.din1(mul_ln175_fu_553_p1),.dout(mul_ln175_fu_553_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U108(.din0(mul_ln171_fu_883_p0),.din1(mul_ln171_fu_883_p1),.dout(mul_ln171_fu_883_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U109(.din0(mul_ln186_fu_888_p0),.din1(mul_ln186_fu_888_p1),.dout(mul_ln186_fu_888_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U110(.din0(mul_ln199_fu_893_p0),.din1(mul_ln199_fu_893_p1),.dout(mul_ln199_fu_893_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U111(.din0(mul_ln212_fu_898_p0),.din1(mul_ln212_fu_898_p1),.dout(mul_ln212_fu_898_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U112(.din0(mul_ln225_fu_903_p0),.din1(mul_ln225_fu_903_p1),.dout(mul_ln225_fu_903_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U113(.din0(mul_ln238_fu_908_p0),.din1(mul_ln238_fu_908_p1),.dout(mul_ln238_fu_908_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U114(.din0(mul_ln251_fu_913_p0),.din1(mul_ln251_fu_913_p1),.dout(mul_ln251_fu_913_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U115(.din0(mul_ln264_fu_918_p0),.din1(mul_ln264_fu_918_p1),.dout(mul_ln264_fu_918_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U116(.din0(mul_ln277_fu_923_p0),.din1(mul_ln277_fu_923_p1),.dout(mul_ln277_fu_923_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U117(.din0(mul_ln171_1_fu_972_p0),.din1(mul_ln171_1_fu_972_p1),.dout(mul_ln171_1_fu_972_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U118(.din0(mul_ln186_1_fu_977_p0),.din1(mul_ln186_1_fu_977_p1),.dout(mul_ln186_1_fu_977_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U119(.din0(mul_ln199_1_fu_982_p0),.din1(mul_ln199_1_fu_982_p1),.dout(mul_ln199_1_fu_982_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U120(.din0(mul_ln212_1_fu_987_p0),.din1(mul_ln212_1_fu_987_p1),.dout(mul_ln212_1_fu_987_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U121(.din0(mul_ln225_1_fu_992_p0),.din1(mul_ln225_1_fu_992_p1),.dout(mul_ln225_1_fu_992_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U122(.din0(mul_ln238_1_fu_997_p0),.din1(mul_ln238_1_fu_997_p1),.dout(mul_ln238_1_fu_997_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U123(.din0(mul_ln251_1_fu_1002_p0),.din1(mul_ln251_1_fu_1002_p1),.dout(mul_ln251_1_fu_1002_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U124(.din0(mul_ln264_1_fu_1007_p0),.din1(mul_ln264_1_fu_1007_p1),.dout(mul_ln264_1_fu_1007_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U125(.din0(mul_ln277_1_fu_1012_p0),.din1(mul_ln277_1_fu_1012_p1),.dout(mul_ln277_1_fu_1012_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U126(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1017_p0),.din1(grp_fu_1017_p1),.din2(grp_fu_1017_p2),.ce(1'b1),.dout(grp_fu_1017_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U127(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1025_p0),.din1(grp_fu_1025_p1),.din2(grp_fu_1025_p2),.ce(1'b1),.dout(grp_fu_1025_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U128(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1033_p0),.din1(grp_fu_1033_p1),.din2(grp_fu_1033_p2),.ce(1'b1),.dout(grp_fu_1033_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U129(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1041_p0),.din1(grp_fu_1041_p1),.din2(grp_fu_1041_p2),.ce(1'b1),.dout(grp_fu_1041_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U130(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1049_p0),.din1(grp_fu_1049_p1),.din2(grp_fu_1049_p2),.ce(1'b1),.dout(grp_fu_1049_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U131(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1057_p0),.din1(grp_fu_1057_p1),.din2(grp_fu_1057_p2),.ce(1'b1),.dout(grp_fu_1057_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U132(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1065_p0),.din1(grp_fu_1065_p1),.din2(grp_fu_1065_p2),.ce(1'b1),.dout(grp_fu_1065_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U133(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1073_p0),.din1(grp_fu_1073_p1),.din2(grp_fu_1073_p2),.ce(1'b1),.dout(grp_fu_1073_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U134(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1081_p0),.din1(grp_fu_1081_p1),.din2(grp_fu_1081_p2),.ce(1'b1),.dout(grp_fu_1081_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U135(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1089_p0),.din1(grp_fu_1089_p1),.din2(grp_fu_1089_p2),.ce(1'b1),.dout(grp_fu_1089_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U136(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1097_p0),.din1(grp_fu_1097_p1),.din2(grp_fu_1097_p2),.ce(1'b1),.dout(grp_fu_1097_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U137(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1105_p0),.din1(grp_fu_1105_p1),.din2(grp_fu_1105_p2),.ce(1'b1),.dout(grp_fu_1105_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U138(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1113_p0),.din1(grp_fu_1113_p1),.din2(grp_fu_1113_p2),.ce(1'b1),.dout(grp_fu_1113_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U139(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1121_p0),.din1(grp_fu_1121_p1),.din2(grp_fu_1121_p2),.ce(1'b1),.dout(grp_fu_1121_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U140(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1129_p0),.din1(grp_fu_1129_p1),.din2(grp_fu_1129_p2),.ce(1'b1),.dout(grp_fu_1129_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U141(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1137_p0),.din1(grp_fu_1137_p1),.din2(grp_fu_1137_p2),.ce(1'b1),.dout(grp_fu_1137_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U142(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1145_p0),.din1(grp_fu_1145_p1),.din2(grp_fu_1145_p2),.ce(1'b1),.dout(grp_fu_1145_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U143(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1153_p0),.din1(grp_fu_1153_p1),.din2(grp_fu_1153_p2),.ce(1'b1),.dout(grp_fu_1153_p3));
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
        grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_120 <= 8'd0;
    end else if (((icmp_ln169_fu_565_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_120 <= add_ln168_reg_1184;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_519_p2 == 1'd0))) begin
        v115_reg_291 <= 8'd0;
    end else if (((grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state21))) begin
        v115_reg_291 <= add_ln169_1_reg_1244;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_1184 <= add_ln168_fu_525_p2;
        cmp11_reg_1223 <= cmp11_fu_559_p2;
        mul_ln175_reg_1217 <= mul_ln175_fu_553_p2;
        trunc_ln168_reg_1211 <= trunc_ln168_fu_535_p1;
        zext_ln168_reg_1189[7 : 0] <= zext_ln168_fu_531_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_1_reg_1244 <= add_ln169_1_fu_597_p2;
        tmp_1_cast_reg_1238[7 : 1] <= tmp_1_cast_fu_593_p1[7 : 1];
        v115_cast_reg_1232[7 : 0] <= v115_cast_fu_571_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln169_cast3378_reg_1311[7 : 0] <= add_ln169_cast3378_fu_699_p1[7 : 0];
        p_cast3377_reg_1305[7 : 0] <= p_cast3377_fu_689_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        mul_ln171_1_reg_1580 <= mul_ln171_1_fu_972_p2;
        mul_ln186_1_reg_1585 <= mul_ln186_1_fu_977_p2;
        mul_ln199_1_reg_1590 <= mul_ln199_1_fu_982_p2;
        mul_ln212_1_reg_1595 <= mul_ln212_1_fu_987_p2;
        mul_ln225_1_reg_1600 <= mul_ln225_1_fu_992_p2;
        mul_ln238_1_reg_1605 <= mul_ln238_1_fu_997_p2;
        mul_ln251_1_reg_1610 <= mul_ln251_1_fu_1002_p2;
        mul_ln264_1_reg_1615 <= mul_ln264_1_fu_1007_p2;
        mul_ln277_1_reg_1620 <= mul_ln277_1_fu_1012_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1490 <= mul_ln171_fu_883_p2;
        mul_ln186_reg_1495 <= mul_ln186_fu_888_p2;
        mul_ln199_reg_1500 <= mul_ln199_fu_893_p2;
        mul_ln212_reg_1505 <= mul_ln212_fu_898_p2;
        mul_ln225_reg_1510 <= mul_ln225_fu_903_p2;
        mul_ln238_reg_1515 <= mul_ln238_fu_908_p2;
        mul_ln251_reg_1520 <= mul_ln251_fu_913_p2;
        mul_ln264_reg_1525 <= mul_ln264_fu_918_p2;
        mul_ln277_reg_1530 <= mul_ln277_fu_923_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        p_cast3371_reg_1249[7 : 0] <= p_cast3371_fu_613_p1[7 : 0];
        p_cast3372_reg_1255[7 : 0] <= p_cast3372_fu_623_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        p_cast3373_reg_1261[7 : 0] <= p_cast3373_fu_633_p1[7 : 0];
        p_cast3374_reg_1267[7 : 0] <= p_cast3374_fu_643_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        p_cast3375_reg_1283[7 : 0] <= p_cast3375_fu_661_p1[7 : 0];
        p_cast3376_reg_1289[7 : 0] <= p_cast3376_fu_671_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        p_cast3379_reg_1327[7 : 0] <= p_cast3379_fu_717_p1[7 : 0];
        p_cast3380_reg_1333[7 : 0] <= p_cast3380_fu_727_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        p_cast3381_reg_1349[7 : 0] <= p_cast3381_fu_745_p1[7 : 0];
        p_cast3382_reg_1355[7 : 0] <= p_cast3382_fu_755_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        p_cast3383_reg_1371[7 : 0] <= p_cast3383_fu_773_p1[7 : 0];
        p_cast3384_reg_1377[7 : 0] <= p_cast3384_fu_783_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        p_cast3385_reg_1403[7 : 0] <= p_cast3385_fu_801_p1[7 : 0];
        p_cast3386_reg_1409[7 : 0] <= p_cast3386_fu_811_p1[7 : 0];
        v226_load_8_reg_1383 <= v226_q1;
        v226_load_9_reg_1388 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_425 <= v226_q1;
        reg_429 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state8))) begin
        reg_433 <= v226_q1;
        reg_437 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state9))) begin
        reg_441 <= v226_q1;
        reg_445 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state10))) begin
        reg_449 <= v226_q1;
        reg_453 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15))) begin
        reg_457 <= grp_fu_196_p_dout0;
        reg_463 <= grp_fu_200_p_dout0;
        reg_469 <= grp_fu_204_p_dout0;
        reg_475 <= grp_fu_208_p_dout0;
        reg_481 <= grp_fu_212_p_dout0;
        reg_487 <= grp_fu_216_p_dout0;
        reg_493 <= grp_fu_220_p_dout0;
        reg_499 <= grp_fu_224_p_dout0;
        reg_505 <= grp_fu_228_p_dout0;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_519_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_519_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1625_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1625_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1625_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1625_p_ce;
    end else begin
        grp_fu_1625_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1625_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1625_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1625_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1625_p_din0;
    end else begin
        grp_fu_1625_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1625_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1625_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1625_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1625_p_din1;
    end else begin
        grp_fu_1625_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1629_ce = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1629_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1629_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1629_p_ce;
    end else begin
        grp_fu_1629_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1629_p0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1629_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1629_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1629_p_din0;
    end else begin
        grp_fu_1629_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        grp_fu_1629_p1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_grp_fu_1629_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1629_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_grp_fu_1629_p_din1;
    end else begin
        grp_fu_1629_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_389_ce = 1'b1;
    end else begin
        grp_fu_389_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_389_p0 = v119_1_fu_928_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_389_p0 = v119_fu_815_p1;
    end else begin
        grp_fu_389_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_393_ce = 1'b1;
    end else begin
        grp_fu_393_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_393_p0 = v132_1_fu_932_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_393_p0 = v132_fu_820_p1;
    end else begin
        grp_fu_393_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_397_ce = 1'b1;
    end else begin
        grp_fu_397_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_397_p0 = v143_1_fu_937_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_397_p0 = v143_fu_825_p1;
    end else begin
        grp_fu_397_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_401_ce = 1'b1;
    end else begin
        grp_fu_401_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_401_p0 = v154_1_fu_942_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_401_p0 = v154_fu_830_p1;
    end else begin
        grp_fu_401_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_405_ce = 1'b1;
    end else begin
        grp_fu_405_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_405_p0 = v165_1_fu_947_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_405_p0 = v165_fu_835_p1;
    end else begin
        grp_fu_405_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_409_ce = 1'b1;
    end else begin
        grp_fu_409_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_409_p0 = v176_1_fu_952_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_409_p0 = v176_fu_840_p1;
    end else begin
        grp_fu_409_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_413_ce = 1'b1;
    end else begin
        grp_fu_413_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_413_p0 = v187_1_fu_957_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_413_p0 = v187_fu_845_p1;
    end else begin
        grp_fu_413_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_417_ce = 1'b1;
    end else begin
        grp_fu_417_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_417_p0 = v198_1_fu_962_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_417_p0 = v198_fu_850_p1;
    end else begin
        grp_fu_417_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state16) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state14) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state12) | ((grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17)))) begin
        grp_fu_421_ce = 1'b1;
    end else begin
        grp_fu_421_ce = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_421_p0 = v209_1_fu_967_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_421_p0 = v209_fu_855_p1;
    end else begin
        grp_fu_421_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_address0_local = p_cast3403_fu_879_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_address0_local = p_cast3401_fu_871_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_address0_local = p_cast3399_fu_863_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_address0_local = p_cast3397_fu_791_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast3395_fu_763_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast3393_fu_735_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast3391_fu_707_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast3389_fu_679_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast_fu_651_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_address1_local = p_cast3402_fu_875_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        v226_address1_local = p_cast3400_fu_867_p1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_address1_local = p_cast3398_fu_859_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_address1_local = p_cast3396_fu_787_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast3394_fu_759_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast3392_fu_731_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast3390_fu_703_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast3388_fu_675_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address1_local = p_cast3387_fu_647_p1;
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
        v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_0_address0;
    end else begin
        v227_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_0_address1;
    end else begin
        v227_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_0_ce0;
    end else begin
        v227_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_0_ce1;
    end else begin
        v227_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_1_address0;
    end else begin
        v227_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_1_address1;
    end else begin
        v227_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_1_ce0;
    end else begin
        v227_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_1_ce1;
    end else begin
        v227_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_2_address0;
    end else begin
        v227_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_2_address1;
    end else begin
        v227_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_2_ce0;
    end else begin
        v227_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_2_ce1;
    end else begin
        v227_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_3_address0;
    end else begin
        v227_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_3_address1;
    end else begin
        v227_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_3_ce0;
    end else begin
        v227_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_3_ce1;
    end else begin
        v227_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_4_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_4_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_4_address0;
    end else begin
        v227_4_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_4_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_4_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_4_address1;
    end else begin
        v227_4_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_4_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_4_ce0;
    end else begin
        v227_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_4_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_4_ce1;
    end else begin
        v227_4_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_5_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_5_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_5_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_5_address0;
    end else begin
        v227_5_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_5_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_5_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_5_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_5_address1;
    end else begin
        v227_5_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_5_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_5_ce0;
    end else begin
        v227_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_5_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_5_ce1;
    end else begin
        v227_5_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_6_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_6_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_6_address0;
    end else begin
        v227_6_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_6_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_6_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_6_address1;
    end else begin
        v227_6_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_6_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_6_ce0;
    end else begin
        v227_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_6_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_6_ce1;
    end else begin
        v227_6_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_7_address0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_7_address0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_7_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_7_address0;
    end else begin
        v227_7_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_7_address1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_7_address1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_7_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_7_address1;
    end else begin
        v227_7_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_7_ce0;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_7_ce0;
    end else begin
        v227_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        v227_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_v227_7_ce1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        v227_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_v227_7_ce1;
    end else begin
        v227_7_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_519_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_519_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_519_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_519_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_565_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_fu_525_p2 = (v114_fu_120 + 8'd1);
assign add_ln169_1_fu_597_p2 = (v115_reg_291 + 8'd18);
assign add_ln169_cast3378_fu_699_p1 = add_ln169_fu_693_p2;
assign add_ln169_fu_693_p2 = (v115_reg_291 + 8'd9);
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
    ap_block_state2 = ((icmp_ln168_fu_519_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_559_p2 = ((v114_fu_120 == 8'd0) ? 1'b1 : 1'b0);
assign empty_19_fu_607_p2 = (v115_reg_291 + 8'd2);
assign empty_22_fu_617_p2 = (v115_reg_291 + 8'd3);
assign empty_25_fu_627_p2 = (v115_reg_291 + 8'd4);
assign empty_28_fu_637_p2 = (v115_reg_291 + 8'd5);
assign empty_31_fu_655_p2 = (v115_reg_291 + 8'd6);
assign empty_34_fu_665_p2 = (v115_reg_291 + 8'd7);
assign empty_37_fu_683_p2 = (v115_reg_291 + 8'd8);
assign empty_42_fu_711_p2 = (v115_reg_291 + 8'd10);
assign empty_45_fu_721_p2 = (v115_reg_291 + 8'd11);
assign empty_48_fu_739_p2 = (v115_reg_291 + 8'd12);
assign empty_51_fu_749_p2 = (v115_reg_291 + 8'd13);
assign empty_54_fu_767_p2 = (v115_reg_291 + 8'd14);
assign empty_57_fu_777_p2 = (v115_reg_291 + 8'd15);
assign empty_60_fu_795_p2 = (v115_reg_291 + 8'd16);
assign empty_63_fu_805_p2 = (v115_reg_291 + 8'd17);
assign grp_fu_1017_p0 = grp_fu_1017_p00;
assign grp_fu_1017_p00 = v115_reg_291;
assign grp_fu_1017_p1 = 16'd210;
assign grp_fu_1017_p2 = zext_ln168_reg_1189;
assign grp_fu_1025_p0 = grp_fu_1025_p00;
assign grp_fu_1025_p00 = tmp_1_fu_585_p3;
assign grp_fu_1025_p1 = 16'd210;
assign grp_fu_1025_p2 = zext_ln168_reg_1189;
assign grp_fu_1033_p0 = grp_fu_1033_p00;
assign grp_fu_1033_p00 = empty_19_fu_607_p2;
assign grp_fu_1033_p1 = 16'd210;
assign grp_fu_1033_p2 = zext_ln168_reg_1189;
assign grp_fu_1041_p0 = grp_fu_1041_p00;
assign grp_fu_1041_p00 = empty_22_fu_617_p2;
assign grp_fu_1041_p1 = 16'd210;
assign grp_fu_1041_p2 = zext_ln168_reg_1189;
assign grp_fu_1049_p0 = grp_fu_1049_p00;
assign grp_fu_1049_p00 = empty_25_fu_627_p2;
assign grp_fu_1049_p1 = 16'd210;
assign grp_fu_1049_p2 = zext_ln168_reg_1189;
assign grp_fu_1057_p0 = grp_fu_1057_p00;
assign grp_fu_1057_p00 = empty_28_fu_637_p2;
assign grp_fu_1057_p1 = 16'd210;
assign grp_fu_1057_p2 = zext_ln168_reg_1189;
assign grp_fu_1065_p0 = grp_fu_1065_p00;
assign grp_fu_1065_p00 = empty_31_fu_655_p2;
assign grp_fu_1065_p1 = 16'd210;
assign grp_fu_1065_p2 = zext_ln168_reg_1189;
assign grp_fu_1073_p0 = grp_fu_1073_p00;
assign grp_fu_1073_p00 = empty_34_fu_665_p2;
assign grp_fu_1073_p1 = 16'd210;
assign grp_fu_1073_p2 = zext_ln168_reg_1189;
assign grp_fu_1081_p0 = grp_fu_1081_p00;
assign grp_fu_1081_p00 = empty_37_fu_683_p2;
assign grp_fu_1081_p1 = 16'd210;
assign grp_fu_1081_p2 = zext_ln168_reg_1189;
assign grp_fu_1089_p0 = grp_fu_1089_p00;
assign grp_fu_1089_p00 = add_ln169_fu_693_p2;
assign grp_fu_1089_p1 = 16'd210;
assign grp_fu_1089_p2 = zext_ln168_reg_1189;
assign grp_fu_1097_p0 = grp_fu_1097_p00;
assign grp_fu_1097_p00 = empty_42_fu_711_p2;
assign grp_fu_1097_p1 = 16'd210;
assign grp_fu_1097_p2 = zext_ln168_reg_1189;
assign grp_fu_1105_p0 = grp_fu_1105_p00;
assign grp_fu_1105_p00 = empty_45_fu_721_p2;
assign grp_fu_1105_p1 = 16'd210;
assign grp_fu_1105_p2 = zext_ln168_reg_1189;
assign grp_fu_1113_p0 = grp_fu_1113_p00;
assign grp_fu_1113_p00 = empty_48_fu_739_p2;
assign grp_fu_1113_p1 = 16'd210;
assign grp_fu_1113_p2 = zext_ln168_reg_1189;
assign grp_fu_1121_p0 = grp_fu_1121_p00;
assign grp_fu_1121_p00 = empty_51_fu_749_p2;
assign grp_fu_1121_p1 = 16'd210;
assign grp_fu_1121_p2 = zext_ln168_reg_1189;
assign grp_fu_1129_p0 = grp_fu_1129_p00;
assign grp_fu_1129_p00 = empty_54_fu_767_p2;
assign grp_fu_1129_p1 = 16'd210;
assign grp_fu_1129_p2 = zext_ln168_reg_1189;
assign grp_fu_1137_p0 = grp_fu_1137_p00;
assign grp_fu_1137_p00 = empty_57_fu_777_p2;
assign grp_fu_1137_p1 = 16'd210;
assign grp_fu_1137_p2 = zext_ln168_reg_1189;
assign grp_fu_1145_p0 = grp_fu_1145_p00;
assign grp_fu_1145_p00 = empty_60_fu_795_p2;
assign grp_fu_1145_p1 = 16'd210;
assign grp_fu_1145_p2 = zext_ln168_reg_1189;
assign grp_fu_1153_p0 = grp_fu_1153_p00;
assign grp_fu_1153_p00 = empty_63_fu_805_p2;
assign grp_fu_1153_p1 = 16'd210;
assign grp_fu_1153_p2 = zext_ln168_reg_1189;
assign grp_fu_188_p_ce = grp_fu_1625_ce;
assign grp_fu_188_p_din0 = grp_fu_1625_p0;
assign grp_fu_188_p_din1 = grp_fu_1625_p1;
assign grp_fu_188_p_opcode = 2'd0;
assign grp_fu_192_p_ce = grp_fu_1629_ce;
assign grp_fu_192_p_din0 = grp_fu_1629_p0;
assign grp_fu_192_p_din1 = grp_fu_1629_p1;
assign grp_fu_196_p_ce = grp_fu_389_ce;
assign grp_fu_196_p_din0 = grp_fu_389_p0;
assign grp_fu_196_p_din1 = v113;
assign grp_fu_200_p_ce = grp_fu_393_ce;
assign grp_fu_200_p_din0 = grp_fu_393_p0;
assign grp_fu_200_p_din1 = v113;
assign grp_fu_204_p_ce = grp_fu_397_ce;
assign grp_fu_204_p_din0 = grp_fu_397_p0;
assign grp_fu_204_p_din1 = v113;
assign grp_fu_208_p_ce = grp_fu_401_ce;
assign grp_fu_208_p_din0 = grp_fu_401_p0;
assign grp_fu_208_p_din1 = v113;
assign grp_fu_212_p_ce = grp_fu_405_ce;
assign grp_fu_212_p_din0 = grp_fu_405_p0;
assign grp_fu_212_p_din1 = v113;
assign grp_fu_216_p_ce = grp_fu_409_ce;
assign grp_fu_216_p_din0 = grp_fu_409_p0;
assign grp_fu_216_p_din1 = v113;
assign grp_fu_220_p_ce = grp_fu_413_ce;
assign grp_fu_220_p_din0 = grp_fu_413_p0;
assign grp_fu_220_p_din1 = v113;
assign grp_fu_224_p_ce = grp_fu_417_ce;
assign grp_fu_224_p_din0 = grp_fu_417_p0;
assign grp_fu_224_p_din1 = v113;
assign grp_fu_228_p_ce = grp_fu_421_ce;
assign grp_fu_228_p_din0 = grp_fu_421_p0;
assign grp_fu_228_p_din1 = v113;
assign grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start = grp_kernel_2mm_node1_Pipeline_label_53_fu_346_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_303_ap_start_reg;
assign icmp_ln168_fu_519_p2 = ((v114_fu_120 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_565_p2 = ((v115_reg_291 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_539_p4 = {{v114_fu_120[7:3]}};
assign mul_ln171_1_fu_972_p0 = add_ln169_cast3378_reg_1311;
assign mul_ln171_1_fu_972_p1 = 16'd190;
assign mul_ln171_fu_883_p0 = v115_cast_reg_1232;
assign mul_ln171_fu_883_p1 = 16'd190;
assign mul_ln175_fu_553_p0 = mul_ln175_fu_553_p00;
assign mul_ln175_fu_553_p00 = lshr_ln_fu_539_p4;
assign mul_ln175_fu_553_p1 = 13'd190;
assign mul_ln186_1_fu_977_p0 = p_cast3379_reg_1327;
assign mul_ln186_1_fu_977_p1 = 16'd190;
assign mul_ln186_fu_888_p0 = tmp_1_cast_reg_1238;
assign mul_ln186_fu_888_p1 = 16'd190;
assign mul_ln199_1_fu_982_p0 = p_cast3380_reg_1333;
assign mul_ln199_1_fu_982_p1 = 16'd190;
assign mul_ln199_fu_893_p0 = p_cast3371_reg_1249;
assign mul_ln199_fu_893_p1 = 16'd190;
assign mul_ln212_1_fu_987_p0 = p_cast3381_reg_1349;
assign mul_ln212_1_fu_987_p1 = 16'd190;
assign mul_ln212_fu_898_p0 = p_cast3372_reg_1255;
assign mul_ln212_fu_898_p1 = 16'd190;
assign mul_ln225_1_fu_992_p0 = p_cast3382_reg_1355;
assign mul_ln225_1_fu_992_p1 = 16'd190;
assign mul_ln225_fu_903_p0 = p_cast3373_reg_1261;
assign mul_ln225_fu_903_p1 = 16'd190;
assign mul_ln238_1_fu_997_p0 = p_cast3383_reg_1371;
assign mul_ln238_1_fu_997_p1 = 16'd190;
assign mul_ln238_fu_908_p0 = p_cast3374_reg_1267;
assign mul_ln238_fu_908_p1 = 16'd190;
assign mul_ln251_1_fu_1002_p0 = p_cast3384_reg_1377;
assign mul_ln251_1_fu_1002_p1 = 16'd190;
assign mul_ln251_fu_913_p0 = p_cast3375_reg_1283;
assign mul_ln251_fu_913_p1 = 16'd190;
assign mul_ln264_1_fu_1007_p0 = p_cast3385_reg_1403;
assign mul_ln264_1_fu_1007_p1 = 16'd190;
assign mul_ln264_fu_918_p0 = p_cast3376_reg_1289;
assign mul_ln264_fu_918_p1 = 16'd190;
assign mul_ln277_1_fu_1012_p0 = p_cast3386_reg_1409;
assign mul_ln277_1_fu_1012_p1 = 16'd190;
assign mul_ln277_fu_923_p0 = p_cast3377_reg_1305;
assign mul_ln277_fu_923_p1 = 16'd190;
assign p_cast3371_fu_613_p1 = empty_19_fu_607_p2;
assign p_cast3372_fu_623_p1 = empty_22_fu_617_p2;
assign p_cast3373_fu_633_p1 = empty_25_fu_627_p2;
assign p_cast3374_fu_643_p1 = empty_28_fu_637_p2;
assign p_cast3375_fu_661_p1 = empty_31_fu_655_p2;
assign p_cast3376_fu_671_p1 = empty_34_fu_665_p2;
assign p_cast3377_fu_689_p1 = empty_37_fu_683_p2;
assign p_cast3379_fu_717_p1 = empty_42_fu_711_p2;
assign p_cast3380_fu_727_p1 = empty_45_fu_721_p2;
assign p_cast3381_fu_745_p1 = empty_48_fu_739_p2;
assign p_cast3382_fu_755_p1 = empty_51_fu_749_p2;
assign p_cast3383_fu_773_p1 = empty_54_fu_767_p2;
assign p_cast3384_fu_783_p1 = empty_57_fu_777_p2;
assign p_cast3385_fu_801_p1 = empty_60_fu_795_p2;
assign p_cast3386_fu_811_p1 = empty_63_fu_805_p2;
assign p_cast3387_fu_647_p1 = grp_fu_1017_p3;
assign p_cast3388_fu_675_p1 = grp_fu_1033_p3;
assign p_cast3389_fu_679_p1 = grp_fu_1041_p3;
assign p_cast3390_fu_703_p1 = grp_fu_1049_p3;
assign p_cast3391_fu_707_p1 = grp_fu_1057_p3;
assign p_cast3392_fu_731_p1 = grp_fu_1065_p3;
assign p_cast3393_fu_735_p1 = grp_fu_1073_p3;
assign p_cast3394_fu_759_p1 = grp_fu_1081_p3;
assign p_cast3395_fu_763_p1 = grp_fu_1089_p3;
assign p_cast3396_fu_787_p1 = grp_fu_1097_p3;
assign p_cast3397_fu_791_p1 = grp_fu_1105_p3;
assign p_cast3398_fu_859_p1 = grp_fu_1113_p3;
assign p_cast3399_fu_863_p1 = grp_fu_1121_p3;
assign p_cast3400_fu_867_p1 = grp_fu_1129_p3;
assign p_cast3401_fu_871_p1 = grp_fu_1137_p3;
assign p_cast3402_fu_875_p1 = grp_fu_1145_p3;
assign p_cast3403_fu_879_p1 = grp_fu_1153_p3;
assign p_cast_fu_651_p1 = grp_fu_1025_p3;
assign tmp_1_cast_fu_593_p1 = tmp_1_fu_585_p3;
assign tmp_1_fu_585_p3 = {{tmp_fu_575_p4}, {1'd1}};
assign tmp_fu_575_p4 = {{v115_reg_291[7:1]}};
assign trunc_ln168_fu_535_p1 = v114_fu_120[2:0];
assign v115_cast_fu_571_p1 = v115_reg_291;
assign v119_1_fu_928_p1 = v226_load_9_reg_1388;
assign v119_fu_815_p1 = reg_425;
assign v132_1_fu_932_p1 = reg_425;
assign v132_fu_820_p1 = reg_429;
assign v143_1_fu_937_p1 = reg_429;
assign v143_fu_825_p1 = reg_433;
assign v154_1_fu_942_p1 = reg_433;
assign v154_fu_830_p1 = reg_437;
assign v165_1_fu_947_p1 = reg_437;
assign v165_fu_835_p1 = reg_441;
assign v176_1_fu_952_p1 = reg_441;
assign v176_fu_840_p1 = reg_445;
assign v187_1_fu_957_p1 = reg_445;
assign v187_fu_845_p1 = reg_449;
assign v198_1_fu_962_p1 = reg_449;
assign v198_fu_850_p1 = reg_453;
assign v209_1_fu_967_p1 = reg_453;
assign v209_fu_855_p1 = v226_load_8_reg_1383;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_531_p1 = v114_fu_120;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1189[15:8] <= 8'b00000000;
    v115_cast_reg_1232[15:8] <= 8'b00000000;
    tmp_1_cast_reg_1238[0] <= 1'b1;
    tmp_1_cast_reg_1238[15:8] <= 8'b00000000;
    p_cast3371_reg_1249[15:8] <= 8'b00000000;
    p_cast3372_reg_1255[15:8] <= 8'b00000000;
    p_cast3373_reg_1261[15:8] <= 8'b00000000;
    p_cast3374_reg_1267[15:8] <= 8'b00000000;
    p_cast3375_reg_1283[15:8] <= 8'b00000000;
    p_cast3376_reg_1289[15:8] <= 8'b00000000;
    p_cast3377_reg_1305[15:8] <= 8'b00000000;
    add_ln169_cast3378_reg_1311[15:8] <= 8'b00000000;
    p_cast3379_reg_1327[15:8] <= 8'b00000000;
    p_cast3380_reg_1333[15:8] <= 8'b00000000;
    p_cast3381_reg_1349[15:8] <= 8'b00000000;
    p_cast3382_reg_1355[15:8] <= 8'b00000000;
    p_cast3383_reg_1371[15:8] <= 8'b00000000;
    p_cast3384_reg_1377[15:8] <= 8'b00000000;
    p_cast3385_reg_1403[15:8] <= 8'b00000000;
    p_cast3386_reg_1409[15:8] <= 8'b00000000;
end
endmodule 