
module fft1D_512_fft1D_512_Pipeline_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_15_address0,DATA_y_15_ce0,DATA_y_15_we0,DATA_y_15_d0,DATA_y_14_address0,DATA_y_14_ce0,DATA_y_14_we0,DATA_y_14_d0,DATA_y_13_address0,DATA_y_13_ce0,DATA_y_13_we0,DATA_y_13_d0,DATA_y_12_address0,DATA_y_12_ce0,DATA_y_12_we0,DATA_y_12_d0,DATA_y_11_address0,DATA_y_11_ce0,DATA_y_11_we0,DATA_y_11_d0,DATA_y_10_address0,DATA_y_10_ce0,DATA_y_10_we0,DATA_y_10_d0,DATA_y_9_address0,DATA_y_9_ce0,DATA_y_9_we0,DATA_y_9_d0,DATA_y_8_address0,DATA_y_8_ce0,DATA_y_8_we0,DATA_y_8_d0,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0,smem_11_address0,smem_11_ce0,smem_11_q0,smem_12_address0,smem_12_ce0,smem_12_q0);  
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
output  [4:0] DATA_y_15_address0;
output   DATA_y_15_ce0;
output   DATA_y_15_we0;
output  [63:0] DATA_y_15_d0;
output  [4:0] DATA_y_14_address0;
output   DATA_y_14_ce0;
output   DATA_y_14_we0;
output  [63:0] DATA_y_14_d0;
output  [4:0] DATA_y_13_address0;
output   DATA_y_13_ce0;
output   DATA_y_13_we0;
output  [63:0] DATA_y_13_d0;
output  [4:0] DATA_y_12_address0;
output   DATA_y_12_ce0;
output   DATA_y_12_we0;
output  [63:0] DATA_y_12_d0;
output  [4:0] DATA_y_11_address0;
output   DATA_y_11_ce0;
output   DATA_y_11_we0;
output  [63:0] DATA_y_11_d0;
output  [4:0] DATA_y_10_address0;
output   DATA_y_10_ce0;
output   DATA_y_10_we0;
output  [63:0] DATA_y_10_d0;
output  [4:0] DATA_y_9_address0;
output   DATA_y_9_ce0;
output   DATA_y_9_we0;
output  [63:0] DATA_y_9_d0;
output  [4:0] DATA_y_8_address0;
output   DATA_y_8_ce0;
output   DATA_y_8_we0;
output  [63:0] DATA_y_8_d0;
output  [4:0] DATA_y_7_address0;
output   DATA_y_7_ce0;
output   DATA_y_7_we0;
output  [63:0] DATA_y_7_d0;
output  [4:0] DATA_y_6_address0;
output   DATA_y_6_ce0;
output   DATA_y_6_we0;
output  [63:0] DATA_y_6_d0;
output  [4:0] DATA_y_5_address0;
output   DATA_y_5_ce0;
output   DATA_y_5_we0;
output  [63:0] DATA_y_5_d0;
output  [4:0] DATA_y_4_address0;
output   DATA_y_4_ce0;
output   DATA_y_4_we0;
output  [63:0] DATA_y_4_d0;
output  [4:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [4:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [4:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [4:0] DATA_y_address0;
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
reg   [0:0] tmp_reg_560;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage29;
wire    ap_block_pp0_stage29_subdone;
reg   [63:0] reg_387;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_393;
reg   [63:0] reg_399;
reg   [63:0] reg_405;
reg   [63:0] reg_411;
reg   [63:0] reg_417;
reg   [63:0] reg_423;
reg   [63:0] reg_429;
reg   [6:0] tid_reg_551;
wire   [0:0] tmp_fu_443_p3;
wire   [8:0] zext_ln114_fu_460_p1;
reg   [8:0] zext_ln114_reg_564;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] zext_ln220_fu_495_p1;
reg   [63:0] zext_ln220_reg_569;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_loady8_fu_324_ap_start;
wire    grp_loady8_fu_324_ap_done;
wire    grp_loady8_fu_324_ap_idle;
wire    grp_loady8_fu_324_ap_ready;
wire   [5:0] grp_loady8_fu_324_x_0_address0;
wire    grp_loady8_fu_324_x_0_ce0;
wire   [5:0] grp_loady8_fu_324_x_1_address0;
wire    grp_loady8_fu_324_x_1_ce0;
wire   [5:0] grp_loady8_fu_324_x_2_address0;
wire    grp_loady8_fu_324_x_2_ce0;
wire   [5:0] grp_loady8_fu_324_x_3_address0;
wire    grp_loady8_fu_324_x_3_ce0;
wire   [5:0] grp_loady8_fu_324_x_4_address0;
wire    grp_loady8_fu_324_x_4_ce0;
wire   [5:0] grp_loady8_fu_324_x_5_address0;
wire    grp_loady8_fu_324_x_5_ce0;
wire   [5:0] grp_loady8_fu_324_x_6_address0;
wire    grp_loady8_fu_324_x_6_ce0;
wire   [5:0] grp_loady8_fu_324_x_7_address0;
wire    grp_loady8_fu_324_x_7_ce0;
wire   [5:0] grp_loady8_fu_324_x_8_address0;
wire    grp_loady8_fu_324_x_8_ce0;
wire   [5:0] grp_loady8_fu_324_x_9_address0;
wire    grp_loady8_fu_324_x_9_ce0;
wire   [5:0] grp_loady8_fu_324_x_10_address0;
wire    grp_loady8_fu_324_x_10_ce0;
wire   [5:0] grp_loady8_fu_324_x_11_address0;
wire    grp_loady8_fu_324_x_11_ce0;
wire   [5:0] grp_loady8_fu_324_x_12_address0;
wire    grp_loady8_fu_324_x_12_ce0;
reg   [8:0] grp_loady8_fu_324_offset;
wire   [63:0] grp_loady8_fu_324_ap_return_0;
wire   [63:0] grp_loady8_fu_324_ap_return_1;
wire   [63:0] grp_loady8_fu_324_ap_return_2;
wire   [63:0] grp_loady8_fu_324_ap_return_3;
wire   [63:0] grp_loady8_fu_324_ap_return_4;
wire   [63:0] grp_loady8_fu_324_ap_return_5;
wire   [63:0] grp_loady8_fu_324_ap_return_6;
wire   [63:0] grp_loady8_fu_324_ap_return_7;
reg    grp_loady8_fu_324_ap_start_reg;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_ignoreCallOp59;
wire    ap_block_pp0_stage15_ignoreCallOp60;
wire    ap_block_pp0_stage29_ignoreCallOp103;
wire    ap_block_pp0_stage0_ignoreCallOp106;
wire   [8:0] add_ln232_fu_479_p2;
wire    ap_block_pp0_stage1_ignoreCallOp46;
wire   [8:0] add_ln232_1_fu_528_p2;
wire    ap_block_pp0_stage16_ignoreCallOp82;
wire    ap_block_pp0_stage16;
wire    ap_block_pp0_stage1;
reg   [6:0] tid_4_fu_112;
wire   [6:0] add_ln219_fu_534_p2;
wire    ap_block_pp0_stage29_11001;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
wire    ap_block_pp0_stage0;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_we0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_we0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_we0_local;
reg    DATA_y_3_ce0_local;
reg    DATA_y_4_we0_local;
reg    DATA_y_4_ce0_local;
reg    DATA_y_5_we0_local;
reg    DATA_y_5_ce0_local;
reg    DATA_y_6_we0_local;
reg    DATA_y_6_ce0_local;
reg    DATA_y_7_we0_local;
reg    DATA_y_7_ce0_local;
reg    DATA_y_8_we0_local;
reg    DATA_y_8_ce0_local;
reg    DATA_y_9_we0_local;
reg    DATA_y_9_ce0_local;
reg    DATA_y_10_we0_local;
reg    DATA_y_10_ce0_local;
reg    DATA_y_11_we0_local;
reg    DATA_y_11_ce0_local;
reg    DATA_y_12_we0_local;
reg    DATA_y_12_ce0_local;
reg    DATA_y_13_we0_local;
reg    DATA_y_13_ce0_local;
reg    DATA_y_14_we0_local;
reg    DATA_y_14_ce0_local;
reg    DATA_y_15_we0_local;
reg    DATA_y_15_ce0_local;
wire    ap_block_pp0_stage15;
wire   [2:0] hi_1_fu_451_p4;
wire   [2:0] trunc_ln232_fu_464_p1;
wire   [8:0] mul_ln_fu_467_p5;
wire   [4:0] lshr_ln4_fu_486_p4;
wire   [1:0] tmp_s_fu_507_p4;
wire   [8:0] mul_ln232_1_fu_516_p5;
wire    ap_block_pp0_stage29;
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
#0 grp_loady8_fu_324_ap_start_reg = 1'b0;
#0 tid_4_fu_112 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_324(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_324_ap_start),.ap_done(grp_loady8_fu_324_ap_done),.ap_idle(grp_loady8_fu_324_ap_idle),.ap_ready(grp_loady8_fu_324_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_324_x_0_address0),.x_0_ce0(grp_loady8_fu_324_x_0_ce0),.x_0_q0(smem_q0),.x_1_address0(grp_loady8_fu_324_x_1_address0),.x_1_ce0(grp_loady8_fu_324_x_1_ce0),.x_1_q0(smem_1_q0),.x_2_address0(grp_loady8_fu_324_x_2_address0),.x_2_ce0(grp_loady8_fu_324_x_2_ce0),.x_2_q0(smem_2_q0),.x_3_address0(grp_loady8_fu_324_x_3_address0),.x_3_ce0(grp_loady8_fu_324_x_3_ce0),.x_3_q0(smem_3_q0),.x_4_address0(grp_loady8_fu_324_x_4_address0),.x_4_ce0(grp_loady8_fu_324_x_4_ce0),.x_4_q0(smem_4_q0),.x_5_address0(grp_loady8_fu_324_x_5_address0),.x_5_ce0(grp_loady8_fu_324_x_5_ce0),.x_5_q0(smem_5_q0),.x_6_address0(grp_loady8_fu_324_x_6_address0),.x_6_ce0(grp_loady8_fu_324_x_6_ce0),.x_6_q0(smem_6_q0),.x_7_address0(grp_loady8_fu_324_x_7_address0),.x_7_ce0(grp_loady8_fu_324_x_7_ce0),.x_7_q0(smem_7_q0),.x_8_address0(grp_loady8_fu_324_x_8_address0),.x_8_ce0(grp_loady8_fu_324_x_8_ce0),.x_8_q0(smem_8_q0),.x_9_address0(grp_loady8_fu_324_x_9_address0),.x_9_ce0(grp_loady8_fu_324_x_9_ce0),.x_9_q0(smem_9_q0),.x_10_address0(grp_loady8_fu_324_x_10_address0),.x_10_ce0(grp_loady8_fu_324_x_10_ce0),.x_10_q0(smem_10_q0),.x_11_address0(grp_loady8_fu_324_x_11_address0),.x_11_ce0(grp_loady8_fu_324_x_11_ce0),.x_11_q0(smem_11_q0),.x_12_address0(grp_loady8_fu_324_x_12_address0),.x_12_ce0(grp_loady8_fu_324_x_12_ce0),.x_12_q0(smem_12_q0),.offset(grp_loady8_fu_324_offset),.ap_return_0(grp_loady8_fu_324_ap_return_0),.ap_return_1(grp_loady8_fu_324_ap_return_1),.ap_return_2(grp_loady8_fu_324_ap_return_2),.ap_return_3(grp_loady8_fu_324_ap_return_3),.ap_return_4(grp_loady8_fu_324_ap_return_4),.ap_return_5(grp_loady8_fu_324_ap_return_5),.ap_return_6(grp_loady8_fu_324_ap_return_6),.ap_return_7(grp_loady8_fu_324_ap_return_7));
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
        grp_loady8_fu_324_ap_start_reg <= 1'b0;
    end else begin
        if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_443_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            grp_loady8_fu_324_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_324_ap_ready == 1'b1)) begin
            grp_loady8_fu_324_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_4_fu_112 <= 7'd0;
    end else if (((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29))) begin
        tid_4_fu_112 <= add_ln219_fu_534_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_387 <= grp_loady8_fu_324_ap_return_0;
        reg_393 <= grp_loady8_fu_324_ap_return_1;
        reg_399 <= grp_loady8_fu_324_ap_return_2;
        reg_405 <= grp_loady8_fu_324_ap_return_3;
        reg_411 <= grp_loady8_fu_324_ap_return_4;
        reg_417 <= grp_loady8_fu_324_ap_return_5;
        reg_423 <= grp_loady8_fu_324_ap_return_6;
        reg_429 <= grp_loady8_fu_324_ap_return_7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_reg_551 <= ap_sig_allocacmp_tid;
        tmp_reg_560 <= ap_sig_allocacmp_tid[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        zext_ln114_reg_564[2 : 0] <= zext_ln114_fu_460_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        zext_ln220_reg_569[4 : 0] <= zext_ln220_fu_495_p1[4 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_10_ce0_local = 1'b1;
    end else begin
        DATA_y_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_10_we0_local = 1'b1;
    end else begin
        DATA_y_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_11_ce0_local = 1'b1;
    end else begin
        DATA_y_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_11_we0_local = 1'b1;
    end else begin
        DATA_y_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_12_ce0_local = 1'b1;
    end else begin
        DATA_y_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_12_we0_local = 1'b1;
    end else begin
        DATA_y_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_13_ce0_local = 1'b1;
    end else begin
        DATA_y_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_13_we0_local = 1'b1;
    end else begin
        DATA_y_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_14_ce0_local = 1'b1;
    end else begin
        DATA_y_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_14_we0_local = 1'b1;
    end else begin
        DATA_y_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_15_ce0_local = 1'b1;
    end else begin
        DATA_y_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_15_we0_local = 1'b1;
    end else begin
        DATA_y_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_4_we0_local = 1'b1;
    end else begin
        DATA_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_5_we0_local = 1'b1;
    end else begin
        DATA_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_6_we0_local = 1'b1;
    end else begin
        DATA_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_7_we0_local = 1'b1;
    end else begin
        DATA_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_8_ce0_local = 1'b1;
    end else begin
        DATA_y_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_8_we0_local = 1'b1;
    end else begin
        DATA_y_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_9_ce0_local = 1'b1;
    end else begin
        DATA_y_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_9_we0_local = 1'b1;
    end else begin
        DATA_y_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_560 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_4_fu_112;
    end
end
always @ (*) begin
    if (((tmp_reg_560 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if (((1'b0 == ap_block_pp0_stage16_ignoreCallOp82) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_loady8_fu_324_offset = add_ln232_1_fu_528_p2;
        end else if (((1'b0 == ap_block_pp0_stage1_ignoreCallOp46) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_loady8_fu_324_offset = add_ln232_fu_479_p2;
        end else begin
            grp_loady8_fu_324_offset = 'bx;
        end
    end else begin
        grp_loady8_fu_324_offset = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_10_ce0 = grp_loady8_fu_324_x_10_ce0;
    end else begin
        smem_10_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_11_ce0 = grp_loady8_fu_324_x_11_ce0;
    end else begin
        smem_11_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_12_ce0 = grp_loady8_fu_324_x_12_ce0;
    end else begin
        smem_12_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_1_ce0 = grp_loady8_fu_324_x_1_ce0;
    end else begin
        smem_1_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_2_ce0 = grp_loady8_fu_324_x_2_ce0;
    end else begin
        smem_2_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_3_ce0 = grp_loady8_fu_324_x_3_ce0;
    end else begin
        smem_3_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_4_ce0 = grp_loady8_fu_324_x_4_ce0;
    end else begin
        smem_4_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_5_ce0 = grp_loady8_fu_324_x_5_ce0;
    end else begin
        smem_5_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_6_ce0 = grp_loady8_fu_324_x_6_ce0;
    end else begin
        smem_6_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_7_ce0 = grp_loady8_fu_324_x_7_ce0;
    end else begin
        smem_7_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_8_ce0 = grp_loady8_fu_324_x_8_ce0;
    end else begin
        smem_8_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_9_ce0 = grp_loady8_fu_324_x_9_ce0;
    end else begin
        smem_9_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp106) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage29_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage29)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp60) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_560 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp59) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)))) begin
        smem_ce0 = grp_loady8_fu_324_x_0_ce0;
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
assign DATA_y_10_address0 = zext_ln220_reg_569;
assign DATA_y_10_ce0 = DATA_y_10_ce0_local;
assign DATA_y_10_d0 = reg_399;
assign DATA_y_10_we0 = DATA_y_10_we0_local;
assign DATA_y_11_address0 = zext_ln220_reg_569;
assign DATA_y_11_ce0 = DATA_y_11_ce0_local;
assign DATA_y_11_d0 = reg_405;
assign DATA_y_11_we0 = DATA_y_11_we0_local;
assign DATA_y_12_address0 = zext_ln220_reg_569;
assign DATA_y_12_ce0 = DATA_y_12_ce0_local;
assign DATA_y_12_d0 = reg_411;
assign DATA_y_12_we0 = DATA_y_12_we0_local;
assign DATA_y_13_address0 = zext_ln220_reg_569;
assign DATA_y_13_ce0 = DATA_y_13_ce0_local;
assign DATA_y_13_d0 = reg_417;
assign DATA_y_13_we0 = DATA_y_13_we0_local;
assign DATA_y_14_address0 = zext_ln220_reg_569;
assign DATA_y_14_ce0 = DATA_y_14_ce0_local;
assign DATA_y_14_d0 = reg_423;
assign DATA_y_14_we0 = DATA_y_14_we0_local;
assign DATA_y_15_address0 = zext_ln220_reg_569;
assign DATA_y_15_ce0 = DATA_y_15_ce0_local;
assign DATA_y_15_d0 = reg_429;
assign DATA_y_15_we0 = DATA_y_15_we0_local;
assign DATA_y_1_address0 = zext_ln220_fu_495_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = reg_393;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_2_address0 = zext_ln220_fu_495_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = reg_399;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_3_address0 = zext_ln220_fu_495_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = reg_405;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = zext_ln220_fu_495_p1;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = reg_411;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = zext_ln220_fu_495_p1;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = reg_417;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = zext_ln220_fu_495_p1;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = reg_423;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = zext_ln220_fu_495_p1;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = reg_429;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_8_address0 = zext_ln220_reg_569;
assign DATA_y_8_ce0 = DATA_y_8_ce0_local;
assign DATA_y_8_d0 = reg_387;
assign DATA_y_8_we0 = DATA_y_8_we0_local;
assign DATA_y_9_address0 = zext_ln220_reg_569;
assign DATA_y_9_ce0 = DATA_y_9_ce0_local;
assign DATA_y_9_d0 = reg_393;
assign DATA_y_9_we0 = DATA_y_9_we0_local;
assign DATA_y_address0 = zext_ln220_fu_495_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_d0 = reg_387;
assign DATA_y_we0 = DATA_y_we0_local;
assign add_ln219_fu_534_p2 = (tid_reg_551 + 7'd2);
assign add_ln232_1_fu_528_p2 = (mul_ln232_1_fu_516_p5 + zext_ln114_reg_564);
assign add_ln232_fu_479_p2 = (mul_ln_fu_467_p5 + zext_ln114_fu_460_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage29 = ap_CS_fsm[32'd29];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp106 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage16_ignoreCallOp82 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp46 = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_ignoreCallOp103 = ~(1'b1 == 1'b1);
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
assign grp_loady8_fu_324_ap_start = grp_loady8_fu_324_ap_start_reg;
assign hi_1_fu_451_p4 = {{tid_reg_551[5:3]}};
assign lshr_ln4_fu_486_p4 = {{tid_reg_551[5:1]}};
assign mul_ln232_1_fu_516_p5 = {{{{tmp_s_fu_507_p4}, {3'd4}}, {tmp_s_fu_507_p4}}, {2'd2}};
assign mul_ln_fu_467_p5 = {{{{trunc_ln232_fu_464_p1}, {2'd0}}, {trunc_ln232_fu_464_p1}}, {1'd0}};
assign smem_10_address0 = grp_loady8_fu_324_x_10_address0;
assign smem_11_address0 = grp_loady8_fu_324_x_11_address0;
assign smem_12_address0 = grp_loady8_fu_324_x_12_address0;
assign smem_1_address0 = grp_loady8_fu_324_x_1_address0;
assign smem_2_address0 = grp_loady8_fu_324_x_2_address0;
assign smem_3_address0 = grp_loady8_fu_324_x_3_address0;
assign smem_4_address0 = grp_loady8_fu_324_x_4_address0;
assign smem_5_address0 = grp_loady8_fu_324_x_5_address0;
assign smem_6_address0 = grp_loady8_fu_324_x_6_address0;
assign smem_7_address0 = grp_loady8_fu_324_x_7_address0;
assign smem_8_address0 = grp_loady8_fu_324_x_8_address0;
assign smem_9_address0 = grp_loady8_fu_324_x_9_address0;
assign smem_address0 = grp_loady8_fu_324_x_0_address0;
assign tmp_fu_443_p3 = ap_sig_allocacmp_tid[32'd6];
assign tmp_s_fu_507_p4 = {{tid_reg_551[2:1]}};
assign trunc_ln232_fu_464_p1 = tid_reg_551[2:0];
assign zext_ln114_fu_460_p1 = hi_1_fu_451_p4;
assign zext_ln220_fu_495_p1 = lshr_ln4_fu_486_p4;
always @ (posedge ap_clk) begin
    zext_ln114_reg_564[8:3] <= 6'b000000;
    zext_ln220_reg_569[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 
