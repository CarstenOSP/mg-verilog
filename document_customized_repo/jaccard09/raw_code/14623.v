module ss_sort_ss_sort_Pipeline_init_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_0_address0,bucket_0_ce0,bucket_0_we0,bucket_0_d0,bucket_7_address0,bucket_7_ce0,bucket_7_we0,bucket_7_d0,bucket_6_address0,bucket_6_ce0,bucket_6_we0,bucket_6_d0,bucket_5_address0,bucket_5_ce0,bucket_5_we0,bucket_5_d0,bucket_4_address0,bucket_4_ce0,bucket_4_we0,bucket_4_d0,bucket_3_address0,bucket_3_ce0,bucket_3_we0,bucket_3_d0,bucket_2_address0,bucket_2_ce0,bucket_2_we0,bucket_2_d0,bucket_1_address0,bucket_1_ce0,bucket_1_we0,bucket_1_d0); 
parameter    ap_ST_fsm_state1 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] bucket_0_address0;
output   bucket_0_ce0;
output   bucket_0_we0;
output  [31:0] bucket_0_d0;
output  [7:0] bucket_7_address0;
output   bucket_7_ce0;
output   bucket_7_we0;
output  [31:0] bucket_7_d0;
output  [7:0] bucket_6_address0;
output   bucket_6_ce0;
output   bucket_6_we0;
output  [31:0] bucket_6_d0;
output  [7:0] bucket_5_address0;
output   bucket_5_ce0;
output   bucket_5_we0;
output  [31:0] bucket_5_d0;
output  [7:0] bucket_4_address0;
output   bucket_4_ce0;
output   bucket_4_we0;
output  [31:0] bucket_4_d0;
output  [7:0] bucket_3_address0;
output   bucket_3_ce0;
output   bucket_3_we0;
output  [31:0] bucket_3_d0;
output  [7:0] bucket_2_address0;
output   bucket_2_ce0;
output   bucket_2_we0;
output  [31:0] bucket_2_d0;
output  [7:0] bucket_1_address0;
output   bucket_1_ce0;
output   bucket_1_we0;
output  [31:0] bucket_1_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln45_fu_190_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln44_fu_216_p1;
wire   [2:0] trunc_ln45_fu_202_p1;
reg   [11:0] i_fu_66;
wire   [11:0] add_ln45_fu_196_p2;
wire    ap_loop_init;
reg   [11:0] ap_sig_allocacmp_i_1;
reg    bucket_6_we0_local;
reg    bucket_6_ce0_local;
reg    bucket_5_we0_local;
reg    bucket_5_ce0_local;
reg    bucket_4_we0_local;
reg    bucket_4_ce0_local;
reg    bucket_3_we0_local;
reg    bucket_3_ce0_local;
reg    bucket_2_we0_local;
reg    bucket_2_ce0_local;
reg    bucket_1_we0_local;
reg    bucket_1_ce0_local;
reg    bucket_0_we0_local;
reg    bucket_0_ce0_local;
reg    bucket_7_we0_local;
reg    bucket_7_ce0_local;
wire   [7:0] lshr_ln_fu_206_p4;
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
#0 i_fu_66 = 12'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((icmp_ln45_fu_190_p2 == 1'd0)) begin
            i_fu_66 <= add_ln45_fu_196_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_66 <= 12'd0;
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
    if (((icmp_ln45_fu_190_p2 == 1'd1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ap_sig_allocacmp_i_1 = 12'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_ce0_local = 1'b1;
    end else begin
        bucket_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln45_fu_202_p1 == 3'd0) & (icmp_ln45_fu_190_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_0_we0_local = 1'b1;
    end else begin
        bucket_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_1_ce0_local = 1'b1;
    end else begin
        bucket_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln45_fu_202_p1 == 3'd1) & (icmp_ln45_fu_190_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_1_we0_local = 1'b1;
    end else begin
        bucket_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_2_ce0_local = 1'b1;
    end else begin
        bucket_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln45_fu_202_p1 == 3'd2) & (icmp_ln45_fu_190_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_2_we0_local = 1'b1;
    end else begin
        bucket_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_3_ce0_local = 1'b1;
    end else begin
        bucket_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln45_fu_202_p1 == 3'd3) & (icmp_ln45_fu_190_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_3_we0_local = 1'b1;
    end else begin
        bucket_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_4_ce0_local = 1'b1;
    end else begin
        bucket_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln45_fu_202_p1 == 3'd4) & (icmp_ln45_fu_190_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_4_we0_local = 1'b1;
    end else begin
        bucket_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_5_ce0_local = 1'b1;
    end else begin
        bucket_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln45_fu_202_p1 == 3'd5) & (icmp_ln45_fu_190_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_5_we0_local = 1'b1;
    end else begin
        bucket_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_6_ce0_local = 1'b1;
    end else begin
        bucket_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln45_fu_202_p1 == 3'd6) & (icmp_ln45_fu_190_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_6_we0_local = 1'b1;
    end else begin
        bucket_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_7_ce0_local = 1'b1;
    end else begin
        bucket_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln45_fu_202_p1 == 3'd7) & (icmp_ln45_fu_190_p2 == 1'd0) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_7_we0_local = 1'b1;
    end else begin
        bucket_7_we0_local = 1'b0;
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
assign add_ln45_fu_196_p2 = (ap_sig_allocacmp_i_1 + 12'd1);
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bucket_0_address0 = zext_ln44_fu_216_p1;
assign bucket_0_ce0 = bucket_0_ce0_local;
assign bucket_0_d0 = 32'd0;
assign bucket_0_we0 = bucket_0_we0_local;
assign bucket_1_address0 = zext_ln44_fu_216_p1;
assign bucket_1_ce0 = bucket_1_ce0_local;
assign bucket_1_d0 = 32'd0;
assign bucket_1_we0 = bucket_1_we0_local;
assign bucket_2_address0 = zext_ln44_fu_216_p1;
assign bucket_2_ce0 = bucket_2_ce0_local;
assign bucket_2_d0 = 32'd0;
assign bucket_2_we0 = bucket_2_we0_local;
assign bucket_3_address0 = zext_ln44_fu_216_p1;
assign bucket_3_ce0 = bucket_3_ce0_local;
assign bucket_3_d0 = 32'd0;
assign bucket_3_we0 = bucket_3_we0_local;
assign bucket_4_address0 = zext_ln44_fu_216_p1;
assign bucket_4_ce0 = bucket_4_ce0_local;
assign bucket_4_d0 = 32'd0;
assign bucket_4_we0 = bucket_4_we0_local;
assign bucket_5_address0 = zext_ln44_fu_216_p1;
assign bucket_5_ce0 = bucket_5_ce0_local;
assign bucket_5_d0 = 32'd0;
assign bucket_5_we0 = bucket_5_we0_local;
assign bucket_6_address0 = zext_ln44_fu_216_p1;
assign bucket_6_ce0 = bucket_6_ce0_local;
assign bucket_6_d0 = 32'd0;
assign bucket_6_we0 = bucket_6_we0_local;
assign bucket_7_address0 = zext_ln44_fu_216_p1;
assign bucket_7_ce0 = bucket_7_ce0_local;
assign bucket_7_d0 = 32'd0;
assign bucket_7_we0 = bucket_7_we0_local;
assign icmp_ln45_fu_190_p2 = ((ap_sig_allocacmp_i_1 == 12'd2048) ? 1'b1 : 1'b0);
assign lshr_ln_fu_206_p4 = {{ap_sig_allocacmp_i_1[10:3]}};
assign trunc_ln45_fu_202_p1 = ap_sig_allocacmp_i_1[2:0];
assign zext_ln44_fu_216_p1 = lshr_ln_fu_206_p4;
endmodule 