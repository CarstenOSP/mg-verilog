module forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v9250_1_address0,v9250_1_ce0,v9250_1_we0,v9250_1_d0,v9250_0_address0,v9250_0_ce0,v9250_0_we0,v9250_0_d0,p_read,v3753_1_i_address0,v3753_1_i_ce0,v3753_1_i_q0,v3753_i_address0,v3753_i_ce0,v3753_i_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [14:0] v9250_1_address0;
output   v9250_1_ce0;
output   v9250_1_we0;
output  [7:0] v9250_1_d0;
output  [14:0] v9250_0_address0;
output   v9250_0_ce0;
output   v9250_0_we0;
output  [7:0] v9250_0_d0;
input  [7:0] p_read;
output  [9:0] v3753_1_i_address0;
output   v3753_1_i_ce0;
input  [7:0] v3753_1_i_q0;
output  [9:0] v3753_i_address0;
output   v3753_i_ce0;
input  [7:0] v3753_i_q0;
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
wire   [0:0] icmp_ln5272_fu_466_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [6:0] trunc_ln_fu_228_p3;
reg   [6:0] trunc_ln_reg_727;
wire   [3:0] select_ln5404_cast_cast_fu_248_p3;
reg   [3:0] select_ln5404_cast_cast_reg_732;
wire   [3:0] zext_ln5404_6_cast_cast_cast_cast_fu_256_p3;
reg   [3:0] zext_ln5404_6_cast_cast_cast_cast_reg_737;
reg   [3:0] zext_ln5404_6_cast_cast_cast_cast_reg_737_pp0_iter1_reg;
wire   [2:0] v3649_mid2_fu_350_p3;
reg   [2:0] v3649_mid2_reg_742;
reg   [2:0] v3649_mid2_reg_742_pp0_iter1_reg;
wire   [2:0] v3648_fu_358_p3;
reg   [2:0] v3648_reg_748;
wire   [4:0] lshr_ln_fu_370_p4;
reg   [4:0] lshr_ln_reg_753;
reg   [6:0] tmp_237_reg_758;
wire   [7:0] add_ln5276_fu_418_p2;
reg   [7:0] add_ln5276_reg_764;
wire   [6:0] trunc_ln5276_fu_424_p1;
reg   [6:0] trunc_ln5276_reg_769;
wire   [0:0] icmp_ln5274_fu_454_p2;
reg   [0:0] icmp_ln5274_reg_774;
wire   [0:0] icmp_ln5273_fu_460_p2;
reg   [0:0] icmp_ln5273_reg_779;
reg   [0:0] icmp_ln5272_reg_784;
wire   [10:0] add_ln5279_fu_583_p2;
reg   [10:0] add_ln5279_reg_788;
wire   [10:0] add_ln5277_1_fu_589_p2;
reg   [10:0] add_ln5277_1_reg_794;
reg   [0:0] ap_phi_mux_icmp_ln527339_phi_fu_193_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln527438_phi_fu_203_p4;
wire   [63:0] zext_ln5276_4_fu_604_p1;
wire   [63:0] zext_ln5279_4_fu_676_p1;
wire   [63:0] zext_ln5277_2_fu_687_p1;
reg   [9:0] indvar_flatten1233_fu_110;
wire   [9:0] add_ln5272_1_fu_448_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v364734_fu_114;
wire   [5:0] v3647_fu_330_p3;
reg   [5:0] ap_sig_allocacmp_v364734_load;
reg   [5:0] indvar_flatten35_fu_118;
wire   [5:0] select_ln5273_1_fu_440_p3;
reg   [5:0] ap_sig_allocacmp_indvar_flatten35_load;
reg   [2:0] v364836_fu_122;
reg   [2:0] ap_sig_allocacmp_v364836_load;
reg   [2:0] v364937_fu_126;
wire   [2:0] v3649_fu_428_p2;
reg   [2:0] ap_sig_allocacmp_v364937_load;
reg    v3753_1_i_ce0_local;
reg    v3753_i_ce0_local;
reg    v9250_0_we0_local;
reg    v9250_0_ce0_local;
reg    v9250_1_we0_local;
reg    v9250_1_ce0_local;
wire   [2:0] tmp_fu_210_p4;
wire   [0:0] tmp_235_fu_236_p3;
wire   [0:0] empty_fu_244_p1;
wire   [0:0] xor_ln5272_fu_318_p2;
wire   [5:0] add_ln5272_fu_304_p2;
wire   [2:0] select_ln5272_fu_310_p3;
wire   [0:0] and_ln5272_fu_324_p2;
wire   [0:0] empty_303_fu_344_p2;
wire   [2:0] add_ln5273_fu_338_p2;
wire   [7:0] p_shl73_fu_384_p3;
wire   [7:0] zext_ln5276_fu_380_p1;
wire   [7:0] mul_i145_i_fu_220_p3;
wire   [7:0] zext_ln5272_fu_366_p1;
wire   [7:0] empty_304_fu_398_p2;
wire   [7:0] sub_ln5276_fu_392_p2;
wire   [7:0] zext_ln5276_1_fu_414_p1;
wire   [5:0] add_ln5273_1_fu_434_p2;
wire   [6:0] zext_ln5272_1_fu_497_p1;
wire   [6:0] empty_305_fu_500_p2;
wire   [7:0] tmp_236_fu_513_p3;
wire   [10:0] p_shl71_fu_505_p3;
wire   [10:0] zext_ln5277_fu_521_p1;
wire   [7:0] tmp_238_fu_538_p3;
wire   [10:0] p_shl69_fu_531_p3;
wire   [10:0] zext_ln5279_fu_545_p1;
wire   [9:0] tmp_239_fu_555_p3;
wire   [9:0] zext_ln5276_2_fu_562_p1;
wire   [3:0] zext_ln5273_fu_571_p1;
wire   [3:0] empty_306_fu_574_p2;
wire   [10:0] sub_ln5279_fu_549_p2;
wire   [10:0] zext_ln5279_1_fu_579_p1;
wire   [10:0] sub_ln5277_fu_525_p2;
wire   [9:0] sub_ln5273_fu_565_p2;
wire   [9:0] zext_ln5276_3_fu_595_p1;
wire   [9:0] add_ln5276_1_fu_598_p2;
wire   [11:0] tmp_240_fu_617_p3;
wire   [14:0] p_shl66_fu_610_p3;
wire   [14:0] zext_ln5279_2_fu_624_p1;
wire   [11:0] tmp_241_fu_641_p3;
wire   [14:0] p_shl_fu_634_p3;
wire   [14:0] zext_ln5277_1_fu_648_p1;
wire   [3:0] zext_ln5274_fu_658_p1;
wire   [3:0] add_ln5277_fu_661_p2;
wire   [14:0] sub_ln5279_1_fu_628_p2;
wire   [14:0] zext_ln5279_3_fu_666_p1;
wire   [14:0] add_ln5279_1_fu_670_p2;
wire   [14:0] sub_ln5277_1_fu_652_p2;
wire   [14:0] add_ln5277_2_fu_681_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_499;
reg    ap_condition_118;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_110 = 10'd0;
#0 v364734_fu_114 = 6'd0;
#0 indvar_flatten35_fu_118 = 6'd0;
#0 v364836_fu_122 = 3'd0;
#0 v364937_fu_126 = 3'd0;
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
    if ((1'b1 == ap_condition_118)) begin
        indvar_flatten1233_fu_110 <= add_ln5272_1_fu_448_p2;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_118)) begin
    indvar_flatten35_fu_118 <= select_ln5273_1_fu_440_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_118)) begin
    v364734_fu_114 <= v3647_fu_330_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_118)) begin
    v364836_fu_122 <= v3648_fu_358_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_118)) begin
    v364937_fu_126 <= v3649_fu_428_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln5276_reg_764 <= add_ln5276_fu_418_p2;
        add_ln5277_1_reg_794 <= add_ln5277_1_fu_589_p2;
        add_ln5279_reg_788 <= add_ln5279_fu_583_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln5272_reg_784 <= icmp_ln5272_fu_466_p2;
        lshr_ln_reg_753 <= {{v3647_fu_330_p3[5:1]}};
        select_ln5404_cast_cast_reg_732[2 : 0] <= select_ln5404_cast_cast_fu_248_p3[2 : 0];
        tmp_237_reg_758 <= {{empty_304_fu_398_p2[7:1]}};
        trunc_ln5276_reg_769 <= trunc_ln5276_fu_424_p1;
        trunc_ln_reg_727[6 : 4] <= trunc_ln_fu_228_p3[6 : 4];
        v3648_reg_748 <= v3648_fu_358_p3;
        v3649_mid2_reg_742 <= v3649_mid2_fu_350_p3;
        v3649_mid2_reg_742_pp0_iter1_reg <= v3649_mid2_reg_742;
        zext_ln5404_6_cast_cast_cast_cast_reg_737[2 : 0] <= zext_ln5404_6_cast_cast_cast_cast_fu_256_p3[2 : 0];
        zext_ln5404_6_cast_cast_cast_cast_reg_737_pp0_iter1_reg[2 : 0] <= zext_ln5404_6_cast_cast_cast_cast_reg_737[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5273_reg_779 <= icmp_ln5273_fu_460_p2;
        icmp_ln5274_reg_774 <= icmp_ln5274_fu_454_p2;
    end
end
always @ (*) begin
    if (((icmp_ln5272_fu_466_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_499)) begin
            ap_phi_mux_icmp_ln527339_phi_fu_193_p4 = icmp_ln5273_reg_779;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln527339_phi_fu_193_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln527339_phi_fu_193_p4 = icmp_ln5273_reg_779;
        end
    end else begin
        ap_phi_mux_icmp_ln527339_phi_fu_193_p4 = icmp_ln5273_reg_779;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_499)) begin
            ap_phi_mux_icmp_ln527438_phi_fu_203_p4 = icmp_ln5274_reg_774;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln527438_phi_fu_203_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln527438_phi_fu_203_p4 = icmp_ln5274_reg_774;
        end
    end else begin
        ap_phi_mux_icmp_ln527438_phi_fu_203_p4 = icmp_ln5274_reg_774;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 6'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v364734_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v364734_load = v364734_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v364836_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v364836_load = v364836_fu_122;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v364937_load = 3'd0;
    end else begin
        ap_sig_allocacmp_v364937_load = v364937_fu_126;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3753_1_i_ce0_local = 1'b1;
    end else begin
        v3753_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3753_i_ce0_local = 1'b1;
    end else begin
        v3753_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9250_0_ce0_local = 1'b1;
    end else begin
        v9250_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9250_0_we0_local = 1'b1;
    end else begin
        v9250_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9250_1_ce0_local = 1'b1;
    end else begin
        v9250_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9250_1_we0_local = 1'b1;
    end else begin
        v9250_1_we0_local = 1'b0;
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
assign add_ln5272_1_fu_448_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 10'd1);
assign add_ln5272_fu_304_p2 = (ap_sig_allocacmp_v364734_load + 6'd2);
assign add_ln5273_1_fu_434_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 6'd1);
assign add_ln5273_fu_338_p2 = (select_ln5272_fu_310_p3 + 3'd1);
assign add_ln5276_1_fu_598_p2 = (sub_ln5273_fu_565_p2 + zext_ln5276_3_fu_595_p1);
assign add_ln5276_fu_418_p2 = (sub_ln5276_fu_392_p2 + zext_ln5276_1_fu_414_p1);
assign add_ln5277_1_fu_589_p2 = (sub_ln5277_fu_525_p2 + zext_ln5279_1_fu_579_p1);
assign add_ln5277_2_fu_681_p2 = (sub_ln5277_1_fu_652_p2 + zext_ln5279_3_fu_666_p1);
assign add_ln5277_fu_661_p2 = (zext_ln5404_6_cast_cast_cast_cast_reg_737_pp0_iter1_reg + zext_ln5274_fu_658_p1);
assign add_ln5279_1_fu_670_p2 = (sub_ln5279_1_fu_628_p2 + zext_ln5279_3_fu_666_p1);
assign add_ln5279_fu_583_p2 = (sub_ln5279_fu_549_p2 + zext_ln5279_1_fu_579_p1);
assign and_ln5272_fu_324_p2 = (xor_ln5272_fu_318_p2 & ap_phi_mux_icmp_ln527438_phi_fu_203_p4);
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
    ap_condition_118 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_499 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln5272_reg_784 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_303_fu_344_p2 = (ap_phi_mux_icmp_ln527339_phi_fu_193_p4 | and_ln5272_fu_324_p2);
assign empty_304_fu_398_p2 = (mul_i145_i_fu_220_p3 + zext_ln5272_fu_366_p1);
assign empty_305_fu_500_p2 = (trunc_ln_reg_727 + zext_ln5272_1_fu_497_p1);
assign empty_306_fu_574_p2 = (select_ln5404_cast_cast_reg_732 + zext_ln5273_fu_571_p1);
assign empty_fu_244_p1 = p_read[0:0];
assign icmp_ln5272_fu_466_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 10'd783) ? 1'b1 : 1'b0);
assign icmp_ln5273_fu_460_p2 = ((select_ln5273_1_fu_440_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln5274_fu_454_p2 = ((v3649_fu_428_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_fu_370_p4 = {{v3647_fu_330_p3[5:1]}};
assign mul_i145_i_fu_220_p3 = {{tmp_fu_210_p4}, {5'd0}};
assign p_shl66_fu_610_p3 = {{add_ln5279_reg_788}, {4'd0}};
assign p_shl69_fu_531_p3 = {{tmp_237_reg_758}, {4'd0}};
assign p_shl71_fu_505_p3 = {{empty_305_fu_500_p2}, {4'd0}};
assign p_shl73_fu_384_p3 = {{lshr_ln_fu_370_p4}, {3'd0}};
assign p_shl_fu_634_p3 = {{add_ln5277_1_reg_794}, {4'd0}};
assign select_ln5272_fu_310_p3 = ((ap_phi_mux_icmp_ln527339_phi_fu_193_p4[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v364836_load);
assign select_ln5273_1_fu_440_p3 = ((ap_phi_mux_icmp_ln527339_phi_fu_193_p4[0:0] == 1'b1) ? 6'd1 : add_ln5273_1_fu_434_p2);
assign select_ln5404_cast_cast_fu_248_p3 = ((tmp_235_fu_236_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign sub_ln5273_fu_565_p2 = (tmp_239_fu_555_p3 - zext_ln5276_2_fu_562_p1);
assign sub_ln5276_fu_392_p2 = (p_shl73_fu_384_p3 - zext_ln5276_fu_380_p1);
assign sub_ln5277_1_fu_652_p2 = (p_shl_fu_634_p3 - zext_ln5277_1_fu_648_p1);
assign sub_ln5277_fu_525_p2 = (p_shl71_fu_505_p3 - zext_ln5277_fu_521_p1);
assign sub_ln5279_1_fu_628_p2 = (p_shl66_fu_610_p3 - zext_ln5279_2_fu_624_p1);
assign sub_ln5279_fu_549_p2 = (p_shl69_fu_531_p3 - zext_ln5279_fu_545_p1);
assign tmp_235_fu_236_p3 = p_read[32'd1];
assign tmp_236_fu_513_p3 = {{empty_305_fu_500_p2}, {1'd0}};
assign tmp_238_fu_538_p3 = {{tmp_237_reg_758}, {1'd0}};
assign tmp_239_fu_555_p3 = {{trunc_ln5276_reg_769}, {3'd0}};
assign tmp_240_fu_617_p3 = {{add_ln5279_reg_788}, {1'd0}};
assign tmp_241_fu_641_p3 = {{add_ln5277_1_reg_794}, {1'd0}};
assign tmp_fu_210_p4 = {{p_read[4:2]}};
assign trunc_ln5276_fu_424_p1 = add_ln5276_fu_418_p2[6:0];
assign trunc_ln_fu_228_p3 = {{tmp_fu_210_p4}, {4'd0}};
assign v3647_fu_330_p3 = ((ap_phi_mux_icmp_ln527339_phi_fu_193_p4[0:0] == 1'b1) ? add_ln5272_fu_304_p2 : ap_sig_allocacmp_v364734_load);
assign v3648_fu_358_p3 = ((and_ln5272_fu_324_p2[0:0] == 1'b1) ? add_ln5273_fu_338_p2 : select_ln5272_fu_310_p3);
assign v3649_fu_428_p2 = (v3649_mid2_fu_350_p3 + 3'd1);
assign v3649_mid2_fu_350_p3 = ((empty_303_fu_344_p2[0:0] == 1'b1) ? 3'd0 : ap_sig_allocacmp_v364937_load);
assign v3753_1_i_address0 = zext_ln5276_4_fu_604_p1;
assign v3753_1_i_ce0 = v3753_1_i_ce0_local;
assign v3753_i_address0 = zext_ln5276_4_fu_604_p1;
assign v3753_i_ce0 = v3753_i_ce0_local;
assign v9250_0_address0 = zext_ln5277_2_fu_687_p1;
assign v9250_0_ce0 = v9250_0_ce0_local;
assign v9250_0_d0 = v3753_1_i_q0;
assign v9250_0_we0 = v9250_0_we0_local;
assign v9250_1_address0 = zext_ln5279_4_fu_676_p1;
assign v9250_1_ce0 = v9250_1_ce0_local;
assign v9250_1_d0 = v3753_i_q0;
assign v9250_1_we0 = v9250_1_we0_local;
assign xor_ln5272_fu_318_p2 = (ap_phi_mux_icmp_ln527339_phi_fu_193_p4 ^ 1'd1);
assign zext_ln5272_1_fu_497_p1 = lshr_ln_reg_753;
assign zext_ln5272_fu_366_p1 = v3647_fu_330_p3;
assign zext_ln5273_fu_571_p1 = v3648_reg_748;
assign zext_ln5274_fu_658_p1 = v3649_mid2_reg_742_pp0_iter1_reg;
assign zext_ln5276_1_fu_414_p1 = v3648_fu_358_p3;
assign zext_ln5276_2_fu_562_p1 = add_ln5276_reg_764;
assign zext_ln5276_3_fu_595_p1 = v3649_mid2_reg_742;
assign zext_ln5276_4_fu_604_p1 = add_ln5276_1_fu_598_p2;
assign zext_ln5276_fu_380_p1 = lshr_ln_fu_370_p4;
assign zext_ln5277_1_fu_648_p1 = tmp_241_fu_641_p3;
assign zext_ln5277_2_fu_687_p1 = add_ln5277_2_fu_681_p2;
assign zext_ln5277_fu_521_p1 = tmp_236_fu_513_p3;
assign zext_ln5279_1_fu_579_p1 = empty_306_fu_574_p2;
assign zext_ln5279_2_fu_624_p1 = tmp_240_fu_617_p3;
assign zext_ln5279_3_fu_666_p1 = add_ln5277_fu_661_p2;
assign zext_ln5279_4_fu_676_p1 = add_ln5279_1_fu_670_p2;
assign zext_ln5279_fu_545_p1 = tmp_238_fu_538_p3;
assign zext_ln5404_6_cast_cast_cast_cast_fu_256_p3 = ((empty_fu_244_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
always @ (posedge ap_clk) begin
    trunc_ln_reg_727[3:0] <= 4'b0000;
    select_ln5404_cast_cast_reg_732[3] <= 1'b0;
    zext_ln5404_6_cast_cast_cast_cast_reg_737[3] <= 1'b0;
    zext_ln5404_6_cast_cast_cast_cast_reg_737_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 