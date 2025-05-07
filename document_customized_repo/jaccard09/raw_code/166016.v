module main_graph_main_graph_Pipeline_VITIS_LOOP_596_121_VITIS_LOOP_597_122_VITIS_LOOP_598_123 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v33_address1,v33_ce1,v33_we1,v33_d1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [14:0] v33_address1;
output   v33_ce1;
output   v33_we1;
output  [6:0] v33_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln596_fu_132_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] v284_mid2_fu_219_p3;
reg   [2:0] v284_mid2_reg_392;
wire   [12:0] add_ln599_fu_265_p2;
reg   [12:0] add_ln599_reg_397;
wire   [11:0] trunc_ln599_fu_271_p1;
reg   [11:0] trunc_ln599_reg_402;
wire   [63:0] zext_ln599_4_fu_348_p1;
wire    ap_block_pp0_stage0;
reg   [2:0] v284_fu_66;
wire   [2:0] add_ln598_fu_275_p2;
wire    ap_loop_init;
reg   [2:0] v283_fu_70;
wire   [2:0] select_ln597_fu_227_p3;
reg   [5:0] indvar_flatten1405_fu_74;
wire   [5:0] select_ln597_1_fu_287_p3;
reg   [9:0] v282_fu_78;
wire   [9:0] select_ln596_1_fu_199_p3;
reg   [14:0] indvar_flatten1418_fu_82;
wire   [14:0] add_ln596_1_fu_138_p2;
reg   [14:0] ap_sig_allocacmp_indvar_flatten1418_load;
reg    v33_we1_local;
reg    v33_ce1_local;
wire   [0:0] icmp_ln597_fu_167_p2;
wire   [0:0] icmp_ln598_fu_187_p2;
wire   [0:0] xor_ln596_fu_181_p2;
wire   [9:0] add_ln596_fu_161_p2;
wire   [2:0] select_ln596_fu_173_p3;
wire   [0:0] and_ln596_fu_193_p2;
wire   [0:0] empty_fu_213_p2;
wire   [2:0] add_ln597_fu_207_p2;
wire   [10:0] tmp_fu_243_p3;
wire   [12:0] p_shl8_fu_235_p3;
wire   [12:0] zext_ln599_fu_251_p1;
wire   [12:0] sub_ln599_fu_255_p2;
wire   [12:0] zext_ln599_1_fu_261_p1;
wire   [5:0] add_ln597_1_fu_281_p2;
wire   [13:0] tmp_28_fu_315_p3;
wire   [14:0] tmp_29_fu_322_p3;
wire   [14:0] zext_ln599_2_fu_329_p1;
wire   [14:0] sub_ln598_fu_333_p2;
wire   [14:0] zext_ln599_3_fu_339_p1;
wire   [14:0] add_ln599_1_fu_342_p2;
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
#0 v284_fu_66 = 3'd0;
#0 v283_fu_70 = 3'd0;
#0 indvar_flatten1405_fu_74 = 6'd0;
#0 v282_fu_78 = 10'd0;
#0 indvar_flatten1418_fu_82 = 15'd0;
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
            indvar_flatten1405_fu_74 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten1405_fu_74 <= select_ln597_1_fu_287_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln596_fu_132_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1418_fu_82 <= add_ln596_1_fu_138_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1418_fu_82 <= 15'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v282_fu_78 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v282_fu_78 <= select_ln596_1_fu_199_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v283_fu_70 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v283_fu_70 <= select_ln597_fu_227_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v284_fu_66 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v284_fu_66 <= add_ln598_fu_275_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln599_reg_397 <= add_ln599_fu_265_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        trunc_ln599_reg_402 <= trunc_ln599_fu_271_p1;
        v284_mid2_reg_392 <= v284_mid2_fu_219_p3;
    end
end
always @ (*) begin
    if (((icmp_ln596_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten1418_load = 15'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1418_load = indvar_flatten1418_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v33_ce1_local = 1'b1;
    end else begin
        v33_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v33_we1_local = 1'b1;
    end else begin
        v33_we1_local = 1'b0;
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
assign add_ln596_1_fu_138_p2 = (ap_sig_allocacmp_indvar_flatten1418_load + 15'd1);
assign add_ln596_fu_161_p2 = (v282_fu_78 + 10'd1);
assign add_ln597_1_fu_281_p2 = (indvar_flatten1405_fu_74 + 6'd1);
assign add_ln597_fu_207_p2 = (select_ln596_fu_173_p3 + 3'd1);
assign add_ln598_fu_275_p2 = (v284_mid2_fu_219_p3 + 3'd1);
assign add_ln599_1_fu_342_p2 = (sub_ln598_fu_333_p2 + zext_ln599_3_fu_339_p1);
assign add_ln599_fu_265_p2 = (sub_ln599_fu_255_p2 + zext_ln599_1_fu_261_p1);
assign and_ln596_fu_193_p2 = (xor_ln596_fu_181_p2 & icmp_ln598_fu_187_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_213_p2 = (icmp_ln597_fu_167_p2 | and_ln596_fu_193_p2);
assign icmp_ln596_fu_132_p2 = ((ap_sig_allocacmp_indvar_flatten1418_load == 15'd18432) ? 1'b1 : 1'b0);
assign icmp_ln597_fu_167_p2 = ((indvar_flatten1405_fu_74 == 6'd36) ? 1'b1 : 1'b0);
assign icmp_ln598_fu_187_p2 = ((v284_fu_66 == 3'd6) ? 1'b1 : 1'b0);
assign p_shl8_fu_235_p3 = {{select_ln596_1_fu_199_p3}, {3'd0}};
assign select_ln596_1_fu_199_p3 = ((icmp_ln597_fu_167_p2[0:0] == 1'b1) ? add_ln596_fu_161_p2 : v282_fu_78);
assign select_ln596_fu_173_p3 = ((icmp_ln597_fu_167_p2[0:0] == 1'b1) ? 3'd0 : v283_fu_70);
assign select_ln597_1_fu_287_p3 = ((icmp_ln597_fu_167_p2[0:0] == 1'b1) ? 6'd1 : add_ln597_1_fu_281_p2);
assign select_ln597_fu_227_p3 = ((and_ln596_fu_193_p2[0:0] == 1'b1) ? add_ln597_fu_207_p2 : select_ln596_fu_173_p3);
assign sub_ln598_fu_333_p2 = (tmp_29_fu_322_p3 - zext_ln599_2_fu_329_p1);
assign sub_ln599_fu_255_p2 = (p_shl8_fu_235_p3 - zext_ln599_fu_251_p1);
assign tmp_28_fu_315_p3 = {{add_ln599_reg_397}, {1'd0}};
assign tmp_29_fu_322_p3 = {{trunc_ln599_reg_402}, {3'd0}};
assign tmp_fu_243_p3 = {{select_ln596_1_fu_199_p3}, {1'd0}};
assign trunc_ln599_fu_271_p1 = add_ln599_fu_265_p2[11:0];
assign v284_mid2_fu_219_p3 = ((empty_fu_213_p2[0:0] == 1'b1) ? 3'd0 : v284_fu_66);
assign v33_address1 = zext_ln599_4_fu_348_p1;
assign v33_ce1 = v33_ce1_local;
assign v33_d1 = 7'd0;
assign v33_we1 = v33_we1_local;
assign xor_ln596_fu_181_p2 = (icmp_ln597_fu_167_p2 ^ 1'd1);
assign zext_ln599_1_fu_261_p1 = select_ln597_fu_227_p3;
assign zext_ln599_2_fu_329_p1 = tmp_28_fu_315_p3;
assign zext_ln599_3_fu_339_p1 = v284_mid2_reg_392;
assign zext_ln599_4_fu_348_p1 = add_ln599_1_fu_342_p2;
assign zext_ln599_fu_251_p1 = tmp_fu_243_p3;
endmodule 