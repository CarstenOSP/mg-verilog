module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_6,empty_9,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty_10,tmp_6,empty,min_p_14_out,min_p_14_out_ap_vld,grp_fu_571_p_din0,grp_fu_571_p_din1,grp_fu_571_p_opcode,grp_fu_571_p_dout0,grp_fu_571_p_ce,grp_fu_1320_p_din0,grp_fu_1320_p_din1,grp_fu_1320_p_opcode,grp_fu_1320_p_dout0,grp_fu_1320_p_ce); 
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
input  [3:0] lshr_ln;
output  [9:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [9:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [9:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [9:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
output  [9:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [9:0] transition_2_address1;
output   transition_2_ce1;
input  [63:0] transition_2_q1;
output  [9:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [9:0] transition_3_address1;
output   transition_3_ce1;
input  [63:0] transition_3_q1;
input  [1:0] empty_10;
input  [63:0] tmp_6;
input  [13:0] empty;
output  [63:0] min_p_14_out;
output   min_p_14_out_ap_vld;
output  [63:0] grp_fu_571_p_din0;
output  [63:0] grp_fu_571_p_din1;
output  [1:0] grp_fu_571_p_opcode;
input  [63:0] grp_fu_571_p_dout0;
output   grp_fu_571_p_ce;
output  [63:0] grp_fu_1320_p_din0;
output  [63:0] grp_fu_1320_p_din1;
output  [4:0] grp_fu_1320_p_opcode;
input  [0:0] grp_fu_1320_p_dout0;
output   grp_fu_1320_p_ce;
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
reg   [0:0] tmp_24_reg_1152;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] prev_1_reg_1090;
wire   [6:0] add_ln25_2_fu_443_p2;
reg   [6:0] add_ln25_2_reg_1146;
reg   [0:0] tmp_24_reg_1152_pp0_iter1_reg;
reg   [0:0] tmp_24_reg_1152_pp0_iter2_reg;
reg   [0:0] tmp_24_reg_1152_pp0_iter3_reg;
reg   [63:0] llike_load_1_reg_1156;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_7_fu_473_p11;
reg   [63:0] tmp_7_reg_1161;
reg   [63:0] llike_load_reg_1166;
wire   [63:0] tmp_8_fu_512_p11;
reg   [63:0] tmp_8_reg_1171;
reg   [63:0] llike_load_2_reg_1226;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_9_fu_614_p11;
reg   [63:0] tmp_9_reg_1231;
reg   [63:0] llike_load_3_reg_1236;
wire   [63:0] tmp_11_fu_653_p11;
reg   [63:0] tmp_11_reg_1241;
reg   [63:0] add1_reg_1246;
reg   [63:0] add52_1_reg_1251;
reg   [63:0] add52_2_reg_1256;
reg   [63:0] add52_3_reg_1261;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_reg_1266;
wire    ap_block_pp0_stage8_11001;
reg   [63:0] min_p_7_reg_1273;
wire   [0:0] and_ln29_1_fu_766_p2;
reg   [0:0] and_ln29_1_reg_1280;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] p_2_reg_1285;
wire   [63:0] min_p_9_fu_772_p3;
reg   [63:0] min_p_9_reg_1292;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] p_3_reg_1299;
wire   [0:0] and_ln29_3_fu_854_p2;
reg   [0:0] and_ln29_3_reg_1306;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [63:0] p_4_reg_1311;
wire   [63:0] min_p_11_fu_860_p3;
reg   [63:0] min_p_11_reg_1318;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [0:0] and_ln29_5_fu_942_p2;
reg   [0:0] and_ln29_5_reg_1325;
wire   [63:0] min_p_13_fu_948_p3;
reg   [63:0] min_p_13_reg_1330;
reg   [0:0] tmp_27_reg_1337;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter3_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_383_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_400_p1;
wire   [63:0] zext_ln26_1_fu_422_p1;
wire   [63:0] zext_ln27_1_fu_435_p1;
wire   [63:0] zext_ln26_2_fu_547_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_2_fu_559_p1;
wire   [63:0] zext_ln26_4_fu_575_p1;
wire   [63:0] zext_ln27_3_fu_590_p1;
reg   [63:0] min_p_fu_98;
wire   [63:0] min_p_15_fu_1036_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_102;
wire   [5:0] add_ln25_3_fu_676_p2;
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
reg   [9:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [9:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [9:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [9:0] transition_1_address0_local;
reg    transition_2_ce1_local;
reg   [9:0] transition_2_address1_local;
reg    transition_2_ce0_local;
reg   [9:0] transition_2_address0_local;
reg    transition_3_ce1_local;
reg   [9:0] transition_3_address1_local;
reg    transition_3_ce0_local;
reg   [9:0] transition_3_address0_local;
reg   [63:0] grp_fu_354_p0;
reg   [63:0] grp_fu_354_p1;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
reg   [63:0] grp_fu_358_p0;
reg   [63:0] grp_fu_358_p1;
wire   [13:0] tmp_s_fu_375_p3;
wire   [9:0] add_ln_fu_392_p3;
wire   [5:0] add_ln25_fu_408_p2;
wire   [13:0] tmp_16_fu_414_p3;
wire   [9:0] add_ln27_1_fu_427_p3;
wire   [6:0] zext_ln15_fu_388_p1;
wire   [63:0] tmp_7_fu_473_p2;
wire   [63:0] tmp_7_fu_473_p4;
wire   [63:0] tmp_7_fu_473_p6;
wire   [63:0] tmp_7_fu_473_p8;
wire   [63:0] tmp_7_fu_473_p9;
wire   [63:0] tmp_8_fu_512_p2;
wire   [63:0] tmp_8_fu_512_p4;
wire   [63:0] tmp_8_fu_512_p6;
wire   [63:0] tmp_8_fu_512_p8;
wire   [63:0] tmp_8_fu_512_p9;
wire   [5:0] add_ln25_1_fu_535_p2;
wire   [13:0] tmp_20_fu_540_p3;
wire   [9:0] add_ln27_2_fu_552_p3;
wire   [13:0] zext_ln26_3_fu_567_p1;
wire   [13:0] add_ln26_fu_570_p2;
wire   [5:0] trunc_ln27_fu_580_p1;
wire   [9:0] add_ln27_3_fu_583_p3;
wire   [63:0] tmp_9_fu_614_p2;
wire   [63:0] tmp_9_fu_614_p4;
wire   [63:0] tmp_9_fu_614_p6;
wire   [63:0] tmp_9_fu_614_p8;
wire   [63:0] tmp_9_fu_614_p9;
wire   [63:0] tmp_11_fu_653_p2;
wire   [63:0] tmp_11_fu_653_p4;
wire   [63:0] tmp_11_fu_653_p6;
wire   [63:0] tmp_11_fu_653_p8;
wire   [63:0] tmp_11_fu_653_p9;
wire   [63:0] bitcast_ln29_fu_690_p1;
wire   [63:0] bitcast_ln29_1_fu_707_p1;
wire   [10:0] tmp_13_fu_693_p4;
wire   [51:0] trunc_ln29_fu_703_p1;
wire   [0:0] icmp_ln29_1_fu_730_p2;
wire   [0:0] icmp_ln29_fu_724_p2;
wire   [10:0] tmp_14_fu_710_p4;
wire   [51:0] trunc_ln29_1_fu_720_p1;
wire   [0:0] icmp_ln29_3_fu_748_p2;
wire   [0:0] icmp_ln29_2_fu_742_p2;
wire   [0:0] or_ln29_fu_736_p2;
wire   [0:0] and_ln29_fu_760_p2;
wire   [0:0] or_ln29_1_fu_754_p2;
wire   [63:0] bitcast_ln29_2_fu_778_p1;
wire   [63:0] bitcast_ln29_3_fu_795_p1;
wire   [10:0] tmp_17_fu_781_p4;
wire   [51:0] trunc_ln29_2_fu_791_p1;
wire   [0:0] icmp_ln29_5_fu_818_p2;
wire   [0:0] icmp_ln29_4_fu_812_p2;
wire   [10:0] tmp_18_fu_798_p4;
wire   [51:0] trunc_ln29_3_fu_808_p1;
wire   [0:0] icmp_ln29_7_fu_836_p2;
wire   [0:0] icmp_ln29_6_fu_830_p2;
wire   [0:0] or_ln29_3_fu_842_p2;
wire   [0:0] or_ln29_2_fu_824_p2;
wire   [0:0] and_ln29_2_fu_848_p2;
wire   [63:0] bitcast_ln29_4_fu_866_p1;
wire   [63:0] bitcast_ln29_5_fu_883_p1;
wire   [10:0] tmp_21_fu_869_p4;
wire   [51:0] trunc_ln29_4_fu_879_p1;
wire   [0:0] icmp_ln29_9_fu_906_p2;
wire   [0:0] icmp_ln29_8_fu_900_p2;
wire   [10:0] tmp_22_fu_886_p4;
wire   [51:0] trunc_ln29_5_fu_896_p1;
wire   [0:0] icmp_ln29_11_fu_924_p2;
wire   [0:0] icmp_ln29_10_fu_918_p2;
wire   [0:0] or_ln29_5_fu_930_p2;
wire   [0:0] or_ln29_4_fu_912_p2;
wire   [0:0] and_ln29_4_fu_936_p2;
wire   [63:0] bitcast_ln29_6_fu_955_p1;
wire   [63:0] bitcast_ln29_7_fu_972_p1;
wire   [10:0] tmp_25_fu_958_p4;
wire   [51:0] trunc_ln29_6_fu_968_p1;
wire   [0:0] icmp_ln29_13_fu_995_p2;
wire   [0:0] icmp_ln29_12_fu_989_p2;
wire   [10:0] tmp_26_fu_975_p4;
wire   [51:0] trunc_ln29_7_fu_985_p1;
wire   [0:0] icmp_ln29_15_fu_1013_p2;
wire   [0:0] icmp_ln29_14_fu_1007_p2;
wire   [0:0] or_ln29_7_fu_1019_p2;
wire   [0:0] or_ln29_6_fu_1001_p2;
wire   [0:0] and_ln29_6_fu_1025_p2;
wire   [0:0] and_ln29_7_fu_1031_p2;
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
wire   [1:0] tmp_7_fu_473_p1;
wire   [1:0] tmp_7_fu_473_p3;
wire  signed [1:0] tmp_7_fu_473_p5;
wire  signed [1:0] tmp_7_fu_473_p7;
wire   [1:0] tmp_8_fu_512_p1;
wire   [1:0] tmp_8_fu_512_p3;
wire  signed [1:0] tmp_8_fu_512_p5;
wire  signed [1:0] tmp_8_fu_512_p7;
wire   [1:0] tmp_9_fu_614_p1;
wire   [1:0] tmp_9_fu_614_p3;
wire  signed [1:0] tmp_9_fu_614_p5;
wire  signed [1:0] tmp_9_fu_614_p7;
wire   [1:0] tmp_11_fu_653_p1;
wire   [1:0] tmp_11_fu_653_p3;
wire  signed [1:0] tmp_11_fu_653_p5;
wire  signed [1:0] tmp_11_fu_653_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_98 = 64'd0;
#0 prev_fu_102 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U23(.din0(tmp_7_fu_473_p2),.din1(tmp_7_fu_473_p4),.din2(tmp_7_fu_473_p6),.din3(tmp_7_fu_473_p8),.def(tmp_7_fu_473_p9),.sel(empty_10),.dout(tmp_7_fu_473_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U24(.din0(tmp_8_fu_512_p2),.din1(tmp_8_fu_512_p4),.din2(tmp_8_fu_512_p6),.din3(tmp_8_fu_512_p8),.def(tmp_8_fu_512_p9),.sel(empty_10),.dout(tmp_8_fu_512_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U25(.din0(tmp_9_fu_614_p2),.din1(tmp_9_fu_614_p4),.din2(tmp_9_fu_614_p6),.din3(tmp_9_fu_614_p8),.def(tmp_9_fu_614_p9),.sel(empty_10),.dout(tmp_9_fu_614_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U26(.din0(tmp_11_fu_653_p2),.din1(tmp_11_fu_653_p4),.din2(tmp_11_fu_653_p6),.din3(tmp_11_fu_653_p8),.def(tmp_11_fu_653_p9),.sel(empty_10),.dout(tmp_11_fu_653_p11));
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
        min_p_fu_98 <= min_p_6;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_24_reg_1152_pp0_iter3_reg == 1'd0))) begin
        min_p_fu_98 <= min_p_15_fu_1036_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_102 <= 6'd1;
    end else if (((tmp_24_reg_1152 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        prev_fu_102 <= add_ln25_3_fu_676_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add1_reg_1246 <= grp_fu_571_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add52_1_reg_1251 <= grp_fu_571_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add52_2_reg_1256 <= grp_fu_571_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        add52_3_reg_1261 <= grp_fu_571_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_2_reg_1146 <= add_ln25_2_fu_443_p2;
        prev_1_reg_1090 <= ap_sig_allocacmp_prev_1;
        tmp_24_reg_1152 <= add_ln25_2_fu_443_p2[32'd6];
        tmp_24_reg_1152_pp0_iter1_reg <= tmp_24_reg_1152;
        tmp_24_reg_1152_pp0_iter2_reg <= tmp_24_reg_1152_pp0_iter1_reg;
        tmp_24_reg_1152_pp0_iter3_reg <= tmp_24_reg_1152_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_1280 <= and_ln29_1_fu_766_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_3_reg_1306 <= and_ln29_3_fu_854_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_5_reg_1325 <= and_ln29_5_fu_942_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_load_1_reg_1156 <= llike_q1;
        llike_load_reg_1166 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_2_reg_1226 <= llike_q1;
        llike_load_3_reg_1236 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        min_p_11_reg_1318 <= min_p_11_fu_860_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_13_reg_1330 <= min_p_13_fu_948_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_7_reg_1273 <= min_p_fu_98;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_9_reg_1292 <= min_p_9_fu_772_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_2_reg_1285 <= grp_fu_571_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        p_3_reg_1299 <= grp_fu_571_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        p_4_reg_1311 <= grp_fu_571_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        p_reg_1266 <= grp_fu_571_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_11_reg_1241 <= tmp_11_fu_653_p11;
        tmp_9_reg_1231 <= tmp_9_fu_614_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_27_reg_1337 <= grp_fu_1320_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_7_reg_1161 <= tmp_7_fu_473_p11;
        tmp_8_reg_1171 <= tmp_8_fu_512_p11;
    end
end
always @ (*) begin
    if (((tmp_24_reg_1152 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_24_reg_1152_pp0_iter2_reg == 1'd1))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_354_p0 = add52_3_reg_1261;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_354_p0 = add52_2_reg_1256;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_354_p0 = add52_1_reg_1251;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_354_p0 = add1_reg_1246;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_354_p0 = llike_load_3_reg_1236;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_354_p0 = llike_load_2_reg_1226;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_354_p0 = llike_load_reg_1166;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_354_p0 = llike_load_1_reg_1156;
    end else begin
        grp_fu_354_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8)) | ((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_354_p1 = tmp_6;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_354_p1 = tmp_11_reg_1241;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_354_p1 = tmp_9_reg_1231;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_354_p1 = tmp_8_reg_1171;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_354_p1 = tmp_7_reg_1161;
    end else begin
        grp_fu_354_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_358_p0 = p_4_reg_1311;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_358_p0 = p_3_reg_1299;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_358_p0 = p_2_reg_1285;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_358_p0 = p_reg_1266;
    end else begin
        grp_fu_358_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_358_p1 = min_p_13_fu_948_p3;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_358_p1 = min_p_11_fu_860_p3;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_358_p1 = min_p_9_fu_772_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_358_p1 = min_p_fu_98;
    end else begin
        grp_fu_358_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_4_fu_575_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_422_p1;
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
            llike_address1_local = zext_ln26_2_fu_547_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_fu_383_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_24_reg_1152_pp0_iter2_reg == 1'd1))) begin
        min_p_14_out_ap_vld = 1'b1;
    end else begin
        min_p_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_590_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_435_p1;
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
            transition_0_address1_local = zext_ln27_2_fu_559_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_400_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_590_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_435_p1;
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
            transition_1_address1_local = zext_ln27_2_fu_559_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_400_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln27_3_fu_590_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln27_1_fu_435_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address1_local = zext_ln27_2_fu_559_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address1_local = zext_ln27_fu_400_p1;
        end else begin
            transition_2_address1_local = 'bx;
        end
    end else begin
        transition_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln27_3_fu_590_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln27_1_fu_435_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address1_local = zext_ln27_2_fu_559_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address1_local = zext_ln27_fu_400_p1;
        end else begin
            transition_3_address1_local = 'bx;
        end
    end else begin
        transition_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
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
assign add_ln25_1_fu_535_p2 = (prev_1_reg_1090 + 6'd2);
assign add_ln25_2_fu_443_p2 = (zext_ln15_fu_388_p1 + 7'd3);
assign add_ln25_3_fu_676_p2 = (prev_1_reg_1090 + 6'd4);
assign add_ln25_fu_408_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_570_p2 = (empty + zext_ln26_3_fu_567_p1);
assign add_ln27_1_fu_427_p3 = {{add_ln25_fu_408_p2}, {lshr_ln}};
assign add_ln27_2_fu_552_p3 = {{add_ln25_1_fu_535_p2}, {lshr_ln}};
assign add_ln27_3_fu_583_p3 = {{trunc_ln27_fu_580_p1}, {lshr_ln}};
assign add_ln_fu_392_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_766_p2 = (or_ln29_1_fu_754_p2 & and_ln29_fu_760_p2);
assign and_ln29_2_fu_848_p2 = (or_ln29_3_fu_842_p2 & or_ln29_2_fu_824_p2);
assign and_ln29_3_fu_854_p2 = (grp_fu_1320_p_dout0 & and_ln29_2_fu_848_p2);
assign and_ln29_4_fu_936_p2 = (or_ln29_5_fu_930_p2 & or_ln29_4_fu_912_p2);
assign and_ln29_5_fu_942_p2 = (grp_fu_1320_p_dout0 & and_ln29_4_fu_936_p2);
assign and_ln29_6_fu_1025_p2 = (or_ln29_7_fu_1019_p2 & or_ln29_6_fu_1001_p2);
assign and_ln29_7_fu_1031_p2 = (tmp_27_reg_1337 & and_ln29_6_fu_1025_p2);
assign and_ln29_fu_760_p2 = (or_ln29_fu_736_p2 & grp_fu_1320_p_dout0);
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
assign bitcast_ln29_1_fu_707_p1 = min_p_7_reg_1273;
assign bitcast_ln29_2_fu_778_p1 = p_2_reg_1285;
assign bitcast_ln29_3_fu_795_p1 = min_p_9_reg_1292;
assign bitcast_ln29_4_fu_866_p1 = p_3_reg_1299;
assign bitcast_ln29_5_fu_883_p1 = min_p_11_reg_1318;
assign bitcast_ln29_6_fu_955_p1 = p_4_reg_1311;
assign bitcast_ln29_7_fu_972_p1 = min_p_13_reg_1330;
assign bitcast_ln29_fu_690_p1 = p_reg_1266;
assign grp_fu_1320_p_ce = 1'b1;
assign grp_fu_1320_p_din0 = grp_fu_358_p0;
assign grp_fu_1320_p_din1 = grp_fu_358_p1;
assign grp_fu_1320_p_opcode = 5'd4;
assign grp_fu_571_p_ce = 1'b1;
assign grp_fu_571_p_din0 = grp_fu_354_p0;
assign grp_fu_571_p_din1 = grp_fu_354_p1;
assign grp_fu_571_p_opcode = 2'd0;
assign icmp_ln29_10_fu_918_p2 = ((tmp_22_fu_886_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_924_p2 = ((trunc_ln29_5_fu_896_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_989_p2 = ((tmp_25_fu_958_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_995_p2 = ((trunc_ln29_6_fu_968_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1007_p2 = ((tmp_26_fu_975_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1013_p2 = ((trunc_ln29_7_fu_985_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_730_p2 = ((trunc_ln29_fu_703_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_742_p2 = ((tmp_14_fu_710_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_748_p2 = ((trunc_ln29_1_fu_720_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_812_p2 = ((tmp_17_fu_781_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_818_p2 = ((trunc_ln29_2_fu_791_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_830_p2 = ((tmp_18_fu_798_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_836_p2 = ((trunc_ln29_3_fu_808_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_900_p2 = ((tmp_21_fu_869_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_906_p2 = ((trunc_ln29_4_fu_879_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_724_p2 = ((tmp_13_fu_693_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign min_p_11_fu_860_p3 = ((and_ln29_3_reg_1306[0:0] == 1'b1) ? p_2_reg_1285 : min_p_9_reg_1292);
assign min_p_13_fu_948_p3 = ((and_ln29_5_reg_1325[0:0] == 1'b1) ? p_3_reg_1299 : min_p_11_reg_1318);
assign min_p_14_out = ((and_ln29_5_reg_1325[0:0] == 1'b1) ? p_3_reg_1299 : min_p_11_reg_1318);
assign min_p_15_fu_1036_p3 = ((and_ln29_7_fu_1031_p2[0:0] == 1'b1) ? p_4_reg_1311 : min_p_13_reg_1330);
assign min_p_9_fu_772_p3 = ((and_ln29_1_reg_1280[0:0] == 1'b1) ? p_reg_1266 : min_p_7_reg_1273);
assign or_ln29_1_fu_754_p2 = (icmp_ln29_3_fu_748_p2 | icmp_ln29_2_fu_742_p2);
assign or_ln29_2_fu_824_p2 = (icmp_ln29_5_fu_818_p2 | icmp_ln29_4_fu_812_p2);
assign or_ln29_3_fu_842_p2 = (icmp_ln29_7_fu_836_p2 | icmp_ln29_6_fu_830_p2);
assign or_ln29_4_fu_912_p2 = (icmp_ln29_9_fu_906_p2 | icmp_ln29_8_fu_900_p2);
assign or_ln29_5_fu_930_p2 = (icmp_ln29_11_fu_924_p2 | icmp_ln29_10_fu_918_p2);
assign or_ln29_6_fu_1001_p2 = (icmp_ln29_13_fu_995_p2 | icmp_ln29_12_fu_989_p2);
assign or_ln29_7_fu_1019_p2 = (icmp_ln29_15_fu_1013_p2 | icmp_ln29_14_fu_1007_p2);
assign or_ln29_fu_736_p2 = (icmp_ln29_fu_724_p2 | icmp_ln29_1_fu_730_p2);
assign tmp_11_fu_653_p2 = transition_0_q0;
assign tmp_11_fu_653_p4 = transition_1_q0;
assign tmp_11_fu_653_p6 = transition_2_q0;
assign tmp_11_fu_653_p8 = transition_3_q0;
assign tmp_11_fu_653_p9 = 'bx;
assign tmp_13_fu_693_p4 = {{bitcast_ln29_fu_690_p1[62:52]}};
assign tmp_14_fu_710_p4 = {{bitcast_ln29_1_fu_707_p1[62:52]}};
assign tmp_16_fu_414_p3 = {{empty_9}, {add_ln25_fu_408_p2}};
assign tmp_17_fu_781_p4 = {{bitcast_ln29_2_fu_778_p1[62:52]}};
assign tmp_18_fu_798_p4 = {{bitcast_ln29_3_fu_795_p1[62:52]}};
assign tmp_20_fu_540_p3 = {{empty_9}, {add_ln25_1_fu_535_p2}};
assign tmp_21_fu_869_p4 = {{bitcast_ln29_4_fu_866_p1[62:52]}};
assign tmp_22_fu_886_p4 = {{bitcast_ln29_5_fu_883_p1[62:52]}};
assign tmp_25_fu_958_p4 = {{bitcast_ln29_6_fu_955_p1[62:52]}};
assign tmp_26_fu_975_p4 = {{bitcast_ln29_7_fu_972_p1[62:52]}};
assign tmp_7_fu_473_p2 = transition_0_q1;
assign tmp_7_fu_473_p4 = transition_1_q1;
assign tmp_7_fu_473_p6 = transition_2_q1;
assign tmp_7_fu_473_p8 = transition_3_q1;
assign tmp_7_fu_473_p9 = 'bx;
assign tmp_8_fu_512_p2 = transition_0_q0;
assign tmp_8_fu_512_p4 = transition_1_q0;
assign tmp_8_fu_512_p6 = transition_2_q0;
assign tmp_8_fu_512_p8 = transition_3_q0;
assign tmp_8_fu_512_p9 = 'bx;
assign tmp_9_fu_614_p2 = transition_0_q1;
assign tmp_9_fu_614_p4 = transition_1_q1;
assign tmp_9_fu_614_p6 = transition_2_q1;
assign tmp_9_fu_614_p8 = transition_3_q1;
assign tmp_9_fu_614_p9 = 'bx;
assign tmp_s_fu_375_p3 = {{empty_9}, {ap_sig_allocacmp_prev_1}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign transition_2_address0 = transition_2_address0_local;
assign transition_2_address1 = transition_2_address1_local;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_2_ce1 = transition_2_ce1_local;
assign transition_3_address0 = transition_3_address0_local;
assign transition_3_address1 = transition_3_address1_local;
assign transition_3_ce0 = transition_3_ce0_local;
assign transition_3_ce1 = transition_3_ce1_local;
assign trunc_ln27_fu_580_p1 = add_ln25_2_reg_1146[5:0];
assign trunc_ln29_1_fu_720_p1 = bitcast_ln29_1_fu_707_p1[51:0];
assign trunc_ln29_2_fu_791_p1 = bitcast_ln29_2_fu_778_p1[51:0];
assign trunc_ln29_3_fu_808_p1 = bitcast_ln29_3_fu_795_p1[51:0];
assign trunc_ln29_4_fu_879_p1 = bitcast_ln29_4_fu_866_p1[51:0];
assign trunc_ln29_5_fu_896_p1 = bitcast_ln29_5_fu_883_p1[51:0];
assign trunc_ln29_6_fu_968_p1 = bitcast_ln29_6_fu_955_p1[51:0];
assign trunc_ln29_7_fu_985_p1 = bitcast_ln29_7_fu_972_p1[51:0];
assign trunc_ln29_fu_703_p1 = bitcast_ln29_fu_690_p1[51:0];
assign zext_ln15_fu_388_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_422_p1 = tmp_16_fu_414_p3;
assign zext_ln26_2_fu_547_p1 = tmp_20_fu_540_p3;
assign zext_ln26_3_fu_567_p1 = add_ln25_2_reg_1146;
assign zext_ln26_4_fu_575_p1 = add_ln26_fu_570_p2;
assign zext_ln26_fu_383_p1 = tmp_s_fu_375_p3;
assign zext_ln27_1_fu_435_p1 = add_ln27_1_fu_427_p3;
assign zext_ln27_2_fu_559_p1 = add_ln27_2_fu_552_p3;
assign zext_ln27_3_fu_590_p1 = add_ln27_3_fu_583_p3;
assign zext_ln27_fu_400_p1 = add_ln_fu_392_p3;
endmodule 