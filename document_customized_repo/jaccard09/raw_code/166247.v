module forward_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9714_address0,v9714_ce0,v9714_we0,v9714_d0,v9714_1_address0,v9714_1_ce0,v9714_1_we0,v9714_1_d0,v9713_1_address0,v9713_1_ce0,v9713_1_q0,v9712_1_address0,v9712_1_ce0,v9712_1_q0,v9713_address0,v9713_ce0,v9713_q0,v9712_address0,v9712_ce0,v9712_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v9714_address0;
output   v9714_ce0;
output   v9714_we0;
output  [7:0] v9714_d0;
output  [13:0] v9714_1_address0;
output   v9714_1_ce0;
output   v9714_1_we0;
output  [7:0] v9714_1_d0;
output  [13:0] v9713_1_address0;
output   v9713_1_ce0;
input  [7:0] v9713_1_q0;
output  [13:0] v9712_1_address0;
output   v9712_1_ce0;
input  [7:0] v9712_1_q0;
output  [13:0] v9713_address0;
output   v9713_ce0;
input  [7:0] v9713_q0;
output  [13:0] v9712_address0;
output   v9712_ce0;
input  [7:0] v9712_q0;
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
wire   [0:0] icmp_ln12412_fu_368_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [11:0] add_ln12423_fu_310_p2;
reg   [11:0] add_ln12423_reg_501;
wire   [9:0] trunc_ln12423_fu_316_p1;
reg   [9:0] trunc_ln12423_reg_506;
reg   [3:0] lshr_ln_reg_511;
wire   [0:0] icmp_ln12414_fu_356_p2;
reg   [0:0] icmp_ln12414_reg_516;
wire   [0:0] icmp_ln12413_fu_362_p2;
reg   [0:0] icmp_ln12413_reg_521;
reg   [0:0] icmp_ln12412_reg_526;
wire   [63:0] zext_ln12423_2_fu_428_p1;
reg   [63:0] zext_ln12423_2_reg_530;
reg   [0:0] ap_phi_mux_icmp_ln1241339_phi_fu_179_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1241438_phi_fu_189_p4;
reg   [13:0] indvar_flatten1233_fu_78;
wire   [13:0] add_ln12412_1_fu_350_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v967034_fu_82;
wire   [5:0] v9670_fu_264_p3;
reg   [5:0] ap_sig_allocacmp_v967034_load;
reg   [9:0] indvar_flatten35_fu_86;
wire   [9:0] select_ln12413_1_fu_342_p3;
reg   [9:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [5:0] v967136_fu_90;
wire   [5:0] v9671_fu_286_p3;
reg   [5:0] ap_sig_allocacmp_v967136_load;
reg   [4:0] v967237_fu_94;
wire   [4:0] v9672_fu_330_p2;
reg   [4:0] ap_sig_allocacmp_v967237_load;
reg    v9713_1_ce0_local;
reg    v9712_1_ce0_local;
reg    v9713_ce0_local;
reg    v9712_ce0_local;
reg    v9714_1_we0_local;
wire   [7:0] select_ln12419_fu_442_p3;
reg    v9714_1_ce0_local;
reg    v9714_we0_local;
wire   [7:0] select_ln12423_fu_457_p3;
reg    v9714_ce0_local;
wire   [5:0] add_ln12412_fu_236_p2;
wire   [5:0] select_ln12412_fu_242_p3;
wire   [0:0] or_ln12412_fu_258_p2;
wire   [4:0] select_ln12412_1_fu_250_p3;
wire   [5:0] add_ln12413_fu_272_p2;
wire   [10:0] tmp_fu_294_p3;
wire   [11:0] zext_ln12413_fu_302_p1;
wire   [11:0] zext_ln12423_fu_306_p1;
wire   [4:0] v9672_mid2_fu_278_p3;
wire   [9:0] add_ln12413_1_fu_336_p2;
wire   [13:0] tmp_522_fu_406_p3;
wire   [13:0] tmp_521_fu_399_p3;
wire   [13:0] sub_ln12415_fu_413_p2;
wire   [13:0] zext_ln12423_1_fu_419_p1;
wire   [13:0] add_ln12423_1_fu_422_p2;
wire   [0:0] icmp_ln224_fu_436_p2;
wire   [0:0] icmp_ln224_5_fu_451_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_366;
reg    ap_condition_113;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_78 = 14'd0;
#0 v967034_fu_82 = 6'd0;
#0 indvar_flatten35_fu_86 = 10'd0;
#0 v967136_fu_90 = 6'd0;
#0 v967237_fu_94 = 5'd0;
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
        indvar_flatten1233_fu_78 <= add_ln12412_1_fu_350_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_113)) begin
    indvar_flatten35_fu_86 <= select_ln12413_1_fu_342_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_113)) begin
    v967034_fu_82 <= v9670_fu_264_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_113)) begin
    v967136_fu_90 <= v9671_fu_286_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_113)) begin
    v967237_fu_94 <= v9672_fu_330_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12423_reg_501 <= add_ln12423_fu_310_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln12412_reg_526 <= icmp_ln12412_fu_368_p2;
        lshr_ln_reg_511 <= {{v9672_mid2_fu_278_p3[4:1]}};
        trunc_ln12423_reg_506 <= trunc_ln12423_fu_316_p1;
        zext_ln12423_2_reg_530[13 : 0] <= zext_ln12423_2_fu_428_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12413_reg_521 <= icmp_ln12413_fu_362_p2;
        icmp_ln12414_reg_516 <= icmp_ln12414_fu_356_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12412_fu_368_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_366)) begin
            ap_phi_mux_icmp_ln1241339_phi_fu_179_p4 = icmp_ln12413_reg_521;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1241339_phi_fu_179_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1241339_phi_fu_179_p4 = icmp_ln12413_reg_521;
        end
    end else begin
        ap_phi_mux_icmp_ln1241339_phi_fu_179_p4 = icmp_ln12413_reg_521;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_366)) begin
            ap_phi_mux_icmp_ln1241438_phi_fu_189_p4 = icmp_ln12414_reg_516;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1241438_phi_fu_189_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1241438_phi_fu_189_p4 = icmp_ln12414_reg_516;
        end
    end else begin
        ap_phi_mux_icmp_ln1241438_phi_fu_189_p4 = icmp_ln12414_reg_516;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v967034_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v967034_load = v967034_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v967136_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v967136_load = v967136_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v967237_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v967237_load = v967237_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9712_1_ce0_local = 1'b1;
    end else begin
        v9712_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9712_ce0_local = 1'b1;
    end else begin
        v9712_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9713_1_ce0_local = 1'b1;
    end else begin
        v9713_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9713_ce0_local = 1'b1;
    end else begin
        v9713_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9714_1_ce0_local = 1'b1;
    end else begin
        v9714_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9714_1_we0_local = 1'b1;
    end else begin
        v9714_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9714_ce0_local = 1'b1;
    end else begin
        v9714_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9714_we0_local = 1'b1;
    end else begin
        v9714_we0_local = 1'b0;
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
assign add_ln12412_1_fu_350_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 14'd1);
assign add_ln12412_fu_236_p2 = (ap_sig_allocacmp_v967034_load + 6'd1);
assign add_ln12413_1_fu_336_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 10'd1);
assign add_ln12413_fu_272_p2 = (select_ln12412_fu_242_p3 + 6'd1);
assign add_ln12423_1_fu_422_p2 = (sub_ln12415_fu_413_p2 + zext_ln12423_1_fu_419_p1);
assign add_ln12423_fu_310_p2 = (zext_ln12413_fu_302_p1 + zext_ln12423_fu_306_p1);
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
    ap_condition_366 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln12412_reg_526 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln12412_fu_368_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 14'd12287) ? 1'b1 : 1'b0);
assign icmp_ln12413_fu_362_p2 = ((select_ln12413_1_fu_342_p3 == 10'd384) ? 1'b1 : 1'b0);
assign icmp_ln12414_fu_356_p2 = ((v9672_fu_330_p2 < 5'd24) ? 1'b1 : 1'b0);
assign icmp_ln224_5_fu_451_p2 = (($signed(v9712_q0) < $signed(v9713_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_436_p2 = (($signed(v9712_1_q0) < $signed(v9713_1_q0)) ? 1'b1 : 1'b0);
assign or_ln12412_fu_258_p2 = (ap_phi_mux_icmp_ln1241438_phi_fu_189_p4 | ap_phi_mux_icmp_ln1241339_phi_fu_179_p4);
assign select_ln12412_1_fu_250_p3 = ((ap_phi_mux_icmp_ln1241339_phi_fu_179_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v967237_load);
assign select_ln12412_fu_242_p3 = ((ap_phi_mux_icmp_ln1241339_phi_fu_179_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_v967136_load);
assign select_ln12413_1_fu_342_p3 = ((ap_phi_mux_icmp_ln1241339_phi_fu_179_p4[0:0] == 1'b1) ? 10'd1 : add_ln12413_1_fu_336_p2);
assign select_ln12419_fu_442_p3 = ((icmp_ln224_fu_436_p2[0:0] == 1'b1) ? v9713_1_q0 : v9712_1_q0);
assign select_ln12423_fu_457_p3 = ((icmp_ln224_5_fu_451_p2[0:0] == 1'b1) ? v9713_q0 : v9712_q0);
assign sub_ln12415_fu_413_p2 = (tmp_522_fu_406_p3 - tmp_521_fu_399_p3);
assign tmp_521_fu_399_p3 = {{add_ln12423_reg_501}, {2'd0}};
assign tmp_522_fu_406_p3 = {{trunc_ln12423_reg_506}, {4'd0}};
assign tmp_fu_294_p3 = {{v9670_fu_264_p3}, {5'd0}};
assign trunc_ln12423_fu_316_p1 = add_ln12423_fu_310_p2[9:0];
assign v9670_fu_264_p3 = ((ap_phi_mux_icmp_ln1241339_phi_fu_179_p4[0:0] == 1'b1) ? add_ln12412_fu_236_p2 : ap_sig_allocacmp_v967034_load);
assign v9671_fu_286_p3 = ((or_ln12412_fu_258_p2[0:0] == 1'b1) ? select_ln12412_fu_242_p3 : add_ln12413_fu_272_p2);
assign v9672_fu_330_p2 = (v9672_mid2_fu_278_p3 + 5'd2);
assign v9672_mid2_fu_278_p3 = ((or_ln12412_fu_258_p2[0:0] == 1'b1) ? select_ln12412_1_fu_250_p3 : 5'd0);
assign v9712_1_address0 = zext_ln12423_2_fu_428_p1;
assign v9712_1_ce0 = v9712_1_ce0_local;
assign v9712_address0 = zext_ln12423_2_fu_428_p1;
assign v9712_ce0 = v9712_ce0_local;
assign v9713_1_address0 = zext_ln12423_2_fu_428_p1;
assign v9713_1_ce0 = v9713_1_ce0_local;
assign v9713_address0 = zext_ln12423_2_fu_428_p1;
assign v9713_ce0 = v9713_ce0_local;
assign v9714_1_address0 = zext_ln12423_2_reg_530;
assign v9714_1_ce0 = v9714_1_ce0_local;
assign v9714_1_d0 = select_ln12419_fu_442_p3;
assign v9714_1_we0 = v9714_1_we0_local;
assign v9714_address0 = zext_ln12423_2_reg_530;
assign v9714_ce0 = v9714_ce0_local;
assign v9714_d0 = select_ln12423_fu_457_p3;
assign v9714_we0 = v9714_we0_local;
assign zext_ln12413_fu_302_p1 = tmp_fu_294_p3;
assign zext_ln12423_1_fu_419_p1 = lshr_ln_reg_511;
assign zext_ln12423_2_fu_428_p1 = add_ln12423_1_fu_422_p2;
assign zext_ln12423_fu_306_p1 = v9671_fu_286_p3;
always @ (posedge ap_clk) begin
    zext_ln12423_2_reg_530[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 