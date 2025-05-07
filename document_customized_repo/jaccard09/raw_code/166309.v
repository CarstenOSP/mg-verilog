module forward_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v12818_address0,v12818_ce0,v12818_we0,v12818_d0,v12818_1_address0,v12818_1_ce0,v12818_1_we0,v12818_1_d0,v12817_1_address0,v12817_1_ce0,v12817_1_q0,v12816_1_address0,v12816_1_ce0,v12816_1_q0,v12817_address0,v12817_ce0,v12817_q0,v12816_address0,v12816_ce0,v12816_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] v12818_address0;
output   v12818_ce0;
output   v12818_we0;
output  [7:0] v12818_d0;
output  [11:0] v12818_1_address0;
output   v12818_1_ce0;
output   v12818_1_we0;
output  [7:0] v12818_1_d0;
output  [11:0] v12817_1_address0;
output   v12817_1_ce0;
input  [7:0] v12817_1_q0;
output  [11:0] v12816_1_address0;
output   v12816_1_ce0;
input  [7:0] v12816_1_q0;
output  [11:0] v12817_address0;
output   v12817_ce0;
input  [7:0] v12817_q0;
output  [11:0] v12816_address0;
output   v12816_ce0;
input  [7:0] v12816_q0;
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
wire   [0:0] icmp_ln16474_fu_372_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] add_ln16477_fu_310_p2;
reg   [7:0] add_ln16477_reg_482;
reg   [3:0] lshr_ln_reg_487;
wire   [0:0] xor_ln16476_fu_360_p2;
reg   [0:0] xor_ln16476_reg_492;
wire   [0:0] icmp_ln16475_fu_366_p2;
reg   [0:0] icmp_ln16475_reg_497;
reg   [0:0] icmp_ln16474_reg_502;
wire   [63:0] zext_ln16485_1_fu_409_p1;
reg   [63:0] zext_ln16485_1_reg_506;
reg   [0:0] ap_phi_mux_icmp_ln1647539_phi_fu_179_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1647638_phi_fu_189_p4;
reg   [11:0] indvar_flatten1233_fu_78;
wire   [11:0] add_ln16474_1_fu_346_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [3:0] v1277434_fu_82;
wire   [3:0] v12774_fu_264_p3;
reg   [3:0] ap_sig_allocacmp_v1277434_load;
reg   [10:0] indvar_flatten35_fu_86;
wire   [10:0] select_ln16475_1_fu_338_p3;
reg   [10:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [5:0] v1277536_fu_90;
wire   [5:0] v12775_fu_290_p3;
reg   [5:0] ap_sig_allocacmp_v1277536_load;
reg   [5:0] v1277637_fu_94;
wire   [5:0] v12776_fu_326_p2;
reg   [5:0] ap_sig_allocacmp_v1277637_load;
reg    v12817_1_ce0_local;
reg    v12816_1_ce0_local;
reg    v12817_ce0_local;
reg    v12816_ce0_local;
reg    v12818_1_we0_local;
wire   [7:0] select_ln16481_fu_423_p3;
reg    v12818_1_ce0_local;
reg    v12818_we0_local;
wire   [7:0] select_ln16485_fu_438_p3;
reg    v12818_ce0_local;
wire   [3:0] add_ln16474_fu_236_p2;
wire   [5:0] select_ln16474_fu_242_p3;
wire   [0:0] or_ln16474_fu_258_p2;
wire   [5:0] select_ln16474_1_fu_250_p3;
wire   [5:0] add_ln16475_fu_276_p2;
wire   [2:0] trunc_ln16475_fu_272_p1;
wire   [7:0] tmp_fu_298_p3;
wire   [7:0] zext_ln16485_fu_306_p1;
wire   [5:0] v12776_mid2_fu_282_p3;
wire   [10:0] add_ln16475_1_fu_332_p2;
wire   [0:0] tmp_371_fu_352_p3;
wire   [11:0] tmp_s_fu_403_p3;
wire   [0:0] icmp_ln224_fu_417_p2;
wire   [0:0] icmp_ln224_3_fu_432_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_351;
reg    ap_condition_111;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_78 = 12'd0;
#0 v1277434_fu_82 = 4'd0;
#0 indvar_flatten35_fu_86 = 11'd0;
#0 v1277536_fu_90 = 6'd0;
#0 v1277637_fu_94 = 6'd0;
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
    if ((1'b1 == ap_condition_111)) begin
        indvar_flatten1233_fu_78 <= add_ln16474_1_fu_346_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    indvar_flatten35_fu_86 <= select_ln16475_1_fu_338_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    v1277434_fu_82 <= v12774_fu_264_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    v1277536_fu_90 <= v12775_fu_290_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_111)) begin
    v1277637_fu_94 <= v12776_fu_326_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln16477_reg_482 <= add_ln16477_fu_310_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln16474_reg_502 <= icmp_ln16474_fu_372_p2;
        lshr_ln_reg_487 <= {{v12776_mid2_fu_282_p3[4:1]}};
        zext_ln16485_1_reg_506[11 : 0] <= zext_ln16485_1_fu_409_p1[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln16475_reg_497 <= icmp_ln16475_fu_366_p2;
        xor_ln16476_reg_492 <= xor_ln16476_fu_360_p2;
    end
end
always @ (*) begin
    if (((icmp_ln16474_fu_372_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_351)) begin
            ap_phi_mux_icmp_ln1647539_phi_fu_179_p4 = icmp_ln16475_reg_497;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1647539_phi_fu_179_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1647539_phi_fu_179_p4 = icmp_ln16475_reg_497;
        end
    end else begin
        ap_phi_mux_icmp_ln1647539_phi_fu_179_p4 = icmp_ln16475_reg_497;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_351)) begin
            ap_phi_mux_icmp_ln1647638_phi_fu_189_p4 = xor_ln16476_reg_492;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1647638_phi_fu_189_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1647638_phi_fu_189_p4 = xor_ln16476_reg_492;
        end
    end else begin
        ap_phi_mux_icmp_ln1647638_phi_fu_189_p4 = xor_ln16476_reg_492;
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
        ap_sig_allocacmp_indvar_flatten35_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1277434_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v1277434_load = v1277434_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1277536_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1277536_load = v1277536_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1277637_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1277637_load = v1277637_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12816_1_ce0_local = 1'b1;
    end else begin
        v12816_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12816_ce0_local = 1'b1;
    end else begin
        v12816_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12817_1_ce0_local = 1'b1;
    end else begin
        v12817_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12817_ce0_local = 1'b1;
    end else begin
        v12817_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12818_1_ce0_local = 1'b1;
    end else begin
        v12818_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12818_1_we0_local = 1'b1;
    end else begin
        v12818_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12818_ce0_local = 1'b1;
    end else begin
        v12818_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v12818_we0_local = 1'b1;
    end else begin
        v12818_we0_local = 1'b0;
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
assign add_ln16474_1_fu_346_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 12'd1);
assign add_ln16474_fu_236_p2 = (ap_sig_allocacmp_v1277434_load + 4'd1);
assign add_ln16475_1_fu_332_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 11'd1);
assign add_ln16475_fu_276_p2 = (select_ln16474_fu_242_p3 + 6'd1);
assign add_ln16477_fu_310_p2 = (tmp_fu_298_p3 + zext_ln16485_fu_306_p1);
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
    ap_condition_111 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_351 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln16474_reg_502 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln16474_fu_372_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 12'd4095) ? 1'b1 : 1'b0);
assign icmp_ln16475_fu_366_p2 = ((select_ln16475_1_fu_338_p3 == 11'd512) ? 1'b1 : 1'b0);
assign icmp_ln224_3_fu_432_p2 = (($signed(v12816_q0) < $signed(v12817_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_417_p2 = (($signed(v12816_1_q0) < $signed(v12817_1_q0)) ? 1'b1 : 1'b0);
assign or_ln16474_fu_258_p2 = (ap_phi_mux_icmp_ln1647638_phi_fu_189_p4 | ap_phi_mux_icmp_ln1647539_phi_fu_179_p4);
assign select_ln16474_1_fu_250_p3 = ((ap_phi_mux_icmp_ln1647539_phi_fu_179_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v1277637_load);
assign select_ln16474_fu_242_p3 = ((ap_phi_mux_icmp_ln1647539_phi_fu_179_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v1277536_load);
assign select_ln16475_1_fu_338_p3 = ((ap_phi_mux_icmp_ln1647539_phi_fu_179_p4[0:0] == 1'b1) ? 11'd1 : add_ln16475_1_fu_332_p2);
assign select_ln16481_fu_423_p3 = ((icmp_ln224_fu_417_p2[0:0] == 1'b1) ? v12817_1_q0 : v12816_1_q0);
assign select_ln16485_fu_438_p3 = ((icmp_ln224_3_fu_432_p2[0:0] == 1'b1) ? v12817_q0 : v12816_q0);
assign tmp_371_fu_352_p3 = v12776_fu_326_p2[32'd5];
assign tmp_fu_298_p3 = {{trunc_ln16475_fu_272_p1}, {5'd0}};
assign tmp_s_fu_403_p3 = {{add_ln16477_reg_482}, {lshr_ln_reg_487}};
assign trunc_ln16475_fu_272_p1 = v12774_fu_264_p3[2:0];
assign v12774_fu_264_p3 = ((ap_phi_mux_icmp_ln1647539_phi_fu_179_p4[0:0] == 1'b1) ? add_ln16474_fu_236_p2 : ap_sig_allocacmp_v1277434_load);
assign v12775_fu_290_p3 = ((or_ln16474_fu_258_p2[0:0] == 1'b1) ? select_ln16474_fu_242_p3 : add_ln16475_fu_276_p2);
assign v12776_fu_326_p2 = (v12776_mid2_fu_282_p3 + 6'd2);
assign v12776_mid2_fu_282_p3 = ((or_ln16474_fu_258_p2[0:0] == 1'b1) ? select_ln16474_1_fu_250_p3 : 6'd0);
assign v12816_1_address0 = zext_ln16485_1_fu_409_p1;
assign v12816_1_ce0 = v12816_1_ce0_local;
assign v12816_address0 = zext_ln16485_1_fu_409_p1;
assign v12816_ce0 = v12816_ce0_local;
assign v12817_1_address0 = zext_ln16485_1_fu_409_p1;
assign v12817_1_ce0 = v12817_1_ce0_local;
assign v12817_address0 = zext_ln16485_1_fu_409_p1;
assign v12817_ce0 = v12817_ce0_local;
assign v12818_1_address0 = zext_ln16485_1_reg_506;
assign v12818_1_ce0 = v12818_1_ce0_local;
assign v12818_1_d0 = select_ln16481_fu_423_p3;
assign v12818_1_we0 = v12818_1_we0_local;
assign v12818_address0 = zext_ln16485_1_reg_506;
assign v12818_ce0 = v12818_ce0_local;
assign v12818_d0 = select_ln16485_fu_438_p3;
assign v12818_we0 = v12818_we0_local;
assign xor_ln16476_fu_360_p2 = (tmp_371_fu_352_p3 ^ 1'd1);
assign zext_ln16485_1_fu_409_p1 = tmp_s_fu_403_p3;
assign zext_ln16485_fu_306_p1 = v12775_fu_290_p3;
always @ (posedge ap_clk) begin
    zext_ln16485_1_reg_506[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 