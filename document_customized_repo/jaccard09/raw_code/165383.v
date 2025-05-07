module main_graph_main_graph_Pipeline_VITIS_LOOP_1135_249_VITIS_LOOP_1136_250_VITIS_LOOP_1137_251_s (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v35_address1,v35_ce1,v35_we1,v35_d1,v18_Addr_A,v18_EN_A,v18_WEN_A,v18_Din_A,v18_Dout_A,v41_address0,v41_ce0,v41_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] v35_address1;
output   v35_ce1;
output   v35_we1;
output  [7:0] v35_d1;
output  [31:0] v18_Addr_A;
output   v18_EN_A;
output  [0:0] v18_WEN_A;
output  [7:0] v18_Din_A;
input  [7:0] v18_Dout_A;
output  [13:0] v41_address0;
output   v41_ce0;
input  [6:0] v41_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln1135_fu_207_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln1135_reg_618;
wire   [0:0] icmp_ln1136_fu_219_p2;
reg   [0:0] icmp_ln1136_reg_622;
reg   [0:0] icmp_ln1136_reg_622_pp0_iter2_reg;
wire   [0:0] and_ln1135_1_fu_272_p2;
reg   [0:0] and_ln1135_1_reg_632;
wire   [0:0] empty_fu_278_p2;
reg   [0:0] empty_reg_637;
wire   [0:0] icmp_ln1139_mid22927_fu_300_p2;
reg   [0:0] icmp_ln1139_mid22927_reg_642;
wire   [0:0] empty_151_fu_312_p2;
reg   [0:0] empty_151_reg_647;
reg   [0:0] empty_151_reg_647_pp0_iter3_reg;
reg   [0:0] empty_151_reg_647_pp0_iter4_reg;
reg   [0:0] empty_151_reg_647_pp0_iter5_reg;
wire   [8:0] v585_mid2_fu_317_p3;
reg   [8:0] v585_mid2_reg_652;
wire   [7:0] empty_152_fu_325_p1;
reg   [7:0] empty_152_reg_657;
wire   [0:0] icmp_ln1139_1_fu_335_p2;
reg   [0:0] icmp_ln1139_1_reg_662;
reg   [0:0] icmp_ln1139_1_reg_662_pp0_iter3_reg;
reg   [0:0] icmp_ln1139_1_reg_662_pp0_iter4_reg;
reg   [0:0] icmp_ln1139_1_reg_662_pp0_iter5_reg;
reg   [0:0] icmp_ln1139_1_reg_662_pp0_iter6_reg;
wire   [12:0] add_ln1138_1_fu_473_p2;
reg   [12:0] add_ln1138_1_reg_666;
reg   [12:0] add_ln1138_1_reg_666_pp0_iter4_reg;
reg   [12:0] add_ln1138_1_reg_666_pp0_iter5_reg;
reg   [12:0] add_ln1138_1_reg_666_pp0_iter6_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
wire   [63:0] zext_ln1141_1_fu_492_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln1140_1_fu_510_p1;
wire   [63:0] zext_ln1138_2_fu_544_p1;
reg   [7:0] v588_fu_86;
wire   [7:0] grp_fu_552_p3;
reg   [7:0] ap_sig_allocacmp_v588_load;
wire    ap_loop_init;
reg   [8:0] v585_fu_90;
wire   [8:0] add_ln1139_fu_329_p2;
reg   [2:0] v584_fu_94;
wire   [2:0] select_ln1137_fu_424_p3;
reg   [11:0] indvar_flatten2914_fu_98;
wire   [11:0] select_ln1137_1_fu_347_p3;
reg   [2:0] v583_fu_102;
wire   [2:0] select_ln1136_fu_411_p3;
reg   [13:0] indvar_flatten2928_fu_106;
wire   [13:0] select_ln1136_1_fu_231_p3;
reg   [9:0] v582_fu_110;
wire   [9:0] select_ln1135_1_fu_387_p3;
reg   [21:0] indvar_flatten2952_fu_114;
wire   [21:0] add_ln1135_1_fu_213_p2;
reg    v41_ce0_local;
reg    v18_EN_A_local;
wire   [31:0] v18_Addr_A_orig;
reg    v35_we1_local;
reg    v35_ce1_local;
wire   [13:0] add_ln1136_1_fu_225_p2;
wire   [0:0] icmp_ln1137_fu_266_p2;
wire   [0:0] xor_ln1135_fu_255_p2;
wire   [0:0] exitcond_flatten2916_not_fu_283_p2;
wire   [0:0] icmp_ln1139_fu_260_p2;
wire   [0:0] and_ln1135_fu_294_p2;
wire   [0:0] not_exitcond_flatten2916_mid22951_fu_289_p2;
wire   [0:0] empty_150_fu_306_p2;
wire   [11:0] add_ln1137_1_fu_341_p2;
wire   [9:0] add_ln1135_fu_374_p2;
wire   [2:0] select_ln1135_fu_380_p3;
wire   [2:0] add_ln1136_fu_398_p2;
wire   [2:0] v584_mid22921_fu_404_p3;
wire   [2:0] add_ln1137_fu_418_p2;
wire   [8:0] trunc_ln1136_fu_394_p1;
wire   [10:0] tmp_76_fu_439_p3;
wire   [10:0] zext_ln1138_fu_447_p1;
wire   [10:0] add_ln1138_fu_451_p2;
wire   [12:0] tmp_fu_457_p3;
wire   [12:0] zext_ln1138_1_fu_469_p1;
wire   [16:0] tmp_s_fu_431_p3;
wire   [16:0] zext_ln1141_fu_483_p1;
wire   [16:0] add_ln1141_fu_486_p2;
wire   [1:0] empty_153_fu_465_p1;
wire   [1:0] empty_154_fu_479_p1;
wire   [13:0] tmp_77_fu_497_p6;
wire   [6:0] grp_fu_552_p1;
wire   [7:0] grp_fu_552_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_552_p10;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 v588_fu_86 = 8'd0;
#0 v585_fu_90 = 9'd0;
#0 v584_fu_94 = 3'd0;
#0 indvar_flatten2914_fu_98 = 12'd0;
#0 v583_fu_102 = 3'd0;
#0 indvar_flatten2928_fu_106 = 14'd0;
#0 v582_fu_110 = 10'd0;
#0 indvar_flatten2952_fu_114 = 22'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U275(.clk(ap_clk),.reset(ap_rst),.din0(v18_Dout_A),.din1(grp_fu_552_p1),.din2(grp_fu_552_p2),.ce(1'b1),.dout(grp_fu_552_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage0)) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            indvar_flatten2914_fu_98 <= 12'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1135_reg_618 == 1'd0))) begin
            indvar_flatten2914_fu_98 <= select_ln1137_1_fu_347_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2928_fu_106 <= 14'd0;
        end else if (((icmp_ln1135_fu_207_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten2928_fu_106 <= select_ln1136_1_fu_231_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2952_fu_114 <= 22'd0;
        end else if (((icmp_ln1135_fu_207_p2 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten2952_fu_114 <= add_ln1135_1_fu_213_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v582_fu_110 <= 10'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v582_fu_110 <= select_ln1135_1_fu_387_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v583_fu_102 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v583_fu_102 <= select_ln1136_fu_411_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v584_fu_94 <= 3'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v584_fu_94 <= select_ln1137_fu_424_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v585_fu_90 <= 9'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1135_reg_618 == 1'd0))) begin
            v585_fu_90 <= add_ln1139_fu_329_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v588_fu_86 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter7 == 1'b1)) begin
            v588_fu_86 <= grp_fu_552_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln1138_1_reg_666 <= add_ln1138_1_fu_473_p2;
        add_ln1138_1_reg_666_pp0_iter4_reg <= add_ln1138_1_reg_666;
        add_ln1138_1_reg_666_pp0_iter5_reg <= add_ln1138_1_reg_666_pp0_iter4_reg;
        add_ln1138_1_reg_666_pp0_iter6_reg <= add_ln1138_1_reg_666_pp0_iter5_reg;
        and_ln1135_1_reg_632 <= and_ln1135_1_fu_272_p2;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        empty_151_reg_647 <= empty_151_fu_312_p2;
        empty_151_reg_647_pp0_iter3_reg <= empty_151_reg_647;
        empty_151_reg_647_pp0_iter4_reg <= empty_151_reg_647_pp0_iter3_reg;
        empty_151_reg_647_pp0_iter5_reg <= empty_151_reg_647_pp0_iter4_reg;
        empty_152_reg_657 <= empty_152_fu_325_p1;
        empty_reg_637 <= empty_fu_278_p2;
        icmp_ln1136_reg_622_pp0_iter2_reg <= icmp_ln1136_reg_622;
        icmp_ln1139_1_reg_662 <= icmp_ln1139_1_fu_335_p2;
        icmp_ln1139_1_reg_662_pp0_iter3_reg <= icmp_ln1139_1_reg_662;
        icmp_ln1139_1_reg_662_pp0_iter4_reg <= icmp_ln1139_1_reg_662_pp0_iter3_reg;
        icmp_ln1139_1_reg_662_pp0_iter5_reg <= icmp_ln1139_1_reg_662_pp0_iter4_reg;
        icmp_ln1139_1_reg_662_pp0_iter6_reg <= icmp_ln1139_1_reg_662_pp0_iter5_reg;
        icmp_ln1139_mid22927_reg_642 <= icmp_ln1139_mid22927_fu_300_p2;
        v585_mid2_reg_652 <= v585_mid2_fu_317_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln1135_reg_618 <= icmp_ln1135_fu_207_p2;
        icmp_ln1136_reg_622 <= icmp_ln1136_fu_219_p2;
    end
end
always @ (*) begin
    if (((icmp_ln1135_fu_207_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln1135_reg_618 == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        ap_sig_allocacmp_v588_load = grp_fu_552_p3;
    end else begin
        ap_sig_allocacmp_v588_load = v588_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v18_EN_A_local = 1'b1;
    end else begin
        v18_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        v35_ce1_local = 1'b1;
    end else begin
        v35_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (icmp_ln1139_1_reg_662_pp0_iter6_reg == 1'd1))) begin
        v35_we1_local = 1'b1;
    end else begin
        v35_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v41_ce0_local = 1'b1;
    end else begin
        v41_ce0_local = 1'b0;
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
assign add_ln1135_1_fu_213_p2 = (indvar_flatten2952_fu_114 + 22'd1);
assign add_ln1135_fu_374_p2 = (v582_fu_110 + 10'd1);
assign add_ln1136_1_fu_225_p2 = (indvar_flatten2928_fu_106 + 14'd1);
assign add_ln1136_fu_398_p2 = (select_ln1135_fu_380_p3 + 3'd1);
assign add_ln1137_1_fu_341_p2 = (indvar_flatten2914_fu_98 + 12'd1);
assign add_ln1137_fu_418_p2 = (v584_mid22921_fu_404_p3 + 3'd1);
assign add_ln1138_1_fu_473_p2 = (tmp_fu_457_p3 + zext_ln1138_1_fu_469_p1);
assign add_ln1138_fu_451_p2 = (tmp_76_fu_439_p3 + zext_ln1138_fu_447_p1);
assign add_ln1139_fu_329_p2 = (v585_mid2_fu_317_p3 + 9'd1);
assign add_ln1141_fu_486_p2 = (tmp_s_fu_431_p3 + zext_ln1141_fu_483_p1);
assign and_ln1135_1_fu_272_p2 = (xor_ln1135_fu_255_p2 & icmp_ln1137_fu_266_p2);
assign and_ln1135_fu_294_p2 = (xor_ln1135_fu_255_p2 & icmp_ln1139_fu_260_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign empty_150_fu_306_p2 = (icmp_ln1139_mid22927_fu_300_p2 | and_ln1135_1_fu_272_p2);
assign empty_151_fu_312_p2 = (icmp_ln1136_reg_622 | empty_150_fu_306_p2);
assign empty_152_fu_325_p1 = v585_mid2_fu_317_p3[7:0];
assign empty_153_fu_465_p1 = select_ln1136_fu_411_p3[1:0];
assign empty_154_fu_479_p1 = select_ln1137_fu_424_p3[1:0];
assign empty_fu_278_p2 = (icmp_ln1136_reg_622 | and_ln1135_1_fu_272_p2);
assign exitcond_flatten2916_not_fu_283_p2 = (icmp_ln1137_fu_266_p2 ^ 1'd1);
assign grp_fu_552_p1 = grp_fu_552_p10;
assign grp_fu_552_p10 = v41_q0;
assign grp_fu_552_p2 = ((empty_151_reg_647_pp0_iter5_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v588_load);
assign icmp_ln1135_fu_207_p2 = ((indvar_flatten2952_fu_114 == 22'd2097152) ? 1'b1 : 1'b0);
assign icmp_ln1136_fu_219_p2 = ((indvar_flatten2928_fu_106 == 14'd4096) ? 1'b1 : 1'b0);
assign icmp_ln1137_fu_266_p2 = ((indvar_flatten2914_fu_98 == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln1139_1_fu_335_p2 = ((add_ln1139_fu_329_p2 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln1139_fu_260_p2 = ((v585_fu_90 == 9'd256) ? 1'b1 : 1'b0);
assign icmp_ln1139_mid22927_fu_300_p2 = (not_exitcond_flatten2916_mid22951_fu_289_p2 & and_ln1135_fu_294_p2);
assign not_exitcond_flatten2916_mid22951_fu_289_p2 = (icmp_ln1136_reg_622 | exitcond_flatten2916_not_fu_283_p2);
assign select_ln1135_1_fu_387_p3 = ((icmp_ln1136_reg_622_pp0_iter2_reg[0:0] == 1'b1) ? add_ln1135_fu_374_p2 : v582_fu_110);
assign select_ln1135_fu_380_p3 = ((icmp_ln1136_reg_622_pp0_iter2_reg[0:0] == 1'b1) ? 3'd0 : v583_fu_102);
assign select_ln1136_1_fu_231_p3 = ((icmp_ln1136_fu_219_p2[0:0] == 1'b1) ? 14'd1 : add_ln1136_1_fu_225_p2);
assign select_ln1136_fu_411_p3 = ((and_ln1135_1_reg_632[0:0] == 1'b1) ? add_ln1136_fu_398_p2 : select_ln1135_fu_380_p3);
assign select_ln1137_1_fu_347_p3 = ((empty_fu_278_p2[0:0] == 1'b1) ? 12'd1 : add_ln1137_1_fu_341_p2);
assign select_ln1137_fu_424_p3 = ((icmp_ln1139_mid22927_reg_642[0:0] == 1'b1) ? add_ln1137_fu_418_p2 : v584_mid22921_fu_404_p3);
assign tmp_76_fu_439_p3 = {{trunc_ln1136_fu_394_p1}, {2'd0}};
assign tmp_77_fu_497_p6 = {{{{{empty_152_reg_657}, {empty_153_fu_465_p1}}, {1'd0}}, {empty_154_fu_479_p1}}, {1'd0}};
assign tmp_fu_457_p3 = {{add_ln1138_fu_451_p2}, {2'd0}};
assign tmp_s_fu_431_p3 = {{trunc_ln1136_fu_394_p1}, {8'd0}};
assign trunc_ln1136_fu_394_p1 = select_ln1135_1_fu_387_p3[8:0];
assign v18_Addr_A = v18_Addr_A_orig << 32'd0;
assign v18_Addr_A_orig = zext_ln1141_1_fu_492_p1;
assign v18_Din_A = 8'd0;
assign v18_EN_A = v18_EN_A_local;
assign v18_WEN_A = 1'd0;
assign v35_address1 = zext_ln1138_2_fu_544_p1;
assign v35_ce1 = v35_ce1_local;
assign v35_d1 = grp_fu_552_p3;
assign v35_we1 = v35_we1_local;
assign v41_address0 = zext_ln1140_1_fu_510_p1;
assign v41_ce0 = v41_ce0_local;
assign v584_mid22921_fu_404_p3 = ((empty_reg_637[0:0] == 1'b1) ? 3'd0 : v584_fu_94);
assign v585_mid2_fu_317_p3 = ((empty_151_fu_312_p2[0:0] == 1'b1) ? 9'd0 : v585_fu_90);
assign xor_ln1135_fu_255_p2 = (icmp_ln1136_reg_622 ^ 1'd1);
assign zext_ln1138_1_fu_469_p1 = select_ln1137_fu_424_p3;
assign zext_ln1138_2_fu_544_p1 = add_ln1138_1_reg_666_pp0_iter6_reg;
assign zext_ln1138_fu_447_p1 = select_ln1136_fu_411_p3;
assign zext_ln1140_1_fu_510_p1 = tmp_77_fu_497_p6;
assign zext_ln1141_1_fu_492_p1 = add_ln1141_fu_486_p2;
assign zext_ln1141_fu_483_p1 = v585_mid2_reg_652;
endmodule 