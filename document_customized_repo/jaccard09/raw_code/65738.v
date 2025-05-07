module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_10,empty_9,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty_10,bitcast_ln24,empty,llike_address0,llike_ce0,llike_q0,min_p_18_out,min_p_18_out_ap_vld,grp_fu_452_p_din0,grp_fu_452_p_din1,grp_fu_452_p_opcode,grp_fu_452_p_dout0,grp_fu_452_p_ce,grp_fu_1048_p_din0,grp_fu_1048_p_din1,grp_fu_1048_p_opcode,grp_fu_1048_p_dout0,grp_fu_1048_p_ce); 
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
input  [63:0] min_p_10;
input  [7:0] empty_9;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
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
input  [11:0] empty;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [63:0] min_p_18_out;
output   min_p_18_out_ap_vld;
output  [63:0] grp_fu_452_p_din0;
output  [63:0] grp_fu_452_p_din1;
output  [1:0] grp_fu_452_p_opcode;
input  [63:0] grp_fu_452_p_dout0;
output   grp_fu_452_p_ce;
output  [63:0] grp_fu_1048_p_din0;
output  [63:0] grp_fu_1048_p_din1;
output  [4:0] grp_fu_1048_p_opcode;
input  [0:0] grp_fu_1048_p_dout0;
output   grp_fu_1048_p_ce;
reg ap_idle;
reg min_p_18_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_13_reg_966;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_297_p3;
reg   [63:0] reg_311;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_915;
reg   [5:0] tmp_22_reg_955;
wire   [6:0] add_ln25_fu_425_p2;
reg   [6:0] add_ln25_reg_960;
reg   [0:0] tmp_13_reg_966_pp0_iter1_reg;
reg   [0:0] tmp_13_reg_966_pp0_iter2_reg;
reg   [0:0] tmp_13_reg_966_pp0_iter3_reg;
reg   [63:0] llike_1_load_reg_970;
reg   [63:0] llike_2_load_reg_975;
wire   [63:0] grp_fu_304_p3;
reg   [63:0] select_ln27_1_reg_980;
reg   [63:0] llike_3_load_reg_985;
wire   [63:0] bitcast_ln27_fu_490_p1;
reg   [63:0] llike_load_reg_1020;
reg   [63:0] select_ln27_3_reg_1025;
wire   [63:0] bitcast_ln27_1_fu_495_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] bitcast_ln27_2_fu_499_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln27_3_fu_504_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] add1_reg_1045;
reg   [63:0] add52_1_reg_1050;
reg   [63:0] add52_2_reg_1055;
reg   [63:0] add52_3_reg_1060;
reg   [63:0] p_reg_1065;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_11_reg_1072;
wire   [0:0] and_ln29_1_fu_598_p2;
reg   [0:0] and_ln29_1_reg_1079;
reg   [63:0] p_4_reg_1084;
wire   [63:0] min_p_13_fu_604_p3;
reg   [63:0] min_p_13_reg_1091;
reg   [63:0] p_5_reg_1098;
wire   [0:0] and_ln29_3_fu_686_p2;
reg   [0:0] and_ln29_3_reg_1105;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_6_reg_1110;
wire   [63:0] min_p_15_fu_692_p3;
reg   [63:0] min_p_15_reg_1117;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_774_p2;
reg   [0:0] and_ln29_5_reg_1124;
wire   [63:0] min_p_17_fu_780_p3;
reg   [63:0] min_p_17_reg_1129;
reg   [0:0] tmp_27_reg_1136;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_350_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_373_p1;
wire   [63:0] zext_ln27_1_fu_403_p1;
wire   [63:0] zext_ln27_2_fu_445_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln26_2_fu_469_p1;
wire   [63:0] zext_ln27_3_fu_484_p1;
reg   [63:0] min_p_fu_104;
wire   [63:0] min_p_19_fu_868_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_108;
wire   [5:0] add_ln25_1_fu_508_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
wire    ap_block_pp0_stage0_01001;
reg    llike_1_ce0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_289_p0;
reg   [63:0] grp_fu_289_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_293_p0;
reg   [63:0] grp_fu_293_p1;
wire   [3:0] lshr_ln7_1_fu_332_p4;
wire   [11:0] tmp_s_fu_342_p3;
wire   [10:0] add_ln_fu_365_p3;
wire   [10:0] shl_ln1_fu_357_p3;
wire   [10:0] add_ln27_fu_379_p2;
wire   [5:0] tmp_17_fu_385_p4;
wire   [10:0] add_ln27_2_fu_395_p3;
wire   [10:0] add_ln27_1_fu_409_p2;
wire   [6:0] zext_ln16_fu_328_p1;
wire   [10:0] add_ln27_4_fu_439_p3;
wire   [4:0] lshr_ln8_1_fu_451_p4;
wire   [11:0] zext_ln26_1_fu_460_p1;
wire   [11:0] add_ln26_fu_464_p2;
wire   [5:0] trunc_ln27_fu_474_p1;
wire   [10:0] add_ln27_5_fu_477_p3;
wire   [63:0] bitcast_ln29_fu_522_p1;
wire   [63:0] bitcast_ln29_1_fu_539_p1;
wire   [10:0] tmp_14_fu_525_p4;
wire   [51:0] trunc_ln29_fu_535_p1;
wire   [0:0] icmp_ln29_1_fu_562_p2;
wire   [0:0] icmp_ln29_fu_556_p2;
wire   [10:0] tmp_15_fu_542_p4;
wire   [51:0] trunc_ln29_1_fu_552_p1;
wire   [0:0] icmp_ln29_3_fu_580_p2;
wire   [0:0] icmp_ln29_2_fu_574_p2;
wire   [0:0] or_ln29_fu_568_p2;
wire   [0:0] and_ln29_fu_592_p2;
wire   [0:0] or_ln29_1_fu_586_p2;
wire   [63:0] bitcast_ln29_2_fu_610_p1;
wire   [63:0] bitcast_ln29_3_fu_627_p1;
wire   [10:0] tmp_18_fu_613_p4;
wire   [51:0] trunc_ln29_2_fu_623_p1;
wire   [0:0] icmp_ln29_5_fu_650_p2;
wire   [0:0] icmp_ln29_4_fu_644_p2;
wire   [10:0] tmp_19_fu_630_p4;
wire   [51:0] trunc_ln29_3_fu_640_p1;
wire   [0:0] icmp_ln29_7_fu_668_p2;
wire   [0:0] icmp_ln29_6_fu_662_p2;
wire   [0:0] or_ln29_3_fu_674_p2;
wire   [0:0] or_ln29_2_fu_656_p2;
wire   [0:0] and_ln29_2_fu_680_p2;
wire   [63:0] bitcast_ln29_4_fu_698_p1;
wire   [63:0] bitcast_ln29_5_fu_715_p1;
wire   [10:0] tmp_21_fu_701_p4;
wire   [51:0] trunc_ln29_4_fu_711_p1;
wire   [0:0] icmp_ln29_9_fu_738_p2;
wire   [0:0] icmp_ln29_8_fu_732_p2;
wire   [10:0] tmp_23_fu_718_p4;
wire   [51:0] trunc_ln29_5_fu_728_p1;
wire   [0:0] icmp_ln29_11_fu_756_p2;
wire   [0:0] icmp_ln29_10_fu_750_p2;
wire   [0:0] or_ln29_5_fu_762_p2;
wire   [0:0] or_ln29_4_fu_744_p2;
wire   [0:0] and_ln29_4_fu_768_p2;
wire   [63:0] bitcast_ln29_6_fu_787_p1;
wire   [63:0] bitcast_ln29_7_fu_804_p1;
wire   [10:0] tmp_25_fu_790_p4;
wire   [51:0] trunc_ln29_6_fu_800_p1;
wire   [0:0] icmp_ln29_13_fu_827_p2;
wire   [0:0] icmp_ln29_12_fu_821_p2;
wire   [10:0] tmp_26_fu_807_p4;
wire   [51:0] trunc_ln29_7_fu_817_p1;
wire   [0:0] icmp_ln29_15_fu_845_p2;
wire   [0:0] icmp_ln29_14_fu_839_p2;
wire   [0:0] or_ln29_7_fu_851_p2;
wire   [0:0] or_ln29_6_fu_833_p2;
wire   [0:0] and_ln29_6_fu_857_p2;
wire   [0:0] and_ln29_7_fu_863_p2;
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
#0 min_p_fu_104 = 64'd0;
#0 prev_fu_108 = 6'd0;
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
        min_p_fu_104 <= min_p_10;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_13_reg_966_pp0_iter3_reg == 1'd0))) begin
        min_p_fu_104 <= min_p_19_fu_868_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_108 <= 6'd1;
    end else if (((tmp_13_reg_966 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_108 <= add_ln25_1_fu_508_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_1045 <= grp_fu_452_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_1050 <= grp_fu_452_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_1055 <= grp_fu_452_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_1060 <= grp_fu_452_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_960 <= add_ln25_fu_425_p2;
        prev_1_reg_915 <= ap_sig_allocacmp_prev_1;
        tmp_13_reg_966 <= add_ln25_fu_425_p2[32'd6];
        tmp_13_reg_966_pp0_iter1_reg <= tmp_13_reg_966;
        tmp_13_reg_966_pp0_iter2_reg <= tmp_13_reg_966_pp0_iter1_reg;
        tmp_13_reg_966_pp0_iter3_reg <= tmp_13_reg_966_pp0_iter2_reg;
        tmp_22_reg_955 <= {{add_ln27_1_fu_409_p2[10:5]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_1079 <= and_ln29_1_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_1105 <= and_ln29_3_fu_686_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_1124 <= and_ln29_5_fu_774_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_reg_970 <= llike_1_q0;
        llike_2_load_reg_975 <= llike_2_q0;
        llike_3_load_reg_985 <= llike_3_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_reg_1020 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_11_reg_1072 <= min_p_fu_104;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_13_reg_1091 <= min_p_13_fu_604_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_15_reg_1117 <= min_p_15_fu_692_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_17_reg_1129 <= min_p_17_fu_780_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_4_reg_1084 <= grp_fu_452_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_5_reg_1098 <= grp_fu_452_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_6_reg_1110 <= grp_fu_452_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_1065 <= grp_fu_452_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_311 <= grp_fu_297_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln27_1_reg_980 <= grp_fu_304_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        select_ln27_3_reg_1025 <= grp_fu_304_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_27_reg_1136 <= grp_fu_1048_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_13_reg_966 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_13_reg_966_pp0_iter2_reg == 1'd1))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_289_p0 = add52_3_reg_1060;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_289_p0 = add52_2_reg_1055;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_289_p0 = add52_1_reg_1050;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_289_p0 = add1_reg_1045;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_289_p0 = llike_load_reg_1020;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_289_p0 = llike_3_load_reg_985;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_289_p0 = llike_2_load_reg_975;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_289_p0 = llike_1_load_reg_970;
    end else begin
        grp_fu_289_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_289_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_289_p1 = bitcast_ln27_3_fu_504_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_289_p1 = bitcast_ln27_2_fu_499_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_289_p1 = bitcast_ln27_1_fu_495_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_289_p1 = bitcast_ln27_fu_490_p1;
    end else begin
        grp_fu_289_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_293_p0 = p_6_reg_1110;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_293_p0 = p_5_reg_1098;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_293_p0 = p_4_reg_1084;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_293_p0 = p_reg_1065;
    end else begin
        grp_fu_293_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_293_p1 = min_p_17_fu_780_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_293_p1 = min_p_15_fu_692_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_293_p1 = min_p_13_fu_604_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_293_p1 = min_p_fu_104;
    end else begin
        grp_fu_293_p1 = 'bx;
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
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_13_reg_966_pp0_iter2_reg == 1'd1))) begin
        min_p_18_out_ap_vld = 1'b1;
    end else begin
        min_p_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_484_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_403_p1;
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
            transition_0_address1_local = zext_ln27_2_fu_445_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_373_p1;
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
            transition_1_address0_local = zext_ln27_3_fu_484_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_403_p1;
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
            transition_1_address1_local = zext_ln27_2_fu_445_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_373_p1;
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
assign add_ln25_1_fu_508_p2 = (prev_1_reg_915 + 6'd4);
assign add_ln25_fu_425_p2 = (zext_ln16_fu_328_p1 + 7'd3);
assign add_ln26_fu_464_p2 = (empty + zext_ln26_1_fu_460_p1);
assign add_ln27_1_fu_409_p2 = (shl_ln1_fu_357_p3 + 11'd64);
assign add_ln27_2_fu_395_p3 = {{tmp_17_fu_385_p4}, {lshr_ln}};
assign add_ln27_4_fu_439_p3 = {{tmp_22_reg_955}, {lshr_ln}};
assign add_ln27_5_fu_477_p3 = {{trunc_ln27_fu_474_p1}, {lshr_ln}};
assign add_ln27_fu_379_p2 = (shl_ln1_fu_357_p3 + 11'd32);
assign add_ln_fu_365_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_598_p2 = (or_ln29_1_fu_586_p2 & and_ln29_fu_592_p2);
assign and_ln29_2_fu_680_p2 = (or_ln29_3_fu_674_p2 & or_ln29_2_fu_656_p2);
assign and_ln29_3_fu_686_p2 = (grp_fu_1048_p_dout0 & and_ln29_2_fu_680_p2);
assign and_ln29_4_fu_768_p2 = (or_ln29_5_fu_762_p2 & or_ln29_4_fu_744_p2);
assign and_ln29_5_fu_774_p2 = (grp_fu_1048_p_dout0 & and_ln29_4_fu_768_p2);
assign and_ln29_6_fu_857_p2 = (or_ln29_7_fu_851_p2 & or_ln29_6_fu_833_p2);
assign and_ln29_7_fu_863_p2 = (tmp_27_reg_1136 & and_ln29_6_fu_857_p2);
assign and_ln29_fu_592_p2 = (or_ln29_fu_568_p2 & grp_fu_1048_p_dout0);
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
assign bitcast_ln27_1_fu_495_p1 = select_ln27_1_reg_980;
assign bitcast_ln27_2_fu_499_p1 = reg_311;
assign bitcast_ln27_3_fu_504_p1 = select_ln27_3_reg_1025;
assign bitcast_ln27_fu_490_p1 = reg_311;
assign bitcast_ln29_1_fu_539_p1 = min_p_11_reg_1072;
assign bitcast_ln29_2_fu_610_p1 = p_4_reg_1084;
assign bitcast_ln29_3_fu_627_p1 = min_p_13_reg_1091;
assign bitcast_ln29_4_fu_698_p1 = p_5_reg_1098;
assign bitcast_ln29_5_fu_715_p1 = min_p_15_reg_1117;
assign bitcast_ln29_6_fu_787_p1 = p_6_reg_1110;
assign bitcast_ln29_7_fu_804_p1 = min_p_17_reg_1129;
assign bitcast_ln29_fu_522_p1 = p_reg_1065;
assign grp_fu_1048_p_ce = 1'b1;
assign grp_fu_1048_p_din0 = grp_fu_293_p0;
assign grp_fu_1048_p_din1 = grp_fu_293_p1;
assign grp_fu_1048_p_opcode = 5'd4;
assign grp_fu_297_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_304_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_452_p_ce = 1'b1;
assign grp_fu_452_p_din0 = grp_fu_289_p0;
assign grp_fu_452_p_din1 = grp_fu_289_p1;
assign grp_fu_452_p_opcode = 2'd0;
assign icmp_ln29_10_fu_750_p2 = ((tmp_23_fu_718_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_756_p2 = ((trunc_ln29_5_fu_728_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_821_p2 = ((tmp_25_fu_790_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_827_p2 = ((trunc_ln29_6_fu_800_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_839_p2 = ((tmp_26_fu_807_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_845_p2 = ((trunc_ln29_7_fu_817_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_562_p2 = ((trunc_ln29_fu_535_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_574_p2 = ((tmp_15_fu_542_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_580_p2 = ((trunc_ln29_1_fu_552_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_644_p2 = ((tmp_18_fu_613_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_650_p2 = ((trunc_ln29_2_fu_623_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_662_p2 = ((tmp_19_fu_630_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_668_p2 = ((trunc_ln29_3_fu_640_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_732_p2 = ((tmp_21_fu_701_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_738_p2 = ((trunc_ln29_4_fu_711_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_556_p2 = ((tmp_14_fu_525_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_fu_350_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln26_fu_350_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln26_fu_350_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_address0 = zext_ln26_2_fu_469_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_332_p4 = {{ap_sig_allocacmp_prev_1[5:2]}};
assign lshr_ln8_1_fu_451_p4 = {{add_ln25_reg_960[6:2]}};
assign min_p_13_fu_604_p3 = ((and_ln29_1_reg_1079[0:0] == 1'b1) ? p_reg_1065 : min_p_11_reg_1072);
assign min_p_15_fu_692_p3 = ((and_ln29_3_reg_1105[0:0] == 1'b1) ? p_4_reg_1084 : min_p_13_reg_1091);
assign min_p_17_fu_780_p3 = ((and_ln29_5_reg_1124[0:0] == 1'b1) ? p_5_reg_1098 : min_p_15_reg_1117);
assign min_p_18_out = ((and_ln29_5_reg_1124[0:0] == 1'b1) ? p_5_reg_1098 : min_p_15_reg_1117);
assign min_p_19_fu_868_p3 = ((and_ln29_7_fu_863_p2[0:0] == 1'b1) ? p_6_reg_1110 : min_p_17_reg_1129);
assign or_ln29_1_fu_586_p2 = (icmp_ln29_3_fu_580_p2 | icmp_ln29_2_fu_574_p2);
assign or_ln29_2_fu_656_p2 = (icmp_ln29_5_fu_650_p2 | icmp_ln29_4_fu_644_p2);
assign or_ln29_3_fu_674_p2 = (icmp_ln29_7_fu_668_p2 | icmp_ln29_6_fu_662_p2);
assign or_ln29_4_fu_744_p2 = (icmp_ln29_9_fu_738_p2 | icmp_ln29_8_fu_732_p2);
assign or_ln29_5_fu_762_p2 = (icmp_ln29_11_fu_756_p2 | icmp_ln29_10_fu_750_p2);
assign or_ln29_6_fu_833_p2 = (icmp_ln29_13_fu_827_p2 | icmp_ln29_12_fu_821_p2);
assign or_ln29_7_fu_851_p2 = (icmp_ln29_15_fu_845_p2 | icmp_ln29_14_fu_839_p2);
assign or_ln29_fu_568_p2 = (icmp_ln29_fu_556_p2 | icmp_ln29_1_fu_562_p2);
assign shl_ln1_fu_357_p3 = {{ap_sig_allocacmp_prev_1}, {5'd0}};
assign tmp_14_fu_525_p4 = {{bitcast_ln29_fu_522_p1[62:52]}};
assign tmp_15_fu_542_p4 = {{bitcast_ln29_1_fu_539_p1[62:52]}};
assign tmp_17_fu_385_p4 = {{add_ln27_fu_379_p2[10:5]}};
assign tmp_18_fu_613_p4 = {{bitcast_ln29_2_fu_610_p1[62:52]}};
assign tmp_19_fu_630_p4 = {{bitcast_ln29_3_fu_627_p1[62:52]}};
assign tmp_21_fu_701_p4 = {{bitcast_ln29_4_fu_698_p1[62:52]}};
assign tmp_23_fu_718_p4 = {{bitcast_ln29_5_fu_715_p1[62:52]}};
assign tmp_25_fu_790_p4 = {{bitcast_ln29_6_fu_787_p1[62:52]}};
assign tmp_26_fu_807_p4 = {{bitcast_ln29_7_fu_804_p1[62:52]}};
assign tmp_s_fu_342_p3 = {{empty_9}, {lshr_ln7_1_fu_332_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln27_fu_474_p1 = add_ln25_reg_960[5:0];
assign trunc_ln29_1_fu_552_p1 = bitcast_ln29_1_fu_539_p1[51:0];
assign trunc_ln29_2_fu_623_p1 = bitcast_ln29_2_fu_610_p1[51:0];
assign trunc_ln29_3_fu_640_p1 = bitcast_ln29_3_fu_627_p1[51:0];
assign trunc_ln29_4_fu_711_p1 = bitcast_ln29_4_fu_698_p1[51:0];
assign trunc_ln29_5_fu_728_p1 = bitcast_ln29_5_fu_715_p1[51:0];
assign trunc_ln29_6_fu_800_p1 = bitcast_ln29_6_fu_787_p1[51:0];
assign trunc_ln29_7_fu_817_p1 = bitcast_ln29_7_fu_804_p1[51:0];
assign trunc_ln29_fu_535_p1 = bitcast_ln29_fu_522_p1[51:0];
assign zext_ln16_fu_328_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_460_p1 = lshr_ln8_1_fu_451_p4;
assign zext_ln26_2_fu_469_p1 = add_ln26_fu_464_p2;
assign zext_ln26_fu_350_p1 = tmp_s_fu_342_p3;
assign zext_ln27_1_fu_403_p1 = add_ln27_2_fu_395_p3;
assign zext_ln27_2_fu_445_p1 = add_ln27_4_fu_439_p3;
assign zext_ln27_3_fu_484_p1 = add_ln27_5_fu_477_p3;
assign zext_ln27_fu_373_p1 = add_ln_fu_365_p3;
endmodule 