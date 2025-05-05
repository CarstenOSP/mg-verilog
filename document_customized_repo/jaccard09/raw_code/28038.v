module fft1D_512_fft1D_512_Pipeline_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1); 
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
output  [7:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [7:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
output   DATA_y_1_we1;
output  [63:0] DATA_y_1_d1;
output  [7:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [7:0] DATA_y_address1;
output   DATA_y_ce1;
output   DATA_y_we1;
output  [63:0] DATA_y_d1;
output  [7:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [7:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [7:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [7:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [7:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [7:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [7:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [7:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln340_reg_304;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_6_reg_296;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln340_fu_165_p2;
wire   [5:0] trunc_ln341_fu_197_p1;
reg   [5:0] trunc_ln341_reg_308;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] data_y_0_reg_316;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] data_y_1_reg_321;
reg   [63:0] data_y_2_reg_326;
reg   [63:0] data_y_3_reg_331;
reg   [63:0] data_y_4_reg_336;
reg   [63:0] data_y_5_reg_341;
reg   [63:0] data_y_6_reg_346;
reg   [63:0] data_y_7_reg_351;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_loady8_fu_144_ap_start;
wire    grp_loady8_fu_144_ap_done;
wire    grp_loady8_fu_144_ap_idle;
wire    grp_loady8_fu_144_ap_ready;
wire   [7:0] grp_loady8_fu_144_x_0_address0;
wire    grp_loady8_fu_144_x_0_ce0;
wire   [7:0] grp_loady8_fu_144_x_0_address1;
wire    grp_loady8_fu_144_x_0_ce1;
wire   [7:0] grp_loady8_fu_144_x_1_address0;
wire    grp_loady8_fu_144_x_1_ce0;
wire   [7:0] grp_loady8_fu_144_x_1_address1;
wire    grp_loady8_fu_144_x_1_ce1;
wire   [7:0] grp_loady8_fu_144_x_2_address0;
wire    grp_loady8_fu_144_x_2_ce0;
wire   [7:0] grp_loady8_fu_144_x_2_address1;
wire    grp_loady8_fu_144_x_2_ce1;
wire   [7:0] grp_loady8_fu_144_x_3_address0;
wire    grp_loady8_fu_144_x_3_ce0;
wire   [7:0] grp_loady8_fu_144_x_3_address1;
wire    grp_loady8_fu_144_x_3_ce1;
wire   [8:0] grp_loady8_fu_144_offset;
wire   [63:0] grp_loady8_fu_144_ap_return_0;
wire   [63:0] grp_loady8_fu_144_ap_return_1;
wire   [63:0] grp_loady8_fu_144_ap_return_2;
wire   [63:0] grp_loady8_fu_144_ap_return_3;
wire   [63:0] grp_loady8_fu_144_ap_return_4;
wire   [63:0] grp_loady8_fu_144_ap_return_5;
wire   [63:0] grp_loady8_fu_144_ap_return_6;
wire   [63:0] grp_loady8_fu_144_ap_return_7;
reg    grp_loady8_fu_144_ap_start_reg;
wire    ap_block_pp0_stage1_ignoreCallOp20;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_ignoreCallOp21;
wire    ap_block_pp0_stage3_ignoreCallOp24;
wire    ap_block_pp0_stage0_ignoreCallOp26;
wire    ap_block_pp0_stage1_ignoreCallOp27;
wire   [63:0] zext_ln341_fu_244_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln343_fu_257_p1;
wire   [63:0] zext_ln345_fu_270_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln347_fu_283_p1;
reg   [6:0] tid_fu_58;
wire   [6:0] add_ln340_fu_192_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_6;
wire    ap_block_pp0_stage0;
reg    DATA_y_we1_local;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] DATA_y_d1_local;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_we0_local;
reg   [63:0] DATA_y_d0_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
reg    DATA_y_1_we1_local;
reg   [63:0] DATA_y_1_d1_local;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_we0_local;
reg   [63:0] DATA_y_1_d0_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
wire    ap_block_pp0_stage1;
wire   [2:0] tmp_fu_171_p4;
wire   [5:0] trunc_ln353_fu_180_p1;
wire   [7:0] shl_ln9_fu_237_p3;
wire   [7:0] or_ln20_fu_250_p3;
wire   [7:0] or_ln21_fu_263_p3;
wire   [7:0] or_ln22_fu_276_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
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
#0 grp_loady8_fu_144_ap_start_reg = 1'b0;
#0 tid_fu_58 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_144(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_144_ap_start),.ap_done(grp_loady8_fu_144_ap_done),.ap_idle(grp_loady8_fu_144_ap_idle),.ap_ready(grp_loady8_fu_144_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_144_x_0_address0),.x_0_ce0(grp_loady8_fu_144_x_0_ce0),.x_0_q0(smem_q0),.x_0_address1(grp_loady8_fu_144_x_0_address1),.x_0_ce1(grp_loady8_fu_144_x_0_ce1),.x_0_q1(smem_q1),.x_1_address0(grp_loady8_fu_144_x_1_address0),.x_1_ce0(grp_loady8_fu_144_x_1_ce0),.x_1_q0(smem_1_q0),.x_1_address1(grp_loady8_fu_144_x_1_address1),.x_1_ce1(grp_loady8_fu_144_x_1_ce1),.x_1_q1(smem_1_q1),.x_2_address0(grp_loady8_fu_144_x_2_address0),.x_2_ce0(grp_loady8_fu_144_x_2_ce0),.x_2_q0(smem_2_q0),.x_2_address1(grp_loady8_fu_144_x_2_address1),.x_2_ce1(grp_loady8_fu_144_x_2_ce1),.x_2_q1(smem_2_q1),.x_3_address0(grp_loady8_fu_144_x_3_address0),.x_3_ce0(grp_loady8_fu_144_x_3_ce0),.x_3_q0(smem_3_q0),.x_3_address1(grp_loady8_fu_144_x_3_address1),.x_3_ce1(grp_loady8_fu_144_x_3_ce1),.x_3_q1(smem_3_q1),.offset(grp_loady8_fu_144_offset),.ap_return_0(grp_loady8_fu_144_ap_return_0),.ap_return_1(grp_loady8_fu_144_ap_return_1),.ap_return_2(grp_loady8_fu_144_ap_return_2),.ap_return_3(grp_loady8_fu_144_ap_return_3),.ap_return_4(grp_loady8_fu_144_ap_return_4),.ap_return_5(grp_loady8_fu_144_ap_return_5),.ap_return_6(grp_loady8_fu_144_ap_return_6),.ap_return_7(grp_loady8_fu_144_ap_return_7));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_144_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln340_fu_165_p2 == 1'd0))) begin
            grp_loady8_fu_144_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_144_ap_ready == 1'b1)) begin
            grp_loady8_fu_144_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_58 <= 7'd0;
    end else if (((icmp_ln340_reg_304 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tid_fu_58 <= add_ln340_fu_192_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        data_y_0_reg_316 <= grp_loady8_fu_144_ap_return_0;
        data_y_1_reg_321 <= grp_loady8_fu_144_ap_return_1;
        data_y_2_reg_326 <= grp_loady8_fu_144_ap_return_2;
        data_y_3_reg_331 <= grp_loady8_fu_144_ap_return_3;
        data_y_4_reg_336 <= grp_loady8_fu_144_ap_return_4;
        data_y_5_reg_341 <= grp_loady8_fu_144_ap_return_5;
        data_y_6_reg_346 <= grp_loady8_fu_144_ap_return_6;
        data_y_7_reg_351 <= grp_loady8_fu_144_ap_return_7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln340_reg_304 <= icmp_ln340_fu_165_p2;
        tid_6_reg_296 <= ap_sig_allocacmp_tid_6;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        trunc_ln341_reg_308 <= trunc_ln341_fu_197_p1;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address0_local = zext_ln347_fu_283_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address0_local = zext_ln343_fu_257_p1;
        end else begin
            DATA_y_1_address0_local = 'bx;
        end
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_address1_local = zext_ln345_fu_270_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_address1_local = zext_ln341_fu_244_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_d0_local = data_y_7_reg_351;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_d0_local = data_y_3_reg_331;
        end else begin
            DATA_y_1_d0_local = 'bx;
        end
    end else begin
        DATA_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_1_d1_local = data_y_5_reg_341;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_1_d1_local = data_y_1_reg_321;
        end else begin
            DATA_y_1_d1_local = 'bx;
        end
    end else begin
        DATA_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address0_local = zext_ln347_fu_283_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address0_local = zext_ln343_fu_257_p1;
        end else begin
            DATA_y_address0_local = 'bx;
        end
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_address1_local = zext_ln345_fu_270_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_address1_local = zext_ln341_fu_244_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_d0_local = data_y_6_reg_346;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_d0_local = data_y_2_reg_326;
        end else begin
            DATA_y_d0_local = 'bx;
        end
    end else begin
        DATA_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            DATA_y_d1_local = data_y_4_reg_336;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            DATA_y_d1_local = data_y_0_reg_316;
        end else begin
            DATA_y_d1_local = 'bx;
        end
    end else begin
        DATA_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln340_reg_304 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        ap_sig_allocacmp_tid_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_6 = tid_fu_58;
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
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_address1 = DATA_y_1_address1_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_1_d0 = DATA_y_1_d0_local;
assign DATA_y_1_d1 = DATA_y_1_d1_local;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_1_we1 = DATA_y_1_we1_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_address1 = DATA_y_address1_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign DATA_y_d0 = DATA_y_d0_local;
assign DATA_y_d1 = DATA_y_d1_local;
assign DATA_y_we0 = DATA_y_we0_local;
assign DATA_y_we1 = DATA_y_we1_local;
assign add_ln340_fu_192_p2 = (tid_6_reg_296 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp20 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp21 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp24 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign grp_loady8_fu_144_ap_start = grp_loady8_fu_144_ap_start_reg;
assign grp_loady8_fu_144_offset = {{tmp_fu_171_p4}, {trunc_ln353_fu_180_p1}};
assign icmp_ln340_fu_165_p2 = ((ap_sig_allocacmp_tid_6 == 7'd64) ? 1'b1 : 1'b0);
assign or_ln20_fu_250_p3 = {{trunc_ln341_reg_308}, {2'd1}};
assign or_ln21_fu_263_p3 = {{trunc_ln341_reg_308}, {2'd2}};
assign or_ln22_fu_276_p3 = {{trunc_ln341_reg_308}, {2'd3}};
assign shl_ln9_fu_237_p3 = {{trunc_ln341_reg_308}, {2'd0}};
assign smem_1_address0 = grp_loady8_fu_144_x_1_address0;
assign smem_1_address1 = grp_loady8_fu_144_x_1_address1;
assign smem_1_ce0 = grp_loady8_fu_144_x_1_ce0;
assign smem_1_ce1 = grp_loady8_fu_144_x_1_ce1;
assign smem_2_address0 = grp_loady8_fu_144_x_2_address0;
assign smem_2_address1 = grp_loady8_fu_144_x_2_address1;
assign smem_2_ce0 = grp_loady8_fu_144_x_2_ce0;
assign smem_2_ce1 = grp_loady8_fu_144_x_2_ce1;
assign smem_3_address0 = grp_loady8_fu_144_x_3_address0;
assign smem_3_address1 = grp_loady8_fu_144_x_3_address1;
assign smem_3_ce0 = grp_loady8_fu_144_x_3_ce0;
assign smem_3_ce1 = grp_loady8_fu_144_x_3_ce1;
assign smem_address0 = grp_loady8_fu_144_x_0_address0;
assign smem_address1 = grp_loady8_fu_144_x_0_address1;
assign smem_ce0 = grp_loady8_fu_144_x_0_ce0;
assign smem_ce1 = grp_loady8_fu_144_x_0_ce1;
assign tmp_fu_171_p4 = {{tid_6_reg_296[5:3]}};
assign trunc_ln341_fu_197_p1 = tid_6_reg_296[5:0];
assign trunc_ln353_fu_180_p1 = tid_6_reg_296[5:0];
assign zext_ln341_fu_244_p1 = shl_ln9_fu_237_p3;
assign zext_ln343_fu_257_p1 = or_ln20_fu_250_p3;
assign zext_ln345_fu_270_p1 = or_ln21_fu_263_p3;
assign zext_ln347_fu_283_p1 = or_ln22_fu_276_p3;
endmodule 