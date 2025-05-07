module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,W_2_address0,W_2_ce0,W_2_q0,W_3_address0,W_3_ce0,W_3_q0,W_4_address0,W_4_ce0,W_4_q0,W_5_address0,W_5_ce0,W_5_q0,W_6_address0,W_6_ce0,W_6_q0,W_7_address0,W_7_ce0,W_7_q0,B_15_out,B_15_out_ap_vld,B_2_out,B_2_out_ap_vld,D_15_out,D_15_out_ap_vld,E_15_out,E_15_out_ap_vld,E_2_out,E_2_out_ap_vld); 
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
output  [3:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [3:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [3:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [3:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [3:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [3:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [3:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [3:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [31:0] B_15_out;
output   B_15_out_ap_vld;
output  [31:0] B_2_out;
output   B_2_out_ap_vld;
output  [31:0] D_15_out;
output   D_15_out_ap_vld;
output  [31:0] E_15_out;
output   E_15_out_ap_vld;
output  [31:0] E_2_out;
output   E_2_out_ap_vld;
reg ap_idle;
reg B_15_out_ap_vld;
reg B_2_out_ap_vld;
reg D_15_out_ap_vld;
reg E_15_out_ap_vld;
reg E_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln116_fu_334_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln116_reg_598;
reg   [0:0] icmp_ln116_reg_598_pp0_iter1_reg;
reg   [0:0] icmp_ln116_reg_598_pp0_iter2_reg;
wire   [2:0] trunc_ln100_fu_346_p1;
reg   [2:0] trunc_ln100_reg_602;
wire   [31:0] tmp_5_fu_377_p19;
reg   [31:0] tmp_5_reg_647;
reg   [31:0] E_11_reg_652;
reg   [31:0] D_10_reg_658;
wire   [31:0] add_ln118_2_fu_454_p2;
reg   [31:0] add_ln118_2_reg_663;
wire   [63:0] zext_ln100_fu_360_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_2_fu_108;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [31:0] B_2_fu_112;
reg   [31:0] ap_sig_allocacmp_B_2_load;
reg   [4:0] i_1_fu_116;
wire   [4:0] add_ln116_fu_340_p2;
reg   [4:0] ap_sig_allocacmp_i;
reg   [31:0] D_7_fu_120;
reg   [31:0] C_9_fu_124;
wire   [31:0] C_2_fu_474_p3;
reg   [31:0] A_8_fu_128;
wire   [31:0] A_11_fu_527_p2;
wire    ap_block_pp0_stage0_01001;
reg    W_ce0_local;
reg    W_1_ce0_local;
reg    W_2_ce0_local;
reg    W_3_ce0_local;
reg    W_4_ce0_local;
reg    W_5_ce0_local;
reg    W_6_ce0_local;
reg    W_7_ce0_local;
wire   [1:0] lshr_ln2_fu_350_p4;
wire   [31:0] tmp_5_fu_377_p17;
wire   [31:0] xor_ln118_fu_425_p2;
wire   [31:0] and_ln118_1_fu_437_p2;
wire   [31:0] and_ln118_fu_431_p2;
wire   [31:0] or_ln118_fu_443_p2;
wire   [31:0] add_ln118_1_fu_449_p2;
wire   [1:0] trunc_ln118_1_fu_460_p1;
wire   [29:0] lshr_ln118_1_fu_464_p4;
wire   [26:0] trunc_ln118_fu_499_p1;
wire   [4:0] lshr_ln3_fu_503_p4;
wire   [31:0] or_ln118_1_fu_513_p3;
wire   [31:0] add_ln118_fu_521_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] tmp_5_fu_377_p1;
wire   [2:0] tmp_5_fu_377_p3;
wire   [2:0] tmp_5_fu_377_p5;
wire   [2:0] tmp_5_fu_377_p7;
wire  signed [2:0] tmp_5_fu_377_p9;
wire  signed [2:0] tmp_5_fu_377_p11;
wire  signed [2:0] tmp_5_fu_377_p13;
wire  signed [2:0] tmp_5_fu_377_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 E_2_fu_108 = 32'd0;
#0 B_2_fu_112 = 32'd0;
#0 i_1_fu_116 = 5'd0;
#0 D_7_fu_120 = 32'd0;
#0 C_9_fu_124 = 32'd0;
#0 A_8_fu_128 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U21(.din0(W_q0),.din1(W_1_q0),.din2(W_2_q0),.din3(W_3_q0),.din4(W_4_q0),.din5(W_5_q0),.din6(W_6_q0),.din7(W_7_q0),.def(tmp_5_fu_377_p17),.sel(trunc_ln100_reg_602),.dout(tmp_5_fu_377_p19));
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
            A_8_fu_128 <= A;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln116_reg_598_pp0_iter2_reg == 1'd0))) begin
            A_8_fu_128 <= A_11_fu_527_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            B_2_fu_112 <= B;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln116_reg_598_pp0_iter2_reg == 1'd0))) begin
            B_2_fu_112 <= A_8_fu_128;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            C_9_fu_124 <= C;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln116_reg_598_pp0_iter1_reg == 1'd0))) begin
            C_9_fu_124 <= C_2_fu_474_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            D_7_fu_120 <= D;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln116_reg_598_pp0_iter1_reg == 1'd0))) begin
            D_7_fu_120 <= C_9_fu_124;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            E_2_fu_108 <= E;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln116_reg_598_pp0_iter2_reg == 1'd0))) begin
            E_2_fu_108 <= E_11_reg_652;
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
        if (((icmp_ln116_fu_334_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_116 <= add_ln116_fu_340_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_116 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        D_10_reg_658 <= C_9_fu_124;
        E_11_reg_652 <= D_7_fu_120;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln118_2_reg_663 <= add_ln118_2_fu_454_p2;
        icmp_ln116_reg_598_pp0_iter2_reg <= icmp_ln116_reg_598_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln116_reg_598 <= icmp_ln116_fu_334_p2;
        icmp_ln116_reg_598_pp0_iter1_reg <= icmp_ln116_reg_598;
        tmp_5_reg_647 <= tmp_5_fu_377_p19;
        trunc_ln100_reg_602 <= trunc_ln100_fu_346_p1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln116_reg_598_pp0_iter2_reg == 1'd1))) begin
        B_15_out_ap_vld = 1'b1;
    end else begin
        B_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln116_reg_598_pp0_iter2_reg == 1'd1))) begin
        B_2_out_ap_vld = 1'b1;
    end else begin
        B_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln116_reg_598_pp0_iter2_reg == 1'd1))) begin
        D_15_out_ap_vld = 1'b1;
    end else begin
        D_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln116_reg_598_pp0_iter2_reg == 1'd1))) begin
        E_15_out_ap_vld = 1'b1;
    end else begin
        E_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (icmp_ln116_reg_598_pp0_iter2_reg == 1'd1))) begin
        E_2_out_ap_vld = 1'b1;
    end else begin
        E_2_out_ap_vld = 1'b0;
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
    if (((icmp_ln116_fu_334_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln116_reg_598_pp0_iter2_reg == 1'd0))) begin
        ap_sig_allocacmp_B_2_load = A_8_fu_128;
    end else begin
        ap_sig_allocacmp_B_2_load = B_2_fu_112;
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
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_11_fu_527_p2 = (add_ln118_2_reg_663 + add_ln118_fu_521_p2);
assign B_15_out = A_8_fu_128;
assign B_2_out = B_2_fu_112;
assign C_2_fu_474_p3 = {{trunc_ln118_1_fu_460_p1}, {lshr_ln118_1_fu_464_p4}};
assign D_15_out = D_10_reg_658;
assign E_15_out = E_11_reg_652;
assign E_2_out = E_2_fu_108;
assign W_1_address0 = zext_ln100_fu_360_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_2_address0 = zext_ln100_fu_360_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_3_address0 = zext_ln100_fu_360_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_360_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_360_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_360_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_360_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_address0 = zext_ln100_fu_360_p1;
assign W_ce0 = W_ce0_local;
assign add_ln116_fu_340_p2 = (ap_sig_allocacmp_i + 5'd1);
assign add_ln118_1_fu_449_p2 = (tmp_5_reg_647 + 32'd1518500249);
assign add_ln118_2_fu_454_p2 = (or_ln118_fu_443_p2 + add_ln118_1_fu_449_p2);
assign add_ln118_fu_521_p2 = (or_ln118_1_fu_513_p3 + E_2_fu_108);
assign and_ln118_1_fu_437_p2 = (xor_ln118_fu_425_p2 & D_7_fu_120);
assign and_ln118_fu_431_p2 = (ap_sig_allocacmp_B_2_load & C_9_fu_124);
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
assign icmp_ln116_fu_334_p2 = ((ap_sig_allocacmp_i == 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_1_fu_464_p4 = {{ap_sig_allocacmp_B_2_load[31:2]}};
assign lshr_ln2_fu_350_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign lshr_ln3_fu_503_p4 = {{A_8_fu_128[31:27]}};
assign or_ln118_1_fu_513_p3 = {{trunc_ln118_fu_499_p1}, {lshr_ln3_fu_503_p4}};
assign or_ln118_fu_443_p2 = (and_ln118_fu_431_p2 | and_ln118_1_fu_437_p2);
assign tmp_5_fu_377_p17 = 'bx;
assign trunc_ln100_fu_346_p1 = ap_sig_allocacmp_i[2:0];
assign trunc_ln118_1_fu_460_p1 = ap_sig_allocacmp_B_2_load[1:0];
assign trunc_ln118_fu_499_p1 = A_8_fu_128[26:0];
assign xor_ln118_fu_425_p2 = (ap_sig_allocacmp_B_2_load ^ 32'd4294967295);
assign zext_ln100_fu_360_p1 = lshr_ln2_fu_350_p4;
endmodule 