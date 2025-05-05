module bfs (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nodes_0_address0,nodes_0_ce0,nodes_0_q0,nodes_1_address0,nodes_1_ce0,nodes_1_q0,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,starting_node,level_address0,level_ce0,level_we0,level_d0,level_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0); 
parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] nodes_0_address0;
output   nodes_0_ce0;
input  [127:0] nodes_0_q0;
output  [6:0] nodes_1_address0;
output   nodes_1_ce0;
input  [127:0] nodes_1_q0;
output  [10:0] edges_0_address0;
output   edges_0_ce0;
input  [63:0] edges_0_q0;
output  [10:0] edges_1_address0;
output   edges_1_ce0;
input  [63:0] edges_1_q0;
input  [63:0] starting_node;
output  [7:0] level_address0;
output   level_ce0;
output   level_we0;
output  [7:0] level_d0;
input  [7:0] level_q0;
output  [3:0] level_counts_address0;
output   level_counts_ce0;
output   level_counts_we0;
output  [63:0] level_counts_d0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] level_address0;
reg level_ce0;
reg level_we0;
reg[7:0] level_d0;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [7:0] zext_ln15_fu_226_p1;
reg   [7:0] zext_ln15_reg_342;
wire    ap_CS_fsm_state2;
wire   [3:0] indvars_iv_next11_fu_230_p2;
reg   [3:0] indvars_iv_next11_reg_347;
wire   [63:0] indvars_iv_next11_cast3_fu_236_p1;
reg   [63:0] indvars_iv_next11_cast3_reg_354;
wire   [8:0] n_1_fu_246_p2;
reg   [8:0] n_1_reg_362;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln24_fu_257_p1;
reg   [0:0] trunc_ln24_reg_367;
reg   [6:0] lshr_ln_reg_372;
wire   [0:0] icmp_ln25_fu_297_p2;
reg   [0:0] icmp_ln25_reg_385;
wire    ap_CS_fsm_state4;
wire   [63:0] e_fu_309_p1;
reg   [63:0] e_reg_399;
wire    ap_CS_fsm_state5;
reg   [63:0] tmp_end_reg_404;
wire    grp_bfs_Pipeline_loop_neighbors_fu_202_ap_start;
wire    grp_bfs_Pipeline_loop_neighbors_fu_202_ap_done;
wire    grp_bfs_Pipeline_loop_neighbors_fu_202_ap_idle;
wire    grp_bfs_Pipeline_loop_neighbors_fu_202_ap_ready;
wire   [10:0] grp_bfs_Pipeline_loop_neighbors_fu_202_edges_0_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_202_edges_0_ce0;
wire   [10:0] grp_bfs_Pipeline_loop_neighbors_fu_202_edges_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_202_edges_1_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_202_level_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_202_level_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_202_level_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_202_level_d0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_202_cnt_62_out;
wire    grp_bfs_Pipeline_loop_neighbors_fu_202_cnt_62_out_ap_vld;
reg   [63:0] cnt_reg_166;
reg   [63:0] ap_phi_mux_cnt_4_phi_fu_194_p4;
wire    ap_CS_fsm_state7;
reg   [8:0] n_reg_179;
reg   [63:0] cnt_4_reg_190;
reg    grp_bfs_Pipeline_loop_neighbors_fu_202_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [63:0] zext_ln24_fu_252_p1;
wire   [0:0] icmp_ln24_fu_240_p2;
wire   [63:0] zext_ln12_fu_292_p1;
reg   [3:0] horizon_fu_80;
reg    level_we0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_counts_we0_local;
reg   [63:0] level_counts_d0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    nodes_0_ce0_local;
reg    nodes_1_ce0_local;
wire   [0:0] icmp_ln43_fu_271_p2;
wire   [0:0] icmp_ln21_fu_277_p2;
wire   [127:0] select_ln26_fu_302_p3;
wire   [0:0] and_ln43_fu_282_p2;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 grp_bfs_Pipeline_loop_neighbors_fu_202_ap_start_reg = 1'b0;
#0 horizon_fu_80 = 4'd0;
end
bfs_bfs_Pipeline_loop_neighbors grp_bfs_Pipeline_loop_neighbors_fu_202(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bfs_Pipeline_loop_neighbors_fu_202_ap_start),.ap_done(grp_bfs_Pipeline_loop_neighbors_fu_202_ap_done),.ap_idle(grp_bfs_Pipeline_loop_neighbors_fu_202_ap_idle),.ap_ready(grp_bfs_Pipeline_loop_neighbors_fu_202_ap_ready),.empty(e_reg_399),.cnt(cnt_reg_166),.tmp_end(tmp_end_reg_404),.edges_0_address0(grp_bfs_Pipeline_loop_neighbors_fu_202_edges_0_address0),.edges_0_ce0(grp_bfs_Pipeline_loop_neighbors_fu_202_edges_0_ce0),.edges_0_q0(edges_0_q0),.edges_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_202_edges_1_address0),.edges_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_202_edges_1_ce0),.edges_1_q0(edges_1_q0),.level_address0(grp_bfs_Pipeline_loop_neighbors_fu_202_level_address0),.level_ce0(grp_bfs_Pipeline_loop_neighbors_fu_202_level_ce0),.level_we0(grp_bfs_Pipeline_loop_neighbors_fu_202_level_we0),.level_d0(grp_bfs_Pipeline_loop_neighbors_fu_202_level_d0),.level_q0(level_q0),.indvars_iv_next11_cast4(indvars_iv_next11_reg_347),.cnt_62_out(grp_bfs_Pipeline_loop_neighbors_fu_202_cnt_62_out),.cnt_62_out_ap_vld(grp_bfs_Pipeline_loop_neighbors_fu_202_cnt_62_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bfs_Pipeline_loop_neighbors_fu_202_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_202_ap_start_reg <= 1'b1;
        end else if ((grp_bfs_Pipeline_loop_neighbors_fu_202_ap_ready == 1'b1)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_202_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln25_fu_297_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        cnt_4_reg_190 <= cnt_reg_166;
    end else if (((icmp_ln25_reg_385 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        cnt_4_reg_190 <= grp_bfs_Pipeline_loop_neighbors_fu_202_cnt_62_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        cnt_reg_166 <= ap_phi_mux_cnt_4_phi_fu_194_p4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        cnt_reg_166 <= 64'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        horizon_fu_80 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_240_p2 == 1'd1))) begin
        horizon_fu_80 <= indvars_iv_next11_reg_347;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        n_reg_179 <= n_1_reg_362;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        n_reg_179 <= 9'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        e_reg_399 <= e_fu_309_p1;
        tmp_end_reg_404 <= {{select_ln26_fu_302_p3[127:64]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln25_reg_385 <= icmp_ln25_fu_297_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvars_iv_next11_cast3_reg_354[3 : 0] <= indvars_iv_next11_cast3_fu_236_p1[3 : 0];
        indvars_iv_next11_reg_347 <= indvars_iv_next11_fu_230_p2;
        zext_ln15_reg_342[3 : 0] <= zext_ln15_fu_226_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        lshr_ln_reg_372 <= {{n_reg_179[7:1]}};
        n_1_reg_362 <= n_1_fu_246_p2;
        trunc_ln24_reg_367 <= trunc_ln24_fu_257_p1;
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
assign ap_ST_fsm_state4_blk = 1'b0;
assign ap_ST_fsm_state5_blk = 1'b0;
always @ (*) begin
    if ((grp_bfs_Pipeline_loop_neighbors_fu_202_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_240_p2 == 1'd1) & (1'd0 == and_ln43_fu_282_p2))) begin
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
    if (((icmp_ln25_reg_385 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_phi_mux_cnt_4_phi_fu_194_p4 = grp_bfs_Pipeline_loop_neighbors_fu_202_cnt_62_out;
    end else begin
        ap_phi_mux_cnt_4_phi_fu_194_p4 = cnt_4_reg_190;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_240_p2 == 1'd1) & (1'd0 == and_ln43_fu_282_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_address0 = grp_bfs_Pipeline_loop_neighbors_fu_202_level_address0;
    end else begin
        level_address0 = level_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        level_address0_local = zext_ln24_fu_252_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_address0_local = starting_node;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_202_level_ce0;
    end else begin
        level_ce0 = level_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        level_counts_address0_local = indvars_iv_next11_cast3_reg_354;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_counts_address0_local = 64'd0;
    end else begin
        level_counts_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        level_counts_d0_local = cnt_reg_166;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_counts_d0_local = 64'd1;
    end else begin
        level_counts_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_240_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_d0 = grp_bfs_Pipeline_loop_neighbors_fu_202_level_d0;
    end else begin
        level_d0 = 8'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_we0 = grp_bfs_Pipeline_loop_neighbors_fu_202_level_we0;
    end else begin
        level_we0 = level_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        level_we0_local = 1'b1;
    end else begin
        level_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_0_ce0_local = 1'b1;
    end else begin
        nodes_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        nodes_1_ce0_local = 1'b1;
    end else begin
        nodes_1_ce0_local = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_240_p2 == 1'd1) & (1'd0 == and_ln43_fu_282_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_240_p2 == 1'd1) & (1'd1 == and_ln43_fu_282_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln25_fu_297_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_bfs_Pipeline_loop_neighbors_fu_202_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign and_ln43_fu_282_p2 = (icmp_ln43_fu_271_p2 & icmp_ln21_fu_277_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign e_fu_309_p1 = select_ln26_fu_302_p3[63:0];
assign edges_0_address0 = grp_bfs_Pipeline_loop_neighbors_fu_202_edges_0_address0;
assign edges_0_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_202_edges_0_ce0;
assign edges_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_202_edges_1_address0;
assign edges_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_202_edges_1_ce0;
assign grp_bfs_Pipeline_loop_neighbors_fu_202_ap_start = grp_bfs_Pipeline_loop_neighbors_fu_202_ap_start_reg;
assign icmp_ln21_fu_277_p2 = ((indvars_iv_next11_reg_347 < 4'd10) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_240_p2 = ((n_reg_179 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln25_fu_297_p2 = ((zext_ln15_reg_342 == level_q0) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_271_p2 = ((cnt_reg_166 != 64'd0) ? 1'b1 : 1'b0);
assign indvars_iv_next11_cast3_fu_236_p1 = indvars_iv_next11_fu_230_p2;
assign indvars_iv_next11_fu_230_p2 = (horizon_fu_80 + 4'd1);
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = level_counts_d0_local;
assign level_counts_we0 = level_counts_we0_local;
assign n_1_fu_246_p2 = (n_reg_179 + 9'd1);
assign nodes_0_address0 = zext_ln12_fu_292_p1;
assign nodes_0_ce0 = nodes_0_ce0_local;
assign nodes_1_address0 = zext_ln12_fu_292_p1;
assign nodes_1_ce0 = nodes_1_ce0_local;
assign select_ln26_fu_302_p3 = ((trunc_ln24_reg_367[0:0] == 1'b1) ? nodes_1_q0 : nodes_0_q0);
assign trunc_ln24_fu_257_p1 = n_reg_179[0:0];
assign zext_ln12_fu_292_p1 = lshr_ln_reg_372;
assign zext_ln15_fu_226_p1 = horizon_fu_80;
assign zext_ln24_fu_252_p1 = n_reg_179;
always @ (posedge ap_clk) begin
    zext_ln15_reg_342[7:4] <= 4'b0000;
    indvars_iv_next11_cast3_reg_354[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
end
endmodule 