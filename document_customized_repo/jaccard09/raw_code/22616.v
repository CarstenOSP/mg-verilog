module viterbi_viterbi_Pipeline_L_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_8,t_1,llike_address0,llike_ce0,llike_q0,zext_ln52_2,transition_0_address0,transition_0_ce0,transition_0_q0,transition_1_address0,transition_1_ce0,transition_1_q0,transition_2_address0,transition_2_ce0,transition_2_q0,transition_3_address0,transition_3_ce0,transition_3_q0,empty,zext_ln52_3,min_s_6_out,min_s_6_out_ap_vld,grp_fu_572_p_din0,grp_fu_572_p_din1,grp_fu_572_p_opcode,grp_fu_572_p_dout0,grp_fu_572_p_ce,grp_fu_1326_p_din0,grp_fu_1326_p_din1,grp_fu_1326_p_opcode,grp_fu_1326_p_dout0,grp_fu_1326_p_ce); 
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
input  [5:0] zext_ln52_2;
output  [9:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [9:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [9:0] transition_2_address0;
output   transition_2_ce0;
input  [63:0] transition_2_q0;
output  [9:0] transition_3_address0;
output   transition_3_ce0;
input  [63:0] transition_3_q0;
input  [1:0] empty;
input  [13:0] zext_ln52_3;
output  [7:0] min_s_6_out;
output   min_s_6_out_ap_vld;
output  [63:0] grp_fu_572_p_din0;
output  [63:0] grp_fu_572_p_din1;
output  [1:0] grp_fu_572_p_opcode;
input  [63:0] grp_fu_572_p_dout0;
output   grp_fu_572_p_ce;
output  [63:0] grp_fu_1326_p_din0;
output  [63:0] grp_fu_1326_p_din1;
output  [4:0] grp_fu_1326_p_opcode;
input  [0:0] grp_fu_1326_p_dout0;
output   grp_fu_1326_p_ce;
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
reg   [0:0] tmp_5_reg_747;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [9:0] zext_ln52_2_cast_fu_260_p1;
reg   [9:0] zext_ln52_2_cast_reg_705;
reg   [5:0] s_reg_710;
reg   [5:0] s_reg_710_pp0_iter1_reg;
reg   [5:0] s_reg_710_pp0_iter2_reg;
wire   [6:0] add_ln53_fu_321_p2;
reg   [6:0] add_ln53_reg_741;
reg   [0:0] tmp_5_reg_747_pp0_iter1_reg;
reg   [0:0] tmp_5_reg_747_pp0_iter2_reg;
reg   [63:0] llike_load_reg_751;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_1_fu_351_p11;
reg   [63:0] tmp_1_reg_756;
wire   [5:0] trunc_ln54_fu_387_p1;
reg   [5:0] trunc_ln54_reg_766;
reg   [5:0] trunc_ln54_reg_766_pp0_iter1_reg;
reg   [5:0] trunc_ln54_reg_766_pp0_iter2_reg;
reg   [63:0] llike_load_1_reg_791;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] tmp_6_fu_427_p11;
reg   [63:0] tmp_6_reg_796;
reg   [63:0] p_reg_801;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] min_p_1_reg_808;
reg   [63:0] p_1_reg_815;
wire   [0:0] and_ln55_1_fu_540_p2;
reg   [0:0] and_ln55_1_reg_822;
wire   [7:0] min_s_4_fu_552_p3;
reg   [7:0] min_s_4_reg_828;
wire   [63:0] min_p_3_fu_560_p3;
reg   [63:0] min_p_3_reg_833;
reg   [0:0] tmp_9_reg_840;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
reg    ap_condition_exit_pp0_iter2_stage2;
wire   [63:0] zext_ln54_2_fu_290_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln54_fu_313_p1;
wire   [63:0] zext_ln54_4_fu_382_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln54_1_fu_403_p1;
reg   [63:0] min_p_fu_98;
wire   [63:0] min_p_5_fu_647_p3;
wire    ap_loop_init;
reg   [7:0] min_s_fu_102;
wire   [7:0] min_s_5_fu_656_p3;
wire    ap_block_pp0_stage2;
reg   [5:0] min_s_1_fu_106;
wire   [5:0] add_ln53_1_fu_450_p2;
reg   [5:0] ap_sig_allocacmp_s;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage2_01001;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
reg    transition_0_ce0_local;
reg   [9:0] transition_0_address0_local;
reg    transition_1_ce0_local;
reg   [9:0] transition_1_address0_local;
reg    transition_2_ce0_local;
reg   [9:0] transition_2_address0_local;
reg    transition_3_ce0_local;
reg   [9:0] transition_3_address0_local;
reg   [63:0] grp_fu_252_p0;
reg   [63:0] grp_fu_252_p1;
wire    ap_block_pp0_stage3;
reg   [63:0] grp_fu_256_p0;
reg   [63:0] grp_fu_256_p1;
wire   [13:0] tmp_s_fu_282_p3;
wire   [9:0] shl_ln2_fu_299_p3;
wire   [9:0] add_ln54_fu_307_p2;
wire   [6:0] zext_ln20_fu_295_p1;
wire   [63:0] tmp_1_fu_351_p2;
wire   [63:0] tmp_1_fu_351_p4;
wire   [63:0] tmp_1_fu_351_p6;
wire   [63:0] tmp_1_fu_351_p8;
wire   [63:0] tmp_1_fu_351_p9;
wire   [13:0] zext_ln54_3_fu_374_p1;
wire   [13:0] add_ln54_2_fu_377_p2;
wire   [9:0] shl_ln54_1_fu_390_p3;
wire   [9:0] add_ln54_1_fu_398_p2;
wire   [63:0] tmp_6_fu_427_p2;
wire   [63:0] tmp_6_fu_427_p4;
wire   [63:0] tmp_6_fu_427_p6;
wire   [63:0] tmp_6_fu_427_p8;
wire   [63:0] tmp_6_fu_427_p9;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln55_fu_464_p1;
wire   [63:0] bitcast_ln55_1_fu_481_p1;
wire   [10:0] tmp_2_fu_467_p4;
wire   [51:0] trunc_ln55_fu_477_p1;
wire   [0:0] icmp_ln55_1_fu_504_p2;
wire   [0:0] icmp_ln55_fu_498_p2;
wire   [10:0] tmp_3_fu_484_p4;
wire   [51:0] trunc_ln55_1_fu_494_p1;
wire   [0:0] icmp_ln55_3_fu_522_p2;
wire   [0:0] icmp_ln55_2_fu_516_p2;
wire   [0:0] or_ln55_fu_510_p2;
wire   [0:0] and_ln55_fu_534_p2;
wire   [0:0] or_ln55_1_fu_528_p2;
wire   [7:0] zext_ln55_fu_549_p1;
wire   [63:0] bitcast_ln55_2_fu_566_p1;
wire   [63:0] bitcast_ln55_3_fu_583_p1;
wire   [10:0] tmp_7_fu_569_p4;
wire   [51:0] trunc_ln55_2_fu_579_p1;
wire   [0:0] icmp_ln55_5_fu_606_p2;
wire   [0:0] icmp_ln55_4_fu_600_p2;
wire   [10:0] tmp_8_fu_586_p4;
wire   [51:0] trunc_ln55_3_fu_596_p1;
wire   [0:0] icmp_ln55_7_fu_624_p2;
wire   [0:0] icmp_ln55_6_fu_618_p2;
wire   [0:0] or_ln55_3_fu_630_p2;
wire   [0:0] or_ln55_2_fu_612_p2;
wire   [0:0] and_ln55_2_fu_636_p2;
wire   [0:0] and_ln55_3_fu_642_p2;
wire   [7:0] zext_ln55_1_fu_653_p1;
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
wire   [1:0] tmp_1_fu_351_p1;
wire   [1:0] tmp_1_fu_351_p3;
wire  signed [1:0] tmp_1_fu_351_p5;
wire  signed [1:0] tmp_1_fu_351_p7;
wire   [1:0] tmp_6_fu_427_p1;
wire   [1:0] tmp_6_fu_427_p3;
wire  signed [1:0] tmp_6_fu_427_p5;
wire  signed [1:0] tmp_6_fu_427_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_98 = 64'd0;
#0 min_s_fu_102 = 8'd0;
#0 min_s_1_fu_106 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U102(.din0(tmp_1_fu_351_p2),.din1(tmp_1_fu_351_p4),.din2(tmp_1_fu_351_p6),.din3(tmp_1_fu_351_p8),.def(tmp_1_fu_351_p9),.sel(empty),.dout(tmp_1_fu_351_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U103(.din0(tmp_6_fu_427_p2),.din1(tmp_6_fu_427_p4),.din2(tmp_6_fu_427_p6),.din3(tmp_6_fu_427_p8),.def(tmp_6_fu_427_p9),.sel(empty),.dout(tmp_6_fu_427_p11));
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
        min_p_fu_98 <= min_p_8;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_5_reg_747_pp0_iter2_reg == 1'd0))) begin
        min_p_fu_98 <= min_p_5_fu_647_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_1_fu_106 <= 6'd1;
    end else if (((tmp_5_reg_747 == 1'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_s_1_fu_106 <= add_ln53_1_fu_450_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_102 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (tmp_5_reg_747_pp0_iter2_reg == 1'd0))) begin
        min_s_fu_102 <= min_s_5_fu_656_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln53_reg_741 <= add_ln53_fu_321_p2;
        min_p_1_reg_808 <= min_p_fu_98;
        s_reg_710 <= ap_sig_allocacmp_s;
        s_reg_710_pp0_iter1_reg <= s_reg_710;
        s_reg_710_pp0_iter2_reg <= s_reg_710_pp0_iter1_reg;
        tmp_5_reg_747 <= add_ln53_fu_321_p2[32'd6];
        tmp_5_reg_747_pp0_iter1_reg <= tmp_5_reg_747;
        tmp_5_reg_747_pp0_iter2_reg <= tmp_5_reg_747_pp0_iter1_reg;
        zext_ln52_2_cast_reg_705[5 : 0] <= zext_ln52_2_cast_fu_260_p1[5 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        and_ln55_1_reg_822 <= and_ln55_1_fu_540_p2;
        tmp_1_reg_756 <= tmp_1_fu_351_p11;
        trunc_ln54_reg_766 <= trunc_ln54_fu_387_p1;
        trunc_ln54_reg_766_pp0_iter1_reg <= trunc_ln54_reg_766;
        trunc_ln54_reg_766_pp0_iter2_reg <= trunc_ln54_reg_766_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_1_reg_791 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_load_reg_751 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_3_reg_833 <= min_p_3_fu_560_p3;
        tmp_6_reg_796 <= tmp_6_fu_427_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_s_4_reg_828 <= min_s_4_fu_552_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        p_1_reg_815 <= grp_fu_572_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        p_reg_801 <= grp_fu_572_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        tmp_9_reg_840 <= grp_fu_1326_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_5_reg_747 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_5_reg_747_pp0_iter2_reg == 1'd1))) begin
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
        ap_sig_allocacmp_s = min_s_1_fu_106;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_252_p0 = llike_load_1_reg_791;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_252_p0 = llike_load_reg_751;
        end else begin
            grp_fu_252_p0 = 'bx;
        end
    end else begin
        grp_fu_252_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_252_p1 = tmp_6_reg_796;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_252_p1 = tmp_1_reg_756;
        end else begin
            grp_fu_252_p1 = 'bx;
        end
    end else begin
        grp_fu_252_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_256_p0 = p_1_reg_815;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_256_p0 = p_reg_801;
        end else begin
            grp_fu_256_p0 = 'bx;
        end
    end else begin
        grp_fu_256_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_256_p1 = min_p_3_fu_560_p3;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_256_p1 = min_p_fu_98;
        end else begin
            grp_fu_256_p1 = 'bx;
        end
    end else begin
        grp_fu_256_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln54_4_fu_382_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln54_2_fu_290_p1;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_5_reg_747_pp0_iter2_reg == 1'd1))) begin
        min_s_6_out_ap_vld = 1'b1;
    end else begin
        min_s_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln54_1_fu_403_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln54_fu_313_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln54_1_fu_403_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln54_fu_313_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
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
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_2_address0_local = zext_ln54_1_fu_403_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_2_address0_local = zext_ln54_fu_313_p1;
        end else begin
            transition_2_address0_local = 'bx;
        end
    end else begin
        transition_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_3_address0_local = zext_ln54_1_fu_403_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_3_address0_local = zext_ln54_fu_313_p1;
        end else begin
            transition_3_address0_local = 'bx;
        end
    end else begin
        transition_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
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
assign add_ln53_1_fu_450_p2 = (s_reg_710 + 6'd2);
assign add_ln53_fu_321_p2 = (zext_ln20_fu_295_p1 + 7'd1);
assign add_ln54_1_fu_398_p2 = (shl_ln54_1_fu_390_p3 + zext_ln52_2_cast_reg_705);
assign add_ln54_2_fu_377_p2 = (zext_ln52_3 + zext_ln54_3_fu_374_p1);
assign add_ln54_fu_307_p2 = (shl_ln2_fu_299_p3 + zext_ln52_2_cast_fu_260_p1);
assign and_ln55_1_fu_540_p2 = (or_ln55_1_fu_528_p2 & and_ln55_fu_534_p2);
assign and_ln55_2_fu_636_p2 = (or_ln55_3_fu_630_p2 & or_ln55_2_fu_612_p2);
assign and_ln55_3_fu_642_p2 = (tmp_9_reg_840 & and_ln55_2_fu_636_p2);
assign and_ln55_fu_534_p2 = (or_ln55_fu_510_p2 & grp_fu_1326_p_dout0);
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
assign bitcast_ln55_1_fu_481_p1 = min_p_1_reg_808;
assign bitcast_ln55_2_fu_566_p1 = p_1_reg_815;
assign bitcast_ln55_3_fu_583_p1 = min_p_3_reg_833;
assign bitcast_ln55_fu_464_p1 = p_reg_801;
assign grp_fu_1326_p_ce = 1'b1;
assign grp_fu_1326_p_din0 = grp_fu_256_p0;
assign grp_fu_1326_p_din1 = grp_fu_256_p1;
assign grp_fu_1326_p_opcode = 5'd4;
assign grp_fu_572_p_ce = 1'b1;
assign grp_fu_572_p_din0 = grp_fu_252_p0;
assign grp_fu_572_p_din1 = grp_fu_252_p1;
assign grp_fu_572_p_opcode = 2'd0;
assign icmp_ln55_1_fu_504_p2 = ((trunc_ln55_fu_477_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_2_fu_516_p2 = ((tmp_3_fu_484_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_3_fu_522_p2 = ((trunc_ln55_1_fu_494_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_4_fu_600_p2 = ((tmp_7_fu_569_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_5_fu_606_p2 = ((trunc_ln55_2_fu_579_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_6_fu_618_p2 = ((tmp_8_fu_586_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln55_7_fu_624_p2 = ((trunc_ln55_3_fu_596_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln55_fu_498_p2 = ((tmp_2_fu_467_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign min_p_3_fu_560_p3 = ((and_ln55_1_reg_822[0:0] == 1'b1) ? p_reg_801 : min_p_1_reg_808);
assign min_p_5_fu_647_p3 = ((and_ln55_3_fu_642_p2[0:0] == 1'b1) ? p_1_reg_815 : min_p_3_reg_833);
assign min_s_4_fu_552_p3 = ((and_ln55_1_reg_822[0:0] == 1'b1) ? zext_ln55_fu_549_p1 : min_s_fu_102);
assign min_s_5_fu_656_p3 = ((and_ln55_3_fu_642_p2[0:0] == 1'b1) ? zext_ln55_1_fu_653_p1 : min_s_4_reg_828);
assign min_s_6_out = ((and_ln55_1_reg_822[0:0] == 1'b1) ? zext_ln55_fu_549_p1 : min_s_fu_102);
assign or_ln55_1_fu_528_p2 = (icmp_ln55_3_fu_522_p2 | icmp_ln55_2_fu_516_p2);
assign or_ln55_2_fu_612_p2 = (icmp_ln55_5_fu_606_p2 | icmp_ln55_4_fu_600_p2);
assign or_ln55_3_fu_630_p2 = (icmp_ln55_7_fu_624_p2 | icmp_ln55_6_fu_618_p2);
assign or_ln55_fu_510_p2 = (icmp_ln55_fu_498_p2 | icmp_ln55_1_fu_504_p2);
assign shl_ln2_fu_299_p3 = {{ap_sig_allocacmp_s}, {4'd0}};
assign shl_ln54_1_fu_390_p3 = {{trunc_ln54_fu_387_p1}, {4'd0}};
assign tmp_1_fu_351_p2 = transition_0_q0;
assign tmp_1_fu_351_p4 = transition_1_q0;
assign tmp_1_fu_351_p6 = transition_2_q0;
assign tmp_1_fu_351_p8 = transition_3_q0;
assign tmp_1_fu_351_p9 = 'bx;
assign tmp_2_fu_467_p4 = {{bitcast_ln55_fu_464_p1[62:52]}};
assign tmp_3_fu_484_p4 = {{bitcast_ln55_1_fu_481_p1[62:52]}};
assign tmp_6_fu_427_p2 = transition_0_q0;
assign tmp_6_fu_427_p4 = transition_1_q0;
assign tmp_6_fu_427_p6 = transition_2_q0;
assign tmp_6_fu_427_p8 = transition_3_q0;
assign tmp_6_fu_427_p9 = 'bx;
assign tmp_7_fu_569_p4 = {{bitcast_ln55_2_fu_566_p1[62:52]}};
assign tmp_8_fu_586_p4 = {{bitcast_ln55_3_fu_583_p1[62:52]}};
assign tmp_s_fu_282_p3 = {{t_1}, {ap_sig_allocacmp_s}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_2_address0 = transition_2_address0_local;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_3_address0 = transition_3_address0_local;
assign transition_3_ce0 = transition_3_ce0_local;
assign trunc_ln54_fu_387_p1 = add_ln53_reg_741[5:0];
assign trunc_ln55_1_fu_494_p1 = bitcast_ln55_1_fu_481_p1[51:0];
assign trunc_ln55_2_fu_579_p1 = bitcast_ln55_2_fu_566_p1[51:0];
assign trunc_ln55_3_fu_596_p1 = bitcast_ln55_3_fu_583_p1[51:0];
assign trunc_ln55_fu_477_p1 = bitcast_ln55_fu_464_p1[51:0];
assign zext_ln20_fu_295_p1 = ap_sig_allocacmp_s;
assign zext_ln52_2_cast_fu_260_p1 = zext_ln52_2;
assign zext_ln54_1_fu_403_p1 = add_ln54_1_fu_398_p2;
assign zext_ln54_2_fu_290_p1 = tmp_s_fu_282_p3;
assign zext_ln54_3_fu_374_p1 = add_ln53_reg_741;
assign zext_ln54_4_fu_382_p1 = add_ln54_2_fu_377_p2;
assign zext_ln54_fu_313_p1 = add_ln54_fu_307_p2;
assign zext_ln55_1_fu_653_p1 = trunc_ln54_reg_766_pp0_iter2_reg;
assign zext_ln55_fu_549_p1 = s_reg_710_pp0_iter2_reg;
always @ (posedge ap_clk) begin
    zext_ln52_2_cast_reg_705[9:6] <= 4'b0000;
end
endmodule 