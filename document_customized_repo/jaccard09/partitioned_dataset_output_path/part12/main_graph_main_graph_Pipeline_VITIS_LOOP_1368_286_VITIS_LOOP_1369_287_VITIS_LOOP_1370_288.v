
module main_graph_main_graph_Pipeline_VITIS_LOOP_1368_286_VITIS_LOOP_1369_287_VITIS_LOOP_1370_288 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v33_address1,v33_ce1,v33_we1,v33_d1,v33_1_address1,v33_1_ce1,v33_1_we1,v33_1_d1,v33_2_address1,v33_2_ce1,v33_2_we1,v33_2_d1,v33_3_address1,v33_3_ce1,v33_3_we1,v33_3_d1,v34_address0,v34_ce0,v34_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] v33_address1;
output   v33_ce1;
output   v33_we1;
output  [6:0] v33_d1;
output  [9:0] v33_1_address1;
output   v33_1_ce1;
output   v33_1_we1;
output  [6:0] v33_1_d1;
output  [9:0] v33_2_address1;
output   v33_2_ce1;
output   v33_2_we1;
output  [6:0] v33_2_d1;
output  [9:0] v33_3_address1;
output   v33_3_ce1;
output   v33_3_we1;
output  [6:0] v33_3_d1;
output  [11:0] v34_address0;
output   v34_ce0;
input  [7:0] v34_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1368_fu_204_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] select_ln1368_1_fu_263_p3;
reg   [10:0] select_ln1368_1_reg_462;
reg   [10:0] select_ln1368_1_reg_462_pp0_iter1_reg;
wire   [1:0] v723_mid2_fu_283_p3;
reg   [1:0] v723_mid2_reg_468;
wire   [1:0] select_ln1369_fu_291_p3;
reg   [1:0] select_ln1369_reg_473;
wire   [0:0] cond219_fu_299_p2;
reg   [0:0] cond219_reg_478;
reg   [0:0] cond219_reg_478_pp0_iter1_reg;
wire   [0:0] icmp_ln1374_fu_305_p2;
reg   [0:0] icmp_ln1374_reg_482;
reg   [0:0] icmp_ln1374_reg_482_pp0_iter1_reg;
wire   [63:0] zext_ln1371_2_fu_387_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1368_fu_392_p1;
reg   [1:0] v723_fu_72;
wire   [1:0] add_ln1370_fu_311_p2;
wire    ap_loop_init;
reg   [1:0] ap_sig_allocacmp_v723_load;
reg   [1:0] v722_fu_76;
reg   [1:0] ap_sig_allocacmp_v722_load;
reg   [3:0] indvar_flatten1722_fu_80;
wire   [3:0] select_ln1369_1_fu_323_p3;
reg   [3:0] ap_sig_allocacmp_indvar_flatten1722_load;
reg   [10:0] v721_fu_84;
reg   [10:0] ap_sig_allocacmp_v721_load;
reg   [12:0] indvar_flatten1735_fu_88;
wire   [12:0] add_ln1368_1_fu_210_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten1735_load;
reg    v34_ce0_local;
reg    v33_3_we1_local;
wire   [6:0] v726_fu_411_p3;
reg    v33_3_ce1_local;
reg    v33_2_we1_local;
reg    v33_2_ce1_local;
reg    v33_1_we1_local;
reg    v33_1_ce1_local;
reg    v33_we1_local;
reg    v33_ce1_local;
wire   [0:0] icmp_ln1369_fu_231_p2;
wire   [0:0] icmp_ln1370_fu_251_p2;
wire   [0:0] xor_ln1368_fu_245_p2;
wire   [10:0] add_ln1368_fu_225_p2;
wire   [1:0] select_ln1368_fu_237_p3;
wire   [0:0] and_ln1368_fu_257_p2;
wire   [0:0] empty_fu_277_p2;
wire   [1:0] add_ln1369_fu_271_p2;
wire   [3:0] add_ln1369_1_fu_317_p2;
wire   [10:0] shl_ln1371_fu_356_p2;
wire   [10:0] zext_ln1371_fu_361_p1;
wire   [10:0] add_ln1371_fu_364_p2;
wire   [11:0] tmp_fu_370_p3;
wire   [11:0] zext_ln1371_1_fu_378_p1;
wire   [11:0] add_ln1371_1_fu_381_p2;
wire   [0:0] v725_fu_403_p3;
wire   [6:0] trunc_ln1371_fu_399_p1;
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
#0 v723_fu_72 = 2'd0;
#0 v722_fu_76 = 2'd0;
#0 indvar_flatten1722_fu_80 = 4'd0;
#0 v721_fu_84 = 11'd0;
#0 indvar_flatten1735_fu_88 = 13'd0;
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
        if (((icmp_ln1368_fu_204_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1722_fu_80 <= select_ln1369_1_fu_323_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1722_fu_80 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1368_fu_204_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten1735_fu_88 <= add_ln1368_1_fu_210_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten1735_fu_88 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1368_fu_204_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v721_fu_84 <= select_ln1368_1_fu_263_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v721_fu_84 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1368_fu_204_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v722_fu_76 <= select_ln1369_fu_291_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v722_fu_76 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln1368_fu_204_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v723_fu_72 <= add_ln1370_fu_311_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v723_fu_72 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        cond219_reg_478 <= cond219_fu_299_p2;
        cond219_reg_478_pp0_iter1_reg <= cond219_reg_478;
        icmp_ln1374_reg_482 <= icmp_ln1374_fu_305_p2;
        icmp_ln1374_reg_482_pp0_iter1_reg <= icmp_ln1374_reg_482;
        select_ln1368_1_reg_462 <= select_ln1368_1_fu_263_p3;
        select_ln1368_1_reg_462_pp0_iter1_reg <= select_ln1368_1_reg_462;
        select_ln1369_reg_473 <= select_ln1369_fu_291_p3;
        v723_mid2_reg_468 <= v723_mid2_fu_283_p3;
    end
end
always @ (*) begin
    if (((icmp_ln1368_fu_204_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1722_load = 4'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1722_load = indvar_flatten1722_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1735_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1735_load = indvar_flatten1735_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v721_load = 11'd0;
    end else begin
        ap_sig_allocacmp_v721_load = v721_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v722_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v722_load = v722_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v723_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v723_load = v723_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v33_1_ce1_local = 1'b1;
    end else begin
        v33_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((cond219_reg_478_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1374_reg_482_pp0_iter1_reg == 1'd0))) begin
        v33_1_we1_local = 1'b1;
    end else begin
        v33_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v33_2_ce1_local = 1'b1;
    end else begin
        v33_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((cond219_reg_478_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1374_reg_482_pp0_iter1_reg == 1'd1))) begin
        v33_2_we1_local = 1'b1;
    end else begin
        v33_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v33_3_ce1_local = 1'b1;
    end else begin
        v33_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((cond219_reg_478_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1374_reg_482_pp0_iter1_reg == 1'd0))) begin
        v33_3_we1_local = 1'b1;
    end else begin
        v33_3_we1_local = 1'b0;
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
    if (((cond219_reg_478_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1374_reg_482_pp0_iter1_reg == 1'd1))) begin
        v33_we1_local = 1'b1;
    end else begin
        v33_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v34_ce0_local = 1'b1;
    end else begin
        v34_ce0_local = 1'b0;
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
assign add_ln1368_1_fu_210_p2 = (ap_sig_allocacmp_indvar_flatten1735_load + 13'd1);
assign add_ln1368_fu_225_p2 = (ap_sig_allocacmp_v721_load + 11'd1);
assign add_ln1369_1_fu_317_p2 = (ap_sig_allocacmp_indvar_flatten1722_load + 4'd1);
assign add_ln1369_fu_271_p2 = (select_ln1368_fu_237_p3 + 2'd1);
assign add_ln1370_fu_311_p2 = (v723_mid2_fu_283_p3 + 2'd1);
assign add_ln1371_1_fu_381_p2 = (tmp_fu_370_p3 + zext_ln1371_1_fu_378_p1);
assign add_ln1371_fu_364_p2 = (shl_ln1371_fu_356_p2 + zext_ln1371_fu_361_p1);
assign and_ln1368_fu_257_p2 = (xor_ln1368_fu_245_p2 & icmp_ln1370_fu_251_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign cond219_fu_299_p2 = ((select_ln1369_fu_291_p3 == 2'd0) ? 1'b1 : 1'b0);
assign empty_fu_277_p2 = (icmp_ln1369_fu_231_p2 | and_ln1368_fu_257_p2);
assign icmp_ln1368_fu_204_p2 = ((ap_sig_allocacmp_indvar_flatten1735_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln1369_fu_231_p2 = ((ap_sig_allocacmp_indvar_flatten1722_load == 4'd4) ? 1'b1 : 1'b0);
assign icmp_ln1370_fu_251_p2 = ((ap_sig_allocacmp_v723_load == 2'd2) ? 1'b1 : 1'b0);
assign icmp_ln1374_fu_305_p2 = ((v723_mid2_fu_283_p3 == 2'd0) ? 1'b1 : 1'b0);
assign select_ln1368_1_fu_263_p3 = ((icmp_ln1369_fu_231_p2[0:0] == 1'b1) ? add_ln1368_fu_225_p2 : ap_sig_allocacmp_v721_load);
assign select_ln1368_fu_237_p3 = ((icmp_ln1369_fu_231_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v722_load);
assign select_ln1369_1_fu_323_p3 = ((icmp_ln1369_fu_231_p2[0:0] == 1'b1) ? 4'd1 : add_ln1369_1_fu_317_p2);
assign select_ln1369_fu_291_p3 = ((and_ln1368_fu_257_p2[0:0] == 1'b1) ? add_ln1369_fu_271_p2 : select_ln1368_fu_237_p3);
assign shl_ln1371_fu_356_p2 = select_ln1368_1_reg_462 << 11'd1;
assign tmp_fu_370_p3 = {{add_ln1371_fu_364_p2}, {1'd0}};
assign trunc_ln1371_fu_399_p1 = v34_q0[6:0];
assign v33_1_address1 = zext_ln1368_fu_392_p1;
assign v33_1_ce1 = v33_1_ce1_local;
assign v33_1_d1 = v726_fu_411_p3;
assign v33_1_we1 = v33_1_we1_local;
assign v33_2_address1 = zext_ln1368_fu_392_p1;
assign v33_2_ce1 = v33_2_ce1_local;
assign v33_2_d1 = v726_fu_411_p3;
assign v33_2_we1 = v33_2_we1_local;
assign v33_3_address1 = zext_ln1368_fu_392_p1;
assign v33_3_ce1 = v33_3_ce1_local;
assign v33_3_d1 = v726_fu_411_p3;
assign v33_3_we1 = v33_3_we1_local;
assign v33_address1 = zext_ln1368_fu_392_p1;
assign v33_ce1 = v33_ce1_local;
assign v33_d1 = v726_fu_411_p3;
assign v33_we1 = v33_we1_local;
assign v34_address0 = zext_ln1371_2_fu_387_p1;
assign v34_ce0 = v34_ce0_local;
assign v723_mid2_fu_283_p3 = ((empty_fu_277_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v723_load);
assign v725_fu_403_p3 = v34_q0[32'd7];
assign v726_fu_411_p3 = ((v725_fu_403_p3[0:0] == 1'b1) ? 7'd0 : trunc_ln1371_fu_399_p1);
assign xor_ln1368_fu_245_p2 = (icmp_ln1369_fu_231_p2 ^ 1'd1);
assign zext_ln1368_fu_392_p1 = select_ln1368_1_reg_462_pp0_iter1_reg;
assign zext_ln1371_1_fu_378_p1 = v723_mid2_reg_468;
assign zext_ln1371_2_fu_387_p1 = add_ln1371_1_fu_381_p2;
assign zext_ln1371_fu_361_p1 = select_ln1369_reg_473;
endmodule 
