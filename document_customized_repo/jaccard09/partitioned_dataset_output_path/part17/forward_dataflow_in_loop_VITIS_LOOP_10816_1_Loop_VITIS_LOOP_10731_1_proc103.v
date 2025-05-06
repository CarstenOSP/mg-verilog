
module forward_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v8476_address0,v8476_ce0,v8476_we0,v8476_d0,v8476_1_address0,v8476_1_ce0,v8476_1_we0,v8476_1_d0,v8475_1_address0,v8475_1_ce0,v8475_1_q0,v8474_1_address0,v8474_1_ce0,v8474_1_q0,v8475_address0,v8475_ce0,v8475_q0,v8474_address0,v8474_ce0,v8474_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] v8476_address0;
output   v8476_ce0;
output   v8476_we0;
output  [7:0] v8476_d0;
output  [11:0] v8476_1_address0;
output   v8476_1_ce0;
output   v8476_1_we0;
output  [7:0] v8476_1_d0;
output  [11:0] v8475_1_address0;
output   v8475_1_ce0;
input  [7:0] v8475_1_q0;
output  [11:0] v8474_1_address0;
output   v8474_1_ce0;
input  [7:0] v8474_1_q0;
output  [11:0] v8475_address0;
output   v8475_ce0;
input  [7:0] v8475_q0;
output  [11:0] v8474_address0;
output   v8474_ce0;
input  [7:0] v8474_q0;
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
wire   [0:0] icmp_ln10731_fu_238_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln10731_reg_527;
reg   [0:0] icmp_ln10731_reg_527_pp0_iter1_reg;
wire   [10:0] add_ln10742_fu_353_p2;
reg   [10:0] add_ln10742_reg_531;
wire   [8:0] trunc_ln10742_fu_359_p1;
reg   [8:0] trunc_ln10742_reg_536;
reg   [2:0] lshr_ln_reg_541;
wire   [0:0] icmp_ln10733_fu_393_p2;
reg   [0:0] icmp_ln10733_reg_546;
wire   [0:0] icmp_ln10732_fu_399_p2;
reg   [0:0] icmp_ln10732_reg_551;
wire   [63:0] zext_ln10742_4_fu_454_p1;
reg   [63:0] zext_ln10742_4_reg_556;
reg   [0:0] ap_phi_mux_icmp_ln1073239_phi_fu_186_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1073338_phi_fu_197_p4;
reg   [11:0] indvar_flatten1233_fu_84;
wire   [11:0] add_ln10731_1_fu_232_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v843234_fu_88;
wire   [5:0] v8432_fu_289_p3;
reg   [7:0] indvar_flatten35_fu_92;
wire   [7:0] select_ln10732_1_fu_385_p3;
reg   [4:0] v843336_fu_96;
wire   [4:0] v8433_fu_311_p3;
reg   [3:0] v843437_fu_100;
wire   [3:0] v8434_fu_373_p2;
reg    v8475_1_ce0_local;
reg    v8474_1_ce0_local;
reg    v8475_ce0_local;
reg    v8474_ce0_local;
reg    v8476_1_we0_local;
wire   [7:0] select_ln10738_fu_468_p3;
reg    v8476_1_ce0_local;
reg    v8476_we0_local;
wire   [7:0] select_ln10742_fu_483_p3;
reg    v8476_ce0_local;
wire   [5:0] add_ln10731_fu_261_p2;
wire   [4:0] select_ln10731_fu_267_p3;
wire   [0:0] or_ln10731_fu_283_p2;
wire   [3:0] select_ln10731_1_fu_275_p3;
wire   [4:0] add_ln10732_fu_297_p2;
wire   [9:0] tmp_fu_319_p3;
wire   [7:0] tmp_597_fu_331_p3;
wire   [10:0] zext_ln10742_fu_327_p1;
wire   [10:0] zext_ln10742_1_fu_339_p1;
wire   [10:0] add_ln10742_2_fu_343_p2;
wire   [10:0] zext_ln10742_2_fu_349_p1;
wire   [3:0] v8434_mid2_fu_303_p3;
wire   [7:0] add_ln10732_1_fu_379_p2;
wire   [11:0] tmp_599_fu_432_p3;
wire   [11:0] tmp_598_fu_425_p3;
wire   [11:0] sub_ln10734_fu_439_p2;
wire   [11:0] zext_ln10742_3_fu_445_p1;
wire   [11:0] add_ln10742_1_fu_448_p2;
wire   [0:0] icmp_ln224_fu_462_p2;
wire   [0:0] icmp_ln224_6_fu_477_p2;
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
reg    ap_condition_162;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_84 = 12'd0;
#0 v843234_fu_88 = 6'd0;
#0 indvar_flatten35_fu_92 = 8'd0;
#0 v843336_fu_96 = 5'd0;
#0 v843437_fu_100 = 4'd0;
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
    if ((1'b1 == ap_condition_162)) begin
        indvar_flatten1233_fu_84 <= add_ln10731_1_fu_232_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten35_fu_92 <= 8'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten35_fu_92 <= select_ln10732_1_fu_385_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v843234_fu_88 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v843234_fu_88 <= v8432_fu_289_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v843336_fu_96 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v843336_fu_96 <= v8433_fu_311_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v843437_fu_100 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v843437_fu_100 <= v8434_fu_373_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln10742_reg_531 <= add_ln10742_fu_353_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln10731_reg_527 <= icmp_ln10731_fu_238_p2;
        icmp_ln10731_reg_527_pp0_iter1_reg <= icmp_ln10731_reg_527;
        lshr_ln_reg_541 <= {{v8434_mid2_fu_303_p3[3:1]}};
        trunc_ln10742_reg_536 <= trunc_ln10742_fu_359_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln10732_reg_551 <= icmp_ln10732_fu_399_p2;
        icmp_ln10733_reg_546 <= icmp_ln10733_fu_393_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        zext_ln10742_4_reg_556[11 : 0] <= zext_ln10742_4_fu_454_p1[11 : 0];
    end
end
always @ (*) begin
    if (((icmp_ln10731_fu_238_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10731_reg_527_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1073239_phi_fu_186_p4 = icmp_ln10732_reg_551;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1073239_phi_fu_186_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1073239_phi_fu_186_p4 = icmp_ln10732_reg_551;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln10731_reg_527_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1073338_phi_fu_197_p4 = icmp_ln10733_reg_546;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1073338_phi_fu_197_p4 = 1'd1;
    end else begin
        ap_phi_mux_icmp_ln1073338_phi_fu_197_p4 = icmp_ln10733_reg_546;
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
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8474_1_ce0_local = 1'b1;
    end else begin
        v8474_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8474_ce0_local = 1'b1;
    end else begin
        v8474_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8475_1_ce0_local = 1'b1;
    end else begin
        v8475_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8475_ce0_local = 1'b1;
    end else begin
        v8475_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8476_1_ce0_local = 1'b1;
    end else begin
        v8476_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8476_1_we0_local = 1'b1;
    end else begin
        v8476_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8476_ce0_local = 1'b1;
    end else begin
        v8476_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8476_we0_local = 1'b1;
    end else begin
        v8476_we0_local = 1'b0;
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
assign add_ln10731_1_fu_232_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 12'd1);
assign add_ln10731_fu_261_p2 = (v843234_fu_88 + 6'd1);
assign add_ln10732_1_fu_379_p2 = (indvar_flatten35_fu_92 + 8'd1);
assign add_ln10732_fu_297_p2 = (select_ln10731_fu_267_p3 + 5'd1);
assign add_ln10742_1_fu_448_p2 = (sub_ln10734_fu_439_p2 + zext_ln10742_3_fu_445_p1);
assign add_ln10742_2_fu_343_p2 = (zext_ln10742_fu_327_p1 + zext_ln10742_1_fu_339_p1);
assign add_ln10742_fu_353_p2 = (add_ln10742_2_fu_343_p2 + zext_ln10742_2_fu_349_p1);
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
    ap_condition_162 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln10731_fu_238_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 12'd3839) ? 1'b1 : 1'b0);
assign icmp_ln10732_fu_399_p2 = ((select_ln10732_1_fu_385_p3 == 8'd120) ? 1'b1 : 1'b0);
assign icmp_ln10733_fu_393_p2 = ((v8434_fu_373_p2 < 4'd12) ? 1'b1 : 1'b0);
assign icmp_ln224_6_fu_477_p2 = (($signed(v8474_q0) < $signed(v8475_q0)) ? 1'b1 : 1'b0);
assign icmp_ln224_fu_462_p2 = (($signed(v8474_1_q0) < $signed(v8475_1_q0)) ? 1'b1 : 1'b0);
assign or_ln10731_fu_283_p2 = (ap_phi_mux_icmp_ln1073338_phi_fu_197_p4 | ap_phi_mux_icmp_ln1073239_phi_fu_186_p4);
assign select_ln10731_1_fu_275_p3 = ((ap_phi_mux_icmp_ln1073239_phi_fu_186_p4[0:0] == 1'b1) ? 4'd0 : v843437_fu_100);
assign select_ln10731_fu_267_p3 = ((ap_phi_mux_icmp_ln1073239_phi_fu_186_p4[0:0] == 1'b1) ? 5'd0 : v843336_fu_96);
assign select_ln10732_1_fu_385_p3 = ((ap_phi_mux_icmp_ln1073239_phi_fu_186_p4[0:0] == 1'b1) ? 8'd1 : add_ln10732_1_fu_379_p2);
assign select_ln10738_fu_468_p3 = ((icmp_ln224_fu_462_p2[0:0] == 1'b1) ? v8475_1_q0 : v8474_1_q0);
assign select_ln10742_fu_483_p3 = ((icmp_ln224_6_fu_477_p2[0:0] == 1'b1) ? v8475_q0 : v8474_q0);
assign sub_ln10734_fu_439_p2 = (tmp_599_fu_432_p3 - tmp_598_fu_425_p3);
assign tmp_597_fu_331_p3 = {{v8432_fu_289_p3}, {2'd0}};
assign tmp_598_fu_425_p3 = {{add_ln10742_reg_531}, {1'd0}};
assign tmp_599_fu_432_p3 = {{trunc_ln10742_reg_536}, {3'd0}};
assign tmp_fu_319_p3 = {{v8432_fu_289_p3}, {4'd0}};
assign trunc_ln10742_fu_359_p1 = add_ln10742_fu_353_p2[8:0];
assign v8432_fu_289_p3 = ((ap_phi_mux_icmp_ln1073239_phi_fu_186_p4[0:0] == 1'b1) ? add_ln10731_fu_261_p2 : v843234_fu_88);
assign v8433_fu_311_p3 = ((or_ln10731_fu_283_p2[0:0] == 1'b1) ? select_ln10731_fu_267_p3 : add_ln10732_fu_297_p2);
assign v8434_fu_373_p2 = (v8434_mid2_fu_303_p3 + 4'd2);
assign v8434_mid2_fu_303_p3 = ((or_ln10731_fu_283_p2[0:0] == 1'b1) ? select_ln10731_1_fu_275_p3 : 4'd0);
assign v8474_1_address0 = zext_ln10742_4_fu_454_p1;
assign v8474_1_ce0 = v8474_1_ce0_local;
assign v8474_address0 = zext_ln10742_4_fu_454_p1;
assign v8474_ce0 = v8474_ce0_local;
assign v8475_1_address0 = zext_ln10742_4_fu_454_p1;
assign v8475_1_ce0 = v8475_1_ce0_local;
assign v8475_address0 = zext_ln10742_4_fu_454_p1;
assign v8475_ce0 = v8475_ce0_local;
assign v8476_1_address0 = zext_ln10742_4_reg_556;
assign v8476_1_ce0 = v8476_1_ce0_local;
assign v8476_1_d0 = select_ln10738_fu_468_p3;
assign v8476_1_we0 = v8476_1_we0_local;
assign v8476_address0 = zext_ln10742_4_reg_556;
assign v8476_ce0 = v8476_ce0_local;
assign v8476_d0 = select_ln10742_fu_483_p3;
assign v8476_we0 = v8476_we0_local;
assign zext_ln10742_1_fu_339_p1 = tmp_597_fu_331_p3;
assign zext_ln10742_2_fu_349_p1 = v8433_fu_311_p3;
assign zext_ln10742_3_fu_445_p1 = lshr_ln_reg_541;
assign zext_ln10742_4_fu_454_p1 = add_ln10742_1_fu_448_p2;
assign zext_ln10742_fu_327_p1 = tmp_fu_319_p3;
always @ (posedge ap_clk) begin
    zext_ln10742_4_reg_556[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 
