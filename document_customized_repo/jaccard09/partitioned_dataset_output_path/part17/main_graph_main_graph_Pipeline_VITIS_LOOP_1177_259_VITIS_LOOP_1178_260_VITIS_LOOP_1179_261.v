
module main_graph_main_graph_Pipeline_VITIS_LOOP_1177_259_VITIS_LOOP_1178_260_VITIS_LOOP_1179_261 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v32_address1,v32_ce1,v32_we1,v32_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v32_address1;
output   v32_ce1;
output   v32_we1;
output  [6:0] v32_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1177_fu_132_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] v612_mid2_fu_219_p3;
reg   [2:0] v612_mid2_reg_392;
wire   [12:0] add_ln1180_fu_265_p2;
reg   [12:0] add_ln1180_reg_397;
wire   [11:0] trunc_ln1180_fu_271_p1;
reg   [11:0] trunc_ln1180_reg_402;
wire   [63:0] zext_ln1180_4_fu_348_p1;
wire    ap_block_pp0_stage0;
reg   [2:0] v612_fu_66;
wire   [2:0] add_ln1179_fu_275_p2;
wire    ap_loop_init;
reg   [2:0] v611_fu_70;
wire   [2:0] select_ln1178_fu_227_p3;
reg   [5:0] indvar_flatten2999_fu_74;
wire   [5:0] select_ln1178_1_fu_287_p3;
reg   [9:0] v610_fu_78;
wire   [9:0] select_ln1177_1_fu_199_p3;
reg   [14:0] indvar_flatten3012_fu_82;
wire   [14:0] add_ln1177_1_fu_138_p2;
reg   [14:0] ap_sig_allocacmp_indvar_flatten3012_load;
reg    v32_we1_local;
reg    v32_ce1_local;
wire   [0:0] icmp_ln1178_fu_167_p2;
wire   [0:0] icmp_ln1179_fu_187_p2;
wire   [0:0] xor_ln1177_fu_181_p2;
wire   [9:0] add_ln1177_fu_161_p2;
wire   [2:0] select_ln1177_fu_173_p3;
wire   [0:0] and_ln1177_fu_193_p2;
wire   [0:0] empty_fu_213_p2;
wire   [2:0] add_ln1178_fu_207_p2;
wire   [10:0] tmp_fu_243_p3;
wire   [12:0] p_shl8_fu_235_p3;
wire   [12:0] zext_ln1180_fu_251_p1;
wire   [12:0] sub_ln1180_fu_255_p2;
wire   [12:0] zext_ln1180_1_fu_261_p1;
wire   [5:0] add_ln1178_1_fu_281_p2;
wire   [13:0] tmp_151_fu_315_p3;
wire   [14:0] tmp_152_fu_322_p3;
wire   [14:0] zext_ln1180_2_fu_329_p1;
wire   [14:0] sub_ln1179_fu_333_p2;
wire   [14:0] zext_ln1180_3_fu_339_p1;
wire   [14:0] add_ln1180_1_fu_342_p2;
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
#0 v612_fu_66 = 3'd0;
#0 v611_fu_70 = 3'd0;
#0 indvar_flatten2999_fu_74 = 6'd0;
#0 v610_fu_78 = 10'd0;
#0 indvar_flatten3012_fu_82 = 15'd0;
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
            indvar_flatten2999_fu_74 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten2999_fu_74 <= select_ln1178_1_fu_287_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1177_fu_132_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten3012_fu_82 <= add_ln1177_1_fu_138_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten3012_fu_82 <= 15'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v610_fu_78 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v610_fu_78 <= select_ln1177_1_fu_199_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v611_fu_70 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v611_fu_70 <= select_ln1178_fu_227_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v612_fu_66 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v612_fu_66 <= add_ln1179_fu_275_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln1180_reg_397 <= add_ln1180_fu_265_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        trunc_ln1180_reg_402 <= trunc_ln1180_fu_271_p1;
        v612_mid2_reg_392 <= v612_mid2_fu_219_p3;
    end
end
always @ (*) begin
    if (((icmp_ln1177_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten3012_load = 15'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten3012_load = indvar_flatten3012_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v32_ce1_local = 1'b1;
    end else begin
        v32_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v32_we1_local = 1'b1;
    end else begin
        v32_we1_local = 1'b0;
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
assign add_ln1177_1_fu_138_p2 = (ap_sig_allocacmp_indvar_flatten3012_load + 15'd1);
assign add_ln1177_fu_161_p2 = (v610_fu_78 + 10'd1);
assign add_ln1178_1_fu_281_p2 = (indvar_flatten2999_fu_74 + 6'd1);
assign add_ln1178_fu_207_p2 = (select_ln1177_fu_173_p3 + 3'd1);
assign add_ln1179_fu_275_p2 = (v612_mid2_fu_219_p3 + 3'd1);
assign add_ln1180_1_fu_342_p2 = (sub_ln1179_fu_333_p2 + zext_ln1180_3_fu_339_p1);
assign add_ln1180_fu_265_p2 = (sub_ln1180_fu_255_p2 + zext_ln1180_1_fu_261_p1);
assign and_ln1177_fu_193_p2 = (xor_ln1177_fu_181_p2 & icmp_ln1179_fu_187_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_213_p2 = (icmp_ln1178_fu_167_p2 | and_ln1177_fu_193_p2);
assign icmp_ln1177_fu_132_p2 = ((ap_sig_allocacmp_indvar_flatten3012_load == 15'd18432) ? 1'b1 : 1'b0);
assign icmp_ln1178_fu_167_p2 = ((indvar_flatten2999_fu_74 == 6'd36) ? 1'b1 : 1'b0);
assign icmp_ln1179_fu_187_p2 = ((v612_fu_66 == 3'd6) ? 1'b1 : 1'b0);
assign p_shl8_fu_235_p3 = {{select_ln1177_1_fu_199_p3}, {3'd0}};
assign select_ln1177_1_fu_199_p3 = ((icmp_ln1178_fu_167_p2[0:0] == 1'b1) ? add_ln1177_fu_161_p2 : v610_fu_78);
assign select_ln1177_fu_173_p3 = ((icmp_ln1178_fu_167_p2[0:0] == 1'b1) ? 3'd0 : v611_fu_70);
assign select_ln1178_1_fu_287_p3 = ((icmp_ln1178_fu_167_p2[0:0] == 1'b1) ? 6'd1 : add_ln1178_1_fu_281_p2);
assign select_ln1178_fu_227_p3 = ((and_ln1177_fu_193_p2[0:0] == 1'b1) ? add_ln1178_fu_207_p2 : select_ln1177_fu_173_p3);
assign sub_ln1179_fu_333_p2 = (tmp_152_fu_322_p3 - zext_ln1180_2_fu_329_p1);
assign sub_ln1180_fu_255_p2 = (p_shl8_fu_235_p3 - zext_ln1180_fu_251_p1);
assign tmp_151_fu_315_p3 = {{add_ln1180_reg_397}, {1'd0}};
assign tmp_152_fu_322_p3 = {{trunc_ln1180_reg_402}, {3'd0}};
assign tmp_fu_243_p3 = {{select_ln1177_1_fu_199_p3}, {1'd0}};
assign trunc_ln1180_fu_271_p1 = add_ln1180_fu_265_p2[11:0];
assign v32_address1 = zext_ln1180_4_fu_348_p1;
assign v32_ce1 = v32_ce1_local;
assign v32_d1 = 7'd0;
assign v32_we1 = v32_we1_local;
assign v612_mid2_fu_219_p3 = ((empty_fu_213_p2[0:0] == 1'b1) ? 3'd0 : v612_fu_66);
assign xor_ln1177_fu_181_p2 = (icmp_ln1178_fu_167_p2 ^ 1'd1);
assign zext_ln1180_1_fu_261_p1 = select_ln1178_fu_227_p3;
assign zext_ln1180_2_fu_329_p1 = tmp_151_fu_315_p3;
assign zext_ln1180_3_fu_339_p1 = v612_mid2_reg_392;
assign zext_ln1180_4_fu_348_p1 = add_ln1180_1_fu_342_p2;
assign zext_ln1180_fu_251_p1 = tmp_fu_243_p3;
endmodule 
