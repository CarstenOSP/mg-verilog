module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_4,empty_8,llike_1_address0,llike_1_ce0,llike_1_q0,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,transition_2_address0,transition_2_ce0,transition_2_q0,transition_2_address1,transition_2_ce1,transition_2_q1,transition_3_address0,transition_3_ce0,transition_3_q0,transition_3_address1,transition_3_ce1,transition_3_q1,empty_9,tmp_7,empty,llike_address0,llike_ce0,llike_q0,min_p_133_out,min_p_133_out_ap_vld,grp_fu_457_p_din0,grp_fu_457_p_din1,grp_fu_457_p_opcode,grp_fu_457_p_dout0,grp_fu_457_p_ce,grp_fu_939_p_din0,grp_fu_939_p_din1,grp_fu_939_p_opcode,grp_fu_939_p_dout0,grp_fu_939_p_ce); 
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
input  [63:0] min_p_4;
input  [7:0] empty_8;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
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
input  [1:0] empty_9;
input  [63:0] tmp_7;
input  [12:0] empty;
output  [12:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [63:0] min_p_133_out;
output   min_p_133_out_ap_vld;
output  [63:0] grp_fu_457_p_din0;
output  [63:0] grp_fu_457_p_din1;
output  [1:0] grp_fu_457_p_opcode;
input  [63:0] grp_fu_457_p_dout0;
output   grp_fu_457_p_ce;
output  [63:0] grp_fu_939_p_din0;
output  [63:0] grp_fu_939_p_din1;
output  [4:0] grp_fu_939_p_opcode;
input  [0:0] grp_fu_939_p_dout0;
output   grp_fu_939_p_ce;
reg ap_idle;
reg min_p_133_out_ap_vld;
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
reg   [0:0] tmp_6_reg_736;
reg    ap_condition_exit_pp0_iter0_stage4;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] add_ln25_fu_345_p2;
reg   [6:0] add_ln25_reg_731;
wire   [0:0] tmp_6_fu_351_p3;
reg   [0:0] tmp_6_reg_736_pp0_iter1_reg;
reg   [0:0] tmp_6_reg_736_pp0_iter2_reg;
reg   [0:0] tmp_6_reg_736_pp0_iter3_reg;
reg   [0:0] tmp_6_reg_736_pp0_iter4_reg;
reg   [63:0] llike_1_load_reg_760;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] tmp_9_fu_406_p11;
reg   [63:0] tmp_9_reg_765;
wire   [63:0] tmp_8_fu_468_p11;
reg   [63:0] tmp_8_reg_775;
reg   [63:0] llike_load_reg_780;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] add1_reg_785;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] add52_1_reg_790;
reg   [63:0] p_reg_795;
reg   [63:0] min_p_1_reg_802;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] p_1_reg_809;
wire   [0:0] and_ln29_1_fu_571_p2;
reg   [0:0] and_ln29_1_reg_816;
wire   [63:0] min_p_3_fu_577_p3;
reg   [63:0] min_p_3_reg_821;
reg   [0:0] tmp_12_reg_828;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter4_stage0;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln26_fu_324_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_337_p1;
wire   [63:0] zext_ln27_1_fu_371_p1;
wire   [63:0] zext_ln26_2_fu_447_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] min_p_fu_104;
wire   [63:0] min_p_6_fu_665_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage3;
reg   [5:0] prev_fu_108;
wire   [5:0] add_ln25_1_fu_379_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
wire    ap_block_pp0_stage0_01001;
reg    llike_1_ce0_local;
reg    transition_0_ce1_local;
reg    transition_0_ce0_local;
reg    transition_1_ce1_local;
reg    transition_1_ce0_local;
reg    transition_2_ce1_local;
reg    transition_2_ce0_local;
reg    transition_3_ce1_local;
reg    transition_3_ce0_local;
reg    llike_ce0_local;
reg   [63:0] grp_fu_281_p0;
reg   [63:0] grp_fu_281_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_285_p0;
reg   [63:0] grp_fu_285_p1;
wire   [4:0] lshr_ln7_1_fu_306_p4;
wire   [12:0] tmp_s_fu_316_p3;
wire   [9:0] add_ln_fu_329_p3;
wire   [6:0] zext_ln16_fu_302_p1;
wire   [5:0] trunc_ln27_fu_359_p1;
wire   [9:0] add_ln27_1_fu_363_p3;
wire   [63:0] tmp_9_fu_406_p2;
wire   [63:0] tmp_9_fu_406_p4;
wire   [63:0] tmp_9_fu_406_p6;
wire   [63:0] tmp_9_fu_406_p8;
wire   [63:0] tmp_9_fu_406_p9;
wire   [5:0] lshr_ln8_1_fu_429_p4;
wire   [12:0] zext_ln26_1_fu_438_p1;
wire   [12:0] add_ln26_fu_442_p2;
wire   [63:0] tmp_8_fu_468_p2;
wire   [63:0] tmp_8_fu_468_p4;
wire   [63:0] tmp_8_fu_468_p6;
wire   [63:0] tmp_8_fu_468_p8;
wire   [63:0] tmp_8_fu_468_p9;
wire    ap_block_pp0_stage4;
wire   [63:0] bitcast_ln29_fu_495_p1;
wire   [63:0] bitcast_ln29_1_fu_512_p1;
wire   [10:0] tmp_3_fu_498_p4;
wire   [51:0] trunc_ln29_fu_508_p1;
wire   [0:0] icmp_ln29_1_fu_535_p2;
wire   [0:0] icmp_ln29_fu_529_p2;
wire   [10:0] tmp_4_fu_515_p4;
wire   [51:0] trunc_ln29_1_fu_525_p1;
wire   [0:0] icmp_ln29_3_fu_553_p2;
wire   [0:0] icmp_ln29_2_fu_547_p2;
wire   [0:0] or_ln29_fu_541_p2;
wire   [0:0] and_ln29_fu_565_p2;
wire   [0:0] or_ln29_1_fu_559_p2;
wire   [63:0] bitcast_ln29_2_fu_584_p1;
wire   [63:0] bitcast_ln29_3_fu_601_p1;
wire   [10:0] tmp_10_fu_587_p4;
wire   [51:0] trunc_ln29_2_fu_597_p1;
wire   [0:0] icmp_ln29_5_fu_624_p2;
wire   [0:0] icmp_ln29_4_fu_618_p2;
wire   [10:0] tmp_11_fu_604_p4;
wire   [51:0] trunc_ln29_3_fu_614_p1;
wire   [0:0] icmp_ln29_7_fu_642_p2;
wire   [0:0] icmp_ln29_6_fu_636_p2;
wire   [0:0] or_ln29_3_fu_648_p2;
wire   [0:0] or_ln29_2_fu_630_p2;
wire   [0:0] and_ln29_2_fu_654_p2;
wire   [0:0] and_ln29_3_fu_660_p2;
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
wire   [1:0] tmp_9_fu_406_p1;
wire   [1:0] tmp_9_fu_406_p3;
wire  signed [1:0] tmp_9_fu_406_p5;
wire  signed [1:0] tmp_9_fu_406_p7;
wire   [1:0] tmp_8_fu_468_p1;
wire   [1:0] tmp_8_fu_468_p3;
wire  signed [1:0] tmp_8_fu_468_p5;
wire  signed [1:0] tmp_8_fu_468_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_104 = 64'd0;
#0 prev_fu_108 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U21(.din0(tmp_9_fu_406_p2),.din1(tmp_9_fu_406_p4),.din2(tmp_9_fu_406_p6),.din3(tmp_9_fu_406_p8),.def(tmp_9_fu_406_p9),.sel(empty_9),.dout(tmp_9_fu_406_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U22(.din0(tmp_8_fu_468_p2),.din1(tmp_8_fu_468_p4),.din2(tmp_8_fu_468_p6),.din3(tmp_8_fu_468_p8),.def(tmp_8_fu_468_p9),.sel(empty_9),.dout(tmp_8_fu_468_p11));
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
        min_p_fu_104 <= min_p_4;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_6_reg_736_pp0_iter4_reg == 1'd0))) begin
        min_p_fu_104 <= min_p_6_fu_665_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_6_fu_351_p3 == 1'd0))) begin
            prev_fu_108 <= add_ln25_1_fu_379_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            prev_fu_108 <= 6'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add1_reg_785 <= grp_fu_457_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add52_1_reg_790 <= grp_fu_457_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln25_reg_731 <= add_ln25_fu_345_p2;
        tmp_6_reg_736 <= add_ln25_fu_345_p2[32'd6];
        tmp_6_reg_736_pp0_iter1_reg <= tmp_6_reg_736;
        tmp_6_reg_736_pp0_iter2_reg <= tmp_6_reg_736_pp0_iter1_reg;
        tmp_6_reg_736_pp0_iter3_reg <= tmp_6_reg_736_pp0_iter2_reg;
        tmp_6_reg_736_pp0_iter4_reg <= tmp_6_reg_736_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_1_reg_816 <= and_ln29_1_fu_571_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_1_load_reg_760 <= llike_1_q0;
        tmp_8_reg_775 <= tmp_8_fu_468_p11;
        tmp_9_reg_765 <= tmp_9_fu_406_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_reg_780 <= llike_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_1_reg_802 <= min_p_fu_104;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_3_reg_821 <= min_p_3_fu_577_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        p_1_reg_809 <= grp_fu_457_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        p_reg_795 <= grp_fu_457_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_12_reg_828 <= grp_fu_939_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_6_reg_736 == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_6_reg_736_pp0_iter3_reg == 1'd1))) begin
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
        ap_sig_allocacmp_prev_1 = prev_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_281_p0 = add52_1_reg_790;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_281_p0 = add1_reg_785;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_281_p0 = llike_load_reg_780;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_281_p0 = llike_1_load_reg_760;
    end else begin
        grp_fu_281_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_281_p1 = tmp_7;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_281_p1 = tmp_8_reg_775;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_281_p1 = tmp_9_reg_765;
    end else begin
        grp_fu_281_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_285_p0 = p_1_reg_809;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_285_p0 = p_reg_795;
    end else begin
        grp_fu_285_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_285_p1 = min_p_3_fu_577_p3;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_285_p1 = min_p_fu_104;
    end else begin
        grp_fu_285_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_6_reg_736_pp0_iter3_reg == 1'd1))) begin
        min_p_133_out_ap_vld = 1'b1;
    end else begin
        min_p_133_out_ap_vld = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_2_ce0_local = 1'b1;
    end else begin
        transition_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_2_ce1_local = 1'b1;
    end else begin
        transition_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_3_ce0_local = 1'b1;
    end else begin
        transition_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        transition_3_ce1_local = 1'b1;
    end else begin
        transition_3_ce1_local = 1'b0;
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
assign add_ln25_1_fu_379_p2 = (ap_sig_allocacmp_prev_1 + 6'd2);
assign add_ln25_fu_345_p2 = (zext_ln16_fu_302_p1 + 7'd1);
assign add_ln26_fu_442_p2 = (empty + zext_ln26_1_fu_438_p1);
assign add_ln27_1_fu_363_p3 = {{trunc_ln27_fu_359_p1}, {lshr_ln}};
assign add_ln_fu_329_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_1_fu_571_p2 = (or_ln29_1_fu_559_p2 & and_ln29_fu_565_p2);
assign and_ln29_2_fu_654_p2 = (or_ln29_3_fu_648_p2 & or_ln29_2_fu_630_p2);
assign and_ln29_3_fu_660_p2 = (tmp_12_reg_828 & and_ln29_2_fu_654_p2);
assign and_ln29_fu_565_p2 = (or_ln29_fu_541_p2 & grp_fu_939_p_dout0);
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
assign bitcast_ln29_1_fu_512_p1 = min_p_1_reg_802;
assign bitcast_ln29_2_fu_584_p1 = p_1_reg_809;
assign bitcast_ln29_3_fu_601_p1 = min_p_3_reg_821;
assign bitcast_ln29_fu_495_p1 = p_reg_795;
assign grp_fu_457_p_ce = 1'b1;
assign grp_fu_457_p_din0 = grp_fu_281_p0;
assign grp_fu_457_p_din1 = grp_fu_281_p1;
assign grp_fu_457_p_opcode = 2'd0;
assign grp_fu_939_p_ce = 1'b1;
assign grp_fu_939_p_din0 = grp_fu_285_p0;
assign grp_fu_939_p_din1 = grp_fu_285_p1;
assign grp_fu_939_p_opcode = 5'd4;
assign icmp_ln29_1_fu_535_p2 = ((trunc_ln29_fu_508_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_547_p2 = ((tmp_4_fu_515_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_553_p2 = ((trunc_ln29_1_fu_525_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_618_p2 = ((tmp_10_fu_587_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_624_p2 = ((trunc_ln29_2_fu_597_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_636_p2 = ((tmp_11_fu_604_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_642_p2 = ((trunc_ln29_3_fu_614_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_529_p2 = ((tmp_3_fu_498_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_1_address0 = zext_ln26_fu_324_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_address0 = zext_ln26_2_fu_447_p1;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln7_1_fu_306_p4 = {{ap_sig_allocacmp_prev_1[5:1]}};
assign lshr_ln8_1_fu_429_p4 = {{add_ln25_reg_731[6:1]}};
assign min_p_133_out = ((and_ln29_1_reg_816[0:0] == 1'b1) ? p_reg_795 : min_p_1_reg_802);
assign min_p_3_fu_577_p3 = ((and_ln29_1_reg_816[0:0] == 1'b1) ? p_reg_795 : min_p_1_reg_802);
assign min_p_6_fu_665_p3 = ((and_ln29_3_fu_660_p2[0:0] == 1'b1) ? p_1_reg_809 : min_p_3_reg_821);
assign or_ln29_1_fu_559_p2 = (icmp_ln29_3_fu_553_p2 | icmp_ln29_2_fu_547_p2);
assign or_ln29_2_fu_630_p2 = (icmp_ln29_5_fu_624_p2 | icmp_ln29_4_fu_618_p2);
assign or_ln29_3_fu_648_p2 = (icmp_ln29_7_fu_642_p2 | icmp_ln29_6_fu_636_p2);
assign or_ln29_fu_541_p2 = (icmp_ln29_fu_529_p2 | icmp_ln29_1_fu_535_p2);
assign tmp_10_fu_587_p4 = {{bitcast_ln29_2_fu_584_p1[62:52]}};
assign tmp_11_fu_604_p4 = {{bitcast_ln29_3_fu_601_p1[62:52]}};
assign tmp_3_fu_498_p4 = {{bitcast_ln29_fu_495_p1[62:52]}};
assign tmp_4_fu_515_p4 = {{bitcast_ln29_1_fu_512_p1[62:52]}};
assign tmp_6_fu_351_p3 = add_ln25_fu_345_p2[32'd6];
assign tmp_8_fu_468_p2 = transition_0_q0;
assign tmp_8_fu_468_p4 = transition_1_q0;
assign tmp_8_fu_468_p6 = transition_2_q0;
assign tmp_8_fu_468_p8 = transition_3_q0;
assign tmp_8_fu_468_p9 = 'bx;
assign tmp_9_fu_406_p2 = transition_0_q1;
assign tmp_9_fu_406_p4 = transition_1_q1;
assign tmp_9_fu_406_p6 = transition_2_q1;
assign tmp_9_fu_406_p8 = transition_3_q1;
assign tmp_9_fu_406_p9 = 'bx;
assign tmp_s_fu_316_p3 = {{empty_8}, {lshr_ln7_1_fu_306_p4}};
assign transition_0_address0 = zext_ln27_1_fu_371_p1;
assign transition_0_address1 = zext_ln27_fu_337_p1;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = zext_ln27_1_fu_371_p1;
assign transition_1_address1 = zext_ln27_fu_337_p1;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign transition_2_address0 = zext_ln27_1_fu_371_p1;
assign transition_2_address1 = zext_ln27_fu_337_p1;
assign transition_2_ce0 = transition_2_ce0_local;
assign transition_2_ce1 = transition_2_ce1_local;
assign transition_3_address0 = zext_ln27_1_fu_371_p1;
assign transition_3_address1 = zext_ln27_fu_337_p1;
assign transition_3_ce0 = transition_3_ce0_local;
assign transition_3_ce1 = transition_3_ce1_local;
assign trunc_ln27_fu_359_p1 = add_ln25_fu_345_p2[5:0];
assign trunc_ln29_1_fu_525_p1 = bitcast_ln29_1_fu_512_p1[51:0];
assign trunc_ln29_2_fu_597_p1 = bitcast_ln29_2_fu_584_p1[51:0];
assign trunc_ln29_3_fu_614_p1 = bitcast_ln29_3_fu_601_p1[51:0];
assign trunc_ln29_fu_508_p1 = bitcast_ln29_fu_495_p1[51:0];
assign zext_ln16_fu_302_p1 = ap_sig_allocacmp_prev_1;
assign zext_ln26_1_fu_438_p1 = lshr_ln8_1_fu_429_p4;
assign zext_ln26_2_fu_447_p1 = add_ln26_fu_442_p2;
assign zext_ln26_fu_324_p1 = tmp_s_fu_316_p3;
assign zext_ln27_1_fu_371_p1 = add_ln27_1_fu_363_p3;
assign zext_ln27_fu_337_p1 = add_ln_fu_329_p3;
endmodule 