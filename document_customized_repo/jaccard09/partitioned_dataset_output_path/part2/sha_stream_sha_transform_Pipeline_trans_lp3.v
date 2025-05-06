
module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,W_2_address0,W_2_ce0,W_2_q0,W_3_address0,W_3_ce0,W_3_q0,W_4_address0,W_4_ce0,W_4_q0,W_5_address0,W_5_ce0,W_5_q0,W_6_address0,W_6_ce0,W_6_q0,W_7_address0,W_7_ce0,W_7_q0,W_8_address0,W_8_ce0,W_8_q0,W_9_address0,W_9_ce0,W_9_q0,W_10_address0,W_10_ce0,W_10_q0,W_11_address0,W_11_ce0,W_11_q0,W_12_address0,W_12_ce0,W_12_q0,W_13_address0,W_13_ce0,W_13_q0,W_14_address0,W_14_ce0,W_14_q0,W_15_address0,W_15_ce0,W_15_q0,B_11_out,B_11_out_ap_vld,B_2_out,B_2_out_ap_vld,D_11_out,D_11_out_ap_vld,E_11_out,E_11_out_ap_vld,E_2_out,E_2_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
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
output  [2:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [2:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [2:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [2:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [2:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [2:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [2:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [2:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [2:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [2:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [2:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [2:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [2:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [2:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [2:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [2:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [31:0] B_11_out;
output   B_11_out_ap_vld;
output  [31:0] B_2_out;
output   B_2_out_ap_vld;
output  [31:0] D_11_out;
output   D_11_out_ap_vld;
output  [31:0] E_11_out;
output   E_11_out_ap_vld;
output  [31:0] E_2_out;
output   E_2_out_ap_vld;
reg ap_idle;
reg B_11_out_ap_vld;
reg B_2_out_ap_vld;
reg D_11_out_ap_vld;
reg E_11_out_ap_vld;
reg E_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln116_fu_468_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln116_reg_770;
reg   [0:0] icmp_ln116_reg_770_pp0_iter1_reg;
reg   [0:0] icmp_ln116_reg_770_pp0_iter2_reg;
wire   [3:0] trunc_ln100_fu_480_p1;
reg   [3:0] trunc_ln100_reg_774;
wire   [31:0] tmp_4_fu_517_p35;
reg   [31:0] tmp_4_reg_859;
reg   [31:0] E_8_reg_864;
reg   [31:0] D_11_reg_870;
wire   [31:0] add_ln118_2_fu_626_p2;
reg   [31:0] add_ln118_2_reg_875;
wire   [63:0] zext_ln100_fu_492_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_2_fu_138;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [31:0] B_2_fu_142;
reg   [31:0] ap_sig_allocacmp_B_2_load;
reg   [4:0] i_1_fu_146;
wire   [4:0] add_ln116_fu_474_p2;
reg   [4:0] ap_sig_allocacmp_i;
reg   [31:0] D_8_fu_150;
reg   [31:0] C_6_fu_154;
wire   [31:0] C_2_fu_646_p3;
reg   [31:0] A_6_fu_158;
wire   [31:0] A_9_fu_699_p2;
wire    ap_block_pp0_stage0_01001;
reg    W_ce0_local;
reg    W_1_ce0_local;
reg    W_2_ce0_local;
reg    W_3_ce0_local;
reg    W_4_ce0_local;
reg    W_5_ce0_local;
reg    W_6_ce0_local;
reg    W_7_ce0_local;
reg    W_8_ce0_local;
reg    W_9_ce0_local;
reg    W_10_ce0_local;
reg    W_11_ce0_local;
reg    W_12_ce0_local;
reg    W_13_ce0_local;
reg    W_14_ce0_local;
reg    W_15_ce0_local;
wire   [0:0] tmp_fu_484_p3;
wire   [31:0] tmp_4_fu_517_p33;
wire   [31:0] xor_ln118_fu_597_p2;
wire   [31:0] and_ln118_1_fu_609_p2;
wire   [31:0] and_ln118_fu_603_p2;
wire   [31:0] or_ln118_fu_615_p2;
wire   [31:0] add_ln118_1_fu_621_p2;
wire   [1:0] trunc_ln118_1_fu_632_p1;
wire   [29:0] lshr_ln118_1_fu_636_p4;
wire   [26:0] trunc_ln118_fu_671_p1;
wire   [4:0] lshr_ln3_fu_675_p4;
wire   [31:0] or_ln118_1_fu_685_p3;
wire   [31:0] add_ln118_fu_693_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_4_fu_517_p1;
wire   [3:0] tmp_4_fu_517_p3;
wire   [3:0] tmp_4_fu_517_p5;
wire   [3:0] tmp_4_fu_517_p7;
wire   [3:0] tmp_4_fu_517_p9;
wire   [3:0] tmp_4_fu_517_p11;
wire   [3:0] tmp_4_fu_517_p13;
wire   [3:0] tmp_4_fu_517_p15;
wire  signed [3:0] tmp_4_fu_517_p17;
wire  signed [3:0] tmp_4_fu_517_p19;
wire  signed [3:0] tmp_4_fu_517_p21;
wire  signed [3:0] tmp_4_fu_517_p23;
wire  signed [3:0] tmp_4_fu_517_p25;
wire  signed [3:0] tmp_4_fu_517_p27;
wire  signed [3:0] tmp_4_fu_517_p29;
wire  signed [3:0] tmp_4_fu_517_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 E_2_fu_138 = 32'd0;
#0 B_2_fu_142 = 32'd0;
#0 i_1_fu_146 = 5'd0;
#0 D_8_fu_150 = 32'd0;
#0 C_6_fu_154 = 32'd0;
#0 A_6_fu_158 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h1 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h3 ),.din3_WIDTH( 32 ),.CASE4( 4'h4 ),.din4_WIDTH( 32 ),.CASE5( 4'h5 ),.din5_WIDTH( 32 ),.CASE6( 4'h6 ),.din6_WIDTH( 32 ),.CASE7( 4'h7 ),.din7_WIDTH( 32 ),.CASE8( 4'h8 ),.din8_WIDTH( 32 ),.CASE9( 4'h9 ),.din9_WIDTH( 32 ),.CASE10( 4'hA ),.din10_WIDTH( 32 ),.CASE11( 4'hB ),.din11_WIDTH( 32 ),.CASE12( 4'hC ),.din12_WIDTH( 32 ),.CASE13( 4'hD ),.din13_WIDTH( 32 ),.CASE14( 4'hE ),.din14_WIDTH( 32 ),.CASE15( 4'hF ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U30(.din0(W_q0),.din1(W_1_q0),.din2(W_2_q0),.din3(W_3_q0),.din4(W_4_q0),.din5(W_5_q0),.din6(W_6_q0),.din7(W_7_q0),.din8(W_8_q0),.din9(W_9_q0),.din10(W_10_q0),.din11(W_11_q0),.din12(W_12_q0),.din13(W_13_q0),.din14(W_14_q0),.din15(W_15_q0),.def(tmp_4_fu_517_p33),.sel(trunc_ln100_reg_774),.dout(tmp_4_fu_517_p35));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            A_6_fu_158 <= A;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln116_reg_770_pp0_iter2_reg == 1'd0))) begin
            A_6_fu_158 <= A_9_fu_699_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            B_2_fu_142 <= B;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln116_reg_770_pp0_iter2_reg == 1'd0))) begin
            B_2_fu_142 <= A_6_fu_158;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            C_6_fu_154 <= C;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln116_reg_770_pp0_iter1_reg == 1'd0))) begin
            C_6_fu_154 <= C_2_fu_646_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            D_8_fu_150 <= D;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln116_reg_770_pp0_iter1_reg == 1'd0))) begin
            D_8_fu_150 <= C_6_fu_154;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            E_2_fu_138 <= E;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln116_reg_770_pp0_iter2_reg == 1'd0))) begin
            E_2_fu_138 <= E_8_reg_864;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln116_fu_468_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_146 <= add_ln116_fu_474_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_146 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        D_11_reg_870 <= C_6_fu_154;
        E_8_reg_864 <= D_8_fu_150;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln118_2_reg_875 <= add_ln118_2_fu_626_p2;
        icmp_ln116_reg_770_pp0_iter2_reg <= icmp_ln116_reg_770_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln116_reg_770 <= icmp_ln116_fu_468_p2;
        icmp_ln116_reg_770_pp0_iter1_reg <= icmp_ln116_reg_770;
        tmp_4_reg_859 <= tmp_4_fu_517_p35;
        trunc_ln100_reg_774 <= trunc_ln100_fu_480_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln116_reg_770_pp0_iter2_reg == 1'd1))) begin
        B_11_out_ap_vld = 1'b1;
    end else begin
        B_11_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln116_reg_770_pp0_iter2_reg == 1'd1))) begin
        B_2_out_ap_vld = 1'b1;
    end else begin
        B_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln116_reg_770_pp0_iter2_reg == 1'd1))) begin
        D_11_out_ap_vld = 1'b1;
    end else begin
        D_11_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln116_reg_770_pp0_iter2_reg == 1'd1))) begin
        E_11_out_ap_vld = 1'b1;
    end else begin
        E_11_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln116_reg_770_pp0_iter2_reg == 1'd1))) begin
        E_2_out_ap_vld = 1'b1;
    end else begin
        E_2_out_ap_vld = 1'b0;
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
    if (((icmp_ln116_fu_468_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln116_reg_770_pp0_iter2_reg == 1'd0))) begin
        ap_sig_allocacmp_B_2_load = A_6_fu_158;
    end else begin
        ap_sig_allocacmp_B_2_load = B_2_fu_142;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_146;
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
assign A_9_fu_699_p2 = (add_ln118_2_reg_875 + add_ln118_fu_693_p2);
assign B_11_out = A_6_fu_158;
assign B_2_out = B_2_fu_142;
assign C_2_fu_646_p3 = {{trunc_ln118_1_fu_632_p1}, {lshr_ln118_1_fu_636_p4}};
assign D_11_out = D_11_reg_870;
assign E_11_out = E_8_reg_864;
assign E_2_out = E_2_fu_138;
assign W_10_address0 = zext_ln100_fu_492_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_492_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_492_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_492_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_492_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_492_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_1_address0 = zext_ln100_fu_492_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_492_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_492_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_492_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_492_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_492_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_492_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_492_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_492_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_492_p1;
assign W_ce0 = W_ce0_local;
assign add_ln116_fu_474_p2 = (ap_sig_allocacmp_i + 5'd1);
assign add_ln118_1_fu_621_p2 = (tmp_4_reg_859 + 32'd1518500249);
assign add_ln118_2_fu_626_p2 = (or_ln118_fu_615_p2 + add_ln118_1_fu_621_p2);
assign add_ln118_fu_693_p2 = (or_ln118_1_fu_685_p3 + E_2_fu_138);
assign and_ln118_1_fu_609_p2 = (xor_ln118_fu_597_p2 & D_8_fu_150);
assign and_ln118_fu_603_p2 = (ap_sig_allocacmp_B_2_load & C_6_fu_154);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln116_fu_468_p2 = ((ap_sig_allocacmp_i == 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_1_fu_636_p4 = {{ap_sig_allocacmp_B_2_load[31:2]}};
assign lshr_ln3_fu_675_p4 = {{A_6_fu_158[31:27]}};
assign or_ln118_1_fu_685_p3 = {{trunc_ln118_fu_671_p1}, {lshr_ln3_fu_675_p4}};
assign or_ln118_fu_615_p2 = (and_ln118_fu_603_p2 | and_ln118_1_fu_609_p2);
assign tmp_4_fu_517_p33 = 'bx;
assign tmp_fu_484_p3 = ap_sig_allocacmp_i[32'd4];
assign trunc_ln100_fu_480_p1 = ap_sig_allocacmp_i[3:0];
assign trunc_ln118_1_fu_632_p1 = ap_sig_allocacmp_B_2_load[1:0];
assign trunc_ln118_fu_671_p1 = A_6_fu_158[26:0];
assign xor_ln118_fu_597_p2 = (ap_sig_allocacmp_B_2_load ^ 32'd4294967295);
assign zext_ln100_fu_492_p1 = tmp_fu_484_p3;
endmodule 
