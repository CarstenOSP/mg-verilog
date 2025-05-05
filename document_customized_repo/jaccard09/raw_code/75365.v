module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,init_0_address0,init_0_ce0,init_0_q0,conv3_udiv_cast,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,init_1_address0,init_1_ce0,init_1_q0,grp_fu_369_p_din0,grp_fu_369_p_din1,grp_fu_369_p_opcode,grp_fu_369_p_dout0,grp_fu_369_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [11:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [11:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [11:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
input  [6:0] conv3_udiv_cast;
output  [10:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [10:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [10:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [10:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
input  [0:0] empty;
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [63:0] grp_fu_369_p_din0;
output  [63:0] grp_fu_369_p_din1;
output  [1:0] grp_fu_369_p_opcode;
input  [63:0] grp_fu_369_p_dout0;
output   grp_fu_369_p_ce;
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
wire   [0:0] tmp_5_fu_238_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [3:0] lshr_ln9_1_reg_391;
reg   [3:0] lshr_ln9_1_reg_391_pp0_iter1_reg;
reg   [3:0] lshr_ln9_1_reg_391_pp0_iter2_reg;
reg   [3:0] lshr_ln9_1_reg_391_pp0_iter3_reg;
reg   [3:0] lshr_ln9_1_reg_391_pp0_iter4_reg;
reg   [3:0] lshr_ln9_1_reg_391_pp0_iter5_reg;
reg   [3:0] lshr_ln9_1_reg_391_pp0_iter6_reg;
reg   [3:0] lshr_ln9_1_reg_391_pp0_iter7_reg;
reg   [3:0] lshr_ln9_1_reg_391_pp0_iter8_reg;
reg   [3:0] lshr_ln9_1_reg_391_pp0_iter9_reg;
wire   [0:0] icmp_ln14_fu_320_p2;
reg   [0:0] icmp_ln14_reg_426;
reg   [0:0] icmp_ln14_reg_426_pp0_iter1_reg;
reg   [0:0] icmp_ln14_reg_426_pp0_iter2_reg;
reg   [0:0] icmp_ln14_reg_426_pp0_iter3_reg;
reg   [0:0] icmp_ln14_reg_426_pp0_iter4_reg;
reg   [0:0] icmp_ln14_reg_426_pp0_iter5_reg;
reg   [0:0] icmp_ln14_reg_426_pp0_iter6_reg;
reg   [0:0] icmp_ln14_reg_426_pp0_iter7_reg;
reg   [0:0] icmp_ln14_reg_426_pp0_iter8_reg;
reg   [0:0] icmp_ln14_reg_426_pp0_iter9_reg;
reg   [63:0] init_0_load_reg_430;
wire   [63:0] select_ln14_fu_337_p3;
reg   [63:0] select_ln14_reg_435;
reg   [63:0] init_1_load_reg_440;
wire   [63:0] select_ln14_1_fu_344_p3;
reg   [63:0] select_ln14_1_reg_445;
wire   [63:0] bitcast_ln14_fu_351_p1;
wire   [63:0] bitcast_ln14_1_fu_355_p1;
reg   [63:0] add6_reg_470;
wire   [63:0] grp_fu_222_p2;
reg   [63:0] add6_1_reg_476;
wire   [63:0] zext_ln9_fu_260_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_294_p1;
wire   [63:0] zext_ln14_1_fu_314_p1;
wire   [63:0] zext_ln9_1_fu_367_p1;
reg   [6:0] s_fu_74;
wire   [6:0] add_ln13_fu_326_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce0_local;
reg    emission_0_ce1_local;
reg    emission_0_ce0_local;
reg    emission_1_ce1_local;
reg    emission_1_ce0_local;
reg    init_1_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
wire   [63:0] grp_fu_222_p0;
wire   [63:0] grp_fu_222_p1;
wire   [4:0] lshr_ln9_fu_250_p4;
wire   [5:0] trunc_ln14_fu_276_p1;
wire   [10:0] shl_ln_fu_280_p3;
wire   [10:0] conv3_udiv_cast_cast_fu_226_p1;
wire   [10:0] add_ln14_fu_288_p2;
wire   [10:0] or_ln_fu_300_p3;
wire   [10:0] add_ln14_1_fu_308_p2;
wire   [1:0] trunc_ln13_fu_246_p1;
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
#0 s_fu_74 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_222_p0),.din1(grp_fu_222_p1),.ce(1'b1),.dout(grp_fu_222_p2));
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
        if (((tmp_5_fu_238_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            s_fu_74 <= add_ln13_fu_326_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            s_fu_74 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add6_1_reg_476 <= grp_fu_222_p2;
        add6_reg_470 <= grp_fu_369_p_dout0;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        icmp_ln14_reg_426_pp0_iter2_reg <= icmp_ln14_reg_426_pp0_iter1_reg;
        icmp_ln14_reg_426_pp0_iter3_reg <= icmp_ln14_reg_426_pp0_iter2_reg;
        icmp_ln14_reg_426_pp0_iter4_reg <= icmp_ln14_reg_426_pp0_iter3_reg;
        icmp_ln14_reg_426_pp0_iter5_reg <= icmp_ln14_reg_426_pp0_iter4_reg;
        icmp_ln14_reg_426_pp0_iter6_reg <= icmp_ln14_reg_426_pp0_iter5_reg;
        icmp_ln14_reg_426_pp0_iter7_reg <= icmp_ln14_reg_426_pp0_iter6_reg;
        icmp_ln14_reg_426_pp0_iter8_reg <= icmp_ln14_reg_426_pp0_iter7_reg;
        icmp_ln14_reg_426_pp0_iter9_reg <= icmp_ln14_reg_426_pp0_iter8_reg;
        lshr_ln9_1_reg_391_pp0_iter2_reg <= lshr_ln9_1_reg_391_pp0_iter1_reg;
        lshr_ln9_1_reg_391_pp0_iter3_reg <= lshr_ln9_1_reg_391_pp0_iter2_reg;
        lshr_ln9_1_reg_391_pp0_iter4_reg <= lshr_ln9_1_reg_391_pp0_iter3_reg;
        lshr_ln9_1_reg_391_pp0_iter5_reg <= lshr_ln9_1_reg_391_pp0_iter4_reg;
        lshr_ln9_1_reg_391_pp0_iter6_reg <= lshr_ln9_1_reg_391_pp0_iter5_reg;
        lshr_ln9_1_reg_391_pp0_iter7_reg <= lshr_ln9_1_reg_391_pp0_iter6_reg;
        lshr_ln9_1_reg_391_pp0_iter8_reg <= lshr_ln9_1_reg_391_pp0_iter7_reg;
        lshr_ln9_1_reg_391_pp0_iter9_reg <= lshr_ln9_1_reg_391_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln14_reg_426 <= icmp_ln14_fu_320_p2;
        icmp_ln14_reg_426_pp0_iter1_reg <= icmp_ln14_reg_426;
        init_0_load_reg_430 <= init_0_q0;
        init_1_load_reg_440 <= init_1_q0;
        lshr_ln9_1_reg_391 <= {{ap_sig_allocacmp_s_1[5:2]}};
        lshr_ln9_1_reg_391_pp0_iter1_reg <= lshr_ln9_1_reg_391;
        select_ln14_1_reg_445 <= select_ln14_1_fu_344_p3;
        select_ln14_reg_435 <= select_ln14_fu_337_p3;
    end
end
always @ (*) begin
    if (((tmp_5_fu_238_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_s_1 = s_fu_74;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln14_reg_426_pp0_iter9_reg == 1'd1))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln14_reg_426_pp0_iter9_reg == 1'd0))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln14_reg_426_pp0_iter9_reg == 1'd0))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (icmp_ln14_reg_426_pp0_iter9_reg == 1'd1))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
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
assign add_ln13_fu_326_p2 = (ap_sig_allocacmp_s_1 + 7'd2);
assign add_ln14_1_fu_308_p2 = (or_ln_fu_300_p3 + conv3_udiv_cast_cast_fu_226_p1);
assign add_ln14_fu_288_p2 = (shl_ln_fu_280_p3 + conv3_udiv_cast_cast_fu_226_p1);
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
assign bitcast_ln14_1_fu_355_p1 = select_ln14_reg_435;
assign bitcast_ln14_fu_351_p1 = init_0_load_reg_430;
assign conv3_udiv_cast_cast_fu_226_p1 = conv3_udiv_cast;
assign emission_0_address0 = zext_ln14_1_fu_314_p1;
assign emission_0_address1 = zext_ln14_fu_294_p1;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = zext_ln14_1_fu_314_p1;
assign emission_1_address1 = zext_ln14_fu_294_p1;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_222_p0 = init_1_load_reg_440;
assign grp_fu_222_p1 = select_ln14_1_reg_445;
assign grp_fu_369_p_ce = 1'b1;
assign grp_fu_369_p_din0 = bitcast_ln14_fu_351_p1;
assign grp_fu_369_p_din1 = bitcast_ln14_1_fu_355_p1;
assign grp_fu_369_p_opcode = 2'd0;
assign icmp_ln14_fu_320_p2 = ((trunc_ln13_fu_246_p1 == 2'd0) ? 1'b1 : 1'b0);
assign init_0_address0 = zext_ln9_fu_260_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_260_p1;
assign init_1_ce0 = init_1_ce0_local;
assign llike_1_address0 = zext_ln9_1_fu_367_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = add6_1_reg_476;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = zext_ln9_1_fu_367_p1;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = add6_reg_470;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = zext_ln9_1_fu_367_p1;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = add6_1_reg_476;
assign llike_3_we0 = llike_3_we0_local;
assign llike_address0 = zext_ln9_1_fu_367_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = add6_reg_470;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_250_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln_fu_300_p3 = {{lshr_ln9_fu_250_p4}, {6'd32}};
assign select_ln14_1_fu_344_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign select_ln14_fu_337_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign shl_ln_fu_280_p3 = {{trunc_ln14_fu_276_p1}, {5'd0}};
assign tmp_5_fu_238_p3 = ap_sig_allocacmp_s_1[32'd6];
assign trunc_ln13_fu_246_p1 = ap_sig_allocacmp_s_1[1:0];
assign trunc_ln14_fu_276_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln14_1_fu_314_p1 = add_ln14_1_fu_308_p2;
assign zext_ln14_fu_294_p1 = add_ln14_fu_288_p2;
assign zext_ln9_1_fu_367_p1 = lshr_ln9_1_reg_391_pp0_iter9_reg;
assign zext_ln9_fu_260_p1 = lshr_ln9_fu_250_p4;
endmodule 