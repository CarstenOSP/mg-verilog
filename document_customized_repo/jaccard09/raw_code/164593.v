module main_graph_main_graph_Pipeline_VITIS_LOOP_410_19_VITIS_LOOP_411_20_VITIS_LOOP_412_21 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v98_address0,v98_ce0,v98_q0,v97_address1,v97_ce1,v97_we1,v97_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v98_address0;
output   v98_ce0;
input  [6:0] v98_q0;
output  [15:0] v97_address1;
output   v97_ce1;
output   v97_we1;
output  [6:0] v97_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln410_fu_149_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln411_fu_164_p2;
reg   [0:0] icmp_ln411_reg_479;
wire   [11:0] add_ln414_1_fu_358_p2;
reg   [11:0] add_ln414_1_reg_488;
wire   [10:0] trunc_ln414_fu_364_p1;
reg   [10:0] trunc_ln414_reg_493;
wire   [14:0] add_ln413_1_fu_372_p2;
reg   [14:0] add_ln413_1_reg_498;
wire   [5:0] add_ln414_fu_378_p2;
reg   [5:0] add_ln414_reg_503;
wire   [15:0] add_ln414_2_fu_430_p2;
reg   [15:0] add_ln414_2_reg_513;
wire   [63:0] zext_ln413_2_fu_423_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln414_4_fu_436_p1;
reg   [5:0] v134_fu_70;
wire    ap_loop_init;
reg   [5:0] v133_fu_74;
wire   [5:0] select_ln411_fu_290_p3;
reg   [11:0] indvar_flatten81_fu_78;
wire   [11:0] select_ln411_1_fu_176_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten81_load;
reg   [5:0] v132_fu_82;
wire   [5:0] select_ln410_2_fu_246_p3;
reg   [15:0] indvar_flatten96_fu_86;
wire   [15:0] add_ln410_1_fu_155_p2;
reg   [15:0] ap_sig_allocacmp_indvar_flatten96_load;
reg    v98_ce0_local;
reg    v97_we1_local;
reg    v97_ce1_local;
wire   [11:0] add_ln411_fu_170_p2;
wire   [5:0] indvars_iv_next194047_fu_216_p2;
wire   [0:0] icmp_ln412_fu_234_p2;
wire   [0:0] xor_ln410_fu_229_p2;
wire   [5:0] add_ln410_fu_203_p2;
wire   [5:0] select_ln410_fu_209_p3;
wire   [0:0] and_ln410_fu_240_p2;
wire   [0:0] empty_121_fu_263_p2;
wire   [5:0] indvars_iv_next1940_mid1_fu_276_p2;
wire   [5:0] select_ln410_1_fu_222_p3;
wire   [5:0] indvars_iv_next1940_dup_fu_257_p2;
wire   [10:0] tmp_fu_298_p3;
wire   [6:0] tmp_80_fu_310_p3;
wire   [11:0] zext_ln414_fu_306_p1;
wire   [11:0] zext_ln414_1_fu_318_p1;
wire   [4:0] empty_fu_253_p1;
wire   [9:0] tmp_7_fu_328_p3;
wire   [9:0] zext_ln413_fu_336_p1;
wire   [9:0] add_ln413_fu_340_p2;
wire   [5:0] indvars_iv_next1940_mid2_fu_282_p3;
wire   [11:0] add_ln414_3_fu_322_p2;
wire   [11:0] zext_ln414_2_fu_354_p1;
wire   [5:0] v134_mid2_fu_268_p3;
wire   [14:0] tmp_81_fu_346_p3;
wire   [14:0] zext_ln413_1_fu_368_p1;
wire   [12:0] tmp_82_fu_406_p3;
wire   [15:0] p_shl_fu_399_p3;
wire   [15:0] zext_ln412_fu_413_p1;
wire   [15:0] add_ln412_fu_417_p2;
wire   [15:0] zext_ln414_3_fu_427_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
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
#0 v134_fu_70 = 6'd0;
#0 v133_fu_74 = 6'd0;
#0 indvar_flatten81_fu_78 = 12'd0;
#0 v132_fu_82 = 6'd0;
#0 indvar_flatten96_fu_86 = 16'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln410_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten81_fu_78 <= select_ln411_1_fu_176_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten81_fu_78 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln410_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten96_fu_86 <= add_ln410_1_fu_155_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten96_fu_86 <= 16'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v132_fu_82 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v132_fu_82 <= select_ln410_2_fu_246_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v133_fu_74 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v133_fu_74 <= select_ln411_fu_290_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v134_fu_70 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v134_fu_70 <= add_ln414_fu_378_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln413_1_reg_498 <= add_ln413_1_fu_372_p2;
        add_ln414_1_reg_488 <= add_ln414_1_fu_358_p2;
        add_ln414_reg_503 <= add_ln414_fu_378_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln411_reg_479 <= icmp_ln411_fu_164_p2;
        trunc_ln414_reg_493 <= trunc_ln414_fu_364_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln414_2_reg_513 <= add_ln414_2_fu_430_p2;
    end
end
always @ (*) begin
    if (((icmp_ln410_fu_149_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten81_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten81_load = indvar_flatten81_fu_78;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten96_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten96_load = indvar_flatten96_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v97_ce1_local = 1'b1;
    end else begin
        v97_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v97_we1_local = 1'b1;
    end else begin
        v97_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v98_ce0_local = 1'b1;
    end else begin
        v98_ce0_local = 1'b0;
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
assign add_ln410_1_fu_155_p2 = (ap_sig_allocacmp_indvar_flatten96_load + 16'd1);
assign add_ln410_fu_203_p2 = (v132_fu_82 + 6'd1);
assign add_ln411_fu_170_p2 = (ap_sig_allocacmp_indvar_flatten81_load + 12'd1);
assign add_ln412_fu_417_p2 = (p_shl_fu_399_p3 + zext_ln412_fu_413_p1);
assign add_ln413_1_fu_372_p2 = (tmp_81_fu_346_p3 + zext_ln413_1_fu_368_p1);
assign add_ln413_fu_340_p2 = (tmp_7_fu_328_p3 + zext_ln413_fu_336_p1);
assign add_ln414_1_fu_358_p2 = (add_ln414_3_fu_322_p2 + zext_ln414_2_fu_354_p1);
assign add_ln414_2_fu_430_p2 = (add_ln412_fu_417_p2 + zext_ln414_3_fu_427_p1);
assign add_ln414_3_fu_322_p2 = (zext_ln414_fu_306_p1 + zext_ln414_1_fu_318_p1);
assign add_ln414_fu_378_p2 = (v134_mid2_fu_268_p3 + 6'd1);
assign and_ln410_fu_240_p2 = (xor_ln410_fu_229_p2 & icmp_ln412_fu_234_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_121_fu_263_p2 = (icmp_ln411_reg_479 | and_ln410_fu_240_p2);
assign empty_fu_253_p1 = select_ln410_2_fu_246_p3[4:0];
assign icmp_ln410_fu_149_p2 = ((ap_sig_allocacmp_indvar_flatten96_load == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln411_fu_164_p2 = ((ap_sig_allocacmp_indvar_flatten81_load == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln412_fu_234_p2 = ((v134_fu_70 == 6'd32) ? 1'b1 : 1'b0);
assign indvars_iv_next194047_fu_216_p2 = (v133_fu_74 + 6'd1);
assign indvars_iv_next1940_dup_fu_257_p2 = (select_ln410_fu_209_p3 + 6'd1);
assign indvars_iv_next1940_mid1_fu_276_p2 = (select_ln410_fu_209_p3 + 6'd2);
assign indvars_iv_next1940_mid2_fu_282_p3 = ((and_ln410_fu_240_p2[0:0] == 1'b1) ? indvars_iv_next1940_mid1_fu_276_p2 : select_ln410_1_fu_222_p3);
assign p_shl_fu_399_p3 = {{trunc_ln414_reg_493}, {5'd0}};
assign select_ln410_1_fu_222_p3 = ((icmp_ln411_reg_479[0:0] == 1'b1) ? 6'd1 : indvars_iv_next194047_fu_216_p2);
assign select_ln410_2_fu_246_p3 = ((icmp_ln411_reg_479[0:0] == 1'b1) ? add_ln410_fu_203_p2 : v132_fu_82);
assign select_ln410_fu_209_p3 = ((icmp_ln411_reg_479[0:0] == 1'b1) ? 6'd0 : v133_fu_74);
assign select_ln411_1_fu_176_p3 = ((icmp_ln411_fu_164_p2[0:0] == 1'b1) ? 12'd1 : add_ln411_fu_170_p2);
assign select_ln411_fu_290_p3 = ((and_ln410_fu_240_p2[0:0] == 1'b1) ? indvars_iv_next1940_dup_fu_257_p2 : select_ln410_fu_209_p3);
assign tmp_7_fu_328_p3 = {{empty_fu_253_p1}, {5'd0}};
assign tmp_80_fu_310_p3 = {{select_ln410_2_fu_246_p3}, {1'd0}};
assign tmp_81_fu_346_p3 = {{add_ln413_fu_340_p2}, {5'd0}};
assign tmp_82_fu_406_p3 = {{add_ln414_1_reg_488}, {1'd0}};
assign tmp_fu_298_p3 = {{select_ln410_2_fu_246_p3}, {5'd0}};
assign trunc_ln414_fu_364_p1 = add_ln414_1_fu_358_p2[10:0];
assign v134_mid2_fu_268_p3 = ((empty_121_fu_263_p2[0:0] == 1'b1) ? 6'd0 : v134_fu_70);
assign v97_address1 = zext_ln414_4_fu_436_p1;
assign v97_ce1 = v97_ce1_local;
assign v97_d1 = v98_q0;
assign v97_we1 = v97_we1_local;
assign v98_address0 = zext_ln413_2_fu_423_p1;
assign v98_ce0 = v98_ce0_local;
assign xor_ln410_fu_229_p2 = (icmp_ln411_reg_479 ^ 1'd1);
assign zext_ln412_fu_413_p1 = tmp_82_fu_406_p3;
assign zext_ln413_1_fu_368_p1 = v134_mid2_fu_268_p3;
assign zext_ln413_2_fu_423_p1 = add_ln413_1_reg_498;
assign zext_ln413_fu_336_p1 = select_ln411_fu_290_p3;
assign zext_ln414_1_fu_318_p1 = tmp_80_fu_310_p3;
assign zext_ln414_2_fu_354_p1 = indvars_iv_next1940_mid2_fu_282_p3;
assign zext_ln414_3_fu_427_p1 = add_ln414_reg_503;
assign zext_ln414_4_fu_436_p1 = add_ln414_2_reg_513;
assign zext_ln414_fu_306_p1 = tmp_fu_298_p3;
endmodule 