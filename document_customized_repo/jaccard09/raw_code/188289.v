module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_144_p_din0,grp_fu_144_p_din1,grp_fu_144_p_opcode,grp_fu_144_p_dout0,grp_fu_144_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce,grp_fu_140_p_din0,grp_fu_140_p_din1,grp_fu_140_p_dout0,grp_fu_140_p_ce); 
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
output  [13:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [13:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [13:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [13:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [13:0] v224_2_address0;
output   v224_2_ce0;
input  [31:0] v224_2_q0;
output  [13:0] v224_2_address1;
output   v224_2_ce1;
input  [31:0] v224_2_q1;
output  [13:0] v224_3_address0;
output   v224_3_ce0;
input  [31:0] v224_3_q0;
output  [13:0] v224_3_address1;
output   v224_3_ce1;
input  [31:0] v224_3_q1;
output  [15:0] v228_address0;
output   v228_ce0;
input  [31:0] v228_q0;
output  [15:0] v228_address1;
output   v228_ce1;
input  [31:0] v228_q1;
output  [15:0] v229_address0;
output   v229_ce0;
output   v229_we0;
output  [31:0] v229_d0;
input  [31:0] v229_q0;
output  [15:0] v229_address1;
output   v229_ce1;
output   v229_we1;
output  [31:0] v229_d1;
input  [31:0] v229_q1;
input  [31:0] v4;
output  [31:0] grp_fu_144_p_din0;
output  [31:0] grp_fu_144_p_din1;
output  [1:0] grp_fu_144_p_opcode;
input  [31:0] grp_fu_144_p_dout0;
output   grp_fu_144_p_ce;
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
reg[13:0] v224_0_address0;
reg v224_0_ce0;
reg[13:0] v224_0_address1;
reg v224_0_ce1;
reg[13:0] v224_1_address0;
reg v224_1_ce0;
reg[13:0] v224_1_address1;
reg v224_1_ce1;
reg[13:0] v224_2_address0;
reg v224_2_ce0;
reg[13:0] v224_2_address1;
reg v224_2_ce1;
reg[13:0] v224_3_address0;
reg v224_3_ce0;
reg[13:0] v224_3_address1;
reg v224_3_ce1;
reg[15:0] v228_address0;
reg v228_ce0;
reg[15:0] v228_address1;
reg v228_ce1;
reg[15:0] v229_address0;
reg v229_ce0;
reg v229_we0;
reg[31:0] v229_d0;
reg[15:0] v229_address1;
reg v229_ce1;
reg v229_we1;
reg[31:0] v229_d1;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [15:0] trunc_ln31_fu_238_p1;
reg   [15:0] trunc_ln31_reg_481;
wire    ap_CS_fsm_state2;
reg   [13:0] lshr_ln_reg_486;
wire   [0:0] cmp11_0_fu_252_p2;
reg   [0:0] cmp11_0_reg_494;
reg   [6:0] tmp_reg_499;
reg   [5:0] tmp_s_reg_504;
reg   [4:0] tmp_9_reg_510;
reg   [12:0] tmp_10_reg_517;
reg   [0:0] tmp_67_reg_523;
wire   [0:0] icmp_ln31_fu_324_p2;
reg   [0:0] icmp_ln31_reg_528;
wire   [15:0] mul_ln38_fu_341_p2;
reg   [15:0] mul_ln38_reg_532;
wire    ap_CS_fsm_state4;
wire   [15:0] mul_ln38_1_fu_358_p2;
reg   [15:0] mul_ln38_1_reg_537;
wire    ap_CS_fsm_state6;
wire   [15:0] mul_ln38_2_fu_375_p2;
reg   [15:0] mul_ln38_2_reg_542;
wire    ap_CS_fsm_state8;
wire   [15:0] mul_ln38_3_fu_392_p2;
reg   [15:0] mul_ln38_3_reg_547;
wire    ap_CS_fsm_state10;
wire   [13:0] or_ln5_fu_398_p3;
reg   [13:0] or_ln5_reg_552;
wire    ap_CS_fsm_state11;
wire   [15:0] mul_ln38_4_fu_420_p2;
reg   [15:0] mul_ln38_4_reg_560;
wire    ap_CS_fsm_state12;
wire   [15:0] mul_ln38_5_fu_433_p2;
reg   [15:0] mul_ln38_5_reg_565;
wire    ap_CS_fsm_state14;
wire   [15:0] mul_ln38_6_fu_460_p2;
reg   [15:0] mul_ln38_6_reg_570;
wire    ap_CS_fsm_state16;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v224_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v224_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v224_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v224_0_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_575_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_575_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_575_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_575_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_579_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_579_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_579_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_583_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_583_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_583_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v224_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v224_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v224_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v224_1_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_575_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_575_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_575_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_575_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_579_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_579_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_579_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v224_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v224_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v224_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v224_2_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_575_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_575_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_575_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_575_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_579_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_579_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_579_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v224_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v224_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v224_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v224_3_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_575_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_575_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_575_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_575_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_579_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_579_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_579_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v224_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v224_0_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v224_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v224_0_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_575_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_575_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_575_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_575_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_579_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_579_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_579_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v224_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v224_1_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v224_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v224_1_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_575_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_575_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_575_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_575_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_579_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_579_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_579_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v224_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v224_2_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v224_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v224_2_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_575_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_575_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_575_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_575_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_579_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_579_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_579_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_d1;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v224_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v224_3_ce0;
wire   [13:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v224_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v224_3_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v228_ce1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_575_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_575_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_575_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_575_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_579_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_579_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_579_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_start_reg;
wire    ap_CS_fsm_state9;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_start_reg;
wire    ap_CS_fsm_state13;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_start_reg;
wire    ap_CS_fsm_state15;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_start_reg;
wire    ap_CS_fsm_state17;
wire    ap_CS_fsm_state18;
reg   [63:0] v5_fu_116;
wire   [63:0] add_ln31_fu_439_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [60:0] tmp_11_fu_306_p4;
wire   [63:0] or_ln31_5_fu_316_p3;
wire   [7:0] or_ln_fu_330_p3;
wire   [7:0] mul_ln38_fu_341_p0;
wire   [8:0] mul_ln38_fu_341_p1;
wire   [7:0] or_ln31_1_fu_347_p3;
wire   [7:0] mul_ln38_1_fu_358_p0;
wire   [8:0] mul_ln38_1_fu_358_p1;
wire   [7:0] or_ln31_2_fu_364_p3;
wire   [7:0] mul_ln38_2_fu_375_p0;
wire   [8:0] mul_ln38_2_fu_375_p1;
wire   [7:0] or_ln31_3_fu_381_p3;
wire   [7:0] mul_ln38_3_fu_392_p0;
wire   [8:0] mul_ln38_3_fu_392_p1;
wire   [7:0] or_ln31_4_fu_406_p5;
wire   [7:0] mul_ln38_4_fu_420_p0;
wire   [8:0] mul_ln38_4_fu_420_p1;
wire  signed [15:0] mul_ln38_5_fu_433_p0;
wire   [8:0] mul_ln38_5_fu_433_p1;
wire   [7:0] or_ln31_6_fu_449_p3;
wire   [7:0] mul_ln38_6_fu_460_p0;
wire   [8:0] mul_ln38_6_fu_460_p1;
reg   [31:0] grp_fu_575_p0;
reg   [31:0] grp_fu_575_p1;
reg    grp_fu_575_ce;
reg   [31:0] grp_fu_579_p0;
reg   [31:0] grp_fu_579_p1;
reg    grp_fu_579_ce;
reg    grp_fu_583_ce;
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
wire   [15:0] mul_ln38_1_fu_358_p00;
wire   [15:0] mul_ln38_2_fu_375_p00;
wire   [15:0] mul_ln38_3_fu_392_p00;
wire   [15:0] mul_ln38_4_fu_420_p00;
wire   [15:0] mul_ln38_6_fu_460_p00;
wire   [15:0] mul_ln38_fu_341_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 18'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_start_reg = 1'b0;
#0 v5_fu_116 = 64'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_d1),.v229_q1(v229_q1),.zext_ln31(lshr_ln_reg_486),.v224_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v224_0_address0),.v224_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v224_0_ce0),.v224_0_q0(v224_0_q0),.v224_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v224_0_address1),.v224_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v224_0_ce1),.v224_0_q1(v224_0_q1),.v5(trunc_ln31_reg_481),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v228_ce1),.v228_q1(v228_q1),.v4(v4),.cmp11_0(cmp11_0_reg_494),.grp_fu_575_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_575_p_din0),.grp_fu_575_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_575_p_din1),.grp_fu_575_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_575_p_opcode),.grp_fu_575_p_dout0(grp_fu_144_p_dout0),.grp_fu_575_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_575_p_ce),.grp_fu_579_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_579_p_din0),.grp_fu_579_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_579_p_din1),.grp_fu_579_p_dout0(grp_fu_136_p_dout0),.grp_fu_579_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_579_p_ce),.grp_fu_583_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_583_p_din0),.grp_fu_583_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_583_p_din1),.grp_fu_583_p_dout0(grp_fu_140_p_dout0),.grp_fu_583_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_583_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_210 grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_d1),.v229_q1(v229_q1),.zext_ln31(lshr_ln_reg_486),.v224_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v224_1_address0),.v224_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v224_1_ce0),.v224_1_q0(v224_1_q0),.v224_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v224_1_address1),.v224_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v224_1_ce1),.v224_1_q1(v224_1_q1),.mul_ln38_1(mul_ln38_reg_532),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v228_ce1),.v228_q1(v228_q1),.grp_fu_575_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_575_p_din0),.grp_fu_575_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_575_p_din1),.grp_fu_575_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_575_p_opcode),.grp_fu_575_p_dout0(grp_fu_144_p_dout0),.grp_fu_575_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_575_p_ce),.grp_fu_579_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_579_p_din0),.grp_fu_579_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_579_p_din1),.grp_fu_579_p_dout0(grp_fu_136_p_dout0),.grp_fu_579_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_579_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_211 grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_d1),.v229_q1(v229_q1),.zext_ln31(lshr_ln_reg_486),.v224_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v224_2_address0),.v224_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v224_2_ce0),.v224_2_q0(v224_2_q0),.v224_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v224_2_address1),.v224_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v224_2_ce1),.v224_2_q1(v224_2_q1),.mul_ln38_2(mul_ln38_1_reg_537),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v228_ce1),.v228_q1(v228_q1),.grp_fu_575_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_575_p_din0),.grp_fu_575_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_575_p_din1),.grp_fu_575_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_575_p_opcode),.grp_fu_575_p_dout0(grp_fu_144_p_dout0),.grp_fu_575_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_575_p_ce),.grp_fu_579_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_579_p_din0),.grp_fu_579_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_579_p_din1),.grp_fu_579_p_dout0(grp_fu_136_p_dout0),.grp_fu_579_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_579_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_212 grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_d1),.v229_q1(v229_q1),.zext_ln31(lshr_ln_reg_486),.v224_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v224_3_address0),.v224_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v224_3_ce0),.v224_3_q0(v224_3_q0),.v224_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v224_3_address1),.v224_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v224_3_ce1),.v224_3_q1(v224_3_q1),.mul_ln38_3(mul_ln38_2_reg_542),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v228_ce1),.v228_q1(v228_q1),.grp_fu_575_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_575_p_din0),.grp_fu_575_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_575_p_din1),.grp_fu_575_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_575_p_opcode),.grp_fu_575_p_dout0(grp_fu_144_p_dout0),.grp_fu_575_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_575_p_ce),.grp_fu_579_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_579_p_din0),.grp_fu_579_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_579_p_din1),.grp_fu_579_p_dout0(grp_fu_136_p_dout0),.grp_fu_579_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_579_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_213 grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_d1),.v229_q1(v229_q1),.zext_ln32_8(or_ln5_reg_552),.v224_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v224_0_address0),.v224_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v224_0_ce0),.v224_0_q0(v224_0_q0),.v224_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v224_0_address1),.v224_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v224_0_ce1),.v224_0_q1(v224_0_q1),.mul_ln38_4(mul_ln38_3_reg_547),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v228_ce1),.v228_q1(v228_q1),.grp_fu_575_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_575_p_din0),.grp_fu_575_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_575_p_din1),.grp_fu_575_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_575_p_opcode),.grp_fu_575_p_dout0(grp_fu_144_p_dout0),.grp_fu_575_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_575_p_ce),.grp_fu_579_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_579_p_din0),.grp_fu_579_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_579_p_din1),.grp_fu_579_p_dout0(grp_fu_136_p_dout0),.grp_fu_579_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_579_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_214 grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_d1),.v229_q1(v229_q1),.zext_ln32_8(or_ln5_reg_552),.v224_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v224_1_address0),.v224_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v224_1_ce0),.v224_1_q0(v224_1_q0),.v224_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v224_1_address1),.v224_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v224_1_ce1),.v224_1_q1(v224_1_q1),.mul_ln38_5(mul_ln38_4_reg_560),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v228_ce1),.v228_q1(v228_q1),.grp_fu_575_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_575_p_din0),.grp_fu_575_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_575_p_din1),.grp_fu_575_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_575_p_opcode),.grp_fu_575_p_dout0(grp_fu_144_p_dout0),.grp_fu_575_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_575_p_ce),.grp_fu_579_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_579_p_din0),.grp_fu_579_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_579_p_din1),.grp_fu_579_p_dout0(grp_fu_136_p_dout0),.grp_fu_579_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_579_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_215 grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_d1),.v229_q1(v229_q1),.zext_ln32_8(or_ln5_reg_552),.v224_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v224_2_address0),.v224_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v224_2_ce0),.v224_2_q0(v224_2_q0),.v224_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v224_2_address1),.v224_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v224_2_ce1),.v224_2_q1(v224_2_q1),.mul_ln38_6(mul_ln38_5_reg_565),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v228_ce1),.v228_q1(v228_q1),.grp_fu_575_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_575_p_din0),.grp_fu_575_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_575_p_din1),.grp_fu_575_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_575_p_opcode),.grp_fu_575_p_dout0(grp_fu_144_p_dout0),.grp_fu_575_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_575_p_ce),.grp_fu_579_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_579_p_din0),.grp_fu_579_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_579_p_din1),.grp_fu_579_p_dout0(grp_fu_136_p_dout0),.grp_fu_579_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_579_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_216 grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_ready),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_d1),.v229_q1(v229_q1),.zext_ln32_8(or_ln5_reg_552),.v224_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v224_3_address0),.v224_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v224_3_ce0),.v224_3_q0(v224_3_q0),.v224_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v224_3_address1),.v224_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v224_3_ce1),.v224_3_q1(v224_3_q1),.mul_ln38_7(mul_ln38_6_reg_570),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v228_ce1),.v228_q1(v228_q1),.grp_fu_575_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_575_p_din0),.grp_fu_575_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_575_p_din1),.grp_fu_575_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_575_p_opcode),.grp_fu_575_p_dout0(grp_fu_144_p_dout0),.grp_fu_575_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_575_p_ce),.grp_fu_579_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_579_p_din0),.grp_fu_579_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_579_p_din1),.grp_fu_579_p_dout0(grp_fu_136_p_dout0),.grp_fu_579_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_579_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U487(.din0(mul_ln38_fu_341_p0),.din1(mul_ln38_fu_341_p1),.dout(mul_ln38_fu_341_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U488(.din0(mul_ln38_1_fu_358_p0),.din1(mul_ln38_1_fu_358_p1),.dout(mul_ln38_1_fu_358_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U489(.din0(mul_ln38_2_fu_375_p0),.din1(mul_ln38_2_fu_375_p1),.dout(mul_ln38_2_fu_375_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U490(.din0(mul_ln38_3_fu_392_p0),.din1(mul_ln38_3_fu_392_p1),.dout(mul_ln38_3_fu_392_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U491(.din0(mul_ln38_4_fu_420_p0),.din1(mul_ln38_4_fu_420_p1),.dout(mul_ln38_4_fu_420_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U492(.din0(mul_ln38_5_fu_433_p0),.din1(mul_ln38_5_fu_433_p1),.dout(mul_ln38_5_fu_433_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U493(.din0(mul_ln38_6_fu_460_p0),.din1(mul_ln38_6_fu_460_p1),.dout(mul_ln38_6_fu_460_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state11)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state13)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state15)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state17)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_116 <= 64'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln31_reg_528 == 1'd1))) begin
        v5_fu_116 <= add_ln31_fu_439_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_0_reg_494 <= cmp11_0_fu_252_p2;
        icmp_ln31_reg_528 <= icmp_ln31_fu_324_p2;
        lshr_ln_reg_486 <= {{v5_fu_116[15:2]}};
        tmp_10_reg_517 <= {{v5_fu_116[15:3]}};
        tmp_67_reg_523 <= v5_fu_116[32'd1];
        tmp_9_reg_510 <= {{v5_fu_116[7:3]}};
        tmp_reg_499 <= {{v5_fu_116[7:1]}};
        tmp_s_reg_504 <= {{v5_fu_116[7:2]}};
        trunc_ln31_reg_481 <= trunc_ln31_fu_238_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mul_ln38_1_reg_537 <= mul_ln38_1_fu_358_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln38_2_reg_542 <= mul_ln38_2_fu_375_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        mul_ln38_3_reg_547 <= mul_ln38_3_fu_392_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        mul_ln38_4_reg_560 <= mul_ln38_4_fu_420_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        mul_ln38_5_reg_565 <= mul_ln38_5_fu_433_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        mul_ln38_6_reg_570 <= mul_ln38_6_fu_460_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mul_ln38_reg_532 <= mul_ln38_fu_341_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        or_ln5_reg_552[13 : 1] <= or_ln5_fu_398_p3[13 : 1];
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end
assign ap_ST_fsm_state11_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_done == 1'b0)) begin
        ap_ST_fsm_state12_blk = 1'b1;
    end else begin
        ap_ST_fsm_state12_blk = 1'b0;
    end
end
assign ap_ST_fsm_state13_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_done == 1'b0)) begin
        ap_ST_fsm_state14_blk = 1'b1;
    end else begin
        ap_ST_fsm_state14_blk = 1'b0;
    end
end
assign ap_ST_fsm_state15_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_done == 1'b0)) begin
        ap_ST_fsm_state16_blk = 1'b1;
    end else begin
        ap_ST_fsm_state16_blk = 1'b0;
    end
end
assign ap_ST_fsm_state17_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln31_reg_528 == 1'd0)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln31_reg_528 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_575_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_575_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_575_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_575_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_575_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_575_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_575_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_575_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_575_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_575_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_575_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_575_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_575_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_575_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_575_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_575_p_ce;
    end else begin
        grp_fu_575_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_575_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_575_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_575_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_575_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_575_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_575_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_575_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_575_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_575_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_575_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_575_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_575_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_575_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_575_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_575_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_575_p_din0;
    end else begin
        grp_fu_575_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_575_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_575_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_575_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_575_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_575_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_575_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_575_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_575_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_575_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_575_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_575_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_575_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_575_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_575_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_575_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_575_p_din1;
    end else begin
        grp_fu_575_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_579_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_579_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_579_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_579_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_579_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_579_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_579_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_579_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_579_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_579_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_579_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_579_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_579_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_579_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_579_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_579_p_ce;
    end else begin
        grp_fu_579_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_579_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_579_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_579_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_579_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_579_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_579_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_579_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_579_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_579_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_579_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_579_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_579_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_579_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_579_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_579_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_579_p_din0;
    end else begin
        grp_fu_579_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        grp_fu_579_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_grp_fu_579_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        grp_fu_579_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_grp_fu_579_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_fu_579_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_grp_fu_579_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fu_579_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_grp_fu_579_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_579_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_grp_fu_579_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_579_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_grp_fu_579_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_579_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_grp_fu_579_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_579_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_579_p_din1;
    end else begin
        grp_fu_579_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_583_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_583_p_ce;
    end else begin
        grp_fu_583_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v224_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v224_0_address0;
    end else begin
        v224_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v224_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v224_0_address1;
    end else begin
        v224_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v224_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v224_0_ce0;
    end else begin
        v224_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        v224_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v224_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v224_0_ce1;
    end else begin
        v224_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v224_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v224_1_address0;
    end else begin
        v224_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v224_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v224_1_address1;
    end else begin
        v224_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v224_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v224_1_ce0;
    end else begin
        v224_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        v224_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v224_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v224_1_ce1;
    end else begin
        v224_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v224_2_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v224_2_address0;
    end else begin
        v224_2_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v224_2_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v224_2_address1;
    end else begin
        v224_2_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v224_2_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v224_2_ce0;
    end else begin
        v224_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        v224_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v224_2_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v224_2_ce1;
    end else begin
        v224_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v224_3_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v224_3_address0;
    end else begin
        v224_3_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v224_3_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v224_3_address1;
    end else begin
        v224_3_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v224_3_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v224_3_ce0;
    end else begin
        v224_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v224_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v224_3_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v224_3_ce1;
    end else begin
        v224_3_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state16)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_v229_we1;
    end else begin
        v229_we1 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state12))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln31_reg_528 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln31_reg_528 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state18))) begin
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
assign add_ln31_fu_439_p2 = (v5_fu_116 + 64'd8);
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
assign cmp11_0_fu_252_p2 = ((v5_fu_116 == 64'd0) ? 1'b1 : 1'b0);
assign grp_fu_136_p_ce = grp_fu_579_ce;
assign grp_fu_136_p_din0 = grp_fu_579_p0;
assign grp_fu_136_p_din1 = grp_fu_579_p1;
assign grp_fu_140_p_ce = grp_fu_583_ce;
assign grp_fu_140_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_583_p_din0;
assign grp_fu_140_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_grp_fu_583_p_din1;
assign grp_fu_144_p_ce = grp_fu_575_ce;
assign grp_fu_144_p_din0 = grp_fu_575_p0;
assign grp_fu_144_p_din1 = grp_fu_575_p1;
assign grp_fu_144_p_opcode = 2'd0;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_146_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_158_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_170_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_213_fu_182_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_214_fu_194_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_215_fu_206_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_216_fu_218_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_132_ap_start_reg;
assign icmp_ln31_fu_324_p2 = (($signed(or_ln31_5_fu_316_p3) < $signed(64'd190)) ? 1'b1 : 1'b0);
assign mul_ln38_1_fu_358_p0 = mul_ln38_1_fu_358_p00;
assign mul_ln38_1_fu_358_p00 = or_ln31_1_fu_347_p3;
assign mul_ln38_1_fu_358_p1 = 16'd220;
assign mul_ln38_2_fu_375_p0 = mul_ln38_2_fu_375_p00;
assign mul_ln38_2_fu_375_p00 = or_ln31_2_fu_364_p3;
assign mul_ln38_2_fu_375_p1 = 16'd220;
assign mul_ln38_3_fu_392_p0 = mul_ln38_3_fu_392_p00;
assign mul_ln38_3_fu_392_p00 = or_ln31_3_fu_381_p3;
assign mul_ln38_3_fu_392_p1 = 16'd220;
assign mul_ln38_4_fu_420_p0 = mul_ln38_4_fu_420_p00;
assign mul_ln38_4_fu_420_p00 = or_ln31_4_fu_406_p5;
assign mul_ln38_4_fu_420_p1 = 16'd220;
assign mul_ln38_5_fu_433_p0 = {{tmp_10_reg_517}, {3'd6}};
assign mul_ln38_5_fu_433_p1 = 16'd220;
assign mul_ln38_6_fu_460_p0 = mul_ln38_6_fu_460_p00;
assign mul_ln38_6_fu_460_p00 = or_ln31_6_fu_449_p3;
assign mul_ln38_6_fu_460_p1 = 16'd220;
assign mul_ln38_fu_341_p0 = mul_ln38_fu_341_p00;
assign mul_ln38_fu_341_p00 = or_ln_fu_330_p3;
assign mul_ln38_fu_341_p1 = 16'd220;
assign or_ln31_1_fu_347_p3 = {{tmp_s_reg_504}, {2'd2}};
assign or_ln31_2_fu_364_p3 = {{tmp_s_reg_504}, {2'd3}};
assign or_ln31_3_fu_381_p3 = {{tmp_9_reg_510}, {3'd4}};
assign or_ln31_4_fu_406_p5 = {{{{tmp_9_reg_510}, {1'd1}}, {tmp_67_reg_523}}, {1'd1}};
assign or_ln31_5_fu_316_p3 = {{tmp_11_fu_306_p4}, {3'd6}};
assign or_ln31_6_fu_449_p3 = {{tmp_9_reg_510}, {3'd7}};
assign or_ln5_fu_398_p3 = {{tmp_10_reg_517}, {1'd1}};
assign or_ln_fu_330_p3 = {{tmp_reg_499}, {1'd1}};
assign tmp_11_fu_306_p4 = {{v5_fu_116[63:3]}};
assign trunc_ln31_fu_238_p1 = v5_fu_116[15:0];
assign v236_read = v236_read_local;
always @ (posedge ap_clk) begin
    or_ln5_reg_552[0] <= 1'b1;
end
endmodule 