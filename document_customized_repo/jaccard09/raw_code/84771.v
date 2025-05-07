module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_6,empty_9,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty_10,bitcast_ln24,empty,min_p_14_out,min_p_14_out_ap_vld,grp_fu_381_p_din0,grp_fu_381_p_din1,grp_fu_381_p_opcode,grp_fu_381_p_dout0,grp_fu_381_p_ce,grp_fu_965_p_din0,grp_fu_965_p_din1,grp_fu_965_p_opcode,grp_fu_965_p_dout0,grp_fu_965_p_ce); 
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
input  [63:0] min_p_6;
input  [7:0] empty_9;
output  [13:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [13:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [4:0] lshr_ln;
output  [10:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [10:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [10:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [10:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
input  [0:0] empty_10;
input  [63:0] bitcast_ln24;
input  [13:0] empty;
output  [63:0] min_p_14_out;
output   min_p_14_out_ap_vld;
output  [63:0] grp_fu_381_p_din0;
output  [63:0] grp_fu_381_p_din1;
output  [1:0] grp_fu_381_p_opcode;
input  [63:0] grp_fu_381_p_dout0;
output   grp_fu_381_p_ce;
output  [63:0] grp_fu_965_p_din0;
output  [63:0] grp_fu_965_p_din1;
output  [4:0] grp_fu_965_p_opcode;
input  [0:0] grp_fu_965_p_dout0;
output   grp_fu_965_p_ce;
reg ap_idle;
reg min_p_14_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_7_reg_904;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_264_p3;
reg   [63:0] reg_278;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_862;
wire   [6:0] add_ln25_2_fu_359_p2;
reg   [6:0] add_ln25_2_reg_898;
reg   [0:0] tmp_7_reg_904_pp0_iter1_reg;
reg   [0:0] tmp_7_reg_904_pp0_iter2_reg;
reg   [0:0] tmp_7_reg_904_pp0_iter3_reg;
reg   [63:0] llike_load_1_reg_908;
reg   [63:0] llike_load_reg_913;
wire   [63:0] grp_fu_271_p3;
reg   [63:0] select_ln27_1_reg_918;
wire   [63:0] bitcast_ln27_fu_432_p1;
reg   [63:0] llike_load_2_reg_958;
reg   [63:0] llike_load_3_reg_963;
reg   [63:0] select_ln27_3_reg_968;
wire   [63:0] bitcast_ln27_1_fu_437_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln27_2_fu_441_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln27_3_fu_446_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] add1_reg_988;
reg   [63:0] add52_1_reg_993;
reg   [63:0] add52_2_reg_998;
reg   [63:0] add52_3_reg_1003;
reg   [63:0] p_reg_1008;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_7_reg_1015;
wire   [0:0] and_ln29_1_fu_540_p2;
reg   [0:0] and_ln29_1_reg_1022;
reg   [63:0] p_2_reg_1027;
wire   [63:0] min_p_9_fu_546_p3;
reg   [63:0] min_p_9_reg_1034;
reg   [63:0] p_3_reg_1041;
wire   [0:0] and_ln29_3_fu_628_p2;
reg   [0:0] and_ln29_3_reg_1048;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_4_reg_1053;
wire   [63:0] min_p_11_fu_634_p3;
reg   [63:0] min_p_11_reg_1060;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_716_p2;
reg   [0:0] and_ln29_5_reg_1067;
wire   [63:0] min_p_13_fu_722_p3;
reg   [63:0] min_p_13_reg_1072;
reg   [0:0] tmp_21_reg_1079;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_303_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_320_p1;
wire   [63:0] zext_ln26_1_fu_340_p1;
wire   [63:0] zext_ln27_1_fu_353_p1;
wire   [63:0] zext_ln26_2_fu_385_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_2_fu_397_p1;
wire   [63:0] zext_ln26_4_fu_411_p1;
wire   [63:0] zext_ln27_3_fu_426_p1;
reg   [63:0] min_p_fu_82;
wire   [63:0] min_p_15_fu_810_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_86;
wire   [5:0] add_ln25_3_fu_450_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage0_01001;
reg    llike_ce1_local;
reg   [13:0] llike_address1_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg   [63:0] grp_fu_256_p0;
reg   [63:0] grp_fu_256_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_260_p0;
reg   [63:0] grp_fu_260_p1;
wire   [13:0] tmp_8_fu_295_p3;
wire   [10:0] add_ln_fu_312_p3;
wire   [5:0] add_ln25_fu_326_p2;
wire   [13:0] tmp_12_fu_332_p3;
wire   [10:0] add_ln27_1_fu_345_p3;
wire   [6:0] zext_ln15_fu_308_p1;
wire   [5:0] add_ln25_1_fu_373_p2;
wire   [13:0] tmp_16_fu_378_p3;
wire   [10:0] add_ln27_2_fu_390_p3;
wire   [13:0] zext_ln26_3_fu_403_p1;
wire   [13:0] add_ln26_fu_406_p2;
wire   [5:0] trunc_ln27_fu_416_p1;
wire   [10:0] add_ln27_3_fu_419_p3;
wire   [63:0] bitcast_ln29_fu_464_p1;
wire   [63:0] bitcast_ln29_1_fu_481_p1;
wire   [10:0] tmp_9_fu_467_p4;
wire   [51:0] trunc_ln29_fu_477_p1;
wire   [0:0] icmp_ln29_1_fu_504_p2;
wire   [0:0] icmp_ln29_fu_498_p2;
wire   [10:0] tmp_s_fu_484_p4;
wire   [51:0] trunc_ln29_1_fu_494_p1;
wire   [0:0] icmp_ln29_3_fu_522_p2;
wire   [0:0] icmp_ln29_2_fu_516_p2;
wire   [0:0] or_ln29_fu_510_p2;
wire   [0:0] and_ln29_fu_534_p2;
wire   [0:0] or_ln29_1_fu_528_p2;
wire   [63:0] bitcast_ln29_2_fu_552_p1;
wire   [63:0] bitcast_ln29_3_fu_569_p1;
wire   [10:0] tmp_11_fu_555_p4;
wire   [51:0] trunc_ln29_2_fu_565_p1;
wire   [0:0] icmp_ln29_5_fu_592_p2;
wire   [0:0] icmp_ln29_4_fu_586_p2;
wire   [10:0] tmp_13_fu_572_p4;
wire   [51:0] trunc_ln29_3_fu_582_p1;
wire   [0:0] icmp_ln29_7_fu_610_p2;
wire   [0:0] icmp_ln29_6_fu_604_p2;
wire   [0:0] or_ln29_3_fu_616_p2;
wire   [0:0] or_ln29_2_fu_598_p2;
wire   [0:0] and_ln29_2_fu_622_p2;
wire   [63:0] bitcast_ln29_4_fu_640_p1;
wire   [63:0] bitcast_ln29_5_fu_657_p1;
wire   [10:0] tmp_15_fu_643_p4;
wire   [51:0] trunc_ln29_4_fu_653_p1;
wire   [0:0] icmp_ln29_9_fu_680_p2;
wire   [0:0] icmp_ln29_8_fu_674_p2;
wire   [10:0] tmp_17_fu_660_p4;
wire   [51:0] trunc_ln29_5_fu_670_p1;
wire   [0:0] icmp_ln29_11_fu_698_p2;
wire   [0:0] icmp_ln29_10_fu_692_p2;
wire   [0:0] or_ln29_5_fu_704_p2;
wire   [0:0] or_ln29_4_fu_686_p2;
wire   [0:0] and_ln29_4_fu_710_p2;
wire   [63:0] bitcast_ln29_6_fu_729_p1;
wire   [63:0] bitcast_ln29_7_fu_746_p1;
wire   [10:0] tmp_19_fu_732_p4;
wire   [51:0] trunc_ln29_6_fu_742_p1;
wire   [0:0] icmp_ln29_13_fu_769_p2;
wire   [0:0] icmp_ln29_12_fu_763_p2;
wire   [10:0] tmp_20_fu_749_p4;
wire   [51:0] trunc_ln29_7_fu_759_p1;
wire   [0:0] icmp_ln29_15_fu_787_p2;
wire   [0:0] icmp_ln29_14_fu_781_p2;
wire   [0:0] or_ln29_7_fu_793_p2;
wire   [0:0] or_ln29_6_fu_775_p2;
wire   [0:0] and_ln29_6_fu_799_p2;
wire   [0:0] and_ln29_7_fu_805_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_82 = 64'd0;
#0 prev_fu_86 = 6'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter3_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_82 <= min_p_6;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_7_reg_904_pp0_iter3_reg == 1'd0))) begin
        min_p_fu_82 <= min_p_15_fu_810_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_86 <= 6'd1;
    end else if (((tmp_7_reg_904 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_86 <= add_ln25_3_fu_450_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_988 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_993 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_998 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_1003 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_2_reg_898 <= add_ln25_2_fu_359_p2;
        prev_1_reg_862 <= ap_sig_allocacmp_prev_1;
        tmp_7_reg_904 <= add_ln25_2_fu_359_p2[32'd6];
        tmp_7_reg_904_pp0_iter1_reg <= tmp_7_reg_904;
        tmp_7_reg_904_pp0_iter2_reg <= tmp_7_reg_904_pp0_iter1_reg;
        tmp_7_reg_904_pp0_iter3_reg <= tmp_7_reg_904_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_1022 <= and_ln29_1_fu_540_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_1048 <= and_ln29_3_fu_628_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_1067 <= and_ln29_5_fu_716_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_load_1_reg_908 <= llike_q1;
        llike_load_reg_913 <= llike_q0;
        select_ln27_1_reg_918 <= grp_fu_271_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_2_reg_958 <= llike_q1;
        llike_load_3_reg_963 <= llike_q0;
        select_ln27_3_reg_968 <= grp_fu_271_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_11_reg_1060 <= min_p_11_fu_634_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_13_reg_1072 <= min_p_13_fu_722_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_7_reg_1015 <= min_p_fu_82;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_9_reg_1034 <= min_p_9_fu_546_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_2_reg_1027 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_3_reg_1041 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_4_reg_1053 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_1008 <= grp_fu_381_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_278 <= grp_fu_264_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_21_reg_1079 <= grp_fu_965_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_7_reg_904 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_7_reg_904_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
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
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_256_p0 = add52_3_reg_1003;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_256_p0 = add52_2_reg_998;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_256_p0 = add52_1_reg_993;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_256_p0 = add1_reg_988;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_256_p0 = llike_load_3_reg_963;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_256_p0 = llike_load_2_reg_958;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_256_p0 = llike_load_reg_913;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_256_p0 = llike_load_1_reg_908;
    end else begin
        grp_fu_256_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_256_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_256_p1 = bitcast_ln27_3_fu_446_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_256_p1 = bitcast_ln27_2_fu_441_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_256_p1 = bitcast_ln27_1_fu_437_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_256_p1 = bitcast_ln27_fu_432_p1;
    end else begin
        grp_fu_256_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_260_p0 = p_4_reg_1053;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_260_p0 = p_3_reg_1041;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_260_p0 = p_2_reg_1027;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_260_p0 = p_reg_1008;
    end else begin
        grp_fu_260_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_260_p1 = min_p_13_fu_722_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_260_p1 = min_p_11_fu_634_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_260_p1 = min_p_9_fu_546_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_260_p1 = min_p_fu_82;
    end else begin
        grp_fu_260_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_4_fu_411_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_340_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln26_2_fu_385_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_fu_303_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
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
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_7_reg_904_pp0_iter2_reg == 1'd1))) begin
        min_p_14_out_ap_vld = 1'b1;
    end else begin
        min_p_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_426_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_353_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_397_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_320_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_426_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_353_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_397_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_320_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln25_1_fu_373_p2 = (prev_1_reg_862 + 6'd2);
assign add_ln25_2_fu_359_p2 = (zext_ln15_fu_308_p1 + 7'd3);
assign add_ln25_3_fu_450_p2 = (prev_1_reg_862 + 6'd4);
assign add_ln25_fu_326_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_406_p2 = (empty + zext_ln26_3_fu_403_p1);
assign add_ln27_1_fu_345_p3 = {{add_ln25_fu_326_p2}, {lshr_ln}};
assign add_ln27_2_fu_390_p3 = {{add_ln25_1_fu_373_p2}, {lshr_ln}};
assign add_ln27_3_fu_419_p3 = {{trunc_ln27_fu_416_p1}, {lshr_ln}};
assign add_ln_fu_312_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_540_p2 = (or_ln29_1_fu_528_p2 & and_ln29_fu_534_p2);
assign and_ln29_2_fu_622_p2 = (or_ln29_3_fu_616_p2 & or_ln29_2_fu_598_p2);
assign and_ln29_3_fu_628_p2 = (grp_fu_965_p_dout0 & and_ln29_2_fu_622_p2);
assign and_ln29_4_fu_710_p2 = (or_ln29_5_fu_704_p2 & or_ln29_4_fu_686_p2);
assign and_ln29_5_fu_716_p2 = (grp_fu_965_p_dout0 & and_ln29_4_fu_710_p2);
assign and_ln29_6_fu_799_p2 = (or_ln29_7_fu_793_p2 & or_ln29_6_fu_775_p2);
assign and_ln29_7_fu_805_p2 = (tmp_21_reg_1079 & and_ln29_6_fu_799_p2);
assign and_ln29_fu_534_p2 = (or_ln29_fu_510_p2 & grp_fu_965_p_dout0);
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
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln27_1_fu_437_p1 = select_ln27_1_reg_918;
assign bitcast_ln27_2_fu_441_p1 = reg_278;
assign bitcast_ln27_3_fu_446_p1 = select_ln27_3_reg_968;
assign bitcast_ln27_fu_432_p1 = reg_278;
assign bitcast_ln29_1_fu_481_p1 = min_p_7_reg_1015;
assign bitcast_ln29_2_fu_552_p1 = p_2_reg_1027;
assign bitcast_ln29_3_fu_569_p1 = min_p_9_reg_1034;
assign bitcast_ln29_4_fu_640_p1 = p_3_reg_1041;
assign bitcast_ln29_5_fu_657_p1 = min_p_11_reg_1060;
assign bitcast_ln29_6_fu_729_p1 = p_4_reg_1053;
assign bitcast_ln29_7_fu_746_p1 = min_p_13_reg_1072;
assign bitcast_ln29_fu_464_p1 = p_reg_1008;
assign grp_fu_264_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_271_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_381_p_ce = 1'b1;
assign grp_fu_381_p_din0 = grp_fu_256_p0;
assign grp_fu_381_p_din1 = grp_fu_256_p1;
assign grp_fu_381_p_opcode = 2'd0;
assign grp_fu_965_p_ce = 1'b1;
assign grp_fu_965_p_din0 = grp_fu_260_p0;
assign grp_fu_965_p_din1 = grp_fu_260_p1;
assign grp_fu_965_p_opcode = 5'd4;
assign icmp_ln29_10_fu_692_p2 = ((tmp_17_fu_660_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_698_p2 = ((trunc_ln29_5_fu_670_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_763_p2 = ((tmp_19_fu_732_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_769_p2 = ((trunc_ln29_6_fu_742_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_781_p2 = ((tmp_20_fu_749_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_787_p2 = ((trunc_ln29_7_fu_759_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_504_p2 = ((trunc_ln29_fu_477_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_516_p2 = ((tmp_s_fu_484_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_522_p2 = ((trunc_ln29_1_fu_494_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_586_p2 = ((tmp_11_fu_555_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_592_p2 = ((trunc_ln29_2_fu_565_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_604_p2 = ((tmp_13_fu_572_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_610_p2 = ((trunc_ln29_3_fu_582_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_674_p2 = ((tmp_15_fu_643_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_680_p2 = ((trunc_ln29_4_fu_653_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_498_p2 = ((tmp_9_fu_467_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign min_p_11_fu_634_p3 = ((and_ln29_3_reg_1048[0:0] == 1'b1) ? p_2_reg_1027 : min_p_9_reg_1034);
assign min_p_13_fu_722_p3 = ((and_ln29_5_reg_1067[0:0] == 1'b1) ? p_3_reg_1041 : min_p_11_reg_1060);
assign min_p_14_out = ((and_ln29_5_reg_1067[0:0] == 1'b1) ? p_3_reg_1041 : min_p_11_reg_1060);
assign min_p_15_fu_810_p3 = ((and_ln29_7_fu_805_p2[0:0] == 1'b1) ? p_4_reg_1053 : min_p_13_reg_1072);
assign min_p_9_fu_546_p3 = ((and_ln29_1_reg_1022[0:0] == 1'b1) ? p_reg_1008 : min_p_7_reg_1015);
assign or_ln29_1_fu_528_p2 = (icmp_ln29_3_fu_522_p2 | icmp_ln29_2_fu_516_p2);
assign or_ln29_2_fu_598_p2 = (icmp_ln29_5_fu_592_p2 | icmp_ln29_4_fu_586_p2);
assign or_ln29_3_fu_616_p2 = (icmp_ln29_7_fu_610_p2 | icmp_ln29_6_fu_604_p2);
assign or_ln29_4_fu_686_p2 = (icmp_ln29_9_fu_680_p2 | icmp_ln29_8_fu_674_p2);
assign or_ln29_5_fu_704_p2 = (icmp_ln29_11_fu_698_p2 | icmp_ln29_10_fu_692_p2);
assign or_ln29_6_fu_775_p2 = (icmp_ln29_13_fu_769_p2 | icmp_ln29_12_fu_763_p2);
assign or_ln29_7_fu_793_p2 = (icmp_ln29_15_fu_787_p2 | icmp_ln29_14_fu_781_p2);
assign or_ln29_fu_510_p2 = (icmp_ln29_fu_498_p2 | icmp_ln29_1_fu_504_p2);
assign tmp_11_fu_555_p4 = {{bitcast_ln29_2_fu_552_p1[62:52]}};
assign tmp_12_fu_332_p3 = {{empty_9}, {add_ln25_fu_326_p2}};
assign tmp_13_fu_572_p4 = {{bitcast_ln29_3_fu_569_p1[62:52]}};
assign tmp_15_fu_643_p4 = {{bitcast_ln29_4_fu_640_p1[62:52]}};
assign tmp_16_fu_378_p3 = {{empty_9}, {add_ln25_1_fu_373_p2}};
assign tmp_17_fu_660_p4 = {{bitcast_ln29_5_fu_657_p1[62:52]}};
assign tmp_19_fu_732_p4 = {{bitcast_ln29_6_fu_729_p1[62:52]}};
assign tmp_20_fu_749_p4 = {{bitcast_ln29_7_fu_746_p1[62:52]}};
assign tmp_8_fu_295_p3 = {{empty_9}, {ap_sig_allocacmp_prev_1}};
assign tmp_9_fu_467_p4 = {{bitcast_ln29_fu_464_p1[62:52]}};
assign tmp_s_fu_484_p4 = {{bitcast_ln29_1_fu_481_p1[62:52]}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln27_fu_416_p1 = add_ln25_2_reg_898[5:0];
assign trunc_ln29_1_fu_494_p1 = bitcast_ln29_1_fu_481_p1[51:0];
assign trunc_ln29_2_fu_565_p1 = bitcast_ln29_2_fu_552_p1[51:0];
assign trunc_ln29_3_fu_582_p1 = bitcast_ln29_3_fu_569_p1[51:0];
assign trunc_ln29_4_fu_653_p1 = bitcast_ln29_4_fu_640_p1[51:0];
assign trunc_ln29_5_fu_670_p1 = bitcast_ln29_5_fu_657_p1[51:0];
assign trunc_ln29_6_fu_742_p1 = bitcast_ln29_6_fu_729_p1[51:0];
assign trunc_ln29_7_fu_759_p1 = bitcast_ln29_7_fu_746_p1[51:0];
assign trunc_ln29_fu_477_p1 = bitcast_ln29_fu_464_p1[51:0];
assign zext_ln15_fu_308_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_340_p1 = tmp_12_fu_332_p3;
assign zext_ln26_2_fu_385_p1 = tmp_16_fu_378_p3;
assign zext_ln26_3_fu_403_p1 = add_ln25_2_reg_898;
assign zext_ln26_4_fu_411_p1 = add_ln26_fu_406_p2;
assign zext_ln26_fu_303_p1 = tmp_8_fu_295_p3;
assign zext_ln27_1_fu_353_p1 = add_ln27_1_fu_345_p3;
assign zext_ln27_2_fu_397_p1 = add_ln27_2_fu_390_p3;
assign zext_ln27_3_fu_426_p1 = add_ln27_3_fu_419_p3;
assign zext_ln27_fu_320_p1 = add_ln_fu_312_p3;
endmodule 