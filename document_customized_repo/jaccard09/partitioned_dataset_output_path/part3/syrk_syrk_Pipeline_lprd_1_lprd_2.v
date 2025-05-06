
module syrk_syrk_Pipeline_lprd_1_lprd_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,A_2_address0,A_2_ce0,A_2_q0,A_3_address0,A_3_ce0,A_3_q0,B_0_address0,B_0_ce0,B_0_q0,B_1_address0,B_1_ce0,B_1_q0,B_2_address0,B_2_ce0,B_2_q0,B_3_address0,B_3_ce0,B_3_q0,buff_A0_address0,buff_A0_ce0,buff_A0_we0,buff_A0_d0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_we0,buff_A0_1_d0,buff_A0_2_address0,buff_A0_2_ce0,buff_A0_2_we0,buff_A0_2_d0,buff_A0_3_address0,buff_A0_3_ce0,buff_A0_3_we0,buff_A0_3_d0,buff_A1_address0,buff_A1_ce0,buff_A1_we0,buff_A1_d0,buff_A1_1_address0,buff_A1_1_ce0,buff_A1_1_we0,buff_A1_1_d0,buff_A1_2_address0,buff_A1_2_ce0,buff_A1_2_we0,buff_A1_2_d0,buff_A1_3_address0,buff_A1_3_ce0,buff_A1_3_we0,buff_A1_3_d0,buff_B_address0,buff_B_ce0,buff_B_we0,buff_B_d0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_we0,buff_B_1_d0,buff_B_2_address0,buff_B_2_ce0,buff_B_2_we0,buff_B_2_d0,buff_B_3_address0,buff_B_3_ce0,buff_B_3_we0,buff_B_3_d0,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [9:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [9:0] A_2_address0;
output   A_2_ce0;
input  [31:0] A_2_q0;
output  [9:0] A_3_address0;
output   A_3_ce0;
input  [31:0] A_3_q0;
output  [9:0] B_0_address0;
output   B_0_ce0;
input  [31:0] B_0_q0;
output  [9:0] B_1_address0;
output   B_1_ce0;
input  [31:0] B_1_q0;
output  [9:0] B_2_address0;
output   B_2_ce0;
input  [31:0] B_2_q0;
output  [9:0] B_3_address0;
output   B_3_ce0;
input  [31:0] B_3_q0;
output  [9:0] buff_A0_address0;
output   buff_A0_ce0;
output   buff_A0_we0;
output  [31:0] buff_A0_d0;
output  [9:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
output   buff_A0_1_we0;
output  [31:0] buff_A0_1_d0;
output  [9:0] buff_A0_2_address0;
output   buff_A0_2_ce0;
output   buff_A0_2_we0;
output  [31:0] buff_A0_2_d0;
output  [9:0] buff_A0_3_address0;
output   buff_A0_3_ce0;
output   buff_A0_3_we0;
output  [31:0] buff_A0_3_d0;
output  [9:0] buff_A1_address0;
output   buff_A1_ce0;
output   buff_A1_we0;
output  [31:0] buff_A1_d0;
output  [9:0] buff_A1_1_address0;
output   buff_A1_1_ce0;
output   buff_A1_1_we0;
output  [31:0] buff_A1_1_d0;
output  [9:0] buff_A1_2_address0;
output   buff_A1_2_ce0;
output   buff_A1_2_we0;
output  [31:0] buff_A1_2_d0;
output  [9:0] buff_A1_3_address0;
output   buff_A1_3_ce0;
output   buff_A1_3_we0;
output  [31:0] buff_A1_3_d0;
output  [9:0] buff_B_address0;
output   buff_B_ce0;
output   buff_B_we0;
output  [31:0] buff_B_d0;
output  [9:0] buff_B_1_address0;
output   buff_B_1_ce0;
output   buff_B_1_we0;
output  [31:0] buff_B_1_d0;
output  [9:0] buff_B_2_address0;
output   buff_B_2_ce0;
output   buff_B_2_we0;
output  [31:0] buff_B_2_d0;
output  [9:0] buff_B_3_address0;
output   buff_B_3_ce0;
output   buff_B_3_we0;
output  [31:0] buff_B_3_d0;
output  [9:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
output  [9:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
output  [9:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
output  [9:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11_fu_444_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln13_fu_519_p1;
reg   [63:0] zext_ln13_reg_620;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_98;
wire   [6:0] add_ln12_fu_535_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_102;
wire   [6:0] select_ln11_fu_489_p3;
reg   [10:0] indvar_flatten_fu_106;
wire   [10:0] add_ln11_1_fu_450_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten_load;
reg    A_0_ce0_local;
reg    B_0_ce0_local;
reg    A_1_ce0_local;
reg    B_1_ce0_local;
reg    A_2_ce0_local;
reg    B_2_ce0_local;
reg    A_3_ce0_local;
reg    B_3_ce0_local;
reg    buff_C_out_we0_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_1_we0_local;
reg    buff_C_out_1_ce0_local;
reg    buff_C_out_2_we0_local;
reg    buff_C_out_2_ce0_local;
reg    buff_C_out_3_we0_local;
reg    buff_C_out_3_ce0_local;
reg    buff_A0_we0_local;
wire   [31:0] bitcast_ln13_fu_551_p1;
reg    buff_A0_ce0_local;
reg    buff_A0_1_we0_local;
wire   [31:0] bitcast_ln13_1_fu_562_p1;
reg    buff_A0_1_ce0_local;
reg    buff_A0_2_we0_local;
wire   [31:0] bitcast_ln13_2_fu_573_p1;
reg    buff_A0_2_ce0_local;
reg    buff_A0_3_we0_local;
wire   [31:0] bitcast_ln13_3_fu_584_p1;
reg    buff_A0_3_ce0_local;
reg    buff_A1_we0_local;
reg    buff_A1_ce0_local;
reg    buff_A1_1_we0_local;
reg    buff_A1_1_ce0_local;
reg    buff_A1_2_we0_local;
reg    buff_A1_2_ce0_local;
reg    buff_A1_3_we0_local;
reg    buff_A1_3_ce0_local;
reg    buff_B_we0_local;
wire   [31:0] bitcast_ln15_fu_557_p1;
reg    buff_B_ce0_local;
reg    buff_B_1_we0_local;
wire   [31:0] bitcast_ln15_1_fu_568_p1;
reg    buff_B_1_ce0_local;
reg    buff_B_2_we0_local;
wire   [31:0] bitcast_ln15_2_fu_579_p1;
reg    buff_B_2_ce0_local;
reg    buff_B_3_we0_local;
wire   [31:0] bitcast_ln15_3_fu_590_p1;
reg    buff_B_3_ce0_local;
wire   [0:0] tmp_fu_473_p3;
wire   [6:0] add_ln11_fu_467_p2;
wire   [6:0] select_ln5_fu_481_p3;
wire   [5:0] trunc_ln4_fu_497_p1;
wire   [3:0] lshr_ln5_fu_501_p4;
wire   [9:0] tmp_3_fu_511_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
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
#0 j_fu_98 = 7'd0;
#0 i_fu_102 = 7'd0;
#0 indvar_flatten_fu_106 = 11'd0;
#0 ap_done_reg = 1'b0;
end
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_102 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_102 <= select_ln11_fu_489_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln11_fu_444_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_106 <= add_ln11_1_fu_450_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_106 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_98 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_98 <= add_ln12_fu_535_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        zext_ln13_reg_620[9 : 0] <= zext_ln13_fu_519_p1[9 : 0];
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_0_ce0_local = 1'b1;
    end else begin
        A_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_1_ce0_local = 1'b1;
    end else begin
        A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_2_ce0_local = 1'b1;
    end else begin
        A_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_3_ce0_local = 1'b1;
    end else begin
        A_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_0_ce0_local = 1'b1;
    end else begin
        B_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_ce0_local = 1'b1;
    end else begin
        B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_2_ce0_local = 1'b1;
    end else begin
        B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_3_ce0_local = 1'b1;
    end else begin
        B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln11_fu_444_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_1_ce0_local = 1'b1;
    end else begin
        buff_A0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_1_we0_local = 1'b1;
    end else begin
        buff_A0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_2_ce0_local = 1'b1;
    end else begin
        buff_A0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_2_we0_local = 1'b1;
    end else begin
        buff_A0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_3_ce0_local = 1'b1;
    end else begin
        buff_A0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_3_we0_local = 1'b1;
    end else begin
        buff_A0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_ce0_local = 1'b1;
    end else begin
        buff_A0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A0_we0_local = 1'b1;
    end else begin
        buff_A0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_1_ce0_local = 1'b1;
    end else begin
        buff_A1_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_1_we0_local = 1'b1;
    end else begin
        buff_A1_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_2_ce0_local = 1'b1;
    end else begin
        buff_A1_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_2_we0_local = 1'b1;
    end else begin
        buff_A1_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_3_ce0_local = 1'b1;
    end else begin
        buff_A1_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_3_we0_local = 1'b1;
    end else begin
        buff_A1_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_ce0_local = 1'b1;
    end else begin
        buff_A1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_A1_we0_local = 1'b1;
    end else begin
        buff_A1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_1_ce0_local = 1'b1;
    end else begin
        buff_B_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_1_we0_local = 1'b1;
    end else begin
        buff_B_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_2_ce0_local = 1'b1;
    end else begin
        buff_B_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_2_we0_local = 1'b1;
    end else begin
        buff_B_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_3_ce0_local = 1'b1;
    end else begin
        buff_B_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_3_we0_local = 1'b1;
    end else begin
        buff_B_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_we0_local = 1'b1;
    end else begin
        buff_B_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
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
assign A_0_address0 = zext_ln13_fu_519_p1;
assign A_0_ce0 = A_0_ce0_local;
assign A_1_address0 = zext_ln13_fu_519_p1;
assign A_1_ce0 = A_1_ce0_local;
assign A_2_address0 = zext_ln13_fu_519_p1;
assign A_2_ce0 = A_2_ce0_local;
assign A_3_address0 = zext_ln13_fu_519_p1;
assign A_3_ce0 = A_3_ce0_local;
assign B_0_address0 = zext_ln13_fu_519_p1;
assign B_0_ce0 = B_0_ce0_local;
assign B_1_address0 = zext_ln13_fu_519_p1;
assign B_1_ce0 = B_1_ce0_local;
assign B_2_address0 = zext_ln13_fu_519_p1;
assign B_2_ce0 = B_2_ce0_local;
assign B_3_address0 = zext_ln13_fu_519_p1;
assign B_3_ce0 = B_3_ce0_local;
assign add_ln11_1_fu_450_p2 = (ap_sig_allocacmp_indvar_flatten_load + 11'd1);
assign add_ln11_fu_467_p2 = (i_fu_102 + 7'd1);
assign add_ln12_fu_535_p2 = (select_ln5_fu_481_p3 + 7'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln13_1_fu_562_p1 = A_1_q0;
assign bitcast_ln13_2_fu_573_p1 = A_2_q0;
assign bitcast_ln13_3_fu_584_p1 = A_3_q0;
assign bitcast_ln13_fu_551_p1 = A_0_q0;
assign bitcast_ln15_1_fu_568_p1 = B_1_q0;
assign bitcast_ln15_2_fu_579_p1 = B_2_q0;
assign bitcast_ln15_3_fu_590_p1 = B_3_q0;
assign bitcast_ln15_fu_557_p1 = B_0_q0;
assign buff_A0_1_address0 = zext_ln13_reg_620;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_1_d0 = bitcast_ln13_1_fu_562_p1;
assign buff_A0_1_we0 = buff_A0_1_we0_local;
assign buff_A0_2_address0 = zext_ln13_reg_620;
assign buff_A0_2_ce0 = buff_A0_2_ce0_local;
assign buff_A0_2_d0 = bitcast_ln13_2_fu_573_p1;
assign buff_A0_2_we0 = buff_A0_2_we0_local;
assign buff_A0_3_address0 = zext_ln13_reg_620;
assign buff_A0_3_ce0 = buff_A0_3_ce0_local;
assign buff_A0_3_d0 = bitcast_ln13_3_fu_584_p1;
assign buff_A0_3_we0 = buff_A0_3_we0_local;
assign buff_A0_address0 = zext_ln13_reg_620;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A0_d0 = bitcast_ln13_fu_551_p1;
assign buff_A0_we0 = buff_A0_we0_local;
assign buff_A1_1_address0 = zext_ln13_reg_620;
assign buff_A1_1_ce0 = buff_A1_1_ce0_local;
assign buff_A1_1_d0 = bitcast_ln13_1_fu_562_p1;
assign buff_A1_1_we0 = buff_A1_1_we0_local;
assign buff_A1_2_address0 = zext_ln13_reg_620;
assign buff_A1_2_ce0 = buff_A1_2_ce0_local;
assign buff_A1_2_d0 = bitcast_ln13_2_fu_573_p1;
assign buff_A1_2_we0 = buff_A1_2_we0_local;
assign buff_A1_3_address0 = zext_ln13_reg_620;
assign buff_A1_3_ce0 = buff_A1_3_ce0_local;
assign buff_A1_3_d0 = bitcast_ln13_3_fu_584_p1;
assign buff_A1_3_we0 = buff_A1_3_we0_local;
assign buff_A1_address0 = zext_ln13_reg_620;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_A1_d0 = bitcast_ln13_fu_551_p1;
assign buff_A1_we0 = buff_A1_we0_local;
assign buff_B_1_address0 = zext_ln13_reg_620;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_d0 = bitcast_ln15_1_fu_568_p1;
assign buff_B_1_we0 = buff_B_1_we0_local;
assign buff_B_2_address0 = zext_ln13_reg_620;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_2_d0 = bitcast_ln15_2_fu_579_p1;
assign buff_B_2_we0 = buff_B_2_we0_local;
assign buff_B_3_address0 = zext_ln13_reg_620;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_3_d0 = bitcast_ln15_3_fu_590_p1;
assign buff_B_3_we0 = buff_B_3_we0_local;
assign buff_B_address0 = zext_ln13_reg_620;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_d0 = bitcast_ln15_fu_557_p1;
assign buff_B_we0 = buff_B_we0_local;
assign buff_C_out_1_address0 = zext_ln13_fu_519_p1;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_d0 = 32'd0;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = zext_ln13_fu_519_p1;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_d0 = 32'd0;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = zext_ln13_fu_519_p1;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_d0 = 32'd0;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_address0 = zext_ln13_fu_519_p1;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_d0 = 32'd0;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign icmp_ln11_fu_444_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_501_p4 = {{select_ln5_fu_481_p3[5:2]}};
assign select_ln11_fu_489_p3 = ((tmp_fu_473_p3[0:0] == 1'b1) ? add_ln11_fu_467_p2 : i_fu_102);
assign select_ln5_fu_481_p3 = ((tmp_fu_473_p3[0:0] == 1'b1) ? 7'd0 : j_fu_98);
assign tmp_3_fu_511_p3 = {{trunc_ln4_fu_497_p1}, {lshr_ln5_fu_501_p4}};
assign tmp_fu_473_p3 = j_fu_98[32'd6];
assign trunc_ln4_fu_497_p1 = select_ln11_fu_489_p3[5:0];
assign zext_ln13_fu_519_p1 = tmp_3_fu_511_p3;
always @ (posedge ap_clk) begin
    zext_ln13_reg_620[63:10] <= 54'b000000000000000000000000000000000000000000000000000000;
end
endmodule 
