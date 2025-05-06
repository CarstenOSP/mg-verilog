
module forward_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v4916_address0,v4916_ce0,v4916_we0,v4916_d0,v4916_1_address0,v4916_1_ce0,v4916_1_we0,v4916_1_d0,v4909,v16200_0_address0,v16200_0_ce0,v16200_0_q0,v16200_1_address0,v16200_1_ce0,v16200_1_q0,ap_return);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] v4916_address0;
output   v4916_ce0;
output   v4916_we0;
output  [7:0] v4916_d0;
output  [9:0] v4916_1_address0;
output   v4916_1_ce0;
output   v4916_1_we0;
output  [7:0] v4916_1_d0;
input  [6:0] v4909;
output  [16:0] v16200_0_address0;
output   v16200_0_ce0;
input  [7:0] v16200_0_q0;
output  [16:0] v16200_1_address0;
output   v16200_1_ce0;
input  [7:0] v16200_1_q0;
output  [4:0] ap_return;
reg ap_idle;
reg[4:0] ap_return;
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
wire   [0:0] icmp_ln6341_fu_352_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [4:0] empty_fu_224_p1;
reg   [4:0] empty_reg_798;
reg   [4:0] empty_reg_798_pp0_iter1_reg;
reg   [4:0] empty_reg_798_pp0_iter2_reg;
wire   [7:0] mul_i32_i_i_fu_238_p3;
reg   [7:0] mul_i32_i_i_reg_802;
wire   [6:0] p_udiv4_cast_i_i_fu_246_p3;
reg   [6:0] p_udiv4_cast_i_i_reg_807;
wire   [4:0] tmp_i_fu_282_p3;
reg   [4:0] tmp_i_reg_812;
wire   [4:0] thr_add2_cast_cast_i_cast_cast_i_cast_cast_fu_314_p1;
reg   [4:0] thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_817;
reg   [4:0] thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_817_pp0_iter1_reg;
reg   [0:0] icmp_ln6341_reg_822;
reg   [0:0] icmp_ln6341_reg_822_pp0_iter1_reg;
wire   [2:0] v4901_mid2_i_fu_421_p3;
reg   [2:0] v4901_mid2_i_reg_826;
wire   [2:0] select_ln6342_fu_429_p3;
reg   [2:0] select_ln6342_reg_832;
wire   [4:0] lshr_ln_i_fu_441_p4;
reg   [4:0] lshr_ln_i_reg_837;
wire   [11:0] add_ln6346_fu_548_p2;
reg   [11:0] add_ln6346_reg_843;
wire   [11:0] add_ln6348_1_fu_554_p2;
reg   [11:0] add_ln6348_1_reg_849;
wire   [0:0] icmp_ln6343_fu_580_p2;
reg   [0:0] icmp_ln6343_reg_855;
wire   [0:0] icmp_ln6342_fu_586_p2;
reg   [0:0] icmp_ln6342_reg_860;
wire   [9:0] add_ln6348_2_fu_710_p2;
reg   [9:0] add_ln6348_2_reg_865;
reg   [0:0] ap_phi_mux_icmp_ln634227_i_phi_fu_202_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln634326_i_phi_fu_213_p4;
wire   [63:0] zext_ln6346_4_fu_742_p1;
wire   [63:0] zext_ln6348_7_fu_753_p1;
wire   [63:0] zext_ln6348_6_fu_758_p1;
reg   [9:0] indvar_flatten1221_i_fu_118;
wire   [9:0] add_ln6341_1_fu_346_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten1221_i_load;
reg   [5:0] v489922_i_fu_122;
wire   [5:0] select_ln6341_1_fu_401_p3;
reg   [5:0] indvar_flatten23_i_fu_126;
wire   [5:0] select_ln6342_1_fu_572_p3;
reg   [2:0] v490024_i_fu_130;
reg   [2:0] v490125_i_fu_134;
wire   [2:0] add_ln6343_fu_560_p2;
reg    v16200_0_ce0_local;
reg    v16200_1_ce0_local;
reg    v4916_1_we0_local;
reg    v4916_1_ce0_local;
reg    v4916_we0_local;
reg    v4916_ce0_local;
wire   [2:0] tmp_45_i_fu_228_p4;
wire   [7:0] v4909_cast3_fu_220_p1;
wire   [0:0] tmp_fu_254_p3;
wire   [0:0] tmp_62_fu_262_p3;
wire   [1:0] tmp_49_i_fu_270_p3;
wire  signed [3:0] p_cast_i_fu_278_p1;
wire   [0:0] empty_179_fu_290_p1;
wire   [0:0] tmp_63_fu_294_p3;
wire   [1:0] thr_add2_i_i_fu_302_p3;
wire  signed [3:0] thr_add2_cast_cast_i_cast_cast_i_cast_fu_310_p1;
wire   [0:0] xor_ln6341_fu_389_p2;
wire   [5:0] add_ln6341_fu_375_p2;
wire   [2:0] select_ln6341_fu_381_p3;
wire   [0:0] and_ln6341_fu_395_p2;
wire   [0:0] empty_180_fu_415_p2;
wire   [2:0] add_ln6342_fu_409_p2;
wire   [7:0] zext_ln6341_fu_437_p1;
wire   [6:0] zext_ln6341_1_fu_451_p1;
wire   [6:0] empty_182_fu_460_p2;
wire   [8:0] tmp_64_fu_473_p3;
wire   [11:0] p_shl30_fu_465_p3;
wire   [11:0] zext_ln6346_fu_481_p1;
wire   [7:0] empty_181_fu_455_p2;
wire   [6:0] tmp_65_fu_491_p4;
wire   [8:0] tmp_66_fu_509_p3;
wire   [11:0] p_shl28_fu_501_p3;
wire   [11:0] zext_ln6348_1_fu_517_p1;
wire   [3:0] tmp_51_i_fu_527_p3;
wire   [4:0] p_cast9_i_i_i_fu_535_p1;
wire   [4:0] empty_183_fu_539_p2;
wire   [11:0] sub_ln6346_fu_485_p2;
wire   [11:0] zext_ln6346_1_fu_544_p1;
wire   [11:0] sub_ln6348_1_fu_521_p2;
wire   [5:0] add_ln6342_1_fu_566_p2;
wire   [7:0] p_shl32_fu_615_p3;
wire   [7:0] zext_ln6348_fu_612_p1;
wire   [7:0] sub_ln6348_fu_622_p2;
wire   [7:0] zext_ln6348_2_fu_628_p1;
wire   [7:0] add_ln6348_fu_631_p2;
wire   [6:0] trunc_ln6348_fu_637_p1;
wire   [9:0] tmp_67_fu_641_p3;
wire   [9:0] zext_ln6348_3_fu_649_p1;
wire   [13:0] tmp_68_fu_666_p3;
wire   [16:0] p_shl25_fu_659_p3;
wire   [16:0] zext_ln6346_2_fu_673_p1;
wire   [13:0] tmp_69_fu_690_p3;
wire   [16:0] p_shl_fu_683_p3;
wire   [16:0] zext_ln6348_4_fu_697_p1;
wire   [9:0] sub_ln6348_2_fu_653_p2;
wire   [9:0] zext_ln6348_5_fu_707_p1;
wire   [3:0] shl_ln_i_fu_716_p3;
wire   [4:0] zext_ln6345_fu_723_p1;
wire   [4:0] add_ln6345_fu_727_p2;
wire   [16:0] sub_ln6346_1_fu_677_p2;
wire   [16:0] zext_ln6346_3_fu_732_p1;
wire   [16:0] add_ln6346_1_fu_736_p2;
wire   [16:0] sub_ln6348_3_fu_701_p2;
wire   [16:0] add_ln6348_3_fu_747_p2;
reg   [4:0] ap_return_preg;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_100;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_done_reg = 1'b0;
#0 indvar_flatten1221_i_fu_118 = 10'd0;
#0 v489922_i_fu_122 = 6'd0;
#0 indvar_flatten23_i_fu_126 = 6'd0;
#0 v490024_i_fu_130 = 3'd0;
#0 v490125_i_fu_134 = 3'd0;
#0 ap_return_preg = 5'd0;
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
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 5'd0;
    end else begin
        if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
            ap_return_preg <= empty_reg_798_pp0_iter2_reg;
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
    if ((1'b1 == ap_condition_100)) begin
        indvar_flatten1221_i_fu_118 <= add_ln6341_1_fu_346_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten23_i_fu_126 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten23_i_fu_126 <= select_ln6342_1_fu_572_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v489922_i_fu_122 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v489922_i_fu_122 <= select_ln6341_1_fu_401_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v490024_i_fu_130 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v490024_i_fu_130 <= select_ln6342_fu_429_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v490125_i_fu_134 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v490125_i_fu_134 <= add_ln6343_fu_560_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln6346_reg_843 <= add_ln6346_fu_548_p2;
        add_ln6348_1_reg_849 <= add_ln6348_1_fu_554_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        empty_reg_798_pp0_iter1_reg <= empty_reg_798;
        icmp_ln6341_reg_822 <= icmp_ln6341_fu_352_p2;
        icmp_ln6341_reg_822_pp0_iter1_reg <= icmp_ln6341_reg_822;
        lshr_ln_i_reg_837 <= {{select_ln6341_1_fu_401_p3[5:1]}};
        mul_i32_i_i_reg_802[7 : 5] <= mul_i32_i_i_fu_238_p3[7 : 5];
        p_udiv4_cast_i_i_reg_807[6 : 4] <= p_udiv4_cast_i_i_fu_246_p3[6 : 4];
        select_ln6342_reg_832 <= select_ln6342_fu_429_p3;
        thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_817[3 : 0] <= thr_add2_cast_cast_i_cast_cast_i_cast_cast_fu_314_p1[3 : 0];
        thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_817_pp0_iter1_reg[3 : 0] <= thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_817[3 : 0];
        tmp_i_reg_812[3 : 0] <= tmp_i_fu_282_p3[3 : 0];
        v4901_mid2_i_reg_826 <= v4901_mid2_i_fu_421_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln6348_2_reg_865 <= add_ln6348_2_fu_710_p2;
        empty_reg_798_pp0_iter2_reg <= empty_reg_798_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_798 <= empty_fu_224_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln6342_reg_860 <= icmp_ln6342_fu_586_p2;
        icmp_ln6343_reg_855 <= icmp_ln6343_fu_580_p2;
    end
end
always @ (*) begin
    if (((icmp_ln6341_fu_352_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln6341_reg_822_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln634227_i_phi_fu_202_p4 = icmp_ln6342_reg_860;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln634227_i_phi_fu_202_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln634227_i_phi_fu_202_p4 = icmp_ln6342_reg_860;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln6341_reg_822_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln634326_i_phi_fu_213_p4 = icmp_ln6343_reg_855;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln634326_i_phi_fu_213_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln634326_i_phi_fu_213_p4 = icmp_ln6343_reg_855;
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
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001))) begin
        ap_return = empty_reg_798_pp0_iter2_reg;
    end else begin
        ap_return = ap_return_preg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten1221_i_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_i_load = indvar_flatten1221_i_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16200_0_ce0_local = 1'b1;
    end else begin
        v16200_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v16200_1_ce0_local = 1'b1;
    end else begin
        v16200_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4916_1_ce0_local = 1'b1;
    end else begin
        v4916_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4916_1_we0_local = 1'b1;
    end else begin
        v4916_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4916_ce0_local = 1'b1;
    end else begin
        v4916_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v4916_we0_local = 1'b1;
    end else begin
        v4916_we0_local = 1'b0;
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
assign add_ln6341_1_fu_346_p2 = (ap_sig_allocacmp_indvar_flatten1221_i_load + 10'd1);
assign add_ln6341_fu_375_p2 = (v489922_i_fu_122 + 6'd2);
assign add_ln6342_1_fu_566_p2 = (indvar_flatten23_i_fu_126 + 6'd1);
assign add_ln6342_fu_409_p2 = (select_ln6341_fu_381_p3 + 3'd1);
assign add_ln6343_fu_560_p2 = (v4901_mid2_i_fu_421_p3 + 3'd1);
assign add_ln6345_fu_727_p2 = (zext_ln6345_fu_723_p1 + thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_817_pp0_iter1_reg);
assign add_ln6346_1_fu_736_p2 = (sub_ln6346_1_fu_677_p2 + zext_ln6346_3_fu_732_p1);
assign add_ln6346_fu_548_p2 = (sub_ln6346_fu_485_p2 + zext_ln6346_1_fu_544_p1);
assign add_ln6348_1_fu_554_p2 = (sub_ln6348_1_fu_521_p2 + zext_ln6346_1_fu_544_p1);
assign add_ln6348_2_fu_710_p2 = (sub_ln6348_2_fu_653_p2 + zext_ln6348_5_fu_707_p1);
assign add_ln6348_3_fu_747_p2 = (sub_ln6348_3_fu_701_p2 + zext_ln6346_3_fu_732_p1);
assign add_ln6348_fu_631_p2 = (sub_ln6348_fu_622_p2 + zext_ln6348_2_fu_628_p1);
assign and_ln6341_fu_395_p2 = (xor_ln6341_fu_389_p2 & ap_phi_mux_icmp_ln634326_i_phi_fu_213_p4);
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
    ap_condition_100 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_179_fu_290_p1 = v4909[0:0];
assign empty_180_fu_415_p2 = (ap_phi_mux_icmp_ln634227_i_phi_fu_202_p4 | and_ln6341_fu_395_p2);
assign empty_181_fu_455_p2 = (mul_i32_i_i_reg_802 + zext_ln6341_fu_437_p1);
assign empty_182_fu_460_p2 = (p_udiv4_cast_i_i_reg_807 + zext_ln6341_1_fu_451_p1);
assign empty_183_fu_539_p2 = (tmp_i_reg_812 + p_cast9_i_i_i_fu_535_p1);
assign empty_fu_224_p1 = v4909[4:0];
assign icmp_ln6341_fu_352_p2 = ((ap_sig_allocacmp_indvar_flatten1221_i_load == 10'd783) ? 1'b1 : 1'b0);
assign icmp_ln6342_fu_586_p2 = ((select_ln6342_1_fu_572_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln6343_fu_580_p2 = ((add_ln6343_fu_560_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_i_fu_441_p4 = {{select_ln6341_1_fu_401_p3[5:1]}};
assign mul_i32_i_i_fu_238_p3 = {{tmp_45_i_fu_228_p4}, {5'd0}};
assign p_cast9_i_i_i_fu_535_p1 = tmp_51_i_fu_527_p3;
assign p_cast_i_fu_278_p1 = $signed(tmp_49_i_fu_270_p3);
assign p_shl25_fu_659_p3 = {{add_ln6346_reg_843}, {5'd0}};
assign p_shl28_fu_501_p3 = {{tmp_65_fu_491_p4}, {5'd0}};
assign p_shl30_fu_465_p3 = {{empty_182_fu_460_p2}, {5'd0}};
assign p_shl32_fu_615_p3 = {{lshr_ln_i_reg_837}, {3'd0}};
assign p_shl_fu_683_p3 = {{add_ln6348_1_reg_849}, {5'd0}};
assign p_udiv4_cast_i_i_fu_246_p3 = {{tmp_45_i_fu_228_p4}, {4'd0}};
assign select_ln6341_1_fu_401_p3 = ((ap_phi_mux_icmp_ln634227_i_phi_fu_202_p4[0:0] == 1'b1) ? add_ln6341_fu_375_p2 : v489922_i_fu_122);
assign select_ln6341_fu_381_p3 = ((ap_phi_mux_icmp_ln634227_i_phi_fu_202_p4[0:0] == 1'b1) ? 3'd0 : v490024_i_fu_130);
assign select_ln6342_1_fu_572_p3 = ((ap_phi_mux_icmp_ln634227_i_phi_fu_202_p4[0:0] == 1'b1) ? 6'd1 : add_ln6342_1_fu_566_p2);
assign select_ln6342_fu_429_p3 = ((and_ln6341_fu_395_p2[0:0] == 1'b1) ? add_ln6342_fu_409_p2 : select_ln6341_fu_381_p3);
assign shl_ln_i_fu_716_p3 = {{v4901_mid2_i_reg_826}, {1'd0}};
assign sub_ln6346_1_fu_677_p2 = (p_shl25_fu_659_p3 - zext_ln6346_2_fu_673_p1);
assign sub_ln6346_fu_485_p2 = (p_shl30_fu_465_p3 - zext_ln6346_fu_481_p1);
assign sub_ln6348_1_fu_521_p2 = (p_shl28_fu_501_p3 - zext_ln6348_1_fu_517_p1);
assign sub_ln6348_2_fu_653_p2 = (tmp_67_fu_641_p3 - zext_ln6348_3_fu_649_p1);
assign sub_ln6348_3_fu_701_p2 = (p_shl_fu_683_p3 - zext_ln6348_4_fu_697_p1);
assign sub_ln6348_fu_622_p2 = (p_shl32_fu_615_p3 - zext_ln6348_fu_612_p1);
assign thr_add2_cast_cast_i_cast_cast_i_cast_cast_fu_314_p1 = $unsigned(thr_add2_cast_cast_i_cast_cast_i_cast_fu_310_p1);
assign thr_add2_cast_cast_i_cast_cast_i_cast_fu_310_p1 = $signed(thr_add2_i_i_fu_302_p3);
assign thr_add2_i_i_fu_302_p3 = {{empty_179_fu_290_p1}, {tmp_63_fu_294_p3}};
assign tmp_45_i_fu_228_p4 = {{v4909[4:2]}};
assign tmp_49_i_fu_270_p3 = {{tmp_fu_254_p3}, {tmp_62_fu_262_p3}};
assign tmp_51_i_fu_527_p3 = {{select_ln6342_fu_429_p3}, {1'd0}};
assign tmp_62_fu_262_p3 = v4909_cast3_fu_220_p1[32'd6];
assign tmp_63_fu_294_p3 = v4909_cast3_fu_220_p1[32'd5];
assign tmp_64_fu_473_p3 = {{empty_182_fu_460_p2}, {2'd0}};
assign tmp_65_fu_491_p4 = {{empty_181_fu_455_p2[7:1]}};
assign tmp_66_fu_509_p3 = {{tmp_65_fu_491_p4}, {2'd0}};
assign tmp_67_fu_641_p3 = {{trunc_ln6348_fu_637_p1}, {3'd0}};
assign tmp_68_fu_666_p3 = {{add_ln6346_reg_843}, {2'd0}};
assign tmp_69_fu_690_p3 = {{add_ln6348_1_reg_849}, {2'd0}};
assign tmp_fu_254_p3 = v4909_cast3_fu_220_p1[32'd1];
assign tmp_i_fu_282_p3 = {{1'd0}, {p_cast_i_fu_278_p1}};
assign trunc_ln6348_fu_637_p1 = add_ln6348_fu_631_p2[6:0];
assign v16200_0_address0 = zext_ln6346_4_fu_742_p1;
assign v16200_0_ce0 = v16200_0_ce0_local;
assign v16200_1_address0 = zext_ln6348_7_fu_753_p1;
assign v16200_1_ce0 = v16200_1_ce0_local;
assign v4901_mid2_i_fu_421_p3 = ((empty_180_fu_415_p2[0:0] == 1'b1) ? 3'd0 : v490125_i_fu_134);
assign v4909_cast3_fu_220_p1 = v4909;
assign v4916_1_address0 = zext_ln6348_6_fu_758_p1;
assign v4916_1_ce0 = v4916_1_ce0_local;
assign v4916_1_d0 = v16200_0_q0;
assign v4916_1_we0 = v4916_1_we0_local;
assign v4916_address0 = zext_ln6348_6_fu_758_p1;
assign v4916_ce0 = v4916_ce0_local;
assign v4916_d0 = v16200_1_q0;
assign v4916_we0 = v4916_we0_local;
assign xor_ln6341_fu_389_p2 = (ap_phi_mux_icmp_ln634227_i_phi_fu_202_p4 ^ 1'd1);
assign zext_ln6341_1_fu_451_p1 = lshr_ln_i_fu_441_p4;
assign zext_ln6341_fu_437_p1 = select_ln6341_1_fu_401_p3;
assign zext_ln6345_fu_723_p1 = shl_ln_i_fu_716_p3;
assign zext_ln6346_1_fu_544_p1 = empty_183_fu_539_p2;
assign zext_ln6346_2_fu_673_p1 = tmp_68_fu_666_p3;
assign zext_ln6346_3_fu_732_p1 = add_ln6345_fu_727_p2;
assign zext_ln6346_4_fu_742_p1 = add_ln6346_1_fu_736_p2;
assign zext_ln6346_fu_481_p1 = tmp_64_fu_473_p3;
assign zext_ln6348_1_fu_517_p1 = tmp_66_fu_509_p3;
assign zext_ln6348_2_fu_628_p1 = select_ln6342_reg_832;
assign zext_ln6348_3_fu_649_p1 = add_ln6348_fu_631_p2;
assign zext_ln6348_4_fu_697_p1 = tmp_69_fu_690_p3;
assign zext_ln6348_5_fu_707_p1 = v4901_mid2_i_reg_826;
assign zext_ln6348_6_fu_758_p1 = add_ln6348_2_reg_865;
assign zext_ln6348_7_fu_753_p1 = add_ln6348_3_fu_747_p2;
assign zext_ln6348_fu_612_p1 = lshr_ln_i_reg_837;
always @ (posedge ap_clk) begin
    mul_i32_i_i_reg_802[4:0] <= 5'b00000;
    p_udiv4_cast_i_i_reg_807[3:0] <= 4'b0000;
    tmp_i_reg_812[4] <= 1'b0;
    thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_817[4] <= 1'b0;
    thr_add2_cast_cast_i_cast_cast_i_cast_cast_reg_817_pp0_iter1_reg[4] <= 1'b0;
end
endmodule 
