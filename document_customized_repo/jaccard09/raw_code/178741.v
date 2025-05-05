module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v113,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_opcode,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_opcode,grp_fu_196_p_dout0,grp_fu_196_p_ce,grp_fu_200_p_din0,grp_fu_200_p_din1,grp_fu_200_p_opcode,grp_fu_200_p_dout0,grp_fu_200_p_ce,grp_fu_204_p_din0,grp_fu_204_p_din1,grp_fu_204_p_dout0,grp_fu_204_p_ce,grp_fu_208_p_din0,grp_fu_208_p_din1,grp_fu_208_p_dout0,grp_fu_208_p_ce,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_dout0,grp_fu_224_p_ce,grp_fu_228_p_din0,grp_fu_228_p_din1,grp_fu_228_p_dout0,grp_fu_228_p_ce,grp_fu_232_p_din0,grp_fu_232_p_din1,grp_fu_232_p_dout0,grp_fu_232_p_ce,grp_fu_236_p_din0,grp_fu_236_p_din1,grp_fu_236_p_dout0,grp_fu_236_p_ce); 
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
output  [31:0] grp_fu_228_p_din0;
output  [31:0] grp_fu_228_p_din1;
input  [31:0] grp_fu_228_p_dout0;
output   grp_fu_228_p_ce;
output  [31:0] grp_fu_232_p_din0;
output  [31:0] grp_fu_232_p_din1;
input  [31:0] grp_fu_232_p_dout0;
output   grp_fu_232_p_ce;
output  [31:0] grp_fu_236_p_din0;
output  [31:0] grp_fu_236_p_din1;
input  [31:0] grp_fu_236_p_dout0;
output   grp_fu_236_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_390_p2;
wire   [7:0] add_ln168_fu_396_p2;
reg   [7:0] add_ln168_reg_858;
wire   [0:0] trunc_ln168_fu_402_p1;
reg   [0:0] trunc_ln168_reg_863;
wire   [1:0] trunc_ln168_1_fu_406_p1;
reg   [1:0] trunc_ln168_1_reg_869;
wire   [13:0] mul_ln175_fu_424_p2;
reg   [13:0] mul_ln175_reg_874;
wire   [14:0] zext_ln168_fu_440_p1;
reg   [14:0] zext_ln168_reg_879;
wire   [0:0] cmp11_fu_444_p2;
reg   [0:0] cmp11_reg_892;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_460_p2;
reg   [7:0] add_ln169_reg_905;
wire    ap_CS_fsm_state4;
reg   [6:0] tmp_reg_915;
wire    ap_CS_fsm_state5;
reg   [6:0] tmp_1_reg_925;
wire    ap_CS_fsm_state6;
reg   [6:0] tmp_2_reg_945;
wire   [31:0] grp_fu_368_p3;
reg   [31:0] v119_v_reg_950;
wire    ap_CS_fsm_state7;
reg   [6:0] tmp_3_reg_980;
wire   [31:0] grp_fu_375_p3;
reg   [31:0] v132_v_reg_985;
wire    ap_CS_fsm_state8;
reg   [31:0] v143_v_reg_990;
reg   [31:0] v154_v_reg_1015;
wire    ap_CS_fsm_state9;
reg   [31:0] v165_v_reg_1020;
reg   [31:0] v176_v_reg_1045;
wire    ap_CS_fsm_state10;
reg   [31:0] v187_v_reg_1050;
reg   [31:0] v198_v_reg_1075;
wire    ap_CS_fsm_state11;
reg   [31:0] v209_v_reg_1080;
wire   [31:0] v119_fu_595_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_599_p1;
wire   [31:0] v143_fu_603_p1;
wire   [31:0] v154_fu_607_p1;
wire   [31:0] v165_fu_611_p1;
wire   [31:0] v176_fu_615_p1;
wire   [31:0] v187_fu_619_p1;
wire   [31:0] v198_fu_623_p1;
wire   [31:0] v209_fu_627_p1;
wire   [0:0] trunc_ln169_fu_631_p1;
reg   [0:0] trunc_ln169_reg_1130;
wire    ap_CS_fsm_state15;
wire   [14:0] mul_ln171_fu_649_p2;
reg   [14:0] mul_ln171_reg_1135;
reg   [31:0] v_reg_1140;
wire   [14:0] mul_ln186_fu_658_p2;
reg   [14:0] mul_ln186_reg_1145;
reg   [31:0] v19_reg_1150;
wire   [14:0] mul_ln199_fu_674_p2;
reg   [14:0] mul_ln199_reg_1155;
reg   [31:0] v20_reg_1160;
wire   [14:0] mul_ln212_fu_683_p2;
reg   [14:0] mul_ln212_reg_1165;
reg   [31:0] v21_reg_1170;
wire   [14:0] mul_ln225_fu_699_p2;
reg   [14:0] mul_ln225_reg_1175;
reg   [31:0] v22_reg_1180;
wire   [14:0] mul_ln238_fu_708_p2;
reg   [14:0] mul_ln238_reg_1185;
reg   [31:0] v23_reg_1190;
wire   [14:0] mul_ln251_fu_724_p2;
reg   [14:0] mul_ln251_reg_1195;
reg   [31:0] v24_reg_1200;
wire   [14:0] mul_ln264_fu_733_p2;
reg   [14:0] mul_ln264_reg_1205;
reg   [31:0] v25_reg_1210;
wire   [14:0] mul_ln277_fu_749_p2;
reg   [14:0] mul_ln277_reg_1215;
reg   [31:0] v26_reg_1220;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_d1;
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
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1225_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1225_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1225_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1225_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1229_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1229_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1229_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1229_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1233_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1233_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1233_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1233_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_332_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_332_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_332_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_336_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_336_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_336_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_340_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_340_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_340_p_ce;
reg   [7:0] v115_reg_282;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [63:0] p_cast2243_fu_510_p1;
wire   [63:0] p_cast_fu_535_p1;
wire   [63:0] p_cast2244_fu_540_p1;
wire   [63:0] p_cast2245_fu_565_p1;
wire   [63:0] p_cast2246_fu_570_p1;
wire   [63:0] p_cast2247_fu_575_p1;
wire   [63:0] p_cast2248_fu_580_p1;
wire   [63:0] p_cast2249_fu_585_p1;
wire   [63:0] p_cast2250_fu_590_p1;
reg   [7:0] v114_fu_102;
wire   [0:0] icmp_ln169_fu_450_p2;
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
wire   [5:0] lshr_ln_fu_410_p4;
wire   [5:0] mul_ln175_fu_424_p0;
wire   [8:0] mul_ln175_fu_424_p1;
wire   [6:0] lshr_ln168_1_fu_430_p4;
wire   [7:0] empty_22_fu_470_p2;
wire   [7:0] empty_29_fu_490_p2;
wire   [14:0] grp_fu_755_p3;
wire   [7:0] empty_36_fu_515_p2;
wire   [14:0] grp_fu_763_p3;
wire   [14:0] grp_fu_771_p4;
wire   [7:0] empty_43_fu_545_p2;
wire   [14:0] grp_fu_781_p3;
wire   [14:0] grp_fu_789_p4;
wire   [14:0] grp_fu_799_p3;
wire   [14:0] grp_fu_807_p4;
wire   [14:0] grp_fu_817_p3;
wire   [14:0] grp_fu_825_p4;
wire   [6:0] lshr_ln1_fu_635_p4;
wire   [6:0] mul_ln171_fu_649_p0;
wire   [8:0] mul_ln171_fu_649_p1;
wire   [6:0] mul_ln186_fu_658_p0;
wire   [8:0] mul_ln186_fu_658_p1;
wire   [6:0] empty_28_fu_664_p2;
wire   [6:0] mul_ln199_fu_674_p0;
wire   [8:0] mul_ln199_fu_674_p1;
wire   [6:0] mul_ln212_fu_683_p0;
wire   [8:0] mul_ln212_fu_683_p1;
wire   [6:0] empty_35_fu_689_p2;
wire   [6:0] mul_ln225_fu_699_p0;
wire   [8:0] mul_ln225_fu_699_p1;
wire   [6:0] mul_ln238_fu_708_p0;
wire   [8:0] mul_ln238_fu_708_p1;
wire   [6:0] empty_42_fu_714_p2;
wire   [6:0] mul_ln251_fu_724_p0;
wire   [8:0] mul_ln251_fu_724_p1;
wire   [6:0] mul_ln264_fu_733_p0;
wire   [8:0] mul_ln264_fu_733_p1;
wire   [6:0] empty_49_fu_739_p2;
wire   [6:0] mul_ln277_fu_749_p0;
wire   [8:0] mul_ln277_fu_749_p1;
wire   [7:0] grp_fu_755_p0;
wire   [6:0] grp_fu_755_p1;
wire   [6:0] grp_fu_755_p2;
wire   [7:0] grp_fu_763_p0;
wire   [6:0] grp_fu_763_p1;
wire   [6:0] grp_fu_763_p2;
wire   [1:0] grp_fu_771_p1;
wire   [6:0] grp_fu_771_p2;
wire   [6:0] grp_fu_771_p3;
wire   [7:0] grp_fu_781_p0;
wire   [6:0] grp_fu_781_p1;
wire   [6:0] grp_fu_781_p2;
wire   [2:0] grp_fu_789_p1;
wire   [6:0] grp_fu_789_p2;
wire   [6:0] grp_fu_789_p3;
wire   [7:0] grp_fu_799_p0;
wire   [6:0] grp_fu_799_p1;
wire   [6:0] grp_fu_799_p2;
wire   [2:0] grp_fu_807_p1;
wire   [6:0] grp_fu_807_p2;
wire   [6:0] grp_fu_807_p3;
wire   [7:0] grp_fu_817_p0;
wire   [6:0] grp_fu_817_p1;
wire   [6:0] grp_fu_817_p2;
wire   [3:0] grp_fu_825_p1;
wire   [6:0] grp_fu_825_p2;
wire   [6:0] grp_fu_825_p3;
reg    grp_fu_332_ce;
reg    grp_fu_336_ce;
reg    grp_fu_340_ce;
reg    grp_fu_1225_ce;
reg    grp_fu_1229_ce;
reg    grp_fu_1233_ce;
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
wire   [14:0] grp_fu_755_p00;
wire   [14:0] grp_fu_763_p00;
wire   [14:0] grp_fu_781_p00;
wire   [14:0] grp_fu_799_p00;
wire   [14:0] grp_fu_817_p00;
wire   [14:0] mul_ln171_fu_649_p00;
wire   [13:0] mul_ln175_fu_424_p00;
wire   [14:0] mul_ln186_fu_658_p00;
wire   [14:0] mul_ln199_fu_674_p00;
wire   [14:0] mul_ln212_fu_683_p00;
wire   [14:0] mul_ln225_fu_699_p00;
wire   [14:0] mul_ln238_fu_708_p00;
wire   [14:0] mul_ln251_fu_724_p00;
wire   [14:0] mul_ln264_fu_733_p00;
wire   [14:0] mul_ln277_fu_749_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start_reg = 1'b0;
#0 v114_fu_102 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_294(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v225_1_d1),.v225_1_q1(v225_1_q1),.mul_ln175(mul_ln175_reg_874),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_v227_3_ce1),.v227_3_q1(v227_3_q1),.mul_ln171(mul_ln171_reg_1135),.mul_ln199(mul_ln199_reg_1155),.mul_ln225(mul_ln225_reg_1175),.mul_ln251(mul_ln251_reg_1195),.mul_ln277(mul_ln277_reg_1215),.mul_ln186(mul_ln186_reg_1145),.mul_ln212(mul_ln212_reg_1165),.mul_ln238(mul_ln238_reg_1185),.mul_ln264(mul_ln264_reg_1205),.empty_19(trunc_ln169_reg_1130),.cmp11(cmp11_reg_892),.empty(trunc_ln168_1_reg_869),.v120(v_reg_1140),.v133(v19_reg_1150),.v144(v20_reg_1160),.v155(v21_reg_1170),.v166(v22_reg_1180),.v177(v23_reg_1190),.v188(v24_reg_1200),.v199(v25_reg_1210),.v210(v26_reg_1220),.grp_fu_1225_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1225_p_din0),.grp_fu_1225_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1225_p_din1),.grp_fu_1225_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1225_p_opcode),.grp_fu_1225_p_dout0(grp_fu_192_p_dout0),.grp_fu_1225_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1225_p_ce),.grp_fu_1229_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1229_p_din0),.grp_fu_1229_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1229_p_din1),.grp_fu_1229_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1229_p_opcode),.grp_fu_1229_p_dout0(grp_fu_196_p_dout0),.grp_fu_1229_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1229_p_ce),.grp_fu_1233_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1233_p_din0),.grp_fu_1233_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1233_p_din1),.grp_fu_1233_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1233_p_opcode),.grp_fu_1233_p_dout0(grp_fu_200_p_dout0),.grp_fu_1233_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1233_p_ce),.grp_fu_332_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_332_p_din0),.grp_fu_332_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_332_p_din1),.grp_fu_332_p_dout0(grp_fu_204_p_dout0),.grp_fu_332_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_332_p_ce),.grp_fu_336_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_336_p_din0),.grp_fu_336_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_336_p_din1),.grp_fu_336_p_dout0(grp_fu_208_p_dout0),.grp_fu_336_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_336_p_ce),.grp_fu_340_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_340_p_din0),.grp_fu_340_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_340_p_din1),.grp_fu_340_p_dout0(grp_fu_212_p_dout0),.grp_fu_340_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_340_p_ce));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U61(.din0(mul_ln175_fu_424_p0),.din1(mul_ln175_fu_424_p1),.dout(mul_ln175_fu_424_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U62(.din0(mul_ln171_fu_649_p0),.din1(mul_ln171_fu_649_p1),.dout(mul_ln171_fu_649_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U63(.din0(mul_ln186_fu_658_p0),.din1(mul_ln186_fu_658_p1),.dout(mul_ln186_fu_658_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U64(.din0(mul_ln199_fu_674_p0),.din1(mul_ln199_fu_674_p1),.dout(mul_ln199_fu_674_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U65(.din0(mul_ln212_fu_683_p0),.din1(mul_ln212_fu_683_p1),.dout(mul_ln212_fu_683_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U66(.din0(mul_ln225_fu_699_p0),.din1(mul_ln225_fu_699_p1),.dout(mul_ln225_fu_699_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U67(.din0(mul_ln238_fu_708_p0),.din1(mul_ln238_fu_708_p1),.dout(mul_ln238_fu_708_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U68(.din0(mul_ln251_fu_724_p0),.din1(mul_ln251_fu_724_p1),.dout(mul_ln251_fu_724_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U69(.din0(mul_ln264_fu_733_p0),.din1(mul_ln264_fu_733_p1),.dout(mul_ln264_fu_733_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U70(.din0(mul_ln277_fu_749_p0),.din1(mul_ln277_fu_749_p1),.dout(mul_ln277_fu_749_p2));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_755_p0),.din1(grp_fu_755_p1),.din2(grp_fu_755_p2),.ce(1'b1),.dout(grp_fu_755_p3));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U72(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_763_p0),.din1(grp_fu_763_p1),.din2(grp_fu_763_p2),.ce(1'b1),.dout(grp_fu_763_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_2ns_7ns_7ns_15_4_1_U73(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_282),.din1(grp_fu_771_p1),.din2(grp_fu_771_p2),.din3(grp_fu_771_p3),.ce(1'b1),.dout(grp_fu_771_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U74(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_781_p0),.din1(grp_fu_781_p1),.din2(grp_fu_781_p2),.ce(1'b1),.dout(grp_fu_781_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U75(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_282),.din1(grp_fu_789_p1),.din2(grp_fu_789_p2),.din3(grp_fu_789_p3),.ce(1'b1),.dout(grp_fu_789_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U76(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_799_p0),.din1(grp_fu_799_p1),.din2(grp_fu_799_p2),.ce(1'b1),.dout(grp_fu_799_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_3ns_7ns_7ns_15_4_1_U77(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_282),.din1(grp_fu_807_p1),.din2(grp_fu_807_p2),.din3(grp_fu_807_p3),.ce(1'b1),.dout(grp_fu_807_p4));
kernel_2mm_mac_muladd_8ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.dout_WIDTH( 15 ))
mac_muladd_8ns_7ns_7ns_15_4_1_U78(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_817_p0),.din1(grp_fu_817_p1),.din2(grp_fu_817_p2),.ce(1'b1),.dout(grp_fu_817_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 15 ))
ama_addmuladd_8ns_4ns_7ns_7ns_15_4_1_U79(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_282),.din1(grp_fu_825_p1),.din2(grp_fu_825_p2),.din3(grp_fu_825_p3),.ce(1'b1),.dout(grp_fu_825_p4));
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
    end else if (((icmp_ln169_fu_450_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_102 <= add_ln168_reg_858;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_282 <= add_ln169_reg_905;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_390_p2 == 1'd0))) begin
        v115_reg_282 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_858 <= add_ln168_fu_396_p2;
        cmp11_reg_892 <= cmp11_fu_444_p2;
        mul_ln175_reg_874 <= mul_ln175_fu_424_p2;
        trunc_ln168_1_reg_869 <= trunc_ln168_1_fu_406_p1;
        trunc_ln168_reg_863 <= trunc_ln168_fu_402_p1;
        zext_ln168_reg_879[6 : 0] <= zext_ln168_fu_440_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_905 <= add_ln169_fu_460_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1135 <= mul_ln171_fu_649_p2;
        mul_ln186_reg_1145 <= mul_ln186_fu_658_p2;
        mul_ln199_reg_1155 <= mul_ln199_fu_674_p2;
        mul_ln212_reg_1165 <= mul_ln212_fu_683_p2;
        mul_ln225_reg_1175 <= mul_ln225_fu_699_p2;
        mul_ln238_reg_1185 <= mul_ln238_fu_708_p2;
        mul_ln251_reg_1195 <= mul_ln251_fu_724_p2;
        mul_ln264_reg_1205 <= mul_ln264_fu_733_p2;
        mul_ln277_reg_1215 <= mul_ln277_fu_749_p2;
        trunc_ln169_reg_1130 <= trunc_ln169_fu_631_p1;
        v19_reg_1150 <= grp_fu_208_p_dout0;
        v20_reg_1160 <= grp_fu_212_p_dout0;
        v21_reg_1170 <= grp_fu_216_p_dout0;
        v22_reg_1180 <= grp_fu_220_p_dout0;
        v23_reg_1190 <= grp_fu_224_p_dout0;
        v24_reg_1200 <= grp_fu_228_p_dout0;
        v25_reg_1210 <= grp_fu_232_p_dout0;
        v26_reg_1220 <= grp_fu_236_p_dout0;
        v_reg_1140 <= grp_fu_204_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_1_reg_925 <= {{empty_29_fu_490_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_2_reg_945 <= {{empty_36_fu_515_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_3_reg_980 <= {{empty_43_fu_545_p2[7:1]}};
        v119_v_reg_950 <= grp_fu_368_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_915 <= {{empty_22_fu_470_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v132_v_reg_985 <= grp_fu_375_p3;
        v143_v_reg_990 <= grp_fu_368_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v154_v_reg_1015 <= grp_fu_368_p3;
        v165_v_reg_1020 <= grp_fu_375_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v176_v_reg_1045 <= grp_fu_368_p3;
        v187_v_reg_1050 <= grp_fu_375_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v198_v_reg_1075 <= grp_fu_368_p3;
        v209_v_reg_1080 <= grp_fu_375_p3;
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_390_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_390_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1225_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1225_p_ce;
    end else begin
        grp_fu_1225_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1229_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1229_p_ce;
    end else begin
        grp_fu_1229_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1233_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1233_p_ce;
    end else begin
        grp_fu_1233_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_332_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_332_p_ce;
    end else begin
        grp_fu_332_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_332_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_332_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_332_p0 = v119_fu_595_p1;
    end else begin
        grp_fu_332_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_332_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_332_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_332_p1 = v113;
    end else begin
        grp_fu_332_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_336_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_336_p_ce;
    end else begin
        grp_fu_336_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_336_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_336_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_336_p0 = v132_fu_599_p1;
    end else begin
        grp_fu_336_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_336_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_336_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_336_p1 = v113;
    end else begin
        grp_fu_336_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_340_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_340_p_ce;
    end else begin
        grp_fu_340_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_340_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_340_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_340_p0 = v143_fu_603_p1;
    end else begin
        grp_fu_340_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_340_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_340_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_340_p1 = v113;
    end else begin
        grp_fu_340_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address0_local = p_cast2249_fu_585_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address0_local = p_cast2247_fu_575_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0_local = p_cast2245_fu_565_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address0_local = p_cast2244_fu_540_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_0_address0_local = p_cast2243_fu_510_p1;
    end else begin
        v226_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_0_address1_local = p_cast2250_fu_590_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_0_address1_local = p_cast2248_fu_580_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address1_local = p_cast2246_fu_570_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_0_address1_local = p_cast_fu_535_p1;
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
        v226_1_address0_local = p_cast2249_fu_585_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address0_local = p_cast2247_fu_575_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address0_local = p_cast2245_fu_565_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address0_local = p_cast2244_fu_540_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0_local = p_cast2243_fu_510_p1;
    end else begin
        v226_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address1_local = p_cast2250_fu_590_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_1_address1_local = p_cast2248_fu_580_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_1_address1_local = p_cast2246_fu_570_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_1_address1_local = p_cast_fu_535_p1;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_390_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_390_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_390_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_390_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_450_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
assign add_ln168_fu_396_p2 = (v114_fu_102 + 8'd1);
assign add_ln169_fu_460_p2 = (v115_reg_282 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_390_p2 == 1'd1));
end
assign cmp11_fu_444_p2 = ((v114_fu_102 == 8'd0) ? 1'b1 : 1'b0);
assign empty_22_fu_470_p2 = (v115_reg_282 + 8'd1);
assign empty_28_fu_664_p2 = (lshr_ln1_fu_635_p4 + 7'd1);
assign empty_29_fu_490_p2 = (v115_reg_282 + 8'd3);
assign empty_35_fu_689_p2 = (lshr_ln1_fu_635_p4 + 7'd2);
assign empty_36_fu_515_p2 = (v115_reg_282 + 8'd5);
assign empty_42_fu_714_p2 = (lshr_ln1_fu_635_p4 + 7'd3);
assign empty_43_fu_545_p2 = (v115_reg_282 + 8'd7);
assign empty_49_fu_739_p2 = (lshr_ln1_fu_635_p4 + 7'd4);
assign grp_fu_192_p_ce = grp_fu_1225_ce;
assign grp_fu_192_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1225_p_din0;
assign grp_fu_192_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1225_p_din1;
assign grp_fu_192_p_opcode = 2'd0;
assign grp_fu_196_p_ce = grp_fu_1229_ce;
assign grp_fu_196_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1229_p_din0;
assign grp_fu_196_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1229_p_din1;
assign grp_fu_196_p_opcode = 2'd0;
assign grp_fu_200_p_ce = grp_fu_1233_ce;
assign grp_fu_200_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1233_p_din0;
assign grp_fu_200_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_grp_fu_1233_p_din1;
assign grp_fu_200_p_opcode = 2'd0;
assign grp_fu_204_p_ce = grp_fu_332_ce;
assign grp_fu_204_p_din0 = grp_fu_332_p0;
assign grp_fu_204_p_din1 = grp_fu_332_p1;
assign grp_fu_208_p_ce = grp_fu_336_ce;
assign grp_fu_208_p_din0 = grp_fu_336_p0;
assign grp_fu_208_p_din1 = grp_fu_336_p1;
assign grp_fu_212_p_ce = grp_fu_340_ce;
assign grp_fu_212_p_din0 = grp_fu_340_p0;
assign grp_fu_212_p_din1 = grp_fu_340_p1;
assign grp_fu_216_p_ce = 1'b1;
assign grp_fu_216_p_din0 = v154_fu_607_p1;
assign grp_fu_216_p_din1 = v113;
assign grp_fu_220_p_ce = 1'b1;
assign grp_fu_220_p_din0 = v165_fu_611_p1;
assign grp_fu_220_p_din1 = v113;
assign grp_fu_224_p_ce = 1'b1;
assign grp_fu_224_p_din0 = v176_fu_615_p1;
assign grp_fu_224_p_din1 = v113;
assign grp_fu_228_p_ce = 1'b1;
assign grp_fu_228_p_din0 = v187_fu_619_p1;
assign grp_fu_228_p_din1 = v113;
assign grp_fu_232_p_ce = 1'b1;
assign grp_fu_232_p_din0 = v198_fu_623_p1;
assign grp_fu_232_p_din1 = v113;
assign grp_fu_236_p_ce = 1'b1;
assign grp_fu_236_p_din0 = v209_fu_627_p1;
assign grp_fu_236_p_din1 = v113;
assign grp_fu_368_p3 = ((trunc_ln168_reg_863[0:0] == 1'b1) ? v226_1_q0 : v226_0_q0);
assign grp_fu_375_p3 = ((trunc_ln168_reg_863[0:0] == 1'b1) ? v226_1_q1 : v226_0_q1);
assign grp_fu_755_p0 = grp_fu_755_p00;
assign grp_fu_755_p00 = v115_reg_282;
assign grp_fu_755_p1 = 15'd105;
assign grp_fu_755_p2 = zext_ln168_reg_879;
assign grp_fu_763_p0 = grp_fu_763_p00;
assign grp_fu_763_p00 = empty_22_fu_470_p2;
assign grp_fu_763_p1 = 15'd105;
assign grp_fu_763_p2 = zext_ln168_reg_879;
assign grp_fu_771_p1 = 8'd2;
assign grp_fu_771_p2 = 15'd105;
assign grp_fu_771_p3 = zext_ln168_reg_879;
assign grp_fu_781_p0 = grp_fu_781_p00;
assign grp_fu_781_p00 = empty_29_fu_490_p2;
assign grp_fu_781_p1 = 15'd105;
assign grp_fu_781_p2 = zext_ln168_reg_879;
assign grp_fu_789_p1 = 8'd4;
assign grp_fu_789_p2 = 15'd105;
assign grp_fu_789_p3 = zext_ln168_reg_879;
assign grp_fu_799_p0 = grp_fu_799_p00;
assign grp_fu_799_p00 = empty_36_fu_515_p2;
assign grp_fu_799_p1 = 15'd105;
assign grp_fu_799_p2 = zext_ln168_reg_879;
assign grp_fu_807_p1 = 8'd6;
assign grp_fu_807_p2 = 15'd105;
assign grp_fu_807_p3 = zext_ln168_reg_879;
assign grp_fu_817_p0 = grp_fu_817_p00;
assign grp_fu_817_p00 = empty_43_fu_545_p2;
assign grp_fu_817_p1 = 15'd105;
assign grp_fu_817_p2 = zext_ln168_reg_879;
assign grp_fu_825_p1 = 8'd8;
assign grp_fu_825_p2 = 15'd105;
assign grp_fu_825_p3 = zext_ln168_reg_879;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_294_ap_start_reg;
assign icmp_ln168_fu_390_p2 = ((v114_fu_102 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_450_p2 = ((v115_reg_282 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln168_1_fu_430_p4 = {{v114_fu_102[7:1]}};
assign lshr_ln1_fu_635_p4 = {{v115_reg_282[7:1]}};
assign lshr_ln_fu_410_p4 = {{v114_fu_102[7:2]}};
assign mul_ln171_fu_649_p0 = mul_ln171_fu_649_p00;
assign mul_ln171_fu_649_p00 = lshr_ln1_fu_635_p4;
assign mul_ln171_fu_649_p1 = 15'd190;
assign mul_ln175_fu_424_p0 = mul_ln175_fu_424_p00;
assign mul_ln175_fu_424_p00 = lshr_ln_fu_410_p4;
assign mul_ln175_fu_424_p1 = 14'd190;
assign mul_ln186_fu_658_p0 = mul_ln186_fu_658_p00;
assign mul_ln186_fu_658_p00 = tmp_reg_915;
assign mul_ln186_fu_658_p1 = 15'd190;
assign mul_ln199_fu_674_p0 = mul_ln199_fu_674_p00;
assign mul_ln199_fu_674_p00 = empty_28_fu_664_p2;
assign mul_ln199_fu_674_p1 = 15'd190;
assign mul_ln212_fu_683_p0 = mul_ln212_fu_683_p00;
assign mul_ln212_fu_683_p00 = tmp_1_reg_925;
assign mul_ln212_fu_683_p1 = 15'd190;
assign mul_ln225_fu_699_p0 = mul_ln225_fu_699_p00;
assign mul_ln225_fu_699_p00 = empty_35_fu_689_p2;
assign mul_ln225_fu_699_p1 = 15'd190;
assign mul_ln238_fu_708_p0 = mul_ln238_fu_708_p00;
assign mul_ln238_fu_708_p00 = tmp_2_reg_945;
assign mul_ln238_fu_708_p1 = 15'd190;
assign mul_ln251_fu_724_p0 = mul_ln251_fu_724_p00;
assign mul_ln251_fu_724_p00 = empty_42_fu_714_p2;
assign mul_ln251_fu_724_p1 = 15'd190;
assign mul_ln264_fu_733_p0 = mul_ln264_fu_733_p00;
assign mul_ln264_fu_733_p00 = tmp_3_reg_980;
assign mul_ln264_fu_733_p1 = 15'd190;
assign mul_ln277_fu_749_p0 = mul_ln277_fu_749_p00;
assign mul_ln277_fu_749_p00 = empty_49_fu_739_p2;
assign mul_ln277_fu_749_p1 = 15'd190;
assign p_cast2243_fu_510_p1 = grp_fu_755_p3;
assign p_cast2244_fu_540_p1 = grp_fu_771_p4;
assign p_cast2245_fu_565_p1 = grp_fu_781_p3;
assign p_cast2246_fu_570_p1 = grp_fu_789_p4;
assign p_cast2247_fu_575_p1 = grp_fu_799_p3;
assign p_cast2248_fu_580_p1 = grp_fu_807_p4;
assign p_cast2249_fu_585_p1 = grp_fu_817_p3;
assign p_cast2250_fu_590_p1 = grp_fu_825_p4;
assign p_cast_fu_535_p1 = grp_fu_763_p3;
assign trunc_ln168_1_fu_406_p1 = v114_fu_102[1:0];
assign trunc_ln168_fu_402_p1 = v114_fu_102[0:0];
assign trunc_ln169_fu_631_p1 = v115_reg_282[0:0];
assign v119_fu_595_p1 = v119_v_reg_950;
assign v132_fu_599_p1 = v132_v_reg_985;
assign v143_fu_603_p1 = v143_v_reg_990;
assign v154_fu_607_p1 = v154_v_reg_1015;
assign v165_fu_611_p1 = v165_v_reg_1020;
assign v176_fu_615_p1 = v176_v_reg_1045;
assign v187_fu_619_p1 = v187_v_reg_1050;
assign v198_fu_623_p1 = v198_v_reg_1075;
assign v209_fu_627_p1 = v209_v_reg_1080;
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
assign zext_ln168_fu_440_p1 = lshr_ln168_1_fu_430_p4;
always @ (posedge ap_clk) begin
    zext_ln168_reg_879[14:7] <= 8'b00000000;
end
endmodule 