module main_graph_main_graph_Pipeline_VITIS_LOOP_308_31_VITIS_LOOP_309_32_VITIS_LOOP_310_33 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v51_address1,v51_ce1,v51_we1,v51_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v51_address1;
output   v51_ce1;
output   v51_we1;
output  [6:0] v51_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln308_fu_132_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln309_fu_147_p2;
reg   [0:0] icmp_ln309_reg_392;
wire   [4:0] v116_mid2_fu_234_p3;
reg   [4:0] v116_mid2_reg_400;
wire   [11:0] add_ln311_fu_284_p2;
reg   [11:0] add_ln311_reg_405;
wire   [10:0] trunc_ln311_fu_290_p1;
reg   [10:0] trunc_ln311_reg_410;
wire   [63:0] zext_ln311_4_fu_348_p1;
wire    ap_block_pp0_stage0;
reg   [4:0] v116_fu_66;
wire   [4:0] add_ln310_fu_294_p2;
wire    ap_loop_init;
reg   [4:0] v115_fu_70;
wire   [4:0] select_ln309_fu_242_p3;
reg   [9:0] indvar_flatten253_fu_74;
wire   [9:0] select_ln309_1_fu_159_p3;
reg   [9:0] ap_sig_allocacmp_indvar_flatten253_load;
reg   [6:0] v114_fu_78;
wire   [6:0] select_ln308_1_fu_216_p3;
reg   [14:0] indvar_flatten266_fu_82;
wire   [14:0] add_ln308_1_fu_138_p2;
reg   [14:0] ap_sig_allocacmp_indvar_flatten266_load;
reg    v51_we1_local;
reg    v51_ce1_local;
wire   [9:0] add_ln309_1_fu_153_p2;
wire   [0:0] icmp_ln310_fu_204_p2;
wire   [0:0] xor_ln308_fu_199_p2;
wire   [6:0] add_ln308_fu_186_p2;
wire   [4:0] select_ln308_fu_192_p3;
wire   [0:0] and_ln308_fu_210_p2;
wire   [0:0] empty_fu_229_p2;
wire   [4:0] add_ln309_fu_223_p2;
wire   [10:0] tmp_fu_250_p3;
wire   [7:0] tmp_94_fu_262_p3;
wire   [11:0] zext_ln311_fu_258_p1;
wire   [11:0] zext_ln311_1_fu_270_p1;
wire   [11:0] add_ln311_2_fu_274_p2;
wire   [11:0] zext_ln311_2_fu_280_p1;
wire   [12:0] tmp_95_fu_322_p3;
wire   [14:0] p_shl_fu_315_p3;
wire   [14:0] zext_ln310_fu_329_p1;
wire   [14:0] add_ln310_1_fu_333_p2;
wire   [14:0] zext_ln311_3_fu_339_p1;
wire   [14:0] add_ln311_1_fu_342_p2;
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
#0 v116_fu_66 = 5'd0;
#0 v115_fu_70 = 5'd0;
#0 indvar_flatten253_fu_74 = 10'd0;
#0 v114_fu_78 = 7'd0;
#0 indvar_flatten266_fu_82 = 15'd0;
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
        if (((icmp_ln308_fu_132_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten253_fu_74 <= select_ln309_1_fu_159_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten253_fu_74 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln308_fu_132_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten266_fu_82 <= add_ln308_1_fu_138_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten266_fu_82 <= 15'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v114_fu_78 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v114_fu_78 <= select_ln308_1_fu_216_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v115_fu_70 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v115_fu_70 <= select_ln309_fu_242_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v116_fu_66 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v116_fu_66 <= add_ln310_fu_294_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln311_reg_405 <= add_ln311_fu_284_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln309_reg_392 <= icmp_ln309_fu_147_p2;
        trunc_ln311_reg_410 <= trunc_ln311_fu_290_p1;
        v116_mid2_reg_400 <= v116_mid2_fu_234_p3;
    end
end
always @ (*) begin
    if (((icmp_ln308_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten253_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten253_load = indvar_flatten253_fu_74;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten266_load = 15'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten266_load = indvar_flatten266_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v51_ce1_local = 1'b1;
    end else begin
        v51_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v51_we1_local = 1'b1;
    end else begin
        v51_we1_local = 1'b0;
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
assign add_ln308_1_fu_138_p2 = (ap_sig_allocacmp_indvar_flatten266_load + 15'd1);
assign add_ln308_fu_186_p2 = (v114_fu_78 + 7'd1);
assign add_ln309_1_fu_153_p2 = (ap_sig_allocacmp_indvar_flatten253_load + 10'd1);
assign add_ln309_fu_223_p2 = (select_ln308_fu_192_p3 + 5'd1);
assign add_ln310_1_fu_333_p2 = (p_shl_fu_315_p3 + zext_ln310_fu_329_p1);
assign add_ln310_fu_294_p2 = (v116_mid2_fu_234_p3 + 5'd1);
assign add_ln311_1_fu_342_p2 = (add_ln310_1_fu_333_p2 + zext_ln311_3_fu_339_p1);
assign add_ln311_2_fu_274_p2 = (zext_ln311_fu_258_p1 + zext_ln311_1_fu_270_p1);
assign add_ln311_fu_284_p2 = (add_ln311_2_fu_274_p2 + zext_ln311_2_fu_280_p1);
assign and_ln308_fu_210_p2 = (xor_ln308_fu_199_p2 & icmp_ln310_fu_204_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_229_p2 = (icmp_ln309_reg_392 | and_ln308_fu_210_p2);
assign icmp_ln308_fu_132_p2 = ((ap_sig_allocacmp_indvar_flatten266_load == 15'd20736) ? 1'b1 : 1'b0);
assign icmp_ln309_fu_147_p2 = ((ap_sig_allocacmp_indvar_flatten253_load == 10'd324) ? 1'b1 : 1'b0);
assign icmp_ln310_fu_204_p2 = ((v116_fu_66 == 5'd18) ? 1'b1 : 1'b0);
assign p_shl_fu_315_p3 = {{trunc_ln311_reg_410}, {4'd0}};
assign select_ln308_1_fu_216_p3 = ((icmp_ln309_reg_392[0:0] == 1'b1) ? add_ln308_fu_186_p2 : v114_fu_78);
assign select_ln308_fu_192_p3 = ((icmp_ln309_reg_392[0:0] == 1'b1) ? 5'd0 : v115_fu_70);
assign select_ln309_1_fu_159_p3 = ((icmp_ln309_fu_147_p2[0:0] == 1'b1) ? 10'd1 : add_ln309_1_fu_153_p2);
assign select_ln309_fu_242_p3 = ((and_ln308_fu_210_p2[0:0] == 1'b1) ? add_ln309_fu_223_p2 : select_ln308_fu_192_p3);
assign tmp_94_fu_262_p3 = {{select_ln308_1_fu_216_p3}, {1'd0}};
assign tmp_95_fu_322_p3 = {{add_ln311_reg_405}, {1'd0}};
assign tmp_fu_250_p3 = {{select_ln308_1_fu_216_p3}, {4'd0}};
assign trunc_ln311_fu_290_p1 = add_ln311_fu_284_p2[10:0];
assign v116_mid2_fu_234_p3 = ((empty_fu_229_p2[0:0] == 1'b1) ? 5'd0 : v116_fu_66);
assign v51_address1 = zext_ln311_4_fu_348_p1;
assign v51_ce1 = v51_ce1_local;
assign v51_d1 = 7'd0;
assign v51_we1 = v51_we1_local;
assign xor_ln308_fu_199_p2 = (icmp_ln309_reg_392 ^ 1'd1);
assign zext_ln310_fu_329_p1 = tmp_95_fu_322_p3;
assign zext_ln311_1_fu_270_p1 = tmp_94_fu_262_p3;
assign zext_ln311_2_fu_280_p1 = select_ln309_fu_242_p3;
assign zext_ln311_3_fu_339_p1 = v116_mid2_reg_400;
assign zext_ln311_4_fu_348_p1 = add_ln311_1_fu_342_p2;
assign zext_ln311_fu_258_p1 = tmp_fu_250_p3;
endmodule 