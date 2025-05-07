module fft1D_512_fft1D_512_Pipeline_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_3_address0,DATA_y_3_ce0,DATA_y_3_we0,DATA_y_3_d0,DATA_y_3_address1,DATA_y_3_ce1,DATA_y_3_we1,DATA_y_3_d1,DATA_y_2_address0,DATA_y_2_ce0,DATA_y_2_we0,DATA_y_2_d0,DATA_y_2_address1,DATA_y_2_ce1,DATA_y_2_we1,DATA_y_2_d1,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,smem_address0,smem_ce0,smem_q0,smem_1_address0,smem_1_ce0,smem_1_q0,smem_2_address0,smem_2_ce0,smem_2_q0,smem_3_address0,smem_3_ce0,smem_3_q0,smem_4_address0,smem_4_ce0,smem_4_q0,smem_5_address0,smem_5_ce0,smem_5_q0,smem_6_address0,smem_6_ce0,smem_6_q0,smem_7_address0,smem_7_ce0,smem_7_q0,smem_8_address0,smem_8_ce0,smem_8_q0,smem_9_address0,smem_9_ce0,smem_9_q0,smem_10_address0,smem_10_ce0,smem_10_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] DATA_y_3_address0;
output   DATA_y_3_ce0;
output   DATA_y_3_we0;
output  [63:0] DATA_y_3_d0;
output  [6:0] DATA_y_3_address1;
output   DATA_y_3_ce1;
output   DATA_y_3_we1;
output  [63:0] DATA_y_3_d1;
output  [6:0] DATA_y_2_address0;
output   DATA_y_2_ce0;
output   DATA_y_2_we0;
output  [63:0] DATA_y_2_d0;
output  [6:0] DATA_y_2_address1;
output   DATA_y_2_ce1;
output   DATA_y_2_we1;
output  [63:0] DATA_y_2_d1;
output  [6:0] DATA_y_1_address0;
output   DATA_y_1_ce0;
output   DATA_y_1_we0;
output  [63:0] DATA_y_1_d0;
output  [6:0] DATA_y_1_address1;
output   DATA_y_1_ce1;
output   DATA_y_1_we1;
output  [63:0] DATA_y_1_d1;
output  [6:0] DATA_y_address0;
output   DATA_y_ce0;
output   DATA_y_we0;
output  [63:0] DATA_y_d0;
output  [6:0] DATA_y_address1;
output   DATA_y_ce1;
output   DATA_y_we1;
output  [63:0] DATA_y_d1;
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_enable_reg_pp0_iter15;
reg    ap_enable_reg_pp0_iter16;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln340_fu_209_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_6_reg_318;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] tid_6_reg_318_pp0_iter1_reg;
reg   [6:0] tid_6_reg_318_pp0_iter2_reg;
reg   [6:0] tid_6_reg_318_pp0_iter3_reg;
reg   [6:0] tid_6_reg_318_pp0_iter4_reg;
reg   [6:0] tid_6_reg_318_pp0_iter5_reg;
reg   [6:0] tid_6_reg_318_pp0_iter6_reg;
reg   [6:0] tid_6_reg_318_pp0_iter7_reg;
reg   [6:0] tid_6_reg_318_pp0_iter8_reg;
reg   [6:0] tid_6_reg_318_pp0_iter9_reg;
reg   [6:0] tid_6_reg_318_pp0_iter10_reg;
reg   [6:0] tid_6_reg_318_pp0_iter11_reg;
reg   [6:0] tid_6_reg_318_pp0_iter12_reg;
reg   [6:0] tid_6_reg_318_pp0_iter13_reg;
reg   [6:0] tid_6_reg_318_pp0_iter14_reg;
reg   [6:0] tid_6_reg_318_pp0_iter15_reg;
reg   [0:0] icmp_ln340_reg_326;
reg   [0:0] icmp_ln340_reg_326_pp0_iter1_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter2_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter3_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter4_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter5_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter6_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter7_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter8_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter9_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter10_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter11_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter12_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter13_reg;
reg   [0:0] icmp_ln340_reg_326_pp0_iter14_reg;
reg   [63:0] data_y_0_reg_330;
reg   [63:0] data_y_1_reg_335;
reg   [63:0] data_y_2_reg_340;
reg   [63:0] data_y_3_reg_345;
reg   [63:0] data_y_4_reg_350;
reg   [63:0] data_y_5_reg_355;
reg   [63:0] data_y_6_reg_360;
reg   [63:0] data_y_7_reg_365;
wire    grp_loady8_fu_174_ap_start;
wire    grp_loady8_fu_174_ap_done;
wire    grp_loady8_fu_174_ap_idle;
wire    grp_loady8_fu_174_ap_ready;
wire   [5:0] grp_loady8_fu_174_x_0_address0;
wire    grp_loady8_fu_174_x_0_ce0;
wire   [5:0] grp_loady8_fu_174_x_1_address0;
wire    grp_loady8_fu_174_x_1_ce0;
wire   [5:0] grp_loady8_fu_174_x_2_address0;
wire    grp_loady8_fu_174_x_2_ce0;
wire   [5:0] grp_loady8_fu_174_x_3_address0;
wire    grp_loady8_fu_174_x_3_ce0;
wire   [5:0] grp_loady8_fu_174_x_4_address0;
wire    grp_loady8_fu_174_x_4_ce0;
wire   [5:0] grp_loady8_fu_174_x_5_address0;
wire    grp_loady8_fu_174_x_5_ce0;
wire   [5:0] grp_loady8_fu_174_x_6_address0;
wire    grp_loady8_fu_174_x_6_ce0;
wire   [5:0] grp_loady8_fu_174_x_7_address0;
wire    grp_loady8_fu_174_x_7_ce0;
wire   [5:0] grp_loady8_fu_174_x_8_address0;
wire    grp_loady8_fu_174_x_8_ce0;
wire   [5:0] grp_loady8_fu_174_x_9_address0;
wire    grp_loady8_fu_174_x_9_ce0;
wire   [5:0] grp_loady8_fu_174_x_10_address0;
wire    grp_loady8_fu_174_x_10_ce0;
wire   [8:0] grp_loady8_fu_174_offset;
wire   [63:0] grp_loady8_fu_174_ap_return_0;
wire   [63:0] grp_loady8_fu_174_ap_return_1;
wire   [63:0] grp_loady8_fu_174_ap_return_2;
wire   [63:0] grp_loady8_fu_174_ap_return_3;
wire   [63:0] grp_loady8_fu_174_ap_return_4;
wire   [63:0] grp_loady8_fu_174_ap_return_5;
wire   [63:0] grp_loady8_fu_174_ap_return_6;
wire   [63:0] grp_loady8_fu_174_ap_return_7;
reg    grp_loady8_fu_174_ap_start_reg;
wire    ap_block_pp0_stage0_ignoreCallOp44;
wire    ap_block_pp0_stage0_ignoreCallOp45;
wire    ap_block_pp0_stage0_ignoreCallOp31;
wire   [63:0] zext_ln341_fu_287_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln345_fu_303_p1;
reg   [6:0] tid_fu_70;
wire   [6:0] add_ln340_fu_215_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_6;
reg    DATA_y_we1_local;
reg    DATA_y_ce1_local;
reg    DATA_y_we0_local;
reg    DATA_y_ce0_local;
reg    DATA_y_1_we1_local;
reg    DATA_y_1_ce1_local;
reg    DATA_y_1_we0_local;
reg    DATA_y_1_ce0_local;
reg    DATA_y_2_we1_local;
reg    DATA_y_2_ce1_local;
reg    DATA_y_2_we0_local;
reg    DATA_y_2_ce0_local;
reg    DATA_y_3_we1_local;
reg    DATA_y_3_ce1_local;
reg    DATA_y_3_we0_local;
reg    DATA_y_3_ce0_local;
wire   [2:0] tmp_fu_226_p4;
wire   [5:0] trunc_ln353_fu_235_p1;
wire   [6:0] shl_ln341_fu_282_p2;
wire   [5:0] trunc_ln341_fu_279_p1;
wire   [6:0] or_ln6_fu_295_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg    ap_loop_exit_ready_pp0_iter15_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 ap_enable_reg_pp0_iter16 = 1'b0;
#0 grp_loady8_fu_174_ap_start_reg = 1'b0;
#0 tid_fu_70 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_174(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_174_ap_start),.ap_done(grp_loady8_fu_174_ap_done),.ap_idle(grp_loady8_fu_174_ap_idle),.ap_ready(grp_loady8_fu_174_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_174_x_0_address0),.x_0_ce0(grp_loady8_fu_174_x_0_ce0),.x_0_q0(smem_q0),.x_1_address0(grp_loady8_fu_174_x_1_address0),.x_1_ce0(grp_loady8_fu_174_x_1_ce0),.x_1_q0(smem_1_q0),.x_2_address0(grp_loady8_fu_174_x_2_address0),.x_2_ce0(grp_loady8_fu_174_x_2_ce0),.x_2_q0(smem_2_q0),.x_3_address0(grp_loady8_fu_174_x_3_address0),.x_3_ce0(grp_loady8_fu_174_x_3_ce0),.x_3_q0(smem_3_q0),.x_4_address0(grp_loady8_fu_174_x_4_address0),.x_4_ce0(grp_loady8_fu_174_x_4_ce0),.x_4_q0(smem_4_q0),.x_5_address0(grp_loady8_fu_174_x_5_address0),.x_5_ce0(grp_loady8_fu_174_x_5_ce0),.x_5_q0(smem_5_q0),.x_6_address0(grp_loady8_fu_174_x_6_address0),.x_6_ce0(grp_loady8_fu_174_x_6_ce0),.x_6_q0(smem_6_q0),.x_7_address0(grp_loady8_fu_174_x_7_address0),.x_7_ce0(grp_loady8_fu_174_x_7_ce0),.x_7_q0(smem_7_q0),.x_8_address0(grp_loady8_fu_174_x_8_address0),.x_8_ce0(grp_loady8_fu_174_x_8_ce0),.x_8_q0(smem_8_q0),.x_9_address0(grp_loady8_fu_174_x_9_address0),.x_9_ce0(grp_loady8_fu_174_x_9_ce0),.x_9_q0(smem_9_q0),.x_10_address0(grp_loady8_fu_174_x_10_address0),.x_10_ce0(grp_loady8_fu_174_x_10_ce0),.x_10_q0(smem_10_q0),.offset(grp_loady8_fu_174_offset),.ap_return_0(grp_loady8_fu_174_ap_return_0),.ap_return_1(grp_loady8_fu_174_ap_return_1),.ap_return_2(grp_loady8_fu_174_ap_return_2),.ap_return_3(grp_loady8_fu_174_ap_return_3),.ap_return_4(grp_loady8_fu_174_ap_return_4),.ap_return_5(grp_loady8_fu_174_ap_return_5),.ap_return_6(grp_loady8_fu_174_ap_return_6),.ap_return_7(grp_loady8_fu_174_ap_return_7));
fft1D_512_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter16 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter16 <= ap_enable_reg_pp0_iter15;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_174_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln340_fu_209_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_loady8_fu_174_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_174_ap_ready == 1'b1)) begin
            grp_loady8_fu_174_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln340_fu_209_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            tid_fu_70 <= add_ln340_fu_215_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_70 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter15_reg <= ap_loop_exit_ready_pp0_iter14_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        data_y_0_reg_330 <= grp_loady8_fu_174_ap_return_0;
        data_y_1_reg_335 <= grp_loady8_fu_174_ap_return_1;
        data_y_2_reg_340 <= grp_loady8_fu_174_ap_return_2;
        data_y_3_reg_345 <= grp_loady8_fu_174_ap_return_3;
        data_y_4_reg_350 <= grp_loady8_fu_174_ap_return_4;
        data_y_5_reg_355 <= grp_loady8_fu_174_ap_return_5;
        data_y_6_reg_360 <= grp_loady8_fu_174_ap_return_6;
        data_y_7_reg_365 <= grp_loady8_fu_174_ap_return_7;
        icmp_ln340_reg_326_pp0_iter10_reg <= icmp_ln340_reg_326_pp0_iter9_reg;
        icmp_ln340_reg_326_pp0_iter11_reg <= icmp_ln340_reg_326_pp0_iter10_reg;
        icmp_ln340_reg_326_pp0_iter12_reg <= icmp_ln340_reg_326_pp0_iter11_reg;
        icmp_ln340_reg_326_pp0_iter13_reg <= icmp_ln340_reg_326_pp0_iter12_reg;
        icmp_ln340_reg_326_pp0_iter14_reg <= icmp_ln340_reg_326_pp0_iter13_reg;
        icmp_ln340_reg_326_pp0_iter2_reg <= icmp_ln340_reg_326_pp0_iter1_reg;
        icmp_ln340_reg_326_pp0_iter3_reg <= icmp_ln340_reg_326_pp0_iter2_reg;
        icmp_ln340_reg_326_pp0_iter4_reg <= icmp_ln340_reg_326_pp0_iter3_reg;
        icmp_ln340_reg_326_pp0_iter5_reg <= icmp_ln340_reg_326_pp0_iter4_reg;
        icmp_ln340_reg_326_pp0_iter6_reg <= icmp_ln340_reg_326_pp0_iter5_reg;
        icmp_ln340_reg_326_pp0_iter7_reg <= icmp_ln340_reg_326_pp0_iter6_reg;
        icmp_ln340_reg_326_pp0_iter8_reg <= icmp_ln340_reg_326_pp0_iter7_reg;
        icmp_ln340_reg_326_pp0_iter9_reg <= icmp_ln340_reg_326_pp0_iter8_reg;
        tid_6_reg_318_pp0_iter10_reg <= tid_6_reg_318_pp0_iter9_reg;
        tid_6_reg_318_pp0_iter11_reg <= tid_6_reg_318_pp0_iter10_reg;
        tid_6_reg_318_pp0_iter12_reg <= tid_6_reg_318_pp0_iter11_reg;
        tid_6_reg_318_pp0_iter13_reg <= tid_6_reg_318_pp0_iter12_reg;
        tid_6_reg_318_pp0_iter14_reg <= tid_6_reg_318_pp0_iter13_reg;
        tid_6_reg_318_pp0_iter15_reg <= tid_6_reg_318_pp0_iter14_reg;
        tid_6_reg_318_pp0_iter2_reg <= tid_6_reg_318_pp0_iter1_reg;
        tid_6_reg_318_pp0_iter3_reg <= tid_6_reg_318_pp0_iter2_reg;
        tid_6_reg_318_pp0_iter4_reg <= tid_6_reg_318_pp0_iter3_reg;
        tid_6_reg_318_pp0_iter5_reg <= tid_6_reg_318_pp0_iter4_reg;
        tid_6_reg_318_pp0_iter6_reg <= tid_6_reg_318_pp0_iter5_reg;
        tid_6_reg_318_pp0_iter7_reg <= tid_6_reg_318_pp0_iter6_reg;
        tid_6_reg_318_pp0_iter8_reg <= tid_6_reg_318_pp0_iter7_reg;
        tid_6_reg_318_pp0_iter9_reg <= tid_6_reg_318_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln340_reg_326 <= icmp_ln340_fu_209_p2;
        icmp_ln340_reg_326_pp0_iter1_reg <= icmp_ln340_reg_326;
        tid_6_reg_318 <= ap_sig_allocacmp_tid_6;
        tid_6_reg_318_pp0_iter1_reg <= tid_6_reg_318;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_2_ce0_local = 1'b1;
    end else begin
        DATA_y_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_2_ce1_local = 1'b1;
    end else begin
        DATA_y_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_2_we0_local = 1'b1;
    end else begin
        DATA_y_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_2_we1_local = 1'b1;
    end else begin
        DATA_y_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_3_ce0_local = 1'b1;
    end else begin
        DATA_y_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_3_ce1_local = 1'b1;
    end else begin
        DATA_y_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_3_we0_local = 1'b1;
    end else begin
        DATA_y_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_3_we1_local = 1'b1;
    end else begin
        DATA_y_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter16 == 1'b1))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln340_fu_209_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter15_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter16 == 1'b0) & (ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_6 = tid_fu_70;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign DATA_y_1_address0 = zext_ln345_fu_303_p1;
assign DATA_y_1_address1 = zext_ln341_fu_287_p1;
assign DATA_y_1_ce0 = DATA_y_1_ce0_local;
assign DATA_y_1_ce1 = DATA_y_1_ce1_local;
assign DATA_y_1_d0 = data_y_5_reg_355;
assign DATA_y_1_d1 = data_y_1_reg_335;
assign DATA_y_1_we0 = DATA_y_1_we0_local;
assign DATA_y_1_we1 = DATA_y_1_we1_local;
assign DATA_y_2_address0 = zext_ln345_fu_303_p1;
assign DATA_y_2_address1 = zext_ln341_fu_287_p1;
assign DATA_y_2_ce0 = DATA_y_2_ce0_local;
assign DATA_y_2_ce1 = DATA_y_2_ce1_local;
assign DATA_y_2_d0 = data_y_6_reg_360;
assign DATA_y_2_d1 = data_y_2_reg_340;
assign DATA_y_2_we0 = DATA_y_2_we0_local;
assign DATA_y_2_we1 = DATA_y_2_we1_local;
assign DATA_y_3_address0 = zext_ln345_fu_303_p1;
assign DATA_y_3_address1 = zext_ln341_fu_287_p1;
assign DATA_y_3_ce0 = DATA_y_3_ce0_local;
assign DATA_y_3_ce1 = DATA_y_3_ce1_local;
assign DATA_y_3_d0 = data_y_7_reg_365;
assign DATA_y_3_d1 = data_y_3_reg_345;
assign DATA_y_3_we0 = DATA_y_3_we0_local;
assign DATA_y_3_we1 = DATA_y_3_we1_local;
assign DATA_y_address0 = zext_ln345_fu_303_p1;
assign DATA_y_address1 = zext_ln341_fu_287_p1;
assign DATA_y_ce0 = DATA_y_ce0_local;
assign DATA_y_ce1 = DATA_y_ce1_local;
assign DATA_y_d0 = data_y_4_reg_350;
assign DATA_y_d1 = data_y_0_reg_330;
assign DATA_y_we0 = DATA_y_we0_local;
assign DATA_y_we1 = DATA_y_we1_local;
assign add_ln340_fu_215_p2 = (ap_sig_allocacmp_tid_6 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp44 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp45 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_loady8_fu_174_ap_start = grp_loady8_fu_174_ap_start_reg;
assign grp_loady8_fu_174_offset = {{tmp_fu_226_p4}, {trunc_ln353_fu_235_p1}};
assign icmp_ln340_fu_209_p2 = ((ap_sig_allocacmp_tid_6 == 7'd64) ? 1'b1 : 1'b0);
assign or_ln6_fu_295_p3 = {{trunc_ln341_fu_279_p1}, {1'd1}};
assign shl_ln341_fu_282_p2 = tid_6_reg_318_pp0_iter15_reg << 7'd1;
assign smem_10_address0 = grp_loady8_fu_174_x_10_address0;
assign smem_10_ce0 = grp_loady8_fu_174_x_10_ce0;
assign smem_1_address0 = grp_loady8_fu_174_x_1_address0;
assign smem_1_ce0 = grp_loady8_fu_174_x_1_ce0;
assign smem_2_address0 = grp_loady8_fu_174_x_2_address0;
assign smem_2_ce0 = grp_loady8_fu_174_x_2_ce0;
assign smem_3_address0 = grp_loady8_fu_174_x_3_address0;
assign smem_3_ce0 = grp_loady8_fu_174_x_3_ce0;
assign smem_4_address0 = grp_loady8_fu_174_x_4_address0;
assign smem_4_ce0 = grp_loady8_fu_174_x_4_ce0;
assign smem_5_address0 = grp_loady8_fu_174_x_5_address0;
assign smem_5_ce0 = grp_loady8_fu_174_x_5_ce0;
assign smem_6_address0 = grp_loady8_fu_174_x_6_address0;
assign smem_6_ce0 = grp_loady8_fu_174_x_6_ce0;
assign smem_7_address0 = grp_loady8_fu_174_x_7_address0;
assign smem_7_ce0 = grp_loady8_fu_174_x_7_ce0;
assign smem_8_address0 = grp_loady8_fu_174_x_8_address0;
assign smem_8_ce0 = grp_loady8_fu_174_x_8_ce0;
assign smem_9_address0 = grp_loady8_fu_174_x_9_address0;
assign smem_9_ce0 = grp_loady8_fu_174_x_9_ce0;
assign smem_address0 = grp_loady8_fu_174_x_0_address0;
assign smem_ce0 = grp_loady8_fu_174_x_0_ce0;
assign tmp_fu_226_p4 = {{tid_6_reg_318[5:3]}};
assign trunc_ln341_fu_279_p1 = tid_6_reg_318_pp0_iter15_reg[5:0];
assign trunc_ln353_fu_235_p1 = tid_6_reg_318[5:0];
assign zext_ln341_fu_287_p1 = shl_ln341_fu_282_p2;
assign zext_ln345_fu_303_p1 = or_ln6_fu_295_p3;
endmodule 