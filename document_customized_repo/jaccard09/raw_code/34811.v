module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_8,t_1,llike_address0,llike_ce0,llike_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_1_address0,transition_1_ce0,transition_1_q0,transition_2_address0,transition_2_ce0,transition_2_q0,transition_3_address0,transition_3_ce0,transition_3_q0,transition_4_address0,transition_4_ce0,transition_4_q0,transition_5_address0,transition_5_ce0,transition_5_q0,transition_6_address0,transition_6_ce0,transition_6_q0,transition_7_address0,transition_7_ce0,transition_7_q0,empty,zext_ln52_3,min_s_6_out,min_s_6_out_ap_vld,grp_fu_922_p_din0,grp_fu_922_p_din1,grp_fu_922_p_opcode,grp_fu_922_p_dout0,grp_fu_922_p_ce,grp_fu_1932_p_din0,grp_fu_1932_p_din1,grp_fu_1932_p_opcode,grp_fu_1932_p_dout0,grp_fu_1932_p_ce); 
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
input  [63:0] min_p_8;
input  [7:0] t_1;
output  [13:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
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
input  [13:0] zext_ln52_3;
output  [7:0] min_s_6_out;
output   min_s_6_out_ap_vld;
output  [63:0] grp_fu_922_p_din0;
output  [63:0] grp_fu_922_p_din1;
output  [1:0] grp_fu_922_p_opcode;
input  [63:0] grp_fu_922_p_dout0;
output   grp_fu_922_p_ce;
output  [63:0] grp_fu_1932_p_din0;
output  [63:0] grp_fu_1932_p_din1;
output  [4:0] grp_fu_1932_p_opcode;
input  [0:0] grp_fu_1932_p_dout0;
output   grp_fu_1932_p_ce;
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
reg   [0:0] tmp_5_reg_937;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [8:0] zext_ln52_2_cast_fu_358_p1;
reg   [8:0] zext_ln52_2_cast_reg_875;
reg   [5:0] s_reg_880;
reg   [5:0] s_reg_880_pp0_iter1_reg;
reg   [5:0] s_reg_880_pp0_iter2_reg;
wire   [6:0] add_ln53_fu_423_p2;
reg   [6:0] add_ln53_reg_931;
reg   [0:0] tmp_5_reg_937_pp0_iter1_reg;
reg   [0:0] tmp_5_reg_937_pp0_iter2_reg;
reg   [63:0] llike_load_reg_941;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_469_p19;
reg   [63:0] tmp_1_reg_946;
wire   [5:0] trunc_ln54_fu_521_p1;
reg   [5:0] trunc_ln54_reg_956;
reg   [5:0] trunc_ln54_reg_956_pp0_iter1_reg;
reg   [5:0] trunc_ln54_reg_956_pp0_iter2_reg;
reg   [63:0] llike_load_1_reg_1001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_6_fu_581_p19;
reg   [63:0] tmp_6_reg_1006;
reg   [63:0] p_reg_1011;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] min_p_1_reg_1018;
reg   [63:0] p_1_reg_1025;
wire   [0:0] and_ln55_1_fu_710_p2;
reg   [0:0] and_ln55_1_reg_1032;
wire   [7:0] min_s_4_fu_722_p3;
reg   [7:0] min_s_4_reg_1038;
wire   [63:0] min_p_3_fu_730_p3;
reg   [63:0] min_p_3_reg_1043;
reg   [0:0] tmp_9_reg_1050;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
reg    ap_condition_exit_pp0_iter2_stage2;
wire   [63:0] zext_ln54_2_fu_388_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_411_p1;
wire   [63:0] zext_ln54_4_fu_516_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_1_fu_537_p1;
reg   [63:0] min_p_fu_112;
wire   [63:0] min_p_5_fu_817_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_116;
wire   [7:0] min_s_5_fu_826_p3;
wire    ap_block_pp0_stage2;
reg   [5:0] min_s_1_fu_120;
wire   [5:0] add_ln53_1_fu_620_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage2_01001;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
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
reg   [63:0] grp_fu_350_p0;
reg   [63:0] grp_fu_350_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_354_p0;
reg   [63:0] grp_fu_354_p1;
wire   [13:0] tmp_s_fu_380_p3;
wire   [8:0] shl_ln2_fu_397_p3;
wire   [8:0] add_ln54_fu_405_p2;
wire   [6:0] zext_ln20_fu_393_p1;
wire   [63:0] tmp_1_fu_469_p2;
wire   [63:0] tmp_1_fu_469_p4;
wire   [63:0] tmp_1_fu_469_p6;
wire   [63:0] tmp_1_fu_469_p8;
wire   [63:0] tmp_1_fu_469_p10;
wire   [63:0] tmp_1_fu_469_p12;
wire   [63:0] tmp_1_fu_469_p14;
wire   [63:0] tmp_1_fu_469_p16;
wire   [63:0] tmp_1_fu_469_p17;
wire   [13:0] zext_ln54_3_fu_508_p1;
wire   [13:0] add_ln54_2_fu_511_p2;
wire   [8:0] shl_ln54_1_fu_524_p3;
wire   [8:0] add_ln54_1_fu_532_p2;
wire   [63:0] tmp_6_fu_581_p2;
wire   [63:0] tmp_6_fu_581_p4;
wire   [63:0] tmp_6_fu_581_p6;
wire   [63:0] tmp_6_fu_581_p8;
wire   [63:0] tmp_6_fu_581_p10;
wire   [63:0] tmp_6_fu_581_p12;
wire   [63:0] tmp_6_fu_581_p14;
wire   [63:0] tmp_6_fu_581_p16;
wire   [63:0] tmp_6_fu_581_p17;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln55_fu_634_p1;
wire   [63:0] bitcast_ln55_1_fu_651_p1;
wire   [10:0] tmp_2_fu_637_p4;
wire   [51:0] trunc_ln55_fu_647_p1;
wire   [0:0] icmp_ln55_1_fu_674_p2;
wire   [0:0] icmp_ln55_fu_668_p2;
wire   [10:0] tmp_3_fu_654_p4;
wire   [51:0] trunc_ln55_1_fu_664_p1;
wire   [0:0] icmp_ln55_3_fu_692_p2;
wire   [0:0] icmp_ln55_2_fu_686_p2;
wire   [0:0] or_ln55_fu_680_p2;
wire   [0:0] and_ln55_fu_704_p2;
wire   [0:0] or_ln55_1_fu_698_p2;
wire   [7:0] zext_ln55_fu_719_p1;
wire   [63:0] bitcast_ln55_2_fu_736_p1;
wire   [63:0] bitcast_ln55_3_fu_753_p1;
wire   [10:0] tmp_7_fu_739_p4;
wire   [51:0] trunc_ln55_2_fu_749_p1;
wire   [0:0] icmp_ln55_5_fu_776_p2;
wire   [0:0] icmp_ln55_4_fu_770_p2;
wire   [10:0] tmp_8_fu_756_p4;
wire   [51:0] trunc_ln55_3_fu_766_p1;
wire   [0:0] icmp_ln55_7_fu_794_p2;
wire   [0:0] icmp_ln55_6_fu_788_p2;
wire   [0:0] or_ln55_3_fu_800_p2;
wire   [0:0] or_ln55_2_fu_782_p2;
wire   [0:0] and_ln55_2_fu_806_p2;
wire   [0:0] and_ln55_3_fu_812_p2;
wire   [7:0] zext_ln55_1_fu_823_p1;
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
wire   [2:0] tmp_1_fu_469_p1;
wire   [2:0] tmp_1_fu_469_p3;
wire   [2:0] tmp_1_fu_469_p5;
wire   [2:0] tmp_1_fu_469_p7;
wire  signed [2:0] tmp_1_fu_469_p9;
wire  signed [2:0] tmp_1_fu_469_p11;
wire  signed [2:0] tmp_1_fu_469_p13;
wire  signed [2:0] tmp_1_fu_469_p15;
wire   [2:0] tmp_6_fu_581_p1;
wire   [2:0] tmp_6_fu_581_p3;
wire   [2:0] tmp_6_fu_581_p5;
wire   [2:0] tmp_6_fu_581_p7;
wire  signed [2:0] tmp_6_fu_581_p9;
wire  signed [2:0] tmp_6_fu_581_p11;
wire  signed [2:0] tmp_6_fu_581_p13;
wire  signed [2:0] tmp_6_fu_581_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_112 = 64'd0;
#0 min_s_fu_116 = 8'd0;
#0 min_s_1_fu_120 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U114(.din0(tmp_1_fu_469_p2),.din1(tmp_1_fu_469_p4),.din2(tmp_1_fu_469_p6),.din3(tmp_1_fu_469_p8),.din4(tmp_1_fu_469_p10),.din5(tmp_1_fu_469_p12),.din6(tmp_1_fu_469_p14),.din7(tmp_1_fu_469_p16),.def(tmp_1_fu_469_p17),.sel(empty),.dout(tmp_1_fu_469_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U115(.din0(tmp_6_fu_581_p2),.din1(tmp_6_fu_581_p4),.din2(tmp_6_fu_581_p6),.din3(tmp_6_fu_581_p8),.din4(tmp_6_fu_581_p10),.din5(tmp_6_fu_581_p12),.din6(tmp_6_fu_581_p14),.din7(tmp_6_fu_581_p16),.def(tmp_6_fu_581_p17),.sel(empty),.dout(tmp_6_fu_581_p19));
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
        min_p_fu_112 <= min_p_8;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_5_reg_937_pp0_iter2_reg == 1'd0))) begin
        min_p_fu_112 <= min_p_5_fu_817_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_120 <= 6'd1;
    end else if (((tmp_5_reg_937 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_1_fu_120 <= add_ln53_1_fu_620_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_116 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_5_reg_937_pp0_iter2_reg == 1'd0))) begin
        min_s_fu_116 <= min_s_5_fu_826_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_reg_931 <= add_ln53_fu_423_p2;
        min_p_1_reg_1018 <= min_p_fu_112;
        s_reg_880 <= ap_sig_allocacmp_s;
        s_reg_880_pp0_iter1_reg <= s_reg_880;
        s_reg_880_pp0_iter2_reg <= s_reg_880_pp0_iter1_reg;
        tmp_5_reg_937 <= add_ln53_fu_423_p2[32'd6];
        tmp_5_reg_937_pp0_iter1_reg <= tmp_5_reg_937;
        tmp_5_reg_937_pp0_iter2_reg <= tmp_5_reg_937_pp0_iter1_reg;
        zext_ln52_2_cast_reg_875[4 : 0] <= zext_ln52_2_cast_fu_358_p1[4 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln55_1_reg_1032 <= and_ln55_1_fu_710_p2;
        tmp_1_reg_946 <= tmp_1_fu_469_p19;
        trunc_ln54_reg_956 <= trunc_ln54_fu_521_p1;
        trunc_ln54_reg_956_pp0_iter1_reg <= trunc_ln54_reg_956;
        trunc_ln54_reg_956_pp0_iter2_reg <= trunc_ln54_reg_956_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_1_reg_1001 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_load_reg_941 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_3_reg_1043 <= min_p_3_fu_730_p3;
        tmp_6_reg_1006 <= tmp_6_fu_581_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_s_4_reg_1038 <= min_s_4_fu_722_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_1_reg_1025 <= grp_fu_922_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_reg_1011 <= grp_fu_922_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_9_reg_1050 <= grp_fu_1932_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_5_reg_937 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_5_reg_937_pp0_iter2_reg == 1'd1))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_120;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_350_p0 = llike_load_1_reg_1001;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_350_p0 = llike_load_reg_941;
        end else begin
            grp_fu_350_p0 = 'bx;
        end
    end else begin
        grp_fu_350_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_350_p1 = tmp_6_reg_1006;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_350_p1 = tmp_1_reg_946;
        end else begin
            grp_fu_350_p1 = 'bx;
        end
    end else begin
        grp_fu_350_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_354_p0 = p_1_reg_1025;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_354_p0 = p_reg_1011;
        end else begin
            grp_fu_354_p0 = 'bx;
        end
    end else begin
        grp_fu_354_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_354_p1 = min_p_3_fu_730_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_354_p1 = min_p_fu_112;
        end else begin
            grp_fu_354_p1 = 'bx;
        end
    end else begin
        grp_fu_354_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_4_fu_516_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_2_fu_388_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_5_reg_937_pp0_iter2_reg == 1'd1))) begin
        min_s_6_out_ap_vld = 1'b1;
    end else begin
        min_s_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_1_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_411_p1;
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
            transition_1_address0_local = zext_ln54_1_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_411_p1;
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
            transition_2_address0_local = zext_ln54_1_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_411_p1;
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
            transition_3_address0_local = zext_ln54_1_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_411_p1;
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
            transition_4_address0_local = zext_ln54_1_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_4_address0_local = zext_ln54_fu_411_p1;
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
            transition_5_address0_local = zext_ln54_1_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_5_address0_local = zext_ln54_fu_411_p1;
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
            transition_6_address0_local = zext_ln54_1_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_6_address0_local = zext_ln54_fu_411_p1;
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
            transition_7_address0_local = zext_ln54_1_fu_537_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_7_address0_local = zext_ln54_fu_411_p1;
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
assign add_ln53_1_fu_620_p2 = (s_reg_880 + 6'd2);
assign add_ln53_fu_423_p2 = (zext_ln20_fu_393_p1 + 7'd1);
assign add_ln54_1_fu_532_p2 = (shl_ln54_1_fu_524_p3 + zext_ln52_2_cast_reg_875);
assign add_ln54_2_fu_511_p2 = (zext_ln52_3 + zext_ln54_3_fu_508_p1);
assign add_ln54_fu_405_p2 = (shl_ln2_fu_397_p3 + zext_ln52_2_cast_fu_358_p1);
assign and_ln55_1_fu_710_p2 = (or_ln55_1_fu_698_p2 & and_ln55_fu_704_p2);
assign and_ln55_2_fu_806_p2 = (or_ln55_3_fu_800_p2 & or_ln55_2_fu_782_p2);
assign and_ln55_3_fu_812_p2 = (tmp_9_reg_1050 & and_ln55_2_fu_806_p2);
assign and_ln55_fu_704_p2 = (or_ln55_fu_680_p2 & grp_fu_1932_p_dout0);
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
assign bitcast_ln55_1_fu_651_p1 = min_p_1_reg_1018;
assign bitcast_ln55_2_fu_736_p1 = p_1_reg_1025;
assign bitcast_ln55_3_fu_753_p1 = min_p_3_reg_1043;
assign bitcast_ln55_fu_634_p1 = p_reg_1011;
assign grp_fu_1932_p_ce = 1'b1;
assign grp_fu_1932_p_din0 = grp_fu_354_p0;
assign grp_fu_1932_p_din1 = grp_fu_354_p1;
assign grp_fu_1932_p_opcode = 5'd4;
assign grp_fu_922_p_ce = 1'b1;
assign grp_fu_922_p_din0 = grp_fu_350_p0;
assign grp_fu_922_p_din1 = grp_fu_350_p1;
assign grp_fu_922_p_opcode = 2'd0;
assign icmp_ln55_1_fu_674_p2 = ((trunc_ln55_fu_647_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_686_p2 = ((tmp_3_fu_654_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_692_p2 = ((trunc_ln55_1_fu_664_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_770_p2 = ((tmp_7_fu_739_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_776_p2 = ((trunc_ln55_2_fu_749_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_788_p2 = ((tmp_8_fu_756_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_794_p2 = ((trunc_ln55_3_fu_766_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_668_p2 = ((tmp_2_fu_637_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign min_p_3_fu_730_p3 = ((and_ln55_1_reg_1032[0:0] == 1'b1) ? p_reg_1011 : min_p_1_reg_1018);
assign min_p_5_fu_817_p3 = ((and_ln55_3_fu_812_p2[0:0] == 1'b1) ? p_1_reg_1025 : min_p_3_reg_1043);
assign min_s_4_fu_722_p3 = ((and_ln55_1_reg_1032[0:0] == 1'b1) ? zext_ln55_fu_719_p1 : min_s_fu_116);
assign min_s_5_fu_826_p3 = ((and_ln55_3_fu_812_p2[0:0] == 1'b1) ? zext_ln55_1_fu_823_p1 : min_s_4_reg_1038);
assign min_s_6_out = ((and_ln55_1_reg_1032[0:0] == 1'b1) ? zext_ln55_fu_719_p1 : min_s_fu_116);
assign or_ln55_1_fu_698_p2 = (icmp_ln55_3_fu_692_p2 | icmp_ln55_2_fu_686_p2);
assign or_ln55_2_fu_782_p2 = (icmp_ln55_5_fu_776_p2 | icmp_ln55_4_fu_770_p2);
assign or_ln55_3_fu_800_p2 = (icmp_ln55_7_fu_794_p2 | icmp_ln55_6_fu_788_p2);
assign or_ln55_fu_680_p2 = (icmp_ln55_fu_668_p2 | icmp_ln55_1_fu_674_p2);
assign shl_ln2_fu_397_p3 = {{ap_sig_allocacmp_s}, {3'd0}};
assign shl_ln54_1_fu_524_p3 = {{trunc_ln54_fu_521_p1}, {3'd0}};
assign tmp_1_fu_469_p10 = transition_4_q0;
assign tmp_1_fu_469_p12 = transition_5_q0;
assign tmp_1_fu_469_p14 = transition_6_q0;
assign tmp_1_fu_469_p16 = transition_7_q0;
assign tmp_1_fu_469_p17 = 'bx;
assign tmp_1_fu_469_p2 = transition_0_q0;
assign tmp_1_fu_469_p4 = transition_1_q0;
assign tmp_1_fu_469_p6 = transition_2_q0;
assign tmp_1_fu_469_p8 = transition_3_q0;
assign tmp_2_fu_637_p4 = {{bitcast_ln55_fu_634_p1[62:52]}};
assign tmp_3_fu_654_p4 = {{bitcast_ln55_1_fu_651_p1[62:52]}};
assign tmp_6_fu_581_p10 = transition_4_q0;
assign tmp_6_fu_581_p12 = transition_5_q0;
assign tmp_6_fu_581_p14 = transition_6_q0;
assign tmp_6_fu_581_p16 = transition_7_q0;
assign tmp_6_fu_581_p17 = 'bx;
assign tmp_6_fu_581_p2 = transition_0_q0;
assign tmp_6_fu_581_p4 = transition_1_q0;
assign tmp_6_fu_581_p6 = transition_2_q0;
assign tmp_6_fu_581_p8 = transition_3_q0;
assign tmp_7_fu_739_p4 = {{bitcast_ln55_2_fu_736_p1[62:52]}};
assign tmp_8_fu_756_p4 = {{bitcast_ln55_3_fu_753_p1[62:52]}};
assign tmp_s_fu_380_p3 = {{t_1}, {ap_sig_allocacmp_s}};
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
assign trunc_ln54_fu_521_p1 = add_ln53_reg_931[5:0];
assign trunc_ln55_1_fu_664_p1 = bitcast_ln55_1_fu_651_p1[51:0];
assign trunc_ln55_2_fu_749_p1 = bitcast_ln55_2_fu_736_p1[51:0];
assign trunc_ln55_3_fu_766_p1 = bitcast_ln55_3_fu_753_p1[51:0];
assign trunc_ln55_fu_647_p1 = bitcast_ln55_fu_634_p1[51:0];
assign zext_ln20_fu_393_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_358_p1 = zext_ln52_2;
assign zext_ln54_1_fu_537_p1 = add_ln54_1_fu_532_p2;
assign zext_ln54_2_fu_388_p1 = tmp_s_fu_380_p3;
assign zext_ln54_3_fu_508_p1 = add_ln53_reg_931;
assign zext_ln54_4_fu_516_p1 = add_ln54_2_fu_511_p2;
assign zext_ln54_fu_411_p1 = add_ln54_fu_405_p2;
assign zext_ln55_1_fu_823_p1 = trunc_ln54_reg_956_pp0_iter2_reg;
assign zext_ln55_fu_719_p1 = s_reg_880_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_875[8:5] <= 4'b0000;
end
endmodule 