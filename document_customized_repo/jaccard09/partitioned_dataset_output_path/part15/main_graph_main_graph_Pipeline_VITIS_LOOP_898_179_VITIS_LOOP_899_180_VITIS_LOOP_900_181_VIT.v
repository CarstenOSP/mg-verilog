
module main_graph_main_graph_Pipeline_VITIS_LOOP_898_179_VITIS_LOOP_899_180_VITIS_LOOP_900_181_VIT (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v50_address1,v50_ce1,v50_we1,v50_d1,v13_Addr_A,v13_EN_A,v13_WEN_A,v13_Din_A,v13_Dout_A,v56_address0,v56_ce0,v56_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] v50_address1;
output   v50_ce1;
output   v50_we1;
output  [7:0] v50_d1;
output  [31:0] v13_Addr_A;
output   v13_EN_A;
output  [0:0] v13_WEN_A;
output  [7:0] v13_Din_A;
input  [7:0] v13_Dout_A;
output  [14:0] v56_address0;
output   v56_ce0;
input  [6:0] v56_q0;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln898_fu_204_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln898_reg_622;
wire   [0:0] icmp_ln899_fu_230_p2;
reg   [0:0] icmp_ln899_reg_626;
wire   [0:0] and_ln898_1_fu_254_p2;
reg   [0:0] and_ln898_1_reg_632;
wire   [0:0] empty_fu_260_p2;
reg   [0:0] empty_reg_637;
wire   [0:0] icmp_ln902_mid22074_fu_284_p2;
reg   [0:0] icmp_ln902_mid22074_reg_642;
wire   [0:0] empty_31_fu_296_p2;
reg   [0:0] empty_31_reg_647;
reg   [0:0] empty_31_reg_647_pp0_iter2_reg;
reg   [0:0] empty_31_reg_647_pp0_iter3_reg;
reg   [0:0] empty_31_reg_647_pp0_iter4_reg;
wire   [7:0] v442_mid2_fu_302_p3;
reg   [7:0] v442_mid2_reg_652;
wire   [6:0] empty_32_fu_310_p1;
reg   [6:0] empty_32_reg_657;
wire   [0:0] icmp_ln902_1_fu_320_p2;
reg   [0:0] icmp_ln902_1_reg_662;
reg   [0:0] icmp_ln902_1_reg_662_pp0_iter2_reg;
reg   [0:0] icmp_ln902_1_reg_662_pp0_iter3_reg;
reg   [0:0] icmp_ln902_1_reg_662_pp0_iter4_reg;
reg   [0:0] icmp_ln902_1_reg_662_pp0_iter5_reg;
wire   [13:0] add_ln901_1_fu_477_p2;
reg   [13:0] add_ln901_1_reg_666;
reg   [13:0] add_ln901_1_reg_666_pp0_iter3_reg;
reg   [13:0] add_ln901_1_reg_666_pp0_iter4_reg;
reg   [13:0] add_ln901_1_reg_666_pp0_iter5_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
wire   [63:0] zext_ln904_1_fu_496_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln903_1_fu_514_p1;
wire   [63:0] zext_ln901_2_fu_548_p1;
reg   [7:0] v445_fu_86;
wire   [7:0] grp_fu_556_p3;
reg   [7:0] ap_sig_allocacmp_v445_load;
wire    ap_loop_init;
reg   [7:0] v442_fu_90;
wire   [7:0] add_ln902_fu_314_p2;
reg   [3:0] v441_fu_94;
wire   [3:0] select_ln900_fu_428_p3;
reg   [11:0] indvar_flatten2061_fu_98;
wire   [11:0] select_ln900_1_fu_332_p3;
reg   [3:0] v440_fu_102;
wire   [3:0] select_ln899_fu_415_p3;
reg   [14:0] indvar_flatten2075_fu_106;
wire   [14:0] select_ln899_1_fu_346_p3;
reg   [8:0] v439_fu_110;
wire   [8:0] select_ln898_1_fu_391_p3;
reg   [21:0] indvar_flatten2099_fu_114;
wire   [21:0] add_ln898_1_fu_210_p2;
reg   [21:0] ap_sig_allocacmp_indvar_flatten2099_load;
reg    v56_ce0_local;
reg    v13_EN_A_local;
wire   [31:0] v13_Addr_A_orig;
reg    v50_we1_local;
reg    v50_ce1_local;
wire   [0:0] icmp_ln900_fu_248_p2;
wire   [0:0] xor_ln898_fu_236_p2;
wire   [0:0] exitcond_flatten2063_not_fu_266_p2;
wire   [0:0] icmp_ln902_fu_242_p2;
wire   [0:0] and_ln898_fu_278_p2;
wire   [0:0] not_exitcond_flatten2063_mid22098_fu_272_p2;
wire   [0:0] empty_30_fu_290_p2;
wire   [11:0] add_ln900_1_fu_326_p2;
wire   [14:0] add_ln899_1_fu_340_p2;
wire   [8:0] add_ln898_fu_378_p2;
wire   [3:0] select_ln898_fu_384_p3;
wire   [3:0] add_ln899_fu_402_p2;
wire   [3:0] v441_mid22068_fu_408_p3;
wire   [3:0] add_ln900_fu_422_p2;
wire   [7:0] trunc_ln899_fu_398_p1;
wire   [10:0] tmp_2_fu_443_p3;
wire   [10:0] zext_ln901_fu_451_p1;
wire   [10:0] add_ln901_fu_455_p2;
wire   [13:0] tmp_fu_461_p3;
wire   [13:0] zext_ln901_1_fu_473_p1;
wire   [14:0] tmp_s_fu_435_p3;
wire   [14:0] zext_ln904_fu_487_p1;
wire   [14:0] add_ln904_fu_490_p2;
wire   [2:0] empty_33_fu_469_p1;
wire   [2:0] empty_34_fu_483_p1;
wire   [14:0] tmp_3_fu_501_p6;
wire   [6:0] grp_fu_556_p1;
wire   [7:0] grp_fu_556_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [7:0] grp_fu_556_p10;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 v445_fu_86 = 8'd0;
#0 v442_fu_90 = 8'd0;
#0 v441_fu_94 = 4'd0;
#0 indvar_flatten2061_fu_98 = 12'd0;
#0 v440_fu_102 = 4'd0;
#0 indvar_flatten2075_fu_106 = 15'd0;
#0 v439_fu_110 = 9'd0;
#0 indvar_flatten2099_fu_114 = 22'd0;
#0 ap_done_reg = 1'b0;
end
main_graph_mac_muladd_8s_7ns_8ns_8_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.din2_WIDTH( 8 ),.dout_WIDTH( 8 ))
mac_muladd_8s_7ns_8ns_8_4_1_U234(.clk(ap_clk),.reset(ap_rst),.din0(v13_Dout_A),.din1(grp_fu_556_p1),.din2(grp_fu_556_p2),.ce(1'b1),.dout(grp_fu_556_p3));
main_graph_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2061_fu_98 <= 12'd0;
        end else if (((icmp_ln898_reg_622 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten2061_fu_98 <= select_ln900_1_fu_332_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2075_fu_106 <= 15'd0;
        end else if (((icmp_ln898_reg_622 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            indvar_flatten2075_fu_106 <= select_ln899_1_fu_346_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln898_fu_204_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten2099_fu_114 <= add_ln898_1_fu_210_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten2099_fu_114 <= 22'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v439_fu_110 <= 9'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v439_fu_110 <= select_ln898_1_fu_391_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v440_fu_102 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v440_fu_102 <= select_ln899_fu_415_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v441_fu_94 <= 4'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v441_fu_94 <= select_ln900_fu_428_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v442_fu_90 <= 8'd0;
        end else if (((icmp_ln898_reg_622 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            v442_fu_90 <= add_ln902_fu_314_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            v445_fu_86 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter6 == 1'b1)) begin
            v445_fu_86 <= grp_fu_556_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln901_1_reg_666 <= add_ln901_1_fu_477_p2;
        add_ln901_1_reg_666_pp0_iter3_reg <= add_ln901_1_reg_666;
        add_ln901_1_reg_666_pp0_iter4_reg <= add_ln901_1_reg_666_pp0_iter3_reg;
        add_ln901_1_reg_666_pp0_iter5_reg <= add_ln901_1_reg_666_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        empty_31_reg_647_pp0_iter2_reg <= empty_31_reg_647;
        empty_31_reg_647_pp0_iter3_reg <= empty_31_reg_647_pp0_iter2_reg;
        empty_31_reg_647_pp0_iter4_reg <= empty_31_reg_647_pp0_iter3_reg;
        icmp_ln902_1_reg_662_pp0_iter2_reg <= icmp_ln902_1_reg_662;
        icmp_ln902_1_reg_662_pp0_iter3_reg <= icmp_ln902_1_reg_662_pp0_iter2_reg;
        icmp_ln902_1_reg_662_pp0_iter4_reg <= icmp_ln902_1_reg_662_pp0_iter3_reg;
        icmp_ln902_1_reg_662_pp0_iter5_reg <= icmp_ln902_1_reg_662_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        and_ln898_1_reg_632 <= and_ln898_1_fu_254_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        empty_31_reg_647 <= empty_31_fu_296_p2;
        empty_32_reg_657 <= empty_32_fu_310_p1;
        empty_reg_637 <= empty_fu_260_p2;
        icmp_ln898_reg_622 <= icmp_ln898_fu_204_p2;
        icmp_ln899_reg_626 <= icmp_ln899_fu_230_p2;
        icmp_ln902_1_reg_662 <= icmp_ln902_1_fu_320_p2;
        icmp_ln902_mid22074_reg_642 <= icmp_ln902_mid22074_fu_284_p2;
        v442_mid2_reg_652 <= v442_mid2_fu_302_p3;
    end
end
always @ (*) begin
    if (((icmp_ln898_fu_204_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln898_reg_622 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten2099_load = 22'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten2099_load = indvar_flatten2099_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        ap_sig_allocacmp_v445_load = grp_fu_556_p3;
    end else begin
        ap_sig_allocacmp_v445_load = v445_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v13_EN_A_local = 1'b1;
    end else begin
        v13_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v50_ce1_local = 1'b1;
    end else begin
        v50_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln902_1_reg_662_pp0_iter5_reg == 1'd1))) begin
        v50_we1_local = 1'b1;
    end else begin
        v50_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v56_ce0_local = 1'b1;
    end else begin
        v56_ce0_local = 1'b0;
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
assign add_ln898_1_fu_210_p2 = (ap_sig_allocacmp_indvar_flatten2099_load + 22'd1);
assign add_ln898_fu_378_p2 = (v439_fu_110 + 9'd1);
assign add_ln899_1_fu_340_p2 = (indvar_flatten2075_fu_106 + 15'd1);
assign add_ln899_fu_402_p2 = (select_ln898_fu_384_p3 + 4'd1);
assign add_ln900_1_fu_326_p2 = (indvar_flatten2061_fu_98 + 12'd1);
assign add_ln900_fu_422_p2 = (v441_mid22068_fu_408_p3 + 4'd1);
assign add_ln901_1_fu_477_p2 = (tmp_fu_461_p3 + zext_ln901_1_fu_473_p1);
assign add_ln901_fu_455_p2 = (tmp_2_fu_443_p3 + zext_ln901_fu_451_p1);
assign add_ln902_fu_314_p2 = (v442_mid2_fu_302_p3 + 8'd1);
assign add_ln904_fu_490_p2 = (tmp_s_fu_435_p3 + zext_ln904_fu_487_p1);
assign and_ln898_1_fu_254_p2 = (xor_ln898_fu_236_p2 & icmp_ln900_fu_248_p2);
assign and_ln898_fu_278_p2 = (xor_ln898_fu_236_p2 & icmp_ln902_fu_242_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_30_fu_290_p2 = (icmp_ln902_mid22074_fu_284_p2 | and_ln898_1_fu_254_p2);
assign empty_31_fu_296_p2 = (icmp_ln899_fu_230_p2 | empty_30_fu_290_p2);
assign empty_32_fu_310_p1 = v442_mid2_fu_302_p3[6:0];
assign empty_33_fu_469_p1 = select_ln899_fu_415_p3[2:0];
assign empty_34_fu_483_p1 = select_ln900_fu_428_p3[2:0];
assign empty_fu_260_p2 = (icmp_ln899_fu_230_p2 | and_ln898_1_fu_254_p2);
assign exitcond_flatten2063_not_fu_266_p2 = (icmp_ln900_fu_248_p2 ^ 1'd1);
assign grp_fu_556_p1 = grp_fu_556_p10;
assign grp_fu_556_p10 = v56_q0;
assign grp_fu_556_p2 = ((empty_31_reg_647_pp0_iter4_reg[0:0] == 1'b1) ? 8'd0 : ap_sig_allocacmp_v445_load);
assign icmp_ln898_fu_204_p2 = ((ap_sig_allocacmp_indvar_flatten2099_load == 22'd2097152) ? 1'b1 : 1'b0);
assign icmp_ln899_fu_230_p2 = ((indvar_flatten2075_fu_106 == 15'd8192) ? 1'b1 : 1'b0);
assign icmp_ln900_fu_248_p2 = ((indvar_flatten2061_fu_98 == 12'd1024) ? 1'b1 : 1'b0);
assign icmp_ln902_1_fu_320_p2 = ((add_ln902_fu_314_p2 == 8'd128) ? 1'b1 : 1'b0);
assign icmp_ln902_fu_242_p2 = ((v442_fu_90 == 8'd128) ? 1'b1 : 1'b0);
assign icmp_ln902_mid22074_fu_284_p2 = (not_exitcond_flatten2063_mid22098_fu_272_p2 & and_ln898_fu_278_p2);
assign not_exitcond_flatten2063_mid22098_fu_272_p2 = (icmp_ln899_fu_230_p2 | exitcond_flatten2063_not_fu_266_p2);
assign select_ln898_1_fu_391_p3 = ((icmp_ln899_reg_626[0:0] == 1'b1) ? add_ln898_fu_378_p2 : v439_fu_110);
assign select_ln898_fu_384_p3 = ((icmp_ln899_reg_626[0:0] == 1'b1) ? 4'd0 : v440_fu_102);
assign select_ln899_1_fu_346_p3 = ((icmp_ln899_fu_230_p2[0:0] == 1'b1) ? 15'd1 : add_ln899_1_fu_340_p2);
assign select_ln899_fu_415_p3 = ((and_ln898_1_reg_632[0:0] == 1'b1) ? add_ln899_fu_402_p2 : select_ln898_fu_384_p3);
assign select_ln900_1_fu_332_p3 = ((empty_fu_260_p2[0:0] == 1'b1) ? 12'd1 : add_ln900_1_fu_326_p2);
assign select_ln900_fu_428_p3 = ((icmp_ln902_mid22074_reg_642[0:0] == 1'b1) ? add_ln900_fu_422_p2 : v441_mid22068_fu_408_p3);
assign tmp_2_fu_443_p3 = {{trunc_ln899_fu_398_p1}, {3'd0}};
assign tmp_3_fu_501_p6 = {{{{{empty_32_reg_657}, {empty_33_fu_469_p1}}, {1'd0}}, {empty_34_fu_483_p1}}, {1'd0}};
assign tmp_fu_461_p3 = {{add_ln901_fu_455_p2}, {3'd0}};
assign tmp_s_fu_435_p3 = {{trunc_ln899_fu_398_p1}, {7'd0}};
assign trunc_ln899_fu_398_p1 = select_ln898_1_fu_391_p3[7:0];
assign v13_Addr_A = v13_Addr_A_orig << 32'd0;
assign v13_Addr_A_orig = zext_ln904_1_fu_496_p1;
assign v13_Din_A = 8'd0;
assign v13_EN_A = v13_EN_A_local;
assign v13_WEN_A = 1'd0;
assign v441_mid22068_fu_408_p3 = ((empty_reg_637[0:0] == 1'b1) ? 4'd0 : v441_fu_94);
assign v442_mid2_fu_302_p3 = ((empty_31_fu_296_p2[0:0] == 1'b1) ? 8'd0 : v442_fu_90);
assign v50_address1 = zext_ln901_2_fu_548_p1;
assign v50_ce1 = v50_ce1_local;
assign v50_d1 = grp_fu_556_p3;
assign v50_we1 = v50_we1_local;
assign v56_address0 = zext_ln903_1_fu_514_p1;
assign v56_ce0 = v56_ce0_local;
assign xor_ln898_fu_236_p2 = (icmp_ln899_fu_230_p2 ^ 1'd1);
assign zext_ln901_1_fu_473_p1 = select_ln900_fu_428_p3;
assign zext_ln901_2_fu_548_p1 = add_ln901_1_reg_666_pp0_iter5_reg;
assign zext_ln901_fu_451_p1 = select_ln899_fu_415_p3;
assign zext_ln903_1_fu_514_p1 = tmp_3_fu_501_p6;
assign zext_ln904_1_fu_496_p1 = add_ln904_fu_490_p2;
assign zext_ln904_fu_487_p1 = v442_mid2_reg_652;
endmodule 
