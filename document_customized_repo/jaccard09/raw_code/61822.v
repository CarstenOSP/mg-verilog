module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_139,t_1,llike_1_address0,llike_1_ce0,llike_1_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_1_address0,transition_1_ce0,transition_1_q0,transition_2_address0,transition_2_ce0,transition_2_q0,transition_3_address0,transition_3_ce0,transition_3_q0,transition_4_address0,transition_4_ce0,transition_4_q0,transition_5_address0,transition_5_ce0,transition_5_q0,transition_6_address0,transition_6_ce0,transition_6_q0,transition_7_address0,transition_7_ce0,transition_7_q0,empty,zext_ln52_3,llike_address0,llike_ce0,llike_q0,min_s_6_out,min_s_6_out_ap_vld,grp_fu_633_p_din0,grp_fu_633_p_din1,grp_fu_633_p_opcode,grp_fu_633_p_dout0,grp_fu_633_p_ce,grp_fu_1069_p_din0,grp_fu_1069_p_din1,grp_fu_1069_p_opcode,grp_fu_1069_p_dout0,grp_fu_1069_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_139;
input  [7:0] t_1;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
input  [4:0] zext_ln52_2;
output  [8:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [8:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [8:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [8:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
output  [8:0] transition_4_address0;
output   transition_4_ce0;
input  [63:0] transition_4_q0;
output  [8:0] transition_5_address0;
output   transition_5_ce0;
input  [63:0] transition_5_q0;
output  [8:0] transition_6_address0;
output   transition_6_ce0;
input  [63:0] transition_6_q0;
output  [8:0] transition_7_address0;
output   transition_7_ce0;
input  [63:0] transition_7_q0;
input  [2:0] empty;
input  [12:0] zext_ln52_3;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [7:0] min_s_6_out;
output   min_s_6_out_ap_vld;
output  [63:0] grp_fu_633_p_din0;
output  [63:0] grp_fu_633_p_din1;
output  [1:0] grp_fu_633_p_opcode;
input  [63:0] grp_fu_633_p_dout0;
output   grp_fu_633_p_ce;
output  [63:0] grp_fu_1069_p_din0;
output  [63:0] grp_fu_1069_p_din1;
output  [4:0] grp_fu_1069_p_opcode;
input  [0:0] grp_fu_1069_p_dout0;
output   grp_fu_1069_p_ce;
reg ap_idle;
reg min_s_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] tmp_1_reg_970;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] zext_ln52_2_cast_fu_371_p1;
reg   [8:0] zext_ln52_2_cast_reg_908;
reg   [5:0] s_reg_913;
reg   [5:0] s_reg_913_pp0_iter1_reg;
reg   [5:0] s_reg_913_pp0_iter2_reg;
wire   [6:0] add_ln53_fu_446_p2;
reg   [6:0] add_ln53_reg_964;
reg   [0:0] tmp_1_reg_970_pp0_iter1_reg;
reg   [0:0] tmp_1_reg_970_pp0_iter2_reg;
reg   [63:0] llike_1_load_reg_974;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_69_fu_492_p19;
reg   [63:0] tmp_69_reg_979;
wire   [5:0] trunc_ln54_fu_554_p1;
reg   [5:0] trunc_ln54_reg_989;
reg   [5:0] trunc_ln54_reg_989_pp0_iter1_reg;
reg   [5:0] trunc_ln54_reg_989_pp0_iter2_reg;
reg   [63:0] llike_load_reg_1034;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_70_fu_614_p19;
reg   [63:0] tmp_70_reg_1039;
reg   [63:0] p_reg_1044;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] min_p_127_reg_1051;
reg   [63:0] p_63_reg_1058;
wire   [0:0] and_ln55_1_fu_743_p2;
reg   [0:0] and_ln55_1_reg_1065;
wire   [7:0] min_s_4_fu_755_p3;
reg   [7:0] min_s_4_reg_1071;
wire   [63:0] min_p_129_fu_763_p3;
reg   [63:0] min_p_129_reg_1076;
reg   [0:0] tmp_271_reg_1083;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
reg    ap_condition_exit_pp0_iter2_stage2;
wire   [63:0] zext_ln54_2_fu_415_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_434_p1;
wire   [63:0] zext_ln54_4_fu_549_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_1_fu_570_p1;
reg   [63:0] min_p_fu_120;
wire   [63:0] min_p_131_fu_850_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_124;
wire   [7:0] min_s_5_fu_859_p3;
wire    ap_block_pp0_stage2;
reg   [5:0] min_s_1_fu_128;
wire   [5:0] add_ln53_1_fu_653_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage2_01001;
reg    llike_1_ce0_local;
reg    transition_0_ce0_local;
reg   [8:0] transition_0_address0_local;
reg    transition_1_ce0_local;
reg   [8:0] transition_1_address0_local;
reg    transition_2_ce0_local;
reg   [8:0] transition_2_address0_local;
reg    transition_3_ce0_local;
reg   [8:0] transition_3_address0_local;
reg    transition_4_ce0_local;
reg   [8:0] transition_4_address0_local;
reg    transition_5_ce0_local;
reg   [8:0] transition_5_address0_local;
reg    transition_6_ce0_local;
reg   [8:0] transition_6_address0_local;
reg    transition_7_ce0_local;
reg   [8:0] transition_7_address0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_363_p0;
reg   [63:0] grp_fu_363_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_367_p0;
reg   [63:0] grp_fu_367_p1;
wire   [4:0] lshr_ln8_1_fu_397_p4;
wire   [12:0] tmp_s_fu_407_p3;
wire   [8:0] shl_ln2_fu_420_p3;
wire   [8:0] add_ln54_fu_428_p2;
wire   [6:0] zext_ln17_fu_393_p1;
wire   [63:0] tmp_69_fu_492_p2;
wire   [63:0] tmp_69_fu_492_p4;
wire   [63:0] tmp_69_fu_492_p6;
wire   [63:0] tmp_69_fu_492_p8;
wire   [63:0] tmp_69_fu_492_p10;
wire   [63:0] tmp_69_fu_492_p12;
wire   [63:0] tmp_69_fu_492_p14;
wire   [63:0] tmp_69_fu_492_p16;
wire   [63:0] tmp_69_fu_492_p17;
wire   [5:0] lshr_ln9_3_fu_531_p4;
wire   [12:0] zext_ln54_3_fu_540_p1;
wire   [12:0] add_ln54_2_fu_544_p2;
wire   [8:0] shl_ln54_1_fu_557_p3;
wire   [8:0] add_ln54_1_fu_565_p2;
wire   [63:0] tmp_70_fu_614_p2;
wire   [63:0] tmp_70_fu_614_p4;
wire   [63:0] tmp_70_fu_614_p6;
wire   [63:0] tmp_70_fu_614_p8;
wire   [63:0] tmp_70_fu_614_p10;
wire   [63:0] tmp_70_fu_614_p12;
wire   [63:0] tmp_70_fu_614_p14;
wire   [63:0] tmp_70_fu_614_p16;
wire   [63:0] tmp_70_fu_614_p17;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln55_fu_667_p1;
wire   [63:0] bitcast_ln55_1_fu_684_p1;
wire   [10:0] tmp_266_fu_670_p4;
wire   [51:0] trunc_ln55_fu_680_p1;
wire   [0:0] icmp_ln55_1_fu_707_p2;
wire   [0:0] icmp_ln55_fu_701_p2;
wire   [10:0] tmp_267_fu_687_p4;
wire   [51:0] trunc_ln55_1_fu_697_p1;
wire   [0:0] icmp_ln55_3_fu_725_p2;
wire   [0:0] icmp_ln55_2_fu_719_p2;
wire   [0:0] or_ln55_fu_713_p2;
wire   [0:0] and_ln55_fu_737_p2;
wire   [0:0] or_ln55_1_fu_731_p2;
wire   [7:0] zext_ln55_fu_752_p1;
wire   [63:0] bitcast_ln55_2_fu_769_p1;
wire   [63:0] bitcast_ln55_3_fu_786_p1;
wire   [10:0] tmp_269_fu_772_p4;
wire   [51:0] trunc_ln55_2_fu_782_p1;
wire   [0:0] icmp_ln55_5_fu_809_p2;
wire   [0:0] icmp_ln55_4_fu_803_p2;
wire   [10:0] tmp_270_fu_789_p4;
wire   [51:0] trunc_ln55_3_fu_799_p1;
wire   [0:0] icmp_ln55_7_fu_827_p2;
wire   [0:0] icmp_ln55_6_fu_821_p2;
wire   [0:0] or_ln55_3_fu_833_p2;
wire   [0:0] or_ln55_2_fu_815_p2;
wire   [0:0] and_ln55_2_fu_839_p2;
wire   [0:0] and_ln55_3_fu_845_p2;
wire   [7:0] zext_ln55_1_fu_856_p1;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage3_00001;
wire   [2:0] tmp_69_fu_492_p1;
wire   [2:0] tmp_69_fu_492_p3;
wire   [2:0] tmp_69_fu_492_p5;
wire   [2:0] tmp_69_fu_492_p7;
wire  signed [2:0] tmp_69_fu_492_p9;
wire  signed [2:0] tmp_69_fu_492_p11;
wire  signed [2:0] tmp_69_fu_492_p13;
wire  signed [2:0] tmp_69_fu_492_p15;
wire   [2:0] tmp_70_fu_614_p1;
wire   [2:0] tmp_70_fu_614_p3;
wire   [2:0] tmp_70_fu_614_p5;
wire   [2:0] tmp_70_fu_614_p7;
wire  signed [2:0] tmp_70_fu_614_p9;
wire  signed [2:0] tmp_70_fu_614_p11;
wire  signed [2:0] tmp_70_fu_614_p13;
wire  signed [2:0] tmp_70_fu_614_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_120 = 64'd0;
#0 min_s_fu_124 = 8'd0;
#0 min_s_1_fu_128 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U132(.din0(tmp_69_fu_492_p2),.din1(tmp_69_fu_492_p4),.din2(tmp_69_fu_492_p6),.din3(tmp_69_fu_492_p8),.din4(tmp_69_fu_492_p10),.din5(tmp_69_fu_492_p12),.din6(tmp_69_fu_492_p14),.din7(tmp_69_fu_492_p16),.def(tmp_69_fu_492_p17),.sel(empty),.dout(tmp_69_fu_492_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U133(.din0(tmp_70_fu_614_p2),.din1(tmp_70_fu_614_p4),.din2(tmp_70_fu_614_p6),.din3(tmp_70_fu_614_p8),.din4(tmp_70_fu_614_p10),.din5(tmp_70_fu_614_p12),.din6(tmp_70_fu_614_p14),.din7(tmp_70_fu_614_p16),.def(tmp_70_fu_614_p17),.sel(empty),.dout(tmp_70_fu_614_p19));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage4),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage2)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_120 <= min_p_139;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_1_reg_970_pp0_iter2_reg == 1'd0))) begin
        min_p_fu_120 <= min_p_131_fu_850_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_128 <= 6'd1;
    end else if (((tmp_1_reg_970 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_1_fu_128 <= add_ln53_1_fu_653_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_124 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_1_reg_970_pp0_iter2_reg == 1'd0))) begin
        min_s_fu_124 <= min_s_5_fu_859_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_reg_964 <= add_ln53_fu_446_p2;
        min_p_127_reg_1051 <= min_p_fu_120;
        s_reg_913 <= ap_sig_allocacmp_s;
        s_reg_913_pp0_iter1_reg <= s_reg_913;
        s_reg_913_pp0_iter2_reg <= s_reg_913_pp0_iter1_reg;
        tmp_1_reg_970 <= add_ln53_fu_446_p2[32'd6];
        tmp_1_reg_970_pp0_iter1_reg <= tmp_1_reg_970;
        tmp_1_reg_970_pp0_iter2_reg <= tmp_1_reg_970_pp0_iter1_reg;
        zext_ln52_2_cast_reg_908[4 : 0] <= zext_ln52_2_cast_fu_371_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln55_1_reg_1065 <= and_ln55_1_fu_743_p2;
        llike_1_load_reg_974 <= llike_1_q0;
        tmp_69_reg_979 <= tmp_69_fu_492_p19;
        trunc_ln54_reg_989 <= trunc_ln54_fu_554_p1;
        trunc_ln54_reg_989_pp0_iter1_reg <= trunc_ln54_reg_989;
        trunc_ln54_reg_989_pp0_iter2_reg <= trunc_ln54_reg_989_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_reg_1034 <= llike_q0;
        min_p_129_reg_1076 <= min_p_129_fu_763_p3;
        tmp_70_reg_1039 <= tmp_70_fu_614_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_s_4_reg_1071 <= min_s_4_fu_755_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_63_reg_1058 <= grp_fu_633_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_reg_1044 <= grp_fu_633_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_271_reg_1083 <= grp_fu_1069_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_1_reg_970 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_reg_970_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_128;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_363_p0 = llike_load_reg_1034;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_363_p0 = llike_1_load_reg_974;
        end else begin
            grp_fu_363_p0 = 'bx;
        end
    end else begin
        grp_fu_363_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_363_p1 = tmp_70_reg_1039;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_363_p1 = tmp_69_reg_979;
        end else begin
            grp_fu_363_p1 = 'bx;
        end
    end else begin
        grp_fu_363_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_367_p0 = p_63_reg_1058;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_367_p0 = p_reg_1044;
        end else begin
            grp_fu_367_p0 = 'bx;
        end
    end else begin
        grp_fu_367_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_367_p1 = min_p_129_fu_763_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_367_p1 = min_p_fu_120;
        end else begin
            grp_fu_367_p1 = 'bx;
        end
    end else begin
        grp_fu_367_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_1_reg_970_pp0_iter2_reg == 1'd1))) begin
        min_s_6_out_ap_vld = 1'b1;
    end else begin
        min_s_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_1_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_434_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_1_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_434_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_1_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_434_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_1_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_434_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_4_address0_local = zext_ln54_1_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln54_fu_434_p1;
        end else begin
            transition_4_address0_local = 'bx;
        end
    end else begin
        transition_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_4_ce0_local = 1'b1;
    end else begin
        transition_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_5_address0_local = zext_ln54_1_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln54_fu_434_p1;
        end else begin
            transition_5_address0_local = 'bx;
        end
    end else begin
        transition_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_5_ce0_local = 1'b1;
    end else begin
        transition_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_6_address0_local = zext_ln54_1_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln54_fu_434_p1;
        end else begin
            transition_6_address0_local = 'bx;
        end
    end else begin
        transition_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_6_ce0_local = 1'b1;
    end else begin
        transition_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_7_address0_local = zext_ln54_1_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln54_fu_434_p1;
        end else begin
            transition_7_address0_local = 'bx;
        end
    end else begin
        transition_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        transition_7_ce0_local = 1'b1;
    end else begin
        transition_7_ce0_local = 1'b0;
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln53_1_fu_653_p2 = (s_reg_913 + 6'd2);
assign add_ln53_fu_446_p2 = (zext_ln17_fu_393_p1 + 7'd1);
assign add_ln54_1_fu_565_p2 = (shl_ln54_1_fu_557_p3 + zext_ln52_2_cast_reg_908);
assign add_ln54_2_fu_544_p2 = (zext_ln52_3 + zext_ln54_3_fu_540_p1);
assign add_ln54_fu_428_p2 = (shl_ln2_fu_420_p3 + zext_ln52_2_cast_fu_371_p1);
assign and_ln55_1_fu_743_p2 = (or_ln55_1_fu_731_p2 & and_ln55_fu_737_p2);
assign and_ln55_2_fu_839_p2 = (or_ln55_3_fu_833_p2 & or_ln55_2_fu_815_p2);
assign and_ln55_3_fu_845_p2 = (tmp_271_reg_1083 & and_ln55_2_fu_839_p2);
assign and_ln55_fu_737_p2 = (or_ln55_fu_713_p2 & grp_fu_1069_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign bitcast_ln55_1_fu_684_p1 = min_p_127_reg_1051;
assign bitcast_ln55_2_fu_769_p1 = p_63_reg_1058;
assign bitcast_ln55_3_fu_786_p1 = min_p_129_reg_1076;
assign bitcast_ln55_fu_667_p1 = p_reg_1044;
assign grp_fu_1069_p_ce = 1'b1;
assign grp_fu_1069_p_din0 = grp_fu_367_p0;
assign grp_fu_1069_p_din1 = grp_fu_367_p1;
assign grp_fu_1069_p_opcode = 5'd4;
assign grp_fu_633_p_ce = 1'b1;
assign grp_fu_633_p_din0 = grp_fu_363_p0;
assign grp_fu_633_p_din1 = grp_fu_363_p1;
assign grp_fu_633_p_opcode = 2'd0;
assign icmp_ln55_1_fu_707_p2 = ((trunc_ln55_fu_680_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_719_p2 = ((tmp_267_fu_687_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_725_p2 = ((trunc_ln55_1_fu_697_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_803_p2 = ((tmp_269_fu_772_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_809_p2 = ((trunc_ln55_2_fu_782_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_821_p2 = ((tmp_270_fu_789_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_827_p2 = ((trunc_ln55_3_fu_799_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_701_p2 = ((tmp_266_fu_670_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln54_2_fu_415_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_address0 = zext_ln54_4_fu_549_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln8_1_fu_397_p4 = {{ap_sig_allocacmp_s[5:1]}};
assign lshr_ln9_3_fu_531_p4 = {{add_ln53_reg_964[6:1]}};
assign min_p_129_fu_763_p3 = ((and_ln55_1_reg_1065[0:0] == 1'b1) ? p_reg_1044 : min_p_127_reg_1051);
assign min_p_131_fu_850_p3 = ((and_ln55_3_fu_845_p2[0:0] == 1'b1) ? p_63_reg_1058 : min_p_129_reg_1076);
assign min_s_4_fu_755_p3 = ((and_ln55_1_reg_1065[0:0] == 1'b1) ? zext_ln55_fu_752_p1 : min_s_fu_124);
assign min_s_5_fu_859_p3 = ((and_ln55_3_fu_845_p2[0:0] == 1'b1) ? zext_ln55_1_fu_856_p1 : min_s_4_reg_1071);
assign min_s_6_out = ((and_ln55_1_reg_1065[0:0] == 1'b1) ? zext_ln55_fu_752_p1 : min_s_fu_124);
assign or_ln55_1_fu_731_p2 = (icmp_ln55_3_fu_725_p2 | icmp_ln55_2_fu_719_p2);
assign or_ln55_2_fu_815_p2 = (icmp_ln55_5_fu_809_p2 | icmp_ln55_4_fu_803_p2);
assign or_ln55_3_fu_833_p2 = (icmp_ln55_7_fu_827_p2 | icmp_ln55_6_fu_821_p2);
assign or_ln55_fu_713_p2 = (icmp_ln55_fu_701_p2 | icmp_ln55_1_fu_707_p2);
assign shl_ln2_fu_420_p3 = {{ap_sig_allocacmp_s}, {3'd0}};
assign shl_ln54_1_fu_557_p3 = {{trunc_ln54_fu_554_p1}, {3'd0}};
assign tmp_266_fu_670_p4 = {{bitcast_ln55_fu_667_p1[62:52]}};
assign tmp_267_fu_687_p4 = {{bitcast_ln55_1_fu_684_p1[62:52]}};
assign tmp_269_fu_772_p4 = {{bitcast_ln55_2_fu_769_p1[62:52]}};
assign tmp_270_fu_789_p4 = {{bitcast_ln55_3_fu_786_p1[62:52]}};
assign tmp_69_fu_492_p10 = transition_4_q0;
assign tmp_69_fu_492_p12 = transition_5_q0;
assign tmp_69_fu_492_p14 = transition_6_q0;
assign tmp_69_fu_492_p16 = transition_7_q0;
assign tmp_69_fu_492_p17 = 'bx;
assign tmp_69_fu_492_p2 = transition_0_q0;
assign tmp_69_fu_492_p4 = transition_1_q0;
assign tmp_69_fu_492_p6 = transition_2_q0;
assign tmp_69_fu_492_p8 = transition_3_q0;
assign tmp_70_fu_614_p10 = transition_4_q0;
assign tmp_70_fu_614_p12 = transition_5_q0;
assign tmp_70_fu_614_p14 = transition_6_q0;
assign tmp_70_fu_614_p16 = transition_7_q0;
assign tmp_70_fu_614_p17 = 'bx;
assign tmp_70_fu_614_p2 = transition_0_q0;
assign tmp_70_fu_614_p4 = transition_1_q0;
assign tmp_70_fu_614_p6 = transition_2_q0;
assign tmp_70_fu_614_p8 = transition_3_q0;
assign tmp_s_fu_407_p3 = {{t_1}, {lshr_ln8_1_fu_397_p4}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_2_address0 = transition_2_address0_local;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_3_address0 = transition_3_address0_local;
assign transition_3_ce0 = transition_3_ce0_local;
assign transition_4_address0 = transition_4_address0_local;
assign transition_4_ce0 = transition_4_ce0_local;
assign transition_5_address0 = transition_5_address0_local;
assign transition_5_ce0 = transition_5_ce0_local;
assign transition_6_address0 = transition_6_address0_local;
assign transition_6_ce0 = transition_6_ce0_local;
assign transition_7_address0 = transition_7_address0_local;
assign transition_7_ce0 = transition_7_ce0_local;
assign trunc_ln54_fu_554_p1 = add_ln53_reg_964[5:0];
assign trunc_ln55_1_fu_697_p1 = bitcast_ln55_1_fu_684_p1[51:0];
assign trunc_ln55_2_fu_782_p1 = bitcast_ln55_2_fu_769_p1[51:0];
assign trunc_ln55_3_fu_799_p1 = bitcast_ln55_3_fu_786_p1[51:0];
assign trunc_ln55_fu_680_p1 = bitcast_ln55_fu_667_p1[51:0];
assign zext_ln17_fu_393_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_371_p1 = zext_ln52_2;
assign zext_ln54_1_fu_570_p1 = add_ln54_1_fu_565_p2;
assign zext_ln54_2_fu_415_p1 = tmp_s_fu_407_p3;
assign zext_ln54_3_fu_540_p1 = lshr_ln9_3_fu_531_p4;
assign zext_ln54_4_fu_549_p1 = add_ln54_2_fu_544_p2;
assign zext_ln54_fu_434_p1 = add_ln54_fu_428_p2;
assign zext_ln55_1_fu_856_p1 = trunc_ln54_reg_989_pp0_iter2_reg;
assign zext_ln55_fu_752_p1 = s_reg_913_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_908[8:5] <= 4'b0000;
end
endmodule 