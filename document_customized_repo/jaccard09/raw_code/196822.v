module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_0_address0,v224_0_ce0,v224_0_q0,v224_1_address0,v224_1_ce0,v224_1_q0,v228_address0,v228_ce0,v228_q0,v228_address1,v228_ce1,v228_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_opcode,grp_fu_128_p_dout0,grp_fu_128_p_ce,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce); 
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
output  [14:0] v224_0_address0;
output   v224_0_ce0;
input  [31:0] v224_0_q0;
output  [14:0] v224_1_address0;
output   v224_1_ce0;
input  [31:0] v224_1_q0;
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
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
output  [1:0] grp_fu_128_p_opcode;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
input  [31:0] grp_fu_132_p_dout0;
output   grp_fu_132_p_ce;
output  [31:0] grp_fu_136_p_din0;
output  [31:0] grp_fu_136_p_din1;
input  [31:0] grp_fu_136_p_dout0;
output   grp_fu_136_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[14:0] v224_0_address0;
reg v224_0_ce0;
reg[14:0] v224_1_address0;
reg v224_1_ce0;
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
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire   [15:0] trunc_ln31_fu_162_p1;
reg   [15:0] trunc_ln31_reg_314;
wire    ap_CS_fsm_state2;
reg   [14:0] lshr_ln_reg_319;
wire   [0:0] cmp11_0_fu_176_p2;
reg   [0:0] cmp11_0_reg_325;
reg   [6:0] tmp_reg_330;
reg   [13:0] tmp_3_reg_335;
wire   [0:0] icmp_ln31_fu_220_p2;
reg   [0:0] icmp_ln31_reg_341;
wire   [15:0] mul_ln38_fu_237_p2;
reg   [15:0] mul_ln38_reg_345;
wire    ap_CS_fsm_state4;
wire   [15:0] mul_ln38_1_fu_250_p2;
reg   [15:0] mul_ln38_1_reg_350;
wire    ap_CS_fsm_state6;
wire   [14:0] or_ln31_2_fu_256_p3;
reg   [14:0] or_ln31_2_reg_355;
reg   [5:0] tmp_6_reg_361;
wire   [15:0] mul_ln38_2_fu_293_p2;
reg   [15:0] mul_ln38_2_reg_366;
wire    ap_CS_fsm_state8;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v224_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v224_0_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_371_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_371_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_371_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_371_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_375_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_375_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_375_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_379_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_379_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_379_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v224_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v224_1_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_371_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_371_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_371_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_371_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_375_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_375_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_375_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v224_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v224_0_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_371_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_371_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_371_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_371_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_375_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_375_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_375_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_ready;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v224_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v224_1_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v228_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v228_ce0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v228_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v228_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_371_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_371_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_371_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_371_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_375_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_375_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_375_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg   [63:0] v5_fu_88;
wire   [63:0] add_ln31_fu_272_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [61:0] tmp_2_fu_192_p4;
wire   [63:0] or_ln31_1_fu_212_p3;
wire   [7:0] or_ln_fu_226_p3;
wire   [7:0] mul_ln38_fu_237_p0;
wire   [8:0] mul_ln38_fu_237_p1;
wire  signed [15:0] mul_ln38_1_fu_250_p0;
wire   [8:0] mul_ln38_1_fu_250_p1;
wire   [7:0] or_ln31_3_fu_282_p3;
wire   [7:0] mul_ln38_2_fu_293_p0;
wire   [8:0] mul_ln38_2_fu_293_p1;
reg   [31:0] grp_fu_371_p0;
reg   [31:0] grp_fu_371_p1;
reg    grp_fu_371_ce;
reg   [31:0] grp_fu_375_p0;
reg   [31:0] grp_fu_375_p1;
reg    grp_fu_375_ce;
reg    grp_fu_379_ce;
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
wire   [15:0] mul_ln38_2_fu_293_p00;
wire   [15:0] mul_ln38_fu_237_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_start_reg = 1'b0;
#0 v5_fu_88 = 64'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_ready),.zext_ln31(lshr_ln_reg_319),.v224_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v224_0_address0),.v224_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v224_0_ce0),.v224_0_q0(v224_0_q0),.v5(trunc_ln31_reg_314),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_d1),.v229_q1(v229_q1),.v4(v4),.cmp11_0(cmp11_0_reg_325),.grp_fu_371_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_371_p_din0),.grp_fu_371_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_371_p_din1),.grp_fu_371_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_371_p_opcode),.grp_fu_371_p_dout0(grp_fu_128_p_dout0),.grp_fu_371_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_371_p_ce),.grp_fu_375_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_375_p_din0),.grp_fu_375_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_375_p_din1),.grp_fu_375_p_dout0(grp_fu_132_p_dout0),.grp_fu_375_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_375_p_ce),.grp_fu_379_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_379_p_din0),.grp_fu_379_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_379_p_din1),.grp_fu_379_p_dout0(grp_fu_136_p_dout0),.grp_fu_379_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_379_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_23 grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_ready),.zext_ln31(lshr_ln_reg_319),.v224_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v224_1_address0),.v224_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v224_1_ce0),.v224_1_q0(v224_1_q0),.mul_ln38_1(mul_ln38_reg_345),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_d1),.v229_q1(v229_q1),.grp_fu_371_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_371_p_din0),.grp_fu_371_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_371_p_din1),.grp_fu_371_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_371_p_opcode),.grp_fu_371_p_dout0(grp_fu_128_p_dout0),.grp_fu_371_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_371_p_ce),.grp_fu_375_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_375_p_din0),.grp_fu_375_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_375_p_din1),.grp_fu_375_p_dout0(grp_fu_132_p_dout0),.grp_fu_375_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_375_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_24 grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_ready),.zext_ln31_1(or_ln31_2_reg_355),.v224_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v224_0_address0),.v224_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v224_0_ce0),.v224_0_q0(v224_0_q0),.mul_ln38_2(mul_ln38_1_reg_350),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_d1),.v229_q1(v229_q1),.grp_fu_371_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_371_p_din0),.grp_fu_371_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_371_p_din1),.grp_fu_371_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_371_p_opcode),.grp_fu_371_p_dout0(grp_fu_128_p_dout0),.grp_fu_371_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_371_p_ce),.grp_fu_375_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_375_p_din0),.grp_fu_375_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_375_p_din1),.grp_fu_375_p_dout0(grp_fu_132_p_dout0),.grp_fu_375_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_375_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_25 grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_ready),.zext_ln31_1(or_ln31_2_reg_355),.v224_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v224_1_address0),.v224_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v224_1_ce0),.v224_1_q0(v224_1_q0),.mul_ln38_3(mul_ln38_2_reg_366),.v228_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v228_address0),.v228_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v228_ce0),.v228_q0(v228_q0),.v228_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v228_address1),.v228_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v228_ce1),.v228_q1(v228_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_d1),.v229_q1(v229_q1),.grp_fu_371_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_371_p_din0),.grp_fu_371_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_371_p_din1),.grp_fu_371_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_371_p_opcode),.grp_fu_371_p_dout0(grp_fu_128_p_dout0),.grp_fu_371_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_371_p_ce),.grp_fu_375_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_375_p_din0),.grp_fu_375_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_375_p_din1),.grp_fu_375_p_dout0(grp_fu_132_p_dout0),.grp_fu_375_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_375_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U148(.din0(mul_ln38_fu_237_p0),.din1(mul_ln38_fu_237_p1),.dout(mul_ln38_fu_237_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U149(.din0(mul_ln38_1_fu_250_p0),.din1(mul_ln38_1_fu_250_p1),.dout(mul_ln38_1_fu_250_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U150(.din0(mul_ln38_2_fu_293_p0),.din1(mul_ln38_2_fu_293_p1),.dout(mul_ln38_2_fu_293_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_88 <= 64'd0;
    end else if (((icmp_ln31_reg_341 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_done == 1'b1))) begin
        v5_fu_88 <= add_ln31_fu_272_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_0_reg_325 <= cmp11_0_fu_176_p2;
        icmp_ln31_reg_341 <= icmp_ln31_fu_220_p2;
        lshr_ln_reg_319 <= {{v5_fu_88[15:1]}};
        tmp_3_reg_335 <= {{v5_fu_88[15:2]}};
        tmp_reg_330 <= {{v5_fu_88[7:1]}};
        trunc_ln31_reg_314 <= trunc_ln31_fu_162_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mul_ln38_1_reg_350 <= mul_ln38_1_fu_250_p2;
        or_ln31_2_reg_355[14 : 1] <= or_ln31_2_fu_256_p3[14 : 1];
        tmp_6_reg_361 <= {{v5_fu_88[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln38_2_reg_366 <= mul_ln38_2_fu_293_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mul_ln38_reg_345 <= mul_ln38_fu_237_p2;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((icmp_ln31_reg_341 == 1'd0) & (1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_reg_341 == 1'd0) & (1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_371_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_371_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_371_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_371_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_371_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_371_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_371_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_371_p_ce;
    end else begin
        grp_fu_371_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_371_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_371_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_371_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_371_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_371_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_371_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_371_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_371_p_din0;
    end else begin
        grp_fu_371_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_371_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_371_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_371_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_371_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_371_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_371_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_371_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_371_p_din1;
    end else begin
        grp_fu_371_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_375_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_375_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_375_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_375_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_375_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_375_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_375_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_375_p_ce;
    end else begin
        grp_fu_375_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_375_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_375_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_375_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_375_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_375_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_375_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_375_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_375_p_din0;
    end else begin
        grp_fu_375_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_375_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_grp_fu_375_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_375_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_grp_fu_375_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_375_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_grp_fu_375_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_375_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_375_p_din1;
    end else begin
        grp_fu_375_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_379_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_379_p_ce;
    end else begin
        grp_fu_379_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v224_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v224_0_address0;
    end else begin
        v224_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v224_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v224_0_ce0;
    end else begin
        v224_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v224_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v224_1_address0;
    end else begin
        v224_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v224_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v224_1_ce0;
    end else begin
        v224_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v228_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v228_address0;
    end else begin
        v228_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v228_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v228_address1;
    end else begin
        v228_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v228_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v228_ce0;
    end else begin
        v228_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v228_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v228_ce1;
    end else begin
        v228_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_v229_we1;
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
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln31_reg_341 == 1'd0) & (1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln31_reg_341 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign add_ln31_fu_272_p2 = (v5_fu_88 + 64'd4);
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
assign cmp11_0_fu_176_p2 = ((v5_fu_88 == 64'd0) ? 1'b1 : 1'b0);
assign grp_fu_128_p_ce = grp_fu_371_ce;
assign grp_fu_128_p_din0 = grp_fu_371_p0;
assign grp_fu_128_p_din1 = grp_fu_371_p1;
assign grp_fu_128_p_opcode = 2'd0;
assign grp_fu_132_p_ce = grp_fu_375_ce;
assign grp_fu_132_p_din0 = grp_fu_375_p0;
assign grp_fu_132_p_din1 = grp_fu_375_p1;
assign grp_fu_136_p_ce = grp_fu_379_ce;
assign grp_fu_136_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_379_p_din0;
assign grp_fu_136_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_grp_fu_379_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_23_fu_118_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_24_fu_130_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_25_fu_142_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_104_ap_start_reg;
assign icmp_ln31_fu_220_p2 = (($signed(or_ln31_1_fu_212_p3) < $signed(64'd190)) ? 1'b1 : 1'b0);
assign mul_ln38_1_fu_250_p0 = {{tmp_3_reg_335}, {2'd2}};
assign mul_ln38_1_fu_250_p1 = 16'd220;
assign mul_ln38_2_fu_293_p0 = mul_ln38_2_fu_293_p00;
assign mul_ln38_2_fu_293_p00 = or_ln31_3_fu_282_p3;
assign mul_ln38_2_fu_293_p1 = 16'd220;
assign mul_ln38_fu_237_p0 = mul_ln38_fu_237_p00;
assign mul_ln38_fu_237_p00 = or_ln_fu_226_p3;
assign mul_ln38_fu_237_p1 = 16'd220;
assign or_ln31_1_fu_212_p3 = {{tmp_2_fu_192_p4}, {2'd2}};
assign or_ln31_2_fu_256_p3 = {{tmp_3_reg_335}, {1'd1}};
assign or_ln31_3_fu_282_p3 = {{tmp_6_reg_361}, {2'd3}};
assign or_ln_fu_226_p3 = {{tmp_reg_330}, {1'd1}};
assign tmp_2_fu_192_p4 = {{v5_fu_88[63:2]}};
assign trunc_ln31_fu_162_p1 = v5_fu_88[15:0];
assign v236_read = v236_read_local;
always @ (posedge ap_clk) begin
    or_ln31_2_reg_355[0] <= 1'b1;
end
endmodule 