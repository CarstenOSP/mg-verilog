module main_graph_main_graph_Pipeline_VITIS_LOOP_548_106_VITIS_LOOP_549_107_VITIS_LOOP_550_108 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v36_address1,v36_ce1,v36_we1,v36_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v36_address1;
output   v36_ce1;
output   v36_we1;
output  [6:0] v36_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln548_fu_132_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] v256_mid2_fu_219_p3;
reg   [2:0] v256_mid2_reg_392;
wire   [11:0] add_ln551_fu_265_p2;
reg   [11:0] add_ln551_reg_397;
wire   [10:0] trunc_ln551_fu_271_p1;
reg   [10:0] trunc_ln551_reg_402;
wire   [63:0] zext_ln551_4_fu_348_p1;
wire    ap_block_pp0_stage0;
reg   [2:0] v256_fu_66;
wire   [2:0] add_ln550_fu_275_p2;
wire    ap_loop_init;
reg   [2:0] v255_fu_70;
wire   [2:0] select_ln549_fu_227_p3;
reg   [5:0] indvar_flatten1213_fu_74;
wire   [5:0] select_ln549_1_fu_287_p3;
reg   [8:0] v254_fu_78;
wire   [8:0] select_ln548_1_fu_199_p3;
reg   [13:0] indvar_flatten1226_fu_82;
wire   [13:0] add_ln548_1_fu_138_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1226_load;
reg    v36_we1_local;
reg    v36_ce1_local;
wire   [0:0] icmp_ln549_fu_167_p2;
wire   [0:0] icmp_ln550_fu_187_p2;
wire   [0:0] xor_ln548_fu_181_p2;
wire   [8:0] add_ln548_fu_161_p2;
wire   [2:0] select_ln548_fu_173_p3;
wire   [0:0] and_ln548_fu_193_p2;
wire   [0:0] empty_fu_213_p2;
wire   [2:0] add_ln549_fu_207_p2;
wire   [9:0] tmp_fu_243_p3;
wire   [11:0] p_shl8_fu_235_p3;
wire   [11:0] zext_ln551_fu_251_p1;
wire   [11:0] sub_ln551_fu_255_p2;
wire   [11:0] zext_ln551_1_fu_261_p1;
wire   [5:0] add_ln549_1_fu_281_p2;
wire   [12:0] tmp_39_fu_315_p3;
wire   [13:0] tmp_40_fu_322_p3;
wire   [13:0] zext_ln551_2_fu_329_p1;
wire   [13:0] sub_ln550_fu_333_p2;
wire   [13:0] zext_ln551_3_fu_339_p1;
wire   [13:0] add_ln551_1_fu_342_p2;
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
#0 v256_fu_66 = 3'd0;
#0 v255_fu_70 = 3'd0;
#0 indvar_flatten1213_fu_74 = 6'd0;
#0 v254_fu_78 = 9'd0;
#0 indvar_flatten1226_fu_82 = 14'd0;
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
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1213_fu_74 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1213_fu_74 <= select_ln549_1_fu_287_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln548_fu_132_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1226_fu_82 <= add_ln548_1_fu_138_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1226_fu_82 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v254_fu_78 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v254_fu_78 <= select_ln548_1_fu_199_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v255_fu_70 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v255_fu_70 <= select_ln549_fu_227_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v256_fu_66 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v256_fu_66 <= add_ln550_fu_275_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln551_reg_397 <= add_ln551_fu_265_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        trunc_ln551_reg_402 <= trunc_ln551_fu_271_p1;
        v256_mid2_reg_392 <= v256_mid2_fu_219_p3;
    end
end
always @ (*) begin
    if (((icmp_ln548_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten1226_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1226_load = indvar_flatten1226_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v36_ce1_local = 1'b1;
    end else begin
        v36_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v36_we1_local = 1'b1;
    end else begin
        v36_we1_local = 1'b0;
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
assign add_ln548_1_fu_138_p2 = (ap_sig_allocacmp_indvar_flatten1226_load + 14'd1);
assign add_ln548_fu_161_p2 = (v254_fu_78 + 9'd1);
assign add_ln549_1_fu_281_p2 = (indvar_flatten1213_fu_74 + 6'd1);
assign add_ln549_fu_207_p2 = (select_ln548_fu_173_p3 + 3'd1);
assign add_ln550_fu_275_p2 = (v256_mid2_fu_219_p3 + 3'd1);
assign add_ln551_1_fu_342_p2 = (sub_ln550_fu_333_p2 + zext_ln551_3_fu_339_p1);
assign add_ln551_fu_265_p2 = (sub_ln551_fu_255_p2 + zext_ln551_1_fu_261_p1);
assign and_ln548_fu_193_p2 = (xor_ln548_fu_181_p2 & icmp_ln550_fu_187_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_213_p2 = (icmp_ln549_fu_167_p2 | and_ln548_fu_193_p2);
assign icmp_ln548_fu_132_p2 = ((ap_sig_allocacmp_indvar_flatten1226_load == 14'd9216) ? 1'b1 : 1'b0);
assign icmp_ln549_fu_167_p2 = ((indvar_flatten1213_fu_74 == 6'd36) ? 1'b1 : 1'b0);
assign icmp_ln550_fu_187_p2 = ((v256_fu_66 == 3'd6) ? 1'b1 : 1'b0);
assign p_shl8_fu_235_p3 = {{select_ln548_1_fu_199_p3}, {3'd0}};
assign select_ln548_1_fu_199_p3 = ((icmp_ln549_fu_167_p2[0:0] == 1'b1) ? add_ln548_fu_161_p2 : v254_fu_78);
assign select_ln548_fu_173_p3 = ((icmp_ln549_fu_167_p2[0:0] == 1'b1) ? 3'd0 : v255_fu_70);
assign select_ln549_1_fu_287_p3 = ((icmp_ln549_fu_167_p2[0:0] == 1'b1) ? 6'd1 : add_ln549_1_fu_281_p2);
assign select_ln549_fu_227_p3 = ((and_ln548_fu_193_p2[0:0] == 1'b1) ? add_ln549_fu_207_p2 : select_ln548_fu_173_p3);
assign sub_ln550_fu_333_p2 = (tmp_40_fu_322_p3 - zext_ln551_2_fu_329_p1);
assign sub_ln551_fu_255_p2 = (p_shl8_fu_235_p3 - zext_ln551_fu_251_p1);
assign tmp_39_fu_315_p3 = {{add_ln551_reg_397}, {1'd0}};
assign tmp_40_fu_322_p3 = {{trunc_ln551_reg_402}, {3'd0}};
assign tmp_fu_243_p3 = {{select_ln548_1_fu_199_p3}, {1'd0}};
assign trunc_ln551_fu_271_p1 = add_ln551_fu_265_p2[10:0];
assign v256_mid2_fu_219_p3 = ((empty_fu_213_p2[0:0] == 1'b1) ? 3'd0 : v256_fu_66);
assign v36_address1 = zext_ln551_4_fu_348_p1;
assign v36_ce1 = v36_ce1_local;
assign v36_d1 = 7'd0;
assign v36_we1 = v36_we1_local;
assign xor_ln548_fu_181_p2 = (icmp_ln549_fu_167_p2 ^ 1'd1);
assign zext_ln551_1_fu_261_p1 = select_ln549_fu_227_p3;
assign zext_ln551_2_fu_329_p1 = tmp_39_fu_315_p3;
assign zext_ln551_3_fu_339_p1 = v256_mid2_reg_392;
assign zext_ln551_4_fu_348_p1 = add_ln551_1_fu_342_p2;
assign zext_ln551_fu_251_p1 = tmp_fu_243_p3;
endmodule 