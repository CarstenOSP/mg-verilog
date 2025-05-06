
module needwun_needwun_Pipeline_pad_b (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_str_idx_5,alignedB_0_address0,alignedB_0_ce0,alignedB_0_we0,alignedB_0_d0,alignedB_0_address1,alignedB_0_ce1,alignedB_0_we1,alignedB_0_d1,alignedB_7_address0,alignedB_7_ce0,alignedB_7_we0,alignedB_7_d0,alignedB_7_address1,alignedB_7_ce1,alignedB_7_we1,alignedB_7_d1,alignedB_6_address0,alignedB_6_ce0,alignedB_6_we0,alignedB_6_d0,alignedB_6_address1,alignedB_6_ce1,alignedB_6_we1,alignedB_6_d1,alignedB_5_address0,alignedB_5_ce0,alignedB_5_we0,alignedB_5_d0,alignedB_5_address1,alignedB_5_ce1,alignedB_5_we1,alignedB_5_d1,alignedB_4_address0,alignedB_4_ce0,alignedB_4_we0,alignedB_4_d0,alignedB_4_address1,alignedB_4_ce1,alignedB_4_we1,alignedB_4_d1,alignedB_3_address0,alignedB_3_ce0,alignedB_3_we0,alignedB_3_d0,alignedB_3_address1,alignedB_3_ce1,alignedB_3_we1,alignedB_3_d1,alignedB_2_address0,alignedB_2_ce0,alignedB_2_we0,alignedB_2_d0,alignedB_2_address1,alignedB_2_ce1,alignedB_2_we1,alignedB_2_d1,alignedB_1_address0,alignedB_1_ce0,alignedB_1_we0,alignedB_1_d0,alignedB_1_address1,alignedB_1_ce1,alignedB_1_we1,alignedB_1_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] b_str_idx_5;
output  [4:0] alignedB_0_address0;
output   alignedB_0_ce0;
output   alignedB_0_we0;
output  [7:0] alignedB_0_d0;
output  [4:0] alignedB_0_address1;
output   alignedB_0_ce1;
output   alignedB_0_we1;
output  [7:0] alignedB_0_d1;
output  [4:0] alignedB_7_address0;
output   alignedB_7_ce0;
output   alignedB_7_we0;
output  [7:0] alignedB_7_d0;
output  [4:0] alignedB_7_address1;
output   alignedB_7_ce1;
output   alignedB_7_we1;
output  [7:0] alignedB_7_d1;
output  [4:0] alignedB_6_address0;
output   alignedB_6_ce0;
output   alignedB_6_we0;
output  [7:0] alignedB_6_d0;
output  [4:0] alignedB_6_address1;
output   alignedB_6_ce1;
output   alignedB_6_we1;
output  [7:0] alignedB_6_d1;
output  [4:0] alignedB_5_address0;
output   alignedB_5_ce0;
output   alignedB_5_we0;
output  [7:0] alignedB_5_d0;
output  [4:0] alignedB_5_address1;
output   alignedB_5_ce1;
output   alignedB_5_we1;
output  [7:0] alignedB_5_d1;
output  [4:0] alignedB_4_address0;
output   alignedB_4_ce0;
output   alignedB_4_we0;
output  [7:0] alignedB_4_d0;
output  [4:0] alignedB_4_address1;
output   alignedB_4_ce1;
output   alignedB_4_we1;
output  [7:0] alignedB_4_d1;
output  [4:0] alignedB_3_address0;
output   alignedB_3_ce0;
output   alignedB_3_we0;
output  [7:0] alignedB_3_d0;
output  [4:0] alignedB_3_address1;
output   alignedB_3_ce1;
output   alignedB_3_we1;
output  [7:0] alignedB_3_d1;
output  [4:0] alignedB_2_address0;
output   alignedB_2_ce0;
output   alignedB_2_we0;
output  [7:0] alignedB_2_d0;
output  [4:0] alignedB_2_address1;
output   alignedB_2_ce1;
output   alignedB_2_we1;
output  [7:0] alignedB_2_d1;
output  [4:0] alignedB_1_address0;
output   alignedB_1_ce0;
output   alignedB_1_we0;
output  [7:0] alignedB_1_d0;
output  [4:0] alignedB_1_address1;
output   alignedB_1_ce1;
output   alignedB_1_we1;
output  [7:0] alignedB_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln86_1_fu_378_p2;
wire   [0:0] icmp_ln86_fu_316_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] b_str_idx_2_reg_401;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln86_fu_322_p1;
reg   [2:0] trunc_ln86_reg_409;
wire   [63:0] zext_ln86_fu_364_p1;
reg   [63:0] zext_ln86_reg_413;
wire   [63:0] zext_ln18_fu_336_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] b_str_idx_fu_72;
wire   [31:0] add_ln86_1_fu_384_p2;
reg   [31:0] ap_sig_allocacmp_b_str_idx_2;
wire    ap_loop_init;
reg    alignedB_6_we1_local;
reg    alignedB_6_ce1_local;
reg    alignedB_6_we0_local;
reg    alignedB_6_ce0_local;
reg    alignedB_5_we1_local;
reg    alignedB_5_ce1_local;
reg    alignedB_5_we0_local;
reg    alignedB_5_ce0_local;
reg    alignedB_4_we1_local;
reg    alignedB_4_ce1_local;
reg    alignedB_4_we0_local;
reg    alignedB_4_ce0_local;
reg    alignedB_3_we1_local;
reg    alignedB_3_ce1_local;
reg    alignedB_3_we0_local;
reg    alignedB_3_ce0_local;
reg    alignedB_2_we1_local;
reg    alignedB_2_ce1_local;
reg    alignedB_2_we0_local;
reg    alignedB_2_ce0_local;
reg    alignedB_1_we1_local;
reg    alignedB_1_ce1_local;
reg    alignedB_1_we0_local;
reg    alignedB_1_ce0_local;
reg    alignedB_0_we1_local;
reg    alignedB_0_ce1_local;
reg    alignedB_0_we0_local;
reg    alignedB_0_ce0_local;
reg    alignedB_7_we1_local;
reg    alignedB_7_ce1_local;
reg    alignedB_7_we0_local;
reg    alignedB_7_ce0_local;
wire   [23:0] tmp_fu_306_p4;
wire   [4:0] lshr_ln18_2_fu_326_p4;
wire   [31:0] add_ln86_fu_348_p2;
wire   [4:0] lshr_ln_fu_354_p4;
wire   [23:0] tmp_1_fu_368_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 b_str_idx_fu_72 = 32'd0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            b_str_idx_fu_72 <= b_str_idx_5;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            b_str_idx_fu_72 <= add_ln86_1_fu_384_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        b_str_idx_2_reg_401 <= ap_sig_allocacmp_b_str_idx_2;
        trunc_ln86_reg_409 <= trunc_ln86_fu_322_p1;
        zext_ln86_reg_413[4 : 0] <= zext_ln86_fu_364_p1[4 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_0_ce0_local = 1'b1;
    end else begin
        alignedB_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_0_ce1_local = 1'b1;
    end else begin
        alignedB_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_reg_409 == 3'd7))) begin
        alignedB_0_we0_local = 1'b1;
    end else begin
        alignedB_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_316_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_322_p1 == 3'd0))) begin
        alignedB_0_we1_local = 1'b1;
    end else begin
        alignedB_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_1_ce0_local = 1'b1;
    end else begin
        alignedB_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_1_ce1_local = 1'b1;
    end else begin
        alignedB_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_reg_409 == 3'd0))) begin
        alignedB_1_we0_local = 1'b1;
    end else begin
        alignedB_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_316_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_322_p1 == 3'd1))) begin
        alignedB_1_we1_local = 1'b1;
    end else begin
        alignedB_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_2_ce0_local = 1'b1;
    end else begin
        alignedB_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_2_ce1_local = 1'b1;
    end else begin
        alignedB_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_reg_409 == 3'd1))) begin
        alignedB_2_we0_local = 1'b1;
    end else begin
        alignedB_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_316_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_322_p1 == 3'd2))) begin
        alignedB_2_we1_local = 1'b1;
    end else begin
        alignedB_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_3_ce0_local = 1'b1;
    end else begin
        alignedB_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_3_ce1_local = 1'b1;
    end else begin
        alignedB_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_reg_409 == 3'd2))) begin
        alignedB_3_we0_local = 1'b1;
    end else begin
        alignedB_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_316_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_322_p1 == 3'd3))) begin
        alignedB_3_we1_local = 1'b1;
    end else begin
        alignedB_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_4_ce0_local = 1'b1;
    end else begin
        alignedB_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_4_ce1_local = 1'b1;
    end else begin
        alignedB_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_reg_409 == 3'd3))) begin
        alignedB_4_we0_local = 1'b1;
    end else begin
        alignedB_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_316_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_322_p1 == 3'd4))) begin
        alignedB_4_we1_local = 1'b1;
    end else begin
        alignedB_4_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_5_ce0_local = 1'b1;
    end else begin
        alignedB_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_5_ce1_local = 1'b1;
    end else begin
        alignedB_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_reg_409 == 3'd4))) begin
        alignedB_5_we0_local = 1'b1;
    end else begin
        alignedB_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_316_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_322_p1 == 3'd5))) begin
        alignedB_5_we1_local = 1'b1;
    end else begin
        alignedB_5_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_6_ce0_local = 1'b1;
    end else begin
        alignedB_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_6_ce1_local = 1'b1;
    end else begin
        alignedB_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_reg_409 == 3'd5))) begin
        alignedB_6_we0_local = 1'b1;
    end else begin
        alignedB_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_316_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_322_p1 == 3'd6))) begin
        alignedB_6_we1_local = 1'b1;
    end else begin
        alignedB_6_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_7_ce0_local = 1'b1;
    end else begin
        alignedB_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedB_7_ce1_local = 1'b1;
    end else begin
        alignedB_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_reg_409 == 3'd6))) begin
        alignedB_7_we0_local = 1'b1;
    end else begin
        alignedB_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln86_fu_316_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln86_fu_322_p1 == 3'd7))) begin
        alignedB_7_we1_local = 1'b1;
    end else begin
        alignedB_7_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln86_fu_316_p2 == 1'd0) | (icmp_ln86_1_fu_378_p2 == 1'd0)))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
            ap_sig_allocacmp_b_str_idx_2 = b_str_idx_5;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            ap_sig_allocacmp_b_str_idx_2 = add_ln86_1_fu_384_p2;
        end else begin
            ap_sig_allocacmp_b_str_idx_2 = b_str_idx_fu_72;
        end
    end else begin
        ap_sig_allocacmp_b_str_idx_2 = b_str_idx_fu_72;
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
assign add_ln86_1_fu_384_p2 = (b_str_idx_2_reg_401 + 32'd2);
assign add_ln86_fu_348_p2 = (ap_sig_allocacmp_b_str_idx_2 + 32'd1);
assign alignedB_0_address0 = zext_ln86_reg_413;
assign alignedB_0_address1 = zext_ln18_fu_336_p1;
assign alignedB_0_ce0 = alignedB_0_ce0_local;
assign alignedB_0_ce1 = alignedB_0_ce1_local;
assign alignedB_0_d0 = 8'd95;
assign alignedB_0_d1 = 8'd95;
assign alignedB_0_we0 = alignedB_0_we0_local;
assign alignedB_0_we1 = alignedB_0_we1_local;
assign alignedB_1_address0 = zext_ln86_reg_413;
assign alignedB_1_address1 = zext_ln18_fu_336_p1;
assign alignedB_1_ce0 = alignedB_1_ce0_local;
assign alignedB_1_ce1 = alignedB_1_ce1_local;
assign alignedB_1_d0 = 8'd95;
assign alignedB_1_d1 = 8'd95;
assign alignedB_1_we0 = alignedB_1_we0_local;
assign alignedB_1_we1 = alignedB_1_we1_local;
assign alignedB_2_address0 = zext_ln86_reg_413;
assign alignedB_2_address1 = zext_ln18_fu_336_p1;
assign alignedB_2_ce0 = alignedB_2_ce0_local;
assign alignedB_2_ce1 = alignedB_2_ce1_local;
assign alignedB_2_d0 = 8'd95;
assign alignedB_2_d1 = 8'd95;
assign alignedB_2_we0 = alignedB_2_we0_local;
assign alignedB_2_we1 = alignedB_2_we1_local;
assign alignedB_3_address0 = zext_ln86_reg_413;
assign alignedB_3_address1 = zext_ln18_fu_336_p1;
assign alignedB_3_ce0 = alignedB_3_ce0_local;
assign alignedB_3_ce1 = alignedB_3_ce1_local;
assign alignedB_3_d0 = 8'd95;
assign alignedB_3_d1 = 8'd95;
assign alignedB_3_we0 = alignedB_3_we0_local;
assign alignedB_3_we1 = alignedB_3_we1_local;
assign alignedB_4_address0 = zext_ln86_reg_413;
assign alignedB_4_address1 = zext_ln18_fu_336_p1;
assign alignedB_4_ce0 = alignedB_4_ce0_local;
assign alignedB_4_ce1 = alignedB_4_ce1_local;
assign alignedB_4_d0 = 8'd95;
assign alignedB_4_d1 = 8'd95;
assign alignedB_4_we0 = alignedB_4_we0_local;
assign alignedB_4_we1 = alignedB_4_we1_local;
assign alignedB_5_address0 = zext_ln86_reg_413;
assign alignedB_5_address1 = zext_ln18_fu_336_p1;
assign alignedB_5_ce0 = alignedB_5_ce0_local;
assign alignedB_5_ce1 = alignedB_5_ce1_local;
assign alignedB_5_d0 = 8'd95;
assign alignedB_5_d1 = 8'd95;
assign alignedB_5_we0 = alignedB_5_we0_local;
assign alignedB_5_we1 = alignedB_5_we1_local;
assign alignedB_6_address0 = zext_ln86_reg_413;
assign alignedB_6_address1 = zext_ln18_fu_336_p1;
assign alignedB_6_ce0 = alignedB_6_ce0_local;
assign alignedB_6_ce1 = alignedB_6_ce1_local;
assign alignedB_6_d0 = 8'd95;
assign alignedB_6_d1 = 8'd95;
assign alignedB_6_we0 = alignedB_6_we0_local;
assign alignedB_6_we1 = alignedB_6_we1_local;
assign alignedB_7_address0 = zext_ln86_reg_413;
assign alignedB_7_address1 = zext_ln18_fu_336_p1;
assign alignedB_7_ce0 = alignedB_7_ce0_local;
assign alignedB_7_ce1 = alignedB_7_ce1_local;
assign alignedB_7_d0 = 8'd95;
assign alignedB_7_d1 = 8'd95;
assign alignedB_7_we0 = alignedB_7_we0_local;
assign alignedB_7_we1 = alignedB_7_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln86_1_fu_378_p2 = (($signed(tmp_1_fu_368_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln86_fu_316_p2 = (($signed(tmp_fu_306_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign lshr_ln18_2_fu_326_p4 = {{ap_sig_allocacmp_b_str_idx_2[7:3]}};
assign lshr_ln_fu_354_p4 = {{add_ln86_fu_348_p2[7:3]}};
assign tmp_1_fu_368_p4 = {{add_ln86_fu_348_p2[31:8]}};
assign tmp_fu_306_p4 = {{ap_sig_allocacmp_b_str_idx_2[31:8]}};
assign trunc_ln86_fu_322_p1 = ap_sig_allocacmp_b_str_idx_2[2:0];
assign zext_ln18_fu_336_p1 = lshr_ln18_2_fu_326_p4;
assign zext_ln86_fu_364_p1 = lshr_ln_fu_354_p4;
always @ (posedge ap_clk) begin
    zext_ln86_reg_413[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 
