module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,B_12_reload,B_4_reload,D_12_reload,E_12_reload,E_4_reload,W_address0,W_ce0,W_q0,W_2_address0,W_2_ce0,W_2_q0,W_4_address0,W_4_ce0,W_4_q0,W_6_address0,W_6_ce0,W_6_q0,W_8_address0,W_8_ce0,W_8_q0,W_10_address0,W_10_ce0,W_10_q0,W_12_address0,W_12_ce0,W_12_q0,W_14_address0,W_14_ce0,W_14_q0,W_1_address0,W_1_ce0,W_1_q0,W_3_address0,W_3_ce0,W_3_q0,W_5_address0,W_5_ce0,W_5_q0,W_7_address0,W_7_ce0,W_7_q0,W_9_address0,W_9_ce0,W_9_q0,W_11_address0,W_11_ce0,W_11_q0,W_13_address0,W_13_ce0,W_13_q0,W_15_address0,W_15_ce0,W_15_q0,A_13_out,A_13_out_ap_vld,B_5_out,B_5_out_ap_vld,E_13_out,E_13_out_ap_vld,D_13_out,D_13_out_ap_vld,E_6_out,E_6_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] B_12_reload;
input  [31:0] B_4_reload;
input  [31:0] D_12_reload;
input  [31:0] E_12_reload;
input  [31:0] E_4_reload;
output  [2:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [2:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [2:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [2:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [2:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [2:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [2:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [2:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [2:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [2:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [2:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [2:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [2:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [2:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [2:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [2:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [31:0] A_13_out;
output   A_13_out_ap_vld;
output  [31:0] B_5_out;
output   B_5_out_ap_vld;
output  [31:0] E_13_out;
output   E_13_out_ap_vld;
output  [31:0] D_13_out;
output   D_13_out_ap_vld;
output  [31:0] E_6_out;
output   E_6_out_ap_vld;
reg ap_idle;
reg A_13_out_ap_vld;
reg B_5_out_ap_vld;
reg E_13_out_ap_vld;
reg D_13_out_ap_vld;
reg E_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln124_reg_863;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_2_reg_857;
wire   [0:0] icmp_ln124_fu_454_p2;
reg   [31:0] E_6_reg_947;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_6_fu_497_p19;
reg   [31:0] tmp_6_reg_956;
wire   [31:0] tmp_7_fu_537_p19;
reg   [31:0] tmp_7_reg_961;
reg   [31:0] E_4_load_reg_966;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] B_5_fu_650_p2;
reg   [31:0] B_5_reg_971;
wire   [26:0] trunc_ln126_2_fu_678_p1;
reg   [26:0] trunc_ln126_2_reg_976;
reg   [4:0] lshr_ln126_2_reg_981;
wire   [31:0] or_ln126_4_fu_708_p2;
reg   [31:0] or_ln126_4_reg_986;
wire   [31:0] add_ln126_6_fu_771_p2;
reg   [31:0] add_ln126_6_reg_991;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_470_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_124;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_4_fu_128;
wire   [31:0] D_4_fu_670_p3;
reg   [31:0] B_fu_132;
reg   [31:0] B_3_fu_136;
wire   [31:0] A_fu_785_p2;
reg   [5:0] i_fu_140;
wire   [5:0] add_ln124_fu_736_p2;
reg   [5:0] ap_sig_allocacmp_i_2;
reg   [31:0] D_fu_144;
wire   [31:0] C_fu_728_p3;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_2_ce0_local;
reg    W_4_ce0_local;
reg    W_6_ce0_local;
reg    W_8_ce0_local;
reg    W_10_ce0_local;
reg    W_12_ce0_local;
reg    W_14_ce0_local;
reg    W_1_ce0_local;
reg    W_3_ce0_local;
reg    W_5_ce0_local;
reg    W_7_ce0_local;
reg    W_9_ce0_local;
reg    W_11_ce0_local;
reg    W_13_ce0_local;
reg    W_15_ce0_local;
wire   [1:0] lshr_ln100_2_fu_460_p4;
wire   [31:0] tmp_6_fu_497_p17;
wire   [3:0] trunc_ln100_fu_494_p1;
wire   [31:0] tmp_7_fu_537_p17;
wire   [31:0] or_ln126_fu_603_p2;
wire   [31:0] and_ln126_fu_608_p2;
wire   [31:0] and_ln126_1_fu_614_p2;
wire   [26:0] trunc_ln126_fu_589_p1;
wire   [4:0] lshr_ln5_fu_593_p4;
wire   [31:0] or_ln126_2_fu_625_p3;
wire   [31:0] add_ln126_1_fu_633_p2;
wire   [31:0] or_ln126_1_fu_619_p2;
wire   [31:0] add_ln126_fu_644_p2;
wire   [31:0] add_ln126_2_fu_638_p2;
wire   [1:0] trunc_ln126_1_fu_656_p1;
wire   [29:0] lshr_ln126_1_fu_660_p4;
wire   [31:0] or_ln126_3_fu_692_p2;
wire   [31:0] and_ln126_2_fu_697_p2;
wire   [31:0] and_ln126_3_fu_703_p2;
wire   [1:0] trunc_ln126_3_fu_714_p1;
wire   [29:0] lshr_ln126_3_fu_718_p4;
wire   [31:0] or_ln126_6_fu_760_p3;
wire   [31:0] add_ln126_5_fu_766_p2;
wire   [31:0] add_ln126_4_fu_780_p2;
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
wire   [3:0] tmp_6_fu_497_p1;
wire   [3:0] tmp_6_fu_497_p3;
wire   [3:0] tmp_6_fu_497_p5;
wire   [3:0] tmp_6_fu_497_p7;
wire  signed [3:0] tmp_6_fu_497_p9;
wire  signed [3:0] tmp_6_fu_497_p11;
wire  signed [3:0] tmp_6_fu_497_p13;
wire  signed [3:0] tmp_6_fu_497_p15;
wire   [3:0] tmp_7_fu_537_p1;
wire   [3:0] tmp_7_fu_537_p3;
wire   [3:0] tmp_7_fu_537_p5;
wire   [3:0] tmp_7_fu_537_p7;
wire  signed [3:0] tmp_7_fu_537_p9;
wire  signed [3:0] tmp_7_fu_537_p11;
wire  signed [3:0] tmp_7_fu_537_p13;
wire  signed [3:0] tmp_7_fu_537_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_124 = 32'd0;
#0 E_4_fu_128 = 32'd0;
#0 B_fu_132 = 32'd0;
#0 B_3_fu_136 = 32'd0;
#0 i_fu_140 = 6'd0;
#0 D_fu_144 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h6 ),.din3_WIDTH( 32 ),.CASE4( 4'h8 ),.din4_WIDTH( 32 ),.CASE5( 4'hA ),.din5_WIDTH( 32 ),.CASE6( 4'hC ),.din6_WIDTH( 32 ),.CASE7( 4'hE ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U84(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.din4(W_8_q0),.din5(W_10_q0),.din6(W_12_q0),.din7(W_14_q0),.def(tmp_6_fu_497_p17),.sel(trunc_ln100_fu_494_p1),.dout(tmp_6_fu_497_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h6 ),.din3_WIDTH( 32 ),.CASE4( 4'h8 ),.din4_WIDTH( 32 ),.CASE5( 4'hA ),.din5_WIDTH( 32 ),.CASE6( 4'hC ),.din6_WIDTH( 32 ),.CASE7( 4'hE ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U85(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.din4(W_9_q0),.din5(W_11_q0),.din6(W_13_q0),.din7(W_15_q0),.def(tmp_7_fu_537_p17),.sel(trunc_ln100_fu_494_p1),.dout(tmp_7_fu_537_p19));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_3_fu_136 <= B_12_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_3_fu_136 <= A_fu_785_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_132 <= B_4_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_fu_132 <= B_5_reg_971;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        D_fu_144 <= D_12_reload;
    end else if (((icmp_ln124_reg_863 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        D_fu_144 <= C_fu_728_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_4_fu_128 <= E_12_reload;
    end else if (((icmp_ln124_reg_863 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_4_fu_128 <= D_4_fu_670_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_124 <= E_4_reload;
    end else if (((icmp_ln124_reg_863 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_fu_124 <= E_6_reg_947;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_140 <= 6'd40;
    end else if (((icmp_ln124_reg_863 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_140 <= add_ln124_fu_736_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        B_5_reg_971 <= B_5_fu_650_p2;
        E_4_load_reg_966 <= E_4_fu_128;
        lshr_ln126_2_reg_981 <= {{B_5_fu_650_p2[31:27]}};
        or_ln126_4_reg_986 <= or_ln126_4_fu_708_p2;
        trunc_ln126_2_reg_976 <= trunc_ln126_2_fu_678_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_6_reg_947 <= D_fu_144;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln126_6_reg_991 <= add_ln126_6_fu_771_p2;
        i_2_reg_857 <= ap_sig_allocacmp_i_2;
        icmp_ln124_reg_863 <= icmp_ln124_fu_454_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_6_reg_956 <= tmp_6_fu_497_p19;
        tmp_7_reg_961 <= tmp_7_fu_537_p19;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_863 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_13_out_ap_vld = 1'b1;
    end else begin
        A_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_863 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_5_out_ap_vld = 1'b1;
    end else begin
        B_5_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_863 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_13_out_ap_vld = 1'b1;
    end else begin
        D_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_863 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_13_out_ap_vld = 1'b1;
    end else begin
        E_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_863 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_6_out_ap_vld = 1'b1;
    end else begin
        E_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
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
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
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
    if (((icmp_ln124_reg_863 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_i_2 = 6'd40;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_140;
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
assign A_13_out = B_3_fu_136;
assign A_fu_785_p2 = (add_ln126_6_reg_991 + add_ln126_4_fu_780_p2);
assign B_5_fu_650_p2 = (add_ln126_fu_644_p2 + add_ln126_2_fu_638_p2);
assign B_5_out = B_fu_132;
assign C_fu_728_p3 = {{trunc_ln126_3_fu_714_p1}, {lshr_ln126_3_fu_718_p4}};
assign D_13_out = E_4_fu_128;
assign D_4_fu_670_p3 = {{trunc_ln126_1_fu_656_p1}, {lshr_ln126_1_fu_660_p4}};
assign E_13_out = D_fu_144;
assign E_6_out = E_fu_124;
assign W_10_address0 = zext_ln100_fu_470_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_470_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_470_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_470_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_470_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_470_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_1_address0 = zext_ln100_fu_470_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_470_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_470_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_470_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_470_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_470_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_470_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_470_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_470_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_470_p1;
assign W_ce0 = W_ce0_local;
assign add_ln124_fu_736_p2 = (i_2_reg_857 + 6'd2);
assign add_ln126_1_fu_633_p2 = ($signed(32'd2400959708) + $signed(tmp_6_reg_956));
assign add_ln126_2_fu_638_p2 = (or_ln126_2_fu_625_p3 + add_ln126_1_fu_633_p2);
assign add_ln126_4_fu_780_p2 = ($signed(E_4_load_reg_966) + $signed(32'd2400959708));
assign add_ln126_5_fu_766_p2 = (or_ln126_6_fu_760_p3 + tmp_7_reg_961);
assign add_ln126_6_fu_771_p2 = (add_ln126_5_fu_766_p2 + or_ln126_4_reg_986);
assign add_ln126_fu_644_p2 = (or_ln126_1_fu_619_p2 + E_fu_124);
assign and_ln126_1_fu_614_p2 = (E_6_reg_947 & E_4_fu_128);
assign and_ln126_2_fu_697_p2 = (or_ln126_3_fu_692_p2 & B_3_fu_136);
assign and_ln126_3_fu_703_p2 = (E_6_reg_947 & D_4_fu_670_p3);
assign and_ln126_fu_608_p2 = (or_ln126_fu_603_p2 & B_fu_132);
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
assign icmp_ln124_fu_454_p2 = ((ap_sig_allocacmp_i_2 < 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln100_2_fu_460_p4 = {{ap_sig_allocacmp_i_2[5:4]}};
assign lshr_ln126_1_fu_660_p4 = {{B_fu_132[31:2]}};
assign lshr_ln126_3_fu_718_p4 = {{B_3_fu_136[31:2]}};
assign lshr_ln5_fu_593_p4 = {{B_3_fu_136[31:27]}};
assign or_ln126_1_fu_619_p2 = (and_ln126_fu_608_p2 | and_ln126_1_fu_614_p2);
assign or_ln126_2_fu_625_p3 = {{trunc_ln126_fu_589_p1}, {lshr_ln5_fu_593_p4}};
assign or_ln126_3_fu_692_p2 = (E_6_reg_947 | D_4_fu_670_p3);
assign or_ln126_4_fu_708_p2 = (and_ln126_3_fu_703_p2 | and_ln126_2_fu_697_p2);
assign or_ln126_6_fu_760_p3 = {{trunc_ln126_2_reg_976}, {lshr_ln126_2_reg_981}};
assign or_ln126_fu_603_p2 = (E_6_reg_947 | E_4_fu_128);
assign tmp_6_fu_497_p17 = 'bx;
assign tmp_7_fu_537_p17 = 'bx;
assign trunc_ln100_fu_494_p1 = i_2_reg_857[3:0];
assign trunc_ln126_1_fu_656_p1 = B_fu_132[1:0];
assign trunc_ln126_2_fu_678_p1 = B_5_fu_650_p2[26:0];
assign trunc_ln126_3_fu_714_p1 = B_3_fu_136[1:0];
assign trunc_ln126_fu_589_p1 = B_3_fu_136[26:0];
assign zext_ln100_fu_470_p1 = lshr_ln100_2_fu_460_p4;
endmodule 