module needwun_needwun_Pipeline_trace (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,SEQA_address0,SEQA_ce0,SEQA_q0,SEQB_address0,SEQB_ce0,SEQB_q0,ptr_address0,ptr_ce0,ptr_q0,alignedA_address0,alignedA_ce0,alignedA_we0,alignedA_d0,alignedB_address0,alignedB_ce0,alignedB_we0,alignedB_d0,b_str_idx_2_out,b_str_idx_2_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] SEQA_address0;
output   SEQA_ce0;
input  [7:0] SEQA_q0;
output  [6:0] SEQB_address0;
output   SEQB_ce0;
input  [7:0] SEQB_q0;
output  [14:0] ptr_address0;
output   ptr_ce0;
input  [7:0] ptr_q0;
output  [7:0] alignedA_address0;
output   alignedA_ce0;
output   alignedA_we0;
output  [7:0] alignedA_d0;
output  [7:0] alignedB_address0;
output   alignedB_ce0;
output   alignedB_we0;
output  [7:0] alignedB_d0;
output  [31:0] b_str_idx_2_out;
output   b_str_idx_2_out_ap_vld;
reg ap_idle;
reg b_str_idx_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] or_ln62_fu_193_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] b_idx_1_reg_320;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] a_idx_1_reg_325;
reg   [0:0] or_ln62_reg_330;
wire   [7:0] ptr_q0_local;
reg   [7:0] ptr_load_reg_339;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] alignedA_addr_reg_343;
reg   [7:0] alignedB_addr_reg_348;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln64_fu_231_p1;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln71_fu_252_p1;
wire   [63:0] zext_ln65_fu_262_p1;
wire   [63:0] zext_ln66_fu_267_p1;
wire   [63:0] zext_ln77_fu_282_p1;
reg   [63:0] a_str_idx_fu_48;
wire   [63:0] add_ln66_fu_246_p2;
wire    ap_loop_init;
reg   [31:0] b_idx_fu_52;
wire   [31:0] grp_fu_155_p2;
reg   [31:0] a_idx_fu_56;
wire   [31:0] grp_fu_150_p2;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage0_01001;
reg    ptr_ce0_local;
reg    SEQA_ce0_local;
reg   [6:0] SEQA_address0_local;
reg    SEQB_ce0_local;
reg   [6:0] SEQB_address0_local;
reg    alignedA_we0_local;
reg   [7:0] alignedA_d0_local;
reg    alignedA_ce0_local;
reg    alignedB_we0_local;
reg   [7:0] alignedB_d0_local;
reg    alignedB_ce0_local;
wire   [0:0] icmp_ln62_fu_181_p2;
wire   [0:0] icmp_ln62_1_fu_187_p2;
wire   [7:0] trunc_ln16_fu_207_p1;
wire   [14:0] p_shl_fu_211_p3;
wire   [14:0] trunc_ln18_1_fu_203_p1;
wire   [14:0] r_fu_219_p2;
wire   [14:0] trunc_ln18_fu_199_p1;
wire   [14:0] add_ln64_fu_225_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
reg    ap_done_pending_pp0;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_139;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 a_str_idx_fu_48 = 64'd0;
#0 b_idx_fu_52 = 32'd0;
#0 a_idx_fu_56 = 32'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        a_idx_fu_56 <= 32'd128;
    end else if ((((ptr_q0_local == 8'd92) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ptr_q0_local == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        a_idx_fu_56 <= grp_fu_150_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            a_str_idx_fu_48 <= 64'd0;
        end else if (((or_ln62_reg_330 == 1'd1) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            a_str_idx_fu_48 <= add_ln66_fu_246_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1)))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        b_idx_fu_52 <= 32'd128;
    end else if (((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ptr_q0_local == 8'd92) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        b_idx_fu_52 <= grp_fu_155_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        a_idx_1_reg_325 <= a_idx_fu_56;
        b_idx_1_reg_320 <= b_idx_fu_52;
        or_ln62_reg_330 <= or_ln62_fu_193_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        alignedA_addr_reg_343 <= a_str_idx_fu_48;
        alignedB_addr_reg_348 <= a_str_idx_fu_48;
        ptr_load_reg_339 <= ptr_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((ptr_q0_local == 8'd92)) begin
            SEQA_address0_local = zext_ln65_fu_262_p1;
        end else if ((ptr_q0_local == 8'd60)) begin
            SEQA_address0_local = zext_ln71_fu_252_p1;
        end else begin
            SEQA_address0_local = 'bx;
        end
    end else begin
        SEQA_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((ptr_q0_local == 8'd92) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ptr_q0_local == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQA_ce0_local = 1'b1;
    end else begin
        SEQA_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_139)) begin
        if ((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60))) begin
            SEQB_address0_local = zext_ln77_fu_282_p1;
        end else if ((ptr_q0_local == 8'd92)) begin
            SEQB_address0_local = zext_ln66_fu_267_p1;
        end else begin
            SEQB_address0_local = 'bx;
        end
    end else begin
        SEQB_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(ptr_q0_local == 8'd92) & ~(ptr_q0_local == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ptr_q0_local == 8'd92) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        SEQB_ce0_local = 1'b1;
    end else begin
        SEQB_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(ptr_load_reg_339 == 8'd92) & ~(ptr_load_reg_339 == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ptr_load_reg_339 == 8'd92) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ptr_load_reg_339 == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_ce0_local = 1'b1;
    end else begin
        alignedA_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(ptr_load_reg_339 == 8'd92) & ~(ptr_load_reg_339 == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedA_d0_local = 8'd45;
    end else if ((((ptr_load_reg_339 == 8'd92) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ptr_load_reg_339 == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_d0_local = SEQA_q0;
    end else begin
        alignedA_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(ptr_load_reg_339 == 8'd92) & ~(ptr_load_reg_339 == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ptr_load_reg_339 == 8'd92) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ptr_load_reg_339 == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedA_we0_local = 1'b1;
    end else begin
        alignedA_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(ptr_load_reg_339 == 8'd92) & ~(ptr_load_reg_339 == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ptr_load_reg_339 == 8'd92) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ptr_load_reg_339 == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_ce0_local = 1'b1;
    end else begin
        alignedB_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((~(ptr_load_reg_339 == 8'd92) & ~(ptr_load_reg_339 == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ptr_load_reg_339 == 8'd92) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_d0_local = SEQB_q0;
    end else if (((ptr_load_reg_339 == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        alignedB_d0_local = 8'd45;
    end else begin
        alignedB_d0_local = 'bx;
    end
end
always @ (*) begin
    if (((~(ptr_load_reg_339 == 8'd92) & ~(ptr_load_reg_339 == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ptr_load_reg_339 == 8'd92) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ptr_load_reg_339 == 8'd60) & (or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        alignedB_we0_local = 1'b1;
    end else begin
        alignedB_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_fu_193_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((or_ln62_reg_330 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((or_ln62_reg_330 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        b_str_idx_2_out_ap_vld = 1'b1;
    end else begin
        b_str_idx_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ptr_ce0_local = 1'b1;
    end else begin
        ptr_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((1'b1 == ap_condition_exit_pp0_iter1_stage0) & (ap_idle_pp0_0to0 == 1'b1))) begin
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
assign SEQA_address0 = SEQA_address0_local;
assign SEQA_ce0 = SEQA_ce0_local;
assign SEQB_address0 = SEQB_address0_local;
assign SEQB_ce0 = SEQB_ce0_local;
assign add_ln64_fu_225_p2 = (r_fu_219_p2 + trunc_ln18_fu_199_p1);
assign add_ln66_fu_246_p2 = (a_str_idx_fu_48 + 64'd1);
assign alignedA_address0 = alignedA_addr_reg_343;
assign alignedA_ce0 = alignedA_ce0_local;
assign alignedA_d0 = alignedA_d0_local;
assign alignedA_we0 = alignedA_we0_local;
assign alignedB_address0 = alignedB_addr_reg_348;
assign alignedB_ce0 = alignedB_ce0_local;
assign alignedB_d0 = alignedB_d0_local;
assign alignedB_we0 = alignedB_we0_local;
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_139 = ((or_ln62_reg_330 == 1'd1) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign b_str_idx_2_out = a_str_idx_fu_48[31:0];
assign grp_fu_150_p2 = ($signed(a_idx_1_reg_325) + $signed(32'd4294967295));
assign grp_fu_155_p2 = ($signed(b_idx_1_reg_320) + $signed(32'd4294967295));
assign icmp_ln62_1_fu_187_p2 = (($signed(b_idx_fu_52) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_181_p2 = (($signed(a_idx_fu_56) > $signed(32'd0)) ? 1'b1 : 1'b0);
assign or_ln62_fu_193_p2 = (icmp_ln62_fu_181_p2 | icmp_ln62_1_fu_187_p2);
assign p_shl_fu_211_p3 = {{trunc_ln16_fu_207_p1}, {7'd0}};
assign ptr_address0 = zext_ln64_fu_231_p1;
assign ptr_ce0 = ptr_ce0_local;
assign ptr_q0_local = ptr_q0;
assign r_fu_219_p2 = (p_shl_fu_211_p3 + trunc_ln18_1_fu_203_p1);
assign trunc_ln16_fu_207_p1 = b_idx_fu_52[7:0];
assign trunc_ln18_1_fu_203_p1 = b_idx_fu_52[14:0];
assign trunc_ln18_fu_199_p1 = a_idx_fu_56[14:0];
assign zext_ln64_fu_231_p1 = add_ln64_fu_225_p2;
assign zext_ln65_fu_262_p1 = grp_fu_150_p2;
assign zext_ln66_fu_267_p1 = grp_fu_155_p2;
assign zext_ln71_fu_252_p1 = grp_fu_150_p2;
assign zext_ln77_fu_282_p1 = grp_fu_155_p2;
endmodule 