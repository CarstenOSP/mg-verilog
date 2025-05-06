
module syrk_syrk_Pipeline_lprd_1_lprd_2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_0_address0,A_0_ce0,A_0_q0,A_1_address0,A_1_ce0,A_1_q0,B_0_address0,B_0_ce0,B_0_q0,B_1_address0,B_1_ce0,B_1_q0,buff_A0_address0,buff_A0_ce0,buff_A0_we0,buff_A0_d0,buff_A0_1_address0,buff_A0_1_ce0,buff_A0_1_we0,buff_A0_1_d0,buff_A1_address0,buff_A1_ce0,buff_A1_we0,buff_A1_d0,buff_A1_1_address0,buff_A1_1_ce0,buff_A1_1_we0,buff_A1_1_d0,buff_B_address0,buff_B_ce0,buff_B_we0,buff_B_d0,buff_B_1_address0,buff_B_1_ce0,buff_B_1_we0,buff_B_1_d0,buff_B_2_address0,buff_B_2_ce0,buff_B_2_we0,buff_B_2_d0,buff_B_3_address0,buff_B_3_ce0,buff_B_3_we0,buff_B_3_d0,buff_B_4_address0,buff_B_4_ce0,buff_B_4_we0,buff_B_4_d0,buff_B_5_address0,buff_B_5_ce0,buff_B_5_we0,buff_B_5_d0,buff_B_6_address0,buff_B_6_ce0,buff_B_6_we0,buff_B_6_d0,buff_B_7_address0,buff_B_7_ce0,buff_B_7_we0,buff_B_7_d0,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_4_address0,buff_C_out_4_ce0,buff_C_out_4_we0,buff_C_out_4_d0,buff_C_out_5_address0,buff_C_out_5_ce0,buff_C_out_5_we0,buff_C_out_5_d0,buff_C_out_6_address0,buff_C_out_6_ce0,buff_C_out_6_we0,buff_C_out_6_d0,buff_C_out_7_address0,buff_C_out_7_ce0,buff_C_out_7_we0,buff_C_out_7_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] A_0_address0;
output   A_0_ce0;
input  [31:0] A_0_q0;
output  [10:0] A_1_address0;
output   A_1_ce0;
input  [31:0] A_1_q0;
output  [10:0] B_0_address0;
output   B_0_ce0;
input  [31:0] B_0_q0;
output  [10:0] B_1_address0;
output   B_1_ce0;
input  [31:0] B_1_q0;
output  [10:0] buff_A0_address0;
output   buff_A0_ce0;
output   buff_A0_we0;
output  [31:0] buff_A0_d0;
output  [10:0] buff_A0_1_address0;
output   buff_A0_1_ce0;
output   buff_A0_1_we0;
output  [31:0] buff_A0_1_d0;
output  [10:0] buff_A1_address0;
output   buff_A1_ce0;
output   buff_A1_we0;
output  [31:0] buff_A1_d0;
output  [10:0] buff_A1_1_address0;
output   buff_A1_1_ce0;
output   buff_A1_1_we0;
output  [31:0] buff_A1_1_d0;
output  [8:0] buff_B_address0;
output   buff_B_ce0;
output   buff_B_we0;
output  [31:0] buff_B_d0;
output  [8:0] buff_B_1_address0;
output   buff_B_1_ce0;
output   buff_B_1_we0;
output  [31:0] buff_B_1_d0;
output  [8:0] buff_B_2_address0;
output   buff_B_2_ce0;
output   buff_B_2_we0;
output  [31:0] buff_B_2_d0;
output  [8:0] buff_B_3_address0;
output   buff_B_3_ce0;
output   buff_B_3_we0;
output  [31:0] buff_B_3_d0;
output  [8:0] buff_B_4_address0;
output   buff_B_4_ce0;
output   buff_B_4_we0;
output  [31:0] buff_B_4_d0;
output  [8:0] buff_B_5_address0;
output   buff_B_5_ce0;
output   buff_B_5_we0;
output  [31:0] buff_B_5_d0;
output  [8:0] buff_B_6_address0;
output   buff_B_6_ce0;
output   buff_B_6_we0;
output  [31:0] buff_B_6_d0;
output  [8:0] buff_B_7_address0;
output   buff_B_7_ce0;
output   buff_B_7_we0;
output  [31:0] buff_B_7_d0;
output  [8:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
output  [8:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
output  [8:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
output  [8:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
output  [8:0] buff_C_out_4_address0;
output   buff_C_out_4_ce0;
output   buff_C_out_4_we0;
output  [31:0] buff_C_out_4_d0;
output  [8:0] buff_C_out_5_address0;
output   buff_C_out_5_ce0;
output   buff_C_out_5_we0;
output  [31:0] buff_C_out_5_d0;
output  [8:0] buff_C_out_6_address0;
output   buff_C_out_6_ce0;
output   buff_C_out_6_we0;
output  [31:0] buff_C_out_6_d0;
output  [8:0] buff_C_out_7_address0;
output   buff_C_out_7_ce0;
output   buff_C_out_7_we0;
output  [31:0] buff_C_out_7_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11_fu_458_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [5:0] trunc_ln11_fu_506_p1;
reg   [5:0] trunc_ln11_reg_640;
wire   [1:0] trunc_ln11_1_fu_510_p1;
reg   [1:0] trunc_ln11_1_reg_645;
reg   [1:0] trunc_ln11_1_reg_645_pp0_iter1_reg;
reg   [4:0] lshr_ln5_2_reg_649;
reg   [3:0] tmp_5_reg_655;
wire   [63:0] zext_ln13_fu_561_p1;
reg   [63:0] zext_ln13_reg_660;
wire   [63:0] zext_ln15_fu_575_p1;
reg   [63:0] zext_ln15_reg_688;
wire    ap_block_pp0_stage0;
reg   [6:0] j_fu_108;
wire   [6:0] add_ln12_fu_534_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_j_load;
reg   [6:0] i_fu_112;
wire   [6:0] select_ln11_fu_498_p3;
reg   [6:0] ap_sig_allocacmp_i_load;
reg   [11:0] indvar_flatten_fu_116;
wire   [11:0] add_ln11_1_fu_464_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg    A_0_ce0_local;
reg    B_0_ce0_local;
reg    A_1_ce0_local;
reg    B_1_ce0_local;
reg    buff_C_out_2_we0_local;
reg    buff_C_out_2_ce0_local;
reg    buff_C_out_6_we0_local;
reg    buff_C_out_6_ce0_local;
reg    buff_C_out_1_we0_local;
reg    buff_C_out_1_ce0_local;
reg    buff_C_out_5_we0_local;
reg    buff_C_out_5_ce0_local;
reg    buff_C_out_we0_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_4_we0_local;
reg    buff_C_out_4_ce0_local;
reg    buff_C_out_3_we0_local;
reg    buff_C_out_3_ce0_local;
reg    buff_C_out_7_we0_local;
reg    buff_C_out_7_ce0_local;
reg    buff_A0_we0_local;
wire   [31:0] bitcast_ln13_fu_587_p1;
reg    buff_A0_ce0_local;
reg    buff_A0_1_we0_local;
wire   [31:0] bitcast_ln13_1_fu_601_p1;
reg    buff_A0_1_ce0_local;
reg    buff_A1_we0_local;
reg    buff_A1_ce0_local;
reg    buff_A1_1_we0_local;
reg    buff_A1_1_ce0_local;
reg    buff_B_2_we0_local;
wire   [31:0] bitcast_ln15_fu_593_p1;
reg    buff_B_2_ce0_local;
reg    buff_B_6_we0_local;
wire   [31:0] bitcast_ln15_1_fu_607_p1;
reg    buff_B_6_ce0_local;
reg    buff_B_1_we0_local;
reg    buff_B_1_ce0_local;
reg    buff_B_5_we0_local;
reg    buff_B_5_ce0_local;
reg    buff_B_we0_local;
reg    buff_B_ce0_local;
reg    buff_B_4_we0_local;
reg    buff_B_4_ce0_local;
reg    buff_B_3_we0_local;
reg    buff_B_3_ce0_local;
reg    buff_B_7_we0_local;
reg    buff_B_7_ce0_local;
wire   [0:0] tmp_fu_482_p3;
wire   [6:0] add_ln11_fu_476_p2;
wire   [6:0] select_ln5_fu_490_p3;
wire   [10:0] tmp_2_fu_555_p3;
wire   [8:0] tmp_6_fu_569_p3;
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
#0 j_fu_108 = 7'd0;
#0 i_fu_112 = 7'd0;
#0 indvar_flatten_fu_116 = 12'd0;
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
        if (((icmp_ln11_fu_458_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_112 <= select_ln11_fu_498_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_112 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln11_fu_458_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_116 <= add_ln11_1_fu_464_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_116 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln11_fu_458_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            j_fu_108 <= add_ln12_fu_534_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            j_fu_108 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        lshr_ln5_2_reg_649 <= {{select_ln5_fu_490_p3[5:1]}};
        tmp_5_reg_655 <= {{select_ln11_fu_498_p3[5:2]}};
        trunc_ln11_1_reg_645 <= trunc_ln11_1_fu_510_p1;
        trunc_ln11_1_reg_645_pp0_iter1_reg <= trunc_ln11_1_reg_645;
        trunc_ln11_reg_640 <= trunc_ln11_fu_506_p1;
        zext_ln13_reg_660[10 : 0] <= zext_ln13_fu_561_p1[10 : 0];
        zext_ln15_reg_688[8 : 0] <= zext_ln15_fu_575_p1[8 : 0];
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
    if (((icmp_ln11_fu_458_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i_load = i_fu_112;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_116;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_108;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645_pp0_iter1_reg == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645_pp0_iter1_reg == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_3_we0_local = 1'b1;
    end else begin
        buff_B_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_4_ce0_local = 1'b1;
    end else begin
        buff_B_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_4_we0_local = 1'b1;
    end else begin
        buff_B_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_5_ce0_local = 1'b1;
    end else begin
        buff_B_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645_pp0_iter1_reg == 2'd1) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_5_we0_local = 1'b1;
    end else begin
        buff_B_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_6_ce0_local = 1'b1;
    end else begin
        buff_B_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645_pp0_iter1_reg == 2'd2) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_6_we0_local = 1'b1;
    end else begin
        buff_B_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_7_ce0_local = 1'b1;
    end else begin
        buff_B_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645_pp0_iter1_reg == 2'd3) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_7_we0_local = 1'b1;
    end else begin
        buff_B_7_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645_pp0_iter1_reg == 2'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_4_ce0_local = 1'b1;
    end else begin
        buff_C_out_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_4_we0_local = 1'b1;
    end else begin
        buff_C_out_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_5_ce0_local = 1'b1;
    end else begin
        buff_C_out_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645 == 2'd1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_5_we0_local = 1'b1;
    end else begin
        buff_C_out_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_6_ce0_local = 1'b1;
    end else begin
        buff_C_out_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645 == 2'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_6_we0_local = 1'b1;
    end else begin
        buff_C_out_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_7_ce0_local = 1'b1;
    end else begin
        buff_C_out_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645 == 2'd3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_C_out_7_we0_local = 1'b1;
    end else begin
        buff_C_out_7_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln11_1_reg_645 == 2'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign A_0_address0 = zext_ln13_fu_561_p1;
assign A_0_ce0 = A_0_ce0_local;
assign A_1_address0 = zext_ln13_fu_561_p1;
assign A_1_ce0 = A_1_ce0_local;
assign B_0_address0 = zext_ln13_fu_561_p1;
assign B_0_ce0 = B_0_ce0_local;
assign B_1_address0 = zext_ln13_fu_561_p1;
assign B_1_ce0 = B_1_ce0_local;
assign add_ln11_1_fu_464_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln11_fu_476_p2 = (ap_sig_allocacmp_i_load + 7'd1);
assign add_ln12_fu_534_p2 = (select_ln5_fu_490_p3 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln13_1_fu_601_p1 = A_1_q0;
assign bitcast_ln13_fu_587_p1 = A_0_q0;
assign bitcast_ln15_1_fu_607_p1 = B_1_q0;
assign bitcast_ln15_fu_593_p1 = B_0_q0;
assign buff_A0_1_address0 = zext_ln13_reg_660;
assign buff_A0_1_ce0 = buff_A0_1_ce0_local;
assign buff_A0_1_d0 = bitcast_ln13_1_fu_601_p1;
assign buff_A0_1_we0 = buff_A0_1_we0_local;
assign buff_A0_address0 = zext_ln13_reg_660;
assign buff_A0_ce0 = buff_A0_ce0_local;
assign buff_A0_d0 = bitcast_ln13_fu_587_p1;
assign buff_A0_we0 = buff_A0_we0_local;
assign buff_A1_1_address0 = zext_ln13_reg_660;
assign buff_A1_1_ce0 = buff_A1_1_ce0_local;
assign buff_A1_1_d0 = bitcast_ln13_1_fu_601_p1;
assign buff_A1_1_we0 = buff_A1_1_we0_local;
assign buff_A1_address0 = zext_ln13_reg_660;
assign buff_A1_ce0 = buff_A1_ce0_local;
assign buff_A1_d0 = bitcast_ln13_fu_587_p1;
assign buff_A1_we0 = buff_A1_we0_local;
assign buff_B_1_address0 = zext_ln15_reg_688;
assign buff_B_1_ce0 = buff_B_1_ce0_local;
assign buff_B_1_d0 = bitcast_ln15_fu_593_p1;
assign buff_B_1_we0 = buff_B_1_we0_local;
assign buff_B_2_address0 = zext_ln15_reg_688;
assign buff_B_2_ce0 = buff_B_2_ce0_local;
assign buff_B_2_d0 = bitcast_ln15_fu_593_p1;
assign buff_B_2_we0 = buff_B_2_we0_local;
assign buff_B_3_address0 = zext_ln15_reg_688;
assign buff_B_3_ce0 = buff_B_3_ce0_local;
assign buff_B_3_d0 = bitcast_ln15_fu_593_p1;
assign buff_B_3_we0 = buff_B_3_we0_local;
assign buff_B_4_address0 = zext_ln15_reg_688;
assign buff_B_4_ce0 = buff_B_4_ce0_local;
assign buff_B_4_d0 = bitcast_ln15_1_fu_607_p1;
assign buff_B_4_we0 = buff_B_4_we0_local;
assign buff_B_5_address0 = zext_ln15_reg_688;
assign buff_B_5_ce0 = buff_B_5_ce0_local;
assign buff_B_5_d0 = bitcast_ln15_1_fu_607_p1;
assign buff_B_5_we0 = buff_B_5_we0_local;
assign buff_B_6_address0 = zext_ln15_reg_688;
assign buff_B_6_ce0 = buff_B_6_ce0_local;
assign buff_B_6_d0 = bitcast_ln15_1_fu_607_p1;
assign buff_B_6_we0 = buff_B_6_we0_local;
assign buff_B_7_address0 = zext_ln15_reg_688;
assign buff_B_7_ce0 = buff_B_7_ce0_local;
assign buff_B_7_d0 = bitcast_ln15_1_fu_607_p1;
assign buff_B_7_we0 = buff_B_7_we0_local;
assign buff_B_address0 = zext_ln15_reg_688;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_B_d0 = bitcast_ln15_fu_593_p1;
assign buff_B_we0 = buff_B_we0_local;
assign buff_C_out_1_address0 = zext_ln15_fu_575_p1;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_d0 = 32'd0;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = zext_ln15_fu_575_p1;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_d0 = 32'd0;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = zext_ln15_fu_575_p1;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_d0 = 32'd0;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_4_address0 = zext_ln15_fu_575_p1;
assign buff_C_out_4_ce0 = buff_C_out_4_ce0_local;
assign buff_C_out_4_d0 = 32'd0;
assign buff_C_out_4_we0 = buff_C_out_4_we0_local;
assign buff_C_out_5_address0 = zext_ln15_fu_575_p1;
assign buff_C_out_5_ce0 = buff_C_out_5_ce0_local;
assign buff_C_out_5_d0 = 32'd0;
assign buff_C_out_5_we0 = buff_C_out_5_we0_local;
assign buff_C_out_6_address0 = zext_ln15_fu_575_p1;
assign buff_C_out_6_ce0 = buff_C_out_6_ce0_local;
assign buff_C_out_6_d0 = 32'd0;
assign buff_C_out_6_we0 = buff_C_out_6_we0_local;
assign buff_C_out_7_address0 = zext_ln15_fu_575_p1;
assign buff_C_out_7_ce0 = buff_C_out_7_ce0_local;
assign buff_C_out_7_d0 = 32'd0;
assign buff_C_out_7_we0 = buff_C_out_7_we0_local;
assign buff_C_out_address0 = zext_ln15_fu_575_p1;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_d0 = 32'd0;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign icmp_ln11_fu_458_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2048) ? 1'b1 : 1'b0);
assign select_ln11_fu_498_p3 = ((tmp_fu_482_p3[0:0] == 1'b1) ? add_ln11_fu_476_p2 : ap_sig_allocacmp_i_load);
assign select_ln5_fu_490_p3 = ((tmp_fu_482_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j_load);
assign tmp_2_fu_555_p3 = {{trunc_ln11_reg_640}, {lshr_ln5_2_reg_649}};
assign tmp_6_fu_569_p3 = {{tmp_5_reg_655}, {lshr_ln5_2_reg_649}};
assign tmp_fu_482_p3 = ap_sig_allocacmp_j_load[32'd6];
assign trunc_ln11_1_fu_510_p1 = select_ln11_fu_498_p3[1:0];
assign trunc_ln11_fu_506_p1 = select_ln11_fu_498_p3[5:0];
assign zext_ln13_fu_561_p1 = tmp_2_fu_555_p3;
assign zext_ln15_fu_575_p1 = tmp_6_fu_569_p3;
always @ (posedge ap_clk) begin
    zext_ln13_reg_660[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
    zext_ln15_reg_688[63:9] <= 55'b0000000000000000000000000000000000000000000000000000000;
end
endmodule 
