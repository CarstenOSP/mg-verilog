
module backprop_backprop_Pipeline_label_21_label_22 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v20_address0,v20_ce0,v20_q0,v8_address0,v8_ce0,v8_q0,v11_address0,v11_ce0,v11_we0,v11_d0,grp_fu_2661_p_din0,grp_fu_2661_p_din1,grp_fu_2661_p_dout0,grp_fu_2661_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v20_address0;
output   v20_ce0;
input  [63:0] v20_q0;
output  [5:0] v8_address0;
output   v8_ce0;
input  [63:0] v8_q0;
output  [11:0] v11_address0;
output   v11_ce0;
output   v11_we0;
output  [63:0] v11_d0;
output  [63:0] grp_fu_2661_p_din0;
output  [63:0] grp_fu_2661_p_din1;
input  [63:0] grp_fu_2661_p_dout0;
output   grp_fu_2661_p_ce;
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
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln210_fu_115_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [11:0] add_ln215_fu_192_p2;
reg   [11:0] add_ln215_reg_253;
reg   [11:0] add_ln215_reg_253_pp0_iter2_reg;
reg   [11:0] add_ln215_reg_253_pp0_iter3_reg;
reg   [11:0] add_ln215_reg_253_pp0_iter4_reg;
reg   [11:0] add_ln215_reg_253_pp0_iter5_reg;
reg   [11:0] add_ln215_reg_253_pp0_iter6_reg;
reg   [11:0] add_ln215_reg_253_pp0_iter7_reg;
reg   [11:0] add_ln215_reg_253_pp0_iter8_reg;
reg   [11:0] add_ln215_reg_253_pp0_iter9_reg;
reg   [63:0] v126_reg_258;
reg   [63:0] v128_reg_263;
reg   [63:0] v129_reg_268;
wire   [63:0] zext_ln210_fu_166_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln212_fu_183_p1;
wire   [63:0] zext_ln215_fu_214_p1;
reg   [6:0] v127_fu_42;
wire   [6:0] add_ln212_fu_198_p2;
wire    ap_loop_init;
reg   [6:0] v125_fu_46;
wire   [6:0] select_ln210_1_fu_158_p3;
reg   [12:0] indvar_flatten_fu_50;
wire   [12:0] add_ln210_fu_121_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v20_ce0_local;
reg    v8_ce0_local;
reg    v11_we0_local;
reg    v11_ce0_local;
wire   [0:0] icmp_ln212_fu_138_p2;
wire   [6:0] add_ln210_1_fu_152_p2;
wire   [5:0] empty_fu_171_p1;
wire   [6:0] select_ln210_fu_144_p3;
wire   [11:0] zext_ln212_1_fu_188_p1;
wire   [11:0] tmp_4_fu_175_p3;
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
reg    ap_loop_exit_ready_pp0_iter9_reg;
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
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 v127_fu_42 = 7'd0;
#0 v125_fu_46 = 7'd0;
#0 indvar_flatten_fu_50 = 13'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
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
        if (((icmp_ln210_fu_115_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_50 <= add_ln210_fu_121_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_50 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v125_fu_46 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v125_fu_46 <= select_ln210_1_fu_158_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v127_fu_42 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v127_fu_42 <= add_ln212_fu_198_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln215_reg_253 <= add_ln215_fu_192_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln215_reg_253_pp0_iter2_reg <= add_ln215_reg_253;
        add_ln215_reg_253_pp0_iter3_reg <= add_ln215_reg_253_pp0_iter2_reg;
        add_ln215_reg_253_pp0_iter4_reg <= add_ln215_reg_253_pp0_iter3_reg;
        add_ln215_reg_253_pp0_iter5_reg <= add_ln215_reg_253_pp0_iter4_reg;
        add_ln215_reg_253_pp0_iter6_reg <= add_ln215_reg_253_pp0_iter5_reg;
        add_ln215_reg_253_pp0_iter7_reg <= add_ln215_reg_253_pp0_iter6_reg;
        add_ln215_reg_253_pp0_iter8_reg <= add_ln215_reg_253_pp0_iter7_reg;
        add_ln215_reg_253_pp0_iter9_reg <= add_ln215_reg_253_pp0_iter8_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        v126_reg_258 <= v20_q0;
        v128_reg_263 <= v8_q0;
        v129_reg_268 <= grp_fu_2661_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln210_fu_115_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_50;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_ce0_local = 1'b1;
    end else begin
        v11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_we0_local = 1'b1;
    end else begin
        v11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_ce0_local = 1'b1;
    end else begin
        v8_ce0_local = 1'b0;
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
assign add_ln210_1_fu_152_p2 = (v125_fu_46 + 7'd1);
assign add_ln210_fu_121_p2 = (ap_sig_allocacmp_indvar_flatten_load + 13'd1);
assign add_ln212_fu_198_p2 = (select_ln210_fu_144_p3 + 7'd1);
assign add_ln215_fu_192_p2 = (zext_ln212_1_fu_188_p1 + tmp_4_fu_175_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_171_p1 = select_ln210_1_fu_158_p3[5:0];
assign grp_fu_2661_p_ce = 1'b1;
assign grp_fu_2661_p_din0 = v126_reg_258;
assign grp_fu_2661_p_din1 = v128_reg_263;
assign icmp_ln210_fu_115_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln212_fu_138_p2 = ((v127_fu_42 == 7'd64) ? 1'b1 : 1'b0);
assign select_ln210_1_fu_158_p3 = ((icmp_ln212_fu_138_p2[0:0] == 1'b1) ? add_ln210_1_fu_152_p2 : v125_fu_46);
assign select_ln210_fu_144_p3 = ((icmp_ln212_fu_138_p2[0:0] == 1'b1) ? 7'd0 : v127_fu_42);
assign tmp_4_fu_175_p3 = {{empty_fu_171_p1}, {6'd0}};
assign v11_address0 = zext_ln215_fu_214_p1;
assign v11_ce0 = v11_ce0_local;
assign v11_d0 = v129_reg_268;
assign v11_we0 = v11_we0_local;
assign v20_address0 = zext_ln210_fu_166_p1;
assign v20_ce0 = v20_ce0_local;
assign v8_address0 = zext_ln212_fu_183_p1;
assign v8_ce0 = v8_ce0_local;
assign zext_ln210_fu_166_p1 = select_ln210_1_fu_158_p3;
assign zext_ln212_1_fu_188_p1 = select_ln210_fu_144_p3;
assign zext_ln212_fu_183_p1 = select_ln210_fu_144_p3;
assign zext_ln215_fu_214_p1 = add_ln215_reg_253_pp0_iter9_reg;
endmodule 
