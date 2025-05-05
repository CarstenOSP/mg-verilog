module forward_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v8735_address0,v8735_ce0,v8735_we0,v8735_d0,v8735_1_address0,v8735_1_ce0,v8735_1_we0,v8735_1_d0,v8734_1_address0,v8734_1_ce0,v8734_1_q0,v8733_1_address0,v8733_1_ce0,v8733_1_q0,v8734_address0,v8734_ce0,v8734_q0,v8733_address0,v8733_ce0,v8733_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] v8735_address0;
output   v8735_ce0;
output   v8735_we0;
output  [7:0] v8735_d0;
output  [11:0] v8735_1_address0;
output   v8735_1_ce0;
output   v8735_1_we0;
output  [7:0] v8735_1_d0;
output  [11:0] v8734_1_address0;
output   v8734_1_ce0;
input  [7:0] v8734_1_q0;
output  [11:0] v8733_1_address0;
output   v8733_1_ce0;
input  [7:0] v8733_1_q0;
output  [11:0] v8734_address0;
output   v8734_ce0;
input  [7:0] v8734_q0;
output  [11:0] v8733_address0;
output   v8733_ce0;
input  [7:0] v8733_q0;
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
wire   [0:0] icmp_ln11020_fu_386_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [9:0] add_ln11031_fu_328_p2;
reg   [9:0] add_ln11031_reg_515;
wire   [8:0] trunc_ln11031_fu_334_p1;
reg   [8:0] trunc_ln11031_reg_520;
reg   [2:0] lshr_ln_reg_525;
wire   [0:0] icmp_ln11022_fu_374_p2;
reg   [0:0] icmp_ln11022_reg_530;
wire   [0:0] icmp_ln11021_fu_380_p2;
reg   [0:0] icmp_ln11021_reg_535;
reg   [0:0] icmp_ln11020_reg_540;
wire   [63:0] zext_ln11031_4_fu_442_p1;
reg   [63:0] zext_ln11031_4_reg_544;
reg   [0:0] ap_phi_mux_icmp_ln1102139_phi_fu_179_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1102238_phi_fu_189_p4;
reg   [11:0] indvar_flatten1233_fu_78;
wire   [11:0] add_ln11020_1_fu_368_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v869134_fu_82;
wire   [5:0] v8691_fu_262_p3;
reg   [5:0] ap_sig_allocacmp_v869134_load;
reg   [6:0] indvar_flatten35_fu_86;
wire   [6:0] select_ln11021_1_fu_360_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [3:0] v869236_fu_90;
wire   [3:0] v8692_fu_290_p3;
reg   [3:0] ap_sig_allocacmp_v869236_load;
reg   [3:0] v869337_fu_94;
wire   [3:0] v8693_fu_348_p2;
reg   [3:0] ap_sig_allocacmp_v869337_load;
reg    v8734_1_ce0_local;
reg    v8733_1_ce0_local;
reg    v8734_ce0_local;
reg    v8733_ce0_local;
reg    v8735_1_we0_local;
wire   [7:0] select_ln11027_fu_456_p3;
reg    v8735_1_ce0_local;
reg    v8735_we0_local;
wire   [7:0] select_ln11031_fu_471_p3;
reg    v8735_ce0_local;
wire   [0:0] xor_ln11020_fu_250_p2;
wire   [5:0] add_ln11020_fu_236_p2;
wire   [3:0] select_ln11020_fu_242_p3;
wire   [0:0] and_ln11020_fu_256_p2;
wire   [0:0] empty_fu_276_p2;
wire   [3:0] add_ln11021_fu_270_p2;
wire   [6:0] tmp_fu_306_p3;
wire   [9:0] p_shl46_fu_298_p3;
wire   [9:0] zext_ln11031_fu_314_p1;
wire   [9:0] sub_ln11031_fu_318_p2;
wire   [9:0] zext_ln11031_1_fu_324_p1;
wire   [3:0] v8693_mid2_fu_282_p3;
wire   [6:0] add_ln11021_1_fu_354_p2;
wire   [11:0] tmp_656_fu_417_p3;
wire   [11:0] zext_ln11031_2_fu_424_p1;
wire   [11:0] sub_ln11023_fu_427_p2;
wire   [11:0] zext_ln11031_3_fu_433_p1;
wire   [11:0] add_ln11031_1_fu_436_p2;
wire   [0:0] icmp_ln224_fu_450_p2;
wire   [0:0] icmp_ln224_5_fu_465_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_376;
reg    ap_condition_113;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_78 = 12'd0;
#0 v869134_fu_82 = 6'd0;
#0 indvar_flatten35_fu_86 = 7'd0;
#0 v869236_fu_90 = 4'd0;
#0 v869337_fu_94 = 4'd0;
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
    if ((1'b1 == ap_condition_113)) begin
        indvar_flatten1233_fu_78 <= add_ln11020_1_fu_368_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_113)) begin
    indvar_flatten35_fu_86 <= select_ln11021_1_fu_360_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_113)) begin
    v869134_fu_82 <= v8691_fu_262_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_113)) begin
    v869236_fu_90 <= v8692_fu_290_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_113)) begin
    v869337_fu_94 <= v8693_fu_348_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln11031_reg_515 <= add_ln11031_fu_328_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln11020_reg_540 <= icmp_ln11020_fu_386_p2;
        lshr_ln_reg_525 <= {{v8693_mid2_fu_282_p3[3:1]}};
        trunc_ln11031_reg_520 <= trunc_ln11031_fu_334_p1;
        zext_ln11031_4_reg_544[11 : 0] <= zext_ln11031_4_fu_442_p1[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln11021_reg_535 <= icmp_ln11021_fu_380_p2;
        icmp_ln11022_reg_530 <= icmp_ln11022_fu_374_p2;
    end
end
always @ (*) begin
    if (((icmp_ln11020_fu_386_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_376)) begin
            ap_phi_mux_icmp_ln1102139_phi_fu_179_p4 = icmp_ln11021_reg_535;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1102139_phi_fu_179_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1102139_phi_fu_179_p4 = icmp_ln11021_reg_535;
        end
    end else begin
        ap_phi_mux_icmp_ln1102139_phi_fu_179_p4 = icmp_ln11021_reg_535;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_376)) begin
            ap_phi_mux_icmp_ln1102238_phi_fu_189_p4 = icmp_ln11022_reg_530;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1102238_phi_fu_189_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1102238_phi_fu_189_p4 = icmp_ln11022_reg_530;
        end
    end else begin
        ap_phi_mux_icmp_ln1102238_phi_fu_189_p4 = icmp_ln11022_reg_530;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v869134_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v869134_load = v869134_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v869236_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v869236_load = v869236_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v869337_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v869337_load = v869337_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8733_1_ce0_local = 1'b1;
    end else begin
        v8733_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8733_ce0_local = 1'b1;
    end else begin
        v8733_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8734_1_ce0_local = 1'b1;
    end else begin
        v8734_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8734_ce0_local = 1'b1;
    end else begin
        v8734_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8735_1_ce0_local = 1'b1;
    end else begin
        v8735_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8735_1_we0_local = 1'b1;
    end else begin
        v8735_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8735_ce0_local = 1'b1;
    end else begin
        v8735_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8735_we0_local = 1'b1;
    end else begin
        v8735_we0_local = 1'b0;
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
assign add_ln11020_1_fu_368_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 12'd1);
assign add_ln11020_fu_236_p2 = (ap_sig_allocacmp_v869134_load + 6'd1);
assign add_ln11021_1_fu_354_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 7'd1);
assign add_ln11021_fu_270_p2 = (select_ln11020_fu_242_p3 + 4'd1);
assign add_ln11031_1_fu_436_p2 = (sub_ln11023_fu_427_p2 + zext_ln11031_3_fu_433_p1);
assign add_ln11031_fu_328_p2 = (sub_ln11031_fu_318_p2 + zext_ln11031_1_fu_324_p1);
assign and_ln11020_fu_256_p2 = (xor_ln11020_fu_250_p2 & ap_phi_mux_icmp_ln1102238_phi_fu_189_p4);
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
    ap_condition_113 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_376 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln11020_reg_540 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_276_p2 = (ap_phi_mux_icmp_ln1102139_phi_fu_179_p4 | and_ln11020_fu_256_p2);
assign icmp_ln11020_fu_386_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln11021_fu_380_p2 = ((select_ln11021_1_fu_360_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln11022_fu_374_p2 = ((v8693_fu_348_p2 == 4'd14) ? 1'b1 : 1'b0);
assign icmp_ln224_5_fu_465_p2 = (($signed(v8733_q0) < $signed(v8734_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_450_p2 = (($signed(v8733_1_q0) < $signed(v8734_1_q0)) ? 1'b1 : 1'b0);
assign p_shl46_fu_298_p3 = {{v8691_fu_262_p3}, {4'd0}};
assign select_ln11020_fu_242_p3 = ((ap_phi_mux_icmp_ln1102139_phi_fu_179_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v869236_load);
assign select_ln11021_1_fu_360_p3 = ((ap_phi_mux_icmp_ln1102139_phi_fu_179_p4[0:0] == 1'b1) ? 7'd1 : add_ln11021_1_fu_354_p2);
assign select_ln11027_fu_456_p3 = ((icmp_ln224_fu_450_p2[0:0] == 1'b1) ? v8734_1_q0 : v8733_1_q0);
assign select_ln11031_fu_471_p3 = ((icmp_ln224_5_fu_465_p2[0:0] == 1'b1) ? v8734_q0 : v8733_q0);
assign sub_ln11023_fu_427_p2 = (tmp_656_fu_417_p3 - zext_ln11031_2_fu_424_p1);
assign sub_ln11031_fu_318_p2 = (p_shl46_fu_298_p3 - zext_ln11031_fu_314_p1);
assign tmp_656_fu_417_p3 = {{trunc_ln11031_reg_520}, {3'd0}};
assign tmp_fu_306_p3 = {{v8691_fu_262_p3}, {1'd0}};
assign trunc_ln11031_fu_334_p1 = add_ln11031_fu_328_p2[8:0];
assign v8691_fu_262_p3 = ((ap_phi_mux_icmp_ln1102139_phi_fu_179_p4[0:0] == 1'b1) ? add_ln11020_fu_236_p2 : ap_sig_allocacmp_v869134_load);
assign v8692_fu_290_p3 = ((and_ln11020_fu_256_p2[0:0] == 1'b1) ? add_ln11021_fu_270_p2 : select_ln11020_fu_242_p3);
assign v8693_fu_348_p2 = (v8693_mid2_fu_282_p3 + 4'd2);
assign v8693_mid2_fu_282_p3 = ((empty_fu_276_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v869337_load);
assign v8733_1_address0 = zext_ln11031_4_fu_442_p1;
assign v8733_1_ce0 = v8733_1_ce0_local;
assign v8733_address0 = zext_ln11031_4_fu_442_p1;
assign v8733_ce0 = v8733_ce0_local;
assign v8734_1_address0 = zext_ln11031_4_fu_442_p1;
assign v8734_1_ce0 = v8734_1_ce0_local;
assign v8734_address0 = zext_ln11031_4_fu_442_p1;
assign v8734_ce0 = v8734_ce0_local;
assign v8735_1_address0 = zext_ln11031_4_reg_544;
assign v8735_1_ce0 = v8735_1_ce0_local;
assign v8735_1_d0 = select_ln11027_fu_456_p3;
assign v8735_1_we0 = v8735_1_we0_local;
assign v8735_address0 = zext_ln11031_4_reg_544;
assign v8735_ce0 = v8735_ce0_local;
assign v8735_d0 = select_ln11031_fu_471_p3;
assign v8735_we0 = v8735_we0_local;
assign xor_ln11020_fu_250_p2 = (ap_phi_mux_icmp_ln1102139_phi_fu_179_p4 ^ 1'd1);
assign zext_ln11031_1_fu_324_p1 = v8692_fu_290_p3;
assign zext_ln11031_2_fu_424_p1 = add_ln11031_reg_515;
assign zext_ln11031_3_fu_433_p1 = lshr_ln_reg_525;
assign zext_ln11031_4_fu_442_p1 = add_ln11031_1_fu_436_p2;
assign zext_ln11031_fu_314_p1 = tmp_fu_306_p3;
always @ (posedge ap_clk) begin
    zext_ln11031_4_reg_544[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 