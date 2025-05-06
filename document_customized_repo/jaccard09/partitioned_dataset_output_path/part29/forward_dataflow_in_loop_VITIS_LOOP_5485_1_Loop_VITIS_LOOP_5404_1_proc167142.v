
module forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142 (ap_clk,ap_rst,ap_start,ap_done,ap_continue,ap_idle,ap_ready,v3750_address0,v3750_ce0,v3750_we0,v3750_d0,v3750_1_address0,v3750_1_ce0,v3750_1_we0,v3750_1_d0,v3743,v9251_0_address0,v9251_0_ce0,v9251_0_q0,v9251_1_address0,v9251_1_ce0,v9251_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output  [9:0] v3750_address0;
output   v3750_ce0;
output   v3750_we0;
output  [7:0] v3750_d0;
output  [9:0] v3750_1_address0;
output   v3750_1_ce0;
output   v3750_1_we0;
output  [7:0] v3750_1_d0;
input  [4:0] v3743;
output  [14:0] v9251_0_address0;
output   v9251_0_ce0;
input  [7:0] v9251_0_q0;
output  [14:0] v9251_1_address0;
output   v9251_1_ce0;
input  [7:0] v9251_1_q0;
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
wire   [0:0] icmp_ln5404_fu_304_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
reg    ap_block_pp0_stage0_11001;
reg    ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg;
reg    ap_loop_exit_ready_delayed;
wire   [7:0] mul_i145_i_i_fu_226_p3;
reg   [7:0] mul_i145_i_i_reg_734;
wire   [6:0] trunc_ln_i_fu_234_p3;
reg   [6:0] trunc_ln_i_reg_739;
wire   [3:0] select_ln5404_i_cast_cast_fu_254_p3;
reg   [3:0] select_ln5404_i_cast_cast_reg_744;
wire   [3:0] zext_ln5404_1_cast_cast_i_cast_cast_fu_262_p3;
reg   [3:0] zext_ln5404_1_cast_cast_i_cast_cast_reg_749;
reg   [3:0] zext_ln5404_1_cast_cast_i_cast_cast_reg_749_pp0_iter1_reg;
reg   [0:0] icmp_ln5404_reg_754;
reg   [0:0] icmp_ln5404_reg_754_pp0_iter1_reg;
wire   [2:0] v3713_mid2_i_fu_373_p3;
reg   [2:0] v3713_mid2_i_reg_758;
wire   [2:0] select_ln5405_fu_381_p3;
reg   [2:0] select_ln5405_reg_764;
wire   [4:0] lshr_ln_i_fu_393_p4;
reg   [4:0] lshr_ln_i_reg_769;
wire   [10:0] add_ln5409_fu_492_p2;
reg   [10:0] add_ln5409_reg_775;
wire   [10:0] add_ln5411_1_fu_498_p2;
reg   [10:0] add_ln5411_1_reg_781;
wire   [0:0] icmp_ln5406_fu_524_p2;
reg   [0:0] icmp_ln5406_reg_787;
wire   [0:0] icmp_ln5405_fu_530_p2;
reg   [0:0] icmp_ln5405_reg_792;
wire   [9:0] add_ln5411_2_fu_654_p2;
reg   [9:0] add_ln5411_2_reg_797;
reg   [0:0] ap_phi_mux_icmp_ln540527_i_phi_fu_194_p4;
wire    ap_loop_init;
reg    ap_loop_init_pp0_iter1_reg;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln540626_i_phi_fu_205_p4;
wire   [63:0] zext_ln5409_4_fu_678_p1;
wire   [63:0] zext_ln5411_7_fu_689_p1;
wire   [63:0] zext_ln5411_6_fu_694_p1;
reg   [9:0] indvar_flatten1221_i_fu_110;
wire   [9:0] add_ln5404_1_fu_298_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten1221_i_load;
reg   [5:0] v371122_i_fu_114;
wire   [5:0] select_ln5404_1_fu_353_p3;
reg   [5:0] indvar_flatten23_i_fu_118;
wire   [5:0] select_ln5405_1_fu_516_p3;
reg   [2:0] v371224_i_fu_122;
reg   [2:0] v371325_i_fu_126;
wire   [2:0] add_ln5406_fu_504_p2;
reg    v9251_0_ce0_local;
reg    v9251_1_ce0_local;
reg    v3750_1_we0_local;
reg    v3750_1_ce0_local;
reg    v3750_we0_local;
reg    v3750_ce0_local;
wire   [2:0] tmp_i_fu_216_p4;
wire   [7:0] v3743_cast2_fu_212_p1;
wire   [0:0] tmp_fu_242_p3;
wire   [0:0] empty_fu_250_p1;
wire   [0:0] xor_ln5404_fu_341_p2;
wire   [5:0] add_ln5404_fu_327_p2;
wire   [2:0] select_ln5404_fu_333_p3;
wire   [0:0] and_ln5404_fu_347_p2;
wire   [0:0] empty_290_fu_367_p2;
wire   [2:0] add_ln5405_fu_361_p2;
wire   [7:0] zext_ln5404_fu_389_p1;
wire   [6:0] zext_ln5404_1_fu_403_p1;
wire   [6:0] empty_292_fu_412_p2;
wire   [7:0] tmp_221_fu_425_p3;
wire   [10:0] p_shl34_fu_417_p3;
wire   [10:0] zext_ln5409_fu_433_p1;
wire   [7:0] empty_291_fu_407_p2;
wire   [6:0] tmp_222_fu_443_p4;
wire   [7:0] tmp_223_fu_461_p3;
wire   [10:0] p_shl32_fu_453_p3;
wire   [10:0] zext_ln5411_1_fu_469_p1;
wire   [3:0] zext_ln5405_fu_479_p1;
wire   [3:0] empty_293_fu_483_p2;
wire   [10:0] sub_ln5409_fu_437_p2;
wire   [10:0] zext_ln5409_1_fu_488_p1;
wire   [10:0] sub_ln5411_1_fu_473_p2;
wire   [5:0] add_ln5405_1_fu_510_p2;
wire   [7:0] p_shl36_fu_559_p3;
wire   [7:0] zext_ln5411_fu_556_p1;
wire   [7:0] sub_ln5411_fu_566_p2;
wire   [7:0] zext_ln5411_2_fu_572_p1;
wire   [7:0] add_ln5411_fu_575_p2;
wire   [6:0] trunc_ln5411_fu_581_p1;
wire   [9:0] tmp_224_fu_585_p3;
wire   [9:0] zext_ln5411_3_fu_593_p1;
wire   [11:0] tmp_225_fu_610_p3;
wire   [14:0] p_shl29_fu_603_p3;
wire   [14:0] zext_ln5409_2_fu_617_p1;
wire   [11:0] tmp_226_fu_634_p3;
wire   [14:0] p_shl_fu_627_p3;
wire   [14:0] zext_ln5411_4_fu_641_p1;
wire   [9:0] sub_ln5405_fu_597_p2;
wire   [9:0] zext_ln5411_5_fu_651_p1;
wire   [3:0] zext_ln5406_fu_660_p1;
wire   [3:0] add_ln5408_fu_663_p2;
wire   [14:0] sub_ln5409_1_fu_621_p2;
wire   [14:0] zext_ln5409_3_fu_668_p1;
wire   [14:0] add_ln5409_1_fu_672_p2;
wire   [14:0] sub_ln5411_2_fu_645_p2;
wire   [14:0] add_ln5411_3_fu_683_p2;
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
#0 indvar_flatten1221_i_fu_110 = 10'd0;
#0 v371122_i_fu_114 = 6'd0;
#0 indvar_flatten23_i_fu_118 = 6'd0;
#0 v371224_i_fu_122 = 3'd0;
#0 v371325_i_fu_126 = 3'd0;
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
    if ((1'b1 == ap_condition_164)) begin
        indvar_flatten1221_i_fu_110 <= add_ln5404_1_fu_298_p2;
    end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        indvar_flatten23_i_fu_118 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        indvar_flatten23_i_fu_118 <= select_ln5405_1_fu_516_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v371122_i_fu_114 <= 6'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v371122_i_fu_114 <= select_ln5404_1_fu_353_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v371224_i_fu_122 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v371224_i_fu_122 <= select_ln5405_fu_381_p3;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    if (((ap_start_int == 1'b1) & (ap_loop_init == 1'b1))) begin
        v371325_i_fu_126 <= 3'd0;
    end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        v371325_i_fu_126 <= add_ln5406_fu_504_p2;
    end
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln5409_reg_775 <= add_ln5409_fu_492_p2;
        add_ln5411_1_reg_781 <= add_ln5411_1_fu_498_p2;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg <= ap_condition_exit_pp0_iter0_stage0;
        ap_condition_exit_pp0_iter0_stage0_pp0_iter2_reg <= ap_condition_exit_pp0_iter0_stage0_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_init_pp0_iter1_reg <= ap_loop_init;
        icmp_ln5404_reg_754 <= icmp_ln5404_fu_304_p2;
        icmp_ln5404_reg_754_pp0_iter1_reg <= icmp_ln5404_reg_754;
        lshr_ln_i_reg_769 <= {{select_ln5404_1_fu_353_p3[5:1]}};
        mul_i145_i_i_reg_734[7 : 5] <= mul_i145_i_i_fu_226_p3[7 : 5];
        select_ln5404_i_cast_cast_reg_744[2 : 0] <= select_ln5404_i_cast_cast_fu_254_p3[2 : 0];
        select_ln5405_reg_764 <= select_ln5405_fu_381_p3;
        trunc_ln_i_reg_739[6 : 4] <= trunc_ln_i_fu_234_p3[6 : 4];
        v3713_mid2_i_reg_758 <= v3713_mid2_i_fu_373_p3;
        zext_ln5404_1_cast_cast_i_cast_cast_reg_749[2 : 0] <= zext_ln5404_1_cast_cast_i_cast_cast_fu_262_p3[2 : 0];
        zext_ln5404_1_cast_cast_i_cast_cast_reg_749_pp0_iter1_reg[2 : 0] <= zext_ln5404_1_cast_cast_i_cast_cast_reg_749[2 : 0];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln5411_2_reg_797 <= add_ln5411_2_fu_654_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln5405_reg_792 <= icmp_ln5405_fu_530_p2;
        icmp_ln5406_reg_787 <= icmp_ln5406_fu_524_p2;
    end
end
always @ (*) begin
    if (((icmp_ln5404_fu_304_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln5404_reg_754_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln540527_i_phi_fu_194_p4 = icmp_ln5405_reg_792;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln540527_i_phi_fu_194_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln540527_i_phi_fu_194_p4 = icmp_ln5405_reg_792;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln5404_reg_754_pp0_iter1_reg == 1'd0))) begin
        ap_phi_mux_icmp_ln540626_i_phi_fu_205_p4 = icmp_ln5406_reg_787;
    end else if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init_pp0_iter1_reg == 1'b1))) begin
        ap_phi_mux_icmp_ln540626_i_phi_fu_205_p4 = 1'd0;
    end else begin
        ap_phi_mux_icmp_ln540626_i_phi_fu_205_p4 = icmp_ln5406_reg_787;
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
        ap_sig_allocacmp_indvar_flatten1221_i_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten1221_i_load = indvar_flatten1221_i_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3750_1_ce0_local = 1'b1;
    end else begin
        v3750_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3750_1_we0_local = 1'b1;
    end else begin
        v3750_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3750_ce0_local = 1'b1;
    end else begin
        v3750_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v3750_we0_local = 1'b1;
    end else begin
        v3750_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9251_0_ce0_local = 1'b1;
    end else begin
        v9251_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v9251_1_ce0_local = 1'b1;
    end else begin
        v9251_1_ce0_local = 1'b0;
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
assign add_ln5404_1_fu_298_p2 = (ap_sig_allocacmp_indvar_flatten1221_i_load + 10'd1);
assign add_ln5404_fu_327_p2 = (v371122_i_fu_114 + 6'd2);
assign add_ln5405_1_fu_510_p2 = (indvar_flatten23_i_fu_118 + 6'd1);
assign add_ln5405_fu_361_p2 = (select_ln5404_fu_333_p3 + 3'd1);
assign add_ln5406_fu_504_p2 = (v3713_mid2_i_fu_373_p3 + 3'd1);
assign add_ln5408_fu_663_p2 = (zext_ln5404_1_cast_cast_i_cast_cast_reg_749_pp0_iter1_reg + zext_ln5406_fu_660_p1);
assign add_ln5409_1_fu_672_p2 = (sub_ln5409_1_fu_621_p2 + zext_ln5409_3_fu_668_p1);
assign add_ln5409_fu_492_p2 = (sub_ln5409_fu_437_p2 + zext_ln5409_1_fu_488_p1);
assign add_ln5411_1_fu_498_p2 = (sub_ln5411_1_fu_473_p2 + zext_ln5409_1_fu_488_p1);
assign add_ln5411_2_fu_654_p2 = (sub_ln5405_fu_597_p2 + zext_ln5411_5_fu_651_p1);
assign add_ln5411_3_fu_683_p2 = (sub_ln5411_2_fu_645_p2 + zext_ln5409_3_fu_668_p1);
assign add_ln5411_fu_575_p2 = (sub_ln5411_fu_566_p2 + zext_ln5411_2_fu_572_p1);
assign and_ln5404_fu_347_p2 = (xor_ln5404_fu_341_p2 & ap_phi_mux_icmp_ln540626_i_phi_fu_205_p4);
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
assign empty_290_fu_367_p2 = (ap_phi_mux_icmp_ln540527_i_phi_fu_194_p4 | and_ln5404_fu_347_p2);
assign empty_291_fu_407_p2 = (mul_i145_i_i_reg_734 + zext_ln5404_fu_389_p1);
assign empty_292_fu_412_p2 = (trunc_ln_i_reg_739 + zext_ln5404_1_fu_403_p1);
assign empty_293_fu_483_p2 = (select_ln5404_i_cast_cast_reg_744 + zext_ln5405_fu_479_p1);
assign empty_fu_250_p1 = v3743[0:0];
assign icmp_ln5404_fu_304_p2 = ((ap_sig_allocacmp_indvar_flatten1221_i_load == 10'd783) ? 1'b1 : 1'b0);
assign icmp_ln5405_fu_530_p2 = ((select_ln5405_1_fu_516_p3 == 6'd49) ? 1'b1 : 1'b0);
assign icmp_ln5406_fu_524_p2 = ((add_ln5406_fu_504_p2 == 3'd7) ? 1'b1 : 1'b0);
assign lshr_ln_i_fu_393_p4 = {{select_ln5404_1_fu_353_p3[5:1]}};
assign mul_i145_i_i_fu_226_p3 = {{tmp_i_fu_216_p4}, {5'd0}};
assign p_shl29_fu_603_p3 = {{add_ln5409_reg_775}, {4'd0}};
assign p_shl32_fu_453_p3 = {{tmp_222_fu_443_p4}, {4'd0}};
assign p_shl34_fu_417_p3 = {{empty_292_fu_412_p2}, {4'd0}};
assign p_shl36_fu_559_p3 = {{lshr_ln_i_reg_769}, {3'd0}};
assign p_shl_fu_627_p3 = {{add_ln5411_1_reg_781}, {4'd0}};
assign select_ln5404_1_fu_353_p3 = ((ap_phi_mux_icmp_ln540527_i_phi_fu_194_p4[0:0] == 1'b1) ? add_ln5404_fu_327_p2 : v371122_i_fu_114);
assign select_ln5404_fu_333_p3 = ((ap_phi_mux_icmp_ln540527_i_phi_fu_194_p4[0:0] == 1'b1) ? 3'd0 : v371224_i_fu_122);
assign select_ln5404_i_cast_cast_fu_254_p3 = ((tmp_fu_242_p3[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign select_ln5405_1_fu_516_p3 = ((ap_phi_mux_icmp_ln540527_i_phi_fu_194_p4[0:0] == 1'b1) ? 6'd1 : add_ln5405_1_fu_510_p2);
assign select_ln5405_fu_381_p3 = ((and_ln5404_fu_347_p2[0:0] == 1'b1) ? add_ln5405_fu_361_p2 : select_ln5404_fu_333_p3);
assign sub_ln5405_fu_597_p2 = (tmp_224_fu_585_p3 - zext_ln5411_3_fu_593_p1);
assign sub_ln5409_1_fu_621_p2 = (p_shl29_fu_603_p3 - zext_ln5409_2_fu_617_p1);
assign sub_ln5409_fu_437_p2 = (p_shl34_fu_417_p3 - zext_ln5409_fu_433_p1);
assign sub_ln5411_1_fu_473_p2 = (p_shl32_fu_453_p3 - zext_ln5411_1_fu_469_p1);
assign sub_ln5411_2_fu_645_p2 = (p_shl_fu_627_p3 - zext_ln5411_4_fu_641_p1);
assign sub_ln5411_fu_566_p2 = (p_shl36_fu_559_p3 - zext_ln5411_fu_556_p1);
assign tmp_221_fu_425_p3 = {{empty_292_fu_412_p2}, {1'd0}};
assign tmp_222_fu_443_p4 = {{empty_291_fu_407_p2[7:1]}};
assign tmp_223_fu_461_p3 = {{tmp_222_fu_443_p4}, {1'd0}};
assign tmp_224_fu_585_p3 = {{trunc_ln5411_fu_581_p1}, {3'd0}};
assign tmp_225_fu_610_p3 = {{add_ln5409_reg_775}, {1'd0}};
assign tmp_226_fu_634_p3 = {{add_ln5411_1_reg_781}, {1'd0}};
assign tmp_fu_242_p3 = v3743_cast2_fu_212_p1[32'd1];
assign tmp_i_fu_216_p4 = {{v3743[4:2]}};
assign trunc_ln5411_fu_581_p1 = add_ln5411_fu_575_p2[6:0];
assign trunc_ln_i_fu_234_p3 = {{tmp_i_fu_216_p4}, {4'd0}};
assign v3713_mid2_i_fu_373_p3 = ((empty_290_fu_367_p2[0:0] == 1'b1) ? 3'd0 : v371325_i_fu_126);
assign v3743_cast2_fu_212_p1 = v3743;
assign v3750_1_address0 = zext_ln5411_6_fu_694_p1;
assign v3750_1_ce0 = v3750_1_ce0_local;
assign v3750_1_d0 = v9251_0_q0;
assign v3750_1_we0 = v3750_1_we0_local;
assign v3750_address0 = zext_ln5411_6_fu_694_p1;
assign v3750_ce0 = v3750_ce0_local;
assign v3750_d0 = v9251_1_q0;
assign v3750_we0 = v3750_we0_local;
assign v9251_0_address0 = zext_ln5409_4_fu_678_p1;
assign v9251_0_ce0 = v9251_0_ce0_local;
assign v9251_1_address0 = zext_ln5411_7_fu_689_p1;
assign v9251_1_ce0 = v9251_1_ce0_local;
assign xor_ln5404_fu_341_p2 = (ap_phi_mux_icmp_ln540527_i_phi_fu_194_p4 ^ 1'd1);
assign zext_ln5404_1_cast_cast_i_cast_cast_fu_262_p3 = ((empty_fu_250_p1[0:0] == 1'b1) ? 4'd7 : 4'd0);
assign zext_ln5404_1_fu_403_p1 = lshr_ln_i_fu_393_p4;
assign zext_ln5404_fu_389_p1 = select_ln5404_1_fu_353_p3;
assign zext_ln5405_fu_479_p1 = select_ln5405_fu_381_p3;
assign zext_ln5406_fu_660_p1 = v3713_mid2_i_reg_758;
assign zext_ln5409_1_fu_488_p1 = empty_293_fu_483_p2;
assign zext_ln5409_2_fu_617_p1 = tmp_225_fu_610_p3;
assign zext_ln5409_3_fu_668_p1 = add_ln5408_fu_663_p2;
assign zext_ln5409_4_fu_678_p1 = add_ln5409_1_fu_672_p2;
assign zext_ln5409_fu_433_p1 = tmp_221_fu_425_p3;
assign zext_ln5411_1_fu_469_p1 = tmp_223_fu_461_p3;
assign zext_ln5411_2_fu_572_p1 = select_ln5405_reg_764;
assign zext_ln5411_3_fu_593_p1 = add_ln5411_fu_575_p2;
assign zext_ln5411_4_fu_641_p1 = tmp_226_fu_634_p3;
assign zext_ln5411_5_fu_651_p1 = v3713_mid2_i_reg_758;
assign zext_ln5411_6_fu_694_p1 = add_ln5411_2_reg_797;
assign zext_ln5411_7_fu_689_p1 = add_ln5411_3_fu_683_p2;
assign zext_ln5411_fu_556_p1 = lshr_ln_i_reg_769;
always @ (posedge ap_clk) begin
    mul_i145_i_i_reg_734[4:0] <= 5'b00000;
    trunc_ln_i_reg_739[3:0] <= 4'b0000;
    select_ln5404_i_cast_cast_reg_744[3] <= 1'b0;
    zext_ln5404_1_cast_cast_i_cast_cast_reg_749[3] <= 1'b0;
    zext_ln5404_1_cast_cast_i_cast_cast_reg_749_pp0_iter1_reg[3] <= 1'b0;
end
endmodule 
