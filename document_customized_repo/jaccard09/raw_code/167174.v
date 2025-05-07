module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_address0,v226_ce0,v226_q0,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_124_p_din0,grp_fu_124_p_din1,grp_fu_124_p_opcode,grp_fu_124_p_dout0,grp_fu_124_p_ce,grp_fu_128_p_din0,grp_fu_128_p_din1,grp_fu_128_p_dout0,grp_fu_128_p_ce,grp_fu_132_p_din0,grp_fu_132_p_din1,grp_fu_132_p_dout0,grp_fu_132_p_ce); 
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
output  [15:0] v226_address0;
output   v226_ce0;
input  [31:0] v226_q0;
output  [15:0] v227_address0;
output   v227_ce0;
input  [31:0] v227_q0;
output  [15:0] v227_address1;
output   v227_ce1;
input  [31:0] v227_q1;
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
output  [31:0] grp_fu_124_p_din0;
output  [31:0] grp_fu_124_p_din1;
output  [1:0] grp_fu_124_p_opcode;
input  [31:0] grp_fu_124_p_dout0;
output   grp_fu_124_p_ce;
output  [31:0] grp_fu_128_p_din0;
output  [31:0] grp_fu_128_p_din1;
input  [31:0] grp_fu_128_p_dout0;
output   grp_fu_128_p_ce;
output  [31:0] grp_fu_132_p_din0;
output  [31:0] grp_fu_132_p_din1;
input  [31:0] grp_fu_132_p_dout0;
output   grp_fu_132_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] v226_address0;
reg v226_ce0;
reg[15:0] v227_address0;
reg v227_ce0;
reg[15:0] v227_address1;
reg v227_ce1;
reg[15:0] v225_address0;
reg v225_ce0;
reg v225_we0;
reg[31:0] v225_d0;
reg[15:0] v225_address1;
reg v225_ce1;
reg v225_we1;
reg[31:0] v225_d1;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state5;
reg   [0:0] icmp_ln168_reg_276;
reg   [14:0] tmp_reg_265;
wire    ap_CS_fsm_state2;
reg   [13:0] tmp_1_reg_270;
wire   [0:0] icmp_ln168_fu_192_p2;
wire  signed [15:0] or_ln_fu_198_p3;
reg   [15:0] or_ln_reg_280;
wire    ap_CS_fsm_state3;
wire   [15:0] mul_ln169_fu_205_p2;
reg   [15:0] mul_ln169_reg_285;
wire  signed [15:0] or_ln168_1_cast_fu_211_p3;
reg   [15:0] or_ln168_1_cast_reg_290;
wire   [15:0] mul_ln175_fu_218_p2;
reg   [15:0] mul_ln175_reg_295;
wire  signed [15:0] or_ln168_2_fu_234_p3;
reg   [15:0] or_ln168_2_reg_300;
wire    ap_CS_fsm_state7;
wire   [15:0] mul_ln169_1_fu_241_p2;
reg   [15:0] mul_ln169_1_reg_305;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v226_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_310_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_310_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_310_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_310_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_314_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_314_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_314_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_318_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_318_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_318_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v226_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_310_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_310_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_310_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_310_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_314_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_314_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_314_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_318_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_318_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_318_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v226_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_310_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_310_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_310_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_310_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_314_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_314_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_314_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_318_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_318_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_318_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_ready;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_d1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v226_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v226_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v227_ce1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_310_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_310_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_310_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_310_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_314_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_314_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_314_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_318_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_318_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_318_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_start_reg;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_start_reg;
wire    ap_CS_fsm_state6;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg   [63:0] v114_fu_76;
wire   [63:0] add_ln168_fu_224_p2;
reg    ap_block_state5;
reg    v236_write_local;
wire   [61:0] tmp_2_fu_164_p4;
wire   [63:0] or_ln168_1_fu_184_p3;
wire  signed [15:0] mul_ln169_fu_205_p0;
wire   [8:0] mul_ln169_fu_205_p1;
wire  signed [15:0] mul_ln175_fu_218_p0;
wire   [8:0] mul_ln175_fu_218_p1;
wire  signed [15:0] mul_ln169_1_fu_241_p0;
wire   [8:0] mul_ln169_1_fu_241_p1;
reg   [31:0] grp_fu_310_p0;
reg   [31:0] grp_fu_310_p1;
reg    grp_fu_310_ce;
reg   [31:0] grp_fu_314_p0;
reg   [31:0] grp_fu_314_p1;
reg    grp_fu_314_ce;
reg   [31:0] grp_fu_318_p0;
reg   [31:0] grp_fu_318_p1;
reg    grp_fu_318_ce;
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
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_start_reg = 1'b0;
#0 v114_fu_76 = 64'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_d1),.v225_q1(v225_q1),.v114(v114_fu_76),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v226_ce0),.v226_q0(v226_q0),.v113(v113),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v227_ce1),.v227_q1(v227_q1),.grp_fu_310_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_310_p_din0),.grp_fu_310_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_310_p_din1),.grp_fu_310_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_310_p_opcode),.grp_fu_310_p_dout0(grp_fu_124_p_dout0),.grp_fu_310_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_310_p_ce),.grp_fu_314_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_314_p_din0),.grp_fu_314_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_314_p_din1),.grp_fu_314_p_dout0(grp_fu_128_p_dout0),.grp_fu_314_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_314_p_ce),.grp_fu_318_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_318_p_din0),.grp_fu_318_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_318_p_din1),.grp_fu_318_p_dout0(grp_fu_132_p_dout0),.grp_fu_318_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_318_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_53 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_d1),.v225_q1(v225_q1),.zext_ln169_1(or_ln_reg_280),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175_1(mul_ln169_reg_285),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v227_ce1),.v227_q1(v227_q1),.grp_fu_310_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_310_p_din0),.grp_fu_310_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_310_p_din1),.grp_fu_310_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_310_p_opcode),.grp_fu_310_p_dout0(grp_fu_124_p_dout0),.grp_fu_310_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_310_p_ce),.grp_fu_314_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_314_p_din0),.grp_fu_314_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_314_p_din1),.grp_fu_314_p_dout0(grp_fu_128_p_dout0),.grp_fu_314_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_314_p_ce),.grp_fu_318_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_318_p_din0),.grp_fu_318_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_318_p_din1),.grp_fu_318_p_dout0(grp_fu_132_p_dout0),.grp_fu_318_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_318_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_54 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_d1),.v225_q1(v225_q1),.or_ln168_1(or_ln168_1_cast_reg_290),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175_2(mul_ln175_reg_295),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v227_ce1),.v227_q1(v227_q1),.grp_fu_310_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_310_p_din0),.grp_fu_310_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_310_p_din1),.grp_fu_310_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_310_p_opcode),.grp_fu_310_p_dout0(grp_fu_124_p_dout0),.grp_fu_310_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_310_p_ce),.grp_fu_314_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_314_p_din0),.grp_fu_314_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_314_p_din1),.grp_fu_314_p_dout0(grp_fu_128_p_dout0),.grp_fu_314_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_314_p_ce),.grp_fu_318_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_318_p_din0),.grp_fu_318_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_318_p_din1),.grp_fu_318_p_dout0(grp_fu_132_p_dout0),.grp_fu_318_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_318_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_55 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_ready),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_d1),.v225_q1(v225_q1),.zext_ln169_4(or_ln168_2_reg_300),.v226_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v226_address0),.v226_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v226_ce0),.v226_q0(v226_q0),.v113(v113),.mul_ln175_3(mul_ln169_1_reg_305),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v227_ce1),.v227_q1(v227_q1),.grp_fu_310_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_310_p_din0),.grp_fu_310_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_310_p_din1),.grp_fu_310_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_310_p_opcode),.grp_fu_310_p_dout0(grp_fu_124_p_dout0),.grp_fu_310_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_310_p_ce),.grp_fu_314_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_314_p_din0),.grp_fu_314_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_314_p_din1),.grp_fu_314_p_dout0(grp_fu_128_p_dout0),.grp_fu_314_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_314_p_ce),.grp_fu_318_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_318_p_din0),.grp_fu_318_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_318_p_din1),.grp_fu_318_p_dout0(grp_fu_132_p_dout0),.grp_fu_318_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_318_p_ce));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U113(.din0(mul_ln169_fu_205_p0),.din1(mul_ln169_fu_205_p1),.dout(mul_ln169_fu_205_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U114(.din0(mul_ln175_fu_218_p0),.din1(mul_ln175_fu_218_p1),.dout(mul_ln175_fu_218_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U115(.din0(mul_ln169_1_fu_241_p0),.din1(mul_ln169_1_fu_241_p1),.dout(mul_ln169_1_fu_241_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v114_fu_76 <= 64'd0;
    end else if ((~((1'b1 == ap_block_state5) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_done == 1'b0)) & (icmp_ln168_reg_276 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        v114_fu_76 <= add_ln168_fu_224_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln168_reg_276 <= icmp_ln168_fu_192_p2;
        tmp_1_reg_270 <= {{v114_fu_76[15:2]}};
        tmp_reg_265 <= {{v114_fu_76[15:1]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        mul_ln169_1_reg_305 <= mul_ln169_1_fu_241_p2;
        or_ln168_2_reg_300[15 : 2] <= or_ln168_2_fu_234_p3[15 : 2];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        mul_ln169_reg_285 <= mul_ln169_fu_205_p2;
        or_ln_reg_280[15 : 1] <= or_ln_fu_198_p3[15 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        mul_ln175_reg_295 <= mul_ln175_fu_218_p2;
        or_ln168_1_cast_reg_290[15 : 2] <= or_ln168_1_cast_fu_211_p3[15 : 2];
    end
end
always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
assign ap_ST_fsm_state4_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_block_state5) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_done == 1'b0))) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
assign ap_ST_fsm_state6_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end
assign ap_ST_fsm_state8_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_done == 1'b0)) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end
always @ (*) begin
    if (((~((1'b1 == ap_block_state5) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_done == 1'b0)) & (icmp_ln168_reg_276 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((~((1'b1 == ap_block_state5) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_done == 1'b0)) & (icmp_ln168_reg_276 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_310_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_310_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_310_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_310_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_310_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_310_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_310_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_310_p_ce;
    end else begin
        grp_fu_310_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_310_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_310_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_310_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_310_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_310_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_310_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_310_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_310_p_din0;
    end else begin
        grp_fu_310_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_310_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_310_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_310_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_310_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_310_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_310_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_310_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_310_p_din1;
    end else begin
        grp_fu_310_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_314_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_314_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_314_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_314_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_314_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_314_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_314_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_314_p_ce;
    end else begin
        grp_fu_314_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_314_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_314_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_314_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_314_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_314_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_314_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_314_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_314_p_din0;
    end else begin
        grp_fu_314_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_314_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_314_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_314_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_314_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_314_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_314_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_314_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_314_p_din1;
    end else begin
        grp_fu_314_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_318_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_318_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_318_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_318_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_318_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_318_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_318_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_318_p_ce;
    end else begin
        grp_fu_318_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_318_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_318_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_318_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_318_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_318_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_318_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_318_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_318_p_din0;
    end else begin
        grp_fu_318_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_318_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_grp_fu_318_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        grp_fu_318_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_grp_fu_318_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        grp_fu_318_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_grp_fu_318_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_318_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_grp_fu_318_p_din1;
    end else begin
        grp_fu_318_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v226_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v226_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v226_address0;
    end else begin
        v226_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v226_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v226_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v226_ce0;
    end else begin
        v226_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_reg_276 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((1'b1 == ap_block_state5) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_done == 1'b0)) & (icmp_ln168_reg_276 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if ((~((1'b1 == ap_block_state5) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_done == 1'b0)) & (icmp_ln168_reg_276 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((1'b1 == ap_block_state5) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_done == 1'b0)) & (icmp_ln168_reg_276 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
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
assign add_ln168_fu_224_p2 = (v114_fu_76 + 64'd4);
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
    ap_block_state5 = ((icmp_ln168_reg_276 == 1'd0) & (v236_full_n == 1'b0));
end
assign grp_fu_124_p_ce = grp_fu_310_ce;
assign grp_fu_124_p_din0 = grp_fu_310_p0;
assign grp_fu_124_p_din1 = grp_fu_310_p1;
assign grp_fu_124_p_opcode = 2'd0;
assign grp_fu_128_p_ce = grp_fu_314_ce;
assign grp_fu_128_p_din0 = grp_fu_314_p0;
assign grp_fu_128_p_din1 = grp_fu_314_p1;
assign grp_fu_132_p_ce = grp_fu_318_ce;
assign grp_fu_132_p_din0 = grp_fu_318_p0;
assign grp_fu_132_p_din1 = grp_fu_318_p1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_106_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_119_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_132_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_94_ap_start_reg;
assign icmp_ln168_fu_192_p2 = (($signed(or_ln168_1_fu_184_p3) < $signed(64'd210)) ? 1'b1 : 1'b0);
assign mul_ln169_1_fu_241_p0 = {{tmp_1_reg_270}, {2'd3}};
assign mul_ln169_1_fu_241_p1 = 16'd190;
assign mul_ln169_fu_205_p0 = {{tmp_reg_265}, {1'd1}};
assign mul_ln169_fu_205_p1 = 16'd190;
assign mul_ln175_fu_218_p0 = {{tmp_1_reg_270}, {2'd2}};
assign mul_ln175_fu_218_p1 = 16'd190;
assign or_ln168_1_cast_fu_211_p3 = {{tmp_1_reg_270}, {2'd2}};
assign or_ln168_1_fu_184_p3 = {{tmp_2_fu_164_p4}, {2'd2}};
assign or_ln168_2_fu_234_p3 = {{tmp_1_reg_270}, {2'd3}};
assign or_ln_fu_198_p3 = {{tmp_reg_265}, {1'd1}};
assign tmp_2_fu_164_p4 = {{v114_fu_76[63:2]}};
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
always @ (posedge ap_clk) begin
    or_ln_reg_280[0] <= 1'b1;
    or_ln168_1_cast_reg_290[1:0] <= 2'b10;
    or_ln168_2_reg_300[1:0] <= 2'b11;
end
endmodule 