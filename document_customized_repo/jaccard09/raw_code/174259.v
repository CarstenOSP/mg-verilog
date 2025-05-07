module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,v229_0_address0,v229_0_ce0,v229_0_we0,v229_0_d0,v229_0_q0,v229_0_address1,v229_0_ce1,v229_0_we1,v229_0_d1,v229_0_q1,v229_1_address0,v229_1_ce0,v229_1_we0,v229_1_d0,v229_1_q0,v229_1_address1,v229_1_ce1,v229_1_we1,v229_1_d1,v229_1_q1,v4,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_opcode,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce,grp_fu_184_p_din0,grp_fu_184_p_din1,grp_fu_184_p_dout0,grp_fu_184_p_ce); 
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
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
output  [12:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [12:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [12:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [12:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [12:0] v228_2_address0;
output   v228_2_ce0;
input  [31:0] v228_2_q0;
output  [12:0] v228_2_address1;
output   v228_2_ce1;
input  [31:0] v228_2_q1;
output  [12:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [12:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
output  [12:0] v228_4_address0;
output   v228_4_ce0;
input  [31:0] v228_4_q0;
output  [12:0] v228_4_address1;
output   v228_4_ce1;
input  [31:0] v228_4_q1;
output  [12:0] v228_5_address0;
output   v228_5_ce0;
input  [31:0] v228_5_q0;
output  [12:0] v228_5_address1;
output   v228_5_ce1;
input  [31:0] v228_5_q1;
output  [12:0] v228_6_address0;
output   v228_6_ce0;
input  [31:0] v228_6_q0;
output  [12:0] v228_6_address1;
output   v228_6_ce1;
input  [31:0] v228_6_q1;
output  [12:0] v228_7_address0;
output   v228_7_ce0;
input  [31:0] v228_7_q0;
output  [12:0] v228_7_address1;
output   v228_7_ce1;
input  [31:0] v228_7_q1;
output  [14:0] v229_0_address0;
output   v229_0_ce0;
output   v229_0_we0;
output  [31:0] v229_0_d0;
input  [31:0] v229_0_q0;
output  [14:0] v229_0_address1;
output   v229_0_ce1;
output   v229_0_we1;
output  [31:0] v229_0_d1;
input  [31:0] v229_0_q1;
output  [14:0] v229_1_address0;
output   v229_1_ce0;
output   v229_1_we0;
output  [31:0] v229_1_d0;
input  [31:0] v229_1_q0;
output  [14:0] v229_1_address1;
output   v229_1_ce1;
output   v229_1_we1;
output  [31:0] v229_1_d1;
input  [31:0] v229_1_q1;
input  [31:0] v4;
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
output  [1:0] grp_fu_152_p_opcode;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
output  [31:0] grp_fu_164_p_din0;
output  [31:0] grp_fu_164_p_din1;
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
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v224_address0;
reg v224_ce0;
reg[15:0] v224_address1;
reg v224_ce1;
reg[14:0] v229_0_address0;
reg v229_0_ce0;
reg v229_0_we0;
reg[31:0] v229_0_d0;
reg[14:0] v229_0_address1;
reg v229_0_ce1;
reg v229_0_we1;
reg[31:0] v229_0_d1;
reg[14:0] v229_1_address0;
reg v229_1_ce0;
reg v229_1_we0;
reg[31:0] v229_1_d0;
reg[14:0] v229_1_address1;
reg v229_1_ce1;
reg v229_1_we1;
reg[31:0] v229_1_d1;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [15:0] trunc_ln31_fu_258_p1;
reg   [15:0] trunc_ln31_reg_433;
wire    ap_CS_fsm_state2;
wire   [12:0] mul_ln38_fu_276_p2;
reg   [12:0] mul_ln38_reg_438;
reg   [14:0] tmp_reg_450;
reg   [13:0] tmp_s_reg_455;
reg   [12:0] tmp_84_reg_461;
reg   [0:0] tmp_29_reg_469;
wire   [0:0] icmp_ln31_fu_338_p2;
reg   [0:0] icmp_ln31_reg_474;
wire   [0:0] cmp11_0_fu_344_p2;
reg   [0:0] cmp11_0_reg_478;
wire    ap_CS_fsm_state3;
wire   [15:0] or_ln_fu_350_p3;
reg   [15:0] or_ln_reg_483;
wire    ap_CS_fsm_state5;
wire   [15:0] or_ln31_1_fu_358_p3;
reg   [15:0] or_ln31_1_reg_488;
wire    ap_CS_fsm_state7;
wire   [15:0] or_ln31_2_fu_366_p3;
reg   [15:0] or_ln31_2_reg_493;
wire    ap_CS_fsm_state9;
wire   [15:0] or_ln31_3_fu_374_p3;
reg   [15:0] or_ln31_3_reg_498;
wire    ap_CS_fsm_state11;
wire   [15:0] or_ln31_4_fu_382_p5;
reg   [15:0] or_ln31_4_reg_503;
wire    ap_CS_fsm_state13;
wire   [15:0] or_ln31_5_cast_fu_393_p3;
reg   [15:0] or_ln31_5_cast_reg_508;
wire    ap_CS_fsm_state14;
wire   [15:0] or_ln31_6_fu_410_p3;
reg   [15:0] or_ln31_6_reg_513;
wire    ap_CS_fsm_state17;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v224_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v224_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v228_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v228_0_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_518_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_518_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_518_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_518_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_522_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_522_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_522_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_522_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_526_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_526_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_526_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_526_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_530_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_530_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_530_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_530_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_534_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_534_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_534_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_538_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_538_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_538_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_542_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_542_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_542_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_546_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_546_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_546_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_550_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_550_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_550_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_554_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_554_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_554_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_558_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_558_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_558_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_562_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_562_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_562_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v224_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v224_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v228_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v228_1_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_518_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_518_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_518_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_518_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_522_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_522_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_522_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_522_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_526_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_526_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_526_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_526_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_530_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_530_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_530_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_530_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_534_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_534_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_534_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_538_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_538_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_538_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_542_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_542_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_542_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_546_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_546_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_546_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v224_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v224_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v228_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v228_2_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_518_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_518_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_518_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_518_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_522_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_522_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_522_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_522_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_526_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_526_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_526_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_526_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_530_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_530_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_530_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_530_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_534_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_534_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_534_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_538_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_538_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_538_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_542_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_542_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_542_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_546_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_546_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_546_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v224_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v224_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v228_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v228_3_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_518_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_518_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_518_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_518_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_522_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_522_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_522_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_522_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_526_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_526_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_526_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_526_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_530_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_530_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_530_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_530_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_534_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_534_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_534_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_538_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_538_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_538_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_542_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_542_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_542_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_546_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_546_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_546_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v224_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v224_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v228_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v228_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v228_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v228_4_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_518_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_518_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_518_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_518_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_522_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_522_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_522_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_522_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_526_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_526_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_526_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_526_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_530_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_530_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_530_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_530_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_534_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_534_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_534_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_538_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_538_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_538_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_542_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_542_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_542_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_546_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_546_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_546_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v224_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v224_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v228_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v228_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v228_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v228_5_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_518_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_518_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_518_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_518_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_522_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_522_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_522_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_522_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_526_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_526_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_526_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_526_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_530_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_530_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_530_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_530_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_534_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_534_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_534_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_538_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_538_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_538_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_542_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_542_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_542_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_546_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_546_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_546_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v224_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v224_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v228_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v228_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v228_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v228_6_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_518_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_518_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_518_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_518_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_522_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_522_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_522_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_522_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_526_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_526_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_526_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_526_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_530_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_530_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_530_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_530_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_534_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_534_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_534_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_538_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_538_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_538_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_542_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_542_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_542_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_546_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_546_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_546_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_d1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_d0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_d1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v224_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v224_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v228_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v228_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v228_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v228_7_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_518_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_518_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_518_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_518_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_522_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_522_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_522_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_522_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_526_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_526_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_526_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_526_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_530_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_530_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_530_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_530_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_534_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_534_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_534_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_538_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_538_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_538_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_542_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_542_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_542_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_546_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_546_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_546_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_start_reg;
wire    ap_CS_fsm_state8;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_start_reg;
wire    ap_CS_fsm_state10;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_start_reg;
wire    ap_CS_fsm_state12;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_start_reg;
wire    ap_CS_fsm_state15;
wire    ap_CS_fsm_state16;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_start_reg;
wire    ap_CS_fsm_state18;
reg   [63:0] v5_fu_120;
wire   [63:0] add_ln31_fu_400_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [4:0] lshr_ln_fu_262_p4;
wire   [4:0] mul_ln38_fu_276_p0;
wire   [8:0] mul_ln38_fu_276_p1;
wire   [60:0] tmp_85_fu_320_p4;
wire   [63:0] or_ln31_5_fu_330_p3;
reg   [31:0] grp_fu_518_p0;
reg   [31:0] grp_fu_518_p1;
reg    grp_fu_518_ce;
wire   [31:0] grp_fu_522_p2;
reg   [31:0] grp_fu_522_p0;
reg   [31:0] grp_fu_522_p1;
reg    grp_fu_522_ce;
wire   [31:0] grp_fu_526_p2;
reg   [31:0] grp_fu_526_p0;
reg   [31:0] grp_fu_526_p1;
reg    grp_fu_526_ce;
wire   [31:0] grp_fu_530_p2;
reg   [31:0] grp_fu_530_p0;
reg   [31:0] grp_fu_530_p1;
reg    grp_fu_530_ce;
reg   [31:0] grp_fu_534_p0;
reg   [31:0] grp_fu_534_p1;
reg    grp_fu_534_ce;
reg   [31:0] grp_fu_538_p0;
reg   [31:0] grp_fu_538_p1;
reg    grp_fu_538_ce;
reg   [31:0] grp_fu_542_p0;
reg   [31:0] grp_fu_542_p1;
reg    grp_fu_542_ce;
reg   [31:0] grp_fu_546_p0;
reg   [31:0] grp_fu_546_p1;
reg    grp_fu_546_ce;
reg    grp_fu_550_ce;
reg    grp_fu_554_ce;
reg    grp_fu_558_ce;
reg    grp_fu_562_ce;
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
wire   [12:0] mul_ln38_fu_276_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_start_reg = 1'b0;
#0 v5_fu_120 = 64'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_ready),.v4(v4),.cmp11_0(cmp11_0_reg_478),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_d1),.v229_0_q1(v229_0_q1),.v5(trunc_ln31_reg_433),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v224_address1),.v224_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v224_ce1),.v224_q1(v224_q1),.mul_ln38(mul_ln38_reg_438),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v228_0_ce1),.v228_0_q1(v228_0_q1),.grp_fu_518_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_518_p_din0),.grp_fu_518_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_518_p_din1),.grp_fu_518_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_518_p_opcode),.grp_fu_518_p_dout0(grp_fu_152_p_dout0),.grp_fu_518_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_518_p_ce),.grp_fu_522_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_522_p_din0),.grp_fu_522_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_522_p_din1),.grp_fu_522_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_522_p_opcode),.grp_fu_522_p_dout0(grp_fu_522_p2),.grp_fu_522_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_522_p_ce),.grp_fu_526_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_526_p_din0),.grp_fu_526_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_526_p_din1),.grp_fu_526_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_526_p_opcode),.grp_fu_526_p_dout0(grp_fu_526_p2),.grp_fu_526_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_526_p_ce),.grp_fu_530_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_530_p_din0),.grp_fu_530_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_530_p_din1),.grp_fu_530_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_530_p_opcode),.grp_fu_530_p_dout0(grp_fu_530_p2),.grp_fu_530_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_530_p_ce),.grp_fu_534_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_534_p_din0),.grp_fu_534_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_534_p_din1),.grp_fu_534_p_dout0(grp_fu_156_p_dout0),.grp_fu_534_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_534_p_ce),.grp_fu_538_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_538_p_din0),.grp_fu_538_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_538_p_din1),.grp_fu_538_p_dout0(grp_fu_160_p_dout0),.grp_fu_538_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_538_p_ce),.grp_fu_542_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_542_p_din0),.grp_fu_542_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_542_p_din1),.grp_fu_542_p_dout0(grp_fu_164_p_dout0),.grp_fu_542_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_542_p_ce),.grp_fu_546_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_546_p_din0),.grp_fu_546_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_546_p_din1),.grp_fu_546_p_dout0(grp_fu_168_p_dout0),.grp_fu_546_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_546_p_ce),.grp_fu_550_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_550_p_din0),.grp_fu_550_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_550_p_din1),.grp_fu_550_p_dout0(grp_fu_172_p_dout0),.grp_fu_550_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_550_p_ce),.grp_fu_554_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_554_p_din0),.grp_fu_554_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_554_p_din1),.grp_fu_554_p_dout0(grp_fu_176_p_dout0),.grp_fu_554_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_554_p_ce),.grp_fu_558_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_558_p_din0),.grp_fu_558_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_558_p_din1),.grp_fu_558_p_dout0(grp_fu_180_p_dout0),.grp_fu_558_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_558_p_ce),.grp_fu_562_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_562_p_din0),.grp_fu_562_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_562_p_din1),.grp_fu_562_p_dout0(grp_fu_184_p_dout0),.grp_fu_562_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_562_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_234 grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln32_2(or_ln_reg_483),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v224_address1),.v224_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v224_ce1),.v224_q1(v224_q1),.mul_ln38(mul_ln38_reg_438),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v228_1_ce1),.v228_1_q1(v228_1_q1),.grp_fu_518_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_518_p_din0),.grp_fu_518_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_518_p_din1),.grp_fu_518_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_518_p_opcode),.grp_fu_518_p_dout0(grp_fu_152_p_dout0),.grp_fu_518_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_518_p_ce),.grp_fu_522_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_522_p_din0),.grp_fu_522_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_522_p_din1),.grp_fu_522_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_522_p_opcode),.grp_fu_522_p_dout0(grp_fu_522_p2),.grp_fu_522_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_522_p_ce),.grp_fu_526_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_526_p_din0),.grp_fu_526_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_526_p_din1),.grp_fu_526_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_526_p_opcode),.grp_fu_526_p_dout0(grp_fu_526_p2),.grp_fu_526_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_526_p_ce),.grp_fu_530_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_530_p_din0),.grp_fu_530_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_530_p_din1),.grp_fu_530_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_530_p_opcode),.grp_fu_530_p_dout0(grp_fu_530_p2),.grp_fu_530_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_530_p_ce),.grp_fu_534_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_534_p_din0),.grp_fu_534_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_534_p_din1),.grp_fu_534_p_dout0(grp_fu_156_p_dout0),.grp_fu_534_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_534_p_ce),.grp_fu_538_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_538_p_din0),.grp_fu_538_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_538_p_din1),.grp_fu_538_p_dout0(grp_fu_160_p_dout0),.grp_fu_538_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_538_p_ce),.grp_fu_542_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_542_p_din0),.grp_fu_542_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_542_p_din1),.grp_fu_542_p_dout0(grp_fu_164_p_dout0),.grp_fu_542_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_542_p_ce),.grp_fu_546_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_546_p_din0),.grp_fu_546_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_546_p_din1),.grp_fu_546_p_dout0(grp_fu_168_p_dout0),.grp_fu_546_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_546_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_235 grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln32_5(or_ln31_1_reg_488),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v224_address1),.v224_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v224_ce1),.v224_q1(v224_q1),.mul_ln38(mul_ln38_reg_438),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v228_2_ce1),.v228_2_q1(v228_2_q1),.grp_fu_518_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_518_p_din0),.grp_fu_518_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_518_p_din1),.grp_fu_518_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_518_p_opcode),.grp_fu_518_p_dout0(grp_fu_152_p_dout0),.grp_fu_518_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_518_p_ce),.grp_fu_522_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_522_p_din0),.grp_fu_522_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_522_p_din1),.grp_fu_522_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_522_p_opcode),.grp_fu_522_p_dout0(grp_fu_522_p2),.grp_fu_522_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_522_p_ce),.grp_fu_526_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_526_p_din0),.grp_fu_526_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_526_p_din1),.grp_fu_526_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_526_p_opcode),.grp_fu_526_p_dout0(grp_fu_526_p2),.grp_fu_526_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_526_p_ce),.grp_fu_530_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_530_p_din0),.grp_fu_530_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_530_p_din1),.grp_fu_530_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_530_p_opcode),.grp_fu_530_p_dout0(grp_fu_530_p2),.grp_fu_530_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_530_p_ce),.grp_fu_534_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_534_p_din0),.grp_fu_534_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_534_p_din1),.grp_fu_534_p_dout0(grp_fu_156_p_dout0),.grp_fu_534_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_534_p_ce),.grp_fu_538_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_538_p_din0),.grp_fu_538_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_538_p_din1),.grp_fu_538_p_dout0(grp_fu_160_p_dout0),.grp_fu_538_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_538_p_ce),.grp_fu_542_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_542_p_din0),.grp_fu_542_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_542_p_din1),.grp_fu_542_p_dout0(grp_fu_164_p_dout0),.grp_fu_542_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_542_p_ce),.grp_fu_546_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_546_p_din0),.grp_fu_546_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_546_p_din1),.grp_fu_546_p_dout0(grp_fu_168_p_dout0),.grp_fu_546_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_546_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_236 grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln32_8(or_ln31_2_reg_493),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v224_address1),.v224_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v224_ce1),.v224_q1(v224_q1),.mul_ln38(mul_ln38_reg_438),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v228_3_ce1),.v228_3_q1(v228_3_q1),.grp_fu_518_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_518_p_din0),.grp_fu_518_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_518_p_din1),.grp_fu_518_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_518_p_opcode),.grp_fu_518_p_dout0(grp_fu_152_p_dout0),.grp_fu_518_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_518_p_ce),.grp_fu_522_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_522_p_din0),.grp_fu_522_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_522_p_din1),.grp_fu_522_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_522_p_opcode),.grp_fu_522_p_dout0(grp_fu_522_p2),.grp_fu_522_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_522_p_ce),.grp_fu_526_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_526_p_din0),.grp_fu_526_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_526_p_din1),.grp_fu_526_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_526_p_opcode),.grp_fu_526_p_dout0(grp_fu_526_p2),.grp_fu_526_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_526_p_ce),.grp_fu_530_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_530_p_din0),.grp_fu_530_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_530_p_din1),.grp_fu_530_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_530_p_opcode),.grp_fu_530_p_dout0(grp_fu_530_p2),.grp_fu_530_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_530_p_ce),.grp_fu_534_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_534_p_din0),.grp_fu_534_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_534_p_din1),.grp_fu_534_p_dout0(grp_fu_156_p_dout0),.grp_fu_534_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_534_p_ce),.grp_fu_538_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_538_p_din0),.grp_fu_538_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_538_p_din1),.grp_fu_538_p_dout0(grp_fu_160_p_dout0),.grp_fu_538_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_538_p_ce),.grp_fu_542_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_542_p_din0),.grp_fu_542_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_542_p_din1),.grp_fu_542_p_dout0(grp_fu_164_p_dout0),.grp_fu_542_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_542_p_ce),.grp_fu_546_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_546_p_din0),.grp_fu_546_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_546_p_din1),.grp_fu_546_p_dout0(grp_fu_168_p_dout0),.grp_fu_546_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_546_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_237 grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln32_11(or_ln31_3_reg_498),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v224_address1),.v224_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v224_ce1),.v224_q1(v224_q1),.mul_ln38(mul_ln38_reg_438),.v228_4_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v228_4_address0),.v228_4_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v228_4_ce0),.v228_4_q0(v228_4_q0),.v228_4_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v228_4_address1),.v228_4_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v228_4_ce1),.v228_4_q1(v228_4_q1),.grp_fu_518_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_518_p_din0),.grp_fu_518_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_518_p_din1),.grp_fu_518_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_518_p_opcode),.grp_fu_518_p_dout0(grp_fu_152_p_dout0),.grp_fu_518_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_518_p_ce),.grp_fu_522_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_522_p_din0),.grp_fu_522_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_522_p_din1),.grp_fu_522_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_522_p_opcode),.grp_fu_522_p_dout0(grp_fu_522_p2),.grp_fu_522_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_522_p_ce),.grp_fu_526_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_526_p_din0),.grp_fu_526_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_526_p_din1),.grp_fu_526_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_526_p_opcode),.grp_fu_526_p_dout0(grp_fu_526_p2),.grp_fu_526_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_526_p_ce),.grp_fu_530_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_530_p_din0),.grp_fu_530_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_530_p_din1),.grp_fu_530_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_530_p_opcode),.grp_fu_530_p_dout0(grp_fu_530_p2),.grp_fu_530_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_530_p_ce),.grp_fu_534_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_534_p_din0),.grp_fu_534_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_534_p_din1),.grp_fu_534_p_dout0(grp_fu_156_p_dout0),.grp_fu_534_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_534_p_ce),.grp_fu_538_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_538_p_din0),.grp_fu_538_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_538_p_din1),.grp_fu_538_p_dout0(grp_fu_160_p_dout0),.grp_fu_538_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_538_p_ce),.grp_fu_542_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_542_p_din0),.grp_fu_542_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_542_p_din1),.grp_fu_542_p_dout0(grp_fu_164_p_dout0),.grp_fu_542_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_542_p_ce),.grp_fu_546_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_546_p_din0),.grp_fu_546_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_546_p_din1),.grp_fu_546_p_dout0(grp_fu_168_p_dout0),.grp_fu_546_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_546_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_238 grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln32_14(or_ln31_4_reg_503),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v224_address1),.v224_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v224_ce1),.v224_q1(v224_q1),.mul_ln38(mul_ln38_reg_438),.v228_5_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v228_5_address0),.v228_5_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v228_5_ce0),.v228_5_q0(v228_5_q0),.v228_5_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v228_5_address1),.v228_5_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v228_5_ce1),.v228_5_q1(v228_5_q1),.grp_fu_518_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_518_p_din0),.grp_fu_518_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_518_p_din1),.grp_fu_518_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_518_p_opcode),.grp_fu_518_p_dout0(grp_fu_152_p_dout0),.grp_fu_518_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_518_p_ce),.grp_fu_522_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_522_p_din0),.grp_fu_522_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_522_p_din1),.grp_fu_522_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_522_p_opcode),.grp_fu_522_p_dout0(grp_fu_522_p2),.grp_fu_522_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_522_p_ce),.grp_fu_526_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_526_p_din0),.grp_fu_526_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_526_p_din1),.grp_fu_526_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_526_p_opcode),.grp_fu_526_p_dout0(grp_fu_526_p2),.grp_fu_526_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_526_p_ce),.grp_fu_530_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_530_p_din0),.grp_fu_530_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_530_p_din1),.grp_fu_530_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_530_p_opcode),.grp_fu_530_p_dout0(grp_fu_530_p2),.grp_fu_530_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_530_p_ce),.grp_fu_534_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_534_p_din0),.grp_fu_534_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_534_p_din1),.grp_fu_534_p_dout0(grp_fu_156_p_dout0),.grp_fu_534_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_534_p_ce),.grp_fu_538_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_538_p_din0),.grp_fu_538_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_538_p_din1),.grp_fu_538_p_dout0(grp_fu_160_p_dout0),.grp_fu_538_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_538_p_ce),.grp_fu_542_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_542_p_din0),.grp_fu_542_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_542_p_din1),.grp_fu_542_p_dout0(grp_fu_164_p_dout0),.grp_fu_542_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_542_p_ce),.grp_fu_546_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_546_p_din0),.grp_fu_546_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_546_p_din1),.grp_fu_546_p_dout0(grp_fu_168_p_dout0),.grp_fu_546_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_546_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_239 grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_d1),.v229_0_q1(v229_0_q1),.or_ln31_5(or_ln31_5_cast_reg_508),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v224_address1),.v224_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v224_ce1),.v224_q1(v224_q1),.mul_ln38(mul_ln38_reg_438),.v228_6_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v228_6_address0),.v228_6_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v228_6_ce0),.v228_6_q0(v228_6_q0),.v228_6_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v228_6_address1),.v228_6_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v228_6_ce1),.v228_6_q1(v228_6_q1),.grp_fu_518_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_518_p_din0),.grp_fu_518_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_518_p_din1),.grp_fu_518_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_518_p_opcode),.grp_fu_518_p_dout0(grp_fu_152_p_dout0),.grp_fu_518_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_518_p_ce),.grp_fu_522_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_522_p_din0),.grp_fu_522_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_522_p_din1),.grp_fu_522_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_522_p_opcode),.grp_fu_522_p_dout0(grp_fu_522_p2),.grp_fu_522_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_522_p_ce),.grp_fu_526_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_526_p_din0),.grp_fu_526_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_526_p_din1),.grp_fu_526_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_526_p_opcode),.grp_fu_526_p_dout0(grp_fu_526_p2),.grp_fu_526_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_526_p_ce),.grp_fu_530_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_530_p_din0),.grp_fu_530_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_530_p_din1),.grp_fu_530_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_530_p_opcode),.grp_fu_530_p_dout0(grp_fu_530_p2),.grp_fu_530_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_530_p_ce),.grp_fu_534_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_534_p_din0),.grp_fu_534_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_534_p_din1),.grp_fu_534_p_dout0(grp_fu_156_p_dout0),.grp_fu_534_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_534_p_ce),.grp_fu_538_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_538_p_din0),.grp_fu_538_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_538_p_din1),.grp_fu_538_p_dout0(grp_fu_160_p_dout0),.grp_fu_538_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_538_p_ce),.grp_fu_542_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_542_p_din0),.grp_fu_542_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_542_p_din1),.grp_fu_542_p_dout0(grp_fu_164_p_dout0),.grp_fu_542_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_542_p_ce),.grp_fu_546_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_546_p_din0),.grp_fu_546_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_546_p_din1),.grp_fu_546_p_dout0(grp_fu_168_p_dout0),.grp_fu_546_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_546_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_240 grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_ready),.v229_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_address0),.v229_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_ce0),.v229_1_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_we0),.v229_1_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_d0),.v229_1_q0(v229_1_q0),.v229_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_address1),.v229_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_ce1),.v229_1_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_we1),.v229_1_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_d1),.v229_1_q1(v229_1_q1),.v229_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_address0),.v229_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_ce0),.v229_0_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_we0),.v229_0_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_d0),.v229_0_q0(v229_0_q0),.v229_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_address1),.v229_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_ce1),.v229_0_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_we1),.v229_0_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_d1),.v229_0_q1(v229_0_q1),.zext_ln32_19(or_ln31_6_reg_513),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v224_address1),.v224_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v224_ce1),.v224_q1(v224_q1),.mul_ln38(mul_ln38_reg_438),.v228_7_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v228_7_address0),.v228_7_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v228_7_ce0),.v228_7_q0(v228_7_q0),.v228_7_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v228_7_address1),.v228_7_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v228_7_ce1),.v228_7_q1(v228_7_q1),.grp_fu_518_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_518_p_din0),.grp_fu_518_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_518_p_din1),.grp_fu_518_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_518_p_opcode),.grp_fu_518_p_dout0(grp_fu_152_p_dout0),.grp_fu_518_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_518_p_ce),.grp_fu_522_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_522_p_din0),.grp_fu_522_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_522_p_din1),.grp_fu_522_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_522_p_opcode),.grp_fu_522_p_dout0(grp_fu_522_p2),.grp_fu_522_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_522_p_ce),.grp_fu_526_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_526_p_din0),.grp_fu_526_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_526_p_din1),.grp_fu_526_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_526_p_opcode),.grp_fu_526_p_dout0(grp_fu_526_p2),.grp_fu_526_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_526_p_ce),.grp_fu_530_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_530_p_din0),.grp_fu_530_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_530_p_din1),.grp_fu_530_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_530_p_opcode),.grp_fu_530_p_dout0(grp_fu_530_p2),.grp_fu_530_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_530_p_ce),.grp_fu_534_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_534_p_din0),.grp_fu_534_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_534_p_din1),.grp_fu_534_p_dout0(grp_fu_156_p_dout0),.grp_fu_534_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_534_p_ce),.grp_fu_538_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_538_p_din0),.grp_fu_538_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_538_p_din1),.grp_fu_538_p_dout0(grp_fu_160_p_dout0),.grp_fu_538_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_538_p_ce),.grp_fu_542_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_542_p_din0),.grp_fu_542_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_542_p_din1),.grp_fu_542_p_dout0(grp_fu_164_p_dout0),.grp_fu_542_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_542_p_ce),.grp_fu_546_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_546_p_din0),.grp_fu_546_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_546_p_din1),.grp_fu_546_p_dout0(grp_fu_168_p_dout0),.grp_fu_546_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_546_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U1615(.din0(mul_ln38_fu_276_p0),.din1(mul_ln38_fu_276_p1),.dout(mul_ln38_fu_276_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1617(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_522_p0),.din1(grp_fu_522_p1),.ce(grp_fu_522_ce),.dout(grp_fu_522_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1618(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_526_p0),.din1(grp_fu_526_p1),.ce(grp_fu_526_ce),.dout(grp_fu_526_p2));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1619(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_530_p0),.din1(grp_fu_530_p1),.ce(grp_fu_530_ce),.dout(grp_fu_530_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_120 <= 64'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln31_reg_474 == 1'd1))) begin
        v5_fu_120 <= add_ln31_fu_400_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_0_reg_478 <= cmp11_0_fu_344_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln31_reg_474 <= icmp_ln31_fu_338_p2;
        mul_ln38_reg_438 <= mul_ln38_fu_276_p2;
        tmp_29_reg_469 <= v5_fu_120[32'd1];
        tmp_84_reg_461 <= {{v5_fu_120[15:3]}};
        tmp_reg_450 <= {{v5_fu_120[15:1]}};
        tmp_s_reg_455 <= {{v5_fu_120[15:2]}};
        trunc_ln31_reg_433 <= trunc_ln31_fu_258_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        or_ln31_1_reg_488[15 : 2] <= or_ln31_1_fu_358_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        or_ln31_2_reg_493[15 : 2] <= or_ln31_2_fu_366_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        or_ln31_3_reg_498[15 : 3] <= or_ln31_3_fu_374_p3[15 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        or_ln31_4_reg_503[1] <= or_ln31_4_fu_382_p5[1];
or_ln31_4_reg_503[15 : 3] <= or_ln31_4_fu_382_p5[15 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        or_ln31_5_cast_reg_508[15 : 3] <= or_ln31_5_cast_fu_393_p3[15 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        or_ln31_6_reg_513[15 : 3] <= or_ln31_6_fu_410_p3[15 : 3];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        or_ln_reg_483[15 : 1] <= or_ln_fu_350_p3[15 : 1];
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_done == 1'b0)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end
assign ap_ST_fsm_state17_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_done == 1'b0)) begin
        ap_ST_fsm_state18_blk = 1'b1;
    end else begin
        ap_ST_fsm_state18_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln31_reg_474 == 1'd0)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln31_reg_474 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_518_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_518_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_518_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_518_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_518_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_518_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_518_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_518_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_518_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_518_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_518_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_518_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_518_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_518_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_518_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_518_p_ce;
    end else begin
        grp_fu_518_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_518_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_518_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_518_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_518_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_518_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_518_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_518_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_518_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_518_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_518_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_518_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_518_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_518_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_518_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_518_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_518_p_din0;
    end else begin
        grp_fu_518_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_518_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_518_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_518_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_518_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_518_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_518_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_518_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_518_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_518_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_518_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_518_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_518_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_518_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_518_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_518_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_518_p_din1;
    end else begin
        grp_fu_518_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_522_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_522_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_522_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_522_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_522_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_522_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_522_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_522_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_522_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_522_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_522_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_522_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_522_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_522_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_522_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_522_p_ce;
    end else begin
        grp_fu_522_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_522_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_522_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_522_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_522_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_522_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_522_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_522_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_522_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_522_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_522_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_522_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_522_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_522_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_522_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_522_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_522_p_din0;
    end else begin
        grp_fu_522_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_522_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_522_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_522_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_522_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_522_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_522_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_522_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_522_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_522_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_522_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_522_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_522_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_522_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_522_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_522_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_522_p_din1;
    end else begin
        grp_fu_522_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_526_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_526_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_526_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_526_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_526_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_526_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_526_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_526_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_526_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_526_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_526_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_526_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_526_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_526_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_526_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_526_p_ce;
    end else begin
        grp_fu_526_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_526_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_526_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_526_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_526_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_526_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_526_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_526_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_526_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_526_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_526_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_526_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_526_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_526_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_526_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_526_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_526_p_din0;
    end else begin
        grp_fu_526_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_526_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_526_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_526_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_526_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_526_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_526_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_526_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_526_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_526_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_526_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_526_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_526_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_526_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_526_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_526_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_526_p_din1;
    end else begin
        grp_fu_526_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_530_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_530_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_530_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_530_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_530_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_530_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_530_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_530_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_530_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_530_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_530_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_530_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_530_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_530_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_530_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_530_p_ce;
    end else begin
        grp_fu_530_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_530_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_530_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_530_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_530_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_530_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_530_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_530_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_530_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_530_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_530_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_530_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_530_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_530_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_530_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_530_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_530_p_din0;
    end else begin
        grp_fu_530_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_530_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_530_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_530_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_530_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_530_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_530_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_530_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_530_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_530_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_530_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_530_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_530_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_530_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_530_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_530_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_530_p_din1;
    end else begin
        grp_fu_530_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_534_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_534_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_534_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_534_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_534_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_534_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_534_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_534_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_534_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_534_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_534_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_534_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_534_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_534_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_534_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_534_p_ce;
    end else begin
        grp_fu_534_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_534_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_534_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_534_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_534_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_534_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_534_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_534_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_534_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_534_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_534_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_534_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_534_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_534_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_534_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_534_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_534_p_din0;
    end else begin
        grp_fu_534_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_534_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_534_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_534_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_534_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_534_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_534_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_534_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_534_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_534_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_534_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_534_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_534_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_534_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_534_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_534_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_534_p_din1;
    end else begin
        grp_fu_534_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_538_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_538_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_538_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_538_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_538_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_538_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_538_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_538_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_538_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_538_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_538_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_538_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_538_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_538_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_538_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_538_p_ce;
    end else begin
        grp_fu_538_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_538_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_538_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_538_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_538_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_538_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_538_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_538_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_538_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_538_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_538_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_538_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_538_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_538_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_538_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_538_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_538_p_din0;
    end else begin
        grp_fu_538_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_538_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_538_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_538_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_538_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_538_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_538_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_538_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_538_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_538_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_538_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_538_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_538_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_538_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_538_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_538_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_538_p_din1;
    end else begin
        grp_fu_538_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_542_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_542_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_542_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_542_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_542_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_542_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_542_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_542_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_542_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_542_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_542_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_542_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_542_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_542_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_542_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_542_p_ce;
    end else begin
        grp_fu_542_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_542_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_542_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_542_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_542_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_542_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_542_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_542_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_542_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_542_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_542_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_542_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_542_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_542_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_542_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_542_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_542_p_din0;
    end else begin
        grp_fu_542_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_542_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_542_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_542_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_542_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_542_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_542_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_542_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_542_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_542_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_542_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_542_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_542_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_542_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_542_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_542_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_542_p_din1;
    end else begin
        grp_fu_542_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_546_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_546_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_546_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_546_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_546_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_546_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_546_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_546_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_546_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_546_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_546_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_546_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_546_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_546_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_546_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_546_p_ce;
    end else begin
        grp_fu_546_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_546_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_546_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_546_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_546_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_546_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_546_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_546_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_546_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_546_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_546_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_546_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_546_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_546_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_546_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_546_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_546_p_din0;
    end else begin
        grp_fu_546_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_546_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_grp_fu_546_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_546_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_grp_fu_546_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_546_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_grp_fu_546_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_546_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_grp_fu_546_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_546_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_grp_fu_546_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_546_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_grp_fu_546_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_546_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_grp_fu_546_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_546_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_546_p_din1;
    end else begin
        grp_fu_546_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_550_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_550_p_ce;
    end else begin
        grp_fu_550_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_554_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_554_p_ce;
    end else begin
        grp_fu_554_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_558_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_558_p_ce;
    end else begin
        grp_fu_558_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_562_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_562_p_ce;
    end else begin
        grp_fu_562_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v224_address0;
    end else begin
        v224_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v224_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v224_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v224_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v224_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v224_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v224_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v224_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v224_address1;
    end else begin
        v224_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v224_ce0;
    end else begin
        v224_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v224_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v224_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v224_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v224_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v224_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v224_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v224_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v224_ce1;
    end else begin
        v224_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_address0;
    end else begin
        v229_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_address1;
    end else begin
        v229_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_ce0;
    end else begin
        v229_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_ce1;
    end else begin
        v229_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_d0;
    end else begin
        v229_0_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_d1;
    end else begin
        v229_0_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_we0;
    end else begin
        v229_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_0_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_0_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_0_we1;
    end else begin
        v229_0_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_address0;
    end else begin
        v229_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_address1;
    end else begin
        v229_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_ce0;
    end else begin
        v229_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_ce1;
    end else begin
        v229_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_d0;
    end else begin
        v229_1_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_d1;
    end else begin
        v229_1_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_we0;
    end else begin
        v229_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v229_1_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_1_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v229_1_we1;
    end else begin
        v229_1_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v236_blk_n = v236_empty_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v236_read_local = 1'b1;
    end else begin
        v236_read_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
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
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln31_reg_474 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln31_reg_474 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
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
assign add_ln31_fu_400_p2 = (v5_fu_120 + 64'd8);
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
    ap_block_state1 = ((v236_empty_n == 1'b0) | (ap_start == 1'b0));
end
assign cmp11_0_fu_344_p2 = ((v5_fu_120 == 64'd0) ? 1'b1 : 1'b0);
assign grp_fu_152_p_ce = grp_fu_518_ce;
assign grp_fu_152_p_din0 = grp_fu_518_p0;
assign grp_fu_152_p_din1 = grp_fu_518_p1;
assign grp_fu_152_p_opcode = 2'd0;
assign grp_fu_156_p_ce = grp_fu_534_ce;
assign grp_fu_156_p_din0 = grp_fu_534_p0;
assign grp_fu_156_p_din1 = grp_fu_534_p1;
assign grp_fu_160_p_ce = grp_fu_538_ce;
assign grp_fu_160_p_din0 = grp_fu_538_p0;
assign grp_fu_160_p_din1 = grp_fu_538_p1;
assign grp_fu_164_p_ce = grp_fu_542_ce;
assign grp_fu_164_p_din0 = grp_fu_542_p0;
assign grp_fu_164_p_din1 = grp_fu_542_p1;
assign grp_fu_168_p_ce = grp_fu_546_ce;
assign grp_fu_168_p_din0 = grp_fu_546_p0;
assign grp_fu_168_p_din1 = grp_fu_546_p1;
assign grp_fu_172_p_ce = grp_fu_550_ce;
assign grp_fu_172_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_550_p_din0;
assign grp_fu_172_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_550_p_din1;
assign grp_fu_176_p_ce = grp_fu_554_ce;
assign grp_fu_176_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_554_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_554_p_din1;
assign grp_fu_180_p_ce = grp_fu_558_ce;
assign grp_fu_180_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_558_p_din0;
assign grp_fu_180_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_558_p_din1;
assign grp_fu_184_p_ce = grp_fu_562_ce;
assign grp_fu_184_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_562_p_din0;
assign grp_fu_184_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_grp_fu_562_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_ap_start_reg;
assign icmp_ln31_fu_338_p2 = (($signed(or_ln31_5_fu_330_p3) < $signed(64'd190)) ? 1'b1 : 1'b0);
assign lshr_ln_fu_262_p4 = {{v5_fu_120[7:3]}};
assign mul_ln38_fu_276_p0 = mul_ln38_fu_276_p00;
assign mul_ln38_fu_276_p00 = lshr_ln_fu_262_p4;
assign mul_ln38_fu_276_p1 = 13'd220;
assign or_ln31_1_fu_358_p3 = {{tmp_s_reg_455}, {2'd2}};
assign or_ln31_2_fu_366_p3 = {{tmp_s_reg_455}, {2'd3}};
assign or_ln31_3_fu_374_p3 = {{tmp_84_reg_461}, {3'd4}};
assign or_ln31_4_fu_382_p5 = {{{{tmp_84_reg_461}, {1'd1}}, {tmp_29_reg_469}}, {1'd1}};
assign or_ln31_5_cast_fu_393_p3 = {{tmp_84_reg_461}, {3'd6}};
assign or_ln31_5_fu_330_p3 = {{tmp_85_fu_320_p4}, {3'd6}};
assign or_ln31_6_fu_410_p3 = {{tmp_84_reg_461}, {3'd7}};
assign or_ln_fu_350_p3 = {{tmp_reg_450}, {1'd1}};
assign tmp_85_fu_320_p4 = {{v5_fu_120[63:3]}};
assign trunc_ln31_fu_258_p1 = v5_fu_120[15:0];
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_136_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_234_fu_152_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_235_fu_166_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_236_fu_180_v228_3_ce1;
assign v228_4_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v228_4_address0;
assign v228_4_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v228_4_address1;
assign v228_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v228_4_ce0;
assign v228_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_237_fu_194_v228_4_ce1;
assign v228_5_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v228_5_address0;
assign v228_5_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v228_5_address1;
assign v228_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v228_5_ce0;
assign v228_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_238_fu_208_v228_5_ce1;
assign v228_6_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v228_6_address0;
assign v228_6_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v228_6_address1;
assign v228_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v228_6_ce0;
assign v228_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_239_fu_222_v228_6_ce1;
assign v228_7_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v228_7_address0;
assign v228_7_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v228_7_address1;
assign v228_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v228_7_ce0;
assign v228_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_240_fu_236_v228_7_ce1;
assign v236_read = v236_read_local;
always @ (posedge ap_clk) begin
    or_ln_reg_483[0] <= 1'b1;
    or_ln31_1_reg_488[1:0] <= 2'b10;
    or_ln31_2_reg_493[1:0] <= 2'b11;
    or_ln31_3_reg_498[2:0] <= 3'b100;
    or_ln31_4_reg_503[0] <= 1'b1;
    or_ln31_4_reg_503[2] <= 1'b1;
    or_ln31_5_cast_reg_508[2:0] <= 3'b110;
    or_ln31_6_reg_513[2:0] <= 3'b111;
end
endmodule 