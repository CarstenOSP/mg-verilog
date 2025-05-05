module forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_Pipeline_VITIS_LOOP (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul5_i,v13747_0_address0,v13747_0_ce0,v13747_0_q0,v13747_1_address0,v13747_1_ce0,v13747_1_q0,v87_1_address0,v87_1_ce0,v87_1_we0,v87_1_d0,v87_address0,v87_ce0,v87_we0,v87_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [10:0] mul5_i;
output  [9:0] v13747_0_address0;
output   v13747_0_ce0;
input  [7:0] v13747_0_q0;
output  [9:0] v13747_1_address0;
output   v13747_1_ce0;
input  [7:0] v13747_1_q0;
output  [3:0] v87_1_address0;
output   v87_1_ce0;
output   v87_1_we0;
output  [7:0] v87_1_d0;
output  [3:0] v87_address0;
output   v87_ce0;
output   v87_we0;
output  [7:0] v87_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln163_fu_176_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [3:0] lshr_ln_reg_199;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln166_fu_164_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln163_1_fu_187_p1;
reg   [4:0] v5921_fu_62;
wire   [4:0] v59_fu_170_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_v5921_load;
reg    v13747_0_ce0_local;
reg    v13747_1_ce0_local;
reg    v87_1_we0_local;
reg    v87_1_ce0_local;
reg    v87_we0_local;
reg    v87_ce0_local;
wire   [10:0] zext_ln163_fu_134_p1;
wire   [10:0] add_ln165_fu_148_p2;
wire   [9:0] lshr_ln33_fu_154_p4;
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
#0 v5921_fu_62 = 5'd0;
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
            v5921_fu_62 <= v59_fu_170_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v5921_fu_62 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_199 <= {{ap_sig_allocacmp_v5921_load[4:1]}};
    end
end
always @ (*) begin
    if (((icmp_ln163_fu_176_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v5921_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v5921_load = v5921_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13747_0_ce0_local = 1'b1;
    end else begin
        v13747_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v13747_1_ce0_local = 1'b1;
    end else begin
        v13747_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v87_1_ce0_local = 1'b1;
    end else begin
        v87_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v87_1_we0_local = 1'b1;
    end else begin
        v87_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v87_ce0_local = 1'b1;
    end else begin
        v87_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v87_we0_local = 1'b1;
    end else begin
        v87_we0_local = 1'b0;
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
assign add_ln165_fu_148_p2 = (mul5_i + zext_ln163_fu_134_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln163_fu_176_p2 = ((v59_fu_170_p2 == 5'd30) ? 1'b1 : 1'b0);
assign lshr_ln33_fu_154_p4 = {{add_ln165_fu_148_p2[10:1]}};
assign v13747_0_address0 = zext_ln166_fu_164_p1;
assign v13747_0_ce0 = v13747_0_ce0_local;
assign v13747_1_address0 = zext_ln166_fu_164_p1;
assign v13747_1_ce0 = v13747_1_ce0_local;
assign v59_fu_170_p2 = (ap_sig_allocacmp_v5921_load + 5'd2);
assign v87_1_address0 = zext_ln163_1_fu_187_p1;
assign v87_1_ce0 = v87_1_ce0_local;
assign v87_1_d0 = v13747_0_q0;
assign v87_1_we0 = v87_1_we0_local;
assign v87_address0 = zext_ln163_1_fu_187_p1;
assign v87_ce0 = v87_ce0_local;
assign v87_d0 = v13747_1_q0;
assign v87_we0 = v87_we0_local;
assign zext_ln163_1_fu_187_p1 = lshr_ln_reg_199;
assign zext_ln163_fu_134_p1 = ap_sig_allocacmp_v5921_load;
assign zext_ln166_fu_164_p1 = lshr_ln33_fu_154_p4;
endmodule 