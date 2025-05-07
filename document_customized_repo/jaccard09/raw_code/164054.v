module forward_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_Pipeline_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,udiv_ln,select_ln12609,v10205_address0,v10205_ce0,v10205_we0,v10205_d0,empty,urem_ln12609,v15472_address0,v15472_ce0,v15472_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [8:0] mul_i;
input  [1:0] udiv_ln;
input  [3:0] select_ln12609;
output  [10:0] v10205_address0;
output   v10205_ce0;
output   v10205_we0;
output  [7:0] v10205_d0;
input  [0:0] empty;
input  [1:0] urem_ln12609;
output  [16:0] v15472_address0;
output   v15472_ce0;
input  [7:0] v15472_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln12584_fu_243_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1258515_reg_175;
reg   [0:0] icmp_ln1258614_reg_186;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] urem_ln12609_cast_fu_197_p1;
reg   [3:0] urem_ln12609_cast_reg_617;
wire  signed [4:0] select_ln12609_cast_fu_201_p1;
reg  signed [4:0] select_ln12609_cast_reg_622;
wire   [3:0] udiv_ln_cast_fu_205_p1;
reg   [3:0] udiv_ln_cast_reg_627;
reg   [0:0] icmp_ln12584_reg_632;
reg   [0:0] icmp_ln12584_reg_632_pp0_iter1_reg;
wire   [2:0] v10189_mid2_fu_312_p3;
reg   [2:0] v10189_mid2_reg_636;
wire   [8:0] add_ln12589_fu_385_p2;
reg   [8:0] add_ln12589_reg_641;
wire   [7:0] trunc_ln12589_fu_391_p1;
reg   [7:0] trunc_ln12589_reg_646;
wire   [13:0] add_ln12589_1_fu_417_p2;
reg   [13:0] add_ln12589_1_reg_651;
wire   [12:0] trunc_ln12589_1_fu_423_p1;
reg   [12:0] trunc_ln12589_1_reg_656;
wire   [3:0] add_ln12588_fu_431_p2;
reg   [3:0] add_ln12588_reg_661;
wire   [0:0] icmp_ln12586_fu_456_p2;
reg   [0:0] icmp_ln12586_reg_666;
wire   [0:0] icmp_ln12585_fu_462_p2;
reg   [0:0] icmp_ln12585_reg_671;
wire   [10:0] add_ln12589_2_fu_531_p2;
reg   [10:0] add_ln12589_2_reg_676;
reg   [0:0] ap_phi_mux_icmp_ln1258515_phi_fu_179_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1258614_phi_fu_190_p4;
wire   [63:0] zext_ln12589_5_fu_563_p1;
wire   [63:0] zext_ln12589_4_fu_568_p1;
reg   [10:0] indvar_flatten129_fu_98;
wire   [10:0] add_ln12584_1_fu_237_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten129_load;
reg   [5:0] v1018710_fu_102;
wire   [5:0] v10187_fu_292_p3;
reg   [5:0] indvar_flatten11_fu_106;
wire   [5:0] select_ln12585_1_fu_448_p3;
reg   [2:0] v1018812_fu_110;
wire   [2:0] v10188_fu_320_p3;
reg   [2:0] v1018913_fu_114;
wire   [2:0] v10189_fu_436_p2;
reg    v15472_ce0_local;
reg    v10205_we0_local;
reg    v10205_ce0_local;
wire   [0:0] xor_ln12584_fu_280_p2;
wire   [5:0] add_ln12584_fu_266_p2;
wire   [2:0] select_ln12584_fu_272_p3;
wire   [0:0] and_ln12584_fu_286_p2;
wire   [0:0] empty_416_fu_306_p2;
wire   [2:0] add_ln12585_fu_300_p2;
wire   [8:0] p_shl35_fu_332_p3;
wire   [8:0] zext_ln12584_fu_328_p1;
wire   [8:0] empty_417_fu_346_p2;
wire   [9:0] tmp_446_fu_359_p3;
wire   [12:0] p_shl33_fu_351_p3;
wire   [12:0] zext_ln12589_fu_367_p1;
wire   [12:0] sub_ln12589_1_fu_371_p2;
wire   [8:0] sub_ln12589_fu_340_p2;
wire   [8:0] zext_ln12589_1_fu_381_p1;
wire   [3:0] zext_ln12585_1_fu_395_p1;
wire   [3:0] tmp_fu_399_p2;
wire   [4:0] tmp_cast_fu_404_p1;
wire   [4:0] empty_418_fu_408_p2;
wire   [13:0] zext_ln12585_fu_377_p1;
wire  signed [13:0] sext_ln12589_fu_413_p1;
wire   [3:0] zext_ln12586_fu_427_p1;
wire   [5:0] add_ln12585_1_fu_442_p2;
wire   [10:0] tmp_447_fu_488_p3;
wire   [10:0] zext_ln12589_2_fu_495_p1;
wire   [14:0] tmp_448_fu_511_p3;
wire   [16:0] p_shl36_fu_504_p3;
wire  signed [16:0] sext_ln12586_fu_518_p1;
wire   [10:0] sub_ln12585_fu_498_p2;
wire   [10:0] zext_ln12589_3_fu_528_p1;
wire   [4:0] zext_ln12588_fu_544_p1;
wire   [4:0] select_ln12588_fu_537_p3;
wire   [4:0] add_ln12588_1_fu_547_p2;
wire   [16:0] sub_ln12586_fu_522_p2;
wire  signed [16:0] sext_ln12589_1_fu_553_p1;
wire   [16:0] add_ln12589_3_fu_557_p2;
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
#0 v1018710_fu_102 = 6'd0;
#0 indvar_flatten11_fu_106 = 6'd0;
#0 v1018812_fu_110 = 3'd0;
#0 v1018913_fu_114 = 3'd0;
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
    if (((icmp_ln12584_reg_632_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln1258515_reg_175 <= icmp_ln12585_reg_671;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1258515_reg_175 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln12584_reg_632_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln1258614_reg_186 <= icmp_ln12586_reg_666;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1258614_reg_186 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten11_fu_106 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten11_fu_106 <= select_ln12585_1_fu_448_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten129_fu_98 <= add_ln12584_1_fu_237_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten129_fu_98 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1018710_fu_102 <= 6'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1018710_fu_102 <= v10187_fu_292_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1018812_fu_110 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1018812_fu_110 <= v10188_fu_320_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v1018913_fu_114 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v1018913_fu_114 <= v10189_fu_436_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln12588_reg_661 <= add_ln12588_fu_431_p2;
        add_ln12589_1_reg_651 <= add_ln12589_1_fu_417_p2;
        add_ln12589_reg_641 <= add_ln12589_fu_385_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln12584_reg_632 <= icmp_ln12584_fu_243_p2;
        icmp_ln12584_reg_632_pp0_iter1_reg <= icmp_ln12584_reg_632;
        select_ln12609_cast_reg_622 <= select_ln12609_cast_fu_201_p1;
        trunc_ln12589_1_reg_656 <= trunc_ln12589_1_fu_423_p1;
        trunc_ln12589_reg_646 <= trunc_ln12589_fu_391_p1;
        udiv_ln_cast_reg_627[1 : 0] <= udiv_ln_cast_fu_205_p1[1 : 0];
        urem_ln12609_cast_reg_617[1 : 0] <= urem_ln12609_cast_fu_197_p1[1 : 0];
        v10189_mid2_reg_636 <= v10189_mid2_fu_312_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln12589_2_reg_676 <= add_ln12589_2_fu_531_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12585_reg_671 <= icmp_ln12585_fu_462_p2;
        icmp_ln12586_reg_666 <= icmp_ln12586_fu_456_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12584_fu_243_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((icmp_ln12584_reg_632_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1258515_phi_fu_179_p4 = icmp_ln12585_reg_671;
    end else begin
        ap_phi_mux_icmp_ln1258515_phi_fu_179_p4 = icmp_ln1258515_reg_175;
    end
end
always @ (*) begin
    if (((icmp_ln12584_reg_632_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1258614_phi_fu_190_p4 = icmp_ln12586_reg_666;
    end else begin
        ap_phi_mux_icmp_ln1258614_phi_fu_190_p4 = icmp_ln1258614_reg_186;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10205_ce0_local = 1'b1;
    end else begin
        v10205_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v10205_we0_local = 1'b1;
    end else begin
        v10205_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v15472_ce0_local = 1'b1;
    end else begin
        v15472_ce0_local = 1'b0;
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
assign add_ln12584_1_fu_237_p2 = (ap_sig_allocacmp_indvar_flatten129_load + 11'd1);
assign add_ln12584_fu_266_p2 = (v1018710_fu_102 + 6'd1);
assign add_ln12585_1_fu_442_p2 = (indvar_flatten11_fu_106 + 6'd1);
assign add_ln12585_fu_300_p2 = (select_ln12584_fu_272_p3 + 3'd1);
assign add_ln12588_1_fu_547_p2 = (zext_ln12588_fu_544_p1 + select_ln12588_fu_537_p3);
assign add_ln12588_fu_431_p2 = (urem_ln12609_cast_reg_617 + zext_ln12586_fu_427_p1);
assign add_ln12589_1_fu_417_p2 = ($signed(zext_ln12585_fu_377_p1) + $signed(sext_ln12589_fu_413_p1));
assign add_ln12589_2_fu_531_p2 = (sub_ln12585_fu_498_p2 + zext_ln12589_3_fu_528_p1);
assign add_ln12589_3_fu_557_p2 = ($signed(sub_ln12586_fu_522_p2) + $signed(sext_ln12589_1_fu_553_p1));
assign add_ln12589_fu_385_p2 = (sub_ln12589_fu_340_p2 + zext_ln12589_1_fu_381_p1);
assign and_ln12584_fu_286_p2 = (xor_ln12584_fu_280_p2 & ap_phi_mux_icmp_ln1258614_phi_fu_190_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_416_fu_306_p2 = (ap_phi_mux_icmp_ln1258515_phi_fu_179_p4 | and_ln12584_fu_286_p2);
assign empty_417_fu_346_p2 = (mul_i + zext_ln12584_fu_328_p1);
assign empty_418_fu_408_p2 = ($signed(tmp_cast_fu_404_p1) + $signed(select_ln12609_cast_reg_622));
assign icmp_ln12584_fu_243_p2 = ((ap_sig_allocacmp_indvar_flatten129_load == 11'd1567) ? 1'b1 : 1'b0);
assign icmp_ln12585_fu_462_p2 = ((select_ln12585_1_fu_448_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln12586_fu_456_p2 = ((v10189_fu_436_p2 == 3'd7) ? 1'b1 : 1'b0);
assign p_shl33_fu_351_p3 = {{empty_417_fu_346_p2}, {4'd0}};
assign p_shl35_fu_332_p3 = {{v10187_fu_292_p3}, {3'd0}};
assign p_shl36_fu_504_p3 = {{trunc_ln12589_1_reg_656}, {4'd0}};
assign select_ln12584_fu_272_p3 = ((ap_phi_mux_icmp_ln1258515_phi_fu_179_p4[0:0] == 1'b1) ? 3'd0 : v1018812_fu_110);
assign select_ln12585_1_fu_448_p3 = ((ap_phi_mux_icmp_ln1258515_phi_fu_179_p4[0:0] == 1'b1) ? 6'd1 : add_ln12585_1_fu_442_p2);
assign select_ln12588_fu_537_p3 = ((empty[0:0] == 1'b1) ? 5'd6 : 5'd31);
assign select_ln12609_cast_fu_201_p1 = $signed(select_ln12609);
assign sext_ln12586_fu_518_p1 = $signed(tmp_448_fu_511_p3);
assign sext_ln12589_1_fu_553_p1 = $signed(add_ln12588_1_fu_547_p2);
assign sext_ln12589_fu_413_p1 = $signed(empty_418_fu_408_p2);
assign sub_ln12585_fu_498_p2 = (tmp_447_fu_488_p3 - zext_ln12589_2_fu_495_p1);
assign sub_ln12586_fu_522_p2 = ($signed(p_shl36_fu_504_p3) - $signed(sext_ln12586_fu_518_p1));
assign sub_ln12589_1_fu_371_p2 = (p_shl33_fu_351_p3 - zext_ln12589_fu_367_p1);
assign sub_ln12589_fu_340_p2 = (p_shl35_fu_332_p3 - zext_ln12584_fu_328_p1);
assign tmp_446_fu_359_p3 = {{empty_417_fu_346_p2}, {1'd0}};
assign tmp_447_fu_488_p3 = {{trunc_ln12589_reg_646}, {3'd0}};
assign tmp_448_fu_511_p3 = {{add_ln12589_1_reg_651}, {1'd0}};
assign tmp_cast_fu_404_p1 = tmp_fu_399_p2;
assign tmp_fu_399_p2 = (udiv_ln_cast_reg_627 + zext_ln12585_1_fu_395_p1);
assign trunc_ln12589_1_fu_423_p1 = add_ln12589_1_fu_417_p2[12:0];
assign trunc_ln12589_fu_391_p1 = add_ln12589_fu_385_p2[7:0];
assign udiv_ln_cast_fu_205_p1 = udiv_ln;
assign urem_ln12609_cast_fu_197_p1 = urem_ln12609;
assign v10187_fu_292_p3 = ((ap_phi_mux_icmp_ln1258515_phi_fu_179_p4[0:0] == 1'b1) ? add_ln12584_fu_266_p2 : v1018710_fu_102);
assign v10188_fu_320_p3 = ((and_ln12584_fu_286_p2[0:0] == 1'b1) ? add_ln12585_fu_300_p2 : select_ln12584_fu_272_p3);
assign v10189_fu_436_p2 = (v10189_mid2_fu_312_p3 + 3'd1);
assign v10189_mid2_fu_312_p3 = ((empty_416_fu_306_p2[0:0] == 1'b1) ? 3'd0 : v1018913_fu_114);
assign v10205_address0 = zext_ln12589_4_fu_568_p1;
assign v10205_ce0 = v10205_ce0_local;
assign v10205_d0 = v15472_q0;
assign v10205_we0 = v10205_we0_local;
assign v15472_address0 = zext_ln12589_5_fu_563_p1;
assign v15472_ce0 = v15472_ce0_local;
assign xor_ln12584_fu_280_p2 = (ap_phi_mux_icmp_ln1258515_phi_fu_179_p4 ^ 1'd1);
assign zext_ln12584_fu_328_p1 = v10187_fu_292_p3;
assign zext_ln12585_1_fu_395_p1 = v10188_fu_320_p3;
assign zext_ln12585_fu_377_p1 = sub_ln12589_1_fu_371_p2;
assign zext_ln12586_fu_427_p1 = v10189_mid2_fu_312_p3;
assign zext_ln12588_fu_544_p1 = add_ln12588_reg_661;
assign zext_ln12589_1_fu_381_p1 = v10188_fu_320_p3;
assign zext_ln12589_2_fu_495_p1 = add_ln12589_reg_641;
assign zext_ln12589_3_fu_528_p1 = v10189_mid2_reg_636;
assign zext_ln12589_4_fu_568_p1 = add_ln12589_2_reg_676;
assign zext_ln12589_5_fu_563_p1 = add_ln12589_3_fu_557_p2;
assign zext_ln12589_fu_367_p1 = tmp_446_fu_359_p3;
always @ (posedge ap_clk) begin
    urem_ln12609_cast_reg_617[3:2] <= 2'b00;
    udiv_ln_cast_reg_627[3:2] <= 2'b00;
end
endmodule 