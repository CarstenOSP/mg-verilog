
module fft1D_512_fft1D_512_Pipeline_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0,smem_11_address0,smem_11_ce0,smem_11_q0,smem_12_address0,smem_12_ce0,smem_12_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 30'd1;
parameter    ap_ST_fsm_pp0_stage1 = 30'd2;
parameter    ap_ST_fsm_pp0_stage2 = 30'd4;
parameter    ap_ST_fsm_pp0_stage3 = 30'd8;
parameter    ap_ST_fsm_pp0_stage4 = 30'd16;
parameter    ap_ST_fsm_pp0_stage5 = 30'd32;
parameter    ap_ST_fsm_pp0_stage6 = 30'd64;
parameter    ap_ST_fsm_pp0_stage7 = 30'd128;
parameter    ap_ST_fsm_pp0_stage8 = 30'd256;
parameter    ap_ST_fsm_pp0_stage9 = 30'd512;
parameter    ap_ST_fsm_pp0_stage10 = 30'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 30'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 30'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 30'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 30'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 30'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 30'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 30'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 30'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 30'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 30'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 30'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 30'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 30'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 30'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 30'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 30'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 30'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 30'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 30'd536870912;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
output   DATA_y_7_we0;
output  [63:0] DATA_y_7_d0;
output  [5:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
output   DATA_y_6_we0;
output  [63:0] DATA_y_6_d0;
output  [5:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
output   DATA_y_5_we0;
output  [63:0] DATA_y_5_d0;
output  [5:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
output   DATA_y_4_we0;
output  [63:0] DATA_y_4_d0;
output  [5:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [5:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [5:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [5:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [5:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [5:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [5:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [5:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [5:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [5:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [5:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [5:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [5:0] smem_8_address0;
output   smem_8_ce0;
input  [63:0] smem_8_q0;
output  [5:0] smem_9_address0;
output   smem_9_ce0;
input  [63:0] smem_9_q0;
output  [5:0] smem_10_address0;
output   smem_10_ce0;
input  [63:0] smem_10_q0;
output  [5:0] smem_11_address0;
output   smem_11_ce0;
input  [63:0] smem_11_q0;
output  [5:0] smem_12_address0;
output   smem_12_ce0;
input  [63:0] smem_12_q0;
reg ap_idle;
reg smem_ce0;
reg smem_1_ce0;
reg smem_2_ce0;
reg smem_3_ce0;
reg smem_4_ce0;
reg smem_5_ce0;
reg smem_6_ce0;
reg smem_7_ce0;
reg smem_8_ce0;
reg smem_9_ce0;
reg smem_10_ce0;
reg smem_11_ce0;
reg smem_12_ce0;
(* fsm_encoding = "none" *) reg   [29:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_485;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_subdone;
reg   [63:0] reg_323;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_328;
reg   [63:0] reg_333;
reg   [63:0] reg_338;
reg   [63:0] reg_343;
reg   [63:0] reg_348;
reg   [63:0] reg_353;
reg   [63:0] reg_358;
reg   [6:0] tid_6_reg_475;
wire   [0:0] tmp_fu_371_p3;
wire   [2:0] tmp_128_fu_379_p4;
reg   [2:0] tmp_128_reg_489;
wire    ap_block_pp0_stage1_11001;
reg   [4:0] tmp_s_reg_494;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_loady8_fu_260_ap_start;
wire    grp_loady8_fu_260_ap_done;
wire    grp_loady8_fu_260_ap_idle;
wire    grp_loady8_fu_260_ap_ready;
wire   [5:0] grp_loady8_fu_260_x_0_address0;
wire    grp_loady8_fu_260_x_0_ce0;
wire   [5:0] grp_loady8_fu_260_x_1_address0;
wire    grp_loady8_fu_260_x_1_ce0;
wire   [5:0] grp_loady8_fu_260_x_2_address0;
wire    grp_loady8_fu_260_x_2_ce0;
wire   [5:0] grp_loady8_fu_260_x_3_address0;
wire    grp_loady8_fu_260_x_3_ce0;
wire   [5:0] grp_loady8_fu_260_x_4_address0;
wire    grp_loady8_fu_260_x_4_ce0;
wire   [5:0] grp_loady8_fu_260_x_5_address0;
wire    grp_loady8_fu_260_x_5_ce0;
wire   [5:0] grp_loady8_fu_260_x_6_address0;
wire    grp_loady8_fu_260_x_6_ce0;
wire   [5:0] grp_loady8_fu_260_x_7_address0;
wire    grp_loady8_fu_260_x_7_ce0;
wire   [5:0] grp_loady8_fu_260_x_8_address0;
wire    grp_loady8_fu_260_x_8_ce0;
wire   [5:0] grp_loady8_fu_260_x_9_address0;
wire    grp_loady8_fu_260_x_9_ce0;
wire   [5:0] grp_loady8_fu_260_x_10_address0;
wire    grp_loady8_fu_260_x_10_ce0;
wire   [5:0] grp_loady8_fu_260_x_11_address0;
wire    grp_loady8_fu_260_x_11_ce0;
wire   [5:0] grp_loady8_fu_260_x_12_address0;
wire    grp_loady8_fu_260_x_12_ce0;
reg   [8:0] grp_loady8_fu_260_offset;
wire   [63:0] grp_loady8_fu_260_ap_return_0;
wire   [63:0] grp_loady8_fu_260_ap_return_1;
wire   [63:0] grp_loady8_fu_260_ap_return_2;
wire   [63:0] grp_loady8_fu_260_ap_return_3;
wire   [63:0] grp_loady8_fu_260_ap_return_4;
wire   [63:0] grp_loady8_fu_260_ap_return_5;
wire   [63:0] grp_loady8_fu_260_ap_return_6;
wire   [63:0] grp_loady8_fu_260_ap_return_7;
reg    grp_loady8_fu_260_ap_start_reg;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_ignoreCallOp59;
wire    ap_block_pp0_stage15_ignoreCallOp60;
wire    ap_block_pp0_stage29_ignoreCallOp102;
wire    ap_block_pp0_stage0_ignoreCallOp103;
wire   [8:0] or_ln_fu_391_p3;
wire    ap_block_pp0_stage1_ignoreCallOp44;
wire   [8:0] or_ln5_fu_439_p4;
wire    ap_block_pp0_stage16_ignoreCallOp81;
wire   [63:0] zext_ln340_fu_410_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln341_fu_456_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] tid_fu_88;
wire   [6:0] add_ln340_fu_400_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_6;
wire    ap_block_pp0_stage0;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg   [5:0] DATA_y_address0_local;
reg    DATA_y_1_we0_local;
reg    DATA_y_1_ce0_local;
reg   [5:0] DATA_y_1_address0_local;
reg    DATA_y_2_we0_local;
reg    DATA_y_2_ce0_local;
reg   [5:0] DATA_y_2_address0_local;
reg    DATA_y_3_we0_local;
reg    DATA_y_3_ce0_local;
reg   [5:0] DATA_y_3_address0_local;
reg    DATA_y_4_we0_local;
reg    DATA_y_4_ce0_local;
reg   [5:0] DATA_y_4_address0_local;
reg    DATA_y_5_we0_local;
reg    DATA_y_5_ce0_local;
reg   [5:0] DATA_y_5_address0_local;
reg    DATA_y_6_we0_local;
reg    DATA_y_6_ce0_local;
reg   [5:0] DATA_y_6_address0_local;
reg    DATA_y_7_we0_local;
reg    DATA_y_7_ce0_local;
reg   [5:0] DATA_y_7_address0_local;
wire    ap_block_pp0_stage15;
wire   [5:0] trunc_ln353_fu_388_p1;
wire   [4:0] tmp_129_fu_430_p4;
wire   [5:0] or_ln4_fu_449_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [29:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 30'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_loady8_fu_260_ap_start_reg = 1'b0;
#0 tid_fu_88 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_260(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_260_ap_start),.ap_done(grp_loady8_fu_260_ap_done),.ap_idle(grp_loady8_fu_260_ap_idle),.ap_ready(grp_loady8_fu_260_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_260_x_0_address0),.x_0_ce0(grp_loady8_fu_260_x_0_ce0),.x_0_q0(smem_q0),.x_1_address0(grp_loady8_fu_260_x_1_address0),.x_1_ce0(grp_loady8_fu_260_x_1_ce0),.x_1_q0(smem_1_q0),.x_2_address0(grp_loady8_fu_260_x_2_address0),.x_2_ce0(grp_loady8_fu_260_x_2_ce0),.x_2_q0(smem_2_q0),.x_3_address0(grp_loady8_fu_260_x_3_address0),.x_3_ce0(grp_loady8_fu_260_x_3_ce0),.x_3_q0(smem_3_q0),.x_4_address0(grp_loady8_fu_260_x_4_address0),.x_4_ce0(grp_loady8_fu_260_x_4_ce0),.x_4_q0(smem_4_q0),.x_5_address0(grp_loady8_fu_260_x_5_address0),.x_5_ce0(grp_loady8_fu_260_x_5_ce0),.x_5_q0(smem_5_q0),.x_6_address0(grp_loady8_fu_260_x_6_address0),.x_6_ce0(grp_loady8_fu_260_x_6_ce0),.x_6_q0(smem_6_q0),.x_7_address0(grp_loady8_fu_260_x_7_address0),.x_7_ce0(grp_loady8_fu_260_x_7_ce0),.x_7_q0(smem_7_q0),.x_8_address0(grp_loady8_fu_260_x_8_address0),.x_8_ce0(grp_loady8_fu_260_x_8_ce0),.x_8_q0(smem_8_q0),.x_9_address0(grp_loady8_fu_260_x_9_address0),.x_9_ce0(grp_loady8_fu_260_x_9_ce0),.x_9_q0(smem_9_q0),.x_10_address0(grp_loady8_fu_260_x_10_address0),.x_10_ce0(grp_loady8_fu_260_x_10_ce0),.x_10_q0(smem_10_q0),.x_11_address0(grp_loady8_fu_260_x_11_address0),.x_11_ce0(grp_loady8_fu_260_x_11_ce0),.x_11_q0(smem_11_q0),.x_12_address0(grp_loady8_fu_260_x_12_address0),.x_12_ce0(grp_loady8_fu_260_x_12_ce0),.x_12_q0(smem_12_q0),.offset(grp_loady8_fu_260_offset),.ap_return_0(grp_loady8_fu_260_ap_return_0),.ap_return_1(grp_loady8_fu_260_ap_return_1),.ap_return_2(grp_loady8_fu_260_ap_return_2),.ap_return_3(grp_loady8_fu_260_ap_return_3),.ap_return_4(grp_loady8_fu_260_ap_return_4),.ap_return_5(grp_loady8_fu_260_ap_return_5),.ap_return_6(grp_loady8_fu_260_ap_return_6),.ap_return_7(grp_loady8_fu_260_ap_return_7));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage29_subdone) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_260_ap_start_reg <= 1'b0;
    end else begin
        if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_371_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            grp_loady8_fu_260_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_260_ap_ready == 1'b1)) begin
            grp_loady8_fu_260_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_88 <= 7'd0;
    end else if (((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tid_fu_88 <= add_ln340_fu_400_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_323 <= grp_loady8_fu_260_ap_return_0;
        reg_328 <= grp_loady8_fu_260_ap_return_1;
        reg_333 <= grp_loady8_fu_260_ap_return_2;
        reg_338 <= grp_loady8_fu_260_ap_return_3;
        reg_343 <= grp_loady8_fu_260_ap_return_4;
        reg_348 <= grp_loady8_fu_260_ap_return_5;
        reg_353 <= grp_loady8_fu_260_ap_return_6;
        reg_358 <= grp_loady8_fu_260_ap_return_7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_6_reg_475 <= ap_sig_allocacmp_tid_6;
        tmp_reg_485 <= ap_sig_allocacmp_tid_6[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_128_reg_489 <= {{tid_6_reg_475[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_s_reg_494 <= {{tid_6_reg_475[5:1]}};
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = zext_ln341_fu_456_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_1_address0_local = zext_ln340_fu_410_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_2_address0_local = zext_ln341_fu_456_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_2_address0_local = zext_ln340_fu_410_p1;
    end else begin
        DATA_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_3_address0_local = zext_ln341_fu_456_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_3_address0_local = zext_ln340_fu_410_p1;
    end else begin
        DATA_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_4_address0_local = zext_ln341_fu_456_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_4_address0_local = zext_ln340_fu_410_p1;
    end else begin
        DATA_y_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_4_we0_local = 1'b1;
    end else begin
        DATA_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_5_address0_local = zext_ln341_fu_456_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_5_address0_local = zext_ln340_fu_410_p1;
    end else begin
        DATA_y_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_5_we0_local = 1'b1;
    end else begin
        DATA_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_6_address0_local = zext_ln341_fu_456_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_6_address0_local = zext_ln340_fu_410_p1;
    end else begin
        DATA_y_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_6_we0_local = 1'b1;
    end else begin
        DATA_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_7_address0_local = zext_ln341_fu_456_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_7_address0_local = zext_ln340_fu_410_p1;
    end else begin
        DATA_y_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_7_we0_local = 1'b1;
    end else begin
        DATA_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address0_local = zext_ln341_fu_456_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_address0_local = zext_ln340_fu_410_p1;
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_485 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage29_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_6 = tid_fu_88;
    end
end
always @ (*) begin
    if (((tmp_reg_485 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if (((1'b0 == ap_block_pp0_stage16_ignoreCallOp81) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_loady8_fu_260_offset = or_ln5_fu_439_p4;
        end else if (((1'b0 == ap_block_pp0_stage1_ignoreCallOp44) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_loady8_fu_260_offset = or_ln_fu_391_p3;
        end else begin
            grp_loady8_fu_260_offset = 'bx;
        end
    end else begin
        grp_loady8_fu_260_offset = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_10_ce0 = grp_loady8_fu_260_x_10_ce0;
    end else begin
        smem_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_11_ce0 = grp_loady8_fu_260_x_11_ce0;
    end else begin
        smem_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_12_ce0 = grp_loady8_fu_260_x_12_ce0;
    end else begin
        smem_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_1_ce0 = grp_loady8_fu_260_x_1_ce0;
    end else begin
        smem_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_2_ce0 = grp_loady8_fu_260_x_2_ce0;
    end else begin
        smem_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_3_ce0 = grp_loady8_fu_260_x_3_ce0;
    end else begin
        smem_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_4_ce0 = grp_loady8_fu_260_x_4_ce0;
    end else begin
        smem_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_5_ce0 = grp_loady8_fu_260_x_5_ce0;
    end else begin
        smem_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_6_ce0 = grp_loady8_fu_260_x_6_ce0;
    end else begin
        smem_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_7_ce0 = grp_loady8_fu_260_x_7_ce0;
    end else begin
        smem_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_8_ce0 = grp_loady8_fu_260_x_8_ce0;
    end else begin
        smem_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_9_ce0 = grp_loady8_fu_260_x_9_ce0;
    end else begin
        smem_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp103) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_485 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_ce0 = grp_loady8_fu_260_x_0_ce0;
    end else begin
        smem_ce0 = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = reg_328;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_2_address0 = DATA_y_2_address0_local;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = reg_333;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_3_address0 = DATA_y_3_address0_local;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = reg_338;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = DATA_y_4_address0_local;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = reg_343;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = DATA_y_5_address0_local;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = reg_348;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = DATA_y_6_address0_local;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = reg_353;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = DATA_y_7_address0_local;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = reg_358;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_d0 = reg_323;
assign DATA_y_we0 = DATA_y_we0_local;
assign add_ln340_fu_400_p2 = (tid_6_reg_475 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp103 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_ignoreCallOp59 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_ignoreCallOp60 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_ignoreCallOp81 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp44 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_ignoreCallOp102 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_loady8_fu_260_ap_start = grp_loady8_fu_260_ap_start_reg;
assign or_ln4_fu_449_p3 = {{tmp_s_reg_494}, {1'd1}};
assign or_ln5_fu_439_p4 = {{{tmp_128_reg_489}, {tmp_129_fu_430_p4}}, {1'd1}};
assign or_ln_fu_391_p3 = {{tmp_128_fu_379_p4}, {trunc_ln353_fu_388_p1}};
assign smem_10_address0 = grp_loady8_fu_260_x_10_address0;
assign smem_11_address0 = grp_loady8_fu_260_x_11_address0;
assign smem_12_address0 = grp_loady8_fu_260_x_12_address0;
assign smem_1_address0 = grp_loady8_fu_260_x_1_address0;
assign smem_2_address0 = grp_loady8_fu_260_x_2_address0;
assign smem_3_address0 = grp_loady8_fu_260_x_3_address0;
assign smem_4_address0 = grp_loady8_fu_260_x_4_address0;
assign smem_5_address0 = grp_loady8_fu_260_x_5_address0;
assign smem_6_address0 = grp_loady8_fu_260_x_6_address0;
assign smem_7_address0 = grp_loady8_fu_260_x_7_address0;
assign smem_8_address0 = grp_loady8_fu_260_x_8_address0;
assign smem_9_address0 = grp_loady8_fu_260_x_9_address0;
assign smem_address0 = grp_loady8_fu_260_x_0_address0;
assign tmp_128_fu_379_p4 = {{tid_6_reg_475[5:3]}};
assign tmp_129_fu_430_p4 = {{tid_6_reg_475[5:1]}};
assign tmp_fu_371_p3 = ap_sig_allocacmp_tid_6[32'd6];
assign trunc_ln353_fu_388_p1 = tid_6_reg_475[5:0];
assign zext_ln340_fu_410_p1 = tid_6_reg_475;
assign zext_ln341_fu_456_p1 = or_ln4_fu_449_p3;
endmodule 
