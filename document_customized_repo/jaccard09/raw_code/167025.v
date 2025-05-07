module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v113,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_opcode,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_opcode,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_opcode,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_opcode,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_opcode,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce); 
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
output  [1:0] grp_fu_168_p_opcode;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_404_p2;
reg   [15:0] phi_mul_load_reg_884;
wire   [15:0] add_ln168_1_fu_398_p2;
reg   [15:0] add_ln168_1_reg_889;
wire   [7:0] add_ln168_fu_410_p2;
reg   [7:0] add_ln168_reg_897;
wire   [0:0] trunc_ln168_fu_416_p1;
reg   [0:0] trunc_ln168_reg_902;
wire   [14:0] zext_ln168_fu_430_p1;
reg   [14:0] zext_ln168_reg_908;
wire   [0:0] cmp11_fu_434_p2;
reg   [0:0] cmp11_reg_921;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_450_p2;
reg   [7:0] add_ln169_reg_934;
wire    ap_CS_fsm_state4;
reg   [5:0] tmp_reg_944;
reg   [5:0] tmp_1_reg_954;
wire    ap_CS_fsm_state5;
reg   [5:0] tmp_2_reg_964;
wire    ap_CS_fsm_state6;
reg   [5:0] tmp_3_reg_984;
reg   [5:0] tmp_4_reg_994;
wire   [31:0] grp_fu_368_p3;
reg   [31:0] v119_v_reg_999;
wire    ap_CS_fsm_state7;
reg   [5:0] tmp_5_reg_1029;
wire   [31:0] grp_fu_375_p3;
reg   [31:0] v132_v_reg_1034;
wire    ap_CS_fsm_state8;
reg   [31:0] v143_v_reg_1039;
reg   [31:0] v154_v_reg_1064;
wire    ap_CS_fsm_state9;
reg   [31:0] v165_v_reg_1069;
reg   [31:0] v176_v_reg_1094;
wire    ap_CS_fsm_state10;
reg   [31:0] v187_v_reg_1099;
reg   [31:0] v198_v_reg_1124;
wire    ap_CS_fsm_state11;
reg   [31:0] v209_v_reg_1129;
wire   [31:0] v119_fu_629_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_633_p1;
wire   [31:0] v143_fu_637_p1;
wire   [31:0] v154_fu_641_p1;
wire   [31:0] v165_fu_645_p1;
wire   [31:0] v176_fu_649_p1;
wire   [31:0] v187_fu_653_p1;
wire   [31:0] v198_fu_657_p1;
wire   [31:0] v209_fu_661_p1;
wire   [1:0] trunc_ln169_fu_665_p1;
reg   [1:0] trunc_ln169_reg_1179;
wire    ap_CS_fsm_state15;
wire   [13:0] mul_ln171_fu_683_p2;
reg   [13:0] mul_ln171_reg_1185;
reg   [31:0] v_reg_1190;
wire   [13:0] mul_ln186_fu_692_p2;
reg   [13:0] mul_ln186_reg_1195;
reg   [31:0] v19_reg_1200;
wire   [13:0] mul_ln199_fu_701_p2;
reg   [13:0] mul_ln199_reg_1205;
reg   [31:0] v20_reg_1210;
wire   [13:0] mul_ln212_fu_710_p2;
reg   [13:0] mul_ln212_reg_1215;
reg   [31:0] v21_reg_1220;
wire   [13:0] mul_ln225_fu_726_p2;
reg   [13:0] mul_ln225_reg_1225;
reg   [31:0] v22_reg_1230;
wire   [13:0] mul_ln238_fu_735_p2;
reg   [13:0] mul_ln238_reg_1235;
reg   [31:0] v23_reg_1240;
wire   [13:0] mul_ln251_fu_744_p2;
reg   [13:0] mul_ln251_reg_1245;
reg   [31:0] v24_reg_1250;
wire   [13:0] mul_ln264_fu_753_p2;
reg   [13:0] mul_ln264_reg_1255;
reg   [31:0] v25_reg_1260;
wire   [13:0] mul_ln277_fu_769_p2;
reg   [13:0] mul_ln277_reg_1265;
reg   [31:0] v26_reg_1270;
wire   [0:0] empty_44_fu_775_p2;
reg   [0:0] empty_44_reg_1275;
wire    ap_CS_fsm_state16;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1280_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1280_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1280_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1280_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1284_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1284_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1284_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1284_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1288_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1288_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1288_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1288_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1292_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1292_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1292_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1292_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1296_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1296_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1296_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1296_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_332_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_332_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_332_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_336_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_336_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_336_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_340_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_340_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_340_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_344_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_344_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_344_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_348_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_348_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_348_p_ce;
reg   [7:0] v115_reg_284;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_start_reg;
wire   [63:0] p_cast3692_fu_524_p1;
wire   [63:0] p_cast_fu_569_p1;
wire   [63:0] p_cast3693_fu_574_p1;
wire   [63:0] p_cast3694_fu_599_p1;
wire   [63:0] p_cast3695_fu_604_p1;
wire   [63:0] p_cast3696_fu_609_p1;
wire   [63:0] p_cast3697_fu_614_p1;
wire   [63:0] p_cast3698_fu_619_p1;
wire   [63:0] p_cast3699_fu_624_p1;
reg   [15:0] phi_mul_fu_100;
wire   [0:0] icmp_ln169_fu_440_p2;
reg   [7:0] v114_fu_104;
reg    v236_write_local;
reg    v226_0_ce0_local;
reg   [14:0] v226_0_address0_local;
reg    v226_0_ce1_local;
reg   [14:0] v226_0_address1_local;
reg    v226_1_ce0_local;
reg   [14:0] v226_1_address0_local;
reg    v226_1_ce1_local;
reg   [14:0] v226_1_address1_local;
reg   [31:0] grp_fu_332_p0;
reg   [31:0] grp_fu_332_p1;
reg   [31:0] grp_fu_336_p0;
reg   [31:0] grp_fu_336_p1;
reg   [31:0] grp_fu_340_p0;
reg   [31:0] grp_fu_340_p1;
reg   [31:0] grp_fu_344_p0;
reg   [31:0] grp_fu_344_p1;
reg   [31:0] grp_fu_348_p0;
reg   [31:0] grp_fu_348_p1;
wire   [6:0] lshr_ln_fu_420_p4;
wire   [7:0] empty_18_fu_464_p2;
wire   [7:0] empty_21_fu_484_p2;
wire   [7:0] empty_24_fu_504_p2;
wire   [14:0] grp_fu_781_p3;
wire   [7:0] empty_31_fu_529_p2;
wire   [7:0] empty_34_fu_549_p2;
wire   [14:0] grp_fu_789_p3;
wire   [14:0] grp_fu_797_p3;
wire   [7:0] empty_37_fu_579_p2;
wire   [14:0] grp_fu_805_p3;
wire   [14:0] grp_fu_813_p4;
wire   [14:0] grp_fu_823_p3;
wire   [14:0] grp_fu_831_p3;
wire   [14:0] grp_fu_839_p3;
wire   [14:0] grp_fu_847_p4;
wire   [5:0] lshr_ln1_fu_669_p4;
wire   [5:0] mul_ln171_fu_683_p0;
wire   [8:0] mul_ln171_fu_683_p1;
wire   [5:0] mul_ln186_fu_692_p0;
wire   [8:0] mul_ln186_fu_692_p1;
wire   [5:0] mul_ln199_fu_701_p0;
wire   [8:0] mul_ln199_fu_701_p1;
wire   [5:0] mul_ln212_fu_710_p0;
wire   [8:0] mul_ln212_fu_710_p1;
wire   [5:0] empty_30_fu_716_p2;
wire   [5:0] mul_ln225_fu_726_p0;
wire   [8:0] mul_ln225_fu_726_p1;
wire   [5:0] mul_ln238_fu_735_p0;
wire   [8:0] mul_ln238_fu_735_p1;
wire   [5:0] mul_ln251_fu_744_p0;
wire   [8:0] mul_ln251_fu_744_p1;
wire   [5:0] mul_ln264_fu_753_p0;
wire   [8:0] mul_ln264_fu_753_p1;
wire   [5:0] empty_43_fu_759_p2;
wire   [5:0] mul_ln277_fu_769_p0;
wire   [8:0] mul_ln277_fu_769_p1;
wire   [7:0] grp_fu_781_p0;
wire   [6:0] grp_fu_781_p1;
wire   [6:0] grp_fu_781_p2;
wire   [7:0] grp_fu_789_p0;
wire   [6:0] grp_fu_789_p1;
wire   [6:0] grp_fu_789_p2;
wire   [7:0] grp_fu_797_p0;
wire   [6:0] grp_fu_797_p1;
wire   [6:0] grp_fu_797_p2;
wire   [7:0] grp_fu_805_p0;
wire   [6:0] grp_fu_805_p1;
wire   [6:0] grp_fu_805_p2;
wire   [2:0] grp_fu_813_p1;
wire   [6:0] grp_fu_813_p2;
wire   [6:0] grp_fu_813_p3;
wire   [7:0] grp_fu_823_p0;
wire   [6:0] grp_fu_823_p1;
wire   [6:0] grp_fu_823_p2;
wire   [7:0] grp_fu_831_p0;
wire   [6:0] grp_fu_831_p1;
wire   [6:0] grp_fu_831_p2;
wire   [7:0] grp_fu_839_p0;
wire   [6:0] grp_fu_839_p1;
wire   [6:0] grp_fu_839_p2;
wire   [3:0] grp_fu_847_p1;
wire   [6:0] grp_fu_847_p2;
wire   [6:0] grp_fu_847_p3;
reg    grp_fu_332_ce;
reg    grp_fu_336_ce;
reg    grp_fu_340_ce;
reg    grp_fu_344_ce;
reg    grp_fu_348_ce;
reg    grp_fu_1280_ce;
reg    grp_fu_1284_ce;
reg    grp_fu_1288_ce;
reg    grp_fu_1292_ce;
reg    grp_fu_1296_ce;
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
wire   [14:0] grp_fu_781_p00;
wire   [14:0] grp_fu_789_p00;
wire   [14:0] grp_fu_797_p00;
wire   [14:0] grp_fu_805_p00;
wire   [14:0] grp_fu_823_p00;
wire   [14:0] grp_fu_831_p00;
wire   [14:0] grp_fu_839_p00;
wire   [13:0] mul_ln171_fu_683_p00;
wire   [13:0] mul_ln186_fu_692_p00;
wire   [13:0] mul_ln199_fu_701_p00;
wire   [13:0] mul_ln212_fu_710_p00;
wire   [13:0] mul_ln225_fu_726_p00;
wire   [13:0] mul_ln238_fu_735_p00;
wire   [13:0] mul_ln251_fu_744_p00;
wire   [13:0] mul_ln264_fu_753_p00;
wire   [13:0] mul_ln277_fu_769_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_start_reg = 1'b0;
#0 phi_mul_fu_100 = 16'd0;
#0 v114_fu_104 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_296(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_d1),.v225_3_q1(v225_3_q1),.phi_mul(phi_mul_load_reg_884),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1185),.mul_ln225(mul_ln225_reg_1225),.mul_ln277(mul_ln277_reg_1265),.mul_ln212(mul_ln212_reg_1215),.mul_ln264(mul_ln264_reg_1255),.mul_ln199(mul_ln199_reg_1205),.mul_ln251(mul_ln251_reg_1245),.mul_ln186(mul_ln186_reg_1195),.mul_ln238(mul_ln238_reg_1235),.empty_15(trunc_ln169_reg_1179),.cmp11(cmp11_reg_921),.v120(v_reg_1190),.v133(v19_reg_1200),.v144(v20_reg_1210),.v155(v21_reg_1220),.v166(v22_reg_1230),.v177(v23_reg_1240),.v188(v24_reg_1250),.v199(v25_reg_1260),.v210(v26_reg_1270),.empty(empty_44_reg_1275),.grp_fu_1280_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1280_p_din0),.grp_fu_1280_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1280_p_din1),.grp_fu_1280_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1280_p_opcode),.grp_fu_1280_p_dout0(grp_fu_152_p_dout0),.grp_fu_1280_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1280_p_ce),.grp_fu_1284_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1284_p_din0),.grp_fu_1284_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1284_p_din1),.grp_fu_1284_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1284_p_opcode),.grp_fu_1284_p_dout0(grp_fu_156_p_dout0),.grp_fu_1284_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1284_p_ce),.grp_fu_1288_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1288_p_din0),.grp_fu_1288_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1288_p_din1),.grp_fu_1288_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1288_p_opcode),.grp_fu_1288_p_dout0(grp_fu_160_p_dout0),.grp_fu_1288_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1288_p_ce),.grp_fu_1292_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1292_p_din0),.grp_fu_1292_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1292_p_din1),.grp_fu_1292_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1292_p_opcode),.grp_fu_1292_p_dout0(grp_fu_164_p_dout0),.grp_fu_1292_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1292_p_ce),.grp_fu_1296_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1296_p_din0),.grp_fu_1296_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1296_p_din1),.grp_fu_1296_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1296_p_opcode),.grp_fu_1296_p_dout0(grp_fu_168_p_dout0),.grp_fu_1296_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1296_p_ce),.grp_fu_332_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_332_p_din0),.grp_fu_332_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_332_p_din1),.grp_fu_332_p_dout0(grp_fu_172_p_dout0),.grp_fu_332_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_332_p_ce),.grp_fu_336_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_336_p_din0),.grp_fu_336_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_336_p_din1),.grp_fu_336_p_dout0(grp_fu_176_p_dout0),.grp_fu_336_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_336_p_ce),.grp_fu_340_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_340_p_din0),.grp_fu_340_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_340_p_din1),.grp_fu_340_p_dout0(grp_fu_180_p_dout0),.grp_fu_340_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_340_p_ce),.grp_fu_344_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_344_p_din0),.grp_fu_344_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_344_p_din1),.grp_fu_344_p_dout0(grp_fu_184_p_dout0),.grp_fu_344_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_344_p_ce),.grp_fu_348_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_348_p_din0),.grp_fu_348_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_348_p_din1),.grp_fu_348_p_dout0(grp_fu_188_p_dout0),.grp_fu_348_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_348_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U52(.din0(mul_ln171_fu_683_p0),.din1(mul_ln171_fu_683_p1),.dout(mul_ln171_fu_683_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U53(.din0(mul_ln186_fu_692_p0),.din1(mul_ln186_fu_692_p1),.dout(mul_ln186_fu_692_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U54(.din0(mul_ln199_fu_701_p0),.din1(mul_ln199_fu_701_p1),.dout(mul_ln199_fu_701_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U55(.din0(mul_ln212_fu_710_p0),.din1(mul_ln212_fu_710_p1),.dout(mul_ln212_fu_710_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U56(.din0(mul_ln225_fu_726_p0),.din1(mul_ln225_fu_726_p1),.dout(mul_ln225_fu_726_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U57(.din0(mul_ln238_fu_735_p0),.din1(mul_ln238_fu_735_p1),.dout(mul_ln238_fu_735_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U58(.din0(mul_ln251_fu_744_p0),.din1(mul_ln251_fu_744_p1),.dout(mul_ln251_fu_744_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U59(.din0(mul_ln264_fu_753_p0),.din1(mul_ln264_fu_753_p1),.dout(mul_ln264_fu_753_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U60(.din0(mul_ln277_fu_769_p0),.din1(mul_ln277_fu_769_p1),.dout(mul_ln277_fu_769_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U61(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_781_p0),.din1(grp_fu_781_p1),.din2(grp_fu_781_p2),.ce(1'b1),.dout(grp_fu_781_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U62(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_789_p0),.din1(grp_fu_789_p1),.din2(grp_fu_789_p2),.ce(1'b1),.dout(grp_fu_789_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U63(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_797_p0),.din1(grp_fu_797_p1),.din2(grp_fu_797_p2),.ce(1'b1),.dout(grp_fu_797_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U64(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_805_p0),.din1(grp_fu_805_p1),.din2(grp_fu_805_p2),.ce(1'b1),.dout(grp_fu_805_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U65(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_284),.din1(grp_fu_813_p1),.din2(grp_fu_813_p2),.din3(grp_fu_813_p3),.ce(1'b1),.dout(grp_fu_813_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U66(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_823_p0),.din1(grp_fu_823_p1),.din2(grp_fu_823_p2),.ce(1'b1),.dout(grp_fu_823_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U67(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_831_p0),.din1(grp_fu_831_p1),.din2(grp_fu_831_p2),.ce(1'b1),.dout(grp_fu_831_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U68(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_839_p0),.din1(grp_fu_839_p1),.din2(grp_fu_839_p2),.ce(1'b1),.dout(grp_fu_839_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U69(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_284),.din1(grp_fu_847_p1),.din2(grp_fu_847_p2),.din3(grp_fu_847_p3),.ce(1'b1),.dout(grp_fu_847_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_100 <= 16'd0;
    end else if (((icmp_ln169_fu_440_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_100 <= add_ln168_1_reg_889;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_104 <= 8'd0;
    end else if (((icmp_ln169_fu_440_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_104 <= add_ln168_reg_897;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_284 <= add_ln169_reg_934;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_404_p2 == 1'd0))) begin
        v115_reg_284 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_889 <= add_ln168_1_fu_398_p2;
        add_ln168_reg_897 <= add_ln168_fu_410_p2;
        cmp11_reg_921 <= cmp11_fu_434_p2;
        phi_mul_load_reg_884 <= phi_mul_fu_100;
        trunc_ln168_reg_902 <= trunc_ln168_fu_416_p1;
        zext_ln168_reg_908[6 : 0] <= zext_ln168_fu_430_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_934 <= add_ln169_fu_450_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_44_reg_1275 <= empty_44_fu_775_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1185 <= mul_ln171_fu_683_p2;
        mul_ln186_reg_1195 <= mul_ln186_fu_692_p2;
        mul_ln199_reg_1205 <= mul_ln199_fu_701_p2;
        mul_ln212_reg_1215 <= mul_ln212_fu_710_p2;
        mul_ln225_reg_1225 <= mul_ln225_fu_726_p2;
        mul_ln238_reg_1235 <= mul_ln238_fu_735_p2;
        mul_ln251_reg_1245 <= mul_ln251_fu_744_p2;
        mul_ln264_reg_1255 <= mul_ln264_fu_753_p2;
        mul_ln277_reg_1265 <= mul_ln277_fu_769_p2;
        trunc_ln169_reg_1179 <= trunc_ln169_fu_665_p1;
        v19_reg_1200 <= grp_fu_176_p_dout0;
        v20_reg_1210 <= grp_fu_180_p_dout0;
        v21_reg_1220 <= grp_fu_184_p_dout0;
        v22_reg_1230 <= grp_fu_188_p_dout0;
        v23_reg_1240 <= grp_fu_192_p_dout0;
        v24_reg_1250 <= grp_fu_196_p_dout0;
        v25_reg_1260 <= grp_fu_200_p_dout0;
        v26_reg_1270 <= grp_fu_204_p_dout0;
        v_reg_1190 <= grp_fu_172_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_954 <= {{empty_21_fu_484_p2[7:2]}};
        tmp_reg_944 <= {{empty_18_fu_464_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_2_reg_964 <= {{empty_24_fu_504_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_3_reg_984 <= {{empty_31_fu_529_p2[7:2]}};
        tmp_4_reg_994 <= {{empty_34_fu_549_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_5_reg_1029 <= {{empty_37_fu_579_p2[7:2]}};
        v119_v_reg_999 <= grp_fu_368_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v132_v_reg_1034 <= grp_fu_375_p3;
        v143_v_reg_1039 <= grp_fu_368_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v154_v_reg_1064 <= grp_fu_368_p3;
        v165_v_reg_1069 <= grp_fu_375_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v176_v_reg_1094 <= grp_fu_368_p3;
        v187_v_reg_1099 <= grp_fu_375_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v198_v_reg_1124 <= grp_fu_368_p3;
        v209_v_reg_1129 <= grp_fu_375_p3;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_404_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_404_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1280_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1280_p_ce;
    end else begin
        grp_fu_1280_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1284_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1284_p_ce;
    end else begin
        grp_fu_1284_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1288_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1288_p_ce;
    end else begin
        grp_fu_1288_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1292_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1292_p_ce;
    end else begin
        grp_fu_1292_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1296_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1296_p_ce;
    end else begin
        grp_fu_1296_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_332_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_332_p_ce;
    end else begin
        grp_fu_332_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_332_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_332_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_332_p0 = v119_fu_629_p1;
    end else begin
        grp_fu_332_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_332_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_332_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_332_p1 = v113;
    end else begin
        grp_fu_332_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_336_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_336_p_ce;
    end else begin
        grp_fu_336_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_336_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_336_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_336_p0 = v132_fu_633_p1;
    end else begin
        grp_fu_336_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_336_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_336_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_336_p1 = v113;
    end else begin
        grp_fu_336_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_340_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_340_p_ce;
    end else begin
        grp_fu_340_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_340_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_340_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_340_p0 = v143_fu_637_p1;
    end else begin
        grp_fu_340_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_340_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_340_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_340_p1 = v113;
    end else begin
        grp_fu_340_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_344_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_344_p_ce;
    end else begin
        grp_fu_344_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_344_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_344_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_344_p0 = v154_fu_641_p1;
    end else begin
        grp_fu_344_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_344_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_344_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_344_p1 = v113;
    end else begin
        grp_fu_344_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_348_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_348_p_ce;
    end else begin
        grp_fu_348_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_348_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_348_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_348_p0 = v165_fu_645_p1;
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_348_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_348_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_348_p1 = v113;
    end else begin
        grp_fu_348_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast3698_fu_619_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast3696_fu_609_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast3694_fu_599_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast3693_fu_574_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast3692_fu_524_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast3699_fu_624_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast3697_fu_614_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast3695_fu_604_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_569_p1;
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
        v226_1_address0_local = p_cast3698_fu_619_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast3696_fu_609_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast3694_fu_599_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast3693_fu_574_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast3692_fu_524_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast3699_fu_624_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast3697_fu_614_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast3695_fu_604_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_569_p1;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_404_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_404_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_404_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_404_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_440_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_1_fu_398_p2 = (phi_mul_fu_100 + 16'd190);
assign add_ln168_fu_410_p2 = (v114_fu_104 + 8'd1);
assign add_ln169_fu_450_p2 = (v115_reg_284 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_404_p2 == 1'd1));
end
assign cmp11_fu_434_p2 = ((v114_fu_104 == 8'd0) ? 1'b1 : 1'b0);
assign empty_18_fu_464_p2 = (v115_reg_284 + 8'd1);
assign empty_21_fu_484_p2 = (v115_reg_284 + 8'd2);
assign empty_24_fu_504_p2 = (v115_reg_284 + 8'd3);
assign empty_30_fu_716_p2 = (lshr_ln1_fu_669_p4 + 6'd1);
assign empty_31_fu_529_p2 = (v115_reg_284 + 8'd5);
assign empty_34_fu_549_p2 = (v115_reg_284 + 8'd6);
assign empty_37_fu_579_p2 = (v115_reg_284 + 8'd7);
assign empty_43_fu_759_p2 = (lshr_ln1_fu_669_p4 + 6'd2);
assign empty_44_fu_775_p2 = ((trunc_ln169_reg_1179 == 2'd3) ? 1'b1 : 1'b0);
assign grp_fu_152_p_ce = grp_fu_1280_ce;
assign grp_fu_152_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1280_p_din0;
assign grp_fu_152_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1280_p_din1;
assign grp_fu_152_p_opcode = 2'd0;
assign grp_fu_156_p_ce = grp_fu_1284_ce;
assign grp_fu_156_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1284_p_din0;
assign grp_fu_156_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1284_p_din1;
assign grp_fu_156_p_opcode = 2'd0;
assign grp_fu_160_p_ce = grp_fu_1288_ce;
assign grp_fu_160_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1288_p_din0;
assign grp_fu_160_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1288_p_din1;
assign grp_fu_160_p_opcode = 2'd0;
assign grp_fu_164_p_ce = grp_fu_1292_ce;
assign grp_fu_164_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1292_p_din0;
assign grp_fu_164_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1292_p_din1;
assign grp_fu_164_p_opcode = 2'd0;
assign grp_fu_168_p_ce = grp_fu_1296_ce;
assign grp_fu_168_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1296_p_din0;
assign grp_fu_168_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_grp_fu_1296_p_din1;
assign grp_fu_168_p_opcode = 2'd0;
assign grp_fu_172_p_ce = grp_fu_332_ce;
assign grp_fu_172_p_din0 = grp_fu_332_p0;
assign grp_fu_172_p_din1 = grp_fu_332_p1;
assign grp_fu_176_p_ce = grp_fu_336_ce;
assign grp_fu_176_p_din0 = grp_fu_336_p0;
assign grp_fu_176_p_din1 = grp_fu_336_p1;
assign grp_fu_180_p_ce = grp_fu_340_ce;
assign grp_fu_180_p_din0 = grp_fu_340_p0;
assign grp_fu_180_p_din1 = grp_fu_340_p1;
assign grp_fu_184_p_ce = grp_fu_344_ce;
assign grp_fu_184_p_din0 = grp_fu_344_p0;
assign grp_fu_184_p_din1 = grp_fu_344_p1;
assign grp_fu_188_p_ce = grp_fu_348_ce;
assign grp_fu_188_p_din0 = grp_fu_348_p0;
assign grp_fu_188_p_din1 = grp_fu_348_p1;
assign grp_fu_192_p_ce = 1'b1;
assign grp_fu_192_p_din0 = v176_fu_649_p1;
assign grp_fu_192_p_din1 = v113;
assign grp_fu_196_p_ce = 1'b1;
assign grp_fu_196_p_din0 = v187_fu_653_p1;
assign grp_fu_196_p_din1 = v113;
assign grp_fu_200_p_ce = 1'b1;
assign grp_fu_200_p_din0 = v198_fu_657_p1;
assign grp_fu_200_p_din1 = v113;
assign grp_fu_204_p_ce = 1'b1;
assign grp_fu_204_p_din0 = v209_fu_661_p1;
assign grp_fu_204_p_din1 = v113;
assign grp_fu_368_p3 = ((trunc_ln168_reg_902[0:0] == 1'b1) ? v226_1_q0 : v226_0_q0);
assign grp_fu_375_p3 = ((trunc_ln168_reg_902[0:0] == 1'b1) ? v226_1_q1 : v226_0_q1);
assign grp_fu_781_p0 = grp_fu_781_p00;
assign grp_fu_781_p00 = v115_reg_284;
assign grp_fu_781_p1 = 15'd105;
assign grp_fu_781_p2 = zext_ln168_reg_908;
assign grp_fu_789_p0 = grp_fu_789_p00;
assign grp_fu_789_p00 = empty_18_fu_464_p2;
assign grp_fu_789_p1 = 15'd105;
assign grp_fu_789_p2 = zext_ln168_reg_908;
assign grp_fu_797_p0 = grp_fu_797_p00;
assign grp_fu_797_p00 = empty_21_fu_484_p2;
assign grp_fu_797_p1 = 15'd105;
assign grp_fu_797_p2 = zext_ln168_reg_908;
assign grp_fu_805_p0 = grp_fu_805_p00;
assign grp_fu_805_p00 = empty_24_fu_504_p2;
assign grp_fu_805_p1 = 15'd105;
assign grp_fu_805_p2 = zext_ln168_reg_908;
assign grp_fu_813_p1 = 8'd4;
assign grp_fu_813_p2 = 15'd105;
assign grp_fu_813_p3 = zext_ln168_reg_908;
assign grp_fu_823_p0 = grp_fu_823_p00;
assign grp_fu_823_p00 = empty_31_fu_529_p2;
assign grp_fu_823_p1 = 15'd105;
assign grp_fu_823_p2 = zext_ln168_reg_908;
assign grp_fu_831_p0 = grp_fu_831_p00;
assign grp_fu_831_p00 = empty_34_fu_549_p2;
assign grp_fu_831_p1 = 15'd105;
assign grp_fu_831_p2 = zext_ln168_reg_908;
assign grp_fu_839_p0 = grp_fu_839_p00;
assign grp_fu_839_p00 = empty_37_fu_579_p2;
assign grp_fu_839_p1 = 15'd105;
assign grp_fu_839_p2 = zext_ln168_reg_908;
assign grp_fu_847_p1 = 8'd8;
assign grp_fu_847_p2 = 15'd105;
assign grp_fu_847_p3 = zext_ln168_reg_908;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_ap_start_reg;
assign icmp_ln168_fu_404_p2 = ((v114_fu_104 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_440_p2 = ((v115_reg_284 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_669_p4 = {{v115_reg_284[7:2]}};
assign lshr_ln_fu_420_p4 = {{v114_fu_104[7:1]}};
assign mul_ln171_fu_683_p0 = mul_ln171_fu_683_p00;
assign mul_ln171_fu_683_p00 = lshr_ln1_fu_669_p4;
assign mul_ln171_fu_683_p1 = 14'd190;
assign mul_ln186_fu_692_p0 = mul_ln186_fu_692_p00;
assign mul_ln186_fu_692_p00 = tmp_reg_944;
assign mul_ln186_fu_692_p1 = 14'd190;
assign mul_ln199_fu_701_p0 = mul_ln199_fu_701_p00;
assign mul_ln199_fu_701_p00 = tmp_1_reg_954;
assign mul_ln199_fu_701_p1 = 14'd190;
assign mul_ln212_fu_710_p0 = mul_ln212_fu_710_p00;
assign mul_ln212_fu_710_p00 = tmp_2_reg_964;
assign mul_ln212_fu_710_p1 = 14'd190;
assign mul_ln225_fu_726_p0 = mul_ln225_fu_726_p00;
assign mul_ln225_fu_726_p00 = empty_30_fu_716_p2;
assign mul_ln225_fu_726_p1 = 14'd190;
assign mul_ln238_fu_735_p0 = mul_ln238_fu_735_p00;
assign mul_ln238_fu_735_p00 = tmp_3_reg_984;
assign mul_ln238_fu_735_p1 = 14'd190;
assign mul_ln251_fu_744_p0 = mul_ln251_fu_744_p00;
assign mul_ln251_fu_744_p00 = tmp_4_reg_994;
assign mul_ln251_fu_744_p1 = 14'd190;
assign mul_ln264_fu_753_p0 = mul_ln264_fu_753_p00;
assign mul_ln264_fu_753_p00 = tmp_5_reg_1029;
assign mul_ln264_fu_753_p1 = 14'd190;
assign mul_ln277_fu_769_p0 = mul_ln277_fu_769_p00;
assign mul_ln277_fu_769_p00 = empty_43_fu_759_p2;
assign mul_ln277_fu_769_p1 = 14'd190;
assign p_cast3692_fu_524_p1 = grp_fu_781_p3;
assign p_cast3693_fu_574_p1 = grp_fu_797_p3;
assign p_cast3694_fu_599_p1 = grp_fu_805_p3;
assign p_cast3695_fu_604_p1 = grp_fu_813_p4;
assign p_cast3696_fu_609_p1 = grp_fu_823_p3;
assign p_cast3697_fu_614_p1 = grp_fu_831_p3;
assign p_cast3698_fu_619_p1 = grp_fu_839_p3;
assign p_cast3699_fu_624_p1 = grp_fu_847_p4;
assign p_cast_fu_569_p1 = grp_fu_789_p3;
assign trunc_ln168_fu_416_p1 = v114_fu_104[0:0];
assign trunc_ln169_fu_665_p1 = v115_reg_284[1:0];
assign v119_fu_629_p1 = v119_v_reg_999;
assign v132_fu_633_p1 = v132_v_reg_1034;
assign v143_fu_637_p1 = v143_v_reg_1039;
assign v154_fu_641_p1 = v154_v_reg_1064;
assign v165_fu_645_p1 = v165_v_reg_1069;
assign v176_fu_649_p1 = v176_v_reg_1094;
assign v187_fu_653_p1 = v187_v_reg_1099;
assign v198_fu_657_p1 = v198_v_reg_1124;
assign v209_fu_661_p1 = v209_v_reg_1129;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_1_we1;
assign v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_address0;
assign v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_address1;
assign v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_ce0;
assign v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_ce1;
assign v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_d0;
assign v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_d1;
assign v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_we0;
assign v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_2_we1;
assign v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_address0;
assign v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_address1;
assign v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_ce0;
assign v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_ce1;
assign v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_d0;
assign v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_d1;
assign v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_we0;
assign v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v225_3_we1;
assign v226_0_address0 = v226_0_address0_local;
assign v226_0_address1 = v226_0_address1_local;
assign v226_0_ce0 = v226_0_ce0_local;
assign v226_0_ce1 = v226_0_ce1_local;
assign v226_1_address0 = v226_1_address0_local;
assign v226_1_address1 = v226_1_address1_local;
assign v226_1_ce0 = v226_1_ce0_local;
assign v226_1_ce1 = v226_1_ce1_local;
assign v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v227_address0;
assign v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v227_address1;
assign v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v227_ce0;
assign v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_296_v227_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_430_p1 = lshr_ln_fu_420_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_908[14:7] <= 8'b00000000;
end
endmodule 