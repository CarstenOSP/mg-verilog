module forward_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v5772_address0,v5772_ce0,v5772_we0,v5772_d0,v5772_1_address0,v5772_1_ce0,v5772_1_we0,v5772_1_d0,v5766,v13731_0_address0,v13731_0_ce0,v13731_0_q0,v13731_1_address0,v13731_1_ce0,v13731_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [8:0] v5772_address0;
output   v5772_ce0;
output   v5772_we0;
output  [7:0] v5772_d0;
output  [8:0] v5772_1_address0;
output   v5772_1_ce0;
output   v5772_1_we0;
output  [7:0] v5772_1_d0;
input  [5:0] v5766;
output  [14:0] v13731_0_address0;
output   v13731_0_ce0;
input  [7:0] v13731_0_q0;
output  [14:0] v13731_1_address0;
output   v13731_1_ce0;
input  [7:0] v13731_1_q0;
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
wire   [0:0] icmp_ln7151_fu_310_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [8:0] mul_i32_i_i_fu_232_p3;
reg   [8:0] mul_i32_i_i_reg_721;
wire   [4:0] mul9_i64_cast_i_cast_i_cast_fu_248_p3;
reg   [4:0] mul9_i64_cast_i_cast_i_cast_reg_726;
wire   [3:0] p_udiv2_i_cast_i_cast_fu_256_p3;
reg   [3:0] p_udiv2_i_cast_i_cast_reg_731;
wire   [2:0] zext_ln7151_cast_cast_i_cast_cast_fu_268_p3;
reg   [2:0] zext_ln7151_cast_cast_i_cast_cast_reg_736;
reg   [2:0] zext_ln7151_cast_cast_i_cast_cast_reg_736_pp0_iter1_reg;
reg   [0:0] icmp_ln7151_reg_741;
reg   [0:0] icmp_ln7151_reg_741_pp0_iter1_reg;
wire   [1:0] v5746_mid2_i_fu_379_p3;
reg   [1:0] v5746_mid2_i_reg_745;
wire   [8:0] add_ln7158_1_fu_474_p2;
reg   [8:0] add_ln7158_1_reg_751;
wire   [12:0] add_ln7156_1_fu_494_p2;
reg   [12:0] add_ln7156_1_reg_757;
wire   [11:0] trunc_ln7156_fu_500_p1;
reg   [11:0] trunc_ln7156_reg_762;
wire   [12:0] add_ln7158_2_fu_518_p2;
reg   [12:0] add_ln7158_2_reg_767;
wire   [11:0] trunc_ln7158_fu_524_p1;
reg   [11:0] trunc_ln7158_reg_772;
wire   [0:0] icmp_ln7153_fu_548_p2;
reg   [0:0] icmp_ln7153_reg_777;
wire   [0:0] icmp_ln7152_fu_554_p2;
reg   [0:0] icmp_ln7152_reg_782;
wire   [8:0] add_ln7158_3_fu_641_p2;
reg   [8:0] add_ln7158_3_reg_787;
reg   [0:0] ap_phi_mux_icmp_ln715227_i_phi_fu_200_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln715326_i_phi_fu_211_p4;
wire   [63:0] zext_ln7156_5_fu_665_p1;
wire   [63:0] zext_ln7158_6_fu_676_p1;
wire   [63:0] zext_ln7158_5_fu_681_p1;
reg   [8:0] indvar_flatten1221_i_fu_116;
wire   [8:0] add_ln7151_1_fu_304_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten1221_i_load;
reg   [5:0] v574422_i_fu_120;
wire   [5:0] select_ln7151_1_fu_359_p3;
reg   [4:0] indvar_flatten23_i_fu_124;
wire   [4:0] select_ln7152_1_fu_540_p3;
reg   [3:0] v574524_i_fu_128;
wire   [3:0] select_ln7152_fu_387_p3;
reg   [1:0] v574625_i_fu_132;
wire   [1:0] add_ln7153_fu_528_p2;
reg    v13731_0_ce0_local;
reg    v13731_1_ce0_local;
reg    v5772_1_we0_local;
reg    v5772_1_ce0_local;
reg    v5772_we0_local;
reg    v5772_ce0_local;
wire   [3:0] tmp_i_fu_222_p4;
wire   [8:0] v5766_cast2_fu_218_p1;
wire   [0:0] tmp_fu_240_p3;
wire   [0:0] empty_fu_264_p1;
wire   [0:0] xor_ln7151_fu_347_p2;
wire   [5:0] add_ln7151_fu_333_p2;
wire   [3:0] select_ln7151_fu_339_p3;
wire   [0:0] and_ln7151_fu_353_p2;
wire   [0:0] empty_208_fu_373_p2;
wire   [3:0] add_ln7152_fu_367_p2;
wire   [7:0] tmp_152_fu_399_p3;
wire   [8:0] zext_ln7158_fu_407_p1;
wire   [8:0] zext_ln7151_fu_395_p1;
wire   [8:0] empty_209_fu_417_p2;
wire   [11:0] tmp_153_fu_422_p3;
wire   [9:0] tmp_154_fu_434_p3;
wire   [12:0] zext_ln7156_fu_430_p1;
wire   [12:0] zext_ln7156_1_fu_442_p1;
wire   [2:0] lshr_ln_i_fu_456_p4;
wire   [8:0] add_ln7158_fu_411_p2;
wire   [8:0] zext_ln7158_1_fu_470_p1;
wire   [4:0] zext_ln7152_fu_452_p1;
wire   [3:0] zext_ln7152_1_fu_466_p1;
wire   [3:0] empty_211_fu_485_p2;
wire   [12:0] add_ln7156_fu_446_p2;
wire   [12:0] zext_ln7156_2_fu_490_p1;
wire   [4:0] empty_210_fu_480_p2;
wire   [3:0] tmp_158_i_fu_504_p4;
wire   [12:0] zext_ln7158_2_fu_514_p1;
wire   [4:0] add_ln7152_1_fu_534_p2;
wire   [8:0] shl_ln7158_fu_580_p2;
wire   [13:0] tmp_155_fu_590_p3;
wire   [14:0] tmp_156_fu_597_p3;
wire   [14:0] zext_ln7156_3_fu_604_p1;
wire   [13:0] tmp_157_fu_614_p3;
wire   [14:0] tmp_158_fu_621_p3;
wire   [14:0] zext_ln7158_3_fu_628_p1;
wire   [8:0] sub_ln7158_fu_585_p2;
wire   [8:0] zext_ln7158_4_fu_638_p1;
wire   [2:0] zext_ln7153_fu_647_p1;
wire   [2:0] add_ln7155_fu_650_p2;
wire   [14:0] sub_ln7156_fu_608_p2;
wire   [14:0] zext_ln7156_4_fu_655_p1;
wire   [14:0] add_ln7156_2_fu_659_p2;
wire   [14:0] sub_ln7153_fu_632_p2;
wire   [14:0] add_ln7158_4_fu_670_p2;
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
reg    ap_condition_166;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1221_i_fu_116 = 9'd0;
#0 v574422_i_fu_120 = 6'd0;
#0 indvar_flatten23_i_fu_124 = 5'd0;
#0 v574524_i_fu_128 = 4'd0;
#0 v574625_i_fu_132 = 2'd0;
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_166)) begin
        indvar_flatten1221_i_fu_116 <= add_ln7151_1_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten23_i_fu_124 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten23_i_fu_124 <= select_ln7152_1_fu_540_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v574422_i_fu_120 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v574422_i_fu_120 <= select_ln7151_1_fu_359_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v574524_i_fu_128 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v574524_i_fu_128 <= select_ln7152_fu_387_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v574625_i_fu_132 <= 2'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v574625_i_fu_132 <= add_ln7153_fu_528_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln7156_1_reg_757 <= add_ln7156_1_fu_494_p2;
        add_ln7158_1_reg_751 <= add_ln7158_1_fu_474_p2;
        add_ln7158_2_reg_767 <= add_ln7158_2_fu_518_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln7151_reg_741 <= icmp_ln7151_fu_310_p2;
        icmp_ln7151_reg_741_pp0_iter1_reg <= icmp_ln7151_reg_741;
        mul9_i64_cast_i_cast_i_cast_reg_726[1] <= mul9_i64_cast_i_cast_i_cast_fu_248_p3[1];
mul9_i64_cast_i_cast_i_cast_reg_726[3] <= mul9_i64_cast_i_cast_i_cast_fu_248_p3[3];
        mul_i32_i_i_reg_721[8 : 5] <= mul_i32_i_i_fu_232_p3[8 : 5];
        p_udiv2_i_cast_i_cast_reg_731[0] <= p_udiv2_i_cast_i_cast_fu_256_p3[0];
p_udiv2_i_cast_i_cast_reg_731[2] <= p_udiv2_i_cast_i_cast_fu_256_p3[2];
        trunc_ln7156_reg_762 <= trunc_ln7156_fu_500_p1;
        trunc_ln7158_reg_772 <= trunc_ln7158_fu_524_p1;
        v5746_mid2_i_reg_745 <= v5746_mid2_i_fu_379_p3;
        zext_ln7151_cast_cast_i_cast_cast_reg_736[1 : 0] <= zext_ln7151_cast_cast_i_cast_cast_fu_268_p3[1 : 0];
        zext_ln7151_cast_cast_i_cast_cast_reg_736_pp0_iter1_reg[1 : 0] <= zext_ln7151_cast_cast_i_cast_cast_reg_736[1 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln7158_3_reg_787 <= add_ln7158_3_fu_641_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln7152_reg_782 <= icmp_ln7152_fu_554_p2;
        icmp_ln7153_reg_777 <= icmp_ln7153_fu_548_p2;
    end
end
always @ (*) begin
    if (((icmp_ln7151_fu_310_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7151_reg_741_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln715227_i_phi_fu_200_p4 = icmp_ln7152_reg_782;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln715227_i_phi_fu_200_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln715227_i_phi_fu_200_p4 = icmp_ln7152_reg_782;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7151_reg_741_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln715326_i_phi_fu_211_p4 = icmp_ln7153_reg_777;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln715326_i_phi_fu_211_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln715326_i_phi_fu_211_p4 = icmp_ln7153_reg_777;
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
        ap_sig_allocacmp_indvar_flatten1221_i_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_i_load = indvar_flatten1221_i_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13731_0_ce0_local = 1'b1;
    end else begin
        v13731_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13731_1_ce0_local = 1'b1;
    end else begin
        v13731_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5772_1_ce0_local = 1'b1;
    end else begin
        v5772_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5772_1_we0_local = 1'b1;
    end else begin
        v5772_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5772_ce0_local = 1'b1;
    end else begin
        v5772_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v5772_we0_local = 1'b1;
    end else begin
        v5772_we0_local = 1'b0;
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
assign add_ln7151_1_fu_304_p2 = (ap_sig_allocacmp_indvar_flatten1221_i_load + 9'd1);
assign add_ln7151_fu_333_p2 = (v574422_i_fu_120 + 6'd1);
assign add_ln7152_1_fu_534_p2 = (indvar_flatten23_i_fu_124 + 5'd1);
assign add_ln7152_fu_367_p2 = (select_ln7151_fu_339_p3 + 4'd2);
assign add_ln7153_fu_528_p2 = (v5746_mid2_i_fu_379_p3 + 2'd1);
assign add_ln7155_fu_650_p2 = (zext_ln7151_cast_cast_i_cast_cast_reg_736_pp0_iter1_reg + zext_ln7153_fu_647_p1);
assign add_ln7156_1_fu_494_p2 = (add_ln7156_fu_446_p2 + zext_ln7156_2_fu_490_p1);
assign add_ln7156_2_fu_659_p2 = (sub_ln7156_fu_608_p2 + zext_ln7156_4_fu_655_p1);
assign add_ln7156_fu_446_p2 = (zext_ln7156_fu_430_p1 + zext_ln7156_1_fu_442_p1);
assign add_ln7158_1_fu_474_p2 = (add_ln7158_fu_411_p2 + zext_ln7158_1_fu_470_p1);
assign add_ln7158_2_fu_518_p2 = (add_ln7156_fu_446_p2 + zext_ln7158_2_fu_514_p1);
assign add_ln7158_3_fu_641_p2 = (sub_ln7158_fu_585_p2 + zext_ln7158_4_fu_638_p1);
assign add_ln7158_4_fu_670_p2 = (sub_ln7153_fu_632_p2 + zext_ln7156_4_fu_655_p1);
assign add_ln7158_fu_411_p2 = (zext_ln7158_fu_407_p1 + zext_ln7151_fu_395_p1);
assign and_ln7151_fu_353_p2 = (xor_ln7151_fu_347_p2 & ap_phi_mux_icmp_ln715326_i_phi_fu_211_p4);
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
    ap_condition_166 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_208_fu_373_p2 = (ap_phi_mux_icmp_ln715227_i_phi_fu_200_p4 | and_ln7151_fu_353_p2);
assign empty_209_fu_417_p2 = (mul_i32_i_i_reg_721 + zext_ln7151_fu_395_p1);
assign empty_210_fu_480_p2 = (mul9_i64_cast_i_cast_i_cast_reg_726 + zext_ln7152_fu_452_p1);
assign empty_211_fu_485_p2 = (zext_ln7152_1_fu_466_p1 + p_udiv2_i_cast_i_cast_reg_731);
assign empty_fu_264_p1 = v5766[0:0];
assign icmp_ln7151_fu_310_p2 = ((ap_sig_allocacmp_indvar_flatten1221_i_load == 9'd479) ? 1'b1 : 1'b0);
assign icmp_ln7152_fu_554_p2 = ((select_ln7152_1_fu_540_p3 == 5'd15) ? 1'b1 : 1'b0);
assign icmp_ln7153_fu_548_p2 = ((add_ln7153_fu_528_p2 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln_i_fu_456_p4 = {{select_ln7152_fu_387_p3[3:1]}};
assign mul9_i64_cast_i_cast_i_cast_fu_248_p3 = ((tmp_fu_240_p3[0:0] == 1'b1) ? 5'd10 : 5'd0);
assign mul_i32_i_i_fu_232_p3 = {{tmp_i_fu_222_p4}, {5'd0}};
assign p_udiv2_i_cast_i_cast_fu_256_p3 = ((tmp_fu_240_p3[0:0] == 1'b1) ? 4'd5 : 4'd0);
assign select_ln7151_1_fu_359_p3 = ((ap_phi_mux_icmp_ln715227_i_phi_fu_200_p4[0:0] == 1'b1) ? add_ln7151_fu_333_p2 : v574422_i_fu_120);
assign select_ln7151_fu_339_p3 = ((ap_phi_mux_icmp_ln715227_i_phi_fu_200_p4[0:0] == 1'b1) ? 4'd0 : v574524_i_fu_128);
assign select_ln7152_1_fu_540_p3 = ((ap_phi_mux_icmp_ln715227_i_phi_fu_200_p4[0:0] == 1'b1) ? 5'd1 : add_ln7152_1_fu_534_p2);
assign select_ln7152_fu_387_p3 = ((and_ln7151_fu_353_p2[0:0] == 1'b1) ? add_ln7152_fu_367_p2 : select_ln7151_fu_339_p3);
assign shl_ln7158_fu_580_p2 = add_ln7158_1_reg_751 << 9'd2;
assign sub_ln7153_fu_632_p2 = (tmp_158_fu_621_p3 - zext_ln7158_3_fu_628_p1);
assign sub_ln7156_fu_608_p2 = (tmp_156_fu_597_p3 - zext_ln7156_3_fu_604_p1);
assign sub_ln7158_fu_585_p2 = (shl_ln7158_fu_580_p2 - add_ln7158_1_reg_751);
assign tmp_152_fu_399_p3 = {{select_ln7151_1_fu_359_p3}, {2'd0}};
assign tmp_153_fu_422_p3 = {{empty_209_fu_417_p2}, {3'd0}};
assign tmp_154_fu_434_p3 = {{empty_209_fu_417_p2}, {1'd0}};
assign tmp_155_fu_590_p3 = {{add_ln7156_1_reg_757}, {1'd0}};
assign tmp_156_fu_597_p3 = {{trunc_ln7156_reg_762}, {3'd0}};
assign tmp_157_fu_614_p3 = {{add_ln7158_2_reg_767}, {1'd0}};
assign tmp_158_fu_621_p3 = {{trunc_ln7158_reg_772}, {3'd0}};
assign tmp_158_i_fu_504_p4 = {{empty_210_fu_480_p2[4:1]}};
assign tmp_fu_240_p3 = v5766_cast2_fu_218_p1[32'd1];
assign tmp_i_fu_222_p4 = {{v5766[5:2]}};
assign trunc_ln7156_fu_500_p1 = add_ln7156_1_fu_494_p2[11:0];
assign trunc_ln7158_fu_524_p1 = add_ln7158_2_fu_518_p2[11:0];
assign v13731_0_address0 = zext_ln7156_5_fu_665_p1;
assign v13731_0_ce0 = v13731_0_ce0_local;
assign v13731_1_address0 = zext_ln7158_6_fu_676_p1;
assign v13731_1_ce0 = v13731_1_ce0_local;
assign v5746_mid2_i_fu_379_p3 = ((empty_208_fu_373_p2[0:0] == 1'b1) ? 2'd0 : v574625_i_fu_132);
assign v5766_cast2_fu_218_p1 = v5766;
assign v5772_1_address0 = zext_ln7158_5_fu_681_p1;
assign v5772_1_ce0 = v5772_1_ce0_local;
assign v5772_1_d0 = v13731_0_q0;
assign v5772_1_we0 = v5772_1_we0_local;
assign v5772_address0 = zext_ln7158_5_fu_681_p1;
assign v5772_ce0 = v5772_ce0_local;
assign v5772_d0 = v13731_1_q0;
assign v5772_we0 = v5772_we0_local;
assign xor_ln7151_fu_347_p2 = (ap_phi_mux_icmp_ln715227_i_phi_fu_200_p4 ^ 1'd1);
assign zext_ln7151_cast_cast_i_cast_cast_fu_268_p3 = ((empty_fu_264_p1[0:0] == 1'b1) ? 3'd3 : 3'd0);
assign zext_ln7151_fu_395_p1 = select_ln7151_1_fu_359_p3;
assign zext_ln7152_1_fu_466_p1 = lshr_ln_i_fu_456_p4;
assign zext_ln7152_fu_452_p1 = select_ln7152_fu_387_p3;
assign zext_ln7153_fu_647_p1 = v5746_mid2_i_reg_745;
assign zext_ln7156_1_fu_442_p1 = tmp_154_fu_434_p3;
assign zext_ln7156_2_fu_490_p1 = empty_211_fu_485_p2;
assign zext_ln7156_3_fu_604_p1 = tmp_155_fu_590_p3;
assign zext_ln7156_4_fu_655_p1 = add_ln7155_fu_650_p2;
assign zext_ln7156_5_fu_665_p1 = add_ln7156_2_fu_659_p2;
assign zext_ln7156_fu_430_p1 = tmp_153_fu_422_p3;
assign zext_ln7158_1_fu_470_p1 = lshr_ln_i_fu_456_p4;
assign zext_ln7158_2_fu_514_p1 = tmp_158_i_fu_504_p4;
assign zext_ln7158_3_fu_628_p1 = tmp_157_fu_614_p3;
assign zext_ln7158_4_fu_638_p1 = v5746_mid2_i_reg_745;
assign zext_ln7158_5_fu_681_p1 = add_ln7158_3_reg_787;
assign zext_ln7158_6_fu_676_p1 = add_ln7158_4_fu_670_p2;
assign zext_ln7158_fu_407_p1 = tmp_152_fu_399_p3;
always @ (posedge ap_clk) begin
    mul_i32_i_i_reg_721[4:0] <= 5'b00000;
    mul9_i64_cast_i_cast_i_cast_reg_726[0] <= 1'b0;
    mul9_i64_cast_i_cast_i_cast_reg_726[2:2] <= 1'b0;
    mul9_i64_cast_i_cast_i_cast_reg_726[4] <= 1'b0;
    p_udiv2_i_cast_i_cast_reg_731[1] <= 1'b0;
    p_udiv2_i_cast_i_cast_reg_731[3] <= 1'b0;
    zext_ln7151_cast_cast_i_cast_cast_reg_736[2] <= 1'b0;
    zext_ln7151_cast_cast_i_cast_cast_reg_736_pp0_iter1_reg[2] <= 1'b0;
end
endmodule 