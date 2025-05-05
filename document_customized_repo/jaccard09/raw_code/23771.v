module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_address1,llike_ce1,llike_we1,llike_d1,init_0_address0,init_0_ce0,init_0_q0,init_2_address0,init_2_ce0,init_2_q0,conv3_udiv_cast,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,empty,init_1_address0,init_1_ce0,init_1_q0,init_3_address0,init_3_ce0,init_3_q0,grp_fu_434_p_din0,grp_fu_434_p_din1,grp_fu_434_p_opcode,grp_fu_434_p_dout0,grp_fu_434_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [13:0] llike_address1;
output   llike_ce1;
output   llike_we1;
output  [63:0] llike_d1;
output  [3:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [3:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
input  [5:0] conv3_udiv_cast;
output  [9:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [9:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [9:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [9:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [9:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [9:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [9:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [9:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
input  [1:0] empty;
output  [3:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [3:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [63:0] grp_fu_434_p_din0;
output  [63:0] grp_fu_434_p_din1;
output  [1:0] grp_fu_434_p_opcode;
input  [63:0] grp_fu_434_p_dout0;
output   grp_fu_434_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_9_fu_303_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] s_1_reg_538;
reg   [6:0] s_1_reg_538_pp0_iter1_reg;
reg   [6:0] s_1_reg_538_pp0_iter2_reg;
reg   [6:0] s_1_reg_538_pp0_iter3_reg;
reg   [6:0] s_1_reg_538_pp0_iter4_reg;
reg   [6:0] s_1_reg_538_pp0_iter5_reg;
reg   [6:0] s_1_reg_538_pp0_iter6_reg;
reg   [6:0] s_1_reg_538_pp0_iter7_reg;
reg   [6:0] s_1_reg_538_pp0_iter8_reg;
reg   [6:0] s_1_reg_538_pp0_iter9_reg;
wire   [4:0] tmp_s_fu_355_p4;
reg   [4:0] tmp_s_reg_578;
reg   [4:0] tmp_s_reg_578_pp0_iter1_reg;
reg   [4:0] tmp_s_reg_578_pp0_iter2_reg;
reg   [4:0] tmp_s_reg_578_pp0_iter3_reg;
reg   [4:0] tmp_s_reg_578_pp0_iter4_reg;
reg   [4:0] tmp_s_reg_578_pp0_iter5_reg;
reg   [4:0] tmp_s_reg_578_pp0_iter6_reg;
reg   [4:0] tmp_s_reg_578_pp0_iter7_reg;
reg   [4:0] tmp_s_reg_578_pp0_iter8_reg;
reg   [4:0] tmp_s_reg_578_pp0_iter9_reg;
wire   [63:0] select_ln14_fu_407_p3;
reg   [63:0] select_ln14_reg_613;
wire   [63:0] tmp_1_fu_431_p11;
reg   [63:0] tmp_1_reg_618;
wire   [63:0] select_ln14_1_fu_454_p3;
reg   [63:0] select_ln14_1_reg_623;
wire   [63:0] tmp_3_fu_478_p11;
reg   [63:0] tmp_3_reg_628;
wire   [63:0] bitcast_ln14_fu_501_p1;
reg   [63:0] add6_reg_643;
wire   [63:0] grp_fu_287_p2;
reg   [63:0] add6_1_reg_648;
wire   [63:0] zext_ln9_fu_321_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_347_p1;
wire   [63:0] zext_ln14_1_fu_379_p1;
wire   [63:0] zext_ln13_fu_509_p1;
wire   [63:0] zext_ln14_2_fu_520_p1;
reg   [6:0] s_fu_90;
wire   [6:0] add_ln13_fu_387_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce0_local;
reg    init_2_ce0_local;
reg    emission_0_ce1_local;
reg    emission_0_ce0_local;
reg    emission_1_ce1_local;
reg    emission_1_ce0_local;
reg    emission_2_ce1_local;
reg    emission_2_ce0_local;
reg    emission_3_ce1_local;
reg    emission_3_ce0_local;
reg    init_1_ce0_local;
reg    init_3_ce0_local;
reg    llike_we1_local;
reg    llike_ce1_local;
reg    llike_we0_local;
reg    llike_ce0_local;
wire   [63:0] grp_fu_287_p0;
wire   [3:0] lshr_ln9_fu_311_p4;
wire   [5:0] trunc_ln14_fu_329_p1;
wire   [9:0] shl_ln_fu_333_p3;
wire   [9:0] conv3_udiv_cast_cast_fu_291_p1;
wire   [9:0] add_ln14_fu_341_p2;
wire   [9:0] shl_ln14_1_fu_365_p3;
wire   [9:0] add_ln14_1_fu_373_p2;
wire   [1:0] trunc_ln13_fu_398_p1;
wire   [0:0] icmp_ln14_fu_401_p2;
wire   [63:0] tmp_1_fu_431_p2;
wire   [63:0] tmp_1_fu_431_p4;
wire   [63:0] tmp_1_fu_431_p6;
wire   [63:0] tmp_1_fu_431_p8;
wire   [63:0] tmp_1_fu_431_p9;
wire   [63:0] tmp_3_fu_478_p2;
wire   [63:0] tmp_3_fu_478_p4;
wire   [63:0] tmp_3_fu_478_p6;
wire   [63:0] tmp_3_fu_478_p8;
wire   [63:0] tmp_3_fu_478_p9;
wire   [5:0] or_ln_fu_513_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire   [1:0] tmp_1_fu_431_p1;
wire   [1:0] tmp_1_fu_431_p3;
wire  signed [1:0] tmp_1_fu_431_p5;
wire  signed [1:0] tmp_1_fu_431_p7;
wire   [1:0] tmp_3_fu_478_p1;
wire   [1:0] tmp_3_fu_478_p3;
wire  signed [1:0] tmp_3_fu_478_p5;
wire  signed [1:0] tmp_3_fu_478_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 s_fu_90 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_287_p0),.din1(tmp_3_reg_628),.ce(1'b1),.dout(grp_fu_287_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U3(.din0(tmp_1_fu_431_p2),.din1(tmp_1_fu_431_p4),.din2(tmp_1_fu_431_p6),.din3(tmp_1_fu_431_p8),.def(tmp_1_fu_431_p9),.sel(empty),.dout(tmp_1_fu_431_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U4(.din0(tmp_3_fu_478_p2),.din1(tmp_3_fu_478_p4),.din2(tmp_3_fu_478_p6),.din3(tmp_3_fu_478_p8),.def(tmp_3_fu_478_p9),.sel(empty),.dout(tmp_3_fu_478_p11));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_9_fu_303_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            s_fu_90 <= add_ln13_fu_387_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            s_fu_90 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add6_1_reg_648 <= grp_fu_287_p2;
        add6_reg_643 <= grp_fu_434_p_dout0;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        s_1_reg_538_pp0_iter2_reg <= s_1_reg_538_pp0_iter1_reg;
        s_1_reg_538_pp0_iter3_reg <= s_1_reg_538_pp0_iter2_reg;
        s_1_reg_538_pp0_iter4_reg <= s_1_reg_538_pp0_iter3_reg;
        s_1_reg_538_pp0_iter5_reg <= s_1_reg_538_pp0_iter4_reg;
        s_1_reg_538_pp0_iter6_reg <= s_1_reg_538_pp0_iter5_reg;
        s_1_reg_538_pp0_iter7_reg <= s_1_reg_538_pp0_iter6_reg;
        s_1_reg_538_pp0_iter8_reg <= s_1_reg_538_pp0_iter7_reg;
        s_1_reg_538_pp0_iter9_reg <= s_1_reg_538_pp0_iter8_reg;
        tmp_s_reg_578_pp0_iter2_reg <= tmp_s_reg_578_pp0_iter1_reg;
        tmp_s_reg_578_pp0_iter3_reg <= tmp_s_reg_578_pp0_iter2_reg;
        tmp_s_reg_578_pp0_iter4_reg <= tmp_s_reg_578_pp0_iter3_reg;
        tmp_s_reg_578_pp0_iter5_reg <= tmp_s_reg_578_pp0_iter4_reg;
        tmp_s_reg_578_pp0_iter6_reg <= tmp_s_reg_578_pp0_iter5_reg;
        tmp_s_reg_578_pp0_iter7_reg <= tmp_s_reg_578_pp0_iter6_reg;
        tmp_s_reg_578_pp0_iter8_reg <= tmp_s_reg_578_pp0_iter7_reg;
        tmp_s_reg_578_pp0_iter9_reg <= tmp_s_reg_578_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        s_1_reg_538 <= ap_sig_allocacmp_s_1;
        s_1_reg_538_pp0_iter1_reg <= s_1_reg_538;
        select_ln14_1_reg_623 <= select_ln14_1_fu_454_p3;
        select_ln14_reg_613 <= select_ln14_fu_407_p3;
        tmp_1_reg_618 <= tmp_1_fu_431_p11;
        tmp_3_reg_628 <= tmp_3_fu_478_p11;
        tmp_s_reg_578 <= {{ap_sig_allocacmp_s_1[5:1]}};
        tmp_s_reg_578_pp0_iter1_reg <= tmp_s_reg_578;
    end
end
always @ (*) begin
    if (((tmp_9_fu_303_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_2_ce0_local = 1'b1;
    end else begin
        emission_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_2_ce1_local = 1'b1;
    end else begin
        emission_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_3_ce0_local = 1'b1;
    end else begin
        emission_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_3_ce1_local = 1'b1;
    end else begin
        emission_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_0_ce0_local = 1'b1;
    end else begin
        init_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_1_ce0_local = 1'b1;
    end else begin
        init_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_2_ce0_local = 1'b1;
    end else begin
        init_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_3_ce0_local = 1'b1;
    end else begin
        init_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_we1_local = 1'b1;
    end else begin
        llike_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_387_p2 = (ap_sig_allocacmp_s_1 + 7'd2);
assign add_ln14_1_fu_373_p2 = (shl_ln14_1_fu_365_p3 + conv3_udiv_cast_cast_fu_291_p1);
assign add_ln14_fu_341_p2 = (shl_ln_fu_333_p3 + conv3_udiv_cast_cast_fu_291_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_fu_501_p1 = select_ln14_reg_613;
assign conv3_udiv_cast_cast_fu_291_p1 = conv3_udiv_cast;
assign emission_0_address0 = zext_ln14_1_fu_379_p1;
assign emission_0_address1 = zext_ln14_fu_347_p1;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = zext_ln14_1_fu_379_p1;
assign emission_1_address1 = zext_ln14_fu_347_p1;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign emission_2_address0 = zext_ln14_1_fu_379_p1;
assign emission_2_address1 = zext_ln14_fu_347_p1;
assign emission_2_ce0 = emission_2_ce0_local;
assign emission_2_ce1 = emission_2_ce1_local;
assign emission_3_address0 = zext_ln14_1_fu_379_p1;
assign emission_3_address1 = zext_ln14_fu_347_p1;
assign emission_3_ce0 = emission_3_ce0_local;
assign emission_3_ce1 = emission_3_ce1_local;
assign grp_fu_287_p0 = select_ln14_1_reg_623;
assign grp_fu_434_p_ce = 1'b1;
assign grp_fu_434_p_din0 = bitcast_ln14_fu_501_p1;
assign grp_fu_434_p_din1 = tmp_1_reg_618;
assign grp_fu_434_p_opcode = 2'd0;
assign icmp_ln14_fu_401_p2 = ((trunc_ln13_fu_398_p1 != 2'd0) ? 1'b1 : 1'b0);
assign init_0_address0 = zext_ln9_fu_321_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_321_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_2_address0 = zext_ln9_fu_321_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_3_address0 = zext_ln9_fu_321_p1;
assign init_3_ce0 = init_3_ce0_local;
assign llike_address0 = zext_ln14_2_fu_520_p1;
assign llike_address1 = zext_ln13_fu_509_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign llike_d0 = add6_1_reg_648;
assign llike_d1 = add6_reg_643;
assign llike_we0 = llike_we0_local;
assign llike_we1 = llike_we1_local;
assign lshr_ln9_fu_311_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign or_ln_fu_513_p3 = {{tmp_s_reg_578_pp0_iter9_reg}, {1'd1}};
assign select_ln14_1_fu_454_p3 = ((icmp_ln14_fu_401_p2[0:0] == 1'b1) ? init_3_q0 : init_1_q0);
assign select_ln14_fu_407_p3 = ((icmp_ln14_fu_401_p2[0:0] == 1'b1) ? init_2_q0 : init_0_q0);
assign shl_ln14_1_fu_365_p3 = {{tmp_s_fu_355_p4}, {5'd16}};
assign shl_ln_fu_333_p3 = {{trunc_ln14_fu_329_p1}, {4'd0}};
assign tmp_1_fu_431_p2 = emission_0_q1;
assign tmp_1_fu_431_p4 = emission_1_q1;
assign tmp_1_fu_431_p6 = emission_2_q1;
assign tmp_1_fu_431_p8 = emission_3_q1;
assign tmp_1_fu_431_p9 = 'bx;
assign tmp_3_fu_478_p2 = emission_0_q0;
assign tmp_3_fu_478_p4 = emission_1_q0;
assign tmp_3_fu_478_p6 = emission_2_q0;
assign tmp_3_fu_478_p8 = emission_3_q0;
assign tmp_3_fu_478_p9 = 'bx;
assign tmp_9_fu_303_p3 = ap_sig_allocacmp_s_1[32'd6];
assign tmp_s_fu_355_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign trunc_ln13_fu_398_p1 = s_1_reg_538[1:0];
assign trunc_ln14_fu_329_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln13_fu_509_p1 = s_1_reg_538_pp0_iter9_reg;
assign zext_ln14_1_fu_379_p1 = add_ln14_1_fu_373_p2;
assign zext_ln14_2_fu_520_p1 = or_ln_fu_513_p3;
assign zext_ln14_fu_347_p1 = add_ln14_fu_341_p2;
assign zext_ln9_fu_321_p1 = lshr_ln9_fu_311_p4;
endmodule 