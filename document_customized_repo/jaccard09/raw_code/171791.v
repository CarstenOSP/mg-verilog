module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce); 
parameter    ap_ST_fsm_state1 = 9'd1;
parameter    ap_ST_fsm_state2 = 9'd2;
parameter    ap_ST_fsm_state3 = 9'd4;
parameter    ap_ST_fsm_state4 = 9'd8;
parameter    ap_ST_fsm_state5 = 9'd16;
parameter    ap_ST_fsm_state6 = 9'd32;
parameter    ap_ST_fsm_state7 = 9'd64;
parameter    ap_ST_fsm_state8 = 9'd128;
parameter    ap_ST_fsm_state9 = 9'd256;
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
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
reg   [14:0] tmp_reg_257;
wire    ap_CS_fsm_state2;
reg   [13:0] tmp_3_reg_262;
wire   [0:0] icmp_ln31_fu_187_p2;
reg   [0:0] icmp_ln31_reg_268;
wire  signed [15:0] or_ln_fu_193_p3;
reg   [15:0] or_ln_reg_272;
wire    ap_CS_fsm_state3;
wire   [15:0] mul_ln32_fu_200_p2;
reg   [15:0] mul_ln32_reg_277;
wire  signed [15:0] or_ln31_1_cast_fu_206_p3;
reg   [15:0] or_ln31_1_cast_reg_282;
wire    ap_CS_fsm_state5;
wire   [15:0] mul_ln38_fu_213_p2;
reg   [15:0] mul_ln38_reg_287;
wire  signed [15:0] or_ln31_2_fu_229_p3;
reg   [15:0] or_ln31_2_reg_292;
wire    ap_CS_fsm_state7;
wire   [15:0] mul_ln32_1_fu_236_p2;
reg   [15:0] mul_ln32_1_reg_297;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_302_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_302_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_302_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_302_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_306_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_306_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_306_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_310_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_310_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_310_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_302_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_302_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_302_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_302_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_306_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_306_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_306_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_302_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_302_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_302_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_302_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_306_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_306_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_306_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_302_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_302_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_302_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_302_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_306_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_306_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_306_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg   [63:0] v5_fu_76;
wire   [63:0] add_ln31_fu_219_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [61:0] tmp_s_fu_159_p4;
wire   [63:0] or_ln31_1_fu_179_p3;
wire  signed [15:0] mul_ln32_fu_200_p0;
wire   [8:0] mul_ln32_fu_200_p1;
wire  signed [15:0] mul_ln38_fu_213_p0;
wire   [8:0] mul_ln38_fu_213_p1;
wire  signed [15:0] mul_ln32_1_fu_236_p0;
wire   [8:0] mul_ln32_1_fu_236_p1;
reg   [31:0] grp_fu_302_p0;
reg   [31:0] grp_fu_302_p1;
reg    grp_fu_302_ce;
reg   [31:0] grp_fu_306_p0;
reg   [31:0] grp_fu_306_p1;
reg    grp_fu_306_ce;
reg    grp_fu_310_ce;
reg   [8:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_start_reg = 1'b0;
#0 v5_fu_76 = 64'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_ready),.v5(v5_fu_76),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v224_ce0),.v224_q0(v224_q0),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_d1),.v229_q1(v229_q1),.v4(v4),.grp_fu_302_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_302_p_din0),.grp_fu_302_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_302_p_din1),.grp_fu_302_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_302_p_opcode),.grp_fu_302_p_dout0(grp_fu_148_p_dout0),.grp_fu_302_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_302_p_ce),.grp_fu_306_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_306_p_din0),.grp_fu_306_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_306_p_din1),.grp_fu_306_p_dout0(grp_fu_152_p_dout0),.grp_fu_306_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_306_p_ce),.grp_fu_310_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_310_p_din0),.grp_fu_310_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_310_p_din1),.grp_fu_310_p_dout0(grp_fu_156_p_dout0),.grp_fu_310_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_310_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_24 grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_ready),.zext_ln32_1(or_ln_reg_272),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v224_ce0),.v224_q0(v224_q0),.mul_ln38_1(mul_ln32_reg_277),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_d1),.v229_q1(v229_q1),.grp_fu_302_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_302_p_din0),.grp_fu_302_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_302_p_din1),.grp_fu_302_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_302_p_opcode),.grp_fu_302_p_dout0(grp_fu_148_p_dout0),.grp_fu_302_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_302_p_ce),.grp_fu_306_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_306_p_din0),.grp_fu_306_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_306_p_din1),.grp_fu_306_p_dout0(grp_fu_152_p_dout0),.grp_fu_306_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_306_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_25 grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_ready),.or_ln31_1(or_ln31_1_cast_reg_282),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v224_ce0),.v224_q0(v224_q0),.mul_ln38_2(mul_ln38_reg_287),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_d1),.v229_q1(v229_q1),.grp_fu_302_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_302_p_din0),.grp_fu_302_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_302_p_din1),.grp_fu_302_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_302_p_opcode),.grp_fu_302_p_dout0(grp_fu_148_p_dout0),.grp_fu_302_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_302_p_ce),.grp_fu_306_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_306_p_din0),.grp_fu_306_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_306_p_din1),.grp_fu_306_p_dout0(grp_fu_152_p_dout0),.grp_fu_306_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_306_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_26 grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_ready),.zext_ln32_4(or_ln31_2_reg_292),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v224_ce0),.v224_q0(v224_q0),.mul_ln38_3(mul_ln32_1_reg_297),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_d1),.v229_q1(v229_q1),.grp_fu_302_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_302_p_din0),.grp_fu_302_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_302_p_din1),.grp_fu_302_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_302_p_opcode),.grp_fu_302_p_dout0(grp_fu_148_p_dout0),.grp_fu_302_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_302_p_ce),.grp_fu_306_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_306_p_din0),.grp_fu_306_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_306_p_din1),.grp_fu_306_p_dout0(grp_fu_152_p_dout0),.grp_fu_306_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_306_p_ce));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U274(.din0(mul_ln32_fu_200_p0),.din1(mul_ln32_fu_200_p1),.dout(mul_ln32_fu_200_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U275(.din0(mul_ln38_fu_213_p0),.din1(mul_ln38_fu_213_p1),.dout(mul_ln38_fu_213_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U276(.din0(mul_ln32_1_fu_236_p0),.din1(mul_ln32_1_fu_236_p1),.dout(mul_ln32_1_fu_236_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_76 <= 64'd0;
    end else if (((icmp_ln31_reg_268 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_done == 1'b1))) begin
        v5_fu_76 <= add_ln31_fu_219_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln31_reg_268 <= icmp_ln31_fu_187_p2;
        tmp_3_reg_262 <= {{v5_fu_76[15:2]}};
        tmp_reg_257 <= {{v5_fu_76[15:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        mul_ln32_1_reg_297 <= mul_ln32_1_fu_236_p2;
        or_ln31_2_reg_292[15 : 2] <= or_ln31_2_fu_229_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mul_ln32_reg_277 <= mul_ln32_fu_200_p2;
        or_ln_reg_272[15 : 1] <= or_ln_fu_193_p3[15 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        mul_ln38_reg_287 <= mul_ln38_fu_213_p2;
        or_ln31_1_cast_reg_282[15 : 2] <= or_ln31_1_cast_fu_206_p3[15 : 2];
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
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln31_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_302_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_302_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_302_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_302_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_302_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_302_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_302_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_302_p_ce;
    end else begin
        grp_fu_302_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_302_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_302_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_302_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_302_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_302_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_302_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_302_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_302_p_din0;
    end else begin
        grp_fu_302_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_302_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_302_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_302_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_302_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_302_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_302_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_302_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_302_p_din1;
    end else begin
        grp_fu_302_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_306_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_306_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_306_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_306_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_306_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_306_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_306_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_306_p_ce;
    end else begin
        grp_fu_306_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_306_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_306_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_306_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_306_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_306_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_306_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_306_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_306_p_din0;
    end else begin
        grp_fu_306_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_306_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_grp_fu_306_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_306_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_grp_fu_306_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_306_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_grp_fu_306_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_306_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_306_p_din1;
    end else begin
        grp_fu_306_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_310_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_310_p_ce;
    end else begin
        grp_fu_310_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v224_address0;
    end else begin
        v224_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v224_ce0;
    end else begin
        v224_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_v229_we1;
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
            if (((1'b1 == ap_CS_fsm_state3) & (grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((icmp_ln31_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_state5) & (grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln31_reg_268 == 1'd1) & (1'b1 == ap_CS_fsm_state5) & (grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln31_fu_219_p2 = (v5_fu_76 + 64'd4);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
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
assign grp_fu_148_p_ce = grp_fu_302_ce;
assign grp_fu_148_p_din0 = grp_fu_302_p0;
assign grp_fu_148_p_din1 = grp_fu_302_p1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_306_ce;
assign grp_fu_152_p_din0 = grp_fu_306_p0;
assign grp_fu_152_p_din1 = grp_fu_306_p1;
assign grp_fu_156_p_ce = grp_fu_310_ce;
assign grp_fu_156_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_310_p_din0;
assign grp_fu_156_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_grp_fu_310_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_104_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_116_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_26_fu_128_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_92_ap_start_reg;
assign icmp_ln31_fu_187_p2 = (($signed(or_ln31_1_fu_179_p3) < $signed(64'd190)) ? 1'b1 : 1'b0);
assign mul_ln32_1_fu_236_p0 = {{tmp_3_reg_262}, {2'd3}};
assign mul_ln32_1_fu_236_p1 = 16'd220;
assign mul_ln32_fu_200_p0 = {{tmp_reg_257}, {1'd1}};
assign mul_ln32_fu_200_p1 = 16'd220;
assign mul_ln38_fu_213_p0 = {{tmp_3_reg_262}, {2'd2}};
assign mul_ln38_fu_213_p1 = 16'd220;
assign or_ln31_1_cast_fu_206_p3 = {{tmp_3_reg_262}, {2'd2}};
assign or_ln31_1_fu_179_p3 = {{tmp_s_fu_159_p4}, {2'd2}};
assign or_ln31_2_fu_229_p3 = {{tmp_3_reg_262}, {2'd3}};
assign or_ln_fu_193_p3 = {{tmp_reg_257}, {1'd1}};
assign tmp_s_fu_159_p4 = {{v5_fu_76[63:2]}};
assign v236_read = v236_read_local;
always @ (posedge ap_clk) begin
    or_ln_reg_272[0] <= 1'b1;
    or_ln31_1_cast_reg_282[1:0] <= 2'b10;
    or_ln31_2_reg_292[1:0] <= 2'b11;
end
endmodule 