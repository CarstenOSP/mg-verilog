module forward_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_Pipeline_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,udiv_ln,select_ln11451,v9344_address0,v9344_ce0,v9344_we0,v9344_d0,empty,urem_ln11451,v15478_address0,v15478_ce0,v15478_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] mul_i;
input  [1:0] udiv_ln;
input  [3:0] select_ln11451;
output  [10:0] v9344_address0;
output   v9344_ce0;
output   v9344_we0;
output  [7:0] v9344_d0;
input  [0:0] empty;
input  [1:0] urem_ln11451;
output  [16:0] v15478_address0;
output   v15478_ce0;
input  [7:0] v15478_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln11426_fu_243_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1142715_reg_175;
reg   [0:0] icmp_ln1142814_reg_186;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] urem_ln11451_cast_fu_197_p1;
reg   [3:0] urem_ln11451_cast_reg_617;
wire  signed [4:0] select_ln11451_cast_fu_201_p1;
reg  signed [4:0] select_ln11451_cast_reg_622;
wire   [3:0] udiv_ln_cast_fu_205_p1;
reg   [3:0] udiv_ln_cast_reg_627;
reg   [0:0] icmp_ln11426_reg_632;
reg   [0:0] icmp_ln11426_reg_632_pp0_iter1_reg;
wire   [2:0] v9328_mid2_fu_312_p3;
reg   [2:0] v9328_mid2_reg_636;
wire   [8:0] add_ln11431_fu_385_p2;
reg   [8:0] add_ln11431_reg_641;
wire   [7:0] trunc_ln11431_fu_391_p1;
reg   [7:0] trunc_ln11431_reg_646;
wire   [13:0] add_ln11431_1_fu_417_p2;
reg   [13:0] add_ln11431_1_reg_651;
wire   [12:0] trunc_ln11431_1_fu_423_p1;
reg   [12:0] trunc_ln11431_1_reg_656;
wire   [3:0] add_ln11430_fu_431_p2;
reg   [3:0] add_ln11430_reg_661;
wire   [0:0] icmp_ln11428_fu_456_p2;
reg   [0:0] icmp_ln11428_reg_666;
wire   [0:0] icmp_ln11427_fu_462_p2;
reg   [0:0] icmp_ln11427_reg_671;
wire   [10:0] add_ln11431_2_fu_531_p2;
reg   [10:0] add_ln11431_2_reg_676;
reg   [0:0] ap_phi_mux_icmp_ln1142715_phi_fu_179_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1142814_phi_fu_190_p4;
wire   [63:0] zext_ln11431_5_fu_563_p1;
wire   [63:0] zext_ln11431_4_fu_568_p1;
reg   [10:0] indvar_flatten129_fu_98;
wire   [10:0] add_ln11426_1_fu_237_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten129_load;
reg   [5:0] v932610_fu_102;
wire   [5:0] v9326_fu_292_p3;
reg   [5:0] indvar_flatten11_fu_106;
wire   [5:0] select_ln11427_1_fu_448_p3;
reg   [2:0] v932712_fu_110;
wire   [2:0] v9327_fu_320_p3;
reg   [2:0] v932813_fu_114;
wire   [2:0] v9328_fu_436_p2;
reg    v15478_ce0_local;
reg    v9344_we0_local;
reg    v9344_ce0_local;
wire   [0:0] xor_ln11426_fu_280_p2;
wire   [5:0] add_ln11426_fu_266_p2;
wire   [2:0] select_ln11426_fu_272_p3;
wire   [0:0] and_ln11426_fu_286_p2;
wire   [0:0] empty_443_fu_306_p2;
wire   [2:0] add_ln11427_fu_300_p2;
wire   [8:0] p_shl35_fu_332_p3;
wire   [8:0] zext_ln11426_fu_328_p1;
wire   [8:0] empty_444_fu_346_p2;
wire   [9:0] tmp_480_fu_359_p3;
wire   [12:0] p_shl33_fu_351_p3;
wire   [12:0] zext_ln11431_fu_367_p1;
wire   [12:0] sub_ln11431_1_fu_371_p2;
wire   [8:0] sub_ln11431_fu_340_p2;
wire   [8:0] zext_ln11431_1_fu_381_p1;
wire   [3:0] zext_ln11427_1_fu_395_p1;
wire   [3:0] tmp_fu_399_p2;
wire   [4:0] tmp_cast_fu_404_p1;
wire   [4:0] empty_445_fu_408_p2;
wire   [13:0] zext_ln11427_fu_377_p1;
wire  signed [13:0] sext_ln11431_fu_413_p1;
wire   [3:0] zext_ln11428_fu_427_p1;
wire   [5:0] add_ln11427_1_fu_442_p2;
wire   [10:0] tmp_481_fu_488_p3;
wire   [10:0] zext_ln11431_2_fu_495_p1;
wire   [14:0] tmp_482_fu_511_p3;
wire   [16:0] p_shl36_fu_504_p3;
wire  signed [16:0] sext_ln11428_fu_518_p1;
wire   [10:0] sub_ln11427_fu_498_p2;
wire   [10:0] zext_ln11431_3_fu_528_p1;
wire   [4:0] zext_ln11430_fu_544_p1;
wire   [4:0] select_ln11430_fu_537_p3;
wire   [4:0] add_ln11430_1_fu_547_p2;
wire   [16:0] sub_ln11428_fu_522_p2;
wire  signed [16:0] sext_ln11431_1_fu_553_p1;
wire   [16:0] add_ln11431_3_fu_557_p2;
reg    ap_done_reg;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 indvar_flatten129_fu_98 = 11'd0;
#0 v932610_fu_102 = 6'd0;
#0 indvar_flatten11_fu_106 = 6'd0;
#0 v932712_fu_110 = 3'd0;
#0 v932813_fu_114 = 3'd0;
#0 ap_done_reg = 1'b0;
end
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
    if (((icmp_ln11426_reg_632_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln1142715_reg_175 <= icmp_ln11427_reg_671;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1142715_reg_175 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln11426_reg_632_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln1142814_reg_186 <= icmp_ln11428_reg_666;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1142814_reg_186 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten11_fu_106 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten11_fu_106 <= select_ln11427_1_fu_448_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten129_fu_98 <= add_ln11426_1_fu_237_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten129_fu_98 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v932610_fu_102 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v932610_fu_102 <= v9326_fu_292_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v932712_fu_110 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v932712_fu_110 <= v9327_fu_320_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v932813_fu_114 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v932813_fu_114 <= v9328_fu_436_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln11430_reg_661 <= add_ln11430_fu_431_p2;
        add_ln11431_1_reg_651 <= add_ln11431_1_fu_417_p2;
        add_ln11431_reg_641 <= add_ln11431_fu_385_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln11426_reg_632 <= icmp_ln11426_fu_243_p2;
        icmp_ln11426_reg_632_pp0_iter1_reg <= icmp_ln11426_reg_632;
        select_ln11451_cast_reg_622 <= select_ln11451_cast_fu_201_p1;
        trunc_ln11431_1_reg_656 <= trunc_ln11431_1_fu_423_p1;
        trunc_ln11431_reg_646 <= trunc_ln11431_fu_391_p1;
        udiv_ln_cast_reg_627[1 : 0] <= udiv_ln_cast_fu_205_p1[1 : 0];
        urem_ln11451_cast_reg_617[1 : 0] <= urem_ln11451_cast_fu_197_p1[1 : 0];
        v9328_mid2_reg_636 <= v9328_mid2_fu_312_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln11431_2_reg_676 <= add_ln11431_2_fu_531_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln11427_reg_671 <= icmp_ln11427_fu_462_p2;
        icmp_ln11428_reg_666 <= icmp_ln11428_fu_456_p2;
    end
end
always @ (*) begin
    if (((icmp_ln11426_fu_243_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln11426_reg_632_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1142715_phi_fu_179_p4 = icmp_ln11427_reg_671;
    end else begin
        ap_phi_mux_icmp_ln1142715_phi_fu_179_p4 = icmp_ln1142715_reg_175;
    end
end
always @ (*) begin
    if (((icmp_ln11426_reg_632_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1142814_phi_fu_190_p4 = icmp_ln11428_reg_666;
    end else begin
        ap_phi_mux_icmp_ln1142814_phi_fu_190_p4 = icmp_ln1142814_reg_186;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten129_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten129_load = indvar_flatten129_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15478_ce0_local = 1'b1;
    end else begin
        v15478_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9344_ce0_local = 1'b1;
    end else begin
        v9344_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v9344_we0_local = 1'b1;
    end else begin
        v9344_we0_local = 1'b0;
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
assign add_ln11426_1_fu_237_p2 = (ap_sig_allocacmp_indvar_flatten129_load + 11'd1);
assign add_ln11426_fu_266_p2 = (v932610_fu_102 + 6'd1);
assign add_ln11427_1_fu_442_p2 = (indvar_flatten11_fu_106 + 6'd1);
assign add_ln11427_fu_300_p2 = (select_ln11426_fu_272_p3 + 3'd1);
assign add_ln11430_1_fu_547_p2 = (zext_ln11430_fu_544_p1 + select_ln11430_fu_537_p3);
assign add_ln11430_fu_431_p2 = (urem_ln11451_cast_reg_617 + zext_ln11428_fu_427_p1);
assign add_ln11431_1_fu_417_p2 = ($signed(zext_ln11427_fu_377_p1) + $signed(sext_ln11431_fu_413_p1));
assign add_ln11431_2_fu_531_p2 = (sub_ln11427_fu_498_p2 + zext_ln11431_3_fu_528_p1);
assign add_ln11431_3_fu_557_p2 = ($signed(sub_ln11428_fu_522_p2) + $signed(sext_ln11431_1_fu_553_p1));
assign add_ln11431_fu_385_p2 = (sub_ln11431_fu_340_p2 + zext_ln11431_1_fu_381_p1);
assign and_ln11426_fu_286_p2 = (xor_ln11426_fu_280_p2 & ap_phi_mux_icmp_ln1142814_phi_fu_190_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_443_fu_306_p2 = (ap_phi_mux_icmp_ln1142715_phi_fu_179_p4 | and_ln11426_fu_286_p2);
assign empty_444_fu_346_p2 = (mul_i + zext_ln11426_fu_328_p1);
assign empty_445_fu_408_p2 = ($signed(tmp_cast_fu_404_p1) + $signed(select_ln11451_cast_reg_622));
assign icmp_ln11426_fu_243_p2 = ((ap_sig_allocacmp_indvar_flatten129_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln11427_fu_462_p2 = ((select_ln11427_1_fu_448_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln11428_fu_456_p2 = ((v9328_fu_436_p2 == 3'd7) ? 1'b1 : 1'b0);
assign p_shl33_fu_351_p3 = {{empty_444_fu_346_p2}, {4'd0}};
assign p_shl35_fu_332_p3 = {{v9326_fu_292_p3}, {3'd0}};
assign p_shl36_fu_504_p3 = {{trunc_ln11431_1_reg_656}, {4'd0}};
assign select_ln11426_fu_272_p3 = ((ap_phi_mux_icmp_ln1142715_phi_fu_179_p4[0:0] == 1'b1) ? 3'd0 : v932712_fu_110);
assign select_ln11427_1_fu_448_p3 = ((ap_phi_mux_icmp_ln1142715_phi_fu_179_p4[0:0] == 1'b1) ? 6'd1 : add_ln11427_1_fu_442_p2);
assign select_ln11430_fu_537_p3 = ((empty[0:0] == 1'b1) ? 5'd6 : 5'd31);
assign select_ln11451_cast_fu_201_p1 = $signed(select_ln11451);
assign sext_ln11428_fu_518_p1 = $signed(tmp_482_fu_511_p3);
assign sext_ln11431_1_fu_553_p1 = $signed(add_ln11430_1_fu_547_p2);
assign sext_ln11431_fu_413_p1 = $signed(empty_445_fu_408_p2);
assign sub_ln11427_fu_498_p2 = (tmp_481_fu_488_p3 - zext_ln11431_2_fu_495_p1);
assign sub_ln11428_fu_522_p2 = ($signed(p_shl36_fu_504_p3) - $signed(sext_ln11428_fu_518_p1));
assign sub_ln11431_1_fu_371_p2 = (p_shl33_fu_351_p3 - zext_ln11431_fu_367_p1);
assign sub_ln11431_fu_340_p2 = (p_shl35_fu_332_p3 - zext_ln11426_fu_328_p1);
assign tmp_480_fu_359_p3 = {{empty_444_fu_346_p2}, {1'd0}};
assign tmp_481_fu_488_p3 = {{trunc_ln11431_reg_646}, {3'd0}};
assign tmp_482_fu_511_p3 = {{add_ln11431_1_reg_651}, {1'd0}};
assign tmp_cast_fu_404_p1 = tmp_fu_399_p2;
assign tmp_fu_399_p2 = (udiv_ln_cast_reg_627 + zext_ln11427_1_fu_395_p1);
assign trunc_ln11431_1_fu_423_p1 = add_ln11431_1_fu_417_p2[12:0];
assign trunc_ln11431_fu_391_p1 = add_ln11431_fu_385_p2[7:0];
assign udiv_ln_cast_fu_205_p1 = udiv_ln;
assign urem_ln11451_cast_fu_197_p1 = urem_ln11451;
assign v15478_address0 = zext_ln11431_5_fu_563_p1;
assign v15478_ce0 = v15478_ce0_local;
assign v9326_fu_292_p3 = ((ap_phi_mux_icmp_ln1142715_phi_fu_179_p4[0:0] == 1'b1) ? add_ln11426_fu_266_p2 : v932610_fu_102);
assign v9327_fu_320_p3 = ((and_ln11426_fu_286_p2[0:0] == 1'b1) ? add_ln11427_fu_300_p2 : select_ln11426_fu_272_p3);
assign v9328_fu_436_p2 = (v9328_mid2_fu_312_p3 + 3'd1);
assign v9328_mid2_fu_312_p3 = ((empty_443_fu_306_p2[0:0] == 1'b1) ? 3'd0 : v932813_fu_114);
assign v9344_address0 = zext_ln11431_4_fu_568_p1;
assign v9344_ce0 = v9344_ce0_local;
assign v9344_d0 = v15478_q0;
assign v9344_we0 = v9344_we0_local;
assign xor_ln11426_fu_280_p2 = (ap_phi_mux_icmp_ln1142715_phi_fu_179_p4 ^ 1'd1);
assign zext_ln11426_fu_328_p1 = v9326_fu_292_p3;
assign zext_ln11427_1_fu_395_p1 = v9327_fu_320_p3;
assign zext_ln11427_fu_377_p1 = sub_ln11431_1_fu_371_p2;
assign zext_ln11428_fu_427_p1 = v9328_mid2_fu_312_p3;
assign zext_ln11430_fu_544_p1 = add_ln11430_reg_661;
assign zext_ln11431_1_fu_381_p1 = v9327_fu_320_p3;
assign zext_ln11431_2_fu_495_p1 = add_ln11431_reg_641;
assign zext_ln11431_3_fu_528_p1 = v9328_mid2_reg_636;
assign zext_ln11431_4_fu_568_p1 = add_ln11431_2_reg_676;
assign zext_ln11431_5_fu_563_p1 = add_ln11431_3_fu_557_p2;
assign zext_ln11431_fu_367_p1 = tmp_480_fu_359_p3;
always @ (posedge ap_clk) begin
    urem_ln11451_cast_reg_617[3:2] <= 2'b00;
    udiv_ln_cast_reg_627[3:2] <= 2'b00;
end
endmodule 