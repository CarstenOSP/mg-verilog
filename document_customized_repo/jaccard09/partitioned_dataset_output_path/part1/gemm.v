
module gemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_0_address1,m1_0_ce1,m1_0_q1,m1_1_address0,m1_1_ce0,m1_1_q0,m1_1_address1,m1_1_ce1,m1_1_q1,m1_2_address0,m1_2_ce0,m1_2_q0,m1_2_address1,m1_2_ce1,m1_2_q1,m1_3_address0,m1_3_ce0,m1_3_q0,m1_3_address1,m1_3_ce1,m1_3_q1,m1_4_address0,m1_4_ce0,m1_4_q0,m1_4_address1,m1_4_ce1,m1_4_q1,m1_5_address0,m1_5_ce0,m1_5_q0,m1_5_address1,m1_5_ce1,m1_5_q1,m1_6_address0,m1_6_ce0,m1_6_q0,m1_6_address1,m1_6_ce1,m1_6_q1,m1_7_address0,m1_7_ce0,m1_7_q0,m1_7_address1,m1_7_ce1,m1_7_q1,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,m2_2_address0,m2_2_ce0,m2_2_q0,m2_2_address1,m2_2_ce1,m2_2_q1,m2_3_address0,m2_3_ce0,m2_3_q0,m2_3_address1,m2_3_ce1,m2_3_q1,m2_4_address0,m2_4_ce0,m2_4_q0,m2_4_address1,m2_4_ce1,m2_4_q1,m2_5_address0,m2_5_ce0,m2_5_q0,m2_5_address1,m2_5_ce1,m2_5_q1,m2_6_address0,m2_6_ce0,m2_6_q0,m2_6_address1,m2_6_ce1,m2_6_q1,m2_7_address0,m2_7_ce0,m2_7_q0,m2_7_address1,m2_7_ce1,m2_7_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_4_address0,prod_4_ce0,prod_4_we0,prod_4_d0,prod_5_address0,prod_5_ce0,prod_5_we0,prod_5_d0,prod_6_address0,prod_6_ce0,prod_6_we0,prod_6_d0,prod_7_address0,prod_7_ce0,prod_7_we0,prod_7_d0);  
parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [8:0] m1_0_address1;
output   m1_0_ce1;
input  [63:0] m1_0_q1;
output  [8:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [8:0] m1_1_address1;
output   m1_1_ce1;
input  [63:0] m1_1_q1;
output  [8:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
output  [8:0] m1_2_address1;
output   m1_2_ce1;
input  [63:0] m1_2_q1;
output  [8:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [8:0] m1_3_address1;
output   m1_3_ce1;
input  [63:0] m1_3_q1;
output  [8:0] m1_4_address0;
output   m1_4_ce0;
input  [63:0] m1_4_q0;
output  [8:0] m1_4_address1;
output   m1_4_ce1;
input  [63:0] m1_4_q1;
output  [8:0] m1_5_address0;
output   m1_5_ce0;
input  [63:0] m1_5_q0;
output  [8:0] m1_5_address1;
output   m1_5_ce1;
input  [63:0] m1_5_q1;
output  [8:0] m1_6_address0;
output   m1_6_ce0;
input  [63:0] m1_6_q0;
output  [8:0] m1_6_address1;
output   m1_6_ce1;
input  [63:0] m1_6_q1;
output  [8:0] m1_7_address0;
output   m1_7_ce0;
input  [63:0] m1_7_q0;
output  [8:0] m1_7_address1;
output   m1_7_ce1;
input  [63:0] m1_7_q1;
output  [8:0] m2_0_address0;
output   m2_0_ce0;
input  [63:0] m2_0_q0;
output  [8:0] m2_0_address1;
output   m2_0_ce1;
input  [63:0] m2_0_q1;
output  [8:0] m2_1_address0;
output   m2_1_ce0;
input  [63:0] m2_1_q0;
output  [8:0] m2_1_address1;
output   m2_1_ce1;
input  [63:0] m2_1_q1;
output  [8:0] m2_2_address0;
output   m2_2_ce0;
input  [63:0] m2_2_q0;
output  [8:0] m2_2_address1;
output   m2_2_ce1;
input  [63:0] m2_2_q1;
output  [8:0] m2_3_address0;
output   m2_3_ce0;
input  [63:0] m2_3_q0;
output  [8:0] m2_3_address1;
output   m2_3_ce1;
input  [63:0] m2_3_q1;
output  [8:0] m2_4_address0;
output   m2_4_ce0;
input  [63:0] m2_4_q0;
output  [8:0] m2_4_address1;
output   m2_4_ce1;
input  [63:0] m2_4_q1;
output  [8:0] m2_5_address0;
output   m2_5_ce0;
input  [63:0] m2_5_q0;
output  [8:0] m2_5_address1;
output   m2_5_ce1;
input  [63:0] m2_5_q1;
output  [8:0] m2_6_address0;
output   m2_6_ce0;
input  [63:0] m2_6_q0;
output  [8:0] m2_6_address1;
output   m2_6_ce1;
input  [63:0] m2_6_q1;
output  [8:0] m2_7_address0;
output   m2_7_ce0;
input  [63:0] m2_7_q0;
output  [8:0] m2_7_address1;
output   m2_7_ce1;
input  [63:0] m2_7_q1;
output  [8:0] prod_0_address0;
output   prod_0_ce0;
output   prod_0_we0;
output  [63:0] prod_0_d0;
output  [8:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
output  [8:0] prod_2_address0;
output   prod_2_ce0;
output   prod_2_we0;
output  [63:0] prod_2_d0;
output  [8:0] prod_3_address0;
output   prod_3_ce0;
output   prod_3_we0;
output  [63:0] prod_3_d0;
output  [8:0] prod_4_address0;
output   prod_4_ce0;
output   prod_4_we0;
output  [63:0] prod_4_d0;
output  [8:0] prod_5_address0;
output   prod_5_ce0;
output   prod_5_we0;
output  [63:0] prod_5_d0;
output  [8:0] prod_6_address0;
output   prod_6_ce0;
output   prod_6_we0;
output  [63:0] prod_6_d0;
output  [8:0] prod_7_address0;
output   prod_7_ce0;
output   prod_7_we0;
output  [63:0] prod_7_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [6:0] add_ln8_fu_288_p2;
reg   [6:0] add_ln8_reg_380;
wire    ap_CS_fsm_state2;
wire   [5:0] trunc_ln8_fu_294_p1;
reg   [5:0] trunc_ln8_reg_385;
wire   [6:0] add_ln9_fu_304_p2;
reg   [6:0] add_ln9_reg_394;
wire    ap_CS_fsm_state3;
wire   [2:0] trunc_ln9_fu_310_p1;
reg   [2:0] trunc_ln9_reg_399;
reg   [2:0] lshr_ln_reg_404;
wire    grp_gemm_Pipeline_inner_fu_233_ap_start;
wire    grp_gemm_Pipeline_inner_fu_233_ap_done;
wire    grp_gemm_Pipeline_inner_fu_233_ap_idle;
wire    grp_gemm_Pipeline_inner_fu_233_ap_ready;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_0_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m1_0_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_0_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m1_0_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_0_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m2_0_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_0_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m2_0_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_1_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m2_1_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_1_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m2_1_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_2_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m2_2_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_2_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m2_2_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_3_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m2_3_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_3_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m2_3_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_4_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m2_4_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_4_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m2_4_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_5_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m2_5_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_5_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m2_5_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_6_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m2_6_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_6_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m2_6_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_7_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m2_7_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m2_7_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m2_7_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_1_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m1_1_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_1_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m1_1_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_2_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m1_2_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_2_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m1_2_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_3_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m1_3_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_3_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m1_3_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_4_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m1_4_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_4_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m1_4_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_5_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m1_5_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_5_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m1_5_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_6_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m1_6_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_6_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m1_6_ce1;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_7_address0;
wire    grp_gemm_Pipeline_inner_fu_233_m1_7_ce0;
wire   [8:0] grp_gemm_Pipeline_inner_fu_233_m1_7_address1;
wire    grp_gemm_Pipeline_inner_fu_233_m1_7_ce1;
wire   [63:0] grp_gemm_Pipeline_inner_fu_233_sum_out;
wire    grp_gemm_Pipeline_inner_fu_233_sum_out_ap_vld;
reg   [6:0] j_reg_222;
wire   [0:0] icmp_ln8_fu_282_p2;
wire    ap_CS_fsm_state5;
reg    grp_gemm_Pipeline_inner_fu_233_ap_start_reg;
wire   [0:0] icmp_ln9_fu_298_p2;
wire    ap_CS_fsm_state4;
wire   [63:0] zext_ln17_fu_340_p1;
reg   [6:0] i_fu_110;
reg    prod_6_we0_local;
wire   [63:0] bitcast_ln17_fu_352_p1;
reg    prod_6_ce0_local;
reg    prod_5_we0_local;
reg    prod_5_ce0_local;
reg    prod_4_we0_local;
reg    prod_4_ce0_local;
reg    prod_3_we0_local;
reg    prod_3_ce0_local;
reg    prod_2_we0_local;
reg    prod_2_ce0_local;
reg    prod_1_we0_local;
reg    prod_1_ce0_local;
reg    prod_0_we0_local;
reg    prod_0_ce0_local;
reg    prod_7_we0_local;
reg    prod_7_ce0_local;
wire   [8:0] add_ln1_fu_334_p3;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_gemm_Pipeline_inner_fu_233_ap_start_reg = 1'b0;
#0 i_fu_110 = 7'd0;
end
gemm_gemm_Pipeline_inner grp_gemm_Pipeline_inner_fu_233(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_gemm_Pipeline_inner_fu_233_ap_start),.ap_done(grp_gemm_Pipeline_inner_fu_233_ap_done),.ap_idle(grp_gemm_Pipeline_inner_fu_233_ap_idle),.ap_ready(grp_gemm_Pipeline_inner_fu_233_ap_ready),.i(trunc_ln8_reg_385),.m1_0_address0(grp_gemm_Pipeline_inner_fu_233_m1_0_address0),.m1_0_ce0(grp_gemm_Pipeline_inner_fu_233_m1_0_ce0),.m1_0_q0(m1_0_q0),.m1_0_address1(grp_gemm_Pipeline_inner_fu_233_m1_0_address1),.m1_0_ce1(grp_gemm_Pipeline_inner_fu_233_m1_0_ce1),.m1_0_q1(m1_0_q1),.zext_ln14_36(lshr_ln_reg_404),.m2_0_address0(grp_gemm_Pipeline_inner_fu_233_m2_0_address0),.m2_0_ce0(grp_gemm_Pipeline_inner_fu_233_m2_0_ce0),.m2_0_q0(m2_0_q0),.m2_0_address1(grp_gemm_Pipeline_inner_fu_233_m2_0_address1),.m2_0_ce1(grp_gemm_Pipeline_inner_fu_233_m2_0_ce1),.m2_0_q1(m2_0_q1),.m2_1_address0(grp_gemm_Pipeline_inner_fu_233_m2_1_address0),.m2_1_ce0(grp_gemm_Pipeline_inner_fu_233_m2_1_ce0),.m2_1_q0(m2_1_q0),.m2_1_address1(grp_gemm_Pipeline_inner_fu_233_m2_1_address1),.m2_1_ce1(grp_gemm_Pipeline_inner_fu_233_m2_1_ce1),.m2_1_q1(m2_1_q1),.m2_2_address0(grp_gemm_Pipeline_inner_fu_233_m2_2_address0),.m2_2_ce0(grp_gemm_Pipeline_inner_fu_233_m2_2_ce0),.m2_2_q0(m2_2_q0),.m2_2_address1(grp_gemm_Pipeline_inner_fu_233_m2_2_address1),.m2_2_ce1(grp_gemm_Pipeline_inner_fu_233_m2_2_ce1),.m2_2_q1(m2_2_q1),.m2_3_address0(grp_gemm_Pipeline_inner_fu_233_m2_3_address0),.m2_3_ce0(grp_gemm_Pipeline_inner_fu_233_m2_3_ce0),.m2_3_q0(m2_3_q0),.m2_3_address1(grp_gemm_Pipeline_inner_fu_233_m2_3_address1),.m2_3_ce1(grp_gemm_Pipeline_inner_fu_233_m2_3_ce1),.m2_3_q1(m2_3_q1),.m2_4_address0(grp_gemm_Pipeline_inner_fu_233_m2_4_address0),.m2_4_ce0(grp_gemm_Pipeline_inner_fu_233_m2_4_ce0),.m2_4_q0(m2_4_q0),.m2_4_address1(grp_gemm_Pipeline_inner_fu_233_m2_4_address1),.m2_4_ce1(grp_gemm_Pipeline_inner_fu_233_m2_4_ce1),.m2_4_q1(m2_4_q1),.m2_5_address0(grp_gemm_Pipeline_inner_fu_233_m2_5_address0),.m2_5_ce0(grp_gemm_Pipeline_inner_fu_233_m2_5_ce0),.m2_5_q0(m2_5_q0),.m2_5_address1(grp_gemm_Pipeline_inner_fu_233_m2_5_address1),.m2_5_ce1(grp_gemm_Pipeline_inner_fu_233_m2_5_ce1),.m2_5_q1(m2_5_q1),.m2_6_address0(grp_gemm_Pipeline_inner_fu_233_m2_6_address0),.m2_6_ce0(grp_gemm_Pipeline_inner_fu_233_m2_6_ce0),.m2_6_q0(m2_6_q0),.m2_6_address1(grp_gemm_Pipeline_inner_fu_233_m2_6_address1),.m2_6_ce1(grp_gemm_Pipeline_inner_fu_233_m2_6_ce1),.m2_6_q1(m2_6_q1),.m2_7_address0(grp_gemm_Pipeline_inner_fu_233_m2_7_address0),.m2_7_ce0(grp_gemm_Pipeline_inner_fu_233_m2_7_ce0),.m2_7_q0(m2_7_q0),.m2_7_address1(grp_gemm_Pipeline_inner_fu_233_m2_7_address1),.m2_7_ce1(grp_gemm_Pipeline_inner_fu_233_m2_7_ce1),.m2_7_q1(m2_7_q1),.empty(trunc_ln9_reg_399),.m1_1_address0(grp_gemm_Pipeline_inner_fu_233_m1_1_address0),.m1_1_ce0(grp_gemm_Pipeline_inner_fu_233_m1_1_ce0),.m1_1_q0(m1_1_q0),.m1_1_address1(grp_gemm_Pipeline_inner_fu_233_m1_1_address1),.m1_1_ce1(grp_gemm_Pipeline_inner_fu_233_m1_1_ce1),.m1_1_q1(m1_1_q1),.lshr_ln(lshr_ln_reg_404),.m1_2_address0(grp_gemm_Pipeline_inner_fu_233_m1_2_address0),.m1_2_ce0(grp_gemm_Pipeline_inner_fu_233_m1_2_ce0),.m1_2_q0(m1_2_q0),.m1_2_address1(grp_gemm_Pipeline_inner_fu_233_m1_2_address1),.m1_2_ce1(grp_gemm_Pipeline_inner_fu_233_m1_2_ce1),.m1_2_q1(m1_2_q1),.m1_3_address0(grp_gemm_Pipeline_inner_fu_233_m1_3_address0),.m1_3_ce0(grp_gemm_Pipeline_inner_fu_233_m1_3_ce0),.m1_3_q0(m1_3_q0),.m1_3_address1(grp_gemm_Pipeline_inner_fu_233_m1_3_address1),.m1_3_ce1(grp_gemm_Pipeline_inner_fu_233_m1_3_ce1),.m1_3_q1(m1_3_q1),.m1_4_address0(grp_gemm_Pipeline_inner_fu_233_m1_4_address0),.m1_4_ce0(grp_gemm_Pipeline_inner_fu_233_m1_4_ce0),.m1_4_q0(m1_4_q0),.m1_4_address1(grp_gemm_Pipeline_inner_fu_233_m1_4_address1),.m1_4_ce1(grp_gemm_Pipeline_inner_fu_233_m1_4_ce1),.m1_4_q1(m1_4_q1),.m1_5_address0(grp_gemm_Pipeline_inner_fu_233_m1_5_address0),.m1_5_ce0(grp_gemm_Pipeline_inner_fu_233_m1_5_ce0),.m1_5_q0(m1_5_q0),.m1_5_address1(grp_gemm_Pipeline_inner_fu_233_m1_5_address1),.m1_5_ce1(grp_gemm_Pipeline_inner_fu_233_m1_5_ce1),.m1_5_q1(m1_5_q1),.m1_6_address0(grp_gemm_Pipeline_inner_fu_233_m1_6_address0),.m1_6_ce0(grp_gemm_Pipeline_inner_fu_233_m1_6_ce0),.m1_6_q0(m1_6_q0),.m1_6_address1(grp_gemm_Pipeline_inner_fu_233_m1_6_address1),.m1_6_ce1(grp_gemm_Pipeline_inner_fu_233_m1_6_ce1),.m1_6_q1(m1_6_q1),.m1_7_address0(grp_gemm_Pipeline_inner_fu_233_m1_7_address0),.m1_7_ce0(grp_gemm_Pipeline_inner_fu_233_m1_7_ce0),.m1_7_q0(m1_7_q0),.m1_7_address1(grp_gemm_Pipeline_inner_fu_233_m1_7_address1),.m1_7_ce1(grp_gemm_Pipeline_inner_fu_233_m1_7_ce1),.m1_7_q1(m1_7_q1),.sum_out(grp_gemm_Pipeline_inner_fu_233_sum_out),.sum_out_ap_vld(grp_gemm_Pipeline_inner_fu_233_sum_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_gemm_Pipeline_inner_fu_233_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln9_fu_298_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_gemm_Pipeline_inner_fu_233_ap_start_reg <= 1'b1;
        end else if ((grp_gemm_Pipeline_inner_fu_233_ap_ready == 1'b1)) begin
            grp_gemm_Pipeline_inner_fu_233_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_110 <= 7'd0;
    end else if (((icmp_ln9_fu_298_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_fu_110 <= add_ln8_reg_380;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        j_reg_222 <= add_ln9_reg_394;
    end else if (((icmp_ln8_fu_282_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_reg_222 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln8_reg_380 <= add_ln8_fu_288_p2;
        trunc_ln8_reg_385 <= trunc_ln8_fu_294_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln9_reg_394 <= add_ln9_fu_304_p2;
        lshr_ln_reg_404 <= {{j_reg_222[5:3]}};
        trunc_ln9_reg_399 <= trunc_ln9_fu_310_p1;
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
    if ((grp_gemm_Pipeline_inner_fu_233_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln8_fu_282_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln8_fu_282_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        prod_0_ce0_local = 1'b1;
    end else begin
        prod_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln9_reg_399 == 3'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        prod_0_we0_local = 1'b1;
    end else begin
        prod_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        prod_1_ce0_local = 1'b1;
    end else begin
        prod_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln9_reg_399 == 3'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        prod_1_we0_local = 1'b1;
    end else begin
        prod_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        prod_2_ce0_local = 1'b1;
    end else begin
        prod_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln9_reg_399 == 3'd2) & (1'b1 == ap_CS_fsm_state5))) begin
        prod_2_we0_local = 1'b1;
    end else begin
        prod_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        prod_3_ce0_local = 1'b1;
    end else begin
        prod_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln9_reg_399 == 3'd3) & (1'b1 == ap_CS_fsm_state5))) begin
        prod_3_we0_local = 1'b1;
    end else begin
        prod_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        prod_4_ce0_local = 1'b1;
    end else begin
        prod_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln9_reg_399 == 3'd4) & (1'b1 == ap_CS_fsm_state5))) begin
        prod_4_we0_local = 1'b1;
    end else begin
        prod_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        prod_5_ce0_local = 1'b1;
    end else begin
        prod_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln9_reg_399 == 3'd5) & (1'b1 == ap_CS_fsm_state5))) begin
        prod_5_we0_local = 1'b1;
    end else begin
        prod_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        prod_6_ce0_local = 1'b1;
    end else begin
        prod_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln9_reg_399 == 3'd6) & (1'b1 == ap_CS_fsm_state5))) begin
        prod_6_we0_local = 1'b1;
    end else begin
        prod_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        prod_7_ce0_local = 1'b1;
    end else begin
        prod_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln9_reg_399 == 3'd7) & (1'b1 == ap_CS_fsm_state5))) begin
        prod_7_we0_local = 1'b1;
    end else begin
        prod_7_we0_local = 1'b0;
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
            if (((icmp_ln8_fu_282_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln9_fu_298_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_gemm_Pipeline_inner_fu_233_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1_fu_334_p3 = {{trunc_ln8_reg_385}, {lshr_ln_reg_404}};
assign add_ln8_fu_288_p2 = (i_fu_110 + 7'd1);
assign add_ln9_fu_304_p2 = (j_reg_222 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign bitcast_ln17_fu_352_p1 = grp_gemm_Pipeline_inner_fu_233_sum_out;
assign grp_gemm_Pipeline_inner_fu_233_ap_start = grp_gemm_Pipeline_inner_fu_233_ap_start_reg;
assign icmp_ln8_fu_282_p2 = ((i_fu_110 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_298_p2 = ((j_reg_222 == 7'd64) ? 1'b1 : 1'b0);
assign m1_0_address0 = grp_gemm_Pipeline_inner_fu_233_m1_0_address0;
assign m1_0_address1 = grp_gemm_Pipeline_inner_fu_233_m1_0_address1;
assign m1_0_ce0 = grp_gemm_Pipeline_inner_fu_233_m1_0_ce0;
assign m1_0_ce1 = grp_gemm_Pipeline_inner_fu_233_m1_0_ce1;
assign m1_1_address0 = grp_gemm_Pipeline_inner_fu_233_m1_1_address0;
assign m1_1_address1 = grp_gemm_Pipeline_inner_fu_233_m1_1_address1;
assign m1_1_ce0 = grp_gemm_Pipeline_inner_fu_233_m1_1_ce0;
assign m1_1_ce1 = grp_gemm_Pipeline_inner_fu_233_m1_1_ce1;
assign m1_2_address0 = grp_gemm_Pipeline_inner_fu_233_m1_2_address0;
assign m1_2_address1 = grp_gemm_Pipeline_inner_fu_233_m1_2_address1;
assign m1_2_ce0 = grp_gemm_Pipeline_inner_fu_233_m1_2_ce0;
assign m1_2_ce1 = grp_gemm_Pipeline_inner_fu_233_m1_2_ce1;
assign m1_3_address0 = grp_gemm_Pipeline_inner_fu_233_m1_3_address0;
assign m1_3_address1 = grp_gemm_Pipeline_inner_fu_233_m1_3_address1;
assign m1_3_ce0 = grp_gemm_Pipeline_inner_fu_233_m1_3_ce0;
assign m1_3_ce1 = grp_gemm_Pipeline_inner_fu_233_m1_3_ce1;
assign m1_4_address0 = grp_gemm_Pipeline_inner_fu_233_m1_4_address0;
assign m1_4_address1 = grp_gemm_Pipeline_inner_fu_233_m1_4_address1;
assign m1_4_ce0 = grp_gemm_Pipeline_inner_fu_233_m1_4_ce0;
assign m1_4_ce1 = grp_gemm_Pipeline_inner_fu_233_m1_4_ce1;
assign m1_5_address0 = grp_gemm_Pipeline_inner_fu_233_m1_5_address0;
assign m1_5_address1 = grp_gemm_Pipeline_inner_fu_233_m1_5_address1;
assign m1_5_ce0 = grp_gemm_Pipeline_inner_fu_233_m1_5_ce0;
assign m1_5_ce1 = grp_gemm_Pipeline_inner_fu_233_m1_5_ce1;
assign m1_6_address0 = grp_gemm_Pipeline_inner_fu_233_m1_6_address0;
assign m1_6_address1 = grp_gemm_Pipeline_inner_fu_233_m1_6_address1;
assign m1_6_ce0 = grp_gemm_Pipeline_inner_fu_233_m1_6_ce0;
assign m1_6_ce1 = grp_gemm_Pipeline_inner_fu_233_m1_6_ce1;
assign m1_7_address0 = grp_gemm_Pipeline_inner_fu_233_m1_7_address0;
assign m1_7_address1 = grp_gemm_Pipeline_inner_fu_233_m1_7_address1;
assign m1_7_ce0 = grp_gemm_Pipeline_inner_fu_233_m1_7_ce0;
assign m1_7_ce1 = grp_gemm_Pipeline_inner_fu_233_m1_7_ce1;
assign m2_0_address0 = grp_gemm_Pipeline_inner_fu_233_m2_0_address0;
assign m2_0_address1 = grp_gemm_Pipeline_inner_fu_233_m2_0_address1;
assign m2_0_ce0 = grp_gemm_Pipeline_inner_fu_233_m2_0_ce0;
assign m2_0_ce1 = grp_gemm_Pipeline_inner_fu_233_m2_0_ce1;
assign m2_1_address0 = grp_gemm_Pipeline_inner_fu_233_m2_1_address0;
assign m2_1_address1 = grp_gemm_Pipeline_inner_fu_233_m2_1_address1;
assign m2_1_ce0 = grp_gemm_Pipeline_inner_fu_233_m2_1_ce0;
assign m2_1_ce1 = grp_gemm_Pipeline_inner_fu_233_m2_1_ce1;
assign m2_2_address0 = grp_gemm_Pipeline_inner_fu_233_m2_2_address0;
assign m2_2_address1 = grp_gemm_Pipeline_inner_fu_233_m2_2_address1;
assign m2_2_ce0 = grp_gemm_Pipeline_inner_fu_233_m2_2_ce0;
assign m2_2_ce1 = grp_gemm_Pipeline_inner_fu_233_m2_2_ce1;
assign m2_3_address0 = grp_gemm_Pipeline_inner_fu_233_m2_3_address0;
assign m2_3_address1 = grp_gemm_Pipeline_inner_fu_233_m2_3_address1;
assign m2_3_ce0 = grp_gemm_Pipeline_inner_fu_233_m2_3_ce0;
assign m2_3_ce1 = grp_gemm_Pipeline_inner_fu_233_m2_3_ce1;
assign m2_4_address0 = grp_gemm_Pipeline_inner_fu_233_m2_4_address0;
assign m2_4_address1 = grp_gemm_Pipeline_inner_fu_233_m2_4_address1;
assign m2_4_ce0 = grp_gemm_Pipeline_inner_fu_233_m2_4_ce0;
assign m2_4_ce1 = grp_gemm_Pipeline_inner_fu_233_m2_4_ce1;
assign m2_5_address0 = grp_gemm_Pipeline_inner_fu_233_m2_5_address0;
assign m2_5_address1 = grp_gemm_Pipeline_inner_fu_233_m2_5_address1;
assign m2_5_ce0 = grp_gemm_Pipeline_inner_fu_233_m2_5_ce0;
assign m2_5_ce1 = grp_gemm_Pipeline_inner_fu_233_m2_5_ce1;
assign m2_6_address0 = grp_gemm_Pipeline_inner_fu_233_m2_6_address0;
assign m2_6_address1 = grp_gemm_Pipeline_inner_fu_233_m2_6_address1;
assign m2_6_ce0 = grp_gemm_Pipeline_inner_fu_233_m2_6_ce0;
assign m2_6_ce1 = grp_gemm_Pipeline_inner_fu_233_m2_6_ce1;
assign m2_7_address0 = grp_gemm_Pipeline_inner_fu_233_m2_7_address0;
assign m2_7_address1 = grp_gemm_Pipeline_inner_fu_233_m2_7_address1;
assign m2_7_ce0 = grp_gemm_Pipeline_inner_fu_233_m2_7_ce0;
assign m2_7_ce1 = grp_gemm_Pipeline_inner_fu_233_m2_7_ce1;
assign prod_0_address0 = zext_ln17_fu_340_p1;
assign prod_0_ce0 = prod_0_ce0_local;
assign prod_0_d0 = bitcast_ln17_fu_352_p1;
assign prod_0_we0 = prod_0_we0_local;
assign prod_1_address0 = zext_ln17_fu_340_p1;
assign prod_1_ce0 = prod_1_ce0_local;
assign prod_1_d0 = bitcast_ln17_fu_352_p1;
assign prod_1_we0 = prod_1_we0_local;
assign prod_2_address0 = zext_ln17_fu_340_p1;
assign prod_2_ce0 = prod_2_ce0_local;
assign prod_2_d0 = bitcast_ln17_fu_352_p1;
assign prod_2_we0 = prod_2_we0_local;
assign prod_3_address0 = zext_ln17_fu_340_p1;
assign prod_3_ce0 = prod_3_ce0_local;
assign prod_3_d0 = bitcast_ln17_fu_352_p1;
assign prod_3_we0 = prod_3_we0_local;
assign prod_4_address0 = zext_ln17_fu_340_p1;
assign prod_4_ce0 = prod_4_ce0_local;
assign prod_4_d0 = bitcast_ln17_fu_352_p1;
assign prod_4_we0 = prod_4_we0_local;
assign prod_5_address0 = zext_ln17_fu_340_p1;
assign prod_5_ce0 = prod_5_ce0_local;
assign prod_5_d0 = bitcast_ln17_fu_352_p1;
assign prod_5_we0 = prod_5_we0_local;
assign prod_6_address0 = zext_ln17_fu_340_p1;
assign prod_6_ce0 = prod_6_ce0_local;
assign prod_6_d0 = bitcast_ln17_fu_352_p1;
assign prod_6_we0 = prod_6_we0_local;
assign prod_7_address0 = zext_ln17_fu_340_p1;
assign prod_7_ce0 = prod_7_ce0_local;
assign prod_7_d0 = bitcast_ln17_fu_352_p1;
assign prod_7_we0 = prod_7_we0_local;
assign trunc_ln8_fu_294_p1 = i_fu_110[5:0];
assign trunc_ln9_fu_310_p1 = j_reg_222[2:0];
assign zext_ln17_fu_340_p1 = add_ln1_fu_334_p3;
endmodule 
