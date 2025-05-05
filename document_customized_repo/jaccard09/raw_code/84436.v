module bbgemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_0_address0,m1_0_ce0,m1_0_q0,m1_1_address0,m1_1_ce0,m1_1_q0,m1_2_address0,m1_2_ce0,m1_2_q0,m1_3_address0,m1_3_ce0,m1_3_q0,m1_4_address0,m1_4_ce0,m1_4_q0,m1_5_address0,m1_5_ce0,m1_5_q0,m1_6_address0,m1_6_ce0,m1_6_q0,m1_7_address0,m1_7_ce0,m1_7_q0,m2_0_address0,m2_0_ce0,m2_0_q0,m2_0_address1,m2_0_ce1,m2_0_q1,m2_1_address0,m2_1_ce0,m2_1_q0,m2_1_address1,m2_1_ce1,m2_1_q1,m2_2_address0,m2_2_ce0,m2_2_q0,m2_2_address1,m2_2_ce1,m2_2_q1,m2_3_address0,m2_3_ce0,m2_3_q0,m2_3_address1,m2_3_ce1,m2_3_q1,m2_4_address0,m2_4_ce0,m2_4_q0,m2_4_address1,m2_4_ce1,m2_4_q1,m2_5_address0,m2_5_ce0,m2_5_q0,m2_5_address1,m2_5_ce1,m2_5_q1,m2_6_address0,m2_6_ce0,m2_6_q0,m2_6_address1,m2_6_ce1,m2_6_q1,m2_7_address0,m2_7_ce0,m2_7_q0,m2_7_address1,m2_7_ce1,m2_7_q1,prod_0_address0,prod_0_ce0,prod_0_we0,prod_0_d0,prod_0_q0,prod_1_address0,prod_1_ce0,prod_1_we0,prod_1_d0,prod_1_q0,prod_2_address0,prod_2_ce0,prod_2_we0,prod_2_d0,prod_2_q0,prod_3_address0,prod_3_ce0,prod_3_we0,prod_3_d0,prod_3_q0,prod_4_address0,prod_4_ce0,prod_4_we0,prod_4_d0,prod_4_q0,prod_5_address0,prod_5_ce0,prod_5_we0,prod_5_d0,prod_5_q0,prod_6_address0,prod_6_ce0,prod_6_we0,prod_6_d0,prod_6_q0,prod_7_address0,prod_7_ce0,prod_7_we0,prod_7_d0,prod_7_q0); 
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
output  [8:0] m1_0_address0;
output   m1_0_ce0;
input  [63:0] m1_0_q0;
output  [8:0] m1_1_address0;
output   m1_1_ce0;
input  [63:0] m1_1_q0;
output  [8:0] m1_2_address0;
output   m1_2_ce0;
input  [63:0] m1_2_q0;
output  [8:0] m1_3_address0;
output   m1_3_ce0;
input  [63:0] m1_3_q0;
output  [8:0] m1_4_address0;
output   m1_4_ce0;
input  [63:0] m1_4_q0;
output  [8:0] m1_5_address0;
output   m1_5_ce0;
input  [63:0] m1_5_q0;
output  [8:0] m1_6_address0;
output   m1_6_ce0;
input  [63:0] m1_6_q0;
output  [8:0] m1_7_address0;
output   m1_7_ce0;
input  [63:0] m1_7_q0;
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
input  [63:0] prod_0_q0;
output  [8:0] prod_1_address0;
output   prod_1_ce0;
output   prod_1_we0;
output  [63:0] prod_1_d0;
input  [63:0] prod_1_q0;
output  [8:0] prod_2_address0;
output   prod_2_ce0;
output   prod_2_we0;
output  [63:0] prod_2_d0;
input  [63:0] prod_2_q0;
output  [8:0] prod_3_address0;
output   prod_3_ce0;
output   prod_3_we0;
output  [63:0] prod_3_d0;
input  [63:0] prod_3_q0;
output  [8:0] prod_4_address0;
output   prod_4_ce0;
output   prod_4_we0;
output  [63:0] prod_4_d0;
input  [63:0] prod_4_q0;
output  [8:0] prod_5_address0;
output   prod_5_ce0;
output   prod_5_we0;
output  [63:0] prod_5_d0;
input  [63:0] prod_5_q0;
output  [8:0] prod_6_address0;
output   prod_6_ce0;
output   prod_6_we0;
output  [63:0] prod_6_d0;
input  [63:0] prod_6_q0;
output  [8:0] prod_7_address0;
output   prod_7_ce0;
output   prod_7_we0;
output  [63:0] prod_7_d0;
input  [63:0] prod_7_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [2:0] indvars_iv147_udiv_reg_235;
wire    ap_CS_fsm_state2;
reg   [2:0] indvars_iv145_udiv_reg_243;
wire    ap_CS_fsm_state3;
wire   [6:0] add_ln16_fu_206_p2;
reg   [6:0] add_ln16_reg_248;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_start;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_done;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_idle;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_ready;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_1_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_1_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_5_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_5_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_2_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_2_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_6_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_6_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_3_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_3_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_7_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_7_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_0_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_0_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_4_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_4_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_0_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_0_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_0_address1;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_0_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_1_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_1_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_1_address1;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_1_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_2_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_2_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_2_address1;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_2_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_3_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_3_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_3_address1;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_3_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_4_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_4_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_4_address1;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_4_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_5_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_5_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_5_address1;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_5_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_6_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_6_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_6_address1;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_6_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_7_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_7_ce0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_7_address1;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_7_ce1;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_0_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_0_ce0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_0_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_0_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_1_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_1_ce0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_1_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_1_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_2_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_2_ce0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_2_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_2_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_3_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_3_ce0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_3_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_3_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_4_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_4_ce0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_4_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_4_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_5_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_5_ce0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_5_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_5_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_6_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_6_ce0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_6_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_6_d0;
wire   [8:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_7_address0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_7_ce0;
wire    grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_7_we0;
wire   [63:0] grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_7_d0;
reg   [6:0] kk_reg_96;
wire   [0:0] tmp_fu_169_p3;
wire    ap_CS_fsm_state4;
reg    grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_start_reg;
wire   [0:0] tmp_5_fu_187_p3;
reg   [6:0] jj_fu_92;
wire   [6:0] add_ln15_fu_212_p2;
reg   [3:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_start_reg = 1'b0;
#0 jj_fu_92 = 7'd0;
end
bbgemm_bbgemm_Pipeline_loopi_loopk grp_bbgemm_Pipeline_loopi_loopk_fu_107(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_start),.ap_done(grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_done),.ap_idle(grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_idle),.ap_ready(grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_ready),.indvars_iv145_udiv(indvars_iv145_udiv_reg_243),.m1_1_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_1_address0),.m1_1_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_1_ce0),.m1_1_q0(m1_1_q0),.m1_5_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_5_address0),.m1_5_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_5_ce0),.m1_5_q0(m1_5_q0),.m1_2_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_2_address0),.m1_2_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_2_ce0),.m1_2_q0(m1_2_q0),.m1_6_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_6_address0),.m1_6_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_6_ce0),.m1_6_q0(m1_6_q0),.m1_3_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_3_address0),.m1_3_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_3_ce0),.m1_3_q0(m1_3_q0),.m1_7_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_7_address0),.m1_7_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_7_ce0),.m1_7_q0(m1_7_q0),.m1_0_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_0_address0),.m1_0_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_0_ce0),.m1_0_q0(m1_0_q0),.m1_4_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_4_address0),.m1_4_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_4_ce0),.m1_4_q0(m1_4_q0),.indvars_iv147_udiv(indvars_iv147_udiv_reg_235),.m2_0_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_0_address0),.m2_0_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_0_ce0),.m2_0_q0(m2_0_q0),.m2_0_address1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_0_address1),.m2_0_ce1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_0_ce1),.m2_0_q1(m2_0_q1),.m2_1_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_1_address0),.m2_1_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_1_ce0),.m2_1_q0(m2_1_q0),.m2_1_address1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_1_address1),.m2_1_ce1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_1_ce1),.m2_1_q1(m2_1_q1),.m2_2_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_2_address0),.m2_2_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_2_ce0),.m2_2_q0(m2_2_q0),.m2_2_address1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_2_address1),.m2_2_ce1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_2_ce1),.m2_2_q1(m2_2_q1),.m2_3_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_3_address0),.m2_3_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_3_ce0),.m2_3_q0(m2_3_q0),.m2_3_address1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_3_address1),.m2_3_ce1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_3_ce1),.m2_3_q1(m2_3_q1),.m2_4_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_4_address0),.m2_4_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_4_ce0),.m2_4_q0(m2_4_q0),.m2_4_address1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_4_address1),.m2_4_ce1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_4_ce1),.m2_4_q1(m2_4_q1),.m2_5_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_5_address0),.m2_5_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_5_ce0),.m2_5_q0(m2_5_q0),.m2_5_address1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_5_address1),.m2_5_ce1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_5_ce1),.m2_5_q1(m2_5_q1),.m2_6_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_6_address0),.m2_6_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_6_ce0),.m2_6_q0(m2_6_q0),.m2_6_address1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_6_address1),.m2_6_ce1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_6_ce1),.m2_6_q1(m2_6_q1),.m2_7_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_7_address0),.m2_7_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_7_ce0),.m2_7_q0(m2_7_q0),.m2_7_address1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_7_address1),.m2_7_ce1(grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_7_ce1),.m2_7_q1(m2_7_q1),.prod_0_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_0_address0),.prod_0_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_0_ce0),.prod_0_we0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_0_we0),.prod_0_d0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_0_d0),.prod_0_q0(prod_0_q0),.prod_1_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_1_address0),.prod_1_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_1_ce0),.prod_1_we0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_1_we0),.prod_1_d0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_1_d0),.prod_1_q0(prod_1_q0),.prod_2_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_2_address0),.prod_2_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_2_ce0),.prod_2_we0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_2_we0),.prod_2_d0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_2_d0),.prod_2_q0(prod_2_q0),.prod_3_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_3_address0),.prod_3_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_3_ce0),.prod_3_we0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_3_we0),.prod_3_d0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_3_d0),.prod_3_q0(prod_3_q0),.prod_4_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_4_address0),.prod_4_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_4_ce0),.prod_4_we0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_4_we0),.prod_4_d0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_4_d0),.prod_4_q0(prod_4_q0),.prod_5_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_5_address0),.prod_5_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_5_ce0),.prod_5_we0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_5_we0),.prod_5_d0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_5_d0),.prod_5_q0(prod_5_q0),.prod_6_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_6_address0),.prod_6_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_6_ce0),.prod_6_we0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_6_we0),.prod_6_d0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_6_d0),.prod_6_q0(prod_6_q0),.prod_7_address0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_7_address0),.prod_7_ce0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_7_ce0),.prod_7_we0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_7_we0),.prod_7_d0(grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_7_d0),.prod_7_q0(prod_7_q0));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_start_reg <= 1'b0;
    end else begin
        if (((tmp_5_fu_187_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
            grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_start_reg <= 1'b1;
        end else if ((grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_ready == 1'b1)) begin
            grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        jj_fu_92 <= 7'd0;
    end else if (((tmp_5_fu_187_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        jj_fu_92 <= add_ln15_fu_212_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        kk_reg_96 <= add_ln16_reg_248;
    end else if (((tmp_fu_169_p3 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        kk_reg_96 <= 7'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln16_reg_248 <= add_ln16_fu_206_p2;
        indvars_iv145_udiv_reg_243 <= {{kk_reg_96[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvars_iv147_udiv_reg_235 <= {{jj_fu_92[5:3]}};
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
    if ((grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_fu_169_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((tmp_fu_169_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (((tmp_fu_169_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((tmp_5_fu_187_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_212_p2 = (jj_fu_92 + 7'd8);
assign add_ln16_fu_206_p2 = (kk_reg_96 + 7'd8);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_start = grp_bbgemm_Pipeline_loopi_loopk_fu_107_ap_start_reg;
assign m1_0_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_0_address0;
assign m1_0_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_0_ce0;
assign m1_1_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_1_address0;
assign m1_1_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_1_ce0;
assign m1_2_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_2_address0;
assign m1_2_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_2_ce0;
assign m1_3_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_3_address0;
assign m1_3_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_3_ce0;
assign m1_4_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_4_address0;
assign m1_4_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_4_ce0;
assign m1_5_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_5_address0;
assign m1_5_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_5_ce0;
assign m1_6_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_6_address0;
assign m1_6_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_6_ce0;
assign m1_7_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_7_address0;
assign m1_7_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m1_7_ce0;
assign m2_0_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_0_address0;
assign m2_0_address1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_0_address1;
assign m2_0_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_0_ce0;
assign m2_0_ce1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_0_ce1;
assign m2_1_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_1_address0;
assign m2_1_address1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_1_address1;
assign m2_1_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_1_ce0;
assign m2_1_ce1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_1_ce1;
assign m2_2_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_2_address0;
assign m2_2_address1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_2_address1;
assign m2_2_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_2_ce0;
assign m2_2_ce1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_2_ce1;
assign m2_3_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_3_address0;
assign m2_3_address1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_3_address1;
assign m2_3_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_3_ce0;
assign m2_3_ce1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_3_ce1;
assign m2_4_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_4_address0;
assign m2_4_address1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_4_address1;
assign m2_4_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_4_ce0;
assign m2_4_ce1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_4_ce1;
assign m2_5_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_5_address0;
assign m2_5_address1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_5_address1;
assign m2_5_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_5_ce0;
assign m2_5_ce1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_5_ce1;
assign m2_6_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_6_address0;
assign m2_6_address1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_6_address1;
assign m2_6_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_6_ce0;
assign m2_6_ce1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_6_ce1;
assign m2_7_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_7_address0;
assign m2_7_address1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_7_address1;
assign m2_7_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_7_ce0;
assign m2_7_ce1 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_m2_7_ce1;
assign prod_0_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_0_address0;
assign prod_0_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_0_ce0;
assign prod_0_d0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_0_d0;
assign prod_0_we0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_0_we0;
assign prod_1_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_1_address0;
assign prod_1_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_1_ce0;
assign prod_1_d0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_1_d0;
assign prod_1_we0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_1_we0;
assign prod_2_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_2_address0;
assign prod_2_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_2_ce0;
assign prod_2_d0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_2_d0;
assign prod_2_we0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_2_we0;
assign prod_3_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_3_address0;
assign prod_3_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_3_ce0;
assign prod_3_d0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_3_d0;
assign prod_3_we0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_3_we0;
assign prod_4_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_4_address0;
assign prod_4_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_4_ce0;
assign prod_4_d0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_4_d0;
assign prod_4_we0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_4_we0;
assign prod_5_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_5_address0;
assign prod_5_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_5_ce0;
assign prod_5_d0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_5_d0;
assign prod_5_we0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_5_we0;
assign prod_6_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_6_address0;
assign prod_6_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_6_ce0;
assign prod_6_d0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_6_d0;
assign prod_6_we0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_6_we0;
assign prod_7_address0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_7_address0;
assign prod_7_ce0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_7_ce0;
assign prod_7_d0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_7_d0;
assign prod_7_we0 = grp_bbgemm_Pipeline_loopi_loopk_fu_107_prod_7_we0;
assign tmp_5_fu_187_p3 = kk_reg_96[32'd6];
assign tmp_fu_169_p3 = jj_fu_92[32'd6];
endmodule 