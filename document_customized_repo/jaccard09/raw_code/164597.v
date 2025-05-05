module main_graph_main_graph_Pipeline_VITIS_LOOP_468_34_VITIS_LOOP_469_35_VITIS_LOOP_470_36 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v93_address1,v93_ce1,v93_we1,v93_d1,v94_address0,v94_ce0,v94_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] v93_address1;
output   v93_ce1;
output   v93_we1;
output  [6:0] v93_d1;
output  [15:0] v94_address0;
output   v94_ce0;
input  [7:0] v94_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln468_fu_144_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln469_fu_159_p2;
reg   [0:0] icmp_ln469_reg_387;
wire   [15:0] add_ln474_1_fu_296_p2;
reg   [15:0] add_ln474_1_reg_395;
wire   [63:0] zext_ln474_2_fu_323_p1;
reg   [63:0] zext_ln474_2_reg_400;
wire    ap_block_pp0_stage0;
reg   [5:0] v171_fu_66;
wire   [5:0] add_ln470_fu_302_p2;
wire    ap_loop_init;
reg   [5:0] v170_fu_70;
wire   [5:0] select_ln469_fu_258_p3;
reg   [11:0] indvar_flatten143_fu_74;
wire   [11:0] select_ln469_1_fu_171_p3;
reg   [11:0] ap_sig_allocacmp_indvar_flatten143_load;
reg   [6:0] v169_fu_78;
wire   [6:0] select_ln468_1_fu_228_p3;
reg   [16:0] indvar_flatten156_fu_82;
wire   [16:0] add_ln468_1_fu_150_p2;
reg   [16:0] ap_sig_allocacmp_indvar_flatten156_load;
reg    v94_ce0_local;
reg    v93_we1_local;
wire   [6:0] v174_fu_339_p3;
reg    v93_ce1_local;
wire   [11:0] add_ln469_1_fu_165_p2;
wire   [0:0] icmp_ln470_fu_216_p2;
wire   [0:0] xor_ln468_fu_211_p2;
wire   [6:0] add_ln468_fu_198_p2;
wire   [5:0] select_ln468_fu_204_p3;
wire   [0:0] and_ln468_fu_222_p2;
wire   [0:0] empty_fu_245_p2;
wire   [5:0] add_ln469_fu_239_p2;
wire   [5:0] trunc_ln469_fu_235_p1;
wire   [10:0] tmp_59_fu_266_p3;
wire   [10:0] zext_ln474_fu_274_p1;
wire   [10:0] add_ln474_fu_278_p2;
wire   [5:0] v171_mid2_fu_250_p3;
wire   [15:0] tmp_fu_284_p3;
wire   [15:0] zext_ln474_1_fu_292_p1;
wire   [0:0] v173_fu_331_p3;
wire   [6:0] trunc_ln471_fu_327_p1;
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
#0 v171_fu_66 = 6'd0;
#0 v170_fu_70 = 6'd0;
#0 indvar_flatten143_fu_74 = 12'd0;
#0 v169_fu_78 = 7'd0;
#0 indvar_flatten156_fu_82 = 17'd0;
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
        if (((icmp_ln468_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten143_fu_74 <= select_ln469_1_fu_171_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten143_fu_74 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln468_fu_144_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten156_fu_82 <= add_ln468_1_fu_150_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten156_fu_82 <= 17'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v169_fu_78 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v169_fu_78 <= select_ln468_1_fu_228_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v170_fu_70 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v170_fu_70 <= select_ln469_fu_258_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v171_fu_66 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v171_fu_66 <= add_ln470_fu_302_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln474_1_reg_395 <= add_ln474_1_fu_296_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln469_reg_387 <= icmp_ln469_fu_159_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln474_2_reg_400[15 : 0] <= zext_ln474_2_fu_323_p1[15 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln468_fu_144_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten143_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten143_load = indvar_flatten143_fu_74;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten156_load = 17'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten156_load = indvar_flatten156_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v93_ce1_local = 1'b1;
    end else begin
        v93_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v93_we1_local = 1'b1;
    end else begin
        v93_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v94_ce0_local = 1'b1;
    end else begin
        v94_ce0_local = 1'b0;
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
assign add_ln468_1_fu_150_p2 = (ap_sig_allocacmp_indvar_flatten156_load + 17'd1);
assign add_ln468_fu_198_p2 = (v169_fu_78 + 7'd1);
assign add_ln469_1_fu_165_p2 = (ap_sig_allocacmp_indvar_flatten143_load + 12'd1);
assign add_ln469_fu_239_p2 = (select_ln468_fu_204_p3 + 6'd1);
assign add_ln470_fu_302_p2 = (v171_mid2_fu_250_p3 + 6'd1);
assign add_ln474_1_fu_296_p2 = (tmp_fu_284_p3 + zext_ln474_1_fu_292_p1);
assign add_ln474_fu_278_p2 = (tmp_59_fu_266_p3 + zext_ln474_fu_274_p1);
assign and_ln468_fu_222_p2 = (xor_ln468_fu_211_p2 & icmp_ln470_fu_216_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_245_p2 = (icmp_ln469_reg_387 | and_ln468_fu_222_p2);
assign icmp_ln468_fu_144_p2 = ((ap_sig_allocacmp_indvar_flatten156_load == 17'd65536) ? 1'b1 : 1'b0);
assign icmp_ln469_fu_159_p2 = ((ap_sig_allocacmp_indvar_flatten143_load == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln470_fu_216_p2 = ((v171_fu_66 == 6'd32) ? 1'b1 : 1'b0);
assign select_ln468_1_fu_228_p3 = ((icmp_ln469_reg_387[0:0] == 1'b1) ? add_ln468_fu_198_p2 : v169_fu_78);
assign select_ln468_fu_204_p3 = ((icmp_ln469_reg_387[0:0] == 1'b1) ? 6'd0 : v170_fu_70);
assign select_ln469_1_fu_171_p3 = ((icmp_ln469_fu_159_p2[0:0] == 1'b1) ? 12'd1 : add_ln469_1_fu_165_p2);
assign select_ln469_fu_258_p3 = ((and_ln468_fu_222_p2[0:0] == 1'b1) ? add_ln469_fu_239_p2 : select_ln468_fu_204_p3);
assign tmp_59_fu_266_p3 = {{trunc_ln469_fu_235_p1}, {5'd0}};
assign tmp_fu_284_p3 = {{add_ln474_fu_278_p2}, {5'd0}};
assign trunc_ln469_fu_235_p1 = select_ln468_1_fu_228_p3[5:0];
assign trunc_ln471_fu_327_p1 = v94_q0[6:0];
assign v171_mid2_fu_250_p3 = ((empty_fu_245_p2[0:0] == 1'b1) ? 6'd0 : v171_fu_66);
assign v173_fu_331_p3 = v94_q0[32'd7];
assign v174_fu_339_p3 = ((v173_fu_331_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln471_fu_327_p1);
assign v93_address1 = zext_ln474_2_reg_400;
assign v93_ce1 = v93_ce1_local;
assign v93_d1 = v174_fu_339_p3;
assign v93_we1 = v93_we1_local;
assign v94_address0 = zext_ln474_2_fu_323_p1;
assign v94_ce0 = v94_ce0_local;
assign xor_ln468_fu_211_p2 = (icmp_ln469_reg_387 ^ 1'd1);
assign zext_ln474_1_fu_292_p1 = v171_mid2_fu_250_p3;
assign zext_ln474_2_fu_323_p1 = add_ln474_1_reg_395;
assign zext_ln474_fu_274_p1 = select_ln469_fu_258_p3;
always @ (posedge ap_clk) begin
    zext_ln474_2_reg_400[63:16] <= 48'b000000000000000000000000000000000000000000000000;
end
endmodule 