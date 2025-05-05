module backprop_backprop_Pipeline_label_29 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_3_q0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_2_q0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_1_q0,v3_0_address0,v3_0_ce0,v3_0_we0,v3_0_d0,v3_0_q0,v9_address0,v9_ce0,v9_q0,v9_1_address0,v9_1_ce0,v9_1_q0,v9_2_address0,v9_2_ce0,v9_2_q0,v9_3_address0,v9_3_ce0,v9_3_q0,v9_4_address0,v9_4_ce0,v9_4_q0,v9_5_address0,v9_5_ce0,v9_5_q0,v9_6_address0,v9_6_ce0,v9_6_q0,v9_7_address0,v9_7_ce0,v9_7_q0,v161_1_out,v161_1_out_ap_vld,grp_fu_7886_p_din0,grp_fu_7886_p_din1,grp_fu_7886_p_opcode,grp_fu_7886_p_dout0,grp_fu_7886_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [63:0] v3_3_d0;
input  [63:0] v3_3_q0;
output  [3:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [63:0] v3_2_d0;
input  [63:0] v3_2_q0;
output  [3:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [63:0] v3_1_d0;
input  [63:0] v3_1_q0;
output  [3:0] v3_0_address0;
output   v3_0_ce0;
output   v3_0_we0;
output  [63:0] v3_0_d0;
input  [63:0] v3_0_q0;
output  [2:0] v9_address0;
output   v9_ce0;
input  [63:0] v9_q0;
output  [2:0] v9_1_address0;
output   v9_1_ce0;
input  [63:0] v9_1_q0;
output  [2:0] v9_2_address0;
output   v9_2_ce0;
input  [63:0] v9_2_q0;
output  [2:0] v9_3_address0;
output   v9_3_ce0;
input  [63:0] v9_3_q0;
output  [2:0] v9_4_address0;
output   v9_4_ce0;
input  [63:0] v9_4_q0;
output  [2:0] v9_5_address0;
output   v9_5_ce0;
input  [63:0] v9_5_q0;
output  [2:0] v9_6_address0;
output   v9_6_ce0;
input  [63:0] v9_6_q0;
output  [2:0] v9_7_address0;
output   v9_7_ce0;
input  [63:0] v9_7_q0;
output  [63:0] v161_1_out;
output   v161_1_out_ap_vld;
output  [63:0] grp_fu_7886_p_din0;
output  [63:0] grp_fu_7886_p_din1;
output  [1:0] grp_fu_7886_p_opcode;
input  [63:0] grp_fu_7886_p_dout0;
output   grp_fu_7886_p_ce;
reg ap_idle;
reg v161_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln264_reg_477;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v160_1_reg_470;
wire   [0:0] icmp_ln264_fu_295_p2;
reg   [0:0] icmp_ln264_reg_477_pp0_iter1_reg;
reg   [0:0] icmp_ln264_reg_477_pp0_iter2_reg;
reg   [0:0] icmp_ln264_reg_477_pp0_iter3_reg;
wire   [1:0] trunc_ln264_fu_334_p1;
reg   [1:0] trunc_ln264_reg_521;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] trunc_ln264_reg_521_pp0_iter1_reg;
reg   [1:0] trunc_ln264_reg_521_pp0_iter2_reg;
reg   [3:0] lshr_ln265_1_reg_526;
wire   [63:0] v162_fu_349_p19;
reg   [63:0] v162_reg_531;
reg   [3:0] v3_0_addr_reg_536;
reg   [3:0] v3_0_addr_reg_536_pp0_iter2_reg;
reg   [3:0] v3_1_addr_reg_541;
reg   [3:0] v3_1_addr_reg_541_pp0_iter2_reg;
reg   [3:0] v3_2_addr_reg_546;
reg   [3:0] v3_2_addr_reg_546_pp0_iter2_reg;
reg   [3:0] v3_3_addr_reg_551;
reg   [3:0] v3_3_addr_reg_551_pp0_iter2_reg;
wire   [63:0] grp_fu_277_p2;
reg   [63:0] v163_reg_556;
wire   [63:0] v164_fu_412_p11;
reg   [63:0] v164_reg_561;
reg   [63:0] v165_reg_566;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] v166_reg_573;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln265_fu_317_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln265_1_fu_389_p1;
reg   [63:0] v159_fu_102;
reg   [63:0] ap_sig_allocacmp_v159_load_1;
wire    ap_block_pp0_stage3;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter3_stage3;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [6:0] v160_fu_106;
wire   [6:0] add_ln264_fu_301_p2;
reg   [6:0] ap_sig_allocacmp_v160_1;
wire    ap_block_pp0_stage3_01001;
reg    v9_ce0_local;
reg    v9_1_ce0_local;
reg    v9_2_ce0_local;
reg    v9_3_ce0_local;
reg    v9_4_ce0_local;
reg    v9_5_ce0_local;
reg    v9_6_ce0_local;
reg    v9_7_ce0_local;
reg    v3_0_ce0_local;
reg   [3:0] v3_0_address0_local;
reg    v3_0_we0_local;
wire   [63:0] bitcast_ln270_fu_435_p1;
reg    v3_1_ce0_local;
reg   [3:0] v3_1_address0_local;
reg    v3_1_we0_local;
reg    v3_2_ce0_local;
reg   [3:0] v3_2_address0_local;
reg    v3_2_we0_local;
reg    v3_3_ce0_local;
reg   [3:0] v3_3_address0_local;
reg    v3_3_we0_local;
reg   [63:0] grp_fu_273_p0;
reg   [63:0] grp_fu_273_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_277_p0;
reg   [63:0] grp_fu_277_p1;
wire   [2:0] lshr_ln5_fu_307_p4;
wire    ap_block_pp0_stage1;
wire   [63:0] v162_fu_349_p17;
wire   [2:0] v162_fu_349_p18;
wire   [63:0] v164_fu_412_p2;
wire   [63:0] v164_fu_412_p4;
wire   [63:0] v164_fu_412_p6;
wire   [63:0] v164_fu_412_p8;
wire   [63:0] v164_fu_412_p9;
reg   [1:0] grp_fu_273_opcode;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to4;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v162_fu_349_p1;
wire   [2:0] v162_fu_349_p3;
wire   [2:0] v162_fu_349_p5;
wire   [2:0] v162_fu_349_p7;
wire  signed [2:0] v162_fu_349_p9;
wire  signed [2:0] v162_fu_349_p11;
wire  signed [2:0] v162_fu_349_p13;
wire  signed [2:0] v162_fu_349_p15;
wire   [1:0] v164_fu_412_p1;
wire   [1:0] v164_fu_412_p3;
wire  signed [1:0] v164_fu_412_p5;
wire  signed [1:0] v164_fu_412_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v159_fu_102 = 64'd0;
#0 v160_fu_106 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U1620(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_277_p0),.din1(grp_fu_277_p1),.ce(1'b1),.dout(grp_fu_277_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_x_U1621(.din0(v9_q0),.din1(v9_1_q0),.din2(v9_2_q0),.din3(v9_3_q0),.din4(v9_4_q0),.din5(v9_5_q0),.din6(v9_6_q0),.din7(v9_7_q0),.def(v162_fu_349_p17),.sel(v162_fu_349_p18),.dout(v162_fu_349_p19));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U1622(.din0(v164_fu_412_p2),.din1(v164_fu_412_p4),.din2(v164_fu_412_p6),.din3(v164_fu_412_p8),.def(v164_fu_412_p9),.sel(trunc_ln264_reg_521),.dout(v164_fu_412_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v159_fu_102 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v159_fu_102 <= grp_fu_7886_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln264_fu_295_p2 == 1'd0))) begin
            v160_fu_106 <= add_ln264_fu_301_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v160_fu_106 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln264_reg_477 <= icmp_ln264_fu_295_p2;
        icmp_ln264_reg_477_pp0_iter1_reg <= icmp_ln264_reg_477;
        icmp_ln264_reg_477_pp0_iter2_reg <= icmp_ln264_reg_477_pp0_iter1_reg;
        icmp_ln264_reg_477_pp0_iter3_reg <= icmp_ln264_reg_477_pp0_iter2_reg;
        v160_1_reg_470 <= ap_sig_allocacmp_v160_1;
        v3_0_addr_reg_536 <= zext_ln265_1_fu_389_p1;
        v3_0_addr_reg_536_pp0_iter2_reg <= v3_0_addr_reg_536;
        v3_1_addr_reg_541 <= zext_ln265_1_fu_389_p1;
        v3_1_addr_reg_541_pp0_iter2_reg <= v3_1_addr_reg_541;
        v3_2_addr_reg_546 <= zext_ln265_1_fu_389_p1;
        v3_2_addr_reg_546_pp0_iter2_reg <= v3_2_addr_reg_546;
        v3_3_addr_reg_551 <= zext_ln265_1_fu_389_p1;
        v3_3_addr_reg_551_pp0_iter2_reg <= v3_3_addr_reg_551;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln265_1_reg_526 <= {{v160_1_reg_470[5:2]}};
        trunc_ln264_reg_521 <= trunc_ln264_fu_334_p1;
        trunc_ln264_reg_521_pp0_iter1_reg <= trunc_ln264_reg_521;
        trunc_ln264_reg_521_pp0_iter2_reg <= trunc_ln264_reg_521_pp0_iter1_reg;
        v162_reg_531 <= v162_fu_349_p19;
        v164_reg_561 <= v164_fu_412_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v163_reg_556 <= grp_fu_277_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v165_reg_566 <= grp_fu_7886_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v166_reg_573 <= grp_fu_277_p2;
    end
end
always @ (*) begin
    if (((icmp_ln264_reg_477 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln264_reg_477_pp0_iter3_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_sig_allocacmp_v159_load_1 = grp_fu_7886_p_dout0;
    end else begin
        ap_sig_allocacmp_v159_load_1 = v159_fu_102;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v160_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v160_1 = v160_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_273_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_00001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_273_opcode = 2'd0;
    end else begin
        grp_fu_273_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_273_p0 = ap_sig_allocacmp_v159_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_273_p0 = v164_reg_561;
    end else begin
        grp_fu_273_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_273_p1 = v166_reg_573;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_273_p1 = v163_reg_556;
    end else begin
        grp_fu_273_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_277_p0 = v165_reg_566;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_277_p0 = v162_reg_531;
    end else begin
        grp_fu_277_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_277_p1 = v165_reg_566;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_277_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_277_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (icmp_ln264_reg_477_pp0_iter3_reg == 1'd1))) begin
        v161_1_out_ap_vld = 1'b1;
    end else begin
        v161_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_0_address0_local = v3_0_addr_reg_536_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_0_address0_local = zext_ln265_1_fu_389_p1;
    end else begin
        v3_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_0_ce0_local = 1'b1;
    end else begin
        v3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln264_reg_521_pp0_iter2_reg == 2'd0))) begin
        v3_0_we0_local = 1'b1;
    end else begin
        v3_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_1_address0_local = v3_1_addr_reg_541_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_address0_local = zext_ln265_1_fu_389_p1;
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln264_reg_521_pp0_iter2_reg == 2'd1))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_2_address0_local = v3_2_addr_reg_546_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_address0_local = zext_ln265_1_fu_389_p1;
    end else begin
        v3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln264_reg_521_pp0_iter2_reg == 2'd2))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v3_3_address0_local = v3_3_addr_reg_551_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_address0_local = zext_ln265_1_fu_389_p1;
    end else begin
        v3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln264_reg_521_pp0_iter2_reg == 2'd3))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_1_ce0_local = 1'b1;
    end else begin
        v9_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_2_ce0_local = 1'b1;
    end else begin
        v9_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_3_ce0_local = 1'b1;
    end else begin
        v9_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_4_ce0_local = 1'b1;
    end else begin
        v9_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_5_ce0_local = 1'b1;
    end else begin
        v9_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_6_ce0_local = 1'b1;
    end else begin
        v9_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_7_ce0_local = 1'b1;
    end else begin
        v9_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_ce0_local = 1'b1;
    end else begin
        v9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to4 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage3))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln264_fu_301_p2 = (ap_sig_allocacmp_v160_1 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
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
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln270_fu_435_p1 = v165_reg_566;
assign grp_fu_7886_p_ce = 1'b1;
assign grp_fu_7886_p_din0 = grp_fu_273_p0;
assign grp_fu_7886_p_din1 = grp_fu_273_p1;
assign grp_fu_7886_p_opcode = grp_fu_273_opcode;
assign icmp_ln264_fu_295_p2 = ((ap_sig_allocacmp_v160_1 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_307_p4 = {{ap_sig_allocacmp_v160_1[5:3]}};
assign trunc_ln264_fu_334_p1 = v160_1_reg_470[1:0];
assign v161_1_out = v159_fu_102;
assign v162_fu_349_p17 = 'bx;
assign v162_fu_349_p18 = v160_1_reg_470[2:0];
assign v164_fu_412_p2 = v3_0_q0;
assign v164_fu_412_p4 = v3_1_q0;
assign v164_fu_412_p6 = v3_2_q0;
assign v164_fu_412_p8 = v3_3_q0;
assign v164_fu_412_p9 = 'bx;
assign v3_0_address0 = v3_0_address0_local;
assign v3_0_ce0 = v3_0_ce0_local;
assign v3_0_d0 = bitcast_ln270_fu_435_p1;
assign v3_0_we0 = v3_0_we0_local;
assign v3_1_address0 = v3_1_address0_local;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = bitcast_ln270_fu_435_p1;
assign v3_1_we0 = v3_1_we0_local;
assign v3_2_address0 = v3_2_address0_local;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = bitcast_ln270_fu_435_p1;
assign v3_2_we0 = v3_2_we0_local;
assign v3_3_address0 = v3_3_address0_local;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = bitcast_ln270_fu_435_p1;
assign v3_3_we0 = v3_3_we0_local;
assign v9_1_address0 = zext_ln265_fu_317_p1;
assign v9_1_ce0 = v9_1_ce0_local;
assign v9_2_address0 = zext_ln265_fu_317_p1;
assign v9_2_ce0 = v9_2_ce0_local;
assign v9_3_address0 = zext_ln265_fu_317_p1;
assign v9_3_ce0 = v9_3_ce0_local;
assign v9_4_address0 = zext_ln265_fu_317_p1;
assign v9_4_ce0 = v9_4_ce0_local;
assign v9_5_address0 = zext_ln265_fu_317_p1;
assign v9_5_ce0 = v9_5_ce0_local;
assign v9_6_address0 = zext_ln265_fu_317_p1;
assign v9_6_ce0 = v9_6_ce0_local;
assign v9_7_address0 = zext_ln265_fu_317_p1;
assign v9_7_ce0 = v9_7_ce0_local;
assign v9_address0 = zext_ln265_fu_317_p1;
assign v9_ce0 = v9_ce0_local;
assign zext_ln265_1_fu_389_p1 = lshr_ln265_1_reg_526;
assign zext_ln265_fu_317_p1 = lshr_ln5_fu_307_p4;
endmodule 