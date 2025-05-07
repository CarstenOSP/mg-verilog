module forward_dataflow_in_loop_VITIS_LOOP_512_1_Loop_VITIS_LOOP_479_1_proc61 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v243_address0,v243_ce0,v243_we0,v243_d0,v243_1_address0,v243_1_ce0,v243_1_we0,v243_1_d0,v236,v9038_0_address0,v9038_0_ce0,v9038_0_q0,v9038_1_address0,v9038_1_ce0,v9038_1_q0,ap_return); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [3:0] v243_address0;
output   v243_ce0;
output   v243_we0;
output  [7:0] v243_d0;
output  [3:0] v243_1_address0;
output   v243_1_ce0;
output   v243_1_we0;
output  [7:0] v243_1_d0;
input  [13:0] v236;
output  [10:0] v9038_0_address0;
output   v9038_0_ce0;
input  [7:0] v9038_0_q0;
output  [10:0] v9038_1_address0;
output   v9038_1_ce0;
input  [7:0] v9038_1_q0;
output  [13:0] ap_return;
reg ap_idle;
reg[13:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_230_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [13:0] v236_read_reg_255;
reg    ap_block_pp0_stage0_11001;
wire   [4:0] lshr_ln_i_fu_178_p4;
reg   [4:0] lshr_ln_i_reg_259;
wire   [63:0] zext_ln482_fu_204_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln484_fu_219_p1;
wire   [63:0] zext_ln479_2_fu_243_p1;
reg   [5:0] v22521_i_fu_76;
wire   [5:0] add_ln479_fu_224_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v22521_i_load;
reg    v9038_0_ce0_local;
reg    v9038_1_ce0_local;
reg    v243_1_we0_local;
reg    v243_1_ce0_local;
reg    v243_we0_local;
reg    v243_ce0_local;
wire   [6:0] tmp_i_fu_140_p4;
wire   [11:0] mul_i139_i_i_fu_150_p3;
wire   [11:0] zext_ln479_fu_174_p1;
wire   [10:0] trunc_ln_i_fu_158_p3;
wire   [10:0] zext_ln479_1_fu_188_p1;
wire   [10:0] add_ln481_1_fu_198_p2;
wire   [11:0] add_ln481_fu_192_p2;
wire   [10:0] lshr_ln16_i_fu_209_p4;
reg   [13:0] ap_return_preg;
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
#0 v22521_i_fu_76 = 6'd0;
#0 ap_return_preg = 14'd0;
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
        ap_return_preg <= 14'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_return_preg <= v236_read_reg_255;
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
        v22521_i_fu_76 <= add_ln479_fu_224_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_i_reg_259 <= {{ap_sig_allocacmp_v22521_i_load[5:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v236_read_reg_255 <= v236;
    end
end
always @ (*) begin
    if (((tmp_fu_230_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_return = v236_read_reg_255;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v22521_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v22521_i_load = v22521_i_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v243_1_ce0_local = 1'b1;
    end else begin
        v243_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v243_1_we0_local = 1'b1;
    end else begin
        v243_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v243_ce0_local = 1'b1;
    end else begin
        v243_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v243_we0_local = 1'b1;
    end else begin
        v243_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9038_0_ce0_local = 1'b1;
    end else begin
        v9038_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9038_1_ce0_local = 1'b1;
    end else begin
        v9038_1_ce0_local = 1'b0;
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
assign add_ln479_fu_224_p2 = (ap_sig_allocacmp_v22521_i_load + 6'd2);
assign add_ln481_1_fu_198_p2 = (trunc_ln_i_fu_158_p3 + zext_ln479_1_fu_188_p1);
assign add_ln481_fu_192_p2 = (mul_i139_i_i_fu_150_p3 + zext_ln479_fu_174_p1);
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
assign lshr_ln16_i_fu_209_p4 = {{add_ln481_fu_192_p2[11:1]}};
assign lshr_ln_i_fu_178_p4 = {{ap_sig_allocacmp_v22521_i_load[5:1]}};
assign mul_i139_i_i_fu_150_p3 = {{tmp_i_fu_140_p4}, {5'd0}};
assign tmp_fu_230_p3 = add_ln479_fu_224_p2[32'd5];
assign tmp_i_fu_140_p4 = {{v236[13:7]}};
assign trunc_ln_i_fu_158_p3 = {{tmp_i_fu_140_p4}, {4'd0}};
assign v243_1_address0 = zext_ln479_2_fu_243_p1;
assign v243_1_ce0 = v243_1_ce0_local;
assign v243_1_d0 = v9038_0_q0;
assign v243_1_we0 = v243_1_we0_local;
assign v243_address0 = zext_ln479_2_fu_243_p1;
assign v243_ce0 = v243_ce0_local;
assign v243_d0 = v9038_1_q0;
assign v243_we0 = v243_we0_local;
assign v9038_0_address0 = zext_ln482_fu_204_p1;
assign v9038_0_ce0 = v9038_0_ce0_local;
assign v9038_1_address0 = zext_ln484_fu_219_p1;
assign v9038_1_ce0 = v9038_1_ce0_local;
assign zext_ln479_1_fu_188_p1 = lshr_ln_i_fu_178_p4;
assign zext_ln479_2_fu_243_p1 = lshr_ln_i_reg_259;
assign zext_ln479_fu_174_p1 = ap_sig_allocacmp_v22521_i_load;
assign zext_ln482_fu_204_p1 = add_ln481_1_fu_198_p2;
assign zext_ln484_fu_219_p1 = lshr_ln16_i_fu_209_p4;
endmodule 