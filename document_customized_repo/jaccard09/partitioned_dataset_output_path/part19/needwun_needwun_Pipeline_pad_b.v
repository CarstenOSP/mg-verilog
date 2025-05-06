
module needwun_needwun_Pipeline_pad_b (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_str_idx_7,alignedB_address0,alignedB_ce0,alignedB_we0,alignedB_d0,alignedB_address1,alignedB_ce1,alignedB_we1,alignedB_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] b_str_idx_7;
output  [7:0] alignedB_address0;
output   alignedB_ce0;
output   alignedB_we0;
output  [7:0] alignedB_d0;
output  [7:0] alignedB_address1;
output   alignedB_ce1;
output   alignedB_we1;
output  [7:0] alignedB_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln86_3_fu_201_p2;
wire   [0:0] icmp_ln86_2_fu_179_p2;
wire   [0:0] icmp_ln86_1_fu_152_p2;
wire   [0:0] icmp_ln86_fu_121_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] b_str_idx_1_reg_232;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln86_reg_238;
reg   [0:0] icmp_ln86_1_reg_242;
reg   [0:0] icmp_ln86_2_reg_246;
wire   [9:0] add_ln86_2_fu_185_p2;
reg   [9:0] add_ln86_2_reg_250;
reg   [0:0] icmp_ln86_3_reg_255;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln86_1_fu_137_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln86_2_fu_164_p1;
wire   [63:0] zext_ln86_fu_207_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln86_3_fu_211_p1;
reg   [31:0] b_str_idx_fu_50;
wire   [31:0] add_ln86_3_fu_215_p2;
wire    ap_block_pp0_stage0_11001;
wire    ap_loop_init;
reg    alignedB_we1_local;
reg    alignedB_ce1_local;
reg   [7:0] alignedB_address1_local;
reg    alignedB_we0_local;
reg    alignedB_ce0_local;
reg   [7:0] alignedB_address0_local;
wire   [23:0] tmp_fu_111_p4;
wire   [9:0] trunc_ln86_fu_127_p1;
wire   [9:0] add_ln86_fu_131_p2;
wire   [1:0] tmp_1_fu_142_p4;
wire   [9:0] add_ln86_1_fu_158_p2;
wire   [1:0] tmp_2_fu_169_p4;
wire   [1:0] tmp_3_fu_191_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_295;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 b_str_idx_fu_50 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            b_str_idx_fu_50 <= b_str_idx_7;
        end else if ((1'b1 == ap_condition_295)) begin
            b_str_idx_fu_50 <= add_ln86_3_fu_215_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln86_2_reg_250 <= add_ln86_2_fu_185_p2;
        b_str_idx_1_reg_232 <= b_str_idx_fu_50;
        icmp_ln86_1_reg_242 <= icmp_ln86_1_fu_152_p2;
        icmp_ln86_2_reg_246 <= icmp_ln86_2_fu_179_p2;
        icmp_ln86_3_reg_255 <= icmp_ln86_3_fu_201_p2;
        icmp_ln86_reg_238 <= icmp_ln86_fu_121_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_address0_local = zext_ln86_3_fu_211_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedB_address0_local = zext_ln86_2_fu_164_p1;
    end else begin
        alignedB_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_address1_local = zext_ln86_fu_207_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedB_address1_local = zext_ln86_1_fu_137_p1;
    end else begin
        alignedB_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_ce0_local = 1'b1;
    end else begin
        alignedB_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_ce1_local = 1'b1;
    end else begin
        alignedB_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln86_fu_121_p2 == 1'd1) & (icmp_ln86_1_fu_152_p2 == 1'd0) & (icmp_ln86_2_fu_179_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln86_3_reg_255 == 1'd0) & (icmp_ln86_2_reg_246 == 1'd0) & (icmp_ln86_1_reg_242 == 1'd0) & (icmp_ln86_reg_238 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_we0_local = 1'b1;
    end else begin
        alignedB_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln86_fu_121_p2 == 1'd1) & (icmp_ln86_1_fu_152_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln86_reg_238 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        alignedB_we1_local = 1'b1;
    end else begin
        alignedB_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & ((icmp_ln86_fu_121_p2 == 1'd0) | ((icmp_ln86_1_fu_152_p2 == 1'd1) | ((icmp_ln86_2_fu_179_p2 == 1'd1) | (icmp_ln86_3_fu_201_p2 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln86_reg_238 == 1'd0) | ((icmp_ln86_1_reg_242 == 1'd1) | ((icmp_ln86_3_reg_255 == 1'd1) | (icmp_ln86_2_reg_246 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln86_1_fu_158_p2 = (trunc_ln86_fu_127_p1 + 10'd2);
assign add_ln86_2_fu_185_p2 = (trunc_ln86_fu_127_p1 + 10'd3);
assign add_ln86_3_fu_215_p2 = (b_str_idx_1_reg_232 + 32'd4);
assign add_ln86_fu_131_p2 = (trunc_ln86_fu_127_p1 + 10'd1);
assign alignedB_address0 = alignedB_address0_local;
assign alignedB_address1 = alignedB_address1_local;
assign alignedB_ce0 = alignedB_ce0_local;
assign alignedB_ce1 = alignedB_ce1_local;
assign alignedB_d0 = 8'd95;
assign alignedB_d1 = 8'd95;
assign alignedB_we0 = alignedB_we0_local;
assign alignedB_we1 = alignedB_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_295 = ((icmp_ln86_3_reg_255 == 1'd0) & (icmp_ln86_2_reg_246 == 1'd0) & (icmp_ln86_1_reg_242 == 1'd0) & (icmp_ln86_reg_238 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln86_1_fu_152_p2 = ((tmp_1_fu_142_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_2_fu_179_p2 = ((tmp_2_fu_169_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_3_fu_201_p2 = ((tmp_3_fu_191_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln86_fu_121_p2 = (($signed(tmp_fu_111_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign tmp_1_fu_142_p4 = {{add_ln86_fu_131_p2[9:8]}};
assign tmp_2_fu_169_p4 = {{add_ln86_1_fu_158_p2[9:8]}};
assign tmp_3_fu_191_p4 = {{add_ln86_2_fu_185_p2[9:8]}};
assign tmp_fu_111_p4 = {{b_str_idx_fu_50[31:8]}};
assign trunc_ln86_fu_127_p1 = b_str_idx_fu_50[9:0];
assign zext_ln86_1_fu_137_p1 = add_ln86_fu_131_p2;
assign zext_ln86_2_fu_164_p1 = add_ln86_1_fu_158_p2;
assign zext_ln86_3_fu_211_p1 = add_ln86_2_reg_250;
assign zext_ln86_fu_207_p1 = b_str_idx_1_reg_232;
endmodule 
