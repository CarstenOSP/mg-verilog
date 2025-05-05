module SgdLR_sw_SgdLR_sw_Pipeline_label_38 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,tmp_14,v0_address0,v0_ce0,v0_q0,v22_3,grp_fu_787_p_din0,grp_fu_787_p_din1,grp_fu_787_p_dout0,grp_fu_787_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [8:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
input  [22:0] tmp_14;
output  [22:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
input  [31:0] v22_3;
output  [31:0] grp_fu_787_p_din0;
output  [31:0] grp_fu_787_p_din1;
input  [31:0] grp_fu_787_p_dout0;
output   grp_fu_787_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln47_fu_119_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] trunc_ln47_fu_135_p1;
reg   [8:0] trunc_ln47_reg_196;
reg   [8:0] trunc_ln47_reg_196_pp0_iter1_reg;
reg   [8:0] trunc_ln47_reg_196_pp0_iter2_reg;
reg   [8:0] trunc_ln47_reg_196_pp0_iter3_reg;
reg   [8:0] trunc_ln47_reg_196_pp0_iter4_reg;
reg   [8:0] trunc_ln47_reg_196_pp0_iter5_reg;
wire   [0:0] icmp_ln53_fu_160_p2;
reg   [0:0] icmp_ln53_reg_206;
reg   [0:0] icmp_ln53_reg_206_pp0_iter1_reg;
reg   [0:0] icmp_ln53_reg_206_pp0_iter2_reg;
reg   [0:0] icmp_ln53_reg_206_pp0_iter3_reg;
reg   [0:0] icmp_ln53_reg_206_pp0_iter4_reg;
reg   [0:0] icmp_ln53_reg_206_pp0_iter5_reg;
reg   [31:0] v0_load_reg_210;
wire   [31:0] v23_fu_171_p1;
reg   [31:0] v24_reg_220;
wire   [63:0] zext_ln51_fu_145_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln48_fu_175_p1;
reg   [10:0] v19_fu_52;
wire   [10:0] add_ln47_fu_125_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_1;
reg    v0_ce0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
wire   [22:0] zext_ln47_fu_131_p1;
wire   [22:0] add_ln51_fu_139_p2;
wire   [1:0] tmp_fu_150_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
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
#0 v19_fu_52 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln47_fu_119_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v19_fu_52 <= add_ln47_fu_125_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v19_fu_52 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln53_reg_206 <= icmp_ln53_fu_160_p2;
        icmp_ln53_reg_206_pp0_iter1_reg <= icmp_ln53_reg_206;
        trunc_ln47_reg_196 <= trunc_ln47_fu_135_p1;
        trunc_ln47_reg_196_pp0_iter1_reg <= trunc_ln47_reg_196;
        v0_load_reg_210 <= v0_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        icmp_ln53_reg_206_pp0_iter2_reg <= icmp_ln53_reg_206_pp0_iter1_reg;
        icmp_ln53_reg_206_pp0_iter3_reg <= icmp_ln53_reg_206_pp0_iter2_reg;
        icmp_ln53_reg_206_pp0_iter4_reg <= icmp_ln53_reg_206_pp0_iter3_reg;
        icmp_ln53_reg_206_pp0_iter5_reg <= icmp_ln53_reg_206_pp0_iter4_reg;
        trunc_ln47_reg_196_pp0_iter2_reg <= trunc_ln47_reg_196_pp0_iter1_reg;
        trunc_ln47_reg_196_pp0_iter3_reg <= trunc_ln47_reg_196_pp0_iter2_reg;
        trunc_ln47_reg_196_pp0_iter4_reg <= trunc_ln47_reg_196_pp0_iter3_reg;
        trunc_ln47_reg_196_pp0_iter5_reg <= trunc_ln47_reg_196_pp0_iter4_reg;
        v24_reg_220 <= grp_fu_787_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln47_fu_119_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v19_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_1 = v19_fu_52;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_206_pp0_iter5_reg == 1'd0))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_206_pp0_iter5_reg == 1'd1))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
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
assign add_ln47_fu_125_p2 = (ap_sig_allocacmp_v19_1 + 11'd1);
assign add_ln51_fu_139_p2 = (zext_ln47_fu_131_p1 + tmp_14);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_787_p_ce = 1'b1;
assign grp_fu_787_p_din0 = v22_3;
assign grp_fu_787_p_din1 = v23_fu_171_p1;
assign icmp_ln47_fu_119_p2 = ((ap_sig_allocacmp_v19_1 == 11'd1024) ? 1'b1 : 1'b0);
assign icmp_ln53_fu_160_p2 = ((tmp_fu_150_p4 == 2'd0) ? 1'b1 : 1'b0);
assign tmp_fu_150_p4 = {{ap_sig_allocacmp_v19_1[10:9]}};
assign trunc_ln47_fu_135_p1 = ap_sig_allocacmp_v19_1[8:0];
assign v0_address0 = zext_ln51_fu_145_p1;
assign v0_ce0 = v0_ce0_local;
assign v23_fu_171_p1 = v0_load_reg_210;
assign v3_1_address0 = zext_ln48_fu_175_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = v24_reg_220;
assign v3_1_we0 = v3_1_we0_local;
assign v3_address0 = zext_ln48_fu_175_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = v24_reg_220;
assign v3_we0 = v3_we0_local;
assign zext_ln47_fu_131_p1 = ap_sig_allocacmp_v19_1;
assign zext_ln48_fu_175_p1 = trunc_ln47_reg_196_pp0_iter5_reg;
assign zext_ln51_fu_145_p1 = add_ln51_fu_139_p2;
endmodule 