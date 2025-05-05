module fft1D_512_fft1D_512_Pipeline_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_7_address0,DATA_y_7_ce0,DATA_y_7_we0,DATA_y_7_d0,DATA_y_6_address0,DATA_y_6_ce0,DATA_y_6_we0,DATA_y_6_d0,DATA_y_5_address0,DATA_y_5_ce0,DATA_y_5_we0,DATA_y_5_d0,DATA_y_4_address0,DATA_y_4_ce0,DATA_y_4_we0,DATA_y_4_d0,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1,smem_5_address0,smem_5_ce0,smem_5_q0,smem_5_address1,smem_5_ce1,smem_5_q1,smem_6_address0,smem_6_ce0,smem_6_q0,smem_6_address1,smem_6_ce1,smem_6_q1,smem_7_address0,smem_7_ce0,smem_7_q0,smem_7_address1,smem_7_ce1,smem_7_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 20'd1;
parameter    ap_ST_fsm_pp0_stage1 = 20'd2;
parameter    ap_ST_fsm_pp0_stage2 = 20'd4;
parameter    ap_ST_fsm_pp0_stage3 = 20'd8;
parameter    ap_ST_fsm_pp0_stage4 = 20'd16;
parameter    ap_ST_fsm_pp0_stage5 = 20'd32;
parameter    ap_ST_fsm_pp0_stage6 = 20'd64;
parameter    ap_ST_fsm_pp0_stage7 = 20'd128;
parameter    ap_ST_fsm_pp0_stage8 = 20'd256;
parameter    ap_ST_fsm_pp0_stage9 = 20'd512;
parameter    ap_ST_fsm_pp0_stage10 = 20'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 20'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 20'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 20'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 20'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 20'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 20'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 20'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 20'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 20'd524288;
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
output  [6:0] smem_address0;
output   smem_ce0;
input  [63:0] smem_q0;
output  [6:0] smem_address1;
output   smem_ce1;
input  [63:0] smem_q1;
output  [6:0] smem_1_address0;
output   smem_1_ce0;
input  [63:0] smem_1_q0;
output  [6:0] smem_1_address1;
output   smem_1_ce1;
input  [63:0] smem_1_q1;
output  [6:0] smem_2_address0;
output   smem_2_ce0;
input  [63:0] smem_2_q0;
output  [6:0] smem_2_address1;
output   smem_2_ce1;
input  [63:0] smem_2_q1;
output  [6:0] smem_3_address0;
output   smem_3_ce0;
input  [63:0] smem_3_q0;
output  [6:0] smem_3_address1;
output   smem_3_ce1;
input  [63:0] smem_3_q1;
output  [6:0] smem_4_address0;
output   smem_4_ce0;
input  [63:0] smem_4_q0;
output  [6:0] smem_4_address1;
output   smem_4_ce1;
input  [63:0] smem_4_q1;
output  [6:0] smem_5_address0;
output   smem_5_ce0;
input  [63:0] smem_5_q0;
output  [6:0] smem_5_address1;
output   smem_5_ce1;
input  [63:0] smem_5_q1;
output  [6:0] smem_6_address0;
output   smem_6_ce0;
input  [63:0] smem_6_q0;
output  [6:0] smem_6_address1;
output   smem_6_ce1;
input  [63:0] smem_6_q1;
output  [6:0] smem_7_address0;
output   smem_7_ce0;
input  [63:0] smem_7_q0;
output  [6:0] smem_7_address1;
output   smem_7_ce1;
input  [63:0] smem_7_q1;
reg ap_idle;
reg smem_ce0;
reg smem_ce1;
reg smem_1_ce0;
reg smem_1_ce1;
reg smem_2_ce0;
reg smem_2_ce1;
reg smem_3_ce0;
reg smem_3_ce1;
reg smem_4_ce0;
reg smem_4_ce1;
reg smem_5_ce0;
reg smem_5_ce1;
reg smem_6_ce0;
reg smem_6_ce1;
reg smem_7_ce0;
reg smem_7_ce1;
(* fsm_encoding = "none" *) reg   [19:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_675;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage19;
wire    ap_block_pp0_stage19_subdone;
reg   [63:0] reg_461;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_466;
reg   [63:0] reg_471;
reg   [63:0] reg_476;
reg   [63:0] reg_481;
reg   [63:0] reg_486;
reg   [63:0] reg_491;
reg   [63:0] reg_496;
reg   [6:0] tid_6_reg_664;
wire   [0:0] tmp_fu_509_p3;
wire   [2:0] tmp_64_fu_517_p4;
reg   [2:0] tmp_64_reg_679;
wire    ap_block_pp0_stage1_11001;
wire   [3:0] grp_fu_452_p4;
reg   [3:0] tmp_66_reg_686;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_loady8_fu_390_ap_start;
wire    grp_loady8_fu_390_ap_done;
wire    grp_loady8_fu_390_ap_idle;
wire    grp_loady8_fu_390_ap_ready;
wire   [6:0] grp_loady8_fu_390_x_0_address0;
wire    grp_loady8_fu_390_x_0_ce0;
wire   [6:0] grp_loady8_fu_390_x_0_address1;
wire    grp_loady8_fu_390_x_0_ce1;
wire   [6:0] grp_loady8_fu_390_x_1_address0;
wire    grp_loady8_fu_390_x_1_ce0;
wire   [6:0] grp_loady8_fu_390_x_1_address1;
wire    grp_loady8_fu_390_x_1_ce1;
wire   [6:0] grp_loady8_fu_390_x_2_address0;
wire    grp_loady8_fu_390_x_2_ce0;
wire   [6:0] grp_loady8_fu_390_x_2_address1;
wire    grp_loady8_fu_390_x_2_ce1;
wire   [6:0] grp_loady8_fu_390_x_3_address0;
wire    grp_loady8_fu_390_x_3_ce0;
wire   [6:0] grp_loady8_fu_390_x_3_address1;
wire    grp_loady8_fu_390_x_3_ce1;
wire   [6:0] grp_loady8_fu_390_x_4_address0;
wire    grp_loady8_fu_390_x_4_ce0;
wire   [6:0] grp_loady8_fu_390_x_4_address1;
wire    grp_loady8_fu_390_x_4_ce1;
wire   [6:0] grp_loady8_fu_390_x_5_address0;
wire    grp_loady8_fu_390_x_5_ce0;
wire   [6:0] grp_loady8_fu_390_x_5_address1;
wire    grp_loady8_fu_390_x_5_ce1;
wire   [6:0] grp_loady8_fu_390_x_6_address0;
wire    grp_loady8_fu_390_x_6_ce0;
wire   [6:0] grp_loady8_fu_390_x_6_address1;
wire    grp_loady8_fu_390_x_6_ce1;
wire   [6:0] grp_loady8_fu_390_x_7_address0;
wire    grp_loady8_fu_390_x_7_ce0;
wire   [6:0] grp_loady8_fu_390_x_7_address1;
wire    grp_loady8_fu_390_x_7_ce1;
reg   [8:0] grp_loady8_fu_390_offset;
wire   [63:0] grp_loady8_fu_390_ap_return_0;
wire   [63:0] grp_loady8_fu_390_ap_return_1;
wire   [63:0] grp_loady8_fu_390_ap_return_2;
wire   [63:0] grp_loady8_fu_390_ap_return_3;
wire   [63:0] grp_loady8_fu_390_ap_return_4;
wire   [63:0] grp_loady8_fu_390_ap_return_5;
wire   [63:0] grp_loady8_fu_390_ap_return_6;
wire   [63:0] grp_loady8_fu_390_ap_return_7;
reg    grp_loady8_fu_390_ap_start_reg;
wire    ap_block_pp0_stage1_ignoreCallOp34;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_ignoreCallOp35;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_ignoreCallOp36;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_ignoreCallOp37;
wire    ap_block_pp0_stage5_ignoreCallOp38;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_ignoreCallOp58;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_ignoreCallOp67;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_ignoreCallOp68;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_ignoreCallOp69;
wire    ap_block_pp0_stage10_ignoreCallOp70;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_ignoreCallOp92;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_ignoreCallOp101;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_ignoreCallOp102;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_ignoreCallOp103;
wire    ap_block_pp0_stage15_ignoreCallOp104;
wire    ap_block_pp0_stage16_ignoreCallOp126;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_ignoreCallOp135;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18_ignoreCallOp136;
wire    ap_block_pp0_stage19_ignoreCallOp137;
wire    ap_block_pp0_stage0_ignoreCallOp140;
wire   [8:0] or_ln_fu_529_p3;
wire   [8:0] or_ln2_fu_549_p4;
wire   [8:0] or_ln353_1_fu_579_p4;
wire   [8:0] or_ln353_2_fu_618_p4;
wire   [63:0] zext_ln340_fu_538_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln341_fu_567_p1;
wire    ap_block_pp0_stage11;
wire   [63:0] zext_ln341_1_fu_597_p1;
wire    ap_block_pp0_stage16;
wire   [63:0] zext_ln341_2_fu_645_p1;
wire    ap_block_pp0_stage1;
reg   [6:0] tid_fu_90;
wire   [6:0] add_ln340_fu_628_p2;
wire    ap_block_pp0_stage19_11001;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_6;
wire    ap_block_pp0_stage0;
reg    DATA_y_we0_local;
wire    ap_block_pp0_stage6_11001;
reg    DATA_y_ce0_local;
reg   [5:0] DATA_y_address0_local;
wire    ap_block_pp0_stage11_11001;
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
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage15;
wire   [5:0] trunc_ln353_fu_526_p1;
wire   [4:0] grp_fu_443_p4;
wire   [5:0] or_ln1_fu_559_p3;
wire   [5:0] or_ln340_1_fu_589_p3;
wire   [3:0] tmp_68_fu_609_p4;
wire    ap_block_pp0_stage19;
wire   [5:0] or_ln340_2_fu_638_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [19:0] ap_NS_fsm;
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
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 20'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_loady8_fu_390_ap_start_reg = 1'b0;
#0 tid_fu_90 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_390(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_390_ap_start),.ap_done(grp_loady8_fu_390_ap_done),.ap_idle(grp_loady8_fu_390_ap_idle),.ap_ready(grp_loady8_fu_390_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_390_x_0_address0),.x_0_ce0(grp_loady8_fu_390_x_0_ce0),.x_0_q0(smem_q0),.x_0_address1(grp_loady8_fu_390_x_0_address1),.x_0_ce1(grp_loady8_fu_390_x_0_ce1),.x_0_q1(smem_q1),.x_1_address0(grp_loady8_fu_390_x_1_address0),.x_1_ce0(grp_loady8_fu_390_x_1_ce0),.x_1_q0(smem_1_q0),.x_1_address1(grp_loady8_fu_390_x_1_address1),.x_1_ce1(grp_loady8_fu_390_x_1_ce1),.x_1_q1(smem_1_q1),.x_2_address0(grp_loady8_fu_390_x_2_address0),.x_2_ce0(grp_loady8_fu_390_x_2_ce0),.x_2_q0(smem_2_q0),.x_2_address1(grp_loady8_fu_390_x_2_address1),.x_2_ce1(grp_loady8_fu_390_x_2_ce1),.x_2_q1(smem_2_q1),.x_3_address0(grp_loady8_fu_390_x_3_address0),.x_3_ce0(grp_loady8_fu_390_x_3_ce0),.x_3_q0(smem_3_q0),.x_3_address1(grp_loady8_fu_390_x_3_address1),.x_3_ce1(grp_loady8_fu_390_x_3_ce1),.x_3_q1(smem_3_q1),.x_4_address0(grp_loady8_fu_390_x_4_address0),.x_4_ce0(grp_loady8_fu_390_x_4_ce0),.x_4_q0(smem_4_q0),.x_4_address1(grp_loady8_fu_390_x_4_address1),.x_4_ce1(grp_loady8_fu_390_x_4_ce1),.x_4_q1(smem_4_q1),.x_5_address0(grp_loady8_fu_390_x_5_address0),.x_5_ce0(grp_loady8_fu_390_x_5_ce0),.x_5_q0(smem_5_q0),.x_5_address1(grp_loady8_fu_390_x_5_address1),.x_5_ce1(grp_loady8_fu_390_x_5_ce1),.x_5_q1(smem_5_q1),.x_6_address0(grp_loady8_fu_390_x_6_address0),.x_6_ce0(grp_loady8_fu_390_x_6_ce0),.x_6_q0(smem_6_q0),.x_6_address1(grp_loady8_fu_390_x_6_address1),.x_6_ce1(grp_loady8_fu_390_x_6_ce1),.x_6_q1(smem_6_q1),.x_7_address0(grp_loady8_fu_390_x_7_address0),.x_7_ce0(grp_loady8_fu_390_x_7_ce0),.x_7_q0(smem_7_q0),.x_7_address1(grp_loady8_fu_390_x_7_address1),.x_7_ce1(grp_loady8_fu_390_x_7_ce1),.x_7_q1(smem_7_q1),.offset(grp_loady8_fu_390_offset),.ap_return_0(grp_loady8_fu_390_ap_return_0),.ap_return_1(grp_loady8_fu_390_ap_return_1),.ap_return_2(grp_loady8_fu_390_ap_return_2),.ap_return_3(grp_loady8_fu_390_ap_return_3),.ap_return_4(grp_loady8_fu_390_ap_return_4),.ap_return_5(grp_loady8_fu_390_ap_return_5),.ap_return_6(grp_loady8_fu_390_ap_return_6),.ap_return_7(grp_loady8_fu_390_ap_return_7));
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
        end else if (((1'b0 == ap_block_pp0_stage19_subdone) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_390_ap_start_reg <= 1'b0;
    end else begin
        if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_509_p3 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            grp_loady8_fu_390_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_390_ap_ready == 1'b1)) begin
            grp_loady8_fu_390_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_fu_90 <= 7'd0;
    end else if (((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        tid_fu_90 <= add_ln340_fu_628_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_461 <= grp_loady8_fu_390_ap_return_0;
        reg_466 <= grp_loady8_fu_390_ap_return_1;
        reg_471 <= grp_loady8_fu_390_ap_return_2;
        reg_476 <= grp_loady8_fu_390_ap_return_3;
        reg_481 <= grp_loady8_fu_390_ap_return_4;
        reg_486 <= grp_loady8_fu_390_ap_return_5;
        reg_491 <= grp_loady8_fu_390_ap_return_6;
        reg_496 <= grp_loady8_fu_390_ap_return_7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_6_reg_664 <= ap_sig_allocacmp_tid_6;
        tmp_reg_675 <= ap_sig_allocacmp_tid_6[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_64_reg_679 <= {{tid_6_reg_664[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_66_reg_686 <= {{tid_6_reg_664[5:2]}};
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = zext_ln341_2_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_1_address0_local = zext_ln341_1_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        DATA_y_1_address0_local = zext_ln341_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_1_address0_local = zext_ln340_fu_538_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_2_address0_local = zext_ln341_2_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_2_address0_local = zext_ln341_1_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        DATA_y_2_address0_local = zext_ln341_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_2_address0_local = zext_ln340_fu_538_p1;
    end else begin
        DATA_y_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_3_address0_local = zext_ln341_2_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_3_address0_local = zext_ln341_1_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        DATA_y_3_address0_local = zext_ln341_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_3_address0_local = zext_ln340_fu_538_p1;
    end else begin
        DATA_y_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_4_address0_local = zext_ln341_2_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_4_address0_local = zext_ln341_1_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        DATA_y_4_address0_local = zext_ln341_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_4_address0_local = zext_ln340_fu_538_p1;
    end else begin
        DATA_y_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_4_ce0_local = 1'b1;
    end else begin
        DATA_y_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_4_we0_local = 1'b1;
    end else begin
        DATA_y_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_5_address0_local = zext_ln341_2_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_5_address0_local = zext_ln341_1_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        DATA_y_5_address0_local = zext_ln341_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_5_address0_local = zext_ln340_fu_538_p1;
    end else begin
        DATA_y_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_5_ce0_local = 1'b1;
    end else begin
        DATA_y_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_5_we0_local = 1'b1;
    end else begin
        DATA_y_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_6_address0_local = zext_ln341_2_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_6_address0_local = zext_ln341_1_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        DATA_y_6_address0_local = zext_ln341_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_6_address0_local = zext_ln340_fu_538_p1;
    end else begin
        DATA_y_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_6_ce0_local = 1'b1;
    end else begin
        DATA_y_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_6_we0_local = 1'b1;
    end else begin
        DATA_y_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_7_address0_local = zext_ln341_2_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_7_address0_local = zext_ln341_1_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        DATA_y_7_address0_local = zext_ln341_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_7_address0_local = zext_ln340_fu_538_p1;
    end else begin
        DATA_y_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_7_ce0_local = 1'b1;
    end else begin
        DATA_y_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_7_we0_local = 1'b1;
    end else begin
        DATA_y_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address0_local = zext_ln341_2_fu_645_p1;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        DATA_y_address0_local = zext_ln341_1_fu_597_p1;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        DATA_y_address0_local = zext_ln341_fu_567_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_address0_local = zext_ln340_fu_538_p1;
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_675 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage19_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_6 = tid_fu_90;
    end
end
always @ (*) begin
    if (((tmp_reg_675 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if (((1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            grp_loady8_fu_390_offset = or_ln353_2_fu_618_p4;
        end else if (((1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_loady8_fu_390_offset = or_ln353_1_fu_579_p4;
        end else if (((1'b0 == ap_block_pp0_stage6_ignoreCallOp58) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_loady8_fu_390_offset = or_ln2_fu_549_p4;
        end else if (((1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_loady8_fu_390_offset = or_ln_fu_529_p3;
        end else begin
            grp_loady8_fu_390_offset = 'bx;
        end
    end else begin
        grp_loady8_fu_390_offset = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0 = grp_loady8_fu_390_x_1_ce0;
    end else begin
        smem_1_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1 = grp_loady8_fu_390_x_1_ce1;
    end else begin
        smem_1_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0 = grp_loady8_fu_390_x_2_ce0;
    end else begin
        smem_2_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1 = grp_loady8_fu_390_x_2_ce1;
    end else begin
        smem_2_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0 = grp_loady8_fu_390_x_3_ce0;
    end else begin
        smem_3_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1 = grp_loady8_fu_390_x_3_ce1;
    end else begin
        smem_3_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce0 = grp_loady8_fu_390_x_4_ce0;
    end else begin
        smem_4_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_4_ce1 = grp_loady8_fu_390_x_4_ce1;
    end else begin
        smem_4_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce0 = grp_loady8_fu_390_x_5_ce0;
    end else begin
        smem_5_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_5_ce1 = grp_loady8_fu_390_x_5_ce1;
    end else begin
        smem_5_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce0 = grp_loady8_fu_390_x_6_ce0;
    end else begin
        smem_6_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_6_ce1 = grp_loady8_fu_390_x_6_ce1;
    end else begin
        smem_6_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce0 = grp_loady8_fu_390_x_7_ce0;
    end else begin
        smem_7_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_7_ce1 = grp_loady8_fu_390_x_7_ce1;
    end else begin
        smem_7_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0 = grp_loady8_fu_390_x_0_ce0;
    end else begin
        smem_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp140) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage19_ignoreCallOp137) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage19)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage18_ignoreCallOp136) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage17_ignoreCallOp135) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage16_ignoreCallOp126) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage15_ignoreCallOp104) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage14_ignoreCallOp103) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((tmp_reg_675== 1'd0) & (1'b0 == ap_block_pp0_stage13_ignoreCallOp102) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage12_ignoreCallOp101) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage11_ignoreCallOp92) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage10_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp69) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp68) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp67) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp58)& (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp38) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp37) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage3_ignoreCallOp36) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp35) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_675 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp34) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1 = grp_loady8_fu_390_x_0_ce1;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_y_1_address0 = DATA_y_1_address0_local;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_d0 = reg_466;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_2_address0 = DATA_y_2_address0_local;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_d0 = reg_471;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_3_address0 = DATA_y_3_address0_local;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_d0 = reg_476;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_4_address0 = DATA_y_4_address0_local;
assign DATA_y_4_ce0 = DATA_y_4_ce0_local;
assign DATA_y_4_d0 = reg_481;
assign DATA_y_4_we0 = DATA_y_4_we0_local;
assign DATA_y_5_address0 = DATA_y_5_address0_local;
assign DATA_y_5_ce0 = DATA_y_5_ce0_local;
assign DATA_y_5_d0 = reg_486;
assign DATA_y_5_we0 = DATA_y_5_we0_local;
assign DATA_y_6_address0 = DATA_y_6_address0_local;
assign DATA_y_6_ce0 = DATA_y_6_ce0_local;
assign DATA_y_6_d0 = reg_491;
assign DATA_y_6_we0 = DATA_y_6_we0_local;
assign DATA_y_7_address0 = DATA_y_7_address0_local;
assign DATA_y_7_ce0 = DATA_y_7_ce0_local;
assign DATA_y_7_d0 = reg_496;
assign DATA_y_7_we0 = DATA_y_7_we0_local;
assign DATA_y_address0 = DATA_y_address0_local;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_d0 = reg_461;
assign DATA_y_we0 = DATA_y_we0_local;
assign add_ln340_fu_628_p2 = (tid_6_reg_664 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage19 = ap_CS_fsm[32'd19];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp140 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_ignoreCallOp70 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_ignoreCallOp92 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_ignoreCallOp101 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_ignoreCallOp102 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_ignoreCallOp103 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_ignoreCallOp104 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_ignoreCallOp126 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_ignoreCallOp135 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_ignoreCallOp136 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_ignoreCallOp137 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp34 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp35 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp36 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_ignoreCallOp37 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_ignoreCallOp38 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_ignoreCallOp58 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_ignoreCallOp67 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_ignoreCallOp68 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_ignoreCallOp69 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_fu_443_p4 = {{tid_6_reg_664[5:1]}};
assign grp_fu_452_p4 = {{tid_6_reg_664[5:2]}};
assign grp_loady8_fu_390_ap_start = grp_loady8_fu_390_ap_start_reg;
assign or_ln1_fu_559_p3 = {{grp_fu_443_p4}, {1'd1}};
assign or_ln2_fu_549_p4 = {{{tmp_64_reg_679}, {grp_fu_443_p4}}, {1'd1}};
assign or_ln340_1_fu_589_p3 = {{grp_fu_452_p4}, {2'd2}};
assign or_ln340_2_fu_638_p3 = {{tmp_66_reg_686}, {2'd3}};
assign or_ln353_1_fu_579_p4 = {{{tmp_64_reg_679}, {grp_fu_452_p4}}, {2'd2}};
assign or_ln353_2_fu_618_p4 = {{{tmp_64_reg_679}, {tmp_68_fu_609_p4}}, {2'd3}};
assign or_ln_fu_529_p3 = {{tmp_64_fu_517_p4}, {trunc_ln353_fu_526_p1}};
assign smem_1_address0 = grp_loady8_fu_390_x_1_address0;
assign smem_1_address1 = grp_loady8_fu_390_x_1_address1;
assign smem_2_address0 = grp_loady8_fu_390_x_2_address0;
assign smem_2_address1 = grp_loady8_fu_390_x_2_address1;
assign smem_3_address0 = grp_loady8_fu_390_x_3_address0;
assign smem_3_address1 = grp_loady8_fu_390_x_3_address1;
assign smem_4_address0 = grp_loady8_fu_390_x_4_address0;
assign smem_4_address1 = grp_loady8_fu_390_x_4_address1;
assign smem_5_address0 = grp_loady8_fu_390_x_5_address0;
assign smem_5_address1 = grp_loady8_fu_390_x_5_address1;
assign smem_6_address0 = grp_loady8_fu_390_x_6_address0;
assign smem_6_address1 = grp_loady8_fu_390_x_6_address1;
assign smem_7_address0 = grp_loady8_fu_390_x_7_address0;
assign smem_7_address1 = grp_loady8_fu_390_x_7_address1;
assign smem_address0 = grp_loady8_fu_390_x_0_address0;
assign smem_address1 = grp_loady8_fu_390_x_0_address1;
assign tmp_64_fu_517_p4 = {{tid_6_reg_664[5:3]}};
assign tmp_68_fu_609_p4 = {{tid_6_reg_664[5:2]}};
assign tmp_fu_509_p3 = ap_sig_allocacmp_tid_6[32'd6];
assign trunc_ln353_fu_526_p1 = tid_6_reg_664[5:0];
assign zext_ln340_fu_538_p1 = tid_6_reg_664;
assign zext_ln341_1_fu_597_p1 = or_ln340_1_fu_589_p3;
assign zext_ln341_2_fu_645_p1 = or_ln340_2_fu_638_p3;
assign zext_ln341_fu_567_p1 = or_ln1_fu_559_p3;
endmodule 