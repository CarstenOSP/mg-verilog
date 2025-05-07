module needwun_needwun_Pipeline_pad_b (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,empty,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedB_0_address1,alignedB_0_ce1,alignedB_0_we1,alignedB_0_d1,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_1_address1,alignedB_1_ce1,alignedB_1_we1,alignedB_1_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] empty;
output  [6:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [6:0] alignedB_0_address1;
output   alignedB_0_ce1;
output   alignedB_0_we1;
output  [7:0] alignedB_0_d1;
output  [6:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [6:0] alignedB_1_address1;
output   alignedB_1_ce1;
output   alignedB_1_we1;
output  [7:0] alignedB_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln86_3_fu_254_p2;
wire   [0:0] icmp_ln86_2_fu_222_p2;
wire   [0:0] icmp_ln86_1_fu_200_p2;
wire   [0:0] icmp_ln86_fu_164_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] b_str_idx_1_reg_310;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln86_reg_316;
reg   [0:0] icmp_ln86_reg_316_pp0_iter1_reg;
wire   [0:0] trunc_ln86_fu_170_p1;
reg   [0:0] trunc_ln86_reg_320;
reg   [0:0] trunc_ln86_reg_320_pp0_iter1_reg;
reg   [6:0] lshr_ln_reg_324;
reg   [0:0] icmp_ln86_1_reg_329;
reg   [0:0] icmp_ln86_1_reg_329_pp0_iter1_reg;
reg   [0:0] icmp_ln86_2_reg_333;
reg   [0:0] icmp_ln86_2_reg_333_pp0_iter1_reg;
reg   [6:0] lshr_ln86_1_reg_337;
reg   [0:0] icmp_ln86_3_reg_342;
wire   [63:0] zext_ln86_1_fu_286_p1;
reg   [63:0] zext_ln86_1_reg_346;
wire   [63:0] zext_ln86_2_fu_290_p1;
reg   [63:0] zext_ln86_2_reg_352;
wire   [63:0] zext_ln18_fu_269_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln86_fu_275_p1;
reg    ap_predicate_pred154_state3;
reg    ap_predicate_pred160_state3;
reg   [31:0] b_str_idx_fu_50;
wire   [31:0] add_ln86_4_fu_293_p2;
reg   [31:0] ap_sig_allocacmp_b_str_idx_1;
wire    ap_loop_init;
reg    alignedB_0_we1_local;
reg    alignedB_0_ce1_local;
reg   [6:0] alignedB_0_address1_local;
reg    alignedB_0_we0_local;
reg    alignedB_0_ce0_local;
reg   [6:0] alignedB_0_address0_local;
reg    alignedB_1_we1_local;
reg    alignedB_1_ce1_local;
reg   [6:0] alignedB_1_address1_local;
reg    alignedB_1_we0_local;
reg    alignedB_1_ce0_local;
reg   [6:0] alignedB_1_address0_local;
wire   [23:0] tmp_1_fu_154_p4;
wire   [31:0] add_ln86_fu_174_p2;
wire   [23:0] tmp_2_fu_190_p4;
wire   [31:0] add_ln86_1_fu_206_p2;
wire   [23:0] tmp_3_fu_212_p4;
wire   [31:0] add_ln86_3_fu_228_p2;
wire   [23:0] tmp_4_fu_244_p4;
wire   [6:0] lshr_ln18_2_fu_260_p4;
wire   [6:0] add_ln86_2_fu_280_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_142;
reg    ap_condition_350;
reg    ap_condition_148;
reg    ap_condition_360;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 b_str_idx_fu_50 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            b_str_idx_fu_50 <= empty;
        end else if ((1'b1 == ap_condition_360)) begin
            b_str_idx_fu_50 <= add_ln86_4_fu_293_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_predicate_pred154_state3 <= ((icmp_ln86_2_reg_333 == 1'd1) & (icmp_ln86_1_reg_329 == 1'd1) & (trunc_ln86_reg_320 == 1'd0) & (icmp_ln86_reg_316 == 1'd1) & (icmp_ln86_3_reg_342 == 1'd1));
        ap_predicate_pred160_state3 <= ((icmp_ln86_2_reg_333 == 1'd1) & (icmp_ln86_1_reg_329 == 1'd1) & (trunc_ln86_reg_320 == 1'd1) & (icmp_ln86_reg_316 == 1'd1) & (icmp_ln86_3_reg_342 == 1'd1));
        b_str_idx_1_reg_310 <= ap_sig_allocacmp_b_str_idx_1;
        icmp_ln86_1_reg_329 <= icmp_ln86_1_fu_200_p2;
        icmp_ln86_1_reg_329_pp0_iter1_reg <= icmp_ln86_1_reg_329;
        icmp_ln86_2_reg_333 <= icmp_ln86_2_fu_222_p2;
        icmp_ln86_2_reg_333_pp0_iter1_reg <= icmp_ln86_2_reg_333;
        icmp_ln86_3_reg_342 <= icmp_ln86_3_fu_254_p2;
        icmp_ln86_reg_316 <= icmp_ln86_fu_164_p2;
        icmp_ln86_reg_316_pp0_iter1_reg <= icmp_ln86_reg_316;
        lshr_ln86_1_reg_337 <= {{add_ln86_3_fu_228_p2[7:1]}};
        lshr_ln_reg_324 <= {{add_ln86_fu_174_p2[7:1]}};
        trunc_ln86_reg_320 <= trunc_ln86_fu_170_p1;
        trunc_ln86_reg_320_pp0_iter1_reg <= trunc_ln86_reg_320;
        zext_ln86_1_reg_346[6 : 0] <= zext_ln86_1_fu_286_p1[6 : 0];
        zext_ln86_2_reg_352[6 : 0] <= zext_ln86_2_fu_290_p1[6 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_pred160_state3 == 1'b1)) begin
            alignedB_0_address0_local = zext_ln86_2_reg_352;
        end else if ((1'b1 == ap_condition_142)) begin
            alignedB_0_address0_local = zext_ln86_1_reg_346;
        end else begin
            alignedB_0_address0_local = 'bx;
        end
    end else begin
        alignedB_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if (((icmp_ln86_1_reg_329 == 1'd1) & (trunc_ln86_reg_320 == 1'd1))) begin
            alignedB_0_address1_local = zext_ln86_fu_275_p1;
        end else if ((trunc_ln86_reg_320 == 1'd0)) begin
            alignedB_0_address1_local = zext_ln18_fu_269_p1;
        end else begin
            alignedB_0_address1_local = 'bx;
        end
    end else begin
        alignedB_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred160_state3 == 1'b1)) | ((icmp_ln86_2_reg_333_pp0_iter1_reg == 1'd1) & (icmp_ln86_1_reg_329_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_320_pp0_iter1_reg == 1'd0) & (icmp_ln86_reg_316_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln86_1_reg_329 == 1'd1) & (trunc_ln86_reg_320 == 1'd1) & (icmp_ln86_reg_316 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln86_reg_320 == 1'd0) & (icmp_ln86_reg_316 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_0_ce1_local = 1'b1;
    end else begin
        alignedB_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred160_state3 == 1'b1)) | ((icmp_ln86_2_reg_333_pp0_iter1_reg == 1'd1) & (icmp_ln86_1_reg_329_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_320_pp0_iter1_reg == 1'd0) & (icmp_ln86_reg_316_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln86_1_reg_329 == 1'd1) & (trunc_ln86_reg_320 == 1'd1) & (icmp_ln86_reg_316 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln86_reg_320 == 1'd0) & (icmp_ln86_reg_316 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_0_we1_local = 1'b1;
    end else begin
        alignedB_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        if ((ap_predicate_pred154_state3 == 1'b1)) begin
            alignedB_1_address0_local = zext_ln86_2_reg_352;
        end else if ((1'b1 == ap_condition_148)) begin
            alignedB_1_address0_local = zext_ln86_1_reg_346;
        end else begin
            alignedB_1_address0_local = 'bx;
        end
    end else begin
        alignedB_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_350)) begin
        if (((icmp_ln86_1_reg_329 == 1'd1) & (trunc_ln86_reg_320 == 1'd0))) begin
            alignedB_1_address1_local = zext_ln86_fu_275_p1;
        end else if ((trunc_ln86_reg_320 == 1'd1)) begin
            alignedB_1_address1_local = zext_ln18_fu_269_p1;
        end else begin
            alignedB_1_address1_local = 'bx;
        end
    end else begin
        alignedB_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred154_state3 == 1'b1)) | ((icmp_ln86_2_reg_333_pp0_iter1_reg == 1'd1) & (icmp_ln86_1_reg_329_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_320_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_316_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln86_1_reg_329 == 1'd1) & (trunc_ln86_reg_320 == 1'd0) & (icmp_ln86_reg_316 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln86_reg_320 == 1'd1) & (icmp_ln86_reg_316 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_1_ce1_local = 1'b1;
    end else begin
        alignedB_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (ap_predicate_pred154_state3 == 1'b1)) | ((icmp_ln86_2_reg_333_pp0_iter1_reg == 1'd1) & (icmp_ln86_1_reg_329_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_320_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_316_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln86_1_reg_329 == 1'd1) & (trunc_ln86_reg_320 == 1'd0) & (icmp_ln86_reg_316 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((trunc_ln86_reg_320 == 1'd1) & (icmp_ln86_reg_316 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_1_we1_local = 1'b1;
    end else begin
        alignedB_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln86_fu_164_p2 == 1'd0) | ((icmp_ln86_1_fu_200_p2 == 1'd0) | ((icmp_ln86_2_fu_222_p2 == 1'd0) | (icmp_ln86_3_fu_254_p2 == 1'd0)))))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            ap_sig_allocacmp_b_str_idx_1 = empty;
        end else if ((1'b1 == ap_condition_360)) begin
            ap_sig_allocacmp_b_str_idx_1 = add_ln86_4_fu_293_p2;
        end else begin
            ap_sig_allocacmp_b_str_idx_1 = b_str_idx_fu_50;
        end
    end else begin
        ap_sig_allocacmp_b_str_idx_1 = b_str_idx_fu_50;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln86_1_fu_206_p2 = (ap_sig_allocacmp_b_str_idx_1 + 32'd2);
assign add_ln86_2_fu_280_p2 = (lshr_ln18_2_fu_260_p4 + 7'd1);
assign add_ln86_3_fu_228_p2 = (ap_sig_allocacmp_b_str_idx_1 + 32'd3);
assign add_ln86_4_fu_293_p2 = (b_str_idx_1_reg_310 + 32'd4);
assign add_ln86_fu_174_p2 = (ap_sig_allocacmp_b_str_idx_1 + 32'd1);
assign alignedB_0_address0 = alignedB_0_address0_local;
assign alignedB_0_address1 = alignedB_0_address1_local;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_ce1 = alignedB_0_ce1_local;
assign alignedB_0_d0 = 8'd95;
assign alignedB_0_d1 = 8'd95;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_0_we1 = alignedB_0_we1_local;
assign alignedB_1_address0 = alignedB_1_address0_local;
assign alignedB_1_address1 = alignedB_1_address1_local;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_ce1 = alignedB_1_ce1_local;
assign alignedB_1_d0 = 8'd95;
assign alignedB_1_d1 = 8'd95;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign alignedB_1_we1 = alignedB_1_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_142 = ((icmp_ln86_2_reg_333_pp0_iter1_reg == 1'd1) & (icmp_ln86_1_reg_329_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_320_pp0_iter1_reg == 1'd0) & (icmp_ln86_reg_316_pp0_iter1_reg == 1'd1));
end
always @ (*) begin
    ap_condition_148 = ((icmp_ln86_2_reg_333_pp0_iter1_reg == 1'd1) & (icmp_ln86_1_reg_329_pp0_iter1_reg == 1'd1) & (trunc_ln86_reg_320_pp0_iter1_reg == 1'd1) & (icmp_ln86_reg_316_pp0_iter1_reg == 1'd1));
end
always @ (*) begin
    ap_condition_350 = ((icmp_ln86_reg_316 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_360 = ((icmp_ln86_2_reg_333 == 1'd1) & (icmp_ln86_1_reg_329 == 1'd1) & (icmp_ln86_reg_316 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln86_3_reg_342 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln86_1_fu_200_p2 = (($signed(tmp_2_fu_190_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_2_fu_222_p2 = (($signed(tmp_3_fu_212_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_3_fu_254_p2 = (($signed(tmp_4_fu_244_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_fu_164_p2 = (($signed(tmp_1_fu_154_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign lshr_ln18_2_fu_260_p4 = {{b_str_idx_1_reg_310[7:1]}};
assign tmp_1_fu_154_p4 = {{ap_sig_allocacmp_b_str_idx_1[31:8]}};
assign tmp_2_fu_190_p4 = {{add_ln86_fu_174_p2[31:8]}};
assign tmp_3_fu_212_p4 = {{add_ln86_1_fu_206_p2[31:8]}};
assign tmp_4_fu_244_p4 = {{add_ln86_3_fu_228_p2[31:8]}};
assign trunc_ln86_fu_170_p1 = ap_sig_allocacmp_b_str_idx_1[0:0];
assign zext_ln18_fu_269_p1 = lshr_ln18_2_fu_260_p4;
assign zext_ln86_1_fu_286_p1 = add_ln86_2_fu_280_p2;
assign zext_ln86_2_fu_290_p1 = lshr_ln86_1_reg_337;
assign zext_ln86_fu_275_p1 = lshr_ln_reg_324;
always @ (posedge ap_clk) begin
    zext_ln86_1_reg_346[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
    zext_ln86_2_reg_352[63:7] <= 57'b000000000000000000000000000000000000000000000000000000000;
end
endmodule 