module backprop_backprop_Pipeline_label_17 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v10_2_address0,v10_2_ce0,v10_2_we0,v10_2_d0,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_address0,v10_ce0,v10_we0,v10_d0,v19_address0,v19_ce0,v19_q0,v19_1_address0,v19_1_ce0,v19_1_q0,v108,v108_1,v108_2,grp_fu_4982_p_din0,grp_fu_4982_p_din1,grp_fu_4982_p_dout0,grp_fu_4982_p_ce,grp_fu_4986_p_din0,grp_fu_4986_p_din1,grp_fu_4986_p_dout0,grp_fu_4986_p_ce,grp_fu_4990_p_din0,grp_fu_4990_p_din1,grp_fu_4990_p_dout0,grp_fu_4990_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v10_2_address0;
output   v10_2_ce0;
output   v10_2_we0;
output  [63:0] v10_2_d0;
output  [5:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [63:0] v10_1_d0;
output  [5:0] v10_address0;
output   v10_ce0;
output   v10_we0;
output  [63:0] v10_d0;
output  [4:0] v19_address0;
output   v19_ce0;
input  [63:0] v19_q0;
output  [4:0] v19_1_address0;
output   v19_1_ce0;
input  [63:0] v19_1_q0;
input  [63:0] v108;
input  [63:0] v108_1;
input  [63:0] v108_2;
output  [63:0] grp_fu_4982_p_din0;
output  [63:0] grp_fu_4982_p_din1;
input  [63:0] grp_fu_4982_p_dout0;
output   grp_fu_4982_p_ce;
output  [63:0] grp_fu_4986_p_din0;
output  [63:0] grp_fu_4986_p_din1;
input  [63:0] grp_fu_4986_p_dout0;
output   grp_fu_4986_p_ce;
output  [63:0] grp_fu_4990_p_din0;
output  [63:0] grp_fu_4990_p_din1;
input  [63:0] grp_fu_4990_p_dout0;
output   grp_fu_4990_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln177_fu_155_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v100_1_reg_227;
reg   [6:0] v100_1_reg_227_pp0_iter1_reg;
reg   [6:0] v100_1_reg_227_pp0_iter2_reg;
reg   [6:0] v100_1_reg_227_pp0_iter3_reg;
reg   [6:0] v100_1_reg_227_pp0_iter4_reg;
reg   [6:0] v100_1_reg_227_pp0_iter5_reg;
reg   [6:0] v100_1_reg_227_pp0_iter6_reg;
reg   [6:0] v100_1_reg_227_pp0_iter7_reg;
reg   [6:0] v100_1_reg_227_pp0_iter8_reg;
wire   [63:0] v101_fu_191_p3;
reg   [63:0] v101_reg_247;
reg   [63:0] v109_reg_254;
reg   [63:0] v109_1_reg_259;
reg   [63:0] v109_2_reg_264;
wire   [63:0] zext_ln177_1_fu_177_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln177_fu_199_p1;
reg   [6:0] v100_fu_48;
wire   [6:0] add_ln177_fu_161_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v100_1;
reg    v19_ce0_local;
reg    v19_1_ce0_local;
reg    v10_we0_local;
reg    v10_ce0_local;
reg    v10_1_we0_local;
reg    v10_1_ce0_local;
reg    v10_2_we0_local;
reg    v10_2_ce0_local;
wire   [4:0] lshr_ln_fu_167_p4;
wire   [0:0] trunc_ln177_fu_188_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
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
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 v100_fu_48 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln177_fu_155_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v100_fu_48 <= add_ln177_fu_161_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v100_fu_48 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v100_1_reg_227 <= ap_sig_allocacmp_v100_1;
        v100_1_reg_227_pp0_iter1_reg <= v100_1_reg_227;
        v101_reg_247 <= v101_fu_191_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        v100_1_reg_227_pp0_iter2_reg <= v100_1_reg_227_pp0_iter1_reg;
        v100_1_reg_227_pp0_iter3_reg <= v100_1_reg_227_pp0_iter2_reg;
        v100_1_reg_227_pp0_iter4_reg <= v100_1_reg_227_pp0_iter3_reg;
        v100_1_reg_227_pp0_iter5_reg <= v100_1_reg_227_pp0_iter4_reg;
        v100_1_reg_227_pp0_iter6_reg <= v100_1_reg_227_pp0_iter5_reg;
        v100_1_reg_227_pp0_iter7_reg <= v100_1_reg_227_pp0_iter6_reg;
        v100_1_reg_227_pp0_iter8_reg <= v100_1_reg_227_pp0_iter7_reg;
        v109_1_reg_259 <= grp_fu_4986_p_dout0;
        v109_2_reg_264 <= grp_fu_4990_p_dout0;
        v109_reg_254 <= grp_fu_4982_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln177_fu_155_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v100_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v100_1 = v100_fu_48;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v10_1_we0_local = 1'b1;
    end else begin
        v10_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v10_2_ce0_local = 1'b1;
    end else begin
        v10_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v10_2_we0_local = 1'b1;
    end else begin
        v10_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v10_ce0_local = 1'b1;
    end else begin
        v10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v10_we0_local = 1'b1;
    end else begin
        v10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
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
assign add_ln177_fu_161_p2 = (ap_sig_allocacmp_v100_1 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_4982_p_ce = 1'b1;
assign grp_fu_4982_p_din0 = v101_reg_247;
assign grp_fu_4982_p_din1 = v108;
assign grp_fu_4986_p_ce = 1'b1;
assign grp_fu_4986_p_din0 = v101_reg_247;
assign grp_fu_4986_p_din1 = v108_1;
assign grp_fu_4990_p_ce = 1'b1;
assign grp_fu_4990_p_din0 = v101_reg_247;
assign grp_fu_4990_p_din1 = v108_2;
assign icmp_ln177_fu_155_p2 = ((ap_sig_allocacmp_v100_1 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln_fu_167_p4 = {{ap_sig_allocacmp_v100_1[5:1]}};
assign trunc_ln177_fu_188_p1 = v100_1_reg_227[0:0];
assign v101_fu_191_p3 = ((trunc_ln177_fu_188_p1[0:0] == 1'b1) ? v19_1_q0 : v19_q0);
assign v10_1_address0 = zext_ln177_fu_199_p1;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_d0 = v109_1_reg_259;
assign v10_1_we0 = v10_1_we0_local;
assign v10_2_address0 = zext_ln177_fu_199_p1;
assign v10_2_ce0 = v10_2_ce0_local;
assign v10_2_d0 = v109_2_reg_264;
assign v10_2_we0 = v10_2_we0_local;
assign v10_address0 = zext_ln177_fu_199_p1;
assign v10_ce0 = v10_ce0_local;
assign v10_d0 = v109_reg_254;
assign v10_we0 = v10_we0_local;
assign v19_1_address0 = zext_ln177_1_fu_177_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_address0 = zext_ln177_1_fu_177_p1;
assign v19_ce0 = v19_ce0_local;
assign zext_ln177_1_fu_177_p1 = lshr_ln_fu_167_p4;
assign zext_ln177_fu_199_p1 = v100_1_reg_227_pp0_iter8_reg;
endmodule 