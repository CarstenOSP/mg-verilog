module stencil_stencil_Pipeline_stencil_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,r,c,lshr_ln5,filter_address0,filter_ce0,filter_q0,filter_address1,filter_ce1,filter_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,empty,temp_1_out,temp_1_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] r;
input  [5:0] c;
input  [3:0] lshr_ln5;
output  [3:0] filter_address0;
output   filter_ce0;
input  [31:0] filter_q0;
output  [3:0] filter_address1;
output   filter_ce1;
input  [31:0] filter_q1;
output  [10:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [10:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [10:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [10:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [10:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [10:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [10:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [10:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
input  [1:0] empty;
output  [31:0] temp_1_out;
output   temp_1_out_ap_vld;
reg ap_idle;
reg temp_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln10_reg_1082;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_426_p2;
reg   [31:0] reg_434;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_430_p2;
reg   [31:0] reg_438;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] tmp_8_reg_942;
reg   [1:0] k1_1_reg_968;
wire   [3:0] empty_14_fu_471_p2;
reg   [3:0] empty_14_reg_974;
wire   [6:0] empty_15_fu_482_p2;
reg   [6:0] empty_15_reg_982;
reg   [0:0] tmp_10_reg_1017;
reg  signed [31:0] filter_load_reg_1022;
wire  signed [31:0] tmp_fu_541_p11;
reg  signed [31:0] tmp_reg_1027;
reg  signed [31:0] filter_load_1_reg_1032;
wire   [0:0] icmp_ln10_fu_629_p2;
reg   [0:0] icmp_ln10_reg_1082_pp0_iter1_reg;
wire   [6:0] empty_17_fu_639_p2;
reg   [6:0] empty_17_reg_1086;
wire  signed [31:0] tmp_1_fu_683_p11;
reg  signed [31:0] tmp_1_reg_1097;
reg  signed [31:0] filter_load_2_reg_1102;
wire  signed [31:0] tmp_2_fu_706_p11;
reg  signed [31:0] tmp_2_reg_1107;
reg  signed [31:0] filter_load_4_reg_1117;
reg  signed [31:0] filter_load_3_reg_1167;
wire  signed [31:0] tmp_4_fu_817_p11;
reg  signed [31:0] tmp_4_reg_1192;
reg  signed [31:0] filter_load_5_reg_1197;
wire  signed [31:0] tmp_5_fu_840_p11;
reg  signed [31:0] tmp_5_reg_1202;
reg   [31:0] mul_ln13_reg_1207;
wire  signed [31:0] tmp_3_fu_863_p11;
reg  signed [31:0] tmp_3_reg_1212;
wire   [31:0] temp_3_fu_900_p2;
reg   [31:0] temp_3_reg_1217;
wire   [31:0] add_ln13_4_fu_907_p2;
reg   [31:0] add_ln13_4_reg_1222;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter1_stage2;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] p_cast13_fu_477_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_fu_496_p1;
wire   [63:0] zext_ln12_1_fu_522_p1;
wire   [63:0] zext_ln12_2_fu_580_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_3_fu_593_p1;
wire   [63:0] zext_ln12_4_fu_614_p1;
wire   [63:0] zext_ln12_6_fu_649_p1;
wire   [63:0] p_cast14_fu_734_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_7_fu_761_p1;
wire   [63:0] zext_ln12_8_fu_774_p1;
wire   [63:0] zext_ln12_9_fu_795_p1;
wire   [63:0] zext_ln12_5_fu_809_p1;
reg   [31:0] temp_fu_102;
wire   [31:0] temp_4_fu_918_p2;
wire    ap_loop_init;
reg   [1:0] k1_fu_106;
wire   [1:0] xor_ln_fu_670_p3;
reg   [1:0] ap_sig_allocacmp_k1_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage2_01001;
reg    filter_ce1_local;
reg   [3:0] filter_address1_local;
reg    filter_ce0_local;
reg   [3:0] filter_address0_local;
reg    orig_0_ce1_local;
reg   [10:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [10:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [10:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [10:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [10:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [10:0] orig_2_address0_local;
reg    orig_3_ce1_local;
reg   [10:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [10:0] orig_3_address0_local;
reg  signed [31:0] grp_fu_426_p0;
reg  signed [31:0] grp_fu_426_p1;
reg  signed [31:0] grp_fu_430_p0;
reg  signed [31:0] grp_fu_430_p1;
wire   [3:0] p_shl_fu_463_p3;
wire   [3:0] zext_ln8_1_fu_459_p1;
wire   [6:0] zext_ln8_fu_455_p1;
wire   [10:0] add_ln5_fu_488_p3;
wire   [1:0] tmp_7_fu_504_p4;
wire   [2:0] or_ln_fu_514_p3;
wire   [31:0] tmp_fu_541_p9;
wire   [12:0] tmp_6_fu_535_p3;
wire   [12:0] add_ln12_fu_564_p2;
wire   [10:0] lshr_ln_fu_570_p4;
wire   [3:0] add_ln12_1_fu_588_p2;
wire   [12:0] add_ln12_2_fu_598_p2;
wire   [10:0] lshr_ln12_1_fu_604_p4;
wire   [1:0] or_ln1_fu_622_p3;
wire   [6:0] zext_ln10_fu_635_p1;
wire   [3:0] add_ln12_3_fu_644_p2;
wire   [0:0] bit_sel_fu_654_p3;
wire   [0:0] xor_ln10_fu_661_p2;
wire   [0:0] trunc_ln10_fu_667_p1;
wire   [31:0] tmp_1_fu_683_p9;
wire   [31:0] tmp_2_fu_706_p9;
wire   [3:0] empty_16_fu_729_p2;
wire   [12:0] tmp_9_fu_739_p3;
wire   [12:0] add_ln12_4_fu_745_p2;
wire   [10:0] lshr_ln12_2_fu_751_p4;
wire   [3:0] add_ln12_5_fu_769_p2;
wire   [12:0] add_ln12_6_fu_779_p2;
wire   [10:0] lshr_ln12_3_fu_785_p4;
wire   [10:0] add_ln5_1_fu_803_p3;
wire   [31:0] tmp_4_fu_817_p9;
wire   [31:0] tmp_5_fu_840_p9;
wire   [31:0] tmp_3_fu_863_p9;
wire   [31:0] add_ln13_1_fu_889_p2;
wire   [31:0] add_ln13_fu_894_p2;
wire   [31:0] add_ln13_3_fu_913_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_723;
reg    ap_condition_726;
reg    ap_condition_729;
reg    ap_condition_732;
wire   [1:0] tmp_fu_541_p1;
wire   [1:0] tmp_fu_541_p3;
wire  signed [1:0] tmp_fu_541_p5;
wire  signed [1:0] tmp_fu_541_p7;
wire  signed [1:0] tmp_1_fu_683_p1;
wire   [1:0] tmp_1_fu_683_p3;
wire   [1:0] tmp_1_fu_683_p5;
wire  signed [1:0] tmp_1_fu_683_p7;
wire  signed [1:0] tmp_2_fu_706_p1;
wire  signed [1:0] tmp_2_fu_706_p3;
wire   [1:0] tmp_2_fu_706_p5;
wire   [1:0] tmp_2_fu_706_p7;
wire  signed [1:0] tmp_4_fu_817_p1;
wire   [1:0] tmp_4_fu_817_p3;
wire   [1:0] tmp_4_fu_817_p5;
wire  signed [1:0] tmp_4_fu_817_p7;
wire  signed [1:0] tmp_5_fu_840_p1;
wire  signed [1:0] tmp_5_fu_840_p3;
wire   [1:0] tmp_5_fu_840_p5;
wire   [1:0] tmp_5_fu_840_p7;
wire   [1:0] tmp_3_fu_863_p1;
wire   [1:0] tmp_3_fu_863_p3;
wire  signed [1:0] tmp_3_fu_863_p5;
wire  signed [1:0] tmp_3_fu_863_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 temp_fu_102 = 32'd0;
#0 k1_fu_106 = 2'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_426_p0),.din1(grp_fu_426_p1),.ce(1'b1),.dout(grp_fu_426_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_430_p0),.din1(grp_fu_430_p1),.ce(1'b1),.dout(grp_fu_430_p2));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U3(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_fu_541_p9),.sel(empty),.dout(tmp_fu_541_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U4(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_1_fu_683_p9),.sel(empty),.dout(tmp_1_fu_683_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U5(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_2_fu_706_p9),.sel(empty),.dout(tmp_2_fu_706_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U6(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_4_fu_817_p9),.sel(empty),.dout(tmp_4_fu_817_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U7(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_5_fu_840_p9),.sel(empty),.dout(tmp_5_fu_840_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U8(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_3_fu_863_p9),.sel(empty),.dout(tmp_3_fu_863_p11));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage2) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k1_fu_106 <= 2'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_fu_629_p2 == 1'd0))) begin
        k1_fu_106 <= xor_ln_fu_670_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_fu_102 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_fu_102 <= temp_4_fu_918_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_4_reg_1222 <= add_ln13_4_fu_907_p2;
        empty_14_reg_974 <= empty_14_fu_471_p2;
        empty_15_reg_982 <= empty_15_fu_482_p2;
        k1_1_reg_968 <= ap_sig_allocacmp_k1_1;
        tmp_10_reg_1017 <= ap_sig_allocacmp_k1_1[32'd1];
        tmp_4_reg_1192 <= tmp_4_fu_817_p11;
        tmp_5_reg_1202 <= tmp_5_fu_840_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        tmp_1_reg_1097 <= tmp_1_fu_683_p11;
        tmp_2_reg_1107 <= tmp_2_fu_706_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_17_reg_1086 <= empty_17_fu_639_p2;
        icmp_ln10_reg_1082 <= icmp_ln10_fu_629_p2;
        icmp_ln10_reg_1082_pp0_iter1_reg <= icmp_ln10_reg_1082;
        tmp_3_reg_1212 <= tmp_3_fu_863_p11;
        tmp_reg_1027 <= tmp_fu_541_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        filter_load_1_reg_1032 <= filter_q0;
        filter_load_reg_1022 <= filter_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        filter_load_2_reg_1102 <= filter_q1;
        filter_load_4_reg_1117 <= filter_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        filter_load_3_reg_1167 <= filter_q1;
        filter_load_5_reg_1197 <= filter_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_reg_1207 <= grp_fu_426_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_434 <= grp_fu_426_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_438 <= grp_fu_430_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_3_reg_1217 <= temp_3_fu_900_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10_reg_1082 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln10_reg_1082_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k1_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_k1_1 = k1_fu_106;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            filter_address0_local = zext_ln12_8_fu_774_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            filter_address0_local = zext_ln12_6_fu_649_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            filter_address0_local = zext_ln12_1_fu_522_p1;
        end else begin
            filter_address0_local = 'bx;
        end
    end else begin
        filter_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            filter_address1_local = p_cast14_fu_734_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            filter_address1_local = zext_ln12_3_fu_593_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            filter_address1_local = p_cast13_fu_477_p1;
        end else begin
            filter_address1_local = 'bx;
        end
    end else begin
        filter_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        filter_ce0_local = 1'b1;
    end else begin
        filter_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        filter_ce1_local = 1'b1;
    end else begin
        filter_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_426_p0 = filter_load_5_reg_1197;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_p0 = filter_load_2_reg_1102;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_426_p0 = filter_load_reg_1022;
    end else begin
        grp_fu_426_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_426_p1 = tmp_5_reg_1202;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_426_p1 = tmp_2_reg_1107;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_426_p1 = tmp_reg_1027;
    end else begin
        grp_fu_426_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_430_p0 = filter_load_3_reg_1167;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_430_p0 = filter_load_4_reg_1117;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_430_p0 = filter_load_1_reg_1032;
        end else begin
            grp_fu_430_p0 = 'bx;
        end
    end else begin
        grp_fu_430_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_430_p1 = tmp_3_reg_1212;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_430_p1 = tmp_4_reg_1192;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_430_p1 = tmp_1_reg_1097;
        end else begin
            grp_fu_430_p1 = 'bx;
        end
    end else begin
        grp_fu_430_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_5_fu_809_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd2))) begin
        orig_0_address0_local = zext_ln12_4_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd3))) begin
        orig_0_address0_local = zext_ln12_2_fu_580_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_726)) begin
            orig_0_address1_local = zext_ln12_9_fu_795_p1;
        end else if ((1'b1 == ap_condition_723)) begin
            orig_0_address1_local = zext_ln12_7_fu_761_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln12_fu_496_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_1082 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_8_reg_942 == 2'd2)) | ((icmp_ln10_reg_1082 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_8_reg_942 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_5_fu_809_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd3))) begin
        orig_1_address0_local = zext_ln12_4_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd0))) begin
        orig_1_address0_local = zext_ln12_2_fu_580_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_723)) begin
            orig_1_address1_local = zext_ln12_9_fu_795_p1;
        end else if ((1'b1 == ap_condition_729)) begin
            orig_1_address1_local = zext_ln12_7_fu_761_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln12_fu_496_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_1082 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_8_reg_942 == 2'd0)) | ((icmp_ln10_reg_1082 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_8_reg_942 == 2'd3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_5_fu_809_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd0))) begin
        orig_2_address0_local = zext_ln12_4_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd1))) begin
        orig_2_address0_local = zext_ln12_2_fu_580_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_729)) begin
            orig_2_address1_local = zext_ln12_9_fu_795_p1;
        end else if ((1'b1 == ap_condition_732)) begin
            orig_2_address1_local = zext_ln12_7_fu_761_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_2_address1_local = zext_ln12_fu_496_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_1082 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_8_reg_942 == 2'd1)) | ((icmp_ln10_reg_1082 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_8_reg_942 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_5_fu_809_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd1))) begin
        orig_3_address0_local = zext_ln12_4_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd2))) begin
        orig_3_address0_local = zext_ln12_2_fu_580_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_732)) begin
            orig_3_address1_local = zext_ln12_9_fu_795_p1;
        end else if ((1'b1 == ap_condition_726)) begin
            orig_3_address1_local = zext_ln12_7_fu_761_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_3_address1_local = zext_ln12_fu_496_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_8_reg_942 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln10_reg_1082 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_8_reg_942 == 2'd2)) | ((icmp_ln10_reg_1082 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_8_reg_942 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln10_reg_1082_pp0_iter1_reg == 1'd1))) begin
        temp_1_out_ap_vld = 1'b1;
    end else begin
        temp_1_out_ap_vld = 1'b0;
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
assign add_ln12_1_fu_588_p2 = (empty_14_reg_974 + 4'd2);
assign add_ln12_2_fu_598_p2 = (tmp_6_fu_535_p3 + 13'd2);
assign add_ln12_3_fu_644_p2 = (empty_14_reg_974 + 4'd4);
assign add_ln12_4_fu_745_p2 = (tmp_9_fu_739_p3 + 13'd1);
assign add_ln12_5_fu_769_p2 = (empty_14_reg_974 + 4'd5);
assign add_ln12_6_fu_779_p2 = (tmp_9_fu_739_p3 + 13'd2);
assign add_ln12_fu_564_p2 = (tmp_6_fu_535_p3 + 13'd1);
assign add_ln13_1_fu_889_p2 = (reg_434 + mul_ln13_reg_1207);
assign add_ln13_3_fu_913_p2 = (add_ln13_4_reg_1222 + reg_438);
assign add_ln13_4_fu_907_p2 = (reg_438 + reg_434);
assign add_ln13_fu_894_p2 = (add_ln13_1_fu_889_p2 + reg_438);
assign add_ln5_1_fu_803_p3 = {{empty_17_reg_1086}, {lshr_ln5}};
assign add_ln5_fu_488_p3 = {{empty_15_fu_482_p2}, {lshr_ln5}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_723 = ((icmp_ln10_reg_1082 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_8_reg_942 == 2'd3));
end
always @ (*) begin
    ap_condition_726 = ((icmp_ln10_reg_1082 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_8_reg_942 == 2'd2));
end
always @ (*) begin
    ap_condition_729 = ((icmp_ln10_reg_1082 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_8_reg_942 == 2'd0));
end
always @ (*) begin
    ap_condition_732 = ((icmp_ln10_reg_1082 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2) & (tmp_8_reg_942 == 2'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_654_p3 = k1_1_reg_968[2'd1];
assign empty_14_fu_471_p2 = (p_shl_fu_463_p3 - zext_ln8_1_fu_459_p1);
assign empty_15_fu_482_p2 = (zext_ln8_fu_455_p1 + r);
assign empty_16_fu_729_p2 = (empty_14_reg_974 + 4'd3);
assign empty_17_fu_639_p2 = (zext_ln10_fu_635_p1 + r);
assign filter_address0 = filter_address0_local;
assign filter_address1 = filter_address1_local;
assign filter_ce0 = filter_ce0_local;
assign filter_ce1 = filter_ce1_local;
assign icmp_ln10_fu_629_p2 = ((or_ln1_fu_622_p3 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln12_1_fu_604_p4 = {{add_ln12_2_fu_598_p2[12:2]}};
assign lshr_ln12_2_fu_751_p4 = {{add_ln12_4_fu_745_p2[12:2]}};
assign lshr_ln12_3_fu_785_p4 = {{add_ln12_6_fu_779_p2[12:2]}};
assign lshr_ln_fu_570_p4 = {{add_ln12_fu_564_p2[12:2]}};
assign or_ln1_fu_622_p3 = {{tmp_10_reg_1017}, {1'd1}};
assign or_ln_fu_514_p3 = {{tmp_7_fu_504_p4}, {1'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign p_cast13_fu_477_p1 = empty_14_fu_471_p2;
assign p_cast14_fu_734_p1 = empty_16_fu_729_p2;
assign p_shl_fu_463_p3 = {{ap_sig_allocacmp_k1_1}, {2'd0}};
assign temp_1_out = (add_ln13_fu_894_p2 + temp_fu_102);
assign temp_3_fu_900_p2 = (add_ln13_fu_894_p2 + temp_fu_102);
assign temp_4_fu_918_p2 = (add_ln13_3_fu_913_p2 + temp_3_reg_1217);
assign tmp_1_fu_683_p9 = 'bx;
assign tmp_2_fu_706_p9 = 'bx;
assign tmp_3_fu_863_p9 = 'bx;
assign tmp_4_fu_817_p9 = 'bx;
assign tmp_5_fu_840_p9 = 'bx;
assign tmp_6_fu_535_p3 = {{empty_15_reg_982}, {c}};
assign tmp_7_fu_504_p4 = {{empty_14_fu_471_p2[2:1]}};
assign tmp_8_reg_942 = empty;
assign tmp_9_fu_739_p3 = {{empty_17_reg_1086}, {c}};
assign tmp_fu_541_p9 = 'bx;
assign trunc_ln10_fu_667_p1 = k1_1_reg_968[0:0];
assign xor_ln10_fu_661_p2 = (bit_sel_fu_654_p3 ^ 1'd1);
assign xor_ln_fu_670_p3 = {{xor_ln10_fu_661_p2}, {trunc_ln10_fu_667_p1}};
assign zext_ln10_fu_635_p1 = or_ln1_fu_622_p3;
assign zext_ln12_1_fu_522_p1 = or_ln_fu_514_p3;
assign zext_ln12_2_fu_580_p1 = lshr_ln_fu_570_p4;
assign zext_ln12_3_fu_593_p1 = add_ln12_1_fu_588_p2;
assign zext_ln12_4_fu_614_p1 = lshr_ln12_1_fu_604_p4;
assign zext_ln12_5_fu_809_p1 = add_ln5_1_fu_803_p3;
assign zext_ln12_6_fu_649_p1 = add_ln12_3_fu_644_p2;
assign zext_ln12_7_fu_761_p1 = lshr_ln12_2_fu_751_p4;
assign zext_ln12_8_fu_774_p1 = add_ln12_5_fu_769_p2;
assign zext_ln12_9_fu_795_p1 = lshr_ln12_3_fu_785_p4;
assign zext_ln12_fu_496_p1 = add_ln5_fu_488_p3;
assign zext_ln8_1_fu_459_p1 = ap_sig_allocacmp_k1_1;
assign zext_ln8_fu_455_p1 = ap_sig_allocacmp_k1_1;
endmodule 