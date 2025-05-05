module forward_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v57_address0,v57_ce0,v57_we0,v57_d0,v57_1_address0,v57_1_ce0,v57_1_we0,v57_1_d0,v52_0,v15511_0_address0,v15511_0_ce0,v15511_0_q0,v15511_1_address0,v15511_1_ce0,v15511_1_q0,ap_return); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [3:0] v57_address0;
output   v57_ce0;
output   v57_we0;
output  [7:0] v57_d0;
output  [3:0] v57_1_address0;
output   v57_1_ce0;
output   v57_1_we0;
output  [7:0] v57_1_d0;
input  [10:0] v52_0;
output  [8:0] v15511_0_address0;
output   v15511_0_ce0;
input  [7:0] v15511_0_q0;
output  [8:0] v15511_1_address0;
output   v15511_1_ce0;
input  [7:0] v15511_1_q0;
output  [10:0] ap_return;
reg ap_idle;
reg[10:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_218_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [10:0] v52_0_read_reg_243;
reg    ap_block_pp0_stage0_11001;
wire   [4:0] lshr_ln_fu_166_p4;
reg   [4:0] lshr_ln_reg_247;
wire   [63:0] zext_ln122_fu_192_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln124_fu_207_p1;
wire   [63:0] zext_ln119_2_fu_231_p1;
reg   [5:0] v4321_fu_70;
wire   [5:0] v43_fu_212_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v4321_load;
reg    v15511_0_ce0_local;
reg    v15511_1_ce0_local;
reg    v57_1_we0_local;
reg    v57_1_ce0_local;
reg    v57_we0_local;
reg    v57_ce0_local;
wire   [4:0] empty_fu_134_p1;
wire   [9:0] mul_i_fu_138_p3;
wire   [9:0] zext_ln119_fu_162_p1;
wire   [8:0] shl_ln_fu_146_p3;
wire   [8:0] zext_ln119_1_fu_176_p1;
wire   [8:0] add_ln121_1_fu_186_p2;
wire   [9:0] add_ln121_fu_180_p2;
wire   [8:0] lshr_ln58_fu_197_p4;
reg   [10:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_84;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 v4321_fu_70 = 6'd0;
#0 ap_return_preg = 11'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
        ap_return_preg <= 11'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_return_preg <= v52_0_read_reg_243;
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
    if ((1'b1 == ap_condition_84)) begin
        v4321_fu_70 <= v43_fu_212_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_247 <= {{ap_sig_allocacmp_v4321_load[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v52_0_read_reg_243 <= v52_0;
    end
end
always @ (*) begin
    if (((tmp_fu_218_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_return = v52_0_read_reg_243;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v4321_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v4321_load = v4321_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15511_0_ce0_local = 1'b1;
    end else begin
        v15511_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15511_1_ce0_local = 1'b1;
    end else begin
        v15511_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_1_ce0_local = 1'b1;
    end else begin
        v57_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_1_we0_local = 1'b1;
    end else begin
        v57_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_ce0_local = 1'b1;
    end else begin
        v57_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v57_we0_local = 1'b1;
    end else begin
        v57_we0_local = 1'b0;
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
assign add_ln121_1_fu_186_p2 = (shl_ln_fu_146_p3 + zext_ln119_1_fu_176_p1);
assign add_ln121_fu_180_p2 = (mul_i_fu_138_p3 + zext_ln119_fu_162_p1);
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
    ap_condition_84 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_134_p1 = v52_0[4:0];
assign lshr_ln58_fu_197_p4 = {{add_ln121_fu_180_p2[9:1]}};
assign lshr_ln_fu_166_p4 = {{ap_sig_allocacmp_v4321_load[5:1]}};
assign mul_i_fu_138_p3 = {{empty_fu_134_p1}, {5'd0}};
assign shl_ln_fu_146_p3 = {{empty_fu_134_p1}, {4'd0}};
assign tmp_fu_218_p3 = v43_fu_212_p2[32'd5];
assign v15511_0_address0 = zext_ln122_fu_192_p1;
assign v15511_0_ce0 = v15511_0_ce0_local;
assign v15511_1_address0 = zext_ln124_fu_207_p1;
assign v15511_1_ce0 = v15511_1_ce0_local;
assign v43_fu_212_p2 = (ap_sig_allocacmp_v4321_load + 6'd2);
assign v57_1_address0 = zext_ln119_2_fu_231_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_1_d0 = v15511_0_q0;
assign v57_1_we0 = v57_1_we0_local;
assign v57_address0 = zext_ln119_2_fu_231_p1;
assign v57_ce0 = v57_ce0_local;
assign v57_d0 = v15511_1_q0;
assign v57_we0 = v57_we0_local;
assign zext_ln119_1_fu_176_p1 = lshr_ln_fu_166_p4;
assign zext_ln119_2_fu_231_p1 = lshr_ln_reg_247;
assign zext_ln119_fu_162_p1 = ap_sig_allocacmp_v4321_load;
assign zext_ln122_fu_192_p1 = add_ln121_1_fu_186_p2;
assign zext_ln124_fu_207_p1 = lshr_ln58_fu_197_p4;
endmodule 