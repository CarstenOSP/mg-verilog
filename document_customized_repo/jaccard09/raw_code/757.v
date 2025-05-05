module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_46_reload,B_1_reload,E_47_reload,D_47_reload,E_2_reload,W_address0,W_ce0,W_q0,W_2_address0,W_2_ce0,W_2_q0,W_4_address0,W_4_ce0,W_4_q0,W_6_address0,W_6_ce0,W_6_q0,W_8_address0,W_8_ce0,W_8_q0,W_10_address0,W_10_ce0,W_10_q0,W_12_address0,W_12_ce0,W_12_q0,W_14_address0,W_14_ce0,W_14_q0,W_16_address0,W_16_ce0,W_16_q0,W_18_address0,W_18_ce0,W_18_q0,W_20_address0,W_20_ce0,W_20_q0,W_22_address0,W_22_ce0,W_22_q0,W_24_address0,W_24_ce0,W_24_q0,W_26_address0,W_26_ce0,W_26_q0,W_28_address0,W_28_ce0,W_28_q0,W_30_address0,W_30_ce0,W_30_q0,W_1_address0,W_1_ce0,W_1_q0,W_3_address0,W_3_ce0,W_3_q0,W_5_address0,W_5_ce0,W_5_q0,W_7_address0,W_7_ce0,W_7_q0,W_9_address0,W_9_ce0,W_9_q0,W_11_address0,W_11_ce0,W_11_q0,W_13_address0,W_13_ce0,W_13_q0,W_15_address0,W_15_ce0,W_15_q0,W_17_address0,W_17_ce0,W_17_q0,W_19_address0,W_19_ce0,W_19_q0,W_21_address0,W_21_ce0,W_21_q0,W_23_address0,W_23_ce0,W_23_q0,W_25_address0,W_25_ce0,W_25_q0,W_27_address0,W_27_ce0,W_27_q0,W_29_address0,W_29_ce0,W_29_q0,W_31_address0,W_31_ce0,W_31_q0,A_48_out,A_48_out_ap_vld,B_4_out,B_4_out_ap_vld,C_47_out,C_47_out_ap_vld,D_49_out,D_49_out_ap_vld,E_4_out,E_4_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_46_reload;
input  [31:0] B_1_reload;
input  [31:0] E_47_reload;
input  [31:0] D_47_reload;
input  [31:0] E_2_reload;
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
output  [31:0] A_48_out;
output   A_48_out_ap_vld;
output  [31:0] B_4_out;
output   B_4_out_ap_vld;
output  [31:0] C_47_out;
output   C_47_out_ap_vld;
output  [31:0] D_49_out;
output   D_49_out_ap_vld;
output  [31:0] E_4_out;
output   E_4_out_ap_vld;
reg ap_idle;
reg A_48_out_ap_vld;
reg B_4_out_ap_vld;
reg C_47_out_ap_vld;
reg D_49_out_ap_vld;
reg E_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln120_reg_1173;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_1_reg_1167;
wire   [0:0] icmp_ln120_fu_708_p2;
reg   [31:0] C_2_reg_1337;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] tmp_s_fu_765_p35;
reg   [31:0] tmp_s_reg_1344;
wire   [31:0] tmp_1_fu_837_p35;
reg   [31:0] tmp_1_reg_1349;
reg   [31:0] E_1_load_reg_1354;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] temp_fu_971_p2;
reg   [31:0] temp_reg_1359;
wire   [26:0] trunc_ln122_2_fu_999_p1;
reg   [26:0] trunc_ln122_2_reg_1364;
reg   [4:0] lshr_ln122_2_reg_1369;
wire   [31:0] xor_ln122_3_fu_1019_p2;
reg   [31:0] xor_ln122_3_reg_1374;
wire   [31:0] add_ln122_6_fu_1081_p2;
reg   [31:0] add_ln122_6_reg_1379;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_722_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_170;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
wire    ap_block_pp0_stage1;
reg   [31:0] E_1_fu_174;
wire   [31:0] C_3_fu_991_p3;
reg   [31:0] B_fu_178;
reg   [31:0] B_1_fu_182;
wire   [31:0] temp_1_fu_1095_p2;
reg   [5:0] i_fu_186;
wire   [5:0] add_ln120_fu_1046_p2;
reg   [5:0] ap_sig_allocacmp_i_1;
reg   [31:0] E_2_fu_190;
wire   [31:0] C_fu_1038_p3;
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
wire   [0:0] tmp_fu_714_p3;
wire   [31:0] tmp_s_fu_765_p33;
wire   [4:0] trunc_ln120_fu_762_p1;
wire   [31:0] tmp_1_fu_837_p33;
wire   [31:0] xor_ln122_fu_935_p2;
wire   [26:0] trunc_ln122_fu_921_p1;
wire   [4:0] lshr_ln4_fu_925_p4;
wire   [31:0] add_ln122_1_fu_954_p2;
wire   [31:0] or_ln_fu_946_p3;
wire   [31:0] xor_ln122_1_fu_940_p2;
wire   [31:0] add_ln122_fu_965_p2;
wire   [31:0] add_ln122_2_fu_959_p2;
wire   [1:0] trunc_ln122_1_fu_977_p1;
wire   [29:0] lshr_ln122_1_fu_981_p4;
wire   [31:0] xor_ln122_2_fu_1013_p2;
wire   [1:0] trunc_ln122_3_fu_1024_p1;
wire   [29:0] lshr_ln122_3_fu_1028_p4;
wire   [31:0] or_ln122_2_fu_1070_p3;
wire   [31:0] add_ln122_5_fu_1076_p2;
wire   [31:0] add_ln122_4_fu_1091_p2;
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
wire   [4:0] tmp_s_fu_765_p1;
wire   [4:0] tmp_s_fu_765_p3;
wire   [4:0] tmp_s_fu_765_p5;
wire   [4:0] tmp_s_fu_765_p7;
wire   [4:0] tmp_s_fu_765_p9;
wire   [4:0] tmp_s_fu_765_p11;
wire   [4:0] tmp_s_fu_765_p13;
wire   [4:0] tmp_s_fu_765_p15;
wire  signed [4:0] tmp_s_fu_765_p17;
wire  signed [4:0] tmp_s_fu_765_p19;
wire  signed [4:0] tmp_s_fu_765_p21;
wire  signed [4:0] tmp_s_fu_765_p23;
wire  signed [4:0] tmp_s_fu_765_p25;
wire  signed [4:0] tmp_s_fu_765_p27;
wire  signed [4:0] tmp_s_fu_765_p29;
wire  signed [4:0] tmp_s_fu_765_p31;
wire   [4:0] tmp_1_fu_837_p1;
wire   [4:0] tmp_1_fu_837_p3;
wire   [4:0] tmp_1_fu_837_p5;
wire   [4:0] tmp_1_fu_837_p7;
wire   [4:0] tmp_1_fu_837_p9;
wire   [4:0] tmp_1_fu_837_p11;
wire   [4:0] tmp_1_fu_837_p13;
wire   [4:0] tmp_1_fu_837_p15;
wire  signed [4:0] tmp_1_fu_837_p17;
wire  signed [4:0] tmp_1_fu_837_p19;
wire  signed [4:0] tmp_1_fu_837_p21;
wire  signed [4:0] tmp_1_fu_837_p23;
wire  signed [4:0] tmp_1_fu_837_p25;
wire  signed [4:0] tmp_1_fu_837_p27;
wire  signed [4:0] tmp_1_fu_837_p29;
wire  signed [4:0] tmp_1_fu_837_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_170 = 32'd0;
#0 E_1_fu_174 = 32'd0;
#0 B_fu_178 = 32'd0;
#0 B_1_fu_182 = 32'd0;
#0 i_fu_186 = 6'd0;
#0 E_2_fu_190 = 32'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h2 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h6 ),.din3_WIDTH( 32 ),.CASE4( 5'h8 ),.din4_WIDTH( 32 ),.CASE5( 5'hA ),.din5_WIDTH( 32 ),.CASE6( 5'hC ),.din6_WIDTH( 32 ),.CASE7( 5'hE ),.din7_WIDTH( 32 ),.CASE8( 5'h10 ),.din8_WIDTH( 32 ),.CASE9( 5'h12 ),.din9_WIDTH( 32 ),.CASE10( 5'h14 ),.din10_WIDTH( 32 ),.CASE11( 5'h16 ),.din11_WIDTH( 32 ),.CASE12( 5'h18 ),.din12_WIDTH( 32 ),.CASE13( 5'h1A ),.din13_WIDTH( 32 ),.CASE14( 5'h1C ),.din14_WIDTH( 32 ),.CASE15( 5'h1E ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_33_5_32_1_1_x_U84(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.din4(W_8_q0),.din5(W_10_q0),.din6(W_12_q0),.din7(W_14_q0),.din8(W_16_q0),.din9(W_18_q0),.din10(W_20_q0),.din11(W_22_q0),.din12(W_24_q0),.din13(W_26_q0),.din14(W_28_q0),.din15(W_30_q0),.def(tmp_s_fu_765_p33),.sel(trunc_ln120_fu_762_p1),.dout(tmp_s_fu_765_p35));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h2 ),.din1_WIDTH( 32 ),.CASE2( 5'h4 ),.din2_WIDTH( 32 ),.CASE3( 5'h6 ),.din3_WIDTH( 32 ),.CASE4( 5'h8 ),.din4_WIDTH( 32 ),.CASE5( 5'hA ),.din5_WIDTH( 32 ),.CASE6( 5'hC ),.din6_WIDTH( 32 ),.CASE7( 5'hE ),.din7_WIDTH( 32 ),.CASE8( 5'h10 ),.din8_WIDTH( 32 ),.CASE9( 5'h12 ),.din9_WIDTH( 32 ),.CASE10( 5'h14 ),.din10_WIDTH( 32 ),.CASE11( 5'h16 ),.din11_WIDTH( 32 ),.CASE12( 5'h18 ),.din12_WIDTH( 32 ),.CASE13( 5'h1A ),.din13_WIDTH( 32 ),.CASE14( 5'h1C ),.din14_WIDTH( 32 ),.CASE15( 5'h1E ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_33_5_32_1_1_x_U85(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.din4(W_9_q0),.din5(W_11_q0),.din6(W_13_q0),.din7(W_15_q0),.din8(W_17_q0),.din9(W_19_q0),.din10(W_21_q0),.din11(W_23_q0),.din12(W_25_q0),.din13(W_27_q0),.din14(W_29_q0),.din15(W_31_q0),.def(tmp_1_fu_837_p33),.sel(trunc_ln120_fu_762_p1),.dout(tmp_1_fu_837_p35));
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
        B_1_fu_182 <= A_46_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_fu_182 <= temp_1_fu_1095_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_178 <= B_1_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_fu_178 <= temp_reg_1359;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_174 <= D_47_reload;
    end else if (((icmp_ln120_reg_1173 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_1_fu_174 <= C_3_fu_991_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_190 <= E_47_reload;
    end else if (((icmp_ln120_reg_1173 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_2_fu_190 <= C_fu_1038_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_170 <= E_2_reload;
    end else if (((icmp_ln120_reg_1173 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_fu_170 <= C_2_reg_1337;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_186 <= 6'd20;
    end else if (((icmp_ln120_reg_1173 == 1'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        i_fu_186 <= add_ln120_fu_1046_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_2_reg_1337 <= E_2_fu_190;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        E_1_load_reg_1354 <= E_1_fu_174;
        lshr_ln122_2_reg_1369 <= {{temp_fu_971_p2[31:27]}};
        temp_reg_1359 <= temp_fu_971_p2;
        trunc_ln122_2_reg_1364 <= trunc_ln122_2_fu_999_p1;
        xor_ln122_3_reg_1374 <= xor_ln122_3_fu_1019_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln122_6_reg_1379 <= add_ln122_6_fu_1081_p2;
        i_1_reg_1167 <= ap_sig_allocacmp_i_1;
        icmp_ln120_reg_1173 <= icmp_ln120_fu_708_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        tmp_1_reg_1349 <= tmp_1_fu_837_p35;
        tmp_s_reg_1344 <= tmp_s_fu_765_p35;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1173 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_48_out_ap_vld = 1'b1;
    end else begin
        A_48_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1173 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_4_out_ap_vld = 1'b1;
    end else begin
        B_4_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1173 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_47_out_ap_vld = 1'b1;
    end else begin
        C_47_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1173 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_49_out_ap_vld = 1'b1;
    end else begin
        D_49_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1173 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((icmp_ln120_reg_1173 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_i_1 = 6'd20;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_186;
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
assign A_48_out = B_1_fu_182;
assign B_4_out = B_fu_178;
assign C_3_fu_991_p3 = {{trunc_ln122_1_fu_977_p1}, {lshr_ln122_1_fu_981_p4}};
assign C_47_out = E_2_fu_190;
assign C_fu_1038_p3 = {{trunc_ln122_3_fu_1024_p1}, {lshr_ln122_3_fu_1028_p4}};
assign D_49_out = E_1_fu_174;
assign E_4_out = E_fu_170;
assign W_10_address0 = zext_ln100_fu_722_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_722_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_722_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_722_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_722_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_722_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_16_address0 = zext_ln100_fu_722_p1;
assign W_16_ce0 = W_16_ce0_local;
assign W_17_address0 = zext_ln100_fu_722_p1;
assign W_17_ce0 = W_17_ce0_local;
assign W_18_address0 = zext_ln100_fu_722_p1;
assign W_18_ce0 = W_18_ce0_local;
assign W_19_address0 = zext_ln100_fu_722_p1;
assign W_19_ce0 = W_19_ce0_local;
assign W_1_address0 = zext_ln100_fu_722_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_20_address0 = zext_ln100_fu_722_p1;
assign W_20_ce0 = W_20_ce0_local;
assign W_21_address0 = zext_ln100_fu_722_p1;
assign W_21_ce0 = W_21_ce0_local;
assign W_22_address0 = zext_ln100_fu_722_p1;
assign W_22_ce0 = W_22_ce0_local;
assign W_23_address0 = zext_ln100_fu_722_p1;
assign W_23_ce0 = W_23_ce0_local;
assign W_24_address0 = zext_ln100_fu_722_p1;
assign W_24_ce0 = W_24_ce0_local;
assign W_25_address0 = zext_ln100_fu_722_p1;
assign W_25_ce0 = W_25_ce0_local;
assign W_26_address0 = zext_ln100_fu_722_p1;
assign W_26_ce0 = W_26_ce0_local;
assign W_27_address0 = zext_ln100_fu_722_p1;
assign W_27_ce0 = W_27_ce0_local;
assign W_28_address0 = zext_ln100_fu_722_p1;
assign W_28_ce0 = W_28_ce0_local;
assign W_29_address0 = zext_ln100_fu_722_p1;
assign W_29_ce0 = W_29_ce0_local;
assign W_2_address0 = zext_ln100_fu_722_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_30_address0 = zext_ln100_fu_722_p1;
assign W_30_ce0 = W_30_ce0_local;
assign W_31_address0 = zext_ln100_fu_722_p1;
assign W_31_ce0 = W_31_ce0_local;
assign W_3_address0 = zext_ln100_fu_722_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_722_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_722_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_722_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_722_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_722_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_722_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_722_p1;
assign W_ce0 = W_ce0_local;
assign add_ln120_fu_1046_p2 = (i_1_reg_1167 + 6'd2);
assign add_ln122_1_fu_954_p2 = (tmp_s_reg_1344 + 32'd1859775393);
assign add_ln122_2_fu_959_p2 = (add_ln122_1_fu_954_p2 + or_ln_fu_946_p3);
assign add_ln122_4_fu_1091_p2 = (E_1_load_reg_1354 + xor_ln122_3_reg_1374);
assign add_ln122_5_fu_1076_p2 = (tmp_1_reg_1349 + 32'd1859775393);
assign add_ln122_6_fu_1081_p2 = (or_ln122_2_fu_1070_p3 + add_ln122_5_fu_1076_p2);
assign add_ln122_fu_965_p2 = (xor_ln122_1_fu_940_p2 + E_fu_170);
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
assign icmp_ln120_fu_708_p2 = ((ap_sig_allocacmp_i_1 < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln122_1_fu_981_p4 = {{B_fu_178[31:2]}};
assign lshr_ln122_3_fu_1028_p4 = {{B_1_fu_182[31:2]}};
assign lshr_ln4_fu_925_p4 = {{B_1_fu_182[31:27]}};
assign or_ln122_2_fu_1070_p3 = {{trunc_ln122_2_reg_1364}, {lshr_ln122_2_reg_1369}};
assign or_ln_fu_946_p3 = {{trunc_ln122_fu_921_p1}, {lshr_ln4_fu_925_p4}};
assign temp_1_fu_1095_p2 = (add_ln122_6_reg_1379 + add_ln122_4_fu_1091_p2);
assign temp_fu_971_p2 = (add_ln122_fu_965_p2 + add_ln122_2_fu_959_p2);
assign tmp_1_fu_837_p33 = 'bx;
assign tmp_fu_714_p3 = ap_sig_allocacmp_i_1[32'd5];
assign tmp_s_fu_765_p33 = 'bx;
assign trunc_ln120_fu_762_p1 = i_1_reg_1167[4:0];
assign trunc_ln122_1_fu_977_p1 = B_fu_178[1:0];
assign trunc_ln122_2_fu_999_p1 = temp_fu_971_p2[26:0];
assign trunc_ln122_3_fu_1024_p1 = B_1_fu_182[1:0];
assign trunc_ln122_fu_921_p1 = B_1_fu_182[26:0];
assign xor_ln122_1_fu_940_p2 = (xor_ln122_fu_935_p2 ^ B_fu_178);
assign xor_ln122_2_fu_1013_p2 = (C_3_fu_991_p3 ^ B_1_fu_182);
assign xor_ln122_3_fu_1019_p2 = (xor_ln122_2_fu_1013_p2 ^ C_2_reg_1337);
assign xor_ln122_fu_935_p2 = (E_1_fu_174 ^ C_2_reg_1337);
assign zext_ln100_fu_722_p1 = tmp_fu_714_p3;
endmodule 