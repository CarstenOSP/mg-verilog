module kernel_2mm_kernel_2mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v226_0_address0,v226_0_ce0,v226_0_q0,v226_1_address0,v226_1_ce0,v226_1_q0,v226_2_address0,v226_2_ce0,v226_2_q0,v226_3_address0,v226_3_ce0,v226_3_q0,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v236_din,v236_full_n,v236_write,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v113,grp_fu_148_p_din0,grp_fu_148_p_din1,grp_fu_148_p_opcode,grp_fu_148_p_dout0,grp_fu_148_p_ce,grp_fu_152_p_din0,grp_fu_152_p_din1,grp_fu_152_p_dout0,grp_fu_152_p_ce,grp_fu_156_p_din0,grp_fu_156_p_din1,grp_fu_156_p_dout0,grp_fu_156_p_ce); 
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
output  [14:0] v227_0_address0;
output   v227_0_ce0;
input  [31:0] v227_0_q0;
output  [14:0] v227_0_address1;
output   v227_0_ce1;
input  [31:0] v227_0_q1;
output  [14:0] v227_1_address0;
output   v227_1_ce0;
input  [31:0] v227_1_q0;
output  [14:0] v227_1_address1;
output   v227_1_ce1;
input  [31:0] v227_1_q1;
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
reg[14:0] v227_0_address0;
reg v227_0_ce0;
reg[14:0] v227_0_address1;
reg v227_0_ce1;
reg[14:0] v227_1_address0;
reg v227_1_ce0;
reg[14:0] v227_1_address1;
reg v227_1_ce1;
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
reg   [0:0] icmp_ln168_reg_297;
wire   [14:0] mul_ln175_fu_177_p2;
reg   [14:0] mul_ln175_reg_278;
wire    ap_CS_fsm_state2;
reg   [13:0] lshr_ln168_1_reg_284;
reg   [5:0] tmp_3_reg_292;
wire   [0:0] icmp_ln168_fu_221_p2;
wire   [0:0] cmp11_0_fu_227_p2;
reg   [0:0] cmp11_0_reg_301;
wire    ap_CS_fsm_state3;
wire   [14:0] mul_ln175_1_fu_244_p2;
reg   [14:0] mul_ln175_1_reg_306;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v226_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v226_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v227_0_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_312_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_312_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_312_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_312_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_316_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_316_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_316_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_320_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_320_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_320_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v226_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v226_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v227_1_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_312_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_312_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_312_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_312_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_316_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_316_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_316_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_320_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_320_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_320_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v226_2_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v226_2_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v227_0_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v227_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v227_0_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v227_0_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_312_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_312_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_312_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_312_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_316_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_316_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_316_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_320_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_320_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_320_p_ce;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_start;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_done;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_idle;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_ready;
wire   [13:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v226_3_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v226_3_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v227_1_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v227_1_ce0;
wire   [14:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v227_1_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v227_1_ce1;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_address0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_ce0;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_address1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_ce1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_312_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_312_p_din1;
wire   [1:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_312_p_opcode;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_312_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_316_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_316_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_316_p_ce;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_320_p_din0;
wire   [31:0] grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_320_p_din1;
wire    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_320_p_ce;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_start_reg;
wire    ap_CS_fsm_state4;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_start_reg;
wire    ap_CS_fsm_state5;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state8;
reg    grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state10;
reg   [63:0] v114_fu_84;
wire   [63:0] add_ln168_fu_250_p2;
reg    ap_block_state6;
reg    v236_write_local;
wire   [6:0] lshr_ln_fu_163_p4;
wire   [6:0] mul_ln175_fu_177_p0;
wire   [8:0] mul_ln175_fu_177_p1;
wire   [61:0] tmp_1_fu_193_p4;
wire   [63:0] or_ln1_fu_203_p3;
wire   [6:0] or_ln168_1_fu_233_p3;
wire   [6:0] mul_ln175_1_fu_244_p0;
wire   [8:0] mul_ln175_1_fu_244_p1;
reg   [31:0] grp_fu_312_p0;
reg   [31:0] grp_fu_312_p1;
reg    grp_fu_312_ce;
reg   [31:0] grp_fu_316_p0;
reg   [31:0] grp_fu_316_p1;
reg    grp_fu_316_ce;
reg   [31:0] grp_fu_320_p0;
reg   [31:0] grp_fu_320_p1;
reg    grp_fu_320_ce;
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
wire   [14:0] mul_ln175_1_fu_244_p00;
wire   [14:0] mul_ln175_fu_177_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_start_reg = 1'b0;
#0 v114_fu_84 = 64'd0;
end
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_5 grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_ready),.zext_ln168_1(lshr_ln168_1_reg_284),.v226_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v226_0_address0),.v226_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v226_0_ce0),.v226_0_q0(v226_0_q0),.v113(v113),.mul_ln175(mul_ln175_reg_278),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v227_0_ce1),.v227_0_q1(v227_0_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_d1),.v225_q1(v225_q1),.cmp11_0(cmp11_0_reg_301),.grp_fu_312_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_312_p_din1),.grp_fu_312_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_312_p_opcode),.grp_fu_312_p_dout0(grp_fu_148_p_dout0),.grp_fu_312_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_312_p_ce),.grp_fu_316_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_316_p_din1),.grp_fu_316_p_dout0(grp_fu_152_p_dout0),.grp_fu_316_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_316_p_ce),.grp_fu_320_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_320_p_din0),.grp_fu_320_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_320_p_din1),.grp_fu_320_p_dout0(grp_fu_156_p_dout0),.grp_fu_320_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_320_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_53 grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_ready),.zext_ln168_1(lshr_ln168_1_reg_284),.v226_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v226_1_address0),.v226_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v226_1_ce0),.v226_1_q0(v226_1_q0),.v113(v113),.mul_ln175(mul_ln175_reg_278),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v227_1_ce1),.v227_1_q1(v227_1_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_d1),.v225_q1(v225_q1),.grp_fu_312_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_312_p_din1),.grp_fu_312_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_312_p_opcode),.grp_fu_312_p_dout0(grp_fu_148_p_dout0),.grp_fu_312_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_312_p_ce),.grp_fu_316_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_316_p_din1),.grp_fu_316_p_dout0(grp_fu_152_p_dout0),.grp_fu_316_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_316_p_ce),.grp_fu_320_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_320_p_din0),.grp_fu_320_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_320_p_din1),.grp_fu_320_p_dout0(grp_fu_156_p_dout0),.grp_fu_320_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_320_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_54 grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_ready),.zext_ln168_1(lshr_ln168_1_reg_284),.v226_2_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v226_2_address0),.v226_2_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v226_2_ce0),.v226_2_q0(v226_2_q0),.v113(v113),.mul_ln175_1(mul_ln175_1_reg_306),.v227_0_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v227_0_ce1),.v227_0_q1(v227_0_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_d1),.v225_q1(v225_q1),.grp_fu_312_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_312_p_din1),.grp_fu_312_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_312_p_opcode),.grp_fu_312_p_dout0(grp_fu_148_p_dout0),.grp_fu_312_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_312_p_ce),.grp_fu_316_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_316_p_din1),.grp_fu_316_p_dout0(grp_fu_152_p_dout0),.grp_fu_316_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_316_p_ce),.grp_fu_320_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_320_p_din0),.grp_fu_320_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_320_p_din1),.grp_fu_320_p_dout0(grp_fu_156_p_dout0),.grp_fu_320_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_320_p_ce));
kernel_2mm_kernel_2mm_node1_Pipeline_label_4_label_55 grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_start),.ap_done(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_done),.ap_idle(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_idle),.ap_ready(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_ready),.zext_ln168_1(lshr_ln168_1_reg_284),.v226_3_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v226_3_address0),.v226_3_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v226_3_ce0),.v226_3_q0(v226_3_q0),.v113(v113),.mul_ln175_1(mul_ln175_1_reg_306),.v227_1_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v227_1_ce1),.v227_1_q1(v227_1_q1),.v225_address0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_address0),.v225_ce0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_ce0),.v225_we0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_we0),.v225_d0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_address1),.v225_ce1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_ce1),.v225_we1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_we1),.v225_d1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_d1),.v225_q1(v225_q1),.grp_fu_312_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_312_p_din0),.grp_fu_312_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_312_p_din1),.grp_fu_312_p_opcode(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_312_p_opcode),.grp_fu_312_p_dout0(grp_fu_148_p_dout0),.grp_fu_312_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_312_p_ce),.grp_fu_316_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_316_p_din0),.grp_fu_316_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_316_p_din1),.grp_fu_316_p_dout0(grp_fu_152_p_dout0),.grp_fu_316_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_316_p_ce),.grp_fu_320_p_din0(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_320_p_din0),.grp_fu_320_p_din1(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_320_p_din1),.grp_fu_320_p_dout0(grp_fu_156_p_dout0),.grp_fu_320_p_ce(grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_320_p_ce));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U112(.din0(mul_ln175_fu_177_p0),.din1(mul_ln175_fu_177_p1),.dout(mul_ln175_fu_177_p2));
kernel_2mm_mul_7ns_9ns_15_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 7 ),.din1_WIDTH( 9 ),.dout_WIDTH( 15 ))
mul_7ns_9ns_15_1_1_U113(.din0(mul_ln175_1_fu_244_p0),.din1(mul_ln175_1_fu_244_p1),.dout(mul_ln175_1_fu_244_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state7)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state9)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v114_fu_84 <= 64'd0;
    end else if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_done == 1'b0)) & (icmp_ln168_reg_297 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        v114_fu_84 <= add_ln168_fu_250_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        cmp11_0_reg_301 <= cmp11_0_fu_227_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        icmp_ln168_reg_297 <= icmp_ln168_fu_221_p2;
        lshr_ln168_1_reg_284 <= {{v114_fu_84[15:2]}};
        mul_ln175_reg_278 <= mul_ln175_fu_177_p2;
        tmp_3_reg_292 <= {{v114_fu_84[7:2]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        mul_ln175_1_reg_306 <= mul_ln175_1_fu_244_p2;
    end
end
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_done == 1'b0)) begin
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
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_done == 1'b0))) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_done == 1'b0)) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end
assign ap_ST_fsm_state9_blk = 1'b0;
always @ (*) begin
    if (((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_done == 1'b0)) & (icmp_ln168_reg_297 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_done == 1'b0)) & (icmp_ln168_reg_297 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_312_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_312_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_312_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_312_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_312_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_312_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_312_p_ce;
    end else begin
        grp_fu_312_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_312_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_312_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_312_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_312_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_312_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_312_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_312_p_din0;
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_312_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_312_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_312_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_312_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_312_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_312_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_312_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_312_p_din1;
    end else begin
        grp_fu_312_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_316_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_316_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_316_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_316_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_316_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_316_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_316_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_316_p_ce;
    end else begin
        grp_fu_316_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_316_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_316_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_316_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_316_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_316_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_316_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_316_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_316_p_din0;
    end else begin
        grp_fu_316_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_316_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_316_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_316_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_316_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_316_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_316_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_316_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_316_p_din1;
    end else begin
        grp_fu_316_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_320_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_320_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_320_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_320_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_320_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_320_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_320_ce = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_320_p_ce;
    end else begin
        grp_fu_320_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_320_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_320_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_320_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_320_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_320_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_320_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_320_p0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_320_p_din0;
    end else begin
        grp_fu_320_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_320_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_grp_fu_320_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_fu_320_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_grp_fu_320_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_320_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_grp_fu_320_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_320_p1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_grp_fu_320_p_din1;
    end else begin
        grp_fu_320_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_address0;
    end else begin
        v225_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_address1;
    end else begin
        v225_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_ce0;
    end else begin
        v225_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_ce1;
    end else begin
        v225_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_d0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_d0;
    end else begin
        v225_d0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_d1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_d1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_d1;
    end else begin
        v225_d1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_we0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_we0;
    end else begin
        v225_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v225_we1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v225_we1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v225_we1;
    end else begin
        v225_we1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v227_0_address0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v227_0_address0;
    end else begin
        v227_0_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v227_0_address1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_0_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v227_0_address1;
    end else begin
        v227_0_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v227_0_ce0;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v227_0_ce0;
    end else begin
        v227_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v227_0_ce1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        v227_0_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v227_0_ce1;
    end else begin
        v227_0_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v227_1_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v227_1_address0;
    end else begin
        v227_1_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v227_1_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_1_address1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v227_1_address1;
    end else begin
        v227_1_address1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v227_1_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v227_1_ce0;
    end else begin
        v227_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v227_1_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        v227_1_ce1 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v227_1_ce1;
    end else begin
        v227_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln168_reg_297 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_done == 1'b0)) & (icmp_ln168_reg_297 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
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
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_done == 1'b0)) & (icmp_ln168_reg_297 == 1'd0) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if ((~((1'b1 == ap_block_state6) | (grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_done == 1'b0)) & (icmp_ln168_reg_297 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
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
assign add_ln168_fu_250_p2 = (v114_fu_84 + 64'd4);
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
    ap_block_state6 = ((icmp_ln168_reg_297 == 1'd0) & (v236_full_n == 1'b0));
end
assign cmp11_0_fu_227_p2 = ((v114_fu_84 == 64'd0) ? 1'b1 : 1'b0);
assign grp_fu_148_p_ce = grp_fu_312_ce;
assign grp_fu_148_p_din0 = grp_fu_312_p0;
assign grp_fu_148_p_din1 = grp_fu_312_p1;
assign grp_fu_148_p_opcode = 2'd0;
assign grp_fu_152_p_ce = grp_fu_316_ce;
assign grp_fu_152_p_din0 = grp_fu_316_p0;
assign grp_fu_152_p_din1 = grp_fu_316_p1;
assign grp_fu_156_p_ce = grp_fu_320_ce;
assign grp_fu_156_p_din0 = grp_fu_320_p0;
assign grp_fu_156_p_din1 = grp_fu_320_p1;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_ap_start_reg;
assign grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_start = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_ap_start_reg;
assign icmp_ln168_fu_221_p2 = (($signed(or_ln1_fu_203_p3) < $signed(64'd210)) ? 1'b1 : 1'b0);
assign lshr_ln_fu_163_p4 = {{v114_fu_84[7:1]}};
assign mul_ln175_1_fu_244_p0 = mul_ln175_1_fu_244_p00;
assign mul_ln175_1_fu_244_p00 = or_ln168_1_fu_233_p3;
assign mul_ln175_1_fu_244_p1 = 15'd190;
assign mul_ln175_fu_177_p0 = mul_ln175_fu_177_p00;
assign mul_ln175_fu_177_p00 = lshr_ln_fu_163_p4;
assign mul_ln175_fu_177_p1 = 15'd190;
assign or_ln168_1_fu_233_p3 = {{tmp_3_reg_292}, {1'd1}};
assign or_ln1_fu_203_p3 = {{tmp_1_fu_193_p4}, {2'd2}};
assign tmp_1_fu_193_p4 = {{v114_fu_84[63:2]}};
assign v226_0_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v226_0_address0;
assign v226_0_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_5_fu_102_v226_0_ce0;
assign v226_1_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v226_1_address0;
assign v226_1_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_53_fu_116_v226_1_ce0;
assign v226_2_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v226_2_address0;
assign v226_2_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_54_fu_129_v226_2_ce0;
assign v226_3_address0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v226_3_address0;
assign v226_3_ce0 = grp_kernel_2mm_node1_Pipeline_label_4_label_55_fu_142_v226_3_ce0;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
endmodule 