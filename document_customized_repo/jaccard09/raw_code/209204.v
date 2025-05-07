module kernel_3mm_kernel_3mm_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v266_address0,v266_ce0,v266_q0,v267_0_0_address0,v267_0_0_ce0,v267_0_0_q0,v267_0_0_address1,v267_0_0_ce1,v267_0_0_q1,v267_0_1_address0,v267_0_1_ce0,v267_0_1_q0,v267_0_1_address1,v267_0_1_ce1,v267_0_1_q1,v267_0_2_address0,v267_0_2_ce0,v267_0_2_q0,v267_0_2_address1,v267_0_2_ce1,v267_0_2_q1,v267_0_3_address0,v267_0_3_ce0,v267_0_3_q0,v267_0_3_address1,v267_0_3_ce1,v267_0_3_q1,v267_1_0_address0,v267_1_0_ce0,v267_1_0_q0,v267_1_0_address1,v267_1_0_ce1,v267_1_0_q1,v267_1_1_address0,v267_1_1_ce0,v267_1_1_q0,v267_1_1_address1,v267_1_1_ce1,v267_1_1_q1,v267_1_2_address0,v267_1_2_ce0,v267_1_2_q0,v267_1_2_address1,v267_1_2_ce1,v267_1_2_q1,v267_1_3_address0,v267_1_3_ce0,v267_1_3_q0,v267_1_3_address1,v267_1_3_ce1,v267_1_3_q1,v267_2_0_address0,v267_2_0_ce0,v267_2_0_q0,v267_2_0_address1,v267_2_0_ce1,v267_2_0_q1,v267_2_1_address0,v267_2_1_ce0,v267_2_1_q0,v267_2_1_address1,v267_2_1_ce1,v267_2_1_q1,v267_2_2_address0,v267_2_2_ce0,v267_2_2_q0,v267_2_2_address1,v267_2_2_ce1,v267_2_2_q1,v267_2_3_address0,v267_2_3_ce0,v267_2_3_q0,v267_2_3_address1,v267_2_3_ce1,v267_2_3_q1,v267_3_0_address0,v267_3_0_ce0,v267_3_0_q0,v267_3_0_address1,v267_3_0_ce1,v267_3_0_q1,v267_3_1_address0,v267_3_1_ce0,v267_3_1_q0,v267_3_1_address1,v267_3_1_ce1,v267_3_1_q1,v267_3_2_address0,v267_3_2_ce0,v267_3_2_q0,v267_3_2_address1,v267_3_2_ce1,v267_3_2_q1,v267_3_3_address0,v267_3_3_ce0,v267_3_3_q0,v267_3_3_address1,v267_3_3_ce1,v267_3_3_q1,v278_din,v278_full_n,v278_write,v265_address0,v265_ce0,v265_we0,v265_d0,v265_q0,v265_address1,v265_ce1,v265_we1,v265_d1,v265_q1,grp_fu_194_p_din0,grp_fu_194_p_din1,grp_fu_194_p_opcode,grp_fu_194_p_dout0,grp_fu_194_p_ce,grp_fu_198_p_din0,grp_fu_198_p_din1,grp_fu_198_p_dout0,grp_fu_198_p_ce); 
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
output  [15:0] v266_address0;
output   v266_ce0;
input  [31:0] v266_q0;
output  [11:0] v267_0_0_address0;
output   v267_0_0_ce0;
input  [31:0] v267_0_0_q0;
output  [11:0] v267_0_0_address1;
output   v267_0_0_ce1;
input  [31:0] v267_0_0_q1;
output  [11:0] v267_0_1_address0;
output   v267_0_1_ce0;
input  [31:0] v267_0_1_q0;
output  [11:0] v267_0_1_address1;
output   v267_0_1_ce1;
input  [31:0] v267_0_1_q1;
output  [11:0] v267_0_2_address0;
output   v267_0_2_ce0;
input  [31:0] v267_0_2_q0;
output  [11:0] v267_0_2_address1;
output   v267_0_2_ce1;
input  [31:0] v267_0_2_q1;
output  [11:0] v267_0_3_address0;
output   v267_0_3_ce0;
input  [31:0] v267_0_3_q0;
output  [11:0] v267_0_3_address1;
output   v267_0_3_ce1;
input  [31:0] v267_0_3_q1;
output  [11:0] v267_1_0_address0;
output   v267_1_0_ce0;
input  [31:0] v267_1_0_q0;
output  [11:0] v267_1_0_address1;
output   v267_1_0_ce1;
input  [31:0] v267_1_0_q1;
output  [11:0] v267_1_1_address0;
output   v267_1_1_ce0;
input  [31:0] v267_1_1_q0;
output  [11:0] v267_1_1_address1;
output   v267_1_1_ce1;
input  [31:0] v267_1_1_q1;
output  [11:0] v267_1_2_address0;
output   v267_1_2_ce0;
input  [31:0] v267_1_2_q0;
output  [11:0] v267_1_2_address1;
output   v267_1_2_ce1;
input  [31:0] v267_1_2_q1;
output  [11:0] v267_1_3_address0;
output   v267_1_3_ce0;
input  [31:0] v267_1_3_q0;
output  [11:0] v267_1_3_address1;
output   v267_1_3_ce1;
input  [31:0] v267_1_3_q1;
output  [11:0] v267_2_0_address0;
output   v267_2_0_ce0;
input  [31:0] v267_2_0_q0;
output  [11:0] v267_2_0_address1;
output   v267_2_0_ce1;
input  [31:0] v267_2_0_q1;
output  [11:0] v267_2_1_address0;
output   v267_2_1_ce0;
input  [31:0] v267_2_1_q0;
output  [11:0] v267_2_1_address1;
output   v267_2_1_ce1;
input  [31:0] v267_2_1_q1;
output  [11:0] v267_2_2_address0;
output   v267_2_2_ce0;
input  [31:0] v267_2_2_q0;
output  [11:0] v267_2_2_address1;
output   v267_2_2_ce1;
input  [31:0] v267_2_2_q1;
output  [11:0] v267_2_3_address0;
output   v267_2_3_ce0;
input  [31:0] v267_2_3_q0;
output  [11:0] v267_2_3_address1;
output   v267_2_3_ce1;
input  [31:0] v267_2_3_q1;
output  [11:0] v267_3_0_address0;
output   v267_3_0_ce0;
input  [31:0] v267_3_0_q0;
output  [11:0] v267_3_0_address1;
output   v267_3_0_ce1;
input  [31:0] v267_3_0_q1;
output  [11:0] v267_3_1_address0;
output   v267_3_1_ce0;
input  [31:0] v267_3_1_q0;
output  [11:0] v267_3_1_address1;
output   v267_3_1_ce1;
input  [31:0] v267_3_1_q1;
output  [11:0] v267_3_2_address0;
output   v267_3_2_ce0;
input  [31:0] v267_3_2_q0;
output  [11:0] v267_3_2_address1;
output   v267_3_2_ce1;
input  [31:0] v267_3_2_q1;
output  [11:0] v267_3_3_address0;
output   v267_3_3_ce0;
input  [31:0] v267_3_3_q0;
output  [11:0] v267_3_3_address1;
output   v267_3_3_ce1;
input  [31:0] v267_3_3_q1;
output  [0:0] v278_din;
input   v278_full_n;
output   v278_write;
output  [15:0] v265_address0;
output   v265_ce0;
output   v265_we0;
output  [31:0] v265_d0;
input  [31:0] v265_q0;
output  [15:0] v265_address1;
output   v265_ce1;
output   v265_we1;
output  [31:0] v265_d1;
input  [31:0] v265_q1;
output  [31:0] grp_fu_194_p_din0;
output  [31:0] grp_fu_194_p_din1;
output  [1:0] grp_fu_194_p_opcode;
input  [31:0] grp_fu_194_p_dout0;
output   grp_fu_194_p_ce;
output  [31:0] grp_fu_198_p_din0;
output  [31:0] grp_fu_198_p_din1;
input  [31:0] grp_fu_198_p_dout0;
output   grp_fu_198_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v278_blk_n;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln132_fu_205_p2;
wire   [7:0] add_ln132_fu_211_p2;
reg   [7:0] add_ln132_reg_303;
wire   [15:0] zext_ln132_fu_217_p1;
reg   [15:0] zext_ln132_reg_308;
wire   [1:0] trunc_ln132_fu_221_p1;
reg   [1:0] trunc_ln132_reg_313;
wire   [11:0] mul_ln138_fu_239_p2;
reg   [11:0] mul_ln138_reg_318;
wire   [0:0] cmp11_fu_245_p2;
reg   [0:0] cmp11_reg_323;
wire   [15:0] add_ln133_1_fu_251_p2;
reg   [15:0] add_ln133_1_reg_328;
wire    ap_CS_fsm_state3;
wire   [15:0] add_ln133_2_fu_257_p2;
reg   [15:0] add_ln133_2_reg_333;
wire   [7:0] add_ln133_fu_269_p2;
reg   [7:0] add_ln133_reg_341;
reg   [31:0] v266_load_reg_351;
wire    ap_CS_fsm_state4;
wire   [31:0] v88_fu_289_p1;
reg   [31:0] v88_reg_356;
wire    ap_CS_fsm_state5;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_start;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_done;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_idle;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_ready;
wire   [15:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_ce0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_we0;
wire   [31:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_d0;
wire   [15:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_ce1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_we1;
wire   [31:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_d1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_0_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_0_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_0_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_0_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_1_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_1_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_1_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_1_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_2_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_2_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_2_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_2_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_3_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_3_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_3_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_3_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_0_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_0_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_0_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_0_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_1_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_1_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_1_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_1_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_2_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_2_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_2_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_2_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_3_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_3_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_3_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_3_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_0_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_0_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_0_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_0_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_1_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_1_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_1_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_1_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_2_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_2_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_2_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_2_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_3_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_3_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_3_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_3_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_0_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_0_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_0_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_0_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_1_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_1_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_1_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_1_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_2_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_2_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_2_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_2_ce1;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_3_address0;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_3_ce0;
wire   [11:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_3_address1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_3_ce1;
wire   [31:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_361_p_din0;
wire   [31:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_361_p_din1;
wire   [1:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_361_p_opcode;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_361_p_ce;
wire   [31:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_365_p_din0;
wire   [31:0] grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_365_p_din1;
wire    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_365_p_ce;
reg   [7:0] v84_reg_119;
reg    ap_block_state2;
wire    ap_CS_fsm_state6;
reg   [15:0] phi_mul_reg_130;
reg   [15:0] phi_mul2523_reg_141;
reg    grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_start_reg;
wire   [63:0] p_cast_fu_280_p1;
wire   [0:0] icmp_ln133_fu_263_p2;
reg   [7:0] v83_fu_94;
reg    v278_write_local;
reg    v266_ce0_local;
wire   [5:0] lshr_ln_fu_225_p4;
wire   [5:0] mul_ln138_fu_239_p0;
wire   [6:0] mul_ln138_fu_239_p1;
wire   [15:0] empty_fu_275_p2;
reg    grp_fu_361_ce;
reg    grp_fu_365_ce;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire   [11:0] mul_ln138_fu_239_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_start_reg = 1'b0;
#0 v83_fu_94 = 8'd0;
end
kernel_3mm_kernel_3mm_node1_Pipeline_label_5 grp_kernel_3mm_node1_Pipeline_label_5_fu_153(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_start),.ap_done(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_done),.ap_idle(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_idle),.ap_ready(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_ready),.phi_mul2523(phi_mul2523_reg_141),.v265_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_address0),.v265_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_ce0),.v265_we0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_we0),.v265_d0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_d0),.v265_q0(v265_q0),.v265_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_address1),.v265_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_ce1),.v265_we1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_we1),.v265_d1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_d1),.v265_q1(v265_q1),.mul_ln138(mul_ln138_reg_318),.v267_0_0_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_0_address0),.v267_0_0_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_0_ce0),.v267_0_0_q0(v267_0_0_q0),.v267_0_0_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_0_address1),.v267_0_0_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_0_ce1),.v267_0_0_q1(v267_0_0_q1),.v267_0_1_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_1_address0),.v267_0_1_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_1_ce0),.v267_0_1_q0(v267_0_1_q0),.v267_0_1_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_1_address1),.v267_0_1_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_1_ce1),.v267_0_1_q1(v267_0_1_q1),.v267_0_2_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_2_address0),.v267_0_2_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_2_ce0),.v267_0_2_q0(v267_0_2_q0),.v267_0_2_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_2_address1),.v267_0_2_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_2_ce1),.v267_0_2_q1(v267_0_2_q1),.v267_0_3_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_3_address0),.v267_0_3_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_3_ce0),.v267_0_3_q0(v267_0_3_q0),.v267_0_3_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_3_address1),.v267_0_3_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_3_ce1),.v267_0_3_q1(v267_0_3_q1),.v267_1_0_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_0_address0),.v267_1_0_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_0_ce0),.v267_1_0_q0(v267_1_0_q0),.v267_1_0_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_0_address1),.v267_1_0_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_0_ce1),.v267_1_0_q1(v267_1_0_q1),.v267_1_1_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_1_address0),.v267_1_1_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_1_ce0),.v267_1_1_q0(v267_1_1_q0),.v267_1_1_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_1_address1),.v267_1_1_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_1_ce1),.v267_1_1_q1(v267_1_1_q1),.v267_1_2_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_2_address0),.v267_1_2_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_2_ce0),.v267_1_2_q0(v267_1_2_q0),.v267_1_2_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_2_address1),.v267_1_2_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_2_ce1),.v267_1_2_q1(v267_1_2_q1),.v267_1_3_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_3_address0),.v267_1_3_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_3_ce0),.v267_1_3_q0(v267_1_3_q0),.v267_1_3_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_3_address1),.v267_1_3_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_3_ce1),.v267_1_3_q1(v267_1_3_q1),.v267_2_0_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_0_address0),.v267_2_0_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_0_ce0),.v267_2_0_q0(v267_2_0_q0),.v267_2_0_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_0_address1),.v267_2_0_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_0_ce1),.v267_2_0_q1(v267_2_0_q1),.v267_2_1_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_1_address0),.v267_2_1_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_1_ce0),.v267_2_1_q0(v267_2_1_q0),.v267_2_1_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_1_address1),.v267_2_1_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_1_ce1),.v267_2_1_q1(v267_2_1_q1),.v267_2_2_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_2_address0),.v267_2_2_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_2_ce0),.v267_2_2_q0(v267_2_2_q0),.v267_2_2_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_2_address1),.v267_2_2_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_2_ce1),.v267_2_2_q1(v267_2_2_q1),.v267_2_3_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_3_address0),.v267_2_3_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_3_ce0),.v267_2_3_q0(v267_2_3_q0),.v267_2_3_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_3_address1),.v267_2_3_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_3_ce1),.v267_2_3_q1(v267_2_3_q1),.v267_3_0_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_0_address0),.v267_3_0_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_0_ce0),.v267_3_0_q0(v267_3_0_q0),.v267_3_0_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_0_address1),.v267_3_0_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_0_ce1),.v267_3_0_q1(v267_3_0_q1),.v267_3_1_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_1_address0),.v267_3_1_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_1_ce0),.v267_3_1_q0(v267_3_1_q0),.v267_3_1_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_1_address1),.v267_3_1_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_1_ce1),.v267_3_1_q1(v267_3_1_q1),.v267_3_2_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_2_address0),.v267_3_2_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_2_ce0),.v267_3_2_q0(v267_3_2_q0),.v267_3_2_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_2_address1),.v267_3_2_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_2_ce1),.v267_3_2_q1(v267_3_2_q1),.v267_3_3_address0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_3_address0),.v267_3_3_ce0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_3_ce0),.v267_3_3_q0(v267_3_3_q0),.v267_3_3_address1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_3_address1),.v267_3_3_ce1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_3_ce1),.v267_3_3_q1(v267_3_3_q1),.cmp11(cmp11_reg_323),.empty(trunc_ln132_reg_313),.v88(v88_reg_356),.grp_fu_361_p_din0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_361_p_din0),.grp_fu_361_p_din1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_361_p_din1),.grp_fu_361_p_opcode(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_361_p_opcode),.grp_fu_361_p_dout0(grp_fu_194_p_dout0),.grp_fu_361_p_ce(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_361_p_ce),.grp_fu_365_p_din0(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_365_p_din0),.grp_fu_365_p_din1(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_365_p_din1),.grp_fu_365_p_dout0(grp_fu_198_p_dout0),.grp_fu_365_p_ce(grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_365_p_ce));
kernel_3mm_mul_6ns_7ns_12_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 6 ),.din1_WIDTH( 7 ),.dout_WIDTH( 12 ))
mul_6ns_7ns_12_1_1_U170(.din0(mul_ln138_fu_239_p0),.din1(mul_ln138_fu_239_p1),.dout(mul_ln138_fu_239_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_ready == 1'b1)) begin
            grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        phi_mul2523_reg_141 <= add_ln133_1_reg_328;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln132_fu_205_p2 == 1'd0))) begin
        phi_mul2523_reg_141 <= 16'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        phi_mul_reg_130 <= add_ln133_2_reg_333;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln132_fu_205_p2 == 1'd0))) begin
        phi_mul_reg_130 <= 16'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        v83_fu_94 <= 8'd0;
    end else if (((icmp_ln133_fu_263_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        v83_fu_94 <= add_ln132_reg_303;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
        v84_reg_119 <= add_ln133_reg_341;
    end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln132_fu_205_p2 == 1'd0))) begin
        v84_reg_119 <= 8'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln132_reg_303 <= add_ln132_fu_211_p2;
        cmp11_reg_323 <= cmp11_fu_245_p2;
        mul_ln138_reg_318 <= mul_ln138_fu_239_p2;
        trunc_ln132_reg_313 <= trunc_ln132_fu_221_p1;
        zext_ln132_reg_308[7 : 0] <= zext_ln132_fu_217_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln133_1_reg_328 <= add_ln133_1_fu_251_p2;
        add_ln133_2_reg_333 <= add_ln133_2_fu_257_p2;
        add_ln133_reg_341 <= add_ln133_fu_269_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v266_load_reg_351 <= v266_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v88_reg_356 <= v88_fu_289_p1;
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
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln132_fu_205_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln132_fu_205_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_361_ce = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_361_p_ce;
    end else begin
        grp_fu_361_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fu_365_ce = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_365_p_ce;
    end else begin
        grp_fu_365_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v266_ce0_local = 1'b1;
    end else begin
        v266_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln132_fu_205_p2 == 1'd1))) begin
        v278_blk_n = v278_full_n;
    end else begin
        v278_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln132_fu_205_p2 == 1'd1))) begin
        v278_write_local = 1'b1;
    end else begin
        v278_write_local = 1'b0;
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
            if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln132_fu_205_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b0 == ap_block_state2) & (1'b1 == ap_CS_fsm_state2) & (icmp_ln132_fu_205_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln133_fu_263_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln132_fu_211_p2 = (v83_fu_94 + 8'd1);
assign add_ln133_1_fu_251_p2 = (phi_mul2523_reg_141 + 16'd210);
assign add_ln133_2_fu_257_p2 = (phi_mul_reg_130 + 16'd220);
assign add_ln133_fu_269_p2 = (v84_reg_119 + 8'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state2 = ((icmp_ln132_fu_205_p2 == 1'd1) & (v278_full_n == 1'b0));
end
assign cmp11_fu_245_p2 = ((v83_fu_94 == 8'd0) ? 1'b1 : 1'b0);
assign empty_fu_275_p2 = (phi_mul_reg_130 + zext_ln132_reg_308);
assign grp_fu_194_p_ce = grp_fu_361_ce;
assign grp_fu_194_p_din0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_361_p_din0;
assign grp_fu_194_p_din1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_361_p_din1;
assign grp_fu_194_p_opcode = 2'd0;
assign grp_fu_198_p_ce = grp_fu_365_ce;
assign grp_fu_198_p_din0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_365_p_din0;
assign grp_fu_198_p_din1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_grp_fu_365_p_din1;
assign grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_start = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_ap_start_reg;
assign icmp_ln132_fu_205_p2 = ((v83_fu_94 == 8'd220) ? 1'b1 : 1'b0);
assign icmp_ln133_fu_263_p2 = ((v84_reg_119 == 8'd190) ? 1'b1 : 1'b0);
assign lshr_ln_fu_225_p4 = {{v83_fu_94[7:2]}};
assign mul_ln138_fu_239_p0 = mul_ln138_fu_239_p00;
assign mul_ln138_fu_239_p00 = lshr_ln_fu_225_p4;
assign mul_ln138_fu_239_p1 = 12'd53;
assign p_cast_fu_280_p1 = empty_fu_275_p2;
assign trunc_ln132_fu_221_p1 = v83_fu_94[1:0];
assign v265_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_address0;
assign v265_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_address1;
assign v265_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_ce0;
assign v265_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_ce1;
assign v265_d0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_d0;
assign v265_d1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_d1;
assign v265_we0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_we0;
assign v265_we1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v265_we1;
assign v266_address0 = p_cast_fu_280_p1;
assign v266_ce0 = v266_ce0_local;
assign v267_0_0_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_0_address0;
assign v267_0_0_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_0_address1;
assign v267_0_0_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_0_ce0;
assign v267_0_0_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_0_ce1;
assign v267_0_1_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_1_address0;
assign v267_0_1_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_1_address1;
assign v267_0_1_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_1_ce0;
assign v267_0_1_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_1_ce1;
assign v267_0_2_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_2_address0;
assign v267_0_2_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_2_address1;
assign v267_0_2_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_2_ce0;
assign v267_0_2_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_2_ce1;
assign v267_0_3_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_3_address0;
assign v267_0_3_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_3_address1;
assign v267_0_3_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_3_ce0;
assign v267_0_3_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_0_3_ce1;
assign v267_1_0_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_0_address0;
assign v267_1_0_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_0_address1;
assign v267_1_0_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_0_ce0;
assign v267_1_0_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_0_ce1;
assign v267_1_1_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_1_address0;
assign v267_1_1_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_1_address1;
assign v267_1_1_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_1_ce0;
assign v267_1_1_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_1_ce1;
assign v267_1_2_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_2_address0;
assign v267_1_2_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_2_address1;
assign v267_1_2_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_2_ce0;
assign v267_1_2_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_2_ce1;
assign v267_1_3_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_3_address0;
assign v267_1_3_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_3_address1;
assign v267_1_3_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_3_ce0;
assign v267_1_3_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_1_3_ce1;
assign v267_2_0_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_0_address0;
assign v267_2_0_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_0_address1;
assign v267_2_0_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_0_ce0;
assign v267_2_0_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_0_ce1;
assign v267_2_1_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_1_address0;
assign v267_2_1_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_1_address1;
assign v267_2_1_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_1_ce0;
assign v267_2_1_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_1_ce1;
assign v267_2_2_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_2_address0;
assign v267_2_2_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_2_address1;
assign v267_2_2_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_2_ce0;
assign v267_2_2_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_2_ce1;
assign v267_2_3_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_3_address0;
assign v267_2_3_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_3_address1;
assign v267_2_3_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_3_ce0;
assign v267_2_3_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_2_3_ce1;
assign v267_3_0_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_0_address0;
assign v267_3_0_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_0_address1;
assign v267_3_0_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_0_ce0;
assign v267_3_0_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_0_ce1;
assign v267_3_1_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_1_address0;
assign v267_3_1_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_1_address1;
assign v267_3_1_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_1_ce0;
assign v267_3_1_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_1_ce1;
assign v267_3_2_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_2_address0;
assign v267_3_2_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_2_address1;
assign v267_3_2_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_2_ce0;
assign v267_3_2_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_2_ce1;
assign v267_3_3_address0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_3_address0;
assign v267_3_3_address1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_3_address1;
assign v267_3_3_ce0 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_3_ce0;
assign v267_3_3_ce1 = grp_kernel_3mm_node1_Pipeline_label_5_fu_153_v267_3_3_ce1;
assign v278_din = 1'd1;
assign v278_write = v278_write_local;
assign v88_fu_289_p1 = v266_load_reg_351;
assign zext_ln132_fu_217_p1 = v83_fu_94;
always @ (posedge ap_clk) begin
    zext_ln132_reg_308[15:8] <= 8'b00000000;
end
endmodule 