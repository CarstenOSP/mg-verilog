module viterbi_viterbi_Pipeline_L_end (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,min_s_out,min_s_out_ap_vld,grp_fu_870_p_din0,grp_fu_870_p_din1,grp_fu_870_p_opcode,grp_fu_870_p_dout0,grp_fu_870_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p;
output  [9:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [9:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [9:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [9:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [9:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [9:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [9:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [9:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
output  [9:0] llike_8_address0;
output   llike_8_ce0;
input  [63:0] llike_8_q0;
output  [9:0] llike_9_address0;
output   llike_9_ce0;
input  [63:0] llike_9_q0;
output  [9:0] llike_10_address0;
output   llike_10_ce0;
input  [63:0] llike_10_q0;
output  [9:0] llike_11_address0;
output   llike_11_ce0;
input  [63:0] llike_11_q0;
output  [9:0] llike_12_address0;
output   llike_12_ce0;
input  [63:0] llike_12_q0;
output  [9:0] llike_13_address0;
output   llike_13_ce0;
input  [63:0] llike_13_q0;
output  [9:0] llike_14_address0;
output   llike_14_ce0;
input  [63:0] llike_14_q0;
output  [9:0] llike_15_address0;
output   llike_15_ce0;
input  [63:0] llike_15_q0;
output  [7:0] min_s_out;
output   min_s_out_ap_vld;
output  [63:0] grp_fu_870_p_din0;
output  [63:0] grp_fu_870_p_din1;
output  [4:0] grp_fu_870_p_opcode;
input  [0:0] grp_fu_870_p_dout0;
output   grp_fu_870_p_ce;
reg ap_idle;
reg min_s_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln40_reg_656;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] s_reg_649;
wire   [0:0] icmp_ln40_fu_377_p2;
wire   [63:0] p_fu_424_p35;
reg   [63:0] p_reg_740;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] min_p_1_load_reg_747;
wire    ap_block_pp0_stage2_11001;
wire   [5:0] trunc_ln40_fu_500_p1;
reg   [5:0] trunc_ln40_reg_753;
wire   [0:0] icmp_ln42_2_fu_521_p2;
reg   [0:0] icmp_ln42_2_reg_758;
wire   [0:0] icmp_ln42_3_fu_527_p2;
reg   [0:0] icmp_ln42_3_reg_763;
reg   [0:0] tmp_s_reg_768;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln41_fu_401_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] min_p_1_fu_122;
wire   [63:0] min_p_20_fu_596_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [7:0] min_s_fu_126;
wire   [7:0] min_s_4_fu_605_p3;
wire    ap_block_pp0_stage1;
reg   [6:0] min_s_1_fu_130;
wire   [6:0] add_ln40_fu_533_p2;
reg   [6:0] ap_sig_allocacmp_s;
wire    ap_block_pp0_stage1_01001;
reg    llike_ce0_local;
reg    llike_1_ce0_local;
reg    llike_2_ce0_local;
reg    llike_3_ce0_local;
reg    llike_4_ce0_local;
reg    llike_5_ce0_local;
reg    llike_6_ce0_local;
reg    llike_7_ce0_local;
reg    llike_8_ce0_local;
reg    llike_9_ce0_local;
reg    llike_10_ce0_local;
reg    llike_11_ce0_local;
reg    llike_12_ce0_local;
reg    llike_13_ce0_local;
reg    llike_14_ce0_local;
reg    llike_15_ce0_local;
wire   [1:0] tmp_43_fu_383_p4;
wire   [9:0] tmp_243_cast_fu_393_p3;
wire   [63:0] p_fu_424_p33;
wire   [3:0] p_fu_424_p34;
wire   [63:0] bitcast_ln42_1_fu_503_p1;
wire   [10:0] tmp_9_fu_507_p4;
wire   [51:0] trunc_ln42_1_fu_517_p1;
wire   [63:0] bitcast_ln42_fu_546_p1;
wire   [10:0] tmp_8_fu_549_p4;
wire   [51:0] trunc_ln42_fu_559_p1;
wire   [0:0] icmp_ln42_1_fu_569_p2;
wire   [0:0] icmp_ln42_fu_563_p2;
wire   [0:0] or_ln42_fu_575_p2;
wire   [0:0] and_ln42_fu_585_p2;
wire   [0:0] or_ln42_1_fu_581_p2;
wire   [0:0] and_ln42_1_fu_590_p2;
wire   [7:0] zext_ln42_fu_602_p1;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] p_fu_424_p1;
wire   [3:0] p_fu_424_p3;
wire   [3:0] p_fu_424_p5;
wire   [3:0] p_fu_424_p7;
wire   [3:0] p_fu_424_p9;
wire   [3:0] p_fu_424_p11;
wire   [3:0] p_fu_424_p13;
wire   [3:0] p_fu_424_p15;
wire  signed [3:0] p_fu_424_p17;
wire  signed [3:0] p_fu_424_p19;
wire  signed [3:0] p_fu_424_p21;
wire  signed [3:0] p_fu_424_p23;
wire  signed [3:0] p_fu_424_p25;
wire  signed [3:0] p_fu_424_p27;
wire  signed [3:0] p_fu_424_p29;
wire  signed [3:0] p_fu_424_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_1_fu_122 = 64'd0;
#0 min_s_fu_126 = 8'd0;
#0 min_s_1_fu_130 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U65(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_fu_424_p33),.sel(p_fu_424_p34),.dout(p_fu_424_p35));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_1_fu_122 <= min_p;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_fu_122 <= min_p_20_fu_596_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_130 <= 7'd1;
    end else if (((icmp_ln40_reg_656 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_s_1_fu_130 <= add_ln40_fu_533_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_126 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_s_fu_126 <= min_s_4_fu_605_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln40_reg_656 <= icmp_ln40_fu_377_p2;
        s_reg_649 <= ap_sig_allocacmp_s;
        tmp_s_reg_768 <= grp_fu_870_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln42_2_reg_758 <= icmp_ln42_2_fu_521_p2;
        icmp_ln42_3_reg_763 <= icmp_ln42_3_fu_527_p2;
        min_p_1_load_reg_747 <= min_p_1_fu_122;
        trunc_ln40_reg_753 <= trunc_ln40_fu_500_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_reg_740 <= p_fu_424_p35;
    end
end
always @ (*) begin
    if (((icmp_ln40_reg_656 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 7'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_1_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln40_reg_656 == 1'd1) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_s_out_ap_vld = 1'b1;
    end else begin
        min_s_out_ap_vld = 1'b0;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln40_fu_533_p2 = (s_reg_649 + 7'd1);
assign and_ln42_1_fu_590_p2 = (or_ln42_1_fu_581_p2 & and_ln42_fu_585_p2);
assign and_ln42_fu_585_p2 = (tmp_s_reg_768 & or_ln42_fu_575_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln42_1_fu_503_p1 = min_p_1_fu_122;
assign bitcast_ln42_fu_546_p1 = p_reg_740;
assign grp_fu_870_p_ce = 1'b1;
assign grp_fu_870_p_din0 = p_reg_740;
assign grp_fu_870_p_din1 = min_p_1_fu_122;
assign grp_fu_870_p_opcode = 5'd4;
assign icmp_ln40_fu_377_p2 = ((ap_sig_allocacmp_s == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln42_1_fu_569_p2 = ((trunc_ln42_fu_559_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_2_fu_521_p2 = ((tmp_9_fu_507_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_3_fu_527_p2 = ((trunc_ln42_1_fu_517_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_fu_563_p2 = ((tmp_8_fu_549_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_10_address0 = zext_ln41_fu_401_p1;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_11_address0 = zext_ln41_fu_401_p1;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_12_address0 = zext_ln41_fu_401_p1;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_13_address0 = zext_ln41_fu_401_p1;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_14_address0 = zext_ln41_fu_401_p1;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_15_address0 = zext_ln41_fu_401_p1;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_1_address0 = zext_ln41_fu_401_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = zext_ln41_fu_401_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = zext_ln41_fu_401_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = zext_ln41_fu_401_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = zext_ln41_fu_401_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = zext_ln41_fu_401_p1;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = zext_ln41_fu_401_p1;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_8_address0 = zext_ln41_fu_401_p1;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_9_address0 = zext_ln41_fu_401_p1;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_address0 = zext_ln41_fu_401_p1;
assign llike_ce0 = llike_ce0_local;
assign min_p_20_fu_596_p3 = ((and_ln42_1_fu_590_p2[0:0] == 1'b1) ? p_reg_740 : min_p_1_load_reg_747);
assign min_s_4_fu_605_p3 = ((and_ln42_1_fu_590_p2[0:0] == 1'b1) ? zext_ln42_fu_602_p1 : min_s_fu_126);
assign min_s_out = min_s_fu_126;
assign or_ln42_1_fu_581_p2 = (icmp_ln42_3_reg_763 | icmp_ln42_2_reg_758);
assign or_ln42_fu_575_p2 = (icmp_ln42_fu_563_p2 | icmp_ln42_1_fu_569_p2);
assign p_fu_424_p33 = 'bx;
assign p_fu_424_p34 = s_reg_649[3:0];
assign tmp_243_cast_fu_393_p3 = {{8'd139}, {tmp_43_fu_383_p4}};
assign tmp_43_fu_383_p4 = {{ap_sig_allocacmp_s[5:4]}};
assign tmp_8_fu_549_p4 = {{bitcast_ln42_fu_546_p1[62:52]}};
assign tmp_9_fu_507_p4 = {{bitcast_ln42_1_fu_503_p1[62:52]}};
assign trunc_ln40_fu_500_p1 = s_reg_649[5:0];
assign trunc_ln42_1_fu_517_p1 = bitcast_ln42_1_fu_503_p1[51:0];
assign trunc_ln42_fu_559_p1 = bitcast_ln42_fu_546_p1[51:0];
assign zext_ln41_fu_401_p1 = tmp_243_cast_fu_393_p3;
assign zext_ln42_fu_602_p1 = trunc_ln40_reg_753;
endmodule 