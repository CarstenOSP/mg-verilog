module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_0_address1,v226_0_ce1,v226_0_q1,v226_1_address0,v226_1_ce0,v226_1_q0,v226_1_address1,v226_1_ce1,v226_1_q1,v226_2_address0,v226_2_ce0,v226_2_q0,v226_2_address1,v226_2_ce1,v226_2_q1,v226_3_address0,v226_3_ce0,v226_3_q0,v226_3_address1,v226_3_ce1,v226_3_q1,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_0_address0,v225_0_ce0,v225_0_we0,v225_0_d0,v225_0_q0,v225_0_address1,v225_0_ce1,v225_0_we1,v225_0_d1,v225_0_q1,v225_1_address0,v225_1_ce0,v225_1_we0,v225_1_d0,v225_1_q0,v225_1_address1,v225_1_ce1,v225_1_we1,v225_1_d1,v225_1_q1,v113,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_opcode,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_opcode,grp_fu_156_p_dout0,grp_fu_156_p_ce,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_opcode,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_opcode,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce,grp_fu_172_p_din0,grp_fu_172_p_din1,grp_fu_172_p_dout0,grp_fu_172_p_ce,grp_fu_176_p_din0,grp_fu_176_p_din1,grp_fu_176_p_dout0,grp_fu_176_p_ce,grp_fu_180_p_din0,grp_fu_180_p_din1,grp_fu_180_p_dout0,grp_fu_180_p_ce); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [13:0] v226_0_address1;
output   v226_0_ce1;
input  [31:0] v226_0_q1;
output  [13:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
output  [13:0] v226_1_address1;
output   v226_1_ce1;
input  [31:0] v226_1_q1;
output  [13:0] v226_2_address0;
output   v226_2_ce0;
input  [31:0] v226_2_q0;
output  [13:0] v226_2_address1;
output   v226_2_ce1;
input  [31:0] v226_2_q1;
output  [13:0] v226_3_address0;
output   v226_3_ce0;
input  [31:0] v226_3_q0;
output  [13:0] v226_3_address1;
output   v226_3_ce1;
input  [31:0] v226_3_q1;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
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
output  [31:0] grp_fu_152_p_din0;
output  [31:0] grp_fu_152_p_din1;
output  [1:0] grp_fu_152_p_opcode;
input  [31:0] grp_fu_152_p_dout0;
output   grp_fu_152_p_ce;
output  [31:0] grp_fu_156_p_din0;
output  [31:0] grp_fu_156_p_din1;
output  [1:0] grp_fu_156_p_opcode;
input  [31:0] grp_fu_156_p_dout0;
output   grp_fu_156_p_ce;
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
output  [1:0] grp_fu_160_p_opcode;
input  [31:0] grp_fu_160_p_dout0;
output   grp_fu_160_p_ce;
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
output  [31:0] grp_fu_176_p_din0;
output  [31:0] grp_fu_176_p_din1;
input  [31:0] grp_fu_176_p_dout0;
output   grp_fu_176_p_ce;
output  [31:0] grp_fu_180_p_din0;
output  [31:0] grp_fu_180_p_din1;
input  [31:0] grp_fu_180_p_dout0;
output   grp_fu_180_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_132_p2;
reg   [15:0] phi_mul_load_reg_196;
wire   [1:0] trunc_ln168_fu_144_p1;
reg   [1:0] trunc_ln168_reg_204;
reg   [5:0] lshr_ln_reg_209;
wire   [0:0] cmp11_fu_160_p2;
reg   [0:0] cmp11_reg_214;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_d1;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_d0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_d1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_0_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_0_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_1_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_1_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_2_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_2_ce1;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_3_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_3_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_219_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_219_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_219_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_219_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_223_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_223_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_223_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_223_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_227_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_227_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_227_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_227_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_231_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_231_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_231_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_231_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_235_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_235_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_235_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_239_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_239_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_239_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_243_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_243_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_243_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_247_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_247_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_247_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_start_reg;
reg    ap_block_state2_ignore_call5;
wire    ap_CS_fsm_state3;
reg   [15:0] phi_mul_fu_64;
wire   [15:0] add_ln168_1_fu_126_p2;
reg    ap_block_state2;
reg   [7:0] v114_fu_68;
wire   [7:0] add_ln168_fu_138_p2;
reg    v236_write_local;
reg    grp_fu_219_ce;
reg    grp_fu_223_ce;
reg    grp_fu_227_ce;
reg    grp_fu_231_ce;
reg    grp_fu_235_ce;
reg    grp_fu_239_ce;
reg    grp_fu_243_ce;
reg    grp_fu_247_ce;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_start_reg = 1'b0;
#0 phi_mul_fu_64 = 16'd0;
#0 v114_fu_68 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_ready),.cmp11(cmp11_reg_214),.v225_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_address0),.v225_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_ce0),.v225_1_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_we0),.v225_1_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_d0),.v225_1_q0(v225_1_q0),.v225_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_address1),.v225_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_ce1),.v225_1_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_we1),.v225_1_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_d1),.v225_1_q1(v225_1_q1),.v225_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_address0),.v225_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_ce0),.v225_0_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_we0),.v225_0_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_d0),.v225_0_q0(v225_0_q0),.v225_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_address1),.v225_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_ce1),.v225_0_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_we1),.v225_0_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_d1),.v225_0_q1(v225_0_q1),.zext_ln168_1(lshr_ln_reg_209),.v226_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_0_address0),.v226_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_0_ce0),.v226_0_q0(v226_0_q0),.v226_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_0_address1),.v226_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_0_ce1),.v226_0_q1(v226_0_q1),.v226_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_1_address0),.v226_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_1_ce0),.v226_1_q0(v226_1_q0),.v226_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_1_address1),.v226_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_1_ce1),.v226_1_q1(v226_1_q1),.v226_2_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_2_address0),.v226_2_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_2_ce0),.v226_2_q0(v226_2_q0),.v226_2_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_2_address1),.v226_2_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_2_ce1),.v226_2_q1(v226_2_q1),.v226_3_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_3_address0),.v226_3_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_3_ce0),.v226_3_q0(v226_3_q0),.v226_3_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_3_address1),.v226_3_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_3_ce1),.v226_3_q1(v226_3_q1),.empty(trunc_ln168_reg_204),.v113(v113),.phi_mul(phi_mul_load_reg_196),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v227_ce1),.v227_q1(v227_q1),.grp_fu_219_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_219_p_din0),.grp_fu_219_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_219_p_din1),.grp_fu_219_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_219_p_opcode),.grp_fu_219_p_dout0(grp_fu_152_p_dout0),.grp_fu_219_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_219_p_ce),.grp_fu_223_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_223_p_din0),.grp_fu_223_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_223_p_din1),.grp_fu_223_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_223_p_opcode),.grp_fu_223_p_dout0(grp_fu_156_p_dout0),.grp_fu_223_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_223_p_ce),.grp_fu_227_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_227_p_din0),.grp_fu_227_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_227_p_din1),.grp_fu_227_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_227_p_opcode),.grp_fu_227_p_dout0(grp_fu_160_p_dout0),.grp_fu_227_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_227_p_ce),.grp_fu_231_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_231_p_din0),.grp_fu_231_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_231_p_din1),.grp_fu_231_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_231_p_opcode),.grp_fu_231_p_dout0(grp_fu_164_p_dout0),.grp_fu_231_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_231_p_ce),.grp_fu_235_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_235_p_din0),.grp_fu_235_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_235_p_din1),.grp_fu_235_p_dout0(grp_fu_168_p_dout0),.grp_fu_235_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_235_p_ce),.grp_fu_239_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_239_p_din0),.grp_fu_239_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_239_p_din1),.grp_fu_239_p_dout0(grp_fu_172_p_dout0),.grp_fu_239_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_239_p_ce),.grp_fu_243_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_243_p_din0),.grp_fu_243_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_243_p_din1),.grp_fu_243_p_dout0(grp_fu_176_p_dout0),.grp_fu_243_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_243_p_ce),.grp_fu_247_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_247_p_din0),.grp_fu_247_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_247_p_din1),.grp_fu_247_p_dout0(grp_fu_180_p_dout0),.grp_fu_247_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_247_p_ce));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_state2_ignore_call5) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_132_p2 == 1'd0))) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        phi_mul_fu_64 <= 16'd0;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_132_p2 == 1'd0))) begin
        phi_mul_fu_64 <= add_ln168_1_fu_126_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_68 <= 8'd0;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_132_p2 == 1'd0))) begin
        v114_fu_68 <= add_ln168_fu_138_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_reg_214 <= cmp11_fu_160_p2;
        lshr_ln_reg_209 <= {{v114_fu_68[7:2]}};
        phi_mul_load_reg_196 <= phi_mul_fu_64;
        trunc_ln168_reg_204 <= trunc_ln168_fu_144_p1;
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
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_132_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_132_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_219_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_219_p_ce;
    end else begin
        grp_fu_219_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_223_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_223_p_ce;
    end else begin
        grp_fu_223_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_227_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_227_p_ce;
    end else begin
        grp_fu_227_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_231_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_231_p_ce;
    end else begin
        grp_fu_231_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_235_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_235_p_ce;
    end else begin
        grp_fu_235_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_239_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_239_p_ce;
    end else begin
        grp_fu_239_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_243_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_243_p_ce;
    end else begin
        grp_fu_243_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_247_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_247_p_ce;
    end else begin
        grp_fu_247_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_132_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_132_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_132_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_132_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_1_fu_126_p2 = (phi_mul_fu_64 + 16'd190);
assign add_ln168_fu_138_p2 = (v114_fu_68 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state2 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_132_p2 == 1'd1));
end
always @ (*) begin
    ap_block_state2_ignore_call5 = ((v236_full_n == 1'b0) & (icmp_ln168_fu_132_p2 == 1'd1));
end
assign cmp11_fu_160_p2 = ((v114_fu_68 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_152_p_ce = grp_fu_219_ce;
assign grp_fu_152_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_219_p_din0;
assign grp_fu_152_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_219_p_din1;
assign grp_fu_152_p_opcode = 2'd0;
assign grp_fu_156_p_ce = grp_fu_223_ce;
assign grp_fu_156_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_223_p_din0;
assign grp_fu_156_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_223_p_din1;
assign grp_fu_156_p_opcode = 2'd0;
assign grp_fu_160_p_ce = grp_fu_227_ce;
assign grp_fu_160_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_227_p_din0;
assign grp_fu_160_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_227_p_din1;
assign grp_fu_160_p_opcode = 2'd0;
assign grp_fu_164_p_ce = grp_fu_231_ce;
assign grp_fu_164_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_231_p_din0;
assign grp_fu_164_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_231_p_din1;
assign grp_fu_164_p_opcode = 2'd0;
assign grp_fu_168_p_ce = grp_fu_235_ce;
assign grp_fu_168_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_235_p_din0;
assign grp_fu_168_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_235_p_din1;
assign grp_fu_172_p_ce = grp_fu_239_ce;
assign grp_fu_172_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_239_p_din0;
assign grp_fu_172_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_239_p_din1;
assign grp_fu_176_p_ce = grp_fu_243_ce;
assign grp_fu_176_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_243_p_din0;
assign grp_fu_176_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_243_p_din1;
assign grp_fu_180_p_ce = grp_fu_247_ce;
assign grp_fu_180_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_247_p_din0;
assign grp_fu_180_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_grp_fu_247_p_din1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_ap_start_reg;
assign icmp_ln168_fu_132_p2 = ((v114_fu_68 == 8'd210) ? 1'b1 : 1'b0);
assign trunc_ln168_fu_144_p1 = v114_fu_68[1:0];
assign v225_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_address0;
assign v225_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_address1;
assign v225_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_ce0;
assign v225_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_ce1;
assign v225_0_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_d0;
assign v225_0_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_d1;
assign v225_0_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_we0;
assign v225_0_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_0_we1;
assign v225_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_address0;
assign v225_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_address1;
assign v225_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_ce0;
assign v225_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_ce1;
assign v225_1_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_d0;
assign v225_1_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_d1;
assign v225_1_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_we0;
assign v225_1_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v225_1_we1;
assign v226_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_0_address0;
assign v226_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_0_address1;
assign v226_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_0_ce0;
assign v226_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_0_ce1;
assign v226_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_1_address0;
assign v226_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_1_address1;
assign v226_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_1_ce0;
assign v226_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_1_ce1;
assign v226_2_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_2_address0;
assign v226_2_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_2_address1;
assign v226_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_2_ce0;
assign v226_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_2_ce1;
assign v226_3_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_3_address0;
assign v226_3_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_3_address1;
assign v226_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_3_ce0;
assign v226_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v226_3_ce1;
assign v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v227_address0;
assign v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v227_address1;
assign v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v227_ce0;
assign v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_86_v227_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
endmodule 