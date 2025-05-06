
module spmv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,val_0_address0,val_0_ce0,val_0_q0,val_1_address0,val_1_ce0,val_1_q0,val_2_address0,val_2_ce0,val_2_q0,val_3_address0,val_3_ce0,val_3_q0,val_4_address0,val_4_ce0,val_4_q0,val_5_address0,val_5_ce0,val_5_q0,val_6_address0,val_6_ce0,val_6_q0,val_7_address0,val_7_ce0,val_7_q0,cols_address0,cols_ce0,cols_q0,rowDelimiters_0_address0,rowDelimiters_0_ce0,rowDelimiters_0_q0,rowDelimiters_0_address1,rowDelimiters_0_ce1,rowDelimiters_0_q1,rowDelimiters_1_address0,rowDelimiters_1_ce0,rowDelimiters_1_q0,rowDelimiters_1_address1,rowDelimiters_1_ce1,rowDelimiters_1_q1,rowDelimiters_2_address0,rowDelimiters_2_ce0,rowDelimiters_2_q0,rowDelimiters_2_address1,rowDelimiters_2_ce1,rowDelimiters_2_q1,rowDelimiters_3_address0,rowDelimiters_3_ce0,rowDelimiters_3_q0,rowDelimiters_3_address1,rowDelimiters_3_ce1,rowDelimiters_3_q1,rowDelimiters_4_address0,rowDelimiters_4_ce0,rowDelimiters_4_q0,rowDelimiters_4_address1,rowDelimiters_4_ce1,rowDelimiters_4_q1,rowDelimiters_5_address0,rowDelimiters_5_ce0,rowDelimiters_5_q0,rowDelimiters_5_address1,rowDelimiters_5_ce1,rowDelimiters_5_q1,rowDelimiters_6_address0,rowDelimiters_6_ce0,rowDelimiters_6_q0,rowDelimiters_6_address1,rowDelimiters_6_ce1,rowDelimiters_6_q1,rowDelimiters_7_address0,rowDelimiters_7_ce0,rowDelimiters_7_q0,rowDelimiters_7_address1,rowDelimiters_7_ce1,rowDelimiters_7_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_1_address0,vec_1_ce0,vec_1_q0,vec_2_address0,vec_2_ce0,vec_2_q0,vec_3_address0,vec_3_ce0,vec_3_q0,vec_4_address0,vec_4_ce0,vec_4_q0,vec_5_address0,vec_5_ce0,vec_5_q0,vec_6_address0,vec_6_ce0,vec_6_q0,vec_7_address0,vec_7_ce0,vec_7_q0,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0,out_2_address0,out_2_ce0,out_2_we0,out_2_d0,out_3_address0,out_3_ce0,out_3_we0,out_3_d0,out_4_address0,out_4_ce0,out_4_we0,out_4_d0,out_5_address0,out_5_ce0,out_5_we0,out_5_d0,out_6_address0,out_6_ce0,out_6_we0,out_6_d0,out_7_address0,out_7_ce0,out_7_we0,out_7_d0);  
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
output  [7:0] val_0_address0;
output   val_0_ce0;
input  [63:0] val_0_q0;
output  [7:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [7:0] val_2_address0;
output   val_2_ce0;
input  [63:0] val_2_q0;
output  [7:0] val_3_address0;
output   val_3_ce0;
input  [63:0] val_3_q0;
output  [7:0] val_4_address0;
output   val_4_ce0;
input  [63:0] val_4_q0;
output  [7:0] val_5_address0;
output   val_5_ce0;
input  [63:0] val_5_q0;
output  [7:0] val_6_address0;
output   val_6_ce0;
input  [63:0] val_6_q0;
output  [7:0] val_7_address0;
output   val_7_ce0;
input  [63:0] val_7_q0;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [5:0] rowDelimiters_0_address0;
output   rowDelimiters_0_ce0;
input  [31:0] rowDelimiters_0_q0;
output  [5:0] rowDelimiters_0_address1;
output   rowDelimiters_0_ce1;
input  [31:0] rowDelimiters_0_q1;
output  [5:0] rowDelimiters_1_address0;
output   rowDelimiters_1_ce0;
input  [31:0] rowDelimiters_1_q0;
output  [5:0] rowDelimiters_1_address1;
output   rowDelimiters_1_ce1;
input  [31:0] rowDelimiters_1_q1;
output  [5:0] rowDelimiters_2_address0;
output   rowDelimiters_2_ce0;
input  [31:0] rowDelimiters_2_q0;
output  [5:0] rowDelimiters_2_address1;
output   rowDelimiters_2_ce1;
input  [31:0] rowDelimiters_2_q1;
output  [5:0] rowDelimiters_3_address0;
output   rowDelimiters_3_ce0;
input  [31:0] rowDelimiters_3_q0;
output  [5:0] rowDelimiters_3_address1;
output   rowDelimiters_3_ce1;
input  [31:0] rowDelimiters_3_q1;
output  [5:0] rowDelimiters_4_address0;
output   rowDelimiters_4_ce0;
input  [31:0] rowDelimiters_4_q0;
output  [5:0] rowDelimiters_4_address1;
output   rowDelimiters_4_ce1;
input  [31:0] rowDelimiters_4_q1;
output  [5:0] rowDelimiters_5_address0;
output   rowDelimiters_5_ce0;
input  [31:0] rowDelimiters_5_q0;
output  [5:0] rowDelimiters_5_address1;
output   rowDelimiters_5_ce1;
input  [31:0] rowDelimiters_5_q1;
output  [5:0] rowDelimiters_6_address0;
output   rowDelimiters_6_ce0;
input  [31:0] rowDelimiters_6_q0;
output  [5:0] rowDelimiters_6_address1;
output   rowDelimiters_6_ce1;
input  [31:0] rowDelimiters_6_q1;
output  [5:0] rowDelimiters_7_address0;
output   rowDelimiters_7_ce0;
input  [31:0] rowDelimiters_7_q0;
output  [5:0] rowDelimiters_7_address1;
output   rowDelimiters_7_ce1;
input  [31:0] rowDelimiters_7_q1;
output  [5:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [5:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [5:0] vec_2_address0;
output   vec_2_ce0;
input  [63:0] vec_2_q0;
output  [5:0] vec_3_address0;
output   vec_3_ce0;
input  [63:0] vec_3_q0;
output  [5:0] vec_4_address0;
output   vec_4_ce0;
input  [63:0] vec_4_q0;
output  [5:0] vec_5_address0;
output   vec_5_ce0;
input  [63:0] vec_5_q0;
output  [5:0] vec_6_address0;
output   vec_6_ce0;
input  [63:0] vec_6_q0;
output  [5:0] vec_7_address0;
output   vec_7_ce0;
input  [63:0] vec_7_q0;
output  [5:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
output  [5:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
output  [5:0] out_2_address0;
output   out_2_ce0;
output   out_2_we0;
output  [63:0] out_2_d0;
output  [5:0] out_3_address0;
output   out_3_ce0;
output   out_3_we0;
output  [63:0] out_3_d0;
output  [5:0] out_4_address0;
output   out_4_ce0;
output   out_4_we0;
output  [63:0] out_4_d0;
output  [5:0] out_5_address0;
output   out_5_ce0;
output   out_5_we0;
output  [63:0] out_5_d0;
output  [5:0] out_6_address0;
output   out_6_ce0;
output   out_6_we0;
output  [63:0] out_6_d0;
output  [5:0] out_7_address0;
output   out_7_ce0;
output   out_7_we0;
output  [63:0] out_7_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] add_ln15_fu_503_p2;
reg   [8:0] add_ln15_reg_689;
wire    ap_CS_fsm_state2;
wire   [2:0] trunc_ln12_fu_509_p1;
reg   [2:0] trunc_ln12_reg_694;
wire   [63:0] zext_ln9_fu_523_p1;
reg   [63:0] zext_ln9_reg_700;
wire   [31:0] tmp_begin_fu_557_p19;
reg   [31:0] tmp_begin_reg_792;
wire    ap_CS_fsm_state3;
wire   [31:0] tmp_end_fu_597_p19;
reg   [31:0] tmp_end_reg_797;
wire   [0:0] grp_spmv_Pipeline_spmv_2_fu_446_ap_return;
reg   [0:0] targetBlock_reg_803;
wire    ap_CS_fsm_state4;
wire    grp_spmv_Pipeline_spmv_2_fu_446_ap_start;
wire    grp_spmv_Pipeline_spmv_2_fu_446_ap_done;
wire    grp_spmv_Pipeline_spmv_2_fu_446_ap_idle;
wire    grp_spmv_Pipeline_spmv_2_fu_446_ap_ready;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_446_val_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_val_0_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_446_val_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_val_1_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_446_val_2_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_val_2_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_446_val_3_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_val_3_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_446_val_4_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_val_4_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_446_val_5_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_val_5_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_446_val_6_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_val_6_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_446_val_7_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_val_7_ce0;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_446_cols_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_cols_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_446_vec_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_vec_0_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_446_vec_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_vec_1_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_446_vec_2_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_vec_2_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_446_vec_3_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_vec_3_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_446_vec_4_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_vec_4_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_446_vec_5_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_vec_5_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_446_vec_6_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_vec_6_ce0;
wire   [5:0] grp_spmv_Pipeline_spmv_2_fu_446_vec_7_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_446_vec_7_ce0;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_446_sum_out;
wire    grp_spmv_Pipeline_spmv_2_fu_446_sum_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_446_sum_1_out;
wire    grp_spmv_Pipeline_spmv_2_fu_446_sum_1_out_ap_vld;
reg    grp_spmv_Pipeline_spmv_2_fu_446_ap_start_reg;
reg   [63:0] sum_loc_fu_138;
reg   [63:0] sum_1_loc_fu_134;
wire   [0:0] icmp_ln12_fu_497_p2;
wire   [63:0] zext_ln15_fu_545_p1;
wire    ap_CS_fsm_state5;
reg   [8:0] i_fu_130;
reg    rowDelimiters_0_ce1_local;
reg    rowDelimiters_0_ce0_local;
reg    rowDelimiters_1_ce1_local;
reg    rowDelimiters_1_ce0_local;
reg    rowDelimiters_2_ce1_local;
reg    rowDelimiters_2_ce0_local;
reg    rowDelimiters_3_ce1_local;
reg    rowDelimiters_3_ce0_local;
reg    rowDelimiters_4_ce1_local;
reg    rowDelimiters_4_ce0_local;
reg    rowDelimiters_5_ce1_local;
reg    rowDelimiters_5_ce0_local;
reg    rowDelimiters_6_ce1_local;
reg    rowDelimiters_6_ce0_local;
reg    rowDelimiters_7_ce1_local;
reg    rowDelimiters_7_ce0_local;
reg    out_6_we0_local;
wire   [63:0] bitcast_ln20_fu_651_p1;
reg    out_6_ce0_local;
reg    out_5_we0_local;
reg    out_5_ce0_local;
reg    out_4_we0_local;
reg    out_4_ce0_local;
reg    out_3_we0_local;
reg    out_3_ce0_local;
reg    out_2_we0_local;
reg    out_2_ce0_local;
reg    out_1_we0_local;
reg    out_1_ce0_local;
reg    out_0_we0_local;
reg    out_0_ce0_local;
reg    out_7_we0_local;
reg    out_7_ce0_local;
wire   [5:0] lshr_ln9_fu_513_p4;
wire   [5:0] lshr_ln_fu_535_p4;
wire   [31:0] tmp_begin_fu_557_p17;
wire   [31:0] tmp_end_fu_597_p17;
wire   [63:0] select_ln16_fu_644_p3;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire   [2:0] tmp_begin_fu_557_p1;
wire   [2:0] tmp_begin_fu_557_p3;
wire   [2:0] tmp_begin_fu_557_p5;
wire   [2:0] tmp_begin_fu_557_p7;
wire  signed [2:0] tmp_begin_fu_557_p9;
wire  signed [2:0] tmp_begin_fu_557_p11;
wire  signed [2:0] tmp_begin_fu_557_p13;
wire  signed [2:0] tmp_begin_fu_557_p15;
wire  signed [2:0] tmp_end_fu_597_p1;
wire   [2:0] tmp_end_fu_597_p3;
wire   [2:0] tmp_end_fu_597_p5;
wire   [2:0] tmp_end_fu_597_p7;
wire   [2:0] tmp_end_fu_597_p9;
wire  signed [2:0] tmp_end_fu_597_p11;
wire  signed [2:0] tmp_end_fu_597_p13;
wire  signed [2:0] tmp_end_fu_597_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_spmv_Pipeline_spmv_2_fu_446_ap_start_reg = 1'b0;
#0 i_fu_130 = 9'd0;
end
spmv_spmv_Pipeline_spmv_2 grp_spmv_Pipeline_spmv_2_fu_446(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_spmv_Pipeline_spmv_2_fu_446_ap_start),.ap_done(grp_spmv_Pipeline_spmv_2_fu_446_ap_done),.ap_idle(grp_spmv_Pipeline_spmv_2_fu_446_ap_idle),.ap_ready(grp_spmv_Pipeline_spmv_2_fu_446_ap_ready),.sext_ln16(tmp_begin_reg_792),.sext_ln16_1(tmp_end_reg_797),.val_0_address0(grp_spmv_Pipeline_spmv_2_fu_446_val_0_address0),.val_0_ce0(grp_spmv_Pipeline_spmv_2_fu_446_val_0_ce0),.val_0_q0(val_0_q0),.val_1_address0(grp_spmv_Pipeline_spmv_2_fu_446_val_1_address0),.val_1_ce0(grp_spmv_Pipeline_spmv_2_fu_446_val_1_ce0),.val_1_q0(val_1_q0),.val_2_address0(grp_spmv_Pipeline_spmv_2_fu_446_val_2_address0),.val_2_ce0(grp_spmv_Pipeline_spmv_2_fu_446_val_2_ce0),.val_2_q0(val_2_q0),.val_3_address0(grp_spmv_Pipeline_spmv_2_fu_446_val_3_address0),.val_3_ce0(grp_spmv_Pipeline_spmv_2_fu_446_val_3_ce0),.val_3_q0(val_3_q0),.val_4_address0(grp_spmv_Pipeline_spmv_2_fu_446_val_4_address0),.val_4_ce0(grp_spmv_Pipeline_spmv_2_fu_446_val_4_ce0),.val_4_q0(val_4_q0),.val_5_address0(grp_spmv_Pipeline_spmv_2_fu_446_val_5_address0),.val_5_ce0(grp_spmv_Pipeline_spmv_2_fu_446_val_5_ce0),.val_5_q0(val_5_q0),.val_6_address0(grp_spmv_Pipeline_spmv_2_fu_446_val_6_address0),.val_6_ce0(grp_spmv_Pipeline_spmv_2_fu_446_val_6_ce0),.val_6_q0(val_6_q0),.val_7_address0(grp_spmv_Pipeline_spmv_2_fu_446_val_7_address0),.val_7_ce0(grp_spmv_Pipeline_spmv_2_fu_446_val_7_ce0),.val_7_q0(val_7_q0),.cols_address0(grp_spmv_Pipeline_spmv_2_fu_446_cols_address0),.cols_ce0(grp_spmv_Pipeline_spmv_2_fu_446_cols_ce0),.cols_q0(cols_q0),.vec_0_address0(grp_spmv_Pipeline_spmv_2_fu_446_vec_0_address0),.vec_0_ce0(grp_spmv_Pipeline_spmv_2_fu_446_vec_0_ce0),.vec_0_q0(vec_0_q0),.vec_1_address0(grp_spmv_Pipeline_spmv_2_fu_446_vec_1_address0),.vec_1_ce0(grp_spmv_Pipeline_spmv_2_fu_446_vec_1_ce0),.vec_1_q0(vec_1_q0),.vec_2_address0(grp_spmv_Pipeline_spmv_2_fu_446_vec_2_address0),.vec_2_ce0(grp_spmv_Pipeline_spmv_2_fu_446_vec_2_ce0),.vec_2_q0(vec_2_q0),.vec_3_address0(grp_spmv_Pipeline_spmv_2_fu_446_vec_3_address0),.vec_3_ce0(grp_spmv_Pipeline_spmv_2_fu_446_vec_3_ce0),.vec_3_q0(vec_3_q0),.vec_4_address0(grp_spmv_Pipeline_spmv_2_fu_446_vec_4_address0),.vec_4_ce0(grp_spmv_Pipeline_spmv_2_fu_446_vec_4_ce0),.vec_4_q0(vec_4_q0),.vec_5_address0(grp_spmv_Pipeline_spmv_2_fu_446_vec_5_address0),.vec_5_ce0(grp_spmv_Pipeline_spmv_2_fu_446_vec_5_ce0),.vec_5_q0(vec_5_q0),.vec_6_address0(grp_spmv_Pipeline_spmv_2_fu_446_vec_6_address0),.vec_6_ce0(grp_spmv_Pipeline_spmv_2_fu_446_vec_6_ce0),.vec_6_q0(vec_6_q0),.vec_7_address0(grp_spmv_Pipeline_spmv_2_fu_446_vec_7_address0),.vec_7_ce0(grp_spmv_Pipeline_spmv_2_fu_446_vec_7_ce0),.vec_7_q0(vec_7_q0),.tmp_end(tmp_end_reg_797),.sum_out(grp_spmv_Pipeline_spmv_2_fu_446_sum_out),.sum_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_446_sum_out_ap_vld),.sum_1_out(grp_spmv_Pipeline_spmv_2_fu_446_sum_1_out),.sum_1_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_446_sum_1_out_ap_vld),.ap_return(grp_spmv_Pipeline_spmv_2_fu_446_ap_return));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U33(.din0(rowDelimiters_0_q1),.din1(rowDelimiters_1_q1),.din2(rowDelimiters_2_q1),.din3(rowDelimiters_3_q1),.din4(rowDelimiters_4_q1),.din5(rowDelimiters_5_q1),.din6(rowDelimiters_6_q1),.din7(rowDelimiters_7_q1),.def(tmp_begin_fu_557_p17),.sel(trunc_ln12_reg_694),.dout(tmp_begin_fu_557_p19));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h1 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.CASE4( 3'h3 ),.din4_WIDTH( 32 ),.CASE5( 3'h4 ),.din5_WIDTH( 32 ),.CASE6( 3'h5 ),.din6_WIDTH( 32 ),.CASE7( 3'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U34(.din0(rowDelimiters_0_q0),.din1(rowDelimiters_1_q0),.din2(rowDelimiters_2_q0),.din3(rowDelimiters_3_q0),.din4(rowDelimiters_4_q0),.din5(rowDelimiters_5_q0),.din6(rowDelimiters_6_q0),.din7(rowDelimiters_7_q0),.def(tmp_end_fu_597_p17),.sel(trunc_ln12_reg_694),.dout(tmp_end_fu_597_p19));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_spmv_Pipeline_spmv_2_fu_446_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_spmv_Pipeline_spmv_2_fu_446_ap_start_reg <= 1'b1;
        end else if ((grp_spmv_Pipeline_spmv_2_fu_446_ap_ready == 1'b1)) begin
            grp_spmv_Pipeline_spmv_2_fu_446_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_130 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_fu_130 <= add_ln15_reg_689;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln15_reg_689 <= add_ln15_fu_503_p2;
        trunc_ln12_reg_694 <= trunc_ln12_fu_509_p1;
        zext_ln9_reg_700[5 : 0] <= zext_ln9_fu_523_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_446_sum_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_1_loc_fu_134 <= grp_spmv_Pipeline_spmv_2_fu_446_sum_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_446_sum_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_loc_fu_138 <= grp_spmv_Pipeline_spmv_2_fu_446_sum_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        targetBlock_reg_803 <= grp_spmv_Pipeline_spmv_2_fu_446_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_begin_reg_792 <= tmp_begin_fu_557_p19;
        tmp_end_reg_797 <= tmp_end_fu_597_p19;
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
    if ((grp_spmv_Pipeline_spmv_2_fu_446_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln12_fu_497_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln12_fu_497_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_0_ce0_local = 1'b1;
    end else begin
        out_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_694 == 3'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        out_0_we0_local = 1'b1;
    end else begin
        out_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_1_ce0_local = 1'b1;
    end else begin
        out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_694 == 3'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_2_ce0_local = 1'b1;
    end else begin
        out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_694 == 3'd2) & (1'b1 == ap_CS_fsm_state5))) begin
        out_2_we0_local = 1'b1;
    end else begin
        out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_3_ce0_local = 1'b1;
    end else begin
        out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_694 == 3'd3) & (1'b1 == ap_CS_fsm_state5))) begin
        out_3_we0_local = 1'b1;
    end else begin
        out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_4_ce0_local = 1'b1;
    end else begin
        out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_694 == 3'd4) & (1'b1 == ap_CS_fsm_state5))) begin
        out_4_we0_local = 1'b1;
    end else begin
        out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_5_ce0_local = 1'b1;
    end else begin
        out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_694 == 3'd5) & (1'b1 == ap_CS_fsm_state5))) begin
        out_5_we0_local = 1'b1;
    end else begin
        out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_6_ce0_local = 1'b1;
    end else begin
        out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_694 == 3'd6) & (1'b1 == ap_CS_fsm_state5))) begin
        out_6_we0_local = 1'b1;
    end else begin
        out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_7_ce0_local = 1'b1;
    end else begin
        out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln12_reg_694 == 3'd7) & (1'b1 == ap_CS_fsm_state5))) begin
        out_7_we0_local = 1'b1;
    end else begin
        out_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_0_ce0_local = 1'b1;
    end else begin
        rowDelimiters_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_0_ce1_local = 1'b1;
    end else begin
        rowDelimiters_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_1_ce0_local = 1'b1;
    end else begin
        rowDelimiters_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_1_ce1_local = 1'b1;
    end else begin
        rowDelimiters_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_2_ce0_local = 1'b1;
    end else begin
        rowDelimiters_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_2_ce1_local = 1'b1;
    end else begin
        rowDelimiters_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_3_ce0_local = 1'b1;
    end else begin
        rowDelimiters_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_3_ce1_local = 1'b1;
    end else begin
        rowDelimiters_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_4_ce0_local = 1'b1;
    end else begin
        rowDelimiters_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_4_ce1_local = 1'b1;
    end else begin
        rowDelimiters_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_5_ce0_local = 1'b1;
    end else begin
        rowDelimiters_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_5_ce1_local = 1'b1;
    end else begin
        rowDelimiters_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_6_ce0_local = 1'b1;
    end else begin
        rowDelimiters_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_6_ce1_local = 1'b1;
    end else begin
        rowDelimiters_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_7_ce0_local = 1'b1;
    end else begin
        rowDelimiters_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_7_ce1_local = 1'b1;
    end else begin
        rowDelimiters_7_ce1_local = 1'b0;
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
            if (((icmp_ln12_fu_497_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((grp_spmv_Pipeline_spmv_2_fu_446_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln15_fu_503_p2 = (i_fu_130 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign bitcast_ln20_fu_651_p1 = select_ln16_fu_644_p3;
assign cols_address0 = grp_spmv_Pipeline_spmv_2_fu_446_cols_address0;
assign cols_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_cols_ce0;
assign grp_spmv_Pipeline_spmv_2_fu_446_ap_start = grp_spmv_Pipeline_spmv_2_fu_446_ap_start_reg;
assign icmp_ln12_fu_497_p2 = ((i_fu_130 == 9'd494) ? 1'b1 : 1'b0);
assign lshr_ln9_fu_513_p4 = {{i_fu_130[8:3]}};
assign lshr_ln_fu_535_p4 = {{add_ln15_fu_503_p2[8:3]}};
assign out_0_address0 = zext_ln9_reg_700;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln20_fu_651_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = zext_ln9_reg_700;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln20_fu_651_p1;
assign out_1_we0 = out_1_we0_local;
assign out_2_address0 = zext_ln9_reg_700;
assign out_2_ce0 = out_2_ce0_local;
assign out_2_d0 = bitcast_ln20_fu_651_p1;
assign out_2_we0 = out_2_we0_local;
assign out_3_address0 = zext_ln9_reg_700;
assign out_3_ce0 = out_3_ce0_local;
assign out_3_d0 = bitcast_ln20_fu_651_p1;
assign out_3_we0 = out_3_we0_local;
assign out_4_address0 = zext_ln9_reg_700;
assign out_4_ce0 = out_4_ce0_local;
assign out_4_d0 = bitcast_ln20_fu_651_p1;
assign out_4_we0 = out_4_we0_local;
assign out_5_address0 = zext_ln9_reg_700;
assign out_5_ce0 = out_5_ce0_local;
assign out_5_d0 = bitcast_ln20_fu_651_p1;
assign out_5_we0 = out_5_we0_local;
assign out_6_address0 = zext_ln9_reg_700;
assign out_6_ce0 = out_6_ce0_local;
assign out_6_d0 = bitcast_ln20_fu_651_p1;
assign out_6_we0 = out_6_we0_local;
assign out_7_address0 = zext_ln9_reg_700;
assign out_7_ce0 = out_7_ce0_local;
assign out_7_d0 = bitcast_ln20_fu_651_p1;
assign out_7_we0 = out_7_we0_local;
assign rowDelimiters_0_address0 = zext_ln15_fu_545_p1;
assign rowDelimiters_0_address1 = zext_ln9_fu_523_p1;
assign rowDelimiters_0_ce0 = rowDelimiters_0_ce0_local;
assign rowDelimiters_0_ce1 = rowDelimiters_0_ce1_local;
assign rowDelimiters_1_address0 = zext_ln15_fu_545_p1;
assign rowDelimiters_1_address1 = zext_ln9_fu_523_p1;
assign rowDelimiters_1_ce0 = rowDelimiters_1_ce0_local;
assign rowDelimiters_1_ce1 = rowDelimiters_1_ce1_local;
assign rowDelimiters_2_address0 = zext_ln15_fu_545_p1;
assign rowDelimiters_2_address1 = zext_ln9_fu_523_p1;
assign rowDelimiters_2_ce0 = rowDelimiters_2_ce0_local;
assign rowDelimiters_2_ce1 = rowDelimiters_2_ce1_local;
assign rowDelimiters_3_address0 = zext_ln15_fu_545_p1;
assign rowDelimiters_3_address1 = zext_ln9_fu_523_p1;
assign rowDelimiters_3_ce0 = rowDelimiters_3_ce0_local;
assign rowDelimiters_3_ce1 = rowDelimiters_3_ce1_local;
assign rowDelimiters_4_address0 = zext_ln15_fu_545_p1;
assign rowDelimiters_4_address1 = zext_ln9_fu_523_p1;
assign rowDelimiters_4_ce0 = rowDelimiters_4_ce0_local;
assign rowDelimiters_4_ce1 = rowDelimiters_4_ce1_local;
assign rowDelimiters_5_address0 = zext_ln15_fu_545_p1;
assign rowDelimiters_5_address1 = zext_ln9_fu_523_p1;
assign rowDelimiters_5_ce0 = rowDelimiters_5_ce0_local;
assign rowDelimiters_5_ce1 = rowDelimiters_5_ce1_local;
assign rowDelimiters_6_address0 = zext_ln15_fu_545_p1;
assign rowDelimiters_6_address1 = zext_ln9_fu_523_p1;
assign rowDelimiters_6_ce0 = rowDelimiters_6_ce0_local;
assign rowDelimiters_6_ce1 = rowDelimiters_6_ce1_local;
assign rowDelimiters_7_address0 = zext_ln15_fu_545_p1;
assign rowDelimiters_7_address1 = zext_ln9_fu_523_p1;
assign rowDelimiters_7_ce0 = rowDelimiters_7_ce0_local;
assign rowDelimiters_7_ce1 = rowDelimiters_7_ce1_local;
assign select_ln16_fu_644_p3 = ((targetBlock_reg_803[0:0] == 1'b1) ? sum_loc_fu_138 : sum_1_loc_fu_134);
assign tmp_begin_fu_557_p17 = 'bx;
assign tmp_end_fu_597_p17 = 'bx;
assign trunc_ln12_fu_509_p1 = i_fu_130[2:0];
assign val_0_address0 = grp_spmv_Pipeline_spmv_2_fu_446_val_0_address0;
assign val_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_val_0_ce0;
assign val_1_address0 = grp_spmv_Pipeline_spmv_2_fu_446_val_1_address0;
assign val_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_val_1_ce0;
assign val_2_address0 = grp_spmv_Pipeline_spmv_2_fu_446_val_2_address0;
assign val_2_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_val_2_ce0;
assign val_3_address0 = grp_spmv_Pipeline_spmv_2_fu_446_val_3_address0;
assign val_3_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_val_3_ce0;
assign val_4_address0 = grp_spmv_Pipeline_spmv_2_fu_446_val_4_address0;
assign val_4_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_val_4_ce0;
assign val_5_address0 = grp_spmv_Pipeline_spmv_2_fu_446_val_5_address0;
assign val_5_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_val_5_ce0;
assign val_6_address0 = grp_spmv_Pipeline_spmv_2_fu_446_val_6_address0;
assign val_6_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_val_6_ce0;
assign val_7_address0 = grp_spmv_Pipeline_spmv_2_fu_446_val_7_address0;
assign val_7_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_val_7_ce0;
assign vec_0_address0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_0_address0;
assign vec_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_0_ce0;
assign vec_1_address0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_1_address0;
assign vec_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_1_ce0;
assign vec_2_address0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_2_address0;
assign vec_2_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_2_ce0;
assign vec_3_address0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_3_address0;
assign vec_3_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_3_ce0;
assign vec_4_address0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_4_address0;
assign vec_4_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_4_ce0;
assign vec_5_address0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_5_address0;
assign vec_5_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_5_ce0;
assign vec_6_address0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_6_address0;
assign vec_6_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_6_ce0;
assign vec_7_address0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_7_address0;
assign vec_7_ce0 = grp_spmv_Pipeline_spmv_2_fu_446_vec_7_ce0;
assign zext_ln15_fu_545_p1 = lshr_ln_fu_535_p4;
assign zext_ln9_fu_523_p1 = lshr_ln9_fu_513_p4;
always @ (posedge ap_clk) begin
    zext_ln9_reg_700[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 
