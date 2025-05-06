
module forward_dataflow_in_loop_VITIS_LOOP_19662_1_Loop_VITIS_LOOP_19565_1_proc17749 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v15049_address0,v15049_ce0,v15049_we0,v15049_d0,v15049_1_address0,v15049_1_ce0,v15049_1_we0,v15049_1_d0,v15049_2_address0,v15049_2_ce0,v15049_2_we0,v15049_2_d0,v15049_3_address0,v15049_3_ce0,v15049_3_we0,v15049_3_d0,v15043,v15403_0_0_address0,v15403_0_0_ce0,v15403_0_0_q0,v15403_0_1_address0,v15403_0_1_ce0,v15403_0_1_q0,v15403_1_0_address0,v15403_1_0_ce0,v15403_1_0_q0,v15403_1_1_address0,v15403_1_1_ce0,v15403_1_1_q0,ap_return);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [6:0] v15049_address0;
output   v15049_ce0;
output   v15049_we0;
output  [7:0] v15049_d0;
output  [6:0] v15049_1_address0;
output   v15049_1_ce0;
output   v15049_1_we0;
output  [7:0] v15049_1_d0;
output  [6:0] v15049_2_address0;
output   v15049_2_ce0;
output   v15049_2_we0;
output  [7:0] v15049_2_d0;
output  [6:0] v15049_3_address0;
output   v15049_3_ce0;
output   v15049_3_we0;
output  [7:0] v15049_3_d0;
input  [5:0] v15043;
output  [8:0] v15403_0_0_address0;
output   v15403_0_0_ce0;
input  [7:0] v15403_0_0_q0;
output  [8:0] v15403_0_1_address0;
output   v15403_0_1_ce0;
input  [7:0] v15403_0_1_q0;
output  [8:0] v15403_1_0_address0;
output   v15403_1_0_ce0;
input  [7:0] v15403_1_0_q0;
output  [8:0] v15403_1_1_address0;
output   v15403_1_1_ce0;
input  [7:0] v15403_1_1_q0;
output  [5:0] ap_return;
reg ap_idle;
reg[5:0] ap_return;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
reg    ap_done_reg;
reg    ap_block_state1_pp0_stage0_iter0;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln19565_fu_418_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
reg   [5:0] v15043_read_reg_557;
reg   [5:0] v15043_read_reg_557_pp0_iter1_reg;
wire   [0:0] tmp_fu_242_p3;
reg   [0:0] tmp_reg_561;
wire   [4:0] p_udiv22_i_i_cast_fu_286_p1;
reg   [4:0] p_udiv22_i_i_cast_reg_566;
reg   [3:0] lshr_ln_i_reg_571;
reg   [4:0] tmp_84_i_reg_577;
reg   [3:0] lshr_ln41_i_reg_582;
reg   [4:0] lshr_ln42_i_reg_588;
wire   [0:0] xor_ln19566_fu_412_p2;
reg   [0:0] xor_ln19566_reg_593;
reg   [0:0] icmp_ln19565_reg_598;
wire   [6:0] add_ln19575_fu_467_p2;
reg   [6:0] add_ln19575_reg_602;
reg   [0:0] ap_phi_mux_icmp_ln1956648_i_phi_fu_231_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln19569_1_fu_488_p1;
wire   [63:0] zext_ln19573_fu_499_p1;
wire   [63:0] zext_ln19571_1_fu_513_p1;
wire   [63:0] zext_ln19575_2_fu_524_p1;
wire   [63:0] zext_ln19575_1_fu_529_p1;
reg   [6:0] indvar_flatten45_i_fu_102;
wire   [6:0] add_ln19565_1_fu_398_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten45_i_load;
reg   [5:0] v1500746_i_fu_106;
wire   [5:0] select_ln19565_1_fu_328_p3;
reg   [5:0] ap_sig_allocacmp_v1500746_i_load;
reg   [4:0] v1500847_i_fu_110;
wire   [4:0] add_ln19566_fu_392_p2;
reg   [4:0] ap_sig_allocacmp_v1500847_i_load;
reg    v15403_0_0_ce0_local;
reg    v15403_0_1_ce0_local;
reg    v15403_1_0_ce0_local;
reg    v15403_1_1_ce0_local;
reg    v15049_3_we0_local;
reg    v15049_3_ce0_local;
reg    v15049_2_we0_local;
reg    v15049_2_ce0_local;
reg    v15049_1_we0_local;
reg    v15049_1_ce0_local;
reg    v15049_we0_local;
reg    v15049_ce0_local;
wire   [6:0] v15043_cast_fu_238_p1;
wire   [0:0] tmp_120_fu_258_p3;
wire   [4:0] mul_i215_i_i_fu_266_p3;
wire   [3:0] p_udiv22_i_i_fu_278_p3;
wire   [5:0] add_ln19565_fu_314_p2;
wire   [5:0] mul_i179_i_i_fu_250_p3;
wire   [5:0] empty_fu_346_p2;
wire   [4:0] select_ln19565_fu_320_p3;
wire   [5:0] zext_ln19566_fu_362_p1;
wire   [5:0] mul_i215_cast_i_i_fu_274_p1;
wire   [5:0] add_ln19568_fu_376_p2;
wire   [0:0] tmp_121_fu_404_p3;
wire   [6:0] tmp_82_i_fu_439_p3;
wire   [6:0] zext_ln19575_fu_464_p1;
wire   [4:0] zext_ln19566_1_fu_461_p1;
wire   [4:0] add_ln19569_fu_473_p2;
wire   [8:0] tmp_83_i_fu_446_p4;
wire   [8:0] zext_ln19569_fu_478_p1;
wire   [8:0] add_ln19569_1_fu_482_p2;
wire   [8:0] tmp_85_i_fu_454_p3;
wire   [8:0] add_ln19573_fu_493_p2;
wire   [8:0] zext_ln19571_fu_504_p1;
wire   [8:0] add_ln19571_fu_507_p2;
wire   [8:0] add_ln19575_1_fu_518_p2;
reg   [5:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_417;
reg    ap_condition_121;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten45_i_fu_102 = 7'd0;
#0 v1500746_i_fu_106 = 6'd0;
#0 v1500847_i_fu_110 = 5'd0;
#0 ap_return_preg = 6'd0;
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
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 6'd0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_return_preg <= v15043_read_reg_557_pp0_iter1_reg;
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
    if ((1'b1 == ap_condition_121)) begin
        indvar_flatten45_i_fu_102 <= add_ln19565_1_fu_398_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_121)) begin
    v1500746_i_fu_106 <= select_ln19565_1_fu_328_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_121)) begin
    v1500847_i_fu_110 <= add_ln19566_fu_392_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln19575_reg_602 <= add_ln19575_fu_467_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln19565_reg_598 <= icmp_ln19565_fu_418_p2;
        lshr_ln41_i_reg_582 <= {{select_ln19565_fu_320_p3[4:1]}};
        lshr_ln42_i_reg_588 <= {{add_ln19568_fu_376_p2[5:1]}};
        lshr_ln_i_reg_571 <= {{select_ln19565_1_fu_328_p3[4:1]}};
        p_udiv22_i_i_cast_reg_566[3] <= p_udiv22_i_i_cast_fu_286_p1[3];
        tmp_84_i_reg_577 <= {{empty_fu_346_p2[5:1]}};
        tmp_reg_561 <= v15043_cast_fu_238_p1[32'd4];
        v15043_read_reg_557_pp0_iter1_reg <= v15043_read_reg_557;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15043_read_reg_557 <= v15043;
        xor_ln19566_reg_593 <= xor_ln19566_fu_412_p2;
    end
end
always @ (*) begin
    if (((icmp_ln19565_fu_418_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_417)) begin
            ap_phi_mux_icmp_ln1956648_i_phi_fu_231_p4 = xor_ln19566_reg_593;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1956648_i_phi_fu_231_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1956648_i_phi_fu_231_p4 = xor_ln19566_reg_593;
        end
    end else begin
        ap_phi_mux_icmp_ln1956648_i_phi_fu_231_p4 = xor_ln19566_reg_593;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_return = v15043_read_reg_557_pp0_iter1_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten45_i_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten45_i_load = indvar_flatten45_i_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1500746_i_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1500746_i_load = v1500746_i_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1500847_i_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v1500847_i_load = v1500847_i_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15049_1_ce0_local = 1'b1;
    end else begin
        v15049_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15049_1_we0_local = 1'b1;
    end else begin
        v15049_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15049_2_ce0_local = 1'b1;
    end else begin
        v15049_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15049_2_we0_local = 1'b1;
    end else begin
        v15049_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15049_3_ce0_local = 1'b1;
    end else begin
        v15049_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15049_3_we0_local = 1'b1;
    end else begin
        v15049_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15049_ce0_local = 1'b1;
    end else begin
        v15049_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15049_we0_local = 1'b1;
    end else begin
        v15049_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15403_0_0_ce0_local = 1'b1;
    end else begin
        v15403_0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15403_0_1_ce0_local = 1'b1;
    end else begin
        v15403_0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15403_1_0_ce0_local = 1'b1;
    end else begin
        v15403_1_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15403_1_1_ce0_local = 1'b1;
    end else begin
        v15403_1_1_ce0_local = 1'b0;
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
assign add_ln19565_1_fu_398_p2 = (ap_sig_allocacmp_indvar_flatten45_i_load + 7'd1);
assign add_ln19565_fu_314_p2 = (ap_sig_allocacmp_v1500746_i_load + 6'd2);
assign add_ln19566_fu_392_p2 = (select_ln19565_fu_320_p3 + 5'd2);
assign add_ln19568_fu_376_p2 = (zext_ln19566_fu_362_p1 + mul_i215_cast_i_i_fu_274_p1);
assign add_ln19569_1_fu_482_p2 = (tmp_83_i_fu_446_p4 + zext_ln19569_fu_478_p1);
assign add_ln19569_fu_473_p2 = (zext_ln19566_1_fu_461_p1 + p_udiv22_i_i_cast_reg_566);
assign add_ln19571_fu_507_p2 = (tmp_83_i_fu_446_p4 + zext_ln19571_fu_504_p1);
assign add_ln19573_fu_493_p2 = (tmp_85_i_fu_454_p3 + zext_ln19569_fu_478_p1);
assign add_ln19575_1_fu_518_p2 = (tmp_85_i_fu_454_p3 + zext_ln19571_fu_504_p1);
assign add_ln19575_fu_467_p2 = (tmp_82_i_fu_439_p3 + zext_ln19575_fu_464_p1);
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
    ap_condition_121 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_417 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln19565_reg_598 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_346_p2 = (select_ln19565_1_fu_328_p3 + mul_i179_i_i_fu_250_p3);
assign icmp_ln19565_fu_418_p2 = ((ap_sig_allocacmp_indvar_flatten45_i_load == 7'd127) ? 1'b1 : 1'b0);
assign mul_i179_i_i_fu_250_p3 = {{tmp_fu_242_p3}, {5'd0}};
assign mul_i215_cast_i_i_fu_274_p1 = mul_i215_i_i_fu_266_p3;
assign mul_i215_i_i_fu_266_p3 = {{tmp_120_fu_258_p3}, {4'd0}};
assign p_udiv22_i_i_cast_fu_286_p1 = p_udiv22_i_i_fu_278_p3;
assign p_udiv22_i_i_fu_278_p3 = {{tmp_120_fu_258_p3}, {3'd0}};
assign select_ln19565_1_fu_328_p3 = ((ap_phi_mux_icmp_ln1956648_i_phi_fu_231_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1500746_i_load : add_ln19565_fu_314_p2);
assign select_ln19565_fu_320_p3 = ((ap_phi_mux_icmp_ln1956648_i_phi_fu_231_p4[0:0] == 1'b1) ? ap_sig_allocacmp_v1500847_i_load : 5'd0);
assign tmp_120_fu_258_p3 = v15043_cast_fu_238_p1[32'd5];
assign tmp_121_fu_404_p3 = add_ln19566_fu_392_p2[32'd4];
assign tmp_82_i_fu_439_p3 = {{lshr_ln_i_reg_571}, {3'd0}};
assign tmp_83_i_fu_446_p4 = {{{tmp_reg_561}, {lshr_ln_i_reg_571}}, {4'd0}};
assign tmp_85_i_fu_454_p3 = {{tmp_84_i_reg_577}, {4'd0}};
assign tmp_fu_242_p3 = v15043_cast_fu_238_p1[32'd4];
assign v15043_cast_fu_238_p1 = v15043;
assign v15049_1_address0 = zext_ln19575_1_fu_529_p1;
assign v15049_1_ce0 = v15049_1_ce0_local;
assign v15049_1_d0 = v15403_1_0_q0;
assign v15049_1_we0 = v15049_1_we0_local;
assign v15049_2_address0 = zext_ln19575_1_fu_529_p1;
assign v15049_2_ce0 = v15049_2_ce0_local;
assign v15049_2_d0 = v15403_0_1_q0;
assign v15049_2_we0 = v15049_2_we0_local;
assign v15049_3_address0 = zext_ln19575_1_fu_529_p1;
assign v15049_3_ce0 = v15049_3_ce0_local;
assign v15049_3_d0 = v15403_0_0_q0;
assign v15049_3_we0 = v15049_3_we0_local;
assign v15049_address0 = zext_ln19575_1_fu_529_p1;
assign v15049_ce0 = v15049_ce0_local;
assign v15049_d0 = v15403_1_1_q0;
assign v15049_we0 = v15049_we0_local;
assign v15403_0_0_address0 = zext_ln19569_1_fu_488_p1;
assign v15403_0_0_ce0 = v15403_0_0_ce0_local;
assign v15403_0_1_address0 = zext_ln19571_1_fu_513_p1;
assign v15403_0_1_ce0 = v15403_0_1_ce0_local;
assign v15403_1_0_address0 = zext_ln19573_fu_499_p1;
assign v15403_1_0_ce0 = v15403_1_0_ce0_local;
assign v15403_1_1_address0 = zext_ln19575_2_fu_524_p1;
assign v15403_1_1_ce0 = v15403_1_1_ce0_local;
assign xor_ln19566_fu_412_p2 = (tmp_121_fu_404_p3 ^ 1'd1);
assign zext_ln19566_1_fu_461_p1 = lshr_ln41_i_reg_582;
assign zext_ln19566_fu_362_p1 = select_ln19565_fu_320_p3;
assign zext_ln19569_1_fu_488_p1 = add_ln19569_1_fu_482_p2;
assign zext_ln19569_fu_478_p1 = add_ln19569_fu_473_p2;
assign zext_ln19571_1_fu_513_p1 = add_ln19571_fu_507_p2;
assign zext_ln19571_fu_504_p1 = lshr_ln42_i_reg_588;
assign zext_ln19573_fu_499_p1 = add_ln19573_fu_493_p2;
assign zext_ln19575_1_fu_529_p1 = add_ln19575_reg_602;
assign zext_ln19575_2_fu_524_p1 = add_ln19575_1_fu_518_p2;
assign zext_ln19575_fu_464_p1 = lshr_ln41_i_reg_582;
always @ (posedge ap_clk) begin
    p_udiv22_i_i_cast_reg_566[2:0] <= 3'b000;
    p_udiv22_i_i_cast_reg_566[4] <= 1'b0;
end
endmodule 
