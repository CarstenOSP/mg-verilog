module spmv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,val_0_address0,val_0_ce0,val_0_q0,val_0_address1,val_0_ce1,val_0_q1,val_1_address0,val_1_ce0,val_1_q0,val_1_address1,val_1_ce1,val_1_q1,cols_address0,cols_ce0,cols_q0,cols_address1,cols_ce1,cols_q1,rowDelimiters_0_address0,rowDelimiters_0_ce0,rowDelimiters_0_q0,rowDelimiters_0_address1,rowDelimiters_0_ce1,rowDelimiters_0_q1,rowDelimiters_1_address0,rowDelimiters_1_ce0,rowDelimiters_1_q0,rowDelimiters_1_address1,rowDelimiters_1_ce1,rowDelimiters_1_q1,vec_0_address0,vec_0_ce0,vec_0_q0,vec_0_address1,vec_0_ce1,vec_0_q1,vec_1_address0,vec_1_ce0,vec_1_q0,vec_1_address1,vec_1_ce1,vec_1_q1,out_0_address0,out_0_ce0,out_0_we0,out_0_d0,out_1_address0,out_1_ce0,out_1_we0,out_1_d0); 
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
output  [9:0] val_0_address0;
output   val_0_ce0;
input  [63:0] val_0_q0;
output  [9:0] val_0_address1;
output   val_0_ce1;
input  [63:0] val_0_q1;
output  [9:0] val_1_address0;
output   val_1_ce0;
input  [63:0] val_1_q0;
output  [9:0] val_1_address1;
output   val_1_ce1;
input  [63:0] val_1_q1;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [10:0] cols_address1;
output   cols_ce1;
input  [31:0] cols_q1;
output  [7:0] rowDelimiters_0_address0;
output   rowDelimiters_0_ce0;
input  [31:0] rowDelimiters_0_q0;
output  [7:0] rowDelimiters_0_address1;
output   rowDelimiters_0_ce1;
input  [31:0] rowDelimiters_0_q1;
output  [7:0] rowDelimiters_1_address0;
output   rowDelimiters_1_ce0;
input  [31:0] rowDelimiters_1_q0;
output  [7:0] rowDelimiters_1_address1;
output   rowDelimiters_1_ce1;
input  [31:0] rowDelimiters_1_q1;
output  [7:0] vec_0_address0;
output   vec_0_ce0;
input  [63:0] vec_0_q0;
output  [7:0] vec_0_address1;
output   vec_0_ce1;
input  [63:0] vec_0_q1;
output  [7:0] vec_1_address0;
output   vec_1_ce0;
input  [63:0] vec_1_q0;
output  [7:0] vec_1_address1;
output   vec_1_ce1;
input  [63:0] vec_1_q1;
output  [7:0] out_0_address0;
output   out_0_ce0;
output   out_0_we0;
output  [63:0] out_0_d0;
output  [7:0] out_1_address0;
output   out_1_ce0;
output   out_1_we0;
output  [63:0] out_1_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [8:0] add_ln15_fu_197_p2;
reg   [8:0] add_ln15_reg_351;
wire    ap_CS_fsm_state2;
wire   [0:0] trunc_ln12_fu_203_p1;
reg   [0:0] trunc_ln12_reg_356;
wire   [63:0] zext_ln9_fu_217_p1;
reg   [63:0] zext_ln9_reg_362;
wire   [31:0] tmp_begin_fu_239_p3;
reg   [31:0] tmp_begin_reg_388;
wire    ap_CS_fsm_state3;
wire   [31:0] tmp_end_fu_247_p3;
reg   [31:0] tmp_end_reg_393;
wire   [1:0] grp_spmv_Pipeline_spmv_2_fu_162_ap_return;
reg   [1:0] targetBlock_reg_399;
wire    ap_CS_fsm_state4;
wire    grp_spmv_Pipeline_spmv_2_fu_162_ap_start;
wire    grp_spmv_Pipeline_spmv_2_fu_162_ap_done;
wire    grp_spmv_Pipeline_spmv_2_fu_162_ap_idle;
wire    grp_spmv_Pipeline_spmv_2_fu_162_ap_ready;
wire   [9:0] grp_spmv_Pipeline_spmv_2_fu_162_val_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_162_val_0_ce0;
wire   [9:0] grp_spmv_Pipeline_spmv_2_fu_162_val_0_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_162_val_0_ce1;
wire   [9:0] grp_spmv_Pipeline_spmv_2_fu_162_val_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_162_val_1_ce0;
wire   [9:0] grp_spmv_Pipeline_spmv_2_fu_162_val_1_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_162_val_1_ce1;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_162_cols_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_162_cols_ce0;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_162_cols_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_162_cols_ce1;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_162_vec_0_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_162_vec_0_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_162_vec_0_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_162_vec_0_ce1;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_162_vec_1_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_162_vec_1_ce0;
wire   [7:0] grp_spmv_Pipeline_spmv_2_fu_162_vec_1_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_162_vec_1_ce1;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_162_sum_out;
wire    grp_spmv_Pipeline_spmv_2_fu_162_sum_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_162_sum_3_out;
wire    grp_spmv_Pipeline_spmv_2_fu_162_sum_3_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_162_sum_2_out;
wire    grp_spmv_Pipeline_spmv_2_fu_162_sum_2_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_162_sum_1_out;
wire    grp_spmv_Pipeline_spmv_2_fu_162_sum_1_out_ap_vld;
reg    grp_spmv_Pipeline_spmv_2_fu_162_ap_start_reg;
reg   [63:0] sum_loc_fu_82;
reg   [63:0] sum_3_loc_fu_78;
reg   [63:0] sum_2_loc_fu_74;
reg   [63:0] sum_1_loc_fu_70;
wire   [0:0] icmp_ln12_fu_191_p2;
wire   [63:0] zext_ln15_fu_233_p1;
wire    ap_CS_fsm_state5;
reg   [8:0] i_fu_66;
reg    rowDelimiters_0_ce1_local;
reg    rowDelimiters_0_ce0_local;
reg    rowDelimiters_1_ce1_local;
reg    rowDelimiters_1_ce0_local;
reg    out_0_we0_local;
wire   [63:0] bitcast_ln20_fu_307_p1;
reg    out_0_ce0_local;
reg    out_1_we0_local;
reg    out_1_ce0_local;
wire   [7:0] lshr_ln9_fu_207_p4;
wire   [7:0] lshr_ln_fu_223_p4;
wire   [0:0] empty_fu_268_p2;
wire   [0:0] empty_14_fu_281_p2;
wire   [63:0] empty_13_fu_273_p3;
wire   [0:0] empty_16_fu_294_p2;
wire   [63:0] empty_15_fu_286_p3;
wire   [63:0] sum_0_lcssa_ph_fu_299_p3;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_spmv_Pipeline_spmv_2_fu_162_ap_start_reg = 1'b0;
#0 i_fu_66 = 9'd0;
end
spmv_spmv_Pipeline_spmv_2 grp_spmv_Pipeline_spmv_2_fu_162(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_spmv_Pipeline_spmv_2_fu_162_ap_start),.ap_done(grp_spmv_Pipeline_spmv_2_fu_162_ap_done),.ap_idle(grp_spmv_Pipeline_spmv_2_fu_162_ap_idle),.ap_ready(grp_spmv_Pipeline_spmv_2_fu_162_ap_ready),.sext_ln16(tmp_begin_reg_388),.sext_ln16_1(tmp_end_reg_393),.val_0_address0(grp_spmv_Pipeline_spmv_2_fu_162_val_0_address0),.val_0_ce0(grp_spmv_Pipeline_spmv_2_fu_162_val_0_ce0),.val_0_q0(val_0_q0),.val_0_address1(grp_spmv_Pipeline_spmv_2_fu_162_val_0_address1),.val_0_ce1(grp_spmv_Pipeline_spmv_2_fu_162_val_0_ce1),.val_0_q1(val_0_q1),.val_1_address0(grp_spmv_Pipeline_spmv_2_fu_162_val_1_address0),.val_1_ce0(grp_spmv_Pipeline_spmv_2_fu_162_val_1_ce0),.val_1_q0(val_1_q0),.val_1_address1(grp_spmv_Pipeline_spmv_2_fu_162_val_1_address1),.val_1_ce1(grp_spmv_Pipeline_spmv_2_fu_162_val_1_ce1),.val_1_q1(val_1_q1),.cols_address0(grp_spmv_Pipeline_spmv_2_fu_162_cols_address0),.cols_ce0(grp_spmv_Pipeline_spmv_2_fu_162_cols_ce0),.cols_q0(cols_q0),.cols_address1(grp_spmv_Pipeline_spmv_2_fu_162_cols_address1),.cols_ce1(grp_spmv_Pipeline_spmv_2_fu_162_cols_ce1),.cols_q1(cols_q1),.vec_0_address0(grp_spmv_Pipeline_spmv_2_fu_162_vec_0_address0),.vec_0_ce0(grp_spmv_Pipeline_spmv_2_fu_162_vec_0_ce0),.vec_0_q0(vec_0_q0),.vec_0_address1(grp_spmv_Pipeline_spmv_2_fu_162_vec_0_address1),.vec_0_ce1(grp_spmv_Pipeline_spmv_2_fu_162_vec_0_ce1),.vec_0_q1(vec_0_q1),.vec_1_address0(grp_spmv_Pipeline_spmv_2_fu_162_vec_1_address0),.vec_1_ce0(grp_spmv_Pipeline_spmv_2_fu_162_vec_1_ce0),.vec_1_q0(vec_1_q0),.vec_1_address1(grp_spmv_Pipeline_spmv_2_fu_162_vec_1_address1),.vec_1_ce1(grp_spmv_Pipeline_spmv_2_fu_162_vec_1_ce1),.vec_1_q1(vec_1_q1),.tmp_end(tmp_end_reg_393),.sum_out(grp_spmv_Pipeline_spmv_2_fu_162_sum_out),.sum_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_162_sum_out_ap_vld),.sum_3_out(grp_spmv_Pipeline_spmv_2_fu_162_sum_3_out),.sum_3_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_162_sum_3_out_ap_vld),.sum_2_out(grp_spmv_Pipeline_spmv_2_fu_162_sum_2_out),.sum_2_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_162_sum_2_out_ap_vld),.sum_1_out(grp_spmv_Pipeline_spmv_2_fu_162_sum_1_out),.sum_1_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_162_sum_1_out_ap_vld),.ap_return(grp_spmv_Pipeline_spmv_2_fu_162_ap_return));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_spmv_Pipeline_spmv_2_fu_162_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_spmv_Pipeline_spmv_2_fu_162_ap_start_reg <= 1'b1;
        end else if ((grp_spmv_Pipeline_spmv_2_fu_162_ap_ready == 1'b1)) begin
            grp_spmv_Pipeline_spmv_2_fu_162_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_66 <= 9'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        i_fu_66 <= add_ln15_reg_351;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln15_reg_351 <= add_ln15_fu_197_p2;
        trunc_ln12_reg_356 <= trunc_ln12_fu_203_p1;
        zext_ln9_reg_362[7 : 0] <= zext_ln9_fu_217_p1[7 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_162_sum_1_out_ap_vld == 1'b1))) begin
        sum_1_loc_fu_70 <= grp_spmv_Pipeline_spmv_2_fu_162_sum_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_162_sum_2_out_ap_vld == 1'b1))) begin
        sum_2_loc_fu_74 <= grp_spmv_Pipeline_spmv_2_fu_162_sum_2_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_162_sum_3_out_ap_vld == 1'b1))) begin
        sum_3_loc_fu_78 <= grp_spmv_Pipeline_spmv_2_fu_162_sum_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_162_sum_out_ap_vld == 1'b1))) begin
        sum_loc_fu_82 <= grp_spmv_Pipeline_spmv_2_fu_162_sum_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        targetBlock_reg_399 <= grp_spmv_Pipeline_spmv_2_fu_162_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_begin_reg_388 <= tmp_begin_fu_239_p3;
        tmp_end_reg_393 <= tmp_end_fu_247_p3;
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
    if ((grp_spmv_Pipeline_spmv_2_fu_162_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln12_fu_191_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln12_fu_191_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln12_reg_356 == 1'd0))) begin
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
    if (((1'b1 == ap_CS_fsm_state5) & (trunc_ln12_reg_356 == 1'd1))) begin
        out_1_we0_local = 1'b1;
    end else begin
        out_1_we0_local = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln12_fu_191_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_162_ap_done == 1'b1))) begin
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
assign add_ln15_fu_197_p2 = (i_fu_66 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign bitcast_ln20_fu_307_p1 = sum_0_lcssa_ph_fu_299_p3;
assign cols_address0 = grp_spmv_Pipeline_spmv_2_fu_162_cols_address0;
assign cols_address1 = grp_spmv_Pipeline_spmv_2_fu_162_cols_address1;
assign cols_ce0 = grp_spmv_Pipeline_spmv_2_fu_162_cols_ce0;
assign cols_ce1 = grp_spmv_Pipeline_spmv_2_fu_162_cols_ce1;
assign empty_13_fu_273_p3 = ((empty_fu_268_p2[0:0] == 1'b1) ? sum_loc_fu_82 : sum_1_loc_fu_70);
assign empty_14_fu_281_p2 = ((targetBlock_reg_399 == 2'd1) ? 1'b1 : 1'b0);
assign empty_15_fu_286_p3 = ((empty_14_fu_281_p2[0:0] == 1'b1) ? sum_3_loc_fu_78 : empty_13_fu_273_p3);
assign empty_16_fu_294_p2 = ((targetBlock_reg_399 == 2'd2) ? 1'b1 : 1'b0);
assign empty_fu_268_p2 = ((targetBlock_reg_399 == 2'd0) ? 1'b1 : 1'b0);
assign grp_spmv_Pipeline_spmv_2_fu_162_ap_start = grp_spmv_Pipeline_spmv_2_fu_162_ap_start_reg;
assign icmp_ln12_fu_191_p2 = ((i_fu_66 == 9'd494) ? 1'b1 : 1'b0);
assign lshr_ln9_fu_207_p4 = {{i_fu_66[8:1]}};
assign lshr_ln_fu_223_p4 = {{add_ln15_fu_197_p2[8:1]}};
assign out_0_address0 = zext_ln9_reg_362;
assign out_0_ce0 = out_0_ce0_local;
assign out_0_d0 = bitcast_ln20_fu_307_p1;
assign out_0_we0 = out_0_we0_local;
assign out_1_address0 = zext_ln9_reg_362;
assign out_1_ce0 = out_1_ce0_local;
assign out_1_d0 = bitcast_ln20_fu_307_p1;
assign out_1_we0 = out_1_we0_local;
assign rowDelimiters_0_address0 = zext_ln15_fu_233_p1;
assign rowDelimiters_0_address1 = zext_ln9_fu_217_p1;
assign rowDelimiters_0_ce0 = rowDelimiters_0_ce0_local;
assign rowDelimiters_0_ce1 = rowDelimiters_0_ce1_local;
assign rowDelimiters_1_address0 = zext_ln15_fu_233_p1;
assign rowDelimiters_1_address1 = zext_ln9_fu_217_p1;
assign rowDelimiters_1_ce0 = rowDelimiters_1_ce0_local;
assign rowDelimiters_1_ce1 = rowDelimiters_1_ce1_local;
assign sum_0_lcssa_ph_fu_299_p3 = ((empty_16_fu_294_p2[0:0] == 1'b1) ? sum_2_loc_fu_74 : empty_15_fu_286_p3);
assign tmp_begin_fu_239_p3 = ((trunc_ln12_reg_356[0:0] == 1'b1) ? rowDelimiters_1_q1 : rowDelimiters_0_q1);
assign tmp_end_fu_247_p3 = ((trunc_ln12_reg_356[0:0] == 1'b1) ? rowDelimiters_0_q0 : rowDelimiters_1_q0);
assign trunc_ln12_fu_203_p1 = i_fu_66[0:0];
assign val_0_address0 = grp_spmv_Pipeline_spmv_2_fu_162_val_0_address0;
assign val_0_address1 = grp_spmv_Pipeline_spmv_2_fu_162_val_0_address1;
assign val_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_162_val_0_ce0;
assign val_0_ce1 = grp_spmv_Pipeline_spmv_2_fu_162_val_0_ce1;
assign val_1_address0 = grp_spmv_Pipeline_spmv_2_fu_162_val_1_address0;
assign val_1_address1 = grp_spmv_Pipeline_spmv_2_fu_162_val_1_address1;
assign val_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_162_val_1_ce0;
assign val_1_ce1 = grp_spmv_Pipeline_spmv_2_fu_162_val_1_ce1;
assign vec_0_address0 = grp_spmv_Pipeline_spmv_2_fu_162_vec_0_address0;
assign vec_0_address1 = grp_spmv_Pipeline_spmv_2_fu_162_vec_0_address1;
assign vec_0_ce0 = grp_spmv_Pipeline_spmv_2_fu_162_vec_0_ce0;
assign vec_0_ce1 = grp_spmv_Pipeline_spmv_2_fu_162_vec_0_ce1;
assign vec_1_address0 = grp_spmv_Pipeline_spmv_2_fu_162_vec_1_address0;
assign vec_1_address1 = grp_spmv_Pipeline_spmv_2_fu_162_vec_1_address1;
assign vec_1_ce0 = grp_spmv_Pipeline_spmv_2_fu_162_vec_1_ce0;
assign vec_1_ce1 = grp_spmv_Pipeline_spmv_2_fu_162_vec_1_ce1;
assign zext_ln15_fu_233_p1 = lshr_ln_fu_223_p4;
assign zext_ln9_fu_217_p1 = lshr_ln9_fu_207_p4;
always @ (posedge ap_clk) begin
    zext_ln9_reg_362[63:8] <= 56'b00000000000000000000000000000000000000000000000000000000;
end
endmodule 