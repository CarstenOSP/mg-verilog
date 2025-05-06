
module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln104_15,zext_ln104_14,zext_ln104_13,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,W_address0,W_ce0,W_we0,W_d0,W_q0,W_address1,W_ce1,W_q1);  
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
input  [30:0] zext_ln104_15;
input  [30:0] zext_ln104_14;
input  [30:0] zext_ln104_13;
output  [5:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [5:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [5:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
output  [5:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln106_reg_674;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [31:0] reg_238;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] reg_242;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_2_reg_661;
wire   [0:0] icmp_ln106_fu_281_p2;
reg   [31:0] W_load_reg_698;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] W_load_1_reg_703;
reg   [31:0] W_load_1_reg_703_pp0_iter1_reg;
reg   [31:0] W_1_load_reg_729;
reg   [31:0] W_1_load_1_reg_734;
reg   [31:0] W_1_load_1_reg_734_pp0_iter1_reg;
reg   [31:0] W_load_3_reg_750;
reg   [31:0] W_1_load_3_reg_755;
wire   [31:0] xor_ln108_2_fu_526_p2;
reg   [31:0] xor_ln108_2_reg_760;
reg   [4:0] tmp_reg_765;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln108_fu_303_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln108_1_fu_324_p1;
wire   [63:0] zext_ln108_3_fu_345_p1;
wire   [63:0] zext_ln108_4_fu_366_p1;
wire   [63:0] zext_ln108_2_fu_390_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln108_5_fu_410_p1;
wire   [63:0] zext_ln108_7_fu_430_p1;
wire   [63:0] zext_ln108_9_fu_450_p1;
wire   [63:0] zext_ln108_8_fu_470_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln108_10_fu_490_p1;
wire   [63:0] zext_ln99_fu_510_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln108_6_fu_584_p1;
reg   [6:0] i_fu_74;
wire   [6:0] add_ln106_fu_559_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_2;
reg   [31:0] store_forwarded_fu_78;
wire   [31:0] xor_ln108_5_fu_552_p2;
wire   [31:0] zext_ln104_13_cast_fu_246_p1;
reg   [31:0] store_forwarded56_fu_82;
wire   [31:0] xor_ln108_8_fu_600_p2;
wire   [31:0] zext_ln104_14_cast_fu_250_p1;
reg   [31:0] store_forwarded59_fu_86;
wire   [31:0] xor_ln108_11_fu_617_p2;
wire   [31:0] zext_ln104_15_cast_fu_254_p1;
reg    W_ce1_local;
reg   [5:0] W_address1_local;
reg    W_ce0_local;
reg   [5:0] W_address0_local;
reg    W_we0_local;
reg   [31:0] W_d0_local;
reg    W_1_ce1_local;
reg   [5:0] W_1_address1_local;
reg    W_1_ce0_local;
reg   [5:0] W_1_address0_local;
reg    W_1_we0_local;
reg   [31:0] W_1_d0_local;
wire   [6:0] add_ln108_fu_287_p2;
wire   [5:0] lshr_ln1_fu_293_p4;
wire   [6:0] add_ln108_1_fu_308_p2;
wire   [5:0] lshr_ln108_1_fu_314_p4;
wire   [6:0] add_ln108_3_fu_329_p2;
wire   [5:0] lshr_ln108_3_fu_335_p4;
wire   [6:0] add_ln108_4_fu_350_p2;
wire   [5:0] lshr_ln108_4_fu_356_p4;
wire   [5:0] trunc_ln106_fu_371_p1;
wire   [5:0] add_ln108_2_fu_374_p2;
wire   [4:0] lshr_ln108_2_fu_380_p4;
wire   [6:0] add_ln108_5_fu_395_p2;
wire   [5:0] lshr_ln108_5_fu_400_p4;
wire   [6:0] add_ln108_6_fu_415_p2;
wire   [5:0] lshr_ln108_6_fu_420_p4;
wire   [6:0] add_ln108_8_fu_435_p2;
wire   [5:0] lshr_ln108_8_fu_440_p4;
wire   [6:0] add_ln108_7_fu_455_p2;
wire   [5:0] lshr_ln108_7_fu_460_p4;
wire   [6:0] add_ln108_9_fu_475_p2;
wire   [5:0] lshr_ln108_9_fu_480_p4;
wire   [5:0] lshr_ln_fu_501_p4;
wire   [31:0] xor_ln108_fu_522_p2;
wire   [31:0] xor_ln108_1_fu_516_p2;
wire   [31:0] xor_ln108_4_fu_546_p2;
wire   [31:0] xor_ln108_3_fu_542_p2;
wire   [5:0] or_ln_fu_577_p3;
wire   [31:0] xor_ln108_7_fu_594_p2;
wire   [31:0] xor_ln108_6_fu_590_p2;
wire   [31:0] xor_ln108_9_fu_607_p2;
wire   [31:0] xor_ln108_10_fu_611_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_74 = 7'd0;
#0 store_forwarded_fu_78 = 32'd0;
#0 store_forwarded56_fu_82 = 32'd0;
#0 store_forwarded59_fu_86 = 32'd0;
#0 ap_done_reg = 1'b0;
end
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_74 <= 7'd16;
    end else if (((icmp_ln106_reg_674 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        i_fu_74 <= add_ln106_fu_559_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded56_fu_82 <= zext_ln104_14_cast_fu_250_p1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        store_forwarded56_fu_82 <= xor_ln108_8_fu_600_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded59_fu_86 <= zext_ln104_15_cast_fu_254_p1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        store_forwarded59_fu_86 <= xor_ln108_11_fu_617_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        store_forwarded_fu_78 <= zext_ln104_13_cast_fu_246_p1;
    end else if (((icmp_ln106_reg_674 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        store_forwarded_fu_78 <= xor_ln108_5_fu_552_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_load_1_reg_734 <= W_1_q0;
        W_1_load_reg_729 <= W_1_q1;
        W_load_1_reg_703 <= W_q0;
        W_load_reg_698 <= W_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_load_1_reg_734_pp0_iter1_reg <= W_1_load_1_reg_734;
        W_load_1_reg_703_pp0_iter1_reg <= W_load_1_reg_703;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_1_load_3_reg_755 <= W_1_q0;
        W_load_3_reg_750 <= W_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_reg_661 <= ap_sig_allocacmp_i_2;
        icmp_ln106_reg_674 <= icmp_ln106_fu_281_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_238 <= W_q1;
        reg_242 <= W_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_reg_765 <= {{i_2_reg_661[6:2]}};
        xor_ln108_2_reg_760 <= xor_ln108_2_fu_526_p2;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_1_address0_local = zext_ln108_6_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        W_1_address0_local = zext_ln99_fu_510_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_address0_local = zext_ln108_9_fu_450_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_address0_local = zext_ln108_4_fu_366_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            W_1_address1_local = zext_ln108_10_fu_490_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_1_address1_local = zext_ln108_5_fu_410_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_1_address1_local = zext_ln108_3_fu_345_p1;
        end else begin
            W_1_address1_local = 'bx;
        end
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_1_d0_local = xor_ln108_11_fu_617_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        W_1_d0_local = xor_ln108_5_fu_552_p2;
    end else begin
        W_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln106_reg_674 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_address0_local = zext_ln108_6_fu_584_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        W_address0_local = zext_ln99_fu_510_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_address0_local = zext_ln108_7_fu_430_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_address0_local = zext_ln108_1_fu_324_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            W_address1_local = zext_ln108_8_fu_470_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            W_address1_local = zext_ln108_2_fu_390_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            W_address1_local = zext_ln108_fu_303_p1;
        end else begin
            W_address1_local = 'bx;
        end
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        W_d0_local = xor_ln108_8_fu_600_p2;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        W_d0_local = xor_ln108_2_fu_526_p2;
    end else begin
        W_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((icmp_ln106_reg_674 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_reg_674 == 1'd0) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_2 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_74;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = W_1_address1_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_d0 = W_1_d0_local;
assign W_1_we0 = W_1_we0_local;
assign W_address0 = W_address0_local;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = W_d0_local;
assign W_we0 = W_we0_local;
assign add_ln106_fu_559_p2 = (i_2_reg_661 + 7'd4);
assign add_ln108_1_fu_308_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd114));
assign add_ln108_2_fu_374_p2 = ($signed(trunc_ln106_fu_371_p1) + $signed(6'd48));
assign add_ln108_3_fu_329_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd121));
assign add_ln108_4_fu_350_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd115));
assign add_ln108_5_fu_395_p2 = ($signed(i_2_reg_661) + $signed(7'd113));
assign add_ln108_6_fu_415_p2 = ($signed(i_2_reg_661) + $signed(7'd122));
assign add_ln108_7_fu_455_p2 = ($signed(i_2_reg_661) + $signed(7'd116));
assign add_ln108_8_fu_435_p2 = ($signed(i_2_reg_661) + $signed(7'd123));
assign add_ln108_9_fu_475_p2 = ($signed(i_2_reg_661) + $signed(7'd117));
assign add_ln108_fu_287_p2 = ($signed(ap_sig_allocacmp_i_2) + $signed(7'd120));
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_281_p2 = ((ap_sig_allocacmp_i_2 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_1_fu_314_p4 = {{add_ln108_1_fu_308_p2[6:1]}};
assign lshr_ln108_2_fu_380_p4 = {{add_ln108_2_fu_374_p2[5:1]}};
assign lshr_ln108_3_fu_335_p4 = {{add_ln108_3_fu_329_p2[6:1]}};
assign lshr_ln108_4_fu_356_p4 = {{add_ln108_4_fu_350_p2[6:1]}};
assign lshr_ln108_5_fu_400_p4 = {{add_ln108_5_fu_395_p2[6:1]}};
assign lshr_ln108_6_fu_420_p4 = {{add_ln108_6_fu_415_p2[6:1]}};
assign lshr_ln108_7_fu_460_p4 = {{add_ln108_7_fu_455_p2[6:1]}};
assign lshr_ln108_8_fu_440_p4 = {{add_ln108_8_fu_435_p2[6:1]}};
assign lshr_ln108_9_fu_480_p4 = {{add_ln108_9_fu_475_p2[6:1]}};
assign lshr_ln1_fu_293_p4 = {{add_ln108_fu_287_p2[6:1]}};
assign lshr_ln_fu_501_p4 = {{i_2_reg_661[6:1]}};
assign or_ln_fu_577_p3 = {{tmp_reg_765}, {1'd1}};
assign trunc_ln106_fu_371_p1 = i_2_reg_661[5:0];
assign xor_ln108_10_fu_611_p2 = (xor_ln108_9_fu_607_p2 ^ reg_242);
assign xor_ln108_11_fu_617_p2 = (xor_ln108_2_reg_760 ^ xor_ln108_10_fu_611_p2);
assign xor_ln108_1_fu_516_p2 = (store_forwarded_fu_78 ^ reg_238);
assign xor_ln108_2_fu_526_p2 = (xor_ln108_fu_522_p2 ^ xor_ln108_1_fu_516_p2);
assign xor_ln108_3_fu_542_p2 = (W_1_load_reg_729 ^ W_1_load_1_reg_734);
assign xor_ln108_4_fu_546_p2 = (store_forwarded56_fu_82 ^ reg_242);
assign xor_ln108_5_fu_552_p2 = (xor_ln108_4_fu_546_p2 ^ xor_ln108_3_fu_542_p2);
assign xor_ln108_6_fu_590_p2 = (W_load_3_reg_750 ^ W_load_1_reg_703_pp0_iter1_reg);
assign xor_ln108_7_fu_594_p2 = (store_forwarded59_fu_86 ^ reg_238);
assign xor_ln108_8_fu_600_p2 = (xor_ln108_7_fu_594_p2 ^ xor_ln108_6_fu_590_p2);
assign xor_ln108_9_fu_607_p2 = (W_1_load_3_reg_755 ^ W_1_load_1_reg_734_pp0_iter1_reg);
assign xor_ln108_fu_522_p2 = (W_load_reg_698 ^ W_load_1_reg_703);
assign zext_ln104_13_cast_fu_246_p1 = zext_ln104_13;
assign zext_ln104_14_cast_fu_250_p1 = zext_ln104_14;
assign zext_ln104_15_cast_fu_254_p1 = zext_ln104_15;
assign zext_ln108_10_fu_490_p1 = lshr_ln108_9_fu_480_p4;
assign zext_ln108_1_fu_324_p1 = lshr_ln108_1_fu_314_p4;
assign zext_ln108_2_fu_390_p1 = lshr_ln108_2_fu_380_p4;
assign zext_ln108_3_fu_345_p1 = lshr_ln108_3_fu_335_p4;
assign zext_ln108_4_fu_366_p1 = lshr_ln108_4_fu_356_p4;
assign zext_ln108_5_fu_410_p1 = lshr_ln108_5_fu_400_p4;
assign zext_ln108_6_fu_584_p1 = or_ln_fu_577_p3;
assign zext_ln108_7_fu_430_p1 = lshr_ln108_6_fu_420_p4;
assign zext_ln108_8_fu_470_p1 = lshr_ln108_7_fu_460_p4;
assign zext_ln108_9_fu_450_p1 = lshr_ln108_8_fu_440_p4;
assign zext_ln108_fu_303_p1 = lshr_ln1_fu_293_p4;
assign zext_ln99_fu_510_p1 = lshr_ln_fu_501_p4;
endmodule 
