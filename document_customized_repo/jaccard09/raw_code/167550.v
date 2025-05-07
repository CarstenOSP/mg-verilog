module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_188_p_din0,grp_fu_188_p_din1,grp_fu_188_p_opcode,grp_fu_188_p_dout0,grp_fu_188_p_ce,grp_fu_192_p_din0,grp_fu_192_p_din1,grp_fu_192_p_dout0,grp_fu_192_p_ce,grp_fu_196_p_din0,grp_fu_196_p_din1,grp_fu_196_p_dout0,grp_fu_196_p_ce); 
parameter    ap_ST_fsm_state1 = 6'd1;
parameter    ap_ST_fsm_state2 = 6'd2;
parameter    ap_ST_fsm_state3 = 6'd4;
parameter    ap_ST_fsm_state4 = 6'd8;
parameter    ap_ST_fsm_state5 = 6'd16;
parameter    ap_ST_fsm_state6 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
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
output  [31:0] grp_fu_188_p_din0;
output  [31:0] grp_fu_188_p_din1;
output  [1:0] grp_fu_188_p_opcode;
input  [31:0] grp_fu_188_p_dout0;
output   grp_fu_188_p_ce;
output  [31:0] grp_fu_192_p_din0;
output  [31:0] grp_fu_192_p_din1;
input  [31:0] grp_fu_192_p_dout0;
output   grp_fu_192_p_ce;
output  [31:0] grp_fu_196_p_din0;
output  [31:0] grp_fu_196_p_din1;
input  [31:0] grp_fu_196_p_dout0;
output   grp_fu_196_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v226_address0;
reg v226_ce0;
reg[15:0] v225_address0;
reg v225_ce0;
reg v225_we0;
reg[31:0] v225_d0;
reg[15:0] v225_address1;
reg v225_ce1;
reg v225_we1;
reg[31:0] v225_d1;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln168_fu_141_p2;
reg   [7:0] v114_1_reg_218;
wire   [12:0] mul_ln175_fu_161_p2;
reg   [12:0] mul_ln175_reg_229;
wire   [2:0] trunc_ln168_fu_178_p1;
reg   [2:0] trunc_ln168_reg_235;
wire    ap_CS_fsm_state3;
wire   [0:0] cmp11_fu_182_p2;
reg   [0:0] cmp11_reg_241;
reg   [6:0] tmp_reg_246;
wire   [7:0] or_ln_fu_197_p3;
reg   [7:0] or_ln_reg_251;
wire    ap_CS_fsm_state5;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v226_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_0_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_0_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_2_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_2_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_2_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_4_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_4_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_4_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_4_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_6_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_6_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_6_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_6_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_256_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_256_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_256_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_256_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_260_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_260_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_260_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_264_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_264_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_264_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v226_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_1_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_1_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_3_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_3_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_3_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_5_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_5_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_5_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_5_ce1;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_7_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_7_ce0;
wire   [12:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_7_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_7_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_256_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_256_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_256_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_256_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_260_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_260_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_260_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_264_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_264_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_264_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_start_reg;
wire    ap_CS_fsm_state6;
reg   [7:0] v114_fu_74;
wire   [7:0] add_ln168_fu_167_p2;
reg    ap_block_state2;
reg    v236_write_local;
wire   [4:0] lshr_ln_fu_147_p4;
wire   [4:0] mul_ln175_fu_161_p0;
wire   [8:0] mul_ln175_fu_161_p1;
reg   [31:0] grp_fu_256_p0;
reg   [31:0] grp_fu_256_p1;
reg    grp_fu_256_ce;
reg   [31:0] grp_fu_260_p0;
reg   [31:0] grp_fu_260_p1;
reg    grp_fu_260_ce;
reg   [31:0] grp_fu_264_p0;
reg   [31:0] grp_fu_264_p1;
reg    grp_fu_264_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [12:0] mul_ln175_fu_161_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_start_reg = 1'b0;
#0 v114_fu_74 = 8'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_ready),.zext_ln168(v114_1_reg_218),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175(mul_ln175_reg_229),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_2_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_4_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_4_address0),.v227_4_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_4_ce0),.v227_4_q0(v227_4_q0),.v227_4_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_4_address1),.v227_4_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_4_ce1),.v227_4_q1(v227_4_q1),.v227_6_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_6_address0),.v227_6_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_6_ce0),.v227_6_q0(v227_6_q0),.v227_6_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_6_address1),.v227_6_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_6_ce1),.v227_6_q1(v227_6_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_d1),.v225_q1(v225_q1),.cmp11(cmp11_reg_241),.empty(trunc_ln168_reg_235),.grp_fu_256_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_256_p_din0),.grp_fu_256_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_256_p_din1),.grp_fu_256_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_256_p_opcode),.grp_fu_256_p_dout0(grp_fu_188_p_dout0),.grp_fu_256_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_256_p_ce),.grp_fu_260_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_260_p_din0),.grp_fu_260_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_260_p_din1),.grp_fu_260_p_dout0(grp_fu_192_p_dout0),.grp_fu_260_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_260_p_ce),.grp_fu_264_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_264_p_din0),.grp_fu_264_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_264_p_din1),.grp_fu_264_p_dout0(grp_fu_196_p_dout0),.grp_fu_264_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_264_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_53 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_ready),.zext_ln169_1(or_ln_reg_251),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175(mul_ln175_reg_229),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_3_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_3_ce1),.v227_3_q1(v227_3_q1),.v227_5_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_5_address0),.v227_5_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_5_ce0),.v227_5_q0(v227_5_q0),.v227_5_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_5_address1),.v227_5_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_5_ce1),.v227_5_q1(v227_5_q1),.v227_7_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_7_address0),.v227_7_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_7_ce0),.v227_7_q0(v227_7_q0),.v227_7_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_7_address1),.v227_7_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_7_ce1),.v227_7_q1(v227_7_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_d1),.v225_q1(v225_q1),.empty(trunc_ln168_reg_235),.grp_fu_256_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_256_p_din0),.grp_fu_256_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_256_p_din1),.grp_fu_256_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_256_p_opcode),.grp_fu_256_p_dout0(grp_fu_188_p_dout0),.grp_fu_256_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_256_p_ce),.grp_fu_260_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_260_p_din0),.grp_fu_260_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_260_p_din1),.grp_fu_260_p_dout0(grp_fu_192_p_dout0),.grp_fu_260_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_260_p_ce),.grp_fu_264_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_264_p_din0),.grp_fu_264_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_264_p_din1),.grp_fu_264_p_dout0(grp_fu_196_p_dout0),.grp_fu_264_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_264_p_ce));
kernel_2mm_mul_5ns_9ns_13_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 5 ),.din1_WIDTH( 9 ),.dout_WIDTH( 13 ))
mul_5ns_9ns_13_1_1_U71(.din0(mul_ln175_fu_161_p0),.din1(mul_ln175_fu_161_p1),.dout(mul_ln175_fu_161_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v114_fu_74 <= 8'd0;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_141_p2 == 1'd1))) begin
        v114_fu_74 <= add_ln168_fu_167_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_reg_241 <= cmp11_fu_182_p2;
        tmp_reg_246 <= {{v114_1_reg_218[7:1]}};
        trunc_ln168_reg_235 <= trunc_ln168_fu_178_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln175_reg_229 <= mul_ln175_fu_161_p2;
        v114_1_reg_218 <= v114_fu_74;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        or_ln_reg_251[7 : 1] <= or_ln_fu_197_p3[7 : 1];
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
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_141_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_141_p2 == 1'd0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_256_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_256_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_256_p_ce;
    end else begin
        grp_fu_256_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_256_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_256_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_256_p_din0;
    end else begin
        grp_fu_256_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_256_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_256_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_256_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_256_p_din1;
    end else begin
        grp_fu_256_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_260_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_260_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_260_p_ce;
    end else begin
        grp_fu_260_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_260_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_260_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_260_p_din0;
    end else begin
        grp_fu_260_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_260_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_260_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_260_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_260_p_din1;
    end else begin
        grp_fu_260_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_264_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_264_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_264_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_264_p_ce;
    end else begin
        grp_fu_264_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_264_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_264_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_264_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_264_p_din0;
    end else begin
        grp_fu_264_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_264_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_grp_fu_264_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_264_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_grp_fu_264_p_din1;
    end else begin
        grp_fu_264_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v226_address0;
    end else begin
        v226_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v226_ce0;
    end else begin
        v226_ce0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_141_p2 == 1'd0))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_141_p2 == 1'd0))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_141_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln168_fu_141_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln168_fu_167_p2 = (v114_fu_74 + 8'd2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state2 = ((icmp_ln168_fu_141_p2 == 1'd0) & (v236_full_n == 1'b0));
end
assign cmp11_fu_182_p2 = ((v114_1_reg_218 == 8'd0) ? 1'b1 : 1'b0);
assign grp_fu_188_p_ce = grp_fu_256_ce;
assign grp_fu_188_p_din0 = grp_fu_256_p0;
assign grp_fu_188_p_din1 = grp_fu_256_p1;
assign grp_fu_188_p_opcode = 2'd0;
assign grp_fu_192_p_ce = grp_fu_260_ce;
assign grp_fu_192_p_din0 = grp_fu_260_p0;
assign grp_fu_192_p_din1 = grp_fu_260_p1;
assign grp_fu_196_p_ce = grp_fu_264_ce;
assign grp_fu_196_p_din0 = grp_fu_264_p0;
assign grp_fu_196_p_din1 = grp_fu_264_p1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_ap_start_reg;
assign icmp_ln168_fu_141_p2 = ((v114_fu_74 < 8'd210) ? 1'b1 : 1'b0);
assign lshr_ln_fu_147_p4 = {{v114_fu_74[7:3]}};
assign mul_ln175_fu_161_p0 = mul_ln175_fu_161_p00;
assign mul_ln175_fu_161_p00 = lshr_ln_fu_147_p4;
assign mul_ln175_fu_161_p1 = 13'd190;
assign or_ln_fu_197_p3 = {{tmp_reg_246}, {1'd1}};
assign trunc_ln168_fu_178_p1 = v114_1_reg_218[2:0];
assign v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_3_ce1;
assign v227_4_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_4_address0;
assign v227_4_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_4_address1;
assign v227_4_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_4_ce0;
assign v227_4_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_4_ce1;
assign v227_5_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_5_address0;
assign v227_5_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_5_address1;
assign v227_5_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_5_ce0;
assign v227_5_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_5_ce1;
assign v227_6_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_6_address0;
assign v227_6_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_6_address1;
assign v227_6_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_6_ce0;
assign v227_6_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_92_v227_6_ce1;
assign v227_7_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_7_address0;
assign v227_7_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_7_address1;
assign v227_7_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_7_ce0;
assign v227_7_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_113_v227_7_ce1;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
always @ (posedge ap_clk) begin
    or_ln_reg_251[0] <= 1'b1;
end
endmodule 