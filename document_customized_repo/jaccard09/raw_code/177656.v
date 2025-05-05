module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_1_address0,v226_1_ce0,v226_1_q0,v226_2_address0,v226_2_ce0,v226_2_q0,v226_3_address0,v226_3_ce0,v226_3_q0,v227_address0,v227_ce0,v227_q0,v227_address1,v227_ce1,v227_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_160_p_din0,grp_fu_160_p_din1,grp_fu_160_p_opcode,grp_fu_160_p_dout0,grp_fu_160_p_ce,grp_fu_164_p_din0,grp_fu_164_p_din1,grp_fu_164_p_dout0,grp_fu_164_p_ce,grp_fu_168_p_din0,grp_fu_168_p_din1,grp_fu_168_p_dout0,grp_fu_168_p_ce); 
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
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v236_blk_n;
wire    ap_CS_fsm_state6;
reg   [0:0] icmp_ln168_reg_329;
wire   [15:0] trunc_ln168_fu_167_p1;
reg   [15:0] trunc_ln168_reg_305;
wire    ap_CS_fsm_state2;
reg   [13:0] lshr_ln_reg_310;
wire   [0:0] cmp11_0_fu_181_p2;
reg   [0:0] cmp11_0_reg_319;
reg   [6:0] tmp_reg_324;
wire   [0:0] icmp_ln168_fu_215_p2;
wire   [15:0] mul_ln175_fu_232_p2;
reg   [15:0] mul_ln175_reg_333;
wire    ap_CS_fsm_state4;
wire   [15:0] mul_ln175_1_fu_245_p2;
reg   [15:0] mul_ln175_1_reg_338;
reg   [5:0] tmp_5_reg_343;
wire   [15:0] mul_ln175_2_fu_281_p2;
reg   [15:0] mul_ln175_2_reg_348;
wire    ap_CS_fsm_state8;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v226_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v226_0_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_353_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_353_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_353_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_353_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_357_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_357_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_357_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_361_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_361_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_361_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v226_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v226_1_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_353_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_353_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_353_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_353_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_357_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_357_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_357_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_361_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_361_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_361_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v226_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v226_2_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_353_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_353_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_353_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_353_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_357_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_357_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_357_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_361_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_361_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_361_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v226_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v226_3_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v227_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v227_ce0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v227_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v227_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_353_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_353_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_353_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_353_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_357_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_357_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_357_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_361_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_361_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_361_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_start_reg;
wire    ap_CS_fsm_state3;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg   [63:0] v114_fu_88;
wire   [63:0] add_ln168_fu_260_p2;
reg    ap_block_state6;
reg    v236_write_local;
wire   [61:0] tmp_2_fu_197_p4;
wire   [63:0] or_ln168_1_fu_207_p3;
wire   [7:0] or_ln_fu_221_p3;
wire   [7:0] mul_ln175_fu_232_p0;
wire   [8:0] mul_ln175_fu_232_p1;
wire  signed [15:0] mul_ln175_1_fu_245_p0;
wire   [8:0] mul_ln175_1_fu_245_p1;
wire   [7:0] or_ln168_2_fu_270_p3;
wire   [7:0] mul_ln175_2_fu_281_p0;
wire   [8:0] mul_ln175_2_fu_281_p1;
reg   [31:0] grp_fu_353_p0;
reg   [31:0] grp_fu_353_p1;
reg    grp_fu_353_ce;
reg   [31:0] grp_fu_357_p0;
reg   [31:0] grp_fu_357_p1;
reg    grp_fu_357_ce;
reg   [31:0] grp_fu_361_p0;
reg   [31:0] grp_fu_361_p1;
reg    grp_fu_361_ce;
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
wire   [15:0] mul_ln175_2_fu_281_p00;
wire   [15:0] mul_ln175_fu_232_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_start_reg = 1'b0;
#0 v114_fu_88 = 64'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_ready),.zext_ln168(lshr_ln_reg_310),.v226_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v226_0_address0),.v226_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v226_0_ce0),.v226_0_q0(v226_0_q0),.v113(v113),.v114(trunc_ln168_reg_305),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_d1),.v225_q1(v225_q1),.cmp11_0(cmp11_0_reg_319),.grp_fu_353_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_353_p_din0),.grp_fu_353_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_353_p_din1),.grp_fu_353_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_353_p_opcode),.grp_fu_353_p_dout0(grp_fu_160_p_dout0),.grp_fu_353_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_353_p_ce),.grp_fu_357_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_357_p_din0),.grp_fu_357_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_357_p_din1),.grp_fu_357_p_dout0(grp_fu_164_p_dout0),.grp_fu_357_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_357_p_ce),.grp_fu_361_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_361_p_din0),.grp_fu_361_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_361_p_din1),.grp_fu_361_p_dout0(grp_fu_168_p_dout0),.grp_fu_361_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_361_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_53 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_ready),.zext_ln168(lshr_ln_reg_310),.v226_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v226_1_address0),.v226_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v226_1_ce0),.v226_1_q0(v226_1_q0),.v113(v113),.mul_ln175_1(mul_ln175_reg_333),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_d1),.v225_q1(v225_q1),.grp_fu_353_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_353_p_din0),.grp_fu_353_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_353_p_din1),.grp_fu_353_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_353_p_opcode),.grp_fu_353_p_dout0(grp_fu_160_p_dout0),.grp_fu_353_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_353_p_ce),.grp_fu_357_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_357_p_din0),.grp_fu_357_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_357_p_din1),.grp_fu_357_p_dout0(grp_fu_164_p_dout0),.grp_fu_357_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_357_p_ce),.grp_fu_361_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_361_p_din0),.grp_fu_361_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_361_p_din1),.grp_fu_361_p_dout0(grp_fu_168_p_dout0),.grp_fu_361_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_361_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_54 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_ready),.zext_ln168(lshr_ln_reg_310),.v226_2_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v226_2_address0),.v226_2_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v226_2_ce0),.v226_2_q0(v226_2_q0),.v113(v113),.mul_ln175_2(mul_ln175_1_reg_338),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_d1),.v225_q1(v225_q1),.grp_fu_353_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_353_p_din0),.grp_fu_353_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_353_p_din1),.grp_fu_353_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_353_p_opcode),.grp_fu_353_p_dout0(grp_fu_160_p_dout0),.grp_fu_353_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_353_p_ce),.grp_fu_357_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_357_p_din0),.grp_fu_357_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_357_p_din1),.grp_fu_357_p_dout0(grp_fu_164_p_dout0),.grp_fu_357_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_357_p_ce),.grp_fu_361_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_361_p_din0),.grp_fu_361_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_361_p_din1),.grp_fu_361_p_dout0(grp_fu_168_p_dout0),.grp_fu_361_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_361_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_55 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_ready),.zext_ln168(lshr_ln_reg_310),.v226_3_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v226_3_address0),.v226_3_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v226_3_ce0),.v226_3_q0(v226_3_q0),.v113(v113),.mul_ln175_3(mul_ln175_2_reg_348),.v227_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v227_address0),.v227_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v227_ce0),.v227_q0(v227_q0),.v227_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v227_address1),.v227_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v227_ce1),.v227_q1(v227_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_d1),.v225_q1(v225_q1),.grp_fu_353_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_353_p_din0),.grp_fu_353_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_353_p_din1),.grp_fu_353_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_353_p_opcode),.grp_fu_353_p_dout0(grp_fu_160_p_dout0),.grp_fu_353_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_353_p_ce),.grp_fu_357_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_357_p_din0),.grp_fu_357_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_357_p_din1),.grp_fu_357_p_dout0(grp_fu_164_p_dout0),.grp_fu_357_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_357_p_ce),.grp_fu_361_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_361_p_din0),.grp_fu_361_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_361_p_din1),.grp_fu_361_p_dout0(grp_fu_168_p_dout0),.grp_fu_361_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_361_p_ce));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U114(.din0(mul_ln175_fu_232_p0),.din1(mul_ln175_fu_232_p1),.dout(mul_ln175_fu_232_p2));
kernel_2mm_mul_16s_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 16 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_16s_9ns_16_1_1_U115(.din0(mul_ln175_1_fu_245_p0),.din1(mul_ln175_1_fu_245_p1),.dout(mul_ln175_1_fu_245_p2));
kernel_2mm_mul_8ns_9ns_16_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 9 ),.dout_WIDTH( 16 ))
mul_8ns_9ns_16_1_1_U116(.din0(mul_ln175_2_fu_281_p0),.din1(mul_ln175_2_fu_281_p1),.dout(mul_ln175_2_fu_281_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v114_fu_88 <= 64'd0;
    end else if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_done == 1'b0)) & (icmp_ln168_reg_329 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        v114_fu_88 <= add_ln168_fu_260_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        cmp11_0_reg_319 <= cmp11_0_fu_181_p2;
        icmp_ln168_reg_329 <= icmp_ln168_fu_215_p2;
        lshr_ln_reg_310 <= {{v114_fu_88[15:2]}};
        tmp_reg_324 <= {{v114_fu_88[7:1]}};
        trunc_ln168_reg_305 <= trunc_ln168_fu_167_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mul_ln175_1_reg_338 <= mul_ln175_1_fu_245_p2;
        tmp_5_reg_343 <= {{v114_fu_88[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        mul_ln175_2_reg_348 <= mul_ln175_2_fu_281_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        mul_ln175_reg_333 <= mul_ln175_fu_232_p2;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_done == 1'b0)) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
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
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_done == 1'b0))) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_done == 1'b0)) & (icmp_ln168_reg_329 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_done == 1'b0)) & (icmp_ln168_reg_329 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_353_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_353_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_353_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_353_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_353_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_353_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_353_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_353_p_ce;
    end else begin
        grp_fu_353_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_353_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_353_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_353_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_353_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_353_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_353_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_353_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_353_p_din0;
    end else begin
        grp_fu_353_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_353_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_353_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_353_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_353_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_353_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_353_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_353_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_353_p_din1;
    end else begin
        grp_fu_353_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_357_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_357_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_357_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_357_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_357_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_357_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_357_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_357_p_ce;
    end else begin
        grp_fu_357_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_357_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_357_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_357_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_357_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_357_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_357_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_357_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_357_p_din0;
    end else begin
        grp_fu_357_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_357_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_357_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_357_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_357_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_357_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_357_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_357_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_357_p_din1;
    end else begin
        grp_fu_357_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_361_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_361_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_361_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_361_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_361_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_361_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_361_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_361_p_ce;
    end else begin
        grp_fu_361_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_361_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_361_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_361_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_361_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_361_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_361_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_361_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_361_p_din0;
    end else begin
        grp_fu_361_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_361_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_grp_fu_361_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_361_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_grp_fu_361_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_361_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_grp_fu_361_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_361_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_grp_fu_361_p_din1;
    end else begin
        grp_fu_361_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v227_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v227_address0;
    end else begin
        v227_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v227_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v227_address1;
    end else begin
        v227_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v227_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v227_ce0;
    end else begin
        v227_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v227_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v227_ce1;
    end else begin
        v227_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_reg_329 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_done == 1'b0)) & (icmp_ln168_reg_329 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
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
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_done == 1'b0)) & (icmp_ln168_reg_329 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_done == 1'b0)) & (icmp_ln168_reg_329 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign add_ln168_fu_260_p2 = (v114_fu_88 + 64'd4);
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
    ap_block_state6 = ((icmp_ln168_reg_329 == 1'd0) & (v236_full_n == 1'b0));
end
assign cmp11_0_fu_181_p2 = ((v114_fu_88 == 64'd0) ? 1'b1 : 1'b0);
assign grp_fu_160_p_ce = grp_fu_353_ce;
assign grp_fu_160_p_din0 = grp_fu_353_p0;
assign grp_fu_160_p_din1 = grp_fu_353_p1;
assign grp_fu_160_p_opcode = 2'd0;
assign grp_fu_164_p_ce = grp_fu_357_ce;
assign grp_fu_164_p_din0 = grp_fu_357_p0;
assign grp_fu_164_p_din1 = grp_fu_357_p1;
assign grp_fu_168_p_ce = grp_fu_361_ce;
assign grp_fu_168_p_din0 = grp_fu_361_p0;
assign grp_fu_168_p_din1 = grp_fu_361_p1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_ap_start_reg;
assign icmp_ln168_fu_215_p2 = (($signed(or_ln168_1_fu_207_p3) < $signed(64'd210)) ? 1'b1 : 1'b0);
assign mul_ln175_1_fu_245_p0 = {{lshr_ln_reg_310}, {2'd2}};
assign mul_ln175_1_fu_245_p1 = 16'd190;
assign mul_ln175_2_fu_281_p0 = mul_ln175_2_fu_281_p00;
assign mul_ln175_2_fu_281_p00 = or_ln168_2_fu_270_p3;
assign mul_ln175_2_fu_281_p1 = 16'd190;
assign mul_ln175_fu_232_p0 = mul_ln175_fu_232_p00;
assign mul_ln175_fu_232_p00 = or_ln_fu_221_p3;
assign mul_ln175_fu_232_p1 = 16'd190;
assign or_ln168_1_fu_207_p3 = {{tmp_2_fu_197_p4}, {2'd2}};
assign or_ln168_2_fu_270_p3 = {{tmp_5_reg_343}, {2'd3}};
assign or_ln_fu_221_p3 = {{tmp_reg_324}, {1'd1}};
assign tmp_2_fu_197_p4 = {{v114_fu_88[63:2]}};
assign trunc_ln168_fu_167_p1 = v114_fu_88[15:0];
assign v226_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v226_0_address0;
assign v226_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_106_v226_0_ce0;
assign v226_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v226_1_address0;
assign v226_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_120_v226_1_ce0;
assign v226_2_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v226_2_address0;
assign v226_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_133_v226_2_ce0;
assign v226_3_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v226_3_address0;
assign v226_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_146_v226_3_ce0;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
endmodule 