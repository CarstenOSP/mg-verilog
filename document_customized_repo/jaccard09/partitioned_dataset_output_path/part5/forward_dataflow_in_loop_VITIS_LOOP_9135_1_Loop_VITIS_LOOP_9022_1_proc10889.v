
module forward_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v13724_1_address0,v13724_1_ce0,v13724_1_we0,v13724_1_d0,v13724_0_address0,v13724_0_ce0,v13724_0_we0,v13724_0_d0,p_read,v7238_1_i_address0,v7238_1_i_ce0,v7238_1_i_q0,v7238_i_address0,v7238_i_ce0,v7238_i_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [15:0] v13724_1_address0;
output   v13724_1_ce0;
output   v13724_1_we0;
output  [7:0] v13724_1_d0;
output  [15:0] v13724_0_address0;
output   v13724_0_ce0;
output   v13724_0_we0;
output  [7:0] v13724_0_d0;
input  [4:0] p_read;
output  [10:0] v7238_1_i_address0;
output   v7238_1_i_ce0;
input  [7:0] v7238_1_i_q0;
output  [10:0] v7238_i_address0;
output   v7238_i_ce0;
input  [7:0] v7238_i_q0;
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
wire   [0:0] icmp_ln9022_fu_308_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] mul_i37_i_fu_230_p3;
reg   [7:0] mul_i37_i_reg_695;
reg   [7:0] mul_i37_i_reg_695_pp0_iter1_reg;
wire   [5:0] mul9_i66_cast_i_cast_cast_fu_246_p3;
reg   [5:0] mul9_i66_cast_i_cast_cast_reg_700;
reg   [5:0] mul9_i66_cast_i_cast_cast_reg_700_pp0_iter1_reg;
wire   [3:0] zext_ln9080_cast_cast_cast_cast_fu_258_p3;
reg   [3:0] zext_ln9080_cast_cast_cast_cast_reg_705;
wire   [2:0] p_udiv2_i_cast_cast_cast_cast_fu_266_p3;
reg   [2:0] p_udiv2_i_cast_cast_cast_cast_reg_710;
reg   [2:0] p_udiv2_i_cast_cast_cast_cast_reg_710_pp0_iter1_reg;
reg   [2:0] p_udiv2_i_cast_cast_cast_cast_reg_710_pp0_iter2_reg;
reg   [0:0] icmp_ln9022_reg_715;
reg   [0:0] icmp_ln9022_reg_715_pp0_iter1_reg;
wire   [5:0] v7186_fu_357_p3;
reg   [5:0] v7186_reg_719;
wire   [4:0] v7187_fu_385_p3;
reg   [4:0] v7187_reg_724;
wire   [10:0] add_ln9026_fu_427_p2;
reg   [10:0] add_ln9026_reg_729;
reg   [1:0] lshr_ln_reg_735;
reg   [1:0] lshr_ln_reg_735_pp0_iter2_reg;
reg   [2:0] lshr_ln3_reg_741;
reg   [2:0] lshr_ln3_reg_741_pp0_iter2_reg;
wire   [0:0] icmp_ln9024_fu_482_p2;
reg   [0:0] icmp_ln9024_reg_746;
wire   [0:0] icmp_ln9023_fu_488_p2;
reg   [0:0] icmp_ln9023_reg_751;
wire   [15:0] sub_ln9024_fu_604_p2;
reg   [15:0] sub_ln9024_reg_756;
reg   [0:0] ap_phi_mux_icmp_ln902339_phi_fu_202_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln902438_phi_fu_213_p4;
wire   [63:0] zext_ln9026_4_fu_619_p1;
wire   [63:0] zext_ln9027_1_fu_642_p1;
wire   [63:0] zext_ln9029_5_fu_655_p1;
reg   [10:0] indvar_flatten1233_fu_118;
wire   [10:0] add_ln9022_1_fu_302_p2;
reg   [10:0] ap_sig_allocacmp_indvar_flatten1233_load;
reg   [5:0] v718634_fu_122;
reg   [6:0] indvar_flatten35_fu_126;
wire   [6:0] select_ln9023_1_fu_474_p3;
reg   [4:0] v718736_fu_130;
reg   [2:0] v718837_fu_134;
wire   [2:0] v7188_fu_462_p2;
reg    v7238_1_i_ce0_local;
reg    v7238_i_ce0_local;
reg    v13724_0_we0_local;
reg    v13724_0_ce0_local;
reg    v13724_1_we0_local;
reg    v13724_1_ce0_local;
wire   [2:0] tmp_fu_220_p4;
wire   [0:0] tmp_16_fu_238_p3;
wire   [0:0] empty_fu_254_p1;
wire   [0:0] xor_ln9022_fu_345_p2;
wire   [5:0] add_ln9022_fu_331_p2;
wire   [4:0] select_ln9022_fu_337_p3;
wire   [0:0] and_ln9022_fu_351_p2;
wire   [0:0] empty_138_fu_371_p2;
wire   [4:0] add_ln9023_fu_365_p2;
wire   [9:0] tmp_17_fu_393_p3;
wire   [7:0] tmp_18_fu_405_p3;
wire   [10:0] zext_ln9026_fu_401_p1;
wire   [10:0] zext_ln9026_1_fu_413_p1;
wire   [10:0] add_ln9026_2_fu_417_p2;
wire   [10:0] zext_ln9026_2_fu_423_p1;
wire   [2:0] v7188_mid2_fu_377_p3;
wire   [3:0] zext_ln9024_fu_433_p1;
wire   [3:0] add_ln9027_fu_447_p2;
wire   [6:0] add_ln9023_1_fu_468_p2;
wire   [7:0] zext_ln9022_fu_514_p1;
wire   [7:0] empty_139_fu_517_p2;
wire   [12:0] tmp_19_fu_522_p3;
wire   [10:0] tmp_20_fu_534_p3;
wire   [13:0] zext_ln9029_fu_530_p1;
wire   [13:0] zext_ln9029_1_fu_542_p1;
wire   [10:0] shl_ln9026_fu_552_p2;
wire   [5:0] zext_ln9023_fu_562_p1;
wire   [5:0] empty_140_fu_565_p2;
wire   [13:0] add_ln9029_2_fu_546_p2;
wire   [13:0] zext_ln9029_2_fu_570_p1;
wire   [13:0] add_ln9029_fu_574_p2;
wire   [12:0] trunc_ln9029_fu_580_p1;
wire   [14:0] tmp_21_fu_584_p3;
wire   [15:0] tmp_22_fu_592_p3;
wire   [15:0] zext_ln9029_3_fu_600_p1;
wire   [10:0] sub_ln9023_fu_557_p2;
wire   [10:0] zext_ln9026_3_fu_610_p1;
wire   [10:0] add_ln9026_1_fu_613_p2;
wire   [2:0] zext_ln9024_1_fu_625_p1;
wire   [2:0] add_ln9027_1_fu_628_p2;
wire   [15:0] zext_ln9027_fu_633_p1;
wire   [15:0] add_ln9027_2_fu_637_p2;
wire   [15:0] zext_ln9029_4_fu_647_p1;
wire   [15:0] add_ln9029_1_fu_650_p2;
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
reg    ap_condition_173;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1233_fu_118 = 11'd0;
#0 v718634_fu_122 = 6'd0;
#0 indvar_flatten35_fu_126 = 7'd0;
#0 v718736_fu_130 = 5'd0;
#0 v718837_fu_134 = 3'd0;
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
    if ((1'b1 == ap_condition_173)) begin
        indvar_flatten1233_fu_118 <= add_ln9022_1_fu_302_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten35_fu_126 <= 7'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten35_fu_126 <= select_ln9023_1_fu_474_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v718634_fu_122 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v718634_fu_122 <= v7186_fu_357_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v718736_fu_130 <= 5'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v718736_fu_130 <= v7187_fu_385_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v718837_fu_134 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v718837_fu_134 <= v7188_fu_462_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln9026_reg_729 <= add_ln9026_fu_427_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln9022_reg_715 <= icmp_ln9022_fu_308_p2;
        icmp_ln9022_reg_715_pp0_iter1_reg <= icmp_ln9022_reg_715;
        lshr_ln3_reg_741 <= {{add_ln9027_fu_447_p2[3:1]}};
        lshr_ln_reg_735 <= {{v7188_mid2_fu_377_p3[2:1]}};
        mul9_i66_cast_i_cast_cast_reg_700[2] <= mul9_i66_cast_i_cast_cast_fu_246_p3[2];
mul9_i66_cast_i_cast_cast_reg_700[4] <= mul9_i66_cast_i_cast_cast_fu_246_p3[4];
        mul9_i66_cast_i_cast_cast_reg_700_pp0_iter1_reg[2] <= mul9_i66_cast_i_cast_cast_reg_700[2];
mul9_i66_cast_i_cast_cast_reg_700_pp0_iter1_reg[4] <= mul9_i66_cast_i_cast_cast_reg_700[4];
        mul_i37_i_reg_695[7 : 5] <= mul_i37_i_fu_230_p3[7 : 5];
        mul_i37_i_reg_695_pp0_iter1_reg[7 : 5] <= mul_i37_i_reg_695[7 : 5];
        p_udiv2_i_cast_cast_cast_cast_reg_710[1 : 0] <= p_udiv2_i_cast_cast_cast_cast_fu_266_p3[1 : 0];
        p_udiv2_i_cast_cast_cast_cast_reg_710_pp0_iter1_reg[1 : 0] <= p_udiv2_i_cast_cast_cast_cast_reg_710[1 : 0];
        v7186_reg_719 <= v7186_fu_357_p3;
        v7187_reg_724 <= v7187_fu_385_p3;
        zext_ln9080_cast_cast_cast_cast_reg_705[2 : 1] <= zext_ln9080_cast_cast_cast_cast_fu_258_p3[2 : 1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln9023_reg_751 <= icmp_ln9023_fu_488_p2;
        icmp_ln9024_reg_746 <= icmp_ln9024_fu_482_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln3_reg_741_pp0_iter2_reg <= lshr_ln3_reg_741;
        lshr_ln_reg_735_pp0_iter2_reg <= lshr_ln_reg_735;
        p_udiv2_i_cast_cast_cast_cast_reg_710_pp0_iter2_reg[1 : 0] <= p_udiv2_i_cast_cast_cast_cast_reg_710_pp0_iter1_reg[1 : 0];
        sub_ln9024_reg_756[15 : 1] <= sub_ln9024_fu_604_p2[15 : 1];
    end
end
always @ (*) begin
    if (((icmp_ln9022_fu_308_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln9022_reg_715_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln902339_phi_fu_202_p4 = icmp_ln9023_reg_751;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln902339_phi_fu_202_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln902339_phi_fu_202_p4 = icmp_ln9023_reg_751;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln9022_reg_715_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln902438_phi_fu_213_p4 = icmp_ln9024_reg_746;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln902438_phi_fu_213_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln902438_phi_fu_213_p4 = icmp_ln9024_reg_746;
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
        ap_sig_allocacmp_indvar_flatten1233_load = 11'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1233_load = indvar_flatten1233_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13724_0_ce0_local = 1'b1;
    end else begin
        v13724_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13724_0_we0_local = 1'b1;
    end else begin
        v13724_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13724_1_ce0_local = 1'b1;
    end else begin
        v13724_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13724_1_we0_local = 1'b1;
    end else begin
        v13724_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7238_1_i_ce0_local = 1'b1;
    end else begin
        v7238_1_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v7238_i_ce0_local = 1'b1;
    end else begin
        v7238_i_ce0_local = 1'b0;
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
assign add_ln9022_1_fu_302_p2 = (ap_sig_allocacmp_indvar_flatten1233_load + 11'd1);
assign add_ln9022_fu_331_p2 = (v718634_fu_122 + 6'd1);
assign add_ln9023_1_fu_468_p2 = (indvar_flatten35_fu_126 + 7'd1);
assign add_ln9023_fu_365_p2 = (select_ln9022_fu_337_p3 + 5'd1);
assign add_ln9026_1_fu_613_p2 = (sub_ln9023_fu_557_p2 + zext_ln9026_3_fu_610_p1);
assign add_ln9026_2_fu_417_p2 = (zext_ln9026_fu_401_p1 + zext_ln9026_1_fu_413_p1);
assign add_ln9026_fu_427_p2 = (add_ln9026_2_fu_417_p2 + zext_ln9026_2_fu_423_p1);
assign add_ln9027_1_fu_628_p2 = (zext_ln9024_1_fu_625_p1 + p_udiv2_i_cast_cast_cast_cast_reg_710_pp0_iter2_reg);
assign add_ln9027_2_fu_637_p2 = (sub_ln9024_reg_756 + zext_ln9027_fu_633_p1);
assign add_ln9027_fu_447_p2 = (zext_ln9080_cast_cast_cast_cast_reg_705 + zext_ln9024_fu_433_p1);
assign add_ln9029_1_fu_650_p2 = (sub_ln9024_reg_756 + zext_ln9029_4_fu_647_p1);
assign add_ln9029_2_fu_546_p2 = (zext_ln9029_fu_530_p1 + zext_ln9029_1_fu_542_p1);
assign add_ln9029_fu_574_p2 = (add_ln9029_2_fu_546_p2 + zext_ln9029_2_fu_570_p1);
assign and_ln9022_fu_351_p2 = (xor_ln9022_fu_345_p2 & ap_phi_mux_icmp_ln902438_phi_fu_213_p4);
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
    ap_condition_173 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_138_fu_371_p2 = (ap_phi_mux_icmp_ln902339_phi_fu_202_p4 | and_ln9022_fu_351_p2);
assign empty_139_fu_517_p2 = (mul_i37_i_reg_695_pp0_iter1_reg + zext_ln9022_fu_514_p1);
assign empty_140_fu_565_p2 = (mul9_i66_cast_i_cast_cast_reg_700_pp0_iter1_reg + zext_ln9023_fu_562_p1);
assign empty_fu_254_p1 = p_read[0:0];
assign icmp_ln9022_fu_308_p2 = ((ap_sig_allocacmp_indvar_flatten1233_load == 11'd1919) ? 1'b1 : 1'b0);
assign icmp_ln9023_fu_488_p2 = ((select_ln9023_1_fu_474_p3 == 7'd60) ? 1'b1 : 1'b0);
assign icmp_ln9024_fu_482_p2 = ((v7188_fu_462_p2 == 3'd6) ? 1'b1 : 1'b0);
assign mul9_i66_cast_i_cast_cast_fu_246_p3 = ((tmp_16_fu_238_p3[0:0] == 1'b1) ? 6'd20 : 6'd0);
assign mul_i37_i_fu_230_p3 = {{tmp_fu_220_p4}, {5'd0}};
assign p_udiv2_i_cast_cast_cast_cast_fu_266_p3 = ((empty_fu_254_p1[0:0] == 1'b1) ? 3'd3 : 3'd0);
assign select_ln9022_fu_337_p3 = ((ap_phi_mux_icmp_ln902339_phi_fu_202_p4[0:0] == 1'b1) ? 5'd0 : v718736_fu_130);
assign select_ln9023_1_fu_474_p3 = ((ap_phi_mux_icmp_ln902339_phi_fu_202_p4[0:0] == 1'b1) ? 7'd1 : add_ln9023_1_fu_468_p2);
assign shl_ln9026_fu_552_p2 = add_ln9026_reg_729 << 11'd2;
assign sub_ln9023_fu_557_p2 = (shl_ln9026_fu_552_p2 - add_ln9026_reg_729);
assign sub_ln9024_fu_604_p2 = (tmp_22_fu_592_p3 - zext_ln9029_3_fu_600_p1);
assign tmp_16_fu_238_p3 = p_read[32'd1];
assign tmp_17_fu_393_p3 = {{v7186_fu_357_p3}, {4'd0}};
assign tmp_18_fu_405_p3 = {{v7186_fu_357_p3}, {2'd0}};
assign tmp_19_fu_522_p3 = {{empty_139_fu_517_p2}, {5'd0}};
assign tmp_20_fu_534_p3 = {{empty_139_fu_517_p2}, {3'd0}};
assign tmp_21_fu_584_p3 = {{add_ln9029_fu_574_p2}, {1'd0}};
assign tmp_22_fu_592_p3 = {{trunc_ln9029_fu_580_p1}, {3'd0}};
assign tmp_fu_220_p4 = {{p_read[4:2]}};
assign trunc_ln9029_fu_580_p1 = add_ln9029_fu_574_p2[12:0];
assign v13724_0_address0 = zext_ln9027_1_fu_642_p1;
assign v13724_0_ce0 = v13724_0_ce0_local;
assign v13724_0_d0 = v7238_1_i_q0;
assign v13724_0_we0 = v13724_0_we0_local;
assign v13724_1_address0 = zext_ln9029_5_fu_655_p1;
assign v13724_1_ce0 = v13724_1_ce0_local;
assign v13724_1_d0 = v7238_i_q0;
assign v13724_1_we0 = v13724_1_we0_local;
assign v7186_fu_357_p3 = ((ap_phi_mux_icmp_ln902339_phi_fu_202_p4[0:0] == 1'b1) ? add_ln9022_fu_331_p2 : v718634_fu_122);
assign v7187_fu_385_p3 = ((and_ln9022_fu_351_p2[0:0] == 1'b1) ? add_ln9023_fu_365_p2 : select_ln9022_fu_337_p3);
assign v7188_fu_462_p2 = (v7188_mid2_fu_377_p3 + 3'd2);
assign v7188_mid2_fu_377_p3 = ((empty_138_fu_371_p2[0:0] == 1'b1) ? 3'd0 : v718837_fu_134);
assign v7238_1_i_address0 = zext_ln9026_4_fu_619_p1;
assign v7238_1_i_ce0 = v7238_1_i_ce0_local;
assign v7238_i_address0 = zext_ln9026_4_fu_619_p1;
assign v7238_i_ce0 = v7238_i_ce0_local;
assign xor_ln9022_fu_345_p2 = (ap_phi_mux_icmp_ln902339_phi_fu_202_p4 ^ 1'd1);
assign zext_ln9022_fu_514_p1 = v7186_reg_719;
assign zext_ln9023_fu_562_p1 = v7187_reg_724;
assign zext_ln9024_1_fu_625_p1 = lshr_ln_reg_735_pp0_iter2_reg;
assign zext_ln9024_fu_433_p1 = v7188_mid2_fu_377_p3;
assign zext_ln9026_1_fu_413_p1 = tmp_18_fu_405_p3;
assign zext_ln9026_2_fu_423_p1 = v7187_fu_385_p3;
assign zext_ln9026_3_fu_610_p1 = lshr_ln_reg_735;
assign zext_ln9026_4_fu_619_p1 = add_ln9026_1_fu_613_p2;
assign zext_ln9026_fu_401_p1 = tmp_17_fu_393_p3;
assign zext_ln9027_1_fu_642_p1 = add_ln9027_2_fu_637_p2;
assign zext_ln9027_fu_633_p1 = add_ln9027_1_fu_628_p2;
assign zext_ln9029_1_fu_542_p1 = tmp_20_fu_534_p3;
assign zext_ln9029_2_fu_570_p1 = empty_140_fu_565_p2;
assign zext_ln9029_3_fu_600_p1 = tmp_21_fu_584_p3;
assign zext_ln9029_4_fu_647_p1 = lshr_ln3_reg_741_pp0_iter2_reg;
assign zext_ln9029_5_fu_655_p1 = add_ln9029_1_fu_650_p2;
assign zext_ln9029_fu_530_p1 = tmp_19_fu_522_p3;
assign zext_ln9080_cast_cast_cast_cast_fu_258_p3 = ((empty_fu_254_p1[0:0] == 1'b1) ? 4'd6 : 4'd0);
always @ (posedge ap_clk) begin
    mul_i37_i_reg_695[4:0] <= 5'b00000;
    mul_i37_i_reg_695_pp0_iter1_reg[4:0] <= 5'b00000;
    mul9_i66_cast_i_cast_cast_reg_700[1:0] <= 2'b00;
    mul9_i66_cast_i_cast_cast_reg_700[3:3] <= 1'b0;
    mul9_i66_cast_i_cast_cast_reg_700[5] <= 1'b0;
    mul9_i66_cast_i_cast_cast_reg_700_pp0_iter1_reg[1:0] <= 2'b00;
    mul9_i66_cast_i_cast_cast_reg_700_pp0_iter1_reg[3:3] <= 1'b0;
    mul9_i66_cast_i_cast_cast_reg_700_pp0_iter1_reg[5] <= 1'b0;
    zext_ln9080_cast_cast_cast_cast_reg_705[0] <= 1'b0;
    zext_ln9080_cast_cast_cast_cast_reg_705[3] <= 1'b0;
    p_udiv2_i_cast_cast_cast_cast_reg_710[2] <= 1'b0;
    p_udiv2_i_cast_cast_cast_cast_reg_710_pp0_iter1_reg[2] <= 1'b0;
    p_udiv2_i_cast_cast_cast_cast_reg_710_pp0_iter2_reg[2] <= 1'b0;
    sub_ln9024_reg_756[0] <= 1'b0;
end
endmodule 
