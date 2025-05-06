
module forward_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v11555_0,v15462_address0,v15462_ce0,v15462_q0,v11561_address0,v11561_ce0,v11561_we0,v11561_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [8:0] v11555_0;
output  [15:0] v15462_address0;
output   v15462_ce0;
input  [7:0] v15462_q0;
output  [10:0] v11561_address0;
output   v11561_ce0;
output   v11561_we0;
output  [7:0] v11561_d0;
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
wire   [0:0] icmp_ln14460_fu_249_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] mul_i_fu_179_p3;
reg   [7:0] mul_i_reg_582;
wire   [3:0] select_ln14460_cast_cast_fu_199_p3;
reg   [3:0] select_ln14460_cast_cast_reg_587;
wire   [3:0] zext_ln14460_1_cast_cast_cast_cast_fu_207_p3;
reg   [3:0] zext_ln14460_1_cast_cast_cast_cast_reg_592;
reg   [3:0] zext_ln14460_1_cast_cast_cast_cast_reg_592_pp0_iter1_reg;
reg   [0:0] icmp_ln14460_reg_597;
reg   [0:0] icmp_ln14460_reg_597_pp0_iter1_reg;
wire   [5:0] v11527_fu_298_p3;
reg   [5:0] v11527_reg_601;
wire   [2:0] v11529_mid2_fu_318_p3;
reg   [2:0] v11529_mid2_reg_607;
wire   [2:0] v11528_fu_326_p3;
reg   [2:0] v11528_reg_613;
wire   [11:0] add_ln14465_1_fu_382_p2;
reg   [11:0] add_ln14465_1_reg_618;
wire   [0:0] icmp_ln14462_fu_408_p2;
reg   [0:0] icmp_ln14462_reg_624;
wire   [0:0] icmp_ln14461_fu_414_p2;
reg   [0:0] icmp_ln14461_reg_629;
wire   [10:0] add_ln14465_2_fu_514_p2;
reg   [10:0] add_ln14465_2_reg_634;
reg   [0:0] ap_phi_mux_icmp_ln1446115_phi_fu_151_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1446214_phi_fu_162_p4;
wire   [63:0] zext_ln14465_9_fu_538_p1;
wire   [63:0] zext_ln14465_7_fu_543_p1;
reg   [10:0] indvar_flatten129_fu_94;
wire   [10:0] add_ln14460_1_fu_243_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten129_load;
reg   [5:0] v1152710_fu_98;
reg   [5:0] indvar_flatten11_fu_102;
wire   [5:0] select_ln14461_1_fu_400_p3;
reg   [2:0] v1152812_fu_106;
reg   [2:0] v1152913_fu_110;
wire   [2:0] v11529_fu_388_p2;
reg    v15462_ce0_local;
reg    v11561_we0_local;
reg    v11561_ce0_local;
wire   [2:0] tmp_fu_169_p4;
wire   [0:0] tmp_380_fu_187_p3;
wire   [0:0] empty_fu_195_p1;
wire   [0:0] xor_ln14460_fu_286_p2;
wire   [5:0] add_ln14460_fu_272_p2;
wire   [2:0] select_ln14460_fu_278_p3;
wire   [0:0] and_ln14460_fu_292_p2;
wire   [0:0] empty_365_fu_312_p2;
wire   [2:0] add_ln14461_fu_306_p2;
wire   [7:0] zext_ln14460_fu_334_p1;
wire   [7:0] empty_366_fu_338_p2;
wire   [8:0] tmp_381_fu_351_p3;
wire   [11:0] p_shl40_fu_343_p3;
wire   [11:0] zext_ln14465_1_fu_359_p1;
wire   [3:0] zext_ln14461_fu_369_p1;
wire   [3:0] empty_367_fu_373_p2;
wire   [11:0] sub_ln14465_1_fu_363_p2;
wire   [11:0] zext_ln14465_4_fu_378_p1;
wire   [5:0] add_ln14461_1_fu_394_p2;
wire   [8:0] p_shl42_fu_443_p3;
wire   [8:0] zext_ln14465_fu_440_p1;
wire   [8:0] sub_ln14465_fu_450_p2;
wire   [8:0] zext_ln14465_2_fu_456_p1;
wire   [8:0] add_ln14465_fu_459_p2;
wire   [7:0] trunc_ln14465_fu_465_p1;
wire   [10:0] tmp_382_fu_469_p3;
wire   [10:0] zext_ln14465_3_fu_477_p1;
wire   [12:0] tmp_383_fu_494_p3;
wire   [15:0] p_shl_fu_487_p3;
wire   [15:0] zext_ln14465_5_fu_501_p1;
wire   [10:0] sub_ln14461_fu_481_p2;
wire   [10:0] zext_ln14465_6_fu_511_p1;
wire   [3:0] zext_ln14462_fu_520_p1;
wire   [3:0] add_ln14464_fu_523_p2;
wire   [15:0] sub_ln14465_2_fu_505_p2;
wire   [15:0] zext_ln14465_8_fu_528_p1;
wire   [15:0] add_ln14465_3_fu_532_p2;
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
reg    ap_condition_143;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten129_fu_94 = 11'd0;
#0 v1152710_fu_98 = 6'd0;
#0 indvar_flatten11_fu_102 = 6'd0;
#0 v1152812_fu_106 = 3'd0;
#0 v1152913_fu_110 = 3'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
            indvar_flatten11_fu_102 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten11_fu_102 <= select_ln14461_1_fu_400_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_143)) begin
        indvar_flatten129_fu_94 <= add_ln14460_1_fu_243_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1152710_fu_98 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1152710_fu_98 <= v11527_fu_298_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1152812_fu_106 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1152812_fu_106 <= v11528_fu_326_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1152913_fu_110 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1152913_fu_110 <= v11529_fu_388_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln14465_1_reg_618 <= add_ln14465_1_fu_382_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln14460_reg_597 <= icmp_ln14460_fu_249_p2;
        icmp_ln14460_reg_597_pp0_iter1_reg <= icmp_ln14460_reg_597;
        mul_i_reg_582[7 : 5] <= mul_i_fu_179_p3[7 : 5];
        select_ln14460_cast_cast_reg_587[2 : 0] <= select_ln14460_cast_cast_fu_199_p3[2 : 0];
        v11527_reg_601 <= v11527_fu_298_p3;
        v11528_reg_613 <= v11528_fu_326_p3;
        v11529_mid2_reg_607 <= v11529_mid2_fu_318_p3;
        zext_ln14460_1_cast_cast_cast_cast_reg_592[2 : 0] <= zext_ln14460_1_cast_cast_cast_cast_fu_207_p3[2 : 0];
        zext_ln14460_1_cast_cast_cast_cast_reg_592_pp0_iter1_reg[2 : 0] <= zext_ln14460_1_cast_cast_cast_cast_reg_592[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln14465_2_reg_634 <= add_ln14465_2_fu_514_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln14461_reg_629 <= icmp_ln14461_fu_414_p2;
        icmp_ln14462_reg_624 <= icmp_ln14462_fu_408_p2;
    end
end
always @ (*) begin
    if (((icmp_ln14460_fu_249_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln14460_reg_597_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1446115_phi_fu_151_p4 = icmp_ln14461_reg_629;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1446115_phi_fu_151_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1446115_phi_fu_151_p4 = icmp_ln14461_reg_629;
    end
end
always @ (*) begin
    if (((icmp_ln14460_reg_597_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1446214_phi_fu_162_p4 = icmp_ln14462_reg_624;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1446214_phi_fu_162_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1446214_phi_fu_162_p4 = icmp_ln14462_reg_624;
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
        ap_sig_allocacmp_indvar_flatten129_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten129_load = indvar_flatten129_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11561_ce0_local = 1'b1;
    end else begin
        v11561_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v11561_we0_local = 1'b1;
    end else begin
        v11561_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15462_ce0_local = 1'b1;
    end else begin
        v15462_ce0_local = 1'b0;
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
assign add_ln14460_1_fu_243_p2 = (ap_sig_allocacmp_indvar_flatten129_load + 11'd1);
assign add_ln14460_fu_272_p2 = (v1152710_fu_98 + 6'd1);
assign add_ln14461_1_fu_394_p2 = (indvar_flatten11_fu_102 + 6'd1);
assign add_ln14461_fu_306_p2 = (select_ln14460_fu_278_p3 + 3'd1);
assign add_ln14464_fu_523_p2 = (zext_ln14460_1_cast_cast_cast_cast_reg_592_pp0_iter1_reg + zext_ln14462_fu_520_p1);
assign add_ln14465_1_fu_382_p2 = (sub_ln14465_1_fu_363_p2 + zext_ln14465_4_fu_378_p1);
assign add_ln14465_2_fu_514_p2 = (sub_ln14461_fu_481_p2 + zext_ln14465_6_fu_511_p1);
assign add_ln14465_3_fu_532_p2 = (sub_ln14465_2_fu_505_p2 + zext_ln14465_8_fu_528_p1);
assign add_ln14465_fu_459_p2 = (sub_ln14465_fu_450_p2 + zext_ln14465_2_fu_456_p1);
assign and_ln14460_fu_292_p2 = (xor_ln14460_fu_286_p2 & ap_phi_mux_icmp_ln1446214_phi_fu_162_p4);
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
    ap_condition_143 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_365_fu_312_p2 = (ap_phi_mux_icmp_ln1446115_phi_fu_151_p4 | and_ln14460_fu_292_p2);
assign empty_366_fu_338_p2 = (mul_i_reg_582 + zext_ln14460_fu_334_p1);
assign empty_367_fu_373_p2 = (select_ln14460_cast_cast_reg_587 + zext_ln14461_fu_369_p1);
assign empty_fu_195_p1 = v11555_0[0:0];
assign icmp_ln14460_fu_249_p2 = ((ap_sig_allocacmp_indvar_flatten129_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln14461_fu_414_p2 = ((select_ln14461_1_fu_400_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln14462_fu_408_p2 = ((v11529_fu_388_p2 == 3'd7) ? 1'b1 : 1'b0);
assign mul_i_fu_179_p3 = {{tmp_fu_169_p4}, {5'd0}};
assign p_shl40_fu_343_p3 = {{empty_366_fu_338_p2}, {4'd0}};
assign p_shl42_fu_443_p3 = {{v11527_reg_601}, {3'd0}};
assign p_shl_fu_487_p3 = {{add_ln14465_1_reg_618}, {4'd0}};
assign select_ln14460_cast_cast_fu_199_p3 = ((tmp_380_fu_187_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln14460_fu_278_p3 = ((ap_phi_mux_icmp_ln1446115_phi_fu_151_p4[0:0] == 1'b1) ? 3'd0 : v1152812_fu_106);
assign select_ln14461_1_fu_400_p3 = ((ap_phi_mux_icmp_ln1446115_phi_fu_151_p4[0:0] == 1'b1) ? 6'd1 : add_ln14461_1_fu_394_p2);
assign sub_ln14461_fu_481_p2 = (tmp_382_fu_469_p3 - zext_ln14465_3_fu_477_p1);
assign sub_ln14465_1_fu_363_p2 = (p_shl40_fu_343_p3 - zext_ln14465_1_fu_359_p1);
assign sub_ln14465_2_fu_505_p2 = (p_shl_fu_487_p3 - zext_ln14465_5_fu_501_p1);
assign sub_ln14465_fu_450_p2 = (p_shl42_fu_443_p3 - zext_ln14465_fu_440_p1);
assign tmp_380_fu_187_p3 = v11555_0[32'd1];
assign tmp_381_fu_351_p3 = {{empty_366_fu_338_p2}, {1'd0}};
assign tmp_382_fu_469_p3 = {{trunc_ln14465_fu_465_p1}, {3'd0}};
assign tmp_383_fu_494_p3 = {{add_ln14465_1_reg_618}, {1'd0}};
assign tmp_fu_169_p4 = {{v11555_0[4:2]}};
assign trunc_ln14465_fu_465_p1 = add_ln14465_fu_459_p2[7:0];
assign v11527_fu_298_p3 = ((ap_phi_mux_icmp_ln1446115_phi_fu_151_p4[0:0] == 1'b1) ? add_ln14460_fu_272_p2 : v1152710_fu_98);
assign v11528_fu_326_p3 = ((and_ln14460_fu_292_p2[0:0] == 1'b1) ? add_ln14461_fu_306_p2 : select_ln14460_fu_278_p3);
assign v11529_fu_388_p2 = (v11529_mid2_fu_318_p3 + 3'd1);
assign v11529_mid2_fu_318_p3 = ((empty_365_fu_312_p2[0:0] == 1'b1) ? 3'd0 : v1152913_fu_110);
assign v11561_address0 = zext_ln14465_7_fu_543_p1;
assign v11561_ce0 = v11561_ce0_local;
assign v11561_d0 = v15462_q0;
assign v11561_we0 = v11561_we0_local;
assign v15462_address0 = zext_ln14465_9_fu_538_p1;
assign v15462_ce0 = v15462_ce0_local;
assign xor_ln14460_fu_286_p2 = (ap_phi_mux_icmp_ln1446115_phi_fu_151_p4 ^ 1'd1);
assign zext_ln14460_1_cast_cast_cast_cast_fu_207_p3 = ((empty_fu_195_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln14460_fu_334_p1 = v11527_fu_298_p3;
assign zext_ln14461_fu_369_p1 = v11528_fu_326_p3;
assign zext_ln14462_fu_520_p1 = v11529_mid2_reg_607;
assign zext_ln14465_1_fu_359_p1 = tmp_381_fu_351_p3;
assign zext_ln14465_2_fu_456_p1 = v11528_reg_613;
assign zext_ln14465_3_fu_477_p1 = add_ln14465_fu_459_p2;
assign zext_ln14465_4_fu_378_p1 = empty_367_fu_373_p2;
assign zext_ln14465_5_fu_501_p1 = tmp_383_fu_494_p3;
assign zext_ln14465_6_fu_511_p1 = v11529_mid2_reg_607;
assign zext_ln14465_7_fu_543_p1 = add_ln14465_2_reg_634;
assign zext_ln14465_8_fu_528_p1 = add_ln14464_fu_523_p2;
assign zext_ln14465_9_fu_538_p1 = add_ln14465_3_fu_532_p2;
assign zext_ln14465_fu_440_p1 = v11527_reg_601;
always @ (posedge ap_clk) begin
    mul_i_reg_582[4:0] <= 5'b00000;
    select_ln14460_cast_cast_reg_587[3] <= 1'b0;
    zext_ln14460_1_cast_cast_cast_cast_reg_592[3] <= 1'b0;
    zext_ln14460_1_cast_cast_cast_cast_reg_592_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
