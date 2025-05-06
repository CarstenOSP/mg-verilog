
module atax_atax_Pipeline_label_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v123_address0,v123_ce0,v123_we0,v123_d0,v123_1_address0,v123_1_ce0,v123_1_we0,v123_1_d0,v117_0_address0,v117_0_ce0,v117_0_we0,v117_0_d0,v117_7_address0,v117_7_ce0,v117_7_we0,v117_7_d0,v117_6_address0,v117_6_ce0,v117_6_we0,v117_6_d0,v117_5_address0,v117_5_ce0,v117_5_we0,v117_5_d0,v117_4_address0,v117_4_ce0,v117_4_we0,v117_4_d0,v117_3_address0,v117_3_ce0,v117_3_we0,v117_3_d0,v117_2_address0,v117_2_ce0,v117_2_we0,v117_2_d0,v117_1_address0,v117_1_ce0,v117_1_we0,v117_1_d0);  
parameter    ap_ST_fsm_state1 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v123_address0;
output   v123_ce0;
output   v123_we0;
output  [31:0] v123_d0;
output  [4:0] v123_1_address0;
output   v123_1_ce0;
output   v123_1_we0;
output  [31:0] v123_1_d0;
output  [2:0] v117_0_address0;
output   v117_0_ce0;
output   v117_0_we0;
output  [31:0] v117_0_d0;
output  [2:0] v117_7_address0;
output   v117_7_ce0;
output   v117_7_we0;
output  [31:0] v117_7_d0;
output  [2:0] v117_6_address0;
output   v117_6_ce0;
output   v117_6_we0;
output  [31:0] v117_6_d0;
output  [2:0] v117_5_address0;
output   v117_5_ce0;
output   v117_5_we0;
output  [31:0] v117_5_d0;
output  [2:0] v117_4_address0;
output   v117_4_ce0;
output   v117_4_we0;
output  [31:0] v117_4_d0;
output  [2:0] v117_3_address0;
output   v117_3_ce0;
output   v117_3_we0;
output  [31:0] v117_3_d0;
output  [2:0] v117_2_address0;
output   v117_2_ce0;
output   v117_2_we0;
output  [31:0] v117_2_d0;
output  [2:0] v117_1_address0;
output   v117_1_ce0;
output   v117_1_we0;
output  [31:0] v117_1_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln164_fu_226_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln164_fu_256_p1;
wire   [2:0] trunc_ln164_1_fu_242_p1;
wire   [63:0] zext_ln164_1_fu_278_p1;
reg   [6:0] v112_fu_74;
wire   [6:0] add_ln164_fu_232_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v112_1;
reg    v117_6_we0_local;
reg    v117_6_ce0_local;
reg    v117_5_we0_local;
reg    v117_5_ce0_local;
reg    v117_4_we0_local;
reg    v117_4_ce0_local;
reg    v117_3_we0_local;
reg    v117_3_ce0_local;
reg    v117_2_we0_local;
reg    v117_2_ce0_local;
reg    v117_1_we0_local;
reg    v117_1_ce0_local;
reg    v117_0_we0_local;
reg    v117_0_ce0_local;
reg    v117_7_we0_local;
reg    v117_7_ce0_local;
reg    v123_we0_local;
wire   [0:0] trunc_ln164_fu_238_p1;
reg    v123_ce0_local;
reg    v123_1_we0_local;
reg    v123_1_ce0_local;
wire   [2:0] lshr_ln_fu_246_p4;
wire   [4:0] lshr_ln164_1_fu_268_p4;
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
#0 v112_fu_74 = 7'd0;
#0 ap_done_reg = 1'b0;
end
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((icmp_ln164_fu_226_p2 == 1'd0)) begin
            v112_fu_74 <= add_ln164_fu_232_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v112_fu_74 <= 7'd0;
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
    if (((icmp_ln164_fu_226_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
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
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v112_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v112_1 = v112_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v117_0_ce0_local = 1'b1;
    end else begin
        v117_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln164_fu_226_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln164_1_fu_242_p1 == 3'd0))) begin
        v117_0_we0_local = 1'b1;
    end else begin
        v117_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v117_1_ce0_local = 1'b1;
    end else begin
        v117_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln164_fu_226_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln164_1_fu_242_p1 == 3'd1))) begin
        v117_1_we0_local = 1'b1;
    end else begin
        v117_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v117_2_ce0_local = 1'b1;
    end else begin
        v117_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln164_fu_226_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln164_1_fu_242_p1 == 3'd2))) begin
        v117_2_we0_local = 1'b1;
    end else begin
        v117_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v117_3_ce0_local = 1'b1;
    end else begin
        v117_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln164_fu_226_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln164_1_fu_242_p1 == 3'd3))) begin
        v117_3_we0_local = 1'b1;
    end else begin
        v117_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v117_4_ce0_local = 1'b1;
    end else begin
        v117_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln164_fu_226_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln164_1_fu_242_p1 == 3'd4))) begin
        v117_4_we0_local = 1'b1;
    end else begin
        v117_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v117_5_ce0_local = 1'b1;
    end else begin
        v117_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln164_fu_226_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln164_1_fu_242_p1 == 3'd5))) begin
        v117_5_we0_local = 1'b1;
    end else begin
        v117_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v117_6_ce0_local = 1'b1;
    end else begin
        v117_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln164_fu_226_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln164_1_fu_242_p1 == 3'd6))) begin
        v117_6_we0_local = 1'b1;
    end else begin
        v117_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v117_7_ce0_local = 1'b1;
    end else begin
        v117_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln164_fu_226_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln164_1_fu_242_p1 == 3'd7))) begin
        v117_7_we0_local = 1'b1;
    end else begin
        v117_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v123_1_ce0_local = 1'b1;
    end else begin
        v123_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln164_fu_226_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (trunc_ln164_fu_238_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        v123_1_we0_local = 1'b1;
    end else begin
        v123_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        v123_ce0_local = 1'b1;
    end else begin
        v123_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln164_fu_226_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (trunc_ln164_fu_238_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state1))) begin
        v123_we0_local = 1'b1;
    end else begin
        v123_we0_local = 1'b0;
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
assign add_ln164_fu_232_p2 = (ap_sig_allocacmp_v112_1 + 7'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln164_fu_226_p2 = ((ap_sig_allocacmp_v112_1 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln164_1_fu_268_p4 = {{ap_sig_allocacmp_v112_1[5:1]}};
assign lshr_ln_fu_246_p4 = {{ap_sig_allocacmp_v112_1[5:3]}};
assign trunc_ln164_1_fu_242_p1 = ap_sig_allocacmp_v112_1[2:0];
assign trunc_ln164_fu_238_p1 = ap_sig_allocacmp_v112_1[0:0];
assign v117_0_address0 = zext_ln164_fu_256_p1;
assign v117_0_ce0 = v117_0_ce0_local;
assign v117_0_d0 = 32'd0;
assign v117_0_we0 = v117_0_we0_local;
assign v117_1_address0 = zext_ln164_fu_256_p1;
assign v117_1_ce0 = v117_1_ce0_local;
assign v117_1_d0 = 32'd0;
assign v117_1_we0 = v117_1_we0_local;
assign v117_2_address0 = zext_ln164_fu_256_p1;
assign v117_2_ce0 = v117_2_ce0_local;
assign v117_2_d0 = 32'd0;
assign v117_2_we0 = v117_2_we0_local;
assign v117_3_address0 = zext_ln164_fu_256_p1;
assign v117_3_ce0 = v117_3_ce0_local;
assign v117_3_d0 = 32'd0;
assign v117_3_we0 = v117_3_we0_local;
assign v117_4_address0 = zext_ln164_fu_256_p1;
assign v117_4_ce0 = v117_4_ce0_local;
assign v117_4_d0 = 32'd0;
assign v117_4_we0 = v117_4_we0_local;
assign v117_5_address0 = zext_ln164_fu_256_p1;
assign v117_5_ce0 = v117_5_ce0_local;
assign v117_5_d0 = 32'd0;
assign v117_5_we0 = v117_5_we0_local;
assign v117_6_address0 = zext_ln164_fu_256_p1;
assign v117_6_ce0 = v117_6_ce0_local;
assign v117_6_d0 = 32'd0;
assign v117_6_we0 = v117_6_we0_local;
assign v117_7_address0 = zext_ln164_fu_256_p1;
assign v117_7_ce0 = v117_7_ce0_local;
assign v117_7_d0 = 32'd0;
assign v117_7_we0 = v117_7_we0_local;
assign v123_1_address0 = zext_ln164_1_fu_278_p1;
assign v123_1_ce0 = v123_1_ce0_local;
assign v123_1_d0 = 32'd0;
assign v123_1_we0 = v123_1_we0_local;
assign v123_address0 = zext_ln164_1_fu_278_p1;
assign v123_ce0 = v123_ce0_local;
assign v123_d0 = 32'd0;
assign v123_we0 = v123_we0_local;
assign zext_ln164_1_fu_278_p1 = lshr_ln164_1_fu_268_p4;
assign zext_ln164_fu_256_p1 = lshr_ln_fu_246_p4;
endmodule 
