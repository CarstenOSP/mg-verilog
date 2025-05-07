module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,B_16_reload,B_2_reload,D_16_reload,E_16_reload,E_2_reload,W_address0,W_ce0,W_q0,W_1_address0,W_1_ce0,W_1_q0,W_2_address0,W_2_ce0,W_2_q0,W_3_address0,W_3_ce0,W_3_q0,W_4_address0,W_4_ce0,W_4_q0,W_5_address0,W_5_ce0,W_5_q0,W_6_address0,W_6_ce0,W_6_q0,W_7_address0,W_7_ce0,W_7_q0,W_8_address0,W_8_ce0,W_8_q0,W_9_address0,W_9_ce0,W_9_q0,W_10_address0,W_10_ce0,W_10_q0,W_11_address0,W_11_ce0,W_11_q0,W_12_address0,W_12_ce0,W_12_q0,W_13_address0,W_13_ce0,W_13_q0,W_14_address0,W_14_ce0,W_14_q0,W_15_address0,W_15_ce0,W_15_q0,W_16_address0,W_16_ce0,W_16_q0,W_17_address0,W_17_ce0,W_17_q0,W_18_address0,W_18_ce0,W_18_q0,W_19_address0,W_19_ce0,W_19_q0,W_20_address0,W_20_ce0,W_20_q0,W_21_address0,W_21_ce0,W_21_q0,W_22_address0,W_22_ce0,W_22_q0,W_23_address0,W_23_ce0,W_23_q0,W_24_address0,W_24_ce0,W_24_q0,W_25_address0,W_25_ce0,W_25_q0,W_26_address0,W_26_ce0,W_26_q0,W_27_address0,W_27_ce0,W_27_q0,W_28_address0,W_28_ce0,W_28_q0,W_29_address0,W_29_ce0,W_29_q0,W_30_address0,W_30_ce0,W_30_q0,W_31_address0,W_31_ce0,W_31_q0,A_17_out,A_17_out_ap_vld,B_4_out,B_4_out_ap_vld,C_15_out,C_15_out_ap_vld,D_17_out,D_17_out_ap_vld,E_4_out,E_4_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] B_16_reload;
input  [31:0] B_2_reload;
input  [31:0] D_16_reload;
input  [31:0] E_16_reload;
input  [31:0] E_2_reload;
output  [1:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [1:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [1:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [1:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [1:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [1:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [1:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [1:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [1:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [1:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [1:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [1:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [1:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [1:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [1:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [1:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [1:0] W_16_address0;
output   W_16_ce0;
input  [31:0] W_16_q0;
output  [1:0] W_17_address0;
output   W_17_ce0;
input  [31:0] W_17_q0;
output  [1:0] W_18_address0;
output   W_18_ce0;
input  [31:0] W_18_q0;
output  [1:0] W_19_address0;
output   W_19_ce0;
input  [31:0] W_19_q0;
output  [1:0] W_20_address0;
output   W_20_ce0;
input  [31:0] W_20_q0;
output  [1:0] W_21_address0;
output   W_21_ce0;
input  [31:0] W_21_q0;
output  [1:0] W_22_address0;
output   W_22_ce0;
input  [31:0] W_22_q0;
output  [1:0] W_23_address0;
output   W_23_ce0;
input  [31:0] W_23_q0;
output  [1:0] W_24_address0;
output   W_24_ce0;
input  [31:0] W_24_q0;
output  [1:0] W_25_address0;
output   W_25_ce0;
input  [31:0] W_25_q0;
output  [1:0] W_26_address0;
output   W_26_ce0;
input  [31:0] W_26_q0;
output  [1:0] W_27_address0;
output   W_27_ce0;
input  [31:0] W_27_q0;
output  [1:0] W_28_address0;
output   W_28_ce0;
input  [31:0] W_28_q0;
output  [1:0] W_29_address0;
output   W_29_ce0;
input  [31:0] W_29_q0;
output  [1:0] W_30_address0;
output   W_30_ce0;
input  [31:0] W_30_q0;
output  [1:0] W_31_address0;
output   W_31_ce0;
input  [31:0] W_31_q0;
output  [31:0] A_17_out;
output   A_17_out_ap_vld;
output  [31:0] B_4_out;
output   B_4_out_ap_vld;
output  [31:0] C_15_out;
output   C_15_out_ap_vld;
output  [31:0] D_17_out;
output   D_17_out_ap_vld;
output  [31:0] E_4_out;
output   E_4_out_ap_vld;
reg ap_idle;
reg A_17_out_ap_vld;
reg B_4_out_ap_vld;
reg C_15_out_ap_vld;
reg D_17_out_ap_vld;
reg E_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln120_fu_740_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln120_reg_1110;
reg   [0:0] icmp_ln120_reg_1110_pp0_iter1_reg;
reg   [0:0] icmp_ln120_reg_1110_pp0_iter2_reg;
wire   [4:0] trunc_ln120_fu_746_p1;
reg   [4:0] trunc_ln120_reg_1114;
wire   [31:0] tmp_6_fu_805_p67;
reg   [31:0] tmp_6_reg_1279;
reg   [31:0] D_6_reg_1284;
reg   [31:0] C_reg_1290;
wire   [31:0] add_ln122_2_fu_966_p2;
reg   [31:0] add_ln122_2_reg_1295;
wire   [63:0] zext_ln100_fu_758_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_4_fu_202;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [31:0] B_4_fu_206;
reg   [31:0] ap_sig_allocacmp_B_4_load;
reg   [5:0] i_2_fu_210;
wire   [5:0] add_ln120_fu_794_p2;
reg   [5:0] ap_sig_allocacmp_i;
reg   [31:0] E_fu_214;
reg   [31:0] D_fu_218;
wire   [31:0] C_3_fu_986_p3;
reg   [31:0] B_fu_222;
wire   [31:0] temp_fu_1039_p2;
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
reg    W_16_ce0_local;
reg    W_17_ce0_local;
reg    W_18_ce0_local;
reg    W_19_ce0_local;
reg    W_20_ce0_local;
reg    W_21_ce0_local;
reg    W_22_ce0_local;
reg    W_23_ce0_local;
reg    W_24_ce0_local;
reg    W_25_ce0_local;
reg    W_26_ce0_local;
reg    W_27_ce0_local;
reg    W_28_ce0_local;
reg    W_29_ce0_local;
reg    W_30_ce0_local;
reg    W_31_ce0_local;
wire   [0:0] tmp_fu_750_p3;
wire   [31:0] tmp_6_fu_805_p65;
wire   [31:0] xor_ln122_fu_949_p2;
wire   [31:0] add_ln122_1_fu_961_p2;
wire   [31:0] xor_ln122_1_fu_955_p2;
wire   [1:0] trunc_ln122_1_fu_972_p1;
wire   [29:0] lshr_ln122_1_fu_976_p4;
wire   [26:0] trunc_ln122_fu_1011_p1;
wire   [4:0] lshr_ln4_fu_1015_p4;
wire   [31:0] or_ln_fu_1025_p3;
wire   [31:0] add_ln122_fu_1033_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_6_fu_805_p1;
wire   [4:0] tmp_6_fu_805_p3;
wire   [4:0] tmp_6_fu_805_p5;
wire   [4:0] tmp_6_fu_805_p7;
wire   [4:0] tmp_6_fu_805_p9;
wire   [4:0] tmp_6_fu_805_p11;
wire   [4:0] tmp_6_fu_805_p13;
wire   [4:0] tmp_6_fu_805_p15;
wire   [4:0] tmp_6_fu_805_p17;
wire   [4:0] tmp_6_fu_805_p19;
wire   [4:0] tmp_6_fu_805_p21;
wire   [4:0] tmp_6_fu_805_p23;
wire   [4:0] tmp_6_fu_805_p25;
wire   [4:0] tmp_6_fu_805_p27;
wire   [4:0] tmp_6_fu_805_p29;
wire   [4:0] tmp_6_fu_805_p31;
wire  signed [4:0] tmp_6_fu_805_p33;
wire  signed [4:0] tmp_6_fu_805_p35;
wire  signed [4:0] tmp_6_fu_805_p37;
wire  signed [4:0] tmp_6_fu_805_p39;
wire  signed [4:0] tmp_6_fu_805_p41;
wire  signed [4:0] tmp_6_fu_805_p43;
wire  signed [4:0] tmp_6_fu_805_p45;
wire  signed [4:0] tmp_6_fu_805_p47;
wire  signed [4:0] tmp_6_fu_805_p49;
wire  signed [4:0] tmp_6_fu_805_p51;
wire  signed [4:0] tmp_6_fu_805_p53;
wire  signed [4:0] tmp_6_fu_805_p55;
wire  signed [4:0] tmp_6_fu_805_p57;
wire  signed [4:0] tmp_6_fu_805_p59;
wire  signed [4:0] tmp_6_fu_805_p61;
wire  signed [4:0] tmp_6_fu_805_p63;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 E_4_fu_202 = 32'd0;
#0 B_4_fu_206 = 32'd0;
#0 i_2_fu_210 = 6'd0;
#0 E_fu_214 = 32'd0;
#0 D_fu_218 = 32'd0;
#0 B_fu_222 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_65_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h1 ),.din1_WIDTH( 32 ),.CASE2( 5'h2 ),.din2_WIDTH( 32 ),.CASE3( 5'h3 ),.din3_WIDTH( 32 ),.CASE4( 5'h4 ),.din4_WIDTH( 32 ),.CASE5( 5'h5 ),.din5_WIDTH( 32 ),.CASE6( 5'h6 ),.din6_WIDTH( 32 ),.CASE7( 5'h7 ),.din7_WIDTH( 32 ),.CASE8( 5'h8 ),.din8_WIDTH( 32 ),.CASE9( 5'h9 ),.din9_WIDTH( 32 ),.CASE10( 5'hA ),.din10_WIDTH( 32 ),.CASE11( 5'hB ),.din11_WIDTH( 32 ),.CASE12( 5'hC ),.din12_WIDTH( 32 ),.CASE13( 5'hD ),.din13_WIDTH( 32 ),.CASE14( 5'hE ),.din14_WIDTH( 32 ),.CASE15( 5'hF ),.din15_WIDTH( 32 ),.CASE16( 5'h10 ),.din16_WIDTH( 32 ),.CASE17( 5'h11 ),.din17_WIDTH( 32 ),.CASE18( 5'h12 ),.din18_WIDTH( 32 ),.CASE19( 5'h13 ),.din19_WIDTH( 32 ),.CASE20( 5'h14 ),.din20_WIDTH( 32 ),.CASE21( 5'h15 ),.din21_WIDTH( 32 ),.CASE22( 5'h16 ),.din22_WIDTH( 32 ),.CASE23( 5'h17 ),.din23_WIDTH( 32 ),.CASE24( 5'h18 ),.din24_WIDTH( 32 ),.CASE25( 5'h19 ),.din25_WIDTH( 32 ),.CASE26( 5'h1A ),.din26_WIDTH( 32 ),.CASE27( 5'h1B ),.din27_WIDTH( 32 ),.CASE28( 5'h1C ),.din28_WIDTH( 32 ),.CASE29( 5'h1D ),.din29_WIDTH( 32 ),.CASE30( 5'h1E ),.din30_WIDTH( 32 ),.CASE31( 5'h1F ),.din31_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_65_5_32_1_1_x_U78(.din0(W_q0),.din1(W_1_q0),.din2(W_2_q0),.din3(W_3_q0),.din4(W_4_q0),.din5(W_5_q0),.din6(W_6_q0),.din7(W_7_q0),.din8(W_8_q0),.din9(W_9_q0),.din10(W_10_q0),.din11(W_11_q0),.din12(W_12_q0),.din13(W_13_q0),.din14(W_14_q0),.din15(W_15_q0),.din16(W_16_q0),.din17(W_17_q0),.din18(W_18_q0),.din19(W_19_q0),.din20(W_20_q0),.din21(W_21_q0),.din22(W_22_q0),.din23(W_23_q0),.din24(W_24_q0),.din25(W_25_q0),.din26(W_26_q0),.din27(W_27_q0),.din28(W_28_q0),.din29(W_29_q0),.din30(W_30_q0),.din31(W_31_q0),.def(tmp_6_fu_805_p65),.sel(trunc_ln120_reg_1114),.dout(tmp_6_fu_805_p67));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            B_4_fu_206 <= B_2_reload;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln120_reg_1110_pp0_iter2_reg == 1'd0))) begin
            B_4_fu_206 <= B_fu_222;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            B_fu_222 <= B_16_reload;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln120_reg_1110_pp0_iter2_reg == 1'd0))) begin
            B_fu_222 <= temp_fu_1039_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            D_fu_218 <= D_16_reload;
        end else if (((icmp_ln120_reg_1110_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            D_fu_218 <= C_3_fu_986_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            E_4_fu_202 <= E_2_reload;
        end else if (((ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln120_reg_1110_pp0_iter2_reg == 1'd0))) begin
            E_4_fu_202 <= D_6_reg_1284;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            E_fu_214 <= E_16_reload;
        end else if (((icmp_ln120_reg_1110_pp0_iter1_reg == 1'd0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
            E_fu_214 <= D_fu_218;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln120_fu_740_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_2_fu_210 <= add_ln120_fu_794_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_2_fu_210 <= 6'd20;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        C_reg_1290 <= D_fu_218;
        D_6_reg_1284 <= E_fu_214;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln122_2_reg_1295 <= add_ln122_2_fu_966_p2;
        icmp_ln120_reg_1110_pp0_iter2_reg <= icmp_ln120_reg_1110_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln120_reg_1110 <= icmp_ln120_fu_740_p2;
        icmp_ln120_reg_1110_pp0_iter1_reg <= icmp_ln120_reg_1110;
        tmp_6_reg_1279 <= tmp_6_fu_805_p67;
        trunc_ln120_reg_1114 <= trunc_ln120_fu_746_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln120_reg_1110_pp0_iter2_reg == 1'd1))) begin
        A_17_out_ap_vld = 1'b1;
    end else begin
        A_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln120_reg_1110_pp0_iter2_reg == 1'd1))) begin
        B_4_out_ap_vld = 1'b1;
    end else begin
        B_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln120_reg_1110_pp0_iter2_reg == 1'd1))) begin
        C_15_out_ap_vld = 1'b1;
    end else begin
        C_15_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln120_reg_1110_pp0_iter2_reg == 1'd1))) begin
        D_17_out_ap_vld = 1'b1;
    end else begin
        D_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln120_reg_1110_pp0_iter2_reg == 1'd1))) begin
        E_4_out_ap_vld = 1'b1;
    end else begin
        E_4_out_ap_vld = 1'b0;
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
        W_16_ce0_local = 1'b1;
    end else begin
        W_16_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_17_ce0_local = 1'b1;
    end else begin
        W_17_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_18_ce0_local = 1'b1;
    end else begin
        W_18_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_19_ce0_local = 1'b1;
    end else begin
        W_19_ce0_local = 1'b0;
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
        W_20_ce0_local = 1'b1;
    end else begin
        W_20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_21_ce0_local = 1'b1;
    end else begin
        W_21_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_22_ce0_local = 1'b1;
    end else begin
        W_22_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_23_ce0_local = 1'b1;
    end else begin
        W_23_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_24_ce0_local = 1'b1;
    end else begin
        W_24_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_25_ce0_local = 1'b1;
    end else begin
        W_25_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_26_ce0_local = 1'b1;
    end else begin
        W_26_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_27_ce0_local = 1'b1;
    end else begin
        W_27_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_28_ce0_local = 1'b1;
    end else begin
        W_28_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_29_ce0_local = 1'b1;
    end else begin
        W_29_ce0_local = 1'b0;
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
        W_30_ce0_local = 1'b1;
    end else begin
        W_30_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_31_ce0_local = 1'b1;
    end else begin
        W_31_ce0_local = 1'b0;
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
    if (((icmp_ln120_fu_740_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln120_reg_1110_pp0_iter2_reg == 1'd0))) begin
        ap_sig_allocacmp_B_4_load = B_fu_222;
    end else begin
        ap_sig_allocacmp_B_4_load = B_4_fu_206;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 6'd20;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_210;
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
assign A_17_out = B_fu_222;
assign B_4_out = B_4_fu_206;
assign C_15_out = C_reg_1290;
assign C_3_fu_986_p3 = {{trunc_ln122_1_fu_972_p1}, {lshr_ln122_1_fu_976_p4}};
assign D_17_out = D_6_reg_1284;
assign E_4_out = E_4_fu_202;
assign W_10_address0 = zext_ln100_fu_758_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_758_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_758_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_758_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_758_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_758_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_16_address0 = zext_ln100_fu_758_p1;
assign W_16_ce0 = W_16_ce0_local;
assign W_17_address0 = zext_ln100_fu_758_p1;
assign W_17_ce0 = W_17_ce0_local;
assign W_18_address0 = zext_ln100_fu_758_p1;
assign W_18_ce0 = W_18_ce0_local;
assign W_19_address0 = zext_ln100_fu_758_p1;
assign W_19_ce0 = W_19_ce0_local;
assign W_1_address0 = zext_ln100_fu_758_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_20_address0 = zext_ln100_fu_758_p1;
assign W_20_ce0 = W_20_ce0_local;
assign W_21_address0 = zext_ln100_fu_758_p1;
assign W_21_ce0 = W_21_ce0_local;
assign W_22_address0 = zext_ln100_fu_758_p1;
assign W_22_ce0 = W_22_ce0_local;
assign W_23_address0 = zext_ln100_fu_758_p1;
assign W_23_ce0 = W_23_ce0_local;
assign W_24_address0 = zext_ln100_fu_758_p1;
assign W_24_ce0 = W_24_ce0_local;
assign W_25_address0 = zext_ln100_fu_758_p1;
assign W_25_ce0 = W_25_ce0_local;
assign W_26_address0 = zext_ln100_fu_758_p1;
assign W_26_ce0 = W_26_ce0_local;
assign W_27_address0 = zext_ln100_fu_758_p1;
assign W_27_ce0 = W_27_ce0_local;
assign W_28_address0 = zext_ln100_fu_758_p1;
assign W_28_ce0 = W_28_ce0_local;
assign W_29_address0 = zext_ln100_fu_758_p1;
assign W_29_ce0 = W_29_ce0_local;
assign W_2_address0 = zext_ln100_fu_758_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_30_address0 = zext_ln100_fu_758_p1;
assign W_30_ce0 = W_30_ce0_local;
assign W_31_address0 = zext_ln100_fu_758_p1;
assign W_31_ce0 = W_31_ce0_local;
assign W_3_address0 = zext_ln100_fu_758_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_758_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_758_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_758_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_758_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_758_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_758_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_758_p1;
assign W_ce0 = W_ce0_local;
assign add_ln120_fu_794_p2 = (ap_sig_allocacmp_i + 6'd1);
assign add_ln122_1_fu_961_p2 = (tmp_6_reg_1279 + 32'd1859775393);
assign add_ln122_2_fu_966_p2 = (add_ln122_1_fu_961_p2 + xor_ln122_1_fu_955_p2);
assign add_ln122_fu_1033_p2 = (or_ln_fu_1025_p3 + E_4_fu_202);
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
assign icmp_ln120_fu_740_p2 = ((ap_sig_allocacmp_i == 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln122_1_fu_976_p4 = {{ap_sig_allocacmp_B_4_load[31:2]}};
assign lshr_ln4_fu_1015_p4 = {{B_fu_222[31:27]}};
assign or_ln_fu_1025_p3 = {{trunc_ln122_fu_1011_p1}, {lshr_ln4_fu_1015_p4}};
assign temp_fu_1039_p2 = (add_ln122_2_reg_1295 + add_ln122_fu_1033_p2);
assign tmp_6_fu_805_p65 = 'bx;
assign tmp_fu_750_p3 = ap_sig_allocacmp_i[32'd5];
assign trunc_ln120_fu_746_p1 = ap_sig_allocacmp_i[4:0];
assign trunc_ln122_1_fu_972_p1 = ap_sig_allocacmp_B_4_load[1:0];
assign trunc_ln122_fu_1011_p1 = B_fu_222[26:0];
assign xor_ln122_1_fu_955_p2 = (xor_ln122_fu_949_p2 ^ D_fu_218);
assign xor_ln122_fu_949_p2 = (ap_sig_allocacmp_B_4_load ^ E_fu_214);
assign zext_ln100_fu_758_p1 = tmp_fu_750_p3;
endmodule 