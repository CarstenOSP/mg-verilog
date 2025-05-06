
module forward_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,p_read,v12825_address0,v12825_ce0,v12825_q0,v15449_address0,v15449_ce0,v15449_we0,v15449_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [3:0] p_read;
output  [12:0] v12825_address0;
output   v12825_ce0;
input  [7:0] v12825_q0;
output  [16:0] v15449_address0;
output   v15449_ce0;
output   v15449_we0;
output  [7:0] v15449_d0;
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
wire   [0:0] icmp_ln16293_fu_411_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_loop_exit_ready_delayed;
wire   [4:0] zext_ln16352_cast_cast_cast_cast_fu_201_p3;
reg   [4:0] zext_ln16352_cast_cast_cast_cast_reg_604;
wire   [4:0] zext_ln16352_4_cast_cast_cast_cast_fu_213_p3;
reg   [4:0] zext_ln16352_4_cast_cast_cast_cast_reg_609;
reg   [4:0] zext_ln16352_4_cast_cast_cast_cast_reg_609_pp0_iter1_reg;
wire   [3:0] v12761_mid2_fu_307_p3;
reg   [3:0] v12761_mid2_reg_614;
reg   [3:0] v12761_mid2_reg_614_pp0_iter1_reg;
wire   [3:0] v12760_fu_315_p3;
reg   [3:0] v12760_reg_620;
wire   [6:0] empty_304_fu_353_p2;
reg   [6:0] empty_304_reg_625;
wire   [9:0] add_ln16297_fu_363_p2;
reg   [9:0] add_ln16297_reg_631;
wire   [8:0] trunc_ln16297_fu_369_p1;
reg   [8:0] trunc_ln16297_reg_636;
wire   [0:0] icmp_ln16295_fu_399_p2;
reg   [0:0] icmp_ln16295_reg_641;
wire   [0:0] icmp_ln16294_fu_405_p2;
reg   [0:0] icmp_ln16294_reg_646;
reg   [0:0] icmp_ln16293_reg_651;
wire   [11:0] add_ln16298_1_fu_502_p2;
reg   [11:0] add_ln16298_1_reg_655;
reg   [0:0] ap_phi_mux_icmp_ln1629415_phi_fu_158_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1629514_phi_fu_168_p4;
wire   [63:0] zext_ln16297_4_fu_517_p1;
wire   [63:0] zext_ln16298_4_fu_564_p1;
reg   [12:0] indvar_flatten129_fu_102;
wire   [12:0] add_ln16293_1_fu_393_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten129_load;
reg   [5:0] v1275910_fu_106;
wire   [5:0] v12759_fu_287_p3;
reg   [5:0] ap_sig_allocacmp_v1275910_load;
reg   [7:0] indvar_flatten11_fu_110;
wire   [7:0] select_ln16294_1_fu_385_p3;
reg   [7:0] ap_sig_allocacmp_indvar_flatten11_load;
reg   [3:0] v1276012_fu_114;
reg   [3:0] ap_sig_allocacmp_v1276012_load;
reg   [3:0] v1276113_fu_118;
wire   [3:0] v12761_fu_373_p2;
reg   [3:0] ap_sig_allocacmp_v1276113_load;
reg    v12825_ce0_local;
reg    v15449_we0_local;
reg    v15449_ce0_local;
wire   [1:0] tmp_fu_175_p4;
wire   [0:0] tmp_300_fu_193_p3;
wire   [0:0] empty_fu_209_p1;
wire   [0:0] xor_ln16293_fu_275_p2;
wire   [5:0] add_ln16293_fu_261_p2;
wire   [3:0] select_ln16293_fu_267_p3;
wire   [0:0] and_ln16293_fu_281_p2;
wire   [0:0] empty_303_fu_301_p2;
wire   [3:0] add_ln16294_fu_295_p2;
wire   [6:0] tmp_301_fu_335_p3;
wire   [9:0] p_shl43_fu_327_p3;
wire   [9:0] zext_ln16297_fu_343_p1;
wire   [6:0] mul_i_fu_185_p3;
wire   [6:0] zext_ln16293_fu_323_p1;
wire   [9:0] sub_ln16297_fu_347_p2;
wire   [9:0] zext_ln16297_1_fu_359_p1;
wire   [7:0] add_ln16294_1_fu_379_p2;
wire   [8:0] tmp_302_fu_449_p3;
wire   [11:0] p_shl41_fu_442_p3;
wire   [11:0] zext_ln16298_fu_456_p1;
wire   [10:0] tmp_303_fu_466_p3;
wire   [12:0] tmp_304_fu_473_p3;
wire   [12:0] zext_ln16297_2_fu_480_p1;
wire   [4:0] zext_ln16294_fu_490_p1;
wire   [4:0] empty_305_fu_493_p2;
wire   [11:0] sub_ln16298_fu_460_p2;
wire   [11:0] zext_ln16298_1_fu_498_p1;
wire   [12:0] sub_ln16294_fu_484_p2;
wire   [12:0] zext_ln16297_3_fu_508_p1;
wire   [12:0] add_ln16297_1_fu_511_p2;
wire   [13:0] tmp_305_fu_529_p3;
wire   [16:0] p_shl_fu_522_p3;
wire   [16:0] zext_ln16298_2_fu_536_p1;
wire   [4:0] zext_ln16295_fu_546_p1;
wire   [4:0] add_ln16298_fu_549_p2;
wire   [16:0] sub_ln16298_1_fu_540_p2;
wire   [16:0] zext_ln16298_3_fu_554_p1;
wire   [16:0] add_ln16298_2_fu_558_p2;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_418;
reg    ap_condition_101;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten129_fu_102 = 13'd0;
#0 v1275910_fu_106 = 6'd0;
#0 indvar_flatten11_fu_110 = 8'd0;
#0 v1276012_fu_114 = 4'd0;
#0 v1276113_fu_118 = 4'd0;
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_101)) begin
        indvar_flatten11_fu_110 <= select_ln16294_1_fu_385_p3;
    end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_101)) begin
    indvar_flatten129_fu_102 <= add_ln16293_1_fu_393_p2;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_101)) begin
    v1275910_fu_106 <= v12759_fu_287_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_101)) begin
    v1276012_fu_114 <= v12760_fu_315_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_101)) begin
    v1276113_fu_118 <= v12761_fu_373_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln16297_reg_631 <= add_ln16297_fu_363_p2;
        add_ln16298_1_reg_655 <= add_ln16298_1_fu_502_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        empty_304_reg_625 <= empty_304_fu_353_p2;
        icmp_ln16293_reg_651 <= icmp_ln16293_fu_411_p2;
        trunc_ln16297_reg_636 <= trunc_ln16297_fu_369_p1;
        v12760_reg_620 <= v12760_fu_315_p3;
        v12761_mid2_reg_614 <= v12761_mid2_fu_307_p3;
        v12761_mid2_reg_614_pp0_iter1_reg <= v12761_mid2_reg_614;
        zext_ln16352_4_cast_cast_cast_cast_reg_609[3 : 1] <= zext_ln16352_4_cast_cast_cast_cast_fu_213_p3[3 : 1];
        zext_ln16352_4_cast_cast_cast_cast_reg_609_pp0_iter1_reg[3 : 1] <= zext_ln16352_4_cast_cast_cast_cast_reg_609[3 : 1];
        zext_ln16352_cast_cast_cast_cast_reg_604[3 : 1] <= zext_ln16352_cast_cast_cast_cast_fu_201_p3[3 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln16294_reg_646 <= icmp_ln16294_fu_405_p2;
        icmp_ln16295_reg_641 <= icmp_ln16295_fu_399_p2;
    end
end
always @ (*) begin
    if (((icmp_ln16293_fu_411_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_418)) begin
            ap_phi_mux_icmp_ln1629415_phi_fu_158_p4 = icmp_ln16294_reg_646;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1629415_phi_fu_158_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1629415_phi_fu_158_p4 = icmp_ln16294_reg_646;
        end
    end else begin
        ap_phi_mux_icmp_ln1629415_phi_fu_158_p4 = icmp_ln16294_reg_646;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_418)) begin
            ap_phi_mux_icmp_ln1629514_phi_fu_168_p4 = icmp_ln16295_reg_641;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1629514_phi_fu_168_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln1629514_phi_fu_168_p4 = icmp_ln16295_reg_641;
        end
    end else begin
        ap_phi_mux_icmp_ln1629514_phi_fu_168_p4 = icmp_ln16295_reg_641;
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
        ap_sig_allocacmp_indvar_flatten11_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten11_load = indvar_flatten11_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten129_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten129_load = indvar_flatten129_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1275910_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v1275910_load = v1275910_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1276012_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v1276012_load = v1276012_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v1276113_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v1276113_load = v1276113_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12825_ce0_local = 1'b1;
    end else begin
        v12825_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15449_ce0_local = 1'b1;
    end else begin
        v15449_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15449_we0_local = 1'b1;
    end else begin
        v15449_we0_local = 1'b0;
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
assign add_ln16293_1_fu_393_p2 = (ap_sig_allocacmp_indvar_flatten129_load + 13'd1);
assign add_ln16293_fu_261_p2 = (ap_sig_allocacmp_v1275910_load + 6'd1);
assign add_ln16294_1_fu_379_p2 = (ap_sig_allocacmp_indvar_flatten11_load + 8'd1);
assign add_ln16294_fu_295_p2 = (select_ln16293_fu_267_p3 + 4'd1);
assign add_ln16297_1_fu_511_p2 = (sub_ln16294_fu_484_p2 + zext_ln16297_3_fu_508_p1);
assign add_ln16297_fu_363_p2 = (sub_ln16297_fu_347_p2 + zext_ln16297_1_fu_359_p1);
assign add_ln16298_1_fu_502_p2 = (sub_ln16298_fu_460_p2 + zext_ln16298_1_fu_498_p1);
assign add_ln16298_2_fu_558_p2 = (sub_ln16298_1_fu_540_p2 + zext_ln16298_3_fu_554_p1);
assign add_ln16298_fu_549_p2 = (zext_ln16352_4_cast_cast_cast_cast_reg_609_pp0_iter1_reg + zext_ln16295_fu_546_p1);
assign and_ln16293_fu_281_p2 = (xor_ln16293_fu_275_p2 & ap_phi_mux_icmp_ln1629514_phi_fu_168_p4);
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
    ap_condition_101 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_418 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln16293_reg_651 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_303_fu_301_p2 = (ap_phi_mux_icmp_ln1629415_phi_fu_158_p4 | and_ln16293_fu_281_p2);
assign empty_304_fu_353_p2 = (mul_i_fu_185_p3 + zext_ln16293_fu_323_p1);
assign empty_305_fu_493_p2 = (zext_ln16352_cast_cast_cast_cast_reg_604 + zext_ln16294_fu_490_p1);
assign empty_fu_209_p1 = p_read[0:0];
assign icmp_ln16293_fu_411_p2 = ((ap_sig_allocacmp_indvar_flatten129_load == 13'd6271) ? 1'b1 : 1'b0);
assign icmp_ln16294_fu_405_p2 = ((select_ln16294_1_fu_385_p3 == 8'd196) ? 1'b1 : 1'b0);
assign icmp_ln16295_fu_399_p2 = ((v12761_fu_373_p2 == 4'd14) ? 1'b1 : 1'b0);
assign mul_i_fu_185_p3 = {{tmp_fu_175_p4}, {5'd0}};
assign p_shl41_fu_442_p3 = {{empty_304_reg_625}, {5'd0}};
assign p_shl43_fu_327_p3 = {{v12759_fu_287_p3}, {4'd0}};
assign p_shl_fu_522_p3 = {{add_ln16298_1_reg_655}, {5'd0}};
assign select_ln16293_fu_267_p3 = ((ap_phi_mux_icmp_ln1629415_phi_fu_158_p4[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v1276012_load);
assign select_ln16294_1_fu_385_p3 = ((ap_phi_mux_icmp_ln1629415_phi_fu_158_p4[0:0] == 1'b1) ? 8'd1 : add_ln16294_1_fu_379_p2);
assign sub_ln16294_fu_484_p2 = (tmp_304_fu_473_p3 - zext_ln16297_2_fu_480_p1);
assign sub_ln16297_fu_347_p2 = (p_shl43_fu_327_p3 - zext_ln16297_fu_343_p1);
assign sub_ln16298_1_fu_540_p2 = (p_shl_fu_522_p3 - zext_ln16298_2_fu_536_p1);
assign sub_ln16298_fu_460_p2 = (p_shl41_fu_442_p3 - zext_ln16298_fu_456_p1);
assign tmp_300_fu_193_p3 = p_read[32'd1];
assign tmp_301_fu_335_p3 = {{v12759_fu_287_p3}, {1'd0}};
assign tmp_302_fu_449_p3 = {{empty_304_reg_625}, {2'd0}};
assign tmp_303_fu_466_p3 = {{add_ln16297_reg_631}, {1'd0}};
assign tmp_304_fu_473_p3 = {{trunc_ln16297_reg_636}, {4'd0}};
assign tmp_305_fu_529_p3 = {{add_ln16298_1_reg_655}, {2'd0}};
assign tmp_fu_175_p4 = {{p_read[3:2]}};
assign trunc_ln16297_fu_369_p1 = add_ln16297_fu_363_p2[8:0];
assign v12759_fu_287_p3 = ((ap_phi_mux_icmp_ln1629415_phi_fu_158_p4[0:0] == 1'b1) ? add_ln16293_fu_261_p2 : ap_sig_allocacmp_v1275910_load);
assign v12760_fu_315_p3 = ((and_ln16293_fu_281_p2[0:0] == 1'b1) ? add_ln16294_fu_295_p2 : select_ln16293_fu_267_p3);
assign v12761_fu_373_p2 = (v12761_mid2_fu_307_p3 + 4'd1);
assign v12761_mid2_fu_307_p3 = ((empty_303_fu_301_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_v1276113_load);
assign v12825_address0 = zext_ln16297_4_fu_517_p1;
assign v12825_ce0 = v12825_ce0_local;
assign v15449_address0 = zext_ln16298_4_fu_564_p1;
assign v15449_ce0 = v15449_ce0_local;
assign v15449_d0 = v12825_q0;
assign v15449_we0 = v15449_we0_local;
assign xor_ln16293_fu_275_p2 = (ap_phi_mux_icmp_ln1629415_phi_fu_158_p4 ^ 1'd1);
assign zext_ln16293_fu_323_p1 = v12759_fu_287_p3;
assign zext_ln16294_fu_490_p1 = v12760_reg_620;
assign zext_ln16295_fu_546_p1 = v12761_mid2_reg_614_pp0_iter1_reg;
assign zext_ln16297_1_fu_359_p1 = v12760_fu_315_p3;
assign zext_ln16297_2_fu_480_p1 = tmp_303_fu_466_p3;
assign zext_ln16297_3_fu_508_p1 = v12761_mid2_reg_614;
assign zext_ln16297_4_fu_517_p1 = add_ln16297_1_fu_511_p2;
assign zext_ln16297_fu_343_p1 = tmp_301_fu_335_p3;
assign zext_ln16298_1_fu_498_p1 = empty_305_fu_493_p2;
assign zext_ln16298_2_fu_536_p1 = tmp_305_fu_529_p3;
assign zext_ln16298_3_fu_554_p1 = add_ln16298_fu_549_p2;
assign zext_ln16298_4_fu_564_p1 = add_ln16298_2_fu_558_p2;
assign zext_ln16298_fu_456_p1 = tmp_302_fu_449_p3;
assign zext_ln16352_4_cast_cast_cast_cast_fu_213_p3 = ((empty_fu_209_p1[0:0] == 1'b1) ? 5'd14 : 5'd0);
assign zext_ln16352_cast_cast_cast_cast_fu_201_p3 = ((tmp_300_fu_193_p3[0:0] == 1'b1) ? 5'd14 : 5'd0);
always @ (posedge ap_clk) begin
    zext_ln16352_cast_cast_cast_cast_reg_604[0] <= 1'b0;
    zext_ln16352_cast_cast_cast_cast_reg_604[4] <= 1'b0;
    zext_ln16352_4_cast_cast_cast_cast_reg_609[0] <= 1'b0;
    zext_ln16352_4_cast_cast_cast_cast_reg_609[4] <= 1'b0;
    zext_ln16352_4_cast_cast_cast_cast_reg_609_pp0_iter1_reg[0] <= 1'b0;
    zext_ln16352_4_cast_cast_cast_cast_reg_609_pp0_iter1_reg[4] <= 1'b0;
end
endmodule 
