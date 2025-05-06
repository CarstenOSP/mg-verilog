
module forward_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15455_1_address0,v15455_1_ce0,v15455_1_we0,v15455_1_d0,v15455_0_address0,v15455_0_ce0,v15455_0_we0,v15455_0_d0,p_read,v12362_1_address0,v12362_1_ce0,v12362_1_q0,v12362_address0,v12362_ce0,v12362_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [16:0] v15455_1_address0;
output   v15455_1_ce0;
output   v15455_1_we0;
output  [7:0] v15455_1_d0;
output  [16:0] v15455_0_address0;
output   v15455_0_ce0;
output   v15455_0_we0;
output  [7:0] v15455_0_d0;
input  [4:0] p_read;
output  [11:0] v12362_1_address0;
output   v12362_1_ce0;
input  [7:0] v12362_1_q0;
output  [11:0] v12362_address0;
output   v12362_ce0;
input  [7:0] v12362_q0;
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
wire   [0:0] icmp_ln15500_fu_480_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] mul_i_fu_226_p3;
reg   [7:0] mul_i_reg_690;
wire   [4:0] zext_ln15623_cast_cast_cast_cast_fu_242_p3;
reg   [4:0] zext_ln15623_cast_cast_cast_cast_reg_695;
wire   [3:0] p_udiv2_cast_cast_cast_cast_fu_262_p3;
reg   [3:0] p_udiv2_cast_cast_cast_cast_reg_700;
reg   [3:0] p_udiv2_cast_cast_cast_cast_reg_700_pp0_iter1_reg;
wire   [5:0] v12283_fu_336_p3;
reg   [5:0] v12283_reg_705;
wire   [3:0] v12284_fu_364_p3;
reg   [3:0] v12284_reg_710;
wire   [9:0] add_ln15504_fu_402_p2;
reg   [9:0] add_ln15504_reg_715;
wire   [8:0] trunc_ln15504_fu_408_p1;
reg   [8:0] trunc_ln15504_reg_720;
reg   [2:0] lshr_ln_reg_725;
reg   [2:0] lshr_ln_reg_725_pp0_iter1_reg;
reg   [3:0] lshr_ln51_reg_731;
reg   [3:0] lshr_ln51_reg_731_pp0_iter1_reg;
wire   [0:0] icmp_ln15502_fu_468_p2;
reg   [0:0] icmp_ln15502_reg_736;
wire   [0:0] icmp_ln15501_fu_474_p2;
reg   [0:0] icmp_ln15501_reg_741;
reg   [0:0] icmp_ln15500_reg_746;
wire   [12:0] add_ln15507_fu_573_p2;
reg   [12:0] add_ln15507_reg_750;
reg   [0:0] ap_phi_mux_icmp_ln1550139_phi_fu_199_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1550238_phi_fu_209_p4;
wire   [63:0] zext_ln15504_4_fu_588_p1;
wire   [63:0] zext_ln15505_1_fu_636_p1;
wire   [63:0] zext_ln15507_4_fu_650_p1;
reg   [11:0] indvar_flatten1233_fu_116;
wire   [11:0] add_ln15500_1_fu_462_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v1228334_fu_120;
reg   [5:0] ap_sig_allocacmp_v1228334_load;
reg   [6:0] indvar_flatten35_fu_124;
wire   [6:0] select_ln15501_1_fu_454_p3;
reg   [6:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [3:0] v1228436_fu_128;
reg   [3:0] ap_sig_allocacmp_v1228436_load;
reg   [3:0] v1228537_fu_132;
wire   [3:0] v12285_fu_442_p2;
reg   [3:0] ap_sig_allocacmp_v1228537_load;
reg    v12362_1_ce0_local;
reg    v12362_ce0_local;
reg    v15455_0_we0_local;
reg    v15455_0_ce0_local;
reg    v15455_1_we0_local;
reg    v15455_1_ce0_local;
wire   [2:0] tmp_fu_216_p4;
wire   [0:0] tmp_344_fu_234_p3;
wire   [0:0] empty_fu_250_p1;
wire   [0:0] xor_ln15500_fu_324_p2;
wire   [5:0] add_ln15500_fu_310_p2;
wire   [3:0] select_ln15500_fu_316_p3;
wire   [0:0] and_ln15500_fu_330_p2;
wire   [0:0] empty_335_fu_350_p2;
wire   [3:0] add_ln15501_fu_344_p2;
wire   [6:0] tmp_345_fu_380_p3;
wire   [9:0] p_shl69_fu_372_p3;
wire   [9:0] zext_ln15504_fu_388_p1;
wire   [9:0] sub_ln15504_fu_392_p2;
wire   [9:0] zext_ln15504_1_fu_398_p1;
wire   [3:0] v12285_mid2_fu_356_p3;
wire   [4:0] zext_ln15623_7_cast_cast_cast_cast_fu_254_p3;
wire   [4:0] zext_ln15502_fu_412_p1;
wire   [4:0] add_ln15505_fu_426_p2;
wire   [6:0] add_ln15501_1_fu_448_p2;
wire   [7:0] zext_ln15500_fu_511_p1;
wire   [7:0] empty_336_fu_514_p2;
wire   [9:0] tmp_346_fu_527_p3;
wire   [12:0] p_shl67_fu_519_p3;
wire   [12:0] zext_ln15507_fu_535_p1;
wire   [11:0] tmp_347_fu_545_p3;
wire   [11:0] zext_ln15504_2_fu_552_p1;
wire   [4:0] zext_ln15501_fu_561_p1;
wire   [4:0] empty_337_fu_564_p2;
wire   [12:0] sub_ln15507_fu_539_p2;
wire   [12:0] zext_ln15507_1_fu_569_p1;
wire   [11:0] sub_ln15501_fu_555_p2;
wire   [11:0] zext_ln15504_3_fu_579_p1;
wire   [11:0] add_ln15504_1_fu_582_p2;
wire   [13:0] tmp_348_fu_601_p3;
wire   [16:0] p_shl_fu_594_p3;
wire   [16:0] zext_ln15507_2_fu_608_p1;
wire   [3:0] zext_ln15502_1_fu_618_p1;
wire   [3:0] add_ln15505_1_fu_621_p2;
wire   [16:0] sub_ln15507_1_fu_612_p2;
wire   [16:0] zext_ln15505_fu_626_p1;
wire   [16:0] add_ln15505_2_fu_630_p2;
wire   [16:0] zext_ln15507_3_fu_641_p1;
wire   [16:0] add_ln15507_1_fu_644_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_477;
reg    ap_condition_120;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_116 = 12'd0;
#0 v1228334_fu_120 = 6'd0;
#0 indvar_flatten35_fu_124 = 7'd0;
#0 v1228436_fu_128 = 4'd0;
#0 v1228537_fu_132 = 4'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_120)) begin
        indvar_flatten1233_fu_116 <= add_ln15500_1_fu_462_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_120)) begin
    indvar_flatten35_fu_124 <= select_ln15501_1_fu_454_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_120)) begin
    v1228334_fu_120 <= v12283_fu_336_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_120)) begin
    v1228436_fu_128 <= v12284_fu_364_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_120)) begin
    v1228537_fu_132 <= v12285_fu_442_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln15504_reg_715 <= add_ln15504_fu_402_p2;
        add_ln15507_reg_750 <= add_ln15507_fu_573_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln15500_reg_746 <= icmp_ln15500_fu_480_p2;
        lshr_ln51_reg_731 <= {{add_ln15505_fu_426_p2[4:1]}};
        lshr_ln51_reg_731_pp0_iter1_reg <= lshr_ln51_reg_731;
        lshr_ln_reg_725 <= {{v12285_mid2_fu_356_p3[3:1]}};
        lshr_ln_reg_725_pp0_iter1_reg <= lshr_ln_reg_725;
        mul_i_reg_690[7 : 5] <= mul_i_fu_226_p3[7 : 5];
        p_udiv2_cast_cast_cast_cast_reg_700[2 : 0] <= p_udiv2_cast_cast_cast_cast_fu_262_p3[2 : 0];
        p_udiv2_cast_cast_cast_cast_reg_700_pp0_iter1_reg[2 : 0] <= p_udiv2_cast_cast_cast_cast_reg_700[2 : 0];
        trunc_ln15504_reg_720 <= trunc_ln15504_fu_408_p1;
        v12283_reg_705 <= v12283_fu_336_p3;
        v12284_reg_710 <= v12284_fu_364_p3;
        zext_ln15623_cast_cast_cast_cast_reg_695[3 : 1] <= zext_ln15623_cast_cast_cast_cast_fu_242_p3[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15501_reg_741 <= icmp_ln15501_fu_474_p2;
        icmp_ln15502_reg_736 <= icmp_ln15502_fu_468_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15500_fu_480_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if ((1'b1 == ap_condition_477)) begin
            ap_phi_mux_icmp_ln1550139_phi_fu_199_p4 = icmp_ln15501_reg_741;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1550139_phi_fu_199_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1550139_phi_fu_199_p4 = icmp_ln15501_reg_741;
        end
    end else begin
        ap_phi_mux_icmp_ln1550139_phi_fu_199_p4 = icmp_ln15501_reg_741;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_477)) begin
            ap_phi_mux_icmp_ln1550238_phi_fu_209_p4 = icmp_ln15502_reg_736;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1550238_phi_fu_209_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1550238_phi_fu_209_p4 = icmp_ln15502_reg_736;
        end
    end else begin
        ap_phi_mux_icmp_ln1550238_phi_fu_209_p4 = icmp_ln15502_reg_736;
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
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1228334_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1228334_load = v1228334_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1228436_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v1228436_load = v1228436_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1228537_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v1228537_load = v1228537_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12362_1_ce0_local = 1'b1;
    end else begin
        v12362_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12362_ce0_local = 1'b1;
    end else begin
        v12362_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15455_0_ce0_local = 1'b1;
    end else begin
        v15455_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15455_0_we0_local = 1'b1;
    end else begin
        v15455_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15455_1_ce0_local = 1'b1;
    end else begin
        v15455_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15455_1_we0_local = 1'b1;
    end else begin
        v15455_1_we0_local = 1'b0;
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
assign add_ln15500_1_fu_462_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 12'd1);
assign add_ln15500_fu_310_p2 = (ap_sig_allocacmp_v1228334_load + 6'd1);
assign add_ln15501_1_fu_448_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 7'd1);
assign add_ln15501_fu_344_p2 = (select_ln15500_fu_316_p3 + 4'd1);
assign add_ln15504_1_fu_582_p2 = (sub_ln15501_fu_555_p2 + zext_ln15504_3_fu_579_p1);
assign add_ln15504_fu_402_p2 = (sub_ln15504_fu_392_p2 + zext_ln15504_1_fu_398_p1);
assign add_ln15505_1_fu_621_p2 = (zext_ln15502_1_fu_618_p1 + p_udiv2_cast_cast_cast_cast_reg_700_pp0_iter1_reg);
assign add_ln15505_2_fu_630_p2 = (sub_ln15507_1_fu_612_p2 + zext_ln15505_fu_626_p1);
assign add_ln15505_fu_426_p2 = (zext_ln15623_7_cast_cast_cast_cast_fu_254_p3 + zext_ln15502_fu_412_p1);
assign add_ln15507_1_fu_644_p2 = (sub_ln15507_1_fu_612_p2 + zext_ln15507_3_fu_641_p1);
assign add_ln15507_fu_573_p2 = (sub_ln15507_fu_539_p2 + zext_ln15507_1_fu_569_p1);
assign and_ln15500_fu_330_p2 = (xor_ln15500_fu_324_p2 & ap_phi_mux_icmp_ln1550238_phi_fu_209_p4);
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
    ap_condition_120 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_477 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15500_reg_746 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_335_fu_350_p2 = (ap_phi_mux_icmp_ln1550139_phi_fu_199_p4 | and_ln15500_fu_330_p2);
assign empty_336_fu_514_p2 = (mul_i_reg_690 + zext_ln15500_fu_511_p1);
assign empty_337_fu_564_p2 = (zext_ln15623_cast_cast_cast_cast_reg_695 + zext_ln15501_fu_561_p1);
assign empty_fu_250_p1 = p_read[0:0];
assign icmp_ln15500_fu_480_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln15501_fu_474_p2 = ((select_ln15501_1_fu_454_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln15502_fu_468_p2 = ((v12285_fu_442_p2 == 4'd14) ? 1'b1 : 1'b0);
assign mul_i_fu_226_p3 = {{tmp_fu_216_p4}, {5'd0}};
assign p_shl67_fu_519_p3 = {{empty_336_fu_514_p2}, {5'd0}};
assign p_shl69_fu_372_p3 = {{v12283_fu_336_p3}, {4'd0}};
assign p_shl_fu_594_p3 = {{add_ln15507_reg_750}, {4'd0}};
assign p_udiv2_cast_cast_cast_cast_fu_262_p3 = ((empty_fu_250_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln15500_fu_316_p3 = ((ap_phi_mux_icmp_ln1550139_phi_fu_199_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v1228436_load);
assign select_ln15501_1_fu_454_p3 = ((ap_phi_mux_icmp_ln1550139_phi_fu_199_p4[0:0] == 1'b1) ? 7'd1 : add_ln15501_1_fu_448_p2);
assign sub_ln15501_fu_555_p2 = (tmp_347_fu_545_p3 - zext_ln15504_2_fu_552_p1);
assign sub_ln15504_fu_392_p2 = (p_shl69_fu_372_p3 - zext_ln15504_fu_388_p1);
assign sub_ln15507_1_fu_612_p2 = (p_shl_fu_594_p3 - zext_ln15507_2_fu_608_p1);
assign sub_ln15507_fu_539_p2 = (p_shl67_fu_519_p3 - zext_ln15507_fu_535_p1);
assign tmp_344_fu_234_p3 = p_read[32'd1];
assign tmp_345_fu_380_p3 = {{v12283_fu_336_p3}, {1'd0}};
assign tmp_346_fu_527_p3 = {{empty_336_fu_514_p2}, {2'd0}};
assign tmp_347_fu_545_p3 = {{trunc_ln15504_reg_720}, {3'd0}};
assign tmp_348_fu_601_p3 = {{add_ln15507_reg_750}, {1'd0}};
assign tmp_fu_216_p4 = {{p_read[4:2]}};
assign trunc_ln15504_fu_408_p1 = add_ln15504_fu_402_p2[8:0];
assign v12283_fu_336_p3 = ((ap_phi_mux_icmp_ln1550139_phi_fu_199_p4[0:0] == 1'b1) ? add_ln15500_fu_310_p2 : ap_sig_allocacmp_v1228334_load);
assign v12284_fu_364_p3 = ((and_ln15500_fu_330_p2[0:0] == 1'b1) ? add_ln15501_fu_344_p2 : select_ln15500_fu_316_p3);
assign v12285_fu_442_p2 = (v12285_mid2_fu_356_p3 + 4'd2);
assign v12285_mid2_fu_356_p3 = ((empty_335_fu_350_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v1228537_load);
assign v12362_1_address0 = zext_ln15504_4_fu_588_p1;
assign v12362_1_ce0 = v12362_1_ce0_local;
assign v12362_address0 = zext_ln15504_4_fu_588_p1;
assign v12362_ce0 = v12362_ce0_local;
assign v15455_0_address0 = zext_ln15505_1_fu_636_p1;
assign v15455_0_ce0 = v15455_0_ce0_local;
assign v15455_0_d0 = v12362_1_q0;
assign v15455_0_we0 = v15455_0_we0_local;
assign v15455_1_address0 = zext_ln15507_4_fu_650_p1;
assign v15455_1_ce0 = v15455_1_ce0_local;
assign v15455_1_d0 = v12362_q0;
assign v15455_1_we0 = v15455_1_we0_local;
assign xor_ln15500_fu_324_p2 = (ap_phi_mux_icmp_ln1550139_phi_fu_199_p4 ^ 1'd1);
assign zext_ln15500_fu_511_p1 = v12283_reg_705;
assign zext_ln15501_fu_561_p1 = v12284_reg_710;
assign zext_ln15502_1_fu_618_p1 = lshr_ln_reg_725_pp0_iter1_reg;
assign zext_ln15502_fu_412_p1 = v12285_mid2_fu_356_p3;
assign zext_ln15504_1_fu_398_p1 = v12284_fu_364_p3;
assign zext_ln15504_2_fu_552_p1 = add_ln15504_reg_715;
assign zext_ln15504_3_fu_579_p1 = lshr_ln_reg_725;
assign zext_ln15504_4_fu_588_p1 = add_ln15504_1_fu_582_p2;
assign zext_ln15504_fu_388_p1 = tmp_345_fu_380_p3;
assign zext_ln15505_1_fu_636_p1 = add_ln15505_2_fu_630_p2;
assign zext_ln15505_fu_626_p1 = add_ln15505_1_fu_621_p2;
assign zext_ln15507_1_fu_569_p1 = empty_337_fu_564_p2;
assign zext_ln15507_2_fu_608_p1 = tmp_348_fu_601_p3;
assign zext_ln15507_3_fu_641_p1 = lshr_ln51_reg_731_pp0_iter1_reg;
assign zext_ln15507_4_fu_650_p1 = add_ln15507_1_fu_644_p2;
assign zext_ln15507_fu_535_p1 = tmp_346_fu_527_p3;
assign zext_ln15623_7_cast_cast_cast_cast_fu_254_p3 = ((empty_fu_250_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln15623_cast_cast_cast_cast_fu_242_p3 = ((tmp_344_fu_234_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
always @ (posedge ap_clk) begin
    mul_i_reg_690[4:0] <= 5'b00000;
    zext_ln15623_cast_cast_cast_cast_reg_695[0] <= 1'b0;
    zext_ln15623_cast_cast_cast_cast_reg_695[4] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_700[3] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_700_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
