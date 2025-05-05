module kernel_2mm_kernel_2mm_node0 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v236_dout,v236_empty_n,v236_read,v224_address0,v224_ce0,v224_q0,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1,v4,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_opcode,grp_fu_128_p_dout0,grp_fu_128_p_ce,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_dout0,grp_fu_132_p_ce,grp_fu_136_p_din0,grp_fu_136_p_din1,grp_fu_136_p_dout0,grp_fu_136_p_ce); 
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
reg[15:0] v224_address0;
reg v224_ce0;
reg[14:0] v228_0_address0;
reg v228_0_ce0;
reg[14:0] v228_0_address1;
reg v228_0_ce1;
reg[14:0] v228_1_address0;
reg v228_1_ce0;
reg[14:0] v228_1_address1;
reg v228_1_ce1;
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
wire   [15:0] trunc_ln31_fu_160_p1;
reg   [15:0] trunc_ln31_reg_309;
wire    ap_CS_fsm_state2;
wire   [14:0] mul_ln38_fu_178_p2;
reg   [14:0] mul_ln38_reg_314;
reg   [14:0] tmp_reg_320;
reg   [13:0] tmp_1_reg_325;
reg   [5:0] tmp_12_reg_331;
wire   [0:0] icmp_ln31_fu_232_p2;
reg   [0:0] icmp_ln31_reg_336;
wire   [0:0] cmp11_0_fu_238_p2;
reg   [0:0] cmp11_0_reg_340;
wire    ap_CS_fsm_state3;
wire   [15:0] or_ln_fu_244_p3;
reg   [15:0] or_ln_reg_345;
wire    ap_CS_fsm_state5;
wire   [15:0] or_ln31_1_cast_fu_252_p3;
reg   [15:0] or_ln31_1_cast_reg_350;
wire    ap_CS_fsm_state6;
wire   [14:0] mul_ln38_1_fu_270_p2;
reg   [14:0] mul_ln38_1_reg_355;
wire   [15:0] or_ln31_3_fu_286_p3;
reg   [15:0] or_ln31_3_reg_361;
wire    ap_CS_fsm_state9;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v224_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v228_0_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_366_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_366_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_366_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_366_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_370_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_370_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_370_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_374_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_374_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_374_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v224_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v228_1_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_366_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_366_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_366_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_366_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_370_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_370_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_370_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v224_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v228_0_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v228_0_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v228_0_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v228_0_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_366_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_366_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_366_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_366_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_370_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_370_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_370_p_ce;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_start;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_done;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_idle;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_ready;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v224_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v224_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v228_1_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v228_1_ce0;
wire   [14:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v228_1_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v228_1_ce1;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_address0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_ce0;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_address1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_ce1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_366_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_366_p_din1;
wire   [1:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_366_p_opcode;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_366_p_ce;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_370_p_din0;
wire   [31:0] grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_370_p_din1;
wire    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_370_p_ce;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_start_reg;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_start_reg;
wire    ap_CS_fsm_state10;
reg   [63:0] v5_fu_86;
wire   [63:0] add_ln31_fu_276_p2;
reg    ap_block_state1;
reg    v236_read_local;
wire   [6:0] lshr_ln_fu_164_p4;
wire   [6:0] mul_ln38_fu_178_p0;
wire   [8:0] mul_ln38_fu_178_p1;
wire   [61:0] tmp_s_fu_194_p4;
wire   [63:0] or_ln31_1_fu_214_p3;
wire   [6:0] or_ln31_2_fu_259_p3;
wire   [6:0] mul_ln38_1_fu_270_p0;
wire   [8:0] mul_ln38_1_fu_270_p1;
reg   [31:0] grp_fu_366_p0;
reg   [31:0] grp_fu_366_p1;
reg    grp_fu_366_ce;
reg   [31:0] grp_fu_370_p0;
reg   [31:0] grp_fu_370_p1;
reg    grp_fu_370_ce;
reg    grp_fu_374_ce;
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
wire   [14:0] mul_ln38_1_fu_270_p00;
wire   [14:0] mul_ln38_fu_178_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_start_reg = 1'b0;
#0 v5_fu_86 = 64'd0;
end
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_2 grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_ready),.v5(trunc_ln31_reg_309),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v224_ce0),.v224_q0(v224_q0),.mul_ln38(mul_ln38_reg_314),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v228_0_ce1),.v228_0_q1(v228_0_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_d1),.v229_q1(v229_q1),.v4(v4),.cmp11_0(cmp11_0_reg_340),.grp_fu_366_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_366_p_din0),.grp_fu_366_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_366_p_din1),.grp_fu_366_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_366_p_opcode),.grp_fu_366_p_dout0(grp_fu_128_p_dout0),.grp_fu_366_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_366_p_ce),.grp_fu_370_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_370_p_din0),.grp_fu_370_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_370_p_din1),.grp_fu_370_p_dout0(grp_fu_132_p_dout0),.grp_fu_370_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_370_p_ce),.grp_fu_374_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_374_p_din0),.grp_fu_374_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_374_p_din1),.grp_fu_374_p_dout0(grp_fu_136_p_dout0),.grp_fu_374_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_374_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_210 grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_ready),.zext_ln32_1(or_ln_reg_345),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v224_ce0),.v224_q0(v224_q0),.mul_ln38(mul_ln38_reg_314),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v228_1_ce1),.v228_1_q1(v228_1_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_d1),.v229_q1(v229_q1),.grp_fu_366_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_366_p_din0),.grp_fu_366_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_366_p_din1),.grp_fu_366_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_366_p_opcode),.grp_fu_366_p_dout0(grp_fu_128_p_dout0),.grp_fu_366_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_366_p_ce),.grp_fu_370_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_370_p_din0),.grp_fu_370_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_370_p_din1),.grp_fu_370_p_dout0(grp_fu_132_p_dout0),.grp_fu_370_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_370_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_211 grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_ready),.or_ln31_1(or_ln31_1_cast_reg_350),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v224_ce0),.v224_q0(v224_q0),.mul_ln38_1(mul_ln38_1_reg_355),.v228_0_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v228_0_ce1),.v228_0_q1(v228_0_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_d1),.v229_q1(v229_q1),.grp_fu_366_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_366_p_din0),.grp_fu_366_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_366_p_din1),.grp_fu_366_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_366_p_opcode),.grp_fu_366_p_dout0(grp_fu_128_p_dout0),.grp_fu_366_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_366_p_ce),.grp_fu_370_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_370_p_din0),.grp_fu_370_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_370_p_din1),.grp_fu_370_p_dout0(grp_fu_132_p_dout0),.grp_fu_370_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_370_p_ce));
kernel_2mm_kernel_2mm_node0_Pipeline_label_1_label_212 grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_start),.ap_done(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_done),.ap_idle(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_idle),.ap_ready(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_ready),.zext_ln32_4(or_ln31_3_reg_361),.v224_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v224_address0),.v224_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v224_ce0),.v224_q0(v224_q0),.mul_ln38_1(mul_ln38_1_reg_355),.v228_1_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v228_1_ce1),.v228_1_q1(v228_1_q1),.v229_address0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_address0),.v229_ce0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_ce0),.v229_we0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_we0),.v229_d0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_address1),.v229_ce1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_ce1),.v229_we1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_we1),.v229_d1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_d1),.v229_q1(v229_q1),.grp_fu_366_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_366_p_din0),.grp_fu_366_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_366_p_din1),.grp_fu_366_p_opcode(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_366_p_opcode),.grp_fu_366_p_dout0(grp_fu_128_p_dout0),.grp_fu_366_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_366_p_ce),.grp_fu_370_p_din0(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_370_p_din0),.grp_fu_370_p_din1(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_370_p_din1),.grp_fu_370_p_dout0(grp_fu_132_p_dout0),.grp_fu_370_p_ce(grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_370_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U427(.din0(mul_ln38_fu_178_p0),.din1(mul_ln38_fu_178_p1),.dout(mul_ln38_fu_178_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U428(.din0(mul_ln38_1_fu_270_p0),.din1(mul_ln38_1_fu_270_p1),.dout(mul_ln38_1_fu_270_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v5_fu_86 <= 64'd0;
    end else if (((icmp_ln31_reg_336 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_done == 1'b1))) begin
        v5_fu_86 <= add_ln31_fu_276_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_0_reg_340 <= cmp11_0_fu_238_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln31_reg_336 <= icmp_ln31_fu_232_p2;
        mul_ln38_reg_314 <= mul_ln38_fu_178_p2;
        tmp_12_reg_331 <= {{v5_fu_86[7:2]}};
        tmp_1_reg_325 <= {{v5_fu_86[15:2]}};
        tmp_reg_320 <= {{v5_fu_86[15:1]}};
        trunc_ln31_reg_309 <= trunc_ln31_fu_160_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mul_ln38_1_reg_355 <= mul_ln38_1_fu_270_p2;
        or_ln31_1_cast_reg_350[15 : 2] <= or_ln31_1_cast_fu_252_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        or_ln31_3_reg_361[15 : 2] <= or_ln31_3_fu_286_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        or_ln_reg_345[15 : 1] <= or_ln_fu_244_p3[15 : 1];
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if ((((icmp_ln31_reg_336 == 1'd0) & (1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_done == 1'b1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((icmp_ln31_reg_336 == 1'd0) & (1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_366_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_366_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_366_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_366_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_366_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_366_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_366_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_366_p_ce;
    end else begin
        grp_fu_366_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_366_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_366_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_366_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_366_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_366_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_366_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_366_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_366_p_din0;
    end else begin
        grp_fu_366_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_366_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_366_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_366_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_366_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_366_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_366_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_366_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_366_p_din1;
    end else begin
        grp_fu_366_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_370_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_370_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_370_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_370_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_370_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_370_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_370_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_370_p_ce;
    end else begin
        grp_fu_370_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_370_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_370_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_370_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_370_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_370_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_370_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_370_p0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_370_p_din0;
    end else begin
        grp_fu_370_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_370_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_grp_fu_370_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_370_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_grp_fu_370_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_370_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_grp_fu_370_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_370_p1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_370_p_din1;
    end else begin
        grp_fu_370_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_374_ce = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_374_p_ce;
    end else begin
        grp_fu_374_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v224_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v224_address0;
    end else begin
        v224_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v224_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v224_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v224_ce0;
    end else begin
        v224_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v228_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_0_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v228_0_address0;
    end else begin
        v228_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v228_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_0_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v228_0_address1;
    end else begin
        v228_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v228_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_0_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v228_0_ce0;
    end else begin
        v228_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v228_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v228_0_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v228_0_ce1;
    end else begin
        v228_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v228_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_1_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v228_1_address0;
    end else begin
        v228_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v228_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_1_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v228_1_address1;
    end else begin
        v228_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v228_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_1_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v228_1_ce0;
    end else begin
        v228_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v228_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v228_1_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v228_1_ce1;
    end else begin
        v228_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_address0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_address0;
    end else begin
        v229_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_address1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_address1;
    end else begin
        v229_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_ce0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_ce0;
    end else begin
        v229_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_ce1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_ce1;
    end else begin
        v229_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_d0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_d0;
    end else begin
        v229_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_d1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_d1;
    end else begin
        v229_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_we0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_we0;
    end else begin
        v229_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_v229_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v229_we1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_v229_we1;
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
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((icmp_ln31_reg_336 == 1'd0) & (1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln31_reg_336 == 1'd1) & (1'b1 == ap_CS_fsm_state6) & (grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign add_ln31_fu_276_p2 = (v5_fu_86 + 64'd4);
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
assign cmp11_0_fu_238_p2 = ((v5_fu_86 == 64'd0) ? 1'b1 : 1'b0);
assign grp_fu_128_p_ce = grp_fu_366_ce;
assign grp_fu_128_p_din0 = grp_fu_366_p0;
assign grp_fu_128_p_din1 = grp_fu_366_p1;
assign grp_fu_128_p_opcode = 2'd0;
assign grp_fu_132_p_ce = grp_fu_370_ce;
assign grp_fu_132_p_din0 = grp_fu_370_p0;
assign grp_fu_132_p_din1 = grp_fu_370_p1;
assign grp_fu_136_p_ce = grp_fu_374_ce;
assign grp_fu_136_p_din0 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_374_p_din0;
assign grp_fu_136_p_din1 = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_grp_fu_374_p_din1;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_210_fu_116_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_211_fu_128_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_212_fu_140_ap_start_reg;
assign grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_start = grp_kernel_2mm_node0_Pipeline_label_1_label_2_fu_102_ap_start_reg;
assign icmp_ln31_fu_232_p2 = (($signed(or_ln31_1_fu_214_p3) < $signed(64'd190)) ? 1'b1 : 1'b0);
assign lshr_ln_fu_164_p4 = {{v5_fu_86[7:1]}};
assign mul_ln38_1_fu_270_p0 = mul_ln38_1_fu_270_p00;
assign mul_ln38_1_fu_270_p00 = or_ln31_2_fu_259_p3;
assign mul_ln38_1_fu_270_p1 = 15'd220;
assign mul_ln38_fu_178_p0 = mul_ln38_fu_178_p00;
assign mul_ln38_fu_178_p00 = lshr_ln_fu_164_p4;
assign mul_ln38_fu_178_p1 = 15'd220;
assign or_ln31_1_cast_fu_252_p3 = {{tmp_1_reg_325}, {2'd2}};
assign or_ln31_1_fu_214_p3 = {{tmp_s_fu_194_p4}, {2'd2}};
assign or_ln31_2_fu_259_p3 = {{tmp_12_reg_331}, {1'd1}};
assign or_ln31_3_fu_286_p3 = {{tmp_1_reg_325}, {2'd3}};
assign or_ln_fu_244_p3 = {{tmp_reg_320}, {1'd1}};
assign tmp_s_fu_194_p4 = {{v5_fu_86[63:2]}};
assign trunc_ln31_fu_160_p1 = v5_fu_86[15:0];
assign v236_read = v236_read_local;
always @ (posedge ap_clk) begin
    or_ln_reg_345[0] <= 1'b1;
    or_ln31_1_cast_reg_350[1:0] <= 2'b10;
    or_ln31_3_reg_361[1:0] <= 2'b11;
end
endmodule 