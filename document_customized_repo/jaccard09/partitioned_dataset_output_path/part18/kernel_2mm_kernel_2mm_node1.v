
module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v113,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_opcode,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_opcode,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce);  
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
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
output  [1:0] grp_fu_168_p_opcode;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
output  [1:0] grp_fu_172_p_opcode;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_395_p2;
wire   [7:0] add_ln168_fu_401_p2;
reg   [7:0] add_ln168_reg_891;
wire   [0:0] trunc_ln168_fu_407_p1;
reg   [0:0] trunc_ln168_reg_896;
wire   [1:0] trunc_ln168_1_fu_411_p1;
reg   [1:0] trunc_ln168_1_reg_902;
wire   [13:0] mul_ln175_fu_429_p2;
reg   [13:0] mul_ln175_reg_907;
wire   [14:0] zext_ln168_fu_445_p1;
reg   [14:0] zext_ln168_reg_912;
wire   [0:0] cmp11_fu_449_p2;
reg   [0:0] cmp11_reg_925;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_465_p2;
reg   [7:0] add_ln169_reg_938;
wire    ap_CS_fsm_state4;
reg   [5:0] tmp_reg_948;
reg   [5:0] tmp_1_reg_958;
wire    ap_CS_fsm_state5;
reg   [5:0] tmp_2_reg_968;
wire    ap_CS_fsm_state6;
reg   [5:0] tmp_3_reg_988;
reg   [5:0] tmp_4_reg_998;
wire   [31:0] grp_fu_373_p3;
reg   [31:0] v119_v_reg_1003;
wire    ap_CS_fsm_state7;
reg   [5:0] tmp_5_reg_1033;
wire   [31:0] grp_fu_380_p3;
reg   [31:0] v132_v_reg_1038;
wire    ap_CS_fsm_state8;
reg   [31:0] v143_v_reg_1043;
reg   [31:0] v154_v_reg_1068;
wire    ap_CS_fsm_state9;
reg   [31:0] v165_v_reg_1073;
reg   [31:0] v176_v_reg_1098;
wire    ap_CS_fsm_state10;
reg   [31:0] v187_v_reg_1103;
reg   [31:0] v198_v_reg_1128;
wire    ap_CS_fsm_state11;
reg   [31:0] v209_v_reg_1133;
wire   [31:0] v119_fu_640_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_644_p1;
wire   [31:0] v143_fu_648_p1;
wire   [31:0] v154_fu_652_p1;
wire   [31:0] v165_fu_656_p1;
wire   [31:0] v176_fu_660_p1;
wire   [1:0] trunc_ln169_fu_676_p1;
reg   [1:0] trunc_ln169_reg_1183;
wire    ap_CS_fsm_state15;
wire   [13:0] mul_ln171_fu_694_p2;
reg   [13:0] mul_ln171_reg_1189;
reg   [31:0] v_reg_1194;
wire   [13:0] mul_ln186_fu_703_p2;
reg   [13:0] mul_ln186_reg_1199;
reg   [31:0] v20_reg_1204;
wire   [13:0] mul_ln199_fu_712_p2;
reg   [13:0] mul_ln199_reg_1209;
reg   [31:0] v21_reg_1214;
wire   [13:0] mul_ln212_fu_721_p2;
reg   [13:0] mul_ln212_reg_1219;
reg   [31:0] v22_reg_1224;
wire   [13:0] mul_ln225_fu_737_p2;
reg   [13:0] mul_ln225_reg_1229;
reg   [31:0] v23_reg_1234;
wire   [13:0] mul_ln238_fu_746_p2;
reg   [13:0] mul_ln238_reg_1239;
reg   [31:0] v24_reg_1244;
wire   [13:0] mul_ln251_fu_755_p2;
reg   [13:0] mul_ln251_reg_1249;
wire   [31:0] grp_fu_361_p2;
reg   [31:0] v25_reg_1254;
wire   [13:0] mul_ln264_fu_764_p2;
reg   [13:0] mul_ln264_reg_1259;
wire   [31:0] grp_fu_365_p2;
reg   [31:0] v26_reg_1264;
wire   [13:0] mul_ln277_fu_780_p2;
reg   [13:0] mul_ln277_reg_1269;
wire   [31:0] grp_fu_369_p2;
reg   [31:0] v27_reg_1274;
wire   [0:0] empty_47_fu_786_p2;
reg   [0:0] empty_47_reg_1279;
wire    ap_CS_fsm_state16;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1284_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1284_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1284_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1284_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1288_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1288_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1288_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1288_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1292_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1292_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1292_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1292_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_337_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_337_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_337_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_341_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_341_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_341_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_345_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_345_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_345_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_349_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_349_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_349_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_353_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_353_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_353_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_357_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_357_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_357_p_ce;
reg   [7:0] v115_reg_282;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start_reg;
wire   [63:0] p_cast2061_fu_535_p1;
wire   [63:0] p_cast_fu_580_p1;
wire   [63:0] p_cast2062_fu_585_p1;
wire   [63:0] p_cast2063_fu_610_p1;
wire   [63:0] p_cast2064_fu_615_p1;
wire   [63:0] p_cast2065_fu_620_p1;
wire   [63:0] p_cast2066_fu_625_p1;
wire   [63:0] p_cast2067_fu_630_p1;
wire   [63:0] p_cast2068_fu_635_p1;
reg   [7:0] v114_fu_102;
wire   [0:0] icmp_ln169_fu_455_p2;
reg    v236_write_local;
reg    v226_0_ce0_local;
reg   [14:0] v226_0_address0_local;
reg    v226_0_ce1_local;
reg   [14:0] v226_0_address1_local;
reg    v226_1_ce0_local;
reg   [14:0] v226_1_address0_local;
reg    v226_1_ce1_local;
reg   [14:0] v226_1_address1_local;
reg   [31:0] grp_fu_337_p0;
reg   [31:0] grp_fu_337_p1;
reg   [31:0] grp_fu_341_p0;
reg   [31:0] grp_fu_341_p1;
reg   [31:0] grp_fu_345_p0;
reg   [31:0] grp_fu_345_p1;
reg   [31:0] grp_fu_349_p0;
reg   [31:0] grp_fu_349_p1;
reg   [31:0] grp_fu_353_p0;
reg   [31:0] grp_fu_353_p1;
reg   [31:0] grp_fu_357_p0;
reg   [31:0] grp_fu_357_p1;
wire   [31:0] grp_fu_361_p0;
wire   [31:0] grp_fu_365_p0;
wire   [31:0] grp_fu_369_p0;
wire   [5:0] lshr_ln_fu_415_p4;
wire   [5:0] mul_ln175_fu_429_p0;
wire   [8:0] mul_ln175_fu_429_p1;
wire   [6:0] lshr_ln168_1_fu_435_p4;
wire   [7:0] empty_21_fu_475_p2;
wire   [7:0] empty_24_fu_495_p2;
wire   [7:0] empty_27_fu_515_p2;
wire   [14:0] grp_fu_792_p3;
wire   [7:0] empty_34_fu_540_p2;
wire   [7:0] empty_37_fu_560_p2;
wire   [14:0] grp_fu_800_p3;
wire   [14:0] grp_fu_808_p3;
wire   [7:0] empty_40_fu_590_p2;
wire   [14:0] grp_fu_816_p3;
wire   [14:0] grp_fu_824_p4;
wire   [14:0] grp_fu_834_p3;
wire   [14:0] grp_fu_842_p3;
wire   [14:0] grp_fu_850_p3;
wire   [14:0] grp_fu_858_p4;
wire   [5:0] lshr_ln1_fu_680_p4;
wire   [5:0] mul_ln171_fu_694_p0;
wire   [8:0] mul_ln171_fu_694_p1;
wire   [5:0] mul_ln186_fu_703_p0;
wire   [8:0] mul_ln186_fu_703_p1;
wire   [5:0] mul_ln199_fu_712_p0;
wire   [8:0] mul_ln199_fu_712_p1;
wire   [5:0] mul_ln212_fu_721_p0;
wire   [8:0] mul_ln212_fu_721_p1;
wire   [5:0] empty_33_fu_727_p2;
wire   [5:0] mul_ln225_fu_737_p0;
wire   [8:0] mul_ln225_fu_737_p1;
wire   [5:0] mul_ln238_fu_746_p0;
wire   [8:0] mul_ln238_fu_746_p1;
wire   [5:0] mul_ln251_fu_755_p0;
wire   [8:0] mul_ln251_fu_755_p1;
wire   [5:0] mul_ln264_fu_764_p0;
wire   [8:0] mul_ln264_fu_764_p1;
wire   [5:0] empty_46_fu_770_p2;
wire   [5:0] mul_ln277_fu_780_p0;
wire   [8:0] mul_ln277_fu_780_p1;
wire   [7:0] grp_fu_792_p0;
wire   [6:0] grp_fu_792_p1;
wire   [6:0] grp_fu_792_p2;
wire   [7:0] grp_fu_800_p0;
wire   [6:0] grp_fu_800_p1;
wire   [6:0] grp_fu_800_p2;
wire   [7:0] grp_fu_808_p0;
wire   [6:0] grp_fu_808_p1;
wire   [6:0] grp_fu_808_p2;
wire   [7:0] grp_fu_816_p0;
wire   [6:0] grp_fu_816_p1;
wire   [6:0] grp_fu_816_p2;
wire   [2:0] grp_fu_824_p1;
wire   [6:0] grp_fu_824_p2;
wire   [6:0] grp_fu_824_p3;
wire   [7:0] grp_fu_834_p0;
wire   [6:0] grp_fu_834_p1;
wire   [6:0] grp_fu_834_p2;
wire   [7:0] grp_fu_842_p0;
wire   [6:0] grp_fu_842_p1;
wire   [6:0] grp_fu_842_p2;
wire   [7:0] grp_fu_850_p0;
wire   [6:0] grp_fu_850_p1;
wire   [6:0] grp_fu_850_p2;
wire   [3:0] grp_fu_858_p1;
wire   [6:0] grp_fu_858_p2;
wire   [6:0] grp_fu_858_p3;
reg    grp_fu_337_ce;
reg    grp_fu_341_ce;
reg    grp_fu_345_ce;
reg    grp_fu_349_ce;
reg    grp_fu_353_ce;
reg    grp_fu_357_ce;
reg    grp_fu_1284_ce;
reg    grp_fu_1288_ce;
reg    grp_fu_1292_ce;
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
wire   [14:0] grp_fu_792_p00;
wire   [14:0] grp_fu_800_p00;
wire   [14:0] grp_fu_808_p00;
wire   [14:0] grp_fu_816_p00;
wire   [14:0] grp_fu_834_p00;
wire   [14:0] grp_fu_842_p00;
wire   [14:0] grp_fu_850_p00;
wire   [13:0] mul_ln171_fu_694_p00;
wire   [13:0] mul_ln175_fu_429_p00;
wire   [13:0] mul_ln186_fu_703_p00;
wire   [13:0] mul_ln199_fu_712_p00;
wire   [13:0] mul_ln212_fu_721_p00;
wire   [13:0] mul_ln225_fu_737_p00;
wire   [13:0] mul_ln238_fu_746_p00;
wire   [13:0] mul_ln251_fu_755_p00;
wire   [13:0] mul_ln264_fu_764_p00;
wire   [13:0] mul_ln277_fu_780_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start_reg = 1'b0;
#0 v114_fu_102 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_294(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_d1),.v225_3_q1(v225_3_q1),.mul_ln175(mul_ln175_reg_907),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_ce1),.v227_3_q1(v227_3_q1),.mul_ln171(mul_ln171_reg_1189),.mul_ln225(mul_ln225_reg_1229),.mul_ln277(mul_ln277_reg_1269),.mul_ln212(mul_ln212_reg_1219),.mul_ln264(mul_ln264_reg_1259),.mul_ln199(mul_ln199_reg_1209),.mul_ln251(mul_ln251_reg_1249),.mul_ln186(mul_ln186_reg_1199),.mul_ln238(mul_ln238_reg_1239),.empty_17(trunc_ln169_reg_1183),.cmp11(cmp11_reg_925),.empty_18(trunc_ln168_1_reg_902),.v120(v_reg_1194),.v133(v20_reg_1204),.v144(v21_reg_1214),.v155(v22_reg_1224),.v166(v23_reg_1234),.v177(v24_reg_1244),.v188(v25_reg_1254),.v199(v26_reg_1264),.v210(v27_reg_1274),.empty(empty_47_reg_1279),.grp_fu_1284_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1284_p_din0),.grp_fu_1284_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1284_p_din1),.grp_fu_1284_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1284_p_opcode),.grp_fu_1284_p_dout0(grp_fu_168_p_dout0),.grp_fu_1284_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1284_p_ce),.grp_fu_1288_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1288_p_din0),.grp_fu_1288_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1288_p_din1),.grp_fu_1288_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1288_p_opcode),.grp_fu_1288_p_dout0(grp_fu_172_p_dout0),.grp_fu_1288_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1288_p_ce),.grp_fu_1292_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1292_p_din0),.grp_fu_1292_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1292_p_din1),.grp_fu_1292_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1292_p_opcode),.grp_fu_1292_p_dout0(grp_fu_176_p_dout0),.grp_fu_1292_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1292_p_ce),.grp_fu_337_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_337_p_din0),.grp_fu_337_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_337_p_din1),.grp_fu_337_p_dout0(grp_fu_180_p_dout0),.grp_fu_337_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_337_p_ce),.grp_fu_341_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_341_p_din0),.grp_fu_341_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_341_p_din1),.grp_fu_341_p_dout0(grp_fu_184_p_dout0),.grp_fu_341_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_341_p_ce),.grp_fu_345_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_345_p_din0),.grp_fu_345_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_345_p_din1),.grp_fu_345_p_dout0(grp_fu_188_p_dout0),.grp_fu_345_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_345_p_ce),.grp_fu_349_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_349_p_din0),.grp_fu_349_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_349_p_din1),.grp_fu_349_p_dout0(grp_fu_192_p_dout0),.grp_fu_349_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_349_p_ce),.grp_fu_353_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_353_p_din0),.grp_fu_353_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_353_p_din1),.grp_fu_353_p_dout0(grp_fu_196_p_dout0),.grp_fu_353_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_353_p_ce),.grp_fu_357_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_357_p_din0),.grp_fu_357_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_357_p_din1),.grp_fu_357_p_dout0(grp_fu_200_p_dout0),.grp_fu_357_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_357_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U64(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_361_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_361_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U65(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_365_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_365_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U66(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_369_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_369_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U67(.din0(mul_ln175_fu_429_p0),.din1(mul_ln175_fu_429_p1),.dout(mul_ln175_fu_429_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U68(.din0(mul_ln171_fu_694_p0),.din1(mul_ln171_fu_694_p1),.dout(mul_ln171_fu_694_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U69(.din0(mul_ln186_fu_703_p0),.din1(mul_ln186_fu_703_p1),.dout(mul_ln186_fu_703_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U70(.din0(mul_ln199_fu_712_p0),.din1(mul_ln199_fu_712_p1),.dout(mul_ln199_fu_712_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U71(.din0(mul_ln212_fu_721_p0),.din1(mul_ln212_fu_721_p1),.dout(mul_ln212_fu_721_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U72(.din0(mul_ln225_fu_737_p0),.din1(mul_ln225_fu_737_p1),.dout(mul_ln225_fu_737_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U73(.din0(mul_ln238_fu_746_p0),.din1(mul_ln238_fu_746_p1),.dout(mul_ln238_fu_746_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U74(.din0(mul_ln251_fu_755_p0),.din1(mul_ln251_fu_755_p1),.dout(mul_ln251_fu_755_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U75(.din0(mul_ln264_fu_764_p0),.din1(mul_ln264_fu_764_p1),.dout(mul_ln264_fu_764_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U76(.din0(mul_ln277_fu_780_p0),.din1(mul_ln277_fu_780_p1),.dout(mul_ln277_fu_780_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_792_p0),.din1(grp_fu_792_p1),.din2(grp_fu_792_p2),.ce(1'b1),.dout(grp_fu_792_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_800_p0),.din1(grp_fu_800_p1),.din2(grp_fu_800_p2),.ce(1'b1),.dout(grp_fu_800_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_808_p0),.din1(grp_fu_808_p1),.din2(grp_fu_808_p2),.ce(1'b1),.dout(grp_fu_808_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U80(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_816_p0),.din1(grp_fu_816_p1),.din2(grp_fu_816_p2),.ce(1'b1),.dout(grp_fu_816_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U81(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_282),.din1(grp_fu_824_p1),.din2(grp_fu_824_p2),.din3(grp_fu_824_p3),.ce(1'b1),.dout(grp_fu_824_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U82(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_834_p0),.din1(grp_fu_834_p1),.din2(grp_fu_834_p2),.ce(1'b1),.dout(grp_fu_834_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U83(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_842_p0),.din1(grp_fu_842_p1),.din2(grp_fu_842_p2),.ce(1'b1),.dout(grp_fu_842_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U84(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_850_p0),.din1(grp_fu_850_p1),.din2(grp_fu_850_p2),.ce(1'b1),.dout(grp_fu_850_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U85(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_282),.din1(grp_fu_858_p1),.din2(grp_fu_858_p2),.din3(grp_fu_858_p3),.ce(1'b1),.dout(grp_fu_858_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_102 <= 8'd0;
    end else if (((icmp_ln169_fu_455_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_102 <= add_ln168_reg_891;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_282 <= add_ln169_reg_938;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_395_p2 == 1'd0))) begin
        v115_reg_282 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_891 <= add_ln168_fu_401_p2;
        cmp11_reg_925 <= cmp11_fu_449_p2;
        mul_ln175_reg_907 <= mul_ln175_fu_429_p2;
        trunc_ln168_1_reg_902 <= trunc_ln168_1_fu_411_p1;
        trunc_ln168_reg_896 <= trunc_ln168_fu_407_p1;
        zext_ln168_reg_912[6 : 0] <= zext_ln168_fu_445_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_938 <= add_ln169_fu_465_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_47_reg_1279 <= empty_47_fu_786_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1189 <= mul_ln171_fu_694_p2;
        mul_ln186_reg_1199 <= mul_ln186_fu_703_p2;
        mul_ln199_reg_1209 <= mul_ln199_fu_712_p2;
        mul_ln212_reg_1219 <= mul_ln212_fu_721_p2;
        mul_ln225_reg_1229 <= mul_ln225_fu_737_p2;
        mul_ln238_reg_1239 <= mul_ln238_fu_746_p2;
        mul_ln251_reg_1249 <= mul_ln251_fu_755_p2;
        mul_ln264_reg_1259 <= mul_ln264_fu_764_p2;
        mul_ln277_reg_1269 <= mul_ln277_fu_780_p2;
        trunc_ln169_reg_1183 <= trunc_ln169_fu_676_p1;
        v20_reg_1204 <= grp_fu_184_p_dout0;
        v21_reg_1214 <= grp_fu_188_p_dout0;
        v22_reg_1224 <= grp_fu_192_p_dout0;
        v23_reg_1234 <= grp_fu_196_p_dout0;
        v24_reg_1244 <= grp_fu_200_p_dout0;
        v25_reg_1254 <= grp_fu_361_p2;
        v26_reg_1264 <= grp_fu_365_p2;
        v27_reg_1274 <= grp_fu_369_p2;
        v_reg_1194 <= grp_fu_180_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_958 <= {{empty_24_fu_495_p2[7:2]}};
        tmp_reg_948 <= {{empty_21_fu_475_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_2_reg_968 <= {{empty_27_fu_515_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_3_reg_988 <= {{empty_34_fu_540_p2[7:2]}};
        tmp_4_reg_998 <= {{empty_37_fu_560_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_5_reg_1033 <= {{empty_40_fu_590_p2[7:2]}};
        v119_v_reg_1003 <= grp_fu_373_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v132_v_reg_1038 <= grp_fu_380_p3;
        v143_v_reg_1043 <= grp_fu_373_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v154_v_reg_1068 <= grp_fu_373_p3;
        v165_v_reg_1073 <= grp_fu_380_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v176_v_reg_1098 <= grp_fu_373_p3;
        v187_v_reg_1103 <= grp_fu_380_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v198_v_reg_1128 <= grp_fu_373_p3;
        v209_v_reg_1133 <= grp_fu_380_p3;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_395_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_395_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1284_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1284_p_ce;
    end else begin
        grp_fu_1284_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1288_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1288_p_ce;
    end else begin
        grp_fu_1288_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1292_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1292_p_ce;
    end else begin
        grp_fu_1292_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_337_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_337_p_ce;
    end else begin
        grp_fu_337_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_337_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_337_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_337_p0 = v119_fu_640_p1;
    end else begin
        grp_fu_337_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_337_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_337_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_337_p1 = v113;
    end else begin
        grp_fu_337_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_341_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_341_p_ce;
    end else begin
        grp_fu_341_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_341_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_341_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_341_p0 = v132_fu_644_p1;
    end else begin
        grp_fu_341_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_341_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_341_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_341_p1 = v113;
    end else begin
        grp_fu_341_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_345_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_345_p_ce;
    end else begin
        grp_fu_345_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_345_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_345_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_345_p0 = v143_fu_648_p1;
    end else begin
        grp_fu_345_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_345_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_345_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_345_p1 = v113;
    end else begin
        grp_fu_345_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_349_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_349_p_ce;
    end else begin
        grp_fu_349_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_349_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_349_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_349_p0 = v154_fu_652_p1;
    end else begin
        grp_fu_349_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_349_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_349_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_349_p1 = v113;
    end else begin
        grp_fu_349_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_353_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_353_p_ce;
    end else begin
        grp_fu_353_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_353_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_353_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_353_p0 = v165_fu_656_p1;
    end else begin
        grp_fu_353_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_353_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_353_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_353_p1 = v113;
    end else begin
        grp_fu_353_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_357_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_357_p_ce;
    end else begin
        grp_fu_357_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_357_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_357_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_357_p0 = v176_fu_660_p1;
    end else begin
        grp_fu_357_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_357_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_357_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_357_p1 = v113;
    end else begin
        grp_fu_357_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast2067_fu_630_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast2065_fu_620_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast2063_fu_610_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast2062_fu_585_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast2061_fu_535_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast2068_fu_635_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast2066_fu_625_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast2064_fu_615_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_580_p1;
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
        v226_1_address0_local = p_cast2067_fu_630_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast2065_fu_620_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast2063_fu_610_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast2062_fu_585_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast2061_fu_535_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast2068_fu_635_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast2066_fu_625_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast2064_fu_615_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_580_p1;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_395_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_395_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_395_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_395_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_455_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_fu_401_p2 = (v114_fu_102 + 8'd1);
assign add_ln169_fu_465_p2 = (v115_reg_282 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_395_p2 == 1'd1));
end
assign cmp11_fu_449_p2 = ((v114_fu_102 == 8'd0) ? 1'b1 : 1'b0);
assign empty_21_fu_475_p2 = (v115_reg_282 + 8'd1);
assign empty_24_fu_495_p2 = (v115_reg_282 + 8'd2);
assign empty_27_fu_515_p2 = (v115_reg_282 + 8'd3);
assign empty_33_fu_727_p2 = (lshr_ln1_fu_680_p4 + 6'd1);
assign empty_34_fu_540_p2 = (v115_reg_282 + 8'd5);
assign empty_37_fu_560_p2 = (v115_reg_282 + 8'd6);
assign empty_40_fu_590_p2 = (v115_reg_282 + 8'd7);
assign empty_46_fu_770_p2 = (lshr_ln1_fu_680_p4 + 6'd2);
assign empty_47_fu_786_p2 = ((trunc_ln169_reg_1183 == 2'd3) ? 1'b1 : 1'b0);
assign grp_fu_168_p_ce = grp_fu_1284_ce;
assign grp_fu_168_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1284_p_din0;
assign grp_fu_168_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1284_p_din1;
assign grp_fu_168_p_opcode = 2'd0;
assign grp_fu_172_p_ce = grp_fu_1288_ce;
assign grp_fu_172_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1288_p_din0;
assign grp_fu_172_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1288_p_din1;
assign grp_fu_172_p_opcode = 2'd0;
assign grp_fu_176_p_ce = grp_fu_1292_ce;
assign grp_fu_176_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1292_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1292_p_din1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_337_ce;
assign grp_fu_180_p_din0 = grp_fu_337_p0;
assign grp_fu_180_p_din1 = grp_fu_337_p1;
assign grp_fu_184_p_ce = grp_fu_341_ce;
assign grp_fu_184_p_din0 = grp_fu_341_p0;
assign grp_fu_184_p_din1 = grp_fu_341_p1;
assign grp_fu_188_p_ce = grp_fu_345_ce;
assign grp_fu_188_p_din0 = grp_fu_345_p0;
assign grp_fu_188_p_din1 = grp_fu_345_p1;
assign grp_fu_192_p_ce = grp_fu_349_ce;
assign grp_fu_192_p_din0 = grp_fu_349_p0;
assign grp_fu_192_p_din1 = grp_fu_349_p1;
assign grp_fu_196_p_ce = grp_fu_353_ce;
assign grp_fu_196_p_din0 = grp_fu_353_p0;
assign grp_fu_196_p_din1 = grp_fu_353_p1;
assign grp_fu_200_p_ce = grp_fu_357_ce;
assign grp_fu_200_p_din0 = grp_fu_357_p0;
assign grp_fu_200_p_din1 = grp_fu_357_p1;
assign grp_fu_361_p0 = v187_v_reg_1103;
assign grp_fu_365_p0 = v198_v_reg_1128;
assign grp_fu_369_p0 = v209_v_reg_1133;
assign grp_fu_373_p3 = ((trunc_ln168_reg_896[0:0] == 1'b1) ? v226_1_q0 : v226_0_q0);
assign grp_fu_380_p3 = ((trunc_ln168_reg_896[0:0] == 1'b1) ? v226_1_q1 : v226_0_q1);
assign grp_fu_792_p0 = grp_fu_792_p00;
assign grp_fu_792_p00 = v115_reg_282;
assign grp_fu_792_p1 = 15'd105;
assign grp_fu_792_p2 = zext_ln168_reg_912;
assign grp_fu_800_p0 = grp_fu_800_p00;
assign grp_fu_800_p00 = empty_21_fu_475_p2;
assign grp_fu_800_p1 = 15'd105;
assign grp_fu_800_p2 = zext_ln168_reg_912;
assign grp_fu_808_p0 = grp_fu_808_p00;
assign grp_fu_808_p00 = empty_24_fu_495_p2;
assign grp_fu_808_p1 = 15'd105;
assign grp_fu_808_p2 = zext_ln168_reg_912;
assign grp_fu_816_p0 = grp_fu_816_p00;
assign grp_fu_816_p00 = empty_27_fu_515_p2;
assign grp_fu_816_p1 = 15'd105;
assign grp_fu_816_p2 = zext_ln168_reg_912;
assign grp_fu_824_p1 = 8'd4;
assign grp_fu_824_p2 = 15'd105;
assign grp_fu_824_p3 = zext_ln168_reg_912;
assign grp_fu_834_p0 = grp_fu_834_p00;
assign grp_fu_834_p00 = empty_34_fu_540_p2;
assign grp_fu_834_p1 = 15'd105;
assign grp_fu_834_p2 = zext_ln168_reg_912;
assign grp_fu_842_p0 = grp_fu_842_p00;
assign grp_fu_842_p00 = empty_37_fu_560_p2;
assign grp_fu_842_p1 = 15'd105;
assign grp_fu_842_p2 = zext_ln168_reg_912;
assign grp_fu_850_p0 = grp_fu_850_p00;
assign grp_fu_850_p00 = empty_40_fu_590_p2;
assign grp_fu_850_p1 = 15'd105;
assign grp_fu_850_p2 = zext_ln168_reg_912;
assign grp_fu_858_p1 = 8'd8;
assign grp_fu_858_p2 = 15'd105;
assign grp_fu_858_p3 = zext_ln168_reg_912;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start_reg;
assign icmp_ln168_fu_395_p2 = ((v114_fu_102 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_455_p2 = ((v115_reg_282 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln168_1_fu_435_p4 = {{v114_fu_102[7:1]}};
assign lshr_ln1_fu_680_p4 = {{v115_reg_282[7:2]}};
assign lshr_ln_fu_415_p4 = {{v114_fu_102[7:2]}};
assign mul_ln171_fu_694_p0 = mul_ln171_fu_694_p00;
assign mul_ln171_fu_694_p00 = lshr_ln1_fu_680_p4;
assign mul_ln171_fu_694_p1 = 14'd190;
assign mul_ln175_fu_429_p0 = mul_ln175_fu_429_p00;
assign mul_ln175_fu_429_p00 = lshr_ln_fu_415_p4;
assign mul_ln175_fu_429_p1 = 14'd190;
assign mul_ln186_fu_703_p0 = mul_ln186_fu_703_p00;
assign mul_ln186_fu_703_p00 = tmp_reg_948;
assign mul_ln186_fu_703_p1 = 14'd190;
assign mul_ln199_fu_712_p0 = mul_ln199_fu_712_p00;
assign mul_ln199_fu_712_p00 = tmp_1_reg_958;
assign mul_ln199_fu_712_p1 = 14'd190;
assign mul_ln212_fu_721_p0 = mul_ln212_fu_721_p00;
assign mul_ln212_fu_721_p00 = tmp_2_reg_968;
assign mul_ln212_fu_721_p1 = 14'd190;
assign mul_ln225_fu_737_p0 = mul_ln225_fu_737_p00;
assign mul_ln225_fu_737_p00 = empty_33_fu_727_p2;
assign mul_ln225_fu_737_p1 = 14'd190;
assign mul_ln238_fu_746_p0 = mul_ln238_fu_746_p00;
assign mul_ln238_fu_746_p00 = tmp_3_reg_988;
assign mul_ln238_fu_746_p1 = 14'd190;
assign mul_ln251_fu_755_p0 = mul_ln251_fu_755_p00;
assign mul_ln251_fu_755_p00 = tmp_4_reg_998;
assign mul_ln251_fu_755_p1 = 14'd190;
assign mul_ln264_fu_764_p0 = mul_ln264_fu_764_p00;
assign mul_ln264_fu_764_p00 = tmp_5_reg_1033;
assign mul_ln264_fu_764_p1 = 14'd190;
assign mul_ln277_fu_780_p0 = mul_ln277_fu_780_p00;
assign mul_ln277_fu_780_p00 = empty_46_fu_770_p2;
assign mul_ln277_fu_780_p1 = 14'd190;
assign p_cast2061_fu_535_p1 = grp_fu_792_p3;
assign p_cast2062_fu_585_p1 = grp_fu_808_p3;
assign p_cast2063_fu_610_p1 = grp_fu_816_p3;
assign p_cast2064_fu_615_p1 = grp_fu_824_p4;
assign p_cast2065_fu_620_p1 = grp_fu_834_p3;
assign p_cast2066_fu_625_p1 = grp_fu_842_p3;
assign p_cast2067_fu_630_p1 = grp_fu_850_p3;
assign p_cast2068_fu_635_p1 = grp_fu_858_p4;
assign p_cast_fu_580_p1 = grp_fu_800_p3;
assign trunc_ln168_1_fu_411_p1 = v114_fu_102[1:0];
assign trunc_ln168_fu_407_p1 = v114_fu_102[0:0];
assign trunc_ln169_fu_676_p1 = v115_reg_282[1:0];
assign v119_fu_640_p1 = v119_v_reg_1003;
assign v132_fu_644_p1 = v132_v_reg_1038;
assign v143_fu_648_p1 = v143_v_reg_1043;
assign v154_fu_652_p1 = v154_v_reg_1068;
assign v165_fu_656_p1 = v165_v_reg_1073;
assign v176_fu_660_p1 = v176_v_reg_1098;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_we1;
assign v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_address0;
assign v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_address1;
assign v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_ce0;
assign v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_ce1;
assign v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_d0;
assign v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_d1;
assign v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_we0;
assign v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_2_we1;
assign v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_address0;
assign v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_address1;
assign v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_ce0;
assign v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_ce1;
assign v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_d0;
assign v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_d1;
assign v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_we0;
assign v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_3_we1;
assign v226_0_address0 = v226_0_address0_local;
assign v226_0_address1 = v226_0_address1_local;
assign v226_0_ce0 = v226_0_ce0_local;
assign v226_0_ce1 = v226_0_ce1_local;
assign v226_1_address0 = v226_1_address0_local;
assign v226_1_address1 = v226_1_address1_local;
assign v226_1_ce0 = v226_1_ce0_local;
assign v226_1_ce1 = v226_1_ce1_local;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_445_p1 = lshr_ln168_1_fu_435_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_912[14:7] <= 8'b00000000;
end
endmodule 
