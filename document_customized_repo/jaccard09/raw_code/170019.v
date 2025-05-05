module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_0_address1,v224_0_ce1,v224_0_q1,v224_1_address0,v224_1_ce0,v224_1_q0,v224_1_address1,v224_1_ce1,v224_1_q1,v224_2_address0,v224_2_ce0,v224_2_q0,v224_2_address1,v224_2_ce1,v224_2_q1,v224_3_address0,v224_3_ce0,v224_3_q0,v224_3_address1,v224_3_ce1,v224_3_q1,v224_4_address0,v224_4_ce0,v224_4_q0,v224_4_address1,v224_4_ce1,v224_4_q1,v224_5_address0,v224_5_ce0,v224_5_q0,v224_5_address1,v224_5_ce1,v224_5_q1,v224_6_address0,v224_6_ce0,v224_6_q0,v224_6_address1,v224_6_ce1,v224_6_q1,v224_7_address0,v224_7_ce0,v224_7_q0,v224_7_address1,v224_7_ce1,v224_7_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_opcode,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce); 
parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] v236_dout;
input   v236_empty_n;
output   v236_read;
output  [12:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [12:0] v224_0_address1;
output   v224_0_ce1;
input  [31:0] v224_0_q1;
output  [12:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
output  [12:0] v224_1_address1;
output   v224_1_ce1;
input  [31:0] v224_1_q1;
output  [12:0] v224_2_address0;
output   v224_2_ce0;
input  [31:0] v224_2_q0;
output  [12:0] v224_2_address1;
output   v224_2_ce1;
input  [31:0] v224_2_q1;
output  [12:0] v224_3_address0;
output   v224_3_ce0;
input  [31:0] v224_3_q0;
output  [12:0] v224_3_address1;
output   v224_3_ce1;
input  [31:0] v224_3_q1;
output  [12:0] v224_4_address0;
output   v224_4_ce0;
input  [31:0] v224_4_q0;
output  [12:0] v224_4_address1;
output   v224_4_ce1;
input  [31:0] v224_4_q1;
output  [12:0] v224_5_address0;
output   v224_5_ce0;
input  [31:0] v224_5_q0;
output  [12:0] v224_5_address1;
output   v224_5_ce1;
input  [31:0] v224_5_q1;
output  [12:0] v224_6_address0;
output   v224_6_ce0;
input  [31:0] v224_6_q0;
output  [12:0] v224_6_address1;
output   v224_6_ce1;
input  [31:0] v224_6_q1;
output  [12:0] v224_7_address0;
output   v224_7_ce0;
input  [31:0] v224_7_q0;
output  [12:0] v224_7_address1;
output   v224_7_ce1;
input  [31:0] v224_7_q1;
output  [14:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [14:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [14:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [14:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
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
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
output  [1:0] grp_fu_156_p_opcode;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [7:0] v5_1_reg_199;
wire    ap_CS_fsm_state2;
wire   [14:0] mul_ln38_fu_152_p2;
reg   [14:0] mul_ln38_reg_210;
wire   [2:0] trunc_ln31_fu_163_p1;
reg   [2:0] trunc_ln31_reg_215;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln31_1_fu_167_p1;
reg   [0:0] trunc_ln31_1_reg_220;
reg   [4:0] lshr_ln31_1_reg_225;
wire   [0:0] cmp11_fu_181_p2;
reg   [0:0] cmp11_reg_230;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_ready;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_3_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_3_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_4_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_4_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_4_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_5_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_5_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_5_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_6_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_6_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_6_ce1;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_7_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_7_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_7_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_ce1;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_1_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_235_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_235_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_235_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_235_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_239_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_239_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_239_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_243_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_243_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_243_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start_reg;
wire    ap_CS_fsm_state4;
reg   [7:0] v5_fu_70;
wire   [7:0] add_ln31_fu_132_p2;
wire   [0:0] icmp_ln31_fu_126_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [6:0] lshr_ln_fu_138_p4;
wire   [6:0] mul_ln38_fu_152_p0;
wire   [8:0] mul_ln38_fu_152_p1;
reg    grp_fu_235_ce;
reg    grp_fu_239_ce;
reg    grp_fu_243_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire   [14:0] mul_ln38_fu_152_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start_reg = 1'b0;
#0 v5_fu_70 = 8'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_ready),.zext_ln31_1(lshr_ln31_1_reg_225),.v224_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_address0),.v224_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_ce0),.v224_0_q0(v224_0_q0),.v224_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_address1),.v224_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_ce1),.v224_0_q1(v224_0_q1),.v224_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_1_address0),.v224_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_1_ce0),.v224_1_q0(v224_1_q0),.v224_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_1_address1),.v224_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_1_ce1),.v224_1_q1(v224_1_q1),.v224_2_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_address0),.v224_2_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_ce0),.v224_2_q0(v224_2_q0),.v224_2_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_address1),.v224_2_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_ce1),.v224_2_q1(v224_2_q1),.v224_3_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_3_address0),.v224_3_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_3_ce0),.v224_3_q0(v224_3_q0),.v224_3_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_3_address1),.v224_3_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_3_ce1),.v224_3_q1(v224_3_q1),.v224_4_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_4_address0),.v224_4_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_4_ce0),.v224_4_q0(v224_4_q0),.v224_4_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_4_address1),.v224_4_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_4_ce1),.v224_4_q1(v224_4_q1),.v224_5_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_5_address0),.v224_5_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_5_ce0),.v224_5_q0(v224_5_q0),.v224_5_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_5_address1),.v224_5_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_5_ce1),.v224_5_q1(v224_5_q1),.v224_6_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_6_address0),.v224_6_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_6_ce0),.v224_6_q0(v224_6_q0),.v224_6_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_6_address1),.v224_6_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_6_ce1),.v224_6_q1(v224_6_q1),.v224_7_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_7_address0),.v224_7_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_7_ce0),.v224_7_q0(v224_7_q0),.v224_7_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_7_address1),.v224_7_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_7_ce1),.v224_7_q1(v224_7_q1),.empty_11(trunc_ln31_reg_215),.mul_ln38(mul_ln38_reg_210),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_1_ce1),.v228_1_q1(v228_1_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_d1),.v229_q1(v229_q1),.v4(v4),.cmp11(cmp11_reg_230),.empty(trunc_ln31_1_reg_220),.grp_fu_235_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_235_p_din0),.grp_fu_235_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_235_p_din1),.grp_fu_235_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_235_p_opcode),.grp_fu_235_p_dout0(grp_fu_156_p_dout0),.grp_fu_235_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_235_p_ce),.grp_fu_239_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_239_p_din0),.grp_fu_239_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_239_p_din1),.grp_fu_239_p_dout0(grp_fu_160_p_dout0),.grp_fu_239_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_239_p_ce),.grp_fu_243_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_243_p_din0),.grp_fu_243_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_243_p_din1),.grp_fu_243_p_dout0(grp_fu_164_p_dout0),.grp_fu_243_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_243_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U108(.din0(mul_ln38_fu_152_p0),.din1(mul_ln38_fu_152_p1),.dout(mul_ln38_fu_152_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_70 <= 8'd0;
    end else if (((icmp_ln31_fu_126_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        v5_fu_70 <= add_ln31_fu_132_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_reg_230 <= cmp11_fu_181_p2;
        lshr_ln31_1_reg_225 <= {{v5_1_reg_199[7:3]}};
        trunc_ln31_1_reg_220 <= trunc_ln31_1_fu_167_p1;
        trunc_ln31_reg_215 <= trunc_ln31_fu_163_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln38_reg_210 <= mul_ln38_fu_152_p2;
        v5_1_reg_199 <= v5_fu_70;
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
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln31_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln31_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_235_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_235_p_ce;
    end else begin
        grp_fu_235_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_239_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_239_p_ce;
    end else begin
        grp_fu_239_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_243_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_243_p_ce;
    end else begin
        grp_fu_243_ce = 1'b1;
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
            if (((icmp_ln31_fu_126_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_132_p2 = (v5_fu_70 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (v236_empty_n == 1'b0));
end
assign cmp11_fu_181_p2 = ((v5_1_reg_199 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_156_p_ce = grp_fu_235_ce;
assign grp_fu_156_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_235_p_din0;
assign grp_fu_156_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_235_p_din1;
assign grp_fu_156_p_opcode = 2'd0;
assign grp_fu_160_p_ce = grp_fu_239_ce;
assign grp_fu_160_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_239_p_din0;
assign grp_fu_160_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_239_p_din1;
assign grp_fu_164_p_ce = grp_fu_243_ce;
assign grp_fu_164_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_243_p_din0;
assign grp_fu_164_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_grp_fu_243_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_ap_start_reg;
assign icmp_ln31_fu_126_p2 = ((v5_fu_70 == 8'd190) ? 1'b1 : 1'b0);
assign lshr_ln_fu_138_p4 = {{v5_fu_70[7:1]}};
assign mul_ln38_fu_152_p0 = mul_ln38_fu_152_p00;
assign mul_ln38_fu_152_p00 = lshr_ln_fu_138_p4;
assign mul_ln38_fu_152_p1 = 15'd220;
assign trunc_ln31_1_fu_167_p1 = v5_1_reg_199[0:0];
assign trunc_ln31_fu_163_p1 = v5_1_reg_199[2:0];
assign v224_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_address0;
assign v224_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_address1;
assign v224_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_ce0;
assign v224_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_0_ce1;
assign v224_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_1_address0;
assign v224_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_1_address1;
assign v224_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_1_ce0;
assign v224_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_1_ce1;
assign v224_2_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_address0;
assign v224_2_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_address1;
assign v224_2_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_ce0;
assign v224_2_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_2_ce1;
assign v224_3_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_3_address0;
assign v224_3_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_3_address1;
assign v224_3_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_3_ce0;
assign v224_3_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_3_ce1;
assign v224_4_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_4_address0;
assign v224_4_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_4_address1;
assign v224_4_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_4_ce0;
assign v224_4_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_4_ce1;
assign v224_5_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_5_address0;
assign v224_5_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_5_address1;
assign v224_5_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_5_ce0;
assign v224_5_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_5_ce1;
assign v224_6_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_6_address0;
assign v224_6_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_6_address1;
assign v224_6_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_6_ce0;
assign v224_6_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_6_ce1;
assign v224_7_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_7_address0;
assign v224_7_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_7_address1;
assign v224_7_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_7_ce0;
assign v224_7_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v224_7_ce1;
assign v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v228_1_ce1;
assign v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_address0;
assign v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_address1;
assign v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_ce0;
assign v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_ce1;
assign v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_d0;
assign v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_d1;
assign v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_we0;
assign v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_86_v229_we1;
assign v236_read = v236_read_local;
endmodule 