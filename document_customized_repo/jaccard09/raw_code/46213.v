module viterbi_viterbi_Pipeline_L_end (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,min_s_2_out,min_s_2_out_ap_vld,grp_fu_1144_p_din0,grp_fu_1144_p_din1,grp_fu_1144_p_opcode,grp_fu_1144_p_dout0,grp_fu_1144_p_ce); 
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
input  [63:0] min_p;
output  [10:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
output  [7:0] min_s_2_out;
output   min_s_2_out_ap_vld;
output  [63:0] grp_fu_1144_p_din0;
output  [63:0] grp_fu_1144_p_din1;
output  [4:0] grp_fu_1144_p_opcode;
input  [0:0] grp_fu_1144_p_dout0;
output   grp_fu_1144_p_ce;
reg ap_idle;
reg min_s_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
reg   [0:0] tmp_reg_782;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] s_reg_724;
wire   [2:0] trunc_ln20_fu_319_p1;
reg   [2:0] trunc_ln20_reg_730;
wire   [6:0] add_ln40_fu_353_p2;
reg   [6:0] add_ln40_reg_776;
reg   [6:0] add_ln40_reg_776_pp0_iter1_reg;
wire   [63:0] p_fu_367_p19;
reg   [63:0] p_reg_786;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [63:0] min_p_24_reg_833;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] p_9_fu_441_p19;
reg   [63:0] p_9_reg_840;
wire   [0:0] and_ln42_1_fu_556_p2;
reg   [0:0] and_ln42_1_reg_847;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [7:0] min_s_9_fu_568_p3;
reg   [7:0] min_s_9_reg_853;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] min_p_26_fu_576_p3;
reg   [63:0] min_p_26_reg_858;
reg   [0:0] tmp_9_reg_865;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln41_fu_341_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln41_2_fu_425_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] min_p_1_fu_100;
wire   [63:0] min_p_28_fu_673_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [7:0] min_s_fu_104;
wire   [7:0] min_s_10_fu_686_p3;
wire    ap_block_pp0_stage4;
reg   [5:0] min_s_6_fu_108;
wire   [5:0] add_ln40_1_fu_582_p2;
reg   [5:0] ap_sig_allocacmp_s;
wire    ap_block_pp0_stage4_01001;
reg    llike_ce0_local;
reg   [10:0] llike_address0_local;
reg    llike_1_ce0_local;
reg   [10:0] llike_1_address0_local;
reg    llike_2_ce0_local;
reg   [10:0] llike_2_address0_local;
reg    llike_3_ce0_local;
reg   [10:0] llike_3_address0_local;
reg    llike_4_ce0_local;
reg   [10:0] llike_4_address0_local;
reg    llike_5_ce0_local;
reg   [10:0] llike_5_address0_local;
reg    llike_6_ce0_local;
reg   [10:0] llike_6_address0_local;
reg    llike_7_ce0_local;
reg   [10:0] llike_7_address0_local;
reg   [63:0] grp_fu_293_p0;
reg   [63:0] grp_fu_293_p1;
wire   [2:0] tmp_s_fu_323_p4;
wire   [10:0] tmp_55_cast_fu_333_p3;
wire   [6:0] zext_ln20_fu_315_p1;
wire   [63:0] p_fu_367_p17;
wire   [3:0] lshr_ln9_2_fu_406_p4;
wire   [10:0] zext_ln41_1_fu_415_p1;
wire   [10:0] add_ln41_fu_419_p2;
wire   [63:0] p_9_fu_441_p17;
wire    ap_block_pp0_stage3;
wire   [63:0] bitcast_ln42_fu_480_p1;
wire   [63:0] bitcast_ln42_1_fu_497_p1;
wire   [10:0] tmp_3_fu_483_p4;
wire   [51:0] trunc_ln42_fu_493_p1;
wire   [0:0] icmp_ln42_1_fu_520_p2;
wire   [0:0] icmp_ln42_fu_514_p2;
wire   [10:0] tmp_4_fu_500_p4;
wire   [51:0] trunc_ln42_1_fu_510_p1;
wire   [0:0] icmp_ln42_3_fu_538_p2;
wire   [0:0] icmp_ln42_2_fu_532_p2;
wire   [0:0] or_ln42_fu_526_p2;
wire   [0:0] and_ln42_fu_550_p2;
wire   [0:0] or_ln42_1_fu_544_p2;
wire   [7:0] zext_ln42_fu_565_p1;
wire   [63:0] bitcast_ln42_2_fu_592_p1;
wire   [63:0] bitcast_ln42_3_fu_609_p1;
wire   [10:0] tmp_6_fu_595_p4;
wire   [51:0] trunc_ln42_2_fu_605_p1;
wire   [0:0] icmp_ln42_5_fu_632_p2;
wire   [0:0] icmp_ln42_4_fu_626_p2;
wire   [10:0] tmp_7_fu_612_p4;
wire   [51:0] trunc_ln42_3_fu_622_p1;
wire   [0:0] icmp_ln42_7_fu_650_p2;
wire   [0:0] icmp_ln42_6_fu_644_p2;
wire   [0:0] or_ln42_3_fu_656_p2;
wire   [0:0] or_ln42_2_fu_638_p2;
wire   [0:0] and_ln42_2_fu_662_p2;
wire   [0:0] and_ln42_3_fu_668_p2;
wire   [5:0] trunc_ln42_4_fu_679_p1;
wire   [7:0] zext_ln42_1_fu_682_p1;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] p_fu_367_p1;
wire   [2:0] p_fu_367_p3;
wire   [2:0] p_fu_367_p5;
wire   [2:0] p_fu_367_p7;
wire  signed [2:0] p_fu_367_p9;
wire  signed [2:0] p_fu_367_p11;
wire  signed [2:0] p_fu_367_p13;
wire  signed [2:0] p_fu_367_p15;
wire  signed [2:0] p_9_fu_441_p1;
wire   [2:0] p_9_fu_441_p3;
wire   [2:0] p_9_fu_441_p5;
wire   [2:0] p_9_fu_441_p7;
wire   [2:0] p_9_fu_441_p9;
wire  signed [2:0] p_9_fu_441_p11;
wire  signed [2:0] p_9_fu_441_p13;
wire  signed [2:0] p_9_fu_441_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_1_fu_100 = 64'd0;
#0 min_s_fu_104 = 8'd0;
#0 min_s_6_fu_108 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U40(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(p_fu_367_p17),.sel(trunc_ln20_reg_730),.dout(p_fu_367_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h7 ),.din0_WIDTH( 64 ),.CASE1( 3'h0 ),.din1_WIDTH( 64 ),.CASE2( 3'h1 ),.din2_WIDTH( 64 ),.CASE3( 3'h2 ),.din3_WIDTH( 64 ),.CASE4( 3'h3 ),.din4_WIDTH( 64 ),.CASE5( 3'h4 ),.din5_WIDTH( 64 ),.CASE6( 3'h5 ),.din6_WIDTH( 64 ),.CASE7( 3'h6 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U41(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.def(p_9_fu_441_p17),.sel(trunc_ln20_reg_730),.dout(p_9_fu_441_p19));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage4) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_1_fu_100 <= min_p;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_fu_100 <= min_p_28_fu_673_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_6_fu_108 <= 6'd1;
    end else if (((tmp_reg_782 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_6_fu_108 <= add_ln40_1_fu_582_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_104 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_s_fu_104 <= min_s_10_fu_686_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln40_reg_776 <= add_ln40_fu_353_p2;
        add_ln40_reg_776_pp0_iter1_reg <= add_ln40_reg_776;
        s_reg_724 <= ap_sig_allocacmp_s;
        tmp_reg_782 <= add_ln40_fu_353_p2[32'd6];
        trunc_ln20_reg_730 <= trunc_ln20_fu_319_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        and_ln42_1_reg_847 <= and_ln42_1_fu_556_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_24_reg_833 <= min_p_1_fu_100;
        p_9_reg_840 <= p_9_fu_441_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_p_26_reg_858 <= min_p_26_fu_576_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_9_reg_853 <= min_s_9_fu_568_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_reg_786 <= p_fu_367_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_9_reg_865 <= grp_fu_1144_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_782 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        ap_sig_allocacmp_s = min_s_6_fu_108;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_293_p0 = p_9_reg_840;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_293_p0 = p_reg_786;
        end else begin
            grp_fu_293_p0 = 'bx;
        end
    end else begin
        grp_fu_293_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_293_p1 = min_p_26_fu_576_p3;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_293_p1 = min_p_1_fu_100;
        end else begin
            grp_fu_293_p1 = 'bx;
        end
    end else begin
        grp_fu_293_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln41_2_fu_425_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln41_fu_341_p1;
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
            llike_2_address0_local = zext_ln41_2_fu_425_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln41_fu_341_p1;
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
            llike_3_address0_local = zext_ln41_2_fu_425_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln41_fu_341_p1;
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
            llike_4_address0_local = zext_ln41_2_fu_425_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln41_fu_341_p1;
        end else begin
            llike_4_address0_local = 'bx;
        end
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_5_address0_local = zext_ln41_2_fu_425_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln41_fu_341_p1;
        end else begin
            llike_5_address0_local = 'bx;
        end
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_6_address0_local = zext_ln41_2_fu_425_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln41_fu_341_p1;
        end else begin
            llike_6_address0_local = 'bx;
        end
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_7_address0_local = zext_ln41_2_fu_425_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln41_fu_341_p1;
        end else begin
            llike_7_address0_local = 'bx;
        end
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln41_2_fu_425_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln41_fu_341_p1;
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
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_782 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_2_out_ap_vld = 1'b1;
    end else begin
        min_s_2_out_ap_vld = 1'b0;
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
assign add_ln40_1_fu_582_p2 = (s_reg_724 + 6'd2);
assign add_ln40_fu_353_p2 = (zext_ln20_fu_315_p1 + 7'd1);
assign add_ln41_fu_419_p2 = ($signed(zext_ln41_1_fu_415_p1) + $signed(11'd1112));
assign and_ln42_1_fu_556_p2 = (or_ln42_1_fu_544_p2 & and_ln42_fu_550_p2);
assign and_ln42_2_fu_662_p2 = (or_ln42_3_fu_656_p2 & or_ln42_2_fu_638_p2);
assign and_ln42_3_fu_668_p2 = (tmp_9_reg_865 & and_ln42_2_fu_662_p2);
assign and_ln42_fu_550_p2 = (or_ln42_fu_526_p2 & grp_fu_1144_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage4;
assign ap_ready = ap_ready_sig;
assign bitcast_ln42_1_fu_497_p1 = min_p_24_reg_833;
assign bitcast_ln42_2_fu_592_p1 = p_9_reg_840;
assign bitcast_ln42_3_fu_609_p1 = min_p_26_reg_858;
assign bitcast_ln42_fu_480_p1 = p_reg_786;
assign grp_fu_1144_p_ce = 1'b1;
assign grp_fu_1144_p_din0 = grp_fu_293_p0;
assign grp_fu_1144_p_din1 = grp_fu_293_p1;
assign grp_fu_1144_p_opcode = 5'd4;
assign icmp_ln42_1_fu_520_p2 = ((trunc_ln42_fu_493_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_2_fu_532_p2 = ((tmp_4_fu_500_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_3_fu_538_p2 = ((trunc_ln42_1_fu_510_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_4_fu_626_p2 = ((tmp_6_fu_595_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_5_fu_632_p2 = ((trunc_ln42_2_fu_605_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_6_fu_644_p2 = ((tmp_7_fu_612_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_7_fu_650_p2 = ((trunc_ln42_3_fu_622_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_fu_514_p2 = ((tmp_3_fu_483_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = llike_4_address0_local;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = llike_5_address0_local;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = llike_6_address0_local;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = llike_7_address0_local;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln9_2_fu_406_p4 = {{add_ln40_reg_776[6:3]}};
assign min_p_26_fu_576_p3 = ((and_ln42_1_reg_847[0:0] == 1'b1) ? p_reg_786 : min_p_24_reg_833);
assign min_p_28_fu_673_p3 = ((and_ln42_3_fu_668_p2[0:0] == 1'b1) ? p_9_reg_840 : min_p_26_reg_858);
assign min_s_10_fu_686_p3 = ((and_ln42_3_fu_668_p2[0:0] == 1'b1) ? zext_ln42_1_fu_682_p1 : min_s_9_reg_853);
assign min_s_2_out = ((and_ln42_1_reg_847[0:0] == 1'b1) ? zext_ln42_fu_565_p1 : min_s_fu_104);
assign min_s_9_fu_568_p3 = ((and_ln42_1_reg_847[0:0] == 1'b1) ? zext_ln42_fu_565_p1 : min_s_fu_104);
assign or_ln42_1_fu_544_p2 = (icmp_ln42_3_fu_538_p2 | icmp_ln42_2_fu_532_p2);
assign or_ln42_2_fu_638_p2 = (icmp_ln42_5_fu_632_p2 | icmp_ln42_4_fu_626_p2);
assign or_ln42_3_fu_656_p2 = (icmp_ln42_7_fu_650_p2 | icmp_ln42_6_fu_644_p2);
assign or_ln42_fu_526_p2 = (icmp_ln42_fu_514_p2 | icmp_ln42_1_fu_520_p2);
assign p_9_fu_441_p17 = 'bx;
assign p_fu_367_p17 = 'bx;
assign tmp_3_fu_483_p4 = {{bitcast_ln42_fu_480_p1[62:52]}};
assign tmp_4_fu_500_p4 = {{bitcast_ln42_1_fu_497_p1[62:52]}};
assign tmp_55_cast_fu_333_p3 = {{8'd139}, {tmp_s_fu_323_p4}};
assign tmp_6_fu_595_p4 = {{bitcast_ln42_2_fu_592_p1[62:52]}};
assign tmp_7_fu_612_p4 = {{bitcast_ln42_3_fu_609_p1[62:52]}};
assign tmp_s_fu_323_p4 = {{ap_sig_allocacmp_s[5:3]}};
assign trunc_ln20_fu_319_p1 = ap_sig_allocacmp_s[2:0];
assign trunc_ln42_1_fu_510_p1 = bitcast_ln42_1_fu_497_p1[51:0];
assign trunc_ln42_2_fu_605_p1 = bitcast_ln42_2_fu_592_p1[51:0];
assign trunc_ln42_3_fu_622_p1 = bitcast_ln42_3_fu_609_p1[51:0];
assign trunc_ln42_4_fu_679_p1 = add_ln40_reg_776_pp0_iter1_reg[5:0];
assign trunc_ln42_fu_493_p1 = bitcast_ln42_fu_480_p1[51:0];
assign zext_ln20_fu_315_p1 = ap_sig_allocacmp_s;
assign zext_ln41_1_fu_415_p1 = lshr_ln9_2_fu_406_p4;
assign zext_ln41_2_fu_425_p1 = add_ln41_fu_419_p2;
assign zext_ln41_fu_341_p1 = tmp_55_cast_fu_333_p3;
assign zext_ln42_1_fu_682_p1 = trunc_ln42_4_fu_679_p1;
assign zext_ln42_fu_565_p1 = s_reg_724;
endmodule 