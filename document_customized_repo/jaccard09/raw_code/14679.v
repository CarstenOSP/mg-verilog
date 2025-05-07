module needwun_needwun_Pipeline_pad_a (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_str_idx_5,alignedA_0_address0,alignedA_0_ce0,alignedA_0_we0,alignedA_0_d0,alignedA_0_address1,alignedA_0_ce1,alignedA_0_we1,alignedA_0_d1,alignedA_3_address0,alignedA_3_ce0,alignedA_3_we0,alignedA_3_d0,alignedA_3_address1,alignedA_3_ce1,alignedA_3_we1,alignedA_3_d1,alignedA_2_address0,alignedA_2_ce0,alignedA_2_we0,alignedA_2_d0,alignedA_2_address1,alignedA_2_ce1,alignedA_2_we1,alignedA_2_d1,alignedA_1_address0,alignedA_1_ce0,alignedA_1_we0,alignedA_1_d0,alignedA_1_address1,alignedA_1_ce1,alignedA_1_we1,alignedA_1_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] b_str_idx_5;
output  [5:0] alignedA_0_address0;
output   alignedA_0_ce0;
output   alignedA_0_we0;
output  [7:0] alignedA_0_d0;
output  [5:0] alignedA_0_address1;
output   alignedA_0_ce1;
output   alignedA_0_we1;
output  [7:0] alignedA_0_d1;
output  [5:0] alignedA_3_address0;
output   alignedA_3_ce0;
output   alignedA_3_we0;
output  [7:0] alignedA_3_d0;
output  [5:0] alignedA_3_address1;
output   alignedA_3_ce1;
output   alignedA_3_we1;
output  [7:0] alignedA_3_d1;
output  [5:0] alignedA_2_address0;
output   alignedA_2_ce0;
output   alignedA_2_we0;
output  [7:0] alignedA_2_d0;
output  [5:0] alignedA_2_address1;
output   alignedA_2_ce1;
output   alignedA_2_we1;
output  [7:0] alignedA_2_d1;
output  [5:0] alignedA_1_address0;
output   alignedA_1_ce0;
output   alignedA_1_we0;
output  [7:0] alignedA_1_d0;
output  [5:0] alignedA_1_address1;
output   alignedA_1_ce1;
output   alignedA_1_we1;
output  [7:0] alignedA_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln83_3_fu_388_p2;
wire   [0:0] icmp_ln83_2_fu_352_p2;
wire   [0:0] icmp_ln83_1_fu_316_p2;
wire   [0:0] icmp_ln83_fu_258_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] a_str_idx_reg_411;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln83_reg_416;
wire   [1:0] trunc_ln83_fu_264_p1;
reg   [1:0] trunc_ln83_reg_420;
wire   [63:0] zext_ln83_fu_302_p1;
reg   [63:0] zext_ln83_reg_424;
reg   [0:0] icmp_ln83_1_reg_432;
wire   [63:0] zext_ln83_1_fu_338_p1;
reg   [63:0] zext_ln83_1_reg_436;
reg   [0:0] icmp_ln83_2_reg_444;
wire   [63:0] zext_ln83_2_fu_374_p1;
reg   [63:0] zext_ln83_2_reg_448;
reg   [0:0] icmp_ln83_3_reg_456;
wire   [63:0] zext_ln18_fu_278_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] a_str_idx_3_fu_58;
wire   [31:0] add_ln83_3_fu_394_p2;
reg   [31:0] ap_sig_allocacmp_a_str_idx;
wire    ap_loop_init;
reg    alignedA_2_we1_local;
reg    alignedA_2_ce1_local;
reg    alignedA_2_we0_local;
reg    alignedA_2_ce0_local;
reg   [5:0] alignedA_2_address0_local;
reg    alignedA_1_we1_local;
reg    alignedA_1_ce1_local;
reg    alignedA_1_we0_local;
reg    alignedA_1_ce0_local;
reg   [5:0] alignedA_1_address0_local;
reg    alignedA_0_we1_local;
reg    alignedA_0_ce1_local;
reg    alignedA_0_we0_local;
reg    alignedA_0_ce0_local;
reg   [5:0] alignedA_0_address0_local;
reg    alignedA_3_we1_local;
reg    alignedA_3_ce1_local;
reg    alignedA_3_we0_local;
reg    alignedA_3_ce0_local;
reg   [5:0] alignedA_3_address0_local;
wire   [23:0] tmp_fu_248_p4;
wire   [5:0] lshr_ln18_1_fu_268_p4;
wire   [31:0] add_ln83_fu_286_p2;
wire   [5:0] lshr_ln_fu_292_p4;
wire   [23:0] tmp_4_fu_306_p4;
wire   [31:0] add_ln83_1_fu_322_p2;
wire   [5:0] lshr_ln83_1_fu_328_p4;
wire   [23:0] tmp_5_fu_342_p4;
wire   [31:0] add_ln83_2_fu_358_p2;
wire   [5:0] lshr_ln83_2_fu_364_p4;
wire   [23:0] tmp_6_fu_378_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_408;
reg    ap_condition_415;
reg    ap_condition_412;
reg    ap_condition_421;
reg    ap_condition_425;
reg    ap_condition_429;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 a_str_idx_3_fu_58 = 32'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            a_str_idx_3_fu_58 <= b_str_idx_5;
        end else if ((1'b1 == ap_condition_408)) begin
            a_str_idx_3_fu_58 <= add_ln83_3_fu_394_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        a_str_idx_reg_411 <= ap_sig_allocacmp_a_str_idx;
        icmp_ln83_1_reg_432 <= icmp_ln83_1_fu_316_p2;
        icmp_ln83_2_reg_444 <= icmp_ln83_2_fu_352_p2;
        icmp_ln83_3_reg_456 <= icmp_ln83_3_fu_388_p2;
        icmp_ln83_reg_416 <= icmp_ln83_fu_258_p2;
        trunc_ln83_reg_420 <= trunc_ln83_fu_264_p1;
        zext_ln83_1_reg_436[5 : 0] <= zext_ln83_1_fu_338_p1[5 : 0];
        zext_ln83_2_reg_448[5 : 0] <= zext_ln83_2_fu_374_p1[5 : 0];
        zext_ln83_reg_424[5 : 0] <= zext_ln83_fu_302_p1[5 : 0];
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_412)) begin
        if ((1'b1 == ap_condition_415)) begin
            alignedA_0_address0_local = zext_ln83_2_reg_448;
        end else if (((icmp_ln83_2_reg_444 == 1'd1) & (trunc_ln83_reg_420 == 2'd2))) begin
            alignedA_0_address0_local = zext_ln83_1_reg_436;
        end else if ((trunc_ln83_reg_420 == 2'd3)) begin
            alignedA_0_address0_local = zext_ln83_reg_424;
        end else begin
            alignedA_0_address0_local = 'bx;
        end
    end else begin
        alignedA_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd1) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd2) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd3) & (icmp_ln83_reg_416 == 1'd1)))) begin
        alignedA_0_ce0_local = 1'b1;
    end else begin
        alignedA_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_0_ce1_local = 1'b1;
    end else begin
        alignedA_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd1) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd2) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd3) & (icmp_ln83_reg_416 == 1'd1)))) begin
        alignedA_0_we0_local = 1'b1;
    end else begin
        alignedA_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln83_fu_258_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_fu_264_p1 == 2'd0))) begin
        alignedA_0_we1_local = 1'b1;
    end else begin
        alignedA_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_412)) begin
        if ((1'b1 == ap_condition_421)) begin
            alignedA_1_address0_local = zext_ln83_2_reg_448;
        end else if (((icmp_ln83_2_reg_444 == 1'd1) & (trunc_ln83_reg_420 == 2'd3))) begin
            alignedA_1_address0_local = zext_ln83_1_reg_436;
        end else if ((trunc_ln83_reg_420 == 2'd0)) begin
            alignedA_1_address0_local = zext_ln83_reg_424;
        end else begin
            alignedA_1_address0_local = 'bx;
        end
    end else begin
        alignedA_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd2) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd3) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd0) & (icmp_ln83_reg_416 == 1'd1)))) begin
        alignedA_1_ce0_local = 1'b1;
    end else begin
        alignedA_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_1_ce1_local = 1'b1;
    end else begin
        alignedA_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd2) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd3) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd0) & (icmp_ln83_reg_416 == 1'd1)))) begin
        alignedA_1_we0_local = 1'b1;
    end else begin
        alignedA_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln83_fu_258_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_fu_264_p1 == 2'd1))) begin
        alignedA_1_we1_local = 1'b1;
    end else begin
        alignedA_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_412)) begin
        if ((1'b1 == ap_condition_425)) begin
            alignedA_2_address0_local = zext_ln83_2_reg_448;
        end else if (((icmp_ln83_2_reg_444 == 1'd1) & (trunc_ln83_reg_420 == 2'd0))) begin
            alignedA_2_address0_local = zext_ln83_1_reg_436;
        end else if ((trunc_ln83_reg_420 == 2'd1)) begin
            alignedA_2_address0_local = zext_ln83_reg_424;
        end else begin
            alignedA_2_address0_local = 'bx;
        end
    end else begin
        alignedA_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd3) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd0) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd1) & (icmp_ln83_reg_416 == 1'd1)))) begin
        alignedA_2_ce0_local = 1'b1;
    end else begin
        alignedA_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_2_ce1_local = 1'b1;
    end else begin
        alignedA_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd3) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd0) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd1) & (icmp_ln83_reg_416 == 1'd1)))) begin
        alignedA_2_we0_local = 1'b1;
    end else begin
        alignedA_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln83_fu_258_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_fu_264_p1 == 2'd2))) begin
        alignedA_2_we1_local = 1'b1;
    end else begin
        alignedA_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_412)) begin
        if ((1'b1 == ap_condition_429)) begin
            alignedA_3_address0_local = zext_ln83_2_reg_448;
        end else if (((icmp_ln83_2_reg_444 == 1'd1) & (trunc_ln83_reg_420 == 2'd1))) begin
            alignedA_3_address0_local = zext_ln83_1_reg_436;
        end else if ((trunc_ln83_reg_420 == 2'd2)) begin
            alignedA_3_address0_local = zext_ln83_reg_424;
        end else begin
            alignedA_3_address0_local = 'bx;
        end
    end else begin
        alignedA_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd0) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd1) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd2) & (icmp_ln83_reg_416 == 1'd1)))) begin
        alignedA_3_ce0_local = 1'b1;
    end else begin
        alignedA_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_3_ce1_local = 1'b1;
    end else begin
        alignedA_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd0) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd1) & (icmp_ln83_reg_416 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_432 == 1'd1) & (trunc_ln83_reg_420 == 2'd2) & (icmp_ln83_reg_416 == 1'd1)))) begin
        alignedA_3_we0_local = 1'b1;
    end else begin
        alignedA_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln83_fu_258_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln83_fu_264_p1 == 2'd3))) begin
        alignedA_3_we1_local = 1'b1;
    end else begin
        alignedA_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln83_fu_258_p2 == 1'd0) | ((icmp_ln83_1_fu_316_p2 == 1'd0) | ((icmp_ln83_2_fu_352_p2 == 1'd0) | (icmp_ln83_3_fu_388_p2 == 1'd0)))))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            ap_sig_allocacmp_a_str_idx = b_str_idx_5;
        end else if ((1'b1 == ap_condition_408)) begin
            ap_sig_allocacmp_a_str_idx = add_ln83_3_fu_394_p2;
        end else begin
            ap_sig_allocacmp_a_str_idx = a_str_idx_3_fu_58;
        end
    end else begin
        ap_sig_allocacmp_a_str_idx = a_str_idx_3_fu_58;
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
assign add_ln83_1_fu_322_p2 = (ap_sig_allocacmp_a_str_idx + 32'd2);
assign add_ln83_2_fu_358_p2 = (ap_sig_allocacmp_a_str_idx + 32'd3);
assign add_ln83_3_fu_394_p2 = (a_str_idx_reg_411 + 32'd4);
assign add_ln83_fu_286_p2 = (ap_sig_allocacmp_a_str_idx + 32'd1);
assign alignedA_0_address0 = alignedA_0_address0_local;
assign alignedA_0_address1 = zext_ln18_fu_278_p1;
assign alignedA_0_ce0 = alignedA_0_ce0_local;
assign alignedA_0_ce1 = alignedA_0_ce1_local;
assign alignedA_0_d0 = 8'd95;
assign alignedA_0_d1 = 8'd95;
assign alignedA_0_we0 = alignedA_0_we0_local;
assign alignedA_0_we1 = alignedA_0_we1_local;
assign alignedA_1_address0 = alignedA_1_address0_local;
assign alignedA_1_address1 = zext_ln18_fu_278_p1;
assign alignedA_1_ce0 = alignedA_1_ce0_local;
assign alignedA_1_ce1 = alignedA_1_ce1_local;
assign alignedA_1_d0 = 8'd95;
assign alignedA_1_d1 = 8'd95;
assign alignedA_1_we0 = alignedA_1_we0_local;
assign alignedA_1_we1 = alignedA_1_we1_local;
assign alignedA_2_address0 = alignedA_2_address0_local;
assign alignedA_2_address1 = zext_ln18_fu_278_p1;
assign alignedA_2_ce0 = alignedA_2_ce0_local;
assign alignedA_2_ce1 = alignedA_2_ce1_local;
assign alignedA_2_d0 = 8'd95;
assign alignedA_2_d1 = 8'd95;
assign alignedA_2_we0 = alignedA_2_we0_local;
assign alignedA_2_we1 = alignedA_2_we1_local;
assign alignedA_3_address0 = alignedA_3_address0_local;
assign alignedA_3_address1 = zext_ln18_fu_278_p1;
assign alignedA_3_ce0 = alignedA_3_ce0_local;
assign alignedA_3_ce1 = alignedA_3_ce1_local;
assign alignedA_3_d0 = 8'd95;
assign alignedA_3_d1 = 8'd95;
assign alignedA_3_we0 = alignedA_3_we0_local;
assign alignedA_3_we1 = alignedA_3_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_408 = ((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (icmp_ln83_1_reg_432 == 1'd1) & (icmp_ln83_reg_416 == 1'd1));
end
always @ (*) begin
    ap_condition_412 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_1_reg_432 == 1'd1) & (icmp_ln83_reg_416 == 1'd1));
end
always @ (*) begin
    ap_condition_415 = ((icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (trunc_ln83_reg_420 == 2'd1));
end
always @ (*) begin
    ap_condition_421 = ((icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (trunc_ln83_reg_420 == 2'd2));
end
always @ (*) begin
    ap_condition_425 = ((icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (trunc_ln83_reg_420 == 2'd3));
end
always @ (*) begin
    ap_condition_429 = ((icmp_ln83_3_reg_456 == 1'd1) & (icmp_ln83_2_reg_444 == 1'd1) & (trunc_ln83_reg_420 == 2'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln83_1_fu_316_p2 = (($signed(tmp_4_fu_306_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_2_fu_352_p2 = (($signed(tmp_5_fu_342_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_3_fu_388_p2 = (($signed(tmp_6_fu_378_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign icmp_ln83_fu_258_p2 = (($signed(tmp_fu_248_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign lshr_ln18_1_fu_268_p4 = {{ap_sig_allocacmp_a_str_idx[7:2]}};
assign lshr_ln83_1_fu_328_p4 = {{add_ln83_1_fu_322_p2[7:2]}};
assign lshr_ln83_2_fu_364_p4 = {{add_ln83_2_fu_358_p2[7:2]}};
assign lshr_ln_fu_292_p4 = {{add_ln83_fu_286_p2[7:2]}};
assign tmp_4_fu_306_p4 = {{add_ln83_fu_286_p2[31:8]}};
assign tmp_5_fu_342_p4 = {{add_ln83_1_fu_322_p2[31:8]}};
assign tmp_6_fu_378_p4 = {{add_ln83_2_fu_358_p2[31:8]}};
assign tmp_fu_248_p4 = {{ap_sig_allocacmp_a_str_idx[31:8]}};
assign trunc_ln83_fu_264_p1 = ap_sig_allocacmp_a_str_idx[1:0];
assign zext_ln18_fu_278_p1 = lshr_ln18_1_fu_268_p4;
assign zext_ln83_1_fu_338_p1 = lshr_ln83_1_fu_328_p4;
assign zext_ln83_2_fu_374_p1 = lshr_ln83_2_fu_364_p4;
assign zext_ln83_fu_302_p1 = lshr_ln_fu_292_p4;
always @ (posedge ap_clk) begin
    zext_ln83_reg_424[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_1_reg_436[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
    zext_ln83_2_reg_448[63:6] <= 58'b0000000000000000000000000000000000000000000000000000000000;
end
endmodule 