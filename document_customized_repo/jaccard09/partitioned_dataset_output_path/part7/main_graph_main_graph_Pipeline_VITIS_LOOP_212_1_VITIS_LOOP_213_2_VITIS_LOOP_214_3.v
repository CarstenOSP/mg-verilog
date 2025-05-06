
module main_graph_main_graph_Pipeline_VITIS_LOOP_212_1_VITIS_LOOP_213_2_VITIS_LOOP_214_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v57_address1,v57_ce1,v57_we1,v57_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] v57_address1;
output   v57_ce1;
output   v57_we1;
output  [7:0] v57_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln212_fu_128_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] select_ln212_1_fu_195_p3;
reg   [1:0] select_ln212_1_reg_375;
wire   [5:0] v60_mid2_fu_215_p3;
reg   [5:0] v60_mid2_reg_381;
wire   [5:0] select_ln213_fu_223_p3;
reg   [5:0] select_ln213_reg_386;
wire   [63:0] zext_ln215_2_fu_331_p1;
wire    ap_block_pp0_stage0;
reg   [5:0] v60_fu_62;
wire   [5:0] add_ln214_fu_231_p2;
wire    ap_loop_init;
reg   [5:0] v59_fu_66;
reg   [11:0] indvar_flatten_fu_70;
wire   [11:0] select_ln213_1_fu_243_p3;
reg   [1:0] v58_fu_74;
reg   [11:0] indvar_flatten12_fu_78;
wire   [11:0] add_ln212_1_fu_134_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten12_load;
reg    v57_we1_local;
reg    v57_ce1_local;
wire   [0:0] icmp_ln213_fu_163_p2;
wire   [0:0] icmp_ln214_fu_183_p2;
wire   [0:0] xor_ln212_fu_177_p2;
wire   [1:0] add_ln212_fu_157_p2;
wire   [5:0] select_ln212_fu_169_p3;
wire   [0:0] and_ln212_fu_189_p2;
wire   [0:0] empty_fu_209_p2;
wire   [5:0] add_ln213_fu_203_p2;
wire   [11:0] add_ln213_1_fu_237_p2;
wire   [7:0] mul_ln_fu_271_p6;
wire   [7:0] zext_ln215_fu_283_p1;
wire   [7:0] add_ln215_fu_286_p2;
wire   [6:0] trunc_ln215_fu_292_p1;
wire   [8:0] tmp_fu_304_p3;
wire   [11:0] p_shl_fu_296_p3;
wire   [11:0] zext_ln214_fu_312_p1;
wire   [11:0] add_ln214_1_fu_316_p2;
wire   [11:0] zext_ln215_1_fu_322_p1;
wire   [11:0] add_ln215_1_fu_325_p2;
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
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 v60_fu_62 = 6'd0;
#0 v59_fu_66 = 6'd0;
#0 indvar_flatten_fu_70 = 12'd0;
#0 v58_fu_74 = 2'd0;
#0 indvar_flatten12_fu_78 = 12'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln212_fu_128_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten12_fu_78 <= add_ln212_1_fu_134_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12_fu_78 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_70 <= 12'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten_fu_70 <= select_ln213_1_fu_243_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v58_fu_74 <= 2'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v58_fu_74 <= select_ln212_1_fu_195_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v59_fu_66 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v59_fu_66 <= select_ln213_fu_223_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v60_fu_62 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v60_fu_62 <= add_ln214_fu_231_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        select_ln212_1_reg_375 <= select_ln212_1_fu_195_p3;
        select_ln213_reg_386 <= select_ln213_fu_223_p3;
        v60_mid2_reg_381 <= v60_mid2_fu_215_p3;
    end
end
always @ (*) begin
    if (((icmp_ln212_fu_128_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten12_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12_load = indvar_flatten12_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v57_ce1_local = 1'b1;
    end else begin
        v57_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v57_we1_local = 1'b1;
    end else begin
        v57_we1_local = 1'b0;
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
assign add_ln212_1_fu_134_p2 = (ap_sig_allocacmp_indvar_flatten12_load + 12'd1);
assign add_ln212_fu_157_p2 = (v58_fu_74 + 2'd1);
assign add_ln213_1_fu_237_p2 = (indvar_flatten_fu_70 + 12'd1);
assign add_ln213_fu_203_p2 = (select_ln212_fu_169_p3 + 6'd1);
assign add_ln214_1_fu_316_p2 = (p_shl_fu_296_p3 + zext_ln214_fu_312_p1);
assign add_ln214_fu_231_p2 = (v60_mid2_fu_215_p3 + 6'd1);
assign add_ln215_1_fu_325_p2 = (add_ln214_1_fu_316_p2 + zext_ln215_1_fu_322_p1);
assign add_ln215_fu_286_p2 = (mul_ln_fu_271_p6 + zext_ln215_fu_283_p1);
assign and_ln212_fu_189_p2 = (xor_ln212_fu_177_p2 & icmp_ln214_fu_183_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_209_p2 = (icmp_ln213_fu_163_p2 | and_ln212_fu_189_p2);
assign icmp_ln212_fu_128_p2 = ((ap_sig_allocacmp_indvar_flatten12_load == 12'd3468) ? 1'b1 : 1'b0);
assign icmp_ln213_fu_163_p2 = ((indvar_flatten_fu_70 == 12'd1156) ? 1'b1 : 1'b0);
assign icmp_ln214_fu_183_p2 = ((v60_fu_62 == 6'd34) ? 1'b1 : 1'b0);
assign mul_ln_fu_271_p6 = {{{{{{{{1'd0}, {select_ln212_1_reg_375}}}, {2'd0}}}, {select_ln212_1_reg_375}}}, {1'd0}};
assign p_shl_fu_296_p3 = {{trunc_ln215_fu_292_p1}, {5'd0}};
assign select_ln212_1_fu_195_p3 = ((icmp_ln213_fu_163_p2[0:0] == 1'b1) ? add_ln212_fu_157_p2 : v58_fu_74);
assign select_ln212_fu_169_p3 = ((icmp_ln213_fu_163_p2[0:0] == 1'b1) ? 6'd0 : v59_fu_66);
assign select_ln213_1_fu_243_p3 = ((icmp_ln213_fu_163_p2[0:0] == 1'b1) ? 12'd1 : add_ln213_1_fu_237_p2);
assign select_ln213_fu_223_p3 = ((and_ln212_fu_189_p2[0:0] == 1'b1) ? add_ln213_fu_203_p2 : select_ln212_fu_169_p3);
assign tmp_fu_304_p3 = {{add_ln215_fu_286_p2}, {1'd0}};
assign trunc_ln215_fu_292_p1 = add_ln215_fu_286_p2[6:0];
assign v57_address1 = zext_ln215_2_fu_331_p1;
assign v57_ce1 = v57_ce1_local;
assign v57_d1 = 8'd0;
assign v57_we1 = v57_we1_local;
assign v60_mid2_fu_215_p3 = ((empty_fu_209_p2[0:0] == 1'b1) ? 6'd0 : v60_fu_62);
assign xor_ln212_fu_177_p2 = (icmp_ln213_fu_163_p2 ^ 1'd1);
assign zext_ln214_fu_312_p1 = tmp_fu_304_p3;
assign zext_ln215_1_fu_322_p1 = v60_mid2_reg_381;
assign zext_ln215_2_fu_331_p1 = add_ln215_1_fu_325_p2;
assign zext_ln215_fu_283_p1 = select_ln213_reg_386;
endmodule 
