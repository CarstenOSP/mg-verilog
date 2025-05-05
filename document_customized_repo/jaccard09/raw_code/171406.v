module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_1_address0,v226_1_ce0,v226_1_q0,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_opcode,grp_fu_140_p_dout0,grp_fu_140_p_ce,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_dout0,grp_fu_148_p_ce); 
parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [14:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[14:0] v226_0_address0;
reg v226_0_ce0;
reg[14:0] v226_1_address0;
reg v226_1_ce0;
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
reg[15:0] v225_address0;
reg v225_ce0;
reg v225_we0;
reg[31:0] v225_d0;
reg[15:0] v225_address1;
reg v225_ce1;
reg v225_we1;
reg[31:0] v225_d1;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state6;
reg   [0:0] icmp_ln168_reg_548;
wire   [15:0] trunc_ln168_fu_249_p1;
reg   [15:0] trunc_ln168_reg_521;
wire    ap_CS_fsm_state2;
reg   [14:0] lshr_ln_reg_526;
wire   [0:0] cmp11_0_fu_263_p2;
reg   [0:0] cmp11_0_reg_532;
reg   [6:0] tmp_reg_537;
reg   [13:0] tmp_1_reg_542;
wire   [0:0] icmp_ln168_fu_307_p2;
wire   [15:0] mul_ln175_fu_324_p2;
reg   [15:0] mul_ln175_reg_552;
wire    ap_CS_fsm_state4;
wire   [15:0] mul_ln175_1_fu_337_p2;
reg   [15:0] mul_ln175_1_reg_557;
wire   [14:0] or_ln168_2_fu_343_p3;
reg   [14:0] or_ln168_2_reg_562;
reg   [5:0] tmp_6_reg_568;
reg   [4:0] tmp_8_reg_573;
reg   [12:0] tmp_s_reg_581;
reg   [0:0] tmp_3_reg_587;
wire   [15:0] mul_ln175_2_fu_405_p2;
reg   [15:0] mul_ln175_2_reg_593;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln175_3_fu_422_p2;
reg   [15:0] mul_ln175_3_reg_598;
wire    ap_CS_fsm_state10;
wire   [14:0] or_ln2_fu_428_p4;
reg   [14:0] or_ln2_reg_603;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln175_4_fu_451_p2;
reg   [15:0] mul_ln175_4_reg_609;
wire    ap_CS_fsm_state12;
wire   [15:0] mul_ln175_5_fu_468_p2;
reg   [15:0] mul_ln175_5_reg_614;
wire    ap_CS_fsm_state14;
wire   [14:0] or_ln169_1_fu_474_p3;
reg   [14:0] or_ln169_1_reg_619;
wire    ap_CS_fsm_state15;
wire   [15:0] mul_ln175_6_fu_493_p2;
reg   [15:0] mul_ln175_6_reg_625;
wire    ap_CS_fsm_state16;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v226_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v226_0_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_630_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_630_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_630_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_630_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_634_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_634_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_634_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_638_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_638_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_638_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v226_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v226_1_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_630_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_630_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_630_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_630_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_634_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_634_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_634_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_638_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_638_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_638_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v226_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v226_0_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_630_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_630_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_630_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_630_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_634_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_634_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_634_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_638_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_638_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_638_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v226_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v226_1_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_630_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_630_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_630_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_630_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_634_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_634_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_634_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_638_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_638_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_638_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v226_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v226_0_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_630_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_630_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_630_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_630_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_634_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_634_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_634_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_638_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_638_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_638_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v226_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v226_1_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_630_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_630_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_630_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_630_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_634_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_634_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_634_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_638_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_638_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_638_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v226_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v226_0_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_630_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_630_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_630_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_630_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_634_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_634_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_634_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_638_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_638_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_638_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v226_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v226_1_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_630_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_630_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_630_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_630_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_634_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_634_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_634_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_638_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_638_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_638_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_start_reg;
wire    ap_CS_fsm_state9;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_start_reg;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
reg   [63:0] v114_fu_118;
wire   [63:0] add_ln168_fu_384_p2;
reg    ap_block_state6;
reg    v236_write_local;
wire   [61:0] tmp_2_fu_279_p4;
wire   [63:0] or_ln168_1_fu_299_p3;
wire   [7:0] or_ln_fu_313_p3;
wire   [7:0] mul_ln175_fu_324_p0;
wire   [8:0] mul_ln175_fu_324_p1;
wire  signed [15:0] mul_ln175_1_fu_337_p0;
wire   [8:0] mul_ln175_1_fu_337_p1;
wire   [7:0] or_ln168_3_fu_394_p3;
wire   [7:0] mul_ln175_2_fu_405_p0;
wire   [8:0] mul_ln175_2_fu_405_p1;
wire   [7:0] or_ln168_4_fu_411_p3;
wire   [7:0] mul_ln175_3_fu_422_p0;
wire   [8:0] mul_ln175_3_fu_422_p1;
wire   [7:0] or_ln168_5_fu_437_p5;
wire   [7:0] mul_ln175_4_fu_451_p0;
wire   [8:0] mul_ln175_4_fu_451_p1;
wire   [7:0] or_ln168_6_fu_457_p3;
wire   [7:0] mul_ln175_5_fu_468_p0;
wire   [8:0] mul_ln175_5_fu_468_p1;
wire   [7:0] or_ln168_7_fu_482_p3;
wire   [7:0] mul_ln175_6_fu_493_p0;
wire   [8:0] mul_ln175_6_fu_493_p1;
reg   [31:0] grp_fu_630_p0;
reg   [31:0] grp_fu_630_p1;
reg    grp_fu_630_ce;
reg   [31:0] grp_fu_634_p0;
reg   [31:0] grp_fu_634_p1;
reg    grp_fu_634_ce;
reg   [31:0] grp_fu_638_p0;
reg   [31:0] grp_fu_638_p1;
reg    grp_fu_638_ce;
reg   [17:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
wire    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
reg    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
reg    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
reg    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
reg    ap_ST_fsm_state18_blk;
wire   [15:0] mul_ln175_2_fu_405_p00;
wire   [15:0] mul_ln175_3_fu_422_p00;
wire   [15:0] mul_ln175_4_fu_451_p00;
wire   [15:0] mul_ln175_5_fu_468_p00;
wire   [15:0] mul_ln175_6_fu_493_p00;
wire   [15:0] mul_ln175_fu_324_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_start_reg = 1'b0;
#0 v114_fu_118 = 64'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_ready),.zext_ln168(lshr_ln_reg_526),.v226_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v226_0_address0),.v226_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v226_0_ce0),.v226_0_q0(v226_0_q0),.v113(v113),.v114(trunc_ln168_reg_521),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_d1),.v225_q1(v225_q1),.cmp11_0(cmp11_0_reg_532),.grp_fu_630_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_630_p_din0),.grp_fu_630_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_630_p_din1),.grp_fu_630_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_630_p_opcode),.grp_fu_630_p_dout0(grp_fu_140_p_dout0),.grp_fu_630_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_630_p_ce),.grp_fu_634_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_634_p_din0),.grp_fu_634_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_634_p_din1),.grp_fu_634_p_dout0(grp_fu_144_p_dout0),.grp_fu_634_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_634_p_ce),.grp_fu_638_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_638_p_din0),.grp_fu_638_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_638_p_din1),.grp_fu_638_p_dout0(grp_fu_148_p_dout0),.grp_fu_638_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_638_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_53 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_ready),.zext_ln168(lshr_ln_reg_526),.v226_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v226_1_address0),.v226_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v226_1_ce0),.v226_1_q0(v226_1_q0),.v113(v113),.mul_ln175_1(mul_ln175_reg_552),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_d1),.v225_q1(v225_q1),.grp_fu_630_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_630_p_din0),.grp_fu_630_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_630_p_din1),.grp_fu_630_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_630_p_opcode),.grp_fu_630_p_dout0(grp_fu_140_p_dout0),.grp_fu_630_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_630_p_ce),.grp_fu_634_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_634_p_din0),.grp_fu_634_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_634_p_din1),.grp_fu_634_p_dout0(grp_fu_144_p_dout0),.grp_fu_634_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_634_p_ce),.grp_fu_638_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_638_p_din0),.grp_fu_638_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_638_p_din1),.grp_fu_638_p_dout0(grp_fu_148_p_dout0),.grp_fu_638_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_638_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_54 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_ready),.zext_ln168_1(or_ln168_2_reg_562),.v226_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v226_0_address0),.v226_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v226_0_ce0),.v226_0_q0(v226_0_q0),.v113(v113),.mul_ln175_2(mul_ln175_1_reg_557),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_d1),.v225_q1(v225_q1),.grp_fu_630_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_630_p_din0),.grp_fu_630_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_630_p_din1),.grp_fu_630_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_630_p_opcode),.grp_fu_630_p_dout0(grp_fu_140_p_dout0),.grp_fu_630_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_630_p_ce),.grp_fu_634_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_634_p_din0),.grp_fu_634_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_634_p_din1),.grp_fu_634_p_dout0(grp_fu_144_p_dout0),.grp_fu_634_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_634_p_ce),.grp_fu_638_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_638_p_din0),.grp_fu_638_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_638_p_din1),.grp_fu_638_p_dout0(grp_fu_148_p_dout0),.grp_fu_638_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_638_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_55 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_ready),.zext_ln168_1(or_ln168_2_reg_562),.v226_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v226_1_address0),.v226_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v226_1_ce0),.v226_1_q0(v226_1_q0),.v113(v113),.mul_ln175_3(mul_ln175_2_reg_593),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_d1),.v225_q1(v225_q1),.grp_fu_630_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_630_p_din0),.grp_fu_630_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_630_p_din1),.grp_fu_630_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_630_p_opcode),.grp_fu_630_p_dout0(grp_fu_140_p_dout0),.grp_fu_630_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_630_p_ce),.grp_fu_634_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_634_p_din0),.grp_fu_634_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_634_p_din1),.grp_fu_634_p_dout0(grp_fu_144_p_dout0),.grp_fu_634_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_634_p_ce),.grp_fu_638_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_638_p_din0),.grp_fu_638_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_638_p_din1),.grp_fu_638_p_dout0(grp_fu_148_p_dout0),.grp_fu_638_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_638_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_56 grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_ready),.zext_ln169_7(or_ln2_reg_603),.v226_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v226_0_address0),.v226_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v226_0_ce0),.v226_0_q0(v226_0_q0),.v113(v113),.mul_ln175_4(mul_ln175_3_reg_598),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_d1),.v225_q1(v225_q1),.grp_fu_630_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_630_p_din0),.grp_fu_630_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_630_p_din1),.grp_fu_630_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_630_p_opcode),.grp_fu_630_p_dout0(grp_fu_140_p_dout0),.grp_fu_630_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_630_p_ce),.grp_fu_634_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_634_p_din0),.grp_fu_634_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_634_p_din1),.grp_fu_634_p_dout0(grp_fu_144_p_dout0),.grp_fu_634_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_634_p_ce),.grp_fu_638_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_638_p_din0),.grp_fu_638_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_638_p_din1),.grp_fu_638_p_dout0(grp_fu_148_p_dout0),.grp_fu_638_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_638_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_57 grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_ready),.zext_ln169_7(or_ln2_reg_603),.v226_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v226_1_address0),.v226_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v226_1_ce0),.v226_1_q0(v226_1_q0),.v113(v113),.mul_ln175_5(mul_ln175_4_reg_609),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_d1),.v225_q1(v225_q1),.grp_fu_630_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_630_p_din0),.grp_fu_630_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_630_p_din1),.grp_fu_630_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_630_p_opcode),.grp_fu_630_p_dout0(grp_fu_140_p_dout0),.grp_fu_630_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_630_p_ce),.grp_fu_634_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_634_p_din0),.grp_fu_634_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_634_p_din1),.grp_fu_634_p_dout0(grp_fu_144_p_dout0),.grp_fu_634_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_634_p_ce),.grp_fu_638_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_638_p_din0),.grp_fu_638_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_638_p_din1),.grp_fu_638_p_dout0(grp_fu_148_p_dout0),.grp_fu_638_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_638_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_58 grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_ready),.zext_ln169_12(or_ln169_1_reg_619),.v226_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v226_0_address0),.v226_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v226_0_ce0),.v226_0_q0(v226_0_q0),.v113(v113),.mul_ln175_6(mul_ln175_5_reg_614),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_d1),.v225_q1(v225_q1),.grp_fu_630_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_630_p_din0),.grp_fu_630_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_630_p_din1),.grp_fu_630_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_630_p_opcode),.grp_fu_630_p_dout0(grp_fu_140_p_dout0),.grp_fu_630_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_630_p_ce),.grp_fu_634_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_634_p_din0),.grp_fu_634_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_634_p_din1),.grp_fu_634_p_dout0(grp_fu_144_p_dout0),.grp_fu_634_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_634_p_ce),.grp_fu_638_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_638_p_din0),.grp_fu_638_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_638_p_din1),.grp_fu_638_p_dout0(grp_fu_148_p_dout0),.grp_fu_638_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_638_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_59 grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_ready),.zext_ln169_12(or_ln169_1_reg_619),.v226_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v226_1_address0),.v226_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v226_1_ce0),.v226_1_q0(v226_1_q0),.v113(v113),.mul_ln175_7(mul_ln175_6_reg_625),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_d1),.v225_q1(v225_q1),.grp_fu_630_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_630_p_din0),.grp_fu_630_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_630_p_din1),.grp_fu_630_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_630_p_opcode),.grp_fu_630_p_dout0(grp_fu_140_p_dout0),.grp_fu_630_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_630_p_ce),.grp_fu_634_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_634_p_din0),.grp_fu_634_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_634_p_din1),.grp_fu_634_p_dout0(grp_fu_144_p_dout0),.grp_fu_634_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_634_p_ce),.grp_fu_638_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_638_p_din0),.grp_fu_638_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_638_p_din1),.grp_fu_638_p_dout0(grp_fu_148_p_dout0),.grp_fu_638_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_638_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U222(.din0(mul_ln175_fu_324_p0),.din1(mul_ln175_fu_324_p1),.dout(mul_ln175_fu_324_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U223(.din0(mul_ln175_1_fu_337_p0),.din1(mul_ln175_1_fu_337_p1),.dout(mul_ln175_1_fu_337_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U224(.din0(mul_ln175_2_fu_405_p0),.din1(mul_ln175_2_fu_405_p1),.dout(mul_ln175_2_fu_405_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U225(.din0(mul_ln175_3_fu_422_p0),.din1(mul_ln175_3_fu_422_p1),.dout(mul_ln175_3_fu_422_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U226(.din0(mul_ln175_4_fu_451_p0),.din1(mul_ln175_4_fu_451_p1),.dout(mul_ln175_4_fu_451_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U227(.din0(mul_ln175_5_fu_468_p0),.din1(mul_ln175_5_fu_468_p1),.dout(mul_ln175_5_fu_468_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U228(.din0(mul_ln175_6_fu_493_p0),.din1(mul_ln175_6_fu_493_p1),.dout(mul_ln175_6_fu_493_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_118 <= 64'd0;
    end else if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_done == 1'b0)) & (icmp_ln168_reg_548 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        v114_fu_118 <= add_ln168_fu_384_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_0_reg_532 <= cmp11_0_fu_263_p2;
        icmp_ln168_reg_548 <= icmp_ln168_fu_307_p2;
        lshr_ln_reg_526 <= {{v114_fu_118[15:1]}};
        tmp_1_reg_542 <= {{v114_fu_118[15:2]}};
        tmp_reg_537 <= {{v114_fu_118[7:1]}};
        trunc_ln168_reg_521 <= trunc_ln168_fu_249_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mul_ln175_1_reg_557 <= mul_ln175_1_fu_337_p2;
        or_ln168_2_reg_562[14 : 1] <= or_ln168_2_fu_343_p3[14 : 1];
        tmp_3_reg_587 <= v114_fu_118[32'd1];
        tmp_6_reg_568 <= {{v114_fu_118[7:2]}};
        tmp_8_reg_573 <= {{v114_fu_118[7:3]}};
        tmp_s_reg_581 <= {{v114_fu_118[15:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln175_2_reg_593 <= mul_ln175_2_fu_405_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        mul_ln175_3_reg_598 <= mul_ln175_3_fu_422_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        mul_ln175_4_reg_609 <= mul_ln175_4_fu_451_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        mul_ln175_5_reg_614 <= mul_ln175_5_fu_468_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        mul_ln175_6_reg_625 <= mul_ln175_6_fu_493_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mul_ln175_reg_552 <= mul_ln175_fu_324_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        or_ln169_1_reg_619[14 : 2] <= or_ln169_1_fu_474_p3[14 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        or_ln2_reg_603[0] <= or_ln2_fu_428_p4[0];
or_ln2_reg_603[14 : 2] <= or_ln2_fu_428_p4[14 : 2];
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_done == 1'b0)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end
assign ap_ST_fsm_state17_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_done == 1'b0)) begin
        ap_ST_fsm_state18_blk = 1'b1;
    end else begin
        ap_ST_fsm_state18_blk = 1'b0;
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_done == 1'b0))) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_done == 1'b0)) & (icmp_ln168_reg_548 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_done == 1'b0)) & (icmp_ln168_reg_548 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_630_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_630_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_630_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_630_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_630_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_630_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_630_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_630_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_630_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_630_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_630_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_630_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_630_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_630_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_630_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_630_p_ce;
    end else begin
        grp_fu_630_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_630_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_630_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_630_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_630_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_630_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_630_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_630_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_630_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_630_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_630_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_630_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_630_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_630_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_630_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_630_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_630_p_din0;
    end else begin
        grp_fu_630_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_630_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_630_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_630_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_630_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_630_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_630_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_630_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_630_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_630_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_630_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_630_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_630_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_630_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_630_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_630_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_630_p_din1;
    end else begin
        grp_fu_630_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_634_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_634_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_634_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_634_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_634_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_634_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_634_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_634_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_634_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_634_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_634_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_634_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_634_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_634_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_634_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_634_p_ce;
    end else begin
        grp_fu_634_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_634_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_634_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_634_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_634_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_634_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_634_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_634_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_634_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_634_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_634_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_634_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_634_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_634_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_634_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_634_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_634_p_din0;
    end else begin
        grp_fu_634_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_634_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_634_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_634_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_634_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_634_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_634_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_634_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_634_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_634_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_634_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_634_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_634_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_634_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_634_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_634_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_634_p_din1;
    end else begin
        grp_fu_634_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_638_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_638_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_638_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_638_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_638_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_638_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_638_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_638_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_638_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_638_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_638_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_638_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_638_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_638_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_638_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_638_p_ce;
    end else begin
        grp_fu_638_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_638_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_638_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_638_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_638_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_638_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_638_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_638_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_638_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_638_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_638_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_638_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_638_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_638_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_638_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_638_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_638_p_din0;
    end else begin
        grp_fu_638_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_638_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_grp_fu_638_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_638_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_grp_fu_638_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_638_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_grp_fu_638_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_638_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_grp_fu_638_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_638_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_grp_fu_638_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_638_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_grp_fu_638_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_638_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_grp_fu_638_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_638_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_grp_fu_638_p_din1;
    end else begin
        grp_fu_638_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v226_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v226_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v226_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v226_0_address0;
    end else begin
        v226_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v226_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v226_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v226_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v226_0_ce0;
    end else begin
        v226_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v226_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v226_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v226_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v226_1_address0;
    end else begin
        v226_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v226_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v226_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v226_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v226_1_ce0;
    end else begin
        v226_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_reg_548 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_done == 1'b0)) & (icmp_ln168_reg_548 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_done == 1'b0)) & (icmp_ln168_reg_548 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_done == 1'b0)) & (icmp_ln168_reg_548 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state18;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_fu_384_p2 = (v114_fu_118 + 64'd8);
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
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];
always @ (*) begin
    ap_block_state6 = ((icmp_ln168_reg_548 == 1'd0) & (v236_full_n == 1'b0));
end
assign cmp11_0_fu_263_p2 = ((v114_fu_118 == 64'd0) ? 1'b1 : 1'b0);
assign grp_fu_140_p_ce = grp_fu_630_ce;
assign grp_fu_140_p_din0 = grp_fu_630_p0;
assign grp_fu_140_p_din1 = grp_fu_630_p1;
assign grp_fu_140_p_opcode = 2'd0;
assign grp_fu_144_p_ce = grp_fu_634_ce;
assign grp_fu_144_p_din0 = grp_fu_634_p0;
assign grp_fu_144_p_din1 = grp_fu_634_p1;
assign grp_fu_148_p_ce = grp_fu_638_ce;
assign grp_fu_148_p_din0 = grp_fu_638_p0;
assign grp_fu_148_p_din1 = grp_fu_638_p1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_150_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_163_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_176_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_189_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_202_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_215_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_228_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_136_ap_start_reg;
assign icmp_ln168_fu_307_p2 = (($signed(or_ln168_1_fu_299_p3) < $signed(64'd210)) ? 1'b1 : 1'b0);
assign mul_ln175_1_fu_337_p0 = {{tmp_1_reg_542}, {2'd2}};
assign mul_ln175_1_fu_337_p1 = 16'd190;
assign mul_ln175_2_fu_405_p0 = mul_ln175_2_fu_405_p00;
assign mul_ln175_2_fu_405_p00 = or_ln168_3_fu_394_p3;
assign mul_ln175_2_fu_405_p1 = 16'd190;
assign mul_ln175_3_fu_422_p0 = mul_ln175_3_fu_422_p00;
assign mul_ln175_3_fu_422_p00 = or_ln168_4_fu_411_p3;
assign mul_ln175_3_fu_422_p1 = 16'd190;
assign mul_ln175_4_fu_451_p0 = mul_ln175_4_fu_451_p00;
assign mul_ln175_4_fu_451_p00 = or_ln168_5_fu_437_p5;
assign mul_ln175_4_fu_451_p1 = 16'd190;
assign mul_ln175_5_fu_468_p0 = mul_ln175_5_fu_468_p00;
assign mul_ln175_5_fu_468_p00 = or_ln168_6_fu_457_p3;
assign mul_ln175_5_fu_468_p1 = 16'd190;
assign mul_ln175_6_fu_493_p0 = mul_ln175_6_fu_493_p00;
assign mul_ln175_6_fu_493_p00 = or_ln168_7_fu_482_p3;
assign mul_ln175_6_fu_493_p1 = 16'd190;
assign mul_ln175_fu_324_p0 = mul_ln175_fu_324_p00;
assign mul_ln175_fu_324_p00 = or_ln_fu_313_p3;
assign mul_ln175_fu_324_p1 = 16'd190;
assign or_ln168_1_fu_299_p3 = {{tmp_2_fu_279_p4}, {2'd2}};
assign or_ln168_2_fu_343_p3 = {{tmp_1_reg_542}, {1'd1}};
assign or_ln168_3_fu_394_p3 = {{tmp_6_reg_568}, {2'd3}};
assign or_ln168_4_fu_411_p3 = {{tmp_8_reg_573}, {3'd4}};
assign or_ln168_5_fu_437_p5 = {{{{tmp_8_reg_573}, {1'd1}}, {tmp_3_reg_587}}, {1'd1}};
assign or_ln168_6_fu_457_p3 = {{tmp_8_reg_573}, {3'd6}};
assign or_ln168_7_fu_482_p3 = {{tmp_8_reg_573}, {3'd7}};
assign or_ln169_1_fu_474_p3 = {{tmp_s_reg_581}, {2'd3}};
assign or_ln2_fu_428_p4 = {{{tmp_s_reg_581}, {1'd1}}, {tmp_3_reg_587}};
assign or_ln_fu_313_p3 = {{tmp_reg_537}, {1'd1}};
assign tmp_2_fu_279_p4 = {{v114_fu_118[63:2]}};
assign trunc_ln168_fu_249_p1 = v114_fu_118[15:0];
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
always @ (posedge ap_clk) begin
    or_ln168_2_reg_562[0] <= 1'b1;
    or_ln2_reg_603[1] <= 1'b1;
    or_ln169_1_reg_619[1:0] <= 2'b11;
end
endmodule 