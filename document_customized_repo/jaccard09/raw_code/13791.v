module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_load,W_1_load,W_2_load,W_3_load,W_4_load,W_5_load,W_6_load,W_7_load,W_8_load,W_9_load,W_10_load,W_11_load,W_12_load,W_13_load,W_14_load,W_15_load,W_16_load,W_17_load,W_18_load,W_19_load,A_13_out,A_13_out_ap_vld,B_2_out,B_2_out_ap_vld,C_11_out,C_11_out_ap_vld,D_13_out,D_13_out_ap_vld,E_2_out,E_2_out_ap_vld); 
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
input  [31:0] W_load;
input  [31:0] W_1_load;
input  [31:0] W_2_load;
input  [31:0] W_3_load;
input  [31:0] W_4_load;
input  [31:0] W_5_load;
input  [31:0] W_6_load;
input  [31:0] W_7_load;
input  [31:0] W_8_load;
input  [31:0] W_9_load;
input  [31:0] W_10_load;
input  [31:0] W_11_load;
input  [31:0] W_12_load;
input  [31:0] W_13_load;
input  [31:0] W_14_load;
input  [31:0] W_15_load;
input  [31:0] W_16_load;
input  [31:0] W_17_load;
input  [31:0] W_18_load;
input  [31:0] W_19_load;
output  [31:0] A_13_out;
output   A_13_out_ap_vld;
output  [31:0] B_2_out;
output   B_2_out_ap_vld;
output  [31:0] C_11_out;
output   C_11_out_ap_vld;
output  [31:0] D_13_out;
output   D_13_out_ap_vld;
output  [31:0] E_2_out;
output   E_2_out_ap_vld;
reg ap_idle;
reg A_13_out_ap_vld;
reg B_2_out_ap_vld;
reg C_11_out_ap_vld;
reg D_13_out_ap_vld;
reg E_2_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln116_fu_386_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln116_reg_673;
reg   [0:0] icmp_ln116_reg_673_pp0_iter1_reg;
wire   [31:0] tmp_5_fu_398_p43;
reg   [31:0] tmp_5_reg_677;
reg   [31:0] D_11_reg_682;
reg   [31:0] C_6_reg_688;
wire   [31:0] add_ln118_2_fu_529_p2;
reg   [31:0] add_ln118_2_reg_693;
reg   [31:0] E_2_fu_144;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [31:0] B_2_fu_148;
reg   [31:0] ap_sig_allocacmp_B_2_load;
reg   [4:0] i_1_fu_152;
wire   [4:0] add_ln116_fu_392_p2;
reg   [4:0] ap_sig_allocacmp_i;
reg   [31:0] E_8_fu_156;
reg   [31:0] D_8_fu_160;
wire   [31:0] C_1_fu_549_p3;
reg   [31:0] B_7_fu_164;
wire   [31:0] temp_fu_602_p2;
wire    ap_block_pp0_stage0_01001;
wire   [31:0] tmp_5_fu_398_p41;
wire   [31:0] xor_ln118_fu_500_p2;
wire   [31:0] and_ln118_1_fu_512_p2;
wire   [31:0] and_ln118_fu_506_p2;
wire   [31:0] or_ln118_fu_518_p2;
wire   [31:0] add_ln118_1_fu_524_p2;
wire   [1:0] trunc_ln118_1_fu_535_p1;
wire   [29:0] lshr_ln118_1_fu_539_p4;
wire   [26:0] trunc_ln118_fu_574_p1;
wire   [4:0] lshr_ln2_fu_578_p4;
wire   [31:0] or_ln118_1_fu_588_p3;
wire   [31:0] add_ln118_fu_596_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_5_fu_398_p1;
wire   [4:0] tmp_5_fu_398_p3;
wire   [4:0] tmp_5_fu_398_p5;
wire   [4:0] tmp_5_fu_398_p7;
wire   [4:0] tmp_5_fu_398_p9;
wire   [4:0] tmp_5_fu_398_p11;
wire   [4:0] tmp_5_fu_398_p13;
wire   [4:0] tmp_5_fu_398_p15;
wire   [4:0] tmp_5_fu_398_p17;
wire   [4:0] tmp_5_fu_398_p19;
wire   [4:0] tmp_5_fu_398_p21;
wire   [4:0] tmp_5_fu_398_p23;
wire   [4:0] tmp_5_fu_398_p25;
wire   [4:0] tmp_5_fu_398_p27;
wire   [4:0] tmp_5_fu_398_p29;
wire   [4:0] tmp_5_fu_398_p31;
wire  signed [4:0] tmp_5_fu_398_p33;
wire  signed [4:0] tmp_5_fu_398_p35;
wire  signed [4:0] tmp_5_fu_398_p37;
wire  signed [4:0] tmp_5_fu_398_p39;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 E_2_fu_144 = 32'd0;
#0 B_2_fu_148 = 32'd0;
#0 i_1_fu_152 = 5'd0;
#0 E_8_fu_156 = 32'd0;
#0 D_8_fu_160 = 32'd0;
#0 B_7_fu_164 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_41_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h1 ),.din1_WIDTH( 32 ),.CASE2( 5'h2 ),.din2_WIDTH( 32 ),.CASE3( 5'h3 ),.din3_WIDTH( 32 ),.CASE4( 5'h4 ),.din4_WIDTH( 32 ),.CASE5( 5'h5 ),.din5_WIDTH( 32 ),.CASE6( 5'h6 ),.din6_WIDTH( 32 ),.CASE7( 5'h7 ),.din7_WIDTH( 32 ),.CASE8( 5'h8 ),.din8_WIDTH( 32 ),.CASE9( 5'h9 ),.din9_WIDTH( 32 ),.CASE10( 5'hA ),.din10_WIDTH( 32 ),.CASE11( 5'hB ),.din11_WIDTH( 32 ),.CASE12( 5'hC ),.din12_WIDTH( 32 ),.CASE13( 5'hD ),.din13_WIDTH( 32 ),.CASE14( 5'hE ),.din14_WIDTH( 32 ),.CASE15( 5'hF ),.din15_WIDTH( 32 ),.CASE16( 5'h10 ),.din16_WIDTH( 32 ),.CASE17( 5'h11 ),.din17_WIDTH( 32 ),.CASE18( 5'h12 ),.din18_WIDTH( 32 ),.CASE19( 5'h13 ),.din19_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_41_5_32_1_1_U78(.din0(W_load),.din1(W_1_load),.din2(W_2_load),.din3(W_3_load),.din4(W_4_load),.din5(W_5_load),.din6(W_6_load),.din7(W_7_load),.din8(W_8_load),.din9(W_9_load),.din10(W_10_load),.din11(W_11_load),.din12(W_12_load),.din13(W_13_load),.din14(W_14_load),.din15(W_15_load),.din16(W_16_load),.din17(W_17_load),.din18(W_18_load),.din19(W_19_load),.def(tmp_5_fu_398_p41),.sel(ap_sig_allocacmp_i),.dout(tmp_5_fu_398_p43));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            B_2_fu_148 <= B;
        end else if (((icmp_ln116_reg_673_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            B_2_fu_148 <= B_7_fu_164;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            B_7_fu_164 <= A;
        end else if (((icmp_ln116_reg_673_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            B_7_fu_164 <= temp_fu_602_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            D_8_fu_160 <= C;
        end else if (((icmp_ln116_reg_673 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            D_8_fu_160 <= C_1_fu_549_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            E_2_fu_144 <= E;
        end else if (((icmp_ln116_reg_673_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            E_2_fu_144 <= D_11_reg_682;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            E_8_fu_156 <= D;
        end else if (((icmp_ln116_reg_673 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            E_8_fu_156 <= D_8_fu_160;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln116_fu_386_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_1_fu_152 <= add_ln116_fu_392_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_1_fu_152 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        C_6_reg_688 <= D_8_fu_160;
        D_11_reg_682 <= E_8_fu_156;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_2_reg_693 <= add_ln118_2_fu_529_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln116_reg_673 <= icmp_ln116_fu_386_p2;
        icmp_ln116_reg_673_pp0_iter1_reg <= icmp_ln116_reg_673;
        tmp_5_reg_677 <= tmp_5_fu_398_p43;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_673_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        A_13_out_ap_vld = 1'b1;
    end else begin
        A_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_673_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        B_2_out_ap_vld = 1'b1;
    end else begin
        B_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_673_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        C_11_out_ap_vld = 1'b1;
    end else begin
        C_11_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_673_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        D_13_out_ap_vld = 1'b1;
    end else begin
        D_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_673_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        E_2_out_ap_vld = 1'b1;
    end else begin
        E_2_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_fu_386_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((icmp_ln116_reg_673_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_sig_allocacmp_B_2_load = B_7_fu_164;
    end else begin
        ap_sig_allocacmp_B_2_load = B_2_fu_148;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_152;
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
assign A_13_out = B_7_fu_164;
assign B_2_out = B_2_fu_148;
assign C_11_out = C_6_reg_688;
assign C_1_fu_549_p3 = {{trunc_ln118_1_fu_535_p1}, {lshr_ln118_1_fu_539_p4}};
assign D_13_out = D_11_reg_682;
assign E_2_out = E_2_fu_144;
assign add_ln116_fu_392_p2 = (ap_sig_allocacmp_i + 5'd1);
assign add_ln118_1_fu_524_p2 = (tmp_5_reg_677 + 32'd1518500249);
assign add_ln118_2_fu_529_p2 = (or_ln118_fu_518_p2 + add_ln118_1_fu_524_p2);
assign add_ln118_fu_596_p2 = (or_ln118_1_fu_588_p3 + E_2_fu_144);
assign and_ln118_1_fu_512_p2 = (xor_ln118_fu_500_p2 & E_8_fu_156);
assign and_ln118_fu_506_p2 = (ap_sig_allocacmp_B_2_load & D_8_fu_160);
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
assign icmp_ln116_fu_386_p2 = ((ap_sig_allocacmp_i == 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_1_fu_539_p4 = {{ap_sig_allocacmp_B_2_load[31:2]}};
assign lshr_ln2_fu_578_p4 = {{B_7_fu_164[31:27]}};
assign or_ln118_1_fu_588_p3 = {{trunc_ln118_fu_574_p1}, {lshr_ln2_fu_578_p4}};
assign or_ln118_fu_518_p2 = (and_ln118_fu_506_p2 | and_ln118_1_fu_512_p2);
assign temp_fu_602_p2 = (add_ln118_2_reg_693 + add_ln118_fu_596_p2);
assign tmp_5_fu_398_p41 = 'bx;
assign trunc_ln118_1_fu_535_p1 = ap_sig_allocacmp_B_2_load[1:0];
assign trunc_ln118_fu_574_p1 = B_7_fu_164[26:0];
assign xor_ln118_fu_500_p2 = (ap_sig_allocacmp_B_2_load ^ 32'd4294967295);
endmodule 