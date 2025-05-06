
module main_graph_main_graph_Pipeline_VITIS_LOOP_1056_225_VITIS_LOOP_1057_226_VITIS_LOOP_1058_227 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v41_address0,v41_ce0,v41_q0,v40_address1,v40_ce1,v40_we1,v40_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v41_address0;
output   v41_ce0;
input  [6:0] v41_q0;
output  [14:0] v40_address1;
output   v40_ce1;
output   v40_we1;
output  [6:0] v40_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1056_fu_153_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] select_ln1056_2_fu_229_p3;
reg   [8:0] select_ln1056_2_reg_486;
wire   [3:0] v537_mid2_fu_253_p3;
reg   [3:0] v537_mid2_reg_492;
wire   [3:0] indvars_iv_next1277_mid2_fu_267_p3;
reg   [3:0] indvars_iv_next1277_mid2_reg_497;
wire   [10:0] add_ln1059_fu_295_p2;
reg   [10:0] add_ln1059_reg_502;
wire   [3:0] add_ln1060_fu_301_p2;
reg   [3:0] add_ln1060_reg_507;
wire   [14:0] add_ln1060_2_fu_437_p2;
reg   [14:0] add_ln1060_2_reg_517;
wire   [63:0] zext_ln1059_2_fu_429_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1060_4_fu_443_p1;
reg   [3:0] v537_fu_74;
wire    ap_loop_init;
reg   [3:0] v536_fu_78;
wire   [3:0] select_ln1057_fu_275_p3;
reg   [7:0] indvar_flatten2570_fu_82;
wire   [7:0] select_ln1057_1_fu_313_p3;
reg   [8:0] v535_fu_86;
reg   [14:0] indvar_flatten2585_fu_90;
wire   [14:0] add_ln1056_1_fu_159_p2;
reg    v41_ce0_local;
reg    v40_we1_local;
reg    v40_ce1_local;
wire   [0:0] icmp_ln1057_fu_183_p2;
wire   [3:0] indvars_iv_next1277737_fu_197_p2;
wire   [0:0] icmp_ln1058_fu_217_p2;
wire   [0:0] xor_ln1056_fu_211_p2;
wire   [8:0] add_ln1056_fu_177_p2;
wire   [3:0] select_ln1056_fu_189_p3;
wire   [0:0] and_ln1056_fu_223_p2;
wire   [0:0] empty_174_fu_247_p2;
wire   [3:0] indvars_iv_next1277_mid1_fu_261_p2;
wire   [3:0] select_ln1056_1_fu_203_p3;
wire   [3:0] indvars_iv_next1277_dup_fu_241_p2;
wire   [7:0] empty_fu_237_p1;
wire   [10:0] tmp_s_fu_283_p3;
wire   [10:0] zext_ln1059_fu_291_p1;
wire   [7:0] add_ln1057_fu_307_p2;
wire   [11:0] tmp_fu_346_p3;
wire   [9:0] tmp_170_fu_357_p3;
wire   [12:0] zext_ln1060_fu_353_p1;
wire   [12:0] zext_ln1060_1_fu_364_p1;
wire   [12:0] add_ln1060_3_fu_368_p2;
wire   [12:0] zext_ln1060_2_fu_381_p1;
wire   [12:0] add_ln1060_1_fu_384_p2;
wire   [11:0] trunc_ln1060_fu_390_p1;
wire   [13:0] tmp_172_fu_402_p3;
wire   [14:0] p_shl_fu_394_p3;
wire   [14:0] zext_ln1058_fu_410_p1;
wire   [13:0] tmp_171_fu_374_p3;
wire   [13:0] zext_ln1059_1_fu_420_p1;
wire   [13:0] add_ln1059_1_fu_423_p2;
wire   [14:0] add_ln1058_fu_414_p2;
wire   [14:0] zext_ln1060_3_fu_434_p1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
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
#0 v537_fu_74 = 4'd0;
#0 v536_fu_78 = 4'd0;
#0 indvar_flatten2570_fu_82 = 8'd0;
#0 v535_fu_86 = 9'd0;
#0 indvar_flatten2585_fu_90 = 15'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2570_fu_82 <= 8'd0;
        end else if (((icmp_ln1056_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten2570_fu_82 <= select_ln1057_1_fu_313_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2585_fu_90 <= 15'd0;
        end else if (((icmp_ln1056_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten2585_fu_90 <= add_ln1056_1_fu_159_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v535_fu_86 <= 9'd0;
        end else if (((icmp_ln1056_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v535_fu_86 <= select_ln1056_2_fu_229_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v536_fu_78 <= 4'd0;
        end else if (((icmp_ln1056_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v536_fu_78 <= select_ln1057_fu_275_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v537_fu_74 <= 4'd0;
        end else if (((icmp_ln1056_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v537_fu_74 <= add_ln1060_fu_301_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1059_reg_502 <= add_ln1059_fu_295_p2;
        add_ln1060_reg_507 <= add_ln1060_fu_301_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        indvars_iv_next1277_mid2_reg_497 <= indvars_iv_next1277_mid2_fu_267_p3;
        select_ln1056_2_reg_486 <= select_ln1056_2_fu_229_p3;
        v537_mid2_reg_492 <= v537_mid2_fu_253_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln1060_2_reg_517 <= add_ln1060_2_fu_437_p2;
    end
end
always @ (*) begin
    if (((icmp_ln1056_fu_153_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v40_ce1_local = 1'b1;
    end else begin
        v40_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v40_we1_local = 1'b1;
    end else begin
        v40_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v41_ce0_local = 1'b1;
    end else begin
        v41_ce0_local = 1'b0;
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
assign add_ln1056_1_fu_159_p2 = (indvar_flatten2585_fu_90 + 15'd1);
assign add_ln1056_fu_177_p2 = (v535_fu_86 + 9'd1);
assign add_ln1057_fu_307_p2 = (indvar_flatten2570_fu_82 + 8'd1);
assign add_ln1058_fu_414_p2 = (p_shl_fu_394_p3 + zext_ln1058_fu_410_p1);
assign add_ln1059_1_fu_423_p2 = (tmp_171_fu_374_p3 + zext_ln1059_1_fu_420_p1);
assign add_ln1059_fu_295_p2 = (tmp_s_fu_283_p3 + zext_ln1059_fu_291_p1);
assign add_ln1060_1_fu_384_p2 = (add_ln1060_3_fu_368_p2 + zext_ln1060_2_fu_381_p1);
assign add_ln1060_2_fu_437_p2 = (add_ln1058_fu_414_p2 + zext_ln1060_3_fu_434_p1);
assign add_ln1060_3_fu_368_p2 = (zext_ln1060_fu_353_p1 + zext_ln1060_1_fu_364_p1);
assign add_ln1060_fu_301_p2 = (v537_mid2_fu_253_p3 + 4'd1);
assign and_ln1056_fu_223_p2 = (xor_ln1056_fu_211_p2 & icmp_ln1058_fu_217_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_174_fu_247_p2 = (icmp_ln1057_fu_183_p2 | and_ln1056_fu_223_p2);
assign empty_fu_237_p1 = select_ln1056_2_fu_229_p3[7:0];
assign icmp_ln1056_fu_153_p2 = ((indvar_flatten2585_fu_90 == 15'd16384) ? 1'b1 : 1'b0);
assign icmp_ln1057_fu_183_p2 = ((indvar_flatten2570_fu_82 == 8'd64) ? 1'b1 : 1'b0);
assign icmp_ln1058_fu_217_p2 = ((v537_fu_74 == 4'd8) ? 1'b1 : 1'b0);
assign indvars_iv_next1277737_fu_197_p2 = (v536_fu_78 + 4'd1);
assign indvars_iv_next1277_dup_fu_241_p2 = (select_ln1056_fu_189_p3 + 4'd1);
assign indvars_iv_next1277_mid1_fu_261_p2 = (select_ln1056_fu_189_p3 + 4'd2);
assign indvars_iv_next1277_mid2_fu_267_p3 = ((and_ln1056_fu_223_p2[0:0] == 1'b1) ? indvars_iv_next1277_mid1_fu_261_p2 : select_ln1056_1_fu_203_p3);
assign p_shl_fu_394_p3 = {{trunc_ln1060_fu_390_p1}, {3'd0}};
assign select_ln1056_1_fu_203_p3 = ((icmp_ln1057_fu_183_p2[0:0] == 1'b1) ? 4'd1 : indvars_iv_next1277737_fu_197_p2);
assign select_ln1056_2_fu_229_p3 = ((icmp_ln1057_fu_183_p2[0:0] == 1'b1) ? add_ln1056_fu_177_p2 : v535_fu_86);
assign select_ln1056_fu_189_p3 = ((icmp_ln1057_fu_183_p2[0:0] == 1'b1) ? 4'd0 : v536_fu_78);
assign select_ln1057_1_fu_313_p3 = ((icmp_ln1057_fu_183_p2[0:0] == 1'b1) ? 8'd1 : add_ln1057_fu_307_p2);
assign select_ln1057_fu_275_p3 = ((and_ln1056_fu_223_p2[0:0] == 1'b1) ? indvars_iv_next1277_dup_fu_241_p2 : select_ln1056_fu_189_p3);
assign tmp_170_fu_357_p3 = {{select_ln1056_2_reg_486}, {1'd0}};
assign tmp_171_fu_374_p3 = {{add_ln1059_reg_502}, {3'd0}};
assign tmp_172_fu_402_p3 = {{add_ln1060_1_fu_384_p2}, {1'd0}};
assign tmp_fu_346_p3 = {{select_ln1056_2_reg_486}, {3'd0}};
assign tmp_s_fu_283_p3 = {{empty_fu_237_p1}, {3'd0}};
assign trunc_ln1060_fu_390_p1 = add_ln1060_1_fu_384_p2[11:0];
assign v40_address1 = zext_ln1060_4_fu_443_p1;
assign v40_ce1 = v40_ce1_local;
assign v40_d1 = v41_q0;
assign v40_we1 = v40_we1_local;
assign v41_address0 = zext_ln1059_2_fu_429_p1;
assign v41_ce0 = v41_ce0_local;
assign v537_mid2_fu_253_p3 = ((empty_174_fu_247_p2[0:0] == 1'b1) ? 4'd0 : v537_fu_74);
assign xor_ln1056_fu_211_p2 = (icmp_ln1057_fu_183_p2 ^ 1'd1);
assign zext_ln1058_fu_410_p1 = tmp_172_fu_402_p3;
assign zext_ln1059_1_fu_420_p1 = v537_mid2_reg_492;
assign zext_ln1059_2_fu_429_p1 = add_ln1059_1_fu_423_p2;
assign zext_ln1059_fu_291_p1 = select_ln1057_fu_275_p3;
assign zext_ln1060_1_fu_364_p1 = tmp_170_fu_357_p3;
assign zext_ln1060_2_fu_381_p1 = indvars_iv_next1277_mid2_reg_497;
assign zext_ln1060_3_fu_434_p1 = add_ln1060_reg_507;
assign zext_ln1060_4_fu_443_p1 = add_ln1060_2_reg_517;
assign zext_ln1060_fu_353_p1 = tmp_fu_346_p3;
endmodule 
