module forward_dataflow_in_loop_VITIS_LOOP_6001_1_Loop_VITIS_LOOP_5956_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v4903_address0,v4903_ce0,v4903_we0,v4903_d0,v4903_1_address0,v4903_1_ce0,v4903_1_we0,v4903_1_d0,v4903_2_address0,v4903_2_ce0,v4903_2_we0,v4903_2_d0,v4903_3_address0,v4903_3_ce0,v4903_3_we0,v4903_3_d0,v4903_4_address0,v4903_4_ce0,v4903_4_we0,v4903_4_d0,v4903_5_address0,v4903_5_ce0,v4903_5_we0,v4903_5_d0,v4903_6_address0,v4903_6_ce0,v4903_6_we0,v4903_6_d0,v4903_7_address0,v4903_7_ce0,v4903_7_we0,v4903_7_d0,v4893_0,v13690_0_address0,v13690_0_ce0,v13690_0_q0,v13690_1_address0,v13690_1_ce0,v13690_1_q0,v13690_2_address0,v13690_2_ce0,v13690_2_q0,v13690_3_address0,v13690_3_ce0,v13690_3_q0,v13690_4_address0,v13690_4_ce0,v13690_4_q0,v13690_5_address0,v13690_5_ce0,v13690_5_q0,v13690_6_address0,v13690_6_ce0,v13690_6_q0,v13690_7_address0,v13690_7_ce0,v13690_7_q0,ap_return); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [1:0] v4903_address0;
output   v4903_ce0;
output   v4903_we0;
output  [7:0] v4903_d0;
output  [1:0] v4903_1_address0;
output   v4903_1_ce0;
output   v4903_1_we0;
output  [7:0] v4903_1_d0;
output  [1:0] v4903_2_address0;
output   v4903_2_ce0;
output   v4903_2_we0;
output  [7:0] v4903_2_d0;
output  [1:0] v4903_3_address0;
output   v4903_3_ce0;
output   v4903_3_we0;
output  [7:0] v4903_3_d0;
output  [1:0] v4903_4_address0;
output   v4903_4_ce0;
output   v4903_4_we0;
output  [7:0] v4903_4_d0;
output  [1:0] v4903_5_address0;
output   v4903_5_ce0;
output   v4903_5_we0;
output  [7:0] v4903_5_d0;
output  [1:0] v4903_6_address0;
output   v4903_6_ce0;
output   v4903_6_we0;
output  [7:0] v4903_6_d0;
output  [1:0] v4903_7_address0;
output   v4903_7_ce0;
output   v4903_7_we0;
output  [7:0] v4903_7_d0;
input  [14:0] v4893_0;
output  [6:0] v13690_0_address0;
output   v13690_0_ce0;
input  [7:0] v13690_0_q0;
output  [6:0] v13690_1_address0;
output   v13690_1_ce0;
input  [7:0] v13690_1_q0;
output  [6:0] v13690_2_address0;
output   v13690_2_ce0;
input  [7:0] v13690_2_q0;
output  [6:0] v13690_3_address0;
output   v13690_3_ce0;
input  [7:0] v13690_3_q0;
output  [6:0] v13690_4_address0;
output   v13690_4_ce0;
input  [7:0] v13690_4_q0;
output  [6:0] v13690_5_address0;
output   v13690_5_ce0;
input  [7:0] v13690_5_q0;
output  [6:0] v13690_6_address0;
output   v13690_6_ce0;
input  [7:0] v13690_6_q0;
output  [6:0] v13690_7_address0;
output   v13690_7_ce0;
input  [7:0] v13690_7_q0;
output  [14:0] ap_return;
reg ap_idle;
reg[14:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_219_fu_424_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [14:0] v4893_0_read_reg_455;
reg    ap_block_pp0_stage0_11001;
wire   [2:0] lshr_ln_fu_366_p4;
reg   [2:0] lshr_ln_reg_459;
wire   [63:0] zext_ln5959_fu_392_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5961_fu_407_p1;
wire   [63:0] zext_ln5956_2_fu_437_p1;
reg   [5:0] v487793_fu_102;
wire   [5:0] v4877_fu_418_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v487793_load;
reg    v13690_0_ce0_local;
reg    v13690_1_ce0_local;
reg    v13690_2_ce0_local;
reg    v13690_3_ce0_local;
reg    v13690_4_ce0_local;
reg    v13690_5_ce0_local;
reg    v13690_6_ce0_local;
reg    v13690_7_ce0_local;
reg    v4903_7_we0_local;
reg    v4903_7_ce0_local;
reg    v4903_6_we0_local;
reg    v4903_6_ce0_local;
reg    v4903_5_we0_local;
reg    v4903_5_ce0_local;
reg    v4903_4_we0_local;
reg    v4903_4_ce0_local;
reg    v4903_3_we0_local;
reg    v4903_3_ce0_local;
reg    v4903_2_we0_local;
reg    v4903_2_ce0_local;
reg    v4903_1_we0_local;
reg    v4903_1_ce0_local;
reg    v4903_we0_local;
reg    v4903_ce0_local;
wire   [4:0] tmp_fu_328_p4;
wire   [9:0] mul_i_fu_338_p3;
wire   [9:0] zext_ln5956_fu_362_p1;
wire   [6:0] trunc_ln_fu_346_p3;
wire   [6:0] zext_ln5956_1_fu_376_p1;
wire   [6:0] add_ln5958_1_fu_386_p2;
wire   [9:0] add_ln5958_fu_380_p2;
wire   [6:0] lshr_ln13_fu_397_p4;
reg   [14:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_162;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 v487793_fu_102 = 6'd0;
#0 ap_return_preg = 15'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_return_preg <= 15'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_return_preg <= v4893_0_read_reg_455;
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
    if ((1'b1 == ap_condition_162)) begin
        v487793_fu_102 <= v4877_fu_418_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_459 <= {{ap_sig_allocacmp_v487793_load[5:3]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4893_0_read_reg_455 <= v4893_0;
    end
end
always @ (*) begin
    if (((tmp_219_fu_424_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_return = v4893_0_read_reg_455;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v487793_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v487793_load = v487793_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13690_0_ce0_local = 1'b1;
    end else begin
        v13690_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13690_1_ce0_local = 1'b1;
    end else begin
        v13690_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13690_2_ce0_local = 1'b1;
    end else begin
        v13690_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13690_3_ce0_local = 1'b1;
    end else begin
        v13690_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13690_4_ce0_local = 1'b1;
    end else begin
        v13690_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13690_5_ce0_local = 1'b1;
    end else begin
        v13690_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13690_6_ce0_local = 1'b1;
    end else begin
        v13690_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13690_7_ce0_local = 1'b1;
    end else begin
        v13690_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_1_ce0_local = 1'b1;
    end else begin
        v4903_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_1_we0_local = 1'b1;
    end else begin
        v4903_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_2_ce0_local = 1'b1;
    end else begin
        v4903_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_2_we0_local = 1'b1;
    end else begin
        v4903_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_3_ce0_local = 1'b1;
    end else begin
        v4903_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_3_we0_local = 1'b1;
    end else begin
        v4903_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_4_ce0_local = 1'b1;
    end else begin
        v4903_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_4_we0_local = 1'b1;
    end else begin
        v4903_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_5_ce0_local = 1'b1;
    end else begin
        v4903_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_5_we0_local = 1'b1;
    end else begin
        v4903_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_6_ce0_local = 1'b1;
    end else begin
        v4903_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_6_we0_local = 1'b1;
    end else begin
        v4903_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_7_ce0_local = 1'b1;
    end else begin
        v4903_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_7_we0_local = 1'b1;
    end else begin
        v4903_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_ce0_local = 1'b1;
    end else begin
        v4903_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4903_we0_local = 1'b1;
    end else begin
        v4903_we0_local = 1'b0;
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
assign add_ln5958_1_fu_386_p2 = (trunc_ln_fu_346_p3 + zext_ln5956_1_fu_376_p1);
assign add_ln5958_fu_380_p2 = (mul_i_fu_338_p3 + zext_ln5956_fu_362_p1);
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
    ap_condition_162 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln13_fu_397_p4 = {{add_ln5958_fu_380_p2[9:3]}};
assign lshr_ln_fu_366_p4 = {{ap_sig_allocacmp_v487793_load[5:3]}};
assign mul_i_fu_338_p3 = {{tmp_fu_328_p4}, {5'd0}};
assign tmp_219_fu_424_p3 = v4877_fu_418_p2[32'd5];
assign tmp_fu_328_p4 = {{v4893_0[6:2]}};
assign trunc_ln_fu_346_p3 = {{tmp_fu_328_p4}, {2'd0}};
assign v13690_0_address0 = zext_ln5959_fu_392_p1;
assign v13690_0_ce0 = v13690_0_ce0_local;
assign v13690_1_address0 = zext_ln5961_fu_407_p1;
assign v13690_1_ce0 = v13690_1_ce0_local;
assign v13690_2_address0 = zext_ln5961_fu_407_p1;
assign v13690_2_ce0 = v13690_2_ce0_local;
assign v13690_3_address0 = zext_ln5961_fu_407_p1;
assign v13690_3_ce0 = v13690_3_ce0_local;
assign v13690_4_address0 = zext_ln5961_fu_407_p1;
assign v13690_4_ce0 = v13690_4_ce0_local;
assign v13690_5_address0 = zext_ln5961_fu_407_p1;
assign v13690_5_ce0 = v13690_5_ce0_local;
assign v13690_6_address0 = zext_ln5961_fu_407_p1;
assign v13690_6_ce0 = v13690_6_ce0_local;
assign v13690_7_address0 = zext_ln5961_fu_407_p1;
assign v13690_7_ce0 = v13690_7_ce0_local;
assign v4877_fu_418_p2 = (ap_sig_allocacmp_v487793_load + 6'd8);
assign v4903_1_address0 = zext_ln5956_2_fu_437_p1;
assign v4903_1_ce0 = v4903_1_ce0_local;
assign v4903_1_d0 = v13690_6_q0;
assign v4903_1_we0 = v4903_1_we0_local;
assign v4903_2_address0 = zext_ln5956_2_fu_437_p1;
assign v4903_2_ce0 = v4903_2_ce0_local;
assign v4903_2_d0 = v13690_5_q0;
assign v4903_2_we0 = v4903_2_we0_local;
assign v4903_3_address0 = zext_ln5956_2_fu_437_p1;
assign v4903_3_ce0 = v4903_3_ce0_local;
assign v4903_3_d0 = v13690_4_q0;
assign v4903_3_we0 = v4903_3_we0_local;
assign v4903_4_address0 = zext_ln5956_2_fu_437_p1;
assign v4903_4_ce0 = v4903_4_ce0_local;
assign v4903_4_d0 = v13690_3_q0;
assign v4903_4_we0 = v4903_4_we0_local;
assign v4903_5_address0 = zext_ln5956_2_fu_437_p1;
assign v4903_5_ce0 = v4903_5_ce0_local;
assign v4903_5_d0 = v13690_2_q0;
assign v4903_5_we0 = v4903_5_we0_local;
assign v4903_6_address0 = zext_ln5956_2_fu_437_p1;
assign v4903_6_ce0 = v4903_6_ce0_local;
assign v4903_6_d0 = v13690_1_q0;
assign v4903_6_we0 = v4903_6_we0_local;
assign v4903_7_address0 = zext_ln5956_2_fu_437_p1;
assign v4903_7_ce0 = v4903_7_ce0_local;
assign v4903_7_d0 = v13690_0_q0;
assign v4903_7_we0 = v4903_7_we0_local;
assign v4903_address0 = zext_ln5956_2_fu_437_p1;
assign v4903_ce0 = v4903_ce0_local;
assign v4903_d0 = v13690_7_q0;
assign v4903_we0 = v4903_we0_local;
assign zext_ln5956_1_fu_376_p1 = lshr_ln_fu_366_p4;
assign zext_ln5956_2_fu_437_p1 = lshr_ln_reg_459;
assign zext_ln5956_fu_362_p1 = ap_sig_allocacmp_v487793_load;
assign zext_ln5959_fu_392_p1 = add_ln5958_1_fu_386_p2;
assign zext_ln5961_fu_407_p1 = lshr_ln13_fu_397_p4;
endmodule 