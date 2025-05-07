module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v113,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_opcode,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_opcode,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_opcode,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_dout0,grp_fu_224_p_ce); 
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
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
output  [1:0] grp_fu_192_p_opcode;
input  [31:0] grp_fu_192_p_dout0;
output   grp_fu_192_p_ce;
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
output  [1:0] grp_fu_196_p_opcode;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
output  [31:0] grp_fu_200_p_din0;
output  [31:0] grp_fu_200_p_din1;
output  [1:0] grp_fu_200_p_opcode;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_425_p2;
wire   [7:0] add_ln168_fu_431_p2;
reg   [7:0] add_ln168_reg_932;
wire   [0:0] trunc_ln168_fu_437_p1;
reg   [0:0] trunc_ln168_reg_937;
wire   [2:0] trunc_ln168_1_fu_441_p1;
reg   [2:0] trunc_ln168_1_reg_943;
wire   [12:0] mul_ln175_fu_459_p2;
reg   [12:0] mul_ln175_reg_948;
wire   [14:0] zext_ln168_fu_475_p1;
reg   [14:0] zext_ln168_reg_953;
wire   [0:0] cmp11_fu_479_p2;
reg   [0:0] cmp11_reg_966;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_495_p2;
reg   [7:0] add_ln169_reg_979;
wire    ap_CS_fsm_state4;
reg   [4:0] tmp_reg_989;
reg   [4:0] tmp_1_reg_999;
wire    ap_CS_fsm_state5;
reg   [4:0] tmp_2_reg_1009;
reg   [4:0] tmp_3_reg_1019;
wire    ap_CS_fsm_state6;
reg   [4:0] tmp_4_reg_1039;
reg   [4:0] tmp_5_reg_1049;
wire   [31:0] grp_fu_403_p3;
reg   [31:0] v119_v_reg_1054;
wire    ap_CS_fsm_state7;
reg   [4:0] tmp_6_reg_1084;
wire   [31:0] grp_fu_410_p3;
reg   [31:0] v132_v_reg_1089;
wire    ap_CS_fsm_state8;
reg   [31:0] v143_v_reg_1094;
reg   [31:0] v154_v_reg_1119;
wire    ap_CS_fsm_state9;
reg   [31:0] v165_v_reg_1124;
reg   [31:0] v176_v_reg_1149;
wire    ap_CS_fsm_state10;
reg   [31:0] v187_v_reg_1154;
reg   [31:0] v198_v_reg_1179;
wire    ap_CS_fsm_state11;
reg   [31:0] v209_v_reg_1184;
wire   [31:0] v119_fu_690_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_694_p1;
wire   [31:0] v143_fu_698_p1;
wire   [31:0] v154_fu_702_p1;
wire   [31:0] v165_fu_706_p1;
wire   [31:0] v176_fu_710_p1;
wire   [2:0] trunc_ln169_fu_726_p1;
reg   [2:0] trunc_ln169_reg_1234;
wire    ap_CS_fsm_state15;
wire   [12:0] mul_ln171_fu_744_p2;
reg   [12:0] mul_ln171_reg_1240;
reg   [31:0] v_reg_1245;
wire   [12:0] mul_ln186_fu_753_p2;
reg   [12:0] mul_ln186_reg_1250;
reg   [31:0] v20_reg_1255;
wire   [12:0] mul_ln199_fu_762_p2;
reg   [12:0] mul_ln199_reg_1260;
reg   [31:0] v21_reg_1265;
wire   [12:0] mul_ln212_fu_771_p2;
reg   [12:0] mul_ln212_reg_1270;
reg   [31:0] v22_reg_1275;
wire   [12:0] mul_ln225_fu_780_p2;
reg   [12:0] mul_ln225_reg_1280;
reg   [31:0] v23_reg_1285;
wire   [12:0] mul_ln238_fu_789_p2;
reg   [12:0] mul_ln238_reg_1290;
reg   [31:0] v24_reg_1295;
wire   [12:0] mul_ln251_fu_798_p2;
reg   [12:0] mul_ln251_reg_1300;
wire   [31:0] grp_fu_391_p2;
reg   [31:0] v25_reg_1305;
wire   [12:0] mul_ln264_fu_807_p2;
reg   [12:0] mul_ln264_reg_1310;
wire   [31:0] grp_fu_395_p2;
reg   [31:0] v26_reg_1315;
wire   [12:0] mul_ln277_fu_823_p2;
reg   [12:0] mul_ln277_reg_1320;
wire   [31:0] grp_fu_399_p2;
reg   [31:0] v27_reg_1325;
wire   [0:0] empty_44_fu_829_p2;
reg   [0:0] empty_44_reg_1330;
wire    ap_CS_fsm_state16;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_ready;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_0_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_0_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_1_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_1_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_2_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_2_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_3_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_3_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_4_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_4_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_5_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_5_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_6_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_6_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_7_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_7_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1335_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1335_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1335_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1335_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1339_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1339_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1339_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1339_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1343_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1343_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1343_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1343_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_367_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_367_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_367_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_371_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_371_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_371_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_375_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_375_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_375_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_379_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_379_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_379_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_383_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_383_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_383_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_387_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_387_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_387_p_ce;
reg   [7:0] v115_reg_296;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_start_reg;
wire   [63:0] p_cast1124_fu_585_p1;
wire   [63:0] p_cast_fu_630_p1;
wire   [63:0] p_cast1125_fu_635_p1;
wire   [63:0] p_cast1126_fu_660_p1;
wire   [63:0] p_cast1127_fu_665_p1;
wire   [63:0] p_cast1128_fu_670_p1;
wire   [63:0] p_cast1129_fu_675_p1;
wire   [63:0] p_cast1130_fu_680_p1;
wire   [63:0] p_cast1131_fu_685_p1;
reg   [7:0] v114_fu_116;
wire   [0:0] icmp_ln169_fu_485_p2;
reg    v236_write_local;
reg    v226_0_ce0_local;
reg   [14:0] v226_0_address0_local;
reg    v226_0_ce1_local;
reg   [14:0] v226_0_address1_local;
reg    v226_1_ce0_local;
reg   [14:0] v226_1_address0_local;
reg    v226_1_ce1_local;
reg   [14:0] v226_1_address1_local;
reg   [31:0] grp_fu_367_p0;
reg   [31:0] grp_fu_367_p1;
reg   [31:0] grp_fu_371_p0;
reg   [31:0] grp_fu_371_p1;
reg   [31:0] grp_fu_375_p0;
reg   [31:0] grp_fu_375_p1;
reg   [31:0] grp_fu_379_p0;
reg   [31:0] grp_fu_379_p1;
reg   [31:0] grp_fu_383_p0;
reg   [31:0] grp_fu_383_p1;
reg   [31:0] grp_fu_387_p0;
reg   [31:0] grp_fu_387_p1;
wire   [31:0] grp_fu_391_p0;
wire   [31:0] grp_fu_395_p0;
wire   [31:0] grp_fu_399_p0;
wire   [4:0] lshr_ln_fu_445_p4;
wire   [4:0] mul_ln175_fu_459_p0;
wire   [8:0] mul_ln175_fu_459_p1;
wire   [6:0] lshr_ln168_1_fu_465_p4;
wire   [7:0] empty_19_fu_505_p2;
wire   [7:0] empty_22_fu_525_p2;
wire   [7:0] empty_25_fu_545_p2;
wire   [7:0] empty_28_fu_565_p2;
wire   [14:0] grp_fu_835_p3;
wire   [7:0] empty_31_fu_590_p2;
wire   [7:0] empty_34_fu_610_p2;
wire   [14:0] grp_fu_843_p3;
wire   [14:0] grp_fu_851_p3;
wire   [7:0] empty_37_fu_640_p2;
wire   [14:0] grp_fu_859_p3;
wire   [14:0] grp_fu_867_p3;
wire   [14:0] grp_fu_875_p3;
wire   [14:0] grp_fu_883_p3;
wire   [14:0] grp_fu_891_p3;
wire   [14:0] grp_fu_899_p4;
wire   [4:0] lshr_ln1_fu_730_p4;
wire   [4:0] mul_ln171_fu_744_p0;
wire   [8:0] mul_ln171_fu_744_p1;
wire   [4:0] mul_ln186_fu_753_p0;
wire   [8:0] mul_ln186_fu_753_p1;
wire   [4:0] mul_ln199_fu_762_p0;
wire   [8:0] mul_ln199_fu_762_p1;
wire   [4:0] mul_ln212_fu_771_p0;
wire   [8:0] mul_ln212_fu_771_p1;
wire   [4:0] mul_ln225_fu_780_p0;
wire   [8:0] mul_ln225_fu_780_p1;
wire   [4:0] mul_ln238_fu_789_p0;
wire   [8:0] mul_ln238_fu_789_p1;
wire   [4:0] mul_ln251_fu_798_p0;
wire   [8:0] mul_ln251_fu_798_p1;
wire   [4:0] mul_ln264_fu_807_p0;
wire   [8:0] mul_ln264_fu_807_p1;
wire   [4:0] empty_43_fu_813_p2;
wire   [4:0] mul_ln277_fu_823_p0;
wire   [8:0] mul_ln277_fu_823_p1;
wire   [7:0] grp_fu_835_p0;
wire   [6:0] grp_fu_835_p1;
wire   [6:0] grp_fu_835_p2;
wire   [7:0] grp_fu_843_p0;
wire   [6:0] grp_fu_843_p1;
wire   [6:0] grp_fu_843_p2;
wire   [7:0] grp_fu_851_p0;
wire   [6:0] grp_fu_851_p1;
wire   [6:0] grp_fu_851_p2;
wire   [7:0] grp_fu_859_p0;
wire   [6:0] grp_fu_859_p1;
wire   [6:0] grp_fu_859_p2;
wire   [7:0] grp_fu_867_p0;
wire   [6:0] grp_fu_867_p1;
wire   [6:0] grp_fu_867_p2;
wire   [7:0] grp_fu_875_p0;
wire   [6:0] grp_fu_875_p1;
wire   [6:0] grp_fu_875_p2;
wire   [7:0] grp_fu_883_p0;
wire   [6:0] grp_fu_883_p1;
wire   [6:0] grp_fu_883_p2;
wire   [7:0] grp_fu_891_p0;
wire   [6:0] grp_fu_891_p1;
wire   [6:0] grp_fu_891_p2;
wire   [3:0] grp_fu_899_p1;
wire   [6:0] grp_fu_899_p2;
wire   [6:0] grp_fu_899_p3;
reg    grp_fu_367_ce;
reg    grp_fu_371_ce;
reg    grp_fu_375_ce;
reg    grp_fu_379_ce;
reg    grp_fu_383_ce;
reg    grp_fu_387_ce;
reg    grp_fu_1335_ce;
reg    grp_fu_1339_ce;
reg    grp_fu_1343_ce;
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
wire   [14:0] grp_fu_835_p00;
wire   [14:0] grp_fu_843_p00;
wire   [14:0] grp_fu_851_p00;
wire   [14:0] grp_fu_859_p00;
wire   [14:0] grp_fu_867_p00;
wire   [14:0] grp_fu_875_p00;
wire   [14:0] grp_fu_883_p00;
wire   [14:0] grp_fu_891_p00;
wire   [12:0] mul_ln171_fu_744_p00;
wire   [12:0] mul_ln175_fu_459_p00;
wire   [12:0] mul_ln186_fu_753_p00;
wire   [12:0] mul_ln199_fu_762_p00;
wire   [12:0] mul_ln212_fu_771_p00;
wire   [12:0] mul_ln225_fu_780_p00;
wire   [12:0] mul_ln238_fu_789_p00;
wire   [12:0] mul_ln251_fu_798_p00;
wire   [12:0] mul_ln264_fu_807_p00;
wire   [12:0] mul_ln277_fu_823_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_start_reg = 1'b0;
#0 v114_fu_116 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_308(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_ready),.cmp11(cmp11_reg_966),.v225_7_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_address0),.v225_7_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_ce0),.v225_7_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_we0),.v225_7_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_d0),.v225_7_q0(v225_7_q0),.v225_7_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_address1),.v225_7_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_ce1),.v225_7_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_we1),.v225_7_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_d1),.v225_7_q1(v225_7_q1),.v225_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_address0),.v225_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_ce0),.v225_6_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_we0),.v225_6_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_d0),.v225_6_q0(v225_6_q0),.v225_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_address1),.v225_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_ce1),.v225_6_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_we1),.v225_6_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_d1),.v225_6_q1(v225_6_q1),.v225_5_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_address0),.v225_5_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_ce0),.v225_5_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_we0),.v225_5_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_d0),.v225_5_q0(v225_5_q0),.v225_5_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_address1),.v225_5_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_ce1),.v225_5_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_we1),.v225_5_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_d1),.v225_5_q1(v225_5_q1),.v225_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_address0),.v225_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_ce0),.v225_4_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_we0),.v225_4_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_d0),.v225_4_q0(v225_4_q0),.v225_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_address1),.v225_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_ce1),.v225_4_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_we1),.v225_4_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_d1),.v225_4_q1(v225_4_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_d1),.v225_0_q1(v225_0_q1),.mul_ln175(mul_ln175_reg_948),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_3_ce1),.v227_3_q1(v227_3_q1),.v227_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_4_address0),.v227_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_4_ce0),.v227_4_q0(v227_4_q0),.v227_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_4_address1),.v227_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_4_ce1),.v227_4_q1(v227_4_q1),.v227_5_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_5_address0),.v227_5_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_5_ce0),.v227_5_q0(v227_5_q0),.v227_5_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_5_address1),.v227_5_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_5_ce1),.v227_5_q1(v227_5_q1),.v227_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_6_address0),.v227_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_6_ce0),.v227_6_q0(v227_6_q0),.v227_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_6_address1),.v227_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_6_ce1),.v227_6_q1(v227_6_q1),.v227_7_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_7_address0),.v227_7_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_7_ce0),.v227_7_q0(v227_7_q0),.v227_7_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_7_address1),.v227_7_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_7_ce1),.v227_7_q1(v227_7_q1),.mul_ln171(mul_ln171_reg_1240),.mul_ln277(mul_ln277_reg_1320),.mul_ln264(mul_ln264_reg_1310),.mul_ln251(mul_ln251_reg_1300),.mul_ln238(mul_ln238_reg_1290),.mul_ln225(mul_ln225_reg_1280),.mul_ln212(mul_ln212_reg_1270),.mul_ln199(mul_ln199_reg_1260),.mul_ln186(mul_ln186_reg_1250),.empty_15(trunc_ln169_reg_1234),.empty_16(trunc_ln168_1_reg_943),.v120(v_reg_1245),.v133(v20_reg_1255),.v144(v21_reg_1265),.v155(v22_reg_1275),.v166(v23_reg_1285),.v177(v24_reg_1295),.v188(v25_reg_1305),.v199(v26_reg_1315),.v210(v27_reg_1325),.empty(empty_44_reg_1330),.grp_fu_1335_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1335_p_din0),.grp_fu_1335_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1335_p_din1),.grp_fu_1335_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1335_p_opcode),.grp_fu_1335_p_dout0(grp_fu_192_p_dout0),.grp_fu_1335_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1335_p_ce),.grp_fu_1339_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1339_p_din0),.grp_fu_1339_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1339_p_din1),.grp_fu_1339_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1339_p_opcode),.grp_fu_1339_p_dout0(grp_fu_196_p_dout0),.grp_fu_1339_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1339_p_ce),.grp_fu_1343_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1343_p_din0),.grp_fu_1343_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1343_p_din1),.grp_fu_1343_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1343_p_opcode),.grp_fu_1343_p_dout0(grp_fu_200_p_dout0),.grp_fu_1343_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1343_p_ce),.grp_fu_367_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_367_p_din0),.grp_fu_367_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_367_p_din1),.grp_fu_367_p_dout0(grp_fu_204_p_dout0),.grp_fu_367_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_367_p_ce),.grp_fu_371_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_371_p_din0),.grp_fu_371_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_371_p_din1),.grp_fu_371_p_dout0(grp_fu_208_p_dout0),.grp_fu_371_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_371_p_ce),.grp_fu_375_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_375_p_din0),.grp_fu_375_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_375_p_din1),.grp_fu_375_p_dout0(grp_fu_212_p_dout0),.grp_fu_375_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_375_p_ce),.grp_fu_379_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_379_p_din0),.grp_fu_379_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_379_p_din1),.grp_fu_379_p_dout0(grp_fu_216_p_dout0),.grp_fu_379_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_379_p_ce),.grp_fu_383_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_383_p_din0),.grp_fu_383_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_383_p_din1),.grp_fu_383_p_dout0(grp_fu_220_p_dout0),.grp_fu_383_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_383_p_ce),.grp_fu_387_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_387_p_din0),.grp_fu_387_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_387_p_din1),.grp_fu_387_p_dout0(grp_fu_224_p_dout0),.grp_fu_387_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_387_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U64(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_391_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_391_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U65(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_395_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_395_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U66(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_399_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_399_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U67(.din0(mul_ln175_fu_459_p0),.din1(mul_ln175_fu_459_p1),.dout(mul_ln175_fu_459_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U68(.din0(mul_ln171_fu_744_p0),.din1(mul_ln171_fu_744_p1),.dout(mul_ln171_fu_744_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U69(.din0(mul_ln186_fu_753_p0),.din1(mul_ln186_fu_753_p1),.dout(mul_ln186_fu_753_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U70(.din0(mul_ln199_fu_762_p0),.din1(mul_ln199_fu_762_p1),.dout(mul_ln199_fu_762_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U71(.din0(mul_ln212_fu_771_p0),.din1(mul_ln212_fu_771_p1),.dout(mul_ln212_fu_771_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U72(.din0(mul_ln225_fu_780_p0),.din1(mul_ln225_fu_780_p1),.dout(mul_ln225_fu_780_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U73(.din0(mul_ln238_fu_789_p0),.din1(mul_ln238_fu_789_p1),.dout(mul_ln238_fu_789_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U74(.din0(mul_ln251_fu_798_p0),.din1(mul_ln251_fu_798_p1),.dout(mul_ln251_fu_798_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U75(.din0(mul_ln264_fu_807_p0),.din1(mul_ln264_fu_807_p1),.dout(mul_ln264_fu_807_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U76(.din0(mul_ln277_fu_823_p0),.din1(mul_ln277_fu_823_p1),.dout(mul_ln277_fu_823_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_835_p0),.din1(grp_fu_835_p1),.din2(grp_fu_835_p2),.ce(1'b1),.dout(grp_fu_835_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_843_p0),.din1(grp_fu_843_p1),.din2(grp_fu_843_p2),.ce(1'b1),.dout(grp_fu_843_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_851_p0),.din1(grp_fu_851_p1),.din2(grp_fu_851_p2),.ce(1'b1),.dout(grp_fu_851_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_859_p0),.din1(grp_fu_859_p1),.din2(grp_fu_859_p2),.ce(1'b1),.dout(grp_fu_859_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_867_p0),.din1(grp_fu_867_p1),.din2(grp_fu_867_p2),.ce(1'b1),.dout(grp_fu_867_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_875_p0),.din1(grp_fu_875_p1),.din2(grp_fu_875_p2),.ce(1'b1),.dout(grp_fu_875_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_883_p0),.din1(grp_fu_883_p1),.din2(grp_fu_883_p2),.ce(1'b1),.dout(grp_fu_883_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_891_p0),.din1(grp_fu_891_p1),.din2(grp_fu_891_p2),.ce(1'b1),.dout(grp_fu_891_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_296),.din1(grp_fu_899_p1),.din2(grp_fu_899_p2),.din3(grp_fu_899_p3),.ce(1'b1),.dout(grp_fu_899_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_116 <= 8'd0;
    end else if (((icmp_ln169_fu_485_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_116 <= add_ln168_reg_932;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_296 <= add_ln169_reg_979;
    end else if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_425_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v115_reg_296 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_932 <= add_ln168_fu_431_p2;
        cmp11_reg_966 <= cmp11_fu_479_p2;
        mul_ln175_reg_948 <= mul_ln175_fu_459_p2;
        trunc_ln168_1_reg_943 <= trunc_ln168_1_fu_441_p1;
        trunc_ln168_reg_937 <= trunc_ln168_fu_437_p1;
        zext_ln168_reg_953[6 : 0] <= zext_ln168_fu_475_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_979 <= add_ln169_fu_495_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_44_reg_1330 <= empty_44_fu_829_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1240 <= mul_ln171_fu_744_p2;
        mul_ln186_reg_1250 <= mul_ln186_fu_753_p2;
        mul_ln199_reg_1260 <= mul_ln199_fu_762_p2;
        mul_ln212_reg_1270 <= mul_ln212_fu_771_p2;
        mul_ln225_reg_1280 <= mul_ln225_fu_780_p2;
        mul_ln238_reg_1290 <= mul_ln238_fu_789_p2;
        mul_ln251_reg_1300 <= mul_ln251_fu_798_p2;
        mul_ln264_reg_1310 <= mul_ln264_fu_807_p2;
        mul_ln277_reg_1320 <= mul_ln277_fu_823_p2;
        trunc_ln169_reg_1234 <= trunc_ln169_fu_726_p1;
        v20_reg_1255 <= grp_fu_208_p_dout0;
        v21_reg_1265 <= grp_fu_212_p_dout0;
        v22_reg_1275 <= grp_fu_216_p_dout0;
        v23_reg_1285 <= grp_fu_220_p_dout0;
        v24_reg_1295 <= grp_fu_224_p_dout0;
        v25_reg_1305 <= grp_fu_391_p2;
        v26_reg_1315 <= grp_fu_395_p2;
        v27_reg_1325 <= grp_fu_399_p2;
        v_reg_1245 <= grp_fu_204_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_999 <= {{empty_22_fu_525_p2[7:3]}};
        tmp_reg_989 <= {{empty_19_fu_505_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_2_reg_1009 <= {{empty_25_fu_545_p2[7:3]}};
        tmp_3_reg_1019 <= {{empty_28_fu_565_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_4_reg_1039 <= {{empty_31_fu_590_p2[7:3]}};
        tmp_5_reg_1049 <= {{empty_34_fu_610_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_6_reg_1084 <= {{empty_37_fu_640_p2[7:3]}};
        v119_v_reg_1054 <= grp_fu_403_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v132_v_reg_1089 <= grp_fu_410_p3;
        v143_v_reg_1094 <= grp_fu_403_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v154_v_reg_1119 <= grp_fu_403_p3;
        v165_v_reg_1124 <= grp_fu_410_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v176_v_reg_1149 <= grp_fu_403_p3;
        v187_v_reg_1154 <= grp_fu_410_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v198_v_reg_1179 <= grp_fu_403_p3;
        v209_v_reg_1184 <= grp_fu_410_p3;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (icmp_ln168_fu_425_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_425_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1335_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1335_p_ce;
    end else begin
        grp_fu_1335_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1339_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1339_p_ce;
    end else begin
        grp_fu_1339_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1343_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1343_p_ce;
    end else begin
        grp_fu_1343_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_367_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_367_p_ce;
    end else begin
        grp_fu_367_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_367_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_367_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_367_p0 = v119_fu_690_p1;
    end else begin
        grp_fu_367_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_367_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_367_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_367_p1 = v113;
    end else begin
        grp_fu_367_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_371_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_371_p_ce;
    end else begin
        grp_fu_371_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_371_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_371_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_371_p0 = v132_fu_694_p1;
    end else begin
        grp_fu_371_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_371_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_371_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_371_p1 = v113;
    end else begin
        grp_fu_371_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_375_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_375_p_ce;
    end else begin
        grp_fu_375_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_375_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_375_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_375_p0 = v143_fu_698_p1;
    end else begin
        grp_fu_375_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_375_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_375_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_375_p1 = v113;
    end else begin
        grp_fu_375_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_379_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_379_p_ce;
    end else begin
        grp_fu_379_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_379_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_379_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_379_p0 = v154_fu_702_p1;
    end else begin
        grp_fu_379_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_379_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_379_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_379_p1 = v113;
    end else begin
        grp_fu_379_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_383_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_383_p_ce;
    end else begin
        grp_fu_383_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_383_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_383_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_383_p0 = v165_fu_706_p1;
    end else begin
        grp_fu_383_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_383_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_383_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_383_p1 = v113;
    end else begin
        grp_fu_383_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_387_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_387_p_ce;
    end else begin
        grp_fu_387_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_387_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_387_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_387_p0 = v176_fu_710_p1;
    end else begin
        grp_fu_387_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_387_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_387_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_387_p1 = v113;
    end else begin
        grp_fu_387_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast1130_fu_680_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast1128_fu_670_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast1126_fu_660_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast1125_fu_635_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast1124_fu_585_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast1131_fu_685_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast1129_fu_675_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast1127_fu_665_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_630_p1;
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
        v226_1_address0_local = p_cast1130_fu_680_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast1128_fu_670_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast1126_fu_660_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast1125_fu_635_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast1124_fu_585_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast1131_fu_685_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast1129_fu_675_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast1127_fu_665_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_630_p1;
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
    if (((icmp_ln168_fu_425_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_425_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_425_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (icmp_ln168_fu_425_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_485_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_fu_431_p2 = (v114_fu_116 + 8'd1);
assign add_ln169_fu_495_p2 = (v115_reg_296 + 8'd9);
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
    ap_block_state2 = ((icmp_ln168_fu_425_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_479_p2 = ((v114_fu_116 == 8'd0) ? 1'b1 : 1'b0);
assign empty_19_fu_505_p2 = (v115_reg_296 + 8'd1);
assign empty_22_fu_525_p2 = (v115_reg_296 + 8'd2);
assign empty_25_fu_545_p2 = (v115_reg_296 + 8'd3);
assign empty_28_fu_565_p2 = (v115_reg_296 + 8'd4);
assign empty_31_fu_590_p2 = (v115_reg_296 + 8'd5);
assign empty_34_fu_610_p2 = (v115_reg_296 + 8'd6);
assign empty_37_fu_640_p2 = (v115_reg_296 + 8'd7);
assign empty_43_fu_813_p2 = (lshr_ln1_fu_730_p4 + 5'd1);
assign empty_44_fu_829_p2 = ((trunc_ln169_reg_1234 == 3'd7) ? 1'b1 : 1'b0);
assign grp_fu_192_p_ce = grp_fu_1335_ce;
assign grp_fu_192_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1335_p_din0;
assign grp_fu_192_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1335_p_din1;
assign grp_fu_192_p_opcode = 2'd0;
assign grp_fu_196_p_ce = grp_fu_1339_ce;
assign grp_fu_196_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1339_p_din0;
assign grp_fu_196_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1339_p_din1;
assign grp_fu_196_p_opcode = 2'd0;
assign grp_fu_200_p_ce = grp_fu_1343_ce;
assign grp_fu_200_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1343_p_din0;
assign grp_fu_200_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_grp_fu_1343_p_din1;
assign grp_fu_200_p_opcode = 2'd0;
assign grp_fu_204_p_ce = grp_fu_367_ce;
assign grp_fu_204_p_din0 = grp_fu_367_p0;
assign grp_fu_204_p_din1 = grp_fu_367_p1;
assign grp_fu_208_p_ce = grp_fu_371_ce;
assign grp_fu_208_p_din0 = grp_fu_371_p0;
assign grp_fu_208_p_din1 = grp_fu_371_p1;
assign grp_fu_212_p_ce = grp_fu_375_ce;
assign grp_fu_212_p_din0 = grp_fu_375_p0;
assign grp_fu_212_p_din1 = grp_fu_375_p1;
assign grp_fu_216_p_ce = grp_fu_379_ce;
assign grp_fu_216_p_din0 = grp_fu_379_p0;
assign grp_fu_216_p_din1 = grp_fu_379_p1;
assign grp_fu_220_p_ce = grp_fu_383_ce;
assign grp_fu_220_p_din0 = grp_fu_383_p0;
assign grp_fu_220_p_din1 = grp_fu_383_p1;
assign grp_fu_224_p_ce = grp_fu_387_ce;
assign grp_fu_224_p_din0 = grp_fu_387_p0;
assign grp_fu_224_p_din1 = grp_fu_387_p1;
assign grp_fu_391_p0 = v187_v_reg_1154;
assign grp_fu_395_p0 = v198_v_reg_1179;
assign grp_fu_399_p0 = v209_v_reg_1184;
assign grp_fu_403_p3 = ((trunc_ln168_reg_937[0:0] == 1'b1) ? v226_1_q0 : v226_0_q0);
assign grp_fu_410_p3 = ((trunc_ln168_reg_937[0:0] == 1'b1) ? v226_1_q1 : v226_0_q1);
assign grp_fu_835_p0 = grp_fu_835_p00;
assign grp_fu_835_p00 = v115_reg_296;
assign grp_fu_835_p1 = 15'd105;
assign grp_fu_835_p2 = zext_ln168_reg_953;
assign grp_fu_843_p0 = grp_fu_843_p00;
assign grp_fu_843_p00 = empty_19_fu_505_p2;
assign grp_fu_843_p1 = 15'd105;
assign grp_fu_843_p2 = zext_ln168_reg_953;
assign grp_fu_851_p0 = grp_fu_851_p00;
assign grp_fu_851_p00 = empty_22_fu_525_p2;
assign grp_fu_851_p1 = 15'd105;
assign grp_fu_851_p2 = zext_ln168_reg_953;
assign grp_fu_859_p0 = grp_fu_859_p00;
assign grp_fu_859_p00 = empty_25_fu_545_p2;
assign grp_fu_859_p1 = 15'd105;
assign grp_fu_859_p2 = zext_ln168_reg_953;
assign grp_fu_867_p0 = grp_fu_867_p00;
assign grp_fu_867_p00 = empty_28_fu_565_p2;
assign grp_fu_867_p1 = 15'd105;
assign grp_fu_867_p2 = zext_ln168_reg_953;
assign grp_fu_875_p0 = grp_fu_875_p00;
assign grp_fu_875_p00 = empty_31_fu_590_p2;
assign grp_fu_875_p1 = 15'd105;
assign grp_fu_875_p2 = zext_ln168_reg_953;
assign grp_fu_883_p0 = grp_fu_883_p00;
assign grp_fu_883_p00 = empty_34_fu_610_p2;
assign grp_fu_883_p1 = 15'd105;
assign grp_fu_883_p2 = zext_ln168_reg_953;
assign grp_fu_891_p0 = grp_fu_891_p00;
assign grp_fu_891_p00 = empty_37_fu_640_p2;
assign grp_fu_891_p1 = 15'd105;
assign grp_fu_891_p2 = zext_ln168_reg_953;
assign grp_fu_899_p1 = 8'd8;
assign grp_fu_899_p2 = 15'd105;
assign grp_fu_899_p3 = zext_ln168_reg_953;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_ap_start_reg;
assign icmp_ln168_fu_425_p2 = ((v114_fu_116 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_485_p2 = ((v115_reg_296 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln168_1_fu_465_p4 = {{v114_fu_116[7:1]}};
assign lshr_ln1_fu_730_p4 = {{v115_reg_296[7:3]}};
assign lshr_ln_fu_445_p4 = {{v114_fu_116[7:3]}};
assign mul_ln171_fu_744_p0 = mul_ln171_fu_744_p00;
assign mul_ln171_fu_744_p00 = lshr_ln1_fu_730_p4;
assign mul_ln171_fu_744_p1 = 13'd190;
assign mul_ln175_fu_459_p0 = mul_ln175_fu_459_p00;
assign mul_ln175_fu_459_p00 = lshr_ln_fu_445_p4;
assign mul_ln175_fu_459_p1 = 13'd190;
assign mul_ln186_fu_753_p0 = mul_ln186_fu_753_p00;
assign mul_ln186_fu_753_p00 = tmp_reg_989;
assign mul_ln186_fu_753_p1 = 13'd190;
assign mul_ln199_fu_762_p0 = mul_ln199_fu_762_p00;
assign mul_ln199_fu_762_p00 = tmp_1_reg_999;
assign mul_ln199_fu_762_p1 = 13'd190;
assign mul_ln212_fu_771_p0 = mul_ln212_fu_771_p00;
assign mul_ln212_fu_771_p00 = tmp_2_reg_1009;
assign mul_ln212_fu_771_p1 = 13'd190;
assign mul_ln225_fu_780_p0 = mul_ln225_fu_780_p00;
assign mul_ln225_fu_780_p00 = tmp_3_reg_1019;
assign mul_ln225_fu_780_p1 = 13'd190;
assign mul_ln238_fu_789_p0 = mul_ln238_fu_789_p00;
assign mul_ln238_fu_789_p00 = tmp_4_reg_1039;
assign mul_ln238_fu_789_p1 = 13'd190;
assign mul_ln251_fu_798_p0 = mul_ln251_fu_798_p00;
assign mul_ln251_fu_798_p00 = tmp_5_reg_1049;
assign mul_ln251_fu_798_p1 = 13'd190;
assign mul_ln264_fu_807_p0 = mul_ln264_fu_807_p00;
assign mul_ln264_fu_807_p00 = tmp_6_reg_1084;
assign mul_ln264_fu_807_p1 = 13'd190;
assign mul_ln277_fu_823_p0 = mul_ln277_fu_823_p00;
assign mul_ln277_fu_823_p00 = empty_43_fu_813_p2;
assign mul_ln277_fu_823_p1 = 13'd190;
assign p_cast1124_fu_585_p1 = grp_fu_835_p3;
assign p_cast1125_fu_635_p1 = grp_fu_851_p3;
assign p_cast1126_fu_660_p1 = grp_fu_859_p3;
assign p_cast1127_fu_665_p1 = grp_fu_867_p3;
assign p_cast1128_fu_670_p1 = grp_fu_875_p3;
assign p_cast1129_fu_675_p1 = grp_fu_883_p3;
assign p_cast1130_fu_680_p1 = grp_fu_891_p3;
assign p_cast1131_fu_685_p1 = grp_fu_899_p4;
assign p_cast_fu_630_p1 = grp_fu_843_p3;
assign trunc_ln168_1_fu_441_p1 = v114_fu_116[2:0];
assign trunc_ln168_fu_437_p1 = v114_fu_116[0:0];
assign trunc_ln169_fu_726_p1 = v115_reg_296[2:0];
assign v119_fu_690_p1 = v119_v_reg_1054;
assign v132_fu_694_p1 = v132_v_reg_1089;
assign v143_fu_698_p1 = v143_v_reg_1094;
assign v154_fu_702_p1 = v154_v_reg_1119;
assign v165_fu_706_p1 = v165_v_reg_1124;
assign v176_fu_710_p1 = v176_v_reg_1149;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_1_we1;
assign v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_address0;
assign v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_address1;
assign v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_ce0;
assign v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_ce1;
assign v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_d0;
assign v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_d1;
assign v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_we0;
assign v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_2_we1;
assign v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_address0;
assign v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_address1;
assign v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_ce0;
assign v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_ce1;
assign v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_d0;
assign v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_d1;
assign v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_we0;
assign v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_3_we1;
assign v225_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_address0;
assign v225_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_address1;
assign v225_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_ce0;
assign v225_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_ce1;
assign v225_4_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_d0;
assign v225_4_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_d1;
assign v225_4_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_we0;
assign v225_4_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_4_we1;
assign v225_5_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_address0;
assign v225_5_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_address1;
assign v225_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_ce0;
assign v225_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_ce1;
assign v225_5_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_d0;
assign v225_5_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_d1;
assign v225_5_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_we0;
assign v225_5_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_5_we1;
assign v225_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_address0;
assign v225_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_address1;
assign v225_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_ce0;
assign v225_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_ce1;
assign v225_6_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_d0;
assign v225_6_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_d1;
assign v225_6_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_we0;
assign v225_6_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_6_we1;
assign v225_7_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_address0;
assign v225_7_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_address1;
assign v225_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_ce0;
assign v225_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_ce1;
assign v225_7_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_d0;
assign v225_7_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_d1;
assign v225_7_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_we0;
assign v225_7_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v225_7_we1;
assign v226_0_address0 = v226_0_address0_local;
assign v226_0_address1 = v226_0_address1_local;
assign v226_0_ce0 = v226_0_ce0_local;
assign v226_0_ce1 = v226_0_ce1_local;
assign v226_1_address0 = v226_1_address0_local;
assign v226_1_address1 = v226_1_address1_local;
assign v226_1_ce0 = v226_1_ce0_local;
assign v226_1_ce1 = v226_1_ce1_local;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_3_ce1;
assign v227_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_4_address0;
assign v227_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_4_address1;
assign v227_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_4_ce0;
assign v227_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_4_ce1;
assign v227_5_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_5_address0;
assign v227_5_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_5_address1;
assign v227_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_5_ce0;
assign v227_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_5_ce1;
assign v227_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_6_address0;
assign v227_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_6_address1;
assign v227_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_6_ce0;
assign v227_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_6_ce1;
assign v227_7_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_7_address0;
assign v227_7_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_7_address1;
assign v227_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_7_ce0;
assign v227_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_308_v227_7_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_475_p1 = lshr_ln168_1_fu_465_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_953[14:7] <= 8'b00000000;
end
endmodule 