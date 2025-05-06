
module forward_dataflow_in_loop_VITIS_LOOP_4165_1_Loop_VITIS_LOOP_4104_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v3355_address0,v3355_ce0,v3355_we0,v3355_d0,v3355_1_address0,v3355_1_ce0,v3355_1_we0,v3355_1_d0,v3355_2_address0,v3355_2_ce0,v3355_2_we0,v3355_2_d0,v3355_3_address0,v3355_3_ce0,v3355_3_we0,v3355_3_d0,v3355_4_address0,v3355_4_ce0,v3355_4_we0,v3355_4_d0,v3355_5_address0,v3355_5_ce0,v3355_5_we0,v3355_5_d0,v3355_6_address0,v3355_6_ce0,v3355_6_we0,v3355_6_d0,v3355_7_address0,v3355_7_ce0,v3355_7_we0,v3355_7_d0,v3355_8_address0,v3355_8_ce0,v3355_8_we0,v3355_8_d0,v3355_9_address0,v3355_9_ce0,v3355_9_we0,v3355_9_d0,v3355_10_address0,v3355_10_ce0,v3355_10_we0,v3355_10_d0,v3355_11_address0,v3355_11_ce0,v3355_11_we0,v3355_11_d0,v3355_12_address0,v3355_12_ce0,v3355_12_we0,v3355_12_d0,v3355_13_address0,v3355_13_ce0,v3355_13_we0,v3355_13_d0,v3355_14_address0,v3355_14_ce0,v3355_14_we0,v3355_14_d0,v3355_15_address0,v3355_15_ce0,v3355_15_we0,v3355_15_d0,v3345_0,v13691_0_address0,v13691_0_ce0,v13691_0_q0,v13691_1_address0,v13691_1_ce0,v13691_1_q0,v13691_2_address0,v13691_2_ce0,v13691_2_q0,v13691_3_address0,v13691_3_ce0,v13691_3_q0,v13691_4_address0,v13691_4_ce0,v13691_4_q0,v13691_5_address0,v13691_5_ce0,v13691_5_q0,v13691_6_address0,v13691_6_ce0,v13691_6_q0,v13691_7_address0,v13691_7_ce0,v13691_7_q0,v13691_8_address0,v13691_8_ce0,v13691_8_q0,v13691_9_address0,v13691_9_ce0,v13691_9_q0,v13691_10_address0,v13691_10_ce0,v13691_10_q0,v13691_11_address0,v13691_11_ce0,v13691_11_q0,v13691_12_address0,v13691_12_ce0,v13691_12_q0,v13691_13_address0,v13691_13_ce0,v13691_13_q0,v13691_14_address0,v13691_14_ce0,v13691_14_q0,v13691_15_address0,v13691_15_ce0,v13691_15_q0,ap_return);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [0:0] v3355_address0;
output   v3355_ce0;
output   v3355_we0;
output  [7:0] v3355_d0;
output  [0:0] v3355_1_address0;
output   v3355_1_ce0;
output   v3355_1_we0;
output  [7:0] v3355_1_d0;
output  [0:0] v3355_2_address0;
output   v3355_2_ce0;
output   v3355_2_we0;
output  [7:0] v3355_2_d0;
output  [0:0] v3355_3_address0;
output   v3355_3_ce0;
output   v3355_3_we0;
output  [7:0] v3355_3_d0;
output  [0:0] v3355_4_address0;
output   v3355_4_ce0;
output   v3355_4_we0;
output  [7:0] v3355_4_d0;
output  [0:0] v3355_5_address0;
output   v3355_5_ce0;
output   v3355_5_we0;
output  [7:0] v3355_5_d0;
output  [0:0] v3355_6_address0;
output   v3355_6_ce0;
output   v3355_6_we0;
output  [7:0] v3355_6_d0;
output  [0:0] v3355_7_address0;
output   v3355_7_ce0;
output   v3355_7_we0;
output  [7:0] v3355_7_d0;
output  [0:0] v3355_8_address0;
output   v3355_8_ce0;
output   v3355_8_we0;
output  [7:0] v3355_8_d0;
output  [0:0] v3355_9_address0;
output   v3355_9_ce0;
output   v3355_9_we0;
output  [7:0] v3355_9_d0;
output  [0:0] v3355_10_address0;
output   v3355_10_ce0;
output   v3355_10_we0;
output  [7:0] v3355_10_d0;
output  [0:0] v3355_11_address0;
output   v3355_11_ce0;
output   v3355_11_we0;
output  [7:0] v3355_11_d0;
output  [0:0] v3355_12_address0;
output   v3355_12_ce0;
output   v3355_12_we0;
output  [7:0] v3355_12_d0;
output  [0:0] v3355_13_address0;
output   v3355_13_ce0;
output   v3355_13_we0;
output  [7:0] v3355_13_d0;
output  [0:0] v3355_14_address0;
output   v3355_14_ce0;
output   v3355_14_we0;
output  [7:0] v3355_14_d0;
output  [0:0] v3355_15_address0;
output   v3355_15_ce0;
output   v3355_15_we0;
output  [7:0] v3355_15_d0;
input  [15:0] v3345_0;
output  [5:0] v13691_0_address0;
output   v13691_0_ce0;
input  [7:0] v13691_0_q0;
output  [5:0] v13691_1_address0;
output   v13691_1_ce0;
input  [7:0] v13691_1_q0;
output  [5:0] v13691_2_address0;
output   v13691_2_ce0;
input  [7:0] v13691_2_q0;
output  [5:0] v13691_3_address0;
output   v13691_3_ce0;
input  [7:0] v13691_3_q0;
output  [5:0] v13691_4_address0;
output   v13691_4_ce0;
input  [7:0] v13691_4_q0;
output  [5:0] v13691_5_address0;
output   v13691_5_ce0;
input  [7:0] v13691_5_q0;
output  [5:0] v13691_6_address0;
output   v13691_6_ce0;
input  [7:0] v13691_6_q0;
output  [5:0] v13691_7_address0;
output   v13691_7_ce0;
input  [7:0] v13691_7_q0;
output  [5:0] v13691_8_address0;
output   v13691_8_ce0;
input  [7:0] v13691_8_q0;
output  [5:0] v13691_9_address0;
output   v13691_9_ce0;
input  [7:0] v13691_9_q0;
output  [5:0] v13691_10_address0;
output   v13691_10_ce0;
input  [7:0] v13691_10_q0;
output  [5:0] v13691_11_address0;
output   v13691_11_ce0;
input  [7:0] v13691_11_q0;
output  [5:0] v13691_12_address0;
output   v13691_12_ce0;
input  [7:0] v13691_12_q0;
output  [5:0] v13691_13_address0;
output   v13691_13_ce0;
input  [7:0] v13691_13_q0;
output  [5:0] v13691_14_address0;
output   v13691_14_ce0;
input  [7:0] v13691_14_q0;
output  [5:0] v13691_15_address0;
output   v13691_15_ce0;
input  [7:0] v13691_15_q0;
output  [15:0] ap_return;
reg ap_idle;
reg[15:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_297_fu_680_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [15:0] v3345_0_read_reg_719;
reg    ap_block_pp0_stage0_11001;
wire   [1:0] lshr_ln_fu_614_p4;
reg   [1:0] lshr_ln_reg_723;
wire   [63:0] zext_ln4107_fu_640_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln4109_fu_655_p1;
wire   [63:0] zext_ln4104_1_fu_693_p1;
reg   [5:0] v3321189_fu_134;
wire   [5:0] v3321_fu_674_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v3321189_load;
reg    v13691_0_ce0_local;
reg    v13691_1_ce0_local;
reg    v13691_2_ce0_local;
reg    v13691_3_ce0_local;
reg    v13691_4_ce0_local;
reg    v13691_5_ce0_local;
reg    v13691_6_ce0_local;
reg    v13691_7_ce0_local;
reg    v13691_8_ce0_local;
reg    v13691_9_ce0_local;
reg    v13691_10_ce0_local;
reg    v13691_11_ce0_local;
reg    v13691_12_ce0_local;
reg    v13691_13_ce0_local;
reg    v13691_14_ce0_local;
reg    v13691_15_ce0_local;
reg    v3355_15_we0_local;
reg    v3355_15_ce0_local;
reg    v3355_14_we0_local;
reg    v3355_14_ce0_local;
reg    v3355_13_we0_local;
reg    v3355_13_ce0_local;
reg    v3355_12_we0_local;
reg    v3355_12_ce0_local;
reg    v3355_11_we0_local;
reg    v3355_11_ce0_local;
reg    v3355_10_we0_local;
reg    v3355_10_ce0_local;
reg    v3355_9_we0_local;
reg    v3355_9_ce0_local;
reg    v3355_8_we0_local;
reg    v3355_8_ce0_local;
reg    v3355_7_we0_local;
reg    v3355_7_ce0_local;
reg    v3355_6_we0_local;
reg    v3355_6_ce0_local;
reg    v3355_5_we0_local;
reg    v3355_5_ce0_local;
reg    v3355_4_we0_local;
reg    v3355_4_ce0_local;
reg    v3355_3_we0_local;
reg    v3355_3_ce0_local;
reg    v3355_2_we0_local;
reg    v3355_2_ce0_local;
reg    v3355_1_we0_local;
reg    v3355_1_ce0_local;
reg    v3355_we0_local;
reg    v3355_ce0_local;
wire   [4:0] tmp_fu_576_p4;
wire   [9:0] mul_i_fu_586_p3;
wire   [9:0] zext_ln4104_fu_610_p1;
wire   [5:0] zext_ln4104_2_fu_624_p1;
wire   [5:0] trunc_ln_fu_594_p3;
wire   [5:0] add_ln4106_1_fu_634_p2;
wire   [9:0] add_ln4106_fu_628_p2;
wire   [5:0] lshr_ln26_fu_645_p4;
reg   [15:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_266;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 v3321189_fu_134 = 6'd0;
#0 ap_return_preg = 16'd0;
end
forward_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue));
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 16'd0;
    end else begin
        if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_return_preg <= v3345_0_read_reg_719;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_266)) begin
        v3321189_fu_134 <= v3321_fu_674_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_723 <= {{ap_sig_allocacmp_v3321189_load[5:4]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3345_0_read_reg_719 <= v3345_0;
    end
end
always @ (*) begin
    if (((tmp_297_fu_680_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_return = v3345_0_read_reg_719;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v3321189_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v3321189_load = v3321189_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_0_ce0_local = 1'b1;
    end else begin
        v13691_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_10_ce0_local = 1'b1;
    end else begin
        v13691_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_11_ce0_local = 1'b1;
    end else begin
        v13691_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_12_ce0_local = 1'b1;
    end else begin
        v13691_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_13_ce0_local = 1'b1;
    end else begin
        v13691_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_14_ce0_local = 1'b1;
    end else begin
        v13691_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_15_ce0_local = 1'b1;
    end else begin
        v13691_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_1_ce0_local = 1'b1;
    end else begin
        v13691_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_2_ce0_local = 1'b1;
    end else begin
        v13691_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_3_ce0_local = 1'b1;
    end else begin
        v13691_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_4_ce0_local = 1'b1;
    end else begin
        v13691_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_5_ce0_local = 1'b1;
    end else begin
        v13691_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_6_ce0_local = 1'b1;
    end else begin
        v13691_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_7_ce0_local = 1'b1;
    end else begin
        v13691_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_8_ce0_local = 1'b1;
    end else begin
        v13691_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13691_9_ce0_local = 1'b1;
    end else begin
        v13691_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_10_ce0_local = 1'b1;
    end else begin
        v3355_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_10_we0_local = 1'b1;
    end else begin
        v3355_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_11_ce0_local = 1'b1;
    end else begin
        v3355_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_11_we0_local = 1'b1;
    end else begin
        v3355_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_12_ce0_local = 1'b1;
    end else begin
        v3355_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_12_we0_local = 1'b1;
    end else begin
        v3355_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_13_ce0_local = 1'b1;
    end else begin
        v3355_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_13_we0_local = 1'b1;
    end else begin
        v3355_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_14_ce0_local = 1'b1;
    end else begin
        v3355_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_14_we0_local = 1'b1;
    end else begin
        v3355_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_15_ce0_local = 1'b1;
    end else begin
        v3355_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_15_we0_local = 1'b1;
    end else begin
        v3355_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_1_ce0_local = 1'b1;
    end else begin
        v3355_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_1_we0_local = 1'b1;
    end else begin
        v3355_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_2_ce0_local = 1'b1;
    end else begin
        v3355_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_2_we0_local = 1'b1;
    end else begin
        v3355_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_3_ce0_local = 1'b1;
    end else begin
        v3355_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_3_we0_local = 1'b1;
    end else begin
        v3355_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_4_ce0_local = 1'b1;
    end else begin
        v3355_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_4_we0_local = 1'b1;
    end else begin
        v3355_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_5_ce0_local = 1'b1;
    end else begin
        v3355_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_5_we0_local = 1'b1;
    end else begin
        v3355_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_6_ce0_local = 1'b1;
    end else begin
        v3355_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_6_we0_local = 1'b1;
    end else begin
        v3355_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_7_ce0_local = 1'b1;
    end else begin
        v3355_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_7_we0_local = 1'b1;
    end else begin
        v3355_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_8_ce0_local = 1'b1;
    end else begin
        v3355_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_8_we0_local = 1'b1;
    end else begin
        v3355_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_9_ce0_local = 1'b1;
    end else begin
        v3355_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_9_we0_local = 1'b1;
    end else begin
        v3355_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_ce0_local = 1'b1;
    end else begin
        v3355_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3355_we0_local = 1'b1;
    end else begin
        v3355_we0_local = 1'b0;
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
assign add_ln4106_1_fu_634_p2 = (zext_ln4104_2_fu_624_p1 + trunc_ln_fu_594_p3);
assign add_ln4106_fu_628_p2 = (mul_i_fu_586_p3 + zext_ln4104_fu_610_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_266 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln26_fu_645_p4 = {{add_ln4106_fu_628_p2[9:4]}};
assign lshr_ln_fu_614_p4 = {{ap_sig_allocacmp_v3321189_load[5:4]}};
assign mul_i_fu_586_p3 = {{tmp_fu_576_p4}, {5'd0}};
assign tmp_297_fu_680_p3 = v3321_fu_674_p2[32'd5];
assign tmp_fu_576_p4 = {{v3345_0[6:2]}};
assign trunc_ln_fu_594_p3 = {{tmp_fu_576_p4}, {1'd0}};
assign v13691_0_address0 = zext_ln4107_fu_640_p1;
assign v13691_0_ce0 = v13691_0_ce0_local;
assign v13691_10_address0 = zext_ln4109_fu_655_p1;
assign v13691_10_ce0 = v13691_10_ce0_local;
assign v13691_11_address0 = zext_ln4109_fu_655_p1;
assign v13691_11_ce0 = v13691_11_ce0_local;
assign v13691_12_address0 = zext_ln4109_fu_655_p1;
assign v13691_12_ce0 = v13691_12_ce0_local;
assign v13691_13_address0 = zext_ln4109_fu_655_p1;
assign v13691_13_ce0 = v13691_13_ce0_local;
assign v13691_14_address0 = zext_ln4109_fu_655_p1;
assign v13691_14_ce0 = v13691_14_ce0_local;
assign v13691_15_address0 = zext_ln4109_fu_655_p1;
assign v13691_15_ce0 = v13691_15_ce0_local;
assign v13691_1_address0 = zext_ln4109_fu_655_p1;
assign v13691_1_ce0 = v13691_1_ce0_local;
assign v13691_2_address0 = zext_ln4109_fu_655_p1;
assign v13691_2_ce0 = v13691_2_ce0_local;
assign v13691_3_address0 = zext_ln4109_fu_655_p1;
assign v13691_3_ce0 = v13691_3_ce0_local;
assign v13691_4_address0 = zext_ln4109_fu_655_p1;
assign v13691_4_ce0 = v13691_4_ce0_local;
assign v13691_5_address0 = zext_ln4109_fu_655_p1;
assign v13691_5_ce0 = v13691_5_ce0_local;
assign v13691_6_address0 = zext_ln4109_fu_655_p1;
assign v13691_6_ce0 = v13691_6_ce0_local;
assign v13691_7_address0 = zext_ln4109_fu_655_p1;
assign v13691_7_ce0 = v13691_7_ce0_local;
assign v13691_8_address0 = zext_ln4109_fu_655_p1;
assign v13691_8_ce0 = v13691_8_ce0_local;
assign v13691_9_address0 = zext_ln4109_fu_655_p1;
assign v13691_9_ce0 = v13691_9_ce0_local;
assign v3321_fu_674_p2 = (ap_sig_allocacmp_v3321189_load + 6'd16);
assign v3355_10_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_10_ce0 = v3355_10_ce0_local;
assign v3355_10_d0 = v13691_5_q0;
assign v3355_10_we0 = v3355_10_we0_local;
assign v3355_11_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_11_ce0 = v3355_11_ce0_local;
assign v3355_11_d0 = v13691_4_q0;
assign v3355_11_we0 = v3355_11_we0_local;
assign v3355_12_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_12_ce0 = v3355_12_ce0_local;
assign v3355_12_d0 = v13691_3_q0;
assign v3355_12_we0 = v3355_12_we0_local;
assign v3355_13_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_13_ce0 = v3355_13_ce0_local;
assign v3355_13_d0 = v13691_2_q0;
assign v3355_13_we0 = v3355_13_we0_local;
assign v3355_14_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_14_ce0 = v3355_14_ce0_local;
assign v3355_14_d0 = v13691_1_q0;
assign v3355_14_we0 = v3355_14_we0_local;
assign v3355_15_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_15_ce0 = v3355_15_ce0_local;
assign v3355_15_d0 = v13691_0_q0;
assign v3355_15_we0 = v3355_15_we0_local;
assign v3355_1_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_1_ce0 = v3355_1_ce0_local;
assign v3355_1_d0 = v13691_14_q0;
assign v3355_1_we0 = v3355_1_we0_local;
assign v3355_2_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_2_ce0 = v3355_2_ce0_local;
assign v3355_2_d0 = v13691_13_q0;
assign v3355_2_we0 = v3355_2_we0_local;
assign v3355_3_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_3_ce0 = v3355_3_ce0_local;
assign v3355_3_d0 = v13691_12_q0;
assign v3355_3_we0 = v3355_3_we0_local;
assign v3355_4_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_4_ce0 = v3355_4_ce0_local;
assign v3355_4_d0 = v13691_11_q0;
assign v3355_4_we0 = v3355_4_we0_local;
assign v3355_5_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_5_ce0 = v3355_5_ce0_local;
assign v3355_5_d0 = v13691_10_q0;
assign v3355_5_we0 = v3355_5_we0_local;
assign v3355_6_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_6_ce0 = v3355_6_ce0_local;
assign v3355_6_d0 = v13691_9_q0;
assign v3355_6_we0 = v3355_6_we0_local;
assign v3355_7_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_7_ce0 = v3355_7_ce0_local;
assign v3355_7_d0 = v13691_8_q0;
assign v3355_7_we0 = v3355_7_we0_local;
assign v3355_8_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_8_ce0 = v3355_8_ce0_local;
assign v3355_8_d0 = v13691_7_q0;
assign v3355_8_we0 = v3355_8_we0_local;
assign v3355_9_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_9_ce0 = v3355_9_ce0_local;
assign v3355_9_d0 = v13691_6_q0;
assign v3355_9_we0 = v3355_9_we0_local;
assign v3355_address0 = zext_ln4104_1_fu_693_p1;
assign v3355_ce0 = v3355_ce0_local;
assign v3355_d0 = v13691_15_q0;
assign v3355_we0 = v3355_we0_local;
assign zext_ln4104_1_fu_693_p1 = lshr_ln_reg_723;
assign zext_ln4104_2_fu_624_p1 = lshr_ln_fu_614_p4;
assign zext_ln4104_fu_610_p1 = ap_sig_allocacmp_v3321189_load;
assign zext_ln4107_fu_640_p1 = add_ln4106_1_fu_634_p2;
assign zext_ln4109_fu_655_p1 = lshr_ln26_fu_645_p4;
endmodule 
