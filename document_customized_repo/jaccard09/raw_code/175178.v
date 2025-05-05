module kernel_2mm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v218,v219,v220,v221,v222,v223,v224_address0,v224_ce0,v224_q0,v224_address1,v224_ce1,v224_q1,v225_address0,v225_ce0,v225_we0,v225_d0,v225_q0,v225_address1,v225_ce1,v225_we1,v225_d1,v225_q1,v226_0_address0,v226_0_ce0,v226_0_q0,v226_1_address0,v226_1_ce0,v226_1_q0,v227_0_address0,v227_0_ce0,v227_0_q0,v227_0_address1,v227_0_ce1,v227_0_q1,v227_1_address0,v227_1_ce0,v227_1_q0,v227_1_address1,v227_1_ce1,v227_1_q1,v227_2_address0,v227_2_ce0,v227_2_q0,v227_2_address1,v227_2_ce1,v227_2_q1,v227_3_address0,v227_3_ce0,v227_3_q0,v227_3_address1,v227_3_ce1,v227_3_q1,v227_4_address0,v227_4_ce0,v227_4_q0,v227_4_address1,v227_4_ce1,v227_4_q1,v227_5_address0,v227_5_ce0,v227_5_q0,v227_5_address1,v227_5_ce1,v227_5_q1,v227_6_address0,v227_6_ce0,v227_6_q0,v227_6_address1,v227_6_ce1,v227_6_q1,v227_7_address0,v227_7_ce0,v227_7_q0,v227_7_address1,v227_7_ce1,v227_7_q1,v228_0_address0,v228_0_ce0,v228_0_q0,v228_0_address1,v228_0_ce1,v228_0_q1,v228_1_address0,v228_1_ce0,v228_1_q0,v228_1_address1,v228_1_ce1,v228_1_q1,v228_2_address0,v228_2_ce0,v228_2_q0,v228_2_address1,v228_2_ce1,v228_2_q1,v228_3_address0,v228_3_ce0,v228_3_q0,v228_3_address1,v228_3_ce1,v228_3_q1,v228_4_address0,v228_4_ce0,v228_4_q0,v228_4_address1,v228_4_ce1,v228_4_q1,v228_5_address0,v228_5_ce0,v228_5_q0,v228_5_address1,v228_5_ce1,v228_5_q1,v228_6_address0,v228_6_ce0,v228_6_q0,v228_6_address1,v228_6_ce1,v228_6_q1,v228_7_address0,v228_7_ce0,v228_7_q0,v228_7_address1,v228_7_ce1,v228_7_q1,v229_address0,v229_ce0,v229_we0,v229_d0,v229_q0,v229_address1,v229_ce1,v229_we1,v229_d1,v229_q1); 
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
input  [31:0] v218;
input  [31:0] v219;
input  [31:0] v220;
input  [31:0] v221;
input  [31:0] v222;
input  [31:0] v223;
output  [15:0] v224_address0;
output   v224_ce0;
input  [31:0] v224_q0;
output  [15:0] v224_address1;
output   v224_ce1;
input  [31:0] v224_q1;
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
output  [14:0] v226_0_address0;
output   v226_0_ce0;
input  [31:0] v226_0_q0;
output  [14:0] v226_1_address0;
output   v226_1_ce0;
input  [31:0] v226_1_q0;
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
output  [12:0] v228_0_address0;
output   v228_0_ce0;
input  [31:0] v228_0_q0;
output  [12:0] v228_0_address1;
output   v228_0_ce1;
input  [31:0] v228_0_q1;
output  [12:0] v228_1_address0;
output   v228_1_ce0;
input  [31:0] v228_1_q0;
output  [12:0] v228_1_address1;
output   v228_1_ce1;
input  [31:0] v228_1_q1;
output  [12:0] v228_2_address0;
output   v228_2_ce0;
input  [31:0] v228_2_q0;
output  [12:0] v228_2_address1;
output   v228_2_ce1;
input  [31:0] v228_2_q1;
output  [12:0] v228_3_address0;
output   v228_3_ce0;
input  [31:0] v228_3_q0;
output  [12:0] v228_3_address1;
output   v228_3_ce1;
input  [31:0] v228_3_q1;
output  [12:0] v228_4_address0;
output   v228_4_ce0;
input  [31:0] v228_4_q0;
output  [12:0] v228_4_address1;
output   v228_4_ce1;
input  [31:0] v228_4_q1;
output  [12:0] v228_5_address0;
output   v228_5_ce0;
input  [31:0] v228_5_q0;
output  [12:0] v228_5_address1;
output   v228_5_ce1;
input  [31:0] v228_5_q1;
output  [12:0] v228_6_address0;
output   v228_6_ce0;
input  [31:0] v228_6_q0;
output  [12:0] v228_6_address1;
output   v228_6_ce1;
input  [31:0] v228_6_q1;
output  [12:0] v228_7_address0;
output   v228_7_ce0;
input  [31:0] v228_7_q0;
output  [12:0] v228_7_address1;
output   v228_7_ce1;
input  [31:0] v228_7_q1;
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
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
wire    grp_kernel_2mm_node1_fu_108_ap_start;
wire    grp_kernel_2mm_node1_fu_108_ap_done;
wire    grp_kernel_2mm_node1_fu_108_ap_idle;
wire    grp_kernel_2mm_node1_fu_108_ap_ready;
wire   [14:0] grp_kernel_2mm_node1_fu_108_v226_0_address0;
wire    grp_kernel_2mm_node1_fu_108_v226_0_ce0;
wire   [14:0] grp_kernel_2mm_node1_fu_108_v226_1_address0;
wire    grp_kernel_2mm_node1_fu_108_v226_1_ce0;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_0_address0;
wire    grp_kernel_2mm_node1_fu_108_v227_0_ce0;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_0_address1;
wire    grp_kernel_2mm_node1_fu_108_v227_0_ce1;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_1_address0;
wire    grp_kernel_2mm_node1_fu_108_v227_1_ce0;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_1_address1;
wire    grp_kernel_2mm_node1_fu_108_v227_1_ce1;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_2_address0;
wire    grp_kernel_2mm_node1_fu_108_v227_2_ce0;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_2_address1;
wire    grp_kernel_2mm_node1_fu_108_v227_2_ce1;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_3_address0;
wire    grp_kernel_2mm_node1_fu_108_v227_3_ce0;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_3_address1;
wire    grp_kernel_2mm_node1_fu_108_v227_3_ce1;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_4_address0;
wire    grp_kernel_2mm_node1_fu_108_v227_4_ce0;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_4_address1;
wire    grp_kernel_2mm_node1_fu_108_v227_4_ce1;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_5_address0;
wire    grp_kernel_2mm_node1_fu_108_v227_5_ce0;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_5_address1;
wire    grp_kernel_2mm_node1_fu_108_v227_5_ce1;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_6_address0;
wire    grp_kernel_2mm_node1_fu_108_v227_6_ce0;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_6_address1;
wire    grp_kernel_2mm_node1_fu_108_v227_6_ce1;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_7_address0;
wire    grp_kernel_2mm_node1_fu_108_v227_7_ce0;
wire   [12:0] grp_kernel_2mm_node1_fu_108_v227_7_address1;
wire    grp_kernel_2mm_node1_fu_108_v227_7_ce1;
wire   [0:0] grp_kernel_2mm_node1_fu_108_v236_din;
wire    grp_kernel_2mm_node1_fu_108_v236_write;
wire   [15:0] grp_kernel_2mm_node1_fu_108_v225_address0;
wire    grp_kernel_2mm_node1_fu_108_v225_ce0;
wire    grp_kernel_2mm_node1_fu_108_v225_we0;
wire   [31:0] grp_kernel_2mm_node1_fu_108_v225_d0;
wire   [15:0] grp_kernel_2mm_node1_fu_108_v225_address1;
wire    grp_kernel_2mm_node1_fu_108_v225_ce1;
wire    grp_kernel_2mm_node1_fu_108_v225_we1;
wire   [31:0] grp_kernel_2mm_node1_fu_108_v225_d1;
wire   [31:0] grp_kernel_2mm_node1_fu_108_grp_fu_180_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_108_grp_fu_180_p_din1;
wire   [1:0] grp_kernel_2mm_node1_fu_108_grp_fu_180_p_opcode;
wire    grp_kernel_2mm_node1_fu_108_grp_fu_180_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_108_grp_fu_184_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_108_grp_fu_184_p_din1;
wire    grp_kernel_2mm_node1_fu_108_grp_fu_184_p_ce;
wire   [31:0] grp_kernel_2mm_node1_fu_108_grp_fu_188_p_din0;
wire   [31:0] grp_kernel_2mm_node1_fu_108_grp_fu_188_p_din1;
wire    grp_kernel_2mm_node1_fu_108_grp_fu_188_p_ce;
wire    grp_kernel_2mm_node0_fu_137_ap_start;
wire    grp_kernel_2mm_node0_fu_137_ap_done;
wire    grp_kernel_2mm_node0_fu_137_ap_idle;
wire    grp_kernel_2mm_node0_fu_137_ap_ready;
wire    grp_kernel_2mm_node0_fu_137_v236_read;
wire   [15:0] grp_kernel_2mm_node0_fu_137_v224_address0;
wire    grp_kernel_2mm_node0_fu_137_v224_ce0;
wire   [15:0] grp_kernel_2mm_node0_fu_137_v224_address1;
wire    grp_kernel_2mm_node0_fu_137_v224_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_0_address0;
wire    grp_kernel_2mm_node0_fu_137_v228_0_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_0_address1;
wire    grp_kernel_2mm_node0_fu_137_v228_0_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_1_address0;
wire    grp_kernel_2mm_node0_fu_137_v228_1_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_1_address1;
wire    grp_kernel_2mm_node0_fu_137_v228_1_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_2_address0;
wire    grp_kernel_2mm_node0_fu_137_v228_2_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_2_address1;
wire    grp_kernel_2mm_node0_fu_137_v228_2_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_3_address0;
wire    grp_kernel_2mm_node0_fu_137_v228_3_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_3_address1;
wire    grp_kernel_2mm_node0_fu_137_v228_3_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_4_address0;
wire    grp_kernel_2mm_node0_fu_137_v228_4_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_4_address1;
wire    grp_kernel_2mm_node0_fu_137_v228_4_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_5_address0;
wire    grp_kernel_2mm_node0_fu_137_v228_5_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_5_address1;
wire    grp_kernel_2mm_node0_fu_137_v228_5_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_6_address0;
wire    grp_kernel_2mm_node0_fu_137_v228_6_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_6_address1;
wire    grp_kernel_2mm_node0_fu_137_v228_6_ce1;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_7_address0;
wire    grp_kernel_2mm_node0_fu_137_v228_7_ce0;
wire   [12:0] grp_kernel_2mm_node0_fu_137_v228_7_address1;
wire    grp_kernel_2mm_node0_fu_137_v228_7_ce1;
wire   [15:0] grp_kernel_2mm_node0_fu_137_v229_address0;
wire    grp_kernel_2mm_node0_fu_137_v229_ce0;
wire    grp_kernel_2mm_node0_fu_137_v229_we0;
wire   [31:0] grp_kernel_2mm_node0_fu_137_v229_d0;
wire   [15:0] grp_kernel_2mm_node0_fu_137_v229_address1;
wire    grp_kernel_2mm_node0_fu_137_v229_ce1;
wire    grp_kernel_2mm_node0_fu_137_v229_we1;
wire   [31:0] grp_kernel_2mm_node0_fu_137_v229_d1;
wire   [31:0] grp_kernel_2mm_node0_fu_137_grp_fu_180_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_137_grp_fu_180_p_din1;
wire   [1:0] grp_kernel_2mm_node0_fu_137_grp_fu_180_p_opcode;
wire    grp_kernel_2mm_node0_fu_137_grp_fu_180_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_137_grp_fu_184_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_137_grp_fu_184_p_din1;
wire    grp_kernel_2mm_node0_fu_137_grp_fu_184_p_ce;
wire   [31:0] grp_kernel_2mm_node0_fu_137_grp_fu_188_p_din0;
wire   [31:0] grp_kernel_2mm_node0_fu_137_grp_fu_188_p_din1;
wire    grp_kernel_2mm_node0_fu_137_grp_fu_188_p_ce;
reg    grp_kernel_2mm_node1_fu_108_ap_start_reg;
wire    ap_CS_fsm_state2;
wire    v236_full_n;
reg    v236_write;
reg    grp_kernel_2mm_node0_fu_137_ap_start_reg;
wire   [0:0] v236_dout;
wire    v236_empty_n;
reg    v236_read;
wire    ap_CS_fsm_state4;
wire   [31:0] grp_fu_180_p2;
reg   [31:0] grp_fu_180_p0;
reg   [31:0] grp_fu_180_p1;
reg    grp_fu_180_ce;
wire   [31:0] grp_fu_184_p2;
reg   [31:0] grp_fu_184_p0;
reg   [31:0] grp_fu_184_p1;
reg    grp_fu_184_ce;
wire   [31:0] grp_fu_188_p2;
reg   [31:0] grp_fu_188_p0;
reg   [31:0] grp_fu_188_p1;
reg    grp_fu_188_ce;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_kernel_2mm_node1_fu_108_ap_start_reg = 1'b0;
#0 grp_kernel_2mm_node0_fu_137_ap_start_reg = 1'b0;
end
kernel_2mm_kernel_2mm_node1 grp_kernel_2mm_node1_fu_108(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node1_fu_108_ap_start),.ap_done(grp_kernel_2mm_node1_fu_108_ap_done),.ap_idle(grp_kernel_2mm_node1_fu_108_ap_idle),.ap_ready(grp_kernel_2mm_node1_fu_108_ap_ready),.v226_0_address0(grp_kernel_2mm_node1_fu_108_v226_0_address0),.v226_0_ce0(grp_kernel_2mm_node1_fu_108_v226_0_ce0),.v226_0_q0(v226_0_q0),.v226_1_address0(grp_kernel_2mm_node1_fu_108_v226_1_address0),.v226_1_ce0(grp_kernel_2mm_node1_fu_108_v226_1_ce0),.v226_1_q0(v226_1_q0),.v227_0_address0(grp_kernel_2mm_node1_fu_108_v227_0_address0),.v227_0_ce0(grp_kernel_2mm_node1_fu_108_v227_0_ce0),.v227_0_q0(v227_0_q0),.v227_0_address1(grp_kernel_2mm_node1_fu_108_v227_0_address1),.v227_0_ce1(grp_kernel_2mm_node1_fu_108_v227_0_ce1),.v227_0_q1(v227_0_q1),.v227_1_address0(grp_kernel_2mm_node1_fu_108_v227_1_address0),.v227_1_ce0(grp_kernel_2mm_node1_fu_108_v227_1_ce0),.v227_1_q0(v227_1_q0),.v227_1_address1(grp_kernel_2mm_node1_fu_108_v227_1_address1),.v227_1_ce1(grp_kernel_2mm_node1_fu_108_v227_1_ce1),.v227_1_q1(v227_1_q1),.v227_2_address0(grp_kernel_2mm_node1_fu_108_v227_2_address0),.v227_2_ce0(grp_kernel_2mm_node1_fu_108_v227_2_ce0),.v227_2_q0(v227_2_q0),.v227_2_address1(grp_kernel_2mm_node1_fu_108_v227_2_address1),.v227_2_ce1(grp_kernel_2mm_node1_fu_108_v227_2_ce1),.v227_2_q1(v227_2_q1),.v227_3_address0(grp_kernel_2mm_node1_fu_108_v227_3_address0),.v227_3_ce0(grp_kernel_2mm_node1_fu_108_v227_3_ce0),.v227_3_q0(v227_3_q0),.v227_3_address1(grp_kernel_2mm_node1_fu_108_v227_3_address1),.v227_3_ce1(grp_kernel_2mm_node1_fu_108_v227_3_ce1),.v227_3_q1(v227_3_q1),.v227_4_address0(grp_kernel_2mm_node1_fu_108_v227_4_address0),.v227_4_ce0(grp_kernel_2mm_node1_fu_108_v227_4_ce0),.v227_4_q0(v227_4_q0),.v227_4_address1(grp_kernel_2mm_node1_fu_108_v227_4_address1),.v227_4_ce1(grp_kernel_2mm_node1_fu_108_v227_4_ce1),.v227_4_q1(v227_4_q1),.v227_5_address0(grp_kernel_2mm_node1_fu_108_v227_5_address0),.v227_5_ce0(grp_kernel_2mm_node1_fu_108_v227_5_ce0),.v227_5_q0(v227_5_q0),.v227_5_address1(grp_kernel_2mm_node1_fu_108_v227_5_address1),.v227_5_ce1(grp_kernel_2mm_node1_fu_108_v227_5_ce1),.v227_5_q1(v227_5_q1),.v227_6_address0(grp_kernel_2mm_node1_fu_108_v227_6_address0),.v227_6_ce0(grp_kernel_2mm_node1_fu_108_v227_6_ce0),.v227_6_q0(v227_6_q0),.v227_6_address1(grp_kernel_2mm_node1_fu_108_v227_6_address1),.v227_6_ce1(grp_kernel_2mm_node1_fu_108_v227_6_ce1),.v227_6_q1(v227_6_q1),.v227_7_address0(grp_kernel_2mm_node1_fu_108_v227_7_address0),.v227_7_ce0(grp_kernel_2mm_node1_fu_108_v227_7_ce0),.v227_7_q0(v227_7_q0),.v227_7_address1(grp_kernel_2mm_node1_fu_108_v227_7_address1),.v227_7_ce1(grp_kernel_2mm_node1_fu_108_v227_7_ce1),.v227_7_q1(v227_7_q1),.v236_din(grp_kernel_2mm_node1_fu_108_v236_din),.v236_full_n(v236_full_n),.v236_write(grp_kernel_2mm_node1_fu_108_v236_write),.v225_address0(grp_kernel_2mm_node1_fu_108_v225_address0),.v225_ce0(grp_kernel_2mm_node1_fu_108_v225_ce0),.v225_we0(grp_kernel_2mm_node1_fu_108_v225_we0),.v225_d0(grp_kernel_2mm_node1_fu_108_v225_d0),.v225_q0(v225_q0),.v225_address1(grp_kernel_2mm_node1_fu_108_v225_address1),.v225_ce1(grp_kernel_2mm_node1_fu_108_v225_ce1),.v225_we1(grp_kernel_2mm_node1_fu_108_v225_we1),.v225_d1(grp_kernel_2mm_node1_fu_108_v225_d1),.v225_q1(v225_q1),.v113(v222),.grp_fu_180_p_din0(grp_kernel_2mm_node1_fu_108_grp_fu_180_p_din0),.grp_fu_180_p_din1(grp_kernel_2mm_node1_fu_108_grp_fu_180_p_din1),.grp_fu_180_p_opcode(grp_kernel_2mm_node1_fu_108_grp_fu_180_p_opcode),.grp_fu_180_p_dout0(grp_fu_180_p2),.grp_fu_180_p_ce(grp_kernel_2mm_node1_fu_108_grp_fu_180_p_ce),.grp_fu_184_p_din0(grp_kernel_2mm_node1_fu_108_grp_fu_184_p_din0),.grp_fu_184_p_din1(grp_kernel_2mm_node1_fu_108_grp_fu_184_p_din1),.grp_fu_184_p_dout0(grp_fu_184_p2),.grp_fu_184_p_ce(grp_kernel_2mm_node1_fu_108_grp_fu_184_p_ce),.grp_fu_188_p_din0(grp_kernel_2mm_node1_fu_108_grp_fu_188_p_din0),.grp_fu_188_p_din1(grp_kernel_2mm_node1_fu_108_grp_fu_188_p_din1),.grp_fu_188_p_dout0(grp_fu_188_p2),.grp_fu_188_p_ce(grp_kernel_2mm_node1_fu_108_grp_fu_188_p_ce));
kernel_2mm_kernel_2mm_node0 grp_kernel_2mm_node0_fu_137(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_2mm_node0_fu_137_ap_start),.ap_done(grp_kernel_2mm_node0_fu_137_ap_done),.ap_idle(grp_kernel_2mm_node0_fu_137_ap_idle),.ap_ready(grp_kernel_2mm_node0_fu_137_ap_ready),.v236_dout(v236_dout),.v236_empty_n(v236_empty_n),.v236_read(grp_kernel_2mm_node0_fu_137_v236_read),.v224_address0(grp_kernel_2mm_node0_fu_137_v224_address0),.v224_ce0(grp_kernel_2mm_node0_fu_137_v224_ce0),.v224_q0(v224_q0),.v224_address1(grp_kernel_2mm_node0_fu_137_v224_address1),.v224_ce1(grp_kernel_2mm_node0_fu_137_v224_ce1),.v224_q1(v224_q1),.v228_0_address0(grp_kernel_2mm_node0_fu_137_v228_0_address0),.v228_0_ce0(grp_kernel_2mm_node0_fu_137_v228_0_ce0),.v228_0_q0(v228_0_q0),.v228_0_address1(grp_kernel_2mm_node0_fu_137_v228_0_address1),.v228_0_ce1(grp_kernel_2mm_node0_fu_137_v228_0_ce1),.v228_0_q1(v228_0_q1),.v228_1_address0(grp_kernel_2mm_node0_fu_137_v228_1_address0),.v228_1_ce0(grp_kernel_2mm_node0_fu_137_v228_1_ce0),.v228_1_q0(v228_1_q0),.v228_1_address1(grp_kernel_2mm_node0_fu_137_v228_1_address1),.v228_1_ce1(grp_kernel_2mm_node0_fu_137_v228_1_ce1),.v228_1_q1(v228_1_q1),.v228_2_address0(grp_kernel_2mm_node0_fu_137_v228_2_address0),.v228_2_ce0(grp_kernel_2mm_node0_fu_137_v228_2_ce0),.v228_2_q0(v228_2_q0),.v228_2_address1(grp_kernel_2mm_node0_fu_137_v228_2_address1),.v228_2_ce1(grp_kernel_2mm_node0_fu_137_v228_2_ce1),.v228_2_q1(v228_2_q1),.v228_3_address0(grp_kernel_2mm_node0_fu_137_v228_3_address0),.v228_3_ce0(grp_kernel_2mm_node0_fu_137_v228_3_ce0),.v228_3_q0(v228_3_q0),.v228_3_address1(grp_kernel_2mm_node0_fu_137_v228_3_address1),.v228_3_ce1(grp_kernel_2mm_node0_fu_137_v228_3_ce1),.v228_3_q1(v228_3_q1),.v228_4_address0(grp_kernel_2mm_node0_fu_137_v228_4_address0),.v228_4_ce0(grp_kernel_2mm_node0_fu_137_v228_4_ce0),.v228_4_q0(v228_4_q0),.v228_4_address1(grp_kernel_2mm_node0_fu_137_v228_4_address1),.v228_4_ce1(grp_kernel_2mm_node0_fu_137_v228_4_ce1),.v228_4_q1(v228_4_q1),.v228_5_address0(grp_kernel_2mm_node0_fu_137_v228_5_address0),.v228_5_ce0(grp_kernel_2mm_node0_fu_137_v228_5_ce0),.v228_5_q0(v228_5_q0),.v228_5_address1(grp_kernel_2mm_node0_fu_137_v228_5_address1),.v228_5_ce1(grp_kernel_2mm_node0_fu_137_v228_5_ce1),.v228_5_q1(v228_5_q1),.v228_6_address0(grp_kernel_2mm_node0_fu_137_v228_6_address0),.v228_6_ce0(grp_kernel_2mm_node0_fu_137_v228_6_ce0),.v228_6_q0(v228_6_q0),.v228_6_address1(grp_kernel_2mm_node0_fu_137_v228_6_address1),.v228_6_ce1(grp_kernel_2mm_node0_fu_137_v228_6_ce1),.v228_6_q1(v228_6_q1),.v228_7_address0(grp_kernel_2mm_node0_fu_137_v228_7_address0),.v228_7_ce0(grp_kernel_2mm_node0_fu_137_v228_7_ce0),.v228_7_q0(v228_7_q0),.v228_7_address1(grp_kernel_2mm_node0_fu_137_v228_7_address1),.v228_7_ce1(grp_kernel_2mm_node0_fu_137_v228_7_ce1),.v228_7_q1(v228_7_q1),.v229_address0(grp_kernel_2mm_node0_fu_137_v229_address0),.v229_ce0(grp_kernel_2mm_node0_fu_137_v229_ce0),.v229_we0(grp_kernel_2mm_node0_fu_137_v229_we0),.v229_d0(grp_kernel_2mm_node0_fu_137_v229_d0),.v229_q0(v229_q0),.v229_address1(grp_kernel_2mm_node0_fu_137_v229_address1),.v229_ce1(grp_kernel_2mm_node0_fu_137_v229_ce1),.v229_we1(grp_kernel_2mm_node0_fu_137_v229_we1),.v229_d1(grp_kernel_2mm_node0_fu_137_v229_d1),.v229_q1(v229_q1),.v4(v223),.grp_fu_180_p_din0(grp_kernel_2mm_node0_fu_137_grp_fu_180_p_din0),.grp_fu_180_p_din1(grp_kernel_2mm_node0_fu_137_grp_fu_180_p_din1),.grp_fu_180_p_opcode(grp_kernel_2mm_node0_fu_137_grp_fu_180_p_opcode),.grp_fu_180_p_dout0(grp_fu_180_p2),.grp_fu_180_p_ce(grp_kernel_2mm_node0_fu_137_grp_fu_180_p_ce),.grp_fu_184_p_din0(grp_kernel_2mm_node0_fu_137_grp_fu_184_p_din0),.grp_fu_184_p_din1(grp_kernel_2mm_node0_fu_137_grp_fu_184_p_din1),.grp_fu_184_p_dout0(grp_fu_184_p2),.grp_fu_184_p_ce(grp_kernel_2mm_node0_fu_137_grp_fu_184_p_ce),.grp_fu_188_p_din0(grp_kernel_2mm_node0_fu_137_grp_fu_188_p_din0),.grp_fu_188_p_din1(grp_kernel_2mm_node0_fu_137_grp_fu_188_p_din1),.grp_fu_188_p_dout0(grp_fu_188_p2),.grp_fu_188_p_ce(grp_kernel_2mm_node0_fu_137_grp_fu_188_p_ce));
kernel_2mm_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U1403(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_180_p0),.din1(grp_fu_180_p1),.ce(grp_fu_180_ce),.dout(grp_fu_180_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U1404(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_184_p0),.din1(grp_fu_184_p1),.ce(grp_fu_184_ce),.dout(grp_fu_184_p2));
kernel_2mm_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U1405(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_188_p0),.din1(grp_fu_188_p1),.ce(grp_fu_188_ce),.dout(grp_fu_188_p2));
kernel_2mm_fifo_w1_d2_S v236_fifo_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(grp_kernel_2mm_node1_fu_108_v236_din),.if_full_n(v236_full_n),.if_write(v236_write),.if_dout(v236_dout),.if_empty_n(v236_empty_n),.if_read(v236_read));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node0_fu_137_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_2mm_node0_fu_137_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node0_fu_137_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node0_fu_137_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_2mm_node1_fu_108_ap_start_reg <= 1'b0;
    end else begin
        if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            grp_kernel_2mm_node1_fu_108_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_2mm_node1_fu_108_ap_ready == 1'b1)) begin
            grp_kernel_2mm_node1_fu_108_ap_start_reg <= 1'b0;
        end
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
    if ((grp_kernel_2mm_node1_fu_108_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_2mm_node0_fu_137_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if (((grp_kernel_2mm_node0_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
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
    if (((grp_kernel_2mm_node0_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_180_ce = grp_kernel_2mm_node0_fu_137_grp_fu_180_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_180_ce = grp_kernel_2mm_node1_fu_108_grp_fu_180_p_ce;
    end else begin
        grp_fu_180_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_180_p0 = grp_kernel_2mm_node0_fu_137_grp_fu_180_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_180_p0 = grp_kernel_2mm_node1_fu_108_grp_fu_180_p_din0;
    end else begin
        grp_fu_180_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_180_p1 = grp_kernel_2mm_node0_fu_137_grp_fu_180_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_180_p1 = grp_kernel_2mm_node1_fu_108_grp_fu_180_p_din1;
    end else begin
        grp_fu_180_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_184_ce = grp_kernel_2mm_node0_fu_137_grp_fu_184_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_184_ce = grp_kernel_2mm_node1_fu_108_grp_fu_184_p_ce;
    end else begin
        grp_fu_184_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_184_p0 = grp_kernel_2mm_node0_fu_137_grp_fu_184_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_184_p0 = grp_kernel_2mm_node1_fu_108_grp_fu_184_p_din0;
    end else begin
        grp_fu_184_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_184_p1 = grp_kernel_2mm_node0_fu_137_grp_fu_184_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_184_p1 = grp_kernel_2mm_node1_fu_108_grp_fu_184_p_din1;
    end else begin
        grp_fu_184_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_188_ce = grp_kernel_2mm_node0_fu_137_grp_fu_188_p_ce;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_188_ce = grp_kernel_2mm_node1_fu_108_grp_fu_188_p_ce;
    end else begin
        grp_fu_188_ce = 1'b1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_188_p0 = grp_kernel_2mm_node0_fu_137_grp_fu_188_p_din0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_188_p0 = grp_kernel_2mm_node1_fu_108_grp_fu_188_p_din0;
    end else begin
        grp_fu_188_p0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        grp_fu_188_p1 = grp_kernel_2mm_node0_fu_137_grp_fu_188_p_din1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        grp_fu_188_p1 = grp_kernel_2mm_node1_fu_108_grp_fu_188_p_din1;
    end else begin
        grp_fu_188_p1 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v236_read = grp_kernel_2mm_node0_fu_137_v236_read;
    end else begin
        v236_read = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v236_write = grp_kernel_2mm_node1_fu_108_v236_write;
    end else begin
        v236_write = 1'b0;
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
            if (((grp_kernel_2mm_node1_fu_108_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_kernel_2mm_node0_fu_137_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
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
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign grp_kernel_2mm_node0_fu_137_ap_start = grp_kernel_2mm_node0_fu_137_ap_start_reg;
assign grp_kernel_2mm_node1_fu_108_ap_start = grp_kernel_2mm_node1_fu_108_ap_start_reg;
assign v224_address0 = grp_kernel_2mm_node0_fu_137_v224_address0;
assign v224_address1 = grp_kernel_2mm_node0_fu_137_v224_address1;
assign v224_ce0 = grp_kernel_2mm_node0_fu_137_v224_ce0;
assign v224_ce1 = grp_kernel_2mm_node0_fu_137_v224_ce1;
assign v225_address0 = grp_kernel_2mm_node1_fu_108_v225_address0;
assign v225_address1 = grp_kernel_2mm_node1_fu_108_v225_address1;
assign v225_ce0 = grp_kernel_2mm_node1_fu_108_v225_ce0;
assign v225_ce1 = grp_kernel_2mm_node1_fu_108_v225_ce1;
assign v225_d0 = grp_kernel_2mm_node1_fu_108_v225_d0;
assign v225_d1 = grp_kernel_2mm_node1_fu_108_v225_d1;
assign v225_we0 = grp_kernel_2mm_node1_fu_108_v225_we0;
assign v225_we1 = grp_kernel_2mm_node1_fu_108_v225_we1;
assign v226_0_address0 = grp_kernel_2mm_node1_fu_108_v226_0_address0;
assign v226_0_ce0 = grp_kernel_2mm_node1_fu_108_v226_0_ce0;
assign v226_1_address0 = grp_kernel_2mm_node1_fu_108_v226_1_address0;
assign v226_1_ce0 = grp_kernel_2mm_node1_fu_108_v226_1_ce0;
assign v227_0_address0 = grp_kernel_2mm_node1_fu_108_v227_0_address0;
assign v227_0_address1 = grp_kernel_2mm_node1_fu_108_v227_0_address1;
assign v227_0_ce0 = grp_kernel_2mm_node1_fu_108_v227_0_ce0;
assign v227_0_ce1 = grp_kernel_2mm_node1_fu_108_v227_0_ce1;
assign v227_1_address0 = grp_kernel_2mm_node1_fu_108_v227_1_address0;
assign v227_1_address1 = grp_kernel_2mm_node1_fu_108_v227_1_address1;
assign v227_1_ce0 = grp_kernel_2mm_node1_fu_108_v227_1_ce0;
assign v227_1_ce1 = grp_kernel_2mm_node1_fu_108_v227_1_ce1;
assign v227_2_address0 = grp_kernel_2mm_node1_fu_108_v227_2_address0;
assign v227_2_address1 = grp_kernel_2mm_node1_fu_108_v227_2_address1;
assign v227_2_ce0 = grp_kernel_2mm_node1_fu_108_v227_2_ce0;
assign v227_2_ce1 = grp_kernel_2mm_node1_fu_108_v227_2_ce1;
assign v227_3_address0 = grp_kernel_2mm_node1_fu_108_v227_3_address0;
assign v227_3_address1 = grp_kernel_2mm_node1_fu_108_v227_3_address1;
assign v227_3_ce0 = grp_kernel_2mm_node1_fu_108_v227_3_ce0;
assign v227_3_ce1 = grp_kernel_2mm_node1_fu_108_v227_3_ce1;
assign v227_4_address0 = grp_kernel_2mm_node1_fu_108_v227_4_address0;
assign v227_4_address1 = grp_kernel_2mm_node1_fu_108_v227_4_address1;
assign v227_4_ce0 = grp_kernel_2mm_node1_fu_108_v227_4_ce0;
assign v227_4_ce1 = grp_kernel_2mm_node1_fu_108_v227_4_ce1;
assign v227_5_address0 = grp_kernel_2mm_node1_fu_108_v227_5_address0;
assign v227_5_address1 = grp_kernel_2mm_node1_fu_108_v227_5_address1;
assign v227_5_ce0 = grp_kernel_2mm_node1_fu_108_v227_5_ce0;
assign v227_5_ce1 = grp_kernel_2mm_node1_fu_108_v227_5_ce1;
assign v227_6_address0 = grp_kernel_2mm_node1_fu_108_v227_6_address0;
assign v227_6_address1 = grp_kernel_2mm_node1_fu_108_v227_6_address1;
assign v227_6_ce0 = grp_kernel_2mm_node1_fu_108_v227_6_ce0;
assign v227_6_ce1 = grp_kernel_2mm_node1_fu_108_v227_6_ce1;
assign v227_7_address0 = grp_kernel_2mm_node1_fu_108_v227_7_address0;
assign v227_7_address1 = grp_kernel_2mm_node1_fu_108_v227_7_address1;
assign v227_7_ce0 = grp_kernel_2mm_node1_fu_108_v227_7_ce0;
assign v227_7_ce1 = grp_kernel_2mm_node1_fu_108_v227_7_ce1;
assign v228_0_address0 = grp_kernel_2mm_node0_fu_137_v228_0_address0;
assign v228_0_address1 = grp_kernel_2mm_node0_fu_137_v228_0_address1;
assign v228_0_ce0 = grp_kernel_2mm_node0_fu_137_v228_0_ce0;
assign v228_0_ce1 = grp_kernel_2mm_node0_fu_137_v228_0_ce1;
assign v228_1_address0 = grp_kernel_2mm_node0_fu_137_v228_1_address0;
assign v228_1_address1 = grp_kernel_2mm_node0_fu_137_v228_1_address1;
assign v228_1_ce0 = grp_kernel_2mm_node0_fu_137_v228_1_ce0;
assign v228_1_ce1 = grp_kernel_2mm_node0_fu_137_v228_1_ce1;
assign v228_2_address0 = grp_kernel_2mm_node0_fu_137_v228_2_address0;
assign v228_2_address1 = grp_kernel_2mm_node0_fu_137_v228_2_address1;
assign v228_2_ce0 = grp_kernel_2mm_node0_fu_137_v228_2_ce0;
assign v228_2_ce1 = grp_kernel_2mm_node0_fu_137_v228_2_ce1;
assign v228_3_address0 = grp_kernel_2mm_node0_fu_137_v228_3_address0;
assign v228_3_address1 = grp_kernel_2mm_node0_fu_137_v228_3_address1;
assign v228_3_ce0 = grp_kernel_2mm_node0_fu_137_v228_3_ce0;
assign v228_3_ce1 = grp_kernel_2mm_node0_fu_137_v228_3_ce1;
assign v228_4_address0 = grp_kernel_2mm_node0_fu_137_v228_4_address0;
assign v228_4_address1 = grp_kernel_2mm_node0_fu_137_v228_4_address1;
assign v228_4_ce0 = grp_kernel_2mm_node0_fu_137_v228_4_ce0;
assign v228_4_ce1 = grp_kernel_2mm_node0_fu_137_v228_4_ce1;
assign v228_5_address0 = grp_kernel_2mm_node0_fu_137_v228_5_address0;
assign v228_5_address1 = grp_kernel_2mm_node0_fu_137_v228_5_address1;
assign v228_5_ce0 = grp_kernel_2mm_node0_fu_137_v228_5_ce0;
assign v228_5_ce1 = grp_kernel_2mm_node0_fu_137_v228_5_ce1;
assign v228_6_address0 = grp_kernel_2mm_node0_fu_137_v228_6_address0;
assign v228_6_address1 = grp_kernel_2mm_node0_fu_137_v228_6_address1;
assign v228_6_ce0 = grp_kernel_2mm_node0_fu_137_v228_6_ce0;
assign v228_6_ce1 = grp_kernel_2mm_node0_fu_137_v228_6_ce1;
assign v228_7_address0 = grp_kernel_2mm_node0_fu_137_v228_7_address0;
assign v228_7_address1 = grp_kernel_2mm_node0_fu_137_v228_7_address1;
assign v228_7_ce0 = grp_kernel_2mm_node0_fu_137_v228_7_ce0;
assign v228_7_ce1 = grp_kernel_2mm_node0_fu_137_v228_7_ce1;
assign v229_address0 = grp_kernel_2mm_node0_fu_137_v229_address0;
assign v229_address1 = grp_kernel_2mm_node0_fu_137_v229_address1;
assign v229_ce0 = grp_kernel_2mm_node0_fu_137_v229_ce0;
assign v229_ce1 = grp_kernel_2mm_node0_fu_137_v229_ce1;
assign v229_d0 = grp_kernel_2mm_node0_fu_137_v229_d0;
assign v229_d1 = grp_kernel_2mm_node0_fu_137_v229_d1;
assign v229_we0 = grp_kernel_2mm_node0_fu_137_v229_we0;
assign v229_we1 = grp_kernel_2mm_node0_fu_137_v229_we1;
endmodule 