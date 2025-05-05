module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_29_reload,B_26_reload,C_28_reload,D_29_reload,E_26_reload,W_address0,W_ce0,W_q0,W_2_address0,W_2_ce0,W_2_q0,W_4_address0,W_4_ce0,W_4_q0,W_6_address0,W_6_ce0,W_6_q0,W_1_address0,W_1_ce0,W_1_q0,W_3_address0,W_3_ce0,W_3_q0,W_5_address0,W_5_ce0,W_5_q0,W_7_address0,W_7_ce0,W_7_q0,A_25_out,A_25_out_ap_vld,B_19_out,B_19_out_ap_vld,E_25_out,E_25_out_ap_vld,D_25_out,D_25_out_ap_vld,E_20_out,E_20_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_29_reload;
input  [31:0] B_26_reload;
input  [31:0] C_28_reload;
input  [31:0] D_29_reload;
input  [31:0] E_26_reload;
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
output  [31:0] A_25_out;
output   A_25_out_ap_vld;
output  [31:0] B_19_out;
output   B_19_out_ap_vld;
output  [31:0] E_25_out;
output   E_25_out_ap_vld;
output  [31:0] D_25_out;
output   D_25_out_ap_vld;
output  [31:0] E_20_out;
output   E_20_out_ap_vld;
reg ap_idle;
reg A_25_out_ap_vld;
reg B_19_out_ap_vld;
reg E_25_out_ap_vld;
reg D_25_out_ap_vld;
reg E_20_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln124_reg_695;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_2_reg_689;
wire   [0:0] icmp_ln124_fu_326_p2;
reg   [31:0] E_6_reg_739;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_8_fu_361_p11;
reg   [31:0] tmp_8_reg_748;
wire   [31:0] tmp_9_fu_385_p11;
reg   [31:0] tmp_9_reg_753;
reg   [31:0] E_4_load_reg_758;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] B_5_fu_482_p2;
reg   [31:0] B_5_reg_763;
wire   [26:0] trunc_ln126_2_fu_510_p1;
reg   [26:0] trunc_ln126_2_reg_768;
reg   [4:0] lshr_ln126_2_reg_773;
wire   [31:0] or_ln126_4_fu_540_p2;
reg   [31:0] or_ln126_4_reg_778;
wire   [31:0] add_ln126_6_fu_603_p2;
reg   [31:0] add_ln126_6_reg_783;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_342_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_100;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_4_fu_104;
wire   [31:0] D_4_fu_502_p3;
reg   [31:0] B_fu_108;
reg   [31:0] B_3_fu_112;
wire   [31:0] A_fu_617_p2;
reg   [5:0] i_fu_116;
wire   [5:0] add_ln124_fu_568_p2;
reg   [5:0] ap_sig_allocacmp_i_2;
reg   [31:0] D_fu_120;
wire   [31:0] C_fu_560_p3;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_2_ce0_local;
reg    W_4_ce0_local;
reg    W_6_ce0_local;
reg    W_1_ce0_local;
reg    W_3_ce0_local;
reg    W_5_ce0_local;
reg    W_7_ce0_local;
wire   [2:0] lshr_ln100_6_fu_332_p4;
wire   [31:0] tmp_8_fu_361_p9;
wire   [2:0] trunc_ln100_fu_358_p1;
wire   [31:0] tmp_9_fu_385_p9;
wire   [31:0] or_ln126_fu_435_p2;
wire   [31:0] and_ln126_fu_440_p2;
wire   [31:0] and_ln126_1_fu_446_p2;
wire   [26:0] trunc_ln126_fu_421_p1;
wire   [4:0] lshr_ln5_fu_425_p4;
wire   [31:0] or_ln126_2_fu_457_p3;
wire   [31:0] add_ln126_1_fu_465_p2;
wire   [31:0] or_ln126_1_fu_451_p2;
wire   [31:0] add_ln126_fu_476_p2;
wire   [31:0] add_ln126_2_fu_470_p2;
wire   [1:0] trunc_ln126_1_fu_488_p1;
wire   [29:0] lshr_ln126_1_fu_492_p4;
wire   [31:0] or_ln126_3_fu_524_p2;
wire   [31:0] and_ln126_2_fu_529_p2;
wire   [31:0] and_ln126_3_fu_535_p2;
wire   [1:0] trunc_ln126_3_fu_546_p1;
wire   [29:0] lshr_ln126_3_fu_550_p4;
wire   [31:0] or_ln126_6_fu_592_p3;
wire   [31:0] add_ln126_5_fu_598_p2;
wire   [31:0] add_ln126_4_fu_612_p2;
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
wire   [2:0] tmp_8_fu_361_p1;
wire   [2:0] tmp_8_fu_361_p3;
wire  signed [2:0] tmp_8_fu_361_p5;
wire  signed [2:0] tmp_8_fu_361_p7;
wire   [2:0] tmp_9_fu_385_p1;
wire   [2:0] tmp_9_fu_385_p3;
wire  signed [2:0] tmp_9_fu_385_p5;
wire  signed [2:0] tmp_9_fu_385_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_100 = 32'd0;
#0 E_4_fu_104 = 32'd0;
#0 B_fu_108 = 32'd0;
#0 B_3_fu_112 = 32'd0;
#0 i_fu_116 = 6'd0;
#0 D_fu_120 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U58(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.def(tmp_8_fu_361_p9),.sel(trunc_ln100_fu_358_p1),.dout(tmp_8_fu_361_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U59(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.def(tmp_9_fu_385_p9),.sel(trunc_ln100_fu_358_p1),.dout(tmp_9_fu_385_p11));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        B_3_fu_112 <= A_29_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_3_fu_112 <= A_fu_617_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_108 <= B_26_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_fu_108 <= B_5_reg_763;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        D_fu_120 <= C_28_reload;
    end else if (((icmp_ln124_reg_695 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        D_fu_120 <= C_fu_560_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_4_fu_104 <= D_29_reload;
    end else if (((icmp_ln124_reg_695 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_4_fu_104 <= D_4_fu_502_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_fu_100 <= E_26_reload;
    end else if (((icmp_ln124_reg_695 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_fu_100 <= E_6_reg_739;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i_fu_116 <= 6'd40;
    end else if (((icmp_ln124_reg_695 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_116 <= add_ln124_fu_568_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_5_reg_763 <= B_5_fu_482_p2;
        E_4_load_reg_758 <= E_4_fu_104;
        lshr_ln126_2_reg_773 <= {{B_5_fu_482_p2[31:27]}};
        or_ln126_4_reg_778 <= or_ln126_4_fu_540_p2;
        trunc_ln126_2_reg_768 <= trunc_ln126_2_fu_510_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_6_reg_739 <= D_fu_120;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_6_reg_783 <= add_ln126_6_fu_603_p2;
        i_2_reg_689 <= ap_sig_allocacmp_i_2;
        icmp_ln124_reg_695 <= icmp_ln124_fu_326_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_8_reg_748 <= tmp_8_fu_361_p11;
        tmp_9_reg_753 <= tmp_9_fu_385_p11;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_695 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_25_out_ap_vld = 1'b1;
    end else begin
        A_25_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_695 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_19_out_ap_vld = 1'b1;
    end else begin
        B_19_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_695 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_25_out_ap_vld = 1'b1;
    end else begin
        D_25_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_695 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_20_out_ap_vld = 1'b1;
    end else begin
        E_20_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_695 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_25_out_ap_vld = 1'b1;
    end else begin
        E_25_out_ap_vld = 1'b0;
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
    if (((icmp_ln124_reg_695 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i_2 = 6'd40;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_116;
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
assign A_25_out = B_3_fu_112;
assign A_fu_617_p2 = (add_ln126_6_reg_783 + add_ln126_4_fu_612_p2);
assign B_19_out = B_fu_108;
assign B_5_fu_482_p2 = (add_ln126_fu_476_p2 + add_ln126_2_fu_470_p2);
assign C_fu_560_p3 = {{trunc_ln126_3_fu_546_p1}, {lshr_ln126_3_fu_550_p4}};
assign D_25_out = E_4_fu_104;
assign D_4_fu_502_p3 = {{trunc_ln126_1_fu_488_p1}, {lshr_ln126_1_fu_492_p4}};
assign E_20_out = E_fu_100;
assign E_25_out = D_fu_120;
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
assign add_ln124_fu_568_p2 = (i_2_reg_689 + 6'd2);
assign add_ln126_1_fu_465_p2 = ($signed(32'd2400959708) + $signed(tmp_8_reg_748));
assign add_ln126_2_fu_470_p2 = (or_ln126_2_fu_457_p3 + add_ln126_1_fu_465_p2);
assign add_ln126_4_fu_612_p2 = ($signed(E_4_load_reg_758) + $signed(32'd2400959708));
assign add_ln126_5_fu_598_p2 = (or_ln126_6_fu_592_p3 + tmp_9_reg_753);
assign add_ln126_6_fu_603_p2 = (add_ln126_5_fu_598_p2 + or_ln126_4_reg_778);
assign add_ln126_fu_476_p2 = (or_ln126_1_fu_451_p2 + E_fu_100);
assign and_ln126_1_fu_446_p2 = (E_6_reg_739 & E_4_fu_104);
assign and_ln126_2_fu_529_p2 = (or_ln126_3_fu_524_p2 & B_3_fu_112);
assign and_ln126_3_fu_535_p2 = (E_6_reg_739 & D_4_fu_502_p3);
assign and_ln126_fu_440_p2 = (or_ln126_fu_435_p2 & B_fu_108);
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
assign icmp_ln124_fu_326_p2 = ((ap_sig_allocacmp_i_2 < 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln100_6_fu_332_p4 = {{ap_sig_allocacmp_i_2[5:3]}};
assign lshr_ln126_1_fu_492_p4 = {{B_fu_108[31:2]}};
assign lshr_ln126_3_fu_550_p4 = {{B_3_fu_112[31:2]}};
assign lshr_ln5_fu_425_p4 = {{B_3_fu_112[31:27]}};
assign or_ln126_1_fu_451_p2 = (and_ln126_fu_440_p2 | and_ln126_1_fu_446_p2);
assign or_ln126_2_fu_457_p3 = {{trunc_ln126_fu_421_p1}, {lshr_ln5_fu_425_p4}};
assign or_ln126_3_fu_524_p2 = (E_6_reg_739 | D_4_fu_502_p3);
assign or_ln126_4_fu_540_p2 = (and_ln126_3_fu_535_p2 | and_ln126_2_fu_529_p2);
assign or_ln126_6_fu_592_p3 = {{trunc_ln126_2_reg_768}, {lshr_ln126_2_reg_773}};
assign or_ln126_fu_435_p2 = (E_6_reg_739 | E_4_fu_104);
assign tmp_8_fu_361_p9 = 'bx;
assign tmp_9_fu_385_p9 = 'bx;
assign trunc_ln100_fu_358_p1 = i_2_reg_689[2:0];
assign trunc_ln126_1_fu_488_p1 = B_fu_108[1:0];
assign trunc_ln126_2_fu_510_p1 = B_5_fu_482_p2[26:0];
assign trunc_ln126_3_fu_546_p1 = B_3_fu_112[1:0];
assign trunc_ln126_fu_421_p1 = B_3_fu_112[26:0];
assign zext_ln100_fu_342_p1 = lshr_ln100_6_fu_332_p4;
endmodule 