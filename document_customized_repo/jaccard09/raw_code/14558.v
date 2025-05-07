module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_12,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,llike_1_address1,llike_1_ce1,llike_1_q1,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty,llike_address0,llike_ce0,llike_q0,zext_ln52_3,min_s_10_out,min_s_10_out_ap_vld,grp_fu_398_p_din0,grp_fu_398_p_din1,grp_fu_398_p_opcode,grp_fu_398_p_dout0,grp_fu_398_p_ce,grp_fu_967_p_din0,grp_fu_967_p_din1,grp_fu_967_p_opcode,grp_fu_967_p_dout0,grp_fu_967_p_ce); 
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
input  [63:0] min_p_12;
input  [7:0] t_1;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [12:0] llike_1_address1;
output   llike_1_ce1;
input  [63:0] llike_1_q1;
input  [6:0] zext_ln52_2;
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
input  [0:0] empty;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
input  [12:0] zext_ln52_3;
output  [7:0] min_s_10_out;
output   min_s_10_out_ap_vld;
output  [63:0] grp_fu_398_p_din0;
output  [63:0] grp_fu_398_p_din1;
output  [1:0] grp_fu_398_p_opcode;
input  [63:0] grp_fu_398_p_dout0;
output   grp_fu_398_p_ce;
output  [63:0] grp_fu_967_p_din0;
output  [63:0] grp_fu_967_p_din1;
output  [4:0] grp_fu_967_p_opcode;
input  [0:0] grp_fu_967_p_dout0;
output   grp_fu_967_p_ce;
reg ap_idle;
reg min_s_10_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_12_reg_1054;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_279_p3;
reg   [63:0] reg_293;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] grp_fu_286_p3;
reg   [63:0] reg_297;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_301;
wire    ap_block_pp0_stage0_11001;
wire   [10:0] zext_ln52_2_cast_fu_306_p1;
reg   [10:0] zext_ln52_2_cast_reg_998;
reg   [5:0] s_reg_1005;
reg   [5:0] s_reg_1005_pp0_iter1_reg;
wire   [5:0] add_ln53_fu_375_p2;
reg   [5:0] add_ln53_reg_1026;
reg   [5:0] add_ln53_reg_1026_pp0_iter1_reg;
wire   [5:0] add_ln53_1_fu_404_p2;
reg   [5:0] add_ln53_1_reg_1037;
reg   [5:0] add_ln53_1_reg_1037_pp0_iter1_reg;
wire   [6:0] add_ln53_2_fu_429_p2;
reg   [6:0] add_ln53_2_reg_1048;
reg   [0:0] tmp_12_reg_1054_pp0_iter1_reg;
reg   [63:0] llike_1_load_reg_1058;
reg   [63:0] llike_load_reg_1063;
reg   [63:0] llike_1_load_1_reg_1078;
wire   [63:0] bitcast_ln54_fu_502_p1;
reg   [63:0] llike_load_1_reg_1103;
wire   [5:0] trunc_ln54_fu_507_p1;
reg   [5:0] trunc_ln54_reg_1108;
reg   [5:0] trunc_ln54_reg_1108_pp0_iter1_reg;
wire   [63:0] bitcast_ln54_1_fu_529_p1;
wire   [63:0] bitcast_ln54_2_fu_534_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln54_3_fu_539_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] min_p_1_reg_1138;
reg   [63:0] p_1_reg_1145;
wire   [0:0] and_ln55_1_fu_635_p2;
reg   [0:0] and_ln55_1_reg_1152;
reg   [63:0] p_2_reg_1158;
wire   [63:0] min_p_3_fu_641_p3;
reg   [63:0] min_p_3_reg_1165;
wire   [0:0] and_ln55_3_fu_724_p2;
reg   [0:0] and_ln55_3_reg_1172;
wire   [63:0] min_p_5_fu_743_p3;
reg   [63:0] min_p_5_reg_1178;
wire   [7:0] min_s_5_fu_752_p3;
reg   [7:0] min_s_5_reg_1185;
wire   [0:0] and_ln55_5_fu_835_p2;
reg   [0:0] and_ln55_5_reg_1190;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [7:0] min_s_6_fu_844_p3;
reg   [7:0] min_s_6_reg_1196;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] min_p_7_fu_851_p3;
reg   [63:0] min_p_7_reg_1201;
reg   [0:0] tmp_15_reg_1208;
wire    ap_block_pp0_stage8_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage7_subdone;
reg    ap_condition_exit_pp0_iter1_stage7;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln54_4_fu_350_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_369_p1;
wire   [63:0] zext_ln54_5_fu_399_p1;
wire   [63:0] zext_ln54_6_fu_424_p1;
wire   [63:0] zext_ln54_1_fu_455_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_2_fu_473_p1;
wire   [63:0] zext_ln54_8_fu_497_p1;
wire   [63:0] zext_ln54_3_fu_523_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] min_p_fu_94;
wire   [63:0] min_p_9_fu_939_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_98;
wire   [7:0] min_s_7_fu_949_p3;
wire    ap_block_pp0_stage5;
reg   [5:0] min_s_1_fu_102;
wire   [5:0] add_ln53_3_fu_544_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage7_01001;
reg    llike_1_ce1_local;
reg    llike_1_ce0_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    llike_ce0_local;
reg   [12:0] llike_address0_local;
reg   [63:0] grp_fu_271_p0;
reg   [63:0] grp_fu_271_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
reg   [63:0] grp_fu_275_p0;
reg   [63:0] grp_fu_275_p1;
wire    ap_block_pp0_stage7;
wire   [4:0] lshr_ln8_3_fu_332_p4;
wire   [12:0] tmp_s_fu_342_p3;
wire   [10:0] shl_ln2_fu_355_p3;
wire   [10:0] add_ln54_fu_363_p2;
wire   [4:0] lshr_ln8_4_fu_381_p4;
wire   [12:0] tmp_4_fu_391_p3;
wire   [4:0] add_ln8_fu_410_p2;
wire   [12:0] tmp_8_fu_416_p3;
wire   [6:0] zext_ln20_fu_328_p1;
wire   [10:0] shl_ln54_1_fu_443_p3;
wire   [10:0] add_ln54_1_fu_450_p2;
wire   [10:0] shl_ln54_2_fu_461_p3;
wire   [10:0] add_ln54_2_fu_468_p2;
wire   [5:0] lshr_ln9_2_fu_479_p4;
wire   [12:0] zext_ln54_7_fu_488_p1;
wire   [12:0] add_ln54_4_fu_492_p2;
wire   [10:0] shl_ln54_3_fu_510_p3;
wire   [10:0] add_ln54_3_fu_518_p2;
wire    ap_block_pp0_stage8;
wire   [63:0] bitcast_ln55_fu_558_p1;
wire   [63:0] bitcast_ln55_1_fu_576_p1;
wire   [10:0] tmp_1_fu_562_p4;
wire   [51:0] trunc_ln55_fu_572_p1;
wire   [0:0] icmp_ln55_1_fu_599_p2;
wire   [0:0] icmp_ln55_fu_593_p2;
wire   [10:0] tmp_2_fu_579_p4;
wire   [51:0] trunc_ln55_1_fu_589_p1;
wire   [0:0] icmp_ln55_3_fu_617_p2;
wire   [0:0] icmp_ln55_2_fu_611_p2;
wire   [0:0] or_ln55_fu_605_p2;
wire   [0:0] and_ln55_fu_629_p2;
wire   [0:0] or_ln55_1_fu_623_p2;
wire   [63:0] bitcast_ln55_2_fu_648_p1;
wire   [63:0] bitcast_ln55_3_fu_665_p1;
wire   [10:0] tmp_5_fu_651_p4;
wire   [51:0] trunc_ln55_2_fu_661_p1;
wire   [0:0] icmp_ln55_5_fu_688_p2;
wire   [0:0] icmp_ln55_4_fu_682_p2;
wire   [10:0] tmp_6_fu_668_p4;
wire   [51:0] trunc_ln55_3_fu_678_p1;
wire   [0:0] icmp_ln55_7_fu_706_p2;
wire   [0:0] icmp_ln55_6_fu_700_p2;
wire   [0:0] or_ln55_3_fu_712_p2;
wire   [0:0] or_ln55_2_fu_694_p2;
wire   [0:0] and_ln55_2_fu_718_p2;
wire   [7:0] zext_ln55_fu_733_p1;
wire   [7:0] zext_ln55_1_fu_749_p1;
wire   [7:0] min_s_4_fu_736_p3;
wire    ap_block_pp0_stage6;
wire   [63:0] bitcast_ln55_4_fu_759_p1;
wire   [63:0] bitcast_ln55_5_fu_776_p1;
wire   [10:0] tmp_9_fu_762_p4;
wire   [51:0] trunc_ln55_4_fu_772_p1;
wire   [0:0] icmp_ln55_9_fu_799_p2;
wire   [0:0] icmp_ln55_8_fu_793_p2;
wire   [10:0] tmp_10_fu_779_p4;
wire   [51:0] trunc_ln55_5_fu_789_p1;
wire   [0:0] icmp_ln55_11_fu_817_p2;
wire   [0:0] icmp_ln55_10_fu_811_p2;
wire   [0:0] or_ln55_5_fu_823_p2;
wire   [0:0] or_ln55_4_fu_805_p2;
wire   [0:0] and_ln55_4_fu_829_p2;
wire   [7:0] zext_ln55_2_fu_841_p1;
wire   [63:0] bitcast_ln55_6_fu_857_p1;
wire   [63:0] bitcast_ln55_7_fu_875_p1;
wire   [10:0] tmp_13_fu_861_p4;
wire   [51:0] trunc_ln55_6_fu_871_p1;
wire   [0:0] icmp_ln55_13_fu_898_p2;
wire   [0:0] icmp_ln55_12_fu_892_p2;
wire   [10:0] tmp_14_fu_878_p4;
wire   [51:0] trunc_ln55_7_fu_888_p1;
wire   [0:0] icmp_ln55_15_fu_916_p2;
wire   [0:0] icmp_ln55_14_fu_910_p2;
wire   [0:0] or_ln55_7_fu_922_p2;
wire   [0:0] or_ln55_6_fu_904_p2;
wire   [0:0] and_ln55_6_fu_928_p2;
wire   [0:0] and_ln55_7_fu_934_p2;
wire   [7:0] zext_ln55_3_fu_946_p1;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_94 = 64'd0;
#0 min_s_fu_98 = 8'd0;
#0 min_s_1_fu_102 = 6'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_p_fu_94 <= min_p_12;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_94 <= min_p_9_fu_939_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_102 <= 6'd1;
    end else if (((tmp_12_reg_1054 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_1_fu_102 <= add_ln53_3_fu_544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_s_fu_98 <= 8'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_s_fu_98 <= min_s_7_fu_949_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_1_reg_1037 <= add_ln53_1_fu_404_p2;
        add_ln53_1_reg_1037_pp0_iter1_reg <= add_ln53_1_reg_1037;
        add_ln53_2_reg_1048 <= add_ln53_2_fu_429_p2;
        add_ln53_reg_1026 <= add_ln53_fu_375_p2;
        add_ln53_reg_1026_pp0_iter1_reg <= add_ln53_reg_1026;
        s_reg_1005 <= ap_sig_allocacmp_s;
        s_reg_1005_pp0_iter1_reg <= s_reg_1005;
        tmp_12_reg_1054 <= add_ln53_2_fu_429_p2[32'd6];
        tmp_12_reg_1054_pp0_iter1_reg <= tmp_12_reg_1054;
        zext_ln52_2_cast_reg_998[6 : 0] <= zext_ln52_2_cast_fu_306_p1[6 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        and_ln55_1_reg_1152 <= and_ln55_1_fu_635_p2;
        trunc_ln54_reg_1108 <= trunc_ln54_fu_507_p1;
        trunc_ln54_reg_1108_pp0_iter1_reg <= trunc_ln54_reg_1108;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln55_3_reg_1172 <= and_ln55_3_fu_724_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln55_5_reg_1190 <= and_ln55_5_fu_835_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_1_reg_1078 <= llike_1_q0;
        llike_1_load_reg_1058 <= llike_1_q1;
        llike_load_reg_1063 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_1_reg_1103 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_reg_1138 <= min_p_fu_94;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_3_reg_1165 <= min_p_3_fu_641_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_5_reg_1178 <= min_p_5_fu_743_p3;
        min_s_5_reg_1185 <= min_s_5_fu_752_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_7_reg_1201 <= min_p_7_fu_851_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_s_6_reg_1196 <= min_s_6_fu_844_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_1_reg_1145 <= grp_fu_398_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_2_reg_1158 <= grp_fu_398_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_293 <= grp_fu_279_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_297 <= grp_fu_286_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_301 <= grp_fu_398_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        tmp_15_reg_1208 <= grp_fu_967_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_12_reg_1054 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_12_reg_1054_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
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
        ap_sig_allocacmp_s = min_s_1_fu_102;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_271_p0 = llike_load_1_reg_1103;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_271_p0 = llike_1_load_1_reg_1078;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_271_p0 = llike_load_reg_1063;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_271_p0 = llike_1_load_reg_1058;
        end else begin
            grp_fu_271_p0 = 'bx;
        end
    end else begin
        grp_fu_271_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_271_p1 = bitcast_ln54_3_fu_539_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_271_p1 = bitcast_ln54_2_fu_534_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_271_p1 = bitcast_ln54_1_fu_529_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_271_p1 = bitcast_ln54_fu_502_p1;
        end else begin
            grp_fu_271_p1 = 'bx;
        end
    end else begin
        grp_fu_271_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_275_p0 = p_2_reg_1158;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_275_p0 = p_1_reg_1145;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_275_p0 = reg_301;
    end else begin
        grp_fu_275_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_275_p1 = min_p_7_fu_851_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_275_p1 = min_p_5_fu_743_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_275_p1 = min_p_3_fu_641_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_275_p1 = min_p_fu_94;
        end else begin
            grp_fu_275_p1 = 'bx;
        end
    end else begin
        grp_fu_275_p1 = 'bx;
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
            llike_address0_local = zext_ln54_8_fu_497_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_5_fu_399_p1;
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
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7) & (tmp_12_reg_1054_pp0_iter1_reg == 1'd1))) begin
        min_s_10_out_ap_vld = 1'b1;
    end else begin
        min_s_10_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_2_fu_473_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_369_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln54_3_fu_523_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln54_1_fu_455_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_2_fu_473_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_369_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln54_3_fu_523_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln54_1_fu_455_p1;
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
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage7))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
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
assign add_ln53_1_fu_404_p2 = (ap_sig_allocacmp_s + 6'd2);
assign add_ln53_2_fu_429_p2 = (zext_ln20_fu_328_p1 + 7'd3);
assign add_ln53_3_fu_544_p2 = (s_reg_1005 + 6'd4);
assign add_ln53_fu_375_p2 = (ap_sig_allocacmp_s + 6'd1);
assign add_ln54_1_fu_450_p2 = (shl_ln54_1_fu_443_p3 + zext_ln52_2_cast_reg_998);
assign add_ln54_2_fu_468_p2 = (shl_ln54_2_fu_461_p3 + zext_ln52_2_cast_reg_998);
assign add_ln54_3_fu_518_p2 = (shl_ln54_3_fu_510_p3 + zext_ln52_2_cast_reg_998);
assign add_ln54_4_fu_492_p2 = (zext_ln52_3 + zext_ln54_7_fu_488_p1);
assign add_ln54_fu_363_p2 = (shl_ln2_fu_355_p3 + zext_ln52_2_cast_fu_306_p1);
assign add_ln8_fu_410_p2 = (lshr_ln8_3_fu_332_p4 + 5'd1);
assign and_ln55_1_fu_635_p2 = (or_ln55_1_fu_623_p2 & and_ln55_fu_629_p2);
assign and_ln55_2_fu_718_p2 = (or_ln55_3_fu_712_p2 & or_ln55_2_fu_694_p2);
assign and_ln55_3_fu_724_p2 = (grp_fu_967_p_dout0 & and_ln55_2_fu_718_p2);
assign and_ln55_4_fu_829_p2 = (or_ln55_5_fu_823_p2 & or_ln55_4_fu_805_p2);
assign and_ln55_5_fu_835_p2 = (grp_fu_967_p_dout0 & and_ln55_4_fu_829_p2);
assign and_ln55_6_fu_928_p2 = (or_ln55_7_fu_922_p2 & or_ln55_6_fu_904_p2);
assign and_ln55_7_fu_934_p2 = (tmp_15_reg_1208 & and_ln55_6_fu_928_p2);
assign and_ln55_fu_629_p2 = (or_ln55_fu_605_p2 & grp_fu_967_p_dout0);
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
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln54_1_fu_529_p1 = reg_297;
assign bitcast_ln54_2_fu_534_p1 = reg_293;
assign bitcast_ln54_3_fu_539_p1 = reg_297;
assign bitcast_ln54_fu_502_p1 = reg_293;
assign bitcast_ln55_1_fu_576_p1 = min_p_1_reg_1138;
assign bitcast_ln55_2_fu_648_p1 = p_1_reg_1145;
assign bitcast_ln55_3_fu_665_p1 = min_p_3_reg_1165;
assign bitcast_ln55_4_fu_759_p1 = p_2_reg_1158;
assign bitcast_ln55_5_fu_776_p1 = min_p_5_reg_1178;
assign bitcast_ln55_6_fu_857_p1 = reg_301;
assign bitcast_ln55_7_fu_875_p1 = min_p_7_reg_1201;
assign bitcast_ln55_fu_558_p1 = reg_301;
assign grp_fu_279_p3 = ((empty[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_286_p3 = ((empty[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_398_p_ce = 1'b1;
assign grp_fu_398_p_din0 = grp_fu_271_p0;
assign grp_fu_398_p_din1 = grp_fu_271_p1;
assign grp_fu_398_p_opcode = 2'd0;
assign grp_fu_967_p_ce = 1'b1;
assign grp_fu_967_p_din0 = grp_fu_275_p0;
assign grp_fu_967_p_din1 = grp_fu_275_p1;
assign grp_fu_967_p_opcode = 5'd4;
assign icmp_ln55_10_fu_811_p2 = ((tmp_10_fu_779_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_11_fu_817_p2 = ((trunc_ln55_5_fu_789_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_12_fu_892_p2 = ((tmp_13_fu_861_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_13_fu_898_p2 = ((trunc_ln55_6_fu_871_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_14_fu_910_p2 = ((tmp_14_fu_878_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_15_fu_916_p2 = ((trunc_ln55_7_fu_888_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_1_fu_599_p2 = ((trunc_ln55_fu_572_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_611_p2 = ((tmp_2_fu_579_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_617_p2 = ((trunc_ln55_1_fu_589_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_682_p2 = ((tmp_5_fu_651_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_688_p2 = ((trunc_ln55_2_fu_661_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_700_p2 = ((tmp_6_fu_668_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_706_p2 = ((trunc_ln55_3_fu_678_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_8_fu_793_p2 = ((tmp_9_fu_762_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_9_fu_799_p2 = ((trunc_ln55_4_fu_772_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_593_p2 = ((tmp_1_fu_562_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_6_fu_424_p1;
assign llike_1_address1 = zext_ln54_4_fu_350_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_ce1 = llike_1_ce1_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_3_fu_332_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign lshr_ln8_4_fu_381_p4 = {{add_ln53_fu_375_p2[5:1]}};
assign lshr_ln9_2_fu_479_p4 = {{add_ln53_2_reg_1048[6:1]}};
assign min_p_3_fu_641_p3 = ((and_ln55_1_reg_1152[0:0] == 1'b1) ? reg_301 : min_p_1_reg_1138);
assign min_p_5_fu_743_p3 = ((and_ln55_3_reg_1172[0:0] == 1'b1) ? p_1_reg_1145 : min_p_3_reg_1165);
assign min_p_7_fu_851_p3 = ((and_ln55_5_reg_1190[0:0] == 1'b1) ? p_2_reg_1158 : min_p_5_reg_1178);
assign min_p_9_fu_939_p3 = ((and_ln55_7_fu_934_p2[0:0] == 1'b1) ? reg_301 : min_p_7_reg_1201);
assign min_s_10_out = ((and_ln55_5_reg_1190[0:0] == 1'b1) ? zext_ln55_2_fu_841_p1 : min_s_5_reg_1185);
assign min_s_4_fu_736_p3 = ((and_ln55_1_reg_1152[0:0] == 1'b1) ? zext_ln55_fu_733_p1 : min_s_fu_98);
assign min_s_5_fu_752_p3 = ((and_ln55_3_reg_1172[0:0] == 1'b1) ? zext_ln55_1_fu_749_p1 : min_s_4_fu_736_p3);
assign min_s_6_fu_844_p3 = ((and_ln55_5_reg_1190[0:0] == 1'b1) ? zext_ln55_2_fu_841_p1 : min_s_5_reg_1185);
assign min_s_7_fu_949_p3 = ((and_ln55_7_fu_934_p2[0:0] == 1'b1) ? zext_ln55_3_fu_946_p1 : min_s_6_reg_1196);
assign or_ln55_1_fu_623_p2 = (icmp_ln55_3_fu_617_p2 | icmp_ln55_2_fu_611_p2);
assign or_ln55_2_fu_694_p2 = (icmp_ln55_5_fu_688_p2 | icmp_ln55_4_fu_682_p2);
assign or_ln55_3_fu_712_p2 = (icmp_ln55_7_fu_706_p2 | icmp_ln55_6_fu_700_p2);
assign or_ln55_4_fu_805_p2 = (icmp_ln55_9_fu_799_p2 | icmp_ln55_8_fu_793_p2);
assign or_ln55_5_fu_823_p2 = (icmp_ln55_11_fu_817_p2 | icmp_ln55_10_fu_811_p2);
assign or_ln55_6_fu_904_p2 = (icmp_ln55_13_fu_898_p2 | icmp_ln55_12_fu_892_p2);
assign or_ln55_7_fu_922_p2 = (icmp_ln55_15_fu_916_p2 | icmp_ln55_14_fu_910_p2);
assign or_ln55_fu_605_p2 = (icmp_ln55_fu_593_p2 | icmp_ln55_1_fu_599_p2);
assign shl_ln2_fu_355_p3 = {{ap_sig_allocacmp_s}, {5'd0}};
assign shl_ln54_1_fu_443_p3 = {{add_ln53_reg_1026}, {5'd0}};
assign shl_ln54_2_fu_461_p3 = {{add_ln53_1_reg_1037}, {5'd0}};
assign shl_ln54_3_fu_510_p3 = {{trunc_ln54_fu_507_p1}, {5'd0}};
assign tmp_10_fu_779_p4 = {{bitcast_ln55_5_fu_776_p1[62:52]}};
assign tmp_13_fu_861_p4 = {{bitcast_ln55_6_fu_857_p1[62:52]}};
assign tmp_14_fu_878_p4 = {{bitcast_ln55_7_fu_875_p1[62:52]}};
assign tmp_1_fu_562_p4 = {{bitcast_ln55_fu_558_p1[62:52]}};
assign tmp_2_fu_579_p4 = {{bitcast_ln55_1_fu_576_p1[62:52]}};
assign tmp_4_fu_391_p3 = {{t_1}, {lshr_ln8_4_fu_381_p4}};
assign tmp_5_fu_651_p4 = {{bitcast_ln55_2_fu_648_p1[62:52]}};
assign tmp_6_fu_668_p4 = {{bitcast_ln55_3_fu_665_p1[62:52]}};
assign tmp_8_fu_416_p3 = {{t_1}, {add_ln8_fu_410_p2}};
assign tmp_9_fu_762_p4 = {{bitcast_ln55_4_fu_759_p1[62:52]}};
assign tmp_s_fu_342_p3 = {{t_1}, {lshr_ln8_3_fu_332_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln54_fu_507_p1 = add_ln53_2_reg_1048[5:0];
assign trunc_ln55_1_fu_589_p1 = bitcast_ln55_1_fu_576_p1[51:0];
assign trunc_ln55_2_fu_661_p1 = bitcast_ln55_2_fu_648_p1[51:0];
assign trunc_ln55_3_fu_678_p1 = bitcast_ln55_3_fu_665_p1[51:0];
assign trunc_ln55_4_fu_772_p1 = bitcast_ln55_4_fu_759_p1[51:0];
assign trunc_ln55_5_fu_789_p1 = bitcast_ln55_5_fu_776_p1[51:0];
assign trunc_ln55_6_fu_871_p1 = bitcast_ln55_6_fu_857_p1[51:0];
assign trunc_ln55_7_fu_888_p1 = bitcast_ln55_7_fu_875_p1[51:0];
assign trunc_ln55_fu_572_p1 = bitcast_ln55_fu_558_p1[51:0];
assign zext_ln20_fu_328_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_306_p1 = zext_ln52_2;
assign zext_ln54_1_fu_455_p1 = add_ln54_1_fu_450_p2;
assign zext_ln54_2_fu_473_p1 = add_ln54_2_fu_468_p2;
assign zext_ln54_3_fu_523_p1 = add_ln54_3_fu_518_p2;
assign zext_ln54_4_fu_350_p1 = tmp_s_fu_342_p3;
assign zext_ln54_5_fu_399_p1 = tmp_4_fu_391_p3;
assign zext_ln54_6_fu_424_p1 = tmp_8_fu_416_p3;
assign zext_ln54_7_fu_488_p1 = lshr_ln9_2_fu_479_p4;
assign zext_ln54_8_fu_497_p1 = add_ln54_4_fu_492_p2;
assign zext_ln54_fu_369_p1 = add_ln54_fu_363_p2;
assign zext_ln55_1_fu_749_p1 = add_ln53_reg_1026_pp0_iter1_reg;
assign zext_ln55_2_fu_841_p1 = add_ln53_1_reg_1037_pp0_iter1_reg;
assign zext_ln55_3_fu_946_p1 = trunc_ln54_reg_1108_pp0_iter1_reg;
assign zext_ln55_fu_733_p1 = s_reg_1005_pp0_iter1_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_998[10:7] <= 4'b0000;
end
endmodule 