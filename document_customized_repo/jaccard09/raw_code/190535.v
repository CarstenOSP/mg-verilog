module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_opcode,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce); 
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
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
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
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
output  [1:0] grp_fu_164_p_opcode;
input  [31:0] grp_fu_164_p_dout0;
output   grp_fu_164_p_ce;
output  [31:0] grp_fu_168_p_din0;
output  [31:0] grp_fu_168_p_din1;
input  [31:0] grp_fu_168_p_dout0;
output   grp_fu_168_p_ce;
output  [31:0] grp_fu_172_p_din0;
output  [31:0] grp_fu_172_p_din1;
input  [31:0] grp_fu_172_p_dout0;
output   grp_fu_172_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v226_address0;
reg v226_ce0;
reg[14:0] v227_0_address0;
reg v227_0_ce0;
reg[14:0] v227_0_address1;
reg v227_0_ce1;
reg[14:0] v227_1_address0;
reg v227_1_ce0;
reg[14:0] v227_1_address1;
reg v227_1_ce1;
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
reg   [0:0] icmp_ln168_reg_525;
wire   [15:0] trunc_ln168_fu_247_p1;
reg   [15:0] trunc_ln168_reg_498;
wire    ap_CS_fsm_state2;
wire   [14:0] mul_ln175_fu_265_p2;
reg   [14:0] mul_ln175_reg_503;
reg   [14:0] tmp_reg_509;
reg   [13:0] tmp_1_reg_514;
reg   [5:0] tmp_4_reg_520;
wire   [0:0] icmp_ln168_fu_319_p2;
wire   [0:0] cmp11_0_fu_325_p2;
reg   [0:0] cmp11_0_reg_529;
wire    ap_CS_fsm_state3;
wire   [15:0] or_ln_fu_331_p3;
reg   [15:0] or_ln_reg_534;
wire    ap_CS_fsm_state5;
wire   [15:0] or_ln168_1_cast_fu_339_p3;
reg   [15:0] or_ln168_1_cast_reg_539;
wire   [14:0] mul_ln175_1_fu_357_p2;
reg   [14:0] mul_ln175_1_reg_544;
reg   [12:0] tmp_8_reg_550;
reg   [4:0] tmp_s_reg_558;
reg   [0:0] tmp_3_reg_564;
wire   [15:0] or_ln168_3_fu_398_p3;
reg   [15:0] or_ln168_3_reg_570;
wire    ap_CS_fsm_state9;
wire   [14:0] mul_ln175_2_fu_418_p2;
reg   [14:0] mul_ln175_2_reg_575;
wire    ap_CS_fsm_state10;
wire   [15:0] or_ln168_4_fu_424_p3;
reg   [15:0] or_ln168_4_reg_581;
wire    ap_CS_fsm_state11;
wire   [15:0] or_ln168_5_fu_432_p5;
reg   [15:0] or_ln168_5_reg_586;
wire    ap_CS_fsm_state13;
wire   [14:0] mul_ln175_3_fu_454_p2;
reg   [14:0] mul_ln175_3_reg_591;
wire    ap_CS_fsm_state14;
wire   [15:0] or_ln168_6_fu_460_p3;
reg   [15:0] or_ln168_6_reg_597;
wire    ap_CS_fsm_state15;
wire   [15:0] or_ln168_7_fu_468_p3;
reg   [15:0] or_ln168_7_reg_602;
wire    ap_CS_fsm_state17;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v226_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_0_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_607_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_607_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_607_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_607_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_611_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_611_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_611_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_615_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_615_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_615_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v226_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_1_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_607_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_607_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_607_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_607_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_611_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_611_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_611_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_615_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_615_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_615_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v226_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_0_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_607_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_607_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_607_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_607_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_611_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_611_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_611_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_615_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_615_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_615_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v226_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_1_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_607_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_607_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_607_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_607_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_611_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_611_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_611_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_615_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_615_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_615_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v226_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_0_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_607_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_607_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_607_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_607_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_611_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_611_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_611_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_615_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_615_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_615_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v226_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_1_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_607_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_607_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_607_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_607_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_611_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_611_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_611_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_615_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_615_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_615_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v226_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_0_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_607_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_607_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_607_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_607_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_611_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_611_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_611_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_615_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_615_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_615_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v226_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_1_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_607_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_607_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_607_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_607_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_611_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_611_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_611_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_615_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_615_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_615_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start_reg;
wire    ap_CS_fsm_state12;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start_reg;
wire    ap_CS_fsm_state16;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start_reg;
wire    ap_CS_fsm_state18;
reg   [63:0] v114_fu_116;
wire   [63:0] add_ln168_fu_388_p2;
reg    ap_block_state6;
reg    v236_write_local;
wire   [6:0] lshr_ln_fu_251_p4;
wire   [6:0] mul_ln175_fu_265_p0;
wire   [8:0] mul_ln175_fu_265_p1;
wire   [61:0] tmp_2_fu_281_p4;
wire   [63:0] or_ln168_1_fu_301_p3;
wire   [6:0] or_ln168_2_fu_346_p3;
wire   [6:0] mul_ln175_1_fu_357_p0;
wire   [8:0] mul_ln175_1_fu_357_p1;
wire   [6:0] or_ln2_fu_406_p4;
wire   [6:0] mul_ln175_2_fu_418_p0;
wire   [8:0] mul_ln175_2_fu_418_p1;
wire   [6:0] or_ln169_1_fu_443_p3;
wire   [6:0] mul_ln175_3_fu_454_p0;
wire   [8:0] mul_ln175_3_fu_454_p1;
reg   [31:0] grp_fu_607_p0;
reg   [31:0] grp_fu_607_p1;
reg    grp_fu_607_ce;
reg   [31:0] grp_fu_611_p0;
reg   [31:0] grp_fu_611_p1;
reg    grp_fu_611_ce;
reg   [31:0] grp_fu_615_p0;
reg   [31:0] grp_fu_615_p1;
reg    grp_fu_615_ce;
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
wire   [14:0] mul_ln175_1_fu_357_p00;
wire   [14:0] mul_ln175_2_fu_418_p00;
wire   [14:0] mul_ln175_3_fu_454_p00;
wire   [14:0] mul_ln175_fu_265_p00;
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
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_ready),.v114(trunc_ln168_reg_498),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175(mul_ln175_reg_503),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_0_ce1),.v227_0_q1(v227_0_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v225_d1),.v225_q1(v225_q1),.cmp11_0(cmp11_0_reg_529),.grp_fu_607_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_607_p_din0),.grp_fu_607_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_607_p_din1),.grp_fu_607_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_607_p_opcode),.grp_fu_607_p_dout0(grp_fu_164_p_dout0),.grp_fu_607_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_607_p_ce),.grp_fu_611_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_611_p_din0),.grp_fu_611_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_611_p_din1),.grp_fu_611_p_dout0(grp_fu_168_p_dout0),.grp_fu_611_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_611_p_ce),.grp_fu_615_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_615_p_din0),.grp_fu_615_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_615_p_din1),.grp_fu_615_p_dout0(grp_fu_172_p_dout0),.grp_fu_615_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_615_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_53 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_ready),.zext_ln169_1(or_ln_reg_534),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175(mul_ln175_reg_503),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_1_ce1),.v227_1_q1(v227_1_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v225_d1),.v225_q1(v225_q1),.grp_fu_607_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_607_p_din0),.grp_fu_607_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_607_p_din1),.grp_fu_607_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_607_p_opcode),.grp_fu_607_p_dout0(grp_fu_164_p_dout0),.grp_fu_607_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_607_p_ce),.grp_fu_611_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_611_p_din0),.grp_fu_611_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_611_p_din1),.grp_fu_611_p_dout0(grp_fu_168_p_dout0),.grp_fu_611_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_611_p_ce),.grp_fu_615_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_615_p_din0),.grp_fu_615_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_615_p_din1),.grp_fu_615_p_dout0(grp_fu_172_p_dout0),.grp_fu_615_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_615_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_54 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_ready),.or_ln168_1(or_ln168_1_cast_reg_539),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175_1(mul_ln175_1_reg_544),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_0_ce1),.v227_0_q1(v227_0_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v225_d1),.v225_q1(v225_q1),.grp_fu_607_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_607_p_din0),.grp_fu_607_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_607_p_din1),.grp_fu_607_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_607_p_opcode),.grp_fu_607_p_dout0(grp_fu_164_p_dout0),.grp_fu_607_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_607_p_ce),.grp_fu_611_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_611_p_din0),.grp_fu_611_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_611_p_din1),.grp_fu_611_p_dout0(grp_fu_168_p_dout0),.grp_fu_611_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_611_p_ce),.grp_fu_615_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_615_p_din0),.grp_fu_615_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_615_p_din1),.grp_fu_615_p_dout0(grp_fu_172_p_dout0),.grp_fu_615_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_615_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_55 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_ready),.zext_ln169_4(or_ln168_3_reg_570),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175_1(mul_ln175_1_reg_544),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_1_ce1),.v227_1_q1(v227_1_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v225_d1),.v225_q1(v225_q1),.grp_fu_607_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_607_p_din0),.grp_fu_607_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_607_p_din1),.grp_fu_607_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_607_p_opcode),.grp_fu_607_p_dout0(grp_fu_164_p_dout0),.grp_fu_607_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_607_p_ce),.grp_fu_611_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_611_p_din0),.grp_fu_611_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_611_p_din1),.grp_fu_611_p_dout0(grp_fu_168_p_dout0),.grp_fu_611_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_611_p_ce),.grp_fu_615_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_615_p_din0),.grp_fu_615_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_615_p_din1),.grp_fu_615_p_dout0(grp_fu_172_p_dout0),.grp_fu_615_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_615_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_56 grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_ready),.zext_ln169_6(or_ln168_4_reg_581),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175_2(mul_ln175_2_reg_575),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_0_ce1),.v227_0_q1(v227_0_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v225_d1),.v225_q1(v225_q1),.grp_fu_607_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_607_p_din0),.grp_fu_607_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_607_p_din1),.grp_fu_607_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_607_p_opcode),.grp_fu_607_p_dout0(grp_fu_164_p_dout0),.grp_fu_607_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_607_p_ce),.grp_fu_611_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_611_p_din0),.grp_fu_611_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_611_p_din1),.grp_fu_611_p_dout0(grp_fu_168_p_dout0),.grp_fu_611_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_611_p_ce),.grp_fu_615_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_615_p_din0),.grp_fu_615_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_615_p_din1),.grp_fu_615_p_dout0(grp_fu_172_p_dout0),.grp_fu_615_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_615_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_57 grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_ready),.zext_ln169_9(or_ln168_5_reg_586),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175_2(mul_ln175_2_reg_575),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_1_ce1),.v227_1_q1(v227_1_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v225_d1),.v225_q1(v225_q1),.grp_fu_607_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_607_p_din0),.grp_fu_607_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_607_p_din1),.grp_fu_607_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_607_p_opcode),.grp_fu_607_p_dout0(grp_fu_164_p_dout0),.grp_fu_607_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_607_p_ce),.grp_fu_611_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_611_p_din0),.grp_fu_611_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_611_p_din1),.grp_fu_611_p_dout0(grp_fu_168_p_dout0),.grp_fu_611_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_611_p_ce),.grp_fu_615_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_615_p_din0),.grp_fu_615_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_615_p_din1),.grp_fu_615_p_dout0(grp_fu_172_p_dout0),.grp_fu_615_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_615_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_58 grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_ready),.zext_ln169_11(or_ln168_6_reg_597),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175_3(mul_ln175_3_reg_591),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_0_ce1),.v227_0_q1(v227_0_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v225_d1),.v225_q1(v225_q1),.grp_fu_607_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_607_p_din0),.grp_fu_607_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_607_p_din1),.grp_fu_607_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_607_p_opcode),.grp_fu_607_p_dout0(grp_fu_164_p_dout0),.grp_fu_607_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_607_p_ce),.grp_fu_611_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_611_p_din0),.grp_fu_611_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_611_p_din1),.grp_fu_611_p_dout0(grp_fu_168_p_dout0),.grp_fu_611_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_611_p_ce),.grp_fu_615_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_615_p_din0),.grp_fu_615_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_615_p_din1),.grp_fu_615_p_dout0(grp_fu_172_p_dout0),.grp_fu_615_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_615_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_59 grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_ready),.zext_ln169_14(or_ln168_7_reg_602),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175_3(mul_ln175_3_reg_591),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_1_ce1),.v227_1_q1(v227_1_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v225_d1),.v225_q1(v225_q1),.grp_fu_607_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_607_p_din0),.grp_fu_607_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_607_p_din1),.grp_fu_607_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_607_p_opcode),.grp_fu_607_p_dout0(grp_fu_164_p_dout0),.grp_fu_607_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_607_p_ce),.grp_fu_611_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_611_p_din0),.grp_fu_611_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_611_p_din1),.grp_fu_611_p_dout0(grp_fu_168_p_dout0),.grp_fu_611_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_611_p_ce),.grp_fu_615_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_615_p_din0),.grp_fu_615_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_615_p_din1),.grp_fu_615_p_dout0(grp_fu_172_p_dout0),.grp_fu_615_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_615_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U220(.din0(mul_ln175_fu_265_p0),.din1(mul_ln175_fu_265_p1),.dout(mul_ln175_fu_265_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U221(.din0(mul_ln175_1_fu_357_p0),.din1(mul_ln175_1_fu_357_p1),.dout(mul_ln175_1_fu_357_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U222(.din0(mul_ln175_2_fu_418_p0),.din1(mul_ln175_2_fu_418_p1),.dout(mul_ln175_2_fu_418_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U223(.din0(mul_ln175_3_fu_454_p0),.din1(mul_ln175_3_fu_454_p1),.dout(mul_ln175_3_fu_454_p2));
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
    end else if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0)) & (icmp_ln168_reg_525 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        v114_fu_116 <= add_ln168_fu_388_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_0_reg_529 <= cmp11_0_fu_325_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln168_reg_525 <= icmp_ln168_fu_319_p2;
        mul_ln175_reg_503 <= mul_ln175_fu_265_p2;
        tmp_1_reg_514 <= {{v114_fu_116[15:2]}};
        tmp_4_reg_520 <= {{v114_fu_116[7:2]}};
        tmp_reg_509 <= {{v114_fu_116[15:1]}};
        trunc_ln168_reg_498 <= trunc_ln168_fu_247_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mul_ln175_1_reg_544 <= mul_ln175_1_fu_357_p2;
        or_ln168_1_cast_reg_539[15 : 2] <= or_ln168_1_cast_fu_339_p3[15 : 2];
        tmp_3_reg_564 <= v114_fu_116[32'd1];
        tmp_8_reg_550 <= {{v114_fu_116[15:3]}};
        tmp_s_reg_558 <= {{v114_fu_116[7:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        mul_ln175_2_reg_575 <= mul_ln175_2_fu_418_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        mul_ln175_3_reg_591 <= mul_ln175_3_fu_454_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        or_ln168_3_reg_570[15 : 2] <= or_ln168_3_fu_398_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        or_ln168_4_reg_581[15 : 3] <= or_ln168_4_fu_424_p3[15 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        or_ln168_5_reg_586[1] <= or_ln168_5_fu_432_p5[1];
or_ln168_5_reg_586[15 : 3] <= or_ln168_5_fu_432_p5[15 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        or_ln168_6_reg_597[15 : 3] <= or_ln168_6_fu_460_p3[15 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        or_ln168_7_reg_602[15 : 3] <= or_ln168_7_fu_468_p3[15 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        or_ln_reg_534[15 : 1] <= or_ln_fu_331_p3[15 : 1];
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
    if (((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0)) & (icmp_ln168_reg_525 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0)) & (icmp_ln168_reg_525 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_607_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_607_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_607_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_607_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_607_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_607_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_607_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_607_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_607_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_607_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_607_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_607_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_607_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_607_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_607_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_607_p_ce;
    end else begin
        grp_fu_607_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_607_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_607_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_607_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_607_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_607_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_607_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_607_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_607_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_607_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_607_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_607_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_607_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_607_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_607_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_607_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_607_p_din0;
    end else begin
        grp_fu_607_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_607_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_607_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_607_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_607_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_607_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_607_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_607_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_607_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_607_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_607_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_607_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_607_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_607_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_607_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_607_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_607_p_din1;
    end else begin
        grp_fu_607_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_611_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_611_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_611_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_611_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_611_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_611_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_611_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_611_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_611_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_611_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_611_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_611_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_611_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_611_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_611_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_611_p_ce;
    end else begin
        grp_fu_611_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_611_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_611_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_611_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_611_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_611_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_611_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_611_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_611_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_611_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_611_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_611_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_611_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_611_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_611_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_611_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_611_p_din0;
    end else begin
        grp_fu_611_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_611_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_611_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_611_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_611_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_611_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_611_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_611_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_611_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_611_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_611_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_611_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_611_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_611_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_611_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_611_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_611_p_din1;
    end else begin
        grp_fu_611_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_615_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_615_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_615_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_615_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_615_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_615_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_615_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_615_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_615_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_615_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_615_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_615_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_615_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_615_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_615_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_615_p_ce;
    end else begin
        grp_fu_615_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_615_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_615_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_615_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_615_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_615_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_615_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_615_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_615_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_615_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_615_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_615_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_615_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_615_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_615_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_615_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_615_p_din0;
    end else begin
        grp_fu_615_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_615_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_grp_fu_615_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_615_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_grp_fu_615_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_615_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_grp_fu_615_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_615_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_grp_fu_615_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_615_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_grp_fu_615_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_615_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_grp_fu_615_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_615_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_grp_fu_615_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_615_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_grp_fu_615_p_din1;
    end else begin
        grp_fu_615_p1 = 'bx;
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
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v226_address0;
    end else begin
        v226_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v226_ce0;
    end else begin
        v226_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_0_address0;
    end else begin
        v227_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_0_address1;
    end else begin
        v227_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_0_ce0;
    end else begin
        v227_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_v227_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_v227_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_v227_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_v227_0_ce1;
    end else begin
        v227_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_1_address0;
    end else begin
        v227_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_1_address1;
    end else begin
        v227_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_1_ce0;
    end else begin
        v227_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_v227_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_v227_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_v227_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_v227_1_ce1;
    end else begin
        v227_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_reg_525 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0)) & (icmp_ln168_reg_525 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
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
            if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0)) & (icmp_ln168_reg_525 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_done == 1'b0)) & (icmp_ln168_reg_525 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign add_ln168_fu_388_p2 = (v114_fu_116 + 64'd8);
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
    ap_block_state6 = ((icmp_ln168_reg_525 == 1'd0) & (v236_full_n == 1'b0));
end
assign cmp11_0_fu_325_p2 = ((v114_fu_116 == 64'd0) ? 1'b1 : 1'b0);
assign grp_fu_164_p_ce = grp_fu_607_ce;
assign grp_fu_164_p_din0 = grp_fu_607_p0;
assign grp_fu_164_p_din1 = grp_fu_607_p1;
assign grp_fu_164_p_opcode = 2'd0;
assign grp_fu_168_p_ce = grp_fu_611_ce;
assign grp_fu_168_p_din0 = grp_fu_611_p0;
assign grp_fu_168_p_din1 = grp_fu_611_p1;
assign grp_fu_172_p_ce = grp_fu_615_ce;
assign grp_fu_172_p_din0 = grp_fu_615_p0;
assign grp_fu_172_p_din1 = grp_fu_615_p1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_148_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_161_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_174_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_56_fu_187_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_57_fu_200_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_58_fu_213_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_59_fu_226_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_134_ap_start_reg;
assign icmp_ln168_fu_319_p2 = (($signed(or_ln168_1_fu_301_p3) < $signed(64'd210)) ? 1'b1 : 1'b0);
assign lshr_ln_fu_251_p4 = {{v114_fu_116[7:1]}};
assign mul_ln175_1_fu_357_p0 = mul_ln175_1_fu_357_p00;
assign mul_ln175_1_fu_357_p00 = or_ln168_2_fu_346_p3;
assign mul_ln175_1_fu_357_p1 = 15'd190;
assign mul_ln175_2_fu_418_p0 = mul_ln175_2_fu_418_p00;
assign mul_ln175_2_fu_418_p00 = or_ln2_fu_406_p4;
assign mul_ln175_2_fu_418_p1 = 15'd190;
assign mul_ln175_3_fu_454_p0 = mul_ln175_3_fu_454_p00;
assign mul_ln175_3_fu_454_p00 = or_ln169_1_fu_443_p3;
assign mul_ln175_3_fu_454_p1 = 15'd190;
assign mul_ln175_fu_265_p0 = mul_ln175_fu_265_p00;
assign mul_ln175_fu_265_p00 = lshr_ln_fu_251_p4;
assign mul_ln175_fu_265_p1 = 15'd190;
assign or_ln168_1_cast_fu_339_p3 = {{tmp_1_reg_514}, {2'd2}};
assign or_ln168_1_fu_301_p3 = {{tmp_2_fu_281_p4}, {2'd2}};
assign or_ln168_2_fu_346_p3 = {{tmp_4_reg_520}, {1'd1}};
assign or_ln168_3_fu_398_p3 = {{tmp_1_reg_514}, {2'd3}};
assign or_ln168_4_fu_424_p3 = {{tmp_8_reg_550}, {3'd4}};
assign or_ln168_5_fu_432_p5 = {{{{tmp_8_reg_550}, {1'd1}}, {tmp_3_reg_564}}, {1'd1}};
assign or_ln168_6_fu_460_p3 = {{tmp_8_reg_550}, {3'd6}};
assign or_ln168_7_fu_468_p3 = {{tmp_8_reg_550}, {3'd7}};
assign or_ln169_1_fu_443_p3 = {{tmp_s_reg_558}, {2'd3}};
assign or_ln2_fu_406_p4 = {{{tmp_s_reg_558}, {1'd1}}, {tmp_3_reg_564}};
assign or_ln_fu_331_p3 = {{tmp_reg_509}, {1'd1}};
assign tmp_2_fu_281_p4 = {{v114_fu_116[63:2]}};
assign trunc_ln168_fu_247_p1 = v114_fu_116[15:0];
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
always @ (posedge ap_clk) begin
    or_ln_reg_534[0] <= 1'b1;
    or_ln168_1_cast_reg_539[1:0] <= 2'b10;
    or_ln168_3_reg_570[1:0] <= 2'b11;
    or_ln168_4_reg_581[2:0] <= 3'b100;
    or_ln168_5_reg_586[0] <= 1'b1;
    or_ln168_5_reg_586[2] <= 1'b1;
    or_ln168_6_reg_597[2:0] <= 3'b110;
    or_ln168_7_reg_602[2:0] <= 3'b111;
end
endmodule 