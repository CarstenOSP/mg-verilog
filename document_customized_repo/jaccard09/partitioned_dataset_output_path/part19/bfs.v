
module bfs (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nodes_address0,nodes_ce0,nodes_q0,edges_address0,edges_ce0,edges_q0,starting_node,level_address0,level_ce0,level_we0,level_d0,level_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0);  
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
output  [7:0] nodes_address0;
output   nodes_ce0;
input  [127:0] nodes_q0;
output  [11:0] edges_address0;
output   edges_ce0;
input  [63:0] edges_q0;
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
wire   [7:0] zext_ln15_fu_203_p1;
reg   [7:0] zext_ln15_reg_293;
wire    ap_CS_fsm_state2;
wire   [3:0] indvars_iv_next11_fu_207_p2;
reg   [3:0] indvars_iv_next11_reg_298;
wire   [63:0] indvars_iv_next11_cast1_fu_213_p1;
reg   [63:0] indvars_iv_next11_cast1_reg_305;
wire   [8:0] n_1_fu_223_p2;
reg   [8:0] n_1_reg_313;
wire    ap_CS_fsm_state3;
wire   [63:0] zext_ln24_fu_229_p1;
reg   [63:0] zext_ln24_reg_318;
wire   [0:0] icmp_ln25_fu_255_p2;
reg   [0:0] icmp_ln25_reg_331;
wire    ap_CS_fsm_state4;
wire   [63:0] e_fu_260_p1;
reg   [63:0] e_reg_340;
wire    ap_CS_fsm_state5;
reg   [63:0] tmp_end_reg_345;
wire    grp_bfs_Pipeline_loop_neighbors_fu_181_ap_start;
wire    grp_bfs_Pipeline_loop_neighbors_fu_181_ap_done;
wire    grp_bfs_Pipeline_loop_neighbors_fu_181_ap_idle;
wire    grp_bfs_Pipeline_loop_neighbors_fu_181_ap_ready;
wire   [11:0] grp_bfs_Pipeline_loop_neighbors_fu_181_edges_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_181_edges_ce0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_181_level_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_181_level_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_181_level_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_181_level_d0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_181_cnt_1_out;
wire    grp_bfs_Pipeline_loop_neighbors_fu_181_cnt_1_out_ap_vld;
reg   [63:0] cnt_reg_145;
reg   [63:0] ap_phi_mux_cnt_2_phi_fu_173_p4;
wire    ap_CS_fsm_state7;
reg   [8:0] n_reg_158;
reg   [63:0] cnt_2_reg_169;
reg    grp_bfs_Pipeline_loop_neighbors_fu_181_ap_start_reg;
wire    ap_CS_fsm_state6;
wire   [0:0] icmp_ln24_fu_217_p2;
reg   [3:0] horizon_fu_72;
reg    level_we0_local;
reg    level_ce0_local;
reg   [7:0] level_address0_local;
reg    level_counts_we0_local;
reg   [63:0] level_counts_d0_local;
reg    level_counts_ce0_local;
reg   [3:0] level_counts_address0_local;
reg    nodes_ce0_local;
wire   [0:0] icmp_ln43_fu_234_p2;
wire   [0:0] icmp_ln21_fu_240_p2;
wire   [0:0] and_ln43_fu_245_p2;
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
#0 grp_bfs_Pipeline_loop_neighbors_fu_181_ap_start_reg = 1'b0;
#0 horizon_fu_72 = 4'd0;
end
bfs_bfs_Pipeline_loop_neighbors grp_bfs_Pipeline_loop_neighbors_fu_181(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bfs_Pipeline_loop_neighbors_fu_181_ap_start),.ap_done(grp_bfs_Pipeline_loop_neighbors_fu_181_ap_done),.ap_idle(grp_bfs_Pipeline_loop_neighbors_fu_181_ap_idle),.ap_ready(grp_bfs_Pipeline_loop_neighbors_fu_181_ap_ready),.empty(e_reg_340),.cnt(cnt_reg_145),.tmp_end(tmp_end_reg_345),.edges_address0(grp_bfs_Pipeline_loop_neighbors_fu_181_edges_address0),.edges_ce0(grp_bfs_Pipeline_loop_neighbors_fu_181_edges_ce0),.edges_q0(edges_q0),.level_address0(grp_bfs_Pipeline_loop_neighbors_fu_181_level_address0),.level_ce0(grp_bfs_Pipeline_loop_neighbors_fu_181_level_ce0),.level_we0(grp_bfs_Pipeline_loop_neighbors_fu_181_level_we0),.level_d0(grp_bfs_Pipeline_loop_neighbors_fu_181_level_d0),.level_q0(level_q0),.indvars_iv_next11_cast2(indvars_iv_next11_reg_298),.cnt_1_out(grp_bfs_Pipeline_loop_neighbors_fu_181_cnt_1_out),.cnt_1_out_ap_vld(grp_bfs_Pipeline_loop_neighbors_fu_181_cnt_1_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bfs_Pipeline_loop_neighbors_fu_181_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_181_ap_start_reg <= 1'b1;
        end else if ((grp_bfs_Pipeline_loop_neighbors_fu_181_ap_ready == 1'b1)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_181_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln25_fu_255_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
        cnt_2_reg_169 <= cnt_reg_145;
    end else if (((icmp_ln25_reg_331 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        cnt_2_reg_169 <= grp_bfs_Pipeline_loop_neighbors_fu_181_cnt_1_out;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        cnt_reg_145 <= ap_phi_mux_cnt_2_phi_fu_173_p4;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        cnt_reg_145 <= 64'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        horizon_fu_72 <= 4'd0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_217_p2 == 1'd1))) begin
        horizon_fu_72 <= indvars_iv_next11_reg_298;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        n_reg_158 <= n_1_reg_313;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        n_reg_158 <= 9'd0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        e_reg_340 <= e_fu_260_p1;
        tmp_end_reg_345 <= {{nodes_q0[127:64]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln25_reg_331 <= icmp_ln25_fu_255_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        indvars_iv_next11_cast1_reg_305[3 : 0] <= indvars_iv_next11_cast1_fu_213_p1[3 : 0];
        indvars_iv_next11_reg_298 <= indvars_iv_next11_fu_207_p2;
        zext_ln15_reg_293[3 : 0] <= zext_ln15_fu_203_p1[3 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        n_1_reg_313 <= n_1_fu_223_p2;
        zext_ln24_reg_318[8 : 0] <= zext_ln24_fu_229_p1[8 : 0];
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
    if ((grp_bfs_Pipeline_loop_neighbors_fu_181_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
assign ap_ST_fsm_state7_blk = 1'b0;
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_217_p2 == 1'd1) & (1'd0 == and_ln43_fu_245_p2))) begin
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
    if (((icmp_ln25_reg_331 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        ap_phi_mux_cnt_2_phi_fu_173_p4 = grp_bfs_Pipeline_loop_neighbors_fu_181_cnt_1_out;
    end else begin
        ap_phi_mux_cnt_2_phi_fu_173_p4 = cnt_2_reg_169;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_217_p2 == 1'd1) & (1'd0 == and_ln43_fu_245_p2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_address0 = grp_bfs_Pipeline_loop_neighbors_fu_181_level_address0;
    end else begin
        level_address0 = level_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        level_address0_local = zext_ln24_fu_229_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_address0_local = starting_node;
    end else begin
        level_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_181_level_ce0;
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
        level_counts_address0_local = indvars_iv_next11_cast1_reg_305;
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
        level_counts_d0_local = cnt_reg_145;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        level_counts_d0_local = 64'd1;
    end else begin
        level_counts_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_217_p2 == 1'd1)) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_d0 = grp_bfs_Pipeline_loop_neighbors_fu_181_level_d0;
    end else begin
        level_d0 = 8'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_we0 = grp_bfs_Pipeline_loop_neighbors_fu_181_level_we0;
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
        nodes_ce0_local = 1'b1;
    end else begin
        nodes_ce0_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_217_p2 == 1'd1) & (1'd0 == and_ln43_fu_245_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((1'b1 == ap_CS_fsm_state3) & (icmp_ln24_fu_217_p2 == 1'd1) & (1'd1 == and_ln43_fu_245_p2))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((icmp_ln25_fu_255_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((grp_bfs_Pipeline_loop_neighbors_fu_181_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state6))) begin
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
assign and_ln43_fu_245_p2 = (icmp_ln43_fu_234_p2 & icmp_ln21_fu_240_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];
assign e_fu_260_p1 = nodes_q0[63:0];
assign edges_address0 = grp_bfs_Pipeline_loop_neighbors_fu_181_edges_address0;
assign edges_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_181_edges_ce0;
assign grp_bfs_Pipeline_loop_neighbors_fu_181_ap_start = grp_bfs_Pipeline_loop_neighbors_fu_181_ap_start_reg;
assign icmp_ln21_fu_240_p2 = ((indvars_iv_next11_reg_298 < 4'd10) ? 1'b1 : 1'b0);
assign icmp_ln24_fu_217_p2 = ((n_reg_158 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln25_fu_255_p2 = ((zext_ln15_reg_293 == level_q0) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_234_p2 = ((cnt_reg_145 != 64'd0) ? 1'b1 : 1'b0);
assign indvars_iv_next11_cast1_fu_213_p1 = indvars_iv_next11_fu_207_p2;
assign indvars_iv_next11_fu_207_p2 = (horizon_fu_72 + 4'd1);
assign level_counts_address0 = level_counts_address0_local;
assign level_counts_ce0 = level_counts_ce0_local;
assign level_counts_d0 = level_counts_d0_local;
assign level_counts_we0 = level_counts_we0_local;
assign n_1_fu_223_p2 = (n_reg_158 + 9'd1);
assign nodes_address0 = zext_ln24_reg_318;
assign nodes_ce0 = nodes_ce0_local;
assign zext_ln15_fu_203_p1 = horizon_fu_72;
assign zext_ln24_fu_229_p1 = n_reg_158;
always @ (posedge ap_clk) begin
    zext_ln15_reg_293[7:4] <= 4'b0000;
    indvars_iv_next11_cast1_reg_305[63:4] <= 60'b000000000000000000000000000000000000000000000000000000000000;
    zext_ln24_reg_318[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 
