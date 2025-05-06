
module spmv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,val_0_address0,val_0_ce0,val_0_q0,val_1_address0,val_1_ce0,val_1_q0,val_2_address0,val_2_ce0,val_2_q0,val_3_address0,val_3_ce0,val_3_q0,cols_address0,cols_ce0,cols_q0,rowDelimiters_0_address0,rowDelimiters_0_ce0,rowDelimiters_0_q0,rowDelimiters_0_address1,rowDelimiters_0_ce1,rowDelimiters_0_q1,rowDelimiters_1_address0,rowDelimiters_1_ce0,rowDelimiters_1_q0,rowDelimiters_1_address1,rowDelimiters_1_ce1,rowDelimiters_1_q1,rowDelimiters_2_address0,rowDelimiters_2_ce0,rowDelimiters_2_q0,rowDelimiters_2_address1,rowDelimiters_2_ce1,rowDelimiters_2_q1,rowDelimiters_3_address0,rowDelimiters_3_ce0,rowDelimiters_3_q0,rowDelimiters_3_address1,rowDelimiters_3_ce1,rowDelimiters_3_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_1_address0,vec_1_ce0,vec_1_q0,vec_2_address0,vec_2_ce0,vec_2_q0,vec_3_address0,vec_3_ce0,vec_3_q0,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0,out_2_address0,out_2_ce0,out_2_we0,out_2_d0,out_3_address0,out_3_ce0,out_3_we0,out_3_d0);  
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
output  [8:0] val_0_address0;
output   val_0_ce0;
input  [63:0] val_0_q0;
output  [8:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [8:0] val_2_address0;
output   val_2_ce0;
input  [63:0] val_2_q0;
output  [8:0] val_3_address0;
output   val_3_ce0;
input  [63:0] val_3_q0;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [6:0] rowDelimiters_0_address0;
output   rowDelimiters_0_ce0;
input  [31:0] rowDelimiters_0_q0;
output  [6:0] rowDelimiters_0_address1;
output   rowDelimiters_0_ce1;
input  [31:0] rowDelimiters_0_q1;
output  [6:0] rowDelimiters_1_address0;
output   rowDelimiters_1_ce0;
input  [31:0] rowDelimiters_1_q0;
output  [6:0] rowDelimiters_1_address1;
output   rowDelimiters_1_ce1;
input  [31:0] rowDelimiters_1_q1;
output  [6:0] rowDelimiters_2_address0;
output   rowDelimiters_2_ce0;
input  [31:0] rowDelimiters_2_q0;
output  [6:0] rowDelimiters_2_address1;
output   rowDelimiters_2_ce1;
input  [31:0] rowDelimiters_2_q1;
output  [6:0] rowDelimiters_3_address0;
output   rowDelimiters_3_ce0;
input  [31:0] rowDelimiters_3_q0;
output  [6:0] rowDelimiters_3_address1;
output   rowDelimiters_3_ce1;
input  [31:0] rowDelimiters_3_q1;
output  [6:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [6:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [6:0] vec_2_address0;
output   vec_2_ce0;
input  [63:0] vec_2_q0;
output  [6:0] vec_3_address0;
output   vec_3_ce0;
input  [63:0] vec_3_q0;
output  [6:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
output  [6:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
output  [6:0] out_2_address0;
output   out_2_ce0;
output   out_2_we0;
output  [63:0] out_2_d0;
output  [6:0] out_3_address0;
output   out_3_ce0;
output   out_3_we0;
output  [63:0] out_3_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] add_ln15_fu_295_p2;
reg   [8:0] add_ln15_reg_437;
wire    ap_CS_fsm_state2;
wire   [1:0] trunc_ln12_fu_301_p1;
reg   [1:0] trunc_ln12_reg_442;
wire   [63:0] zext_ln9_fu_315_p1;
reg   [63:0] zext_ln9_reg_448;
wire   [31:0] tmp_begin_fu_341_p11;
reg   [31:0] tmp_begin_reg_496;
wire    ap_CS_fsm_state3;
wire   [31:0] tmp_end_fu_365_p11;
reg   [31:0] tmp_end_reg_501;
wire   [0:0] grp_spmv_Pipeline_spmv_2_fu_254_ap_return;
reg   [0:0] targetBlock_reg_507;
wire    ap_CS_fsm_state4;
wire    grp_spmv_Pipeline_spmv_2_fu_254_ap_start;
wire    grp_spmv_Pipeline_spmv_2_fu_254_ap_done;
wire    grp_spmv_Pipeline_spmv_2_fu_254_ap_idle;
wire    grp_spmv_Pipeline_spmv_2_fu_254_ap_ready;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_254_val_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_254_val_0_ce0;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_254_val_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_254_val_1_ce0;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_254_val_2_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_254_val_2_ce0;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_254_val_3_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_254_val_3_ce0;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_254_cols_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_254_cols_ce0;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_254_vec_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_254_vec_0_ce0;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_254_vec_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_254_vec_1_ce0;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_254_vec_2_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_254_vec_2_ce0;
wire   [6:0] grp_spmv_Pipeline_spmv_2_fu_254_vec_3_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_254_vec_3_ce0;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_254_sum_out;
wire    grp_spmv_Pipeline_spmv_2_fu_254_sum_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_254_sum_1_out;
wire    grp_spmv_Pipeline_spmv_2_fu_254_sum_1_out_ap_vld;
reg    grp_spmv_Pipeline_spmv_2_fu_254_ap_start_reg;
reg   [63:0] sum_loc_fu_98;
reg   [63:0] sum_1_loc_fu_94;
wire   [0:0] icmp_ln12_fu_289_p2;
wire   [63:0] zext_ln15_fu_333_p1;
wire    ap_CS_fsm_state5;
reg   [8:0] i_fu_90;
reg    rowDelimiters_0_ce1_local;
reg    rowDelimiters_0_ce0_local;
reg    rowDelimiters_1_ce1_local;
reg    rowDelimiters_1_ce0_local;
reg    rowDelimiters_2_ce1_local;
reg    rowDelimiters_2_ce0_local;
reg    rowDelimiters_3_ce1_local;
reg    rowDelimiters_3_ce0_local;
reg    out_2_we0_local;
wire   [63:0] bitcast_ln20_fu_403_p1;
reg    out_2_ce0_local;
reg    out_1_we0_local;
reg    out_1_ce0_local;
reg    out_0_we0_local;
reg    out_0_ce0_local;
reg    out_3_we0_local;
reg    out_3_ce0_local;
wire   [6:0] lshr_ln9_fu_305_p4;
wire   [6:0] lshr_ln_fu_323_p4;
wire   [31:0] tmp_begin_fu_341_p9;
wire   [31:0] tmp_end_fu_365_p9;
wire   [63:0] select_ln16_fu_396_p3;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire   [1:0] tmp_begin_fu_341_p1;
wire   [1:0] tmp_begin_fu_341_p3;
wire  signed [1:0] tmp_begin_fu_341_p5;
wire  signed [1:0] tmp_begin_fu_341_p7;
wire  signed [1:0] tmp_end_fu_365_p1;
wire   [1:0] tmp_end_fu_365_p3;
wire   [1:0] tmp_end_fu_365_p5;
wire  signed [1:0] tmp_end_fu_365_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_spmv_Pipeline_spmv_2_fu_254_ap_start_reg = 1'b0;
#0 i_fu_90 = 9'd0;
end
spmv_spmv_Pipeline_spmv_2 grp_spmv_Pipeline_spmv_2_fu_254(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_spmv_Pipeline_spmv_2_fu_254_ap_start),.ap_done(grp_spmv_Pipeline_spmv_2_fu_254_ap_done),.ap_idle(grp_spmv_Pipeline_spmv_2_fu_254_ap_idle),.ap_ready(grp_spmv_Pipeline_spmv_2_fu_254_ap_ready),.sext_ln16(tmp_begin_reg_496),.sext_ln16_1(tmp_end_reg_501),.val_0_address0(grp_spmv_Pipeline_spmv_2_fu_254_val_0_address0),.val_0_ce0(grp_spmv_Pipeline_spmv_2_fu_254_val_0_ce0),.val_0_q0(val_0_q0),.val_1_address0(grp_spmv_Pipeline_spmv_2_fu_254_val_1_address0),.val_1_ce0(grp_spmv_Pipeline_spmv_2_fu_254_val_1_ce0),.val_1_q0(val_1_q0),.val_2_address0(grp_spmv_Pipeline_spmv_2_fu_254_val_2_address0),.val_2_ce0(grp_spmv_Pipeline_spmv_2_fu_254_val_2_ce0),.val_2_q0(val_2_q0),.val_3_address0(grp_spmv_Pipeline_spmv_2_fu_254_val_3_address0),.val_3_ce0(grp_spmv_Pipeline_spmv_2_fu_254_val_3_ce0),.val_3_q0(val_3_q0),.cols_address0(grp_spmv_Pipeline_spmv_2_fu_254_cols_address0),.cols_ce0(grp_spmv_Pipeline_spmv_2_fu_254_cols_ce0),.cols_q0(cols_q0),.vec_0_address0(grp_spmv_Pipeline_spmv_2_fu_254_vec_0_address0),.vec_0_ce0(grp_spmv_Pipeline_spmv_2_fu_254_vec_0_ce0),.vec_0_q0(vec_0_q0),.vec_1_address0(grp_spmv_Pipeline_spmv_2_fu_254_vec_1_address0),.vec_1_ce0(grp_spmv_Pipeline_spmv_2_fu_254_vec_1_ce0),.vec_1_q0(vec_1_q0),.vec_2_address0(grp_spmv_Pipeline_spmv_2_fu_254_vec_2_address0),.vec_2_ce0(grp_spmv_Pipeline_spmv_2_fu_254_vec_2_ce0),.vec_2_q0(vec_2_q0),.vec_3_address0(grp_spmv_Pipeline_spmv_2_fu_254_vec_3_address0),.vec_3_ce0(grp_spmv_Pipeline_spmv_2_fu_254_vec_3_ce0),.vec_3_q0(vec_3_q0),.tmp_end(tmp_end_reg_501),.sum_out(grp_spmv_Pipeline_spmv_2_fu_254_sum_out),.sum_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_254_sum_out_ap_vld),.sum_1_out(grp_spmv_Pipeline_spmv_2_fu_254_sum_1_out),.sum_1_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_254_sum_1_out_ap_vld),.ap_return(grp_spmv_Pipeline_spmv_2_fu_254_ap_return));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U25(.din0(rowDelimiters_0_q1),.din1(rowDelimiters_1_q1),.din2(rowDelimiters_2_q1),.din3(rowDelimiters_3_q1),.def(tmp_begin_fu_341_p9),.sel(trunc_ln12_reg_442),.dout(tmp_begin_fu_341_p11));
(* dissolve_hierarchy = "yes" *) spmv_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U26(.din0(rowDelimiters_0_q0),.din1(rowDelimiters_1_q0),.din2(rowDelimiters_2_q0),.din3(rowDelimiters_3_q0),.def(tmp_end_fu_365_p9),.sel(trunc_ln12_reg_442),.dout(tmp_end_fu_365_p11));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_spmv_Pipeline_spmv_2_fu_254_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_spmv_Pipeline_spmv_2_fu_254_ap_start_reg <= 1'b1;
        end else if ((grp_spmv_Pipeline_spmv_2_fu_254_ap_ready == 1'b1)) begin
            grp_spmv_Pipeline_spmv_2_fu_254_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_90 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_fu_90 <= add_ln15_reg_437;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln15_reg_437 <= add_ln15_fu_295_p2;
        trunc_ln12_reg_442 <= trunc_ln12_fu_301_p1;
        zext_ln9_reg_448[6 : 0] <= zext_ln9_fu_315_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_254_sum_1_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_1_loc_fu_94 <= grp_spmv_Pipeline_spmv_2_fu_254_sum_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((grp_spmv_Pipeline_spmv_2_fu_254_sum_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state4))) begin
        sum_loc_fu_98 <= grp_spmv_Pipeline_spmv_2_fu_254_sum_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        targetBlock_reg_507 <= grp_spmv_Pipeline_spmv_2_fu_254_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_begin_reg_496 <= tmp_begin_fu_341_p11;
        tmp_end_reg_501 <= tmp_end_fu_365_p11;
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
    if ((grp_spmv_Pipeline_spmv_2_fu_254_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((icmp_ln12_fu_289_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((icmp_ln12_fu_289_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln12_reg_442 == 2'd0))) begin
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
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln12_reg_442 == 2'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln12_reg_442 == 2'd2))) begin
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
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln12_reg_442 == 2'd3))) begin
        out_3_we0_local = 1'b1;
    end else begin
        out_3_we0_local = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln12_fu_289_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_254_ap_done == 1'b1))) begin
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
assign add_ln15_fu_295_p2 = (i_fu_90 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign bitcast_ln20_fu_403_p1 = select_ln16_fu_396_p3;
assign cols_address0 = grp_spmv_Pipeline_spmv_2_fu_254_cols_address0;
assign cols_ce0 = grp_spmv_Pipeline_spmv_2_fu_254_cols_ce0;
assign grp_spmv_Pipeline_spmv_2_fu_254_ap_start = grp_spmv_Pipeline_spmv_2_fu_254_ap_start_reg;
assign icmp_ln12_fu_289_p2 = ((i_fu_90 == 9'd494) ? 1'b1 : 1'b0);
assign lshr_ln9_fu_305_p4 = {{i_fu_90[8:2]}};
assign lshr_ln_fu_323_p4 = {{add_ln15_fu_295_p2[8:2]}};
assign out_0_address0 = zext_ln9_reg_448;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln20_fu_403_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = zext_ln9_reg_448;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln20_fu_403_p1;
assign out_1_we0 = out_1_we0_local;
assign out_2_address0 = zext_ln9_reg_448;
assign out_2_ce0 = out_2_ce0_local;
assign out_2_d0 = bitcast_ln20_fu_403_p1;
assign out_2_we0 = out_2_we0_local;
assign out_3_address0 = zext_ln9_reg_448;
assign out_3_ce0 = out_3_ce0_local;
assign out_3_d0 = bitcast_ln20_fu_403_p1;
assign out_3_we0 = out_3_we0_local;
assign rowDelimiters_0_address0 = zext_ln15_fu_333_p1;
assign rowDelimiters_0_address1 = zext_ln9_fu_315_p1;
assign rowDelimiters_0_ce0 = rowDelimiters_0_ce0_local;
assign rowDelimiters_0_ce1 = rowDelimiters_0_ce1_local;
assign rowDelimiters_1_address0 = zext_ln15_fu_333_p1;
assign rowDelimiters_1_address1 = zext_ln9_fu_315_p1;
assign rowDelimiters_1_ce0 = rowDelimiters_1_ce0_local;
assign rowDelimiters_1_ce1 = rowDelimiters_1_ce1_local;
assign rowDelimiters_2_address0 = zext_ln15_fu_333_p1;
assign rowDelimiters_2_address1 = zext_ln9_fu_315_p1;
assign rowDelimiters_2_ce0 = rowDelimiters_2_ce0_local;
assign rowDelimiters_2_ce1 = rowDelimiters_2_ce1_local;
assign rowDelimiters_3_address0 = zext_ln15_fu_333_p1;
assign rowDelimiters_3_address1 = zext_ln9_fu_315_p1;
assign rowDelimiters_3_ce0 = rowDelimiters_3_ce0_local;
assign rowDelimiters_3_ce1 = rowDelimiters_3_ce1_local;
assign select_ln16_fu_396_p3 = ((targetBlock_reg_507[0:0] == 1'b1) ? sum_loc_fu_98 : sum_1_loc_fu_94);
assign tmp_begin_fu_341_p9 = 'bx;
assign tmp_end_fu_365_p9 = 'bx;
assign trunc_ln12_fu_301_p1 = i_fu_90[1:0];
assign val_0_address0 = grp_spmv_Pipeline_spmv_2_fu_254_val_0_address0;
assign val_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_254_val_0_ce0;
assign val_1_address0 = grp_spmv_Pipeline_spmv_2_fu_254_val_1_address0;
assign val_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_254_val_1_ce0;
assign val_2_address0 = grp_spmv_Pipeline_spmv_2_fu_254_val_2_address0;
assign val_2_ce0 = grp_spmv_Pipeline_spmv_2_fu_254_val_2_ce0;
assign val_3_address0 = grp_spmv_Pipeline_spmv_2_fu_254_val_3_address0;
assign val_3_ce0 = grp_spmv_Pipeline_spmv_2_fu_254_val_3_ce0;
assign vec_0_address0 = grp_spmv_Pipeline_spmv_2_fu_254_vec_0_address0;
assign vec_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_254_vec_0_ce0;
assign vec_1_address0 = grp_spmv_Pipeline_spmv_2_fu_254_vec_1_address0;
assign vec_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_254_vec_1_ce0;
assign vec_2_address0 = grp_spmv_Pipeline_spmv_2_fu_254_vec_2_address0;
assign vec_2_ce0 = grp_spmv_Pipeline_spmv_2_fu_254_vec_2_ce0;
assign vec_3_address0 = grp_spmv_Pipeline_spmv_2_fu_254_vec_3_address0;
assign vec_3_ce0 = grp_spmv_Pipeline_spmv_2_fu_254_vec_3_ce0;
assign zext_ln15_fu_333_p1 = lshr_ln_fu_323_p4;
assign zext_ln9_fu_315_p1 = lshr_ln9_fu_305_p4;
always @ (posedge ap_clk) begin
    zext_ln9_reg_448[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 
