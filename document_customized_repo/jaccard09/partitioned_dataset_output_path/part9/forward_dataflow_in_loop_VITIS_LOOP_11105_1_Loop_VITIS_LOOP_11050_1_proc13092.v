
module forward_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v8733_address0,v8733_ce0,v8733_we0,v8733_d0,v8733_1_address0,v8733_1_ce0,v8733_1_we0,v8733_1_d0,v8727,v16190_0_address0,v16190_0_ce0,v16190_0_q0,v16190_1_address0,v16190_1_ce0,v16190_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] v8733_address0;
output   v8733_ce0;
output   v8733_we0;
output  [7:0] v8733_d0;
output  [11:0] v8733_1_address0;
output   v8733_1_ce0;
output   v8733_1_we0;
output  [7:0] v8733_1_d0;
input  [3:0] v8727;
output  [15:0] v16190_0_address0;
output   v16190_0_ce0;
input  [7:0] v16190_0_q0;
output  [15:0] v16190_1_address0;
output   v16190_1_ce0;
input  [7:0] v16190_1_q0;
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
wire   [0:0] icmp_ln11050_fu_310_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [6:0] mul_i37_i_i_fu_232_p3;
reg   [6:0] mul_i37_i_i_reg_695;
wire   [4:0] mul9_i66_cast_cast_i_cast_cast_i_cast_cast_fu_248_p3;
reg   [4:0] mul9_i66_cast_cast_i_cast_cast_i_cast_cast_reg_700;
wire   [4:0] zext_ln11050_cast_cast_i_cast_cast_fu_260_p3;
reg   [4:0] zext_ln11050_cast_cast_i_cast_cast_reg_705;
wire   [3:0] p_udiv2_i_cast_cast_i_cast_cast_fu_268_p3;
reg   [3:0] p_udiv2_i_cast_cast_i_cast_cast_reg_710;
reg   [3:0] p_udiv2_i_cast_cast_i_cast_cast_reg_710_pp0_iter1_reg;
reg   [0:0] icmp_ln11050_reg_715;
reg   [0:0] icmp_ln11050_reg_715_pp0_iter1_reg;
wire   [5:0] select_ln11050_1_fu_359_p3;
reg   [5:0] select_ln11050_1_reg_719;
wire   [3:0] select_ln11051_fu_387_p3;
reg   [3:0] select_ln11051_reg_725;
wire   [11:0] add_ln11055_fu_443_p2;
reg   [11:0] add_ln11055_reg_730;
reg   [2:0] lshr_ln_i_reg_736;
reg   [3:0] lshr_ln120_i_reg_742;
wire   [0:0] icmp_ln11052_fu_498_p2;
reg   [0:0] icmp_ln11052_reg_747;
wire   [0:0] icmp_ln11051_fu_504_p2;
reg   [0:0] icmp_ln11051_reg_752;
wire   [11:0] add_ln11057_1_fu_615_p2;
reg   [11:0] add_ln11057_1_reg_757;
reg   [0:0] ap_phi_mux_icmp_ln1105127_i_phi_fu_200_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1105226_i_phi_fu_211_p4;
wire   [63:0] zext_ln11055_4_fu_636_p1;
wire   [63:0] zext_ln11057_6_fu_650_p1;
wire   [63:0] zext_ln11057_4_fu_655_p1;
reg   [11:0] indvar_flatten1221_i_fu_116;
wire   [11:0] add_ln11050_1_fu_304_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1221_i_load;
reg   [5:0] v870522_i_fu_120;
reg   [6:0] indvar_flatten23_i_fu_124;
wire   [6:0] select_ln11051_1_fu_490_p3;
reg   [3:0] v870624_i_fu_128;
reg   [3:0] v870725_i_fu_132;
wire   [3:0] add_ln11052_fu_478_p2;
reg    v16190_0_ce0_local;
reg    v16190_1_ce0_local;
reg    v8733_1_we0_local;
reg    v8733_1_ce0_local;
reg    v8733_we0_local;
reg    v8733_ce0_local;
wire   [1:0] tmp_i_fu_222_p4;
wire   [6:0] v8727_cast2_fu_218_p1;
wire   [0:0] tmp_fu_240_p3;
wire   [0:0] empty_fu_256_p1;
wire   [0:0] xor_ln11050_fu_347_p2;
wire   [5:0] add_ln11050_fu_333_p2;
wire   [3:0] select_ln11050_fu_339_p3;
wire   [0:0] and_ln11050_fu_353_p2;
wire   [0:0] empty_476_fu_373_p2;
wire   [3:0] add_ln11051_fu_367_p2;
wire   [6:0] zext_ln11050_fu_395_p1;
wire   [6:0] empty_477_fu_399_p2;
wire   [8:0] tmp_653_fu_412_p3;
wire   [11:0] p_shl30_fu_404_p3;
wire   [11:0] zext_ln11055_fu_420_p1;
wire   [4:0] zext_ln11051_fu_430_p1;
wire   [4:0] empty_478_fu_434_p2;
wire   [11:0] sub_ln11055_fu_424_p2;
wire   [11:0] zext_ln11055_1_fu_439_p1;
wire   [3:0] v8707_mid2_i_fu_379_p3;
wire   [4:0] zext_ln11052_fu_449_p1;
wire   [4:0] add_ln11054_fu_463_p2;
wire   [6:0] add_ln11051_1_fu_484_p2;
wire   [6:0] tmp_652_fu_537_p3;
wire   [9:0] p_shl32_fu_530_p3;
wire   [9:0] zext_ln11057_fu_544_p1;
wire   [9:0] sub_ln11057_fu_548_p2;
wire   [9:0] zext_ln11057_1_fu_554_p1;
wire   [9:0] add_ln11057_fu_557_p2;
wire   [8:0] trunc_ln11057_fu_563_p1;
wire   [11:0] tmp_654_fu_567_p3;
wire   [11:0] zext_ln11057_2_fu_575_p1;
wire   [12:0] tmp_655_fu_592_p3;
wire   [15:0] p_shl_fu_585_p3;
wire   [15:0] zext_ln11055_2_fu_599_p1;
wire   [11:0] sub_ln11051_fu_579_p2;
wire   [11:0] zext_ln11057_3_fu_612_p1;
wire   [3:0] zext_ln11052_1_fu_609_p1;
wire   [3:0] add_ln11055_1_fu_621_p2;
wire   [15:0] sub_ln11055_1_fu_603_p2;
wire   [15:0] zext_ln11055_3_fu_626_p1;
wire   [15:0] add_ln11055_2_fu_630_p2;
wire   [15:0] zext_ln11057_5_fu_641_p1;
wire   [15:0] add_ln11057_2_fu_644_p2;
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
reg    ap_condition_164;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1221_i_fu_116 = 12'd0;
#0 v870522_i_fu_120 = 6'd0;
#0 indvar_flatten23_i_fu_124 = 7'd0;
#0 v870624_i_fu_128 = 4'd0;
#0 v870725_i_fu_132 = 4'd0;
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
    if ((1'b1 == ap_condition_164)) begin
        indvar_flatten1221_i_fu_116 <= add_ln11050_1_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten23_i_fu_124 <= 7'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten23_i_fu_124 <= select_ln11051_1_fu_490_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v870522_i_fu_120 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v870522_i_fu_120 <= select_ln11050_1_fu_359_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v870624_i_fu_128 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v870624_i_fu_128 <= select_ln11051_fu_387_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v870725_i_fu_132 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v870725_i_fu_132 <= add_ln11052_fu_478_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln11055_reg_730 <= add_ln11055_fu_443_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln11050_reg_715 <= icmp_ln11050_fu_310_p2;
        icmp_ln11050_reg_715_pp0_iter1_reg <= icmp_ln11050_reg_715;
        lshr_ln120_i_reg_742 <= {{add_ln11054_fu_463_p2[4:1]}};
        lshr_ln_i_reg_736 <= {{v8707_mid2_i_fu_379_p3[3:1]}};
        mul9_i66_cast_cast_i_cast_cast_i_cast_cast_reg_700[3 : 1] <= mul9_i66_cast_cast_i_cast_cast_i_cast_cast_fu_248_p3[3 : 1];
        mul_i37_i_i_reg_695[6 : 5] <= mul_i37_i_i_fu_232_p3[6 : 5];
        p_udiv2_i_cast_cast_i_cast_cast_reg_710[2 : 0] <= p_udiv2_i_cast_cast_i_cast_cast_fu_268_p3[2 : 0];
        p_udiv2_i_cast_cast_i_cast_cast_reg_710_pp0_iter1_reg[2 : 0] <= p_udiv2_i_cast_cast_i_cast_cast_reg_710[2 : 0];
        select_ln11050_1_reg_719 <= select_ln11050_1_fu_359_p3;
        select_ln11051_reg_725 <= select_ln11051_fu_387_p3;
        zext_ln11050_cast_cast_i_cast_cast_reg_705[3 : 1] <= zext_ln11050_cast_cast_i_cast_cast_fu_260_p3[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln11057_1_reg_757 <= add_ln11057_1_fu_615_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln11051_reg_752 <= icmp_ln11051_fu_504_p2;
        icmp_ln11052_reg_747 <= icmp_ln11052_fu_498_p2;
    end
end
always @ (*) begin
    if (((icmp_ln11050_fu_310_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln11050_reg_715_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1105127_i_phi_fu_200_p4 = icmp_ln11051_reg_752;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1105127_i_phi_fu_200_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1105127_i_phi_fu_200_p4 = icmp_ln11051_reg_752;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln11050_reg_715_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1105226_i_phi_fu_211_p4 = icmp_ln11052_reg_747;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1105226_i_phi_fu_211_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1105226_i_phi_fu_211_p4 = icmp_ln11052_reg_747;
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
        ap_sig_allocacmp_indvar_flatten1221_i_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_i_load = indvar_flatten1221_i_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16190_0_ce0_local = 1'b1;
    end else begin
        v16190_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16190_1_ce0_local = 1'b1;
    end else begin
        v16190_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8733_1_ce0_local = 1'b1;
    end else begin
        v8733_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8733_1_we0_local = 1'b1;
    end else begin
        v8733_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8733_ce0_local = 1'b1;
    end else begin
        v8733_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v8733_we0_local = 1'b1;
    end else begin
        v8733_we0_local = 1'b0;
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
assign add_ln11050_1_fu_304_p2 = (ap_sig_allocacmp_indvar_flatten1221_i_load + 12'd1);
assign add_ln11050_fu_333_p2 = (v870522_i_fu_120 + 6'd1);
assign add_ln11051_1_fu_484_p2 = (indvar_flatten23_i_fu_124 + 7'd1);
assign add_ln11051_fu_367_p2 = (select_ln11050_fu_339_p3 + 4'd1);
assign add_ln11052_fu_478_p2 = (v8707_mid2_i_fu_379_p3 + 4'd2);
assign add_ln11054_fu_463_p2 = (zext_ln11050_cast_cast_i_cast_cast_reg_705 + zext_ln11052_fu_449_p1);
assign add_ln11055_1_fu_621_p2 = (zext_ln11052_1_fu_609_p1 + p_udiv2_i_cast_cast_i_cast_cast_reg_710_pp0_iter1_reg);
assign add_ln11055_2_fu_630_p2 = (sub_ln11055_1_fu_603_p2 + zext_ln11055_3_fu_626_p1);
assign add_ln11055_fu_443_p2 = (sub_ln11055_fu_424_p2 + zext_ln11055_1_fu_439_p1);
assign add_ln11057_1_fu_615_p2 = (sub_ln11051_fu_579_p2 + zext_ln11057_3_fu_612_p1);
assign add_ln11057_2_fu_644_p2 = (sub_ln11055_1_fu_603_p2 + zext_ln11057_5_fu_641_p1);
assign add_ln11057_fu_557_p2 = (sub_ln11057_fu_548_p2 + zext_ln11057_1_fu_554_p1);
assign and_ln11050_fu_353_p2 = (xor_ln11050_fu_347_p2 & ap_phi_mux_icmp_ln1105226_i_phi_fu_211_p4);
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
    ap_condition_164 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_476_fu_373_p2 = (ap_phi_mux_icmp_ln1105127_i_phi_fu_200_p4 | and_ln11050_fu_353_p2);
assign empty_477_fu_399_p2 = (mul_i37_i_i_reg_695 + zext_ln11050_fu_395_p1);
assign empty_478_fu_434_p2 = (mul9_i66_cast_cast_i_cast_cast_i_cast_cast_reg_700 + zext_ln11051_fu_430_p1);
assign empty_fu_256_p1 = v8727[0:0];
assign icmp_ln11050_fu_310_p2 = ((ap_sig_allocacmp_indvar_flatten1221_i_load == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln11051_fu_504_p2 = ((select_ln11051_1_fu_490_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln11052_fu_498_p2 = ((add_ln11052_fu_478_p2 == 4'd14) ? 1'b1 : 1'b0);
assign mul9_i66_cast_cast_i_cast_cast_i_cast_cast_fu_248_p3 = ((tmp_fu_240_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign mul_i37_i_i_fu_232_p3 = {{tmp_i_fu_222_p4}, {5'd0}};
assign p_shl30_fu_404_p3 = {{empty_477_fu_399_p2}, {5'd0}};
assign p_shl32_fu_530_p3 = {{select_ln11050_1_reg_719}, {4'd0}};
assign p_shl_fu_585_p3 = {{add_ln11055_reg_730}, {4'd0}};
assign p_udiv2_i_cast_cast_i_cast_cast_fu_268_p3 = ((empty_fu_256_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln11050_1_fu_359_p3 = ((ap_phi_mux_icmp_ln1105127_i_phi_fu_200_p4[0:0] == 1'b1) ? add_ln11050_fu_333_p2 : v870522_i_fu_120);
assign select_ln11050_fu_339_p3 = ((ap_phi_mux_icmp_ln1105127_i_phi_fu_200_p4[0:0] == 1'b1) ? 4'd0 : v870624_i_fu_128);
assign select_ln11051_1_fu_490_p3 = ((ap_phi_mux_icmp_ln1105127_i_phi_fu_200_p4[0:0] == 1'b1) ? 7'd1 : add_ln11051_1_fu_484_p2);
assign select_ln11051_fu_387_p3 = ((and_ln11050_fu_353_p2[0:0] == 1'b1) ? add_ln11051_fu_367_p2 : select_ln11050_fu_339_p3);
assign sub_ln11051_fu_579_p2 = (tmp_654_fu_567_p3 - zext_ln11057_2_fu_575_p1);
assign sub_ln11055_1_fu_603_p2 = (p_shl_fu_585_p3 - zext_ln11055_2_fu_599_p1);
assign sub_ln11055_fu_424_p2 = (p_shl30_fu_404_p3 - zext_ln11055_fu_420_p1);
assign sub_ln11057_fu_548_p2 = (p_shl32_fu_530_p3 - zext_ln11057_fu_544_p1);
assign tmp_652_fu_537_p3 = {{select_ln11050_1_reg_719}, {1'd0}};
assign tmp_653_fu_412_p3 = {{empty_477_fu_399_p2}, {2'd0}};
assign tmp_654_fu_567_p3 = {{trunc_ln11057_fu_563_p1}, {3'd0}};
assign tmp_655_fu_592_p3 = {{add_ln11055_reg_730}, {1'd0}};
assign tmp_fu_240_p3 = v8727_cast2_fu_218_p1[32'd1];
assign tmp_i_fu_222_p4 = {{v8727[3:2]}};
assign trunc_ln11057_fu_563_p1 = add_ln11057_fu_557_p2[8:0];
assign v16190_0_address0 = zext_ln11055_4_fu_636_p1;
assign v16190_0_ce0 = v16190_0_ce0_local;
assign v16190_1_address0 = zext_ln11057_6_fu_650_p1;
assign v16190_1_ce0 = v16190_1_ce0_local;
assign v8707_mid2_i_fu_379_p3 = ((empty_476_fu_373_p2[0:0] == 1'b1) ? 4'd0 : v870725_i_fu_132);
assign v8727_cast2_fu_218_p1 = v8727;
assign v8733_1_address0 = zext_ln11057_4_fu_655_p1;
assign v8733_1_ce0 = v8733_1_ce0_local;
assign v8733_1_d0 = v16190_0_q0;
assign v8733_1_we0 = v8733_1_we0_local;
assign v8733_address0 = zext_ln11057_4_fu_655_p1;
assign v8733_ce0 = v8733_ce0_local;
assign v8733_d0 = v16190_1_q0;
assign v8733_we0 = v8733_we0_local;
assign xor_ln11050_fu_347_p2 = (ap_phi_mux_icmp_ln1105127_i_phi_fu_200_p4 ^ 1'd1);
assign zext_ln11050_cast_cast_i_cast_cast_fu_260_p3 = ((empty_fu_256_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln11050_fu_395_p1 = select_ln11050_1_fu_359_p3;
assign zext_ln11051_fu_430_p1 = select_ln11051_fu_387_p3;
assign zext_ln11052_1_fu_609_p1 = lshr_ln_i_reg_736;
assign zext_ln11052_fu_449_p1 = v8707_mid2_i_fu_379_p3;
assign zext_ln11055_1_fu_439_p1 = empty_478_fu_434_p2;
assign zext_ln11055_2_fu_599_p1 = tmp_655_fu_592_p3;
assign zext_ln11055_3_fu_626_p1 = add_ln11055_1_fu_621_p2;
assign zext_ln11055_4_fu_636_p1 = add_ln11055_2_fu_630_p2;
assign zext_ln11055_fu_420_p1 = tmp_653_fu_412_p3;
assign zext_ln11057_1_fu_554_p1 = select_ln11051_reg_725;
assign zext_ln11057_2_fu_575_p1 = add_ln11057_fu_557_p2;
assign zext_ln11057_3_fu_612_p1 = lshr_ln_i_reg_736;
assign zext_ln11057_4_fu_655_p1 = add_ln11057_1_reg_757;
assign zext_ln11057_5_fu_641_p1 = lshr_ln120_i_reg_742;
assign zext_ln11057_6_fu_650_p1 = add_ln11057_2_fu_644_p2;
assign zext_ln11057_fu_544_p1 = tmp_652_fu_537_p3;
always @ (posedge ap_clk) begin
    mul_i37_i_i_reg_695[4:0] <= 5'b00000;
    mul9_i66_cast_cast_i_cast_cast_i_cast_cast_reg_700[0] <= 1'b0;
    mul9_i66_cast_cast_i_cast_cast_i_cast_cast_reg_700[4] <= 1'b0;
    zext_ln11050_cast_cast_i_cast_cast_reg_705[0] <= 1'b0;
    zext_ln11050_cast_cast_i_cast_cast_reg_705[4] <= 1'b0;
    p_udiv2_i_cast_cast_i_cast_cast_reg_710[3] <= 1'b0;
    p_udiv2_i_cast_cast_i_cast_cast_reg_710_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
