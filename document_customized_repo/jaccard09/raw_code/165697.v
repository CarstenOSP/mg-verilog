module forward_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v151_address0,v151_ce0,v151_we0,v151_d0,v151_1_address0,v151_1_ce0,v151_1_we0,v151_1_d0,v145,v16160_0_address0,v16160_0_ce0,v16160_0_q0,v16160_1_address0,v16160_1_ce0,v16160_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v151_address0;
output   v151_ce0;
output   v151_we0;
output  [7:0] v151_d0;
output  [8:0] v151_1_address0;
output   v151_1_ce0;
output   v151_1_we0;
output  [7:0] v151_1_d0;
input  [11:0] v145;
output  [20:0] v16160_0_address0;
output   v16160_0_ce0;
input  [7:0] v16160_0_q0;
output  [20:0] v16160_1_address0;
output   v16160_1_ce0;
input  [7:0] v16160_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln337_fu_227_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [10:0] mul_i75_i_i_fu_183_p3;
reg   [10:0] mul_i75_i_i_reg_398;
wire   [5:0] empty_fu_191_p1;
reg   [5:0] empty_reg_403;
wire   [10:0] rem_i_i_fu_195_p3;
reg   [10:0] rem_i_i_reg_408;
reg   [0:0] icmp_ln337_reg_413;
reg   [0:0] icmp_ln337_reg_413_pp0_iter1_reg;
wire   [4:0] trunc_ln337_fu_266_p1;
reg   [4:0] trunc_ln337_reg_417;
wire   [3:0] lshr_ln_i_fu_283_p4;
reg   [3:0] lshr_ln_i_reg_422;
wire   [0:0] xor_ln338_fu_349_p2;
reg   [0:0] xor_ln338_reg_437;
reg   [0:0] ap_phi_mux_icmp_ln33824_i_phi_fu_165_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln341_fu_307_p1;
wire   [63:0] zext_ln343_1_fu_330_p1;
wire   [63:0] zext_ln343_fu_371_p1;
reg   [8:0] indvar_flatten21_i_fu_90;
wire   [8:0] add_ln337_1_fu_221_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten21_i_load;
reg   [5:0] v12822_i_fu_94;
wire   [5:0] select_ln337_1_fu_258_p3;
reg   [5:0] v12923_i_fu_98;
wire   [5:0] add_ln338_fu_335_p2;
reg    v16160_0_ce0_local;
reg    v16160_1_ce0_local;
reg    v151_1_we0_local;
reg    v151_1_ce0_local;
reg    v151_we0_local;
reg    v151_ce0_local;
wire   [5:0] tmp_i_fu_173_p4;
wire   [5:0] add_ln337_fu_244_p2;
wire   [10:0] zext_ln337_fu_270_p1;
wire   [5:0] select_ln337_fu_250_p3;
wire   [10:0] zext_ln338_fu_279_p1;
wire   [10:0] empty_235_fu_274_p2;
wire   [20:0] tmp_102_i_fu_298_p4;
wire   [10:0] add_ln340_fu_293_p2;
wire   [9:0] lshr_ln36_i_fu_312_p4;
wire   [20:0] tmp_103_i_fu_322_p3;
wire   [0:0] tmp_fu_341_p3;
wire   [8:0] tmp_100_i_fu_365_p3;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_142;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten21_i_fu_90 = 9'd0;
#0 v12822_i_fu_94 = 6'd0;
#0 v12923_i_fu_98 = 6'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_142)) begin
        indvar_flatten21_i_fu_90 <= add_ln337_1_fu_221_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v12822_i_fu_94 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v12822_i_fu_94 <= select_ln337_1_fu_258_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v12923_i_fu_98 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v12923_i_fu_98 <= add_ln338_fu_335_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        empty_reg_403 <= empty_fu_191_p1;
        icmp_ln337_reg_413 <= icmp_ln337_fu_227_p2;
        icmp_ln337_reg_413_pp0_iter1_reg <= icmp_ln337_reg_413;
        lshr_ln_i_reg_422 <= {{select_ln337_fu_250_p3[4:1]}};
        mul_i75_i_i_reg_398[10 : 5] <= mul_i75_i_i_fu_183_p3[10 : 5];
        rem_i_i_reg_408[10 : 5] <= rem_i_i_fu_195_p3[10 : 5];
        trunc_ln337_reg_417 <= trunc_ln337_fu_266_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        xor_ln338_reg_437 <= xor_ln338_fu_349_p2;
    end
end
always @ (*) begin
    if (((icmp_ln337_fu_227_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln337_reg_413_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln33824_i_phi_fu_165_p4 = xor_ln338_reg_437;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln33824_i_phi_fu_165_p4 = 1'd1;
    end else begin
        ap_phi_mux_icmp_ln33824_i_phi_fu_165_p4 = xor_ln338_reg_437;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten21_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten21_i_load = indvar_flatten21_i_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v151_1_ce0_local = 1'b1;
    end else begin
        v151_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v151_1_we0_local = 1'b1;
    end else begin
        v151_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v151_ce0_local = 1'b1;
    end else begin
        v151_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v151_we0_local = 1'b1;
    end else begin
        v151_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16160_0_ce0_local = 1'b1;
    end else begin
        v16160_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v16160_1_ce0_local = 1'b1;
    end else begin
        v16160_1_ce0_local = 1'b0;
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
assign add_ln337_1_fu_221_p2 = (ap_sig_allocacmp_indvar_flatten21_i_load + 9'd1);
assign add_ln337_fu_244_p2 = (v12822_i_fu_94 + 6'd1);
assign add_ln338_fu_335_p2 = (select_ln337_fu_250_p3 + 6'd2);
assign add_ln340_fu_293_p2 = (rem_i_i_reg_408 + zext_ln338_fu_279_p1);
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
    ap_condition_142 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_235_fu_274_p2 = (mul_i75_i_i_reg_398 + zext_ln337_fu_270_p1);
assign empty_fu_191_p1 = v145[5:0];
assign icmp_ln337_fu_227_p2 = ((ap_sig_allocacmp_indvar_flatten21_i_load == 9'd511) ? 1'b1 : 1'b0);
assign lshr_ln36_i_fu_312_p4 = {{add_ln340_fu_293_p2[10:1]}};
assign lshr_ln_i_fu_283_p4 = {{select_ln337_fu_250_p3[4:1]}};
assign mul_i75_i_i_fu_183_p3 = {{tmp_i_fu_173_p4}, {5'd0}};
assign rem_i_i_fu_195_p3 = {{empty_fu_191_p1}, {5'd0}};
assign select_ln337_1_fu_258_p3 = ((ap_phi_mux_icmp_ln33824_i_phi_fu_165_p4[0:0] == 1'b1) ? v12822_i_fu_94 : add_ln337_fu_244_p2);
assign select_ln337_fu_250_p3 = ((ap_phi_mux_icmp_ln33824_i_phi_fu_165_p4[0:0] == 1'b1) ? v12923_i_fu_98 : 6'd0);
assign tmp_100_i_fu_365_p3 = {{trunc_ln337_reg_417}, {lshr_ln_i_reg_422}};
assign tmp_102_i_fu_298_p4 = {{{empty_235_fu_274_p2}, {empty_reg_403}}, {lshr_ln_i_fu_283_p4}};
assign tmp_103_i_fu_322_p3 = {{empty_235_fu_274_p2}, {lshr_ln36_i_fu_312_p4}};
assign tmp_fu_341_p3 = add_ln338_fu_335_p2[32'd5];
assign tmp_i_fu_173_p4 = {{v145[11:6]}};
assign trunc_ln337_fu_266_p1 = select_ln337_1_fu_258_p3[4:0];
assign v151_1_address0 = zext_ln343_fu_371_p1;
assign v151_1_ce0 = v151_1_ce0_local;
assign v151_1_d0 = v16160_0_q0;
assign v151_1_we0 = v151_1_we0_local;
assign v151_address0 = zext_ln343_fu_371_p1;
assign v151_ce0 = v151_ce0_local;
assign v151_d0 = v16160_1_q0;
assign v151_we0 = v151_we0_local;
assign v16160_0_address0 = zext_ln341_fu_307_p1;
assign v16160_0_ce0 = v16160_0_ce0_local;
assign v16160_1_address0 = zext_ln343_1_fu_330_p1;
assign v16160_1_ce0 = v16160_1_ce0_local;
assign xor_ln338_fu_349_p2 = (tmp_fu_341_p3 ^ 1'd1);
assign zext_ln337_fu_270_p1 = select_ln337_1_fu_258_p3;
assign zext_ln338_fu_279_p1 = select_ln337_fu_250_p3;
assign zext_ln341_fu_307_p1 = tmp_102_i_fu_298_p4;
assign zext_ln343_1_fu_330_p1 = tmp_103_i_fu_322_p3;
assign zext_ln343_fu_371_p1 = tmp_100_i_fu_365_p3;
always @ (posedge ap_clk) begin
    mul_i75_i_i_reg_398[4:0] <= 5'b00000;
    rem_i_i_reg_408[4:0] <= 5'b00000;
end
endmodule 