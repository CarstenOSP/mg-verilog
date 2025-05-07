module forward_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v5917_address0,v5917_ce0,v5917_q0,rem4,urem_ln6849_cast,urem_ln6848_cast,v15503_address0,v15503_ce0,v15503_we0,v15503_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v5917_address0;
output   v5917_ce0;
input  [7:0] v5917_q0;
input  [9:0] rem4;
input  [2:0] urem_ln6849_cast;
input  [2:0] urem_ln6848_cast;
output  [15:0] v15503_address0;
output   v15503_ce0;
output   v15503_we0;
output  [7:0] v15503_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln6743_fu_172_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [15:0] urem_ln6848_cast_cast_fu_111_p1;
reg   [15:0] urem_ln6848_cast_cast_reg_216;
wire    ap_block_pp0_stage0_11001;
wire   [12:0] add_ln6746_1_fu_160_p2;
reg   [12:0] add_ln6746_1_reg_226;
wire   [63:0] zext_ln6743_1_fu_131_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln6746_2_fu_204_p1;
reg   [4:0] v585912_fu_62;
wire   [4:0] v5859_fu_166_p2;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_v585912_load;
reg    v5917_ce0_local;
reg    v15503_we0_local;
reg    v15503_ce0_local;
wire   [9:0] zext_ln6743_fu_127_p1;
wire   [9:0] add_ln6746_fu_136_p2;
wire   [12:0] p_shl9_fu_146_p3;
wire   [12:0] zext_ln6746_fu_142_p1;
wire   [12:0] sub_ln6746_fu_154_p2;
wire   [12:0] urem_ln6849_cast_cast_fu_115_p1;
wire   [15:0] p_shl_fu_186_p3;
wire   [15:0] zext_ln6746_1_fu_183_p1;
wire   [15:0] sub_ln6746_1_fu_193_p2;
wire   [15:0] add_ln6746_2_fu_199_p2;
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
#0 v585912_fu_62 = 5'd0;
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
            v585912_fu_62 <= v5859_fu_166_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v585912_fu_62 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6746_1_reg_226 <= add_ln6746_1_fu_160_p2;
        urem_ln6848_cast_cast_reg_216[2 : 0] <= urem_ln6848_cast_cast_fu_111_p1[2 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln6743_fu_172_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v585912_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v585912_load = v585912_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15503_ce0_local = 1'b1;
    end else begin
        v15503_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15503_we0_local = 1'b1;
    end else begin
        v15503_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5917_ce0_local = 1'b1;
    end else begin
        v5917_ce0_local = 1'b0;
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
assign add_ln6746_1_fu_160_p2 = (sub_ln6746_fu_154_p2 + urem_ln6849_cast_cast_fu_115_p1);
assign add_ln6746_2_fu_199_p2 = (sub_ln6746_1_fu_193_p2 + urem_ln6848_cast_cast_reg_216);
assign add_ln6746_fu_136_p2 = (rem4 + zext_ln6743_fu_127_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln6743_fu_172_p2 = ((ap_sig_allocacmp_v585912_load == 5'd31) ? 1'b1 : 1'b0);
assign p_shl9_fu_146_p3 = {{add_ln6746_fu_136_p2}, {3'd0}};
assign p_shl_fu_186_p3 = {{add_ln6746_1_reg_226}, {3'd0}};
assign sub_ln6746_1_fu_193_p2 = (p_shl_fu_186_p3 - zext_ln6746_1_fu_183_p1);
assign sub_ln6746_fu_154_p2 = (p_shl9_fu_146_p3 - zext_ln6746_fu_142_p1);
assign urem_ln6848_cast_cast_fu_111_p1 = urem_ln6848_cast;
assign urem_ln6849_cast_cast_fu_115_p1 = urem_ln6849_cast;
assign v15503_address0 = zext_ln6746_2_fu_204_p1;
assign v15503_ce0 = v15503_ce0_local;
assign v15503_d0 = v5917_q0;
assign v15503_we0 = v15503_we0_local;
assign v5859_fu_166_p2 = (ap_sig_allocacmp_v585912_load + 5'd1);
assign v5917_address0 = zext_ln6743_1_fu_131_p1;
assign v5917_ce0 = v5917_ce0_local;
assign zext_ln6743_1_fu_131_p1 = ap_sig_allocacmp_v585912_load;
assign zext_ln6743_fu_127_p1 = ap_sig_allocacmp_v585912_load;
assign zext_ln6746_1_fu_183_p1 = add_ln6746_1_reg_226;
assign zext_ln6746_2_fu_204_p1 = add_ln6746_2_fu_199_p2;
assign zext_ln6746_fu_142_p1 = add_ln6746_fu_136_p2;
always @ (posedge ap_clk) begin
    urem_ln6848_cast_cast_reg_216[15:3] <= 13'b0000000000000;
end
endmodule 