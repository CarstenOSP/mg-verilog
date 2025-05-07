module sha_stream_sha_stream_Pipeline_VITIS_LOOP_65_22 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,select_ln58,add_ln61,sha_info_data_address0,sha_info_data_ce0,sha_info_data_we0,sha_info_data_d0); 
parameter    ap_ST_fsm_state1 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] select_ln58;
input  [3:0] add_ln61;
output  [3:0] sha_info_data_address0;
output   sha_info_data_ce0;
output   sha_info_data_we0;
output  [31:0] sha_info_data_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln65_fu_76_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln55_fu_98_p1;
reg   [5:0] idx_fu_34;
wire   [5:0] add_ln65_fu_82_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_idx_load;
reg    sha_info_data_we0_local;
reg    sha_info_data_ce0_local;
wire   [6:0] zext_ln65_fu_72_p1;
wire   [3:0] trunc_ln65_fu_88_p1;
wire   [3:0] add_ln55_fu_92_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 idx_fu_34 = 6'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln65_fu_76_p2 == 1'd1)) begin
            idx_fu_34 <= add_ln65_fu_82_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            idx_fu_34 <= 6'd0;
        end
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln65_fu_76_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_idx_load = 6'd0;
    end else begin
        ap_sig_allocacmp_idx_load = idx_fu_34;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        sha_info_data_ce0_local = 1'b1;
    end else begin
        sha_info_data_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln65_fu_76_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        sha_info_data_we0_local = 1'b1;
    end else begin
        sha_info_data_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_92_p2 = (trunc_ln65_fu_88_p1 + add_ln61);
assign add_ln65_fu_82_p2 = (ap_sig_allocacmp_idx_load + 6'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln65_fu_76_p2 = (($signed(zext_ln65_fu_72_p1) < $signed(select_ln58)) ? 1'b1 : 1'b0);
assign sha_info_data_address0 = zext_ln55_fu_98_p1;
assign sha_info_data_ce0 = sha_info_data_ce0_local;
assign sha_info_data_d0 = 32'd0;
assign sha_info_data_we0 = sha_info_data_we0_local;
assign trunc_ln65_fu_88_p1 = ap_sig_allocacmp_idx_load[3:0];
assign zext_ln55_fu_98_p1 = add_ln55_fu_92_p2;
assign zext_ln65_fu_72_p1 = ap_sig_allocacmp_idx_load;
endmodule 