module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_66,empty_9,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty_10,bitcast_ln24,empty,min_p_70_out,min_p_70_out_ap_vld,grp_fu_451_p_din0,grp_fu_451_p_din1,grp_fu_451_p_opcode,grp_fu_451_p_dout0,grp_fu_451_p_ce,grp_fu_1046_p_din0,grp_fu_1046_p_din1,grp_fu_1046_p_opcode,grp_fu_1046_p_dout0,grp_fu_1046_p_ce); 
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
input  [63:0] min_p_66;
input  [7:0] empty_9;
output  [11:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
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
output  [63:0] min_p_70_out;
output   min_p_70_out_ap_vld;
output  [63:0] grp_fu_451_p_din0;
output  [63:0] grp_fu_451_p_din1;
output  [1:0] grp_fu_451_p_opcode;
input  [63:0] grp_fu_451_p_dout0;
output   grp_fu_451_p_ce;
output  [63:0] grp_fu_1046_p_din0;
output  [63:0] grp_fu_1046_p_din1;
output  [4:0] grp_fu_1046_p_opcode;
input  [0:0] grp_fu_1046_p_dout0;
output   grp_fu_1046_p_ce;
reg ap_idle;
reg min_p_70_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] tmp_125_reg_753;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln16_fu_316_p1;
reg   [1:0] trunc_ln16_reg_712;
wire   [6:0] add_ln25_fu_360_p2;
reg   [6:0] add_ln25_reg_748;
wire   [0:0] tmp_125_fu_366_p3;
reg   [0:0] tmp_125_reg_753_pp0_iter1_reg;
reg   [0:0] tmp_125_reg_753_pp0_iter2_reg;
reg   [0:0] tmp_125_reg_753_pp0_iter3_reg;
reg   [0:0] tmp_125_reg_753_pp0_iter4_reg;
wire   [63:0] tmp_4_fu_403_p11;
reg   [63:0] tmp_4_reg_767;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] select_ln27_fu_426_p3;
reg   [63:0] select_ln27_reg_772;
wire   [63:0] select_ln27_1_fu_459_p3;
reg   [63:0] select_ln27_1_reg_797;
wire   [63:0] bitcast_ln27_fu_466_p1;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_8_fu_470_p11;
reg   [63:0] tmp_8_reg_807;
wire   [63:0] bitcast_ln27_1_fu_493_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] add1_reg_817;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] add52_1_reg_822;
reg   [63:0] p_reg_827;
reg   [63:0] min_p_67_reg_834;
reg   [63:0] p_32_reg_841;
wire   [0:0] and_ln29_1_fu_577_p2;
reg   [0:0] and_ln29_1_reg_848;
wire   [63:0] min_p_69_fu_583_p3;
reg   [63:0] min_p_69_reg_853;
reg   [0:0] tmp_105_reg_860;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter4_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_338_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_354_p1;
wire   [63:0] zext_ln27_1_fu_386_p1;
wire   [63:0] zext_ln26_2_fu_451_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] min_p_fu_106;
wire   [63:0] min_p_71_fu_671_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_110;
wire   [5:0] add_ln25_1_fu_392_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
wire    ap_block_pp0_stage0_01001;
reg    llike_ce0_local;
reg   [11:0] llike_address0_local;
reg    llike_1_ce0_local;
reg   [11:0] llike_1_address0_local;
reg    llike_2_ce0_local;
reg   [11:0] llike_2_address0_local;
reg    llike_3_ce0_local;
reg   [11:0] llike_3_address0_local;
reg    transition_0_ce1_local;
reg    transition_0_ce0_local;
reg    transition_1_ce1_local;
reg    transition_1_ce0_local;
reg   [63:0] grp_fu_291_p0;
reg   [63:0] grp_fu_291_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_295_p0;
reg   [63:0] grp_fu_295_p1;
wire   [3:0] lshr_ln7_1_fu_320_p4;
wire   [11:0] tmp_s_fu_330_p3;
wire   [10:0] add_ln_fu_346_p3;
wire   [6:0] zext_ln16_fu_312_p1;
wire   [5:0] trunc_ln27_fu_374_p1;
wire   [10:0] add_ln27_1_fu_378_p3;
wire   [63:0] tmp_4_fu_403_p9;
wire   [4:0] lshr_ln8_s_fu_433_p4;
wire   [11:0] zext_ln26_1_fu_442_p1;
wire   [11:0] add_ln26_fu_446_p2;
wire   [63:0] tmp_8_fu_470_p9;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln29_fu_501_p1;
wire   [63:0] bitcast_ln29_1_fu_518_p1;
wire   [10:0] tmp_98_fu_504_p4;
wire   [51:0] trunc_ln29_fu_514_p1;
wire   [0:0] icmp_ln29_1_fu_541_p2;
wire   [0:0] icmp_ln29_fu_535_p2;
wire   [10:0] tmp_100_fu_521_p4;
wire   [51:0] trunc_ln29_1_fu_531_p1;
wire   [0:0] icmp_ln29_3_fu_559_p2;
wire   [0:0] icmp_ln29_2_fu_553_p2;
wire   [0:0] or_ln29_fu_547_p2;
wire   [0:0] and_ln29_fu_571_p2;
wire   [0:0] or_ln29_1_fu_565_p2;
wire   [63:0] bitcast_ln29_2_fu_590_p1;
wire   [63:0] bitcast_ln29_3_fu_607_p1;
wire   [10:0] tmp_102_fu_593_p4;
wire   [51:0] trunc_ln29_2_fu_603_p1;
wire   [0:0] icmp_ln29_5_fu_630_p2;
wire   [0:0] icmp_ln29_4_fu_624_p2;
wire   [10:0] tmp_104_fu_610_p4;
wire   [51:0] trunc_ln29_3_fu_620_p1;
wire   [0:0] icmp_ln29_7_fu_648_p2;
wire   [0:0] icmp_ln29_6_fu_642_p2;
wire   [0:0] or_ln29_3_fu_654_p2;
wire   [0:0] or_ln29_2_fu_636_p2;
wire   [0:0] and_ln29_2_fu_660_p2;
wire   [0:0] and_ln29_3_fu_666_p2;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage1_00001;
wire   [1:0] tmp_4_fu_403_p1;
wire   [1:0] tmp_4_fu_403_p3;
wire  signed [1:0] tmp_4_fu_403_p5;
wire  signed [1:0] tmp_4_fu_403_p7;
wire  signed [1:0] tmp_8_fu_470_p1;
wire   [1:0] tmp_8_fu_470_p3;
wire   [1:0] tmp_8_fu_470_p5;
wire  signed [1:0] tmp_8_fu_470_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_106 = 64'd0;
#0 prev_fu_110 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U16(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.def(tmp_4_fu_403_p9),.sel(trunc_ln16_reg_712),.dout(tmp_4_fu_403_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 64 ),.CASE1( 2'h0 ),.din1_WIDTH( 64 ),.CASE2( 2'h1 ),.din2_WIDTH( 64 ),.CASE3( 2'h2 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U17(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.def(tmp_8_fu_470_p9),.sel(trunc_ln16_reg_712),.dout(tmp_8_fu_470_p11));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter4_stage0) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0)) | ((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_fu_106 <= min_p_66;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_125_reg_753_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_fu_106 <= min_p_71_fu_671_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_125_fu_366_p3 == 1'd0))) begin
            prev_fu_110 <= add_ln25_1_fu_392_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            prev_fu_110 <= 6'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add1_reg_817 <= grp_fu_451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add52_1_reg_822 <= grp_fu_451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_748 <= add_ln25_fu_360_p2;
        tmp_125_reg_753 <= add_ln25_fu_360_p2[32'd6];
        tmp_125_reg_753_pp0_iter1_reg <= tmp_125_reg_753;
        tmp_125_reg_753_pp0_iter2_reg <= tmp_125_reg_753_pp0_iter1_reg;
        tmp_125_reg_753_pp0_iter3_reg <= tmp_125_reg_753_pp0_iter2_reg;
        tmp_125_reg_753_pp0_iter4_reg <= tmp_125_reg_753_pp0_iter3_reg;
        trunc_ln16_reg_712 <= trunc_ln16_fu_316_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_848 <= and_ln29_1_fu_577_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_67_reg_834 <= min_p_fu_106;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_69_reg_853 <= min_p_69_fu_583_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        p_32_reg_841 <= grp_fu_451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_reg_827 <= grp_fu_451_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        select_ln27_1_reg_797 <= select_ln27_1_fu_459_p3;
        select_ln27_reg_772 <= select_ln27_fu_426_p3;
        tmp_4_reg_767 <= tmp_4_fu_403_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_105_reg_860 <= grp_fu_1046_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        tmp_8_reg_807 <= tmp_8_fu_470_p11;
    end
end
always @ (*) begin
    if (((tmp_125_reg_753 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (tmp_125_reg_753_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to4 = 1'b1;
    end else begin
        ap_idle_pp0_1to4 = 1'b0;
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
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_291_p0 = add52_1_reg_822;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_291_p0 = add1_reg_817;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_291_p0 = tmp_8_reg_807;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_291_p0 = tmp_4_reg_767;
    end else begin
        grp_fu_291_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_291_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_291_p1 = bitcast_ln27_1_fu_493_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_291_p1 = bitcast_ln27_fu_466_p1;
    end else begin
        grp_fu_291_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_295_p0 = p_32_reg_841;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_295_p0 = p_reg_827;
    end else begin
        grp_fu_295_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_295_p1 = min_p_69_fu_583_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_295_p1 = min_p_fu_106;
    end else begin
        grp_fu_295_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln26_2_fu_451_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln26_fu_338_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln26_2_fu_451_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln26_fu_338_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln26_2_fu_451_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln26_fu_338_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_2_fu_451_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_fu_338_p1;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (tmp_125_reg_753_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_70_out_ap_vld = 1'b1;
    end else begin
        min_p_70_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln25_1_fu_392_p2 = (ap_sig_allocacmp_prev_1 + 6'd2);
assign add_ln25_fu_360_p2 = (zext_ln16_fu_312_p1 + 7'd1);
assign add_ln26_fu_446_p2 = (empty + zext_ln26_1_fu_442_p1);
assign add_ln27_1_fu_378_p3 = {{trunc_ln27_fu_374_p1}, {lshr_ln}};
assign add_ln_fu_346_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_577_p2 = (or_ln29_1_fu_565_p2 & and_ln29_fu_571_p2);
assign and_ln29_2_fu_660_p2 = (or_ln29_3_fu_654_p2 & or_ln29_2_fu_636_p2);
assign and_ln29_3_fu_666_p2 = (tmp_105_reg_860 & and_ln29_2_fu_660_p2);
assign and_ln29_fu_571_p2 = (or_ln29_fu_547_p2 & grp_fu_1046_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign bitcast_ln27_1_fu_493_p1 = select_ln27_1_reg_797;
assign bitcast_ln27_fu_466_p1 = select_ln27_reg_772;
assign bitcast_ln29_1_fu_518_p1 = min_p_67_reg_834;
assign bitcast_ln29_2_fu_590_p1 = p_32_reg_841;
assign bitcast_ln29_3_fu_607_p1 = min_p_69_reg_853;
assign bitcast_ln29_fu_501_p1 = p_reg_827;
assign grp_fu_1046_p_ce = 1'b1;
assign grp_fu_1046_p_din0 = grp_fu_295_p0;
assign grp_fu_1046_p_din1 = grp_fu_295_p1;
assign grp_fu_1046_p_opcode = 5'd4;
assign grp_fu_451_p_ce = 1'b1;
assign grp_fu_451_p_din0 = grp_fu_291_p0;
assign grp_fu_451_p_din1 = grp_fu_291_p1;
assign grp_fu_451_p_opcode = 2'd0;
assign icmp_ln29_1_fu_541_p2 = ((trunc_ln29_fu_514_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_553_p2 = ((tmp_100_fu_521_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_559_p2 = ((trunc_ln29_1_fu_531_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_624_p2 = ((tmp_102_fu_593_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_630_p2 = ((trunc_ln29_2_fu_603_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_642_p2 = ((tmp_104_fu_610_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_648_p2 = ((trunc_ln29_3_fu_620_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_535_p2 = ((tmp_98_fu_504_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_320_p4 = {{ap_sig_allocacmp_prev_1[5:2]}};
assign lshr_ln8_s_fu_433_p4 = {{add_ln25_reg_748[6:2]}};
assign min_p_69_fu_583_p3 = ((and_ln29_1_reg_848[0:0] == 1'b1) ? p_reg_827 : min_p_67_reg_834);
assign min_p_70_out = ((and_ln29_1_reg_848[0:0] == 1'b1) ? p_reg_827 : min_p_67_reg_834);
assign min_p_71_fu_671_p3 = ((and_ln29_3_fu_666_p2[0:0] == 1'b1) ? p_32_reg_841 : min_p_69_reg_853);
assign or_ln29_1_fu_565_p2 = (icmp_ln29_3_fu_559_p2 | icmp_ln29_2_fu_553_p2);
assign or_ln29_2_fu_636_p2 = (icmp_ln29_5_fu_630_p2 | icmp_ln29_4_fu_624_p2);
assign or_ln29_3_fu_654_p2 = (icmp_ln29_7_fu_648_p2 | icmp_ln29_6_fu_642_p2);
assign or_ln29_fu_547_p2 = (icmp_ln29_fu_535_p2 | icmp_ln29_1_fu_541_p2);
assign select_ln27_1_fu_459_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign select_ln27_fu_426_p3 = ((empty_10[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign tmp_100_fu_521_p4 = {{bitcast_ln29_1_fu_518_p1[62:52]}};
assign tmp_102_fu_593_p4 = {{bitcast_ln29_2_fu_590_p1[62:52]}};
assign tmp_104_fu_610_p4 = {{bitcast_ln29_3_fu_607_p1[62:52]}};
assign tmp_125_fu_366_p3 = add_ln25_fu_360_p2[32'd6];
assign tmp_4_fu_403_p9 = 'bx;
assign tmp_8_fu_470_p9 = 'bx;
assign tmp_98_fu_504_p4 = {{bitcast_ln29_fu_501_p1[62:52]}};
assign tmp_s_fu_330_p3 = {{empty_9}, {lshr_ln7_1_fu_320_p4}};
assign transition_0_address0 = zext_ln27_1_fu_386_p1;
assign transition_0_address1 = zext_ln27_fu_354_p1;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = zext_ln27_1_fu_386_p1;
assign transition_1_address1 = zext_ln27_fu_354_p1;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln16_fu_316_p1 = ap_sig_allocacmp_prev_1[1:0];
assign trunc_ln27_fu_374_p1 = add_ln25_fu_360_p2[5:0];
assign trunc_ln29_1_fu_531_p1 = bitcast_ln29_1_fu_518_p1[51:0];
assign trunc_ln29_2_fu_603_p1 = bitcast_ln29_2_fu_590_p1[51:0];
assign trunc_ln29_3_fu_620_p1 = bitcast_ln29_3_fu_607_p1[51:0];
assign trunc_ln29_fu_514_p1 = bitcast_ln29_fu_501_p1[51:0];
assign zext_ln16_fu_312_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_442_p1 = lshr_ln8_s_fu_433_p4;
assign zext_ln26_2_fu_451_p1 = add_ln26_fu_446_p2;
assign zext_ln26_fu_338_p1 = tmp_s_fu_330_p3;
assign zext_ln27_1_fu_386_p1 = add_ln27_1_fu_378_p3;
assign zext_ln27_fu_354_p1 = add_ln_fu_346_p3;
endmodule 