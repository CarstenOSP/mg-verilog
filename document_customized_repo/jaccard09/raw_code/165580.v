module forward_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v12239_address0,v12239_ce0,v12239_we0,v12239_d0,v12239_1_address0,v12239_1_ce0,v12239_1_we0,v12239_1_d0,v12233,v16178_0_address0,v16178_0_ce0,v16178_0_q0,v16178_1_address0,v16178_1_ce0,v16178_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [13:0] v12239_address0;
output   v12239_ce0;
output   v12239_we0;
output  [7:0] v12239_d0;
output  [13:0] v12239_1_address0;
output   v12239_1_ce0;
output   v12239_1_we0;
output  [7:0] v12239_1_d0;
input  [2:0] v12233;
output  [16:0] v16178_0_address0;
output   v16178_0_ce0;
input  [7:0] v16178_0_q0;
output  [16:0] v16178_1_address0;
output   v16178_1_ce0;
input  [7:0] v16178_1_q0;
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
wire   [0:0] icmp_ln15679_fu_422_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
reg   [0:0] icmp_ln1568027_i_reg_196;
wire   [5:0] mul_i37_i_i_fu_229_p3;
reg   [5:0] mul_i37_i_i_reg_692;
wire   [5:0] mul9_i66_cast_cast_i_cast_cast_i_cast_cast_fu_245_p3;
reg   [5:0] mul9_i66_cast_cast_i_cast_cast_i_cast_cast_reg_697;
wire   [4:0] p_udiv2_i_cast_cast_i_cast_cast_fu_265_p3;
reg   [4:0] p_udiv2_i_cast_cast_i_cast_cast_reg_702;
reg   [4:0] p_udiv2_i_cast_cast_i_cast_cast_reg_702_pp0_iter1_reg;
wire   [4:0] select_ln15680_fu_346_p3;
reg   [4:0] select_ln15680_reg_707;
reg   [4:0] select_ln15680_reg_707_pp0_iter1_reg;
reg   [3:0] lshr_ln_i_reg_713;
reg   [3:0] lshr_ln_i_reg_713_pp0_iter1_reg;
reg   [4:0] lshr_ln91_i_reg_719;
reg   [4:0] lshr_ln91_i_reg_719_pp0_iter1_reg;
wire   [0:0] icmp_ln15681_fu_410_p2;
reg   [0:0] icmp_ln15681_reg_724;
wire   [0:0] icmp_ln15680_fu_416_p2;
reg   [0:0] icmp_ln15680_reg_729;
reg   [0:0] icmp_ln15679_reg_734;
wire   [5:0] select_ln15679_2_fu_457_p3;
reg   [5:0] select_ln15679_2_reg_738;
wire   [11:0] add_ln15684_fu_508_p2;
reg   [11:0] add_ln15684_reg_744;
wire   [13:0] add_ln15686_1_fu_612_p2;
reg   [13:0] add_ln15686_1_reg_750;
reg   [0:0] ap_phi_mux_icmp_ln1568027_i_phi_fu_199_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1568126_i_phi_fu_210_p4;
wire   [63:0] zext_ln15684_4_fu_633_p1;
wire   [63:0] zext_ln15686_6_fu_647_p1;
wire   [63:0] zext_ln15686_4_fu_652_p1;
reg   [13:0] indvar_flatten1221_i_fu_116;
wire   [13:0] add_ln15679_1_fu_404_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten1221_i_load;
reg   [5:0] v1221122_i_fu_120;
reg   [8:0] indvar_flatten23_i_fu_124;
wire   [8:0] select_ln15680_1_fu_396_p3;
reg   [8:0] ap_sig_allocacmp_indvar_flatten23_i_load;
reg   [4:0] v1221224_i_fu_128;
reg   [4:0] ap_sig_allocacmp_v1221224_i_load;
reg   [4:0] v1221325_i_fu_132;
wire   [4:0] add_ln15681_fu_384_p2;
reg   [4:0] ap_sig_allocacmp_v1221325_i_load;
reg    v16178_0_ce0_local;
reg    v16178_1_ce0_local;
reg    v12239_1_we0_local;
reg    v12239_1_ce0_local;
reg    v12239_we0_local;
reg    v12239_ce0_local;
wire   [5:0] v12233_cast2_fu_217_p1;
wire   [0:0] tmp_fu_221_p3;
wire   [0:0] tmp_422_fu_237_p3;
wire   [0:0] empty_fu_253_p1;
wire   [4:0] select_ln15679_fu_310_p3;
wire   [0:0] or_ln15679_fu_326_p2;
wire   [4:0] select_ln15679_1_fu_318_p3;
wire   [4:0] add_ln15680_fu_332_p2;
wire   [4:0] v12213_mid2_i_fu_338_p3;
wire   [5:0] zext_ln15679_cast_cast_i_cast_cast_fu_257_p3;
wire   [5:0] zext_ln15681_fu_354_p1;
wire   [5:0] add_ln15683_fu_368_p2;
wire   [8:0] add_ln15680_1_fu_390_p2;
wire   [5:0] add_ln15679_fu_451_p2;
wire   [5:0] empty_377_fu_465_p2;
wire   [8:0] tmp_424_fu_478_p3;
wire   [11:0] p_shl29_fu_470_p3;
wire   [11:0] zext_ln15684_fu_486_p1;
wire   [5:0] zext_ln15680_fu_496_p1;
wire   [5:0] empty_378_fu_499_p2;
wire   [11:0] sub_ln15684_fu_490_p2;
wire   [11:0] zext_ln15684_1_fu_504_p1;
wire   [7:0] tmp_423_fu_526_p3;
wire   [10:0] p_shl31_fu_519_p3;
wire   [10:0] zext_ln15686_fu_533_p1;
wire   [10:0] sub_ln15686_fu_537_p2;
wire   [10:0] zext_ln15686_1_fu_543_p1;
wire   [10:0] add_ln15686_fu_546_p2;
wire   [9:0] trunc_ln15686_fu_552_p1;
wire   [11:0] tmp_425_fu_556_p3;
wire   [13:0] tmp_426_fu_564_p3;
wire   [13:0] zext_ln15686_2_fu_572_p1;
wire   [13:0] tmp_427_fu_589_p3;
wire   [16:0] p_shl_fu_582_p3;
wire   [16:0] zext_ln15684_2_fu_596_p1;
wire   [13:0] sub_ln15680_fu_576_p2;
wire   [13:0] zext_ln15686_3_fu_609_p1;
wire   [4:0] zext_ln15681_1_fu_606_p1;
wire   [4:0] add_ln15684_1_fu_618_p2;
wire   [16:0] sub_ln15684_1_fu_600_p2;
wire   [16:0] zext_ln15684_3_fu_623_p1;
wire   [16:0] add_ln15684_2_fu_627_p2;
wire   [16:0] zext_ln15686_5_fu_638_p1;
wire   [16:0] add_ln15686_2_fu_641_p2;
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
reg    ap_condition_487;
reg    ap_condition_492;
reg    ap_condition_119;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1221_i_fu_116 = 14'd0;
#0 v1221122_i_fu_120 = 6'd0;
#0 indvar_flatten23_i_fu_124 = 9'd0;
#0 v1221224_i_fu_128 = 5'd0;
#0 v1221325_i_fu_132 = 5'd0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_492)) begin
            icmp_ln1568027_i_reg_196 <= icmp_ln15680_reg_729;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln1568027_i_reg_196 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_119)) begin
        indvar_flatten1221_i_fu_116 <= add_ln15679_1_fu_404_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_119)) begin
    indvar_flatten23_i_fu_124 <= select_ln15680_1_fu_396_p3;
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1221122_i_fu_120 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1221122_i_fu_120 <= select_ln15679_2_fu_457_p3;
    end
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_119)) begin
    v1221224_i_fu_128 <= select_ln15680_fu_346_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_119)) begin
    v1221325_i_fu_132 <= add_ln15681_fu_384_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln15684_reg_744 <= add_ln15684_fu_508_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln15679_reg_734 <= icmp_ln15679_fu_422_p2;
        lshr_ln91_i_reg_719 <= {{add_ln15683_fu_368_p2[5:1]}};
        lshr_ln91_i_reg_719_pp0_iter1_reg <= lshr_ln91_i_reg_719;
        lshr_ln_i_reg_713 <= {{v12213_mid2_i_fu_338_p3[4:1]}};
        lshr_ln_i_reg_713_pp0_iter1_reg <= lshr_ln_i_reg_713;
        mul9_i66_cast_cast_i_cast_cast_i_cast_cast_reg_697[4 : 2] <= mul9_i66_cast_cast_i_cast_cast_i_cast_cast_fu_245_p3[4 : 2];
        mul_i37_i_i_reg_692[5] <= mul_i37_i_i_fu_229_p3[5];
        p_udiv2_i_cast_cast_i_cast_cast_reg_702[3 : 1] <= p_udiv2_i_cast_cast_i_cast_cast_fu_265_p3[3 : 1];
        p_udiv2_i_cast_cast_i_cast_cast_reg_702_pp0_iter1_reg[3 : 1] <= p_udiv2_i_cast_cast_i_cast_cast_reg_702[3 : 1];
        select_ln15679_2_reg_738 <= select_ln15679_2_fu_457_p3;
        select_ln15680_reg_707 <= select_ln15680_fu_346_p3;
        select_ln15680_reg_707_pp0_iter1_reg <= select_ln15680_reg_707;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln15686_1_reg_750 <= add_ln15686_1_fu_612_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15680_reg_729 <= icmp_ln15680_fu_416_p2;
        icmp_ln15681_reg_724 <= icmp_ln15681_fu_410_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15679_fu_422_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_487)) begin
            ap_phi_mux_icmp_ln1568027_i_phi_fu_199_p4 = icmp_ln15680_reg_729;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1568027_i_phi_fu_199_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1568027_i_phi_fu_199_p4 = icmp_ln15680_reg_729;
        end
    end else begin
        ap_phi_mux_icmp_ln1568027_i_phi_fu_199_p4 = icmp_ln15680_reg_729;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_487)) begin
            ap_phi_mux_icmp_ln1568126_i_phi_fu_210_p4 = icmp_ln15681_reg_724;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1568126_i_phi_fu_210_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1568126_i_phi_fu_210_p4 = icmp_ln15681_reg_724;
        end
    end else begin
        ap_phi_mux_icmp_ln1568126_i_phi_fu_210_p4 = icmp_ln15681_reg_724;
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
        ap_sig_allocacmp_indvar_flatten1221_i_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_i_load = indvar_flatten1221_i_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten23_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten23_i_load = indvar_flatten23_i_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1221224_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1221224_i_load = v1221224_i_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1221325_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1221325_i_load = v1221325_i_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12239_1_ce0_local = 1'b1;
    end else begin
        v12239_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12239_1_we0_local = 1'b1;
    end else begin
        v12239_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12239_ce0_local = 1'b1;
    end else begin
        v12239_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12239_we0_local = 1'b1;
    end else begin
        v12239_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16178_0_ce0_local = 1'b1;
    end else begin
        v16178_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16178_1_ce0_local = 1'b1;
    end else begin
        v16178_1_ce0_local = 1'b0;
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
assign add_ln15679_1_fu_404_p2 = (ap_sig_allocacmp_indvar_flatten1221_i_load + 14'd1);
assign add_ln15679_fu_451_p2 = (v1221122_i_fu_120 + 6'd1);
assign add_ln15680_1_fu_390_p2 = (ap_sig_allocacmp_indvar_flatten23_i_load + 9'd1);
assign add_ln15680_fu_332_p2 = (select_ln15679_fu_310_p3 + 5'd1);
assign add_ln15681_fu_384_p2 = (v12213_mid2_i_fu_338_p3 + 5'd2);
assign add_ln15683_fu_368_p2 = (zext_ln15679_cast_cast_i_cast_cast_fu_257_p3 + zext_ln15681_fu_354_p1);
assign add_ln15684_1_fu_618_p2 = (zext_ln15681_1_fu_606_p1 + p_udiv2_i_cast_cast_i_cast_cast_reg_702_pp0_iter1_reg);
assign add_ln15684_2_fu_627_p2 = (sub_ln15684_1_fu_600_p2 + zext_ln15684_3_fu_623_p1);
assign add_ln15684_fu_508_p2 = (sub_ln15684_fu_490_p2 + zext_ln15684_1_fu_504_p1);
assign add_ln15686_1_fu_612_p2 = (sub_ln15680_fu_576_p2 + zext_ln15686_3_fu_609_p1);
assign add_ln15686_2_fu_641_p2 = (sub_ln15684_1_fu_600_p2 + zext_ln15686_5_fu_638_p1);
assign add_ln15686_fu_546_p2 = (sub_ln15686_fu_537_p2 + zext_ln15686_1_fu_543_p1);
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
    ap_condition_119 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_487 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15679_reg_734 == 1'd0));
end
always @ (*) begin
    ap_condition_492 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln15679_reg_734 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_377_fu_465_p2 = (select_ln15679_2_fu_457_p3 + mul_i37_i_i_reg_692);
assign empty_378_fu_499_p2 = (mul9_i66_cast_cast_i_cast_cast_i_cast_cast_reg_697 + zext_ln15680_fu_496_p1);
assign empty_fu_253_p1 = v12233[0:0];
assign icmp_ln15679_fu_422_p2 = ((ap_sig_allocacmp_indvar_flatten1221_i_load == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln15680_fu_416_p2 = ((select_ln15680_1_fu_396_p3 == 9'd392) ? 1'b1 : 1'b0);
assign icmp_ln15681_fu_410_p2 = ((add_ln15681_fu_384_p2 < 5'd28) ? 1'b1 : 1'b0);
assign mul9_i66_cast_cast_i_cast_cast_i_cast_cast_fu_245_p3 = ((tmp_422_fu_237_p3[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign mul_i37_i_i_fu_229_p3 = {{tmp_fu_221_p3}, {5'd0}};
assign or_ln15679_fu_326_p2 = (ap_phi_mux_icmp_ln1568126_i_phi_fu_210_p4 | ap_phi_mux_icmp_ln1568027_i_phi_fu_199_p4);
assign p_shl29_fu_470_p3 = {{empty_377_fu_465_p2}, {6'd0}};
assign p_shl31_fu_519_p3 = {{select_ln15679_2_reg_738}, {5'd0}};
assign p_shl_fu_582_p3 = {{add_ln15684_reg_744}, {5'd0}};
assign p_udiv2_i_cast_cast_i_cast_cast_fu_265_p3 = ((empty_fu_253_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign select_ln15679_1_fu_318_p3 = ((ap_phi_mux_icmp_ln1568027_i_phi_fu_199_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1221325_i_load);
assign select_ln15679_2_fu_457_p3 = ((icmp_ln1568027_i_reg_196[0:0] == 1'b1) ? add_ln15679_fu_451_p2 : v1221122_i_fu_120);
assign select_ln15679_fu_310_p3 = ((ap_phi_mux_icmp_ln1568027_i_phi_fu_199_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v1221224_i_load);
assign select_ln15680_1_fu_396_p3 = ((ap_phi_mux_icmp_ln1568027_i_phi_fu_199_p4[0:0] == 1'b1) ? 9'd1 : add_ln15680_1_fu_390_p2);
assign select_ln15680_fu_346_p3 = ((or_ln15679_fu_326_p2[0:0] == 1'b1) ? select_ln15679_fu_310_p3 : add_ln15680_fu_332_p2);
assign sub_ln15680_fu_576_p2 = (tmp_426_fu_564_p3 - zext_ln15686_2_fu_572_p1);
assign sub_ln15684_1_fu_600_p2 = (p_shl_fu_582_p3 - zext_ln15684_2_fu_596_p1);
assign sub_ln15684_fu_490_p2 = (p_shl29_fu_470_p3 - zext_ln15684_fu_486_p1);
assign sub_ln15686_fu_537_p2 = (p_shl31_fu_519_p3 - zext_ln15686_fu_533_p1);
assign tmp_422_fu_237_p3 = v12233_cast2_fu_217_p1[32'd1];
assign tmp_423_fu_526_p3 = {{select_ln15679_2_reg_738}, {2'd0}};
assign tmp_424_fu_478_p3 = {{empty_377_fu_465_p2}, {3'd0}};
assign tmp_425_fu_556_p3 = {{add_ln15686_fu_546_p2}, {1'd0}};
assign tmp_426_fu_564_p3 = {{trunc_ln15686_fu_552_p1}, {4'd0}};
assign tmp_427_fu_589_p3 = {{add_ln15684_reg_744}, {2'd0}};
assign tmp_fu_221_p3 = v12233_cast2_fu_217_p1[32'd2];
assign trunc_ln15686_fu_552_p1 = add_ln15686_fu_546_p2[9:0];
assign v12213_mid2_i_fu_338_p3 = ((or_ln15679_fu_326_p2[0:0] == 1'b1) ? select_ln15679_1_fu_318_p3 : 5'd0);
assign v12233_cast2_fu_217_p1 = v12233;
assign v12239_1_address0 = zext_ln15686_4_fu_652_p1;
assign v12239_1_ce0 = v12239_1_ce0_local;
assign v12239_1_d0 = v16178_0_q0;
assign v12239_1_we0 = v12239_1_we0_local;
assign v12239_address0 = zext_ln15686_4_fu_652_p1;
assign v12239_ce0 = v12239_ce0_local;
assign v12239_d0 = v16178_1_q0;
assign v12239_we0 = v12239_we0_local;
assign v16178_0_address0 = zext_ln15684_4_fu_633_p1;
assign v16178_0_ce0 = v16178_0_ce0_local;
assign v16178_1_address0 = zext_ln15686_6_fu_647_p1;
assign v16178_1_ce0 = v16178_1_ce0_local;
assign zext_ln15679_cast_cast_i_cast_cast_fu_257_p3 = ((empty_fu_253_p1[0:0] == 1'b1) ? 6'd28 : 6'd0);
assign zext_ln15680_fu_496_p1 = select_ln15680_reg_707;
assign zext_ln15681_1_fu_606_p1 = lshr_ln_i_reg_713_pp0_iter1_reg;
assign zext_ln15681_fu_354_p1 = v12213_mid2_i_fu_338_p3;
assign zext_ln15684_1_fu_504_p1 = empty_378_fu_499_p2;
assign zext_ln15684_2_fu_596_p1 = tmp_427_fu_589_p3;
assign zext_ln15684_3_fu_623_p1 = add_ln15684_1_fu_618_p2;
assign zext_ln15684_4_fu_633_p1 = add_ln15684_2_fu_627_p2;
assign zext_ln15684_fu_486_p1 = tmp_424_fu_478_p3;
assign zext_ln15686_1_fu_543_p1 = select_ln15680_reg_707_pp0_iter1_reg;
assign zext_ln15686_2_fu_572_p1 = tmp_425_fu_556_p3;
assign zext_ln15686_3_fu_609_p1 = lshr_ln_i_reg_713_pp0_iter1_reg;
assign zext_ln15686_4_fu_652_p1 = add_ln15686_1_reg_750;
assign zext_ln15686_5_fu_638_p1 = lshr_ln91_i_reg_719_pp0_iter1_reg;
assign zext_ln15686_6_fu_647_p1 = add_ln15686_2_fu_641_p2;
assign zext_ln15686_fu_533_p1 = tmp_423_fu_526_p3;
always @ (posedge ap_clk) begin
    mul_i37_i_i_reg_692[4:0] <= 5'b00000;
    mul9_i66_cast_cast_i_cast_cast_i_cast_cast_reg_697[1:0] <= 2'b00;
    mul9_i66_cast_cast_i_cast_cast_i_cast_cast_reg_697[5] <= 1'b0;
    p_udiv2_i_cast_cast_i_cast_cast_reg_702[0] <= 1'b0;
    p_udiv2_i_cast_cast_i_cast_cast_reg_702[4] <= 1'b0;
    p_udiv2_i_cast_cast_i_cast_cast_reg_702_pp0_iter1_reg[0] <= 1'b0;
    p_udiv2_i_cast_cast_i_cast_cast_reg_702_pp0_iter1_reg[4] <= 1'b0;
end
endmodule 