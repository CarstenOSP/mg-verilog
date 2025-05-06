
module ms_mergesort_ms_mergesort_Pipeline_mergesort_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,a_0_address0,a_0_ce0,a_0_we0,a_0_d0,a_0_q0,a_1_address0,a_1_ce0,a_1_we0,a_1_d0,a_1_q0,m);  
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
input  [31:0] empty;
output  [9:0] a_0_address0;
output   a_0_ce0;
output   a_0_we0;
output  [31:0] a_0_d0;
input  [31:0] a_0_q0;
output  [9:0] a_1_address0;
output   a_1_ce0;
output   a_1_we0;
output  [31:0] a_1_d0;
input  [31:0] a_1_q0;
input  [31:0] m;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg a_0_ce0;
reg a_0_we0;
reg a_1_ce0;
reg a_1_we0;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln39_fu_86_p2;
reg   [0:0] icmp_ln39_reg_213;
wire    ap_CS_fsm_state2;
wire   [31:0] add_ln41_fu_92_p2;
reg   [31:0] add_ln41_reg_217;
wire   [31:0] add_ln42_fu_97_p2;
reg   [31:0] add_ln42_reg_223;
wire   [31:0] mid_fu_102_p2;
reg   [31:0] mid_reg_229;
wire    ap_CS_fsm_state3;
wire   [31:0] to_fu_108_p2;
reg   [31:0] to_reg_234;
wire   [0:0] icmp_ln43_fu_123_p2;
reg   [0:0] icmp_ln43_reg_239;
wire   [31:0] from_2_fu_129_p2;
reg   [31:0] from_2_reg_243;
wire    ap_CS_fsm_state4;
wire   [31:0] add_ln41_2_fu_149_p2;
reg   [31:0] add_ln41_2_reg_252;
wire   [31:0] mid_1_fu_154_p2;
reg   [31:0] mid_1_reg_258;
wire    ap_CS_fsm_state5;
wire   [31:0] to_1_fu_160_p2;
reg   [31:0] to_1_reg_263;
wire   [0:0] icmp_ln43_1_fu_175_p2;
reg   [0:0] icmp_ln43_1_reg_268;
wire    grp_merge_fu_56_ap_start;
wire    grp_merge_fu_56_ap_done;
wire    grp_merge_fu_56_ap_idle;
wire    grp_merge_fu_56_ap_ready;
wire   [9:0] grp_merge_fu_56_a_0_address0;
wire    grp_merge_fu_56_a_0_ce0;
wire    grp_merge_fu_56_a_0_we0;
wire   [31:0] grp_merge_fu_56_a_0_d0;
wire   [9:0] grp_merge_fu_56_a_1_address0;
wire    grp_merge_fu_56_a_1_ce0;
wire    grp_merge_fu_56_a_1_we0;
wire   [31:0] grp_merge_fu_56_a_1_d0;
reg   [31:0] grp_merge_fu_56_start_r;
reg   [31:0] grp_merge_fu_56_m;
reg   [31:0] grp_merge_fu_56_stop;
reg    grp_merge_fu_56_ap_start_reg;
wire    ap_CS_fsm_state6;
reg   [31:0] from_fu_40;
wire   [31:0] i_fu_181_p2;
reg    ap_block_state6_on_subcall_done;
wire   [20:0] tmp_1_fu_76_p4;
wire   [20:0] tmp_2_fu_113_p4;
wire   [20:0] tmp_3_fu_133_p4;
wire   [20:0] tmp_4_fu_165_p4;
wire   [0:0] icmp_ln39_1_fu_143_p2;
reg    ap_predicate_op29_call_state4;
reg    ap_predicate_op31_call_state4;
reg    ap_block_state4_on_subcall_done;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_merge_fu_56_ap_start_reg = 1'b0;
#0 from_fu_40 = 32'd0;
end
ms_mergesort_merge grp_merge_fu_56(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_merge_fu_56_ap_start),.ap_done(grp_merge_fu_56_ap_done),.ap_idle(grp_merge_fu_56_ap_idle),.ap_ready(grp_merge_fu_56_ap_ready),.a_0_address0(grp_merge_fu_56_a_0_address0),.a_0_ce0(grp_merge_fu_56_a_0_ce0),.a_0_we0(grp_merge_fu_56_a_0_we0),.a_0_d0(grp_merge_fu_56_a_0_d0),.a_0_q0(a_0_q0),.a_1_address0(grp_merge_fu_56_a_1_address0),.a_1_ce0(grp_merge_fu_56_a_1_ce0),.a_1_we0(grp_merge_fu_56_a_1_we0),.a_1_d0(grp_merge_fu_56_a_1_d0),.a_1_q0(a_1_q0),.start_r(grp_merge_fu_56_start_r),.m(grp_merge_fu_56_m),.stop(grp_merge_fu_56_stop));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_merge_fu_56_ap_start_reg <= 1'b0;
    end else begin
        if ((((icmp_ln43_1_fu_175_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln43_1_fu_175_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5)) | ((icmp_ln43_fu_123_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3)) | ((icmp_ln43_fu_123_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3)))) begin
            grp_merge_fu_56_ap_start_reg <= 1'b1;
        end else if ((grp_merge_fu_56_ap_ready == 1'b1)) begin
            grp_merge_fu_56_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        from_fu_40 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
        from_fu_40 <= i_fu_181_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        add_ln41_2_reg_252 <= add_ln41_2_fu_149_p2;
        from_2_reg_243 <= from_2_fu_129_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln41_reg_217 <= add_ln41_fu_92_p2;
        add_ln42_reg_223 <= add_ln42_fu_97_p2;
        icmp_ln39_reg_213 <= icmp_ln39_fu_86_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        icmp_ln43_1_reg_268 <= icmp_ln43_1_fu_175_p2;
        mid_1_reg_258 <= mid_1_fu_154_p2;
        to_1_reg_263 <= to_1_fu_160_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        icmp_ln43_reg_239 <= icmp_ln43_fu_123_p2;
        mid_reg_229 <= mid_fu_102_p2;
        to_reg_234 <= to_fu_108_p2;
    end
end
always @ (*) begin
    if ((((icmp_ln43_1_reg_268 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_1_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_239 == 1'd1) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln43_reg_239 == 1'd0) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
        a_0_ce0 = grp_merge_fu_56_a_0_ce0;
    end else begin
        a_0_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln43_1_reg_268 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_1_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_239 == 1'd1) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln43_reg_239 == 1'd0) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
        a_0_we0 = grp_merge_fu_56_a_0_we0;
    end else begin
        a_0_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln43_1_reg_268 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_1_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_239 == 1'd1) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln43_reg_239 == 1'd0) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
        a_1_ce0 = grp_merge_fu_56_a_1_ce0;
    end else begin
        a_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln43_1_reg_268 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_1_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_239 == 1'd1) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln43_reg_239 == 1'd0) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
        a_1_we0 = grp_merge_fu_56_a_1_we0;
    end else begin
        a_1_we0 = 1'b0;
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
    if ((1'b1 == ap_block_state4_on_subcall_done)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((1'b1 == ap_block_state6_on_subcall_done)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done) & ((icmp_ln39_reg_213 == 1'd0) | (icmp_ln39_1_fu_143_p2 == 1'd0))) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0)))) begin
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
    if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done) & ((icmp_ln39_reg_213 == 1'd0) | (icmp_ln39_1_fu_143_p2 == 1'd0)))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln43_1_reg_268 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_1_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        grp_merge_fu_56_m = mid_1_reg_258;
    end else if ((((icmp_ln43_reg_239 == 1'd1) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln43_reg_239 == 1'd0) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
        grp_merge_fu_56_m = mid_reg_229;
    end else begin
        grp_merge_fu_56_m = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln43_1_reg_268 == 1'd1) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_1_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_state6)))) begin
        grp_merge_fu_56_start_r = from_2_reg_243;
    end else if ((((icmp_ln43_reg_239 == 1'd1) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)) | ((icmp_ln43_reg_239 == 1'd0) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
        grp_merge_fu_56_start_r = from_fu_40;
    end else begin
        grp_merge_fu_56_start_r = 'bx;
    end
end
always @ (*) begin
    if (((icmp_ln43_1_reg_268 == 1'd1) & (1'b1 == ap_CS_fsm_state6))) begin
        grp_merge_fu_56_stop = to_1_reg_263;
    end else if (((icmp_ln43_reg_239 == 1'd1) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4))) begin
        grp_merge_fu_56_stop = to_reg_234;
    end else if ((((icmp_ln43_1_reg_268 == 1'd0) & (1'b1 == ap_CS_fsm_state6)) | ((icmp_ln43_reg_239 == 1'd0) & (icmp_ln39_reg_213 == 1'd1) & (1'b1 == ap_CS_fsm_state4)))) begin
        grp_merge_fu_56_stop = 32'd2048;
    end else begin
        grp_merge_fu_56_stop = 'bx;
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
            if (((icmp_ln39_fu_86_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done) & ((icmp_ln39_reg_213 == 1'd0) | (icmp_ln39_1_fu_143_p2 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln39_reg_213 == 1'd1) & (icmp_ln39_1_fu_143_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state4) & (1'b0 == ap_block_state4_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (1'b0 == ap_block_state6_on_subcall_done))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign a_0_address0 = grp_merge_fu_56_a_0_address0;
assign a_0_d0 = grp_merge_fu_56_a_0_d0;
assign a_1_address0 = grp_merge_fu_56_a_1_address0;
assign a_1_d0 = grp_merge_fu_56_a_1_d0;
assign add_ln41_2_fu_149_p2 = (from_2_fu_129_p2 + m);
assign add_ln41_fu_92_p2 = (from_fu_40 + m);
assign add_ln42_fu_97_p2 = ($signed(m) + $signed(32'd4294967295));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
always @ (*) begin
    ap_block_state4_on_subcall_done = (((grp_merge_fu_56_ap_done == 1'b0) & (ap_predicate_op31_call_state4 == 1'b1)) | ((grp_merge_fu_56_ap_done == 1'b0) & (ap_predicate_op29_call_state4 == 1'b1)));
end
always @ (*) begin
    ap_block_state6_on_subcall_done = (((grp_merge_fu_56_ap_done == 1'b0) & (icmp_ln43_1_reg_268 == 1'd1)) | ((grp_merge_fu_56_ap_done == 1'b0) & (icmp_ln43_1_reg_268 == 1'd0)));
end
always @ (*) begin
    ap_predicate_op29_call_state4 = ((icmp_ln43_reg_239 == 1'd0) & (icmp_ln39_reg_213 == 1'd1));
end
always @ (*) begin
    ap_predicate_op31_call_state4 = ((icmp_ln43_reg_239 == 1'd1) & (icmp_ln39_reg_213 == 1'd1));
end
assign from_2_fu_129_p2 = (from_fu_40 + empty);
assign grp_merge_fu_56_ap_start = grp_merge_fu_56_ap_start_reg;
assign i_fu_181_p2 = (from_2_reg_243 + empty);
assign icmp_ln39_1_fu_143_p2 = (($signed(tmp_3_fu_133_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_86_p2 = (($signed(tmp_1_fu_76_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_175_p2 = (($signed(tmp_4_fu_165_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_123_p2 = (($signed(tmp_2_fu_113_p4) < $signed(21'd1)) ? 1'b1 : 1'b0);
assign mid_1_fu_154_p2 = ($signed(add_ln41_2_reg_252) + $signed(32'd4294967295));
assign mid_fu_102_p2 = ($signed(add_ln41_reg_217) + $signed(32'd4294967295));
assign tmp_1_fu_76_p4 = {{from_fu_40[31:11]}};
assign tmp_2_fu_113_p4 = {{to_fu_108_p2[31:11]}};
assign tmp_3_fu_133_p4 = {{from_2_fu_129_p2[31:11]}};
assign tmp_4_fu_165_p4 = {{to_1_fu_160_p2[31:11]}};
assign to_1_fu_160_p2 = (add_ln41_2_reg_252 + add_ln42_reg_223);
assign to_fu_108_p2 = (add_ln41_reg_217 + add_ln42_reg_223);
endmodule 
