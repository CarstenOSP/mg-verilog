
module forward_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v12359_address0,v12359_ce0,v12359_we0,v12359_d0,v12359_1_address0,v12359_1_ce0,v12359_1_we0,v12359_1_d0,v12353_0,v15456_0_address0,v15456_0_ce0,v15456_0_q0,v15456_1_address0,v15456_1_ce0,v15456_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [11:0] v12359_address0;
output   v12359_ce0;
output   v12359_we0;
output  [7:0] v12359_d0;
output  [11:0] v12359_1_address0;
output   v12359_1_ce0;
output   v12359_1_we0;
output  [7:0] v12359_1_d0;
input  [8:0] v12353_0;
output  [16:0] v15456_0_address0;
output   v15456_0_ce0;
input  [7:0] v15456_0_q0;
output  [16:0] v15456_1_address0;
output   v15456_1_ce0;
input  [7:0] v15456_1_q0;
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
wire   [0:0] icmp_ln15578_fu_306_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] mul_i_fu_228_p3;
reg   [7:0] mul_i_reg_691;
wire   [4:0] zext_ln15623_cast_cast_cast_cast_fu_244_p3;
reg   [4:0] zext_ln15623_cast_cast_cast_cast_reg_696;
wire   [4:0] zext_ln15623_6_cast_cast_cast_cast_fu_256_p3;
reg   [4:0] zext_ln15623_6_cast_cast_cast_cast_reg_701;
wire   [3:0] p_udiv2_cast_cast_cast_cast_fu_264_p3;
reg   [3:0] p_udiv2_cast_cast_cast_cast_reg_706;
reg   [3:0] p_udiv2_cast_cast_cast_cast_reg_706_pp0_iter1_reg;
reg   [0:0] icmp_ln15578_reg_711;
reg   [0:0] icmp_ln15578_reg_711_pp0_iter1_reg;
wire   [5:0] v12323_fu_355_p3;
reg   [5:0] v12323_reg_715;
wire   [3:0] v12324_fu_383_p3;
reg   [3:0] v12324_reg_721;
wire   [12:0] add_ln15583_1_fu_439_p2;
reg   [12:0] add_ln15583_1_reg_726;
reg   [2:0] lshr_ln_reg_732;
reg   [3:0] lshr_ln50_reg_738;
wire   [0:0] icmp_ln15580_fu_494_p2;
reg   [0:0] icmp_ln15580_reg_743;
wire   [0:0] icmp_ln15579_fu_500_p2;
reg   [0:0] icmp_ln15579_reg_748;
wire   [11:0] add_ln15585_1_fu_611_p2;
reg   [11:0] add_ln15585_1_reg_753;
reg   [0:0] ap_phi_mux_icmp_ln1557927_phi_fu_200_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1558026_phi_fu_211_p4;
wire   [63:0] zext_ln15583_4_fu_632_p1;
wire   [63:0] zext_ln15585_6_fu_646_p1;
wire   [63:0] zext_ln15585_4_fu_651_p1;
reg   [11:0] indvar_flatten1221_fu_116;
wire   [11:0] add_ln15578_1_fu_300_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten1221_load;
reg   [5:0] v1232322_fu_120;
reg   [6:0] indvar_flatten23_fu_124;
wire   [6:0] select_ln15579_1_fu_486_p3;
reg   [3:0] v1232424_fu_128;
reg   [3:0] v1232525_fu_132;
wire   [3:0] v12325_fu_474_p2;
reg    v15456_0_ce0_local;
reg    v15456_1_ce0_local;
reg    v12359_1_we0_local;
reg    v12359_1_ce0_local;
reg    v12359_we0_local;
reg    v12359_ce0_local;
wire   [2:0] tmp_fu_218_p4;
wire   [0:0] tmp_338_fu_236_p3;
wire   [0:0] empty_fu_252_p1;
wire   [0:0] xor_ln15578_fu_343_p2;
wire   [5:0] add_ln15578_fu_329_p2;
wire   [3:0] select_ln15578_fu_335_p3;
wire   [0:0] and_ln15578_fu_349_p2;
wire   [0:0] empty_332_fu_369_p2;
wire   [3:0] add_ln15579_fu_363_p2;
wire   [7:0] zext_ln15578_fu_391_p1;
wire   [7:0] empty_333_fu_395_p2;
wire   [9:0] tmp_340_fu_408_p3;
wire   [12:0] p_shl55_fu_400_p3;
wire   [12:0] zext_ln15583_fu_416_p1;
wire   [4:0] zext_ln15579_fu_426_p1;
wire   [4:0] empty_334_fu_430_p2;
wire   [12:0] sub_ln15583_fu_420_p2;
wire   [12:0] zext_ln15583_1_fu_435_p1;
wire   [3:0] v12325_mid2_fu_375_p3;
wire   [4:0] zext_ln15580_fu_445_p1;
wire   [4:0] add_ln15582_fu_459_p2;
wire   [6:0] add_ln15579_1_fu_480_p2;
wire   [6:0] tmp_339_fu_533_p3;
wire   [9:0] p_shl57_fu_526_p3;
wire   [9:0] zext_ln15585_fu_540_p1;
wire   [9:0] sub_ln15585_fu_544_p2;
wire   [9:0] zext_ln15585_1_fu_550_p1;
wire   [9:0] add_ln15585_fu_553_p2;
wire   [8:0] trunc_ln15585_fu_559_p1;
wire   [11:0] tmp_341_fu_563_p3;
wire   [11:0] zext_ln15585_2_fu_571_p1;
wire   [13:0] tmp_342_fu_588_p3;
wire   [16:0] p_shl_fu_581_p3;
wire   [16:0] zext_ln15583_2_fu_595_p1;
wire   [11:0] sub_ln15579_fu_575_p2;
wire   [11:0] zext_ln15585_3_fu_608_p1;
wire   [3:0] zext_ln15580_1_fu_605_p1;
wire   [3:0] add_ln15583_fu_617_p2;
wire   [16:0] sub_ln15583_1_fu_599_p2;
wire   [16:0] zext_ln15583_3_fu_622_p1;
wire   [16:0] add_ln15583_2_fu_626_p2;
wire   [16:0] zext_ln15585_5_fu_637_p1;
wire   [16:0] add_ln15585_2_fu_640_p2;
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
#0 indvar_flatten1221_fu_116 = 12'd0;
#0 v1232322_fu_120 = 6'd0;
#0 indvar_flatten23_fu_124 = 7'd0;
#0 v1232424_fu_128 = 4'd0;
#0 v1232525_fu_132 = 4'd0;
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
        indvar_flatten1221_fu_116 <= add_ln15578_1_fu_300_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten23_fu_124 <= 7'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten23_fu_124 <= select_ln15579_1_fu_486_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1232322_fu_120 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1232322_fu_120 <= v12323_fu_355_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1232424_fu_128 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1232424_fu_128 <= v12324_fu_383_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v1232525_fu_132 <= 4'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v1232525_fu_132 <= v12325_fu_474_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln15583_1_reg_726 <= add_ln15583_1_fu_439_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln15578_reg_711 <= icmp_ln15578_fu_306_p2;
        icmp_ln15578_reg_711_pp0_iter1_reg <= icmp_ln15578_reg_711;
        lshr_ln50_reg_738 <= {{add_ln15582_fu_459_p2[4:1]}};
        lshr_ln_reg_732 <= {{v12325_mid2_fu_375_p3[3:1]}};
        mul_i_reg_691[7 : 5] <= mul_i_fu_228_p3[7 : 5];
        p_udiv2_cast_cast_cast_cast_reg_706[2 : 0] <= p_udiv2_cast_cast_cast_cast_fu_264_p3[2 : 0];
        p_udiv2_cast_cast_cast_cast_reg_706_pp0_iter1_reg[2 : 0] <= p_udiv2_cast_cast_cast_cast_reg_706[2 : 0];
        v12323_reg_715 <= v12323_fu_355_p3;
        v12324_reg_721 <= v12324_fu_383_p3;
        zext_ln15623_6_cast_cast_cast_cast_reg_701[3 : 1] <= zext_ln15623_6_cast_cast_cast_cast_fu_256_p3[3 : 1];
        zext_ln15623_cast_cast_cast_cast_reg_696[3 : 1] <= zext_ln15623_cast_cast_cast_cast_fu_244_p3[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln15585_1_reg_753 <= add_ln15585_1_fu_611_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln15579_reg_748 <= icmp_ln15579_fu_500_p2;
        icmp_ln15580_reg_743 <= icmp_ln15580_fu_494_p2;
    end
end
always @ (*) begin
    if (((icmp_ln15578_fu_306_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15578_reg_711_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1557927_phi_fu_200_p4 = icmp_ln15579_reg_748;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1557927_phi_fu_200_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1557927_phi_fu_200_p4 = icmp_ln15579_reg_748;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln15578_reg_711_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln1558026_phi_fu_211_p4 = icmp_ln15580_reg_743;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln1558026_phi_fu_211_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln1558026_phi_fu_211_p4 = icmp_ln15580_reg_743;
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
        ap_sig_allocacmp_indvar_flatten1221_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_load = indvar_flatten1221_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12359_1_ce0_local = 1'b1;
    end else begin
        v12359_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12359_1_we0_local = 1'b1;
    end else begin
        v12359_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12359_ce0_local = 1'b1;
    end else begin
        v12359_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v12359_we0_local = 1'b1;
    end else begin
        v12359_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15456_0_ce0_local = 1'b1;
    end else begin
        v15456_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15456_1_ce0_local = 1'b1;
    end else begin
        v15456_1_ce0_local = 1'b0;
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
assign add_ln15578_1_fu_300_p2 = (ap_sig_allocacmp_indvar_flatten1221_load + 12'd1);
assign add_ln15578_fu_329_p2 = (v1232322_fu_120 + 6'd1);
assign add_ln15579_1_fu_480_p2 = (indvar_flatten23_fu_124 + 7'd1);
assign add_ln15579_fu_363_p2 = (select_ln15578_fu_335_p3 + 4'd1);
assign add_ln15582_fu_459_p2 = (zext_ln15623_6_cast_cast_cast_cast_reg_701 + zext_ln15580_fu_445_p1);
assign add_ln15583_1_fu_439_p2 = (sub_ln15583_fu_420_p2 + zext_ln15583_1_fu_435_p1);
assign add_ln15583_2_fu_626_p2 = (sub_ln15583_1_fu_599_p2 + zext_ln15583_3_fu_622_p1);
assign add_ln15583_fu_617_p2 = (zext_ln15580_1_fu_605_p1 + p_udiv2_cast_cast_cast_cast_reg_706_pp0_iter1_reg);
assign add_ln15585_1_fu_611_p2 = (sub_ln15579_fu_575_p2 + zext_ln15585_3_fu_608_p1);
assign add_ln15585_2_fu_640_p2 = (sub_ln15583_1_fu_599_p2 + zext_ln15585_5_fu_637_p1);
assign add_ln15585_fu_553_p2 = (sub_ln15585_fu_544_p2 + zext_ln15585_1_fu_550_p1);
assign and_ln15578_fu_349_p2 = (xor_ln15578_fu_343_p2 & ap_phi_mux_icmp_ln1558026_phi_fu_211_p4);
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
assign empty_332_fu_369_p2 = (ap_phi_mux_icmp_ln1557927_phi_fu_200_p4 | and_ln15578_fu_349_p2);
assign empty_333_fu_395_p2 = (mul_i_reg_691 + zext_ln15578_fu_391_p1);
assign empty_334_fu_430_p2 = (zext_ln15623_cast_cast_cast_cast_reg_696 + zext_ln15579_fu_426_p1);
assign empty_fu_252_p1 = v12353_0[0:0];
assign icmp_ln15578_fu_306_p2 = ((ap_sig_allocacmp_indvar_flatten1221_load == 12'd3135) ? 1'b1 : 1'b0);
assign icmp_ln15579_fu_500_p2 = ((select_ln15579_1_fu_486_p3 == 7'd98) ? 1'b1 : 1'b0);
assign icmp_ln15580_fu_494_p2 = ((v12325_fu_474_p2 == 4'd14) ? 1'b1 : 1'b0);
assign mul_i_fu_228_p3 = {{tmp_fu_218_p4}, {5'd0}};
assign p_shl55_fu_400_p3 = {{empty_333_fu_395_p2}, {5'd0}};
assign p_shl57_fu_526_p3 = {{v12323_reg_715}, {4'd0}};
assign p_shl_fu_581_p3 = {{add_ln15583_1_reg_726}, {4'd0}};
assign p_udiv2_cast_cast_cast_cast_fu_264_p3 = ((empty_fu_252_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln15578_fu_335_p3 = ((ap_phi_mux_icmp_ln1557927_phi_fu_200_p4[0:0] == 1'b1) ? 4'd0 : v1232424_fu_128);
assign select_ln15579_1_fu_486_p3 = ((ap_phi_mux_icmp_ln1557927_phi_fu_200_p4[0:0] == 1'b1) ? 7'd1 : add_ln15579_1_fu_480_p2);
assign sub_ln15579_fu_575_p2 = (tmp_341_fu_563_p3 - zext_ln15585_2_fu_571_p1);
assign sub_ln15583_1_fu_599_p2 = (p_shl_fu_581_p3 - zext_ln15583_2_fu_595_p1);
assign sub_ln15583_fu_420_p2 = (p_shl55_fu_400_p3 - zext_ln15583_fu_416_p1);
assign sub_ln15585_fu_544_p2 = (p_shl57_fu_526_p3 - zext_ln15585_fu_540_p1);
assign tmp_338_fu_236_p3 = v12353_0[32'd1];
assign tmp_339_fu_533_p3 = {{v12323_reg_715}, {1'd0}};
assign tmp_340_fu_408_p3 = {{empty_333_fu_395_p2}, {2'd0}};
assign tmp_341_fu_563_p3 = {{trunc_ln15585_fu_559_p1}, {3'd0}};
assign tmp_342_fu_588_p3 = {{add_ln15583_1_reg_726}, {1'd0}};
assign tmp_fu_218_p4 = {{v12353_0[4:2]}};
assign trunc_ln15585_fu_559_p1 = add_ln15585_fu_553_p2[8:0];
assign v12323_fu_355_p3 = ((ap_phi_mux_icmp_ln1557927_phi_fu_200_p4[0:0] == 1'b1) ? add_ln15578_fu_329_p2 : v1232322_fu_120);
assign v12324_fu_383_p3 = ((and_ln15578_fu_349_p2[0:0] == 1'b1) ? add_ln15579_fu_363_p2 : select_ln15578_fu_335_p3);
assign v12325_fu_474_p2 = (v12325_mid2_fu_375_p3 + 4'd2);
assign v12325_mid2_fu_375_p3 = ((empty_332_fu_369_p2[0:0] == 1'b1) ? 4'd0 : v1232525_fu_132);
assign v12359_1_address0 = zext_ln15585_4_fu_651_p1;
assign v12359_1_ce0 = v12359_1_ce0_local;
assign v12359_1_d0 = v15456_0_q0;
assign v12359_1_we0 = v12359_1_we0_local;
assign v12359_address0 = zext_ln15585_4_fu_651_p1;
assign v12359_ce0 = v12359_ce0_local;
assign v12359_d0 = v15456_1_q0;
assign v12359_we0 = v12359_we0_local;
assign v15456_0_address0 = zext_ln15583_4_fu_632_p1;
assign v15456_0_ce0 = v15456_0_ce0_local;
assign v15456_1_address0 = zext_ln15585_6_fu_646_p1;
assign v15456_1_ce0 = v15456_1_ce0_local;
assign xor_ln15578_fu_343_p2 = (ap_phi_mux_icmp_ln1557927_phi_fu_200_p4 ^ 1'd1);
assign zext_ln15578_fu_391_p1 = v12323_fu_355_p3;
assign zext_ln15579_fu_426_p1 = v12324_fu_383_p3;
assign zext_ln15580_1_fu_605_p1 = lshr_ln_reg_732;
assign zext_ln15580_fu_445_p1 = v12325_mid2_fu_375_p3;
assign zext_ln15583_1_fu_435_p1 = empty_334_fu_430_p2;
assign zext_ln15583_2_fu_595_p1 = tmp_342_fu_588_p3;
assign zext_ln15583_3_fu_622_p1 = add_ln15583_fu_617_p2;
assign zext_ln15583_4_fu_632_p1 = add_ln15583_2_fu_626_p2;
assign zext_ln15583_fu_416_p1 = tmp_340_fu_408_p3;
assign zext_ln15585_1_fu_550_p1 = v12324_reg_721;
assign zext_ln15585_2_fu_571_p1 = add_ln15585_fu_553_p2;
assign zext_ln15585_3_fu_608_p1 = lshr_ln_reg_732;
assign zext_ln15585_4_fu_651_p1 = add_ln15585_1_reg_753;
assign zext_ln15585_5_fu_637_p1 = lshr_ln50_reg_738;
assign zext_ln15585_6_fu_646_p1 = add_ln15585_2_fu_640_p2;
assign zext_ln15585_fu_540_p1 = tmp_339_fu_533_p3;
assign zext_ln15623_6_cast_cast_cast_cast_fu_256_p3 = ((empty_fu_252_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln15623_cast_cast_cast_cast_fu_244_p3 = ((tmp_338_fu_236_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
always @ (posedge ap_clk) begin
    mul_i_reg_691[4:0] <= 5'b00000;
    zext_ln15623_cast_cast_cast_cast_reg_696[0] <= 1'b0;
    zext_ln15623_cast_cast_cast_cast_reg_696[4] <= 1'b0;
    zext_ln15623_6_cast_cast_cast_cast_reg_701[0] <= 1'b0;
    zext_ln15623_6_cast_cast_cast_cast_reg_701[4] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_706[3] <= 1'b0;
    p_udiv2_cast_cast_cast_cast_reg_706_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
