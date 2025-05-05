module viterbi_viterbi_Pipeline_L_init (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,llike_address0,llike_ce0,llike_we0,llike_d0,llike_1_address0,llike_1_ce0,llike_1_we0,llike_1_d0,init_0_address0,init_0_ce0,init_0_q0,init_2_address0,init_2_ce0,init_2_q0,init_4_address0,init_4_ce0,init_4_q0,init_6_address0,init_6_ce0,init_6_q0,conv3_udiv_cast,emission_0_address0,emission_0_ce0,emission_0_q0,emission_0_address1,emission_0_ce1,emission_0_q1,emission_1_address0,emission_1_ce0,emission_1_q0,emission_1_address1,emission_1_ce1,emission_1_q1,emission_2_address0,emission_2_ce0,emission_2_q0,emission_2_address1,emission_2_ce1,emission_2_q1,emission_3_address0,emission_3_ce0,emission_3_q0,emission_3_address1,emission_3_ce1,emission_3_q1,emission_4_address0,emission_4_ce0,emission_4_q0,emission_4_address1,emission_4_ce1,emission_4_q1,emission_5_address0,emission_5_ce0,emission_5_q0,emission_5_address1,emission_5_ce1,emission_5_q1,emission_6_address0,emission_6_ce0,emission_6_q0,emission_6_address1,emission_6_ce1,emission_6_q1,emission_7_address0,emission_7_ce0,emission_7_q0,emission_7_address1,emission_7_ce1,emission_7_q1,empty,init_1_address0,init_1_ce0,init_1_q0,init_3_address0,init_3_ce0,init_3_q0,init_5_address0,init_5_ce0,init_5_q0,init_7_address0,init_7_ce0,init_7_q0,grp_fu_943_p_din0,grp_fu_943_p_din1,grp_fu_943_p_opcode,grp_fu_943_p_dout0,grp_fu_943_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] llike_address0;
output   llike_ce0;
output   llike_we0;
output  [63:0] llike_d0;
output  [12:0] llike_1_address0;
output   llike_1_ce0;
output   llike_1_we0;
output  [63:0] llike_1_d0;
output  [2:0] init_0_address0;
output   init_0_ce0;
input  [63:0] init_0_q0;
output  [2:0] init_2_address0;
output   init_2_ce0;
input  [63:0] init_2_q0;
output  [2:0] init_4_address0;
output   init_4_ce0;
input  [63:0] init_4_q0;
output  [2:0] init_6_address0;
output   init_6_ce0;
input  [63:0] init_6_q0;
input  [4:0] conv3_udiv_cast;
output  [8:0] emission_0_address0;
output   emission_0_ce0;
input  [63:0] emission_0_q0;
output  [8:0] emission_0_address1;
output   emission_0_ce1;
input  [63:0] emission_0_q1;
output  [8:0] emission_1_address0;
output   emission_1_ce0;
input  [63:0] emission_1_q0;
output  [8:0] emission_1_address1;
output   emission_1_ce1;
input  [63:0] emission_1_q1;
output  [8:0] emission_2_address0;
output   emission_2_ce0;
input  [63:0] emission_2_q0;
output  [8:0] emission_2_address1;
output   emission_2_ce1;
input  [63:0] emission_2_q1;
output  [8:0] emission_3_address0;
output   emission_3_ce0;
input  [63:0] emission_3_q0;
output  [8:0] emission_3_address1;
output   emission_3_ce1;
input  [63:0] emission_3_q1;
output  [8:0] emission_4_address0;
output   emission_4_ce0;
input  [63:0] emission_4_q0;
output  [8:0] emission_4_address1;
output   emission_4_ce1;
input  [63:0] emission_4_q1;
output  [8:0] emission_5_address0;
output   emission_5_ce0;
input  [63:0] emission_5_q0;
output  [8:0] emission_5_address1;
output   emission_5_ce1;
input  [63:0] emission_5_q1;
output  [8:0] emission_6_address0;
output   emission_6_ce0;
input  [63:0] emission_6_q0;
output  [8:0] emission_6_address1;
output   emission_6_ce1;
input  [63:0] emission_6_q1;
output  [8:0] emission_7_address0;
output   emission_7_ce0;
input  [63:0] emission_7_q0;
output  [8:0] emission_7_address1;
output   emission_7_ce1;
input  [63:0] emission_7_q1;
input  [2:0] empty;
output  [2:0] init_1_address0;
output   init_1_ce0;
input  [63:0] init_1_q0;
output  [2:0] init_3_address0;
output   init_3_ce0;
input  [63:0] init_3_q0;
output  [2:0] init_5_address0;
output   init_5_ce0;
input  [63:0] init_5_q0;
output  [2:0] init_7_address0;
output   init_7_ce0;
input  [63:0] init_7_q0;
output  [63:0] grp_fu_943_p_din0;
output  [63:0] grp_fu_943_p_din1;
output  [1:0] grp_fu_943_p_opcode;
input  [63:0] grp_fu_943_p_dout0;
output   grp_fu_943_p_ce;
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
wire   [0:0] tmp_41_fu_478_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln13_fu_486_p1;
reg   [2:0] trunc_ln13_reg_831;
wire   [4:0] lshr_ln9_1_fu_512_p4;
reg   [4:0] lshr_ln9_1_reg_837;
reg   [4:0] lshr_ln9_1_reg_837_pp0_iter1_reg;
reg   [4:0] lshr_ln9_1_reg_837_pp0_iter2_reg;
reg   [4:0] lshr_ln9_1_reg_837_pp0_iter3_reg;
reg   [4:0] lshr_ln9_1_reg_837_pp0_iter4_reg;
reg   [4:0] lshr_ln9_1_reg_837_pp0_iter5_reg;
reg   [4:0] lshr_ln9_1_reg_837_pp0_iter6_reg;
reg   [4:0] lshr_ln9_1_reg_837_pp0_iter7_reg;
reg   [4:0] lshr_ln9_1_reg_837_pp0_iter8_reg;
reg   [4:0] lshr_ln9_1_reg_837_pp0_iter9_reg;
wire   [63:0] tmp_fu_605_p11;
reg   [63:0] tmp_reg_962;
wire   [63:0] tmp_1_fu_660_p19;
reg   [63:0] tmp_1_reg_967;
wire   [63:0] tmp_2_fu_715_p11;
reg   [63:0] tmp_2_reg_972;
wire   [63:0] tmp_3_fu_770_p19;
reg   [63:0] tmp_3_reg_977;
reg   [63:0] add6_reg_982;
wire   [63:0] grp_fu_462_p2;
reg   [63:0] add6_1_reg_987;
wire   [63:0] zext_ln9_fu_500_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln14_fu_540_p1;
wire   [63:0] zext_ln14_1_fu_566_p1;
wire   [63:0] zext_ln9_1_fu_809_p1;
reg   [6:0] s_fu_112;
wire   [6:0] add_ln13_fu_578_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_s_1;
reg    init_0_ce0_local;
reg    init_2_ce0_local;
reg    init_4_ce0_local;
reg    init_6_ce0_local;
reg    emission_0_ce1_local;
reg    emission_0_ce0_local;
reg    emission_1_ce1_local;
reg    emission_1_ce0_local;
reg    emission_2_ce1_local;
reg    emission_2_ce0_local;
reg    emission_3_ce1_local;
reg    emission_3_ce0_local;
reg    emission_4_ce1_local;
reg    emission_4_ce0_local;
reg    emission_5_ce1_local;
reg    emission_5_ce0_local;
reg    emission_6_ce1_local;
reg    emission_6_ce0_local;
reg    emission_7_ce1_local;
reg    emission_7_ce0_local;
reg    init_1_ce0_local;
reg    init_3_ce0_local;
reg    init_5_ce0_local;
reg    init_7_ce0_local;
reg    llike_we0_local;
reg    llike_ce0_local;
reg    llike_1_we0_local;
reg    llike_1_ce0_local;
wire   [2:0] lshr_ln9_fu_490_p4;
wire   [5:0] trunc_ln14_fu_522_p1;
wire   [8:0] shl_ln_fu_526_p3;
wire   [8:0] conv3_udiv_cast_cast_fu_466_p1;
wire   [8:0] add_ln14_fu_534_p2;
wire   [8:0] or_ln_fu_552_p3;
wire   [8:0] add_ln14_1_fu_560_p2;
wire   [63:0] tmp_fu_605_p2;
wire   [63:0] tmp_fu_605_p4;
wire   [63:0] tmp_fu_605_p6;
wire   [63:0] tmp_fu_605_p8;
wire   [63:0] tmp_fu_605_p9;
wire   [63:0] tmp_1_fu_660_p2;
wire   [63:0] tmp_1_fu_660_p4;
wire   [63:0] tmp_1_fu_660_p6;
wire   [63:0] tmp_1_fu_660_p8;
wire   [63:0] tmp_1_fu_660_p10;
wire   [63:0] tmp_1_fu_660_p12;
wire   [63:0] tmp_1_fu_660_p14;
wire   [63:0] tmp_1_fu_660_p16;
wire   [63:0] tmp_1_fu_660_p17;
wire   [63:0] tmp_2_fu_715_p2;
wire   [63:0] tmp_2_fu_715_p4;
wire   [63:0] tmp_2_fu_715_p6;
wire   [63:0] tmp_2_fu_715_p8;
wire   [63:0] tmp_2_fu_715_p9;
wire   [63:0] tmp_3_fu_770_p2;
wire   [63:0] tmp_3_fu_770_p4;
wire   [63:0] tmp_3_fu_770_p6;
wire   [63:0] tmp_3_fu_770_p8;
wire   [63:0] tmp_3_fu_770_p10;
wire   [63:0] tmp_3_fu_770_p12;
wire   [63:0] tmp_3_fu_770_p14;
wire   [63:0] tmp_3_fu_770_p16;
wire   [63:0] tmp_3_fu_770_p17;
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
wire   [2:0] tmp_fu_605_p1;
wire   [2:0] tmp_fu_605_p3;
wire  signed [2:0] tmp_fu_605_p5;
wire  signed [2:0] tmp_fu_605_p7;
wire   [2:0] tmp_1_fu_660_p1;
wire   [2:0] tmp_1_fu_660_p3;
wire   [2:0] tmp_1_fu_660_p5;
wire   [2:0] tmp_1_fu_660_p7;
wire  signed [2:0] tmp_1_fu_660_p9;
wire  signed [2:0] tmp_1_fu_660_p11;
wire  signed [2:0] tmp_1_fu_660_p13;
wire  signed [2:0] tmp_1_fu_660_p15;
wire   [2:0] tmp_2_fu_715_p1;
wire   [2:0] tmp_2_fu_715_p3;
wire  signed [2:0] tmp_2_fu_715_p5;
wire  signed [2:0] tmp_2_fu_715_p7;
wire   [2:0] tmp_3_fu_770_p1;
wire   [2:0] tmp_3_fu_770_p3;
wire   [2:0] tmp_3_fu_770_p5;
wire   [2:0] tmp_3_fu_770_p7;
wire  signed [2:0] tmp_3_fu_770_p9;
wire  signed [2:0] tmp_3_fu_770_p11;
wire  signed [2:0] tmp_3_fu_770_p13;
wire  signed [2:0] tmp_3_fu_770_p15;
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
#0 s_fu_112 = 7'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(tmp_2_reg_972),.din1(tmp_3_reg_977),.ce(1'b1),.dout(grp_fu_462_p2));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U3(.din0(tmp_fu_605_p2),.din1(tmp_fu_605_p4),.din2(tmp_fu_605_p6),.din3(tmp_fu_605_p8),.def(tmp_fu_605_p9),.sel(trunc_ln13_reg_831),.dout(tmp_fu_605_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U4(.din0(tmp_1_fu_660_p2),.din1(tmp_1_fu_660_p4),.din2(tmp_1_fu_660_p6),.din3(tmp_1_fu_660_p8),.din4(tmp_1_fu_660_p10),.din5(tmp_1_fu_660_p12),.din6(tmp_1_fu_660_p14),.din7(tmp_1_fu_660_p16),.def(tmp_1_fu_660_p17),.sel(empty),.dout(tmp_1_fu_660_p19));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_9_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h2 ),.din1_WIDTH( 64 ),.CASE2( 3'h4 ),.din2_WIDTH( 64 ),.CASE3( 3'h6 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_9_3_64_1_1_U5(.din0(tmp_2_fu_715_p2),.din1(tmp_2_fu_715_p4),.din2(tmp_2_fu_715_p6),.din3(tmp_2_fu_715_p8),.def(tmp_2_fu_715_p9),.sel(trunc_ln13_reg_831),.dout(tmp_2_fu_715_p11));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U6(.din0(tmp_3_fu_770_p2),.din1(tmp_3_fu_770_p4),.din2(tmp_3_fu_770_p6),.din3(tmp_3_fu_770_p8),.din4(tmp_3_fu_770_p10),.din5(tmp_3_fu_770_p12),.din6(tmp_3_fu_770_p14),.din7(tmp_3_fu_770_p16),.def(tmp_3_fu_770_p17),.sel(empty),.dout(tmp_3_fu_770_p19));
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
        end else if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        if (((tmp_41_fu_478_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            s_fu_112 <= add_ln13_fu_578_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            s_fu_112 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add6_1_reg_987 <= grp_fu_462_p2;
        add6_reg_982 <= grp_fu_943_p_dout0;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln9_1_reg_837_pp0_iter2_reg <= lshr_ln9_1_reg_837_pp0_iter1_reg;
        lshr_ln9_1_reg_837_pp0_iter3_reg <= lshr_ln9_1_reg_837_pp0_iter2_reg;
        lshr_ln9_1_reg_837_pp0_iter4_reg <= lshr_ln9_1_reg_837_pp0_iter3_reg;
        lshr_ln9_1_reg_837_pp0_iter5_reg <= lshr_ln9_1_reg_837_pp0_iter4_reg;
        lshr_ln9_1_reg_837_pp0_iter6_reg <= lshr_ln9_1_reg_837_pp0_iter5_reg;
        lshr_ln9_1_reg_837_pp0_iter7_reg <= lshr_ln9_1_reg_837_pp0_iter6_reg;
        lshr_ln9_1_reg_837_pp0_iter8_reg <= lshr_ln9_1_reg_837_pp0_iter7_reg;
        lshr_ln9_1_reg_837_pp0_iter9_reg <= lshr_ln9_1_reg_837_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln9_1_reg_837 <= {{ap_sig_allocacmp_s_1[5:1]}};
        lshr_ln9_1_reg_837_pp0_iter1_reg <= lshr_ln9_1_reg_837;
        tmp_1_reg_967 <= tmp_1_fu_660_p19;
        tmp_2_reg_972 <= tmp_2_fu_715_p11;
        tmp_3_reg_977 <= tmp_3_fu_770_p19;
        tmp_reg_962 <= tmp_fu_605_p11;
        trunc_ln13_reg_831 <= trunc_ln13_fu_486_p1;
    end
end
always @ (*) begin
    if (((tmp_41_fu_478_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter9_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
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
        ap_sig_allocacmp_s_1 = s_fu_112;
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
        emission_4_ce0_local = 1'b1;
    end else begin
        emission_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_4_ce1_local = 1'b1;
    end else begin
        emission_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_5_ce0_local = 1'b1;
    end else begin
        emission_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_5_ce1_local = 1'b1;
    end else begin
        emission_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_6_ce0_local = 1'b1;
    end else begin
        emission_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_6_ce1_local = 1'b1;
    end else begin
        emission_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_7_ce0_local = 1'b1;
    end else begin
        emission_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        emission_7_ce1_local = 1'b1;
    end else begin
        emission_7_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_4_ce0_local = 1'b1;
    end else begin
        init_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_5_ce0_local = 1'b1;
    end else begin
        init_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_6_ce0_local = 1'b1;
    end else begin
        init_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_7_ce0_local = 1'b1;
    end else begin
        init_7_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        llike_1_we0_local = 1'b1;
    end else begin
        llike_1_we0_local = 1'b0;
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
assign add_ln13_fu_578_p2 = (ap_sig_allocacmp_s_1 + 7'd2);
assign add_ln14_1_fu_560_p2 = (or_ln_fu_552_p3 + conv3_udiv_cast_cast_fu_466_p1);
assign add_ln14_fu_534_p2 = (shl_ln_fu_526_p3 + conv3_udiv_cast_cast_fu_466_p1);
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
assign conv3_udiv_cast_cast_fu_466_p1 = conv3_udiv_cast;
assign emission_0_address0 = zext_ln14_1_fu_566_p1;
assign emission_0_address1 = zext_ln14_fu_540_p1;
assign emission_0_ce0 = emission_0_ce0_local;
assign emission_0_ce1 = emission_0_ce1_local;
assign emission_1_address0 = zext_ln14_1_fu_566_p1;
assign emission_1_address1 = zext_ln14_fu_540_p1;
assign emission_1_ce0 = emission_1_ce0_local;
assign emission_1_ce1 = emission_1_ce1_local;
assign emission_2_address0 = zext_ln14_1_fu_566_p1;
assign emission_2_address1 = zext_ln14_fu_540_p1;
assign emission_2_ce0 = emission_2_ce0_local;
assign emission_2_ce1 = emission_2_ce1_local;
assign emission_3_address0 = zext_ln14_1_fu_566_p1;
assign emission_3_address1 = zext_ln14_fu_540_p1;
assign emission_3_ce0 = emission_3_ce0_local;
assign emission_3_ce1 = emission_3_ce1_local;
assign emission_4_address0 = zext_ln14_1_fu_566_p1;
assign emission_4_address1 = zext_ln14_fu_540_p1;
assign emission_4_ce0 = emission_4_ce0_local;
assign emission_4_ce1 = emission_4_ce1_local;
assign emission_5_address0 = zext_ln14_1_fu_566_p1;
assign emission_5_address1 = zext_ln14_fu_540_p1;
assign emission_5_ce0 = emission_5_ce0_local;
assign emission_5_ce1 = emission_5_ce1_local;
assign emission_6_address0 = zext_ln14_1_fu_566_p1;
assign emission_6_address1 = zext_ln14_fu_540_p1;
assign emission_6_ce0 = emission_6_ce0_local;
assign emission_6_ce1 = emission_6_ce1_local;
assign emission_7_address0 = zext_ln14_1_fu_566_p1;
assign emission_7_address1 = zext_ln14_fu_540_p1;
assign emission_7_ce0 = emission_7_ce0_local;
assign emission_7_ce1 = emission_7_ce1_local;
assign grp_fu_943_p_ce = 1'b1;
assign grp_fu_943_p_din0 = tmp_reg_962;
assign grp_fu_943_p_din1 = tmp_1_reg_967;
assign grp_fu_943_p_opcode = 2'd0;
assign init_0_address0 = zext_ln9_fu_500_p1;
assign init_0_ce0 = init_0_ce0_local;
assign init_1_address0 = zext_ln9_fu_500_p1;
assign init_1_ce0 = init_1_ce0_local;
assign init_2_address0 = zext_ln9_fu_500_p1;
assign init_2_ce0 = init_2_ce0_local;
assign init_3_address0 = zext_ln9_fu_500_p1;
assign init_3_ce0 = init_3_ce0_local;
assign init_4_address0 = zext_ln9_fu_500_p1;
assign init_4_ce0 = init_4_ce0_local;
assign init_5_address0 = zext_ln9_fu_500_p1;
assign init_5_ce0 = init_5_ce0_local;
assign init_6_address0 = zext_ln9_fu_500_p1;
assign init_6_ce0 = init_6_ce0_local;
assign init_7_address0 = zext_ln9_fu_500_p1;
assign init_7_ce0 = init_7_ce0_local;
assign llike_1_address0 = zext_ln9_1_fu_809_p1;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_1_d0 = add6_1_reg_987;
assign llike_1_we0 = llike_1_we0_local;
assign llike_address0 = zext_ln9_1_fu_809_p1;
assign llike_ce0 = llike_ce0_local;
assign llike_d0 = add6_reg_982;
assign llike_we0 = llike_we0_local;
assign lshr_ln9_1_fu_512_p4 = {{ap_sig_allocacmp_s_1[5:1]}};
assign lshr_ln9_fu_490_p4 = {{ap_sig_allocacmp_s_1[5:3]}};
assign or_ln_fu_552_p3 = {{lshr_ln9_1_fu_512_p4}, {4'd8}};
assign shl_ln_fu_526_p3 = {{trunc_ln14_fu_522_p1}, {3'd0}};
assign tmp_1_fu_660_p10 = emission_4_q1;
assign tmp_1_fu_660_p12 = emission_5_q1;
assign tmp_1_fu_660_p14 = emission_6_q1;
assign tmp_1_fu_660_p16 = emission_7_q1;
assign tmp_1_fu_660_p17 = 'bx;
assign tmp_1_fu_660_p2 = emission_0_q1;
assign tmp_1_fu_660_p4 = emission_1_q1;
assign tmp_1_fu_660_p6 = emission_2_q1;
assign tmp_1_fu_660_p8 = emission_3_q1;
assign tmp_2_fu_715_p2 = init_1_q0;
assign tmp_2_fu_715_p4 = init_3_q0;
assign tmp_2_fu_715_p6 = init_5_q0;
assign tmp_2_fu_715_p8 = init_7_q0;
assign tmp_2_fu_715_p9 = 'bx;
assign tmp_3_fu_770_p10 = emission_4_q0;
assign tmp_3_fu_770_p12 = emission_5_q0;
assign tmp_3_fu_770_p14 = emission_6_q0;
assign tmp_3_fu_770_p16 = emission_7_q0;
assign tmp_3_fu_770_p17 = 'bx;
assign tmp_3_fu_770_p2 = emission_0_q0;
assign tmp_3_fu_770_p4 = emission_1_q0;
assign tmp_3_fu_770_p6 = emission_2_q0;
assign tmp_3_fu_770_p8 = emission_3_q0;
assign tmp_41_fu_478_p3 = ap_sig_allocacmp_s_1[32'd6];
assign tmp_fu_605_p2 = init_0_q0;
assign tmp_fu_605_p4 = init_2_q0;
assign tmp_fu_605_p6 = init_4_q0;
assign tmp_fu_605_p8 = init_6_q0;
assign tmp_fu_605_p9 = 'bx;
assign trunc_ln13_fu_486_p1 = ap_sig_allocacmp_s_1[2:0];
assign trunc_ln14_fu_522_p1 = ap_sig_allocacmp_s_1[5:0];
assign zext_ln14_1_fu_566_p1 = add_ln14_1_fu_560_p2;
assign zext_ln14_fu_540_p1 = add_ln14_fu_534_p2;
assign zext_ln9_1_fu_809_p1 = lshr_ln9_1_reg_837_pp0_iter9_reg;
assign zext_ln9_fu_500_p1 = lshr_ln9_fu_490_p4;
endmodule 