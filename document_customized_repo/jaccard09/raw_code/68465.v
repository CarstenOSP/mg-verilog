module ms_mergesort_merge_Pipeline_merge_label1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,start_r,m,a_address0,a_ce0,a_q0,a_address1,a_ce1,a_q1,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1); 
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
input  [31:0] start_r;
input  [31:0] m;
output  [10:0] a_address0;
output   a_ce0;
input  [31:0] a_q0;
output  [10:0] a_address1;
output   a_ce1;
input  [31:0] a_q1;
output  [10:0] temp_address0;
output   temp_ce0;
output   temp_we0;
output  [31:0] temp_d0;
output  [10:0] temp_address1;
output   temp_ce1;
output   temp_we1;
output  [31:0] temp_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln7_7_reg_462;
reg   [0:0] icmp_ln7_6_reg_453;
reg   [0:0] icmp_ln7_5_reg_444;
reg   [0:0] icmp_ln7_4_reg_435;
reg   [0:0] icmp_ln7_3_reg_421;
reg   [0:0] icmp_ln7_2_reg_407;
reg   [0:0] icmp_ln7_1_reg_393;
reg   [0:0] icmp_ln7_reg_374;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] i_19_reg_363;
wire   [0:0] icmp_ln7_fu_218_p2;
wire   [63:0] zext_ln7_fu_224_p1;
reg   [63:0] zext_ln7_reg_378;
wire   [63:0] zext_ln7_1_fu_239_p1;
reg   [63:0] zext_ln7_1_reg_388;
wire   [0:0] icmp_ln7_1_fu_244_p2;
wire   [63:0] zext_ln7_2_fu_255_p1;
reg   [63:0] zext_ln7_2_reg_402;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln7_2_fu_260_p2;
wire   [63:0] zext_ln7_3_fu_270_p1;
reg   [63:0] zext_ln7_3_reg_416;
wire   [0:0] icmp_ln7_3_fu_275_p2;
wire   [31:0] add_ln7_3_fu_280_p2;
reg   [31:0] add_ln7_3_reg_430;
wire   [0:0] icmp_ln7_4_fu_285_p2;
wire   [31:0] add_ln7_4_fu_290_p2;
reg   [31:0] add_ln7_4_reg_439;
wire   [0:0] icmp_ln7_5_fu_295_p2;
wire   [31:0] add_ln7_5_fu_300_p2;
reg   [31:0] add_ln7_5_reg_448;
wire   [0:0] icmp_ln7_6_fu_305_p2;
wire   [31:0] add_ln7_6_fu_310_p2;
reg   [31:0] add_ln7_6_reg_457;
wire   [0:0] icmp_ln7_7_fu_315_p2;
wire   [63:0] zext_ln7_4_fu_330_p1;
reg   [63:0] zext_ln7_4_reg_466;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] zext_ln7_5_fu_334_p1;
reg   [63:0] zext_ln7_5_reg_476;
wire   [63:0] zext_ln7_6_fu_338_p1;
reg   [63:0] zext_ln7_6_reg_486;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] zext_ln7_7_fu_342_p1;
reg   [63:0] zext_ln7_7_reg_496;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage3;
reg    ap_predicate_pred222_state4;
reg    ap_predicate_pred225_state4;
reg    ap_predicate_pred241_state5;
reg    ap_predicate_pred246_state5;
reg   [31:0] i_fu_46;
wire   [31:0] add_ln7_7_fu_320_p2;
wire    ap_loop_init;
reg   [31:0] ap_sig_allocacmp_i_19;
reg    a_ce1_local;
reg   [10:0] a_address1_local;
reg    a_ce0_local;
reg   [10:0] a_address0_local;
reg    temp_we1_local;
reg    temp_ce1_local;
reg   [10:0] temp_address1_local;
reg    temp_we0_local;
reg    temp_ce0_local;
reg   [10:0] temp_address0_local;
wire   [10:0] trunc_ln7_fu_229_p1;
wire   [10:0] add_ln7_fu_233_p2;
wire   [31:0] add_ln7_1_fu_250_p2;
wire   [31:0] add_ln7_2_fu_265_p2;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_46 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_46 <= start_r;
    end else if (((icmp_ln7_reg_374 == 1'd0) & (icmp_ln7_1_reg_393 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln7_7_fu_315_p2 == 1'd0) & (icmp_ln7_6_fu_305_p2 == 1'd0) & (icmp_ln7_5_fu_295_p2 == 1'd0) & (icmp_ln7_4_fu_285_p2 == 1'd0) & (icmp_ln7_3_fu_275_p2 == 1'd0) & (icmp_ln7_2_fu_260_p2 == 1'd0))) begin
        i_fu_46 <= add_ln7_7_fu_320_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln7_3_reg_430 <= add_ln7_3_fu_280_p2;
        add_ln7_4_reg_439 <= add_ln7_4_fu_290_p2;
        add_ln7_5_reg_448 <= add_ln7_5_fu_300_p2;
        add_ln7_6_reg_457 <= add_ln7_6_fu_310_p2;
        icmp_ln7_2_reg_407 <= icmp_ln7_2_fu_260_p2;
        icmp_ln7_3_reg_421 <= icmp_ln7_3_fu_275_p2;
        icmp_ln7_4_reg_435 <= icmp_ln7_4_fu_285_p2;
        icmp_ln7_5_reg_444 <= icmp_ln7_5_fu_295_p2;
        icmp_ln7_6_reg_453 <= icmp_ln7_6_fu_305_p2;
        icmp_ln7_7_reg_462 <= icmp_ln7_7_fu_315_p2;
        zext_ln7_2_reg_402[31 : 0] <= zext_ln7_2_fu_255_p1[31 : 0];
        zext_ln7_3_reg_416[31 : 0] <= zext_ln7_3_fu_270_p1[31 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_predicate_pred222_state4 <= ((icmp_ln7_reg_374 == 1'd0) & (icmp_ln7_1_reg_393 == 1'd1) & (icmp_ln7_2_reg_407 == 1'd0) & (icmp_ln7_3_reg_421 == 1'd0) & (icmp_ln7_4_reg_435 == 1'd0));
        ap_predicate_pred225_state4 <= ((icmp_ln7_reg_374 == 1'd0) & (icmp_ln7_1_reg_393 == 1'd1) & (icmp_ln7_2_reg_407 == 1'd0) & (icmp_ln7_3_reg_421 == 1'd0) & (icmp_ln7_4_reg_435 == 1'd0) & (icmp_ln7_5_reg_444 == 1'd0));
        zext_ln7_4_reg_466[31 : 0] <= zext_ln7_4_fu_330_p1[31 : 0];
        zext_ln7_5_reg_476[31 : 0] <= zext_ln7_5_fu_334_p1[31 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_predicate_pred241_state5 <= ((icmp_ln7_reg_374 == 1'd0) & (icmp_ln7_1_reg_393 == 1'd1) & (icmp_ln7_2_reg_407 == 1'd0) & (icmp_ln7_3_reg_421 == 1'd0) & (icmp_ln7_4_reg_435 == 1'd0) & (icmp_ln7_5_reg_444 == 1'd0) & (icmp_ln7_6_reg_453 == 1'd0));
        ap_predicate_pred246_state5 <= ((icmp_ln7_reg_374 == 1'd0) & (icmp_ln7_1_reg_393 == 1'd1) & (icmp_ln7_2_reg_407 == 1'd0) & (icmp_ln7_3_reg_421 == 1'd0) & (icmp_ln7_4_reg_435 == 1'd0) & (icmp_ln7_5_reg_444 == 1'd0) & (icmp_ln7_6_reg_453 == 1'd0) & (icmp_ln7_7_reg_462 == 1'd0));
        zext_ln7_6_reg_486[31 : 0] <= zext_ln7_6_fu_338_p1[31 : 0];
        zext_ln7_7_reg_496[31 : 0] <= zext_ln7_7_fu_342_p1[31 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_19_reg_363 <= ap_sig_allocacmp_i_19;
        icmp_ln7_1_reg_393 <= icmp_ln7_1_fu_244_p2;
        icmp_ln7_reg_374 <= icmp_ln7_fu_218_p2;
        zext_ln7_1_reg_388[10 : 0] <= zext_ln7_1_fu_239_p1[10 : 0];
        zext_ln7_reg_378[31 : 0] <= zext_ln7_fu_224_p1[31 : 0];
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            a_address0_local = zext_ln7_7_fu_342_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            a_address0_local = zext_ln7_5_fu_334_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            a_address0_local = zext_ln7_3_fu_270_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            a_address0_local = zext_ln7_1_fu_239_p1;
        end else begin
            a_address0_local = 'bx;
        end
    end else begin
        a_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            a_address1_local = zext_ln7_6_fu_338_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            a_address1_local = zext_ln7_4_fu_330_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            a_address1_local = zext_ln7_2_fu_255_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            a_address1_local = zext_ln7_fu_224_p1;
        end else begin
            a_address1_local = 'bx;
        end
    end else begin
        a_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_ce0_local = 1'b1;
    end else begin
        a_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        a_ce1_local = 1'b1;
    end else begin
        a_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & ((icmp_ln7_reg_374 == 1'd1) | ((icmp_ln7_1_reg_393 == 1'd0) | ((icmp_ln7_2_reg_407 == 1'd1) | ((icmp_ln7_3_reg_421 == 1'd1) | ((icmp_ln7_4_reg_435 == 1'd1) | ((icmp_ln7_5_reg_444 == 1'd1) | ((icmp_ln7_6_reg_453 == 1'd1) | (icmp_ln7_7_reg_462 == 1'd1)))))))))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln7_reg_374 == 1'd1) | ((icmp_ln7_1_reg_393 == 1'd0) | ((icmp_ln7_2_reg_407 == 1'd1) | ((icmp_ln7_3_reg_421 == 1'd1) | ((icmp_ln7_4_reg_435 == 1'd1) | ((icmp_ln7_5_reg_444 == 1'd1) | ((icmp_ln7_6_reg_453 == 1'd1) | (icmp_ln7_7_reg_462 == 1'd1)))))))))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_19 = start_r;
    end else begin
        ap_sig_allocacmp_i_19 = i_fu_46;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address0_local = zext_ln7_7_reg_496;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_address0_local = zext_ln7_5_reg_476;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_address0_local = zext_ln7_3_reg_416;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_address0_local = zext_ln7_1_reg_388;
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_address1_local = zext_ln7_6_reg_486;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_address1_local = zext_ln7_4_reg_466;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_address1_local = zext_ln7_2_reg_402;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_address1_local = zext_ln7_reg_378;
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred246_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln7_reg_374 == 1'd0) & (icmp_ln7_1_reg_393 == 1'd1) & (icmp_ln7_2_reg_407 == 1'd0) & (icmp_ln7_3_reg_421 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln7_reg_374 == 1'd0) & (icmp_ln7_1_reg_393 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred225_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (ap_predicate_pred241_state5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln7_reg_374 == 1'd0) & (icmp_ln7_1_reg_393 == 1'd1) & (icmp_ln7_2_reg_407 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln7_reg_374 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_predicate_pred222_state4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        temp_we1_local = 1'b1;
    end else begin
        temp_we1_local = 1'b0;
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
assign a_address0 = a_address0_local;
assign a_address1 = a_address1_local;
assign a_ce0 = a_ce0_local;
assign a_ce1 = a_ce1_local;
assign add_ln7_1_fu_250_p2 = (i_19_reg_363 + 32'd2);
assign add_ln7_2_fu_265_p2 = (i_19_reg_363 + 32'd3);
assign add_ln7_3_fu_280_p2 = (i_19_reg_363 + 32'd4);
assign add_ln7_4_fu_290_p2 = (i_19_reg_363 + 32'd5);
assign add_ln7_5_fu_300_p2 = (i_19_reg_363 + 32'd6);
assign add_ln7_6_fu_310_p2 = (i_19_reg_363 + 32'd7);
assign add_ln7_7_fu_320_p2 = (i_19_reg_363 + 32'd8);
assign add_ln7_fu_233_p2 = (trunc_ln7_fu_229_p1 + 11'd1);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign icmp_ln7_1_fu_244_p2 = (($signed(ap_sig_allocacmp_i_19) < $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_2_fu_260_p2 = (($signed(add_ln7_1_fu_250_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_3_fu_275_p2 = (($signed(add_ln7_2_fu_265_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_4_fu_285_p2 = (($signed(add_ln7_3_fu_280_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_5_fu_295_p2 = (($signed(add_ln7_4_fu_290_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_6_fu_305_p2 = (($signed(add_ln7_5_fu_300_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_7_fu_315_p2 = (($signed(add_ln7_6_fu_310_p2) > $signed(m)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_218_p2 = (($signed(ap_sig_allocacmp_i_19) > $signed(m)) ? 1'b1 : 1'b0);
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign temp_d0 = a_q0;
assign temp_d1 = a_q1;
assign temp_we0 = temp_we0_local;
assign temp_we1 = temp_we1_local;
assign trunc_ln7_fu_229_p1 = ap_sig_allocacmp_i_19[10:0];
assign zext_ln7_1_fu_239_p1 = add_ln7_fu_233_p2;
assign zext_ln7_2_fu_255_p1 = add_ln7_1_fu_250_p2;
assign zext_ln7_3_fu_270_p1 = add_ln7_2_fu_265_p2;
assign zext_ln7_4_fu_330_p1 = add_ln7_3_reg_430;
assign zext_ln7_5_fu_334_p1 = add_ln7_4_reg_439;
assign zext_ln7_6_fu_338_p1 = add_ln7_5_reg_448;
assign zext_ln7_7_fu_342_p1 = add_ln7_6_reg_457;
assign zext_ln7_fu_224_p1 = ap_sig_allocacmp_i_19;
always @ (posedge ap_clk) begin
    zext_ln7_reg_378[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_1_reg_388[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln7_2_reg_402[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_3_reg_416[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_4_reg_466[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_5_reg_476[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_6_reg_486[63:32] <= 32'b00000000000000000000000000000000;
    zext_ln7_7_reg_496[63:32] <= 32'b00000000000000000000000000000000;
end
endmodule 