
module main_graph_main_graph_Pipeline_VITIS_LOOP_260_16_VITIS_LOOP_261_17_VITIS_LOOP_262_18 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v54_address1,v54_ce1,v54_we1,v54_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [16:0] v54_address1;
output   v54_ce1;
output   v54_we1;
output  [6:0] v54_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln260_fu_132_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln261_fu_147_p2;
reg   [0:0] icmp_ln261_reg_392;
wire   [5:0] v88_mid2_fu_234_p3;
reg   [5:0] v88_mid2_reg_400;
wire   [12:0] add_ln263_fu_284_p2;
reg   [12:0] add_ln263_reg_405;
wire   [11:0] trunc_ln263_fu_290_p1;
reg   [11:0] trunc_ln263_reg_410;
wire   [63:0] zext_ln263_4_fu_348_p1;
wire    ap_block_pp0_stage0;
reg   [5:0] v88_fu_66;
wire   [5:0] add_ln262_fu_294_p2;
wire    ap_loop_init;
reg   [5:0] v87_fu_70;
wire   [5:0] select_ln261_fu_242_p3;
reg   [11:0] indvar_flatten61_fu_74;
wire   [11:0] select_ln261_1_fu_159_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten61_load;
reg   [6:0] v86_fu_78;
wire   [6:0] select_ln260_1_fu_216_p3;
reg   [16:0] indvar_flatten74_fu_82;
wire   [16:0] add_ln260_1_fu_138_p2;
reg   [16:0] ap_sig_allocacmp_indvar_flatten74_load;
reg    v54_we1_local;
reg    v54_ce1_local;
wire   [11:0] add_ln261_1_fu_153_p2;
wire   [0:0] icmp_ln262_fu_204_p2;
wire   [0:0] xor_ln260_fu_199_p2;
wire   [6:0] add_ln260_fu_186_p2;
wire   [5:0] select_ln260_fu_192_p3;
wire   [0:0] and_ln260_fu_210_p2;
wire   [0:0] empty_fu_229_p2;
wire   [5:0] add_ln261_fu_223_p2;
wire   [11:0] tmp_fu_250_p3;
wire   [7:0] tmp_105_fu_262_p3;
wire   [12:0] zext_ln263_fu_258_p1;
wire   [12:0] zext_ln263_1_fu_270_p1;
wire   [12:0] add_ln263_2_fu_274_p2;
wire   [12:0] zext_ln263_2_fu_280_p1;
wire   [13:0] tmp_106_fu_322_p3;
wire   [16:0] p_shl_fu_315_p3;
wire   [16:0] zext_ln262_fu_329_p1;
wire   [16:0] add_ln262_1_fu_333_p2;
wire   [16:0] zext_ln263_3_fu_339_p1;
wire   [16:0] add_ln263_1_fu_342_p2;
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
#0 v88_fu_66 = 6'd0;
#0 v87_fu_70 = 6'd0;
#0 indvar_flatten61_fu_74 = 12'd0;
#0 v86_fu_78 = 7'd0;
#0 indvar_flatten74_fu_82 = 17'd0;
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
        if (((icmp_ln260_fu_132_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten61_fu_74 <= select_ln261_1_fu_159_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten61_fu_74 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln260_fu_132_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten74_fu_82 <= add_ln260_1_fu_138_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten74_fu_82 <= 17'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v86_fu_78 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v86_fu_78 <= select_ln260_1_fu_216_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v87_fu_70 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v87_fu_70 <= select_ln261_fu_242_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v88_fu_66 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v88_fu_66 <= add_ln262_fu_294_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln263_reg_405 <= add_ln263_fu_284_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln261_reg_392 <= icmp_ln261_fu_147_p2;
        trunc_ln263_reg_410 <= trunc_ln263_fu_290_p1;
        v88_mid2_reg_400 <= v88_mid2_fu_234_p3;
    end
end
always @ (*) begin
    if (((icmp_ln260_fu_132_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten61_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten61_load = indvar_flatten61_fu_74;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten74_load = 17'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten74_load = indvar_flatten74_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v54_ce1_local = 1'b1;
    end else begin
        v54_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v54_we1_local = 1'b1;
    end else begin
        v54_we1_local = 1'b0;
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
assign add_ln260_1_fu_138_p2 = (ap_sig_allocacmp_indvar_flatten74_load + 17'd1);
assign add_ln260_fu_186_p2 = (v86_fu_78 + 7'd1);
assign add_ln261_1_fu_153_p2 = (ap_sig_allocacmp_indvar_flatten61_load + 12'd1);
assign add_ln261_fu_223_p2 = (select_ln260_fu_192_p3 + 6'd1);
assign add_ln262_1_fu_333_p2 = (p_shl_fu_315_p3 + zext_ln262_fu_329_p1);
assign add_ln262_fu_294_p2 = (v88_mid2_fu_234_p3 + 6'd1);
assign add_ln263_1_fu_342_p2 = (add_ln262_1_fu_333_p2 + zext_ln263_3_fu_339_p1);
assign add_ln263_2_fu_274_p2 = (zext_ln263_fu_258_p1 + zext_ln263_1_fu_270_p1);
assign add_ln263_fu_284_p2 = (add_ln263_2_fu_274_p2 + zext_ln263_2_fu_280_p1);
assign and_ln260_fu_210_p2 = (xor_ln260_fu_199_p2 & icmp_ln262_fu_204_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_229_p2 = (icmp_ln261_reg_392 | and_ln260_fu_210_p2);
assign icmp_ln260_fu_132_p2 = ((ap_sig_allocacmp_indvar_flatten74_load == 17'd73984) ? 1'b1 : 1'b0);
assign icmp_ln261_fu_147_p2 = ((ap_sig_allocacmp_indvar_flatten61_load == 12'd1156) ? 1'b1 : 1'b0);
assign icmp_ln262_fu_204_p2 = ((v88_fu_66 == 6'd34) ? 1'b1 : 1'b0);
assign p_shl_fu_315_p3 = {{trunc_ln263_reg_410}, {5'd0}};
assign select_ln260_1_fu_216_p3 = ((icmp_ln261_reg_392[0:0] == 1'b1) ? add_ln260_fu_186_p2 : v86_fu_78);
assign select_ln260_fu_192_p3 = ((icmp_ln261_reg_392[0:0] == 1'b1) ? 6'd0 : v87_fu_70);
assign select_ln261_1_fu_159_p3 = ((icmp_ln261_fu_147_p2[0:0] == 1'b1) ? 12'd1 : add_ln261_1_fu_153_p2);
assign select_ln261_fu_242_p3 = ((and_ln260_fu_210_p2[0:0] == 1'b1) ? add_ln261_fu_223_p2 : select_ln260_fu_192_p3);
assign tmp_105_fu_262_p3 = {{select_ln260_1_fu_216_p3}, {1'd0}};
assign tmp_106_fu_322_p3 = {{add_ln263_reg_405}, {1'd0}};
assign tmp_fu_250_p3 = {{select_ln260_1_fu_216_p3}, {5'd0}};
assign trunc_ln263_fu_290_p1 = add_ln263_fu_284_p2[11:0];
assign v54_address1 = zext_ln263_4_fu_348_p1;
assign v54_ce1 = v54_ce1_local;
assign v54_d1 = 7'd0;
assign v54_we1 = v54_we1_local;
assign v88_mid2_fu_234_p3 = ((empty_fu_229_p2[0:0] == 1'b1) ? 6'd0 : v88_fu_66);
assign xor_ln260_fu_199_p2 = (icmp_ln261_reg_392 ^ 1'd1);
assign zext_ln262_fu_329_p1 = tmp_106_fu_322_p3;
assign zext_ln263_1_fu_270_p1 = tmp_105_fu_262_p3;
assign zext_ln263_2_fu_280_p1 = select_ln261_fu_242_p3;
assign zext_ln263_3_fu_339_p1 = v88_mid2_reg_400;
assign zext_ln263_4_fu_348_p1 = add_ln263_1_fu_342_p2;
assign zext_ln263_fu_258_p1 = tmp_fu_250_p3;
endmodule 
