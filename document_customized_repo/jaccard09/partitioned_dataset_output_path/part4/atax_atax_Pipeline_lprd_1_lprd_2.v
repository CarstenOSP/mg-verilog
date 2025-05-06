
module atax_atax_Pipeline_lprd_1_lprd_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_address0,A_ce0,A_q0,buff_A_address0,buff_A_ce0,buff_A_we0,buff_A_d0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_we0,buff_A_1_d0,buff_A_2_address0,buff_A_2_ce0,buff_A_2_we0,buff_A_2_d0,buff_A_3_address0,buff_A_3_ce0,buff_A_3_we0,buff_A_3_d0,x_address0,x_ce0,x_q0,buff_x_address0,buff_x_ce0,buff_x_we0,buff_x_d0,buff_x_1_address0,buff_x_1_ce0,buff_x_1_we0,buff_x_1_d0,buff_x_2_address0,buff_x_2_ce0,buff_x_2_we0,buff_x_2_d0,buff_x_3_address0,buff_x_3_ce0,buff_x_3_we0,buff_x_3_d0,buff_y_out_address0,buff_y_out_ce0,buff_y_out_we0,buff_y_out_d0,buff_y_out_1_address0,buff_y_out_1_ce0,buff_y_out_1_we0,buff_y_out_1_d0,tmp1_address0,tmp1_ce0,tmp1_we0,tmp1_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] A_address0;
output   A_ce0;
input  [31:0] A_q0;
output  [9:0] buff_A_address0;
output   buff_A_ce0;
output   buff_A_we0;
output  [31:0] buff_A_d0;
output  [9:0] buff_A_1_address0;
output   buff_A_1_ce0;
output   buff_A_1_we0;
output  [31:0] buff_A_1_d0;
output  [9:0] buff_A_2_address0;
output   buff_A_2_ce0;
output   buff_A_2_we0;
output  [31:0] buff_A_2_d0;
output  [9:0] buff_A_3_address0;
output   buff_A_3_ce0;
output   buff_A_3_we0;
output  [31:0] buff_A_3_d0;
output  [5:0] x_address0;
output   x_ce0;
input  [31:0] x_q0;
output  [3:0] buff_x_address0;
output   buff_x_ce0;
output   buff_x_we0;
output  [31:0] buff_x_d0;
output  [3:0] buff_x_1_address0;
output   buff_x_1_ce0;
output   buff_x_1_we0;
output  [31:0] buff_x_1_d0;
output  [3:0] buff_x_2_address0;
output   buff_x_2_ce0;
output   buff_x_2_we0;
output  [31:0] buff_x_2_d0;
output  [3:0] buff_x_3_address0;
output   buff_x_3_ce0;
output   buff_x_3_we0;
output  [31:0] buff_x_3_d0;
output  [4:0] buff_y_out_address0;
output   buff_y_out_ce0;
output   buff_y_out_we0;
output  [31:0] buff_y_out_d0;
output  [4:0] buff_y_out_1_address0;
output   buff_y_out_1_ce0;
output   buff_y_out_1_we0;
output  [31:0] buff_y_out_1_d0;
output  [5:0] tmp1_address0;
output   tmp1_ce0;
output   tmp1_we0;
output  [31:0] tmp1_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11_fu_285_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln5_fu_320_p3;
reg   [6:0] select_ln5_reg_496;
wire   [5:0] empty_fu_336_p1;
reg   [5:0] empty_reg_503;
reg   [5:0] empty_reg_503_pp0_iter2_reg;
wire   [0:0] first_iter_0_fu_340_p2;
reg   [0:0] first_iter_0_reg_509;
wire   [1:0] trunc_ln11_fu_352_p1;
reg   [1:0] trunc_ln11_reg_513;
wire   [0:0] trunc_ln11_1_fu_356_p1;
reg   [0:0] trunc_ln11_1_reg_517;
reg   [4:0] lshr_ln5_reg_521;
reg   [3:0] lshr_ln5_1_reg_526;
reg   [5:0] tmp1_addr_reg_536;
wire   [1:0] trunc_ln15_fu_437_p1;
reg   [1:0] trunc_ln15_reg_546;
reg   [3:0] lshr_ln5_6_reg_550;
wire   [63:0] zext_ln11_fu_346_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5_1_fu_408_p1;
wire   [63:0] zext_ln5_fu_403_p1;
wire   [63:0] zext_ln16_2_fu_432_p1;
wire   [63:0] zext_ln16_1_fu_455_p1;
reg   [6:0] j_fu_84;
wire   [6:0] add_ln15_fu_380_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_88;
wire   [6:0] select_ln11_fu_328_p3;
reg   [12:0] indvar_flatten_fu_92;
wire   [12:0] add_ln11_1_fu_291_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg    x_ce0_local;
reg    buff_x_2_we0_local;
wire   [31:0] bitcast_ln12_fu_415_p1;
reg    buff_x_2_ce0_local;
reg    buff_x_1_we0_local;
reg    buff_x_1_ce0_local;
reg    buff_x_we0_local;
reg    buff_x_ce0_local;
reg    buff_x_3_we0_local;
reg    buff_x_3_ce0_local;
reg    buff_y_out_we0_local;
reg    buff_y_out_ce0_local;
reg    buff_y_out_1_we0_local;
reg    buff_y_out_1_ce0_local;
reg    tmp1_we0_local;
reg    tmp1_ce0_local;
reg    A_ce0_local;
reg    buff_A_2_we0_local;
wire   [31:0] bitcast_ln16_fu_463_p1;
reg    buff_A_2_ce0_local;
reg    buff_A_1_we0_local;
reg    buff_A_1_ce0_local;
reg    buff_A_we0_local;
reg    buff_A_ce0_local;
reg    buff_A_3_we0_local;
reg    buff_A_3_ce0_local;
wire   [0:0] icmp_ln15_fu_314_p2;
wire   [6:0] add_ln11_fu_308_p2;
wire   [11:0] tmp_fu_396_p3;
wire   [11:0] zext_ln16_fu_423_p1;
wire   [11:0] add_ln16_fu_426_p2;
wire   [9:0] tmp_7_fu_449_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
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
#0 j_fu_84 = 7'd0;
#0 i_fu_88 = 7'd0;
#0 indvar_flatten_fu_92 = 13'd0;
#0 ap_done_reg = 1'b0;
end
atax_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_88 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_88 <= select_ln11_fu_328_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln11_fu_285_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_92 <= add_ln11_1_fu_291_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_92 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_84 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_84 <= add_ln15_fu_380_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_reg_503 <= empty_fu_336_p1;
        first_iter_0_reg_509 <= first_iter_0_fu_340_p2;
        lshr_ln5_1_reg_526 <= {{select_ln11_fu_328_p3[5:2]}};
        lshr_ln5_reg_521 <= {{select_ln11_fu_328_p3[5:1]}};
        select_ln5_reg_496 <= select_ln5_fu_320_p3;
        tmp1_addr_reg_536 <= zext_ln11_fu_346_p1;
        trunc_ln11_1_reg_517 <= trunc_ln11_1_fu_356_p1;
        trunc_ln11_reg_513 <= trunc_ln11_fu_352_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        empty_reg_503_pp0_iter2_reg <= empty_reg_503;
        lshr_ln5_6_reg_550 <= {{select_ln5_reg_496[5:2]}};
        trunc_ln15_reg_546 <= trunc_ln15_fu_437_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        A_ce0_local = 1'b1;
    end else begin
        A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln11_fu_285_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln15_reg_546 == 2'd1))) begin
        buff_A_1_we0_local = 1'b1;
    end else begin
        buff_A_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_2_ce0_local = 1'b1;
    end else begin
        buff_A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln15_reg_546 == 2'd2))) begin
        buff_A_2_we0_local = 1'b1;
    end else begin
        buff_A_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_3_ce0_local = 1'b1;
    end else begin
        buff_A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln15_reg_546 == 2'd3))) begin
        buff_A_3_we0_local = 1'b1;
    end else begin
        buff_A_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln15_reg_546 == 2'd0))) begin
        buff_A_we0_local = 1'b1;
    end else begin
        buff_A_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x_1_ce0_local = 1'b1;
    end else begin
        buff_x_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_reg_513 == 2'd1) & (first_iter_0_reg_509 == 1'd1))) begin
        buff_x_1_we0_local = 1'b1;
    end else begin
        buff_x_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x_2_ce0_local = 1'b1;
    end else begin
        buff_x_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_reg_513 == 2'd2) & (first_iter_0_reg_509 == 1'd1))) begin
        buff_x_2_we0_local = 1'b1;
    end else begin
        buff_x_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x_3_ce0_local = 1'b1;
    end else begin
        buff_x_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_reg_513 == 2'd3) & (first_iter_0_reg_509 == 1'd1))) begin
        buff_x_3_we0_local = 1'b1;
    end else begin
        buff_x_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_x_ce0_local = 1'b1;
    end else begin
        buff_x_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_reg_513 == 2'd0) & (first_iter_0_reg_509 == 1'd1))) begin
        buff_x_we0_local = 1'b1;
    end else begin
        buff_x_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_y_out_1_ce0_local = 1'b1;
    end else begin
        buff_y_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_517 == 1'd1) & (first_iter_0_reg_509 == 1'd1))) begin
        buff_y_out_1_we0_local = 1'b1;
    end else begin
        buff_y_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_y_out_ce0_local = 1'b1;
    end else begin
        buff_y_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln11_1_reg_517 == 1'd0) & (first_iter_0_reg_509 == 1'd1))) begin
        buff_y_out_we0_local = 1'b1;
    end else begin
        buff_y_out_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        tmp1_ce0_local = 1'b1;
    end else begin
        tmp1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (first_iter_0_reg_509 == 1'd1))) begin
        tmp1_we0_local = 1'b1;
    end else begin
        tmp1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        x_ce0_local = 1'b1;
    end else begin
        x_ce0_local = 1'b0;
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
assign A_address0 = zext_ln16_2_fu_432_p1;
assign A_ce0 = A_ce0_local;
assign add_ln11_1_fu_291_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln11_fu_308_p2 = (i_fu_88 + 7'd1);
assign add_ln15_fu_380_p2 = (select_ln5_fu_320_p3 + 7'd1);
assign add_ln16_fu_426_p2 = (tmp_fu_396_p3 + zext_ln16_fu_423_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln12_fu_415_p1 = x_q0;
assign bitcast_ln16_fu_463_p1 = A_q0;
assign buff_A_1_address0 = zext_ln16_1_fu_455_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_1_d0 = bitcast_ln16_fu_463_p1;
assign buff_A_1_we0 = buff_A_1_we0_local;
assign buff_A_2_address0 = zext_ln16_1_fu_455_p1;
assign buff_A_2_ce0 = buff_A_2_ce0_local;
assign buff_A_2_d0 = bitcast_ln16_fu_463_p1;
assign buff_A_2_we0 = buff_A_2_we0_local;
assign buff_A_3_address0 = zext_ln16_1_fu_455_p1;
assign buff_A_3_ce0 = buff_A_3_ce0_local;
assign buff_A_3_d0 = bitcast_ln16_fu_463_p1;
assign buff_A_3_we0 = buff_A_3_we0_local;
assign buff_A_address0 = zext_ln16_1_fu_455_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_A_d0 = bitcast_ln16_fu_463_p1;
assign buff_A_we0 = buff_A_we0_local;
assign buff_x_1_address0 = zext_ln5_1_fu_408_p1;
assign buff_x_1_ce0 = buff_x_1_ce0_local;
assign buff_x_1_d0 = bitcast_ln12_fu_415_p1;
assign buff_x_1_we0 = buff_x_1_we0_local;
assign buff_x_2_address0 = zext_ln5_1_fu_408_p1;
assign buff_x_2_ce0 = buff_x_2_ce0_local;
assign buff_x_2_d0 = bitcast_ln12_fu_415_p1;
assign buff_x_2_we0 = buff_x_2_we0_local;
assign buff_x_3_address0 = zext_ln5_1_fu_408_p1;
assign buff_x_3_ce0 = buff_x_3_ce0_local;
assign buff_x_3_d0 = bitcast_ln12_fu_415_p1;
assign buff_x_3_we0 = buff_x_3_we0_local;
assign buff_x_address0 = zext_ln5_1_fu_408_p1;
assign buff_x_ce0 = buff_x_ce0_local;
assign buff_x_d0 = bitcast_ln12_fu_415_p1;
assign buff_x_we0 = buff_x_we0_local;
assign buff_y_out_1_address0 = zext_ln5_fu_403_p1;
assign buff_y_out_1_ce0 = buff_y_out_1_ce0_local;
assign buff_y_out_1_d0 = 32'd0;
assign buff_y_out_1_we0 = buff_y_out_1_we0_local;
assign buff_y_out_address0 = zext_ln5_fu_403_p1;
assign buff_y_out_ce0 = buff_y_out_ce0_local;
assign buff_y_out_d0 = 32'd0;
assign buff_y_out_we0 = buff_y_out_we0_local;
assign empty_fu_336_p1 = select_ln11_fu_328_p3[5:0];
assign first_iter_0_fu_340_p2 = ((select_ln5_fu_320_p3 == 7'd0) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_285_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln15_fu_314_p2 = ((j_fu_84 == 7'd64) ? 1'b1 : 1'b0);
assign select_ln11_fu_328_p3 = ((icmp_ln15_fu_314_p2[0:0] == 1'b1) ? add_ln11_fu_308_p2 : i_fu_88);
assign select_ln5_fu_320_p3 = ((icmp_ln15_fu_314_p2[0:0] == 1'b1) ? 7'd0 : j_fu_84);
assign tmp1_address0 = tmp1_addr_reg_536;
assign tmp1_ce0 = tmp1_ce0_local;
assign tmp1_d0 = 32'd0;
assign tmp1_we0 = tmp1_we0_local;
assign tmp_7_fu_449_p3 = {{empty_reg_503_pp0_iter2_reg}, {lshr_ln5_6_reg_550}};
assign tmp_fu_396_p3 = {{empty_reg_503}, {6'd0}};
assign trunc_ln11_1_fu_356_p1 = select_ln11_fu_328_p3[0:0];
assign trunc_ln11_fu_352_p1 = select_ln11_fu_328_p3[1:0];
assign trunc_ln15_fu_437_p1 = select_ln5_reg_496[1:0];
assign x_address0 = zext_ln11_fu_346_p1;
assign x_ce0 = x_ce0_local;
assign zext_ln11_fu_346_p1 = select_ln11_fu_328_p3;
assign zext_ln16_1_fu_455_p1 = tmp_7_fu_449_p3;
assign zext_ln16_2_fu_432_p1 = add_ln16_fu_426_p2;
assign zext_ln16_fu_423_p1 = select_ln5_reg_496;
assign zext_ln5_1_fu_408_p1 = lshr_ln5_1_reg_526;
assign zext_ln5_fu_403_p1 = lshr_ln5_reg_521;
endmodule 
