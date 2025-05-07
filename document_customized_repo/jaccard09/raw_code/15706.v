module needwun_needwun_Pipeline_init_col (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,M_1_address0,M_1_ce0,M_1_we0,M_1_d0,M_1_address1,M_1_ce1,M_1_we1,M_1_d1,M_0_address0,M_0_ce0,M_0_we0,M_0_d0,M_0_address1,M_0_ce1,M_0_we1,M_0_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] M_1_address0;
output   M_1_ce0;
output   M_1_we0;
output  [31:0] M_1_d0;
output  [13:0] M_1_address1;
output   M_1_ce1;
output   M_1_we1;
output  [31:0] M_1_d1;
output  [13:0] M_0_address0;
output   M_0_ce0;
output   M_0_we0;
output  [31:0] M_0_d0;
output  [13:0] M_0_address1;
output   M_0_ce1;
output   M_0_we1;
output  [31:0] M_0_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln23_fu_230_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [7:0] b_idx_14_reg_537;
wire    ap_block_pp0_stage0_11001;
wire   [13:0] tmp_fu_198_p3;
reg   [13:0] tmp_reg_545;
reg   [0:0] icmp_ln23_reg_551;
wire   [14:0] add_ln24_8_fu_248_p2;
reg   [14:0] add_ln24_8_reg_555;
wire  signed [7:0] sub_ln24_2_fu_313_p2;
reg  signed [7:0] sub_ln24_2_reg_562;
wire   [3:0] tmp_s_fu_416_p4;
reg   [3:0] tmp_s_reg_568;
wire    ap_block_pp0_stage1_11001;
reg   [13:0] lshr_ln24_4_reg_573;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln24_fu_206_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln24_2_fu_264_p1;
wire   [63:0] zext_ln24_4_fu_308_p1;
wire   [63:0] zext_ln24_5_fu_339_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln24_7_fu_381_p1;
wire   [63:0] zext_ln24_8_fu_411_p1;
wire   [63:0] zext_ln24_10_fu_464_p1;
wire   [63:0] zext_ln24_11_fu_504_p1;
reg   [7:0] b_idx_fu_94;
wire   [7:0] add_ln23_fu_494_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_b_idx_14;
reg    M_0_we1_local;
reg   [31:0] M_0_d1_local;
wire  signed [31:0] sext_ln24_fu_217_p1;
reg    M_0_ce1_local;
reg   [13:0] M_0_address1_local;
reg    M_0_we0_local;
reg   [31:0] M_0_d0_local;
wire  signed [31:0] sext_ln24_2_fu_319_p1;
reg    M_0_ce0_local;
reg   [13:0] M_0_address0_local;
wire  signed [31:0] sext_ln24_4_fu_391_p1;
wire  signed [31:0] sext_ln24_6_fu_474_p1;
reg    M_1_we1_local;
reg   [31:0] M_1_d1_local;
wire  signed [31:0] sext_ln24_1_fu_297_p1;
reg    M_1_ce1_local;
reg   [13:0] M_1_address1_local;
wire  signed [31:0] sext_ln24_3_fu_371_p1;
reg    M_1_we0_local;
reg   [31:0] M_1_d0_local;
wire  signed [31:0] sext_ln24_5_fu_454_p1;
reg    M_1_ce0_local;
reg   [13:0] M_1_address0_local;
wire  signed [31:0] sext_ln24_7_fu_525_p1;
wire   [6:0] lshr_ln1_fu_188_p4;
wire   [7:0] sub_ln24_fu_211_p2;
wire   [7:0] or_ln2_fu_222_p3;
wire   [14:0] p_shl_fu_240_p3;
wire   [14:0] zext_ln24_1_fu_236_p1;
wire   [13:0] lshr_ln24_1_fu_254_p4;
wire   [5:0] tmp_8_fu_269_p4;
wire   [6:0] or_ln24_3_fu_279_p3;
wire   [7:0] zext_ln24_3_fu_287_p1;
wire   [7:0] sub_ln24_1_fu_291_p2;
wire   [13:0] add_ln24_fu_302_p2;
wire   [14:0] add_ln24_1_fu_324_p2;
wire   [13:0] lshr_ln24_2_fu_329_p4;
wire   [4:0] tmp_9_fu_344_p4;
wire   [6:0] or_ln3_fu_353_p3;
wire   [7:0] zext_ln24_6_fu_361_p1;
wire   [7:0] sub_ln24_3_fu_365_p2;
wire   [13:0] add_ln24_2_fu_376_p2;
wire   [7:0] add_ln24_3_fu_386_p2;
wire   [14:0] add_ln24_4_fu_396_p2;
wire   [13:0] lshr_ln24_3_fu_401_p4;
wire   [0:0] tmp_15_fu_425_p3;
wire   [6:0] or_ln24_1_fu_432_p5;
wire   [7:0] zext_ln24_9_fu_444_p1;
wire   [7:0] sub_ln24_4_fu_448_p2;
wire   [13:0] add_ln24_5_fu_459_p2;
wire   [7:0] add_ln24_6_fu_469_p2;
wire   [14:0] add_ln24_7_fu_479_p2;
wire   [6:0] or_ln24_2_fu_508_p3;
wire   [7:0] zext_ln24_12_fu_515_p1;
wire   [7:0] sub_ln24_5_fu_519_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 b_idx_fu_94 = 8'd0;
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
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        b_idx_fu_94 <= 8'd0;
    end else if (((icmp_ln23_reg_551 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        b_idx_fu_94 <= add_ln23_fu_494_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln24_8_reg_555[14 : 1] <= add_ln24_8_fu_248_p2[14 : 1];
        b_idx_14_reg_537 <= ap_sig_allocacmp_b_idx_14;
        icmp_ln23_reg_551 <= icmp_ln23_fu_230_p2;
        sub_ln24_2_reg_562 <= sub_ln24_2_fu_313_p2;
        tmp_reg_545 <= tmp_fu_198_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln24_4_reg_573 <= {{add_ln24_7_fu_479_p2[14:1]}};
        tmp_s_reg_568 <= {{b_idx_14_reg_537[6:3]}};
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address0_local = zext_ln24_10_fu_464_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address0_local = zext_ln24_4_fu_308_p1;
        end else begin
            M_0_address0_local = 'bx;
        end
    end else begin
        M_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_address1_local = zext_ln24_7_fu_381_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_address1_local = zext_ln24_fu_206_p1;
        end else begin
            M_0_address1_local = 'bx;
        end
    end else begin
        M_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_ce0_local = 1'b1;
    end else begin
        M_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_ce1_local = 1'b1;
    end else begin
        M_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d0_local = sext_ln24_6_fu_474_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d0_local = sext_ln24_2_fu_319_p1;
        end else begin
            M_0_d0_local = 'bx;
        end
    end else begin
        M_0_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_0_d1_local = sext_ln24_4_fu_391_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_0_d1_local = sext_ln24_fu_217_p1;
        end else begin
            M_0_d1_local = 'bx;
        end
    end else begin
        M_0_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((icmp_ln23_reg_551 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln23_fu_230_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_0_we0_local = 1'b1;
    end else begin
        M_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln23_reg_551 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_0_we1_local = 1'b1;
    end else begin
        M_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_address0_local = zext_ln24_11_fu_504_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_address0_local = zext_ln24_8_fu_411_p1;
    end else begin
        M_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_address1_local = zext_ln24_5_fu_339_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_address1_local = zext_ln24_2_fu_264_p1;
        end else begin
            M_1_address1_local = 'bx;
        end
    end else begin
        M_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_ce0_local = 1'b1;
    end else begin
        M_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_ce1_local = 1'b1;
    end else begin
        M_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        M_1_d0_local = sext_ln24_7_fu_525_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        M_1_d0_local = sext_ln24_5_fu_454_p1;
    end else begin
        M_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            M_1_d1_local = sext_ln24_3_fu_371_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            M_1_d1_local = sext_ln24_1_fu_297_p1;
        end else begin
            M_1_d1_local = 'bx;
        end
    end else begin
        M_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln23_reg_551 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        M_1_we0_local = 1'b1;
    end else begin
        M_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln23_reg_551 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((icmp_ln23_fu_230_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        M_1_we1_local = 1'b1;
    end else begin
        M_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_230_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_b_idx_14 = 8'd0;
    end else begin
        ap_sig_allocacmp_b_idx_14 = b_idx_fu_94;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign M_0_address0 = M_0_address0_local;
assign M_0_address1 = M_0_address1_local;
assign M_0_ce0 = M_0_ce0_local;
assign M_0_ce1 = M_0_ce1_local;
assign M_0_d0 = M_0_d0_local;
assign M_0_d1 = M_0_d1_local;
assign M_0_we0 = M_0_we0_local;
assign M_0_we1 = M_0_we1_local;
assign M_1_address0 = M_1_address0_local;
assign M_1_address1 = M_1_address1_local;
assign M_1_ce0 = M_1_ce0_local;
assign M_1_ce1 = M_1_ce1_local;
assign M_1_d0 = M_1_d0_local;
assign M_1_d1 = M_1_d1_local;
assign M_1_we0 = M_1_we0_local;
assign M_1_we1 = M_1_we1_local;
assign add_ln23_fu_494_p2 = (b_idx_14_reg_537 + 8'd8);
assign add_ln24_1_fu_324_p2 = (add_ln24_8_reg_555 + 15'd258);
assign add_ln24_2_fu_376_p2 = (tmp_reg_545 + 14'd258);
assign add_ln24_3_fu_386_p2 = ($signed(sub_ln24_2_reg_562) + $signed(8'd254));
assign add_ln24_4_fu_396_p2 = (add_ln24_8_reg_555 + 15'd516);
assign add_ln24_5_fu_459_p2 = (tmp_reg_545 + 14'd387);
assign add_ln24_6_fu_469_p2 = ($signed(sub_ln24_2_reg_562) + $signed(8'd252));
assign add_ln24_7_fu_479_p2 = (add_ln24_8_reg_555 + 15'd774);
assign add_ln24_8_fu_248_p2 = (p_shl_fu_240_p3 + zext_ln24_1_fu_236_p1);
assign add_ln24_fu_302_p2 = (tmp_fu_198_p3 + 14'd129);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln23_fu_230_p2 = ((or_ln2_fu_222_p3 < 8'd129) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_188_p4 = {{ap_sig_allocacmp_b_idx_14[7:1]}};
assign lshr_ln24_1_fu_254_p4 = {{add_ln24_8_fu_248_p2[14:1]}};
assign lshr_ln24_2_fu_329_p4 = {{add_ln24_1_fu_324_p2[14:1]}};
assign lshr_ln24_3_fu_401_p4 = {{add_ln24_4_fu_396_p2[14:1]}};
assign or_ln24_1_fu_432_p5 = {{{{tmp_s_fu_416_p4}, {1'd1}}, {tmp_15_fu_425_p3}}, {1'd1}};
assign or_ln24_2_fu_508_p3 = {{tmp_s_reg_568}, {3'd7}};
assign or_ln24_3_fu_279_p3 = {{tmp_8_fu_269_p4}, {1'd1}};
assign or_ln2_fu_222_p3 = {{lshr_ln1_fu_188_p4}, {1'd1}};
assign or_ln3_fu_353_p3 = {{tmp_9_fu_344_p4}, {2'd3}};
assign p_shl_fu_240_p3 = {{lshr_ln1_fu_188_p4}, {8'd128}};
assign sext_ln24_1_fu_297_p1 = $signed(sub_ln24_1_fu_291_p2);
assign sext_ln24_2_fu_319_p1 = sub_ln24_2_fu_313_p2;
assign sext_ln24_3_fu_371_p1 = $signed(sub_ln24_3_fu_365_p2);
assign sext_ln24_4_fu_391_p1 = $signed(add_ln24_3_fu_386_p2);
assign sext_ln24_5_fu_454_p1 = $signed(sub_ln24_4_fu_448_p2);
assign sext_ln24_6_fu_474_p1 = $signed(add_ln24_6_fu_469_p2);
assign sext_ln24_7_fu_525_p1 = $signed(sub_ln24_5_fu_519_p2);
assign sext_ln24_fu_217_p1 = $signed(sub_ln24_fu_211_p2);
assign sub_ln24_1_fu_291_p2 = (8'd0 - zext_ln24_3_fu_287_p1);
assign sub_ln24_2_fu_313_p2 = ($signed(8'd254) - $signed(ap_sig_allocacmp_b_idx_14));
assign sub_ln24_3_fu_365_p2 = (8'd0 - zext_ln24_6_fu_361_p1);
assign sub_ln24_4_fu_448_p2 = (8'd0 - zext_ln24_9_fu_444_p1);
assign sub_ln24_5_fu_519_p2 = (8'd0 - zext_ln24_12_fu_515_p1);
assign sub_ln24_fu_211_p2 = (8'd0 - ap_sig_allocacmp_b_idx_14);
assign tmp_15_fu_425_p3 = b_idx_14_reg_537[32'd1];
assign tmp_8_fu_269_p4 = {{ap_sig_allocacmp_b_idx_14[6:1]}};
assign tmp_9_fu_344_p4 = {{b_idx_14_reg_537[6:2]}};
assign tmp_fu_198_p3 = {{lshr_ln1_fu_188_p4}, {lshr_ln1_fu_188_p4}};
assign tmp_s_fu_416_p4 = {{b_idx_14_reg_537[6:3]}};
assign zext_ln24_10_fu_464_p1 = add_ln24_5_fu_459_p2;
assign zext_ln24_11_fu_504_p1 = lshr_ln24_4_reg_573;
assign zext_ln24_12_fu_515_p1 = or_ln24_2_fu_508_p3;
assign zext_ln24_1_fu_236_p1 = or_ln2_fu_222_p3;
assign zext_ln24_2_fu_264_p1 = lshr_ln24_1_fu_254_p4;
assign zext_ln24_3_fu_287_p1 = or_ln24_3_fu_279_p3;
assign zext_ln24_4_fu_308_p1 = add_ln24_fu_302_p2;
assign zext_ln24_5_fu_339_p1 = lshr_ln24_2_fu_329_p4;
assign zext_ln24_6_fu_361_p1 = or_ln3_fu_353_p3;
assign zext_ln24_7_fu_381_p1 = add_ln24_2_fu_376_p2;
assign zext_ln24_8_fu_411_p1 = lshr_ln24_3_fu_401_p4;
assign zext_ln24_9_fu_444_p1 = or_ln24_1_fu_432_p5;
assign zext_ln24_fu_206_p1 = tmp_fu_198_p3;
always @ (posedge ap_clk) begin
    add_ln24_8_reg_555[0] <= 1'b1;
end
endmodule 