
module main_graph_main_graph_Pipeline_VITIS_LOOP_1085_208_VITIS_LOOP_1086_209_VITIS_LOOP_1087_210 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v53_address0,v53_ce0,v53_q0,v52_address1,v52_ce1,v52_we1,v52_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v53_address0;
output   v53_ce0;
input  [6:0] v53_q0;
output  [14:0] v52_address1;
output   v52_ce1;
output   v52_we1;
output  [6:0] v52_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1085_fu_153_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] select_ln1085_2_fu_229_p3;
reg   [9:0] select_ln1085_2_reg_482;
wire   [2:0] v548_mid2_fu_253_p3;
reg   [2:0] v548_mid2_reg_488;
wire   [2:0] indvars_iv_next1349_mid2_fu_267_p3;
reg   [2:0] indvars_iv_next1349_mid2_reg_493;
wire   [10:0] add_ln1088_fu_295_p2;
reg   [10:0] add_ln1088_reg_498;
wire   [2:0] add_ln1089_fu_301_p2;
reg   [2:0] add_ln1089_reg_503;
wire   [14:0] add_ln1089_2_fu_433_p2;
reg   [14:0] add_ln1089_2_reg_513;
wire   [63:0] zext_ln1088_2_fu_425_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1089_4_fu_439_p1;
reg   [2:0] v548_fu_74;
wire    ap_loop_init;
reg   [2:0] v547_fu_78;
wire   [2:0] select_ln1086_fu_275_p3;
reg   [5:0] indvar_flatten1234_fu_82;
wire   [5:0] select_ln1086_1_fu_313_p3;
reg   [9:0] v546_fu_86;
reg   [13:0] indvar_flatten1249_fu_90;
wire   [13:0] add_ln1085_1_fu_159_p2;
reg    v53_ce0_local;
reg    v52_we1_local;
reg    v52_ce1_local;
wire   [0:0] icmp_ln1086_fu_183_p2;
wire   [2:0] indvars_iv_next1349395_fu_197_p2;
wire   [0:0] icmp_ln1087_fu_217_p2;
wire   [0:0] xor_ln1085_fu_211_p2;
wire   [9:0] add_ln1085_fu_177_p2;
wire   [2:0] select_ln1085_fu_189_p3;
wire   [0:0] and_ln1085_fu_223_p2;
wire   [0:0] empty_154_fu_247_p2;
wire   [2:0] indvars_iv_next1349_mid1_fu_261_p2;
wire   [2:0] select_ln1085_1_fu_203_p3;
wire   [2:0] indvars_iv_next1349_dup_fu_241_p2;
wire   [8:0] empty_fu_237_p1;
wire   [10:0] tmp_s_fu_283_p3;
wire   [10:0] zext_ln1088_fu_291_p1;
wire   [5:0] add_ln1086_fu_307_p2;
wire   [10:0] tmp_fu_353_p3;
wire   [12:0] p_shl_fu_346_p3;
wire   [12:0] zext_ln1089_fu_360_p1;
wire   [12:0] sub_ln1089_fu_364_p2;
wire   [12:0] zext_ln1089_1_fu_377_p1;
wire   [12:0] add_ln1089_1_fu_380_p2;
wire   [11:0] trunc_ln1089_fu_386_p1;
wire   [13:0] tmp_117_fu_390_p3;
wire   [14:0] tmp_118_fu_398_p3;
wire   [14:0] zext_ln1089_2_fu_406_p1;
wire   [12:0] tmp_116_fu_370_p3;
wire   [12:0] zext_ln1088_1_fu_416_p1;
wire   [12:0] add_ln1088_1_fu_419_p2;
wire   [14:0] sub_ln1087_fu_410_p2;
wire   [14:0] zext_ln1089_3_fu_430_p1;
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
#0 v548_fu_74 = 3'd0;
#0 v547_fu_78 = 3'd0;
#0 indvar_flatten1234_fu_82 = 6'd0;
#0 v546_fu_86 = 10'd0;
#0 indvar_flatten1249_fu_90 = 14'd0;
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
            indvar_flatten1234_fu_82 <= 6'd0;
        end else if (((icmp_ln1085_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1234_fu_82 <= select_ln1086_1_fu_313_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1249_fu_90 <= 14'd0;
        end else if (((icmp_ln1085_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten1249_fu_90 <= add_ln1085_1_fu_159_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v546_fu_86 <= 10'd0;
        end else if (((icmp_ln1085_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v546_fu_86 <= select_ln1085_2_fu_229_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v547_fu_78 <= 3'd0;
        end else if (((icmp_ln1085_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v547_fu_78 <= select_ln1086_fu_275_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v548_fu_74 <= 3'd0;
        end else if (((icmp_ln1085_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v548_fu_74 <= add_ln1089_fu_301_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1088_reg_498 <= add_ln1088_fu_295_p2;
        add_ln1089_reg_503 <= add_ln1089_fu_301_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        indvars_iv_next1349_mid2_reg_493 <= indvars_iv_next1349_mid2_fu_267_p3;
        select_ln1085_2_reg_482 <= select_ln1085_2_fu_229_p3;
        v548_mid2_reg_488 <= v548_mid2_fu_253_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln1089_2_reg_513 <= add_ln1089_2_fu_433_p2;
    end
end
always @ (*) begin
    if (((icmp_ln1085_fu_153_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        v52_ce1_local = 1'b1;
    end else begin
        v52_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v52_we1_local = 1'b1;
    end else begin
        v52_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v53_ce0_local = 1'b1;
    end else begin
        v53_ce0_local = 1'b0;
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
assign add_ln1085_1_fu_159_p2 = (indvar_flatten1249_fu_90 + 14'd1);
assign add_ln1085_fu_177_p2 = (v546_fu_86 + 10'd1);
assign add_ln1086_fu_307_p2 = (indvar_flatten1234_fu_82 + 6'd1);
assign add_ln1088_1_fu_419_p2 = (tmp_116_fu_370_p3 + zext_ln1088_1_fu_416_p1);
assign add_ln1088_fu_295_p2 = (tmp_s_fu_283_p3 + zext_ln1088_fu_291_p1);
assign add_ln1089_1_fu_380_p2 = (sub_ln1089_fu_364_p2 + zext_ln1089_1_fu_377_p1);
assign add_ln1089_2_fu_433_p2 = (sub_ln1087_fu_410_p2 + zext_ln1089_3_fu_430_p1);
assign add_ln1089_fu_301_p2 = (v548_mid2_fu_253_p3 + 3'd1);
assign and_ln1085_fu_223_p2 = (xor_ln1085_fu_211_p2 & icmp_ln1087_fu_217_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_154_fu_247_p2 = (icmp_ln1086_fu_183_p2 | and_ln1085_fu_223_p2);
assign empty_fu_237_p1 = select_ln1085_2_fu_229_p3[8:0];
assign icmp_ln1085_fu_153_p2 = ((indvar_flatten1249_fu_90 == 14'd8192) ? 1'b1 : 1'b0);
assign icmp_ln1086_fu_183_p2 = ((indvar_flatten1234_fu_82 == 6'd16) ? 1'b1 : 1'b0);
assign icmp_ln1087_fu_217_p2 = ((v548_fu_74 == 3'd4) ? 1'b1 : 1'b0);
assign indvars_iv_next1349395_fu_197_p2 = (v547_fu_78 + 3'd1);
assign indvars_iv_next1349_dup_fu_241_p2 = (select_ln1085_fu_189_p3 + 3'd1);
assign indvars_iv_next1349_mid1_fu_261_p2 = (select_ln1085_fu_189_p3 + 3'd2);
assign indvars_iv_next1349_mid2_fu_267_p3 = ((and_ln1085_fu_223_p2[0:0] == 1'b1) ? indvars_iv_next1349_mid1_fu_261_p2 : select_ln1085_1_fu_203_p3);
assign p_shl_fu_346_p3 = {{select_ln1085_2_reg_482}, {3'd0}};
assign select_ln1085_1_fu_203_p3 = ((icmp_ln1086_fu_183_p2[0:0] == 1'b1) ? 3'd1 : indvars_iv_next1349395_fu_197_p2);
assign select_ln1085_2_fu_229_p3 = ((icmp_ln1086_fu_183_p2[0:0] == 1'b1) ? add_ln1085_fu_177_p2 : v546_fu_86);
assign select_ln1085_fu_189_p3 = ((icmp_ln1086_fu_183_p2[0:0] == 1'b1) ? 3'd0 : v547_fu_78);
assign select_ln1086_1_fu_313_p3 = ((icmp_ln1086_fu_183_p2[0:0] == 1'b1) ? 6'd1 : add_ln1086_fu_307_p2);
assign select_ln1086_fu_275_p3 = ((and_ln1085_fu_223_p2[0:0] == 1'b1) ? indvars_iv_next1349_dup_fu_241_p2 : select_ln1085_fu_189_p3);
assign sub_ln1087_fu_410_p2 = (tmp_118_fu_398_p3 - zext_ln1089_2_fu_406_p1);
assign sub_ln1089_fu_364_p2 = (p_shl_fu_346_p3 - zext_ln1089_fu_360_p1);
assign tmp_116_fu_370_p3 = {{add_ln1088_reg_498}, {2'd0}};
assign tmp_117_fu_390_p3 = {{add_ln1089_1_fu_380_p2}, {1'd0}};
assign tmp_118_fu_398_p3 = {{trunc_ln1089_fu_386_p1}, {3'd0}};
assign tmp_fu_353_p3 = {{select_ln1085_2_reg_482}, {1'd0}};
assign tmp_s_fu_283_p3 = {{empty_fu_237_p1}, {2'd0}};
assign trunc_ln1089_fu_386_p1 = add_ln1089_1_fu_380_p2[11:0];
assign v52_address1 = zext_ln1089_4_fu_439_p1;
assign v52_ce1 = v52_ce1_local;
assign v52_d1 = v53_q0;
assign v52_we1 = v52_we1_local;
assign v53_address0 = zext_ln1088_2_fu_425_p1;
assign v53_ce0 = v53_ce0_local;
assign v548_mid2_fu_253_p3 = ((empty_154_fu_247_p2[0:0] == 1'b1) ? 3'd0 : v548_fu_74);
assign xor_ln1085_fu_211_p2 = (icmp_ln1086_fu_183_p2 ^ 1'd1);
assign zext_ln1088_1_fu_416_p1 = v548_mid2_reg_488;
assign zext_ln1088_2_fu_425_p1 = add_ln1088_1_fu_419_p2;
assign zext_ln1088_fu_291_p1 = select_ln1086_fu_275_p3;
assign zext_ln1089_1_fu_377_p1 = indvars_iv_next1349_mid2_reg_493;
assign zext_ln1089_2_fu_406_p1 = tmp_117_fu_390_p3;
assign zext_ln1089_3_fu_430_p1 = add_ln1089_reg_503;
assign zext_ln1089_4_fu_439_p1 = add_ln1089_2_reg_513;
assign zext_ln1089_fu_360_p1 = tmp_fu_353_p3;
endmodule 
