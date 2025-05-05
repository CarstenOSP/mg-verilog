module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_7_q0,W_7_address1,W_7_ce1,W_7_q1,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_6_q0,W_6_address1,W_6_ce1,W_6_q1,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_5_q0,W_5_address1,W_5_ce1,W_5_q1,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_4_q0,W_4_address1,W_4_ce1,W_4_q1,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_q0,W_3_address1,W_3_ce1,W_3_q1,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_q0,W_2_address1,W_2_ce1,W_2_q1,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_1_address1,W_1_ce1,W_1_q1,W_address0,W_ce0,W_we0,W_d0,W_q0,W_address1,W_ce1,W_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] W_7_address0;
output   W_7_ce0;
output   W_7_we0;
output  [31:0] W_7_d0;
input  [31:0] W_7_q0;
output  [3:0] W_7_address1;
output   W_7_ce1;
input  [31:0] W_7_q1;
output  [3:0] W_6_address0;
output   W_6_ce0;
output   W_6_we0;
output  [31:0] W_6_d0;
input  [31:0] W_6_q0;
output  [3:0] W_6_address1;
output   W_6_ce1;
input  [31:0] W_6_q1;
output  [3:0] W_5_address0;
output   W_5_ce0;
output   W_5_we0;
output  [31:0] W_5_d0;
input  [31:0] W_5_q0;
output  [3:0] W_5_address1;
output   W_5_ce1;
input  [31:0] W_5_q1;
output  [3:0] W_4_address0;
output   W_4_ce0;
output   W_4_we0;
output  [31:0] W_4_d0;
input  [31:0] W_4_q0;
output  [3:0] W_4_address1;
output   W_4_ce1;
input  [31:0] W_4_q1;
output  [3:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
input  [31:0] W_3_q0;
output  [3:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [3:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
input  [31:0] W_2_q0;
output  [3:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
output  [3:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [3:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [3:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
output  [3:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln106_fu_484_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [6:0] i_3_reg_947;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln106_reg_961;
wire   [2:0] trunc_ln106_1_fu_490_p1;
reg   [2:0] trunc_ln106_1_reg_965;
reg   [3:0] lshr_ln_reg_977;
wire    ap_block_pp0_stage1_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln108_fu_521_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln108_1_fu_544_p1;
wire   [63:0] zext_ln108_2_fu_567_p1;
wire   [63:0] zext_ln108_3_fu_591_p1;
wire   [63:0] zext_ln108_4_fu_614_p1;
wire   [63:0] zext_ln108_5_fu_637_p1;
wire   [63:0] zext_ln108_6_fu_660_p1;
wire   [63:0] zext_ln108_7_fu_683_p1;
wire   [63:0] zext_ln99_fu_701_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_80;
wire   [6:0] add_ln106_fu_691_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    W_1_ce0_local;
reg   [3:0] W_1_address0_local;
reg    W_1_ce1_local;
reg    W_1_we0_local;
wire   [31:0] xor_ln108_5_fu_930_p2;
reg    W_3_ce0_local;
reg   [3:0] W_3_address0_local;
reg    W_3_ce1_local;
reg    W_3_we0_local;
reg    W_5_ce0_local;
reg   [3:0] W_5_address0_local;
reg    W_5_ce1_local;
reg    W_5_we0_local;
reg    W_7_ce0_local;
reg   [3:0] W_7_address0_local;
reg    W_7_ce1_local;
reg    W_7_we0_local;
reg    W_ce1_local;
reg    W_ce0_local;
reg   [3:0] W_address0_local;
reg    W_we0_local;
wire   [31:0] xor_ln108_2_fu_816_p2;
reg    W_2_ce1_local;
reg    W_2_ce0_local;
reg   [3:0] W_2_address0_local;
reg    W_2_we0_local;
reg    W_4_ce1_local;
reg    W_4_ce0_local;
reg   [3:0] W_4_address0_local;
reg    W_4_we0_local;
reg    W_6_ce1_local;
reg    W_6_ce0_local;
reg   [3:0] W_6_address0_local;
reg    W_6_we0_local;
wire   [6:0] add_ln108_fu_506_p2;
wire   [3:0] lshr_ln1_fu_511_p4;
wire   [6:0] add_ln108_1_fu_529_p2;
wire   [3:0] lshr_ln108_1_fu_534_p4;
wire   [6:0] add_ln108_2_fu_552_p2;
wire   [3:0] lshr_ln108_2_fu_557_p4;
wire   [5:0] trunc_ln106_fu_494_p1;
wire   [5:0] add_ln108_3_fu_575_p2;
wire   [2:0] lshr_ln108_3_fu_581_p4;
wire   [6:0] add_ln108_4_fu_599_p2;
wire   [3:0] lshr_ln108_4_fu_604_p4;
wire   [6:0] add_ln108_5_fu_622_p2;
wire   [3:0] lshr_ln108_5_fu_627_p4;
wire   [6:0] add_ln108_6_fu_645_p2;
wire   [3:0] lshr_ln108_6_fu_650_p4;
wire   [6:0] add_ln108_7_fu_668_p2;
wire   [3:0] lshr_ln108_7_fu_673_p4;
wire   [31:0] tmp_fu_712_p9;
wire   [31:0] tmp_1_fu_735_p9;
wire   [31:0] tmp_2_fu_758_p9;
wire   [31:0] tmp_3_fu_781_p9;
wire   [31:0] tmp_fu_712_p11;
wire   [31:0] tmp_2_fu_758_p11;
wire   [31:0] tmp_1_fu_735_p11;
wire   [31:0] tmp_3_fu_781_p11;
wire   [31:0] xor_ln108_1_fu_810_p2;
wire   [31:0] xor_ln108_fu_804_p2;
wire   [31:0] tmp_4_fu_826_p9;
wire   [31:0] tmp_5_fu_849_p9;
wire   [31:0] tmp_6_fu_872_p9;
wire   [31:0] tmp_7_fu_895_p9;
wire   [31:0] tmp_4_fu_826_p11;
wire   [31:0] tmp_6_fu_872_p11;
wire   [31:0] tmp_5_fu_849_p11;
wire   [31:0] tmp_7_fu_895_p11;
wire   [31:0] xor_ln108_4_fu_924_p2;
wire   [31:0] xor_ln108_3_fu_918_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire  signed [2:0] tmp_fu_712_p1;
wire  signed [2:0] tmp_fu_712_p3;
wire   [2:0] tmp_fu_712_p5;
wire   [2:0] tmp_fu_712_p7;
wire   [2:0] tmp_1_fu_735_p1;
wire   [2:0] tmp_1_fu_735_p3;
wire  signed [2:0] tmp_1_fu_735_p5;
wire  signed [2:0] tmp_1_fu_735_p7;
wire  signed [2:0] tmp_2_fu_758_p1;
wire   [2:0] tmp_2_fu_758_p3;
wire   [2:0] tmp_2_fu_758_p5;
wire  signed [2:0] tmp_2_fu_758_p7;
wire   [2:0] tmp_3_fu_781_p1;
wire   [2:0] tmp_3_fu_781_p3;
wire  signed [2:0] tmp_3_fu_781_p5;
wire  signed [2:0] tmp_3_fu_781_p7;
wire   [2:0] tmp_4_fu_826_p1;
wire  signed [2:0] tmp_4_fu_826_p3;
wire  signed [2:0] tmp_4_fu_826_p5;
wire   [2:0] tmp_4_fu_826_p7;
wire   [2:0] tmp_5_fu_849_p1;
wire   [2:0] tmp_5_fu_849_p3;
wire  signed [2:0] tmp_5_fu_849_p5;
wire  signed [2:0] tmp_5_fu_849_p7;
wire  signed [2:0] tmp_6_fu_872_p1;
wire   [2:0] tmp_6_fu_872_p3;
wire   [2:0] tmp_6_fu_872_p5;
wire  signed [2:0] tmp_6_fu_872_p7;
wire   [2:0] tmp_7_fu_895_p1;
wire   [2:0] tmp_7_fu_895_p3;
wire  signed [2:0] tmp_7_fu_895_p5;
wire  signed [2:0] tmp_7_fu_895_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_80 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h4 ),.din0_WIDTH( 32 ),.CASE1( 3'h6 ),.din1_WIDTH( 32 ),.CASE2( 3'h0 ),.din2_WIDTH( 32 ),.CASE3( 3'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U6(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.def(tmp_fu_712_p9),.sel(trunc_ln106_1_reg_965),.dout(tmp_fu_712_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U7(.din0(W_q1),.din1(W_2_q1),.din2(W_4_q1),.din3(W_6_q1),.def(tmp_1_fu_735_p9),.sel(trunc_ln106_1_reg_965),.dout(tmp_1_fu_735_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U8(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.def(tmp_2_fu_758_p9),.sel(trunc_ln106_1_reg_965),.dout(tmp_2_fu_758_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U9(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.def(tmp_3_fu_781_p9),.sel(trunc_ln106_1_reg_965),.dout(tmp_3_fu_781_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h2 ),.din0_WIDTH( 32 ),.CASE1( 3'h4 ),.din1_WIDTH( 32 ),.CASE2( 3'h6 ),.din2_WIDTH( 32 ),.CASE3( 3'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U10(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.def(tmp_4_fu_826_p9),.sel(trunc_ln106_1_reg_965),.dout(tmp_4_fu_826_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U11(.din0(W_1_q1),.din1(W_3_q1),.din2(W_5_q1),.din3(W_7_q1),.def(tmp_5_fu_849_p9),.sel(trunc_ln106_1_reg_965),.dout(tmp_5_fu_849_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h6 ),.din0_WIDTH( 32 ),.CASE1( 3'h0 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h4 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U12(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.def(tmp_6_fu_872_p9),.sel(trunc_ln106_1_reg_965),.dout(tmp_6_fu_872_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U13(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.def(tmp_7_fu_895_p9),.sel(trunc_ln106_1_reg_965),.dout(tmp_7_fu_895_p11));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_80 <= 7'd16;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_80 <= add_ln106_fu_691_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_3_reg_947 <= ap_sig_allocacmp_i_3;
        icmp_ln106_reg_961 <= icmp_ln106_fu_484_p2;
        trunc_ln106_1_reg_965 <= trunc_ln106_1_fu_490_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln_reg_977 <= {{i_3_reg_947[6:3]}};
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_address0_local = zext_ln99_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd0) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_address0_local = zext_ln108_7_fu_683_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd6) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_address0_local = zext_ln108_6_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd4) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_address0_local = zext_ln108_fu_521_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd0) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd6) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd4) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_965 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_address0_local = zext_ln99_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd4) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_address0_local = zext_ln108_4_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd2) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_address0_local = zext_ln108_3_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd0) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_address0_local = zext_ln108_2_fu_567_p1;
    end else begin
        W_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd2) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd0) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd4) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_965 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_address0_local = zext_ln99_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd2) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_address0_local = zext_ln108_7_fu_683_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd0) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_address0_local = zext_ln108_6_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd6) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_address0_local = zext_ln108_fu_521_p1;
    end else begin
        W_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd2) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd0) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd6) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_965 == 3'd2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_address0_local = zext_ln99_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd6) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_4_address0_local = zext_ln108_4_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd4) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_4_address0_local = zext_ln108_3_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd2) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_4_address0_local = zext_ln108_2_fu_567_p1;
    end else begin
        W_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd2) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd6) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd4) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_4_ce1_local = 1'b1;
    end else begin
        W_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_965 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_we0_local = 1'b1;
    end else begin
        W_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_address0_local = zext_ln99_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd4) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_5_address0_local = zext_ln108_7_fu_683_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd2) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_5_address0_local = zext_ln108_6_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd0) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_5_address0_local = zext_ln108_fu_521_p1;
    end else begin
        W_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd2) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd0) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd4) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_5_ce1_local = 1'b1;
    end else begin
        W_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_965 == 3'd4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_we0_local = 1'b1;
    end else begin
        W_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_address0_local = zext_ln99_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd0) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_6_address0_local = zext_ln108_4_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd6) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_6_address0_local = zext_ln108_3_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd4) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_6_address0_local = zext_ln108_2_fu_567_p1;
    end else begin
        W_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd0) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd6) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd4) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_6_ce1_local = 1'b1;
    end else begin
        W_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_reg_965 == 3'd2) & ~(trunc_ln106_1_reg_965 == 3'd0) & ~(trunc_ln106_1_reg_965 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_we0_local = 1'b1;
    end else begin
        W_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_address0_local = zext_ln99_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd6) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_7_address0_local = zext_ln108_7_fu_683_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd4) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_7_address0_local = zext_ln108_6_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd2) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_7_address0_local = zext_ln108_fu_521_p1;
    end else begin
        W_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd2) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd6) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd4) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_reg_965 == 3'd2) & ~(trunc_ln106_1_reg_965 == 3'd0) & ~(trunc_ln106_1_reg_965 == 3'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_we0_local = 1'b1;
    end else begin
        W_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_address0_local = zext_ln99_fu_701_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd2) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_address0_local = zext_ln108_4_fu_614_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd0) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_address0_local = zext_ln108_3_fu_591_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (trunc_ln106_1_reg_965 == 3'd6) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_address0_local = zext_ln108_2_fu_567_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd2) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd0) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (trunc_ln106_1_reg_965 == 3'd6) & (icmp_ln106_reg_961 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (trunc_ln106_1_reg_965 == 3'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_484_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_80;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign W_1_address0 = W_1_address0_local;
assign W_1_address1 = zext_ln108_5_fu_637_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_d0 = xor_ln108_5_fu_930_p2;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = W_2_address0_local;
assign W_2_address1 = zext_ln108_1_fu_544_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_d0 = xor_ln108_2_fu_816_p2;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = W_3_address0_local;
assign W_3_address1 = zext_ln108_5_fu_637_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_d0 = xor_ln108_5_fu_930_p2;
assign W_3_we0 = W_3_we0_local;
assign W_4_address0 = W_4_address0_local;
assign W_4_address1 = zext_ln108_1_fu_544_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_4_d0 = xor_ln108_2_fu_816_p2;
assign W_4_we0 = W_4_we0_local;
assign W_5_address0 = W_5_address0_local;
assign W_5_address1 = zext_ln108_5_fu_637_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_5_d0 = xor_ln108_5_fu_930_p2;
assign W_5_we0 = W_5_we0_local;
assign W_6_address0 = W_6_address0_local;
assign W_6_address1 = zext_ln108_1_fu_544_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_6_d0 = xor_ln108_2_fu_816_p2;
assign W_6_we0 = W_6_we0_local;
assign W_7_address0 = W_7_address0_local;
assign W_7_address1 = zext_ln108_5_fu_637_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_7_d0 = xor_ln108_5_fu_930_p2;
assign W_7_we0 = W_7_we0_local;
assign W_address0 = W_address0_local;
assign W_address1 = zext_ln108_1_fu_544_p1;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = xor_ln108_2_fu_816_p2;
assign W_we0 = W_we0_local;
assign add_ln106_fu_691_p2 = (i_3_reg_947 + 7'd2);
assign add_ln108_1_fu_529_p2 = ($signed(i_3_reg_947) + $signed(7'd120));
assign add_ln108_2_fu_552_p2 = ($signed(i_3_reg_947) + $signed(7'd114));
assign add_ln108_3_fu_575_p2 = ($signed(trunc_ln106_fu_494_p1) + $signed(6'd48));
assign add_ln108_4_fu_599_p2 = ($signed(i_3_reg_947) + $signed(7'd126));
assign add_ln108_5_fu_622_p2 = ($signed(i_3_reg_947) + $signed(7'd121));
assign add_ln108_6_fu_645_p2 = ($signed(i_3_reg_947) + $signed(7'd115));
assign add_ln108_7_fu_668_p2 = ($signed(i_3_reg_947) + $signed(7'd113));
assign add_ln108_fu_506_p2 = ($signed(i_3_reg_947) + $signed(7'd125));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_484_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_1_fu_534_p4 = {{add_ln108_1_fu_529_p2[6:3]}};
assign lshr_ln108_2_fu_557_p4 = {{add_ln108_2_fu_552_p2[6:3]}};
assign lshr_ln108_3_fu_581_p4 = {{add_ln108_3_fu_575_p2[5:3]}};
assign lshr_ln108_4_fu_604_p4 = {{add_ln108_4_fu_599_p2[6:3]}};
assign lshr_ln108_5_fu_627_p4 = {{add_ln108_5_fu_622_p2[6:3]}};
assign lshr_ln108_6_fu_650_p4 = {{add_ln108_6_fu_645_p2[6:3]}};
assign lshr_ln108_7_fu_673_p4 = {{add_ln108_7_fu_668_p2[6:3]}};
assign lshr_ln1_fu_511_p4 = {{add_ln108_fu_506_p2[6:3]}};
assign tmp_1_fu_735_p9 = 'bx;
assign tmp_2_fu_758_p9 = 'bx;
assign tmp_3_fu_781_p9 = 'bx;
assign tmp_4_fu_826_p9 = 'bx;
assign tmp_5_fu_849_p9 = 'bx;
assign tmp_6_fu_872_p9 = 'bx;
assign tmp_7_fu_895_p9 = 'bx;
assign tmp_fu_712_p9 = 'bx;
assign trunc_ln106_1_fu_490_p1 = ap_sig_allocacmp_i_3[2:0];
assign trunc_ln106_fu_494_p1 = i_3_reg_947[5:0];
assign xor_ln108_1_fu_810_p2 = (tmp_3_fu_781_p11 ^ tmp_1_fu_735_p11);
assign xor_ln108_2_fu_816_p2 = (xor_ln108_fu_804_p2 ^ xor_ln108_1_fu_810_p2);
assign xor_ln108_3_fu_918_p2 = (tmp_6_fu_872_p11 ^ tmp_4_fu_826_p11);
assign xor_ln108_4_fu_924_p2 = (tmp_7_fu_895_p11 ^ tmp_5_fu_849_p11);
assign xor_ln108_5_fu_930_p2 = (xor_ln108_4_fu_924_p2 ^ xor_ln108_3_fu_918_p2);
assign xor_ln108_fu_804_p2 = (tmp_fu_712_p11 ^ tmp_2_fu_758_p11);
assign zext_ln108_1_fu_544_p1 = lshr_ln108_1_fu_534_p4;
assign zext_ln108_2_fu_567_p1 = lshr_ln108_2_fu_557_p4;
assign zext_ln108_3_fu_591_p1 = lshr_ln108_3_fu_581_p4;
assign zext_ln108_4_fu_614_p1 = lshr_ln108_4_fu_604_p4;
assign zext_ln108_5_fu_637_p1 = lshr_ln108_5_fu_627_p4;
assign zext_ln108_6_fu_660_p1 = lshr_ln108_6_fu_650_p4;
assign zext_ln108_7_fu_683_p1 = lshr_ln108_7_fu_673_p4;
assign zext_ln108_fu_521_p1 = lshr_ln1_fu_511_p4;
assign zext_ln99_fu_701_p1 = lshr_ln_reg_977;
endmodule 