module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,llike_2_address0,llike_2_ce0,llike_2_we0,llike_2_d0,llike_3_address0,llike_3_ce0,llike_3_we0,llike_3_d0,llike_4_address0,llike_4_ce0,llike_4_we0,llike_4_d0,llike_5_address0,llike_5_ce0,llike_5_we0,llike_5_d0,llike_6_address0,llike_6_ce0,llike_6_we0,llike_6_d0,llike_7_address0,llike_7_ce0,llike_7_we0,llike_7_d0,init_0_address0,init_0_ce0,init_0_q0,init_0_address1,init_0_ce1,init_0_q1,conv3_udiv,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,empty,conv3_udiv_cast,init_1_address0,init_1_ce0,init_1_q0,init_1_address1,init_1_ce1,init_1_q1,grp_fu_456_p_din0,grp_fu_456_p_din1,grp_fu_456_p_opcode,grp_fu_456_p_dout0,grp_fu_456_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [10:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [10:0] llike_2_address0;
output   llike_2_ce0;
output   llike_2_we0;
output  [63:0] llike_2_d0;
output  [10:0] llike_3_address0;
output   llike_3_ce0;
output   llike_3_we0;
output  [63:0] llike_3_d0;
output  [10:0] llike_4_address0;
output   llike_4_ce0;
output   llike_4_we0;
output  [63:0] llike_4_d0;
output  [10:0] llike_5_address0;
output   llike_5_ce0;
output   llike_5_we0;
output  [63:0] llike_5_d0;
output  [10:0] llike_6_address0;
output   llike_6_ce0;
output   llike_6_we0;
output  [63:0] llike_6_d0;
output  [10:0] llike_7_address0;
output   llike_7_ce0;
output   llike_7_we0;
output  [63:0] llike_7_d0;
output  [4:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [4:0] init_0_address1;
output   init_0_ce1;
input  [63:0] init_0_q1;
input  [6:0] conv3_udiv;
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
input  [6:0] conv3_udiv_cast;
output  [4:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [4:0] init_1_address1;
output   init_1_ce1;
input  [63:0] init_1_q1;
output  [63:0] grp_fu_456_p_din0;
output  [63:0] grp_fu_456_p_din1;
output  [1:0] grp_fu_456_p_opcode;
input  [63:0] grp_fu_456_p_dout0;
output   grp_fu_456_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_19_reg_629;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_356;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] grp_fu_352_p2;
reg   [63:0] reg_364;
wire   [10:0] conv3_udiv_cast_cast_fu_372_p1;
reg   [10:0] conv3_udiv_cast_cast_reg_617;
reg   [6:0] s_1_reg_623;
wire   [0:0] tmp_19_fu_384_p3;
wire   [3:0] tmp_9_fu_412_p4;
reg   [3:0] tmp_9_reg_638;
wire   [0:0] icmp_ln14_fu_470_p2;
reg   [0:0] icmp_ln14_reg_679;
reg   [0:0] icmp_ln14_reg_679_pp0_iter1_reg;
reg   [0:0] icmp_ln14_reg_679_pp0_iter2_reg;
reg   [0:0] icmp_ln14_reg_679_pp0_iter3_reg;
reg   [0:0] icmp_ln14_reg_679_pp0_iter4_reg;
reg   [0:0] icmp_ln14_reg_679_pp0_iter5_reg;
reg   [2:0] lshr_ln9_1_reg_683;
reg   [2:0] lshr_ln9_1_reg_683_pp0_iter1_reg;
reg   [2:0] lshr_ln9_1_reg_683_pp0_iter2_reg;
reg   [2:0] lshr_ln9_1_reg_683_pp0_iter3_reg;
reg   [2:0] lshr_ln9_1_reg_683_pp0_iter4_reg;
reg   [63:0] init_0_load_reg_688;
wire   [63:0] select_ln14_fu_485_p3;
reg   [63:0] select_ln14_reg_693;
wire   [63:0] select_ln14_1_fu_492_p3;
reg   [63:0] select_ln14_1_reg_698;
reg   [63:0] init_1_load_reg_713;
reg   [63:0] init_0_load_1_reg_718;
reg   [63:0] init_1_load_1_reg_723;
wire   [63:0] bitcast_ln14_fu_545_p1;
wire   [63:0] bitcast_ln14_1_fu_549_p1;
wire   [63:0] bitcast_ln14_2_fu_553_p1;
wire   [63:0] select_ln14_2_fu_557_p3;
reg   [63:0] select_ln14_2_reg_753;
wire   [63:0] bitcast_ln14_4_fu_564_p1;
wire   [63:0] select_ln14_3_fu_568_p3;
reg   [63:0] select_ln14_3_reg_763;
wire   [63:0] bitcast_ln14_3_fu_575_p1;
wire   [63:0] bitcast_ln14_5_fu_579_p1;
wire   [63:0] bitcast_ln14_6_fu_583_p1;
wire   [63:0] bitcast_ln14_7_fu_587_p1;
reg   [10:0] llike_2_addr_reg_788;
reg   [10:0] llike_3_addr_reg_793;
reg   [10:0] llike_6_addr_reg_798;
reg   [10:0] llike_7_addr_reg_803;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln9_fu_406_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_430_p1;
wire   [63:0] zext_ln14_1_fu_450_p1;
wire   [63:0] zext_ln14_4_fu_464_p1;
wire   [63:0] zext_ln14_2_fu_511_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_3_fu_529_p1;
wire   [63:0] zext_ln9_1_fu_591_p1;
reg   [6:0] s_fu_94;
wire   [6:0] add_ln13_fu_535_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce1_local;
reg    init_0_ce0_local;
reg    emission_0_ce1_local;
reg   [10:0] emission_0_address1_local;
reg    emission_0_ce0_local;
reg   [10:0] emission_0_address0_local;
reg    emission_1_ce1_local;
reg   [10:0] emission_1_address1_local;
reg    emission_1_ce0_local;
reg   [10:0] emission_1_address0_local;
reg    init_1_ce1_local;
reg    init_1_ce0_local;
reg    llike_4_we0_local;
reg    llike_4_ce0_local;
reg    llike_5_we0_local;
reg    llike_5_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
reg    llike_6_we0_local;
reg    llike_6_ce0_local;
reg    llike_7_we0_local;
reg    llike_7_ce0_local;
reg    llike_2_we0_local;
reg    llike_2_ce0_local;
reg    llike_3_we0_local;
reg    llike_3_ce0_local;
reg   [63:0] grp_fu_348_p0;
reg   [63:0] grp_fu_348_p1;
reg   [63:0] grp_fu_352_p0;
reg   [63:0] grp_fu_352_p1;
wire   [4:0] lshr_ln9_fu_396_p4;
wire   [10:0] or_ln_fu_422_p3;
wire   [10:0] or_ln14_1_fu_436_p3;
wire   [10:0] add_ln14_fu_444_p2;
wire   [4:0] or_ln14_2_fu_456_p3;
wire   [2:0] trunc_ln13_fu_392_p1;
wire   [10:0] or_ln14_3_fu_499_p3;
wire   [10:0] add_ln14_1_fu_506_p2;
wire   [10:0] or_ln14_4_fu_517_p3;
wire   [10:0] add_ln14_2_fu_524_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 s_fu_94 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_352_p0),.din1(grp_fu_352_p1),.ce(1'b1),.dout(grp_fu_352_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        s_fu_94 <= 7'd0;
    end else if (((tmp_19_reg_629 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        s_fu_94 <= add_ln13_fu_535_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        lshr_ln9_1_reg_683 <= {{s_1_reg_623[5:3]}};
        lshr_ln9_1_reg_683_pp0_iter1_reg <= lshr_ln9_1_reg_683;
        lshr_ln9_1_reg_683_pp0_iter2_reg <= lshr_ln9_1_reg_683_pp0_iter1_reg;
        lshr_ln9_1_reg_683_pp0_iter3_reg <= lshr_ln9_1_reg_683_pp0_iter2_reg;
        lshr_ln9_1_reg_683_pp0_iter4_reg <= lshr_ln9_1_reg_683_pp0_iter3_reg;
        select_ln14_1_reg_698 <= select_ln14_1_fu_492_p3;
        select_ln14_reg_693 <= select_ln14_fu_485_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv3_udiv_cast_cast_reg_617[6 : 0] <= conv3_udiv_cast_cast_fu_372_p1[6 : 0];
        icmp_ln14_reg_679 <= icmp_ln14_fu_470_p2;
        icmp_ln14_reg_679_pp0_iter1_reg <= icmp_ln14_reg_679;
        icmp_ln14_reg_679_pp0_iter2_reg <= icmp_ln14_reg_679_pp0_iter1_reg;
        icmp_ln14_reg_679_pp0_iter3_reg <= icmp_ln14_reg_679_pp0_iter2_reg;
        icmp_ln14_reg_679_pp0_iter4_reg <= icmp_ln14_reg_679_pp0_iter3_reg;
        icmp_ln14_reg_679_pp0_iter5_reg <= icmp_ln14_reg_679_pp0_iter4_reg;
        llike_2_addr_reg_788[2 : 0] <= zext_ln9_1_fu_591_p1[2 : 0];
        llike_3_addr_reg_793[2 : 0] <= zext_ln9_1_fu_591_p1[2 : 0];
        llike_6_addr_reg_798[2 : 0] <= zext_ln9_1_fu_591_p1[2 : 0];
        llike_7_addr_reg_803[2 : 0] <= zext_ln9_1_fu_591_p1[2 : 0];
        s_1_reg_623 <= ap_sig_allocacmp_s_1;
        select_ln14_2_reg_753 <= select_ln14_2_fu_557_p3;
        select_ln14_3_reg_763 <= select_ln14_3_fu_568_p3;
        tmp_19_reg_629 <= ap_sig_allocacmp_s_1[32'd6];
        tmp_9_reg_638 <= {{ap_sig_allocacmp_s_1[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        init_0_load_1_reg_718 <= init_0_q0;
        init_0_load_reg_688 <= init_0_q1;
        init_1_load_1_reg_723 <= init_1_q0;
        init_1_load_reg_713 <= init_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_356 <= grp_fu_456_p_dout0;
        reg_364 <= grp_fu_352_p2;
    end
end
always @ (*) begin
    if (((tmp_19_reg_629 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_s_1 = s_fu_94;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address0_local = zext_ln14_3_fu_529_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address0_local = zext_ln14_1_fu_450_p1;
        end else begin
            emission_0_address0_local = 'bx;
        end
    end else begin
        emission_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_0_address1_local = zext_ln14_2_fu_511_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_0_address1_local = zext_ln14_fu_430_p1;
        end else begin
            emission_0_address1_local = 'bx;
        end
    end else begin
        emission_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce0_local = 1'b1;
    end else begin
        emission_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_0_ce1_local = 1'b1;
    end else begin
        emission_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address0_local = zext_ln14_3_fu_529_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address0_local = zext_ln14_1_fu_450_p1;
        end else begin
            emission_1_address0_local = 'bx;
        end
    end else begin
        emission_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            emission_1_address1_local = zext_ln14_2_fu_511_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            emission_1_address1_local = zext_ln14_fu_430_p1;
        end else begin
            emission_1_address1_local = 'bx;
        end
    end else begin
        emission_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce0_local = 1'b1;
    end else begin
        emission_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        emission_1_ce1_local = 1'b1;
    end else begin
        emission_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_348_p0 = bitcast_ln14_5_fu_579_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_348_p0 = bitcast_ln14_fu_545_p1;
        end else begin
            grp_fu_348_p0 = 'bx;
        end
    end else begin
        grp_fu_348_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_348_p1 = bitcast_ln14_3_fu_575_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_348_p1 = bitcast_ln14_1_fu_549_p1;
        end else begin
            grp_fu_348_p1 = 'bx;
        end
    end else begin
        grp_fu_348_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_352_p0 = bitcast_ln14_6_fu_583_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_352_p0 = bitcast_ln14_4_fu_564_p1;
        end else begin
            grp_fu_352_p0 = 'bx;
        end
    end else begin
        grp_fu_352_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_352_p1 = bitcast_ln14_7_fu_587_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_352_p1 = bitcast_ln14_2_fu_553_p1;
        end else begin
            grp_fu_352_p1 = 'bx;
        end
    end else begin
        grp_fu_352_p1 = 'bx;
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
        init_0_ce1_local = 1'b1;
    end else begin
        init_0_ce1_local = 1'b0;
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
        init_1_ce1_local = 1'b1;
    end else begin
        init_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_679_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_679_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_2_we0_local = 1'b1;
    end else begin
        llike_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_679_pp0_iter5_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_3_we0_local = 1'b1;
    end else begin
        llike_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_679_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_4_we0_local = 1'b1;
    end else begin
        llike_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_679_pp0_iter4_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_5_we0_local = 1'b1;
    end else begin
        llike_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_679_pp0_iter5_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_6_we0_local = 1'b1;
    end else begin
        llike_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_679_pp0_iter5_reg == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_7_we0_local = 1'b1;
    end else begin
        llike_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (icmp_ln14_reg_679_pp0_iter4_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        llike_we0_local = 1'b1;
    end else begin
        llike_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln13_fu_535_p2 = (s_1_reg_623 + 7'd4);
assign add_ln14_1_fu_506_p2 = (or_ln14_3_fu_499_p3 + conv3_udiv_cast_cast_reg_617);
assign add_ln14_2_fu_524_p2 = (or_ln14_4_fu_517_p3 + conv3_udiv_cast_cast_reg_617);
assign add_ln14_fu_444_p2 = (or_ln14_1_fu_436_p3 + conv3_udiv_cast_cast_fu_372_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_1_fu_549_p1 = select_ln14_reg_693;
assign bitcast_ln14_2_fu_553_p1 = select_ln14_1_reg_698;
assign bitcast_ln14_3_fu_575_p1 = select_ln14_2_reg_753;
assign bitcast_ln14_4_fu_564_p1 = init_1_load_reg_713;
assign bitcast_ln14_5_fu_579_p1 = init_0_load_1_reg_718;
assign bitcast_ln14_6_fu_583_p1 = init_1_load_1_reg_723;
assign bitcast_ln14_7_fu_587_p1 = select_ln14_3_reg_763;
assign bitcast_ln14_fu_545_p1 = init_0_load_reg_688;
assign conv3_udiv_cast_cast_fu_372_p1 = conv3_udiv_cast;
assign emission_0_address0 = emission_0_address0_local;
assign emission_0_address1 = emission_0_address1_local;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = emission_1_address0_local;
assign emission_1_address1 = emission_1_address1_local;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign grp_fu_456_p_ce = 1'b1;
assign grp_fu_456_p_din0 = grp_fu_348_p0;
assign grp_fu_456_p_din1 = grp_fu_348_p1;
assign grp_fu_456_p_opcode = 2'd0;
assign icmp_ln14_fu_470_p2 = ((trunc_ln13_fu_392_p1 == 3'd0) ? 1'b1 : 1'b0);
assign init_0_address0 = zext_ln14_4_fu_464_p1;
assign init_0_address1 = zext_ln9_fu_406_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_0_ce1 = init_0_ce1_local;
assign init_1_address0 = zext_ln14_4_fu_464_p1;
assign init_1_address1 = zext_ln9_fu_406_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_1_ce1 = init_1_ce1_local;
assign llike_1_address0 = zext_ln9_1_fu_591_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = reg_364;
assign llike_1_we0 = llike_1_we0_local;
assign llike_2_address0 = llike_2_addr_reg_788;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_2_d0 = reg_356;
assign llike_2_we0 = llike_2_we0_local;
assign llike_3_address0 = llike_3_addr_reg_793;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_3_d0 = reg_364;
assign llike_3_we0 = llike_3_we0_local;
assign llike_4_address0 = zext_ln9_1_fu_591_p1;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_4_d0 = reg_356;
assign llike_4_we0 = llike_4_we0_local;
assign llike_5_address0 = zext_ln9_1_fu_591_p1;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_5_d0 = reg_364;
assign llike_5_we0 = llike_5_we0_local;
assign llike_6_address0 = llike_6_addr_reg_798;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_6_d0 = reg_356;
assign llike_6_we0 = llike_6_we0_local;
assign llike_7_address0 = llike_7_addr_reg_803;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_7_d0 = reg_364;
assign llike_7_we0 = llike_7_we0_local;
assign llike_address0 = zext_ln9_1_fu_591_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = reg_356;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_fu_396_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign or_ln14_1_fu_436_p3 = {{lshr_ln9_fu_396_p4}, {6'd32}};
assign or_ln14_2_fu_456_p3 = {{tmp_9_fu_412_p4}, {1'd1}};
assign or_ln14_3_fu_499_p3 = {{tmp_9_reg_638}, {7'd64}};
assign or_ln14_4_fu_517_p3 = {{tmp_9_reg_638}, {7'd96}};
assign or_ln_fu_422_p3 = {{tmp_9_fu_412_p4}, {conv3_udiv}};
assign select_ln14_1_fu_492_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign select_ln14_2_fu_557_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign select_ln14_3_fu_568_p3 = ((empty[0:0] == 1'b1) ? emission_1_q0 : emission_0_q0);
assign select_ln14_fu_485_p3 = ((empty[0:0] == 1'b1) ? emission_1_q1 : emission_0_q1);
assign tmp_19_fu_384_p3 = ap_sig_allocacmp_s_1[32'd6];
assign tmp_9_fu_412_p4 = {{ap_sig_allocacmp_s_1[5:2]}};
assign trunc_ln13_fu_392_p1 = ap_sig_allocacmp_s_1[2:0];
assign zext_ln14_1_fu_450_p1 = add_ln14_fu_444_p2;
assign zext_ln14_2_fu_511_p1 = add_ln14_1_fu_506_p2;
assign zext_ln14_3_fu_529_p1 = add_ln14_2_fu_524_p2;
assign zext_ln14_4_fu_464_p1 = or_ln14_2_fu_456_p3;
assign zext_ln14_fu_430_p1 = or_ln_fu_422_p3;
assign zext_ln9_1_fu_591_p1 = lshr_ln9_1_reg_683_pp0_iter4_reg;
assign zext_ln9_fu_406_p1 = lshr_ln9_fu_396_p4;
always @ (posedge ap_clk) begin
    conv3_udiv_cast_cast_reg_617[10:7] <= 4'b0000;
    llike_2_addr_reg_788[10:3] <= 8'b00000000;
    llike_3_addr_reg_793[10:3] <= 8'b00000000;
    llike_6_addr_reg_798[10:3] <= 8'b00000000;
    llike_7_addr_reg_803[10:3] <= 8'b00000000;
end
endmodule 