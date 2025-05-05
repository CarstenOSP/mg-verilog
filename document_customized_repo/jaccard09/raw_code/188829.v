module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v225_4_address0,v225_4_ce0,v225_4_we0,v225_4_d0,v225_4_q0,v225_4_address1,v225_4_ce1,v225_4_we1,v225_4_d1,v225_4_q1,v225_5_address0,v225_5_ce0,v225_5_we0,v225_5_d0,v225_5_q0,v225_5_address1,v225_5_ce1,v225_5_we1,v225_5_d1,v225_5_q1,v225_6_address0,v225_6_ce0,v225_6_we0,v225_6_d0,v225_6_q0,v225_6_address1,v225_6_ce1,v225_6_we1,v225_6_d1,v225_6_q1,v225_7_address0,v225_7_ce0,v225_7_we0,v225_7_d0,v225_7_q0,v225_7_address1,v225_7_ce1,v225_7_we1,v225_7_d1,v225_7_q1,v113,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_opcode,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce); 
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
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [15:0] v226_address1;
output   v226_ce1;
input  [31:0] v226_q1;
output  [14:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [14:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [14:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [14:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
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
output  [31:0] grp_fu_184_p_din0;
output  [31:0] grp_fu_184_p_din1;
output  [1:0] grp_fu_184_p_opcode;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_306_p2;
wire   [7:0] add_ln168_fu_312_p2;
reg   [7:0] add_ln168_reg_790;
wire   [15:0] zext_ln168_fu_318_p1;
reg   [15:0] zext_ln168_reg_795;
wire   [0:0] trunc_ln168_fu_322_p1;
reg   [0:0] trunc_ln168_reg_808;
wire   [14:0] mul_ln175_fu_340_p2;
reg   [14:0] mul_ln175_reg_813;
wire   [0:0] cmp11_fu_346_p2;
reg   [0:0] cmp11_reg_818;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_362_p2;
reg   [7:0] add_ln169_reg_831;
wire    ap_CS_fsm_state4;
reg   [4:0] tmp_reg_841;
reg   [4:0] tmp_1_reg_851;
wire    ap_CS_fsm_state5;
reg   [4:0] tmp_2_reg_861;
reg   [4:0] tmp_3_reg_871;
wire    ap_CS_fsm_state6;
reg   [4:0] tmp_4_reg_886;
reg   [4:0] tmp_5_reg_896;
reg   [31:0] v226_load_reg_901;
wire    ap_CS_fsm_state7;
reg   [4:0] tmp_6_reg_921;
reg   [31:0] v226_load_1_reg_926;
wire    ap_CS_fsm_state8;
reg   [31:0] v226_load_2_reg_931;
reg   [31:0] v226_load_3_reg_946;
wire    ap_CS_fsm_state9;
reg   [31:0] v226_load_4_reg_951;
reg   [31:0] v226_load_5_reg_966;
wire    ap_CS_fsm_state10;
reg   [31:0] v226_load_6_reg_971;
reg   [31:0] v226_load_7_reg_986;
wire    ap_CS_fsm_state11;
reg   [31:0] v226_load_8_reg_991;
wire   [31:0] v119_fu_548_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_552_p1;
wire   [31:0] v143_fu_556_p1;
wire   [31:0] v154_fu_560_p1;
wire   [31:0] v165_fu_564_p1;
wire   [31:0] v176_fu_568_p1;
wire   [31:0] v187_fu_572_p1;
wire   [31:0] v198_fu_576_p1;
wire   [31:0] v209_fu_580_p1;
wire   [2:0] trunc_ln169_fu_584_p1;
reg   [2:0] trunc_ln169_reg_1041;
wire    ap_CS_fsm_state15;
wire   [12:0] mul_ln171_fu_602_p2;
reg   [12:0] mul_ln171_reg_1047;
reg   [31:0] v_reg_1052;
wire   [12:0] mul_ln186_fu_611_p2;
reg   [12:0] mul_ln186_reg_1057;
reg   [31:0] v19_reg_1062;
wire   [12:0] mul_ln199_fu_620_p2;
reg   [12:0] mul_ln199_reg_1067;
wire   [31:0] grp_fu_270_p2;
reg   [31:0] v20_reg_1072;
wire   [12:0] mul_ln212_fu_629_p2;
reg   [12:0] mul_ln212_reg_1077;
wire   [31:0] grp_fu_274_p2;
reg   [31:0] v21_reg_1082;
wire   [12:0] mul_ln225_fu_638_p2;
reg   [12:0] mul_ln225_reg_1087;
wire   [31:0] grp_fu_278_p2;
reg   [31:0] v22_reg_1092;
wire   [12:0] mul_ln238_fu_647_p2;
reg   [12:0] mul_ln238_reg_1097;
wire   [31:0] grp_fu_282_p2;
reg   [31:0] v23_reg_1102;
wire   [12:0] mul_ln251_fu_656_p2;
reg   [12:0] mul_ln251_reg_1107;
wire   [31:0] grp_fu_286_p2;
reg   [31:0] v24_reg_1112;
wire   [12:0] mul_ln264_fu_665_p2;
reg   [12:0] mul_ln264_reg_1117;
wire   [31:0] grp_fu_290_p2;
reg   [31:0] v25_reg_1122;
wire   [12:0] mul_ln277_fu_681_p2;
reg   [12:0] mul_ln277_reg_1127;
wire   [31:0] grp_fu_294_p2;
reg   [31:0] v26_reg_1132;
wire   [0:0] empty_45_fu_687_p2;
reg   [0:0] empty_45_reg_1137;
wire    ap_CS_fsm_state16;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_ready;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_d1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_d0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_0_ce1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_1_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_1142_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_1142_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_1142_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_1142_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_262_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_262_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_262_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_266_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_266_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_266_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_270_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_270_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_270_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_274_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_274_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_274_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_278_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_278_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_278_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_282_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_282_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_282_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_286_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_286_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_286_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_290_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_290_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_290_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_294_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_294_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_294_p_ce;
reg   [7:0] v115_reg_203;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_start_reg;
wire   [63:0] p_cast3662_fu_452_p1;
wire   [63:0] p_cast_fu_496_p1;
wire   [63:0] p_cast3663_fu_500_p1;
wire   [63:0] p_cast3664_fu_524_p1;
wire   [63:0] p_cast3665_fu_528_p1;
wire   [63:0] p_cast3666_fu_532_p1;
wire   [63:0] p_cast3667_fu_536_p1;
wire   [63:0] p_cast3668_fu_540_p1;
wire   [63:0] p_cast3669_fu_544_p1;
reg   [7:0] v114_fu_104;
wire   [0:0] icmp_ln169_fu_352_p2;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_262_p0;
reg   [31:0] grp_fu_262_p1;
reg   [31:0] grp_fu_266_p0;
reg   [31:0] grp_fu_266_p1;
reg   [31:0] grp_fu_270_p0;
reg   [31:0] grp_fu_270_p1;
reg   [31:0] grp_fu_274_p0;
reg   [31:0] grp_fu_274_p1;
reg   [31:0] grp_fu_278_p0;
reg   [31:0] grp_fu_278_p1;
reg   [31:0] grp_fu_282_p0;
reg   [31:0] grp_fu_282_p1;
reg   [31:0] grp_fu_286_p0;
reg   [31:0] grp_fu_286_p1;
reg   [31:0] grp_fu_290_p0;
reg   [31:0] grp_fu_290_p1;
reg   [31:0] grp_fu_294_p0;
reg   [31:0] grp_fu_294_p1;
wire   [6:0] lshr_ln_fu_326_p4;
wire   [6:0] mul_ln175_fu_340_p0;
wire   [8:0] mul_ln175_fu_340_p1;
wire   [7:0] empty_20_fu_372_p2;
wire   [7:0] empty_23_fu_392_p2;
wire   [7:0] empty_26_fu_412_p2;
wire   [7:0] empty_29_fu_432_p2;
wire   [15:0] grp_fu_693_p3;
wire   [7:0] empty_32_fu_456_p2;
wire   [7:0] empty_35_fu_476_p2;
wire   [15:0] grp_fu_701_p3;
wire   [15:0] grp_fu_709_p3;
wire   [7:0] empty_38_fu_504_p2;
wire   [15:0] grp_fu_717_p3;
wire   [15:0] grp_fu_725_p3;
wire   [15:0] grp_fu_733_p3;
wire   [15:0] grp_fu_741_p3;
wire   [15:0] grp_fu_749_p3;
wire   [15:0] grp_fu_757_p4;
wire   [4:0] lshr_ln1_fu_588_p4;
wire   [4:0] mul_ln171_fu_602_p0;
wire   [8:0] mul_ln171_fu_602_p1;
wire   [4:0] mul_ln186_fu_611_p0;
wire   [8:0] mul_ln186_fu_611_p1;
wire   [4:0] mul_ln199_fu_620_p0;
wire   [8:0] mul_ln199_fu_620_p1;
wire   [4:0] mul_ln212_fu_629_p0;
wire   [8:0] mul_ln212_fu_629_p1;
wire   [4:0] mul_ln225_fu_638_p0;
wire   [8:0] mul_ln225_fu_638_p1;
wire   [4:0] mul_ln238_fu_647_p0;
wire   [8:0] mul_ln238_fu_647_p1;
wire   [4:0] mul_ln251_fu_656_p0;
wire   [8:0] mul_ln251_fu_656_p1;
wire   [4:0] mul_ln264_fu_665_p0;
wire   [8:0] mul_ln264_fu_665_p1;
wire   [4:0] empty_44_fu_671_p2;
wire   [4:0] mul_ln277_fu_681_p0;
wire   [8:0] mul_ln277_fu_681_p1;
wire   [7:0] grp_fu_693_p0;
wire   [7:0] grp_fu_693_p1;
wire   [7:0] grp_fu_693_p2;
wire   [7:0] grp_fu_701_p0;
wire   [7:0] grp_fu_701_p1;
wire   [7:0] grp_fu_701_p2;
wire   [7:0] grp_fu_709_p0;
wire   [7:0] grp_fu_709_p1;
wire   [7:0] grp_fu_709_p2;
wire   [7:0] grp_fu_717_p0;
wire   [7:0] grp_fu_717_p1;
wire   [7:0] grp_fu_717_p2;
wire   [7:0] grp_fu_725_p0;
wire   [7:0] grp_fu_725_p1;
wire   [7:0] grp_fu_725_p2;
wire   [7:0] grp_fu_733_p0;
wire   [7:0] grp_fu_733_p1;
wire   [7:0] grp_fu_733_p2;
wire   [7:0] grp_fu_741_p0;
wire   [7:0] grp_fu_741_p1;
wire   [7:0] grp_fu_741_p2;
wire   [7:0] grp_fu_749_p0;
wire   [7:0] grp_fu_749_p1;
wire   [7:0] grp_fu_749_p2;
wire   [3:0] grp_fu_757_p1;
wire   [7:0] grp_fu_757_p2;
wire   [7:0] grp_fu_757_p3;
reg    grp_fu_262_ce;
reg    grp_fu_266_ce;
reg    grp_fu_270_ce;
reg    grp_fu_274_ce;
reg    grp_fu_278_ce;
reg    grp_fu_282_ce;
reg    grp_fu_286_ce;
reg    grp_fu_290_ce;
reg    grp_fu_294_ce;
reg    grp_fu_1142_ce;
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
wire   [15:0] grp_fu_693_p00;
wire   [15:0] grp_fu_701_p00;
wire   [15:0] grp_fu_709_p00;
wire   [15:0] grp_fu_717_p00;
wire   [15:0] grp_fu_725_p00;
wire   [15:0] grp_fu_733_p00;
wire   [15:0] grp_fu_741_p00;
wire   [15:0] grp_fu_749_p00;
wire   [12:0] mul_ln171_fu_602_p00;
wire   [14:0] mul_ln175_fu_340_p00;
wire   [12:0] mul_ln186_fu_611_p00;
wire   [12:0] mul_ln199_fu_620_p00;
wire   [12:0] mul_ln212_fu_629_p00;
wire   [12:0] mul_ln225_fu_638_p00;
wire   [12:0] mul_ln238_fu_647_p00;
wire   [12:0] mul_ln251_fu_656_p00;
wire   [12:0] mul_ln264_fu_665_p00;
wire   [12:0] mul_ln277_fu_681_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_start_reg = 1'b0;
#0 v114_fu_104 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_215(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_d1),.v225_3_q1(v225_3_q1),.v225_4_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_address0),.v225_4_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_ce0),.v225_4_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_we0),.v225_4_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_d0),.v225_4_q0(v225_4_q0),.v225_4_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_address1),.v225_4_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_ce1),.v225_4_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_we1),.v225_4_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_d1),.v225_4_q1(v225_4_q1),.v225_5_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_address0),.v225_5_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_ce0),.v225_5_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_we0),.v225_5_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_d0),.v225_5_q0(v225_5_q0),.v225_5_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_address1),.v225_5_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_ce1),.v225_5_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_we1),.v225_5_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_d1),.v225_5_q1(v225_5_q1),.v225_6_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_address0),.v225_6_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_ce0),.v225_6_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_we0),.v225_6_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_d0),.v225_6_q0(v225_6_q0),.v225_6_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_address1),.v225_6_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_ce1),.v225_6_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_we1),.v225_6_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_d1),.v225_6_q1(v225_6_q1),.v225_7_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_address0),.v225_7_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_ce0),.v225_7_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_we0),.v225_7_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_d0),.v225_7_q0(v225_7_q0),.v225_7_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_address1),.v225_7_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_ce1),.v225_7_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_we1),.v225_7_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_d1),.v225_7_q1(v225_7_q1),.mul_ln175(mul_ln175_reg_813),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_1_ce1),.v227_1_q1(v227_1_q1),.mul_ln171(mul_ln171_reg_1047),.mul_ln277(mul_ln277_reg_1127),.mul_ln264(mul_ln264_reg_1117),.mul_ln251(mul_ln251_reg_1107),.mul_ln238(mul_ln238_reg_1097),.mul_ln225(mul_ln225_reg_1087),.mul_ln212(mul_ln212_reg_1077),.mul_ln199(mul_ln199_reg_1067),.mul_ln186(mul_ln186_reg_1057),.empty_15(trunc_ln169_reg_1041),.cmp11(cmp11_reg_818),.empty_16(trunc_ln168_reg_808),.v120(v_reg_1052),.v133(v19_reg_1062),.v144(v20_reg_1072),.v155(v21_reg_1082),.v166(v22_reg_1092),.v177(v23_reg_1102),.v188(v24_reg_1112),.v199(v25_reg_1122),.v210(v26_reg_1132),.empty(empty_45_reg_1137),.grp_fu_1142_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_1142_p_din0),.grp_fu_1142_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_1142_p_din1),.grp_fu_1142_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_1142_p_opcode),.grp_fu_1142_p_dout0(grp_fu_184_p_dout0),.grp_fu_1142_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_1142_p_ce),.grp_fu_262_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_262_p_din0),.grp_fu_262_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_262_p_din1),.grp_fu_262_p_dout0(grp_fu_188_p_dout0),.grp_fu_262_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_262_p_ce),.grp_fu_266_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_266_p_din0),.grp_fu_266_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_266_p_din1),.grp_fu_266_p_dout0(grp_fu_192_p_dout0),.grp_fu_266_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_266_p_ce),.grp_fu_270_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_270_p_din0),.grp_fu_270_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_270_p_din1),.grp_fu_270_p_dout0(grp_fu_270_p2),.grp_fu_270_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_270_p_ce),.grp_fu_274_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_274_p_din0),.grp_fu_274_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_274_p_din1),.grp_fu_274_p_dout0(grp_fu_274_p2),.grp_fu_274_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_274_p_ce),.grp_fu_278_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_278_p_din0),.grp_fu_278_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_278_p_din1),.grp_fu_278_p_dout0(grp_fu_278_p2),.grp_fu_278_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_278_p_ce),.grp_fu_282_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_282_p_din0),.grp_fu_282_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_282_p_din1),.grp_fu_282_p_dout0(grp_fu_282_p2),.grp_fu_282_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_282_p_ce),.grp_fu_286_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_286_p_din0),.grp_fu_286_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_286_p_din1),.grp_fu_286_p_dout0(grp_fu_286_p2),.grp_fu_286_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_286_p_ce),.grp_fu_290_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_290_p_din0),.grp_fu_290_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_290_p_din1),.grp_fu_290_p_dout0(grp_fu_290_p2),.grp_fu_290_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_290_p_ce),.grp_fu_294_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_294_p_din0),.grp_fu_294_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_294_p_din1),.grp_fu_294_p_dout0(grp_fu_294_p2),.grp_fu_294_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_294_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U60(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_270_p0),.din1(grp_fu_270_p1),.ce(grp_fu_270_ce),.dout(grp_fu_270_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U61(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_274_p0),.din1(grp_fu_274_p1),.ce(grp_fu_274_ce),.dout(grp_fu_274_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U62(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_278_p0),.din1(grp_fu_278_p1),.ce(grp_fu_278_ce),.dout(grp_fu_278_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U63(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_282_p0),.din1(grp_fu_282_p1),.ce(grp_fu_282_ce),.dout(grp_fu_282_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U64(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_286_p0),.din1(grp_fu_286_p1),.ce(grp_fu_286_ce),.dout(grp_fu_286_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U65(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_290_p0),.din1(grp_fu_290_p1),.ce(grp_fu_290_ce),.dout(grp_fu_290_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U66(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_294_p0),.din1(grp_fu_294_p1),.ce(grp_fu_294_ce),.dout(grp_fu_294_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U67(.din0(mul_ln175_fu_340_p0),.din1(mul_ln175_fu_340_p1),.dout(mul_ln175_fu_340_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U68(.din0(mul_ln171_fu_602_p0),.din1(mul_ln171_fu_602_p1),.dout(mul_ln171_fu_602_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U69(.din0(mul_ln186_fu_611_p0),.din1(mul_ln186_fu_611_p1),.dout(mul_ln186_fu_611_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U70(.din0(mul_ln199_fu_620_p0),.din1(mul_ln199_fu_620_p1),.dout(mul_ln199_fu_620_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U71(.din0(mul_ln212_fu_629_p0),.din1(mul_ln212_fu_629_p1),.dout(mul_ln212_fu_629_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U72(.din0(mul_ln225_fu_638_p0),.din1(mul_ln225_fu_638_p1),.dout(mul_ln225_fu_638_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U73(.din0(mul_ln238_fu_647_p0),.din1(mul_ln238_fu_647_p1),.dout(mul_ln238_fu_647_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U74(.din0(mul_ln251_fu_656_p0),.din1(mul_ln251_fu_656_p1),.dout(mul_ln251_fu_656_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U75(.din0(mul_ln264_fu_665_p0),.din1(mul_ln264_fu_665_p1),.dout(mul_ln264_fu_665_p2));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U76(.din0(mul_ln277_fu_681_p0),.din1(mul_ln277_fu_681_p1),.dout(mul_ln277_fu_681_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_693_p0),.din1(grp_fu_693_p1),.din2(grp_fu_693_p2),.ce(1'b1),.dout(grp_fu_693_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_701_p0),.din1(grp_fu_701_p1),.din2(grp_fu_701_p2),.ce(1'b1),.dout(grp_fu_701_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_709_p0),.din1(grp_fu_709_p1),.din2(grp_fu_709_p2),.ce(1'b1),.dout(grp_fu_709_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_717_p0),.din1(grp_fu_717_p1),.din2(grp_fu_717_p2),.ce(1'b1),.dout(grp_fu_717_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_725_p0),.din1(grp_fu_725_p1),.din2(grp_fu_725_p2),.ce(1'b1),.dout(grp_fu_725_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_733_p0),.din1(grp_fu_733_p1),.din2(grp_fu_733_p2),.ce(1'b1),.dout(grp_fu_733_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_741_p0),.din1(grp_fu_741_p1),.din2(grp_fu_741_p2),.ce(1'b1),.dout(grp_fu_741_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_749_p0),.din1(grp_fu_749_p1),.din2(grp_fu_749_p2),.ce(1'b1),.dout(grp_fu_749_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_203),.din1(grp_fu_757_p1),.din2(grp_fu_757_p2),.din3(grp_fu_757_p3),.ce(1'b1),.dout(grp_fu_757_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_104 <= 8'd0;
    end else if (((icmp_ln169_fu_352_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_104 <= add_ln168_reg_790;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_203 <= add_ln169_reg_831;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_306_p2 == 1'd0))) begin
        v115_reg_203 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_790 <= add_ln168_fu_312_p2;
        cmp11_reg_818 <= cmp11_fu_346_p2;
        mul_ln175_reg_813 <= mul_ln175_fu_340_p2;
        trunc_ln168_reg_808 <= trunc_ln168_fu_322_p1;
        zext_ln168_reg_795[7 : 0] <= zext_ln168_fu_318_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_831 <= add_ln169_fu_362_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_45_reg_1137 <= empty_45_fu_687_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1047 <= mul_ln171_fu_602_p2;
        mul_ln186_reg_1057 <= mul_ln186_fu_611_p2;
        mul_ln199_reg_1067 <= mul_ln199_fu_620_p2;
        mul_ln212_reg_1077 <= mul_ln212_fu_629_p2;
        mul_ln225_reg_1087 <= mul_ln225_fu_638_p2;
        mul_ln238_reg_1097 <= mul_ln238_fu_647_p2;
        mul_ln251_reg_1107 <= mul_ln251_fu_656_p2;
        mul_ln264_reg_1117 <= mul_ln264_fu_665_p2;
        mul_ln277_reg_1127 <= mul_ln277_fu_681_p2;
        trunc_ln169_reg_1041 <= trunc_ln169_fu_584_p1;
        v19_reg_1062 <= grp_fu_192_p_dout0;
        v20_reg_1072 <= grp_fu_270_p2;
        v21_reg_1082 <= grp_fu_274_p2;
        v22_reg_1092 <= grp_fu_278_p2;
        v23_reg_1102 <= grp_fu_282_p2;
        v24_reg_1112 <= grp_fu_286_p2;
        v25_reg_1122 <= grp_fu_290_p2;
        v26_reg_1132 <= grp_fu_294_p2;
        v_reg_1052 <= grp_fu_188_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_851 <= {{empty_23_fu_392_p2[7:3]}};
        tmp_reg_841 <= {{empty_20_fu_372_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_2_reg_861 <= {{empty_26_fu_412_p2[7:3]}};
        tmp_3_reg_871 <= {{empty_29_fu_432_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_4_reg_886 <= {{empty_32_fu_456_p2[7:3]}};
        tmp_5_reg_896 <= {{empty_35_fu_476_p2[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_6_reg_921 <= {{empty_38_fu_504_p2[7:3]}};
        v226_load_reg_901 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_load_1_reg_926 <= v226_q1;
        v226_load_2_reg_931 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_load_3_reg_946 <= v226_q0;
        v226_load_4_reg_951 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_load_5_reg_966 <= v226_q0;
        v226_load_6_reg_971 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_load_7_reg_986 <= v226_q0;
        v226_load_8_reg_991 <= v226_q1;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_306_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_306_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1142_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_1142_p_ce;
    end else begin
        grp_fu_1142_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_262_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_262_p_ce;
    end else begin
        grp_fu_262_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_262_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_262_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_262_p0 = v119_fu_548_p1;
    end else begin
        grp_fu_262_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_262_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_262_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_262_p1 = v113;
    end else begin
        grp_fu_262_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_266_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_266_p_ce;
    end else begin
        grp_fu_266_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_266_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_266_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_266_p0 = v132_fu_552_p1;
    end else begin
        grp_fu_266_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_266_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_266_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_266_p1 = v113;
    end else begin
        grp_fu_266_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_270_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_270_p_ce;
    end else begin
        grp_fu_270_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_270_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_270_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_270_p0 = v143_fu_556_p1;
    end else begin
        grp_fu_270_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_270_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_270_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_270_p1 = v113;
    end else begin
        grp_fu_270_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_274_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_274_p_ce;
    end else begin
        grp_fu_274_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_274_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_274_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_274_p0 = v154_fu_560_p1;
    end else begin
        grp_fu_274_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_274_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_274_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_274_p1 = v113;
    end else begin
        grp_fu_274_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_278_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_278_p_ce;
    end else begin
        grp_fu_278_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_278_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_278_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_278_p0 = v165_fu_564_p1;
    end else begin
        grp_fu_278_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_278_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_278_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_278_p1 = v113;
    end else begin
        grp_fu_278_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_282_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_282_p_ce;
    end else begin
        grp_fu_282_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_282_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_282_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_282_p0 = v176_fu_568_p1;
    end else begin
        grp_fu_282_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_282_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_282_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_282_p1 = v113;
    end else begin
        grp_fu_282_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_286_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_286_p_ce;
    end else begin
        grp_fu_286_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_286_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_286_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_286_p0 = v187_fu_572_p1;
    end else begin
        grp_fu_286_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_286_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_286_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_286_p1 = v113;
    end else begin
        grp_fu_286_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_290_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_290_p_ce;
    end else begin
        grp_fu_290_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_290_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_290_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_290_p0 = v198_fu_576_p1;
    end else begin
        grp_fu_290_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_290_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_290_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_290_p1 = v113;
    end else begin
        grp_fu_290_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_294_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_294_p_ce;
    end else begin
        grp_fu_294_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_294_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_294_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_294_p0 = v209_fu_580_p1;
    end else begin
        grp_fu_294_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_294_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_294_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_294_p1 = v113;
    end else begin
        grp_fu_294_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast3668_fu_540_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast3666_fu_532_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast3664_fu_524_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast3663_fu_500_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast3662_fu_452_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast3669_fu_544_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast3667_fu_536_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast3665_fu_528_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_496_p1;
    end else begin
        v226_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state6))) begin
        v226_ce0_local = 1'b1;
    end else begin
        v226_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state7))) begin
        v226_ce1_local = 1'b1;
    end else begin
        v226_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_306_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_306_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_306_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_306_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_352_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_fu_312_p2 = (v114_fu_104 + 8'd1);
assign add_ln169_fu_362_p2 = (v115_reg_203 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_306_p2 == 1'd1));
end
assign cmp11_fu_346_p2 = ((v114_fu_104 == 8'd0) ? 1'b1 : 1'b0);
assign empty_20_fu_372_p2 = (v115_reg_203 + 8'd1);
assign empty_23_fu_392_p2 = (v115_reg_203 + 8'd2);
assign empty_26_fu_412_p2 = (v115_reg_203 + 8'd3);
assign empty_29_fu_432_p2 = (v115_reg_203 + 8'd4);
assign empty_32_fu_456_p2 = (v115_reg_203 + 8'd5);
assign empty_35_fu_476_p2 = (v115_reg_203 + 8'd6);
assign empty_38_fu_504_p2 = (v115_reg_203 + 8'd7);
assign empty_44_fu_671_p2 = (lshr_ln1_fu_588_p4 + 5'd1);
assign empty_45_fu_687_p2 = ((trunc_ln169_reg_1041 == 3'd7) ? 1'b1 : 1'b0);
assign grp_fu_184_p_ce = grp_fu_1142_ce;
assign grp_fu_184_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_1142_p_din0;
assign grp_fu_184_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_grp_fu_1142_p_din1;
assign grp_fu_184_p_opcode = 2'd0;
assign grp_fu_188_p_ce = grp_fu_262_ce;
assign grp_fu_188_p_din0 = grp_fu_262_p0;
assign grp_fu_188_p_din1 = grp_fu_262_p1;
assign grp_fu_192_p_ce = grp_fu_266_ce;
assign grp_fu_192_p_din0 = grp_fu_266_p0;
assign grp_fu_192_p_din1 = grp_fu_266_p1;
assign grp_fu_693_p0 = grp_fu_693_p00;
assign grp_fu_693_p00 = v115_reg_203;
assign grp_fu_693_p1 = 16'd210;
assign grp_fu_693_p2 = zext_ln168_reg_795;
assign grp_fu_701_p0 = grp_fu_701_p00;
assign grp_fu_701_p00 = empty_20_fu_372_p2;
assign grp_fu_701_p1 = 16'd210;
assign grp_fu_701_p2 = zext_ln168_reg_795;
assign grp_fu_709_p0 = grp_fu_709_p00;
assign grp_fu_709_p00 = empty_23_fu_392_p2;
assign grp_fu_709_p1 = 16'd210;
assign grp_fu_709_p2 = zext_ln168_reg_795;
assign grp_fu_717_p0 = grp_fu_717_p00;
assign grp_fu_717_p00 = empty_26_fu_412_p2;
assign grp_fu_717_p1 = 16'd210;
assign grp_fu_717_p2 = zext_ln168_reg_795;
assign grp_fu_725_p0 = grp_fu_725_p00;
assign grp_fu_725_p00 = empty_29_fu_432_p2;
assign grp_fu_725_p1 = 16'd210;
assign grp_fu_725_p2 = zext_ln168_reg_795;
assign grp_fu_733_p0 = grp_fu_733_p00;
assign grp_fu_733_p00 = empty_32_fu_456_p2;
assign grp_fu_733_p1 = 16'd210;
assign grp_fu_733_p2 = zext_ln168_reg_795;
assign grp_fu_741_p0 = grp_fu_741_p00;
assign grp_fu_741_p00 = empty_35_fu_476_p2;
assign grp_fu_741_p1 = 16'd210;
assign grp_fu_741_p2 = zext_ln168_reg_795;
assign grp_fu_749_p0 = grp_fu_749_p00;
assign grp_fu_749_p00 = empty_38_fu_504_p2;
assign grp_fu_749_p1 = 16'd210;
assign grp_fu_749_p2 = zext_ln168_reg_795;
assign grp_fu_757_p1 = 8'd8;
assign grp_fu_757_p2 = 16'd210;
assign grp_fu_757_p3 = zext_ln168_reg_795;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_ap_start_reg;
assign icmp_ln168_fu_306_p2 = ((v114_fu_104 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_352_p2 = ((v115_reg_203 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_588_p4 = {{v115_reg_203[7:3]}};
assign lshr_ln_fu_326_p4 = {{v114_fu_104[7:1]}};
assign mul_ln171_fu_602_p0 = mul_ln171_fu_602_p00;
assign mul_ln171_fu_602_p00 = lshr_ln1_fu_588_p4;
assign mul_ln171_fu_602_p1 = 13'd190;
assign mul_ln175_fu_340_p0 = mul_ln175_fu_340_p00;
assign mul_ln175_fu_340_p00 = lshr_ln_fu_326_p4;
assign mul_ln175_fu_340_p1 = 15'd190;
assign mul_ln186_fu_611_p0 = mul_ln186_fu_611_p00;
assign mul_ln186_fu_611_p00 = tmp_reg_841;
assign mul_ln186_fu_611_p1 = 13'd190;
assign mul_ln199_fu_620_p0 = mul_ln199_fu_620_p00;
assign mul_ln199_fu_620_p00 = tmp_1_reg_851;
assign mul_ln199_fu_620_p1 = 13'd190;
assign mul_ln212_fu_629_p0 = mul_ln212_fu_629_p00;
assign mul_ln212_fu_629_p00 = tmp_2_reg_861;
assign mul_ln212_fu_629_p1 = 13'd190;
assign mul_ln225_fu_638_p0 = mul_ln225_fu_638_p00;
assign mul_ln225_fu_638_p00 = tmp_3_reg_871;
assign mul_ln225_fu_638_p1 = 13'd190;
assign mul_ln238_fu_647_p0 = mul_ln238_fu_647_p00;
assign mul_ln238_fu_647_p00 = tmp_4_reg_886;
assign mul_ln238_fu_647_p1 = 13'd190;
assign mul_ln251_fu_656_p0 = mul_ln251_fu_656_p00;
assign mul_ln251_fu_656_p00 = tmp_5_reg_896;
assign mul_ln251_fu_656_p1 = 13'd190;
assign mul_ln264_fu_665_p0 = mul_ln264_fu_665_p00;
assign mul_ln264_fu_665_p00 = tmp_6_reg_921;
assign mul_ln264_fu_665_p1 = 13'd190;
assign mul_ln277_fu_681_p0 = mul_ln277_fu_681_p00;
assign mul_ln277_fu_681_p00 = empty_44_fu_671_p2;
assign mul_ln277_fu_681_p1 = 13'd190;
assign p_cast3662_fu_452_p1 = grp_fu_693_p3;
assign p_cast3663_fu_500_p1 = grp_fu_709_p3;
assign p_cast3664_fu_524_p1 = grp_fu_717_p3;
assign p_cast3665_fu_528_p1 = grp_fu_725_p3;
assign p_cast3666_fu_532_p1 = grp_fu_733_p3;
assign p_cast3667_fu_536_p1 = grp_fu_741_p3;
assign p_cast3668_fu_540_p1 = grp_fu_749_p3;
assign p_cast3669_fu_544_p1 = grp_fu_757_p4;
assign p_cast_fu_496_p1 = grp_fu_701_p3;
assign trunc_ln168_fu_322_p1 = v114_fu_104[0:0];
assign trunc_ln169_fu_584_p1 = v115_reg_203[2:0];
assign v119_fu_548_p1 = v226_load_reg_901;
assign v132_fu_552_p1 = v226_load_1_reg_926;
assign v143_fu_556_p1 = v226_load_2_reg_931;
assign v154_fu_560_p1 = v226_load_3_reg_946;
assign v165_fu_564_p1 = v226_load_4_reg_951;
assign v176_fu_568_p1 = v226_load_5_reg_966;
assign v187_fu_572_p1 = v226_load_6_reg_971;
assign v198_fu_576_p1 = v226_load_7_reg_986;
assign v209_fu_580_p1 = v226_load_8_reg_991;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_1_we1;
assign v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_address0;
assign v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_address1;
assign v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_ce0;
assign v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_ce1;
assign v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_d0;
assign v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_d1;
assign v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_we0;
assign v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_2_we1;
assign v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_address0;
assign v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_address1;
assign v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_ce0;
assign v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_ce1;
assign v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_d0;
assign v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_d1;
assign v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_we0;
assign v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_3_we1;
assign v225_4_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_address0;
assign v225_4_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_address1;
assign v225_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_ce0;
assign v225_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_ce1;
assign v225_4_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_d0;
assign v225_4_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_d1;
assign v225_4_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_we0;
assign v225_4_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_4_we1;
assign v225_5_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_address0;
assign v225_5_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_address1;
assign v225_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_ce0;
assign v225_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_ce1;
assign v225_5_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_d0;
assign v225_5_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_d1;
assign v225_5_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_we0;
assign v225_5_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_5_we1;
assign v225_6_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_address0;
assign v225_6_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_address1;
assign v225_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_ce0;
assign v225_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_ce1;
assign v225_6_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_d0;
assign v225_6_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_d1;
assign v225_6_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_we0;
assign v225_6_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_6_we1;
assign v225_7_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_address0;
assign v225_7_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_address1;
assign v225_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_ce0;
assign v225_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_ce1;
assign v225_7_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_d0;
assign v225_7_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_d1;
assign v225_7_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_we0;
assign v225_7_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v225_7_we1;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_215_v227_1_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_318_p1 = v114_fu_104;
always @ (posedge ap_clk) begin
    zext_ln168_reg_795[15:8] <= 8'b00000000;
end
endmodule 