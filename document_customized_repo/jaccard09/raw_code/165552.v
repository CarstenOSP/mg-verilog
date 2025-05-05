module forward_dataflow_in_loop_VITIS_LOOP_147_1_Loop_VITIS_LOOP_121_1_proc_Pipeline_VITIS_LOOP (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,tmp_439,v16220_0_address0,v16220_0_ce0,v16220_0_q0,v16220_1_address0,v16220_1_ce0,v16220_1_q0,v57_1_address0,v57_1_ce0,v57_1_we0,v57_1_d0,v57_address0,v57_ce0,v57_we0,v57_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [10:0] mul_i;
input  [9:0] tmp_439;
output  [9:0] v16220_0_address0;
output   v16220_0_ce0;
input  [7:0] v16220_0_q0;
output  [9:0] v16220_1_address0;
output   v16220_1_ce0;
input  [7:0] v16220_1_q0;
output  [3:0] v57_1_address0;
output   v57_1_ce0;
output   v57_1_we0;
output  [7:0] v57_1_d0;
output  [3:0] v57_address0;
output   v57_ce0;
output   v57_we0;
output  [7:0] v57_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_200_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [4:0] lshr_ln_fu_148_p4;
reg   [4:0] lshr_ln_reg_225;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln124_fu_174_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln126_fu_189_p1;
wire   [63:0] zext_ln121_2_fu_213_p1;
reg   [5:0] v4321_fu_66;
wire   [5:0] v43_fu_194_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_v4321_load;
reg    v16220_0_ce0_local;
reg    v16220_1_ce0_local;
reg    v57_1_we0_local;
reg    v57_1_ce0_local;
reg    v57_we0_local;
reg    v57_ce0_local;
wire   [10:0] zext_ln121_fu_144_p1;
wire   [9:0] zext_ln121_1_fu_158_p1;
wire   [9:0] add_ln123_1_fu_168_p2;
wire   [10:0] add_ln123_fu_162_p2;
wire   [9:0] lshr_ln63_fu_179_p4;
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
#0 v4321_fu_66 = 6'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v4321_fu_66 <= v43_fu_194_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v4321_fu_66 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_225 <= {{ap_sig_allocacmp_v4321_load[5:1]}};
    end
end
always @ (*) begin
    if (((tmp_fu_200_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v4321_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v4321_load = v4321_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16220_0_ce0_local = 1'b1;
    end else begin
        v16220_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16220_1_ce0_local = 1'b1;
    end else begin
        v16220_1_ce0_local = 1'b0;
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
assign add_ln123_1_fu_168_p2 = (tmp_439 + zext_ln121_1_fu_158_p1);
assign add_ln123_fu_162_p2 = (mul_i + zext_ln121_fu_144_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign lshr_ln63_fu_179_p4 = {{add_ln123_fu_162_p2[10:1]}};
assign lshr_ln_fu_148_p4 = {{ap_sig_allocacmp_v4321_load[5:1]}};
assign tmp_fu_200_p3 = v43_fu_194_p2[32'd5];
assign v16220_0_address0 = zext_ln124_fu_174_p1;
assign v16220_0_ce0 = v16220_0_ce0_local;
assign v16220_1_address0 = zext_ln126_fu_189_p1;
assign v16220_1_ce0 = v16220_1_ce0_local;
assign v43_fu_194_p2 = (ap_sig_allocacmp_v4321_load + 6'd2);
assign v57_1_address0 = zext_ln121_2_fu_213_p1;
assign v57_1_ce0 = v57_1_ce0_local;
assign v57_1_d0 = v16220_0_q0;
assign v57_1_we0 = v57_1_we0_local;
assign v57_address0 = zext_ln121_2_fu_213_p1;
assign v57_ce0 = v57_ce0_local;
assign v57_d0 = v16220_1_q0;
assign v57_we0 = v57_we0_local;
assign zext_ln121_1_fu_158_p1 = lshr_ln_fu_148_p4;
assign zext_ln121_2_fu_213_p1 = lshr_ln_reg_225;
assign zext_ln121_fu_144_p1 = ap_sig_allocacmp_v4321_load;
assign zext_ln124_fu_174_p1 = add_ln123_1_fu_168_p2;
assign zext_ln126_fu_189_p1 = lshr_ln63_fu_179_p4;
endmodule 