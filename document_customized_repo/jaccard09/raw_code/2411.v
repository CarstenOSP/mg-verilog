module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_26_reload,B_19_reload,E_25_reload,D_26_reload,E_20_reload,W_address0,W_ce0,W_q0,W_2_address0,W_2_ce0,W_2_q0,W_4_address0,W_4_ce0,W_4_q0,W_6_address0,W_6_ce0,W_6_q0,W_8_address0,W_8_ce0,W_8_q0,W_10_address0,W_10_ce0,W_10_q0,W_12_address0,W_12_ce0,W_12_q0,W_14_address0,W_14_ce0,W_14_q0,W_16_address0,W_16_ce0,W_16_q0,W_18_address0,W_18_ce0,W_18_q0,W_20_address0,W_20_ce0,W_20_q0,W_22_address0,W_22_ce0,W_22_q0,W_24_address0,W_24_ce0,W_24_q0,W_26_address0,W_26_ce0,W_26_q0,W_28_address0,W_28_ce0,W_28_q0,W_30_address0,W_30_ce0,W_30_q0,W_1_address0,W_1_ce0,W_1_q0,W_3_address0,W_3_ce0,W_3_q0,W_5_address0,W_5_ce0,W_5_q0,W_7_address0,W_7_ce0,W_7_q0,W_9_address0,W_9_ce0,W_9_q0,W_11_address0,W_11_ce0,W_11_q0,W_13_address0,W_13_ce0,W_13_q0,W_15_address0,W_15_ce0,W_15_q0,W_17_address0,W_17_ce0,W_17_q0,W_19_address0,W_19_ce0,W_19_q0,W_21_address0,W_21_ce0,W_21_q0,W_23_address0,W_23_ce0,W_23_q0,W_25_address0,W_25_ce0,W_25_q0,W_27_address0,W_27_ce0,W_27_q0,W_29_address0,W_29_ce0,W_29_q0,W_31_address0,W_31_ce0,W_31_q0,A_28_out,A_28_out_ap_vld,B_22_out,B_22_out_ap_vld,C_23_out,C_23_out_ap_vld,D_28_out,D_28_out_ap_vld,E_22_out,E_22_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_26_reload;
input  [31:0] B_19_reload;
input  [31:0] E_25_reload;
input  [31:0] D_26_reload;
input  [31:0] E_20_reload;
output  [1:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [1:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [1:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [1:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [1:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [1:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [1:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [1:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [1:0] W_16_address0;
output   W_16_ce0;
input  [31:0] W_16_q0;
output  [1:0] W_18_address0;
output   W_18_ce0;
input  [31:0] W_18_q0;
output  [1:0] W_20_address0;
output   W_20_ce0;
input  [31:0] W_20_q0;
output  [1:0] W_22_address0;
output   W_22_ce0;
input  [31:0] W_22_q0;
output  [1:0] W_24_address0;
output   W_24_ce0;
input  [31:0] W_24_q0;
output  [1:0] W_26_address0;
output   W_26_ce0;
input  [31:0] W_26_q0;
output  [1:0] W_28_address0;
output   W_28_ce0;
input  [31:0] W_28_q0;
output  [1:0] W_30_address0;
output   W_30_ce0;
input  [31:0] W_30_q0;
output  [1:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [1:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [1:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [1:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [1:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [1:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [1:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [1:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [1:0] W_17_address0;
output   W_17_ce0;
input  [31:0] W_17_q0;
output  [1:0] W_19_address0;
output   W_19_ce0;
input  [31:0] W_19_q0;
output  [1:0] W_21_address0;
output   W_21_ce0;
input  [31:0] W_21_q0;
output  [1:0] W_23_address0;
output   W_23_ce0;
input  [31:0] W_23_q0;
output  [1:0] W_25_address0;
output   W_25_ce0;
input  [31:0] W_25_q0;
output  [1:0] W_27_address0;
output   W_27_ce0;
input  [31:0] W_27_q0;
output  [1:0] W_29_address0;
output   W_29_ce0;
input  [31:0] W_29_q0;
output  [1:0] W_31_address0;
output   W_31_ce0;
input  [31:0] W_31_q0;
output  [31:0] A_28_out;
output   A_28_out_ap_vld;
output  [31:0] B_22_out;
output   B_22_out_ap_vld;
output  [31:0] C_23_out;
output   C_23_out_ap_vld;
output  [31:0] D_28_out;
output   D_28_out_ap_vld;
output  [31:0] E_22_out;
output   E_22_out_ap_vld;
reg ap_idle;
reg A_28_out_ap_vld;
reg B_22_out_ap_vld;
reg C_23_out_ap_vld;
reg D_28_out_ap_vld;
reg E_22_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln128_reg_1177;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_1171;
wire   [0:0] icmp_ln128_fu_710_p2;
reg   [31:0] C_2_reg_1341;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_s_fu_769_p35;
reg   [31:0] tmp_s_reg_1348;
wire   [31:0] tmp_1_fu_841_p35;
reg   [31:0] tmp_1_reg_1353;
reg   [31:0] E_1_load_reg_1358;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] temp_fu_975_p2;
reg   [31:0] temp_reg_1363;
wire   [26:0] trunc_ln130_2_fu_1003_p1;
reg   [26:0] trunc_ln130_2_reg_1368;
reg   [4:0] lshr_ln130_2_reg_1373;
wire   [31:0] xor_ln130_3_fu_1023_p2;
reg   [31:0] xor_ln130_3_reg_1378;
wire   [31:0] add_ln130_6_fu_1085_p2;
reg   [31:0] add_ln130_6_reg_1383;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_726_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_172;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_1_fu_176;
wire   [31:0] C_3_fu_995_p3;
reg   [31:0] B_fu_180;
reg   [31:0] B_1_fu_184;
wire   [31:0] temp_1_fu_1099_p2;
reg   [6:0] i_fu_188;
wire   [6:0] add_ln128_fu_1050_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
reg   [31:0] E_2_fu_192;
wire   [31:0] C_fu_1042_p3;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_2_ce0_local;
reg    W_4_ce0_local;
reg    W_6_ce0_local;
reg    W_8_ce0_local;
reg    W_10_ce0_local;
reg    W_12_ce0_local;
reg    W_14_ce0_local;
reg    W_16_ce0_local;
reg    W_18_ce0_local;
reg    W_20_ce0_local;
reg    W_22_ce0_local;
reg    W_24_ce0_local;
reg    W_26_ce0_local;
reg    W_28_ce0_local;
reg    W_30_ce0_local;
reg    W_1_ce0_local;
reg    W_3_ce0_local;
reg    W_5_ce0_local;
reg    W_7_ce0_local;
reg    W_9_ce0_local;
reg    W_11_ce0_local;
reg    W_13_ce0_local;
reg    W_15_ce0_local;
reg    W_17_ce0_local;
reg    W_19_ce0_local;
reg    W_21_ce0_local;
reg    W_23_ce0_local;
reg    W_25_ce0_local;
reg    W_27_ce0_local;
reg    W_29_ce0_local;
reg    W_31_ce0_local;
wire   [1:0] lshr_ln100_5_fu_716_p4;
wire   [31:0] tmp_s_fu_769_p33;
wire   [4:0] trunc_ln128_fu_766_p1;
wire   [31:0] tmp_1_fu_841_p33;
wire   [31:0] xor_ln130_fu_939_p2;
wire   [26:0] trunc_ln130_fu_925_p1;
wire   [4:0] lshr_ln6_fu_929_p4;
wire   [31:0] add_ln130_1_fu_958_p2;
wire   [31:0] or_ln2_fu_950_p3;
wire   [31:0] xor_ln130_1_fu_944_p2;
wire   [31:0] add_ln130_fu_969_p2;
wire   [31:0] add_ln130_2_fu_963_p2;
wire   [1:0] trunc_ln130_1_fu_981_p1;
wire   [29:0] lshr_ln130_1_fu_985_p4;
wire   [31:0] xor_ln130_2_fu_1017_p2;
wire   [1:0] trunc_ln130_3_fu_1028_p1;
wire   [29:0] lshr_ln130_3_fu_1032_p4;
wire   [31:0] or_ln130_2_fu_1074_p3;
wire   [31:0] add_ln130_5_fu_1080_p2;
wire   [31:0] add_ln130_4_fu_1095_p2;
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
wire   [4:0] tmp_s_fu_769_p1;
wire   [4:0] tmp_s_fu_769_p3;
wire   [4:0] tmp_s_fu_769_p5;
wire   [4:0] tmp_s_fu_769_p7;
wire   [4:0] tmp_s_fu_769_p9;
wire   [4:0] tmp_s_fu_769_p11;
wire   [4:0] tmp_s_fu_769_p13;
wire   [4:0] tmp_s_fu_769_p15;
wire  signed [4:0] tmp_s_fu_769_p17;
wire  signed [4:0] tmp_s_fu_769_p19;
wire  signed [4:0] tmp_s_fu_769_p21;
wire  signed [4:0] tmp_s_fu_769_p23;
wire  signed [4:0] tmp_s_fu_769_p25;
wire  signed [4:0] tmp_s_fu_769_p27;
wire  signed [4:0] tmp_s_fu_769_p29;
wire  signed [4:0] tmp_s_fu_769_p31;
wire   [4:0] tmp_1_fu_841_p1;
wire   [4:0] tmp_1_fu_841_p3;
wire   [4:0] tmp_1_fu_841_p5;
wire   [4:0] tmp_1_fu_841_p7;
wire   [4:0] tmp_1_fu_841_p9;
wire   [4:0] tmp_1_fu_841_p11;
wire   [4:0] tmp_1_fu_841_p13;
wire   [4:0] tmp_1_fu_841_p15;
wire  signed [4:0] tmp_1_fu_841_p17;
wire  signed [4:0] tmp_1_fu_841_p19;
wire  signed [4:0] tmp_1_fu_841_p21;
wire  signed [4:0] tmp_1_fu_841_p23;
wire  signed [4:0] tmp_1_fu_841_p25;
wire  signed [4:0] tmp_1_fu_841_p27;
wire  signed [4:0] tmp_1_fu_841_p29;
wire  signed [4:0] tmp_1_fu_841_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_172 = 32'd0;
#0 E_1_fu_176 = 32'd0;
#0 B_fu_180 = 32'd0;
#0 B_1_fu_184 = 32'd0;
#0 i_fu_188 = 7'd0;
#0 E_2_fu_192 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h2 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h6 ),.din3_WIDTH( 32 ),.CASE4( 5'h8 ),.din4_WIDTH( 32 ),.CASE5( 5'hA ),.din5_WIDTH( 32 ),.CASE6( 5'hC ),.din6_WIDTH( 32 ),.CASE7( 5'hE ),.din7_WIDTH( 32 ),.CASE8( 5'h10 ),.din8_WIDTH( 32 ),.CASE9( 5'h12 ),.din9_WIDTH( 32 ),.CASE10( 5'h14 ),.din10_WIDTH( 32 ),.CASE11( 5'h16 ),.din11_WIDTH( 32 ),.CASE12( 5'h18 ),.din12_WIDTH( 32 ),.CASE13( 5'h1A ),.din13_WIDTH( 32 ),.CASE14( 5'h1C ),.din14_WIDTH( 32 ),.CASE15( 5'h1E ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_33_5_32_1_1_U184(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.din4(W_8_q0),.din5(W_10_q0),.din6(W_12_q0),.din7(W_14_q0),.din8(W_16_q0),.din9(W_18_q0),.din10(W_20_q0),.din11(W_22_q0),.din12(W_24_q0),.din13(W_26_q0),.din14(W_28_q0),.din15(W_30_q0),.def(tmp_s_fu_769_p33),.sel(trunc_ln128_fu_766_p1),.dout(tmp_s_fu_769_p35));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h2 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h6 ),.din3_WIDTH( 32 ),.CASE4( 5'h8 ),.din4_WIDTH( 32 ),.CASE5( 5'hA ),.din5_WIDTH( 32 ),.CASE6( 5'hC ),.din6_WIDTH( 32 ),.CASE7( 5'hE ),.din7_WIDTH( 32 ),.CASE8( 5'h10 ),.din8_WIDTH( 32 ),.CASE9( 5'h12 ),.din9_WIDTH( 32 ),.CASE10( 5'h14 ),.din10_WIDTH( 32 ),.CASE11( 5'h16 ),.din11_WIDTH( 32 ),.CASE12( 5'h18 ),.din12_WIDTH( 32 ),.CASE13( 5'h1A ),.din13_WIDTH( 32 ),.CASE14( 5'h1C ),.din14_WIDTH( 32 ),.CASE15( 5'h1E ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_33_5_32_1_1_U185(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.din4(W_9_q0),.din5(W_11_q0),.din6(W_13_q0),.din7(W_15_q0),.din8(W_17_q0),.din9(W_19_q0),.din10(W_21_q0),.din11(W_23_q0),.din12(W_25_q0),.din13(W_27_q0),.din14(W_29_q0),.din15(W_31_q0),.def(tmp_1_fu_841_p33),.sel(trunc_ln128_fu_766_p1),.dout(tmp_1_fu_841_p35));
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
        B_1_fu_184 <= A_26_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_fu_184 <= temp_1_fu_1099_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_180 <= B_19_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_fu_180 <= temp_reg_1363;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_176 <= D_26_reload;
    end else if (((icmp_ln128_reg_1177 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_1_fu_176 <= C_3_fu_995_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_192 <= E_25_reload;
    end else if (((icmp_ln128_reg_1177 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_2_fu_192 <= C_fu_1042_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_172 <= E_20_reload;
    end else if (((icmp_ln128_reg_1177 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_fu_172 <= C_2_reg_1341;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_188 <= 7'd60;
    end else if (((icmp_ln128_reg_1177 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_188 <= add_ln128_fu_1050_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_2_reg_1341 <= E_2_fu_192;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_1_load_reg_1358 <= E_1_fu_176;
        lshr_ln130_2_reg_1373 <= {{temp_fu_975_p2[31:27]}};
        temp_reg_1363 <= temp_fu_975_p2;
        trunc_ln130_2_reg_1368 <= trunc_ln130_2_fu_1003_p1;
        xor_ln130_3_reg_1378 <= xor_ln130_3_fu_1023_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln130_6_reg_1383 <= add_ln130_6_fu_1085_p2;
        i_1_reg_1171 <= ap_sig_allocacmp_i_1;
        icmp_ln128_reg_1177 <= icmp_ln128_fu_710_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_1353 <= tmp_1_fu_841_p35;
        tmp_s_reg_1348 <= tmp_s_fu_769_p35;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1177 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_28_out_ap_vld = 1'b1;
    end else begin
        A_28_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1177 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_22_out_ap_vld = 1'b1;
    end else begin
        B_22_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1177 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_23_out_ap_vld = 1'b1;
    end else begin
        C_23_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1177 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_28_out_ap_vld = 1'b1;
    end else begin
        D_28_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1177 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_22_out_ap_vld = 1'b1;
    end else begin
        E_22_out_ap_vld = 1'b0;
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
    if (((icmp_ln128_reg_1177 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_188;
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
assign A_28_out = B_1_fu_184;
assign B_22_out = B_fu_180;
assign C_23_out = E_2_fu_192;
assign C_3_fu_995_p3 = {{trunc_ln130_1_fu_981_p1}, {lshr_ln130_1_fu_985_p4}};
assign C_fu_1042_p3 = {{trunc_ln130_3_fu_1028_p1}, {lshr_ln130_3_fu_1032_p4}};
assign D_28_out = E_1_fu_176;
assign E_22_out = E_fu_172;
assign W_10_address0 = zext_ln100_fu_726_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_726_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_726_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_726_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_726_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_726_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_16_address0 = zext_ln100_fu_726_p1;
assign W_16_ce0 = W_16_ce0_local;
assign W_17_address0 = zext_ln100_fu_726_p1;
assign W_17_ce0 = W_17_ce0_local;
assign W_18_address0 = zext_ln100_fu_726_p1;
assign W_18_ce0 = W_18_ce0_local;
assign W_19_address0 = zext_ln100_fu_726_p1;
assign W_19_ce0 = W_19_ce0_local;
assign W_1_address0 = zext_ln100_fu_726_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_20_address0 = zext_ln100_fu_726_p1;
assign W_20_ce0 = W_20_ce0_local;
assign W_21_address0 = zext_ln100_fu_726_p1;
assign W_21_ce0 = W_21_ce0_local;
assign W_22_address0 = zext_ln100_fu_726_p1;
assign W_22_ce0 = W_22_ce0_local;
assign W_23_address0 = zext_ln100_fu_726_p1;
assign W_23_ce0 = W_23_ce0_local;
assign W_24_address0 = zext_ln100_fu_726_p1;
assign W_24_ce0 = W_24_ce0_local;
assign W_25_address0 = zext_ln100_fu_726_p1;
assign W_25_ce0 = W_25_ce0_local;
assign W_26_address0 = zext_ln100_fu_726_p1;
assign W_26_ce0 = W_26_ce0_local;
assign W_27_address0 = zext_ln100_fu_726_p1;
assign W_27_ce0 = W_27_ce0_local;
assign W_28_address0 = zext_ln100_fu_726_p1;
assign W_28_ce0 = W_28_ce0_local;
assign W_29_address0 = zext_ln100_fu_726_p1;
assign W_29_ce0 = W_29_ce0_local;
assign W_2_address0 = zext_ln100_fu_726_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_30_address0 = zext_ln100_fu_726_p1;
assign W_30_ce0 = W_30_ce0_local;
assign W_31_address0 = zext_ln100_fu_726_p1;
assign W_31_ce0 = W_31_ce0_local;
assign W_3_address0 = zext_ln100_fu_726_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_726_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_726_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_726_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_726_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_726_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_726_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_726_p1;
assign W_ce0 = W_ce0_local;
assign add_ln128_fu_1050_p2 = (i_1_reg_1171 + 7'd2);
assign add_ln130_1_fu_958_p2 = ($signed(tmp_s_reg_1348) + $signed(32'd3395469782));
assign add_ln130_2_fu_963_p2 = (add_ln130_1_fu_958_p2 + or_ln2_fu_950_p3);
assign add_ln130_4_fu_1095_p2 = (E_1_load_reg_1358 + xor_ln130_3_reg_1378);
assign add_ln130_5_fu_1080_p2 = ($signed(tmp_1_reg_1353) + $signed(32'd3395469782));
assign add_ln130_6_fu_1085_p2 = (or_ln130_2_fu_1074_p3 + add_ln130_5_fu_1080_p2);
assign add_ln130_fu_969_p2 = (xor_ln130_1_fu_944_p2 + E_fu_172);
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
assign icmp_ln128_fu_710_p2 = ((ap_sig_allocacmp_i_1 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln100_5_fu_716_p4 = {{ap_sig_allocacmp_i_1[6:5]}};
assign lshr_ln130_1_fu_985_p4 = {{B_fu_180[31:2]}};
assign lshr_ln130_3_fu_1032_p4 = {{B_1_fu_184[31:2]}};
assign lshr_ln6_fu_929_p4 = {{B_1_fu_184[31:27]}};
assign or_ln130_2_fu_1074_p3 = {{trunc_ln130_2_reg_1368}, {lshr_ln130_2_reg_1373}};
assign or_ln2_fu_950_p3 = {{trunc_ln130_fu_925_p1}, {lshr_ln6_fu_929_p4}};
assign temp_1_fu_1099_p2 = (add_ln130_6_reg_1383 + add_ln130_4_fu_1095_p2);
assign temp_fu_975_p2 = (add_ln130_fu_969_p2 + add_ln130_2_fu_963_p2);
assign tmp_1_fu_841_p33 = 'bx;
assign tmp_s_fu_769_p33 = 'bx;
assign trunc_ln128_fu_766_p1 = i_1_reg_1171[4:0];
assign trunc_ln130_1_fu_981_p1 = B_fu_180[1:0];
assign trunc_ln130_2_fu_1003_p1 = temp_fu_975_p2[26:0];
assign trunc_ln130_3_fu_1028_p1 = B_1_fu_184[1:0];
assign trunc_ln130_fu_925_p1 = B_1_fu_184[26:0];
assign xor_ln130_1_fu_944_p2 = (xor_ln130_fu_939_p2 ^ B_fu_180);
assign xor_ln130_2_fu_1017_p2 = (C_3_fu_995_p3 ^ B_1_fu_184);
assign xor_ln130_3_fu_1023_p2 = (xor_ln130_2_fu_1017_p2 ^ C_2_reg_1341);
assign xor_ln130_fu_939_p2 = (E_1_fu_176 ^ C_2_reg_1341);
assign zext_ln100_fu_726_p1 = lshr_ln100_5_fu_716_p4;
endmodule 