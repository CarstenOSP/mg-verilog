module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_4,empty_8,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,empty_9,transition_address0,transition_ce0,transition_q0,transition_address1,transition_ce1,transition_q1,bitcast_ln24,empty,min_p_137_out,min_p_137_out_ap_vld,grp_fu_227_p_din0,grp_fu_227_p_din1,grp_fu_227_p_opcode,grp_fu_227_p_dout0,grp_fu_227_p_ce,grp_fu_496_p_din0,grp_fu_496_p_din1,grp_fu_496_p_opcode,grp_fu_496_p_dout0,grp_fu_496_p_ce); 
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
input  [63:0] min_p_4;
input  [7:0] empty_8;
output  [13:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [13:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [5:0] empty_9;
output  [11:0] transition_address0;
output   transition_ce0;
input  [63:0] transition_q0;
output  [11:0] transition_address1;
output   transition_ce1;
input  [63:0] transition_q1;
input  [63:0] bitcast_ln24;
input  [13:0] empty;
output  [63:0] min_p_137_out;
output   min_p_137_out_ap_vld;
output  [63:0] grp_fu_227_p_din0;
output  [63:0] grp_fu_227_p_din1;
output  [1:0] grp_fu_227_p_opcode;
input  [63:0] grp_fu_227_p_dout0;
output   grp_fu_227_p_ce;
output  [63:0] grp_fu_496_p_din0;
output  [63:0] grp_fu_496_p_din1;
output  [4:0] grp_fu_496_p_opcode;
input  [0:0] grp_fu_496_p_dout0;
output   grp_fu_496_p_ce;
reg ap_idle;
reg min_p_137_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_14_reg_817;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_211;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_785;
wire   [6:0] add_ln25_2_fu_290_p2;
reg   [6:0] add_ln25_2_reg_811;
reg   [0:0] tmp_14_reg_817_pp0_iter1_reg;
reg   [0:0] tmp_14_reg_817_pp0_iter2_reg;
reg   [0:0] tmp_14_reg_817_pp0_iter3_reg;
reg   [63:0] llike_load_reg_821;
reg   [63:0] llike_load_1_reg_826;
reg   [63:0] transition_load_1_reg_831;
wire   [63:0] bitcast_ln27_fu_361_p1;
reg   [63:0] llike_load_2_reg_861;
reg   [63:0] llike_load_3_reg_866;
reg   [63:0] transition_load_3_reg_871;
wire   [63:0] bitcast_ln27_1_fu_366_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln27_2_fu_370_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln27_3_fu_375_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] add1_reg_891;
reg   [63:0] add52_1_reg_896;
reg   [63:0] add52_2_reg_901;
reg   [63:0] add52_3_reg_906;
reg   [63:0] p_reg_911;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_1_reg_918;
wire   [0:0] and_ln29_1_fu_469_p2;
reg   [0:0] and_ln29_1_reg_925;
reg   [63:0] p_1_reg_930;
wire   [63:0] min_p_3_fu_475_p3;
reg   [63:0] min_p_3_reg_937;
reg   [63:0] p_2_reg_944;
wire   [0:0] and_ln29_3_fu_557_p2;
reg   [0:0] and_ln29_3_reg_951;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_3_reg_956;
wire   [63:0] min_p_6_fu_563_p3;
reg   [63:0] min_p_6_reg_963;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_645_p2;
reg   [0:0] and_ln29_5_reg_970;
wire   [63:0] min_p_8_fu_651_p3;
reg   [63:0] min_p_8_reg_975;
reg   [0:0] tmp_17_reg_982;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_236_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_253_p1;
wire   [63:0] zext_ln26_1_fu_272_p1;
wire   [63:0] zext_ln27_1_fu_285_p1;
wire   [63:0] zext_ln26_2_fu_316_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_2_fu_328_p1;
wire   [63:0] zext_ln26_4_fu_341_p1;
wire   [63:0] zext_ln27_3_fu_356_p1;
reg   [63:0] min_p_fu_76;
wire   [63:0] min_p_10_fu_739_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_80;
wire   [5:0] add_ln25_3_fu_379_p2;
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
reg    transition_ce1_local;
reg   [11:0] transition_address1_local;
reg    transition_ce0_local;
reg   [11:0] transition_address0_local;
reg   [63:0] grp_fu_203_p0;
reg   [63:0] grp_fu_203_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_207_p0;
reg   [63:0] grp_fu_207_p1;
wire   [13:0] tmp_11_fu_228_p3;
wire   [11:0] add_ln_fu_245_p3;
wire   [5:0] add_ln25_fu_258_p2;
wire   [13:0] tmp_12_fu_264_p3;
wire   [11:0] add_ln27_1_fu_277_p3;
wire   [6:0] zext_ln10_fu_241_p1;
wire   [5:0] add_ln25_1_fu_304_p2;
wire   [13:0] tmp_13_fu_309_p3;
wire   [11:0] add_ln27_2_fu_321_p3;
wire   [13:0] zext_ln26_3_fu_333_p1;
wire   [13:0] add_ln26_fu_336_p2;
wire   [5:0] trunc_ln27_fu_346_p1;
wire   [11:0] add_ln27_3_fu_349_p3;
wire   [63:0] bitcast_ln29_fu_393_p1;
wire   [63:0] bitcast_ln29_1_fu_410_p1;
wire   [10:0] tmp_3_fu_396_p4;
wire   [51:0] trunc_ln29_fu_406_p1;
wire   [0:0] icmp_ln29_1_fu_433_p2;
wire   [0:0] icmp_ln29_fu_427_p2;
wire   [10:0] tmp_4_fu_413_p4;
wire   [51:0] trunc_ln29_1_fu_423_p1;
wire   [0:0] icmp_ln29_3_fu_451_p2;
wire   [0:0] icmp_ln29_2_fu_445_p2;
wire   [0:0] or_ln29_fu_439_p2;
wire   [0:0] and_ln29_fu_463_p2;
wire   [0:0] or_ln29_1_fu_457_p2;
wire   [63:0] bitcast_ln29_2_fu_481_p1;
wire   [63:0] bitcast_ln29_3_fu_498_p1;
wire   [10:0] tmp_6_fu_484_p4;
wire   [51:0] trunc_ln29_2_fu_494_p1;
wire   [0:0] icmp_ln29_5_fu_521_p2;
wire   [0:0] icmp_ln29_4_fu_515_p2;
wire   [10:0] tmp_7_fu_501_p4;
wire   [51:0] trunc_ln29_3_fu_511_p1;
wire   [0:0] icmp_ln29_7_fu_539_p2;
wire   [0:0] icmp_ln29_6_fu_533_p2;
wire   [0:0] or_ln29_3_fu_545_p2;
wire   [0:0] or_ln29_2_fu_527_p2;
wire   [0:0] and_ln29_2_fu_551_p2;
wire   [63:0] bitcast_ln29_4_fu_569_p1;
wire   [63:0] bitcast_ln29_5_fu_586_p1;
wire   [10:0] tmp_9_fu_572_p4;
wire   [51:0] trunc_ln29_4_fu_582_p1;
wire   [0:0] icmp_ln29_9_fu_609_p2;
wire   [0:0] icmp_ln29_8_fu_603_p2;
wire   [10:0] tmp_s_fu_589_p4;
wire   [51:0] trunc_ln29_5_fu_599_p1;
wire   [0:0] icmp_ln29_11_fu_627_p2;
wire   [0:0] icmp_ln29_10_fu_621_p2;
wire   [0:0] or_ln29_5_fu_633_p2;
wire   [0:0] or_ln29_4_fu_615_p2;
wire   [0:0] and_ln29_4_fu_639_p2;
wire   [63:0] bitcast_ln29_6_fu_658_p1;
wire   [63:0] bitcast_ln29_7_fu_675_p1;
wire   [10:0] tmp_15_fu_661_p4;
wire   [51:0] trunc_ln29_6_fu_671_p1;
wire   [0:0] icmp_ln29_13_fu_698_p2;
wire   [0:0] icmp_ln29_12_fu_692_p2;
wire   [10:0] tmp_16_fu_678_p4;
wire   [51:0] trunc_ln29_7_fu_688_p1;
wire   [0:0] icmp_ln29_15_fu_716_p2;
wire   [0:0] icmp_ln29_14_fu_710_p2;
wire   [0:0] or_ln29_7_fu_722_p2;
wire   [0:0] or_ln29_6_fu_704_p2;
wire   [0:0] and_ln29_6_fu_728_p2;
wire   [0:0] and_ln29_7_fu_734_p2;
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
#0 min_p_fu_76 = 64'd0;
#0 prev_fu_80 = 6'd0;
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
        min_p_fu_76 <= min_p_4;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_14_reg_817_pp0_iter3_reg == 1'd0))) begin
        min_p_fu_76 <= min_p_10_fu_739_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_80 <= 6'd1;
    end else if (((tmp_14_reg_817 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_80 <= add_ln25_3_fu_379_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_891 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_896 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_901 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_906 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_2_reg_811 <= add_ln25_2_fu_290_p2;
        prev_1_reg_785 <= ap_sig_allocacmp_prev_1;
        tmp_14_reg_817 <= add_ln25_2_fu_290_p2[32'd6];
        tmp_14_reg_817_pp0_iter1_reg <= tmp_14_reg_817;
        tmp_14_reg_817_pp0_iter2_reg <= tmp_14_reg_817_pp0_iter1_reg;
        tmp_14_reg_817_pp0_iter3_reg <= tmp_14_reg_817_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_925 <= and_ln29_1_fu_469_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_951 <= and_ln29_3_fu_557_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_970 <= and_ln29_5_fu_645_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_load_1_reg_826 <= llike_q0;
        llike_load_reg_821 <= llike_q1;
        transition_load_1_reg_831 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_2_reg_861 <= llike_q1;
        llike_load_3_reg_866 <= llike_q0;
        transition_load_3_reg_871 <= transition_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_1_reg_918 <= min_p_fu_76;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_3_reg_937 <= min_p_3_fu_475_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_6_reg_963 <= min_p_6_fu_563_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_8_reg_975 <= min_p_8_fu_651_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_1_reg_930 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_2_reg_944 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_3_reg_956 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_911 <= grp_fu_227_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_211 <= transition_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_17_reg_982 <= grp_fu_496_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_14_reg_817 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_14_reg_817_pp0_iter2_reg == 1'd1))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_203_p0 = add52_3_reg_906;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_203_p0 = add52_2_reg_901;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_203_p0 = add52_1_reg_896;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_203_p0 = add1_reg_891;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_203_p0 = llike_load_3_reg_866;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_203_p0 = llike_load_2_reg_861;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_203_p0 = llike_load_1_reg_826;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_203_p0 = llike_load_reg_821;
    end else begin
        grp_fu_203_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_203_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_203_p1 = bitcast_ln27_3_fu_375_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_203_p1 = bitcast_ln27_2_fu_370_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_203_p1 = bitcast_ln27_1_fu_366_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_203_p1 = bitcast_ln27_fu_361_p1;
    end else begin
        grp_fu_203_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_207_p0 = p_3_reg_956;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_207_p0 = p_2_reg_944;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_207_p0 = p_1_reg_930;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_207_p0 = p_reg_911;
    end else begin
        grp_fu_207_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_207_p1 = min_p_8_fu_651_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_207_p1 = min_p_6_fu_563_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_207_p1 = min_p_3_fu_475_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_207_p1 = min_p_fu_76;
    end else begin
        grp_fu_207_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_4_fu_341_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_272_p1;
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
            llike_address1_local = zext_ln26_2_fu_316_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_fu_236_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_14_reg_817_pp0_iter2_reg == 1'd1))) begin
        min_p_137_out_ap_vld = 1'b1;
    end else begin
        min_p_137_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address0_local = zext_ln27_3_fu_356_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address0_local = zext_ln27_1_fu_285_p1;
        end else begin
            transition_address0_local = 'bx;
        end
    end else begin
        transition_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_address1_local = zext_ln27_2_fu_328_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_address1_local = zext_ln27_fu_253_p1;
        end else begin
            transition_address1_local = 'bx;
        end
    end else begin
        transition_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_ce0_local = 1'b1;
    end else begin
        transition_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_ce1_local = 1'b1;
    end else begin
        transition_ce1_local = 1'b0;
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
assign add_ln25_1_fu_304_p2 = (prev_1_reg_785 + 6'd2);
assign add_ln25_2_fu_290_p2 = (zext_ln10_fu_241_p1 + 7'd3);
assign add_ln25_3_fu_379_p2 = (prev_1_reg_785 + 6'd4);
assign add_ln25_fu_258_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_336_p2 = (empty + zext_ln26_3_fu_333_p1);
assign add_ln27_1_fu_277_p3 = {{add_ln25_fu_258_p2}, {empty_9}};
assign add_ln27_2_fu_321_p3 = {{add_ln25_1_fu_304_p2}, {empty_9}};
assign add_ln27_3_fu_349_p3 = {{trunc_ln27_fu_346_p1}, {empty_9}};
assign add_ln_fu_245_p3 = {{ap_sig_allocacmp_prev_1}, {empty_9}};
assign and_ln29_1_fu_469_p2 = (or_ln29_1_fu_457_p2 & and_ln29_fu_463_p2);
assign and_ln29_2_fu_551_p2 = (or_ln29_3_fu_545_p2 & or_ln29_2_fu_527_p2);
assign and_ln29_3_fu_557_p2 = (grp_fu_496_p_dout0 & and_ln29_2_fu_551_p2);
assign and_ln29_4_fu_639_p2 = (or_ln29_5_fu_633_p2 & or_ln29_4_fu_615_p2);
assign and_ln29_5_fu_645_p2 = (grp_fu_496_p_dout0 & and_ln29_4_fu_639_p2);
assign and_ln29_6_fu_728_p2 = (or_ln29_7_fu_722_p2 & or_ln29_6_fu_704_p2);
assign and_ln29_7_fu_734_p2 = (tmp_17_reg_982 & and_ln29_6_fu_728_p2);
assign and_ln29_fu_463_p2 = (or_ln29_fu_439_p2 & grp_fu_496_p_dout0);
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
assign bitcast_ln27_1_fu_366_p1 = transition_load_1_reg_831;
assign bitcast_ln27_2_fu_370_p1 = reg_211;
assign bitcast_ln27_3_fu_375_p1 = transition_load_3_reg_871;
assign bitcast_ln27_fu_361_p1 = reg_211;
assign bitcast_ln29_1_fu_410_p1 = min_p_1_reg_918;
assign bitcast_ln29_2_fu_481_p1 = p_1_reg_930;
assign bitcast_ln29_3_fu_498_p1 = min_p_3_reg_937;
assign bitcast_ln29_4_fu_569_p1 = p_2_reg_944;
assign bitcast_ln29_5_fu_586_p1 = min_p_6_reg_963;
assign bitcast_ln29_6_fu_658_p1 = p_3_reg_956;
assign bitcast_ln29_7_fu_675_p1 = min_p_8_reg_975;
assign bitcast_ln29_fu_393_p1 = p_reg_911;
assign grp_fu_227_p_ce = 1'b1;
assign grp_fu_227_p_din0 = grp_fu_203_p0;
assign grp_fu_227_p_din1 = grp_fu_203_p1;
assign grp_fu_227_p_opcode = 2'd0;
assign grp_fu_496_p_ce = 1'b1;
assign grp_fu_496_p_din0 = grp_fu_207_p0;
assign grp_fu_496_p_din1 = grp_fu_207_p1;
assign grp_fu_496_p_opcode = 5'd4;
assign icmp_ln29_10_fu_621_p2 = ((tmp_s_fu_589_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_627_p2 = ((trunc_ln29_5_fu_599_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_692_p2 = ((tmp_15_fu_661_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_698_p2 = ((trunc_ln29_6_fu_671_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_710_p2 = ((tmp_16_fu_678_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_716_p2 = ((trunc_ln29_7_fu_688_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_433_p2 = ((trunc_ln29_fu_406_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_445_p2 = ((tmp_4_fu_413_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_451_p2 = ((trunc_ln29_1_fu_423_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_515_p2 = ((tmp_6_fu_484_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_521_p2 = ((trunc_ln29_2_fu_494_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_533_p2 = ((tmp_7_fu_501_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_539_p2 = ((trunc_ln29_3_fu_511_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_603_p2 = ((tmp_9_fu_572_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_609_p2 = ((trunc_ln29_4_fu_582_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_427_p2 = ((tmp_3_fu_396_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign min_p_10_fu_739_p3 = ((and_ln29_7_fu_734_p2[0:0] == 1'b1) ? p_3_reg_956 : min_p_8_reg_975);
assign min_p_137_out = ((and_ln29_5_reg_970[0:0] == 1'b1) ? p_2_reg_944 : min_p_6_reg_963);
assign min_p_3_fu_475_p3 = ((and_ln29_1_reg_925[0:0] == 1'b1) ? p_reg_911 : min_p_1_reg_918);
assign min_p_6_fu_563_p3 = ((and_ln29_3_reg_951[0:0] == 1'b1) ? p_1_reg_930 : min_p_3_reg_937);
assign min_p_8_fu_651_p3 = ((and_ln29_5_reg_970[0:0] == 1'b1) ? p_2_reg_944 : min_p_6_reg_963);
assign or_ln29_1_fu_457_p2 = (icmp_ln29_3_fu_451_p2 | icmp_ln29_2_fu_445_p2);
assign or_ln29_2_fu_527_p2 = (icmp_ln29_5_fu_521_p2 | icmp_ln29_4_fu_515_p2);
assign or_ln29_3_fu_545_p2 = (icmp_ln29_7_fu_539_p2 | icmp_ln29_6_fu_533_p2);
assign or_ln29_4_fu_615_p2 = (icmp_ln29_9_fu_609_p2 | icmp_ln29_8_fu_603_p2);
assign or_ln29_5_fu_633_p2 = (icmp_ln29_11_fu_627_p2 | icmp_ln29_10_fu_621_p2);
assign or_ln29_6_fu_704_p2 = (icmp_ln29_13_fu_698_p2 | icmp_ln29_12_fu_692_p2);
assign or_ln29_7_fu_722_p2 = (icmp_ln29_15_fu_716_p2 | icmp_ln29_14_fu_710_p2);
assign or_ln29_fu_439_p2 = (icmp_ln29_fu_427_p2 | icmp_ln29_1_fu_433_p2);
assign tmp_11_fu_228_p3 = {{empty_8}, {ap_sig_allocacmp_prev_1}};
assign tmp_12_fu_264_p3 = {{empty_8}, {add_ln25_fu_258_p2}};
assign tmp_13_fu_309_p3 = {{empty_8}, {add_ln25_1_fu_304_p2}};
assign tmp_15_fu_661_p4 = {{bitcast_ln29_6_fu_658_p1[62:52]}};
assign tmp_16_fu_678_p4 = {{bitcast_ln29_7_fu_675_p1[62:52]}};
assign tmp_3_fu_396_p4 = {{bitcast_ln29_fu_393_p1[62:52]}};
assign tmp_4_fu_413_p4 = {{bitcast_ln29_1_fu_410_p1[62:52]}};
assign tmp_6_fu_484_p4 = {{bitcast_ln29_2_fu_481_p1[62:52]}};
assign tmp_7_fu_501_p4 = {{bitcast_ln29_3_fu_498_p1[62:52]}};
assign tmp_9_fu_572_p4 = {{bitcast_ln29_4_fu_569_p1[62:52]}};
assign tmp_s_fu_589_p4 = {{bitcast_ln29_5_fu_586_p1[62:52]}};
assign transition_address0 = transition_address0_local;
assign transition_address1 = transition_address1_local;
assign transition_ce0 = transition_ce0_local;
assign transition_ce1 = transition_ce1_local;
assign trunc_ln27_fu_346_p1 = add_ln25_2_reg_811[5:0];
assign trunc_ln29_1_fu_423_p1 = bitcast_ln29_1_fu_410_p1[51:0];
assign trunc_ln29_2_fu_494_p1 = bitcast_ln29_2_fu_481_p1[51:0];
assign trunc_ln29_3_fu_511_p1 = bitcast_ln29_3_fu_498_p1[51:0];
assign trunc_ln29_4_fu_582_p1 = bitcast_ln29_4_fu_569_p1[51:0];
assign trunc_ln29_5_fu_599_p1 = bitcast_ln29_5_fu_586_p1[51:0];
assign trunc_ln29_6_fu_671_p1 = bitcast_ln29_6_fu_658_p1[51:0];
assign trunc_ln29_7_fu_688_p1 = bitcast_ln29_7_fu_675_p1[51:0];
assign trunc_ln29_fu_406_p1 = bitcast_ln29_fu_393_p1[51:0];
assign zext_ln10_fu_241_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_272_p1 = tmp_12_fu_264_p3;
assign zext_ln26_2_fu_316_p1 = tmp_13_fu_309_p3;
assign zext_ln26_3_fu_333_p1 = add_ln25_2_reg_811;
assign zext_ln26_4_fu_341_p1 = add_ln26_fu_336_p2;
assign zext_ln26_fu_236_p1 = tmp_11_fu_228_p3;
assign zext_ln27_1_fu_285_p1 = add_ln27_1_fu_277_p3;
assign zext_ln27_2_fu_328_p1 = add_ln27_2_fu_321_p3;
assign zext_ln27_3_fu_356_p1 = add_ln27_3_fu_349_p3;
assign zext_ln27_fu_253_p1 = add_ln_fu_245_p3;
endmodule 