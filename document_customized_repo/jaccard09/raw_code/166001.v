module main_graph_main_graph_Pipeline_VITIS_LOOP_411_64_VITIS_LOOP_412_65_VITIS_LOOP_413_66 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v46_address0,v46_ce0,v46_q0,v45_address1,v45_ce1,v45_we1,v45_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v46_address0;
output   v46_ce0;
input  [6:0] v46_q0;
output  [13:0] v45_address1;
output   v45_ce1;
output   v45_we1;
output  [6:0] v45_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln411_fu_149_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] select_ln411_2_fu_225_p3;
reg   [7:0] select_ln411_2_reg_482;
wire   [3:0] v175_mid2_fu_249_p3;
reg   [3:0] v175_mid2_reg_488;
wire   [3:0] indvars_iv_next1083_mid2_fu_263_p3;
reg   [3:0] indvars_iv_next1083_mid2_reg_493;
wire   [9:0] add_ln414_fu_291_p2;
reg   [9:0] add_ln414_reg_498;
wire   [3:0] add_ln415_fu_297_p2;
reg   [3:0] add_ln415_reg_503;
wire   [13:0] add_ln415_2_fu_433_p2;
reg   [13:0] add_ln415_2_reg_513;
wire   [63:0] zext_ln414_2_fu_425_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln415_4_fu_439_p1;
reg   [3:0] v175_fu_70;
wire    ap_loop_init;
reg   [3:0] v174_fu_74;
wire   [3:0] select_ln412_fu_271_p3;
reg   [7:0] indvar_flatten657_fu_78;
wire   [7:0] select_ln412_1_fu_309_p3;
reg   [7:0] v173_fu_82;
reg   [13:0] indvar_flatten672_fu_86;
wire   [13:0] add_ln411_1_fu_155_p2;
reg    v46_ce0_local;
reg    v45_we1_local;
reg    v45_ce1_local;
wire   [0:0] icmp_ln412_fu_179_p2;
wire   [3:0] indvars_iv_next1083286_fu_193_p2;
wire   [0:0] icmp_ln413_fu_213_p2;
wire   [0:0] xor_ln411_fu_207_p2;
wire   [7:0] add_ln411_fu_173_p2;
wire   [3:0] select_ln411_fu_185_p3;
wire   [0:0] and_ln411_fu_219_p2;
wire   [0:0] empty_95_fu_243_p2;
wire   [3:0] indvars_iv_next1083_mid1_fu_257_p2;
wire   [3:0] select_ln411_1_fu_199_p3;
wire   [3:0] indvars_iv_next1083_dup_fu_237_p2;
wire   [6:0] empty_fu_233_p1;
wire   [9:0] tmp_s_fu_279_p3;
wire   [9:0] zext_ln414_fu_287_p1;
wire   [7:0] add_ln412_fu_303_p2;
wire   [10:0] tmp_fu_342_p3;
wire   [8:0] tmp_69_fu_353_p3;
wire   [11:0] zext_ln415_fu_349_p1;
wire   [11:0] zext_ln415_1_fu_360_p1;
wire   [11:0] add_ln415_3_fu_364_p2;
wire   [11:0] zext_ln415_2_fu_377_p1;
wire   [11:0] add_ln415_1_fu_380_p2;
wire   [10:0] trunc_ln415_fu_386_p1;
wire   [12:0] tmp_71_fu_398_p3;
wire   [13:0] p_shl_fu_390_p3;
wire   [13:0] zext_ln413_fu_406_p1;
wire   [12:0] tmp_70_fu_370_p3;
wire   [12:0] zext_ln414_1_fu_416_p1;
wire   [12:0] add_ln414_1_fu_419_p2;
wire   [13:0] add_ln413_fu_410_p2;
wire   [13:0] zext_ln415_3_fu_430_p1;
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
#0 v175_fu_70 = 4'd0;
#0 v174_fu_74 = 4'd0;
#0 indvar_flatten657_fu_78 = 8'd0;
#0 v173_fu_82 = 8'd0;
#0 indvar_flatten672_fu_86 = 14'd0;
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
            indvar_flatten657_fu_78 <= 8'd0;
        end else if (((icmp_ln411_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten657_fu_78 <= select_ln412_1_fu_309_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten672_fu_86 <= 14'd0;
        end else if (((icmp_ln411_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten672_fu_86 <= add_ln411_1_fu_155_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v173_fu_82 <= 8'd0;
        end else if (((icmp_ln411_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v173_fu_82 <= select_ln411_2_fu_225_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v174_fu_74 <= 4'd0;
        end else if (((icmp_ln411_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v174_fu_74 <= select_ln412_fu_271_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v175_fu_70 <= 4'd0;
        end else if (((icmp_ln411_fu_149_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v175_fu_70 <= add_ln415_fu_297_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln414_reg_498 <= add_ln414_fu_291_p2;
        add_ln415_reg_503 <= add_ln415_fu_297_p2;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        indvars_iv_next1083_mid2_reg_493 <= indvars_iv_next1083_mid2_fu_263_p3;
        select_ln411_2_reg_482 <= select_ln411_2_fu_225_p3;
        v175_mid2_reg_488 <= v175_mid2_fu_249_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln415_2_reg_513 <= add_ln415_2_fu_433_p2;
    end
end
always @ (*) begin
    if (((icmp_ln411_fu_149_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        v45_ce1_local = 1'b1;
    end else begin
        v45_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v45_we1_local = 1'b1;
    end else begin
        v45_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v46_ce0_local = 1'b1;
    end else begin
        v46_ce0_local = 1'b0;
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
assign add_ln411_1_fu_155_p2 = (indvar_flatten672_fu_86 + 14'd1);
assign add_ln411_fu_173_p2 = (v173_fu_82 + 8'd1);
assign add_ln412_fu_303_p2 = (indvar_flatten657_fu_78 + 8'd1);
assign add_ln413_fu_410_p2 = (p_shl_fu_390_p3 + zext_ln413_fu_406_p1);
assign add_ln414_1_fu_419_p2 = (tmp_70_fu_370_p3 + zext_ln414_1_fu_416_p1);
assign add_ln414_fu_291_p2 = (tmp_s_fu_279_p3 + zext_ln414_fu_287_p1);
assign add_ln415_1_fu_380_p2 = (add_ln415_3_fu_364_p2 + zext_ln415_2_fu_377_p1);
assign add_ln415_2_fu_433_p2 = (add_ln413_fu_410_p2 + zext_ln415_3_fu_430_p1);
assign add_ln415_3_fu_364_p2 = (zext_ln415_fu_349_p1 + zext_ln415_1_fu_360_p1);
assign add_ln415_fu_297_p2 = (v175_mid2_fu_249_p3 + 4'd1);
assign and_ln411_fu_219_p2 = (xor_ln411_fu_207_p2 & icmp_ln413_fu_213_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_95_fu_243_p2 = (icmp_ln412_fu_179_p2 | and_ln411_fu_219_p2);
assign empty_fu_233_p1 = select_ln411_2_fu_225_p3[6:0];
assign icmp_ln411_fu_149_p2 = ((indvar_flatten672_fu_86 == 14'd8192) ? 1'b1 : 1'b0);
assign icmp_ln412_fu_179_p2 = ((indvar_flatten657_fu_78 == 8'd64) ? 1'b1 : 1'b0);
assign icmp_ln413_fu_213_p2 = ((v175_fu_70 == 4'd8) ? 1'b1 : 1'b0);
assign indvars_iv_next1083286_fu_193_p2 = (v174_fu_74 + 4'd1);
assign indvars_iv_next1083_dup_fu_237_p2 = (select_ln411_fu_185_p3 + 4'd1);
assign indvars_iv_next1083_mid1_fu_257_p2 = (select_ln411_fu_185_p3 + 4'd2);
assign indvars_iv_next1083_mid2_fu_263_p3 = ((and_ln411_fu_219_p2[0:0] == 1'b1) ? indvars_iv_next1083_mid1_fu_257_p2 : select_ln411_1_fu_199_p3);
assign p_shl_fu_390_p3 = {{trunc_ln415_fu_386_p1}, {3'd0}};
assign select_ln411_1_fu_199_p3 = ((icmp_ln412_fu_179_p2[0:0] == 1'b1) ? 4'd1 : indvars_iv_next1083286_fu_193_p2);
assign select_ln411_2_fu_225_p3 = ((icmp_ln412_fu_179_p2[0:0] == 1'b1) ? add_ln411_fu_173_p2 : v173_fu_82);
assign select_ln411_fu_185_p3 = ((icmp_ln412_fu_179_p2[0:0] == 1'b1) ? 4'd0 : v174_fu_74);
assign select_ln412_1_fu_309_p3 = ((icmp_ln412_fu_179_p2[0:0] == 1'b1) ? 8'd1 : add_ln412_fu_303_p2);
assign select_ln412_fu_271_p3 = ((and_ln411_fu_219_p2[0:0] == 1'b1) ? indvars_iv_next1083_dup_fu_237_p2 : select_ln411_fu_185_p3);
assign tmp_69_fu_353_p3 = {{select_ln411_2_reg_482}, {1'd0}};
assign tmp_70_fu_370_p3 = {{add_ln414_reg_498}, {3'd0}};
assign tmp_71_fu_398_p3 = {{add_ln415_1_fu_380_p2}, {1'd0}};
assign tmp_fu_342_p3 = {{select_ln411_2_reg_482}, {3'd0}};
assign tmp_s_fu_279_p3 = {{empty_fu_233_p1}, {3'd0}};
assign trunc_ln415_fu_386_p1 = add_ln415_1_fu_380_p2[10:0];
assign v175_mid2_fu_249_p3 = ((empty_95_fu_243_p2[0:0] == 1'b1) ? 4'd0 : v175_fu_70);
assign v45_address1 = zext_ln415_4_fu_439_p1;
assign v45_ce1 = v45_ce1_local;
assign v45_d1 = v46_q0;
assign v45_we1 = v45_we1_local;
assign v46_address0 = zext_ln414_2_fu_425_p1;
assign v46_ce0 = v46_ce0_local;
assign xor_ln411_fu_207_p2 = (icmp_ln412_fu_179_p2 ^ 1'd1);
assign zext_ln413_fu_406_p1 = tmp_71_fu_398_p3;
assign zext_ln414_1_fu_416_p1 = v175_mid2_reg_488;
assign zext_ln414_2_fu_425_p1 = add_ln414_1_fu_419_p2;
assign zext_ln414_fu_287_p1 = select_ln412_fu_271_p3;
assign zext_ln415_1_fu_360_p1 = tmp_69_fu_353_p3;
assign zext_ln415_2_fu_377_p1 = indvars_iv_next1083_mid2_reg_493;
assign zext_ln415_3_fu_430_p1 = add_ln415_reg_503;
assign zext_ln415_4_fu_439_p1 = add_ln415_2_reg_513;
assign zext_ln415_fu_349_p1 = tmp_fu_342_p3;
endmodule 