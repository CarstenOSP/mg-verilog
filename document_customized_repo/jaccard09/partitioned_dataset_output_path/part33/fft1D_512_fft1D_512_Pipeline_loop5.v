
module fft1D_512_fft1D_512_Pipeline_loop5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 10'd1;
parameter    ap_ST_fsm_pp0_stage1 = 10'd2;
parameter    ap_ST_fsm_pp0_stage2 = 10'd4;
parameter    ap_ST_fsm_pp0_stage3 = 10'd8;
parameter    ap_ST_fsm_pp0_stage4 = 10'd16;
parameter    ap_ST_fsm_pp0_stage5 = 10'd32;
parameter    ap_ST_fsm_pp0_stage6 = 10'd64;
parameter    ap_ST_fsm_pp0_stage7 = 10'd128;
parameter    ap_ST_fsm_pp0_stage8 = 10'd256;
parameter    ap_ST_fsm_pp0_stage9 = 10'd512;
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
reg smem_ce0;
reg smem_ce1;
reg smem_1_ce0;
reg smem_1_ce1;
reg smem_2_ce0;
reg smem_2_ce1;
reg smem_3_ce0;
reg smem_3_ce1;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] tmp_reg_536;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [63:0] reg_275;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_280;
reg   [63:0] reg_285;
reg   [63:0] reg_290;
reg   [63:0] reg_295;
reg   [63:0] reg_300;
reg   [63:0] reg_305;
reg   [63:0] reg_310;
reg   [6:0] tid_reg_528;
wire   [0:0] tmp_fu_323_p3;
wire   [8:0] zext_ln114_fu_341_p1;
reg   [8:0] zext_ln114_reg_540;
wire   [8:0] add_ln232_fu_361_p2;
reg   [8:0] add_ln232_reg_545;
wire   [8:0] add_ln232_1_fu_388_p2;
reg   [8:0] add_ln232_1_reg_550;
wire   [5:0] trunc_ln220_fu_393_p1;
reg   [5:0] trunc_ln220_reg_555;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [4:0] tmp_s_reg_561;
wire    ap_block_pp0_stage9_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_loady8_fu_230_ap_start;
wire    grp_loady8_fu_230_ap_done;
wire    grp_loady8_fu_230_ap_idle;
wire    grp_loady8_fu_230_ap_ready;
wire   [7:0] grp_loady8_fu_230_x_0_address0;
wire    grp_loady8_fu_230_x_0_ce0;
wire   [7:0] grp_loady8_fu_230_x_0_address1;
wire    grp_loady8_fu_230_x_0_ce1;
wire   [7:0] grp_loady8_fu_230_x_1_address0;
wire    grp_loady8_fu_230_x_1_ce0;
wire   [7:0] grp_loady8_fu_230_x_1_address1;
wire    grp_loady8_fu_230_x_1_ce1;
wire   [7:0] grp_loady8_fu_230_x_2_address0;
wire    grp_loady8_fu_230_x_2_ce0;
wire   [7:0] grp_loady8_fu_230_x_2_address1;
wire    grp_loady8_fu_230_x_2_ce1;
wire   [7:0] grp_loady8_fu_230_x_3_address0;
wire    grp_loady8_fu_230_x_3_ce0;
wire   [7:0] grp_loady8_fu_230_x_3_address1;
wire    grp_loady8_fu_230_x_3_ce1;
reg   [8:0] grp_loady8_fu_230_offset;
wire   [63:0] grp_loady8_fu_230_ap_return_0;
wire   [63:0] grp_loady8_fu_230_ap_return_1;
wire   [63:0] grp_loady8_fu_230_ap_return_2;
wire   [63:0] grp_loady8_fu_230_ap_return_3;
wire   [63:0] grp_loady8_fu_230_ap_return_4;
wire   [63:0] grp_loady8_fu_230_ap_return_5;
wire   [63:0] grp_loady8_fu_230_ap_return_6;
wire   [63:0] grp_loady8_fu_230_ap_return_7;
reg    grp_loady8_fu_230_ap_start_reg;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_ignoreCallOp27;
wire    ap_block_pp0_stage2_ignoreCallOp28;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_ignoreCallOp29;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_ignoreCallOp30;
wire    ap_block_pp0_stage5_ignoreCallOp31;
wire    ap_block_pp0_stage6_ignoreCallOp52;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_ignoreCallOp65;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_ignoreCallOp70;
wire    ap_block_pp0_stage9_ignoreCallOp72;
wire    ap_block_pp0_stage0_ignoreCallOp75;
wire   [63:0] zext_ln220_fu_404_p1;
wire    ap_block_pp0_stage6;
wire   [63:0] zext_ln222_fu_418_p1;
wire   [63:0] zext_ln224_fu_431_p1;
wire    ap_block_pp0_stage7;
wire   [63:0] zext_ln226_fu_444_p1;
wire   [63:0] zext_ln220_1_fu_476_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln222_1_fu_489_p1;
wire   [63:0] zext_ln224_1_fu_502_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln226_1_fu_515_p1;
reg   [6:0] tid_4_fu_80;
wire   [6:0] add_ln219_fu_459_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid;
wire    ap_block_pp0_stage0;
reg    DATA_y_we1_local;
reg   [63:0] DATA_y_d1_local;
reg    DATA_y_ce1_local;
reg   [7:0] DATA_y_address1_local;
reg    DATA_y_we0_local;
reg   [63:0] DATA_y_d0_local;
reg    DATA_y_ce0_local;
reg   [7:0] DATA_y_address0_local;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage2_11001;
reg    DATA_y_1_we1_local;
reg   [63:0] DATA_y_1_d1_local;
reg    DATA_y_1_ce1_local;
reg   [7:0] DATA_y_1_address1_local;
reg    DATA_y_1_we0_local;
reg   [63:0] DATA_y_1_d0_local;
reg    DATA_y_1_ce0_local;
reg   [7:0] DATA_y_1_address0_local;
wire    ap_block_pp0_stage5;
wire   [2:0] hi_1_fu_331_p4;
wire   [2:0] trunc_ln232_fu_345_p1;
wire   [8:0] mul_ln_fu_349_p5;
wire   [1:0] tmp_21_fu_367_p4;
wire   [8:0] mul_ln232_1_fu_376_p5;
wire   [7:0] shl_ln4_fu_396_p3;
wire   [7:0] or_ln_fu_410_p3;
wire   [7:0] or_ln13_fu_424_p3;
wire   [7:0] or_ln14_fu_437_p3;
wire    ap_block_pp0_stage9;
wire   [7:0] shl_ln220_1_fu_469_p3;
wire   [7:0] or_ln222_1_fu_482_p3;
wire   [7:0] or_ln224_1_fu_495_p3;
wire   [7:0] or_ln226_1_fu_508_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [9:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_loady8_fu_230_ap_start_reg = 1'b0;
#0 tid_4_fu_80 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_230(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_230_ap_start),.ap_done(grp_loady8_fu_230_ap_done),.ap_idle(grp_loady8_fu_230_ap_idle),.ap_ready(grp_loady8_fu_230_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_230_x_0_address0),.x_0_ce0(grp_loady8_fu_230_x_0_ce0),.x_0_q0(smem_q0),.x_0_address1(grp_loady8_fu_230_x_0_address1),.x_0_ce1(grp_loady8_fu_230_x_0_ce1),.x_0_q1(smem_q1),.x_1_address0(grp_loady8_fu_230_x_1_address0),.x_1_ce0(grp_loady8_fu_230_x_1_ce0),.x_1_q0(smem_1_q0),.x_1_address1(grp_loady8_fu_230_x_1_address1),.x_1_ce1(grp_loady8_fu_230_x_1_ce1),.x_1_q1(smem_1_q1),.x_2_address0(grp_loady8_fu_230_x_2_address0),.x_2_ce0(grp_loady8_fu_230_x_2_ce0),.x_2_q0(smem_2_q0),.x_2_address1(grp_loady8_fu_230_x_2_address1),.x_2_ce1(grp_loady8_fu_230_x_2_ce1),.x_2_q1(smem_2_q1),.x_3_address0(grp_loady8_fu_230_x_3_address0),.x_3_ce0(grp_loady8_fu_230_x_3_ce0),.x_3_q0(smem_3_q0),.x_3_address1(grp_loady8_fu_230_x_3_address1),.x_3_ce1(grp_loady8_fu_230_x_3_ce1),.x_3_q1(smem_3_q1),.offset(grp_loady8_fu_230_offset),.ap_return_0(grp_loady8_fu_230_ap_return_0),.ap_return_1(grp_loady8_fu_230_ap_return_1),.ap_return_2(grp_loady8_fu_230_ap_return_2),.ap_return_3(grp_loady8_fu_230_ap_return_3),.ap_return_4(grp_loady8_fu_230_ap_return_4),.ap_return_5(grp_loady8_fu_230_ap_return_5),.ap_return_6(grp_loady8_fu_230_ap_return_6),.ap_return_7(grp_loady8_fu_230_ap_return_7));
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
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_230_ap_start_reg <= 1'b0;
    end else begin
        if ((((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_fu_323_p3 == 1'd0)))) begin
            grp_loady8_fu_230_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_230_ap_ready == 1'b1)) begin
            grp_loady8_fu_230_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tid_4_fu_80 <= 7'd0;
    end else if (((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        tid_4_fu_80 <= add_ln219_fu_459_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln232_1_reg_550 <= add_ln232_1_fu_388_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln232_reg_545 <= add_ln232_fu_361_p2;
        tid_reg_528 <= ap_sig_allocacmp_tid;
        tmp_reg_536 <= ap_sig_allocacmp_tid[32'd6];
        zext_ln114_reg_540[2 : 0] <= zext_ln114_fu_341_p1[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_275 <= grp_loady8_fu_230_ap_return_0;
        reg_280 <= grp_loady8_fu_230_ap_return_1;
        reg_285 <= grp_loady8_fu_230_ap_return_2;
        reg_290 <= grp_loady8_fu_230_ap_return_3;
        reg_295 <= grp_loady8_fu_230_ap_return_4;
        reg_300 <= grp_loady8_fu_230_ap_return_5;
        reg_305 <= grp_loady8_fu_230_ap_return_6;
        reg_310 <= grp_loady8_fu_230_ap_return_7;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        tmp_s_reg_561 <= {{tid_reg_528[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        trunc_ln220_reg_555 <= trunc_ln220_fu_393_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_address0_local = zext_ln226_1_fu_515_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address0_local = zext_ln222_1_fu_489_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_1_address0_local = zext_ln226_fu_444_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_1_address0_local = zext_ln222_fu_418_p1;
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_1_address1_local = zext_ln224_1_fu_502_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_1_address1_local = zext_ln220_1_fu_476_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_1_address1_local = zext_ln224_fu_431_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_1_address1_local = zext_ln220_fu_404_p1;
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        DATA_y_1_d0_local = reg_310;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_y_1_d0_local = reg_290;
    end else begin
        DATA_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        DATA_y_1_d1_local = reg_300;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_y_1_d1_local = reg_280;
    end else begin
        DATA_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_address0_local = zext_ln226_1_fu_515_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address0_local = zext_ln222_1_fu_489_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_address0_local = zext_ln226_fu_444_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_address0_local = zext_ln222_fu_418_p1;
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        DATA_y_address1_local = zext_ln224_1_fu_502_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        DATA_y_address1_local = zext_ln220_1_fu_476_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        DATA_y_address1_local = zext_ln224_fu_431_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        DATA_y_address1_local = zext_ln220_fu_404_p1;
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        DATA_y_d0_local = reg_305;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_y_d0_local = reg_285;
    end else begin
        DATA_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)))) begin
        DATA_y_d1_local = reg_295;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_y_d1_local = reg_275;
    end else begin
        DATA_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_536 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid = 7'd0;
    end else begin
        ap_sig_allocacmp_tid = tid_4_fu_80;
    end
end
always @ (*) begin
    if (((tmp_reg_536 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        if (((1'b0 == ap_block_pp0_stage6_ignoreCallOp52) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_loady8_fu_230_offset = add_ln232_1_reg_550;
        end else if (((1'b0 == ap_block_pp0_stage1_ignoreCallOp27) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_loady8_fu_230_offset = add_ln232_reg_545;
        end else begin
            grp_loady8_fu_230_offset = 'bx;
        end
    end else begin
        grp_loady8_fu_230_offset = 'bx;
    end
end
always @ (*) begin
if ((((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp75) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp72) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp52) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_536 == 1'd0) & (1'b0== ap_block_pp0_stage3_ignoreCallOp29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce0 = grp_loady8_fu_230_x_1_ce0;
    end else begin
        smem_1_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp75) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp72) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp52) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_536 == 1'd0) & (1'b0== ap_block_pp0_stage3_ignoreCallOp29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_1_ce1 = grp_loady8_fu_230_x_1_ce1;
    end else begin
        smem_1_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp75) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp72) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp52) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_536 == 1'd0) & (1'b0== ap_block_pp0_stage3_ignoreCallOp29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce0 = grp_loady8_fu_230_x_2_ce0;
    end else begin
        smem_2_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp75) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp72) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp52) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_536 == 1'd0) & (1'b0== ap_block_pp0_stage3_ignoreCallOp29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_2_ce1 = grp_loady8_fu_230_x_2_ce1;
    end else begin
        smem_2_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp75) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp72) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp52) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_536 == 1'd0) & (1'b0== ap_block_pp0_stage3_ignoreCallOp29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce0 = grp_loady8_fu_230_x_3_ce0;
    end else begin
        smem_3_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp75) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp72) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp52) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_536 == 1'd0) & (1'b0== ap_block_pp0_stage3_ignoreCallOp29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_3_ce1 = grp_loady8_fu_230_x_3_ce1;
    end else begin
        smem_3_ce1 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp75) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp72) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp52) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_536 == 1'd0) & (1'b0== ap_block_pp0_stage3_ignoreCallOp29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce0 = grp_loady8_fu_230_x_0_ce0;
    end else begin
        smem_ce0 = 1'b0;
    end
end
always @ (*) begin
if ((((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage0_ignoreCallOp75) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage9_ignoreCallOp72) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage8_ignoreCallOp70) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage7_ignoreCallOp65) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage6_ignoreCallOp52) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage5_ignoreCallOp31) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage4_ignoreCallOp30) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((tmp_reg_536 == 1'd0) & (1'b0== ap_block_pp0_stage3_ignoreCallOp29) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage2_ignoreCallOp28) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((tmp_reg_536 == 1'd0) & (1'b0 == ap_block_pp0_stage1_ignoreCallOp27) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        smem_ce1 = grp_loady8_fu_230_x_0_ce1;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
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
assign add_ln219_fu_459_p2 = (tid_reg_528 + 7'd2);
assign add_ln232_1_fu_388_p2 = (mul_ln232_1_fu_376_p5 + zext_ln114_reg_540);
assign add_ln232_fu_361_p2 = (mul_ln_fu_349_p5 + zext_ln114_fu_341_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
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
assign ap_block_pp0_stage0_ignoreCallOp75 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp27 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_ignoreCallOp28 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_ignoreCallOp29 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_ignoreCallOp30 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_ignoreCallOp31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_ignoreCallOp52 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_ignoreCallOp65 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_ignoreCallOp70 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_ignoreCallOp72 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign grp_loady8_fu_230_ap_start = grp_loady8_fu_230_ap_start_reg;
assign hi_1_fu_331_p4 = {{ap_sig_allocacmp_tid[5:3]}};
assign mul_ln232_1_fu_376_p5 = {{{{tmp_21_fu_367_p4}, {3'd4}}, {tmp_21_fu_367_p4}}, {2'd2}};
assign mul_ln_fu_349_p5 = {{{{trunc_ln232_fu_345_p1}, {2'd0}}, {trunc_ln232_fu_345_p1}}, {1'd0}};
assign or_ln13_fu_424_p3 = {{trunc_ln220_reg_555}, {2'd2}};
assign or_ln14_fu_437_p3 = {{trunc_ln220_reg_555}, {2'd3}};
assign or_ln222_1_fu_482_p3 = {{tmp_s_reg_561}, {3'd5}};
assign or_ln224_1_fu_495_p3 = {{tmp_s_reg_561}, {3'd6}};
assign or_ln226_1_fu_508_p3 = {{tmp_s_reg_561}, {3'd7}};
assign or_ln_fu_410_p3 = {{trunc_ln220_fu_393_p1}, {2'd1}};
assign shl_ln220_1_fu_469_p3 = {{tmp_s_reg_561}, {3'd4}};
assign shl_ln4_fu_396_p3 = {{trunc_ln220_fu_393_p1}, {2'd0}};
assign smem_1_address0 = grp_loady8_fu_230_x_1_address0;
assign smem_1_address1 = grp_loady8_fu_230_x_1_address1;
assign smem_2_address0 = grp_loady8_fu_230_x_2_address0;
assign smem_2_address1 = grp_loady8_fu_230_x_2_address1;
assign smem_3_address0 = grp_loady8_fu_230_x_3_address0;
assign smem_3_address1 = grp_loady8_fu_230_x_3_address1;
assign smem_address0 = grp_loady8_fu_230_x_0_address0;
assign smem_address1 = grp_loady8_fu_230_x_0_address1;
assign tmp_21_fu_367_p4 = {{tid_reg_528[2:1]}};
assign tmp_fu_323_p3 = ap_sig_allocacmp_tid[32'd6];
assign trunc_ln220_fu_393_p1 = tid_reg_528[5:0];
assign trunc_ln232_fu_345_p1 = ap_sig_allocacmp_tid[2:0];
assign zext_ln114_fu_341_p1 = hi_1_fu_331_p4;
assign zext_ln220_1_fu_476_p1 = shl_ln220_1_fu_469_p3;
assign zext_ln220_fu_404_p1 = shl_ln4_fu_396_p3;
assign zext_ln222_1_fu_489_p1 = or_ln222_1_fu_482_p3;
assign zext_ln222_fu_418_p1 = or_ln_fu_410_p3;
assign zext_ln224_1_fu_502_p1 = or_ln224_1_fu_495_p3;
assign zext_ln224_fu_431_p1 = or_ln13_fu_424_p3;
assign zext_ln226_1_fu_515_p1 = or_ln226_1_fu_508_p3;
assign zext_ln226_fu_444_p1 = or_ln14_fu_437_p3;
always @ (posedge ap_clk) begin
    zext_ln114_reg_540[8:3] <= 6'b000000;
end
endmodule 
