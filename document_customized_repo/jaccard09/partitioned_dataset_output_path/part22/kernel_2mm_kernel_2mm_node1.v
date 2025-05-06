
module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_1_address0,v226_1_ce0,v226_1_q0,v226_2_address0,v226_2_ce0,v226_2_q0,v226_3_address0,v226_3_ce0,v226_3_q0,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_opcode,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce);  
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
output  [13:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [13:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [13:0] v226_2_address0;
output   v226_2_ce0;
input  [31:0] v226_2_q0;
output  [13:0] v226_3_address0;
output   v226_3_ce0;
input  [31:0] v226_3_q0;
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
reg[13:0] v226_0_address0;
reg v226_0_ce0;
reg[13:0] v226_1_address0;
reg v226_1_ce0;
reg[13:0] v226_2_address0;
reg v226_2_ce0;
reg[13:0] v226_3_address0;
reg v226_3_ce0;
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
reg   [0:0] icmp_ln168_reg_517;
wire   [15:0] trunc_ln168_fu_247_p1;
reg   [15:0] trunc_ln168_reg_493;
wire    ap_CS_fsm_state2;
reg   [13:0] lshr_ln_reg_498;
wire   [0:0] cmp11_0_fu_261_p2;
reg   [0:0] cmp11_0_reg_507;
reg   [6:0] tmp_reg_512;
wire   [0:0] icmp_ln168_fu_295_p2;
wire   [15:0] mul_ln175_fu_312_p2;
reg   [15:0] mul_ln175_reg_521;
wire    ap_CS_fsm_state4;
wire   [15:0] mul_ln175_1_fu_325_p2;
reg   [15:0] mul_ln175_1_reg_526;
reg   [5:0] tmp_5_reg_531;
reg   [4:0] tmp_7_reg_536;
reg   [12:0] tmp_9_reg_544;
reg   [0:0] tmp_1_reg_549;
wire   [15:0] mul_ln175_2_fu_386_p2;
reg   [15:0] mul_ln175_2_reg_554;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln175_3_fu_403_p2;
reg   [15:0] mul_ln175_3_reg_559;
wire    ap_CS_fsm_state10;
wire   [13:0] or_ln2_fu_409_p3;
reg   [13:0] or_ln2_reg_564;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln175_4_fu_431_p2;
reg   [15:0] mul_ln175_4_reg_572;
wire    ap_CS_fsm_state12;
wire   [15:0] mul_ln175_5_fu_448_p2;
reg   [15:0] mul_ln175_5_reg_577;
wire    ap_CS_fsm_state14;
wire   [15:0] mul_ln175_6_fu_465_p2;
reg   [15:0] mul_ln175_6_reg_582;
wire    ap_CS_fsm_state16;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v226_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v226_0_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_587_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_587_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_587_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_587_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_591_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_591_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_591_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_595_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_595_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_595_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v226_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v226_1_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_587_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_587_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_587_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_587_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_591_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_591_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_591_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_595_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_595_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_595_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v226_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v226_2_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_587_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_587_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_587_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_587_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_591_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_591_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_591_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_595_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_595_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_595_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v226_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v226_3_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_587_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_587_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_587_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_587_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_591_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_591_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_591_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_595_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_595_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_595_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v226_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v226_0_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_587_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_587_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_587_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_587_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_591_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_591_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_591_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_595_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_595_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_595_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v226_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v226_1_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_587_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_587_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_587_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_587_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_591_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_591_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_591_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_595_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_595_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_595_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v226_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v226_2_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_587_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_587_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_587_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_587_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_591_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_591_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_591_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_595_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_595_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_595_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v226_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v226_3_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_587_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_587_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_587_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_587_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_591_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_591_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_591_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_595_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_595_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_595_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start_reg;
wire    ap_CS_fsm_state9;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start_reg;
wire    ap_CS_fsm_state15;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start_reg;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
reg   [63:0] v114_fu_116;
wire   [63:0] add_ln168_fu_365_p2;
reg    ap_block_state6;
reg    v236_write_local;
wire   [61:0] tmp_2_fu_277_p4;
wire   [63:0] or_ln168_1_fu_287_p3;
wire   [7:0] or_ln_fu_301_p3;
wire   [7:0] mul_ln175_fu_312_p0;
wire   [8:0] mul_ln175_fu_312_p1;
wire  signed [15:0] mul_ln175_1_fu_325_p0;
wire   [8:0] mul_ln175_1_fu_325_p1;
wire   [7:0] or_ln168_2_fu_375_p3;
wire   [7:0] mul_ln175_2_fu_386_p0;
wire   [8:0] mul_ln175_2_fu_386_p1;
wire   [7:0] or_ln168_3_fu_392_p3;
wire   [7:0] mul_ln175_3_fu_403_p0;
wire   [8:0] mul_ln175_3_fu_403_p1;
wire   [7:0] or_ln168_4_fu_417_p5;
wire   [7:0] mul_ln175_4_fu_431_p0;
wire   [8:0] mul_ln175_4_fu_431_p1;
wire   [7:0] or_ln168_5_fu_437_p3;
wire   [7:0] mul_ln175_5_fu_448_p0;
wire   [8:0] mul_ln175_5_fu_448_p1;
wire   [7:0] or_ln168_6_fu_454_p3;
wire   [7:0] mul_ln175_6_fu_465_p0;
wire   [8:0] mul_ln175_6_fu_465_p1;
reg   [31:0] grp_fu_587_p0;
reg   [31:0] grp_fu_587_p1;
reg    grp_fu_587_ce;
reg   [31:0] grp_fu_591_p0;
reg   [31:0] grp_fu_591_p1;
reg    grp_fu_591_ce;
reg   [31:0] grp_fu_595_p0;
reg   [31:0] grp_fu_595_p1;
reg    grp_fu_595_ce;
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
wire   [15:0] mul_ln175_2_fu_386_p00;
wire   [15:0] mul_ln175_3_fu_403_p00;
wire   [15:0] mul_ln175_4_fu_431_p00;
wire   [15:0] mul_ln175_5_fu_448_p00;
wire   [15:0] mul_ln175_6_fu_465_p00;
wire   [15:0] mul_ln175_fu_312_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start_reg = 1'b0;
#0 v114_fu_116 = 64'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_ready),.zext_ln168(lshr_ln_reg_498),.v226_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v226_0_address0),.v226_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v226_0_ce0),.v226_0_q0(v226_0_q0),.v113(v113),.v114(trunc_ln168_reg_493),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_d1),.v225_q1(v225_q1),.cmp11_0(cmp11_0_reg_507),.grp_fu_587_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_587_p_din0),.grp_fu_587_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_587_p_din1),.grp_fu_587_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_587_p_opcode),.grp_fu_587_p_dout0(grp_fu_132_p_dout0),.grp_fu_587_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_587_p_ce),.grp_fu_591_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_591_p_din0),.grp_fu_591_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_591_p_din1),.grp_fu_591_p_dout0(grp_fu_136_p_dout0),.grp_fu_591_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_591_p_ce),.grp_fu_595_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_595_p_din0),.grp_fu_595_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_595_p_din1),.grp_fu_595_p_dout0(grp_fu_140_p_dout0),.grp_fu_595_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_595_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_53 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_ready),.zext_ln168(lshr_ln_reg_498),.v226_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v226_1_address0),.v226_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v226_1_ce0),.v226_1_q0(v226_1_q0),.v113(v113),.mul_ln175_1(mul_ln175_reg_521),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_d1),.v225_q1(v225_q1),.grp_fu_587_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_587_p_din0),.grp_fu_587_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_587_p_din1),.grp_fu_587_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_587_p_opcode),.grp_fu_587_p_dout0(grp_fu_132_p_dout0),.grp_fu_587_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_587_p_ce),.grp_fu_591_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_591_p_din0),.grp_fu_591_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_591_p_din1),.grp_fu_591_p_dout0(grp_fu_136_p_dout0),.grp_fu_591_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_591_p_ce),.grp_fu_595_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_595_p_din0),.grp_fu_595_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_595_p_din1),.grp_fu_595_p_dout0(grp_fu_140_p_dout0),.grp_fu_595_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_595_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_54 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_ready),.zext_ln168(lshr_ln_reg_498),.v226_2_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v226_2_address0),.v226_2_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v226_2_ce0),.v226_2_q0(v226_2_q0),.v113(v113),.mul_ln175_2(mul_ln175_1_reg_526),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_d1),.v225_q1(v225_q1),.grp_fu_587_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_587_p_din0),.grp_fu_587_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_587_p_din1),.grp_fu_587_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_587_p_opcode),.grp_fu_587_p_dout0(grp_fu_132_p_dout0),.grp_fu_587_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_587_p_ce),.grp_fu_591_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_591_p_din0),.grp_fu_591_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_591_p_din1),.grp_fu_591_p_dout0(grp_fu_136_p_dout0),.grp_fu_591_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_591_p_ce),.grp_fu_595_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_595_p_din0),.grp_fu_595_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_595_p_din1),.grp_fu_595_p_dout0(grp_fu_140_p_dout0),.grp_fu_595_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_595_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_55 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_ready),.zext_ln168(lshr_ln_reg_498),.v226_3_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v226_3_address0),.v226_3_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v226_3_ce0),.v226_3_q0(v226_3_q0),.v113(v113),.mul_ln175_3(mul_ln175_2_reg_554),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_d1),.v225_q1(v225_q1),.grp_fu_587_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_587_p_din0),.grp_fu_587_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_587_p_din1),.grp_fu_587_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_587_p_opcode),.grp_fu_587_p_dout0(grp_fu_132_p_dout0),.grp_fu_587_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_587_p_ce),.grp_fu_591_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_591_p_din0),.grp_fu_591_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_591_p_din1),.grp_fu_591_p_dout0(grp_fu_136_p_dout0),.grp_fu_591_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_591_p_ce),.grp_fu_595_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_595_p_din0),.grp_fu_595_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_595_p_din1),.grp_fu_595_p_dout0(grp_fu_140_p_dout0),.grp_fu_595_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_595_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_56 grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_ready),.zext_ln169_7(or_ln2_reg_564),.v226_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v226_0_address0),.v226_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v226_0_ce0),.v226_0_q0(v226_0_q0),.v113(v113),.mul_ln175_4(mul_ln175_3_reg_559),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_d1),.v225_q1(v225_q1),.grp_fu_587_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_587_p_din0),.grp_fu_587_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_587_p_din1),.grp_fu_587_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_587_p_opcode),.grp_fu_587_p_dout0(grp_fu_132_p_dout0),.grp_fu_587_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_587_p_ce),.grp_fu_591_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_591_p_din0),.grp_fu_591_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_591_p_din1),.grp_fu_591_p_dout0(grp_fu_136_p_dout0),.grp_fu_591_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_591_p_ce),.grp_fu_595_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_595_p_din0),.grp_fu_595_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_595_p_din1),.grp_fu_595_p_dout0(grp_fu_140_p_dout0),.grp_fu_595_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_595_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_57 grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_ready),.zext_ln169_7(or_ln2_reg_564),.v226_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v226_1_address0),.v226_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v226_1_ce0),.v226_1_q0(v226_1_q0),.v113(v113),.mul_ln175_5(mul_ln175_4_reg_572),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_d1),.v225_q1(v225_q1),.grp_fu_587_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_587_p_din0),.grp_fu_587_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_587_p_din1),.grp_fu_587_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_587_p_opcode),.grp_fu_587_p_dout0(grp_fu_132_p_dout0),.grp_fu_587_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_587_p_ce),.grp_fu_591_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_591_p_din0),.grp_fu_591_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_591_p_din1),.grp_fu_591_p_dout0(grp_fu_136_p_dout0),.grp_fu_591_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_591_p_ce),.grp_fu_595_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_595_p_din0),.grp_fu_595_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_595_p_din1),.grp_fu_595_p_dout0(grp_fu_140_p_dout0),.grp_fu_595_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_595_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_58 grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_ready),.zext_ln169_7(or_ln2_reg_564),.v226_2_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v226_2_address0),.v226_2_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v226_2_ce0),.v226_2_q0(v226_2_q0),.v113(v113),.mul_ln175_6(mul_ln175_5_reg_577),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_d1),.v225_q1(v225_q1),.grp_fu_587_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_587_p_din0),.grp_fu_587_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_587_p_din1),.grp_fu_587_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_587_p_opcode),.grp_fu_587_p_dout0(grp_fu_132_p_dout0),.grp_fu_587_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_587_p_ce),.grp_fu_591_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_591_p_din0),.grp_fu_591_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_591_p_din1),.grp_fu_591_p_dout0(grp_fu_136_p_dout0),.grp_fu_591_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_591_p_ce),.grp_fu_595_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_595_p_din0),.grp_fu_595_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_595_p_din1),.grp_fu_595_p_dout0(grp_fu_140_p_dout0),.grp_fu_595_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_595_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_59 grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_ready),.zext_ln169_7(or_ln2_reg_564),.v226_3_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v226_3_address0),.v226_3_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v226_3_ce0),.v226_3_q0(v226_3_q0),.v113(v113),.mul_ln175_7(mul_ln175_6_reg_582),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_d1),.v225_q1(v225_q1),.grp_fu_587_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_587_p_din0),.grp_fu_587_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_587_p_din1),.grp_fu_587_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_587_p_opcode),.grp_fu_587_p_dout0(grp_fu_132_p_dout0),.grp_fu_587_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_587_p_ce),.grp_fu_591_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_591_p_din0),.grp_fu_591_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_591_p_din1),.grp_fu_591_p_dout0(grp_fu_136_p_dout0),.grp_fu_591_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_591_p_ce),.grp_fu_595_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_595_p_din0),.grp_fu_595_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_595_p_din1),.grp_fu_595_p_dout0(grp_fu_140_p_dout0),.grp_fu_595_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_595_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U222(.din0(mul_ln175_fu_312_p0),.din1(mul_ln175_fu_312_p1),.dout(mul_ln175_fu_312_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U223(.din0(mul_ln175_1_fu_325_p0),.din1(mul_ln175_1_fu_325_p1),.dout(mul_ln175_1_fu_325_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U224(.din0(mul_ln175_2_fu_386_p0),.din1(mul_ln175_2_fu_386_p1),.dout(mul_ln175_2_fu_386_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U225(.din0(mul_ln175_3_fu_403_p0),.din1(mul_ln175_3_fu_403_p1),.dout(mul_ln175_3_fu_403_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U226(.din0(mul_ln175_4_fu_431_p0),.din1(mul_ln175_4_fu_431_p1),.dout(mul_ln175_4_fu_431_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U227(.din0(mul_ln175_5_fu_448_p0),.din1(mul_ln175_5_fu_448_p1),.dout(mul_ln175_5_fu_448_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U228(.din0(mul_ln175_6_fu_465_p0),.din1(mul_ln175_6_fu_465_p1),.dout(mul_ln175_6_fu_465_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_116 <= 64'd0;
    end else if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0)) & (icmp_ln168_reg_517 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        v114_fu_116 <= add_ln168_fu_365_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_0_reg_507 <= cmp11_0_fu_261_p2;
        icmp_ln168_reg_517 <= icmp_ln168_fu_295_p2;
        lshr_ln_reg_498 <= {{v114_fu_116[15:2]}};
        tmp_reg_512 <= {{v114_fu_116[7:1]}};
        trunc_ln168_reg_493 <= trunc_ln168_fu_247_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mul_ln175_1_reg_526 <= mul_ln175_1_fu_325_p2;
        tmp_1_reg_549 <= v114_fu_116[32'd1];
        tmp_5_reg_531 <= {{v114_fu_116[7:2]}};
        tmp_7_reg_536 <= {{v114_fu_116[7:3]}};
        tmp_9_reg_544 <= {{v114_fu_116[15:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln175_2_reg_554 <= mul_ln175_2_fu_386_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        mul_ln175_3_reg_559 <= mul_ln175_3_fu_403_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        mul_ln175_4_reg_572 <= mul_ln175_4_fu_431_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        mul_ln175_5_reg_577 <= mul_ln175_5_fu_448_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        mul_ln175_6_reg_582 <= mul_ln175_6_fu_465_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mul_ln175_reg_521 <= mul_ln175_fu_312_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        or_ln2_reg_564[13 : 1] <= or_ln2_fu_409_p3[13 : 1];
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_done == 1'b0)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end
assign ap_ST_fsm_state17_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0))) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0)) & (icmp_ln168_reg_517 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0)) & (icmp_ln168_reg_517 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_587_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_587_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_587_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_587_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_587_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_587_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_587_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_587_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_587_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_587_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_587_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_587_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_587_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_587_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_587_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_587_p_ce;
    end else begin
        grp_fu_587_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_587_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_587_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_587_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_587_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_587_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_587_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_587_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_587_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_587_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_587_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_587_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_587_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_587_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_587_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_587_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_587_p_din0;
    end else begin
        grp_fu_587_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_587_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_587_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_587_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_587_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_587_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_587_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_587_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_587_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_587_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_587_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_587_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_587_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_587_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_587_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_587_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_587_p_din1;
    end else begin
        grp_fu_587_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_591_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_591_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_591_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_591_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_591_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_591_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_591_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_591_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_591_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_591_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_591_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_591_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_591_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_591_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_591_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_591_p_ce;
    end else begin
        grp_fu_591_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_591_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_591_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_591_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_591_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_591_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_591_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_591_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_591_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_591_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_591_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_591_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_591_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_591_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_591_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_591_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_591_p_din0;
    end else begin
        grp_fu_591_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_591_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_591_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_591_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_591_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_591_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_591_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_591_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_591_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_591_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_591_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_591_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_591_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_591_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_591_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_591_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_591_p_din1;
    end else begin
        grp_fu_591_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_595_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_595_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_595_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_595_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_595_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_595_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_595_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_595_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_595_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_595_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_595_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_595_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_595_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_595_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_595_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_595_p_ce;
    end else begin
        grp_fu_595_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_595_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_595_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_595_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_595_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_595_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_595_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_595_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_595_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_595_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_595_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_595_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_595_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_595_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_595_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_595_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_595_p_din0;
    end else begin
        grp_fu_595_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_595_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_595_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_595_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_595_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_595_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_595_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_595_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_595_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_595_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_595_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_595_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_595_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_595_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_595_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_595_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_595_p_din1;
    end else begin
        grp_fu_595_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v226_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v226_0_address0;
    end else begin
        v226_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v226_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v226_0_ce0;
    end else begin
        v226_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v226_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v226_1_address0;
    end else begin
        v226_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v226_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v226_1_ce0;
    end else begin
        v226_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_2_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v226_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v226_2_address0;
    end else begin
        v226_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v226_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v226_2_ce0;
    end else begin
        v226_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_3_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v226_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v226_3_address0;
    end else begin
        v226_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v226_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v226_3_ce0;
    end else begin
        v226_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_reg_517 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0)) & (icmp_ln168_reg_517 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
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
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0)) & (icmp_ln168_reg_517 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0)) & (icmp_ln168_reg_517 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
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
assign add_ln168_fu_365_p2 = (v114_fu_116 + 64'd8);
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
    ap_block_state6 = ((icmp_ln168_reg_517 == 1'd0) & (v236_full_n == 1'b0));
end
assign cmp11_0_fu_261_p2 = ((v114_fu_116 == 64'd0) ? 1'b1 : 1'b0);
assign grp_fu_132_p_ce = grp_fu_587_ce;
assign grp_fu_132_p_din0 = grp_fu_587_p0;
assign grp_fu_132_p_din1 = grp_fu_587_p1;
assign grp_fu_132_p_opcode = 2'd0;
assign grp_fu_136_p_ce = grp_fu_591_ce;
assign grp_fu_136_p_din0 = grp_fu_591_p0;
assign grp_fu_136_p_din1 = grp_fu_591_p1;
assign grp_fu_140_p_ce = grp_fu_595_ce;
assign grp_fu_140_p_din0 = grp_fu_595_p0;
assign grp_fu_140_p_din1 = grp_fu_595_p1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start_reg;
assign icmp_ln168_fu_295_p2 = (($signed(or_ln168_1_fu_287_p3) < $signed(64'd210)) ? 1'b1 : 1'b0);
assign mul_ln175_1_fu_325_p0 = {{lshr_ln_reg_498}, {2'd2}};
assign mul_ln175_1_fu_325_p1 = 16'd190;
assign mul_ln175_2_fu_386_p0 = mul_ln175_2_fu_386_p00;
assign mul_ln175_2_fu_386_p00 = or_ln168_2_fu_375_p3;
assign mul_ln175_2_fu_386_p1 = 16'd190;
assign mul_ln175_3_fu_403_p0 = mul_ln175_3_fu_403_p00;
assign mul_ln175_3_fu_403_p00 = or_ln168_3_fu_392_p3;
assign mul_ln175_3_fu_403_p1 = 16'd190;
assign mul_ln175_4_fu_431_p0 = mul_ln175_4_fu_431_p00;
assign mul_ln175_4_fu_431_p00 = or_ln168_4_fu_417_p5;
assign mul_ln175_4_fu_431_p1 = 16'd190;
assign mul_ln175_5_fu_448_p0 = mul_ln175_5_fu_448_p00;
assign mul_ln175_5_fu_448_p00 = or_ln168_5_fu_437_p3;
assign mul_ln175_5_fu_448_p1 = 16'd190;
assign mul_ln175_6_fu_465_p0 = mul_ln175_6_fu_465_p00;
assign mul_ln175_6_fu_465_p00 = or_ln168_6_fu_454_p3;
assign mul_ln175_6_fu_465_p1 = 16'd190;
assign mul_ln175_fu_312_p0 = mul_ln175_fu_312_p00;
assign mul_ln175_fu_312_p00 = or_ln_fu_301_p3;
assign mul_ln175_fu_312_p1 = 16'd190;
assign or_ln168_1_fu_287_p3 = {{tmp_2_fu_277_p4}, {2'd2}};
assign or_ln168_2_fu_375_p3 = {{tmp_5_reg_531}, {2'd3}};
assign or_ln168_3_fu_392_p3 = {{tmp_7_reg_536}, {3'd4}};
assign or_ln168_4_fu_417_p5 = {{{{tmp_7_reg_536}, {1'd1}}, {tmp_1_reg_549}}, {1'd1}};
assign or_ln168_5_fu_437_p3 = {{tmp_7_reg_536}, {3'd6}};
assign or_ln168_6_fu_454_p3 = {{tmp_7_reg_536}, {3'd7}};
assign or_ln2_fu_409_p3 = {{tmp_9_reg_544}, {1'd1}};
assign or_ln_fu_301_p3 = {{tmp_reg_512}, {1'd1}};
assign tmp_2_fu_277_p4 = {{v114_fu_116[63:2]}};
assign trunc_ln168_fu_247_p1 = v114_fu_116[15:0];
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
always @ (posedge ap_clk) begin
    or_ln2_reg_564[0] <= 1'b1;
end
endmodule 
