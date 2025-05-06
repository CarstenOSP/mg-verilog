
module main_graph_main_graph_Pipeline_VITIS_LOOP_795_184_VITIS_LOOP_796_185_VITIS_LOOP_797_186 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v22_address0,v22_ce0,v22_q0,v21_address1,v21_ce1,v21_we1,v21_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] v22_address0;
output   v22_ce0;
input  [6:0] v22_q0;
output  [12:0] v21_address1;
output   v21_ce1;
output   v21_we1;
output  [6:0] v21_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln795_fu_145_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] empty_fu_229_p1;
reg   [8:0] empty_reg_428;
reg   [8:0] empty_reg_428_pp0_iter1_reg;
wire   [1:0] v399_mid2_fu_245_p3;
reg   [1:0] v399_mid2_reg_433;
wire   [1:0] indvars_iv_next703_mid2_fu_279_p3;
reg   [1:0] indvars_iv_next703_mid2_reg_438;
reg   [1:0] indvars_iv_next703_mid2_reg_438_pp0_iter1_reg;
wire   [9:0] add_ln798_fu_305_p2;
reg   [9:0] add_ln798_reg_443;
wire   [1:0] add_ln799_fu_311_p2;
reg   [1:0] add_ln799_reg_448;
reg   [1:0] add_ln799_reg_448_pp0_iter1_reg;
wire   [63:0] zext_ln798_2_fu_372_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln799_fu_384_p1;
reg   [1:0] v399_fu_66;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_v399_load;
reg   [1:0] v398_fu_70;
wire   [1:0] select_ln796_fu_287_p3;
reg   [1:0] ap_sig_allocacmp_v398_load;
reg   [3:0] indvar_flatten2193_fu_74;
wire   [3:0] select_ln796_1_fu_323_p3;
reg   [3:0] ap_sig_allocacmp_indvar_flatten2193_load;
reg   [9:0] v397_fu_78;
wire   [9:0] select_ln795_2_fu_221_p3;
reg   [9:0] ap_sig_allocacmp_v397_load;
reg   [11:0] indvar_flatten2208_fu_82;
wire   [11:0] add_ln795_1_fu_151_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten2208_load;
reg    v22_ce0_local;
reg    v21_we1_local;
reg    v21_ce1_local;
wire   [0:0] icmp_ln796_fu_175_p2;
wire   [1:0] indvars_iv_next703590_fu_189_p2;
wire   [0:0] icmp_ln797_fu_209_p2;
wire   [0:0] xor_ln795_fu_203_p2;
wire   [9:0] add_ln795_fu_169_p2;
wire   [1:0] select_ln795_fu_181_p3;
wire   [0:0] and_ln795_fu_215_p2;
wire   [0:0] empty_16_fu_239_p2;
wire   [0:0] bit_sel2_fu_253_p3;
wire   [0:0] xor_val138_fu_261_p2;
wire   [0:0] empty_17_fu_267_p1;
wire   [1:0] indvars_iv_next703_mid1_fu_271_p3;
wire   [1:0] select_ln795_1_fu_195_p3;
wire   [1:0] indvars_iv_next703_dup_fu_233_p2;
wire   [9:0] shl_ln798_fu_295_p2;
wire   [9:0] zext_ln798_fu_301_p1;
wire   [3:0] add_ln796_fu_317_p2;
wire   [10:0] tmp_fu_356_p3;
wire   [10:0] zext_ln798_1_fu_363_p1;
wire   [10:0] add_ln798_1_fu_366_p2;
wire   [12:0] tmp_s_fu_377_p4;
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
#0 v399_fu_66 = 2'd0;
#0 v398_fu_70 = 2'd0;
#0 indvar_flatten2193_fu_74 = 4'd0;
#0 v397_fu_78 = 10'd0;
#0 indvar_flatten2208_fu_82 = 12'd0;
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
        if (((icmp_ln795_fu_145_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten2193_fu_74 <= select_ln796_1_fu_323_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2193_fu_74 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln795_fu_145_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten2208_fu_82 <= add_ln795_1_fu_151_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2208_fu_82 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln795_fu_145_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v397_fu_78 <= select_ln795_2_fu_221_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v397_fu_78 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln795_fu_145_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v398_fu_70 <= select_ln796_fu_287_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v398_fu_70 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln795_fu_145_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v399_fu_66 <= add_ln799_fu_311_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v399_fu_66 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln798_reg_443 <= add_ln798_fu_305_p2;
        add_ln799_reg_448 <= add_ln799_fu_311_p2;
        add_ln799_reg_448_pp0_iter1_reg <= add_ln799_reg_448;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_reg_428 <= empty_fu_229_p1;
        empty_reg_428_pp0_iter1_reg <= empty_reg_428;
        indvars_iv_next703_mid2_reg_438 <= indvars_iv_next703_mid2_fu_279_p3;
        indvars_iv_next703_mid2_reg_438_pp0_iter1_reg <= indvars_iv_next703_mid2_reg_438;
        v399_mid2_reg_433 <= v399_mid2_fu_245_p3;
    end
end
always @ (*) begin
    if (((icmp_ln795_fu_145_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten2193_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten2193_load = indvar_flatten2193_fu_74;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten2208_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten2208_load = indvar_flatten2208_fu_82;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v397_load = 10'd0;
    end else begin
        ap_sig_allocacmp_v397_load = v397_fu_78;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v398_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v398_load = v398_fu_70;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v399_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v399_load = v399_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v21_ce1_local = 1'b1;
    end else begin
        v21_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v21_we1_local = 1'b1;
    end else begin
        v21_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v22_ce0_local = 1'b1;
    end else begin
        v22_ce0_local = 1'b0;
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
assign add_ln795_1_fu_151_p2 = (ap_sig_allocacmp_indvar_flatten2208_load + 12'd1);
assign add_ln795_fu_169_p2 = (ap_sig_allocacmp_v397_load + 10'd1);
assign add_ln796_fu_317_p2 = (ap_sig_allocacmp_indvar_flatten2193_load + 4'd1);
assign add_ln798_1_fu_366_p2 = (tmp_fu_356_p3 + zext_ln798_1_fu_363_p1);
assign add_ln798_fu_305_p2 = (shl_ln798_fu_295_p2 + zext_ln798_fu_301_p1);
assign add_ln799_fu_311_p2 = (v399_mid2_fu_245_p3 + 2'd1);
assign and_ln795_fu_215_p2 = (xor_ln795_fu_203_p2 & icmp_ln797_fu_209_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bit_sel2_fu_253_p3 = select_ln795_fu_181_p3[2'd1];
assign empty_16_fu_239_p2 = (icmp_ln796_fu_175_p2 | and_ln795_fu_215_p2);
assign empty_17_fu_267_p1 = select_ln795_fu_181_p3[0:0];
assign empty_fu_229_p1 = select_ln795_2_fu_221_p3[8:0];
assign icmp_ln795_fu_145_p2 = ((ap_sig_allocacmp_indvar_flatten2208_load == 12'd2048) ? 1'b1 : 1'b0);
assign icmp_ln796_fu_175_p2 = ((ap_sig_allocacmp_indvar_flatten2193_load == 4'd4) ? 1'b1 : 1'b0);
assign icmp_ln797_fu_209_p2 = ((ap_sig_allocacmp_v399_load == 2'd2) ? 1'b1 : 1'b0);
assign indvars_iv_next703590_fu_189_p2 = (ap_sig_allocacmp_v398_load + 2'd1);
assign indvars_iv_next703_dup_fu_233_p2 = (select_ln795_fu_181_p3 + 2'd1);
assign indvars_iv_next703_mid1_fu_271_p3 = {{xor_val138_fu_261_p2}, {empty_17_fu_267_p1}};
assign indvars_iv_next703_mid2_fu_279_p3 = ((and_ln795_fu_215_p2[0:0] == 1'b1) ? indvars_iv_next703_mid1_fu_271_p3 : select_ln795_1_fu_195_p3);
assign select_ln795_1_fu_195_p3 = ((icmp_ln796_fu_175_p2[0:0] == 1'b1) ? 2'd1 : indvars_iv_next703590_fu_189_p2);
assign select_ln795_2_fu_221_p3 = ((icmp_ln796_fu_175_p2[0:0] == 1'b1) ? add_ln795_fu_169_p2 : ap_sig_allocacmp_v397_load);
assign select_ln795_fu_181_p3 = ((icmp_ln796_fu_175_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v398_load);
assign select_ln796_1_fu_323_p3 = ((icmp_ln796_fu_175_p2[0:0] == 1'b1) ? 4'd1 : add_ln796_fu_317_p2);
assign select_ln796_fu_287_p3 = ((and_ln795_fu_215_p2[0:0] == 1'b1) ? indvars_iv_next703_dup_fu_233_p2 : select_ln795_fu_181_p3);
assign shl_ln798_fu_295_p2 = select_ln795_2_fu_221_p3 << 10'd1;
assign tmp_fu_356_p3 = {{add_ln798_reg_443}, {1'd0}};
assign tmp_s_fu_377_p4 = {{{empty_reg_428_pp0_iter1_reg}, {indvars_iv_next703_mid2_reg_438_pp0_iter1_reg}}, {add_ln799_reg_448_pp0_iter1_reg}};
assign v21_address1 = zext_ln799_fu_384_p1;
assign v21_ce1 = v21_ce1_local;
assign v21_d1 = v22_q0;
assign v21_we1 = v21_we1_local;
assign v22_address0 = zext_ln798_2_fu_372_p1;
assign v22_ce0 = v22_ce0_local;
assign v399_mid2_fu_245_p3 = ((empty_16_fu_239_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v399_load);
assign xor_ln795_fu_203_p2 = (icmp_ln796_fu_175_p2 ^ 1'd1);
assign xor_val138_fu_261_p2 = (bit_sel2_fu_253_p3 ^ 1'd1);
assign zext_ln798_1_fu_363_p1 = v399_mid2_reg_433;
assign zext_ln798_2_fu_372_p1 = add_ln798_1_fu_366_p2;
assign zext_ln798_fu_301_p1 = select_ln796_fu_287_p3;
assign zext_ln799_fu_384_p1 = tmp_s_fu_377_p4;
endmodule 
