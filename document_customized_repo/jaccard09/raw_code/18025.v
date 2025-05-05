module bfs (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,nodes_0_address0,nodes_0_ce0,nodes_0_q0,nodes_1_address0,nodes_1_ce0,nodes_1_q0,edges_0_address0,edges_0_ce0,edges_0_q0,edges_1_address0,edges_1_ce0,edges_1_q0,starting_node,level_address0,level_ce0,level_we0,level_d0,level_q0,level_counts_address0,level_counts_ce0,level_counts_we0,level_counts_d0,level_counts_q0); 
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
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] trunc_ln32_fu_258_p1;
reg   [0:0] trunc_ln32_reg_411;
wire    ap_CS_fsm_state2;
wire   [7:0] n_fu_337_p3;
reg   [7:0] n_reg_435;
wire    ap_CS_fsm_state3;
wire   [0:0] trunc_ln18_fu_344_p1;
reg   [0:0] trunc_ln18_reg_440;
reg   [6:0] lshr_ln1_reg_445;
wire    ap_CS_fsm_state4;
wire   [63:0] e_fu_370_p1;
reg   [63:0] e_reg_460;
wire    ap_CS_fsm_state5;
reg   [63:0] tmp_end_reg_465;
reg   [6:0] queue_address0;
reg    queue_ce0;
reg    queue_we0;
reg   [7:0] queue_d0;
wire   [7:0] queue_q0;
reg   [6:0] queue_1_address0;
reg    queue_1_ce0;
reg    queue_1_we0;
wire   [7:0] queue_1_q0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_ap_start;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_ap_done;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_ap_idle;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_ap_ready;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_191_level_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_level_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_level_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_191_level_d0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_191_queue_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_queue_1_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_queue_1_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_191_queue_1_d0;
wire   [6:0] grp_bfs_Pipeline_loop_neighbors_fu_191_queue_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_queue_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_queue_we0;
wire   [7:0] grp_bfs_Pipeline_loop_neighbors_fu_191_queue_d0;
wire   [10:0] grp_bfs_Pipeline_loop_neighbors_fu_191_edges_0_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_edges_0_ce0;
wire   [10:0] grp_bfs_Pipeline_loop_neighbors_fu_191_edges_1_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_edges_1_ce0;
wire   [3:0] grp_bfs_Pipeline_loop_neighbors_fu_191_level_counts_address0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_level_counts_ce0;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_level_counts_we0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_191_level_counts_d0;
wire   [63:0] grp_bfs_Pipeline_loop_neighbors_fu_191_q_in_2_out_o;
wire    grp_bfs_Pipeline_loop_neighbors_fu_191_q_in_2_out_o_ap_vld;
reg    grp_bfs_Pipeline_loop_neighbors_fu_191_ap_start_reg;
wire    ap_CS_fsm_state6;
reg   [63:0] q_in_fu_76;
wire   [63:0] zext_ln16_fu_272_p1;
wire   [0:0] icmp_ln32_fu_232_p2;
wire   [0:0] icmp_ln33_fu_278_p2;
wire   [0:0] icmp_ln33_1_fu_312_p2;
wire   [0:0] and_ln33_fu_296_p2;
wire   [63:0] zext_ln18_fu_358_p1;
reg   [7:0] q_out_fu_80;
wire   [7:0] q_out_1_fu_321_p2;
reg   [8:0] dummy_fu_84;
wire   [8:0] dummy_2_fu_238_p2;
reg    level_we0_local;
reg    level_ce0_local;
reg    level_counts_we0_local;
reg    level_counts_ce0_local;
reg    queue_we0_local;
wire   [7:0] trunc_ln14_fu_209_p1;
reg    queue_ce0_local;
reg   [6:0] queue_address0_local;
reg    queue_1_ce0_local;
reg    nodes_0_ce0_local;
reg    nodes_1_ce0_local;
wire   [6:0] lshr_ln_fu_262_p4;
wire   [63:0] zext_ln32_fu_250_p1;
wire   [0:0] icmp_ln33_2_fu_284_p2;
wire   [0:0] icmp_ln33_3_fu_290_p2;
wire   [8:0] zext_ln32_1_fu_254_p1;
wire   [8:0] add_ln33_fu_302_p2;
wire   [63:0] zext_ln33_fu_308_p1;
wire   [127:0] select_ln37_fu_363_p3;
reg   [5:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
reg    ap_ST_fsm_state6_blk;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 grp_bfs_Pipeline_loop_neighbors_fu_191_ap_start_reg = 1'b0;
#0 q_in_fu_76 = 64'd0;
#0 q_out_fu_80 = 8'd0;
#0 dummy_fu_84 = 9'd0;
end
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 128 ),.AddressWidth( 7 ))
queue_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_address0),.ce0(queue_ce0),.we0(queue_we0),.d0(queue_d0),.q0(queue_q0));
bfs_queue_RAM_AUTO_1R1W #(.DataWidth( 8 ),.AddressRange( 128 ),.AddressWidth( 7 ))
queue_1_U(.clk(ap_clk),.reset(ap_rst),.address0(queue_1_address0),.ce0(queue_1_ce0),.we0(queue_1_we0),.d0(grp_bfs_Pipeline_loop_neighbors_fu_191_queue_1_d0),.q0(queue_1_q0));
bfs_bfs_Pipeline_loop_neighbors grp_bfs_Pipeline_loop_neighbors_fu_191(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_bfs_Pipeline_loop_neighbors_fu_191_ap_start),.ap_done(grp_bfs_Pipeline_loop_neighbors_fu_191_ap_done),.ap_idle(grp_bfs_Pipeline_loop_neighbors_fu_191_ap_idle),.ap_ready(grp_bfs_Pipeline_loop_neighbors_fu_191_ap_ready),.empty(e_reg_460),.level_address0(grp_bfs_Pipeline_loop_neighbors_fu_191_level_address0),.level_ce0(grp_bfs_Pipeline_loop_neighbors_fu_191_level_ce0),.level_we0(grp_bfs_Pipeline_loop_neighbors_fu_191_level_we0),.level_d0(grp_bfs_Pipeline_loop_neighbors_fu_191_level_d0),.level_q0(level_q0),.zext_ln18(n_reg_435),.queue_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_191_queue_1_address0),.queue_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_191_queue_1_ce0),.queue_1_we0(grp_bfs_Pipeline_loop_neighbors_fu_191_queue_1_we0),.queue_1_d0(grp_bfs_Pipeline_loop_neighbors_fu_191_queue_1_d0),.queue_address0(grp_bfs_Pipeline_loop_neighbors_fu_191_queue_address0),.queue_ce0(grp_bfs_Pipeline_loop_neighbors_fu_191_queue_ce0),.queue_we0(grp_bfs_Pipeline_loop_neighbors_fu_191_queue_we0),.queue_d0(grp_bfs_Pipeline_loop_neighbors_fu_191_queue_d0),.tmp_end(tmp_end_reg_465),.edges_0_address0(grp_bfs_Pipeline_loop_neighbors_fu_191_edges_0_address0),.edges_0_ce0(grp_bfs_Pipeline_loop_neighbors_fu_191_edges_0_ce0),.edges_0_q0(edges_0_q0),.edges_1_address0(grp_bfs_Pipeline_loop_neighbors_fu_191_edges_1_address0),.edges_1_ce0(grp_bfs_Pipeline_loop_neighbors_fu_191_edges_1_ce0),.edges_1_q0(edges_1_q0),.level_counts_address0(grp_bfs_Pipeline_loop_neighbors_fu_191_level_counts_address0),.level_counts_ce0(grp_bfs_Pipeline_loop_neighbors_fu_191_level_counts_ce0),.level_counts_we0(grp_bfs_Pipeline_loop_neighbors_fu_191_level_counts_we0),.level_counts_d0(grp_bfs_Pipeline_loop_neighbors_fu_191_level_counts_d0),.level_counts_q0(level_counts_q0),.q_in_2_out_i(q_in_fu_76),.q_in_2_out_o(grp_bfs_Pipeline_loop_neighbors_fu_191_q_in_2_out_o),.q_in_2_out_o_ap_vld(grp_bfs_Pipeline_loop_neighbors_fu_191_q_in_2_out_o_ap_vld));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_bfs_Pipeline_loop_neighbors_fu_191_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state5)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_191_ap_start_reg <= 1'b1;
        end else if ((grp_bfs_Pipeline_loop_neighbors_fu_191_ap_ready == 1'b1)) begin
            grp_bfs_Pipeline_loop_neighbors_fu_191_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        dummy_fu_84 <= 9'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln33_fu_278_p2 == 1'd0) & (1'd0 == and_ln33_fu_296_p2) & (icmp_ln32_fu_232_p2 == 1'd0)) | ((icmp_ln33_1_fu_312_p2 == 1'd0) & (icmp_ln33_fu_278_p2 == 1'd1) & (icmp_ln32_fu_232_p2 == 1'd0))))) begin
        dummy_fu_84 <= dummy_2_fu_238_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        q_in_fu_76 <= 64'd2;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_bfs_Pipeline_loop_neighbors_fu_191_q_in_2_out_o_ap_vld == 1'b1))) begin
        q_in_fu_76 <= grp_bfs_Pipeline_loop_neighbors_fu_191_q_in_2_out_o;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        q_out_fu_80 <= 8'd0;
    end else if (((1'b1 == ap_CS_fsm_state2) & (((icmp_ln33_fu_278_p2 == 1'd0) & (1'd0 == and_ln33_fu_296_p2) & (icmp_ln32_fu_232_p2 == 1'd0)) | ((icmp_ln33_1_fu_312_p2 == 1'd0) & (icmp_ln33_fu_278_p2 == 1'd1) & (icmp_ln32_fu_232_p2 == 1'd0))))) begin
        q_out_fu_80 <= q_out_1_fu_321_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        e_reg_460 <= e_fu_370_p1;
        tmp_end_reg_465 <= {{select_ln37_fu_363_p3[127:64]}};
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        lshr_ln1_reg_445 <= {{n_fu_337_p3[7:1]}};
        n_reg_435 <= n_fu_337_p3;
        trunc_ln18_reg_440 <= trunc_ln18_fu_344_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        trunc_ln32_reg_411 <= trunc_ln32_fu_258_p1;
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
    if ((grp_bfs_Pipeline_loop_neighbors_fu_191_ap_done == 1'b0)) begin
        ap_ST_fsm_state6_blk = 1'b1;
    end else begin
        ap_ST_fsm_state6_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln32_fu_232_p2 == 1'd1) | (((1'd1 == and_ln33_fu_296_p2) & (icmp_ln33_fu_278_p2 == 1'd0)) | ((icmp_ln33_1_fu_312_p2 == 1'd1) & (icmp_ln33_fu_278_p2 == 1'd1)))))) begin
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
    if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln32_fu_232_p2 == 1'd1) | (((1'd1 == and_ln33_fu_296_p2) & (icmp_ln33_fu_278_p2 == 1'd0)) | ((icmp_ln33_1_fu_312_p2 == 1'd1) & (icmp_ln33_fu_278_p2 == 1'd1)))))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_address0 = grp_bfs_Pipeline_loop_neighbors_fu_191_level_address0;
    end else begin
        level_address0 = starting_node;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_191_level_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_counts_address0 = grp_bfs_Pipeline_loop_neighbors_fu_191_level_counts_address0;
    end else begin
        level_counts_address0 = 64'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_counts_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_191_level_counts_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_counts_d0 = grp_bfs_Pipeline_loop_neighbors_fu_191_level_counts_d0;
    end else begin
        level_counts_d0 = 64'd1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_counts_we0 = grp_bfs_Pipeline_loop_neighbors_fu_191_level_counts_we0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_d0 = grp_bfs_Pipeline_loop_neighbors_fu_191_level_d0;
    end else begin
        level_d0 = 8'd0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        level_we0 = grp_bfs_Pipeline_loop_neighbors_fu_191_level_we0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_191_queue_1_address0;
    end else begin
        queue_1_address0 = zext_ln16_fu_272_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_191_queue_1_ce0;
    end else begin
        queue_1_ce0 = queue_1_ce0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_1_ce0_local = 1'b1;
    end else begin
        queue_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_1_we0 = grp_bfs_Pipeline_loop_neighbors_fu_191_queue_1_we0;
    end else begin
        queue_1_we0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_address0 = grp_bfs_Pipeline_loop_neighbors_fu_191_queue_address0;
    end else begin
        queue_address0 = queue_address0_local;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        queue_address0_local = zext_ln16_fu_272_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        queue_address0_local = 64'd0;
    end else begin
        queue_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_191_queue_ce0;
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
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_d0 = grp_bfs_Pipeline_loop_neighbors_fu_191_queue_d0;
    end else begin
        queue_d0 = trunc_ln14_fu_209_p1;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        queue_we0 = grp_bfs_Pipeline_loop_neighbors_fu_191_queue_we0;
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
            if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln32_fu_232_p2 == 1'd1) | (((1'd1 == and_ln33_fu_296_p2) & (icmp_ln33_fu_278_p2 == 1'd0)) | ((icmp_ln33_1_fu_312_p2 == 1'd1) & (icmp_ln33_fu_278_p2 == 1'd1)))))) begin
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
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_bfs_Pipeline_loop_neighbors_fu_191_ap_done == 1'b1))) begin
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
assign add_ln33_fu_302_p2 = (zext_ln32_1_fu_254_p1 + 9'd1);
assign and_ln33_fu_296_p2 = (icmp_ln33_3_fu_290_p2 & icmp_ln33_2_fu_284_p2);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];
assign dummy_2_fu_238_p2 = (dummy_fu_84 + 9'd1);
assign e_fu_370_p1 = select_ln37_fu_363_p3[63:0];
assign edges_0_address0 = grp_bfs_Pipeline_loop_neighbors_fu_191_edges_0_address0;
assign edges_0_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_191_edges_0_ce0;
assign edges_1_address0 = grp_bfs_Pipeline_loop_neighbors_fu_191_edges_1_address0;
assign edges_1_ce0 = grp_bfs_Pipeline_loop_neighbors_fu_191_edges_1_ce0;
assign grp_bfs_Pipeline_loop_neighbors_fu_191_ap_start = grp_bfs_Pipeline_loop_neighbors_fu_191_ap_start_reg;
assign icmp_ln32_fu_232_p2 = ((dummy_fu_84 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln33_1_fu_312_p2 = ((q_in_fu_76 == zext_ln33_fu_308_p1) ? 1'b1 : 1'b0);
assign icmp_ln33_2_fu_284_p2 = ((q_in_fu_76 == 64'd0) ? 1'b1 : 1'b0);
assign icmp_ln33_3_fu_290_p2 = ((q_out_fu_80 == 8'd255) ? 1'b1 : 1'b0);
assign icmp_ln33_fu_278_p2 = ((q_in_fu_76 > zext_ln32_fu_250_p1) ? 1'b1 : 1'b0);
assign lshr_ln_fu_262_p4 = {{q_out_fu_80[7:1]}};
assign n_fu_337_p3 = ((trunc_ln32_reg_411[0:0] == 1'b1) ? queue_1_q0 : queue_q0);
assign nodes_0_address0 = zext_ln18_fu_358_p1;
assign nodes_0_ce0 = nodes_0_ce0_local;
assign nodes_1_address0 = zext_ln18_fu_358_p1;
assign nodes_1_ce0 = nodes_1_ce0_local;
assign q_out_1_fu_321_p2 = (q_out_fu_80 + 8'd1);
assign select_ln37_fu_363_p3 = ((trunc_ln18_reg_440[0:0] == 1'b1) ? nodes_1_q0 : nodes_0_q0);
assign trunc_ln14_fu_209_p1 = starting_node[7:0];
assign trunc_ln18_fu_344_p1 = n_fu_337_p3[0:0];
assign trunc_ln32_fu_258_p1 = q_out_fu_80[0:0];
assign zext_ln16_fu_272_p1 = lshr_ln_fu_262_p4;
assign zext_ln18_fu_358_p1 = lshr_ln1_reg_445;
assign zext_ln32_1_fu_254_p1 = q_out_fu_80;
assign zext_ln32_fu_250_p1 = q_out_fu_80;
assign zext_ln33_fu_308_p1 = add_ln33_fu_302_p2;
endmodule 