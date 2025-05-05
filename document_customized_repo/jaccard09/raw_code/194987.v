module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce); 
parameter    ap_ST_fsm_state1 = 10'd1;
parameter    ap_ST_fsm_state2 = 10'd2;
parameter    ap_ST_fsm_state3 = 10'd4;
parameter    ap_ST_fsm_state4 = 10'd8;
parameter    ap_ST_fsm_state5 = 10'd16;
parameter    ap_ST_fsm_state6 = 10'd32;
parameter    ap_ST_fsm_state7 = 10'd64;
parameter    ap_ST_fsm_state8 = 10'd128;
parameter    ap_ST_fsm_state9 = 10'd256;
parameter    ap_ST_fsm_state10 = 10'd512;
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
output  [31:0] grp_fu_148_p_din0;
output  [31:0] grp_fu_148_p_din1;
output  [1:0] grp_fu_148_p_opcode;
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
reg[15:0] v224_address0;
reg v224_ce0;
reg[15:0] v229_address0;
reg v229_ce0;
reg v229_we0;
reg[31:0] v229_d0;
reg[15:0] v229_address1;
reg v229_ce1;
reg v229_we1;
reg[31:0] v229_d1;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [15:0] trunc_ln31_fu_184_p1;
reg   [15:0] trunc_ln31_reg_316;
wire    ap_CS_fsm_state2;
wire   [12:0] mul_ln38_fu_206_p2;
reg   [12:0] mul_ln38_reg_321;
wire   [0:0] icmp_ln38_fu_212_p2;
reg   [0:0] icmp_ln38_reg_329;
reg   [14:0] tmp_reg_337;
reg   [13:0] tmp_1_reg_342;
wire   [0:0] icmp_ln31_fu_256_p2;
reg   [0:0] icmp_ln31_reg_348;
wire   [0:0] cmp11_0_fu_262_p2;
reg   [0:0] cmp11_0_reg_352;
wire    ap_CS_fsm_state3;
wire   [15:0] or_ln_fu_268_p3;
reg   [15:0] or_ln_reg_357;
wire    ap_CS_fsm_state5;
wire   [15:0] or_ln31_1_cast_fu_276_p3;
reg   [15:0] or_ln31_1_cast_reg_362;
wire    ap_CS_fsm_state6;
wire   [15:0] or_ln31_2_fu_293_p3;
reg   [15:0] or_ln31_2_reg_367;
wire    ap_CS_fsm_state9;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v224_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_4_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_372_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_372_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_372_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_372_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_376_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_376_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_376_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_380_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_380_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_380_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v224_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_5_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_372_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_372_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_372_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_372_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_376_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_376_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_376_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v224_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_6_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_372_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_372_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_372_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_372_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_376_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_376_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_376_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v224_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_7_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_372_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_372_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_372_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_372_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_376_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_376_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_376_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_start_reg;
wire    ap_CS_fsm_state10;
reg   [63:0] v5_fu_98;
wire   [63:0] add_ln31_fu_283_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [4:0] lshr_ln_fu_192_p4;
wire   [4:0] mul_ln38_fu_206_p0;
wire   [8:0] mul_ln38_fu_206_p1;
wire   [2:0] trunc_ln31_1_fu_188_p1;
wire   [61:0] tmp_2_fu_228_p4;
wire   [63:0] or_ln31_1_fu_248_p3;
reg   [31:0] grp_fu_372_p0;
reg   [31:0] grp_fu_372_p1;
reg    grp_fu_372_ce;
reg   [31:0] grp_fu_376_p0;
reg   [31:0] grp_fu_376_p1;
reg    grp_fu_376_ce;
reg    grp_fu_380_ce;
reg   [9:0] ap_NS_fsm;
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
wire   [12:0] mul_ln38_fu_206_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_start_reg = 1'b0;
#0 v5_fu_98 = 64'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_ready),.v5(trunc_ln31_reg_316),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v224_ce0),.v224_q0(v224_q0),.mul_ln38(mul_ln38_reg_321),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_4_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_4_address0),.v228_4_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_4_ce0),.v228_4_q0(v228_4_q0),.v228_4_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_4_address1),.v228_4_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_4_ce1),.v228_4_q1(v228_4_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_d1),.v229_q1(v229_q1),.v4(v4),.cmp11_0(cmp11_0_reg_352),.icmp_ln38(icmp_ln38_reg_329),.grp_fu_372_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_372_p_din0),.grp_fu_372_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_372_p_din1),.grp_fu_372_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_372_p_opcode),.grp_fu_372_p_dout0(grp_fu_148_p_dout0),.grp_fu_372_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_372_p_ce),.grp_fu_376_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_376_p_din0),.grp_fu_376_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_376_p_din1),.grp_fu_376_p_dout0(grp_fu_152_p_dout0),.grp_fu_376_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_376_p_ce),.grp_fu_380_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_380_p_din0),.grp_fu_380_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_380_p_din1),.grp_fu_380_p_dout0(grp_fu_156_p_dout0),.grp_fu_380_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_380_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_23 grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_ready),.zext_ln32_1(or_ln_reg_357),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v224_ce0),.v224_q0(v224_q0),.mul_ln38(mul_ln38_reg_321),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_5_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_5_address0),.v228_5_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_5_ce0),.v228_5_q0(v228_5_q0),.v228_5_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_5_address1),.v228_5_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_5_ce1),.v228_5_q1(v228_5_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_d1),.v229_q1(v229_q1),.icmp_ln38(icmp_ln38_reg_329),.grp_fu_372_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_372_p_din0),.grp_fu_372_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_372_p_din1),.grp_fu_372_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_372_p_opcode),.grp_fu_372_p_dout0(grp_fu_148_p_dout0),.grp_fu_372_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_372_p_ce),.grp_fu_376_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_376_p_din0),.grp_fu_376_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_376_p_din1),.grp_fu_376_p_dout0(grp_fu_152_p_dout0),.grp_fu_376_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_376_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_24 grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_ready),.or_ln31_1(or_ln31_1_cast_reg_362),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v224_ce0),.v224_q0(v224_q0),.mul_ln38(mul_ln38_reg_321),.v228_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_6_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_6_address0),.v228_6_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_6_ce0),.v228_6_q0(v228_6_q0),.v228_6_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_6_address1),.v228_6_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_6_ce1),.v228_6_q1(v228_6_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_d1),.v229_q1(v229_q1),.icmp_ln38(icmp_ln38_reg_329),.grp_fu_372_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_372_p_din0),.grp_fu_372_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_372_p_din1),.grp_fu_372_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_372_p_opcode),.grp_fu_372_p_dout0(grp_fu_148_p_dout0),.grp_fu_372_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_372_p_ce),.grp_fu_376_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_376_p_din0),.grp_fu_376_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_376_p_din1),.grp_fu_376_p_dout0(grp_fu_152_p_dout0),.grp_fu_376_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_376_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_25 grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_ready),.zext_ln32_4(or_ln31_2_reg_367),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v224_ce0),.v224_q0(v224_q0),.mul_ln38(mul_ln38_reg_321),.v228_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_3_ce1),.v228_3_q1(v228_3_q1),.v228_7_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_7_address0),.v228_7_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_7_ce0),.v228_7_q0(v228_7_q0),.v228_7_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_7_address1),.v228_7_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_7_ce1),.v228_7_q1(v228_7_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_d1),.v229_q1(v229_q1),.icmp_ln38(icmp_ln38_reg_329),.grp_fu_372_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_372_p_din0),.grp_fu_372_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_372_p_din1),.grp_fu_372_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_372_p_opcode),.grp_fu_372_p_dout0(grp_fu_148_p_dout0),.grp_fu_372_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_372_p_ce),.grp_fu_376_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_376_p_din0),.grp_fu_376_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_376_p_din1),.grp_fu_376_p_dout0(grp_fu_152_p_dout0),.grp_fu_376_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_376_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U151(.din0(mul_ln38_fu_206_p0),.din1(mul_ln38_fu_206_p1),.dout(mul_ln38_fu_206_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_98 <= 64'd0;
    end else if (((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln31_reg_348 == 1'd1))) begin
        v5_fu_98 <= add_ln31_fu_283_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_0_reg_352 <= cmp11_0_fu_262_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln31_reg_348 <= icmp_ln31_fu_256_p2;
        icmp_ln38_reg_329 <= icmp_ln38_fu_212_p2;
        mul_ln38_reg_321 <= mul_ln38_fu_206_p2;
        tmp_1_reg_342 <= {{v5_fu_98[15:2]}};
        tmp_reg_337 <= {{v5_fu_98[15:1]}};
        trunc_ln31_reg_316 <= trunc_ln31_fu_184_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        or_ln31_1_cast_reg_362[15 : 2] <= or_ln31_1_cast_fu_276_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        or_ln31_2_reg_367[15 : 2] <= or_ln31_2_fu_293_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        or_ln_reg_357[15 : 1] <= or_ln_fu_268_p3[15 : 1];
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln31_reg_348 == 1'd0)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln31_reg_348 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_372_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_372_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_372_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_372_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_372_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_372_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_372_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_372_p_ce;
    end else begin
        grp_fu_372_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_372_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_372_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_372_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_372_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_372_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_372_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_372_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_372_p_din0;
    end else begin
        grp_fu_372_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_372_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_372_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_372_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_372_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_372_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_372_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_372_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_372_p_din1;
    end else begin
        grp_fu_372_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_376_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_376_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_376_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_376_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_376_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_376_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_376_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_376_p_ce;
    end else begin
        grp_fu_376_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_376_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_376_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_376_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_376_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_376_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_376_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_376_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_376_p_din0;
    end else begin
        grp_fu_376_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_376_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_grp_fu_376_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_376_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_grp_fu_376_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_376_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_grp_fu_376_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_376_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_376_p_din1;
    end else begin
        grp_fu_376_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_380_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_380_p_ce;
    end else begin
        grp_fu_380_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v224_address0;
    end else begin
        v224_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v224_ce0;
    end else begin
        v224_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v229_we1;
    end else begin
        v229_we1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
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
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln31_reg_348 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6) & (icmp_ln31_reg_348 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_283_p2 = (v5_fu_98 + 64'd4);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];
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
assign cmp11_0_fu_262_p2 = ((v5_fu_98 == 64'd0) ? 1'b1 : 1'b0);
assign grp_fu_148_p_ce = grp_fu_372_ce;
assign grp_fu_148_p_din0 = grp_fu_372_p0;
assign grp_fu_148_p_din1 = grp_fu_372_p1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_376_ce;
assign grp_fu_152_p_din0 = grp_fu_376_p0;
assign grp_fu_152_p_din1 = grp_fu_376_p1;
assign grp_fu_156_p_ce = grp_fu_380_ce;
assign grp_fu_156_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_380_p_din0;
assign grp_fu_156_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_grp_fu_380_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_ap_start_reg;
assign icmp_ln31_fu_256_p2 = (($signed(or_ln31_1_fu_248_p3) < $signed(64'd190)) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_212_p2 = ((trunc_ln31_1_fu_188_p1 != 3'd0) ? 1'b1 : 1'b0);
assign lshr_ln_fu_192_p4 = {{v5_fu_98[7:3]}};
assign mul_ln38_fu_206_p0 = mul_ln38_fu_206_p00;
assign mul_ln38_fu_206_p00 = lshr_ln_fu_192_p4;
assign mul_ln38_fu_206_p1 = 13'd220;
assign or_ln31_1_cast_fu_276_p3 = {{tmp_1_reg_342}, {2'd2}};
assign or_ln31_1_fu_248_p3 = {{tmp_2_fu_228_p4}, {2'd2}};
assign or_ln31_2_fu_293_p3 = {{tmp_1_reg_342}, {2'd3}};
assign or_ln_fu_268_p3 = {{tmp_reg_337}, {1'd1}};
assign tmp_2_fu_228_p4 = {{v5_fu_98[63:2]}};
assign trunc_ln31_1_fu_188_p1 = v5_fu_98[2:0];
assign trunc_ln31_fu_184_p1 = v5_fu_98[15:0];
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_3_ce1;
assign v228_4_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_4_address0;
assign v228_4_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_4_address1;
assign v228_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_4_ce0;
assign v228_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_114_v228_4_ce1;
assign v228_5_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_5_address0;
assign v228_5_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_5_address1;
assign v228_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_5_ce0;
assign v228_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_131_v228_5_ce1;
assign v228_6_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_6_address0;
assign v228_6_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_6_address1;
assign v228_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_6_ce0;
assign v228_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_146_v228_6_ce1;
assign v228_7_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_7_address0;
assign v228_7_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_7_address1;
assign v228_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_7_ce0;
assign v228_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_161_v228_7_ce1;
assign v236_read = v236_read_local;
always @ (posedge ap_clk) begin
    or_ln_reg_357[0] <= 1'b1;
    or_ln31_1_cast_reg_362[1:0] <= 2'b10;
    or_ln31_2_reg_367[1:0] <= 2'b11;
end
endmodule 