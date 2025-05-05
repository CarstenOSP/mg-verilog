module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v225_2_address0,v225_2_ce0,v225_2_we0,v225_2_d0,v225_2_q0,v225_2_address1,v225_2_ce1,v225_2_we1,v225_2_d1,v225_2_q1,v225_3_address0,v225_3_ce0,v225_3_we0,v225_3_d0,v225_3_q0,v225_3_address1,v225_3_ce1,v225_3_we1,v225_3_d1,v225_3_q1,v113,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_opcode,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce); 
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
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
output  [1:0] grp_fu_132_p_opcode;
input  [31:0] grp_fu_132_p_dout0;
output   grp_fu_132_p_ce;
output  [31:0] grp_fu_136_p_din0;
output  [31:0] grp_fu_136_p_din1;
input  [31:0] grp_fu_136_p_dout0;
output   grp_fu_136_p_ce;
output  [31:0] grp_fu_140_p_din0;
output  [31:0] grp_fu_140_p_din1;
input  [31:0] grp_fu_140_p_dout0;
output   grp_fu_140_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_305_p2;
reg   [15:0] phi_mul_load_reg_762;
wire   [15:0] add_ln168_1_fu_299_p2;
reg   [15:0] add_ln168_1_reg_767;
wire   [7:0] add_ln168_fu_311_p2;
reg   [7:0] add_ln168_reg_775;
wire   [15:0] zext_ln168_fu_317_p1;
reg   [15:0] zext_ln168_reg_780;
wire   [0:0] cmp11_fu_321_p2;
reg   [0:0] cmp11_reg_793;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_337_p2;
reg   [7:0] add_ln169_reg_806;
wire    ap_CS_fsm_state4;
reg   [5:0] tmp_reg_816;
reg   [5:0] tmp_1_reg_826;
wire    ap_CS_fsm_state5;
reg   [5:0] tmp_2_reg_836;
wire    ap_CS_fsm_state6;
reg   [5:0] tmp_3_reg_851;
reg   [5:0] tmp_4_reg_861;
reg   [31:0] v226_load_reg_866;
wire    ap_CS_fsm_state7;
reg   [5:0] tmp_5_reg_886;
reg   [31:0] v226_load_1_reg_891;
wire    ap_CS_fsm_state8;
reg   [31:0] v226_load_2_reg_896;
reg   [31:0] v226_load_3_reg_911;
wire    ap_CS_fsm_state9;
reg   [31:0] v226_load_4_reg_916;
reg   [31:0] v226_load_5_reg_931;
wire    ap_CS_fsm_state10;
reg   [31:0] v226_load_6_reg_936;
reg   [31:0] v226_load_7_reg_951;
wire    ap_CS_fsm_state11;
reg   [31:0] v226_load_8_reg_956;
wire   [31:0] v119_fu_507_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_511_p1;
wire   [31:0] v143_fu_515_p1;
wire   [31:0] v154_fu_519_p1;
wire   [31:0] v165_fu_523_p1;
wire   [31:0] v176_fu_527_p1;
wire   [1:0] trunc_ln169_fu_543_p1;
reg   [1:0] trunc_ln169_reg_1006;
wire    ap_CS_fsm_state15;
wire   [13:0] mul_ln171_fu_561_p2;
reg   [13:0] mul_ln171_reg_1012;
reg   [31:0] v_reg_1017;
wire   [13:0] mul_ln186_fu_570_p2;
reg   [13:0] mul_ln186_reg_1022;
reg   [31:0] v19_reg_1027;
wire   [13:0] mul_ln199_fu_579_p2;
reg   [13:0] mul_ln199_reg_1032;
wire   [31:0] grp_fu_255_p2;
reg   [31:0] v20_reg_1037;
wire   [13:0] mul_ln212_fu_588_p2;
reg   [13:0] mul_ln212_reg_1042;
wire   [31:0] grp_fu_259_p2;
reg   [31:0] v21_reg_1047;
wire   [13:0] mul_ln225_fu_604_p2;
reg   [13:0] mul_ln225_reg_1052;
wire   [31:0] grp_fu_263_p2;
reg   [31:0] v22_reg_1057;
wire   [13:0] mul_ln238_fu_613_p2;
reg   [13:0] mul_ln238_reg_1062;
wire   [31:0] grp_fu_267_p2;
reg   [31:0] v23_reg_1067;
wire   [13:0] mul_ln251_fu_622_p2;
reg   [13:0] mul_ln251_reg_1072;
wire   [31:0] grp_fu_271_p2;
reg   [31:0] v24_reg_1077;
wire   [13:0] mul_ln264_fu_631_p2;
reg   [13:0] mul_ln264_reg_1082;
wire   [31:0] grp_fu_275_p2;
reg   [31:0] v25_reg_1087;
wire   [13:0] mul_ln277_fu_647_p2;
reg   [13:0] mul_ln277_reg_1092;
wire   [31:0] grp_fu_279_p2;
reg   [31:0] v26_reg_1097;
wire   [0:0] empty_44_fu_653_p2;
reg   [0:0] empty_44_reg_1102;
wire    ap_CS_fsm_state16;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_d0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_1107_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_1107_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_1107_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_1107_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_247_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_247_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_247_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_251_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_251_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_251_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_255_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_255_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_255_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_259_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_259_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_259_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_263_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_263_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_263_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_267_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_267_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_267_p_ce;
reg   [7:0] v115_reg_199;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_start_reg;
wire   [63:0] p_cast1862_fu_411_p1;
wire   [63:0] p_cast_fu_455_p1;
wire   [63:0] p_cast1863_fu_459_p1;
wire   [63:0] p_cast1864_fu_483_p1;
wire   [63:0] p_cast1865_fu_487_p1;
wire   [63:0] p_cast1866_fu_491_p1;
wire   [63:0] p_cast1867_fu_495_p1;
wire   [63:0] p_cast1868_fu_499_p1;
wire   [63:0] p_cast1869_fu_503_p1;
reg   [15:0] phi_mul_fu_96;
wire   [0:0] icmp_ln169_fu_327_p2;
reg   [7:0] v114_fu_100;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_247_p0;
reg   [31:0] grp_fu_247_p1;
reg   [31:0] grp_fu_251_p0;
reg   [31:0] grp_fu_251_p1;
reg   [31:0] grp_fu_255_p0;
reg   [31:0] grp_fu_255_p1;
reg   [31:0] grp_fu_259_p0;
reg   [31:0] grp_fu_259_p1;
reg   [31:0] grp_fu_263_p0;
reg   [31:0] grp_fu_263_p1;
reg   [31:0] grp_fu_267_p0;
reg   [31:0] grp_fu_267_p1;
wire   [31:0] grp_fu_271_p0;
wire   [31:0] grp_fu_275_p0;
wire   [31:0] grp_fu_279_p0;
wire   [7:0] empty_18_fu_351_p2;
wire   [7:0] empty_21_fu_371_p2;
wire   [7:0] empty_24_fu_391_p2;
wire   [15:0] grp_fu_659_p3;
wire   [7:0] empty_31_fu_415_p2;
wire   [7:0] empty_34_fu_435_p2;
wire   [15:0] grp_fu_667_p3;
wire   [15:0] grp_fu_675_p3;
wire   [7:0] empty_37_fu_463_p2;
wire   [15:0] grp_fu_683_p3;
wire   [15:0] grp_fu_691_p4;
wire   [15:0] grp_fu_701_p3;
wire   [15:0] grp_fu_709_p3;
wire   [15:0] grp_fu_717_p3;
wire   [15:0] grp_fu_725_p4;
wire   [5:0] lshr_ln_fu_547_p4;
wire   [5:0] mul_ln171_fu_561_p0;
wire   [8:0] mul_ln171_fu_561_p1;
wire   [5:0] mul_ln186_fu_570_p0;
wire   [8:0] mul_ln186_fu_570_p1;
wire   [5:0] mul_ln199_fu_579_p0;
wire   [8:0] mul_ln199_fu_579_p1;
wire   [5:0] mul_ln212_fu_588_p0;
wire   [8:0] mul_ln212_fu_588_p1;
wire   [5:0] empty_30_fu_594_p2;
wire   [5:0] mul_ln225_fu_604_p0;
wire   [8:0] mul_ln225_fu_604_p1;
wire   [5:0] mul_ln238_fu_613_p0;
wire   [8:0] mul_ln238_fu_613_p1;
wire   [5:0] mul_ln251_fu_622_p0;
wire   [8:0] mul_ln251_fu_622_p1;
wire   [5:0] mul_ln264_fu_631_p0;
wire   [8:0] mul_ln264_fu_631_p1;
wire   [5:0] empty_43_fu_637_p2;
wire   [5:0] mul_ln277_fu_647_p0;
wire   [8:0] mul_ln277_fu_647_p1;
wire   [7:0] grp_fu_659_p0;
wire   [7:0] grp_fu_659_p1;
wire   [7:0] grp_fu_659_p2;
wire   [7:0] grp_fu_667_p0;
wire   [7:0] grp_fu_667_p1;
wire   [7:0] grp_fu_667_p2;
wire   [7:0] grp_fu_675_p0;
wire   [7:0] grp_fu_675_p1;
wire   [7:0] grp_fu_675_p2;
wire   [7:0] grp_fu_683_p0;
wire   [7:0] grp_fu_683_p1;
wire   [7:0] grp_fu_683_p2;
wire   [2:0] grp_fu_691_p1;
wire   [7:0] grp_fu_691_p2;
wire   [7:0] grp_fu_691_p3;
wire   [7:0] grp_fu_701_p0;
wire   [7:0] grp_fu_701_p1;
wire   [7:0] grp_fu_701_p2;
wire   [7:0] grp_fu_709_p0;
wire   [7:0] grp_fu_709_p1;
wire   [7:0] grp_fu_709_p2;
wire   [7:0] grp_fu_717_p0;
wire   [7:0] grp_fu_717_p1;
wire   [7:0] grp_fu_717_p2;
wire   [3:0] grp_fu_725_p1;
wire   [7:0] grp_fu_725_p2;
wire   [7:0] grp_fu_725_p3;
reg    grp_fu_247_ce;
reg    grp_fu_251_ce;
reg    grp_fu_255_ce;
reg    grp_fu_259_ce;
reg    grp_fu_263_ce;
reg    grp_fu_267_ce;
reg    grp_fu_1107_ce;
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
wire   [15:0] grp_fu_659_p00;
wire   [15:0] grp_fu_667_p00;
wire   [15:0] grp_fu_675_p00;
wire   [15:0] grp_fu_683_p00;
wire   [15:0] grp_fu_701_p00;
wire   [15:0] grp_fu_709_p00;
wire   [15:0] grp_fu_717_p00;
wire   [13:0] mul_ln171_fu_561_p00;
wire   [13:0] mul_ln186_fu_570_p00;
wire   [13:0] mul_ln199_fu_579_p00;
wire   [13:0] mul_ln212_fu_588_p00;
wire   [13:0] mul_ln225_fu_604_p00;
wire   [13:0] mul_ln238_fu_613_p00;
wire   [13:0] mul_ln251_fu_622_p00;
wire   [13:0] mul_ln264_fu_631_p00;
wire   [13:0] mul_ln277_fu_647_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_start_reg = 1'b0;
#0 phi_mul_fu_96 = 16'd0;
#0 v114_fu_100 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_211(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_2_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_address0),.v225_2_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_ce0),.v225_2_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_we0),.v225_2_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_d0),.v225_2_q0(v225_2_q0),.v225_2_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_address1),.v225_2_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_ce1),.v225_2_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_we1),.v225_2_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_d1),.v225_2_q1(v225_2_q1),.v225_3_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_address0),.v225_3_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_ce0),.v225_3_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_we0),.v225_3_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_d0),.v225_3_q0(v225_3_q0),.v225_3_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_address1),.v225_3_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_ce1),.v225_3_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_we1),.v225_3_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_d1),.v225_3_q1(v225_3_q1),.phi_mul(phi_mul_load_reg_762),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v227_ce1),.v227_q1(v227_q1),.mul_ln171(mul_ln171_reg_1012),.mul_ln225(mul_ln225_reg_1052),.mul_ln277(mul_ln277_reg_1092),.mul_ln212(mul_ln212_reg_1042),.mul_ln264(mul_ln264_reg_1082),.mul_ln199(mul_ln199_reg_1032),.mul_ln251(mul_ln251_reg_1072),.mul_ln186(mul_ln186_reg_1022),.mul_ln238(mul_ln238_reg_1062),.empty_15(trunc_ln169_reg_1006),.cmp11(cmp11_reg_793),.v120(v_reg_1017),.v133(v19_reg_1027),.v144(v20_reg_1037),.v155(v21_reg_1047),.v166(v22_reg_1057),.v177(v23_reg_1067),.v188(v24_reg_1077),.v199(v25_reg_1087),.v210(v26_reg_1097),.empty(empty_44_reg_1102),.grp_fu_1107_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_1107_p_din0),.grp_fu_1107_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_1107_p_din1),.grp_fu_1107_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_1107_p_opcode),.grp_fu_1107_p_dout0(grp_fu_132_p_dout0),.grp_fu_1107_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_1107_p_ce),.grp_fu_247_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_247_p_din0),.grp_fu_247_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_247_p_din1),.grp_fu_247_p_dout0(grp_fu_136_p_dout0),.grp_fu_247_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_247_p_ce),.grp_fu_251_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_251_p_din0),.grp_fu_251_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_251_p_din1),.grp_fu_251_p_dout0(grp_fu_140_p_dout0),.grp_fu_251_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_251_p_ce),.grp_fu_255_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_255_p_din0),.grp_fu_255_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_255_p_din1),.grp_fu_255_p_dout0(grp_fu_255_p2),.grp_fu_255_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_255_p_ce),.grp_fu_259_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_259_p_din0),.grp_fu_259_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_259_p_din1),.grp_fu_259_p_dout0(grp_fu_259_p2),.grp_fu_259_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_259_p_ce),.grp_fu_263_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_263_p_din0),.grp_fu_263_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_263_p_din1),.grp_fu_263_p_dout0(grp_fu_263_p2),.grp_fu_263_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_263_p_ce),.grp_fu_267_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_267_p_din0),.grp_fu_267_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_267_p_din1),.grp_fu_267_p_dout0(grp_fu_267_p2),.grp_fu_267_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_267_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U48(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_255_p0),.din1(grp_fu_255_p1),.ce(grp_fu_255_ce),.dout(grp_fu_255_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U49(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_259_p0),.din1(grp_fu_259_p1),.ce(grp_fu_259_ce),.dout(grp_fu_259_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U50(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_263_p0),.din1(grp_fu_263_p1),.ce(grp_fu_263_ce),.dout(grp_fu_263_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U51(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_267_p0),.din1(grp_fu_267_p1),.ce(grp_fu_267_ce),.dout(grp_fu_267_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U52(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_271_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_271_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_275_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_275_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_279_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_279_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U55(.din0(mul_ln171_fu_561_p0),.din1(mul_ln171_fu_561_p1),.dout(mul_ln171_fu_561_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U56(.din0(mul_ln186_fu_570_p0),.din1(mul_ln186_fu_570_p1),.dout(mul_ln186_fu_570_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U57(.din0(mul_ln199_fu_579_p0),.din1(mul_ln199_fu_579_p1),.dout(mul_ln199_fu_579_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U58(.din0(mul_ln212_fu_588_p0),.din1(mul_ln212_fu_588_p1),.dout(mul_ln212_fu_588_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U59(.din0(mul_ln225_fu_604_p0),.din1(mul_ln225_fu_604_p1),.dout(mul_ln225_fu_604_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U60(.din0(mul_ln238_fu_613_p0),.din1(mul_ln238_fu_613_p1),.dout(mul_ln238_fu_613_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U61(.din0(mul_ln251_fu_622_p0),.din1(mul_ln251_fu_622_p1),.dout(mul_ln251_fu_622_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U62(.din0(mul_ln264_fu_631_p0),.din1(mul_ln264_fu_631_p1),.dout(mul_ln264_fu_631_p2));
kernel_2mm_mul_6ns_9ns_14_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 9 ),.dout_WIDTH( 14 ))
mul_6ns_9ns_14_1_1_U63(.din0(mul_ln277_fu_647_p0),.din1(mul_ln277_fu_647_p1),.dout(mul_ln277_fu_647_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U64(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_659_p0),.din1(grp_fu_659_p1),.din2(grp_fu_659_p2),.ce(1'b1),.dout(grp_fu_659_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U65(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_667_p0),.din1(grp_fu_667_p1),.din2(grp_fu_667_p2),.ce(1'b1),.dout(grp_fu_667_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U66(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_675_p0),.din1(grp_fu_675_p1),.din2(grp_fu_675_p2),.ce(1'b1),.dout(grp_fu_675_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U67(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_683_p0),.din1(grp_fu_683_p1),.din2(grp_fu_683_p2),.ce(1'b1),.dout(grp_fu_683_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U68(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_199),.din1(grp_fu_691_p1),.din2(grp_fu_691_p2),.din3(grp_fu_691_p3),.ce(1'b1),.dout(grp_fu_691_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U69(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_701_p0),.din1(grp_fu_701_p1),.din2(grp_fu_701_p2),.ce(1'b1),.dout(grp_fu_701_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U70(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_709_p0),.din1(grp_fu_709_p1),.din2(grp_fu_709_p2),.ce(1'b1),.dout(grp_fu_709_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U71(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_717_p0),.din1(grp_fu_717_p1),.din2(grp_fu_717_p2),.ce(1'b1),.dout(grp_fu_717_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U72(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_199),.din1(grp_fu_725_p1),.din2(grp_fu_725_p2),.din3(grp_fu_725_p3),.ce(1'b1),.dout(grp_fu_725_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_96 <= 16'd0;
    end else if (((icmp_ln169_fu_327_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        phi_mul_fu_96 <= add_ln168_1_reg_767;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_100 <= 8'd0;
    end else if (((icmp_ln169_fu_327_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_100 <= add_ln168_reg_775;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_199 <= add_ln169_reg_806;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_305_p2 == 1'd0))) begin
        v115_reg_199 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_1_reg_767 <= add_ln168_1_fu_299_p2;
        add_ln168_reg_775 <= add_ln168_fu_311_p2;
        cmp11_reg_793 <= cmp11_fu_321_p2;
        phi_mul_load_reg_762 <= phi_mul_fu_96;
        zext_ln168_reg_780[7 : 0] <= zext_ln168_fu_317_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_806 <= add_ln169_fu_337_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        empty_44_reg_1102 <= empty_44_fu_653_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_1012 <= mul_ln171_fu_561_p2;
        mul_ln186_reg_1022 <= mul_ln186_fu_570_p2;
        mul_ln199_reg_1032 <= mul_ln199_fu_579_p2;
        mul_ln212_reg_1042 <= mul_ln212_fu_588_p2;
        mul_ln225_reg_1052 <= mul_ln225_fu_604_p2;
        mul_ln238_reg_1062 <= mul_ln238_fu_613_p2;
        mul_ln251_reg_1072 <= mul_ln251_fu_622_p2;
        mul_ln264_reg_1082 <= mul_ln264_fu_631_p2;
        mul_ln277_reg_1092 <= mul_ln277_fu_647_p2;
        trunc_ln169_reg_1006 <= trunc_ln169_fu_543_p1;
        v19_reg_1027 <= grp_fu_140_p_dout0;
        v20_reg_1037 <= grp_fu_255_p2;
        v21_reg_1047 <= grp_fu_259_p2;
        v22_reg_1057 <= grp_fu_263_p2;
        v23_reg_1067 <= grp_fu_267_p2;
        v24_reg_1077 <= grp_fu_271_p2;
        v25_reg_1087 <= grp_fu_275_p2;
        v26_reg_1097 <= grp_fu_279_p2;
        v_reg_1017 <= grp_fu_136_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_1_reg_826 <= {{empty_21_fu_371_p2[7:2]}};
        tmp_reg_816 <= {{empty_18_fu_351_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_2_reg_836 <= {{empty_24_fu_391_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_3_reg_851 <= {{empty_31_fu_415_p2[7:2]}};
        tmp_4_reg_861 <= {{empty_34_fu_435_p2[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_5_reg_886 <= {{empty_37_fu_463_p2[7:2]}};
        v226_load_reg_866 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_load_1_reg_891 <= v226_q1;
        v226_load_2_reg_896 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_load_3_reg_911 <= v226_q0;
        v226_load_4_reg_916 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_load_5_reg_931 <= v226_q0;
        v226_load_6_reg_936 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_load_7_reg_951 <= v226_q0;
        v226_load_8_reg_956 <= v226_q1;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_305_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_305_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1107_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_1107_p_ce;
    end else begin
        grp_fu_1107_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_247_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_247_p_ce;
    end else begin
        grp_fu_247_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_247_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_247_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_247_p0 = v119_fu_507_p1;
    end else begin
        grp_fu_247_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_247_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_247_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_247_p1 = v113;
    end else begin
        grp_fu_247_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_251_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_251_p_ce;
    end else begin
        grp_fu_251_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_251_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_251_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_251_p0 = v132_fu_511_p1;
    end else begin
        grp_fu_251_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_251_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_251_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_251_p1 = v113;
    end else begin
        grp_fu_251_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_255_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_255_p_ce;
    end else begin
        grp_fu_255_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_255_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_255_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_255_p0 = v143_fu_515_p1;
    end else begin
        grp_fu_255_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_255_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_255_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_255_p1 = v113;
    end else begin
        grp_fu_255_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_259_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_259_p_ce;
    end else begin
        grp_fu_259_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_259_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_259_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_259_p0 = v154_fu_519_p1;
    end else begin
        grp_fu_259_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_259_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_259_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_259_p1 = v113;
    end else begin
        grp_fu_259_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_263_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_263_p_ce;
    end else begin
        grp_fu_263_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_263_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_263_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_263_p0 = v165_fu_523_p1;
    end else begin
        grp_fu_263_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_263_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_263_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_263_p1 = v113;
    end else begin
        grp_fu_263_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_267_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_267_p_ce;
    end else begin
        grp_fu_267_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_267_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_267_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_267_p0 = v176_fu_527_p1;
    end else begin
        grp_fu_267_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_267_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_267_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_267_p1 = v113;
    end else begin
        grp_fu_267_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast1868_fu_499_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast1866_fu_491_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast1864_fu_483_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast1863_fu_459_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast1862_fu_411_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast1869_fu_503_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast1867_fu_495_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast1865_fu_487_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_455_p1;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_305_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_305_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_305_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_305_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_327_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_1_fu_299_p2 = (phi_mul_fu_96 + 16'd190);
assign add_ln168_fu_311_p2 = (v114_fu_100 + 8'd1);
assign add_ln169_fu_337_p2 = (v115_reg_199 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_305_p2 == 1'd1));
end
assign cmp11_fu_321_p2 = ((v114_fu_100 == 8'd0) ? 1'b1 : 1'b0);
assign empty_18_fu_351_p2 = (v115_reg_199 + 8'd1);
assign empty_21_fu_371_p2 = (v115_reg_199 + 8'd2);
assign empty_24_fu_391_p2 = (v115_reg_199 + 8'd3);
assign empty_30_fu_594_p2 = (lshr_ln_fu_547_p4 + 6'd1);
assign empty_31_fu_415_p2 = (v115_reg_199 + 8'd5);
assign empty_34_fu_435_p2 = (v115_reg_199 + 8'd6);
assign empty_37_fu_463_p2 = (v115_reg_199 + 8'd7);
assign empty_43_fu_637_p2 = (lshr_ln_fu_547_p4 + 6'd2);
assign empty_44_fu_653_p2 = ((trunc_ln169_reg_1006 == 2'd3) ? 1'b1 : 1'b0);
assign grp_fu_132_p_ce = grp_fu_1107_ce;
assign grp_fu_132_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_1107_p_din0;
assign grp_fu_132_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_grp_fu_1107_p_din1;
assign grp_fu_132_p_opcode = 2'd0;
assign grp_fu_136_p_ce = grp_fu_247_ce;
assign grp_fu_136_p_din0 = grp_fu_247_p0;
assign grp_fu_136_p_din1 = grp_fu_247_p1;
assign grp_fu_140_p_ce = grp_fu_251_ce;
assign grp_fu_140_p_din0 = grp_fu_251_p0;
assign grp_fu_140_p_din1 = grp_fu_251_p1;
assign grp_fu_271_p0 = v226_load_6_reg_936;
assign grp_fu_275_p0 = v226_load_7_reg_951;
assign grp_fu_279_p0 = v226_load_8_reg_956;
assign grp_fu_659_p0 = grp_fu_659_p00;
assign grp_fu_659_p00 = v115_reg_199;
assign grp_fu_659_p1 = 16'd210;
assign grp_fu_659_p2 = zext_ln168_reg_780;
assign grp_fu_667_p0 = grp_fu_667_p00;
assign grp_fu_667_p00 = empty_18_fu_351_p2;
assign grp_fu_667_p1 = 16'd210;
assign grp_fu_667_p2 = zext_ln168_reg_780;
assign grp_fu_675_p0 = grp_fu_675_p00;
assign grp_fu_675_p00 = empty_21_fu_371_p2;
assign grp_fu_675_p1 = 16'd210;
assign grp_fu_675_p2 = zext_ln168_reg_780;
assign grp_fu_683_p0 = grp_fu_683_p00;
assign grp_fu_683_p00 = empty_24_fu_391_p2;
assign grp_fu_683_p1 = 16'd210;
assign grp_fu_683_p2 = zext_ln168_reg_780;
assign grp_fu_691_p1 = 8'd4;
assign grp_fu_691_p2 = 16'd210;
assign grp_fu_691_p3 = zext_ln168_reg_780;
assign grp_fu_701_p0 = grp_fu_701_p00;
assign grp_fu_701_p00 = empty_31_fu_415_p2;
assign grp_fu_701_p1 = 16'd210;
assign grp_fu_701_p2 = zext_ln168_reg_780;
assign grp_fu_709_p0 = grp_fu_709_p00;
assign grp_fu_709_p00 = empty_34_fu_435_p2;
assign grp_fu_709_p1 = 16'd210;
assign grp_fu_709_p2 = zext_ln168_reg_780;
assign grp_fu_717_p0 = grp_fu_717_p00;
assign grp_fu_717_p00 = empty_37_fu_463_p2;
assign grp_fu_717_p1 = 16'd210;
assign grp_fu_717_p2 = zext_ln168_reg_780;
assign grp_fu_725_p1 = 8'd8;
assign grp_fu_725_p2 = 16'd210;
assign grp_fu_725_p3 = zext_ln168_reg_780;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_ap_start_reg;
assign icmp_ln168_fu_305_p2 = ((v114_fu_100 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_327_p2 = ((v115_reg_199 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln_fu_547_p4 = {{v115_reg_199[7:2]}};
assign mul_ln171_fu_561_p0 = mul_ln171_fu_561_p00;
assign mul_ln171_fu_561_p00 = lshr_ln_fu_547_p4;
assign mul_ln171_fu_561_p1 = 14'd190;
assign mul_ln186_fu_570_p0 = mul_ln186_fu_570_p00;
assign mul_ln186_fu_570_p00 = tmp_reg_816;
assign mul_ln186_fu_570_p1 = 14'd190;
assign mul_ln199_fu_579_p0 = mul_ln199_fu_579_p00;
assign mul_ln199_fu_579_p00 = tmp_1_reg_826;
assign mul_ln199_fu_579_p1 = 14'd190;
assign mul_ln212_fu_588_p0 = mul_ln212_fu_588_p00;
assign mul_ln212_fu_588_p00 = tmp_2_reg_836;
assign mul_ln212_fu_588_p1 = 14'd190;
assign mul_ln225_fu_604_p0 = mul_ln225_fu_604_p00;
assign mul_ln225_fu_604_p00 = empty_30_fu_594_p2;
assign mul_ln225_fu_604_p1 = 14'd190;
assign mul_ln238_fu_613_p0 = mul_ln238_fu_613_p00;
assign mul_ln238_fu_613_p00 = tmp_3_reg_851;
assign mul_ln238_fu_613_p1 = 14'd190;
assign mul_ln251_fu_622_p0 = mul_ln251_fu_622_p00;
assign mul_ln251_fu_622_p00 = tmp_4_reg_861;
assign mul_ln251_fu_622_p1 = 14'd190;
assign mul_ln264_fu_631_p0 = mul_ln264_fu_631_p00;
assign mul_ln264_fu_631_p00 = tmp_5_reg_886;
assign mul_ln264_fu_631_p1 = 14'd190;
assign mul_ln277_fu_647_p0 = mul_ln277_fu_647_p00;
assign mul_ln277_fu_647_p00 = empty_43_fu_637_p2;
assign mul_ln277_fu_647_p1 = 14'd190;
assign p_cast1862_fu_411_p1 = grp_fu_659_p3;
assign p_cast1863_fu_459_p1 = grp_fu_675_p3;
assign p_cast1864_fu_483_p1 = grp_fu_683_p3;
assign p_cast1865_fu_487_p1 = grp_fu_691_p4;
assign p_cast1866_fu_491_p1 = grp_fu_701_p3;
assign p_cast1867_fu_495_p1 = grp_fu_709_p3;
assign p_cast1868_fu_499_p1 = grp_fu_717_p3;
assign p_cast1869_fu_503_p1 = grp_fu_725_p4;
assign p_cast_fu_455_p1 = grp_fu_667_p3;
assign trunc_ln169_fu_543_p1 = v115_reg_199[1:0];
assign v119_fu_507_p1 = v226_load_reg_866;
assign v132_fu_511_p1 = v226_load_1_reg_891;
assign v143_fu_515_p1 = v226_load_2_reg_896;
assign v154_fu_519_p1 = v226_load_3_reg_911;
assign v165_fu_523_p1 = v226_load_4_reg_916;
assign v176_fu_527_p1 = v226_load_5_reg_931;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_1_we1;
assign v225_2_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_address0;
assign v225_2_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_address1;
assign v225_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_ce0;
assign v225_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_ce1;
assign v225_2_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_d0;
assign v225_2_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_d1;
assign v225_2_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_we0;
assign v225_2_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_2_we1;
assign v225_3_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_address0;
assign v225_3_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_address1;
assign v225_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_ce0;
assign v225_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_ce1;
assign v225_3_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_d0;
assign v225_3_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_d1;
assign v225_3_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_we0;
assign v225_3_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v225_3_we1;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v227_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v227_address0;
assign v227_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v227_address1;
assign v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v227_ce0;
assign v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_211_v227_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_317_p1 = v114_fu_100;
always @ (posedge ap_clk) begin
    zext_ln168_reg_780[15:8] <= 8'b00000000;
end
endmodule 