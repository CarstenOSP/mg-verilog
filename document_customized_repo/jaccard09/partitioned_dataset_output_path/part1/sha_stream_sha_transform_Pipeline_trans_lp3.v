
module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_2_address0,W_2_ce0,W_2_q0,W_4_address0,W_4_ce0,W_4_q0,W_6_address0,W_6_ce0,W_6_q0,W_1_address0,W_1_ce0,W_1_q0,W_3_address0,W_3_ce0,W_3_q0,W_5_address0,W_5_ce0,W_5_q0,W_7_address0,W_7_ce0,W_7_q0,A_41_out,A_41_out_ap_vld,B_1_out,B_1_out_ap_vld,E_41_out,E_41_out_ap_vld,D_41_out,D_41_out_ap_vld,E_2_out,E_2_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A;
input  [31:0] B;
input  [31:0] C;
input  [31:0] D;
input  [31:0] E;
output  [3:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [3:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [3:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [3:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [3:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [3:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [3:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [3:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [31:0] A_41_out;
output   A_41_out_ap_vld;
output  [31:0] B_1_out;
output   B_1_out_ap_vld;
output  [31:0] E_41_out;
output   E_41_out_ap_vld;
output  [31:0] D_41_out;
output   D_41_out_ap_vld;
output  [31:0] E_2_out;
output   E_2_out_ap_vld;
reg ap_idle;
reg A_41_out_ap_vld;
reg B_1_out_ap_vld;
reg E_41_out_ap_vld;
reg D_41_out_ap_vld;
reg E_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln116_reg_697;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] i_reg_691;
wire   [0:0] icmp_ln116_fu_326_p2;
reg   [31:0] E_44_reg_741;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_7_fu_361_p11;
reg   [31:0] tmp_7_reg_748;
wire   [31:0] tmp_8_fu_385_p11;
reg   [31:0] tmp_8_reg_753;
reg   [31:0] E_42_load_reg_758;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] B_41_fu_483_p2;
reg   [31:0] B_41_reg_763;
wire   [26:0] trunc_ln118_2_fu_511_p1;
reg   [26:0] trunc_ln118_2_reg_768;
reg   [4:0] lshr_ln118_2_reg_773;
wire   [31:0] or_ln118_2_fu_542_p2;
reg   [31:0] or_ln118_2_reg_778;
wire   [31:0] add_ln118_6_fu_605_p2;
reg   [31:0] add_ln118_6_reg_783;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_342_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_2_fu_100;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_42_fu_104;
wire   [31:0] D_23_fu_503_p3;
reg   [31:0] B_1_fu_108;
reg   [31:0] B_39_fu_112;
wire   [31:0] A_20_fu_619_p2;
reg   [4:0] i_1_fu_116;
wire   [4:0] add_ln116_fu_570_p2;
reg   [4:0] ap_sig_allocacmp_i;
reg   [31:0] D_20_fu_120;
wire   [31:0] C_3_fu_562_p3;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_2_ce0_local;
reg    W_4_ce0_local;
reg    W_6_ce0_local;
reg    W_1_ce0_local;
reg    W_3_ce0_local;
reg    W_5_ce0_local;
reg    W_7_ce0_local;
wire   [1:0] lshr_ln2_fu_332_p4;
wire   [31:0] tmp_7_fu_361_p9;
wire   [2:0] trunc_ln100_fu_358_p1;
wire   [31:0] tmp_8_fu_385_p9;
wire   [31:0] xor_ln118_fu_435_p2;
wire   [31:0] and_ln118_1_fu_446_p2;
wire   [31:0] and_ln118_fu_441_p2;
wire   [26:0] trunc_ln118_fu_421_p1;
wire   [4:0] lshr_ln3_fu_425_p4;
wire   [31:0] add_ln118_1_fu_466_p2;
wire   [31:0] or_ln118_1_fu_458_p3;
wire   [31:0] or_ln118_fu_452_p2;
wire   [31:0] add_ln118_fu_477_p2;
wire   [31:0] add_ln118_2_fu_471_p2;
wire   [1:0] trunc_ln118_1_fu_489_p1;
wire   [29:0] lshr_ln118_1_fu_493_p4;
wire   [31:0] xor_ln118_1_fu_525_p2;
wire   [31:0] and_ln118_2_fu_531_p2;
wire   [31:0] and_ln118_3_fu_537_p2;
wire   [1:0] trunc_ln118_3_fu_548_p1;
wire   [29:0] lshr_ln118_3_fu_552_p4;
wire   [31:0] or_ln118_4_fu_594_p3;
wire   [31:0] add_ln118_5_fu_600_p2;
wire   [31:0] add_ln118_4_fu_615_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_7_fu_361_p1;
wire   [2:0] tmp_7_fu_361_p3;
wire  signed [2:0] tmp_7_fu_361_p5;
wire  signed [2:0] tmp_7_fu_361_p7;
wire   [2:0] tmp_8_fu_385_p1;
wire   [2:0] tmp_8_fu_385_p3;
wire  signed [2:0] tmp_8_fu_385_p5;
wire  signed [2:0] tmp_8_fu_385_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_2_fu_100 = 32'd0;
#0 E_42_fu_104 = 32'd0;
#0 B_1_fu_108 = 32'd0;
#0 B_39_fu_112 = 32'd0;
#0 i_1_fu_116 = 5'd0;
#0 D_20_fu_120 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U25(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.def(tmp_7_fu_361_p9),.sel(trunc_ln100_fu_358_p1),.dout(tmp_7_fu_361_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U26(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.def(tmp_8_fu_385_p9),.sel(trunc_ln100_fu_358_p1),.dout(tmp_8_fu_385_p11));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_1_fu_108 <= B;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_108 <= B_41_reg_763;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_39_fu_112 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_39_fu_112 <= A_20_fu_619_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_20_fu_120 <= C;
    end else if (((icmp_ln116_reg_697 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        D_20_fu_120 <= C_3_fu_562_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_100 <= E;
    end else if (((icmp_ln116_reg_697 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_2_fu_100 <= E_44_reg_741;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_42_fu_104 <= D;
    end else if (((icmp_ln116_reg_697 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_42_fu_104 <= D_23_fu_503_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_116 <= 5'd0;
    end else if (((icmp_ln116_reg_697 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_1_fu_116 <= add_ln116_fu_570_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_41_reg_763 <= B_41_fu_483_p2;
        E_42_load_reg_758 <= E_42_fu_104;
        lshr_ln118_2_reg_773 <= {{B_41_fu_483_p2[31:27]}};
        or_ln118_2_reg_778 <= or_ln118_2_fu_542_p2;
        trunc_ln118_2_reg_768 <= trunc_ln118_2_fu_511_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_44_reg_741 <= D_20_fu_120;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_6_reg_783 <= add_ln118_6_fu_605_p2;
        i_reg_691 <= ap_sig_allocacmp_i;
        icmp_ln116_reg_697 <= icmp_ln116_fu_326_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_7_reg_748 <= tmp_7_fu_361_p11;
        tmp_8_reg_753 <= tmp_8_fu_385_p11;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_697 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_41_out_ap_vld = 1'b1;
    end else begin
        A_41_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_697 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_out_ap_vld = 1'b1;
    end else begin
        B_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_697 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_41_out_ap_vld = 1'b1;
    end else begin
        D_41_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_697 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_2_out_ap_vld = 1'b1;
    end else begin
        E_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_697 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_41_out_ap_vld = 1'b1;
    end else begin
        E_41_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_697 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_116;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign A_20_fu_619_p2 = (add_ln118_6_reg_783 + add_ln118_4_fu_615_p2);
assign A_41_out = B_39_fu_112;
assign B_1_out = B_1_fu_108;
assign B_41_fu_483_p2 = (add_ln118_fu_477_p2 + add_ln118_2_fu_471_p2);
assign C_3_fu_562_p3 = {{trunc_ln118_3_fu_548_p1}, {lshr_ln118_3_fu_552_p4}};
assign D_23_fu_503_p3 = {{trunc_ln118_1_fu_489_p1}, {lshr_ln118_1_fu_493_p4}};
assign D_41_out = E_42_fu_104;
assign E_2_out = E_2_fu_100;
assign E_41_out = D_20_fu_120;
assign W_1_address0 = zext_ln100_fu_342_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_342_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_342_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_342_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_342_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_342_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_342_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_address0 = zext_ln100_fu_342_p1;
assign W_ce0 = W_ce0_local;
assign add_ln116_fu_570_p2 = (i_reg_691 + 5'd2);
assign add_ln118_1_fu_466_p2 = (tmp_7_reg_748 + 32'd1518500249);
assign add_ln118_2_fu_471_p2 = (add_ln118_1_fu_466_p2 + or_ln118_1_fu_458_p3);
assign add_ln118_4_fu_615_p2 = (E_42_load_reg_758 + or_ln118_2_reg_778);
assign add_ln118_5_fu_600_p2 = (tmp_8_reg_753 + 32'd1518500249);
assign add_ln118_6_fu_605_p2 = (or_ln118_4_fu_594_p3 + add_ln118_5_fu_600_p2);
assign add_ln118_fu_477_p2 = (or_ln118_fu_452_p2 + E_2_fu_100);
assign and_ln118_1_fu_446_p2 = (xor_ln118_fu_435_p2 & E_42_fu_104);
assign and_ln118_2_fu_531_p2 = (D_23_fu_503_p3 & B_39_fu_112);
assign and_ln118_3_fu_537_p2 = (xor_ln118_1_fu_525_p2 & E_44_reg_741);
assign and_ln118_fu_441_p2 = (E_44_reg_741 & B_1_fu_108);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln116_fu_326_p2 = ((ap_sig_allocacmp_i < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_1_fu_493_p4 = {{B_1_fu_108[31:2]}};
assign lshr_ln118_3_fu_552_p4 = {{B_39_fu_112[31:2]}};
assign lshr_ln2_fu_332_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign lshr_ln3_fu_425_p4 = {{B_39_fu_112[31:27]}};
assign or_ln118_1_fu_458_p3 = {{trunc_ln118_fu_421_p1}, {lshr_ln3_fu_425_p4}};
assign or_ln118_2_fu_542_p2 = (and_ln118_3_fu_537_p2 | and_ln118_2_fu_531_p2);
assign or_ln118_4_fu_594_p3 = {{trunc_ln118_2_reg_768}, {lshr_ln118_2_reg_773}};
assign or_ln118_fu_452_p2 = (and_ln118_fu_441_p2 | and_ln118_1_fu_446_p2);
assign tmp_7_fu_361_p9 = 'bx;
assign tmp_8_fu_385_p9 = 'bx;
assign trunc_ln100_fu_358_p1 = i_reg_691[2:0];
assign trunc_ln118_1_fu_489_p1 = B_1_fu_108[1:0];
assign trunc_ln118_2_fu_511_p1 = B_41_fu_483_p2[26:0];
assign trunc_ln118_3_fu_548_p1 = B_39_fu_112[1:0];
assign trunc_ln118_fu_421_p1 = B_39_fu_112[26:0];
assign xor_ln118_1_fu_525_p2 = (32'd4294967295 ^ B_39_fu_112);
assign xor_ln118_fu_435_p2 = (32'd4294967295 ^ B_1_fu_108);
assign zext_ln100_fu_342_p1 = lshr_ln2_fu_332_p4;
endmodule 
