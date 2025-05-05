module spmv (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,val_r_address0,val_r_ce0,val_r_q0,val_r_address1,val_r_ce1,val_r_q1,cols_address0,cols_ce0,cols_q0,cols_address1,cols_ce1,cols_q1,rowDelimiters_address0,rowDelimiters_ce0,rowDelimiters_q0,rowDelimiters_address1,rowDelimiters_ce1,rowDelimiters_q1,vec_address0,vec_ce0,vec_q0,vec_address1,vec_ce1,vec_q1,out_r_address0,out_r_ce0,out_r_we0,out_r_d0); 
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
output  [10:0] val_r_address0;
output   val_r_ce0;
input  [63:0] val_r_q0;
output  [10:0] val_r_address1;
output   val_r_ce1;
input  [63:0] val_r_q1;
output  [10:0] cols_address0;
output   cols_ce0;
input  [31:0] cols_q0;
output  [10:0] cols_address1;
output   cols_ce1;
input  [31:0] cols_q1;
output  [8:0] rowDelimiters_address0;
output   rowDelimiters_ce0;
input  [31:0] rowDelimiters_q0;
output  [8:0] rowDelimiters_address1;
output   rowDelimiters_ce1;
input  [31:0] rowDelimiters_q1;
output  [8:0] vec_address0;
output   vec_ce0;
input  [63:0] vec_q0;
output  [8:0] vec_address1;
output   vec_ce1;
input  [63:0] vec_q1;
output  [8:0] out_r_address0;
output   out_r_ce0;
output   out_r_we0;
output  [63:0] out_r_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [63:0] zext_ln12_fu_180_p1;
reg   [63:0] zext_ln12_reg_373;
wire    ap_CS_fsm_state2;
reg   [31:0] tmp_begin_reg_388;
wire    ap_CS_fsm_state3;
reg   [31:0] tmp_end_reg_393;
wire   [2:0] grp_spmv_Pipeline_spmv_2_fu_136_ap_return;
reg   [2:0] targetBlock_reg_399;
wire    ap_CS_fsm_state4;
wire   [0:0] empty_fu_195_p2;
reg   [0:0] empty_reg_406;
wire   [0:0] empty_8_fu_201_p2;
reg   [0:0] empty_8_reg_411;
wire   [0:0] empty_10_fu_207_p2;
reg   [0:0] empty_10_reg_416;
wire   [0:0] empty_12_fu_213_p2;
reg   [0:0] empty_12_reg_421;
wire    grp_spmv_Pipeline_spmv_2_fu_136_ap_start;
wire    grp_spmv_Pipeline_spmv_2_fu_136_ap_done;
wire    grp_spmv_Pipeline_spmv_2_fu_136_ap_idle;
wire    grp_spmv_Pipeline_spmv_2_fu_136_ap_ready;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_136_val_r_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_136_val_r_ce0;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_136_val_r_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_136_val_r_ce1;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_136_cols_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_136_cols_ce0;
wire   [10:0] grp_spmv_Pipeline_spmv_2_fu_136_cols_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_136_cols_ce1;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_136_vec_address0;
wire    grp_spmv_Pipeline_spmv_2_fu_136_vec_ce0;
wire   [8:0] grp_spmv_Pipeline_spmv_2_fu_136_vec_address1;
wire    grp_spmv_Pipeline_spmv_2_fu_136_vec_ce1;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_136_sum_out;
wire    grp_spmv_Pipeline_spmv_2_fu_136_sum_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_136_sum_7_out;
wire    grp_spmv_Pipeline_spmv_2_fu_136_sum_7_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_136_sum_6_out;
wire    grp_spmv_Pipeline_spmv_2_fu_136_sum_6_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_136_sum_5_out;
wire    grp_spmv_Pipeline_spmv_2_fu_136_sum_5_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_136_sum_4_out;
wire    grp_spmv_Pipeline_spmv_2_fu_136_sum_4_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_136_sum_3_out;
wire    grp_spmv_Pipeline_spmv_2_fu_136_sum_3_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_136_sum_2_out;
wire    grp_spmv_Pipeline_spmv_2_fu_136_sum_2_out_ap_vld;
wire   [63:0] grp_spmv_Pipeline_spmv_2_fu_136_sum_1_out;
wire    grp_spmv_Pipeline_spmv_2_fu_136_sum_1_out_ap_vld;
reg    grp_spmv_Pipeline_spmv_2_fu_136_ap_start_reg;
reg   [63:0] sum_loc_fu_94;
reg   [63:0] sum_7_loc_fu_90;
reg   [63:0] sum_6_loc_fu_86;
reg   [63:0] sum_5_loc_fu_82;
reg   [63:0] sum_4_loc_fu_78;
reg   [63:0] sum_3_loc_fu_74;
reg   [63:0] sum_2_loc_fu_70;
reg   [63:0] sum_1_loc_fu_66;
wire   [0:0] icmp_ln12_fu_168_p2;
wire   [63:0] zext_ln15_fu_185_p1;
wire    ap_CS_fsm_state5;
reg   [8:0] i_fu_62;
wire   [8:0] add_ln15_fu_174_p2;
reg    rowDelimiters_ce1_local;
reg    rowDelimiters_ce0_local;
reg    out_r_we0_local;
wire   [63:0] bitcast_ln20_fu_310_p1;
reg    out_r_ce0_local;
wire   [63:0] empty_7_fu_243_p3;
wire   [63:0] empty_9_fu_250_p3;
wire   [63:0] empty_11_fu_257_p3;
wire   [0:0] empty_14_fu_271_p2;
wire   [63:0] empty_13_fu_264_p3;
wire   [0:0] empty_16_fu_284_p2;
wire   [63:0] empty_15_fu_276_p3;
wire   [0:0] empty_18_fu_297_p2;
wire   [63:0] empty_17_fu_289_p3;
wire   [63:0] sum_0_lcssa_ph_fu_302_p3;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_spmv_Pipeline_spmv_2_fu_136_ap_start_reg = 1'b0;
#0 i_fu_62 = 9'd0;
end
spmv_spmv_Pipeline_spmv_2 grp_spmv_Pipeline_spmv_2_fu_136(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_spmv_Pipeline_spmv_2_fu_136_ap_start),.ap_done(grp_spmv_Pipeline_spmv_2_fu_136_ap_done),.ap_idle(grp_spmv_Pipeline_spmv_2_fu_136_ap_idle),.ap_ready(grp_spmv_Pipeline_spmv_2_fu_136_ap_ready),.sext_ln16(tmp_begin_reg_388),.sext_ln16_1(tmp_end_reg_393),.val_r_address0(grp_spmv_Pipeline_spmv_2_fu_136_val_r_address0),.val_r_ce0(grp_spmv_Pipeline_spmv_2_fu_136_val_r_ce0),.val_r_q0(val_r_q0),.val_r_address1(grp_spmv_Pipeline_spmv_2_fu_136_val_r_address1),.val_r_ce1(grp_spmv_Pipeline_spmv_2_fu_136_val_r_ce1),.val_r_q1(val_r_q1),.cols_address0(grp_spmv_Pipeline_spmv_2_fu_136_cols_address0),.cols_ce0(grp_spmv_Pipeline_spmv_2_fu_136_cols_ce0),.cols_q0(cols_q0),.cols_address1(grp_spmv_Pipeline_spmv_2_fu_136_cols_address1),.cols_ce1(grp_spmv_Pipeline_spmv_2_fu_136_cols_ce1),.cols_q1(cols_q1),.vec_address0(grp_spmv_Pipeline_spmv_2_fu_136_vec_address0),.vec_ce0(grp_spmv_Pipeline_spmv_2_fu_136_vec_ce0),.vec_q0(vec_q0),.vec_address1(grp_spmv_Pipeline_spmv_2_fu_136_vec_address1),.vec_ce1(grp_spmv_Pipeline_spmv_2_fu_136_vec_ce1),.vec_q1(vec_q1),.tmp_end(tmp_end_reg_393),.sum_out(grp_spmv_Pipeline_spmv_2_fu_136_sum_out),.sum_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_136_sum_out_ap_vld),.sum_7_out(grp_spmv_Pipeline_spmv_2_fu_136_sum_7_out),.sum_7_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_136_sum_7_out_ap_vld),.sum_6_out(grp_spmv_Pipeline_spmv_2_fu_136_sum_6_out),.sum_6_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_136_sum_6_out_ap_vld),.sum_5_out(grp_spmv_Pipeline_spmv_2_fu_136_sum_5_out),.sum_5_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_136_sum_5_out_ap_vld),.sum_4_out(grp_spmv_Pipeline_spmv_2_fu_136_sum_4_out),.sum_4_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_136_sum_4_out_ap_vld),.sum_3_out(grp_spmv_Pipeline_spmv_2_fu_136_sum_3_out),.sum_3_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_136_sum_3_out_ap_vld),.sum_2_out(grp_spmv_Pipeline_spmv_2_fu_136_sum_2_out),.sum_2_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_136_sum_2_out_ap_vld),.sum_1_out(grp_spmv_Pipeline_spmv_2_fu_136_sum_1_out),.sum_1_out_ap_vld(grp_spmv_Pipeline_spmv_2_fu_136_sum_1_out_ap_vld),.ap_return(grp_spmv_Pipeline_spmv_2_fu_136_ap_return));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_spmv_Pipeline_spmv_2_fu_136_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_spmv_Pipeline_spmv_2_fu_136_ap_start_reg <= 1'b1;
        end else if ((grp_spmv_Pipeline_spmv_2_fu_136_ap_ready == 1'b1)) begin
            grp_spmv_Pipeline_spmv_2_fu_136_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_fu_62 <= 9'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln12_fu_168_p2 == 1'd0))) begin
        i_fu_62 <= add_ln15_fu_174_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        empty_10_reg_416 <= empty_10_fu_207_p2;
        empty_12_reg_421 <= empty_12_fu_213_p2;
        empty_8_reg_411 <= empty_8_fu_201_p2;
        empty_reg_406 <= empty_fu_195_p2;
        targetBlock_reg_399 <= grp_spmv_Pipeline_spmv_2_fu_136_ap_return;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_136_sum_1_out_ap_vld == 1'b1))) begin
        sum_1_loc_fu_66 <= grp_spmv_Pipeline_spmv_2_fu_136_sum_1_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_136_sum_2_out_ap_vld == 1'b1))) begin
        sum_2_loc_fu_70 <= grp_spmv_Pipeline_spmv_2_fu_136_sum_2_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_136_sum_3_out_ap_vld == 1'b1))) begin
        sum_3_loc_fu_74 <= grp_spmv_Pipeline_spmv_2_fu_136_sum_3_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_136_sum_4_out_ap_vld == 1'b1))) begin
        sum_4_loc_fu_78 <= grp_spmv_Pipeline_spmv_2_fu_136_sum_4_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_136_sum_5_out_ap_vld == 1'b1))) begin
        sum_5_loc_fu_82 <= grp_spmv_Pipeline_spmv_2_fu_136_sum_5_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_136_sum_6_out_ap_vld == 1'b1))) begin
        sum_6_loc_fu_86 <= grp_spmv_Pipeline_spmv_2_fu_136_sum_6_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_136_sum_7_out_ap_vld == 1'b1))) begin
        sum_7_loc_fu_90 <= grp_spmv_Pipeline_spmv_2_fu_136_sum_7_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_136_sum_out_ap_vld == 1'b1))) begin
        sum_loc_fu_94 <= grp_spmv_Pipeline_spmv_2_fu_136_sum_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_begin_reg_388 <= rowDelimiters_q1;
        tmp_end_reg_393 <= rowDelimiters_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        zext_ln12_reg_373[8 : 0] <= zext_ln12_fu_180_p1[8 : 0];
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
    if ((grp_spmv_Pipeline_spmv_2_fu_136_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln12_fu_168_p2 == 1'd1))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln12_fu_168_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_r_ce0_local = 1'b1;
    end else begin
        out_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        out_r_we0_local = 1'b1;
    end else begin
        out_r_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_ce0_local = 1'b1;
    end else begin
        rowDelimiters_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        rowDelimiters_ce1_local = 1'b1;
    end else begin
        rowDelimiters_ce1_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln12_fu_168_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_spmv_Pipeline_spmv_2_fu_136_ap_done == 1'b1))) begin
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
assign add_ln15_fu_174_p2 = (i_fu_62 + 9'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign bitcast_ln20_fu_310_p1 = sum_0_lcssa_ph_fu_302_p3;
assign cols_address0 = grp_spmv_Pipeline_spmv_2_fu_136_cols_address0;
assign cols_address1 = grp_spmv_Pipeline_spmv_2_fu_136_cols_address1;
assign cols_ce0 = grp_spmv_Pipeline_spmv_2_fu_136_cols_ce0;
assign cols_ce1 = grp_spmv_Pipeline_spmv_2_fu_136_cols_ce1;
assign empty_10_fu_207_p2 = ((grp_spmv_Pipeline_spmv_2_fu_136_ap_return == 3'd2) ? 1'b1 : 1'b0);
assign empty_11_fu_257_p3 = ((empty_10_reg_416[0:0] == 1'b1) ? sum_6_loc_fu_86 : empty_9_fu_250_p3);
assign empty_12_fu_213_p2 = ((grp_spmv_Pipeline_spmv_2_fu_136_ap_return == 3'd3) ? 1'b1 : 1'b0);
assign empty_13_fu_264_p3 = ((empty_12_reg_421[0:0] == 1'b1) ? sum_5_loc_fu_82 : empty_11_fu_257_p3);
assign empty_14_fu_271_p2 = ((targetBlock_reg_399 == 3'd4) ? 1'b1 : 1'b0);
assign empty_15_fu_276_p3 = ((empty_14_fu_271_p2[0:0] == 1'b1) ? sum_4_loc_fu_78 : empty_13_fu_264_p3);
assign empty_16_fu_284_p2 = ((targetBlock_reg_399 == 3'd5) ? 1'b1 : 1'b0);
assign empty_17_fu_289_p3 = ((empty_16_fu_284_p2[0:0] == 1'b1) ? sum_3_loc_fu_74 : empty_15_fu_276_p3);
assign empty_18_fu_297_p2 = ((targetBlock_reg_399 == 3'd6) ? 1'b1 : 1'b0);
assign empty_7_fu_243_p3 = ((empty_reg_406[0:0] == 1'b1) ? sum_loc_fu_94 : sum_1_loc_fu_66);
assign empty_8_fu_201_p2 = ((grp_spmv_Pipeline_spmv_2_fu_136_ap_return == 3'd1) ? 1'b1 : 1'b0);
assign empty_9_fu_250_p3 = ((empty_8_reg_411[0:0] == 1'b1) ? sum_7_loc_fu_90 : empty_7_fu_243_p3);
assign empty_fu_195_p2 = ((grp_spmv_Pipeline_spmv_2_fu_136_ap_return == 3'd0) ? 1'b1 : 1'b0);
assign grp_spmv_Pipeline_spmv_2_fu_136_ap_start = grp_spmv_Pipeline_spmv_2_fu_136_ap_start_reg;
assign icmp_ln12_fu_168_p2 = ((i_fu_62 == 9'd494) ? 1'b1 : 1'b0);
assign out_r_address0 = zext_ln12_reg_373;
assign out_r_ce0 = out_r_ce0_local;
assign out_r_d0 = bitcast_ln20_fu_310_p1;
assign out_r_we0 = out_r_we0_local;
assign rowDelimiters_address0 = zext_ln15_fu_185_p1;
assign rowDelimiters_address1 = zext_ln12_fu_180_p1;
assign rowDelimiters_ce0 = rowDelimiters_ce0_local;
assign rowDelimiters_ce1 = rowDelimiters_ce1_local;
assign sum_0_lcssa_ph_fu_302_p3 = ((empty_18_fu_297_p2[0:0] == 1'b1) ? sum_2_loc_fu_70 : empty_17_fu_289_p3);
assign val_r_address0 = grp_spmv_Pipeline_spmv_2_fu_136_val_r_address0;
assign val_r_address1 = grp_spmv_Pipeline_spmv_2_fu_136_val_r_address1;
assign val_r_ce0 = grp_spmv_Pipeline_spmv_2_fu_136_val_r_ce0;
assign val_r_ce1 = grp_spmv_Pipeline_spmv_2_fu_136_val_r_ce1;
assign vec_address0 = grp_spmv_Pipeline_spmv_2_fu_136_vec_address0;
assign vec_address1 = grp_spmv_Pipeline_spmv_2_fu_136_vec_address1;
assign vec_ce0 = grp_spmv_Pipeline_spmv_2_fu_136_vec_ce0;
assign vec_ce1 = grp_spmv_Pipeline_spmv_2_fu_136_vec_ce1;
assign zext_ln12_fu_180_p1 = i_fu_62;
assign zext_ln15_fu_185_p1 = add_ln15_fu_174_p2;
always @ (posedge ap_clk) begin
    zext_ln12_reg_373[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 