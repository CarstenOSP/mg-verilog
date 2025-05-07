module forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v3751_address0,v3751_ce0,v3751_we0,v3751_d0,v3751_1_address0,v3751_1_ce0,v3751_1_we0,v3751_1_d0,v3743,v9184_0_address0,v9184_0_ce0,v9184_0_q0,v9184_1_address0,v9184_1_ce0,v9184_1_q0,ap_return); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v3751_address0;
output   v3751_ce0;
output   v3751_we0;
output  [7:0] v3751_d0;
output  [8:0] v3751_1_address0;
output   v3751_1_ce0;
output   v3751_1_we0;
output  [7:0] v3751_1_d0;
input  [6:0] v3743;
output  [13:0] v9184_0_address0;
output   v9184_0_ce0;
input  [7:0] v9184_0_q0;
output  [13:0] v9184_1_address0;
output   v9184_1_ce0;
input  [7:0] v9184_1_q0;
output  [6:0] ap_return;
reg ap_idle;
reg[6:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln5429_fu_334_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
reg   [6:0] v3743_read_reg_454;
reg   [6:0] v3743_read_reg_454_pp0_iter1_reg;
wire   [6:0] trunc_ln_i_fu_200_p3;
reg   [6:0] trunc_ln_i_reg_458;
wire   [7:0] zext_ln5450_fu_226_p1;
reg   [7:0] zext_ln5450_reg_463;
wire   [5:0] select_ln5429_fu_260_p3;
reg   [5:0] select_ln5429_reg_468;
reg   [4:0] lshr_ln_i_reg_474;
reg   [3:0] lshr_ln_i_cast_reg_479;
reg   [6:0] tmp_128_i_reg_484;
wire   [0:0] icmp_ln5430_fu_328_p2;
reg   [0:0] icmp_ln5430_reg_489;
reg   [0:0] icmp_ln5429_reg_494;
wire   [8:0] add_ln5435_fu_388_p2;
reg   [8:0] add_ln5435_reg_498;
reg   [0:0] ap_phi_mux_icmp_ln543024_i_phi_fu_175_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln5433_1_fu_412_p1;
wire   [63:0] zext_ln5435_2_fu_423_p1;
wire   [63:0] zext_ln5435_1_fu_428_p1;
reg   [8:0] indvar_flatten21_i_fu_100;
wire   [8:0] add_ln5429_1_fu_322_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten21_i_load;
reg   [5:0] v372022_i_fu_104;
wire   [5:0] select_ln5429_1_fu_268_p3;
reg   [5:0] ap_sig_allocacmp_v372022_i_load;
reg   [5:0] v372123_i_fu_108;
wire   [5:0] add_ln5430_fu_316_p2;
reg   [5:0] ap_sig_allocacmp_v372123_i_load;
reg    v9184_0_ce0_local;
reg    v9184_1_ce0_local;
reg    v3751_1_we0_local;
reg    v3751_1_ce0_local;
reg    v3751_we0_local;
reg    v3751_ce0_local;
wire   [2:0] tmp_i_fu_182_p4;
wire   [1:0] tmp_125_i_fu_208_p4;
wire   [6:0] mul_i167_i_i_fu_218_p3;
wire   [5:0] add_ln5429_fu_254_p2;
wire   [7:0] mul_i145_i_i_fu_192_p3;
wire   [7:0] zext_ln5429_fu_276_p1;
wire   [7:0] empty_fu_300_p2;
wire   [6:0] zext_ln5429_1_fu_355_p1;
wire   [6:0] empty_289_fu_365_p2;
wire   [8:0] tmp_126_i_fu_358_p3;
wire   [8:0] zext_ln5435_fu_385_p1;
wire   [7:0] zext_ln5430_fu_394_p1;
wire   [7:0] add_ln5432_fu_397_p2;
wire   [13:0] tmp_127_i_fu_370_p3;
wire   [13:0] zext_ln5433_fu_402_p1;
wire   [13:0] add_ln5433_fu_406_p2;
wire   [13:0] tmp_129_i_fu_378_p3;
wire   [13:0] add_ln5435_1_fu_417_p2;
reg   [6:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_346;
reg    ap_condition_95;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten21_i_fu_100 = 9'd0;
#0 v372022_i_fu_104 = 6'd0;
#0 v372123_i_fu_108 = 6'd0;
#0 ap_return_preg = 7'd0;
end
forward_flow_control_loop_delay_pipe flow_control_loop_delay_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(ap_continue),.ap_loop_exit_ready_delayed(ap_loop_exit_ready_delayed));
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
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 7'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_return_preg <= v3743_read_reg_454_pp0_iter1_reg;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_95)) begin
        indvar_flatten21_i_fu_100 <= add_ln5429_1_fu_322_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_95)) begin
    v372022_i_fu_104 <= select_ln5429_1_fu_268_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_95)) begin
    v372123_i_fu_108 <= add_ln5430_fu_316_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln5435_reg_498 <= add_ln5435_fu_388_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln5429_reg_494 <= icmp_ln5429_fu_334_p2;
        lshr_ln_i_cast_reg_479 <= {{select_ln5429_1_fu_268_p3[4:1]}};
        lshr_ln_i_reg_474 <= {{select_ln5429_1_fu_268_p3[5:1]}};
        select_ln5429_reg_468 <= select_ln5429_fu_260_p3;
        tmp_128_i_reg_484 <= {{empty_fu_300_p2[7:1]}};
        trunc_ln_i_reg_458[6 : 4] <= trunc_ln_i_fu_200_p3[6 : 4];
        v3743_read_reg_454_pp0_iter1_reg <= v3743_read_reg_454;
        zext_ln5450_reg_463[6 : 5] <= zext_ln5450_fu_226_p1[6 : 5];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5430_reg_489 <= icmp_ln5430_fu_328_p2;
        v3743_read_reg_454 <= v3743;
    end
end
always @ (*) begin
    if (((icmp_ln5429_fu_334_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_346)) begin
            ap_phi_mux_icmp_ln543024_i_phi_fu_175_p4 = icmp_ln5430_reg_489;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln543024_i_phi_fu_175_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln543024_i_phi_fu_175_p4 = icmp_ln5430_reg_489;
        end
    end else begin
        ap_phi_mux_icmp_ln543024_i_phi_fu_175_p4 = icmp_ln5430_reg_489;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_return = v3743_read_reg_454_pp0_iter1_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten21_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten21_i_load = indvar_flatten21_i_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v372022_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v372022_i_load = v372022_i_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v372123_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v372123_i_load = v372123_i_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v3751_1_ce0_local = 1'b1;
    end else begin
        v3751_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v3751_1_we0_local = 1'b1;
    end else begin
        v3751_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v3751_ce0_local = 1'b1;
    end else begin
        v3751_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v3751_we0_local = 1'b1;
    end else begin
        v3751_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9184_0_ce0_local = 1'b1;
    end else begin
        v9184_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9184_1_ce0_local = 1'b1;
    end else begin
        v9184_1_ce0_local = 1'b0;
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
assign add_ln5429_1_fu_322_p2 = (ap_sig_allocacmp_indvar_flatten21_i_load + 9'd1);
assign add_ln5429_fu_254_p2 = (ap_sig_allocacmp_v372022_i_load + 6'd2);
assign add_ln5430_fu_316_p2 = (select_ln5429_fu_260_p3 + 6'd1);
assign add_ln5432_fu_397_p2 = (zext_ln5450_reg_463 + zext_ln5430_fu_394_p1);
assign add_ln5433_fu_406_p2 = (tmp_127_i_fu_370_p3 + zext_ln5433_fu_402_p1);
assign add_ln5435_1_fu_417_p2 = (tmp_129_i_fu_378_p3 + zext_ln5433_fu_402_p1);
assign add_ln5435_fu_388_p2 = (tmp_126_i_fu_358_p3 + zext_ln5435_fu_385_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_block_pp0_stage0_11001 = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_pp0_stage0_subdone = ((ap_done_reg == 1'b1) | ((ap_start_int == 1'b1) & (1'b1 == ap_block_state1_pp0_stage0_iter0)));
end
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_done_reg == 1'b1);
end
always @ (*) begin
    ap_condition_346 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln5429_reg_494 == 1'd0));
end
always @ (*) begin
    ap_condition_95 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_289_fu_365_p2 = (trunc_ln_i_reg_458 + zext_ln5429_1_fu_355_p1);
assign empty_fu_300_p2 = (mul_i145_i_i_fu_192_p3 + zext_ln5429_fu_276_p1);
assign icmp_ln5429_fu_334_p2 = ((ap_sig_allocacmp_indvar_flatten21_i_load == 9'd511) ? 1'b1 : 1'b0);
assign icmp_ln5430_fu_328_p2 = ((add_ln5430_fu_316_p2 == 6'd32) ? 1'b1 : 1'b0);
assign mul_i145_i_i_fu_192_p3 = {{tmp_i_fu_182_p4}, {5'd0}};
assign mul_i167_i_i_fu_218_p3 = {{tmp_125_i_fu_208_p4}, {5'd0}};
assign select_ln5429_1_fu_268_p3 = ((ap_phi_mux_icmp_ln543024_i_phi_fu_175_p4[0:0] == 1'b1) ? add_ln5429_fu_254_p2 : ap_sig_allocacmp_v372022_i_load);
assign select_ln5429_fu_260_p3 = ((ap_phi_mux_icmp_ln543024_i_phi_fu_175_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v372123_i_load);
assign tmp_125_i_fu_208_p4 = {{v3743[6:5]}};
assign tmp_126_i_fu_358_p3 = {{lshr_ln_i_cast_reg_479}, {5'd0}};
assign tmp_127_i_fu_370_p3 = {{empty_289_fu_365_p2}, {7'd0}};
assign tmp_129_i_fu_378_p3 = {{tmp_128_i_reg_484}, {7'd0}};
assign tmp_i_fu_182_p4 = {{v3743[4:2]}};
assign trunc_ln_i_fu_200_p3 = {{tmp_i_fu_182_p4}, {4'd0}};
assign v3751_1_address0 = zext_ln5435_1_fu_428_p1;
assign v3751_1_ce0 = v3751_1_ce0_local;
assign v3751_1_d0 = v9184_0_q0;
assign v3751_1_we0 = v3751_1_we0_local;
assign v3751_address0 = zext_ln5435_1_fu_428_p1;
assign v3751_ce0 = v3751_ce0_local;
assign v3751_d0 = v9184_1_q0;
assign v3751_we0 = v3751_we0_local;
assign v9184_0_address0 = zext_ln5433_1_fu_412_p1;
assign v9184_0_ce0 = v9184_0_ce0_local;
assign v9184_1_address0 = zext_ln5435_2_fu_423_p1;
assign v9184_1_ce0 = v9184_1_ce0_local;
assign zext_ln5429_1_fu_355_p1 = lshr_ln_i_reg_474;
assign zext_ln5429_fu_276_p1 = select_ln5429_1_fu_268_p3;
assign zext_ln5430_fu_394_p1 = select_ln5429_reg_468;
assign zext_ln5433_1_fu_412_p1 = add_ln5433_fu_406_p2;
assign zext_ln5433_fu_402_p1 = add_ln5432_fu_397_p2;
assign zext_ln5435_1_fu_428_p1 = add_ln5435_reg_498;
assign zext_ln5435_2_fu_423_p1 = add_ln5435_1_fu_417_p2;
assign zext_ln5435_fu_385_p1 = select_ln5429_reg_468;
assign zext_ln5450_fu_226_p1 = mul_i167_i_i_fu_218_p3;
always @ (posedge ap_clk) begin
    trunc_ln_i_reg_458[3:0] <= 4'b0000;
    zext_ln5450_reg_463[4:0] <= 5'b00000;
    zext_ln5450_reg_463[7] <= 1'b0;
end
endmodule 