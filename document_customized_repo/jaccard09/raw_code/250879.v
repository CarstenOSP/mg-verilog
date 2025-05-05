module kernel_atax_kernel_atax_node1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v354_address0,v354_ce0,v354_q0,v354_address1,v354_ce1,v354_q1,v350_dout,v350_empty_n,v350_read,v357_address0,v357_ce0,v357_q0,v356_0_address0,v356_0_ce0,v356_0_we0,v356_0_d0,v356_0_q0,v356_0_address1,v356_0_ce1,v356_0_we1,v356_0_d1,v356_0_q1,v356_1_address0,v356_1_ce0,v356_1_we0,v356_1_d0,v356_1_q0,v356_1_address1,v356_1_ce1,v356_1_we1,v356_1_d1,v356_1_q1,v356_2_address0,v356_2_ce0,v356_2_we0,v356_2_d0,v356_2_q0,v356_2_address1,v356_2_ce1,v356_2_we1,v356_2_d1,v356_2_q1,v356_3_address0,v356_3_ce0,v356_3_we0,v356_3_d0,v356_3_q0,v356_3_address1,v356_3_ce1,v356_3_we1,v356_3_d1,v356_3_q1,v356_4_address0,v356_4_ce0,v356_4_we0,v356_4_d0,v356_4_q0,v356_4_address1,v356_4_ce1,v356_4_we1,v356_4_d1,v356_4_q1,v356_5_address0,v356_5_ce0,v356_5_we0,v356_5_d0,v356_5_q0,v356_5_address1,v356_5_ce1,v356_5_we1,v356_5_d1,v356_5_q1,v356_6_address0,v356_6_ce0,v356_6_we0,v356_6_d0,v356_6_q0,v356_6_address1,v356_6_ce1,v356_6_we1,v356_6_d1,v356_6_q1,v356_7_address0,v356_7_ce0,v356_7_we0,v356_7_d0,v356_7_q0,v356_7_address1,v356_7_ce1,v356_7_we1,v356_7_d1,v356_7_q1,v4,grp_fu_212_p_din0,grp_fu_212_p_din1,grp_fu_212_p_opcode,grp_fu_212_p_dout0,grp_fu_212_p_ce,grp_fu_216_p_din0,grp_fu_216_p_din1,grp_fu_216_p_opcode,grp_fu_216_p_dout0,grp_fu_216_p_ce,grp_fu_220_p_din0,grp_fu_220_p_din1,grp_fu_220_p_dout0,grp_fu_220_p_ce,grp_fu_224_p_din0,grp_fu_224_p_din1,grp_fu_224_p_dout0,grp_fu_224_p_ce); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [17:0] v354_address0;
output   v354_ce0;
input  [31:0] v354_q0;
output  [17:0] v354_address1;
output   v354_ce1;
input  [31:0] v354_q1;
input  [0:0] v350_dout;
input   v350_empty_n;
output   v350_read;
output  [8:0] v357_address0;
output   v357_ce0;
input  [31:0] v357_q0;
output  [5:0] v356_0_address0;
output   v356_0_ce0;
output   v356_0_we0;
output  [31:0] v356_0_d0;
input  [31:0] v356_0_q0;
output  [5:0] v356_0_address1;
output   v356_0_ce1;
output   v356_0_we1;
output  [31:0] v356_0_d1;
input  [31:0] v356_0_q1;
output  [5:0] v356_1_address0;
output   v356_1_ce0;
output   v356_1_we0;
output  [31:0] v356_1_d0;
input  [31:0] v356_1_q0;
output  [5:0] v356_1_address1;
output   v356_1_ce1;
output   v356_1_we1;
output  [31:0] v356_1_d1;
input  [31:0] v356_1_q1;
output  [5:0] v356_2_address0;
output   v356_2_ce0;
output   v356_2_we0;
output  [31:0] v356_2_d0;
input  [31:0] v356_2_q0;
output  [5:0] v356_2_address1;
output   v356_2_ce1;
output   v356_2_we1;
output  [31:0] v356_2_d1;
input  [31:0] v356_2_q1;
output  [5:0] v356_3_address0;
output   v356_3_ce0;
output   v356_3_we0;
output  [31:0] v356_3_d0;
input  [31:0] v356_3_q0;
output  [5:0] v356_3_address1;
output   v356_3_ce1;
output   v356_3_we1;
output  [31:0] v356_3_d1;
input  [31:0] v356_3_q1;
output  [5:0] v356_4_address0;
output   v356_4_ce0;
output   v356_4_we0;
output  [31:0] v356_4_d0;
input  [31:0] v356_4_q0;
output  [5:0] v356_4_address1;
output   v356_4_ce1;
output   v356_4_we1;
output  [31:0] v356_4_d1;
input  [31:0] v356_4_q1;
output  [5:0] v356_5_address0;
output   v356_5_ce0;
output   v356_5_we0;
output  [31:0] v356_5_d0;
input  [31:0] v356_5_q0;
output  [5:0] v356_5_address1;
output   v356_5_ce1;
output   v356_5_we1;
output  [31:0] v356_5_d1;
input  [31:0] v356_5_q1;
output  [5:0] v356_6_address0;
output   v356_6_ce0;
output   v356_6_we0;
output  [31:0] v356_6_d0;
input  [31:0] v356_6_q0;
output  [5:0] v356_6_address1;
output   v356_6_ce1;
output   v356_6_we1;
output  [31:0] v356_6_d1;
input  [31:0] v356_6_q1;
output  [5:0] v356_7_address0;
output   v356_7_ce0;
output   v356_7_we0;
output  [31:0] v356_7_d0;
input  [31:0] v356_7_q0;
output  [5:0] v356_7_address1;
output   v356_7_ce1;
output   v356_7_we1;
output  [31:0] v356_7_d1;
input  [31:0] v356_7_q1;
input  [8:0] v4;
output  [31:0] grp_fu_212_p_din0;
output  [31:0] grp_fu_212_p_din1;
output  [1:0] grp_fu_212_p_opcode;
input  [31:0] grp_fu_212_p_dout0;
output   grp_fu_212_p_ce;
output  [31:0] grp_fu_216_p_din0;
output  [31:0] grp_fu_216_p_din1;
output  [1:0] grp_fu_216_p_opcode;
input  [31:0] grp_fu_216_p_dout0;
output   grp_fu_216_p_ce;
output  [31:0] grp_fu_220_p_din0;
output  [31:0] grp_fu_220_p_din1;
input  [31:0] grp_fu_220_p_dout0;
output   grp_fu_220_p_ce;
output  [31:0] grp_fu_224_p_din0;
output  [31:0] grp_fu_224_p_din1;
input  [31:0] grp_fu_224_p_dout0;
output   grp_fu_224_p_ce;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    v350_blk_n;
wire    ap_CS_fsm_state3;
wire   [17:0] mul_ln32_fu_103_p2;
reg   [17:0] mul_ln32_reg_125;
wire    ap_CS_fsm_state2;
wire   [31:0] v8_fu_110_p1;
reg   [31:0] v8_reg_130;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_start;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_done;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_idle;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_ready;
wire   [17:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v354_address0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v354_ce0;
wire   [17:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v354_address1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v354_ce1;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_address0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_ce0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_we0;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_d0;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_address1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_ce1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_we1;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_d1;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_address0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_ce0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_we0;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_d0;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_address1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_ce1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_we1;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_d1;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_address0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_ce0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_we0;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_d0;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_address1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_ce1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_we1;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_d1;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_address0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_ce0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_we0;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_d0;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_address1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_ce1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_we1;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_d1;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_address0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_ce0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_we0;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_d0;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_address1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_ce1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_we1;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_d1;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_address0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_ce0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_we0;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_d0;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_address1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_ce1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_we1;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_d1;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_address0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_ce0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_we0;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_d0;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_address1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_ce1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_we1;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_d1;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_address0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_ce0;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_we0;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_d0;
wire   [5:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_address1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_ce1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_we1;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_d1;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_135_p_din0;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_135_p_din1;
wire   [1:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_135_p_opcode;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_135_p_ce;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_139_p_din0;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_139_p_din1;
wire   [1:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_139_p_opcode;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_139_p_ce;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_143_p_din0;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_143_p_din1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_143_p_ce;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_147_p_din0;
wire   [31:0] grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_147_p_din1;
wire    grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_147_p_ce;
reg    grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_start_reg;
wire   [63:0] idxprom1_fu_95_p1;
reg    v350_read_local;
reg    v357_ce0_local;
wire   [8:0] mul_ln32_fu_103_p0;
wire   [9:0] mul_ln32_fu_103_p1;
reg    grp_fu_135_ce;
reg    grp_fu_139_ce;
reg    grp_fu_143_ce;
reg    grp_fu_147_ce;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
wire   [17:0] mul_ln32_fu_103_p00;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_start_reg = 1'b0;
end
kernel_atax_kernel_atax_node1_Pipeline_label_0 grp_kernel_atax_node1_Pipeline_label_0_fu_71(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_start),.ap_done(grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_done),.ap_idle(grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_idle),.ap_ready(grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_ready),.mul_ln32(mul_ln32_reg_125),.v354_address0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v354_address0),.v354_ce0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v354_ce0),.v354_q0(v354_q0),.v354_address1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v354_address1),.v354_ce1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v354_ce1),.v354_q1(v354_q1),.v356_7_address0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_address0),.v356_7_ce0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_ce0),.v356_7_we0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_we0),.v356_7_d0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_d0),.v356_7_q0(v356_7_q0),.v356_7_address1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_address1),.v356_7_ce1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_ce1),.v356_7_we1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_we1),.v356_7_d1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_d1),.v356_7_q1(v356_7_q1),.v356_6_address0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_address0),.v356_6_ce0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_ce0),.v356_6_we0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_we0),.v356_6_d0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_d0),.v356_6_q0(v356_6_q0),.v356_6_address1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_address1),.v356_6_ce1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_ce1),.v356_6_we1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_we1),.v356_6_d1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_d1),.v356_6_q1(v356_6_q1),.v356_5_address0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_address0),.v356_5_ce0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_ce0),.v356_5_we0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_we0),.v356_5_d0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_d0),.v356_5_q0(v356_5_q0),.v356_5_address1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_address1),.v356_5_ce1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_ce1),.v356_5_we1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_we1),.v356_5_d1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_d1),.v356_5_q1(v356_5_q1),.v356_4_address0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_address0),.v356_4_ce0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_ce0),.v356_4_we0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_we0),.v356_4_d0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_d0),.v356_4_q0(v356_4_q0),.v356_4_address1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_address1),.v356_4_ce1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_ce1),.v356_4_we1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_we1),.v356_4_d1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_d1),.v356_4_q1(v356_4_q1),.v356_3_address0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_address0),.v356_3_ce0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_ce0),.v356_3_we0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_we0),.v356_3_d0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_d0),.v356_3_q0(v356_3_q0),.v356_3_address1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_address1),.v356_3_ce1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_ce1),.v356_3_we1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_we1),.v356_3_d1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_d1),.v356_3_q1(v356_3_q1),.v356_2_address0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_address0),.v356_2_ce0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_ce0),.v356_2_we0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_we0),.v356_2_d0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_d0),.v356_2_q0(v356_2_q0),.v356_2_address1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_address1),.v356_2_ce1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_ce1),.v356_2_we1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_we1),.v356_2_d1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_d1),.v356_2_q1(v356_2_q1),.v356_1_address0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_address0),.v356_1_ce0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_ce0),.v356_1_we0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_we0),.v356_1_d0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_d0),.v356_1_q0(v356_1_q0),.v356_1_address1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_address1),.v356_1_ce1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_ce1),.v356_1_we1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_we1),.v356_1_d1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_d1),.v356_1_q1(v356_1_q1),.v356_0_address0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_address0),.v356_0_ce0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_ce0),.v356_0_we0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_we0),.v356_0_d0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_d0),.v356_0_q0(v356_0_q0),.v356_0_address1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_address1),.v356_0_ce1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_ce1),.v356_0_we1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_we1),.v356_0_d1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_d1),.v356_0_q1(v356_0_q1),.v8(v8_reg_130),.grp_fu_135_p_din0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_135_p_din0),.grp_fu_135_p_din1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_135_p_din1),.grp_fu_135_p_opcode(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_135_p_opcode),.grp_fu_135_p_dout0(grp_fu_212_p_dout0),.grp_fu_135_p_ce(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_135_p_ce),.grp_fu_139_p_din0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_139_p_din0),.grp_fu_139_p_din1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_139_p_din1),.grp_fu_139_p_opcode(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_139_p_opcode),.grp_fu_139_p_dout0(grp_fu_216_p_dout0),.grp_fu_139_p_ce(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_139_p_ce),.grp_fu_143_p_din0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_143_p_din0),.grp_fu_143_p_din1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_143_p_din1),.grp_fu_143_p_dout0(grp_fu_220_p_dout0),.grp_fu_143_p_ce(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_143_p_ce),.grp_fu_147_p_din0(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_147_p_din0),.grp_fu_147_p_din1(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_147_p_din1),.grp_fu_147_p_dout0(grp_fu_224_p_dout0),.grp_fu_147_p_ce(grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_147_p_ce));
kernel_atax_mul_9ns_10ns_18_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 10 ),.dout_WIDTH( 18 ))
mul_9ns_10ns_18_1_1_U100(.din0(mul_ln32_fu_103_p0),.din1(mul_ln32_fu_103_p1),.dout(mul_ln32_fu_103_p2));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_ready == 1'b1)) begin
            grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        mul_ln32_reg_125 <= mul_ln32_fu_103_p2;
        v8_reg_130 <= v8_fu_110_p1;
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
    if (((v350_empty_n == 1'b0) | (grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_done == 1'b0))) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end
always @ (*) begin
    if (((~((v350_empty_n == 1'b0) | (grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state3)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if ((~((v350_empty_n == 1'b0) | (grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_135_ce = grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_135_p_ce;
    end else begin
        grp_fu_135_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_139_ce = grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_139_p_ce;
    end else begin
        grp_fu_139_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_143_ce = grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_143_p_ce;
    end else begin
        grp_fu_143_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        grp_fu_147_ce = grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_147_p_ce;
    end else begin
        grp_fu_147_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        v350_blk_n = v350_empty_n;
    end else begin
        v350_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((v350_empty_n == 1'b0) | (grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
        v350_read_local = 1'b1;
    end else begin
        v350_read_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        v357_ce0_local = 1'b1;
    end else begin
        v357_ce0_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if ((~((v350_empty_n == 1'b0) | (grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_done == 1'b0)) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign grp_fu_212_p_ce = grp_fu_135_ce;
assign grp_fu_212_p_din0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_135_p_din0;
assign grp_fu_212_p_din1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_135_p_din1;
assign grp_fu_212_p_opcode = 2'd0;
assign grp_fu_216_p_ce = grp_fu_139_ce;
assign grp_fu_216_p_din0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_139_p_din0;
assign grp_fu_216_p_din1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_139_p_din1;
assign grp_fu_216_p_opcode = 2'd0;
assign grp_fu_220_p_ce = grp_fu_143_ce;
assign grp_fu_220_p_din0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_143_p_din0;
assign grp_fu_220_p_din1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_143_p_din1;
assign grp_fu_224_p_ce = grp_fu_147_ce;
assign grp_fu_224_p_din0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_147_p_din0;
assign grp_fu_224_p_din1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_grp_fu_147_p_din1;
assign grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_start = grp_kernel_atax_node1_Pipeline_label_0_fu_71_ap_start_reg;
assign idxprom1_fu_95_p1 = v4;
assign mul_ln32_fu_103_p0 = mul_ln32_fu_103_p00;
assign mul_ln32_fu_103_p00 = v4;
assign mul_ln32_fu_103_p1 = 18'd410;
assign v350_read = v350_read_local;
assign v354_address0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v354_address0;
assign v354_address1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v354_address1;
assign v354_ce0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v354_ce0;
assign v354_ce1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v354_ce1;
assign v356_0_address0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_address0;
assign v356_0_address1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_address1;
assign v356_0_ce0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_ce0;
assign v356_0_ce1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_ce1;
assign v356_0_d0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_d0;
assign v356_0_d1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_d1;
assign v356_0_we0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_we0;
assign v356_0_we1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_0_we1;
assign v356_1_address0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_address0;
assign v356_1_address1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_address1;
assign v356_1_ce0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_ce0;
assign v356_1_ce1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_ce1;
assign v356_1_d0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_d0;
assign v356_1_d1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_d1;
assign v356_1_we0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_we0;
assign v356_1_we1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_1_we1;
assign v356_2_address0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_address0;
assign v356_2_address1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_address1;
assign v356_2_ce0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_ce0;
assign v356_2_ce1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_ce1;
assign v356_2_d0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_d0;
assign v356_2_d1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_d1;
assign v356_2_we0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_we0;
assign v356_2_we1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_2_we1;
assign v356_3_address0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_address0;
assign v356_3_address1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_address1;
assign v356_3_ce0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_ce0;
assign v356_3_ce1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_ce1;
assign v356_3_d0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_d0;
assign v356_3_d1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_d1;
assign v356_3_we0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_we0;
assign v356_3_we1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_3_we1;
assign v356_4_address0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_address0;
assign v356_4_address1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_address1;
assign v356_4_ce0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_ce0;
assign v356_4_ce1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_ce1;
assign v356_4_d0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_d0;
assign v356_4_d1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_d1;
assign v356_4_we0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_we0;
assign v356_4_we1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_4_we1;
assign v356_5_address0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_address0;
assign v356_5_address1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_address1;
assign v356_5_ce0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_ce0;
assign v356_5_ce1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_ce1;
assign v356_5_d0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_d0;
assign v356_5_d1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_d1;
assign v356_5_we0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_we0;
assign v356_5_we1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_5_we1;
assign v356_6_address0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_address0;
assign v356_6_address1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_address1;
assign v356_6_ce0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_ce0;
assign v356_6_ce1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_ce1;
assign v356_6_d0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_d0;
assign v356_6_d1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_d1;
assign v356_6_we0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_we0;
assign v356_6_we1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_6_we1;
assign v356_7_address0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_address0;
assign v356_7_address1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_address1;
assign v356_7_ce0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_ce0;
assign v356_7_ce1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_ce1;
assign v356_7_d0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_d0;
assign v356_7_d1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_d1;
assign v356_7_we0 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_we0;
assign v356_7_we1 = grp_kernel_atax_node1_Pipeline_label_0_fu_71_v356_7_we1;
assign v357_address0 = idxprom1_fu_95_p1;
assign v357_ce0 = v357_ce0_local;
assign v8_fu_110_p1 = v357_q0;
endmodule 