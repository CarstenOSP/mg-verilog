module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W_load_4,W_2_load_4,W_4_load_4,W_6_load_4,W_8_load_4,W_10_load_4,W_12_load_4,W_14_load_4,W_16_load_4,W_18_load_4,W_1_load_4,W_3_load_4,W_5_load_4,W_7_load_4,W_9_load_4,W_11_load_4,W_13_load_4,W_15_load_4,W_17_load_4,W_19_load_4,A_13_out,A_13_out_ap_vld,B_1_out,B_1_out_ap_vld,C_13_out,C_13_out_ap_vld,D_13_out,D_13_out_ap_vld,E_1_out,E_1_out_ap_vld); 
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
input  [31:0] W_load_4;
input  [31:0] W_2_load_4;
input  [31:0] W_4_load_4;
input  [31:0] W_6_load_4;
input  [31:0] W_8_load_4;
input  [31:0] W_10_load_4;
input  [31:0] W_12_load_4;
input  [31:0] W_14_load_4;
input  [31:0] W_16_load_4;
input  [31:0] W_18_load_4;
input  [31:0] W_1_load_4;
input  [31:0] W_3_load_4;
input  [31:0] W_5_load_4;
input  [31:0] W_7_load_4;
input  [31:0] W_9_load_4;
input  [31:0] W_11_load_4;
input  [31:0] W_13_load_4;
input  [31:0] W_15_load_4;
input  [31:0] W_17_load_4;
input  [31:0] W_19_load_4;
output  [31:0] A_13_out;
output   A_13_out_ap_vld;
output  [31:0] B_1_out;
output   B_1_out_ap_vld;
output  [31:0] C_13_out;
output   C_13_out_ap_vld;
output  [31:0] D_13_out;
output   D_13_out_ap_vld;
output  [31:0] E_1_out;
output   E_1_out_ap_vld;
reg ap_idle;
reg A_13_out_ap_vld;
reg B_1_out_ap_vld;
reg C_13_out_ap_vld;
reg D_13_out_ap_vld;
reg E_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
wire   [0:0] icmp_ln116_fu_370_p2;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] i_reg_834;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_10_reg_839;
reg   [0:0] icmp_ln116_reg_846;
wire   [31:0] tmp_9_fu_376_p23;
reg   [31:0] tmp_9_reg_850;
wire   [31:0] tmp_s_fu_414_p23;
reg   [31:0] tmp_s_reg_855;
reg   [31:0] E_9_load_reg_860;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] temp_fu_526_p2;
reg   [31:0] temp_reg_865;
wire   [26:0] trunc_ln118_2_fu_554_p1;
reg   [26:0] trunc_ln118_2_reg_870;
reg   [4:0] lshr_ln118_2_reg_875;
wire   [31:0] or_ln118_2_fu_585_p2;
reg   [31:0] or_ln118_2_reg_880;
wire   [31:0] add_ln118_6_fu_638_p2;
reg   [31:0] add_ln118_6_reg_885;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [31:0] E_1_fu_124;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_9_fu_128;
wire   [31:0] C_11_fu_546_p3;
reg   [31:0] B_1_fu_132;
reg   [31:0] B_7_fu_136;
wire   [31:0] temp_3_fu_662_p2;
reg   [4:0] i_1_fu_140;
wire   [4:0] add_ln116_fu_644_p2;
reg   [31:0] E_10_fu_144;
wire   [31:0] C_3_fu_605_p3;
wire    ap_block_pp0_stage1_01001;
wire    ap_block_pp0_stage0;
wire   [31:0] tmp_9_fu_376_p21;
wire   [31:0] tmp_s_fu_414_p21;
wire   [31:0] xor_ln118_fu_478_p2;
wire   [31:0] and_ln118_1_fu_489_p2;
wire   [31:0] and_ln118_fu_484_p2;
wire   [26:0] trunc_ln118_fu_464_p1;
wire   [4:0] lshr_ln2_fu_468_p4;
wire   [31:0] add_ln118_1_fu_509_p2;
wire   [31:0] or_ln118_1_fu_501_p3;
wire   [31:0] or_ln118_fu_495_p2;
wire   [31:0] add_ln118_fu_520_p2;
wire   [31:0] add_ln118_2_fu_514_p2;
wire   [1:0] trunc_ln118_1_fu_532_p1;
wire   [29:0] lshr_ln118_1_fu_536_p4;
wire   [31:0] xor_ln118_1_fu_568_p2;
wire   [31:0] and_ln118_2_fu_574_p2;
wire   [31:0] and_ln118_3_fu_580_p2;
wire   [1:0] trunc_ln118_3_fu_591_p1;
wire   [29:0] lshr_ln118_3_fu_595_p4;
wire   [31:0] or_ln118_4_fu_627_p3;
wire   [31:0] add_ln118_5_fu_633_p2;
wire   [31:0] add_ln118_4_fu_658_p2;
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
wire   [4:0] tmp_9_fu_376_p1;
wire   [4:0] tmp_9_fu_376_p3;
wire   [4:0] tmp_9_fu_376_p5;
wire   [4:0] tmp_9_fu_376_p7;
wire   [4:0] tmp_9_fu_376_p9;
wire   [4:0] tmp_9_fu_376_p11;
wire   [4:0] tmp_9_fu_376_p13;
wire   [4:0] tmp_9_fu_376_p15;
wire  signed [4:0] tmp_9_fu_376_p17;
wire  signed [4:0] tmp_9_fu_376_p19;
wire   [4:0] tmp_s_fu_414_p1;
wire   [4:0] tmp_s_fu_414_p3;
wire   [4:0] tmp_s_fu_414_p5;
wire   [4:0] tmp_s_fu_414_p7;
wire   [4:0] tmp_s_fu_414_p9;
wire   [4:0] tmp_s_fu_414_p11;
wire   [4:0] tmp_s_fu_414_p13;
wire   [4:0] tmp_s_fu_414_p15;
wire  signed [4:0] tmp_s_fu_414_p17;
wire  signed [4:0] tmp_s_fu_414_p19;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_1_fu_124 = 32'd0;
#0 E_9_fu_128 = 32'd0;
#0 B_1_fu_132 = 32'd0;
#0 B_7_fu_136 = 32'd0;
#0 i_1_fu_140 = 5'd0;
#0 E_10_fu_144 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_21_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h2 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h6 ),.din3_WIDTH( 32 ),.CASE4( 5'h8 ),.din4_WIDTH( 32 ),.CASE5( 5'hA ),.din5_WIDTH( 32 ),.CASE6( 5'hC ),.din6_WIDTH( 32 ),.CASE7( 5'hE ),.din7_WIDTH( 32 ),.CASE8( 5'h10 ),.din8_WIDTH( 32 ),.CASE9( 5'h12 ),.din9_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_21_5_32_1_1_U83(.din0(W_load_4),.din1(W_2_load_4),.din2(W_4_load_4),.din3(W_6_load_4),.din4(W_8_load_4),.din5(W_10_load_4),.din6(W_12_load_4),.din7(W_14_load_4),.din8(W_16_load_4),.din9(W_18_load_4),.def(tmp_9_fu_376_p21),.sel(i_1_fu_140),.dout(tmp_9_fu_376_p23));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_21_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h2 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h6 ),.din3_WIDTH( 32 ),.CASE4( 5'h8 ),.din4_WIDTH( 32 ),.CASE5( 5'hA ),.din5_WIDTH( 32 ),.CASE6( 5'hC ),.din6_WIDTH( 32 ),.CASE7( 5'hE ),.din7_WIDTH( 32 ),.CASE8( 5'h10 ),.din8_WIDTH( 32 ),.CASE9( 5'h12 ),.din9_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_21_5_32_1_1_U84(.din0(W_1_load_4),.din1(W_3_load_4),.din2(W_5_load_4),.din3(W_7_load_4),.din4(W_9_load_4),.din5(W_11_load_4),.din6(W_13_load_4),.din7(W_15_load_4),.din8(W_17_load_4),.din9(W_19_load_4),.def(tmp_s_fu_414_p21),.sel(i_1_fu_140),.dout(tmp_s_fu_414_p23));
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
            B_1_fu_132 <= B;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln116_reg_846 == 1'd1))) begin
            B_1_fu_132 <= temp_reg_865;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        B_7_fu_136 <= A;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_7_fu_136 <= temp_3_fu_662_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_10_fu_144 <= C;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln116_reg_846 == 1'd1))) begin
        E_10_fu_144 <= C_3_fu_605_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_1_fu_124 <= E;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln116_reg_846 == 1'd1))) begin
        E_1_fu_124 <= C_10_reg_839;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        E_9_fu_128 <= D;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln116_reg_846 == 1'd1))) begin
        E_9_fu_128 <= C_11_fu_546_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_1_fu_140 <= 5'd0;
        end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln116_reg_846 == 1'd1))) begin
            i_1_fu_140 <= add_ln116_fu_644_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_10_reg_839 <= E_10_fu_144;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_9_load_reg_860 <= E_9_fu_128;
        lshr_ln118_2_reg_875 <= {{temp_fu_526_p2[31:27]}};
        or_ln118_2_reg_880 <= or_ln118_2_fu_585_p2;
        temp_reg_865 <= temp_fu_526_p2;
        trunc_ln118_2_reg_870 <= trunc_ln118_2_fu_554_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln118_6_reg_885 <= add_ln118_6_fu_638_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_reg_834 <= i_1_fu_140;
        icmp_ln116_reg_846 <= icmp_ln116_fu_370_p2;
        tmp_9_reg_850 <= tmp_9_fu_376_p23;
        tmp_s_reg_855 <= tmp_s_fu_414_p23;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_370_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_13_out_ap_vld = 1'b1;
    end else begin
        A_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_370_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_out_ap_vld = 1'b1;
    end else begin
        B_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_370_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_13_out_ap_vld = 1'b1;
    end else begin
        C_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_370_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_13_out_ap_vld = 1'b1;
    end else begin
        D_13_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_fu_370_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_1_out_ap_vld = 1'b1;
    end else begin
        E_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_fu_370_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
assign A_13_out = B_7_fu_136;
assign B_1_out = B_1_fu_132;
assign C_11_fu_546_p3 = {{trunc_ln118_1_fu_532_p1}, {lshr_ln118_1_fu_536_p4}};
assign C_13_out = E_10_fu_144;
assign C_3_fu_605_p3 = {{trunc_ln118_3_fu_591_p1}, {lshr_ln118_3_fu_595_p4}};
assign D_13_out = E_9_fu_128;
assign E_1_out = E_1_fu_124;
assign add_ln116_fu_644_p2 = (i_reg_834 + 5'd2);
assign add_ln118_1_fu_509_p2 = (tmp_9_reg_850 + 32'd1518500249);
assign add_ln118_2_fu_514_p2 = (add_ln118_1_fu_509_p2 + or_ln118_1_fu_501_p3);
assign add_ln118_4_fu_658_p2 = (E_9_load_reg_860 + or_ln118_2_reg_880);
assign add_ln118_5_fu_633_p2 = (tmp_s_reg_855 + 32'd1518500249);
assign add_ln118_6_fu_638_p2 = (or_ln118_4_fu_627_p3 + add_ln118_5_fu_633_p2);
assign add_ln118_fu_520_p2 = (or_ln118_fu_495_p2 + E_1_fu_124);
assign and_ln118_1_fu_489_p2 = (xor_ln118_fu_478_p2 & E_9_fu_128);
assign and_ln118_2_fu_574_p2 = (C_11_fu_546_p3 & B_7_fu_136);
assign and_ln118_3_fu_580_p2 = (xor_ln118_1_fu_568_p2 & C_10_reg_839);
assign and_ln118_fu_484_p2 = (C_10_reg_839 & B_1_fu_132);
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
assign icmp_ln116_fu_370_p2 = ((i_1_fu_140 < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_1_fu_536_p4 = {{B_1_fu_132[31:2]}};
assign lshr_ln118_3_fu_595_p4 = {{B_7_fu_136[31:2]}};
assign lshr_ln2_fu_468_p4 = {{B_7_fu_136[31:27]}};
assign or_ln118_1_fu_501_p3 = {{trunc_ln118_fu_464_p1}, {lshr_ln2_fu_468_p4}};
assign or_ln118_2_fu_585_p2 = (and_ln118_3_fu_580_p2 | and_ln118_2_fu_574_p2);
assign or_ln118_4_fu_627_p3 = {{trunc_ln118_2_reg_870}, {lshr_ln118_2_reg_875}};
assign or_ln118_fu_495_p2 = (and_ln118_fu_484_p2 | and_ln118_1_fu_489_p2);
assign temp_3_fu_662_p2 = (add_ln118_6_reg_885 + add_ln118_4_fu_658_p2);
assign temp_fu_526_p2 = (add_ln118_fu_520_p2 + add_ln118_2_fu_514_p2);
assign tmp_9_fu_376_p21 = 'bx;
assign tmp_s_fu_414_p21 = 'bx;
assign trunc_ln118_1_fu_532_p1 = B_1_fu_132[1:0];
assign trunc_ln118_2_fu_554_p1 = temp_fu_526_p2[26:0];
assign trunc_ln118_3_fu_591_p1 = B_7_fu_136[1:0];
assign trunc_ln118_fu_464_p1 = B_7_fu_136[26:0];
assign xor_ln118_1_fu_568_p2 = (32'd4294967295 ^ B_7_fu_136);
assign xor_ln118_fu_478_p2 = (32'd4294967295 ^ B_1_fu_132);
endmodule 