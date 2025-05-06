
module fft1D_512_fft1D_512_Pipeline_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
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
reg ap_idle;
reg smem_ce0;
reg smem_ce1;
reg smem_1_ce0;
reg smem_1_ce1;
reg smem_2_ce0;
reg smem_2_ce1;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_508;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
reg   [63:0] reg_267;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_272;
reg   [63:0] reg_277;
reg   [63:0] reg_282;
reg   [63:0] reg_287;
reg   [63:0] reg_292;
reg   [63:0] reg_297;
reg   [63:0] reg_302;
reg   [6:0] tid_6_reg_498;
wire   [0:0] tmp_fu_315_p3;
wire   [2:0] tmp_190_fu_323_p4;
reg   [2:0] tmp_190_reg_512;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [5:0] trunc_ln341_fu_354_p1;
reg   [5:0] trunc_ln341_reg_517;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
reg   [4:0] tmp_s_reg_523;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_loady8_fu_224_ap_start;
wire    grp_loady8_fu_224_ap_done;
wire    grp_loady8_fu_224_ap_idle;
wire    grp_loady8_fu_224_ap_ready;
wire   [7:0] grp_loady8_fu_224_x_0_address0;
wire    grp_loady8_fu_224_x_0_ce0;
wire   [7:0] grp_loady8_fu_224_x_0_address1;
wire    grp_loady8_fu_224_x_0_ce1;
wire   [7:0] grp_loady8_fu_224_x_1_address0;
wire    grp_loady8_fu_224_x_1_ce0;
wire   [7:0] grp_loady8_fu_224_x_1_address1;
wire    grp_loady8_fu_224_x_1_ce1;
wire   [7:0] grp_loady8_fu_224_x_2_address0;
wire    grp_loady8_fu_224_x_2_ce0;
wire   [7:0] grp_loady8_fu_224_x_2_address1;
wire    grp_loady8_fu_224_x_2_ce1;
reg   [8:0] grp_loady8_fu_224_offset;
wire   [63:0] grp_loady8_fu_224_ap_return_0;
wire   [63:0] grp_loady8_fu_224_ap_return_1;
wire   [63:0] grp_loady8_fu_224_ap_return_2;
wire   [63:0] grp_loady8_fu_224_ap_return_3;
wire   [63:0] grp_loady8_fu_224_ap_return_4;
wire   [63:0] grp_loady8_fu_224_ap_return_5;
wire   [63:0] grp_loady8_fu_224_ap_return_6;
wire   [63:0] grp_loady8_fu_224_ap_return_7;
reg    grp_loady8_fu_224_ap_start_reg;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_ignoreCallOp62;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_ignoreCallOp63;
wire    ap_block_pp0_stage16_ignoreCallOp64;
wire    ap_CS_fsm_pp0_stage30;
wire    ap_block_pp0_stage30_ignoreCallOp114;
wire    ap_block_pp0_stage31_ignoreCallOp115;
wire    ap_block_pp0_stage0_ignoreCallOp116;
wire   [8:0] or_ln_fu_335_p3;
wire    ap_block_pp0_stage1_ignoreCallOp47;
wire   [8:0] or_ln28_fu_403_p4;
wire    ap_block_pp0_stage17_ignoreCallOp85;
wire   [63:0] zext_ln341_fu_365_p1;
wire    ap_block_pp0_stage17;
wire   [63:0] zext_ln343_fu_379_p1;
wire   [63:0] zext_ln345_fu_420_p1;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18;
wire   [63:0] zext_ln347_fu_433_p1;
wire   [63:0] zext_ln341_1_fu_446_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln343_1_fu_459_p1;
wire   [63:0] zext_ln345_1_fu_472_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln347_1_fu_485_p1;
reg   [6:0] tid_fu_74;
wire   [6:0] add_ln340_fu_344_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_6;
wire    ap_block_pp0_stage0;
reg    DATA_y_we1_local;
reg   [63:0] DATA_y_d1_local;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_we0_local;
reg   [63:0] DATA_y_d0_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
wire    ap_block_pp0_stage18_11001;
wire    ap_block_pp0_stage2_11001;
reg    DATA_y_1_we1_local;
reg   [63:0] DATA_y_1_d1_local;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_we0_local;
reg   [63:0] DATA_y_1_d0_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
wire    ap_block_pp0_stage16;
wire   [5:0] trunc_ln353_fu_332_p1;
wire   [7:0] shl_ln9_fu_357_p3;
wire   [7:0] or_ln25_fu_371_p3;
wire   [4:0] tmp_191_fu_394_p4;
wire   [7:0] or_ln26_fu_413_p3;
wire   [7:0] or_ln27_fu_426_p3;
wire   [7:0] shl_ln341_1_fu_439_p3;
wire   [7:0] or_ln343_1_fu_452_p3;
wire   [7:0] or_ln345_1_fu_465_p3;
wire   [7:0] or_ln347_1_fu_478_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [31:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage30_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_loady8_fu_224_ap_start_reg = 1'b0;
#0 tid_fu_74 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_224(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_224_ap_start),.ap_done(grp_loady8_fu_224_ap_done),.ap_idle(grp_loady8_fu_224_ap_idle),.ap_ready(grp_loady8_fu_224_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_224_x_0_address0),.x_0_ce0(grp_loady8_fu_224_x_0_ce0),.x_0_q0(smem_q0),.x_0_address1(grp_loady8_fu_224_x_0_address1),.x_0_ce1(grp_loady8_fu_224_x_0_ce1),.x_0_q1(smem_q1),.x_1_address0(grp_loady8_fu_224_x_1_address0),.x_1_ce0(grp_loady8_fu_224_x_1_ce0),.x_1_q0(smem_1_q0),.x_1_address1(grp_loady8_fu_224_x_1_address1),.x_1_ce1(grp_loady8_fu_224_x_1_ce1),.x_1_q1(smem_1_q1),.x_2_address0(grp_loady8_fu_224_x_2_address0),.x_2_ce0(grp_loady8_fu_224_x_2_ce0),.x_2_q0(smem_2_q0),.x_2_address1(grp_loady8_fu_224_x_2_address1),.x_2_ce1(grp_loady8_fu_224_x_2_ce1),.x_2_q1(smem_2_q1),.offset(grp_loady8_fu_224_offset),.ap_return_0(grp_loady8_fu_224_ap_return_0),.ap_return_1(grp_loady8_fu_224_ap_return_1),.ap_return_2(grp_loady8_fu_224_ap_return_2),.ap_return_3(grp_loady8_fu_224_ap_return_3),.ap_return_4(grp_loady8_fu_224_ap_return_4),.ap_return_5(grp_loady8_fu_224_ap_return_5),.ap_return_6(grp_loady8_fu_224_ap_return_6),.ap_return_7(grp_loady8_fu_224_ap_return_7));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_224_ap_start_reg <= 1'b0;
    end else begin
        if ((((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_fu_315_p3 == 1'd0)))) begin
            grp_loady8_fu_224_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_224_ap_ready == 1'b1)) begin
            grp_loady8_fu_224_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_74 <= 7'd0;
    end else if (((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_74 <= add_ln340_fu_344_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)))) begin
        reg_267 <= grp_loady8_fu_224_ap_return_0;
        reg_272 <= grp_loady8_fu_224_ap_return_1;
        reg_277 <= grp_loady8_fu_224_ap_return_2;
        reg_282 <= grp_loady8_fu_224_ap_return_3;
        reg_287 <= grp_loady8_fu_224_ap_return_4;
        reg_292 <= grp_loady8_fu_224_ap_return_5;
        reg_297 <= grp_loady8_fu_224_ap_return_6;
        reg_302 <= grp_loady8_fu_224_ap_return_7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_6_reg_498 <= ap_sig_allocacmp_tid_6;
        tmp_reg_508 <= ap_sig_allocacmp_tid_6[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_190_reg_512 <= {{tid_6_reg_498[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage17_11001) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        tmp_s_reg_523 <= {{tid_6_reg_498[5:1]}};
        trunc_ln341_reg_517 <= trunc_ln341_fu_354_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_address0_local = zext_ln347_1_fu_485_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = zext_ln343_1_fu_459_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        DATA_y_1_address0_local = zext_ln347_fu_433_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        DATA_y_1_address0_local = zext_ln343_fu_379_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_address1_local = zext_ln345_1_fu_472_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address1_local = zext_ln341_1_fu_446_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        DATA_y_1_address1_local = zext_ln345_fu_420_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        DATA_y_1_address1_local = zext_ln341_fu_365_p1;
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        DATA_y_1_d0_local = reg_302;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        DATA_y_1_d0_local = reg_282;
    end else begin
        DATA_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        DATA_y_1_d1_local = reg_292;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        DATA_y_1_d1_local = reg_272;
    end else begin
        DATA_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_address0_local = zext_ln347_1_fu_485_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address0_local = zext_ln343_1_fu_459_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        DATA_y_address0_local = zext_ln347_fu_433_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        DATA_y_address0_local = zext_ln343_fu_379_p1;
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_address1_local = zext_ln345_1_fu_472_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address1_local = zext_ln341_1_fu_446_p1;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        DATA_y_address1_local = zext_ln345_fu_420_p1;
    end else if (((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
        DATA_y_address1_local = zext_ln341_fu_365_p1;
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        DATA_y_d0_local = reg_297;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        DATA_y_d0_local = reg_277;
    end else begin
        DATA_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)))) begin
        DATA_y_d1_local = reg_287;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage17) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        DATA_y_d1_local = reg_267;
    end else begin
        DATA_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage18_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_508 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_6 = tid_fu_74;
    end
end
always @ (*) begin
    if (((tmp_reg_508 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if (((1'b0 == ap_block_pp0_stage17_ignoreCallOp85) & (1'b1 == ap_CS_fsm_pp0_stage17))) begin
            grp_loady8_fu_224_offset = or_ln28_fu_403_p4;
        end else if (((1'b0 == ap_block_pp0_stage1_ignoreCallOp47) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_loady8_fu_224_offset = or_ln_fu_335_p3;
        end else begin
            grp_loady8_fu_224_offset = 'bx;
        end
    end else begin
        grp_loady8_fu_224_offset = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp116) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage31_ignoreCallOp115) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage30_ignoreCallOp114) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp63) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp62) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_1_ce0 = grp_loady8_fu_224_x_1_ce0;
    end else begin
        smem_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp116) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage31_ignoreCallOp115) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage30_ignoreCallOp114) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp63) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp62) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_1_ce1 = grp_loady8_fu_224_x_1_ce1;
    end else begin
        smem_1_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp116) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage31_ignoreCallOp115) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage30_ignoreCallOp114) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp63) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp62) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_2_ce0 = grp_loady8_fu_224_x_2_ce0;
    end else begin
        smem_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp116) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage31_ignoreCallOp115) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage30_ignoreCallOp114) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp63) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp62) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_2_ce1 = grp_loady8_fu_224_x_2_ce1;
    end else begin
        smem_2_ce1 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp116) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage31_ignoreCallOp115) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage30_ignoreCallOp114) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp63) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp62) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_ce0 = grp_loady8_fu_224_x_0_ce0;
    end else begin
        smem_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp116) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage31_ignoreCallOp115) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage30_ignoreCallOp114) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage30)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp64) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp63) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_508 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp62) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_ce1 = grp_loady8_fu_224_x_0_ce1;
    end else begin
        smem_ce1 = 1'b0;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
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
assign add_ln340_fu_344_p2 = (tid_6_reg_498 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage30 = ap_CS_fsm[32'd30];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp116 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_ignoreCallOp62 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_ignoreCallOp63 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_ignoreCallOp64 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_ignoreCallOp85 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp47 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_ignoreCallOp114 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_ignoreCallOp115 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign grp_loady8_fu_224_ap_start = grp_loady8_fu_224_ap_start_reg;
assign or_ln25_fu_371_p3 = {{trunc_ln341_fu_354_p1}, {2'd1}};
assign or_ln26_fu_413_p3 = {{trunc_ln341_reg_517}, {2'd2}};
assign or_ln27_fu_426_p3 = {{trunc_ln341_reg_517}, {2'd3}};
assign or_ln28_fu_403_p4 = {{{tmp_190_reg_512}, {tmp_191_fu_394_p4}}, {1'd1}};
assign or_ln343_1_fu_452_p3 = {{tmp_s_reg_523}, {3'd5}};
assign or_ln345_1_fu_465_p3 = {{tmp_s_reg_523}, {3'd6}};
assign or_ln347_1_fu_478_p3 = {{tmp_s_reg_523}, {3'd7}};
assign or_ln_fu_335_p3 = {{tmp_190_fu_323_p4}, {trunc_ln353_fu_332_p1}};
assign shl_ln341_1_fu_439_p3 = {{tmp_s_reg_523}, {3'd4}};
assign shl_ln9_fu_357_p3 = {{trunc_ln341_fu_354_p1}, {2'd0}};
assign smem_1_address0 = grp_loady8_fu_224_x_1_address0;
assign smem_1_address1 = grp_loady8_fu_224_x_1_address1;
assign smem_2_address0 = grp_loady8_fu_224_x_2_address0;
assign smem_2_address1 = grp_loady8_fu_224_x_2_address1;
assign smem_address0 = grp_loady8_fu_224_x_0_address0;
assign smem_address1 = grp_loady8_fu_224_x_0_address1;
assign tmp_190_fu_323_p4 = {{tid_6_reg_498[5:3]}};
assign tmp_191_fu_394_p4 = {{tid_6_reg_498[5:1]}};
assign tmp_fu_315_p3 = ap_sig_allocacmp_tid_6[32'd6];
assign trunc_ln341_fu_354_p1 = tid_6_reg_498[5:0];
assign trunc_ln353_fu_332_p1 = tid_6_reg_498[5:0];
assign zext_ln341_1_fu_446_p1 = shl_ln341_1_fu_439_p3;
assign zext_ln341_fu_365_p1 = shl_ln9_fu_357_p3;
assign zext_ln343_1_fu_459_p1 = or_ln343_1_fu_452_p3;
assign zext_ln343_fu_379_p1 = or_ln25_fu_371_p3;
assign zext_ln345_1_fu_472_p1 = or_ln345_1_fu_465_p3;
assign zext_ln345_fu_420_p1 = or_ln26_fu_413_p3;
assign zext_ln347_1_fu_485_p1 = or_ln347_1_fu_478_p3;
assign zext_ln347_fu_433_p1 = or_ln27_fu_426_p3;
endmodule 
