module forward_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v7238_address0,v7238_ce0,v7238_we0,v7238_d0,v7238_1_address0,v7238_1_ce0,v7238_1_we0,v7238_1_d0,v7237_1_address0,v7237_1_ce0,v7237_1_q0,v7236_1_address0,v7236_1_ce0,v7236_1_q0,v7237_address0,v7237_ce0,v7237_q0,v7236_address0,v7236_ce0,v7236_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [10:0] v7238_address0;
output   v7238_ce0;
output   v7238_we0;
output  [7:0] v7238_d0;
output  [10:0] v7238_1_address0;
output   v7238_1_ce0;
output   v7238_1_we0;
output  [7:0] v7238_1_d0;
output  [10:0] v7237_1_address0;
output   v7237_1_ce0;
input  [7:0] v7237_1_q0;
output  [10:0] v7236_1_address0;
output   v7236_1_ce0;
input  [7:0] v7236_1_q0;
output  [10:0] v7237_address0;
output   v7237_ce0;
input  [7:0] v7237_q0;
output  [10:0] v7236_address0;
output   v7236_ce0;
input  [7:0] v7236_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln9050_fu_236_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln9050_reg_515;
reg   [0:0] icmp_ln9050_reg_515_pp0_iter1_reg;
wire   [10:0] add_ln9061_fu_355_p2;
reg   [10:0] add_ln9061_reg_519;
reg   [1:0] lshr_ln_reg_525;
wire   [0:0] icmp_ln9052_fu_391_p2;
reg   [0:0] icmp_ln9052_reg_530;
wire   [0:0] icmp_ln9051_fu_397_p2;
reg   [0:0] icmp_ln9051_reg_535;
wire   [63:0] zext_ln9061_4_fu_442_p1;
reg   [63:0] zext_ln9061_4_reg_540;
reg   [0:0] ap_phi_mux_icmp_ln905139_phi_fu_184_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln905238_phi_fu_195_p4;
reg   [10:0] indvar_flatten1233_fu_82;
wire   [10:0] add_ln9050_1_fu_230_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v719434_fu_86;
wire   [5:0] v7194_fu_285_p3;
reg   [6:0] indvar_flatten35_fu_90;
wire   [6:0] select_ln9051_1_fu_383_p3;
reg   [4:0] v719536_fu_94;
wire   [4:0] v7195_fu_313_p3;
reg   [2:0] v719637_fu_98;
wire   [2:0] v7196_fu_371_p2;
reg    v7237_1_ce0_local;
reg    v7236_1_ce0_local;
reg    v7237_ce0_local;
reg    v7236_ce0_local;
reg    v7238_1_we0_local;
wire   [7:0] select_ln9057_fu_456_p3;
reg    v7238_1_ce0_local;
reg    v7238_we0_local;
wire   [7:0] select_ln9061_fu_471_p3;
reg    v7238_ce0_local;
wire   [0:0] xor_ln9050_fu_273_p2;
wire   [5:0] add_ln9050_fu_259_p2;
wire   [4:0] select_ln9050_fu_265_p3;
wire   [0:0] and_ln9050_fu_279_p2;
wire   [0:0] empty_fu_299_p2;
wire   [4:0] add_ln9051_fu_293_p2;
wire   [9:0] tmp_fu_321_p3;
wire   [7:0] tmp_15_fu_333_p3;
wire   [10:0] zext_ln9061_fu_329_p1;
wire   [10:0] zext_ln9061_1_fu_341_p1;
wire   [10:0] add_ln9061_2_fu_345_p2;
wire   [10:0] zext_ln9061_2_fu_351_p1;
wire   [2:0] v7196_mid2_fu_305_p3;
wire   [6:0] add_ln9051_1_fu_377_p2;
wire   [10:0] shl_ln9061_fu_423_p2;
wire   [10:0] sub_ln9053_fu_428_p2;
wire   [10:0] zext_ln9061_3_fu_433_p1;
wire   [10:0] add_ln9061_1_fu_436_p2;
wire   [0:0] icmp_ln224_fu_450_p2;
wire   [0:0] icmp_ln224_1_fu_465_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_160;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_82 = 11'd0;
#0 v719434_fu_86 = 6'd0;
#0 indvar_flatten35_fu_90 = 7'd0;
#0 v719536_fu_94 = 5'd0;
#0 v719637_fu_98 = 3'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_160)) begin
        indvar_flatten1233_fu_82 <= add_ln9050_1_fu_230_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten35_fu_90 <= 7'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten35_fu_90 <= select_ln9051_1_fu_383_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v719434_fu_86 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v719434_fu_86 <= v7194_fu_285_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v719536_fu_94 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v719536_fu_94 <= v7195_fu_313_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v719637_fu_98 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v719637_fu_98 <= v7196_fu_371_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln9061_reg_519 <= add_ln9061_fu_355_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln9050_reg_515 <= icmp_ln9050_fu_236_p2;
        icmp_ln9050_reg_515_pp0_iter1_reg <= icmp_ln9050_reg_515;
        lshr_ln_reg_525 <= {{v7196_mid2_fu_305_p3[2:1]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9051_reg_535 <= icmp_ln9051_fu_397_p2;
        icmp_ln9052_reg_530 <= icmp_ln9052_fu_391_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln9061_4_reg_540[10 : 0] <= zext_ln9061_4_fu_442_p1[10 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln9050_fu_236_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg))) begin
        ap_loop_exit_ready_delayed = 1'b1;
    end else begin
        ap_loop_exit_ready_delayed = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln9050_reg_515_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln905139_phi_fu_184_p4 = icmp_ln9051_reg_535;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln905139_phi_fu_184_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln905139_phi_fu_184_p4 = icmp_ln9051_reg_535;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln9050_reg_515_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln905238_phi_fu_195_p4 = icmp_ln9052_reg_530;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln905238_phi_fu_195_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln905238_phi_fu_195_p4 = icmp_ln9052_reg_530;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7236_1_ce0_local = 1'b1;
    end else begin
        v7236_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7236_ce0_local = 1'b1;
    end else begin
        v7236_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7237_1_ce0_local = 1'b1;
    end else begin
        v7237_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7237_ce0_local = 1'b1;
    end else begin
        v7237_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7238_1_ce0_local = 1'b1;
    end else begin
        v7238_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7238_1_we0_local = 1'b1;
    end else begin
        v7238_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7238_ce0_local = 1'b1;
    end else begin
        v7238_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7238_we0_local = 1'b1;
    end else begin
        v7238_we0_local = 1'b0;
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
assign add_ln9050_1_fu_230_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 11'd1);
assign add_ln9050_fu_259_p2 = (v719434_fu_86 + 6'd1);
assign add_ln9051_1_fu_377_p2 = (indvar_flatten35_fu_90 + 7'd1);
assign add_ln9051_fu_293_p2 = (select_ln9050_fu_265_p3 + 5'd1);
assign add_ln9061_1_fu_436_p2 = (sub_ln9053_fu_428_p2 + zext_ln9061_3_fu_433_p1);
assign add_ln9061_2_fu_345_p2 = (zext_ln9061_fu_329_p1 + zext_ln9061_1_fu_341_p1);
assign add_ln9061_fu_355_p2 = (add_ln9061_2_fu_345_p2 + zext_ln9061_2_fu_351_p1);
assign and_ln9050_fu_279_p2 = (xor_ln9050_fu_273_p2 & ap_phi_mux_icmp_ln905238_phi_fu_195_p4);
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
    ap_condition_160 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_299_p2 = (ap_phi_mux_icmp_ln905139_phi_fu_184_p4 | and_ln9050_fu_279_p2);
assign icmp_ln224_1_fu_465_p2 = (($signed(v7236_q0) < $signed(v7237_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_450_p2 = (($signed(v7236_1_q0) < $signed(v7237_1_q0)) ? 1'b1 : 1'b0);
assign icmp_ln9050_fu_236_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 11'd1919) ? 1'b1 : 1'b0);
assign icmp_ln9051_fu_397_p2 = ((select_ln9051_1_fu_383_p3 == 7'd60) ? 1'b1 : 1'b0);
assign icmp_ln9052_fu_391_p2 = ((v7196_fu_371_p2 == 3'd6) ? 1'b1 : 1'b0);
assign select_ln9050_fu_265_p3 = ((ap_phi_mux_icmp_ln905139_phi_fu_184_p4[0:0] == 1'b1) ? 5'd0 : v719536_fu_94);
assign select_ln9051_1_fu_383_p3 = ((ap_phi_mux_icmp_ln905139_phi_fu_184_p4[0:0] == 1'b1) ? 7'd1 : add_ln9051_1_fu_377_p2);
assign select_ln9057_fu_456_p3 = ((icmp_ln224_fu_450_p2[0:0] == 1'b1) ? v7237_1_q0 : v7236_1_q0);
assign select_ln9061_fu_471_p3 = ((icmp_ln224_1_fu_465_p2[0:0] == 1'b1) ? v7237_q0 : v7236_q0);
assign shl_ln9061_fu_423_p2 = add_ln9061_reg_519 << 11'd2;
assign sub_ln9053_fu_428_p2 = (shl_ln9061_fu_423_p2 - add_ln9061_reg_519);
assign tmp_15_fu_333_p3 = {{v7194_fu_285_p3}, {2'd0}};
assign tmp_fu_321_p3 = {{v7194_fu_285_p3}, {4'd0}};
assign v7194_fu_285_p3 = ((ap_phi_mux_icmp_ln905139_phi_fu_184_p4[0:0] == 1'b1) ? add_ln9050_fu_259_p2 : v719434_fu_86);
assign v7195_fu_313_p3 = ((and_ln9050_fu_279_p2[0:0] == 1'b1) ? add_ln9051_fu_293_p2 : select_ln9050_fu_265_p3);
assign v7196_fu_371_p2 = (v7196_mid2_fu_305_p3 + 3'd2);
assign v7196_mid2_fu_305_p3 = ((empty_fu_299_p2[0:0] == 1'b1) ? 3'd0 : v719637_fu_98);
assign v7236_1_address0 = zext_ln9061_4_fu_442_p1;
assign v7236_1_ce0 = v7236_1_ce0_local;
assign v7236_address0 = zext_ln9061_4_fu_442_p1;
assign v7236_ce0 = v7236_ce0_local;
assign v7237_1_address0 = zext_ln9061_4_fu_442_p1;
assign v7237_1_ce0 = v7237_1_ce0_local;
assign v7237_address0 = zext_ln9061_4_fu_442_p1;
assign v7237_ce0 = v7237_ce0_local;
assign v7238_1_address0 = zext_ln9061_4_reg_540;
assign v7238_1_ce0 = v7238_1_ce0_local;
assign v7238_1_d0 = select_ln9057_fu_456_p3;
assign v7238_1_we0 = v7238_1_we0_local;
assign v7238_address0 = zext_ln9061_4_reg_540;
assign v7238_ce0 = v7238_ce0_local;
assign v7238_d0 = select_ln9061_fu_471_p3;
assign v7238_we0 = v7238_we0_local;
assign xor_ln9050_fu_273_p2 = (ap_phi_mux_icmp_ln905139_phi_fu_184_p4 ^ 1'd1);
assign zext_ln9061_1_fu_341_p1 = tmp_15_fu_333_p3;
assign zext_ln9061_2_fu_351_p1 = v7195_fu_313_p3;
assign zext_ln9061_3_fu_433_p1 = lshr_ln_reg_525;
assign zext_ln9061_4_fu_442_p1 = add_ln9061_1_fu_436_p2;
assign zext_ln9061_fu_329_p1 = tmp_fu_321_p3;
always @ (posedge ap_clk) begin
    zext_ln9061_4_reg_540[63:11] <= 53'b00000000000000000000000000000000000000000000000000000;
end
endmodule 