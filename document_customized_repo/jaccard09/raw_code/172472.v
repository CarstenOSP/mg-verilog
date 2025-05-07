module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_1_address0,v226_1_ce0,v226_1_q0,v226_2_address0,v226_2_ce0,v226_2_q0,v226_3_address0,v226_3_ce0,v226_3_q0,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_opcode,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce); 
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
output  [12:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [12:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [12:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [12:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
output  [12:0] v227_2_address0;
output   v227_2_ce0;
input  [31:0] v227_2_q0;
output  [12:0] v227_2_address1;
output   v227_2_ce1;
input  [31:0] v227_2_q1;
output  [12:0] v227_3_address0;
output   v227_3_ce0;
input  [31:0] v227_3_q0;
output  [12:0] v227_3_address1;
output   v227_3_ce1;
input  [31:0] v227_3_q1;
output  [12:0] v227_4_address0;
output   v227_4_ce0;
input  [31:0] v227_4_q0;
output  [12:0] v227_4_address1;
output   v227_4_ce1;
input  [31:0] v227_4_q1;
output  [12:0] v227_5_address0;
output   v227_5_ce0;
input  [31:0] v227_5_q0;
output  [12:0] v227_5_address1;
output   v227_5_ce1;
input  [31:0] v227_5_q1;
output  [12:0] v227_6_address0;
output   v227_6_ce0;
input  [31:0] v227_6_q0;
output  [12:0] v227_6_address1;
output   v227_6_ce1;
input  [31:0] v227_6_q1;
output  [12:0] v227_7_address0;
output   v227_7_ce0;
input  [31:0] v227_7_q0;
output  [12:0] v227_7_address1;
output   v227_7_ce1;
input  [31:0] v227_7_q1;
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
output  [31:0] grp_fu_160_p_din0;
output  [31:0] grp_fu_160_p_din1;
output  [1:0] grp_fu_160_p_opcode;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_140_p2;
reg   [7:0] v114_1_reg_213;
wire   [12:0] mul_ln175_fu_166_p2;
reg   [12:0] mul_ln175_reg_224;
wire   [1:0] trunc_ln168_fu_177_p1;
reg   [1:0] trunc_ln168_reg_229;
wire    ap_CS_fsm_state3;
wire   [2:0] trunc_ln168_1_fu_181_p1;
reg   [2:0] trunc_ln168_1_reg_234;
reg   [5:0] lshr_ln168_1_reg_239;
wire   [0:0] cmp11_fu_195_p2;
reg   [0:0] cmp11_reg_244;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_0_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_1_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_2_ce0;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_3_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_0_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_0_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_1_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_1_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_2_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_2_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_3_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_3_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_4_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_4_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_5_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_5_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_6_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_6_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_7_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_7_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_249_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_249_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_249_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_249_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_253_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_253_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_253_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_257_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_257_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_257_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_start_reg;
wire    ap_CS_fsm_state4;
reg   [7:0] v114_fu_78;
wire   [7:0] add_ln168_fu_146_p2;
reg    ap_block_state2;
reg    v236_write_local;
wire   [4:0] lshr_ln_fu_152_p4;
wire   [4:0] mul_ln175_fu_166_p0;
wire   [8:0] mul_ln175_fu_166_p1;
reg    grp_fu_249_ce;
reg    grp_fu_253_ce;
reg    grp_fu_257_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire   [12:0] mul_ln175_fu_166_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_start_reg = 1'b0;
#0 v114_fu_78 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_ready),.zext_ln168_1(lshr_ln168_1_reg_239),.v226_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_0_address0),.v226_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_0_ce0),.v226_0_q0(v226_0_q0),.v226_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_1_address0),.v226_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_1_ce0),.v226_1_q0(v226_1_q0),.v226_2_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_2_address0),.v226_2_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_2_ce0),.v226_2_q0(v226_2_q0),.v226_3_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_3_address0),.v226_3_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_3_ce0),.v226_3_q0(v226_3_q0),.empty_11(trunc_ln168_reg_229),.v113(v113),.mul_ln175(mul_ln175_reg_224),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_3_ce1),.v227_3_q1(v227_3_q1),.v227_4_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_4_address0),.v227_4_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_4_ce0),.v227_4_q0(v227_4_q0),.v227_4_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_4_address1),.v227_4_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_4_ce1),.v227_4_q1(v227_4_q1),.v227_5_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_5_address0),.v227_5_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_5_ce0),.v227_5_q0(v227_5_q0),.v227_5_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_5_address1),.v227_5_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_5_ce1),.v227_5_q1(v227_5_q1),.v227_6_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_6_address0),.v227_6_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_6_ce0),.v227_6_q0(v227_6_q0),.v227_6_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_6_address1),.v227_6_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_6_ce1),.v227_6_q1(v227_6_q1),.v227_7_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_7_address0),.v227_7_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_7_ce0),.v227_7_q0(v227_7_q0),.v227_7_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_7_address1),.v227_7_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_7_ce1),.v227_7_q1(v227_7_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_d1),.v225_q1(v225_q1),.cmp11(cmp11_reg_244),.empty(trunc_ln168_1_reg_234),.grp_fu_249_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_249_p_din0),.grp_fu_249_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_249_p_din1),.grp_fu_249_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_249_p_opcode),.grp_fu_249_p_dout0(grp_fu_160_p_dout0),.grp_fu_249_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_249_p_ce),.grp_fu_253_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_253_p_din0),.grp_fu_253_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_253_p_din1),.grp_fu_253_p_dout0(grp_fu_164_p_dout0),.grp_fu_253_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_253_p_ce),.grp_fu_257_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_257_p_din0),.grp_fu_257_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_257_p_din1),.grp_fu_257_p_dout0(grp_fu_168_p_dout0),.grp_fu_257_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_257_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U56(.din0(mul_ln175_fu_166_p0),.din1(mul_ln175_fu_166_p1),.dout(mul_ln175_fu_166_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v114_fu_78 <= 8'd0;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_140_p2 == 1'd0))) begin
        v114_fu_78 <= add_ln168_fu_146_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_reg_244 <= cmp11_fu_195_p2;
        lshr_ln168_1_reg_239 <= {{v114_1_reg_213[7:2]}};
        trunc_ln168_1_reg_234 <= trunc_ln168_1_fu_181_p1;
        trunc_ln168_reg_229 <= trunc_ln168_fu_177_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln175_reg_224 <= mul_ln175_fu_166_p2;
        v114_1_reg_213 <= v114_fu_78;
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
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_140_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_140_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_249_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_249_p_ce;
    end else begin
        grp_fu_249_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_253_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_253_p_ce;
    end else begin
        grp_fu_253_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_257_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_257_p_ce;
    end else begin
        grp_fu_257_ce = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_140_p2 == 1'd1))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_140_p2 == 1'd1))) begin
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_140_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_140_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_done == 1'b1))) begin
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
assign add_ln168_fu_146_p2 = (v114_fu_78 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
always @ (*) begin
    ap_block_state2 = ((icmp_ln168_fu_140_p2 == 1'd1) & (v236_full_n == 1'b0));
end
assign cmp11_fu_195_p2 = ((v114_1_reg_213 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_160_p_ce = grp_fu_249_ce;
assign grp_fu_160_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_249_p_din0;
assign grp_fu_160_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_249_p_din1;
assign grp_fu_160_p_opcode = 2'd0;
assign grp_fu_164_p_ce = grp_fu_253_ce;
assign grp_fu_164_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_253_p_din0;
assign grp_fu_164_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_253_p_din1;
assign grp_fu_168_p_ce = grp_fu_257_ce;
assign grp_fu_168_p_din0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_257_p_din0;
assign grp_fu_168_p_din1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_grp_fu_257_p_din1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_ap_start_reg;
assign icmp_ln168_fu_140_p2 = ((v114_fu_78 == 8'd210) ? 1'b1 : 1'b0);
assign lshr_ln_fu_152_p4 = {{v114_fu_78[7:3]}};
assign mul_ln175_fu_166_p0 = mul_ln175_fu_166_p00;
assign mul_ln175_fu_166_p00 = lshr_ln_fu_152_p4;
assign mul_ln175_fu_166_p1 = 13'd190;
assign trunc_ln168_1_fu_181_p1 = v114_1_reg_213[2:0];
assign trunc_ln168_fu_177_p1 = v114_1_reg_213[1:0];
assign v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_address0;
assign v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_address1;
assign v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_ce0;
assign v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_ce1;
assign v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_d0;
assign v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_d1;
assign v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_we0;
assign v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v225_we1;
assign v226_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_0_address0;
assign v226_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_0_ce0;
assign v226_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_1_address0;
assign v226_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_1_ce0;
assign v226_2_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_2_address0;
assign v226_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_2_ce0;
assign v226_3_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_3_address0;
assign v226_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v226_3_ce0;
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_3_ce1;
assign v227_4_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_4_address0;
assign v227_4_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_4_address1;
assign v227_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_4_ce0;
assign v227_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_4_ce1;
assign v227_5_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_5_address0;
assign v227_5_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_5_address1;
assign v227_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_5_ce0;
assign v227_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_5_ce1;
assign v227_6_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_6_address0;
assign v227_6_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_6_address1;
assign v227_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_6_ce0;
assign v227_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_6_ce1;
assign v227_7_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_7_address0;
assign v227_7_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_7_address1;
assign v227_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_7_ce0;
assign v227_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_96_v227_7_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
endmodule 