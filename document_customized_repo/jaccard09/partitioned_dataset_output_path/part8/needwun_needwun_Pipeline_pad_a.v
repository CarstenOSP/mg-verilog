
module needwun_needwun_Pipeline_pad_a (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,b_str_idx_7,alignedA_address0,alignedA_ce0,alignedA_we0,alignedA_d0,alignedA_address1,alignedA_ce1,alignedA_we1,alignedA_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] b_str_idx_7;
output  [7:0] alignedA_address0;
output   alignedA_ce0;
output   alignedA_we0;
output  [7:0] alignedA_d0;
output  [7:0] alignedA_address1;
output   alignedA_ce1;
output   alignedA_we1;
output  [7:0] alignedA_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [0:0] icmp_ln83_7_fu_342_p2;
wire   [0:0] icmp_ln83_6_fu_321_p2;
wire   [0:0] icmp_ln83_5_fu_295_p2;
reg   [0:0] icmp_ln83_4_reg_404;
reg   [0:0] icmp_ln83_3_reg_400;
reg   [0:0] icmp_ln83_2_reg_396;
reg   [0:0] icmp_ln83_1_reg_392;
reg   [0:0] icmp_ln83_reg_379;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] a_str_idx_5_reg_373;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln83_fu_159_p2;
wire   [9:0] trunc_ln83_fu_165_p1;
reg   [9:0] trunc_ln83_reg_383;
wire   [0:0] icmp_ln83_1_fu_190_p2;
wire   [0:0] icmp_ln83_2_fu_217_p2;
wire   [0:0] icmp_ln83_3_fu_243_p2;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln83_4_fu_269_p2;
reg   [0:0] icmp_ln83_5_reg_408;
wire    ap_block_pp0_stage3_11001;
reg   [0:0] icmp_ln83_6_reg_412;
wire   [9:0] add_ln83_6_fu_327_p2;
reg   [9:0] add_ln83_6_reg_416;
reg   [0:0] icmp_ln83_7_reg_421;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln83_1_fu_175_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln83_2_fu_202_p1;
wire   [63:0] zext_ln83_3_fu_228_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln83_4_fu_254_p1;
wire   [63:0] zext_ln83_5_fu_280_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln83_6_fu_306_p1;
wire   [63:0] zext_ln83_fu_348_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln83_7_fu_352_p1;
reg   [31:0] a_str_idx_fu_56;
wire   [31:0] add_ln83_7_fu_356_p2;
wire    ap_block_pp0_stage0_11001;
wire    ap_loop_init;
reg    alignedA_we1_local;
reg    alignedA_ce1_local;
reg   [7:0] alignedA_address1_local;
reg    alignedA_we0_local;
reg    alignedA_ce0_local;
reg   [7:0] alignedA_address0_local;
wire   [23:0] tmp_fu_149_p4;
wire   [9:0] add_ln83_fu_169_p2;
wire   [1:0] tmp_8_fu_180_p4;
wire   [9:0] add_ln83_1_fu_196_p2;
wire   [1:0] tmp_9_fu_207_p4;
wire   [9:0] add_ln83_2_fu_223_p2;
wire   [1:0] tmp_10_fu_233_p4;
wire   [9:0] add_ln83_3_fu_249_p2;
wire   [1:0] tmp_11_fu_259_p4;
wire   [9:0] add_ln83_4_fu_275_p2;
wire   [1:0] tmp_12_fu_285_p4;
wire   [9:0] add_ln83_5_fu_301_p2;
wire   [1:0] tmp_13_fu_311_p4;
wire   [1:0] tmp_14_fu_332_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_465;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_str_idx_fu_56 = 32'd0;
#0 ap_done_reg = 1'b0;
end
needwun_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            a_str_idx_fu_56 <= b_str_idx_7;
        end else if ((1'b1 == ap_condition_465)) begin
            a_str_idx_fu_56 <= add_ln83_7_fu_356_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_str_idx_5_reg_373 <= a_str_idx_fu_56;
        icmp_ln83_1_reg_392 <= icmp_ln83_1_fu_190_p2;
        icmp_ln83_2_reg_396 <= icmp_ln83_2_fu_217_p2;
        icmp_ln83_reg_379 <= icmp_ln83_fu_159_p2;
        trunc_ln83_reg_383 <= trunc_ln83_fu_165_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add_ln83_6_reg_416 <= add_ln83_6_fu_327_p2;
        icmp_ln83_5_reg_408 <= icmp_ln83_5_fu_295_p2;
        icmp_ln83_6_reg_412 <= icmp_ln83_6_fu_321_p2;
        icmp_ln83_7_reg_421 <= icmp_ln83_7_fu_342_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln83_3_reg_400 <= icmp_ln83_3_fu_243_p2;
        icmp_ln83_4_reg_404 <= icmp_ln83_4_fu_269_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_address0_local = zext_ln83_7_fu_352_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        alignedA_address0_local = zext_ln83_6_fu_306_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedA_address0_local = zext_ln83_4_fu_254_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedA_address0_local = zext_ln83_2_fu_202_p1;
    end else begin
        alignedA_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_address1_local = zext_ln83_fu_348_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        alignedA_address1_local = zext_ln83_5_fu_280_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        alignedA_address1_local = zext_ln83_3_fu_228_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedA_address1_local = zext_ln83_1_fu_175_p1;
    end else begin
        alignedA_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedA_ce0_local = 1'b1;
    end else begin
        alignedA_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        alignedA_ce1_local = 1'b1;
    end else begin
        alignedA_ce1_local = 1'b0;
    end
end
always @ (*) begin
if ((((icmp_ln83_reg_379 == 1'd1) & (icmp_ln83_1_reg_392 == 1'd0) & (icmp_ln83_2_reg_396 == 1'd0) & (icmp_ln83_3_reg_400 == 1'd0) & (icmp_ln83_4_reg_404 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln83_7_reg_421 == 1'd0) & (icmp_ln83_6_reg_412 == 1'd0) & (icmp_ln83_5_reg_408 == 1'd0)) | ((icmp_ln83_reg_379 == 1'd1) & (icmp_ln83_1_reg_392 == 1'd0) & (icmp_ln83_2_reg_396 == 1'd0) & (icmp_ln83_3_reg_400 == 1'd0) & (icmp_ln83_4_reg_404 == 1'd0) & (icmp_ln83_5_fu_295_p2 == 1'd0) & (icmp_ln83_6_fu_321_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln83_reg_379 == 1'd1) & (icmp_ln83_1_reg_392 == 1'd0) & (icmp_ln83_2_reg_396 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln83_4_fu_269_p2 == 1'd0) & (icmp_ln83_3_fu_243_p2 == 1'd0)) | ((icmp_ln83_1_fu_190_p2 == 1'd0) & (icmp_ln83_fu_159_p2== 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln83_2_fu_217_p2 == 1'd0)))) begin
        alignedA_we0_local = 1'b1;
    end else begin
        alignedA_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln83_reg_379 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln83_reg_379 == 1'd1) & (icmp_ln83_1_reg_392 == 1'd0) & (icmp_ln83_2_reg_396 == 1'd0) & (icmp_ln83_3_reg_400 == 1'd0) & (icmp_ln83_4_reg_404 == 1'd0) & (icmp_ln83_5_fu_295_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((icmp_ln83_reg_379 == 1'd1) & (icmp_ln83_1_reg_392 == 1'd0) & (icmp_ln83_2_reg_396 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln83_3_fu_243_p2 == 1'd0)) | ((icmp_ln83_1_fu_190_p2 == 1'd0) & (icmp_ln83_fu_159_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_we1_local = 1'b1;
    end else begin
        alignedA_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((icmp_ln83_reg_379 == 1'd0) | ((icmp_ln83_1_reg_392 == 1'd1) | ((icmp_ln83_2_reg_396 == 1'd1) | ((icmp_ln83_3_reg_400 == 1'd1) | ((icmp_ln83_4_reg_404 == 1'd1) | ((icmp_ln83_5_fu_295_p2 == 1'd1) | ((icmp_ln83_6_fu_321_p2 == 1'd1) | (icmp_ln83_7_fu_342_p2 == 1'd1)))))))))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln83_reg_379 == 1'd0) | ((icmp_ln83_1_reg_392 == 1'd1) | ((icmp_ln83_2_reg_396 == 1'd1) | ((icmp_ln83_3_reg_400 == 1'd1) | ((icmp_ln83_4_reg_404 == 1'd1) | ((icmp_ln83_5_reg_408 == 1'd1) | ((icmp_ln83_7_reg_421 == 1'd1) | (icmp_ln83_6_reg_412 == 1'd1)))))))))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln83_1_fu_196_p2 = (trunc_ln83_fu_165_p1 + 10'd2);
assign add_ln83_2_fu_223_p2 = (trunc_ln83_reg_383 + 10'd3);
assign add_ln83_3_fu_249_p2 = (trunc_ln83_reg_383 + 10'd4);
assign add_ln83_4_fu_275_p2 = (trunc_ln83_reg_383 + 10'd5);
assign add_ln83_5_fu_301_p2 = (trunc_ln83_reg_383 + 10'd6);
assign add_ln83_6_fu_327_p2 = (trunc_ln83_reg_383 + 10'd7);
assign add_ln83_7_fu_356_p2 = (a_str_idx_5_reg_373 + 32'd8);
assign add_ln83_fu_169_p2 = (trunc_ln83_fu_165_p1 + 10'd1);
assign alignedA_address0 = alignedA_address0_local;
assign alignedA_address1 = alignedA_address1_local;
assign alignedA_ce0 = alignedA_ce0_local;
assign alignedA_ce1 = alignedA_ce1_local;
assign alignedA_d0 = 8'd95;
assign alignedA_d1 = 8'd95;
assign alignedA_we0 = alignedA_we0_local;
assign alignedA_we1 = alignedA_we1_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_465 = ((icmp_ln83_reg_379 == 1'd1) & (icmp_ln83_1_reg_392 == 1'd0) & (icmp_ln83_2_reg_396 == 1'd0) & (icmp_ln83_3_reg_400 == 1'd0) & (icmp_ln83_4_reg_404 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln83_7_reg_421 == 1'd0) & (icmp_ln83_6_reg_412 == 1'd0) & (icmp_ln83_5_reg_408 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign icmp_ln83_1_fu_190_p2 = ((tmp_8_fu_180_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_2_fu_217_p2 = ((tmp_9_fu_207_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_3_fu_243_p2 = ((tmp_10_fu_233_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_4_fu_269_p2 = ((tmp_11_fu_259_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_5_fu_295_p2 = ((tmp_12_fu_285_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_6_fu_321_p2 = ((tmp_13_fu_311_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_7_fu_342_p2 = ((tmp_14_fu_332_p4 == 2'd1) ? 1'b1 : 1'b0);
assign icmp_ln83_fu_159_p2 = (($signed(tmp_fu_149_p4) < $signed(24'd1)) ? 1'b1 : 1'b0);
assign tmp_10_fu_233_p4 = {{add_ln83_2_fu_223_p2[9:8]}};
assign tmp_11_fu_259_p4 = {{add_ln83_3_fu_249_p2[9:8]}};
assign tmp_12_fu_285_p4 = {{add_ln83_4_fu_275_p2[9:8]}};
assign tmp_13_fu_311_p4 = {{add_ln83_5_fu_301_p2[9:8]}};
assign tmp_14_fu_332_p4 = {{add_ln83_6_fu_327_p2[9:8]}};
assign tmp_8_fu_180_p4 = {{add_ln83_fu_169_p2[9:8]}};
assign tmp_9_fu_207_p4 = {{add_ln83_1_fu_196_p2[9:8]}};
assign tmp_fu_149_p4 = {{a_str_idx_fu_56[31:8]}};
assign trunc_ln83_fu_165_p1 = a_str_idx_fu_56[9:0];
assign zext_ln83_1_fu_175_p1 = add_ln83_fu_169_p2;
assign zext_ln83_2_fu_202_p1 = add_ln83_1_fu_196_p2;
assign zext_ln83_3_fu_228_p1 = add_ln83_2_fu_223_p2;
assign zext_ln83_4_fu_254_p1 = add_ln83_3_fu_249_p2;
assign zext_ln83_5_fu_280_p1 = add_ln83_4_fu_275_p2;
assign zext_ln83_6_fu_306_p1 = add_ln83_5_fu_301_p2;
assign zext_ln83_7_fu_352_p1 = add_ln83_6_reg_416;
assign zext_ln83_fu_348_p1 = a_str_idx_5_reg_373;
endmodule 
