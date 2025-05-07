module forward_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v5916_address0,v5916_ce0,v5916_q0,v5915_address0,v5915_ce0,v5915_q0,v5914_address0,v5914_ce0,v5914_q0,brmerge_i,v5917_address0,v5917_ce0,v5917_we0,v5917_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v5916_address0;
output   v5916_ce0;
input  [7:0] v5916_q0;
output  [4:0] v5915_address0;
output   v5915_ce0;
input  [7:0] v5915_q0;
output  [4:0] v5914_address0;
output   v5914_ce0;
input  [7:0] v5914_q0;
input  [0:0] brmerge_i;
output  [4:0] v5917_address0;
output   v5917_ce0;
output   v5917_we0;
output  [7:0] v5917_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6767_fu_130_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [0:0] brmerge_i_read_reg_178;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln6767_fu_118_p1;
reg   [63:0] zext_ln6767_reg_183;
reg   [63:0] zext_ln6767_reg_183_pp0_iter1_reg;
reg   [63:0] zext_ln6767_reg_183_pp0_iter2_reg;
reg   [63:0] zext_ln6767_reg_183_pp0_iter3_reg;
wire    ap_block_pp0_stage0;
reg   [4:0] v586721_fu_48;
wire   [4:0] v5867_fu_124_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_v586721_load;
reg    v5916_ce0_local;
reg    v5915_ce0_local;
reg    v5914_ce0_local;
reg    v5917_we0_local;
wire   [7:0] select_ln6780_fu_154_p3;
reg    v5917_ce0_local;
wire  signed [7:0] v5876_fu_141_p0;
wire   [7:0] grp_fu_161_p3;
wire   [0:0] v5876_fu_141_p2;
wire  signed [7:0] select_ln6780_fu_154_p1;
wire   [7:0] select_ln6780_1_fu_146_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
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
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 v586721_fu_48 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_mac_muladd_8s_8s_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 8 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_8s_8ns_8_4_1_U9413(.clk(ap_clk),.reset(ap_rst),.din0(v5915_q0),.din1(v5916_q0),.din2(v5914_q0),.ce(1'b1),.dout(grp_fu_161_p3));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v586721_fu_48 <= v5867_fu_124_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v586721_fu_48 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        zext_ln6767_reg_183[4 : 0] <= zext_ln6767_fu_118_p1[4 : 0];
        zext_ln6767_reg_183_pp0_iter1_reg[4 : 0] <= zext_ln6767_reg_183[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        zext_ln6767_reg_183_pp0_iter2_reg[4 : 0] <= zext_ln6767_reg_183_pp0_iter1_reg[4 : 0];
        zext_ln6767_reg_183_pp0_iter3_reg[4 : 0] <= zext_ln6767_reg_183_pp0_iter2_reg[4 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln6767_fu_130_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v586721_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v586721_load = v586721_fu_48;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v5914_ce0_local = 1'b1;
    end else begin
        v5914_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5915_ce0_local = 1'b1;
    end else begin
        v5915_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5916_ce0_local = 1'b1;
    end else begin
        v5916_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v5917_ce0_local = 1'b1;
    end else begin
        v5917_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v5917_we0_local = 1'b1;
    end else begin
        v5917_we0_local = 1'b0;
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
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign brmerge_i_read_reg_178 = brmerge_i;
assign icmp_ln6767_fu_130_p2 = ((ap_sig_allocacmp_v586721_load == 5'd31) ? 1'b1 : 1'b0);
assign select_ln6780_1_fu_146_p3 = ((v5876_fu_141_p2[0:0] == 1'b1) ? 8'd127 : 8'd126);
assign select_ln6780_fu_154_p1 = grp_fu_161_p3;
assign select_ln6780_fu_154_p3 = ((brmerge_i[0:0] == 1'b1) ? select_ln6780_fu_154_p1 : select_ln6780_1_fu_146_p3);
assign v5867_fu_124_p2 = (ap_sig_allocacmp_v586721_load + 5'd1);
assign v5876_fu_141_p0 = grp_fu_161_p3;
assign v5876_fu_141_p2 = ((v5876_fu_141_p0 == 8'd127) ? 1'b1 : 1'b0);
assign v5914_address0 = zext_ln6767_reg_183_pp0_iter1_reg;
assign v5914_ce0 = v5914_ce0_local;
assign v5915_address0 = zext_ln6767_fu_118_p1;
assign v5915_ce0 = v5915_ce0_local;
assign v5916_address0 = zext_ln6767_fu_118_p1;
assign v5916_ce0 = v5916_ce0_local;
assign v5917_address0 = zext_ln6767_reg_183_pp0_iter3_reg;
assign v5917_ce0 = v5917_ce0_local;
assign v5917_d0 = select_ln6780_fu_154_p3;
assign v5917_we0 = v5917_we0_local;
assign zext_ln6767_fu_118_p1 = ap_sig_allocacmp_v586721_load;
always @ (posedge ap_clk) begin
    zext_ln6767_reg_183[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln6767_reg_183_pp0_iter1_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln6767_reg_183_pp0_iter2_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    zext_ln6767_reg_183_pp0_iter3_reg[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
end
endmodule 