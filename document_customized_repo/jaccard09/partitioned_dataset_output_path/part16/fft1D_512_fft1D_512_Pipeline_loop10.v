
module fft1D_512_fft1D_512_Pipeline_loop10 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,DATA_y_1_address0,DATA_y_1_ce0,DATA_y_1_we0,DATA_y_1_d0,DATA_y_1_address1,DATA_y_1_ce1,DATA_y_1_we1,DATA_y_1_d1,DATA_y_address0,DATA_y_ce0,DATA_y_we0,DATA_y_d0,DATA_y_address1,DATA_y_ce1,DATA_y_we1,DATA_y_d1,smem_address0,smem_ce0,smem_q0,smem_address1,smem_ce1,smem_q1,smem_1_address0,smem_1_ce0,smem_1_q0,smem_1_address1,smem_1_ce1,smem_1_q1,smem_2_address0,smem_2_ce0,smem_2_q0,smem_2_address1,smem_2_ce1,smem_2_q1,smem_3_address0,smem_3_ce0,smem_3_q0,smem_3_address1,smem_3_ce1,smem_3_q1,smem_4_address0,smem_4_ce0,smem_4_q0,smem_4_address1,smem_4_ce1,smem_4_q1);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln340_reg_308;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] tid_6_reg_301;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln340_fu_169_p2;
reg   [0:0] icmp_ln340_reg_308_pp0_iter1_reg;
reg   [0:0] icmp_ln340_reg_308_pp0_iter2_reg;
reg   [0:0] icmp_ln340_reg_308_pp0_iter3_reg;
reg   [0:0] icmp_ln340_reg_308_pp0_iter4_reg;
reg   [0:0] icmp_ln340_reg_308_pp0_iter5_reg;
reg   [0:0] icmp_ln340_reg_308_pp0_iter6_reg;
wire   [5:0] trunc_ln341_fu_186_p1;
reg   [5:0] trunc_ln341_reg_312;
wire    ap_block_pp0_stage1_11001;
reg   [5:0] trunc_ln341_reg_312_pp0_iter1_reg;
reg   [5:0] trunc_ln341_reg_312_pp0_iter2_reg;
reg   [5:0] trunc_ln341_reg_312_pp0_iter3_reg;
reg   [5:0] trunc_ln341_reg_312_pp0_iter4_reg;
reg   [5:0] trunc_ln341_reg_312_pp0_iter5_reg;
reg   [5:0] trunc_ln341_reg_312_pp0_iter6_reg;
reg   [5:0] trunc_ln341_reg_312_pp0_iter7_reg;
reg   [63:0] data_y_0_reg_320;
reg   [63:0] data_y_1_reg_325;
reg   [63:0] data_y_2_reg_330;
reg   [63:0] data_y_3_reg_335;
reg   [63:0] data_y_4_reg_340;
reg   [63:0] data_y_5_reg_345;
reg   [63:0] data_y_6_reg_350;
reg   [63:0] data_y_7_reg_355;
reg    ap_enable_reg_pp0_iter0_reg;
wire    grp_loady8_fu_146_ap_start;
wire    grp_loady8_fu_146_ap_done;
wire    grp_loady8_fu_146_ap_idle;
wire    grp_loady8_fu_146_ap_ready;
wire   [6:0] grp_loady8_fu_146_x_0_address0;
wire    grp_loady8_fu_146_x_0_ce0;
wire   [6:0] grp_loady8_fu_146_x_0_address1;
wire    grp_loady8_fu_146_x_0_ce1;
wire   [6:0] grp_loady8_fu_146_x_1_address0;
wire    grp_loady8_fu_146_x_1_ce0;
wire   [6:0] grp_loady8_fu_146_x_1_address1;
wire    grp_loady8_fu_146_x_1_ce1;
wire   [6:0] grp_loady8_fu_146_x_2_address0;
wire    grp_loady8_fu_146_x_2_ce0;
wire   [6:0] grp_loady8_fu_146_x_2_address1;
wire    grp_loady8_fu_146_x_2_ce1;
wire   [6:0] grp_loady8_fu_146_x_3_address0;
wire    grp_loady8_fu_146_x_3_ce0;
wire   [6:0] grp_loady8_fu_146_x_3_address1;
wire    grp_loady8_fu_146_x_3_ce1;
wire   [6:0] grp_loady8_fu_146_x_4_address0;
wire    grp_loady8_fu_146_x_4_ce0;
wire   [6:0] grp_loady8_fu_146_x_4_address1;
wire    grp_loady8_fu_146_x_4_ce1;
wire   [8:0] grp_loady8_fu_146_offset;
wire   [63:0] grp_loady8_fu_146_ap_return_0;
wire   [63:0] grp_loady8_fu_146_ap_return_1;
wire   [63:0] grp_loady8_fu_146_ap_return_2;
wire   [63:0] grp_loady8_fu_146_ap_return_3;
wire   [63:0] grp_loady8_fu_146_ap_return_4;
wire   [63:0] grp_loady8_fu_146_ap_return_5;
wire   [63:0] grp_loady8_fu_146_ap_return_6;
wire   [63:0] grp_loady8_fu_146_ap_return_7;
reg    grp_loady8_fu_146_ap_start_reg;
wire    ap_block_pp0_stage0_ignoreCallOp46;
wire    ap_block_pp0_stage1_ignoreCallOp47;
wire    ap_block_pp0_stage1_ignoreCallOp33;
wire   [63:0] zext_ln341_fu_249_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln343_fu_262_p1;
wire   [63:0] zext_ln345_fu_275_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln347_fu_288_p1;
reg   [6:0] tid_fu_60;
wire   [6:0] add_ln340_fu_175_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_tid_6;
reg    DATA_y_we1_local;
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
wire   [2:0] tmp_fu_189_p4;
wire   [5:0] trunc_ln353_fu_198_p1;
wire   [7:0] shl_ln9_fu_242_p3;
wire   [7:0] or_ln24_fu_255_p3;
wire   [7:0] or_ln25_fu_268_p3;
wire   [7:0] or_ln26_fu_281_p3;
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
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to8;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 grp_loady8_fu_146_ap_start_reg = 1'b0;
#0 tid_fu_60 = 7'd0;
#0 ap_done_reg = 1'b0;
end
fft1D_512_loady8 grp_loady8_fu_146(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_loady8_fu_146_ap_start),.ap_done(grp_loady8_fu_146_ap_done),.ap_idle(grp_loady8_fu_146_ap_idle),.ap_ready(grp_loady8_fu_146_ap_ready),.ap_ce(1'b1),.x_0_address0(grp_loady8_fu_146_x_0_address0),.x_0_ce0(grp_loady8_fu_146_x_0_ce0),.x_0_q0(smem_q0),.x_0_address1(grp_loady8_fu_146_x_0_address1),.x_0_ce1(grp_loady8_fu_146_x_0_ce1),.x_0_q1(smem_q1),.x_1_address0(grp_loady8_fu_146_x_1_address0),.x_1_ce0(grp_loady8_fu_146_x_1_ce0),.x_1_q0(smem_1_q0),.x_1_address1(grp_loady8_fu_146_x_1_address1),.x_1_ce1(grp_loady8_fu_146_x_1_ce1),.x_1_q1(smem_1_q1),.x_2_address0(grp_loady8_fu_146_x_2_address0),.x_2_ce0(grp_loady8_fu_146_x_2_ce0),.x_2_q0(smem_2_q0),.x_2_address1(grp_loady8_fu_146_x_2_address1),.x_2_ce1(grp_loady8_fu_146_x_2_ce1),.x_2_q1(smem_2_q1),.x_3_address0(grp_loady8_fu_146_x_3_address0),.x_3_ce0(grp_loady8_fu_146_x_3_ce0),.x_3_q0(smem_3_q0),.x_3_address1(grp_loady8_fu_146_x_3_address1),.x_3_ce1(grp_loady8_fu_146_x_3_ce1),.x_3_q1(smem_3_q1),.x_4_address0(grp_loady8_fu_146_x_4_address0),.x_4_ce0(grp_loady8_fu_146_x_4_ce0),.x_4_q0(smem_4_q0),.x_4_address1(grp_loady8_fu_146_x_4_address1),.x_4_ce1(grp_loady8_fu_146_x_4_ce1),.x_4_q1(smem_4_q1),.offset(grp_loady8_fu_146_offset),.ap_return_0(grp_loady8_fu_146_ap_return_0),.ap_return_1(grp_loady8_fu_146_ap_return_1),.ap_return_2(grp_loady8_fu_146_ap_return_2),.ap_return_3(grp_loady8_fu_146_ap_return_3),.ap_return_4(grp_loady8_fu_146_ap_return_4),.ap_return_5(grp_loady8_fu_146_ap_return_5),.ap_return_6(grp_loady8_fu_146_ap_return_6),.ap_return_7(grp_loady8_fu_146_ap_return_7));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_loady8_fu_146_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln340_fu_169_p2 == 1'd0))) begin
            grp_loady8_fu_146_ap_start_reg <= 1'b1;
        end else if ((grp_loady8_fu_146_ap_ready == 1'b1)) begin
            grp_loady8_fu_146_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln340_fu_169_p2 == 1'd0))) begin
            tid_fu_60 <= add_ln340_fu_175_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            tid_fu_60 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        data_y_0_reg_320 <= grp_loady8_fu_146_ap_return_0;
        data_y_1_reg_325 <= grp_loady8_fu_146_ap_return_1;
        data_y_2_reg_330 <= grp_loady8_fu_146_ap_return_2;
        data_y_3_reg_335 <= grp_loady8_fu_146_ap_return_3;
        data_y_4_reg_340 <= grp_loady8_fu_146_ap_return_4;
        data_y_5_reg_345 <= grp_loady8_fu_146_ap_return_5;
        data_y_6_reg_350 <= grp_loady8_fu_146_ap_return_6;
        data_y_7_reg_355 <= grp_loady8_fu_146_ap_return_7;
        trunc_ln341_reg_312 <= trunc_ln341_fu_186_p1;
        trunc_ln341_reg_312_pp0_iter1_reg <= trunc_ln341_reg_312;
        trunc_ln341_reg_312_pp0_iter2_reg <= trunc_ln341_reg_312_pp0_iter1_reg;
        trunc_ln341_reg_312_pp0_iter3_reg <= trunc_ln341_reg_312_pp0_iter2_reg;
        trunc_ln341_reg_312_pp0_iter4_reg <= trunc_ln341_reg_312_pp0_iter3_reg;
        trunc_ln341_reg_312_pp0_iter5_reg <= trunc_ln341_reg_312_pp0_iter4_reg;
        trunc_ln341_reg_312_pp0_iter6_reg <= trunc_ln341_reg_312_pp0_iter5_reg;
        trunc_ln341_reg_312_pp0_iter7_reg <= trunc_ln341_reg_312_pp0_iter6_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln340_reg_308 <= icmp_ln340_fu_169_p2;
        icmp_ln340_reg_308_pp0_iter1_reg <= icmp_ln340_reg_308;
        icmp_ln340_reg_308_pp0_iter2_reg <= icmp_ln340_reg_308_pp0_iter1_reg;
        icmp_ln340_reg_308_pp0_iter3_reg <= icmp_ln340_reg_308_pp0_iter2_reg;
        icmp_ln340_reg_308_pp0_iter4_reg <= icmp_ln340_reg_308_pp0_iter3_reg;
        icmp_ln340_reg_308_pp0_iter5_reg <= icmp_ln340_reg_308_pp0_iter4_reg;
        icmp_ln340_reg_308_pp0_iter6_reg <= icmp_ln340_reg_308_pp0_iter5_reg;
        tid_6_reg_301 <= ap_sig_allocacmp_tid_6;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address0_local = zext_ln347_fu_288_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address0_local = zext_ln343_fu_262_p1;
        end else begin
            DATA_y_1_address0_local = 'bx;
        end
    end else begin
        DATA_y_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_address1_local = zext_ln345_fu_275_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_address1_local = zext_ln341_fu_249_p1;
        end else begin
            DATA_y_1_address1_local = 'bx;
        end
    end else begin
        DATA_y_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_ce0_local = 1'b1;
    end else begin
        DATA_y_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_ce1_local = 1'b1;
    end else begin
        DATA_y_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_d0_local = data_y_7_reg_355;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_d0_local = data_y_3_reg_335;
        end else begin
            DATA_y_1_d0_local = 'bx;
        end
    end else begin
        DATA_y_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_1_d1_local = data_y_5_reg_345;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_1_d1_local = data_y_1_reg_325;
        end else begin
            DATA_y_1_d1_local = 'bx;
        end
    end else begin
        DATA_y_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_we0_local = 1'b1;
    end else begin
        DATA_y_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_1_we1_local = 1'b1;
    end else begin
        DATA_y_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address0_local = zext_ln347_fu_288_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address0_local = zext_ln343_fu_262_p1;
        end else begin
            DATA_y_address0_local = 'bx;
        end
    end else begin
        DATA_y_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_address1_local = zext_ln345_fu_275_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_address1_local = zext_ln341_fu_249_p1;
        end else begin
            DATA_y_address1_local = 'bx;
        end
    end else begin
        DATA_y_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_ce0_local = 1'b1;
    end else begin
        DATA_y_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_ce1_local = 1'b1;
    end else begin
        DATA_y_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_d0_local = data_y_6_reg_350;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_d0_local = data_y_2_reg_330;
        end else begin
            DATA_y_d0_local = 'bx;
        end
    end else begin
        DATA_y_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter8 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            DATA_y_d1_local = data_y_4_reg_340;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            DATA_y_d1_local = data_y_0_reg_320;
        end else begin
            DATA_y_d1_local = 'bx;
        end
    end else begin
        DATA_y_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_we0_local = 1'b1;
    end else begin
        DATA_y_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter8 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        DATA_y_we1_local = 1'b1;
    end else begin
        DATA_y_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln340_reg_308 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter7_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to8 = 1'b1;
    end else begin
        ap_idle_pp0_1to8 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_tid_6 = 7'd0;
    end else begin
        ap_sig_allocacmp_tid_6 = tid_fu_60;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to8 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln340_fu_175_p2 = (ap_sig_allocacmp_tid_6 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_ignoreCallOp46 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp33 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_ignoreCallOp47 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign grp_loady8_fu_146_ap_start = grp_loady8_fu_146_ap_start_reg;
assign grp_loady8_fu_146_offset = {{tmp_fu_189_p4}, {trunc_ln353_fu_198_p1}};
assign icmp_ln340_fu_169_p2 = ((ap_sig_allocacmp_tid_6 == 7'd64) ? 1'b1 : 1'b0);
assign or_ln24_fu_255_p3 = {{trunc_ln341_reg_312_pp0_iter7_reg}, {2'd1}};
assign or_ln25_fu_268_p3 = {{trunc_ln341_reg_312_pp0_iter7_reg}, {2'd2}};
assign or_ln26_fu_281_p3 = {{trunc_ln341_reg_312_pp0_iter7_reg}, {2'd3}};
assign shl_ln9_fu_242_p3 = {{trunc_ln341_reg_312_pp0_iter7_reg}, {2'd0}};
assign smem_1_address0 = grp_loady8_fu_146_x_1_address0;
assign smem_1_address1 = grp_loady8_fu_146_x_1_address1;
assign smem_1_ce0 = grp_loady8_fu_146_x_1_ce0;
assign smem_1_ce1 = grp_loady8_fu_146_x_1_ce1;
assign smem_2_address0 = grp_loady8_fu_146_x_2_address0;
assign smem_2_address1 = grp_loady8_fu_146_x_2_address1;
assign smem_2_ce0 = grp_loady8_fu_146_x_2_ce0;
assign smem_2_ce1 = grp_loady8_fu_146_x_2_ce1;
assign smem_3_address0 = grp_loady8_fu_146_x_3_address0;
assign smem_3_address1 = grp_loady8_fu_146_x_3_address1;
assign smem_3_ce0 = grp_loady8_fu_146_x_3_ce0;
assign smem_3_ce1 = grp_loady8_fu_146_x_3_ce1;
assign smem_4_address0 = grp_loady8_fu_146_x_4_address0;
assign smem_4_address1 = grp_loady8_fu_146_x_4_address1;
assign smem_4_ce0 = grp_loady8_fu_146_x_4_ce0;
assign smem_4_ce1 = grp_loady8_fu_146_x_4_ce1;
assign smem_address0 = grp_loady8_fu_146_x_0_address0;
assign smem_address1 = grp_loady8_fu_146_x_0_address1;
assign smem_ce0 = grp_loady8_fu_146_x_0_ce0;
assign smem_ce1 = grp_loady8_fu_146_x_0_ce1;
assign tmp_fu_189_p4 = {{tid_6_reg_301[5:3]}};
assign trunc_ln341_fu_186_p1 = tid_6_reg_301[5:0];
assign trunc_ln353_fu_198_p1 = tid_6_reg_301[5:0];
assign zext_ln341_fu_249_p1 = shl_ln9_fu_242_p3;
assign zext_ln343_fu_262_p1 = or_ln24_fu_255_p3;
assign zext_ln345_fu_275_p1 = or_ln25_fu_268_p3;
assign zext_ln347_fu_288_p1 = or_ln26_fu_281_p3;
endmodule 
