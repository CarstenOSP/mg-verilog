module main_graph_main_graph_Pipeline_VITIS_LOOP_473_52_VITIS_LOOP_474_53_VITIS_LOOP_475_54 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v78_address0,v78_ce0,v78_q0,v77_address1,v77_ce1,v77_we1,v77_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v78_address0;
output   v78_ce0;
input  [6:0] v78_q0;
output  [16:0] v77_address1;
output   v77_ce1;
output   v77_we1;
output  [6:0] v77_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln473_fu_153_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln474_fu_168_p2;
reg   [0:0] icmp_ln474_reg_483;
wire   [12:0] add_ln477_1_fu_362_p2;
reg   [12:0] add_ln477_1_reg_492;
wire   [11:0] trunc_ln477_fu_368_p1;
reg   [11:0] trunc_ln477_reg_497;
wire   [15:0] add_ln476_1_fu_376_p2;
reg   [15:0] add_ln476_1_reg_502;
wire   [5:0] add_ln477_fu_382_p2;
reg   [5:0] add_ln477_reg_507;
wire   [16:0] add_ln477_2_fu_434_p2;
reg   [16:0] add_ln477_2_reg_517;
wire   [63:0] zext_ln476_2_fu_427_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln477_4_fu_440_p1;
reg   [5:0] v186_fu_74;
wire    ap_loop_init;
reg   [5:0] v185_fu_78;
wire   [5:0] select_ln474_fu_294_p3;
reg   [11:0] indvar_flatten485_fu_82;
wire   [11:0] select_ln474_1_fu_180_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten485_load;
reg   [6:0] v184_fu_86;
wire   [6:0] select_ln473_2_fu_250_p3;
reg   [16:0] indvar_flatten500_fu_90;
wire   [16:0] add_ln473_1_fu_159_p2;
reg   [16:0] ap_sig_allocacmp_indvar_flatten500_load;
reg    v78_ce0_local;
reg    v77_we1_local;
reg    v77_ce1_local;
wire   [11:0] add_ln474_fu_174_p2;
wire   [5:0] indvars_iv_next1824309_fu_220_p2;
wire   [0:0] icmp_ln475_fu_238_p2;
wire   [0:0] xor_ln473_fu_233_p2;
wire   [6:0] add_ln473_fu_207_p2;
wire   [5:0] select_ln473_fu_213_p3;
wire   [0:0] and_ln473_fu_244_p2;
wire   [0:0] empty_112_fu_267_p2;
wire   [5:0] indvars_iv_next1824_mid1_fu_280_p2;
wire   [5:0] select_ln473_1_fu_226_p3;
wire   [5:0] indvars_iv_next1824_dup_fu_261_p2;
wire   [11:0] tmp_fu_302_p3;
wire   [7:0] tmp_101_fu_314_p3;
wire   [12:0] zext_ln477_fu_310_p1;
wire   [12:0] zext_ln477_1_fu_322_p1;
wire   [5:0] empty_fu_257_p1;
wire   [10:0] tmp_30_fu_332_p3;
wire   [10:0] zext_ln476_fu_340_p1;
wire   [10:0] add_ln476_fu_344_p2;
wire   [5:0] indvars_iv_next1824_mid2_fu_286_p3;
wire   [12:0] add_ln477_3_fu_326_p2;
wire   [12:0] zext_ln477_2_fu_358_p1;
wire   [5:0] v186_mid2_fu_272_p3;
wire   [15:0] tmp_102_fu_350_p3;
wire   [15:0] zext_ln476_1_fu_372_p1;
wire   [13:0] tmp_103_fu_410_p3;
wire   [16:0] p_shl_fu_403_p3;
wire   [16:0] zext_ln475_fu_417_p1;
wire   [16:0] add_ln475_fu_421_p2;
wire   [16:0] zext_ln477_3_fu_431_p1;
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
#0 v186_fu_74 = 6'd0;
#0 v185_fu_78 = 6'd0;
#0 indvar_flatten485_fu_82 = 12'd0;
#0 v184_fu_86 = 7'd0;
#0 indvar_flatten500_fu_90 = 17'd0;
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
        if (((icmp_ln473_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten485_fu_82 <= select_ln474_1_fu_180_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten485_fu_82 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln473_fu_153_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten500_fu_90 <= add_ln473_1_fu_159_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten500_fu_90 <= 17'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v184_fu_86 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v184_fu_86 <= select_ln473_2_fu_250_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v185_fu_78 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v185_fu_78 <= select_ln474_fu_294_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v186_fu_74 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v186_fu_74 <= add_ln477_fu_382_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln476_1_reg_502 <= add_ln476_1_fu_376_p2;
        add_ln477_1_reg_492 <= add_ln477_1_fu_362_p2;
        add_ln477_reg_507 <= add_ln477_fu_382_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln474_reg_483 <= icmp_ln474_fu_168_p2;
        trunc_ln477_reg_497 <= trunc_ln477_fu_368_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln477_2_reg_517 <= add_ln477_2_fu_434_p2;
    end
end
always @ (*) begin
    if (((icmp_ln473_fu_153_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten485_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten485_load = indvar_flatten485_fu_82;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten500_load = 17'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten500_load = indvar_flatten500_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v77_ce1_local = 1'b1;
    end else begin
        v77_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v77_we1_local = 1'b1;
    end else begin
        v77_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v78_ce0_local = 1'b1;
    end else begin
        v78_ce0_local = 1'b0;
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
assign add_ln473_1_fu_159_p2 = (ap_sig_allocacmp_indvar_flatten500_load + 17'd1);
assign add_ln473_fu_207_p2 = (v184_fu_86 + 7'd1);
assign add_ln474_fu_174_p2 = (ap_sig_allocacmp_indvar_flatten485_load + 12'd1);
assign add_ln475_fu_421_p2 = (p_shl_fu_403_p3 + zext_ln475_fu_417_p1);
assign add_ln476_1_fu_376_p2 = (tmp_102_fu_350_p3 + zext_ln476_1_fu_372_p1);
assign add_ln476_fu_344_p2 = (tmp_30_fu_332_p3 + zext_ln476_fu_340_p1);
assign add_ln477_1_fu_362_p2 = (add_ln477_3_fu_326_p2 + zext_ln477_2_fu_358_p1);
assign add_ln477_2_fu_434_p2 = (add_ln475_fu_421_p2 + zext_ln477_3_fu_431_p1);
assign add_ln477_3_fu_326_p2 = (zext_ln477_fu_310_p1 + zext_ln477_1_fu_322_p1);
assign add_ln477_fu_382_p2 = (v186_mid2_fu_272_p3 + 6'd1);
assign and_ln473_fu_244_p2 = (xor_ln473_fu_233_p2 & icmp_ln475_fu_238_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_112_fu_267_p2 = (icmp_ln474_reg_483 | and_ln473_fu_244_p2);
assign empty_fu_257_p1 = select_ln473_2_fu_250_p3[5:0];
assign icmp_ln473_fu_153_p2 = ((ap_sig_allocacmp_indvar_flatten500_load == 17'd65536) ? 1'b1 : 1'b0);
assign icmp_ln474_fu_168_p2 = ((ap_sig_allocacmp_indvar_flatten485_load == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln475_fu_238_p2 = ((v186_fu_74 == 6'd32) ? 1'b1 : 1'b0);
assign indvars_iv_next1824309_fu_220_p2 = (v185_fu_78 + 6'd1);
assign indvars_iv_next1824_dup_fu_261_p2 = (select_ln473_fu_213_p3 + 6'd1);
assign indvars_iv_next1824_mid1_fu_280_p2 = (select_ln473_fu_213_p3 + 6'd2);
assign indvars_iv_next1824_mid2_fu_286_p3 = ((and_ln473_fu_244_p2[0:0] == 1'b1) ? indvars_iv_next1824_mid1_fu_280_p2 : select_ln473_1_fu_226_p3);
assign p_shl_fu_403_p3 = {{trunc_ln477_reg_497}, {5'd0}};
assign select_ln473_1_fu_226_p3 = ((icmp_ln474_reg_483[0:0] == 1'b1) ? 6'd1 : indvars_iv_next1824309_fu_220_p2);
assign select_ln473_2_fu_250_p3 = ((icmp_ln474_reg_483[0:0] == 1'b1) ? add_ln473_fu_207_p2 : v184_fu_86);
assign select_ln473_fu_213_p3 = ((icmp_ln474_reg_483[0:0] == 1'b1) ? 6'd0 : v185_fu_78);
assign select_ln474_1_fu_180_p3 = ((icmp_ln474_fu_168_p2[0:0] == 1'b1) ? 12'd1 : add_ln474_fu_174_p2);
assign select_ln474_fu_294_p3 = ((and_ln473_fu_244_p2[0:0] == 1'b1) ? indvars_iv_next1824_dup_fu_261_p2 : select_ln473_fu_213_p3);
assign tmp_101_fu_314_p3 = {{select_ln473_2_fu_250_p3}, {1'd0}};
assign tmp_102_fu_350_p3 = {{add_ln476_fu_344_p2}, {5'd0}};
assign tmp_103_fu_410_p3 = {{add_ln477_1_reg_492}, {1'd0}};
assign tmp_30_fu_332_p3 = {{empty_fu_257_p1}, {5'd0}};
assign tmp_fu_302_p3 = {{select_ln473_2_fu_250_p3}, {5'd0}};
assign trunc_ln477_fu_368_p1 = add_ln477_1_fu_362_p2[11:0];
assign v186_mid2_fu_272_p3 = ((empty_112_fu_267_p2[0:0] == 1'b1) ? 6'd0 : v186_fu_74);
assign v77_address1 = zext_ln477_4_fu_440_p1;
assign v77_ce1 = v77_ce1_local;
assign v77_d1 = v78_q0;
assign v77_we1 = v77_we1_local;
assign v78_address0 = zext_ln476_2_fu_427_p1;
assign v78_ce0 = v78_ce0_local;
assign xor_ln473_fu_233_p2 = (icmp_ln474_reg_483 ^ 1'd1);
assign zext_ln475_fu_417_p1 = tmp_103_fu_410_p3;
assign zext_ln476_1_fu_372_p1 = v186_mid2_fu_272_p3;
assign zext_ln476_2_fu_427_p1 = add_ln476_1_reg_502;
assign zext_ln476_fu_340_p1 = select_ln474_fu_294_p3;
assign zext_ln477_1_fu_322_p1 = tmp_101_fu_314_p3;
assign zext_ln477_2_fu_358_p1 = indvars_iv_next1824_mid2_fu_286_p3;
assign zext_ln477_3_fu_431_p1 = add_ln477_reg_507;
assign zext_ln477_4_fu_440_p1 = add_ln477_2_reg_517;
assign zext_ln477_fu_310_p1 = tmp_fu_302_p3;
endmodule 