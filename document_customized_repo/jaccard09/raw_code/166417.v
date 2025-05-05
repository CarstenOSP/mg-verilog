module forward_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v13730_1_address0,v13730_1_ce0,v13730_1_we0,v13730_1_d0,v13730_0_address0,v13730_0_ce0,v13730_0_we0,v13730_0_d0,p_read,v5774_1_i_address0,v5774_1_i_ce0,v5774_1_i_q0,v5774_i_address0,v5774_i_ce0,v5774_i_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [14:0] v13730_1_address0;
output   v13730_1_ce0;
output   v13730_1_we0;
output  [7:0] v13730_1_d0;
output  [14:0] v13730_0_address0;
output   v13730_0_ce0;
output   v13730_0_we0;
output  [7:0] v13730_0_d0;
input  [5:0] p_read;
output  [8:0] v5774_1_i_address0;
output   v5774_1_i_ce0;
input  [7:0] v5774_1_i_q0;
output  [8:0] v5774_i_address0;
output   v5774_i_ce0;
input  [7:0] v5774_i_q0;
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
wire   [0:0] icmp_ln7093_fu_478_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [3:0] p_udiv2_i_cast_cast_fu_250_p3;
reg   [3:0] p_udiv2_i_cast_cast_reg_716;
wire   [2:0] zext_ln7151_cast_cast_cast_cast_fu_262_p3;
reg   [2:0] zext_ln7151_cast_cast_cast_cast_reg_721;
wire   [1:0] v5724_mid2_fu_356_p3;
reg   [1:0] v5724_mid2_reg_726;
wire   [8:0] empty_213_fu_394_p2;
reg   [8:0] empty_213_reg_732;
wire   [2:0] lshr_ln_fu_404_p4;
reg   [2:0] lshr_ln_reg_738;
wire   [8:0] add_ln7097_fu_418_p2;
reg   [8:0] add_ln7097_reg_743;
reg   [3:0] lshr_ln4_reg_749;
wire   [0:0] icmp_ln7095_fu_466_p2;
reg   [0:0] icmp_ln7095_reg_754;
wire   [0:0] icmp_ln7094_fu_472_p2;
reg   [0:0] icmp_ln7094_reg_759;
reg   [0:0] icmp_ln7093_reg_764;
wire   [14:0] add_ln7100_1_fu_661_p2;
reg   [14:0] add_ln7100_1_reg_778;
wire   [14:0] add_ln7098_2_fu_667_p2;
reg   [14:0] add_ln7098_2_reg_783;
reg   [0:0] ap_phi_mux_icmp_ln709439_phi_fu_199_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln709538_phi_fu_209_p4;
wire   [63:0] zext_ln7097_3_fu_643_p1;
wire   [63:0] zext_ln7100_5_fu_673_p1;
wire   [63:0] zext_ln7098_2_fu_677_p1;
reg   [8:0] indvar_flatten1233_fu_116;
wire   [8:0] add_ln7093_1_fu_460_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v572234_fu_120;
wire   [5:0] v5722_fu_336_p3;
reg   [5:0] ap_sig_allocacmp_v572234_load;
reg   [4:0] indvar_flatten35_fu_124;
wire   [4:0] select_ln7094_1_fu_452_p3;
reg   [4:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [3:0] v572336_fu_128;
wire   [3:0] v5723_fu_364_p3;
reg   [3:0] ap_sig_allocacmp_v572336_load;
reg   [1:0] v572437_fu_132;
wire   [1:0] v5724_fu_440_p2;
reg   [1:0] ap_sig_allocacmp_v572437_load;
reg    v5774_1_i_ce0_local;
reg    v5774_i_ce0_local;
reg    v13730_0_we0_local;
reg    v13730_0_ce0_local;
reg    v13730_1_we0_local;
reg    v13730_1_ce0_local;
wire   [3:0] tmp_fu_216_p4;
wire   [0:0] tmp_159_fu_234_p3;
wire   [0:0] empty_fu_258_p1;
wire   [0:0] xor_ln7093_fu_324_p2;
wire   [5:0] add_ln7093_fu_310_p2;
wire   [3:0] select_ln7093_fu_316_p3;
wire   [0:0] and_ln7093_fu_330_p2;
wire   [0:0] empty_212_fu_350_p2;
wire   [3:0] add_ln7094_fu_344_p2;
wire   [7:0] tmp_160_fu_376_p3;
wire   [8:0] zext_ln7097_fu_384_p1;
wire   [8:0] zext_ln7093_fu_372_p1;
wire   [8:0] mul_i32_i_fu_226_p3;
wire   [8:0] add_ln7097_2_fu_388_p2;
wire   [8:0] zext_ln7097_1_fu_414_p1;
wire   [4:0] mul9_i64_cast_i_cast_cast_fu_242_p3;
wire   [4:0] zext_ln7094_fu_400_p1;
wire   [4:0] empty_214_fu_424_p2;
wire   [4:0] add_ln7094_1_fu_446_p2;
wire   [11:0] tmp_161_fu_509_p3;
wire   [9:0] tmp_162_fu_520_p3;
wire   [12:0] zext_ln7100_fu_516_p1;
wire   [12:0] zext_ln7100_1_fu_527_p1;
wire   [8:0] shl_ln7097_fu_540_p2;
wire   [3:0] zext_ln7094_1_fu_537_p1;
wire   [3:0] empty_215_fu_550_p2;
wire   [12:0] add_ln7100_2_fu_531_p2;
wire   [12:0] zext_ln7098_fu_555_p1;
wire   [12:0] add_ln7098_1_fu_559_p2;
wire   [11:0] trunc_ln7098_fu_565_p1;
wire   [13:0] tmp_163_fu_569_p3;
wire   [14:0] tmp_164_fu_577_p3;
wire   [14:0] zext_ln7098_1_fu_585_p1;
wire   [12:0] zext_ln7100_2_fu_595_p1;
wire   [12:0] add_ln7100_fu_598_p2;
wire   [11:0] trunc_ln7100_fu_604_p1;
wire   [13:0] tmp_165_fu_608_p3;
wire   [14:0] tmp_166_fu_616_p3;
wire   [14:0] zext_ln7100_3_fu_624_p1;
wire   [8:0] sub_ln7097_fu_545_p2;
wire   [8:0] zext_ln7097_2_fu_634_p1;
wire   [8:0] add_ln7097_1_fu_637_p2;
wire   [2:0] zext_ln7095_fu_649_p1;
wire   [2:0] add_ln7098_fu_652_p2;
wire   [14:0] sub_ln7095_1_fu_628_p2;
wire   [14:0] zext_ln7100_4_fu_657_p1;
wire   [14:0] sub_ln7095_fu_589_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_490;
reg    ap_condition_110;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_116 = 9'd0;
#0 v572234_fu_120 = 6'd0;
#0 indvar_flatten35_fu_124 = 5'd0;
#0 v572336_fu_128 = 4'd0;
#0 v572437_fu_132 = 2'd0;
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
    if ((1'b1 == ap_condition_110)) begin
        indvar_flatten1233_fu_116 <= add_ln7093_1_fu_460_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_110)) begin
    indvar_flatten35_fu_124 <= select_ln7094_1_fu_452_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_110)) begin
    v572234_fu_120 <= v5722_fu_336_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_110)) begin
    v572336_fu_128 <= v5723_fu_364_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_110)) begin
    v572437_fu_132 <= v5724_fu_440_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7097_reg_743 <= add_ln7097_fu_418_p2;
        add_ln7098_2_reg_783 <= add_ln7098_2_fu_667_p2;
        add_ln7100_1_reg_778 <= add_ln7100_1_fu_661_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_213_reg_732 <= empty_213_fu_394_p2;
        icmp_ln7093_reg_764 <= icmp_ln7093_fu_478_p2;
        lshr_ln4_reg_749 <= {{empty_214_fu_424_p2[4:1]}};
        lshr_ln_reg_738 <= {{v5723_fu_364_p3[3:1]}};
        p_udiv2_i_cast_cast_reg_716[0] <= p_udiv2_i_cast_cast_fu_250_p3[0];
p_udiv2_i_cast_cast_reg_716[2] <= p_udiv2_i_cast_cast_fu_250_p3[2];
        v5724_mid2_reg_726 <= v5724_mid2_fu_356_p3;
        zext_ln7151_cast_cast_cast_cast_reg_721[1 : 0] <= zext_ln7151_cast_cast_cast_cast_fu_262_p3[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7094_reg_759 <= icmp_ln7094_fu_472_p2;
        icmp_ln7095_reg_754 <= icmp_ln7095_fu_466_p2;
    end
end
always @ (*) begin
    if (((icmp_ln7093_fu_478_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_490)) begin
            ap_phi_mux_icmp_ln709439_phi_fu_199_p4 = icmp_ln7094_reg_759;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln709439_phi_fu_199_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln709439_phi_fu_199_p4 = icmp_ln7094_reg_759;
        end
    end else begin
        ap_phi_mux_icmp_ln709439_phi_fu_199_p4 = icmp_ln7094_reg_759;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_490)) begin
            ap_phi_mux_icmp_ln709538_phi_fu_209_p4 = icmp_ln7095_reg_754;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln709538_phi_fu_209_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln709538_phi_fu_209_p4 = icmp_ln7095_reg_754;
        end
    end else begin
        ap_phi_mux_icmp_ln709538_phi_fu_209_p4 = icmp_ln7095_reg_754;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 5'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_124;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v572234_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v572234_load = v572234_fu_120;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v572336_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v572336_load = v572336_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v572437_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v572437_load = v572437_fu_132;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13730_0_ce0_local = 1'b1;
    end else begin
        v13730_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13730_0_we0_local = 1'b1;
    end else begin
        v13730_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13730_1_ce0_local = 1'b1;
    end else begin
        v13730_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13730_1_we0_local = 1'b1;
    end else begin
        v13730_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5774_1_i_ce0_local = 1'b1;
    end else begin
        v5774_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5774_i_ce0_local = 1'b1;
    end else begin
        v5774_i_ce0_local = 1'b0;
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
assign add_ln7093_1_fu_460_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 9'd1);
assign add_ln7093_fu_310_p2 = (ap_sig_allocacmp_v572234_load + 6'd1);
assign add_ln7094_1_fu_446_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 5'd1);
assign add_ln7094_fu_344_p2 = (select_ln7093_fu_316_p3 + 4'd2);
assign add_ln7097_1_fu_637_p2 = (sub_ln7097_fu_545_p2 + zext_ln7097_2_fu_634_p1);
assign add_ln7097_2_fu_388_p2 = (zext_ln7097_fu_384_p1 + zext_ln7093_fu_372_p1);
assign add_ln7097_fu_418_p2 = (add_ln7097_2_fu_388_p2 + zext_ln7097_1_fu_414_p1);
assign add_ln7098_1_fu_559_p2 = (add_ln7100_2_fu_531_p2 + zext_ln7098_fu_555_p1);
assign add_ln7098_2_fu_667_p2 = (sub_ln7095_fu_589_p2 + zext_ln7100_4_fu_657_p1);
assign add_ln7098_fu_652_p2 = (zext_ln7151_cast_cast_cast_cast_reg_721 + zext_ln7095_fu_649_p1);
assign add_ln7100_1_fu_661_p2 = (sub_ln7095_1_fu_628_p2 + zext_ln7100_4_fu_657_p1);
assign add_ln7100_2_fu_531_p2 = (zext_ln7100_fu_516_p1 + zext_ln7100_1_fu_527_p1);
assign add_ln7100_fu_598_p2 = (add_ln7100_2_fu_531_p2 + zext_ln7100_2_fu_595_p1);
assign and_ln7093_fu_330_p2 = (xor_ln7093_fu_324_p2 & ap_phi_mux_icmp_ln709538_phi_fu_209_p4);
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
    ap_condition_110 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_490 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln7093_reg_764 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_212_fu_350_p2 = (ap_phi_mux_icmp_ln709439_phi_fu_199_p4 | and_ln7093_fu_330_p2);
assign empty_213_fu_394_p2 = (mul_i32_i_fu_226_p3 + zext_ln7093_fu_372_p1);
assign empty_214_fu_424_p2 = (mul9_i64_cast_i_cast_cast_fu_242_p3 + zext_ln7094_fu_400_p1);
assign empty_215_fu_550_p2 = (zext_ln7094_1_fu_537_p1 + p_udiv2_i_cast_cast_reg_716);
assign empty_fu_258_p1 = p_read[0:0];
assign icmp_ln7093_fu_478_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 9'd479) ? 1'b1 : 1'b0);
assign icmp_ln7094_fu_472_p2 = ((select_ln7094_1_fu_452_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln7095_fu_466_p2 = ((v5724_fu_440_p2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln_fu_404_p4 = {{v5723_fu_364_p3[3:1]}};
assign mul9_i64_cast_i_cast_cast_fu_242_p3 = ((tmp_159_fu_234_p3[0:0] == 1'b1) ? 5'd10 : 5'd0);
assign mul_i32_i_fu_226_p3 = {{tmp_fu_216_p4}, {5'd0}};
assign p_udiv2_i_cast_cast_fu_250_p3 = ((tmp_159_fu_234_p3[0:0] == 1'b1) ? 4'd5 : 4'd0);
assign select_ln7093_fu_316_p3 = ((ap_phi_mux_icmp_ln709439_phi_fu_199_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v572336_load);
assign select_ln7094_1_fu_452_p3 = ((ap_phi_mux_icmp_ln709439_phi_fu_199_p4[0:0] == 1'b1) ? 5'd1 : add_ln7094_1_fu_446_p2);
assign shl_ln7097_fu_540_p2 = add_ln7097_reg_743 << 9'd2;
assign sub_ln7095_1_fu_628_p2 = (tmp_166_fu_616_p3 - zext_ln7100_3_fu_624_p1);
assign sub_ln7095_fu_589_p2 = (tmp_164_fu_577_p3 - zext_ln7098_1_fu_585_p1);
assign sub_ln7097_fu_545_p2 = (shl_ln7097_fu_540_p2 - add_ln7097_reg_743);
assign tmp_159_fu_234_p3 = p_read[32'd1];
assign tmp_160_fu_376_p3 = {{v5722_fu_336_p3}, {2'd0}};
assign tmp_161_fu_509_p3 = {{empty_213_reg_732}, {3'd0}};
assign tmp_162_fu_520_p3 = {{empty_213_reg_732}, {1'd0}};
assign tmp_163_fu_569_p3 = {{add_ln7098_1_fu_559_p2}, {1'd0}};
assign tmp_164_fu_577_p3 = {{trunc_ln7098_fu_565_p1}, {3'd0}};
assign tmp_165_fu_608_p3 = {{add_ln7100_fu_598_p2}, {1'd0}};
assign tmp_166_fu_616_p3 = {{trunc_ln7100_fu_604_p1}, {3'd0}};
assign tmp_fu_216_p4 = {{p_read[5:2]}};
assign trunc_ln7098_fu_565_p1 = add_ln7098_1_fu_559_p2[11:0];
assign trunc_ln7100_fu_604_p1 = add_ln7100_fu_598_p2[11:0];
assign v13730_0_address0 = zext_ln7098_2_fu_677_p1;
assign v13730_0_ce0 = v13730_0_ce0_local;
assign v13730_0_d0 = v5774_1_i_q0;
assign v13730_0_we0 = v13730_0_we0_local;
assign v13730_1_address0 = zext_ln7100_5_fu_673_p1;
assign v13730_1_ce0 = v13730_1_ce0_local;
assign v13730_1_d0 = v5774_i_q0;
assign v13730_1_we0 = v13730_1_we0_local;
assign v5722_fu_336_p3 = ((ap_phi_mux_icmp_ln709439_phi_fu_199_p4[0:0] == 1'b1) ? add_ln7093_fu_310_p2 : ap_sig_allocacmp_v572234_load);
assign v5723_fu_364_p3 = ((and_ln7093_fu_330_p2[0:0] == 1'b1) ? add_ln7094_fu_344_p2 : select_ln7093_fu_316_p3);
assign v5724_fu_440_p2 = (v5724_mid2_fu_356_p3 + 2'd1);
assign v5724_mid2_fu_356_p3 = ((empty_212_fu_350_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v572437_load);
assign v5774_1_i_address0 = zext_ln7097_3_fu_643_p1;
assign v5774_1_i_ce0 = v5774_1_i_ce0_local;
assign v5774_i_address0 = zext_ln7097_3_fu_643_p1;
assign v5774_i_ce0 = v5774_i_ce0_local;
assign xor_ln7093_fu_324_p2 = (ap_phi_mux_icmp_ln709439_phi_fu_199_p4 ^ 1'd1);
assign zext_ln7093_fu_372_p1 = v5722_fu_336_p3;
assign zext_ln7094_1_fu_537_p1 = lshr_ln_reg_738;
assign zext_ln7094_fu_400_p1 = v5723_fu_364_p3;
assign zext_ln7095_fu_649_p1 = v5724_mid2_reg_726;
assign zext_ln7097_1_fu_414_p1 = lshr_ln_fu_404_p4;
assign zext_ln7097_2_fu_634_p1 = v5724_mid2_reg_726;
assign zext_ln7097_3_fu_643_p1 = add_ln7097_1_fu_637_p2;
assign zext_ln7097_fu_384_p1 = tmp_160_fu_376_p3;
assign zext_ln7098_1_fu_585_p1 = tmp_163_fu_569_p3;
assign zext_ln7098_2_fu_677_p1 = add_ln7098_2_reg_783;
assign zext_ln7098_fu_555_p1 = empty_215_fu_550_p2;
assign zext_ln7100_1_fu_527_p1 = tmp_162_fu_520_p3;
assign zext_ln7100_2_fu_595_p1 = lshr_ln4_reg_749;
assign zext_ln7100_3_fu_624_p1 = tmp_165_fu_608_p3;
assign zext_ln7100_4_fu_657_p1 = add_ln7098_fu_652_p2;
assign zext_ln7100_5_fu_673_p1 = add_ln7100_1_reg_778;
assign zext_ln7100_fu_516_p1 = tmp_161_fu_509_p3;
assign zext_ln7151_cast_cast_cast_cast_fu_262_p3 = ((empty_fu_258_p1[0:0] == 1'b1) ? 3'd3 : 3'd0);
always @ (posedge ap_clk) begin
    p_udiv2_i_cast_cast_reg_716[1] <= 1'b0;
    p_udiv2_i_cast_cast_reg_716[3] <= 1'b0;
    zext_ln7151_cast_cast_cast_cast_reg_721[2] <= 1'b0;
end
endmodule 