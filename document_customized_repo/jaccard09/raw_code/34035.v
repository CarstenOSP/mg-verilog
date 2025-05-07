module bfs (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nodes_address0,nodes_ce0,nodes_q0,edges_address0,edges_ce0,edges_q0,edges_address1,edges_ce1,edges_q1,starting_node,level_address0,level_ce0,level_we0,level_d0,level_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0); 
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
output  [7:0] nodes_address0;
output   nodes_ce0;
input  [127:0] nodes_q0;
output  [11:0] edges_address0;
output   edges_ce0;
input  [63:0] edges_q0;
output  [11:0] edges_address1;
output   edges_ce1;
input  [63:0] edges_q1;
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
input  [63:0] level_counts_q0;
reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] level_address0;
reg level_ce0;
reg level_we0;
reg[7:0] level_d0;
reg[3:0] level_counts_address0;
reg level_counts_ce0;
reg level_counts_we0;
reg[63:0] level_counts_d0;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
reg   [63:0] q_in_load_reg_343;
wire    ap_CS_fsm_state3;
reg   [7:0] n_reg_348;
wire   [63:0] e_fu_288_p1;
reg   [63:0] e_reg_358;
wire    ap_CS_fsm_state4;
reg   [63:0] tmp_end_reg_363;
reg   [7:0] queue_address0;
reg    queue_ce0;
reg    queue_we0;
reg   [7:0] queue_d0;
wire   [7:0] queue_q0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_ap_start;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_ap_done;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_ap_idle;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_ap_ready;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_156_level_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_level_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_level_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_156_level_d0;
wire   [11:0] grp_bfs_Pipeline_loop_neighbors_fu_156_edges_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_edges_ce0;
wire   [11:0] grp_bfs_Pipeline_loop_neighbors_fu_156_edges_address1;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_edges_ce1;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_156_level_counts_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_level_counts_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_level_counts_we0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_156_level_counts_d0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_156_queue_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_queue_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_queue_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_156_queue_d0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_156_q_in_61_out;
wire    grp_bfs_Pipeline_loop_neighbors_fu_156_q_in_61_out_ap_vld;
reg    grp_bfs_Pipeline_loop_neighbors_fu_156_ap_start_reg;
wire    ap_CS_fsm_state5;
reg   [63:0] q_in_fu_70;
wire   [63:0] zext_ln32_fu_215_p1;
wire   [0:0] tmp_fu_198_p3;
wire   [0:0] icmp_ln33_fu_224_p2;
wire   [0:0] icmp_ln33_1_fu_258_p2;
wire   [0:0] and_ln33_fu_242_p2;
wire   [63:0] zext_ln18_fu_283_p1;
reg   [7:0] q_out_fu_74;
wire   [7:0] q_out_1_fu_267_p2;
reg   [8:0] dummy_fu_78;
wire   [8:0] dummy_2_fu_206_p2;
reg    level_we0_local;
reg    level_ce0_local;
reg    level_counts_we0_local;
reg    level_counts_ce0_local;
reg    queue_we0_local;
wire   [7:0] trunc_ln14_fu_175_p1;
reg    queue_ce0_local;
reg   [7:0] queue_address0_local;
reg    nodes_ce0_local;
wire   [0:0] icmp_ln33_2_fu_230_p2;
wire   [0:0] icmp_ln33_3_fu_236_p2;
wire   [8:0] zext_ln32_1_fu_220_p1;
wire   [8:0] add_ln33_fu_248_p2;
wire   [63:0] zext_ln33_fu_254_p1;
reg   [4:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 grp_bfs_Pipeline_loop_neighbors_fu_156_ap_start_reg = 1'b0;
#0 q_in_fu_70 = 64'd0;
#0 q_out_fu_74 = 8'd0;
#0 dummy_fu_78 = 9'd0;
end
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 256 ),.AddressWidth( 8 ))
queue_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_address0),.ce0(queue_ce0),.we0(queue_we0),.d0(queue_d0),.q0(queue_q0));
bfs_bfs_Pipeline_loop_neighbors grp_bfs_Pipeline_loop_neighbors_fu_156(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bfs_Pipeline_loop_neighbors_fu_156_ap_start),.ap_done(grp_bfs_Pipeline_loop_neighbors_fu_156_ap_done),.ap_idle(grp_bfs_Pipeline_loop_neighbors_fu_156_ap_idle),.ap_ready(grp_bfs_Pipeline_loop_neighbors_fu_156_ap_ready),.empty(e_reg_358),.q_in(q_in_load_reg_343),.level_address0(grp_bfs_Pipeline_loop_neighbors_fu_156_level_address0),.level_ce0(grp_bfs_Pipeline_loop_neighbors_fu_156_level_ce0),.level_we0(grp_bfs_Pipeline_loop_neighbors_fu_156_level_we0),.level_d0(grp_bfs_Pipeline_loop_neighbors_fu_156_level_d0),.level_q0(level_q0),.zext_ln18(n_reg_348),.tmp_end(tmp_end_reg_363),.edges_address0(grp_bfs_Pipeline_loop_neighbors_fu_156_edges_address0),.edges_ce0(grp_bfs_Pipeline_loop_neighbors_fu_156_edges_ce0),.edges_q0(edges_q0),.edges_address1(grp_bfs_Pipeline_loop_neighbors_fu_156_edges_address1),.edges_ce1(grp_bfs_Pipeline_loop_neighbors_fu_156_edges_ce1),.edges_q1(edges_q1),.level_counts_address0(grp_bfs_Pipeline_loop_neighbors_fu_156_level_counts_address0),.level_counts_ce0(grp_bfs_Pipeline_loop_neighbors_fu_156_level_counts_ce0),.level_counts_we0(grp_bfs_Pipeline_loop_neighbors_fu_156_level_counts_we0),.level_counts_d0(grp_bfs_Pipeline_loop_neighbors_fu_156_level_counts_d0),.level_counts_q0(level_counts_q0),.queue_address0(grp_bfs_Pipeline_loop_neighbors_fu_156_queue_address0),.queue_ce0(grp_bfs_Pipeline_loop_neighbors_fu_156_queue_ce0),.queue_we0(grp_bfs_Pipeline_loop_neighbors_fu_156_queue_we0),.queue_d0(grp_bfs_Pipeline_loop_neighbors_fu_156_queue_d0),.q_in_61_out(grp_bfs_Pipeline_loop_neighbors_fu_156_q_in_61_out),.q_in_61_out_ap_vld(grp_bfs_Pipeline_loop_neighbors_fu_156_q_in_61_out_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bfs_Pipeline_loop_neighbors_fu_156_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_156_ap_start_reg <= 1'b1;
        end else if ((grp_bfs_Pipeline_loop_neighbors_fu_156_ap_ready == 1'b1)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_156_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        dummy_fu_78 <= 9'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln33_fu_224_p2 == 1'd0) & (1'd0 == and_ln33_fu_242_p2) & (tmp_fu_198_p3 == 1'd0)) | ((icmp_ln33_1_fu_258_p2 == 1'd0) & (icmp_ln33_fu_224_p2 == 1'd1) & (tmp_fu_198_p3 == 1'd0))))) begin
        dummy_fu_78 <= dummy_2_fu_206_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        q_in_fu_70 <= 64'd2;
    end else if (((1'b1 == ap_CS_fsm_state5) & (grp_bfs_Pipeline_loop_neighbors_fu_156_q_in_61_out_ap_vld == 1'b1))) begin
        q_in_fu_70 <= grp_bfs_Pipeline_loop_neighbors_fu_156_q_in_61_out;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        q_out_fu_74 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln33_fu_224_p2 == 1'd0) & (1'd0 == and_ln33_fu_242_p2) & (tmp_fu_198_p3 == 1'd0)) | ((icmp_ln33_1_fu_258_p2 == 1'd0) & (icmp_ln33_fu_224_p2 == 1'd1) & (tmp_fu_198_p3 == 1'd0))))) begin
        q_out_fu_74 <= q_out_1_fu_267_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        e_reg_358 <= e_fu_288_p1;
        tmp_end_reg_363 <= {{nodes_q0[127:64]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        n_reg_348 <= queue_q0;
        q_in_load_reg_343 <= q_in_fu_70;
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
always @ (*) begin
    if ((grp_bfs_Pipeline_loop_neighbors_fu_156_ap_done == 1'b0)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((tmp_fu_198_p3 == 1'd1) | (((1'd1 == and_ln33_fu_242_p2) & (icmp_ln33_fu_224_p2 == 1'd0)) | ((icmp_ln33_1_fu_258_p2 == 1'd1) & (icmp_ln33_fu_224_p2 == 1'd1)))))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & ((tmp_fu_198_p3 == 1'd1) | (((1'd1 == and_ln33_fu_242_p2) & (icmp_ln33_fu_224_p2 == 1'd0)) | ((icmp_ln33_1_fu_258_p2 == 1'd1) & (icmp_ln33_fu_224_p2 == 1'd1)))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_address0 = grp_bfs_Pipeline_loop_neighbors_fu_156_level_address0;
    end else begin
        level_address0 = starting_node;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_156_level_ce0;
    end else begin
        level_ce0 = level_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        level_ce0_local = 1'b1;
    end else begin
        level_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_counts_address0 = grp_bfs_Pipeline_loop_neighbors_fu_156_level_counts_address0;
    end else begin
        level_counts_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_counts_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_156_level_counts_ce0;
    end else begin
        level_counts_ce0 = level_counts_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        level_counts_ce0_local = 1'b1;
    end else begin
        level_counts_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_counts_d0 = grp_bfs_Pipeline_loop_neighbors_fu_156_level_counts_d0;
    end else begin
        level_counts_d0 = 64'd1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_counts_we0 = grp_bfs_Pipeline_loop_neighbors_fu_156_level_counts_we0;
    end else begin
        level_counts_we0 = level_counts_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        level_counts_we0_local = 1'b1;
    end else begin
        level_counts_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_d0 = grp_bfs_Pipeline_loop_neighbors_fu_156_level_d0;
    end else begin
        level_d0 = 8'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        level_we0 = grp_bfs_Pipeline_loop_neighbors_fu_156_level_we0;
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
    if ((1'b1 == ap_CS_fsm_state3)) begin
        nodes_ce0_local = 1'b1;
    end else begin
        nodes_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_address0 = grp_bfs_Pipeline_loop_neighbors_fu_156_queue_address0;
    end else begin
        queue_address0 = queue_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_address0_local = zext_ln32_fu_215_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        queue_address0_local = 64'd0;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_156_queue_ce0;
    end else begin
        queue_ce0 = queue_ce0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        queue_ce0_local = 1'b1;
    end else begin
        queue_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_d0 = grp_bfs_Pipeline_loop_neighbors_fu_156_queue_d0;
    end else begin
        queue_d0 = trunc_ln14_fu_175_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        queue_we0 = grp_bfs_Pipeline_loop_neighbors_fu_156_queue_we0;
    end else begin
        queue_we0 = queue_we0_local;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        queue_we0_local = 1'b1;
    end else begin
        queue_we0_local = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & ((tmp_fu_198_p3 == 1'd1) | (((1'd1 == and_ln33_fu_242_p2) & (icmp_ln33_fu_224_p2 == 1'd0)) | ((icmp_ln33_1_fu_258_p2 == 1'd1) & (icmp_ln33_fu_224_p2 == 1'd1)))))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((grp_bfs_Pipeline_loop_neighbors_fu_156_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln33_fu_248_p2 = (zext_ln32_1_fu_220_p1 + 9'd1);
assign and_ln33_fu_242_p2 = (icmp_ln33_3_fu_236_p2 & icmp_ln33_2_fu_230_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign dummy_2_fu_206_p2 = (dummy_fu_78 + 9'd1);
assign e_fu_288_p1 = nodes_q0[63:0];
assign edges_address0 = grp_bfs_Pipeline_loop_neighbors_fu_156_edges_address0;
assign edges_address1 = grp_bfs_Pipeline_loop_neighbors_fu_156_edges_address1;
assign edges_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_156_edges_ce0;
assign edges_ce1 = grp_bfs_Pipeline_loop_neighbors_fu_156_edges_ce1;
assign grp_bfs_Pipeline_loop_neighbors_fu_156_ap_start = grp_bfs_Pipeline_loop_neighbors_fu_156_ap_start_reg;
assign icmp_ln33_1_fu_258_p2 = ((q_in_fu_70 == zext_ln33_fu_254_p1) ? 1'b1 : 1'b0);
assign icmp_ln33_2_fu_230_p2 = ((q_in_fu_70 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln33_3_fu_236_p2 = ((q_out_fu_74 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_224_p2 = ((q_in_fu_70 > zext_ln32_fu_215_p1) ? 1'b1 : 1'b0);
assign nodes_address0 = zext_ln18_fu_283_p1;
assign nodes_ce0 = nodes_ce0_local;
assign q_out_1_fu_267_p2 = (q_out_fu_74 + 8'd1);
assign tmp_fu_198_p3 = dummy_fu_78[32'd8];
assign trunc_ln14_fu_175_p1 = starting_node[7:0];
assign zext_ln18_fu_283_p1 = queue_q0;
assign zext_ln32_1_fu_220_p1 = q_out_fu_74;
assign zext_ln32_fu_215_p1 = q_out_fu_74;
assign zext_ln33_fu_254_p1 = add_ln33_fu_248_p2;
endmodule 