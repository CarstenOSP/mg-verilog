module viterbi_viterbi_Pipeline_L_end (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,llike_address0,llike_ce0,llike_q0,min_s_4_out,min_s_4_out_ap_vld,grp_fu_1357_p_din0,grp_fu_1357_p_din1,grp_fu_1357_p_opcode,grp_fu_1357_p_dout0,grp_fu_1357_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_4_out;
output   min_s_4_out_ap_vld;
output  [63:0] grp_fu_1357_p_din0;
output  [63:0] grp_fu_1357_p_din1;
output  [4:0] grp_fu_1357_p_opcode;
input  [0:0] grp_fu_1357_p_dout0;
output   grp_fu_1357_p_ce;
reg ap_idle;
reg min_s_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_reg_758;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] s_reg_725;
wire   [5:0] add_ln40_fu_190_p2;
reg   [5:0] add_ln40_reg_737;
wire   [6:0] add_ln40_1_fu_238_p2;
reg   [6:0] add_ln40_1_reg_752;
reg   [6:0] add_ln40_1_reg_752_pp0_iter1_reg;
reg   [63:0] p_reg_762;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] p_19_reg_769;
reg   [63:0] p_20_reg_776;
reg   [63:0] min_p_44_reg_788;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] p_21_reg_795;
wire   [0:0] and_ln42_1_fu_356_p2;
reg   [0:0] and_ln42_1_reg_802;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] min_p_46_fu_362_p3;
reg   [63:0] min_p_46_reg_808;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] and_ln42_3_fu_444_p2;
reg   [0:0] and_ln42_3_reg_815;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] min_p_48_fu_463_p3;
reg   [63:0] min_p_48_reg_821;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_12_fu_472_p3;
reg   [7:0] min_s_12_reg_828;
wire   [0:0] and_ln42_5_fu_555_p2;
reg   [0:0] and_ln42_5_reg_833;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [7:0] min_s_13_fu_570_p3;
reg   [7:0] min_s_13_reg_839;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] min_p_50_fu_577_p3;
reg   [63:0] min_p_50_reg_844;
reg   [0:0] tmp_52_reg_851;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln41_fu_185_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln41_1_fu_214_p1;
wire   [63:0] zext_ln41_2_fu_233_p1;
wire   [63:0] zext_ln41_4_fu_271_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] min_p_1_fu_70;
wire   [63:0] min_p_52_fu_674_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [7:0] min_s_fu_74;
wire   [7:0] min_s_14_fu_687_p3;
wire    ap_block_pp0_stage6;
reg   [5:0] min_s_8_fu_78;
wire   [5:0] add_ln40_2_fu_583_p2;
reg   [5:0] ap_sig_allocacmp_s;
wire    ap_block_pp0_stage8_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_141_p0;
reg   [63:0] grp_fu_141_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage8;
wire   [4:0] tmp_s_fu_167_p4;
wire   [12:0] tmp_154_cast_fu_177_p3;
wire   [4:0] tmp_107_fu_196_p4;
wire   [12:0] tmp_156_cast_fu_206_p3;
wire   [4:0] add_ln8_fu_219_p2;
wire   [12:0] tmp_157_cast_fu_225_p3;
wire   [6:0] zext_ln19_fu_163_p1;
wire   [5:0] lshr_ln9_2_fu_252_p4;
wire   [12:0] zext_ln41_3_fu_261_p1;
wire   [12:0] add_ln41_fu_265_p2;
wire    ap_block_pp0_stage3;
wire   [63:0] bitcast_ln42_fu_280_p1;
wire   [63:0] bitcast_ln42_1_fu_297_p1;
wire   [10:0] tmp_41_fu_283_p4;
wire   [51:0] trunc_ln42_fu_293_p1;
wire   [0:0] icmp_ln42_1_fu_320_p2;
wire   [0:0] icmp_ln42_fu_314_p2;
wire   [10:0] tmp_42_fu_300_p4;
wire   [51:0] trunc_ln42_1_fu_310_p1;
wire   [0:0] icmp_ln42_3_fu_338_p2;
wire   [0:0] icmp_ln42_2_fu_332_p2;
wire   [0:0] or_ln42_fu_326_p2;
wire   [0:0] and_ln42_fu_350_p2;
wire   [0:0] or_ln42_1_fu_344_p2;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln42_2_fu_368_p1;
wire   [63:0] bitcast_ln42_3_fu_385_p1;
wire   [10:0] tmp_44_fu_371_p4;
wire   [51:0] trunc_ln42_2_fu_381_p1;
wire   [0:0] icmp_ln42_5_fu_408_p2;
wire   [0:0] icmp_ln42_4_fu_402_p2;
wire   [10:0] tmp_45_fu_388_p4;
wire   [51:0] trunc_ln42_3_fu_398_p1;
wire   [0:0] icmp_ln42_7_fu_426_p2;
wire   [0:0] icmp_ln42_6_fu_420_p2;
wire   [0:0] or_ln42_3_fu_432_p2;
wire   [0:0] or_ln42_2_fu_414_p2;
wire   [0:0] and_ln42_2_fu_438_p2;
wire   [7:0] zext_ln42_fu_453_p1;
wire   [7:0] zext_ln42_1_fu_469_p1;
wire   [7:0] min_s_11_fu_456_p3;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln42_4_fu_479_p1;
wire   [63:0] bitcast_ln42_5_fu_496_p1;
wire   [10:0] tmp_47_fu_482_p4;
wire   [51:0] trunc_ln42_4_fu_492_p1;
wire   [0:0] icmp_ln42_9_fu_519_p2;
wire   [0:0] icmp_ln42_8_fu_513_p2;
wire   [10:0] tmp_48_fu_499_p4;
wire   [51:0] trunc_ln42_5_fu_509_p1;
wire   [0:0] icmp_ln42_11_fu_537_p2;
wire   [0:0] icmp_ln42_10_fu_531_p2;
wire   [0:0] or_ln42_5_fu_543_p2;
wire   [0:0] or_ln42_4_fu_525_p2;
wire   [0:0] and_ln42_4_fu_549_p2;
wire   [5:0] add_ln42_fu_561_p2;
wire   [7:0] zext_ln42_2_fu_566_p1;
wire   [63:0] bitcast_ln42_6_fu_593_p1;
wire   [63:0] bitcast_ln42_7_fu_610_p1;
wire   [10:0] tmp_50_fu_596_p4;
wire   [51:0] trunc_ln42_6_fu_606_p1;
wire   [0:0] icmp_ln42_13_fu_633_p2;
wire   [0:0] icmp_ln42_12_fu_627_p2;
wire   [10:0] tmp_51_fu_613_p4;
wire   [51:0] trunc_ln42_7_fu_623_p1;
wire   [0:0] icmp_ln42_15_fu_651_p2;
wire   [0:0] icmp_ln42_14_fu_645_p2;
wire   [0:0] or_ln42_7_fu_657_p2;
wire   [0:0] or_ln42_6_fu_639_p2;
wire   [0:0] and_ln42_6_fu_663_p2;
wire   [0:0] and_ln42_7_fu_669_p2;
wire   [5:0] trunc_ln42_8_fu_680_p1;
wire   [7:0] zext_ln42_3_fu_683_p1;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_1_fu_70 = 64'd0;
#0 min_s_fu_74 = 8'd0;
#0 min_s_8_fu_78 = 6'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage8) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_1_fu_70 <= min_p;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_fu_70 <= min_p_52_fu_674_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_8_fu_78 <= 6'd1;
    end else if (((tmp_reg_758 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_8_fu_78 <= add_ln40_2_fu_583_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_74 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_s_fu_74 <= min_s_14_fu_687_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln40_1_reg_752 <= add_ln40_1_fu_238_p2;
        add_ln40_1_reg_752_pp0_iter1_reg <= add_ln40_1_reg_752;
        add_ln40_reg_737 <= add_ln40_fu_190_p2;
        s_reg_725 <= ap_sig_allocacmp_s;
        tmp_reg_758 <= add_ln40_1_fu_238_p2[32'd6];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        and_ln42_1_reg_802 <= and_ln42_1_fu_356_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        and_ln42_3_reg_815 <= and_ln42_3_fu_444_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        and_ln42_5_reg_833 <= and_ln42_5_fu_555_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_44_reg_788 <= min_p_1_fu_70;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_p_46_reg_808 <= min_p_46_fu_362_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        min_p_48_reg_821 <= min_p_48_fu_463_p3;
        min_s_12_reg_828 <= min_s_12_fu_472_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_p_50_reg_844 <= min_p_50_fu_577_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_13_reg_839 <= min_s_13_fu_570_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_19_reg_769 <= llike_q0;
        p_20_reg_776 <= llike_1_q0;
        p_reg_762 <= llike_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_21_reg_795 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_52_reg_851 <= grp_fu_1357_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_758 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_8_fu_78;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_141_p0 = p_21_reg_795;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_141_p0 = p_20_reg_776;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_141_p0 = p_19_reg_769;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_141_p0 = p_reg_762;
        end else begin
            grp_fu_141_p0 = 'bx;
        end
    end else begin
        grp_fu_141_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_141_p1 = min_p_50_fu_577_p3;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_141_p1 = min_p_48_fu_463_p3;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_141_p1 = min_p_46_fu_362_p3;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_141_p1 = min_p_1_fu_70;
        end else begin
            grp_fu_141_p1 = 'bx;
        end
    end else begin
        grp_fu_141_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce1_local = 1'b1;
    end else begin
        llike_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln41_4_fu_271_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln41_1_fu_214_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_758 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_4_out_ap_vld = 1'b1;
    end else begin
        min_s_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln40_1_fu_238_p2 = (zext_ln19_fu_163_p1 + 7'd3);
assign add_ln40_2_fu_583_p2 = (s_reg_725 + 6'd4);
assign add_ln40_fu_190_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln41_fu_265_p2 = ($signed(zext_ln41_3_fu_261_p1) + $signed(13'd4448));
assign add_ln42_fu_561_p2 = (s_reg_725 + 6'd2);
assign add_ln8_fu_219_p2 = (tmp_s_fu_167_p4 + 5'd1);
assign and_ln42_1_fu_356_p2 = (or_ln42_1_fu_344_p2 & and_ln42_fu_350_p2);
assign and_ln42_2_fu_438_p2 = (or_ln42_3_fu_432_p2 & or_ln42_2_fu_414_p2);
assign and_ln42_3_fu_444_p2 = (grp_fu_1357_p_dout0 & and_ln42_2_fu_438_p2);
assign and_ln42_4_fu_549_p2 = (or_ln42_5_fu_543_p2 & or_ln42_4_fu_525_p2);
assign and_ln42_5_fu_555_p2 = (grp_fu_1357_p_dout0 & and_ln42_4_fu_549_p2);
assign and_ln42_6_fu_663_p2 = (or_ln42_7_fu_657_p2 & or_ln42_6_fu_639_p2);
assign and_ln42_7_fu_669_p2 = (tmp_52_reg_851 & and_ln42_6_fu_663_p2);
assign and_ln42_fu_350_p2 = (or_ln42_fu_326_p2 & grp_fu_1357_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln42_1_fu_297_p1 = min_p_44_reg_788;
assign bitcast_ln42_2_fu_368_p1 = p_19_reg_769;
assign bitcast_ln42_3_fu_385_p1 = min_p_46_reg_808;
assign bitcast_ln42_4_fu_479_p1 = p_20_reg_776;
assign bitcast_ln42_5_fu_496_p1 = min_p_48_reg_821;
assign bitcast_ln42_6_fu_593_p1 = p_21_reg_795;
assign bitcast_ln42_7_fu_610_p1 = min_p_50_reg_844;
assign bitcast_ln42_fu_280_p1 = p_reg_762;
assign grp_fu_1357_p_ce = 1'b1;
assign grp_fu_1357_p_din0 = grp_fu_141_p0;
assign grp_fu_1357_p_din1 = grp_fu_141_p1;
assign grp_fu_1357_p_opcode = 5'd4;
assign icmp_ln42_10_fu_531_p2 = ((tmp_48_fu_499_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_11_fu_537_p2 = ((trunc_ln42_5_fu_509_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_12_fu_627_p2 = ((tmp_50_fu_596_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_13_fu_633_p2 = ((trunc_ln42_6_fu_606_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_14_fu_645_p2 = ((tmp_51_fu_613_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_15_fu_651_p2 = ((trunc_ln42_7_fu_623_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_1_fu_320_p2 = ((trunc_ln42_fu_293_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_2_fu_332_p2 = ((tmp_42_fu_300_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_3_fu_338_p2 = ((trunc_ln42_1_fu_310_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_4_fu_402_p2 = ((tmp_44_fu_371_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_5_fu_408_p2 = ((trunc_ln42_2_fu_381_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_6_fu_420_p2 = ((tmp_45_fu_388_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_7_fu_426_p2 = ((trunc_ln42_3_fu_398_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_8_fu_513_p2 = ((tmp_47_fu_482_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_9_fu_519_p2 = ((trunc_ln42_4_fu_492_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_fu_314_p2 = ((tmp_41_fu_283_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln41_2_fu_233_p1;
assign llike_1_address1 = zext_ln41_fu_185_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln9_2_fu_252_p4 = {{add_ln40_1_reg_752[6:1]}};
assign min_p_46_fu_362_p3 = ((and_ln42_1_reg_802[0:0] == 1'b1) ? p_reg_762 : min_p_44_reg_788);
assign min_p_48_fu_463_p3 = ((and_ln42_3_reg_815[0:0] == 1'b1) ? p_19_reg_769 : min_p_46_reg_808);
assign min_p_50_fu_577_p3 = ((and_ln42_5_reg_833[0:0] == 1'b1) ? p_20_reg_776 : min_p_48_reg_821);
assign min_p_52_fu_674_p3 = ((and_ln42_7_fu_669_p2[0:0] == 1'b1) ? p_21_reg_795 : min_p_50_reg_844);
assign min_s_11_fu_456_p3 = ((and_ln42_1_reg_802[0:0] == 1'b1) ? zext_ln42_fu_453_p1 : min_s_fu_74);
assign min_s_12_fu_472_p3 = ((and_ln42_3_reg_815[0:0] == 1'b1) ? zext_ln42_1_fu_469_p1 : min_s_11_fu_456_p3);
assign min_s_13_fu_570_p3 = ((and_ln42_5_reg_833[0:0] == 1'b1) ? zext_ln42_2_fu_566_p1 : min_s_12_reg_828);
assign min_s_14_fu_687_p3 = ((and_ln42_7_fu_669_p2[0:0] == 1'b1) ? zext_ln42_3_fu_683_p1 : min_s_13_reg_839);
assign min_s_4_out = ((and_ln42_5_reg_833[0:0] == 1'b1) ? zext_ln42_2_fu_566_p1 : min_s_12_reg_828);
assign or_ln42_1_fu_344_p2 = (icmp_ln42_3_fu_338_p2 | icmp_ln42_2_fu_332_p2);
assign or_ln42_2_fu_414_p2 = (icmp_ln42_5_fu_408_p2 | icmp_ln42_4_fu_402_p2);
assign or_ln42_3_fu_432_p2 = (icmp_ln42_7_fu_426_p2 | icmp_ln42_6_fu_420_p2);
assign or_ln42_4_fu_525_p2 = (icmp_ln42_9_fu_519_p2 | icmp_ln42_8_fu_513_p2);
assign or_ln42_5_fu_543_p2 = (icmp_ln42_11_fu_537_p2 | icmp_ln42_10_fu_531_p2);
assign or_ln42_6_fu_639_p2 = (icmp_ln42_13_fu_633_p2 | icmp_ln42_12_fu_627_p2);
assign or_ln42_7_fu_657_p2 = (icmp_ln42_15_fu_651_p2 | icmp_ln42_14_fu_645_p2);
assign or_ln42_fu_326_p2 = (icmp_ln42_fu_314_p2 | icmp_ln42_1_fu_320_p2);
assign tmp_107_fu_196_p4 = {{add_ln40_fu_190_p2[5:1]}};
assign tmp_154_cast_fu_177_p3 = {{8'd139}, {tmp_s_fu_167_p4}};
assign tmp_156_cast_fu_206_p3 = {{8'd139}, {tmp_107_fu_196_p4}};
assign tmp_157_cast_fu_225_p3 = {{8'd139}, {add_ln8_fu_219_p2}};
assign tmp_41_fu_283_p4 = {{bitcast_ln42_fu_280_p1[62:52]}};
assign tmp_42_fu_300_p4 = {{bitcast_ln42_1_fu_297_p1[62:52]}};
assign tmp_44_fu_371_p4 = {{bitcast_ln42_2_fu_368_p1[62:52]}};
assign tmp_45_fu_388_p4 = {{bitcast_ln42_3_fu_385_p1[62:52]}};
assign tmp_47_fu_482_p4 = {{bitcast_ln42_4_fu_479_p1[62:52]}};
assign tmp_48_fu_499_p4 = {{bitcast_ln42_5_fu_496_p1[62:52]}};
assign tmp_50_fu_596_p4 = {{bitcast_ln42_6_fu_593_p1[62:52]}};
assign tmp_51_fu_613_p4 = {{bitcast_ln42_7_fu_610_p1[62:52]}};
assign tmp_s_fu_167_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign trunc_ln42_1_fu_310_p1 = bitcast_ln42_1_fu_297_p1[51:0];
assign trunc_ln42_2_fu_381_p1 = bitcast_ln42_2_fu_368_p1[51:0];
assign trunc_ln42_3_fu_398_p1 = bitcast_ln42_3_fu_385_p1[51:0];
assign trunc_ln42_4_fu_492_p1 = bitcast_ln42_4_fu_479_p1[51:0];
assign trunc_ln42_5_fu_509_p1 = bitcast_ln42_5_fu_496_p1[51:0];
assign trunc_ln42_6_fu_606_p1 = bitcast_ln42_6_fu_593_p1[51:0];
assign trunc_ln42_7_fu_623_p1 = bitcast_ln42_7_fu_610_p1[51:0];
assign trunc_ln42_8_fu_680_p1 = add_ln40_1_reg_752_pp0_iter1_reg[5:0];
assign trunc_ln42_fu_293_p1 = bitcast_ln42_fu_280_p1[51:0];
assign zext_ln19_fu_163_p1 = ap_sig_allocacmp_s;
assign zext_ln41_1_fu_214_p1 = tmp_156_cast_fu_206_p3;
assign zext_ln41_2_fu_233_p1 = tmp_157_cast_fu_225_p3;
assign zext_ln41_3_fu_261_p1 = lshr_ln9_2_fu_252_p4;
assign zext_ln41_4_fu_271_p1 = add_ln41_fu_265_p2;
assign zext_ln41_fu_185_p1 = tmp_154_cast_fu_177_p3;
assign zext_ln42_1_fu_469_p1 = add_ln40_reg_737;
assign zext_ln42_2_fu_566_p1 = add_ln42_fu_561_p2;
assign zext_ln42_3_fu_683_p1 = trunc_ln42_8_fu_680_p1;
assign zext_ln42_fu_453_p1 = s_reg_725;
endmodule 