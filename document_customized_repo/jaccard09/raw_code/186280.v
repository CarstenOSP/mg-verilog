module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v226_address1,v226_ce1,v226_q1,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v113,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_opcode,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_opcode,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce); 
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
output  [31:0] grp_fu_136_p_din0;
output  [31:0] grp_fu_136_p_din1;
output  [1:0] grp_fu_136_p_opcode;
input  [31:0] grp_fu_136_p_dout0;
output   grp_fu_136_p_ce;
output  [31:0] grp_fu_140_p_din0;
output  [31:0] grp_fu_140_p_din1;
output  [1:0] grp_fu_140_p_opcode;
input  [31:0] grp_fu_140_p_dout0;
output   grp_fu_140_p_ce;
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
input  [31:0] grp_fu_148_p_dout0;
output   grp_fu_148_p_ce;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_279_p2;
wire   [7:0] add_ln168_fu_285_p2;
reg   [7:0] add_ln168_reg_724;
wire   [15:0] zext_ln168_fu_291_p1;
reg   [15:0] zext_ln168_reg_729;
wire   [0:0] trunc_ln168_fu_295_p1;
reg   [0:0] trunc_ln168_reg_742;
wire   [14:0] mul_ln175_fu_313_p2;
reg   [14:0] mul_ln175_reg_747;
wire   [0:0] cmp11_fu_319_p2;
reg   [0:0] cmp11_reg_752;
wire    ap_CS_fsm_state3;
wire   [7:0] add_ln169_fu_335_p2;
reg   [7:0] add_ln169_reg_765;
wire    ap_CS_fsm_state4;
reg   [6:0] tmp_reg_775;
wire    ap_CS_fsm_state5;
reg   [6:0] tmp_1_reg_785;
wire    ap_CS_fsm_state6;
reg   [6:0] tmp_2_reg_800;
reg   [31:0] v226_load_reg_805;
wire    ap_CS_fsm_state7;
reg   [6:0] tmp_3_reg_825;
reg   [31:0] v226_load_1_reg_830;
wire    ap_CS_fsm_state8;
reg   [31:0] v226_load_2_reg_835;
reg   [31:0] v226_load_3_reg_850;
wire    ap_CS_fsm_state9;
reg   [31:0] v226_load_4_reg_855;
reg   [31:0] v226_load_5_reg_870;
wire    ap_CS_fsm_state10;
reg   [31:0] v226_load_6_reg_875;
reg   [31:0] v226_load_7_reg_890;
wire    ap_CS_fsm_state11;
reg   [31:0] v226_load_8_reg_895;
wire   [31:0] v119_fu_461_p1;
wire    ap_CS_fsm_state12;
wire   [31:0] v132_fu_465_p1;
wire   [31:0] v143_fu_469_p1;
wire   [31:0] v154_fu_473_p1;
wire   [0:0] trunc_ln169_fu_497_p1;
reg   [0:0] trunc_ln169_reg_945;
wire    ap_CS_fsm_state15;
wire   [14:0] mul_ln171_fu_515_p2;
reg   [14:0] mul_ln171_reg_950;
reg   [31:0] v_reg_955;
wire   [14:0] mul_ln186_fu_524_p2;
reg   [14:0] mul_ln186_reg_960;
reg   [31:0] v18_reg_965;
wire   [14:0] mul_ln199_fu_540_p2;
reg   [14:0] mul_ln199_reg_970;
reg   [31:0] v19_reg_975;
wire   [14:0] mul_ln212_fu_549_p2;
reg   [14:0] mul_ln212_reg_980;
reg   [31:0] v20_reg_985;
wire   [14:0] mul_ln225_fu_565_p2;
reg   [14:0] mul_ln225_reg_990;
wire   [31:0] grp_fu_251_p2;
reg   [31:0] v21_reg_995;
wire   [14:0] mul_ln238_fu_574_p2;
reg   [14:0] mul_ln238_reg_1000;
wire   [31:0] grp_fu_255_p2;
reg   [31:0] v22_reg_1005;
wire   [14:0] mul_ln251_fu_590_p2;
reg   [14:0] mul_ln251_reg_1010;
wire   [31:0] grp_fu_259_p2;
reg   [31:0] v23_reg_1015;
wire   [14:0] mul_ln264_fu_599_p2;
reg   [14:0] mul_ln264_reg_1020;
wire   [31:0] grp_fu_263_p2;
reg   [31:0] v24_reg_1025;
wire   [14:0] mul_ln277_fu_615_p2;
reg   [14:0] mul_ln277_reg_1030;
wire   [31:0] grp_fu_267_p2;
reg   [31:0] v25_reg_1035;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_0_ce1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_1_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1040_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1040_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1040_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1040_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1044_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1044_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1044_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1044_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_235_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_235_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_235_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_239_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_239_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_239_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_243_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_243_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_243_p_ce;
reg   [7:0] v115_reg_189;
reg    ap_block_state2;
wire    ap_CS_fsm_state17;
reg    grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_start_reg;
wire    ap_CS_fsm_state16;
wire   [63:0] p_cast1997_fu_385_p1;
wire   [63:0] p_cast_fu_409_p1;
wire   [63:0] p_cast1998_fu_413_p1;
wire   [63:0] p_cast1999_fu_437_p1;
wire   [63:0] p_cast2000_fu_441_p1;
wire   [63:0] p_cast2001_fu_445_p1;
wire   [63:0] p_cast2002_fu_449_p1;
wire   [63:0] p_cast2003_fu_453_p1;
wire   [63:0] p_cast2004_fu_457_p1;
reg   [7:0] v114_fu_90;
wire   [0:0] icmp_ln169_fu_325_p2;
reg    v236_write_local;
reg    v226_ce0_local;
reg   [15:0] v226_address0_local;
reg    v226_ce1_local;
reg   [15:0] v226_address1_local;
reg   [31:0] grp_fu_235_p0;
reg   [31:0] grp_fu_235_p1;
reg   [31:0] grp_fu_239_p0;
reg   [31:0] grp_fu_239_p1;
reg   [31:0] grp_fu_243_p0;
reg   [31:0] grp_fu_243_p1;
wire   [31:0] grp_fu_251_p0;
wire   [31:0] grp_fu_255_p0;
wire   [31:0] grp_fu_259_p0;
wire   [31:0] grp_fu_263_p0;
wire   [31:0] grp_fu_267_p0;
wire   [6:0] lshr_ln_fu_299_p4;
wire   [6:0] mul_ln175_fu_313_p0;
wire   [8:0] mul_ln175_fu_313_p1;
wire   [7:0] empty_20_fu_345_p2;
wire   [7:0] empty_27_fu_365_p2;
wire   [15:0] grp_fu_621_p3;
wire   [7:0] empty_34_fu_389_p2;
wire   [15:0] grp_fu_629_p3;
wire   [15:0] grp_fu_637_p4;
wire   [7:0] empty_41_fu_417_p2;
wire   [15:0] grp_fu_647_p3;
wire   [15:0] grp_fu_655_p4;
wire   [15:0] grp_fu_665_p3;
wire   [15:0] grp_fu_673_p4;
wire   [15:0] grp_fu_683_p3;
wire   [15:0] grp_fu_691_p4;
wire   [6:0] lshr_ln1_fu_501_p4;
wire   [6:0] mul_ln171_fu_515_p0;
wire   [8:0] mul_ln171_fu_515_p1;
wire   [6:0] mul_ln186_fu_524_p0;
wire   [8:0] mul_ln186_fu_524_p1;
wire   [6:0] empty_26_fu_530_p2;
wire   [6:0] mul_ln199_fu_540_p0;
wire   [8:0] mul_ln199_fu_540_p1;
wire   [6:0] mul_ln212_fu_549_p0;
wire   [8:0] mul_ln212_fu_549_p1;
wire   [6:0] empty_33_fu_555_p2;
wire   [6:0] mul_ln225_fu_565_p0;
wire   [8:0] mul_ln225_fu_565_p1;
wire   [6:0] mul_ln238_fu_574_p0;
wire   [8:0] mul_ln238_fu_574_p1;
wire   [6:0] empty_40_fu_580_p2;
wire   [6:0] mul_ln251_fu_590_p0;
wire   [8:0] mul_ln251_fu_590_p1;
wire   [6:0] mul_ln264_fu_599_p0;
wire   [8:0] mul_ln264_fu_599_p1;
wire   [6:0] empty_47_fu_605_p2;
wire   [6:0] mul_ln277_fu_615_p0;
wire   [8:0] mul_ln277_fu_615_p1;
wire   [7:0] grp_fu_621_p0;
wire   [7:0] grp_fu_621_p1;
wire   [7:0] grp_fu_621_p2;
wire   [7:0] grp_fu_629_p0;
wire   [7:0] grp_fu_629_p1;
wire   [7:0] grp_fu_629_p2;
wire   [1:0] grp_fu_637_p1;
wire   [7:0] grp_fu_637_p2;
wire   [7:0] grp_fu_637_p3;
wire   [7:0] grp_fu_647_p0;
wire   [7:0] grp_fu_647_p1;
wire   [7:0] grp_fu_647_p2;
wire   [2:0] grp_fu_655_p1;
wire   [7:0] grp_fu_655_p2;
wire   [7:0] grp_fu_655_p3;
wire   [7:0] grp_fu_665_p0;
wire   [7:0] grp_fu_665_p1;
wire   [7:0] grp_fu_665_p2;
wire   [2:0] grp_fu_673_p1;
wire   [7:0] grp_fu_673_p2;
wire   [7:0] grp_fu_673_p3;
wire   [7:0] grp_fu_683_p0;
wire   [7:0] grp_fu_683_p1;
wire   [7:0] grp_fu_683_p2;
wire   [3:0] grp_fu_691_p1;
wire   [7:0] grp_fu_691_p2;
wire   [7:0] grp_fu_691_p3;
reg    grp_fu_235_ce;
reg    grp_fu_239_ce;
reg    grp_fu_243_ce;
reg    grp_fu_1040_ce;
reg    grp_fu_1044_ce;
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
wire   [15:0] grp_fu_621_p00;
wire   [15:0] grp_fu_629_p00;
wire   [15:0] grp_fu_647_p00;
wire   [15:0] grp_fu_665_p00;
wire   [15:0] grp_fu_683_p00;
wire   [14:0] mul_ln171_fu_515_p00;
wire   [14:0] mul_ln175_fu_313_p00;
wire   [14:0] mul_ln186_fu_524_p00;
wire   [14:0] mul_ln199_fu_540_p00;
wire   [14:0] mul_ln212_fu_549_p00;
wire   [14:0] mul_ln225_fu_565_p00;
wire   [14:0] mul_ln238_fu_574_p00;
wire   [14:0] mul_ln251_fu_590_p00;
wire   [14:0] mul_ln264_fu_599_p00;
wire   [14:0] mul_ln277_fu_615_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_start_reg = 1'b0;
#0 v114_fu_90 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_5 grp_kernel_2mm_node1_Pipeline_label_5_fu_201(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_ready),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_d1),.v225_0_q1(v225_0_q1),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_d1),.v225_1_q1(v225_1_q1),.mul_ln175(mul_ln175_reg_747),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_1_ce1),.v227_1_q1(v227_1_q1),.mul_ln171(mul_ln171_reg_950),.mul_ln199(mul_ln199_reg_970),.mul_ln225(mul_ln225_reg_990),.mul_ln251(mul_ln251_reg_1010),.mul_ln277(mul_ln277_reg_1030),.mul_ln186(mul_ln186_reg_960),.mul_ln212(mul_ln212_reg_980),.mul_ln238(mul_ln238_reg_1000),.mul_ln264(mul_ln264_reg_1020),.empty_17(trunc_ln169_reg_945),.cmp11(cmp11_reg_752),.empty(trunc_ln168_reg_742),.v120(v_reg_955),.v133(v18_reg_965),.v144(v19_reg_975),.v155(v20_reg_985),.v166(v21_reg_995),.v177(v22_reg_1005),.v188(v23_reg_1015),.v199(v24_reg_1025),.v210(v25_reg_1035),.grp_fu_1040_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1040_p_din0),.grp_fu_1040_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1040_p_din1),.grp_fu_1040_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1040_p_opcode),.grp_fu_1040_p_dout0(grp_fu_136_p_dout0),.grp_fu_1040_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1040_p_ce),.grp_fu_1044_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1044_p_din0),.grp_fu_1044_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1044_p_din1),.grp_fu_1044_p_opcode(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1044_p_opcode),.grp_fu_1044_p_dout0(grp_fu_140_p_dout0),.grp_fu_1044_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1044_p_ce),.grp_fu_235_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_235_p_din0),.grp_fu_235_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_235_p_din1),.grp_fu_235_p_dout0(grp_fu_144_p_dout0),.grp_fu_235_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_235_p_ce),.grp_fu_239_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_239_p_din0),.grp_fu_239_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_239_p_din1),.grp_fu_239_p_dout0(grp_fu_148_p_dout0),.grp_fu_239_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_239_p_ce),.grp_fu_243_p_din0(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_243_p_din0),.grp_fu_243_p_din1(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_243_p_din1),.grp_fu_243_p_dout0(grp_fu_152_p_dout0),.grp_fu_243_p_ce(grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_243_p_ce));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U38(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_251_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_251_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U39(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_255_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_255_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U40(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_259_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_259_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U41(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_263_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_263_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U42(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_267_p0),.din1(v113),.ce(1'b1),.dout(grp_fu_267_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U43(.din0(mul_ln175_fu_313_p0),.din1(mul_ln175_fu_313_p1),.dout(mul_ln175_fu_313_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U44(.din0(mul_ln171_fu_515_p0),.din1(mul_ln171_fu_515_p1),.dout(mul_ln171_fu_515_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U45(.din0(mul_ln186_fu_524_p0),.din1(mul_ln186_fu_524_p1),.dout(mul_ln186_fu_524_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U46(.din0(mul_ln199_fu_540_p0),.din1(mul_ln199_fu_540_p1),.dout(mul_ln199_fu_540_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U47(.din0(mul_ln212_fu_549_p0),.din1(mul_ln212_fu_549_p1),.dout(mul_ln212_fu_549_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U48(.din0(mul_ln225_fu_565_p0),.din1(mul_ln225_fu_565_p1),.dout(mul_ln225_fu_565_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U49(.din0(mul_ln238_fu_574_p0),.din1(mul_ln238_fu_574_p1),.dout(mul_ln238_fu_574_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U50(.din0(mul_ln251_fu_590_p0),.din1(mul_ln251_fu_590_p1),.dout(mul_ln251_fu_590_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U51(.din0(mul_ln264_fu_599_p0),.din1(mul_ln264_fu_599_p1),.dout(mul_ln264_fu_599_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U52(.din0(mul_ln277_fu_615_p0),.din1(mul_ln277_fu_615_p1),.dout(mul_ln277_fu_615_p2));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U53(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_621_p0),.din1(grp_fu_621_p1),.din2(grp_fu_621_p2),.ce(1'b1),.dout(grp_fu_621_p3));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U54(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_629_p0),.din1(grp_fu_629_p1),.din2(grp_fu_629_p2),.ce(1'b1),.dout(grp_fu_629_p3));
kernel_2mm_ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 2 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_2ns_8ns_8ns_16_4_1_U55(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_189),.din1(grp_fu_637_p1),.din2(grp_fu_637_p2),.din3(grp_fu_637_p3),.ce(1'b1),.dout(grp_fu_637_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U56(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_647_p0),.din1(grp_fu_647_p1),.din2(grp_fu_647_p2),.ce(1'b1),.dout(grp_fu_647_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U57(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_189),.din1(grp_fu_655_p1),.din2(grp_fu_655_p2),.din3(grp_fu_655_p3),.ce(1'b1),.dout(grp_fu_655_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U58(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_665_p0),.din1(grp_fu_665_p1),.din2(grp_fu_665_p2),.ce(1'b1),.dout(grp_fu_665_p3));
kernel_2mm_ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 3 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_3ns_8ns_8ns_16_4_1_U59(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_189),.din1(grp_fu_673_p1),.din2(grp_fu_673_p2),.din3(grp_fu_673_p3),.ce(1'b1),.dout(grp_fu_673_p4));
kernel_2mm_mac_muladd_8ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 16 ))
mac_muladd_8ns_8ns_8ns_16_4_1_U60(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_683_p0),.din1(grp_fu_683_p1),.din2(grp_fu_683_p2),.ce(1'b1),.dout(grp_fu_683_p3));
kernel_2mm_ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 4 ),.din2_WIDTH( 8 ),.din3_WIDTH( 8 ),.dout_WIDTH( 16 ))
ama_addmuladd_8ns_4ns_8ns_8ns_16_4_1_U61(.clk(ap_clk),.reset(ap_rst),.din0(v115_reg_189),.din1(grp_fu_691_p1),.din2(grp_fu_691_p2),.din3(grp_fu_691_p3),.ce(1'b1),.dout(grp_fu_691_p4));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state16)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_90 <= 8'd0;
    end else if (((icmp_ln169_fu_325_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        v114_fu_90 <= add_ln168_reg_724;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
        v115_reg_189 <= add_ln169_reg_765;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_279_p2 == 1'd0))) begin
        v115_reg_189 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln168_reg_724 <= add_ln168_fu_285_p2;
        cmp11_reg_752 <= cmp11_fu_319_p2;
        mul_ln175_reg_747 <= mul_ln175_fu_313_p2;
        trunc_ln168_reg_742 <= trunc_ln168_fu_295_p1;
        zext_ln168_reg_729[7 : 0] <= zext_ln168_fu_291_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln169_reg_765 <= add_ln169_fu_335_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        mul_ln171_reg_950 <= mul_ln171_fu_515_p2;
        mul_ln186_reg_960 <= mul_ln186_fu_524_p2;
        mul_ln199_reg_970 <= mul_ln199_fu_540_p2;
        mul_ln212_reg_980 <= mul_ln212_fu_549_p2;
        mul_ln225_reg_990 <= mul_ln225_fu_565_p2;
        mul_ln238_reg_1000 <= mul_ln238_fu_574_p2;
        mul_ln251_reg_1010 <= mul_ln251_fu_590_p2;
        mul_ln264_reg_1020 <= mul_ln264_fu_599_p2;
        mul_ln277_reg_1030 <= mul_ln277_fu_615_p2;
        trunc_ln169_reg_945 <= trunc_ln169_fu_497_p1;
        v18_reg_965 <= grp_fu_148_p_dout0;
        v19_reg_975 <= grp_fu_152_p_dout0;
        v20_reg_985 <= grp_fu_156_p_dout0;
        v21_reg_995 <= grp_fu_251_p2;
        v22_reg_1005 <= grp_fu_255_p2;
        v23_reg_1015 <= grp_fu_259_p2;
        v24_reg_1025 <= grp_fu_263_p2;
        v25_reg_1035 <= grp_fu_267_p2;
        v_reg_955 <= grp_fu_144_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        tmp_1_reg_785 <= {{empty_27_fu_365_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        tmp_2_reg_800 <= {{empty_34_fu_389_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_3_reg_825 <= {{empty_41_fu_417_p2[7:1]}};
        v226_load_reg_805 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        tmp_reg_775 <= {{empty_20_fu_345_p2[7:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_load_1_reg_830 <= v226_q1;
        v226_load_2_reg_835 <= v226_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_load_3_reg_850 <= v226_q0;
        v226_load_4_reg_855 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_load_5_reg_870 <= v226_q0;
        v226_load_6_reg_875 <= v226_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        v226_load_7_reg_890 <= v226_q0;
        v226_load_8_reg_895 <= v226_q1;
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
    if ((grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_done == 1'b0)) begin
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
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_279_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_279_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1040_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1040_p_ce;
    end else begin
        grp_fu_1040_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_1044_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1044_p_ce;
    end else begin
        grp_fu_1044_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_235_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_235_p_ce;
    end else begin
        grp_fu_235_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_235_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_235_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_235_p0 = v119_fu_461_p1;
    end else begin
        grp_fu_235_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_235_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_235_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_235_p1 = v113;
    end else begin
        grp_fu_235_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_239_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_239_p_ce;
    end else begin
        grp_fu_239_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_239_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_239_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_239_p0 = v132_fu_465_p1;
    end else begin
        grp_fu_239_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_239_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_239_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_239_p1 = v113;
    end else begin
        grp_fu_239_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_243_ce = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_243_p_ce;
    end else begin
        grp_fu_243_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_243_p0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_243_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_243_p0 = v143_fu_469_p1;
    end else begin
        grp_fu_243_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        grp_fu_243_p1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_243_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_243_p1 = v113;
    end else begin
        grp_fu_243_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0_local = p_cast2003_fu_453_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0_local = p_cast2001_fu_445_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0_local = p_cast1999_fu_437_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0_local = p_cast1998_fu_413_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0_local = p_cast1997_fu_385_p1;
    end else begin
        v226_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address1_local = p_cast2004_fu_457_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address1_local = p_cast2002_fu_449_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address1_local = p_cast2000_fu_441_p1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address1_local = p_cast_fu_409_p1;
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_279_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_279_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_279_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_279_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln169_fu_325_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
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
            if (((grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state17))) begin
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
assign add_ln168_fu_285_p2 = (v114_fu_90 + 8'd1);
assign add_ln169_fu_335_p2 = (v115_reg_189 + 8'd9);
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
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_279_p2 == 1'd1));
end
assign cmp11_fu_319_p2 = ((v114_fu_90 == 8'd0) ? 1'b1 : 1'b0);
assign empty_20_fu_345_p2 = (v115_reg_189 + 8'd1);
assign empty_26_fu_530_p2 = (lshr_ln1_fu_501_p4 + 7'd1);
assign empty_27_fu_365_p2 = (v115_reg_189 + 8'd3);
assign empty_33_fu_555_p2 = (lshr_ln1_fu_501_p4 + 7'd2);
assign empty_34_fu_389_p2 = (v115_reg_189 + 8'd5);
assign empty_40_fu_580_p2 = (lshr_ln1_fu_501_p4 + 7'd3);
assign empty_41_fu_417_p2 = (v115_reg_189 + 8'd7);
assign empty_47_fu_605_p2 = (lshr_ln1_fu_501_p4 + 7'd4);
assign grp_fu_136_p_ce = grp_fu_1040_ce;
assign grp_fu_136_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1040_p_din0;
assign grp_fu_136_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1040_p_din1;
assign grp_fu_136_p_opcode = 2'd0;
assign grp_fu_140_p_ce = grp_fu_1044_ce;
assign grp_fu_140_p_din0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1044_p_din0;
assign grp_fu_140_p_din1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_grp_fu_1044_p_din1;
assign grp_fu_140_p_opcode = 2'd0;
assign grp_fu_144_p_ce = grp_fu_235_ce;
assign grp_fu_144_p_din0 = grp_fu_235_p0;
assign grp_fu_144_p_din1 = grp_fu_235_p1;
assign grp_fu_148_p_ce = grp_fu_239_ce;
assign grp_fu_148_p_din0 = grp_fu_239_p0;
assign grp_fu_148_p_din1 = grp_fu_239_p1;
assign grp_fu_152_p_ce = grp_fu_243_ce;
assign grp_fu_152_p_din0 = grp_fu_243_p0;
assign grp_fu_152_p_din1 = grp_fu_243_p1;
assign grp_fu_156_p_ce = 1'b1;
assign grp_fu_156_p_din0 = v154_fu_473_p1;
assign grp_fu_156_p_din1 = v113;
assign grp_fu_251_p0 = v226_load_4_reg_855;
assign grp_fu_255_p0 = v226_load_5_reg_870;
assign grp_fu_259_p0 = v226_load_6_reg_875;
assign grp_fu_263_p0 = v226_load_7_reg_890;
assign grp_fu_267_p0 = v226_load_8_reg_895;
assign grp_fu_621_p0 = grp_fu_621_p00;
assign grp_fu_621_p00 = v115_reg_189;
assign grp_fu_621_p1 = 16'd210;
assign grp_fu_621_p2 = zext_ln168_reg_729;
assign grp_fu_629_p0 = grp_fu_629_p00;
assign grp_fu_629_p00 = empty_20_fu_345_p2;
assign grp_fu_629_p1 = 16'd210;
assign grp_fu_629_p2 = zext_ln168_reg_729;
assign grp_fu_637_p1 = 8'd2;
assign grp_fu_637_p2 = 16'd210;
assign grp_fu_637_p3 = zext_ln168_reg_729;
assign grp_fu_647_p0 = grp_fu_647_p00;
assign grp_fu_647_p00 = empty_27_fu_365_p2;
assign grp_fu_647_p1 = 16'd210;
assign grp_fu_647_p2 = zext_ln168_reg_729;
assign grp_fu_655_p1 = 8'd4;
assign grp_fu_655_p2 = 16'd210;
assign grp_fu_655_p3 = zext_ln168_reg_729;
assign grp_fu_665_p0 = grp_fu_665_p00;
assign grp_fu_665_p00 = empty_34_fu_389_p2;
assign grp_fu_665_p1 = 16'd210;
assign grp_fu_665_p2 = zext_ln168_reg_729;
assign grp_fu_673_p1 = 8'd6;
assign grp_fu_673_p2 = 16'd210;
assign grp_fu_673_p3 = zext_ln168_reg_729;
assign grp_fu_683_p0 = grp_fu_683_p00;
assign grp_fu_683_p00 = empty_41_fu_417_p2;
assign grp_fu_683_p1 = 16'd210;
assign grp_fu_683_p2 = zext_ln168_reg_729;
assign grp_fu_691_p1 = 8'd8;
assign grp_fu_691_p2 = 16'd210;
assign grp_fu_691_p3 = zext_ln168_reg_729;
assign grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_start = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_ap_start_reg;
assign icmp_ln168_fu_279_p2 = ((v114_fu_90 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln169_fu_325_p2 = ((v115_reg_189 < 8'd180) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_501_p4 = {{v115_reg_189[7:1]}};
assign lshr_ln_fu_299_p4 = {{v114_fu_90[7:1]}};
assign mul_ln171_fu_515_p0 = mul_ln171_fu_515_p00;
assign mul_ln171_fu_515_p00 = lshr_ln1_fu_501_p4;
assign mul_ln171_fu_515_p1 = 15'd190;
assign mul_ln175_fu_313_p0 = mul_ln175_fu_313_p00;
assign mul_ln175_fu_313_p00 = lshr_ln_fu_299_p4;
assign mul_ln175_fu_313_p1 = 15'd190;
assign mul_ln186_fu_524_p0 = mul_ln186_fu_524_p00;
assign mul_ln186_fu_524_p00 = tmp_reg_775;
assign mul_ln186_fu_524_p1 = 15'd190;
assign mul_ln199_fu_540_p0 = mul_ln199_fu_540_p00;
assign mul_ln199_fu_540_p00 = empty_26_fu_530_p2;
assign mul_ln199_fu_540_p1 = 15'd190;
assign mul_ln212_fu_549_p0 = mul_ln212_fu_549_p00;
assign mul_ln212_fu_549_p00 = tmp_1_reg_785;
assign mul_ln212_fu_549_p1 = 15'd190;
assign mul_ln225_fu_565_p0 = mul_ln225_fu_565_p00;
assign mul_ln225_fu_565_p00 = empty_33_fu_555_p2;
assign mul_ln225_fu_565_p1 = 15'd190;
assign mul_ln238_fu_574_p0 = mul_ln238_fu_574_p00;
assign mul_ln238_fu_574_p00 = tmp_2_reg_800;
assign mul_ln238_fu_574_p1 = 15'd190;
assign mul_ln251_fu_590_p0 = mul_ln251_fu_590_p00;
assign mul_ln251_fu_590_p00 = empty_40_fu_580_p2;
assign mul_ln251_fu_590_p1 = 15'd190;
assign mul_ln264_fu_599_p0 = mul_ln264_fu_599_p00;
assign mul_ln264_fu_599_p00 = tmp_3_reg_825;
assign mul_ln264_fu_599_p1 = 15'd190;
assign mul_ln277_fu_615_p0 = mul_ln277_fu_615_p00;
assign mul_ln277_fu_615_p00 = empty_47_fu_605_p2;
assign mul_ln277_fu_615_p1 = 15'd190;
assign p_cast1997_fu_385_p1 = grp_fu_621_p3;
assign p_cast1998_fu_413_p1 = grp_fu_637_p4;
assign p_cast1999_fu_437_p1 = grp_fu_647_p3;
assign p_cast2000_fu_441_p1 = grp_fu_655_p4;
assign p_cast2001_fu_445_p1 = grp_fu_665_p3;
assign p_cast2002_fu_449_p1 = grp_fu_673_p4;
assign p_cast2003_fu_453_p1 = grp_fu_683_p3;
assign p_cast2004_fu_457_p1 = grp_fu_691_p4;
assign p_cast_fu_409_p1 = grp_fu_629_p3;
assign trunc_ln168_fu_295_p1 = v114_fu_90[0:0];
assign trunc_ln169_fu_497_p1 = v115_reg_189[0:0];
assign v119_fu_461_p1 = v226_load_reg_805;
assign v132_fu_465_p1 = v226_load_1_reg_830;
assign v143_fu_469_p1 = v226_load_2_reg_835;
assign v154_fu_473_p1 = v226_load_3_reg_850;
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v225_1_we1;
assign v226_address0 = v226_address0_local;
assign v226_address1 = v226_address1_local;
assign v226_ce0 = v226_ce0_local;
assign v226_ce1 = v226_ce1_local;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_5_fu_201_v227_1_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign zext_ln168_fu_291_p1 = v114_fu_90;
always @ (posedge ap_clk) begin
    zext_ln168_reg_729[15:8] <= 8'b00000000;
end
endmodule 