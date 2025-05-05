module main_graph_main_graph_Pipeline_VITIS_LOOP_582_85_VITIS_LOOP_583_86_VITIS_LOOP_584_87 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v71_address0,v71_ce0,v71_q0,v71_1_address0,v71_1_ce0,v71_1_q0,v70_address1,v70_ce1,v70_we1,v70_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v71_address0;
output   v71_ce0;
input  [6:0] v71_q0;
output  [14:0] v71_1_address0;
output   v71_1_ce0;
input  [6:0] v71_1_q0;
output  [16:0] v70_address1;
output   v70_ce1;
output   v70_we1;
output  [6:0] v70_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln582_fu_171_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln583_fu_186_p2;
reg   [0:0] icmp_ln583_reg_520;
wire   [0:0] trunc_ln582_fu_346_p1;
reg   [0:0] trunc_ln582_reg_529;
reg   [0:0] trunc_ln582_reg_529_pp0_iter2_reg;
wire   [12:0] add_ln586_1_fu_390_p2;
reg   [12:0] add_ln586_1_reg_534;
wire   [11:0] trunc_ln586_fu_396_p1;
reg   [11:0] trunc_ln586_reg_539;
wire   [14:0] add_ln585_1_fu_404_p2;
reg   [14:0] add_ln585_1_reg_544;
wire   [5:0] add_ln586_fu_410_p2;
reg   [5:0] add_ln586_reg_549;
wire   [16:0] add_ln586_2_fu_463_p2;
reg   [16:0] add_ln586_2_reg_564;
wire   [63:0] zext_ln585_2_fu_455_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln586_4_fu_477_p1;
reg   [5:0] v251_fu_80;
wire    ap_loop_init;
reg   [5:0] v250_fu_84;
wire   [5:0] select_ln583_fu_308_p3;
reg   [11:0] indvar_flatten889_fu_88;
wire   [11:0] select_ln583_1_fu_198_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten889_load;
reg   [6:0] v249_fu_92;
wire   [6:0] select_ln582_2_fu_268_p3;
reg   [16:0] indvar_flatten904_fu_96;
wire   [16:0] add_ln582_1_fu_177_p2;
reg   [16:0] ap_sig_allocacmp_indvar_flatten904_load;
reg    v71_ce0_local;
reg    v71_1_ce0_local;
reg    v70_we1_local;
wire   [6:0] v252_fu_469_p3;
reg    v70_ce1_local;
wire   [11:0] add_ln583_fu_192_p2;
wire   [5:0] indvars_iv_next1721391_fu_238_p2;
wire   [0:0] icmp_ln584_fu_256_p2;
wire   [0:0] xor_ln582_fu_251_p2;
wire   [6:0] add_ln582_fu_225_p2;
wire   [5:0] select_ln582_fu_231_p3;
wire   [0:0] and_ln582_fu_262_p2;
wire   [0:0] empty_fu_281_p2;
wire   [5:0] indvars_iv_next1721_mid1_fu_294_p2;
wire   [5:0] select_ln582_1_fu_244_p3;
wire   [5:0] indvars_iv_next1721_dup_fu_275_p2;
wire   [11:0] tmp_fu_316_p3;
wire   [7:0] tmp_78_fu_328_p3;
wire   [12:0] zext_ln586_fu_324_p1;
wire   [12:0] zext_ln586_1_fu_336_p1;
wire   [4:0] lshr_ln1_fu_350_p4;
wire   [9:0] tmp_56_fu_360_p3;
wire   [9:0] zext_ln585_fu_368_p1;
wire   [9:0] add_ln585_fu_372_p2;
wire   [5:0] indvars_iv_next1721_mid2_fu_300_p3;
wire   [12:0] add_ln586_3_fu_340_p2;
wire   [12:0] zext_ln586_2_fu_386_p1;
wire   [5:0] v251_mid2_fu_286_p3;
wire   [14:0] tmp_79_fu_378_p3;
wire   [14:0] zext_ln585_1_fu_400_p1;
wire   [13:0] tmp_80_fu_438_p3;
wire   [16:0] p_shl_fu_431_p3;
wire   [16:0] zext_ln584_fu_445_p1;
wire   [16:0] add_ln584_fu_449_p2;
wire   [16:0] zext_ln586_3_fu_460_p1;
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
#0 v251_fu_80 = 6'd0;
#0 v250_fu_84 = 6'd0;
#0 indvar_flatten889_fu_88 = 12'd0;
#0 v249_fu_92 = 7'd0;
#0 indvar_flatten904_fu_96 = 17'd0;
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
        if (((icmp_ln582_fu_171_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten889_fu_88 <= select_ln583_1_fu_198_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten889_fu_88 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln582_fu_171_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten904_fu_96 <= add_ln582_1_fu_177_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten904_fu_96 <= 17'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v249_fu_92 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v249_fu_92 <= select_ln582_2_fu_268_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v250_fu_84 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v250_fu_84 <= select_ln583_fu_308_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v251_fu_80 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v251_fu_80 <= add_ln586_fu_410_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln585_1_reg_544 <= add_ln585_1_fu_404_p2;
        add_ln586_1_reg_534 <= add_ln586_1_fu_390_p2;
        add_ln586_reg_549 <= add_ln586_fu_410_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln583_reg_520 <= icmp_ln583_fu_186_p2;
        trunc_ln582_reg_529 <= trunc_ln582_fu_346_p1;
        trunc_ln586_reg_539 <= trunc_ln586_fu_396_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln586_2_reg_564 <= add_ln586_2_fu_463_p2;
        trunc_ln582_reg_529_pp0_iter2_reg <= trunc_ln582_reg_529;
    end
end
always @ (*) begin
    if (((icmp_ln582_fu_171_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten889_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten889_load = indvar_flatten889_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten904_load = 17'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten904_load = indvar_flatten904_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v70_ce1_local = 1'b1;
    end else begin
        v70_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v70_we1_local = 1'b1;
    end else begin
        v70_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v71_1_ce0_local = 1'b1;
    end else begin
        v71_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v71_ce0_local = 1'b1;
    end else begin
        v71_ce0_local = 1'b0;
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
assign add_ln582_1_fu_177_p2 = (ap_sig_allocacmp_indvar_flatten904_load + 17'd1);
assign add_ln582_fu_225_p2 = (v249_fu_92 + 7'd1);
assign add_ln583_fu_192_p2 = (ap_sig_allocacmp_indvar_flatten889_load + 12'd1);
assign add_ln584_fu_449_p2 = (p_shl_fu_431_p3 + zext_ln584_fu_445_p1);
assign add_ln585_1_fu_404_p2 = (tmp_79_fu_378_p3 + zext_ln585_1_fu_400_p1);
assign add_ln585_fu_372_p2 = (tmp_56_fu_360_p3 + zext_ln585_fu_368_p1);
assign add_ln586_1_fu_390_p2 = (add_ln586_3_fu_340_p2 + zext_ln586_2_fu_386_p1);
assign add_ln586_2_fu_463_p2 = (add_ln584_fu_449_p2 + zext_ln586_3_fu_460_p1);
assign add_ln586_3_fu_340_p2 = (zext_ln586_fu_324_p1 + zext_ln586_1_fu_336_p1);
assign add_ln586_fu_410_p2 = (v251_mid2_fu_286_p3 + 6'd1);
assign and_ln582_fu_262_p2 = (xor_ln582_fu_251_p2 & icmp_ln584_fu_256_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_281_p2 = (icmp_ln583_reg_520 | and_ln582_fu_262_p2);
assign icmp_ln582_fu_171_p2 = ((ap_sig_allocacmp_indvar_flatten904_load == 17'd65536) ? 1'b1 : 1'b0);
assign icmp_ln583_fu_186_p2 = ((ap_sig_allocacmp_indvar_flatten889_load == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln584_fu_256_p2 = ((v251_fu_80 == 6'd32) ? 1'b1 : 1'b0);
assign indvars_iv_next1721391_fu_238_p2 = (v250_fu_84 + 6'd1);
assign indvars_iv_next1721_dup_fu_275_p2 = (select_ln582_fu_231_p3 + 6'd1);
assign indvars_iv_next1721_mid1_fu_294_p2 = (select_ln582_fu_231_p3 + 6'd2);
assign indvars_iv_next1721_mid2_fu_300_p3 = ((and_ln582_fu_262_p2[0:0] == 1'b1) ? indvars_iv_next1721_mid1_fu_294_p2 : select_ln582_1_fu_244_p3);
assign lshr_ln1_fu_350_p4 = {{select_ln582_2_fu_268_p3[5:1]}};
assign p_shl_fu_431_p3 = {{trunc_ln586_reg_539}, {5'd0}};
assign select_ln582_1_fu_244_p3 = ((icmp_ln583_reg_520[0:0] == 1'b1) ? 6'd1 : indvars_iv_next1721391_fu_238_p2);
assign select_ln582_2_fu_268_p3 = ((icmp_ln583_reg_520[0:0] == 1'b1) ? add_ln582_fu_225_p2 : v249_fu_92);
assign select_ln582_fu_231_p3 = ((icmp_ln583_reg_520[0:0] == 1'b1) ? 6'd0 : v250_fu_84);
assign select_ln583_1_fu_198_p3 = ((icmp_ln583_fu_186_p2[0:0] == 1'b1) ? 12'd1 : add_ln583_fu_192_p2);
assign select_ln583_fu_308_p3 = ((and_ln582_fu_262_p2[0:0] == 1'b1) ? indvars_iv_next1721_dup_fu_275_p2 : select_ln582_fu_231_p3);
assign tmp_56_fu_360_p3 = {{lshr_ln1_fu_350_p4}, {5'd0}};
assign tmp_78_fu_328_p3 = {{select_ln582_2_fu_268_p3}, {1'd0}};
assign tmp_79_fu_378_p3 = {{add_ln585_fu_372_p2}, {5'd0}};
assign tmp_80_fu_438_p3 = {{add_ln586_1_reg_534}, {1'd0}};
assign tmp_fu_316_p3 = {{select_ln582_2_fu_268_p3}, {5'd0}};
assign trunc_ln582_fu_346_p1 = select_ln582_2_fu_268_p3[0:0];
assign trunc_ln586_fu_396_p1 = add_ln586_1_fu_390_p2[11:0];
assign v251_mid2_fu_286_p3 = ((empty_fu_281_p2[0:0] == 1'b1) ? 6'd0 : v251_fu_80);
assign v252_fu_469_p3 = ((trunc_ln582_reg_529_pp0_iter2_reg[0:0] == 1'b1) ? v71_1_q0 : v71_q0);
assign v70_address1 = zext_ln586_4_fu_477_p1;
assign v70_ce1 = v70_ce1_local;
assign v70_d1 = v252_fu_469_p3;
assign v70_we1 = v70_we1_local;
assign v71_1_address0 = zext_ln585_2_fu_455_p1;
assign v71_1_ce0 = v71_1_ce0_local;
assign v71_address0 = zext_ln585_2_fu_455_p1;
assign v71_ce0 = v71_ce0_local;
assign xor_ln582_fu_251_p2 = (icmp_ln583_reg_520 ^ 1'd1);
assign zext_ln584_fu_445_p1 = tmp_80_fu_438_p3;
assign zext_ln585_1_fu_400_p1 = v251_mid2_fu_286_p3;
assign zext_ln585_2_fu_455_p1 = add_ln585_1_reg_544;
assign zext_ln585_fu_368_p1 = select_ln583_fu_308_p3;
assign zext_ln586_1_fu_336_p1 = tmp_78_fu_328_p3;
assign zext_ln586_2_fu_386_p1 = indvars_iv_next1721_mid2_fu_300_p3;
assign zext_ln586_3_fu_460_p1 = add_ln586_reg_549;
assign zext_ln586_4_fu_477_p1 = add_ln586_2_reg_564;
assign zext_ln586_fu_324_p1 = tmp_fu_316_p3;
endmodule 