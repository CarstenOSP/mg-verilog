module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v113,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_opcode,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_opcode,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_opcode,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_opcode,grp_fu_184_p_dout0,grp_fu_184_p_ce,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce); 
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
output  [14:0] v225_0_address0;
output   v225_0_ce0;
output   v225_0_we0;
output  [31:0] v225_0_d0;
input  [31:0] v225_0_q0;
output  [14:0] v225_0_address1;
output   v225_0_ce1;
output   v225_0_we1;
output  [31:0] v225_0_d1;
input  [31:0] v225_0_q1;
output  [14:0] v225_1_address0;
output   v225_1_ce0;
output   v225_1_we0;
output  [31:0] v225_1_d0;
input  [31:0] v225_1_q0;
output  [14:0] v225_1_address1;
output   v225_1_ce1;
output   v225_1_we1;
output  [31:0] v225_1_d1;
input  [31:0] v225_1_q1;
input  [31:0] v113;
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
output  [1:0] grp_fu_180_p_opcode;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_561_p2;
reg   [15:0] phi_mul_load_reg_1346;
wire   [15:0] add_ln168_1_fu_555_p2;
reg   [15:0] add_ln168_1_reg_1351;
wire   [7:0] add_ln168_fu_567_p2;
reg   [7:0] add_ln168_reg_1359;
wire   [1:0] trunc_ln168_fu_573_p1;
reg   [1:0] trunc_ln168_reg_1364;
wire   [13:0] zext_ln168_fu_587_p1;
reg   [13:0] zext_ln168_reg_1377;
wire   [0:0] cmp11_fu_591_p2;
reg   [0:0] cmp11_reg_1390;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_607_p2;
reg   [7:0] add_ln169_reg_1403;
wire    ap_CS_fsm_state4;
reg   [6:0] tmp_reg_1413;
wire    ap_CS_fsm_state5;
reg   [6:0] tmp_1_reg_1423;
wire    ap_CS_fsm_state6;
reg   [6:0] tmp_2_reg_1453;
wire   [31:0] v_fu_704_p11;
reg   [31:0] v_reg_1458;
wire    ap_CS_fsm_state7;
reg   [6:0] tmp_3_reg_1508;
wire   [31:0] v19_fu_777_p11;
reg   [31:0] v19_reg_1513;
wire    ap_CS_fsm_state8;
wire   [31:0] v21_fu_816_p11;
reg   [31:0] v21_reg_1518;
wire   [31:0] v23_fu_869_p11;
reg   [31:0] v23_reg_1563;
wire    ap_CS_fsm_state9;
wire   [31:0] v25_fu_908_p11;
reg   [31:0] v25_reg_1568;
wire   [31:0] v27_fu_961_p11;
reg   [31:0] v27_reg_1613;
wire    ap_CS_fsm_state10;
wire   [31:0] v29_fu_1000_p11;
reg   [31:0] v29_reg_1618;
wire   [31:0] v31_fu_1053_p11;
reg   [31:0] v31_reg_1663;
wire    ap_CS_fsm_state11;
wire   [31:0] v33_fu_1092_p11;
reg   [31:0] v33_reg_1668;
wire   [0:0] trunc_ln169_fu_1115_p1;
reg   [0:0] trunc_ln169_reg_1673;
wire    ap_CS_fsm_state15;
wire   [14:0] mul_ln171_fu_1133_p2;
reg   [14:0] mul_ln171_reg_1678;
reg   [31:0] v18_reg_1683;
wire   [14:0] mul_ln186_fu_1142_p2;
reg   [14:0] mul_ln186_reg_1688;
reg   [31:0] v20_reg_1693;
wire   [14:0] mul_ln199_fu_1158_p2;
reg   [14:0] mul_ln199_reg_1698;
reg   [31:0] v22_reg_1703;
wire   [14:0] mul_ln212_fu_1167_p2;
reg   [14:0] mul_ln212_reg_1708;
reg   [31:0] v24_reg_1713;
wire   [14:0] mul_ln225_fu_1183_p2;
reg   [14:0] mul_ln225_reg_1718;
reg   [31:0] v26_reg_1723;
wire   [14:0] mul_ln238_fu_1192_p2;
reg   [14:0] mul_ln238_reg_1728;
reg   [31:0] v28_reg_1733;
wire   [14:0] mul_ln251_fu_1208_p2;
reg   [14:0] mul_ln251_reg_1738;
reg   [31:0] v30_reg_1743;
wire   [14:0] mul_ln264_fu_1217_p2;
reg   [14:0] mul_ln264_reg_1748;
reg   [31:0] v32_reg_1753;
wire   [14:0] mul_ln277_fu_1233_p2;
reg   [14:0] mul_ln277_reg_1758;
reg   [31:0] v34_reg_1763;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1768_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1768_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1768_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1768_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1772_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1772_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1772_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1772_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1776_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1776_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1776_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1776_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1780_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1780_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1780_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1780_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_503_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_503_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_503_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_507_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_507_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_507_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_511_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_511_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_511_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_515_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_515_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_515_p_ce;
reg   [7:0] v115_reg_460;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [63:0] p_cast694_fu_661_p1;
wire   [63:0] p_cast_fu_727_p1;
wire   [63:0] p_cast695_fu_734_p1;
wire   [63:0] p_cast696_fu_839_p1;
wire   [63:0] p_cast697_fu_846_p1;
wire   [63:0] p_cast698_fu_931_p1;
wire   [63:0] p_cast699_fu_938_p1;
wire   [63:0] p_cast700_fu_1023_p1;
wire   [63:0] p_cast701_fu_1030_p1;
reg   [15:0] phi_mul_fu_114;
wire   [0:0] icmp_ln169_fu_597_p2;
reg   [7:0] v114_fu_118;
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
reg   [31:0] grp_fu_503_p0;
reg   [31:0] grp_fu_503_p1;
wire    ap_CS_fsm_state12;
reg   [31:0] grp_fu_507_p0;
reg   [31:0] grp_fu_507_p1;
reg   [31:0] grp_fu_511_p0;
reg   [31:0] grp_fu_511_p1;
reg   [31:0] grp_fu_515_p0;
reg   [31:0] grp_fu_515_p1;
wire   [5:0] lshr_ln_fu_577_p4;
wire   [7:0] empty_31_fu_621_p2;
wire   [7:0] empty_46_fu_641_p2;
wire   [13:0] grp_fu_1239_p3;
wire   [7:0] empty_61_fu_668_p2;
wire   [31:0] v_fu_704_p2;
wire   [31:0] v_fu_704_p4;
wire   [31:0] v_fu_704_p6;
wire   [31:0] v_fu_704_p8;
wire   [31:0] v_fu_704_p9;
wire   [13:0] grp_fu_1247_p3;
wire   [13:0] grp_fu_1255_p4;
wire   [7:0] empty_76_fu_741_p2;
wire   [31:0] v19_fu_777_p2;
wire   [31:0] v19_fu_777_p4;
wire   [31:0] v19_fu_777_p6;
wire   [31:0] v19_fu_777_p8;
wire   [31:0] v19_fu_777_p9;
wire   [31:0] v21_fu_816_p2;
wire   [31:0] v21_fu_816_p4;
wire   [31:0] v21_fu_816_p6;
wire   [31:0] v21_fu_816_p8;
wire   [31:0] v21_fu_816_p9;
wire   [13:0] grp_fu_1265_p3;
wire   [13:0] grp_fu_1273_p4;
wire   [31:0] v23_fu_869_p2;
wire   [31:0] v23_fu_869_p4;
wire   [31:0] v23_fu_869_p6;
wire   [31:0] v23_fu_869_p8;
wire   [31:0] v23_fu_869_p9;
wire   [31:0] v25_fu_908_p2;
wire   [31:0] v25_fu_908_p4;
wire   [31:0] v25_fu_908_p6;
wire   [31:0] v25_fu_908_p8;
wire   [31:0] v25_fu_908_p9;
wire   [13:0] grp_fu_1283_p3;
wire   [13:0] grp_fu_1291_p4;
wire   [31:0] v27_fu_961_p2;
wire   [31:0] v27_fu_961_p4;
wire   [31:0] v27_fu_961_p6;
wire   [31:0] v27_fu_961_p8;
wire   [31:0] v27_fu_961_p9;
wire   [31:0] v29_fu_1000_p2;
wire   [31:0] v29_fu_1000_p4;
wire   [31:0] v29_fu_1000_p6;
wire   [31:0] v29_fu_1000_p8;
wire   [31:0] v29_fu_1000_p9;
wire   [13:0] grp_fu_1301_p3;
wire   [13:0] grp_fu_1309_p4;
wire   [31:0] v31_fu_1053_p2;
wire   [31:0] v31_fu_1053_p4;
wire   [31:0] v31_fu_1053_p6;
wire   [31:0] v31_fu_1053_p8;
wire   [31:0] v31_fu_1053_p9;
wire   [31:0] v33_fu_1092_p2;
wire   [31:0] v33_fu_1092_p4;
wire   [31:0] v33_fu_1092_p6;
wire   [31:0] v33_fu_1092_p8;
wire   [31:0] v33_fu_1092_p9;
wire   [6:0] lshr_ln1_fu_1119_p4;
wire   [6:0] mul_ln171_fu_1133_p0;
wire   [8:0] mul_ln171_fu_1133_p1;
wire   [6:0] mul_ln186_fu_1142_p0;
wire   [8:0] mul_ln186_fu_1142_p1;
wire   [6:0] empty_41_fu_1148_p2;
wire   [6:0] mul_ln199_fu_1158_p0;
wire   [8:0] mul_ln199_fu_1158_p1;
wire   [6:0] mul_ln212_fu_1167_p0;
wire   [8:0] mul_ln212_fu_1167_p1;
wire   [6:0] empty_56_fu_1173_p2;
wire   [6:0] mul_ln225_fu_1183_p0;
wire   [8:0] mul_ln225_fu_1183_p1;
wire   [6:0] mul_ln238_fu_1192_p0;
wire   [8:0] mul_ln238_fu_1192_p1;
wire   [6:0] empty_71_fu_1198_p2;
wire   [6:0] mul_ln251_fu_1208_p0;
wire   [8:0] mul_ln251_fu_1208_p1;
wire   [6:0] mul_ln264_fu_1217_p0;
wire   [8:0] mul_ln264_fu_1217_p1;
wire   [6:0] empty_86_fu_1223_p2;
wire   [6:0] mul_ln277_fu_1233_p0;
wire   [8:0] mul_ln277_fu_1233_p1;
wire   [7:0] grp_fu_1239_p0;
wire   [5:0] grp_fu_1239_p1;
wire   [5:0] grp_fu_1239_p2;
wire   [7:0] grp_fu_1247_p0;
wire   [5:0] grp_fu_1247_p1;
wire   [5:0] grp_fu_1247_p2;
wire   [1:0] grp_fu_1255_p1;
wire   [5:0] grp_fu_1255_p2;
wire   [5:0] grp_fu_1255_p3;
wire   [7:0] grp_fu_1265_p0;
wire   [5:0] grp_fu_1265_p1;
wire   [5:0] grp_fu_1265_p2;
wire   [2:0] grp_fu_1273_p1;
wire   [5:0] grp_fu_1273_p2;
wire   [5:0] grp_fu_1273_p3;
wire   [7:0] grp_fu_1283_p0;
wire   [5:0] grp_fu_1283_p1;
wire   [5:0] grp_fu_1283_p2;
wire   [2:0] grp_fu_1291_p1;
wire   [5:0] grp_fu_1291_p2;
wire   [5:0] grp_fu_1291_p3;
wire   [7:0] grp_fu_1301_p0;
wire   [5:0] grp_fu_1301_p1;
wire   [5:0] grp_fu_1301_p2;
wire   [3:0] grp_fu_1309_p1;
wire   [5:0] grp_fu_1309_p2;
wire   [5:0] grp_fu_1309_p3;
reg    grp_fu_503_ce;
reg    grp_fu_507_ce;
reg    grp_fu_511_ce;
reg    grp_fu_515_ce;
reg    grp_fu_1768_ce;
reg    grp_fu_1772_ce;
reg    grp_fu_1776_ce;
reg    grp_fu_1780_ce;
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
wire   [13:0] grp_fu_1239_p00;
wire   [13:0] grp_fu_1247_p00;
wire   [13:0] grp_fu_1265_p00;
wire   [13:0] grp_fu_1283_p00;
wire   [13:0] grp_fu_1301_p00;
wire   [14:0] mul_ln171_fu_1133_p00;
wire   [14:0] mul_ln186_fu_1142_p00;
wire   [14:0] mul_ln199_fu_1158_p00;
wire   [14:0] mul_ln212_fu_1167_p00;
wire   [14:0] mul_ln225_fu_1183_p00;
wire   [14:0] mul_ln238_fu_1192_p00;
wire   [14:0] mul_ln251_fu_1208_p00;
wire   [14:0] mul_ln264_fu_1217_p00;
wire   [14:0] mul_ln277_fu_1233_p00;
wire   [1:0] v_fu_704_p1;
wire   [1:0] v_fu_704_p3;
wire  signed [1:0] v_fu_704_p5;
wire  signed [1:0] v_fu_704_p7;
wire   [1:0] v19_fu_777_p1;
wire   [1:0] v19_fu_777_p3;
wire  signed [1:0] v19_fu_777_p5;
wire  signed [1:0] v19_fu_777_p7;
wire   [1:0] v21_fu_816_p1;
wire   [1:0] v21_fu_816_p3;
wire  signed [1:0] v21_fu_816_p5;
wire  signed [1:0] v21_fu_816_p7;
wire   [1:0] v23_fu_869_p1;
wire   [1:0] v23_fu_869_p3;
wire  signed [1:0] v23_fu_869_p5;
wire  signed [1:0] v23_fu_869_p7;
wire   [1:0] v25_fu_908_p1;
wire   [1:0] v25_fu_908_p3;
wire  signed [1:0] v25_fu_908_p5;
wire  signed [1:0] v25_fu_908_p7;
wire   [1:0] v27_fu_961_p1;
wire   [1:0] v27_fu_961_p3;
wire  signed [1:0] v27_fu_961_p5;
wire  signed [1:0] v27_fu_961_p7;
wire   [1:0] v29_fu_1000_p1;
wire   [1:0] v29_fu_1000_p3;
wire  signed [1:0] v29_fu_1000_p5;
wire  signed [1:0] v29_fu_1000_p7;
wire   [1:0] v31_fu_1053_p1;
wire   [1:0] v31_fu_1053_p3;
wire  signed [1:0] v31_fu_1053_p5;
wire  signed [1:0] v31_fu_1053_p7;
wire   [1:0] v33_fu_1092_p1;
wire   [1:0] v33_fu_1092_p3;
wire  signed [1:0] v33_fu_1092_p5;
wire  signed [1:0] v33_fu_1092_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_start_reg = 1'b0;
#0 phi_mul_fu_114 = 16'd0;
#0 v114_fu_118 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_472(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_d1),.v225_1_q1(v225_1_q1),.phi_mul(phi_mul_load_reg_1346),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1678),.mul_ln199(mul_ln199_reg_1698),.mul_ln225(mul_ln225_reg_1718),.mul_ln251(mul_ln251_reg_1738),.mul_ln277(mul_ln277_reg_1758),.mul_ln186(mul_ln186_reg_1688),.mul_ln212(mul_ln212_reg_1708),.mul_ln238(mul_ln238_reg_1728),.mul_ln264(mul_ln264_reg_1748),.empty(trunc_ln169_reg_1673),.cmp11(cmp11_reg_1390),.v120(v18_reg_1683),.v133(v20_reg_1693),.v144(v22_reg_1703),.v155(v24_reg_1713),.v166(v26_reg_1723),.v177(v28_reg_1733),.v188(v30_reg_1743),.v199(v32_reg_1753),.v210(v34_reg_1763),.grp_fu_1768_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1768_p_din0),.grp_fu_1768_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1768_p_din1),.grp_fu_1768_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1768_p_opcode),.grp_fu_1768_p_dout0(grp_fu_172_p_dout0),.grp_fu_1768_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1768_p_ce),.grp_fu_1772_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1772_p_din0),.grp_fu_1772_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1772_p_din1),.grp_fu_1772_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1772_p_opcode),.grp_fu_1772_p_dout0(grp_fu_176_p_dout0),.grp_fu_1772_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1772_p_ce),.grp_fu_1776_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1776_p_din0),.grp_fu_1776_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1776_p_din1),.grp_fu_1776_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1776_p_opcode),.grp_fu_1776_p_dout0(grp_fu_180_p_dout0),.grp_fu_1776_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1776_p_ce),.grp_fu_1780_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1780_p_din0),.grp_fu_1780_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1780_p_din1),.grp_fu_1780_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1780_p_opcode),.grp_fu_1780_p_dout0(grp_fu_184_p_dout0),.grp_fu_1780_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1780_p_ce),.grp_fu_503_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_503_p_din0),.grp_fu_503_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_503_p_din1),.grp_fu_503_p_dout0(grp_fu_188_p_dout0),.grp_fu_503_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_503_p_ce),.grp_fu_507_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_507_p_din0),.grp_fu_507_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_507_p_din1),.grp_fu_507_p_dout0(grp_fu_192_p_dout0),.grp_fu_507_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_507_p_ce),.grp_fu_511_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_511_p_din0),.grp_fu_511_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_511_p_din1),.grp_fu_511_p_dout0(grp_fu_196_p_dout0),.grp_fu_511_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_511_p_ce),.grp_fu_515_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_515_p_din0),.grp_fu_515_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_515_p_din1),.grp_fu_515_p_dout0(grp_fu_200_p_dout0),.grp_fu_515_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_515_p_ce));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U42(.din0(v_fu_704_p2),.din1(v_fu_704_p4),.din2(v_fu_704_p6),.din3(v_fu_704_p8),.def(v_fu_704_p9),.sel(trunc_ln168_reg_1364),.dout(v_fu_704_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U43(.din0(v19_fu_777_p2),.din1(v19_fu_777_p4),.din2(v19_fu_777_p6),.din3(v19_fu_777_p8),.def(v19_fu_777_p9),.sel(trunc_ln168_reg_1364),.dout(v19_fu_777_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U44(.din0(v21_fu_816_p2),.din1(v21_fu_816_p4),.din2(v21_fu_816_p6),.din3(v21_fu_816_p8),.def(v21_fu_816_p9),.sel(trunc_ln168_reg_1364),.dout(v21_fu_816_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U45(.din0(v23_fu_869_p2),.din1(v23_fu_869_p4),.din2(v23_fu_869_p6),.din3(v23_fu_869_p8),.def(v23_fu_869_p9),.sel(trunc_ln168_reg_1364),.dout(v23_fu_869_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U46(.din0(v25_fu_908_p2),.din1(v25_fu_908_p4),.din2(v25_fu_908_p6),.din3(v25_fu_908_p8),.def(v25_fu_908_p9),.sel(trunc_ln168_reg_1364),.dout(v25_fu_908_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U47(.din0(v27_fu_961_p2),.din1(v27_fu_961_p4),.din2(v27_fu_961_p6),.din3(v27_fu_961_p8),.def(v27_fu_961_p9),.sel(trunc_ln168_reg_1364),.dout(v27_fu_961_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U48(.din0(v29_fu_1000_p2),.din1(v29_fu_1000_p4),.din2(v29_fu_1000_p6),.din3(v29_fu_1000_p8),.def(v29_fu_1000_p9),.sel(trunc_ln168_reg_1364),.dout(v29_fu_1000_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U49(.din0(v31_fu_1053_p2),.din1(v31_fu_1053_p4),.din2(v31_fu_1053_p6),.din3(v31_fu_1053_p8),.def(v31_fu_1053_p9),.sel(trunc_ln168_reg_1364),.dout(v31_fu_1053_p11));
(* dissolve_hierarchy = "yes" *) kernel_2mm_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U50(.din0(v33_fu_1092_p2),.din1(v33_fu_1092_p4),.din2(v33_fu_1092_p6),.din3(v33_fu_1092_p8),.def(v33_fu_1092_p9),.sel(trunc_ln168_reg_1364),.dout(v33_fu_1092_p11));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U51(.din0(mul_ln171_fu_1133_p0),.din1(mul_ln171_fu_1133_p1),.dout(mul_ln171_fu_1133_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U52(.din0(mul_ln186_fu_1142_p0),.din1(mul_ln186_fu_1142_p1),.dout(mul_ln186_fu_1142_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U53(.din0(mul_ln199_fu_1158_p0),.din1(mul_ln199_fu_1158_p1),.dout(mul_ln199_fu_1158_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U54(.din0(mul_ln212_fu_1167_p0),.din1(mul_ln212_fu_1167_p1),.dout(mul_ln212_fu_1167_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U55(.din0(mul_ln225_fu_1183_p0),.din1(mul_ln225_fu_1183_p1),.dout(mul_ln225_fu_1183_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U56(.din0(mul_ln238_fu_1192_p0),.din1(mul_ln238_fu_1192_p1),.dout(mul_ln238_fu_1192_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U57(.din0(mul_ln251_fu_1208_p0),.din1(mul_ln251_fu_1208_p1),.dout(mul_ln251_fu_1208_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U58(.din0(mul_ln264_fu_1217_p0),.din1(mul_ln264_fu_1217_p1),.dout(mul_ln264_fu_1217_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U59(.din0(mul_ln277_fu_1233_p0),.din1(mul_ln277_fu_1233_p1),.dout(mul_ln277_fu_1233_p2));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U60(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1239_p0),.din1(grp_fu_1239_p1),.din2(grp_fu_1239_p2),.ce(1'b1),.dout(grp_fu_1239_p3));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U61(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1247_p0),.din1(grp_fu_1247_p1),.din2(grp_fu_1247_p2),.ce(1'b1),.dout(grp_fu_1247_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 6 ),.din3_WIDTH( 6 ),.dout_WIDTH( 14 ))
ama_addmuladd_8ns_2ns_6ns_6ns_14_4_1_U62(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_460),.din1(grp_fu_1255_p1),.din2(grp_fu_1255_p2),.din3(grp_fu_1255_p3),.ce(1'b1),.dout(grp_fu_1255_p4));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U63(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1265_p0),.din1(grp_fu_1265_p1),.din2(grp_fu_1265_p2),.ce(1'b1),.dout(grp_fu_1265_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 6 ),.din3_WIDTH( 6 ),.dout_WIDTH( 14 ))
ama_addmuladd_8ns_3ns_6ns_6ns_14_4_1_U64(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_460),.din1(grp_fu_1273_p1),.din2(grp_fu_1273_p2),.din3(grp_fu_1273_p3),.ce(1'b1),.dout(grp_fu_1273_p4));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U65(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1283_p0),.din1(grp_fu_1283_p1),.din2(grp_fu_1283_p2),.ce(1'b1),.dout(grp_fu_1283_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 6 ),.din3_WIDTH( 6 ),.dout_WIDTH( 14 ))
ama_addmuladd_8ns_3ns_6ns_6ns_14_4_1_U66(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_460),.din1(grp_fu_1291_p1),.din2(grp_fu_1291_p2),.din3(grp_fu_1291_p3),.ce(1'b1),.dout(grp_fu_1291_p4));
kernel_2mm_mac_muladd_8ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.din2_WIDTH( 6 ),.dout_WIDTH( 14 ))
mac_muladd_8ns_6ns_6ns_14_4_1_U67(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_1301_p0),.din1(grp_fu_1301_p1),.din2(grp_fu_1301_p2),.ce(1'b1),.dout(grp_fu_1301_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_6ns_6ns_14_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 6 ),.din3_WIDTH( 6 ),.dout_WIDTH( 14 ))
ama_addmuladd_8ns_4ns_6ns_6ns_14_4_1_U68(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_460),.din1(grp_fu_1309_p1),.din2(grp_fu_1309_p2),.din3(grp_fu_1309_p3),.ce(1'b1),.dout(grp_fu_1309_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_114 <= 16'd0;
    end else if (((icmp_ln169_fu_597_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_114 <= add_ln168_1_reg_1351;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_118 <= 8'd0;
    end else if (((icmp_ln169_fu_597_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_118 <= add_ln168_reg_1359;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_460 <= add_ln169_reg_1403;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_561_p2 == 1'd0))) begin
        v115_reg_460 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_1351 <= add_ln168_1_fu_555_p2;
        add_ln168_reg_1359 <= add_ln168_fu_567_p2;
        cmp11_reg_1390 <= cmp11_fu_591_p2;
        phi_mul_load_reg_1346 <= phi_mul_fu_114;
        trunc_ln168_reg_1364 <= trunc_ln168_fu_573_p1;
        zext_ln168_reg_1377[5 : 0] <= zext_ln168_fu_587_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_1403 <= add_ln169_fu_607_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1678 <= mul_ln171_fu_1133_p2;
        mul_ln186_reg_1688 <= mul_ln186_fu_1142_p2;
        mul_ln199_reg_1698 <= mul_ln199_fu_1158_p2;
        mul_ln212_reg_1708 <= mul_ln212_fu_1167_p2;
        mul_ln225_reg_1718 <= mul_ln225_fu_1183_p2;
        mul_ln238_reg_1728 <= mul_ln238_fu_1192_p2;
        mul_ln251_reg_1738 <= mul_ln251_fu_1208_p2;
        mul_ln264_reg_1748 <= mul_ln264_fu_1217_p2;
        mul_ln277_reg_1758 <= mul_ln277_fu_1233_p2;
        trunc_ln169_reg_1673 <= trunc_ln169_fu_1115_p1;
        v18_reg_1683 <= grp_fu_188_p_dout0;
        v20_reg_1693 <= grp_fu_192_p_dout0;
        v22_reg_1703 <= grp_fu_196_p_dout0;
        v24_reg_1713 <= grp_fu_200_p_dout0;
        v26_reg_1723 <= grp_fu_204_p_dout0;
        v28_reg_1733 <= grp_fu_208_p_dout0;
        v30_reg_1743 <= grp_fu_212_p_dout0;
        v32_reg_1753 <= grp_fu_216_p_dout0;
        v34_reg_1763 <= grp_fu_220_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_1_reg_1423 <= {{empty_46_fu_641_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_2_reg_1453 <= {{empty_61_fu_668_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_3_reg_1508 <= {{empty_76_fu_741_p2[7:1]}};
        v_reg_1458 <= v_fu_704_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_1413 <= {{empty_31_fu_621_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v19_reg_1513 <= v19_fu_777_p11;
        v21_reg_1518 <= v21_fu_816_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v23_reg_1563 <= v23_fu_869_p11;
        v25_reg_1568 <= v25_fu_908_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v27_reg_1613 <= v27_fu_961_p11;
        v29_reg_1618 <= v29_fu_1000_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v31_reg_1663 <= v31_fu_1053_p11;
        v33_reg_1668 <= v33_fu_1092_p11;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_561_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_561_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1768_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1768_p_ce;
    end else begin
        grp_fu_1768_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1772_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1772_p_ce;
    end else begin
        grp_fu_1772_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1776_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1776_p_ce;
    end else begin
        grp_fu_1776_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1780_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1780_p_ce;
    end else begin
        grp_fu_1780_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_503_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_503_p_ce;
    end else begin
        grp_fu_503_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_503_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_503_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_503_p0 = v_reg_1458;
    end else begin
        grp_fu_503_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_503_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_503_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_503_p1 = v113;
    end else begin
        grp_fu_503_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_507_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_507_p_ce;
    end else begin
        grp_fu_507_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_507_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_507_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_507_p0 = v19_reg_1513;
    end else begin
        grp_fu_507_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_507_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_507_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_507_p1 = v113;
    end else begin
        grp_fu_507_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_511_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_511_p_ce;
    end else begin
        grp_fu_511_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_511_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_511_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_511_p0 = v21_reg_1518;
    end else begin
        grp_fu_511_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_511_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_511_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_511_p1 = v113;
    end else begin
        grp_fu_511_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_515_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_515_p_ce;
    end else begin
        grp_fu_515_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_515_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_515_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_515_p0 = v23_reg_1563;
    end else begin
        grp_fu_515_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_515_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_515_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_515_p1 = v113;
    end else begin
        grp_fu_515_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast700_fu_1023_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast698_fu_931_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast696_fu_839_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast695_fu_734_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast694_fu_661_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast701_fu_1030_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast699_fu_938_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast697_fu_846_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_727_p1;
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
        v226_1_address0_local = p_cast700_fu_1023_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast698_fu_931_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast696_fu_839_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast695_fu_734_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast694_fu_661_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast701_fu_1030_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast699_fu_938_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast697_fu_846_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_727_p1;
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
        v226_2_address0_local = p_cast700_fu_1023_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address0_local = p_cast698_fu_931_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0_local = p_cast696_fu_839_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address0_local = p_cast695_fu_734_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_2_address0_local = p_cast694_fu_661_p1;
    end else begin
        v226_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_2_address1_local = p_cast701_fu_1030_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_2_address1_local = p_cast699_fu_938_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address1_local = p_cast697_fu_846_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_2_address1_local = p_cast_fu_727_p1;
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
        v226_3_address0_local = p_cast700_fu_1023_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address0_local = p_cast698_fu_931_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address0_local = p_cast696_fu_839_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address0_local = p_cast695_fu_734_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_3_address0_local = p_cast694_fu_661_p1;
    end else begin
        v226_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address1_local = p_cast701_fu_1030_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_3_address1_local = p_cast699_fu_938_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_3_address1_local = p_cast697_fu_846_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_3_address1_local = p_cast_fu_727_p1;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_561_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_561_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_561_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_561_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_597_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_1_fu_555_p2 = (phi_mul_fu_114 + 16'd190);
assign add_ln168_fu_567_p2 = (v114_fu_118 + 8'd1);
assign add_ln169_fu_607_p2 = (v115_reg_460 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_561_p2 == 1'd1));
end
assign cmp11_fu_591_p2 = ((v114_fu_118 == 8'd0) ? 1'b1 : 1'b0);
assign empty_31_fu_621_p2 = (v115_reg_460 + 8'd1);
assign empty_41_fu_1148_p2 = (lshr_ln1_fu_1119_p4 + 7'd1);
assign empty_46_fu_641_p2 = (v115_reg_460 + 8'd3);
assign empty_56_fu_1173_p2 = (lshr_ln1_fu_1119_p4 + 7'd2);
assign empty_61_fu_668_p2 = (v115_reg_460 + 8'd5);
assign empty_71_fu_1198_p2 = (lshr_ln1_fu_1119_p4 + 7'd3);
assign empty_76_fu_741_p2 = (v115_reg_460 + 8'd7);
assign empty_86_fu_1223_p2 = (lshr_ln1_fu_1119_p4 + 7'd4);
assign grp_fu_1239_p0 = grp_fu_1239_p00;
assign grp_fu_1239_p00 = v115_reg_460;
assign grp_fu_1239_p1 = 14'd53;
assign grp_fu_1239_p2 = zext_ln168_reg_1377;
assign grp_fu_1247_p0 = grp_fu_1247_p00;
assign grp_fu_1247_p00 = empty_31_fu_621_p2;
assign grp_fu_1247_p1 = 14'd53;
assign grp_fu_1247_p2 = zext_ln168_reg_1377;
assign grp_fu_1255_p1 = 8'd2;
assign grp_fu_1255_p2 = 14'd53;
assign grp_fu_1255_p3 = zext_ln168_reg_1377;
assign grp_fu_1265_p0 = grp_fu_1265_p00;
assign grp_fu_1265_p00 = empty_46_fu_641_p2;
assign grp_fu_1265_p1 = 14'd53;
assign grp_fu_1265_p2 = zext_ln168_reg_1377;
assign grp_fu_1273_p1 = 8'd4;
assign grp_fu_1273_p2 = 14'd53;
assign grp_fu_1273_p3 = zext_ln168_reg_1377;
assign grp_fu_1283_p0 = grp_fu_1283_p00;
assign grp_fu_1283_p00 = empty_61_fu_668_p2;
assign grp_fu_1283_p1 = 14'd53;
assign grp_fu_1283_p2 = zext_ln168_reg_1377;
assign grp_fu_1291_p1 = 8'd6;
assign grp_fu_1291_p2 = 14'd53;
assign grp_fu_1291_p3 = zext_ln168_reg_1377;
assign grp_fu_1301_p0 = grp_fu_1301_p00;
assign grp_fu_1301_p00 = empty_76_fu_741_p2;
assign grp_fu_1301_p1 = 14'd53;
assign grp_fu_1301_p2 = zext_ln168_reg_1377;
assign grp_fu_1309_p1 = 8'd8;
assign grp_fu_1309_p2 = 14'd53;
assign grp_fu_1309_p3 = zext_ln168_reg_1377;
assign grp_fu_172_p_ce = grp_fu_1768_ce;
assign grp_fu_172_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1768_p_din0;
assign grp_fu_172_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1768_p_din1;
assign grp_fu_172_p_opcode = 2'd0;
assign grp_fu_176_p_ce = grp_fu_1772_ce;
assign grp_fu_176_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1772_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1772_p_din1;
assign grp_fu_176_p_opcode = 2'd0;
assign grp_fu_180_p_ce = grp_fu_1776_ce;
assign grp_fu_180_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1776_p_din0;
assign grp_fu_180_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1776_p_din1;
assign grp_fu_180_p_opcode = 2'd0;
assign grp_fu_184_p_ce = grp_fu_1780_ce;
assign grp_fu_184_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1780_p_din0;
assign grp_fu_184_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_grp_fu_1780_p_din1;
assign grp_fu_184_p_opcode = 2'd0;
assign grp_fu_188_p_ce = grp_fu_503_ce;
assign grp_fu_188_p_din0 = grp_fu_503_p0;
assign grp_fu_188_p_din1 = grp_fu_503_p1;
assign grp_fu_192_p_ce = grp_fu_507_ce;
assign grp_fu_192_p_din0 = grp_fu_507_p0;
assign grp_fu_192_p_din1 = grp_fu_507_p1;
assign grp_fu_196_p_ce = grp_fu_511_ce;
assign grp_fu_196_p_din0 = grp_fu_511_p0;
assign grp_fu_196_p_din1 = grp_fu_511_p1;
assign grp_fu_200_p_ce = grp_fu_515_ce;
assign grp_fu_200_p_din0 = grp_fu_515_p0;
assign grp_fu_200_p_din1 = grp_fu_515_p1;
assign grp_fu_204_p_ce = 1'b1;
assign grp_fu_204_p_din0 = v25_reg_1568;
assign grp_fu_204_p_din1 = v113;
assign grp_fu_208_p_ce = 1'b1;
assign grp_fu_208_p_din0 = v27_reg_1613;
assign grp_fu_208_p_din1 = v113;
assign grp_fu_212_p_ce = 1'b1;
assign grp_fu_212_p_din0 = v29_reg_1618;
assign grp_fu_212_p_din1 = v113;
assign grp_fu_216_p_ce = 1'b1;
assign grp_fu_216_p_din0 = v31_reg_1663;
assign grp_fu_216_p_din1 = v113;
assign grp_fu_220_p_ce = 1'b1;
assign grp_fu_220_p_din0 = v33_reg_1668;
assign grp_fu_220_p_din1 = v113;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_ap_start_reg;
assign icmp_ln168_fu_561_p2 = ((v114_fu_118 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_597_p2 = ((v115_reg_460 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_1119_p4 = {{v115_reg_460[7:1]}};
assign lshr_ln_fu_577_p4 = {{v114_fu_118[7:2]}};
assign mul_ln171_fu_1133_p0 = mul_ln171_fu_1133_p00;
assign mul_ln171_fu_1133_p00 = lshr_ln1_fu_1119_p4;
assign mul_ln171_fu_1133_p1 = 15'd190;
assign mul_ln186_fu_1142_p0 = mul_ln186_fu_1142_p00;
assign mul_ln186_fu_1142_p00 = tmp_reg_1413;
assign mul_ln186_fu_1142_p1 = 15'd190;
assign mul_ln199_fu_1158_p0 = mul_ln199_fu_1158_p00;
assign mul_ln199_fu_1158_p00 = empty_41_fu_1148_p2;
assign mul_ln199_fu_1158_p1 = 15'd190;
assign mul_ln212_fu_1167_p0 = mul_ln212_fu_1167_p00;
assign mul_ln212_fu_1167_p00 = tmp_1_reg_1423;
assign mul_ln212_fu_1167_p1 = 15'd190;
assign mul_ln225_fu_1183_p0 = mul_ln225_fu_1183_p00;
assign mul_ln225_fu_1183_p00 = empty_56_fu_1173_p2;
assign mul_ln225_fu_1183_p1 = 15'd190;
assign mul_ln238_fu_1192_p0 = mul_ln238_fu_1192_p00;
assign mul_ln238_fu_1192_p00 = tmp_2_reg_1453;
assign mul_ln238_fu_1192_p1 = 15'd190;
assign mul_ln251_fu_1208_p0 = mul_ln251_fu_1208_p00;
assign mul_ln251_fu_1208_p00 = empty_71_fu_1198_p2;
assign mul_ln251_fu_1208_p1 = 15'd190;
assign mul_ln264_fu_1217_p0 = mul_ln264_fu_1217_p00;
assign mul_ln264_fu_1217_p00 = tmp_3_reg_1508;
assign mul_ln264_fu_1217_p1 = 15'd190;
assign mul_ln277_fu_1233_p0 = mul_ln277_fu_1233_p00;
assign mul_ln277_fu_1233_p00 = empty_86_fu_1223_p2;
assign mul_ln277_fu_1233_p1 = 15'd190;
assign p_cast694_fu_661_p1 = grp_fu_1239_p3;
assign p_cast695_fu_734_p1 = grp_fu_1255_p4;
assign p_cast696_fu_839_p1 = grp_fu_1265_p3;
assign p_cast697_fu_846_p1 = grp_fu_1273_p4;
assign p_cast698_fu_931_p1 = grp_fu_1283_p3;
assign p_cast699_fu_938_p1 = grp_fu_1291_p4;
assign p_cast700_fu_1023_p1 = grp_fu_1301_p3;
assign p_cast701_fu_1030_p1 = grp_fu_1309_p4;
assign p_cast_fu_727_p1 = grp_fu_1247_p3;
assign trunc_ln168_fu_573_p1 = v114_fu_118[1:0];
assign trunc_ln169_fu_1115_p1 = v115_reg_460[0:0];
assign v19_fu_777_p2 = v226_0_q1;
assign v19_fu_777_p4 = v226_1_q1;
assign v19_fu_777_p6 = v226_2_q1;
assign v19_fu_777_p8 = v226_3_q1;
assign v19_fu_777_p9 = 'bx;
assign v21_fu_816_p2 = v226_0_q0;
assign v21_fu_816_p4 = v226_1_q0;
assign v21_fu_816_p6 = v226_2_q0;
assign v21_fu_816_p8 = v226_3_q0;
assign v21_fu_816_p9 = 'bx;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v225_1_we1;
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
assign v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v227_address0;
assign v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v227_address1;
assign v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v227_ce0;
assign v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_472_v227_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v23_fu_869_p2 = v226_0_q0;
assign v23_fu_869_p4 = v226_1_q0;
assign v23_fu_869_p6 = v226_2_q0;
assign v23_fu_869_p8 = v226_3_q0;
assign v23_fu_869_p9 = 'bx;
assign v25_fu_908_p2 = v226_0_q1;
assign v25_fu_908_p4 = v226_1_q1;
assign v25_fu_908_p6 = v226_2_q1;
assign v25_fu_908_p8 = v226_3_q1;
assign v25_fu_908_p9 = 'bx;
assign v27_fu_961_p2 = v226_0_q0;
assign v27_fu_961_p4 = v226_1_q0;
assign v27_fu_961_p6 = v226_2_q0;
assign v27_fu_961_p8 = v226_3_q0;
assign v27_fu_961_p9 = 'bx;
assign v29_fu_1000_p2 = v226_0_q1;
assign v29_fu_1000_p4 = v226_1_q1;
assign v29_fu_1000_p6 = v226_2_q1;
assign v29_fu_1000_p8 = v226_3_q1;
assign v29_fu_1000_p9 = 'bx;
assign v31_fu_1053_p2 = v226_0_q0;
assign v31_fu_1053_p4 = v226_1_q0;
assign v31_fu_1053_p6 = v226_2_q0;
assign v31_fu_1053_p8 = v226_3_q0;
assign v31_fu_1053_p9 = 'bx;
assign v33_fu_1092_p2 = v226_0_q1;
assign v33_fu_1092_p4 = v226_1_q1;
assign v33_fu_1092_p6 = v226_2_q1;
assign v33_fu_1092_p8 = v226_3_q1;
assign v33_fu_1092_p9 = 'bx;
assign v_fu_704_p2 = v226_0_q0;
assign v_fu_704_p4 = v226_1_q0;
assign v_fu_704_p6 = v226_2_q0;
assign v_fu_704_p8 = v226_3_q0;
assign v_fu_704_p9 = 'bx;
assign zext_ln168_fu_587_p1 = lshr_ln_fu_577_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_1377[13:6] <= 8'b00000000;
end
endmodule 