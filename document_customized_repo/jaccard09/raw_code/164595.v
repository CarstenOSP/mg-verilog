module main_graph_main_graph_Pipeline_VITIS_LOOP_439_27_VITIS_LOOP_440_28_VITIS_LOOP_441_29 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v95_address1,v95_ce1,v95_we1,v95_d1,v95_1_address1,v95_1_ce1,v95_1_we1,v95_1_d1,v96_address0,v96_ce0,v96_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v95_address1;
output   v95_ce1;
output   v95_we1;
output  [6:0] v95_d1;
output  [13:0] v95_1_address1;
output   v95_1_ce1;
output   v95_1_we1;
output  [6:0] v95_1_d1;
output  [14:0] v96_address0;
output   v96_ce0;
input  [7:0] v96_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln439_fu_169_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln439_reg_463;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] trunc_ln440_fu_244_p1;
reg   [4:0] trunc_ln440_reg_467;
wire   [5:0] v152_mid2_fu_260_p3;
reg   [5:0] v152_mid2_reg_472;
wire   [5:0] select_ln440_fu_268_p3;
reg   [5:0] select_ln440_reg_478;
wire   [0:0] trunc_ln439_fu_276_p1;
reg   [0:0] trunc_ln439_reg_484;
reg   [0:0] trunc_ln439_reg_484_pp0_iter2_reg;
reg   [3:0] lshr_ln_reg_488;
wire   [13:0] add_ln445_1_fu_384_p2;
reg   [13:0] add_ln445_1_reg_493;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln442_fu_396_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln445_4_fu_401_p1;
reg   [5:0] v152_fu_74;
wire   [5:0] add_ln441_fu_290_p2;
wire    ap_loop_init;
reg   [5:0] v151_fu_78;
reg   [11:0] indvar_flatten103_fu_82;
wire   [11:0] select_ln440_1_fu_302_p3;
reg   [5:0] v150_fu_86;
wire   [5:0] select_ln439_1_fu_236_p3;
reg   [15:0] indvar_flatten116_fu_90;
wire   [15:0] add_ln439_1_fu_175_p2;
reg   [15:0] ap_sig_allocacmp_indvar_flatten116_load;
reg    v96_ce0_local;
reg    v95_we1_local;
wire   [6:0] v155_fu_418_p3;
reg    v95_ce1_local;
reg    v95_1_we1_local;
reg    v95_1_ce1_local;
wire   [0:0] icmp_ln440_fu_204_p2;
wire   [0:0] icmp_ln441_fu_224_p2;
wire   [0:0] xor_ln439_fu_218_p2;
wire   [5:0] add_ln439_fu_198_p2;
wire   [5:0] select_ln439_fu_210_p3;
wire   [0:0] and_ln439_fu_230_p2;
wire   [0:0] empty_fu_254_p2;
wire   [5:0] add_ln440_fu_248_p2;
wire   [11:0] add_ln440_1_fu_296_p2;
wire   [8:0] tmp_12_fu_337_p3;
wire   [8:0] zext_ln445_1_fu_347_p1;
wire   [8:0] add_ln445_fu_350_p2;
wire   [9:0] tmp_11_fu_330_p3;
wire   [9:0] zext_ln445_fu_344_p1;
wire   [9:0] add_ln442_fu_364_p2;
wire   [13:0] tmp_fu_356_p3;
wire   [13:0] zext_ln445_3_fu_381_p1;
wire   [14:0] tmp_78_fu_370_p3;
wire   [14:0] zext_ln445_2_fu_378_p1;
wire   [14:0] add_ln442_1_fu_390_p2;
wire   [0:0] v154_fu_410_p3;
wire   [6:0] trunc_ln442_fu_406_p1;
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
#0 v152_fu_74 = 6'd0;
#0 v151_fu_78 = 6'd0;
#0 indvar_flatten103_fu_82 = 12'd0;
#0 v150_fu_86 = 6'd0;
#0 indvar_flatten116_fu_90 = 16'd0;
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            indvar_flatten103_fu_82 <= 12'd0;
        end else if (((icmp_ln439_reg_463 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten103_fu_82 <= select_ln440_1_fu_302_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln439_fu_169_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten116_fu_90 <= add_ln439_1_fu_175_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten116_fu_90 <= 16'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v150_fu_86 <= 6'd0;
        end else if (((icmp_ln439_reg_463 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v150_fu_86 <= select_ln439_1_fu_236_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v151_fu_78 <= 6'd0;
        end else if (((icmp_ln439_reg_463 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v151_fu_78 <= select_ln440_fu_268_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v152_fu_74 <= 6'd0;
        end else if (((icmp_ln439_reg_463 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v152_fu_74 <= add_ln441_fu_290_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln445_1_reg_493 <= add_ln445_1_fu_384_p2;
        trunc_ln439_reg_484_pp0_iter2_reg <= trunc_ln439_reg_484;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln439_reg_463 <= icmp_ln439_fu_169_p2;
        lshr_ln_reg_488 <= {{select_ln439_1_fu_236_p3[4:1]}};
        select_ln440_reg_478 <= select_ln440_fu_268_p3;
        trunc_ln439_reg_484 <= trunc_ln439_fu_276_p1;
        trunc_ln440_reg_467 <= trunc_ln440_fu_244_p1;
        v152_mid2_reg_472 <= v152_mid2_fu_260_p3;
    end
end
always @ (*) begin
    if (((icmp_ln439_fu_169_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln439_reg_463 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten116_load = 16'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten116_load = indvar_flatten116_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v95_1_ce1_local = 1'b1;
    end else begin
        v95_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln439_reg_484_pp0_iter2_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v95_1_we1_local = 1'b1;
    end else begin
        v95_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v95_ce1_local = 1'b1;
    end else begin
        v95_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((trunc_ln439_reg_484_pp0_iter2_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v95_we1_local = 1'b1;
    end else begin
        v95_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v96_ce0_local = 1'b1;
    end else begin
        v96_ce0_local = 1'b0;
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
assign add_ln439_1_fu_175_p2 = (ap_sig_allocacmp_indvar_flatten116_load + 16'd1);
assign add_ln439_fu_198_p2 = (v150_fu_86 + 6'd1);
assign add_ln440_1_fu_296_p2 = (indvar_flatten103_fu_82 + 12'd1);
assign add_ln440_fu_248_p2 = (select_ln439_fu_210_p3 + 6'd1);
assign add_ln441_fu_290_p2 = (v152_mid2_fu_260_p3 + 6'd1);
assign add_ln442_1_fu_390_p2 = (tmp_78_fu_370_p3 + zext_ln445_2_fu_378_p1);
assign add_ln442_fu_364_p2 = (tmp_11_fu_330_p3 + zext_ln445_fu_344_p1);
assign add_ln445_1_fu_384_p2 = (tmp_fu_356_p3 + zext_ln445_3_fu_381_p1);
assign add_ln445_fu_350_p2 = (tmp_12_fu_337_p3 + zext_ln445_1_fu_347_p1);
assign and_ln439_fu_230_p2 = (xor_ln439_fu_218_p2 & icmp_ln441_fu_224_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_254_p2 = (icmp_ln440_fu_204_p2 | and_ln439_fu_230_p2);
assign icmp_ln439_fu_169_p2 = ((ap_sig_allocacmp_indvar_flatten116_load == 16'd32768) ? 1'b1 : 1'b0);
assign icmp_ln440_fu_204_p2 = ((indvar_flatten103_fu_82 == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln441_fu_224_p2 = ((v152_fu_74 == 6'd32) ? 1'b1 : 1'b0);
assign select_ln439_1_fu_236_p3 = ((icmp_ln440_fu_204_p2[0:0] == 1'b1) ? add_ln439_fu_198_p2 : v150_fu_86);
assign select_ln439_fu_210_p3 = ((icmp_ln440_fu_204_p2[0:0] == 1'b1) ? 6'd0 : v151_fu_78);
assign select_ln440_1_fu_302_p3 = ((icmp_ln440_fu_204_p2[0:0] == 1'b1) ? 12'd1 : add_ln440_1_fu_296_p2);
assign select_ln440_fu_268_p3 = ((and_ln439_fu_230_p2[0:0] == 1'b1) ? add_ln440_fu_248_p2 : select_ln439_fu_210_p3);
assign tmp_11_fu_330_p3 = {{trunc_ln440_reg_467}, {5'd0}};
assign tmp_12_fu_337_p3 = {{lshr_ln_reg_488}, {5'd0}};
assign tmp_78_fu_370_p3 = {{add_ln442_fu_364_p2}, {5'd0}};
assign tmp_fu_356_p3 = {{add_ln445_fu_350_p2}, {5'd0}};
assign trunc_ln439_fu_276_p1 = select_ln439_1_fu_236_p3[0:0];
assign trunc_ln440_fu_244_p1 = select_ln439_1_fu_236_p3[4:0];
assign trunc_ln442_fu_406_p1 = v96_q0[6:0];
assign v152_mid2_fu_260_p3 = ((empty_fu_254_p2[0:0] == 1'b1) ? 6'd0 : v152_fu_74);
assign v154_fu_410_p3 = v96_q0[32'd7];
assign v155_fu_418_p3 = ((v154_fu_410_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln442_fu_406_p1);
assign v95_1_address1 = zext_ln445_4_fu_401_p1;
assign v95_1_ce1 = v95_1_ce1_local;
assign v95_1_d1 = v155_fu_418_p3;
assign v95_1_we1 = v95_1_we1_local;
assign v95_address1 = zext_ln445_4_fu_401_p1;
assign v95_ce1 = v95_ce1_local;
assign v95_d1 = v155_fu_418_p3;
assign v95_we1 = v95_we1_local;
assign v96_address0 = zext_ln442_fu_396_p1;
assign v96_ce0 = v96_ce0_local;
assign xor_ln439_fu_218_p2 = (icmp_ln440_fu_204_p2 ^ 1'd1);
assign zext_ln442_fu_396_p1 = add_ln442_1_fu_390_p2;
assign zext_ln445_1_fu_347_p1 = select_ln440_reg_478;
assign zext_ln445_2_fu_378_p1 = v152_mid2_reg_472;
assign zext_ln445_3_fu_381_p1 = v152_mid2_reg_472;
assign zext_ln445_4_fu_401_p1 = add_ln445_1_reg_493;
assign zext_ln445_fu_344_p1 = select_ln440_reg_478;
endmodule 