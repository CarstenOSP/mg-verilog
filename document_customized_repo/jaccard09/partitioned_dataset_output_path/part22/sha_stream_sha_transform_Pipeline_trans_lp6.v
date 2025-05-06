
module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_18_reload,B_6_reload,C_16_reload,D_18_reload,E_6_reload,W_address0,W_ce0,W_q0,W_4_address0,W_4_ce0,W_4_q0,W_8_address0,W_8_ce0,W_8_q0,W_12_address0,W_12_ce0,W_12_q0,W_16_address0,W_16_ce0,W_16_q0,W_20_address0,W_20_ce0,W_20_q0,W_24_address0,W_24_ce0,W_24_q0,W_28_address0,W_28_ce0,W_28_q0,W_1_address0,W_1_ce0,W_1_q0,W_5_address0,W_5_ce0,W_5_q0,W_9_address0,W_9_ce0,W_9_q0,W_13_address0,W_13_ce0,W_13_q0,W_17_address0,W_17_ce0,W_17_q0,W_21_address0,W_21_ce0,W_21_q0,W_25_address0,W_25_ce0,W_25_q0,W_29_address0,W_29_ce0,W_29_q0,W_2_address0,W_2_ce0,W_2_q0,W_6_address0,W_6_ce0,W_6_q0,W_10_address0,W_10_ce0,W_10_q0,W_14_address0,W_14_ce0,W_14_q0,W_18_address0,W_18_ce0,W_18_q0,W_22_address0,W_22_ce0,W_22_q0,W_26_address0,W_26_ce0,W_26_q0,W_30_address0,W_30_ce0,W_30_q0,W_3_address0,W_3_ce0,W_3_q0,W_7_address0,W_7_ce0,W_7_q0,W_11_address0,W_11_ce0,W_11_q0,W_15_address0,W_15_ce0,W_15_q0,W_19_address0,W_19_ce0,W_19_q0,W_23_address0,W_23_ce0,W_23_q0,W_27_address0,W_27_ce0,W_27_q0,W_31_address0,W_31_ce0,W_31_q0,A_20_out,A_20_out_ap_vld,B_11_out,B_11_out_ap_vld,C_18_out,C_18_out_ap_vld,D_20_out,D_20_out_ap_vld,E_11_out,E_11_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 5'd1;
parameter    ap_ST_fsm_pp0_stage1 = 5'd2;
parameter    ap_ST_fsm_pp0_stage2 = 5'd4;
parameter    ap_ST_fsm_pp0_stage3 = 5'd8;
parameter    ap_ST_fsm_pp0_stage4 = 5'd16;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_18_reload;
input  [31:0] B_6_reload;
input  [31:0] C_16_reload;
input  [31:0] D_18_reload;
input  [31:0] E_6_reload;
output  [1:0] W_address0;
output   W_ce0;
input  [31:0] W_q0;
output  [1:0] W_4_address0;
output   W_4_ce0;
input  [31:0] W_4_q0;
output  [1:0] W_8_address0;
output   W_8_ce0;
input  [31:0] W_8_q0;
output  [1:0] W_12_address0;
output   W_12_ce0;
input  [31:0] W_12_q0;
output  [1:0] W_16_address0;
output   W_16_ce0;
input  [31:0] W_16_q0;
output  [1:0] W_20_address0;
output   W_20_ce0;
input  [31:0] W_20_q0;
output  [1:0] W_24_address0;
output   W_24_ce0;
input  [31:0] W_24_q0;
output  [1:0] W_28_address0;
output   W_28_ce0;
input  [31:0] W_28_q0;
output  [1:0] W_1_address0;
output   W_1_ce0;
input  [31:0] W_1_q0;
output  [1:0] W_5_address0;
output   W_5_ce0;
input  [31:0] W_5_q0;
output  [1:0] W_9_address0;
output   W_9_ce0;
input  [31:0] W_9_q0;
output  [1:0] W_13_address0;
output   W_13_ce0;
input  [31:0] W_13_q0;
output  [1:0] W_17_address0;
output   W_17_ce0;
input  [31:0] W_17_q0;
output  [1:0] W_21_address0;
output   W_21_ce0;
input  [31:0] W_21_q0;
output  [1:0] W_25_address0;
output   W_25_ce0;
input  [31:0] W_25_q0;
output  [1:0] W_29_address0;
output   W_29_ce0;
input  [31:0] W_29_q0;
output  [1:0] W_2_address0;
output   W_2_ce0;
input  [31:0] W_2_q0;
output  [1:0] W_6_address0;
output   W_6_ce0;
input  [31:0] W_6_q0;
output  [1:0] W_10_address0;
output   W_10_ce0;
input  [31:0] W_10_q0;
output  [1:0] W_14_address0;
output   W_14_ce0;
input  [31:0] W_14_q0;
output  [1:0] W_18_address0;
output   W_18_ce0;
input  [31:0] W_18_q0;
output  [1:0] W_22_address0;
output   W_22_ce0;
input  [31:0] W_22_q0;
output  [1:0] W_26_address0;
output   W_26_ce0;
input  [31:0] W_26_q0;
output  [1:0] W_30_address0;
output   W_30_ce0;
input  [31:0] W_30_q0;
output  [1:0] W_3_address0;
output   W_3_ce0;
input  [31:0] W_3_q0;
output  [1:0] W_7_address0;
output   W_7_ce0;
input  [31:0] W_7_q0;
output  [1:0] W_11_address0;
output   W_11_ce0;
input  [31:0] W_11_q0;
output  [1:0] W_15_address0;
output   W_15_ce0;
input  [31:0] W_15_q0;
output  [1:0] W_19_address0;
output   W_19_ce0;
input  [31:0] W_19_q0;
output  [1:0] W_23_address0;
output   W_23_ce0;
input  [31:0] W_23_q0;
output  [1:0] W_27_address0;
output   W_27_ce0;
input  [31:0] W_27_q0;
output  [1:0] W_31_address0;
output   W_31_ce0;
input  [31:0] W_31_q0;
output  [31:0] A_20_out;
output   A_20_out_ap_vld;
output  [31:0] B_11_out;
output   B_11_out_ap_vld;
output  [31:0] C_18_out;
output   C_18_out_ap_vld;
output  [31:0] D_20_out;
output   D_20_out_ap_vld;
output  [31:0] E_11_out;
output   E_11_out_ap_vld;
reg ap_idle;
reg A_20_out_ap_vld;
reg B_11_out_ap_vld;
reg C_18_out_ap_vld;
reg D_20_out_ap_vld;
reg E_11_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln128_reg_1325;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] i_1_reg_1319;
wire   [0:0] icmp_ln128_fu_694_p2;
reg   [31:0] E_1_load_reg_1489;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_2_load_reg_1494;
wire   [31:0] add_ln130_1_fu_813_p2;
reg   [31:0] add_ln130_1_reg_1500;
wire   [31:0] add_ln130_fu_819_p2;
reg   [31:0] add_ln130_reg_1505;
wire   [1:0] trunc_ln130_1_fu_825_p1;
reg   [1:0] trunc_ln130_1_reg_1510;
reg   [29:0] lshr_ln130_1_reg_1515;
wire   [31:0] tmp_s_fu_839_p19;
reg   [31:0] tmp_s_reg_1520;
wire   [31:0] tmp_2_fu_879_p19;
reg   [31:0] tmp_2_reg_1525;
wire   [31:0] tmp_3_fu_919_p19;
reg   [31:0] tmp_3_reg_1530;
wire   [31:0] temp_fu_989_p2;
reg   [31:0] temp_reg_1535;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_fu_994_p3;
reg   [31:0] C_reg_1540;
wire   [31:0] add_ln130_5_fu_1033_p2;
reg   [31:0] add_ln130_5_reg_1546;
wire   [31:0] add_ln130_4_fu_1038_p2;
reg   [31:0] add_ln130_4_reg_1551;
wire   [1:0] trunc_ln130_3_fu_1044_p1;
reg   [1:0] trunc_ln130_3_reg_1556;
reg   [29:0] lshr_ln130_3_reg_1561;
wire   [31:0] add_ln130_10_fu_1063_p2;
reg   [31:0] add_ln130_10_reg_1566;
wire   [1:0] trunc_ln130_5_fu_1068_p1;
reg   [1:0] trunc_ln130_5_reg_1571;
reg   [29:0] lshr_ln130_5_reg_1576;
wire   [26:0] trunc_ln130_4_fu_1097_p1;
reg   [26:0] trunc_ln130_4_reg_1581;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [4:0] lshr_ln130_4_reg_1586;
wire   [31:0] xor_ln130_5_fu_1116_p2;
reg   [31:0] xor_ln130_5_reg_1591;
wire   [31:0] xor_ln130_7_fu_1133_p2;
reg   [31:0] xor_ln130_7_reg_1596;
wire   [26:0] trunc_ln130_6_fu_1192_p1;
reg   [26:0] trunc_ln130_6_reg_1601;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln130_6_reg_1606;
wire   [31:0] add_ln130_14_fu_1232_p2;
reg   [31:0] add_ln130_14_reg_1611;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_710_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_156;
wire   [31:0] C_3_fu_1091_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_1_fu_160;
wire   [31:0] C_4_fu_1121_p3;
reg   [31:0] B_fu_164;
wire   [31:0] temp_2_fu_1186_p2;
reg   [31:0] B_1_fu_168;
wire   [31:0] temp_3_fu_1242_p2;
wire    ap_block_pp0_stage2;
reg   [31:0] E_2_fu_172;
wire   [31:0] C_2_fu_1153_p3;
reg   [6:0] i_fu_176;
wire   [6:0] add_ln128_fu_1206_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage1_01001;
reg    W_ce0_local;
reg    W_4_ce0_local;
reg    W_8_ce0_local;
reg    W_12_ce0_local;
reg    W_16_ce0_local;
reg    W_20_ce0_local;
reg    W_24_ce0_local;
reg    W_28_ce0_local;
reg    W_1_ce0_local;
reg    W_5_ce0_local;
reg    W_9_ce0_local;
reg    W_13_ce0_local;
reg    W_17_ce0_local;
reg    W_21_ce0_local;
reg    W_25_ce0_local;
reg    W_29_ce0_local;
reg    W_2_ce0_local;
reg    W_6_ce0_local;
reg    W_10_ce0_local;
reg    W_14_ce0_local;
reg    W_18_ce0_local;
reg    W_22_ce0_local;
reg    W_26_ce0_local;
reg    W_30_ce0_local;
reg    W_3_ce0_local;
reg    W_7_ce0_local;
reg    W_11_ce0_local;
reg    W_15_ce0_local;
reg    W_19_ce0_local;
reg    W_23_ce0_local;
reg    W_27_ce0_local;
reg    W_31_ce0_local;
wire   [1:0] lshr_ln100_1_fu_700_p4;
wire   [31:0] tmp_1_fu_761_p17;
wire   [4:0] trunc_ln128_fu_758_p1;
wire   [31:0] xor_ln130_fu_801_p2;
wire   [31:0] tmp_1_fu_761_p19;
wire   [31:0] xor_ln130_1_fu_807_p2;
wire   [31:0] tmp_s_fu_839_p17;
wire   [31:0] tmp_2_fu_879_p17;
wire   [31:0] tmp_3_fu_919_p17;
wire   [26:0] trunc_ln130_fu_962_p1;
wire   [4:0] lshr_ln6_fu_966_p4;
wire   [31:0] or_ln1_fu_976_p3;
wire   [31:0] add_ln130_2_fu_984_p2;
wire   [31:0] xor_ln130_2_fu_1014_p2;
wire   [26:0] trunc_ln130_2_fu_1000_p1;
wire   [4:0] lshr_ln130_2_fu_1004_p4;
wire   [31:0] or_ln130_2_fu_1025_p3;
wire   [31:0] xor_ln130_3_fu_1020_p2;
wire   [31:0] add_ln130_9_fu_1058_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln130_6_fu_1082_p2;
wire   [31:0] temp_1_fu_1086_p2;
wire   [31:0] xor_ln130_4_fu_1111_p2;
wire   [31:0] xor_ln130_6_fu_1127_p2;
wire   [1:0] trunc_ln130_7_fu_1139_p1;
wire   [29:0] lshr_ln130_7_fu_1143_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln130_8_fu_1182_p2;
wire   [31:0] or_ln130_4_fu_1176_p3;
wire   [31:0] or_ln130_6_fu_1221_p3;
wire   [31:0] add_ln130_13_fu_1227_p2;
wire   [31:0] add_ln130_12_fu_1238_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [4:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_1_fu_761_p1;
wire   [4:0] tmp_1_fu_761_p3;
wire   [4:0] tmp_1_fu_761_p5;
wire   [4:0] tmp_1_fu_761_p7;
wire  signed [4:0] tmp_1_fu_761_p9;
wire  signed [4:0] tmp_1_fu_761_p11;
wire  signed [4:0] tmp_1_fu_761_p13;
wire  signed [4:0] tmp_1_fu_761_p15;
wire   [4:0] tmp_s_fu_839_p1;
wire   [4:0] tmp_s_fu_839_p3;
wire   [4:0] tmp_s_fu_839_p5;
wire   [4:0] tmp_s_fu_839_p7;
wire  signed [4:0] tmp_s_fu_839_p9;
wire  signed [4:0] tmp_s_fu_839_p11;
wire  signed [4:0] tmp_s_fu_839_p13;
wire  signed [4:0] tmp_s_fu_839_p15;
wire   [4:0] tmp_2_fu_879_p1;
wire   [4:0] tmp_2_fu_879_p3;
wire   [4:0] tmp_2_fu_879_p5;
wire   [4:0] tmp_2_fu_879_p7;
wire  signed [4:0] tmp_2_fu_879_p9;
wire  signed [4:0] tmp_2_fu_879_p11;
wire  signed [4:0] tmp_2_fu_879_p13;
wire  signed [4:0] tmp_2_fu_879_p15;
wire   [4:0] tmp_3_fu_919_p1;
wire   [4:0] tmp_3_fu_919_p3;
wire   [4:0] tmp_3_fu_919_p5;
wire   [4:0] tmp_3_fu_919_p7;
wire  signed [4:0] tmp_3_fu_919_p9;
wire  signed [4:0] tmp_3_fu_919_p11;
wire  signed [4:0] tmp_3_fu_919_p13;
wire  signed [4:0] tmp_3_fu_919_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_156 = 32'd0;
#0 E_1_fu_160 = 32'd0;
#0 B_fu_164 = 32'd0;
#0 B_1_fu_168 = 32'd0;
#0 E_2_fu_172 = 32'd0;
#0 i_fu_176 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_U157(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.din4(W_16_q0),.din5(W_20_q0),.din6(W_24_q0),.din7(W_28_q0),.def(tmp_1_fu_761_p17),.sel(trunc_ln128_fu_758_p1),.dout(tmp_1_fu_761_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_U158(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.din4(W_17_q0),.din5(W_21_q0),.din6(W_25_q0),.din7(W_29_q0),.def(tmp_s_fu_839_p17),.sel(trunc_ln128_fu_758_p1),.dout(tmp_s_fu_839_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_U159(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.din4(W_18_q0),.din5(W_22_q0),.din6(W_26_q0),.din7(W_30_q0),.def(tmp_2_fu_879_p17),.sel(trunc_ln128_fu_758_p1),.dout(tmp_2_fu_879_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_U160(.din0(W_3_q0),.din1(W_7_q0),.din2(W_11_q0),.din3(W_15_q0),.din4(W_19_q0),.din5(W_23_q0),.din6(W_27_q0),.din7(W_31_q0),.def(tmp_3_fu_919_p17),.sel(trunc_ln128_fu_758_p1),.dout(tmp_3_fu_919_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_168 <= A_18_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_1_fu_168 <= temp_3_fu_1242_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_164 <= B_6_reload;
    end else if (((icmp_ln128_reg_1325 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_fu_164 <= temp_2_fu_1186_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_160 <= D_18_reload;
    end else if (((icmp_ln128_reg_1325 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_1_fu_160 <= C_4_fu_1121_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_172 <= C_16_reload;
    end else if (((icmp_ln128_reg_1325 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_2_fu_172 <= C_2_fu_1153_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_156 <= E_6_reload;
    end else if (((icmp_ln128_reg_1325 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_fu_156 <= C_3_fu_1091_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_176 <= 7'd60;
    end else if (((icmp_ln128_reg_1325 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_fu_176 <= add_ln128_fu_1206_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_reg_1540 <= C_fu_994_p3;
        add_ln130_10_reg_1566 <= add_ln130_10_fu_1063_p2;
        add_ln130_4_reg_1551 <= add_ln130_4_fu_1038_p2;
        add_ln130_5_reg_1546 <= add_ln130_5_fu_1033_p2;
        lshr_ln130_3_reg_1561 <= {{B_1_fu_168[31:2]}};
        lshr_ln130_5_reg_1576 <= {{temp_fu_989_p2[31:2]}};
        temp_reg_1535 <= temp_fu_989_p2;
        trunc_ln130_3_reg_1556 <= trunc_ln130_3_fu_1044_p1;
        trunc_ln130_5_reg_1571 <= trunc_ln130_5_fu_1068_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_1_load_reg_1489 <= E_1_fu_160;
        E_2_load_reg_1494 <= E_2_fu_172;
        add_ln130_1_reg_1500 <= add_ln130_1_fu_813_p2;
        add_ln130_reg_1505 <= add_ln130_fu_819_p2;
        lshr_ln130_1_reg_1515 <= {{B_fu_164[31:2]}};
        tmp_2_reg_1525 <= tmp_2_fu_879_p19;
        tmp_3_reg_1530 <= tmp_3_fu_919_p19;
        tmp_s_reg_1520 <= tmp_s_fu_839_p19;
        trunc_ln130_1_reg_1510 <= trunc_ln130_1_fu_825_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln130_14_reg_1611 <= add_ln130_14_fu_1232_p2;
        i_1_reg_1319 <= ap_sig_allocacmp_i_1;
        icmp_ln128_reg_1325 <= icmp_ln128_fu_694_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln130_4_reg_1586 <= {{temp_1_fu_1086_p2[31:27]}};
        trunc_ln130_4_reg_1581 <= trunc_ln130_4_fu_1097_p1;
        xor_ln130_5_reg_1591 <= xor_ln130_5_fu_1116_p2;
        xor_ln130_7_reg_1596 <= xor_ln130_7_fu_1133_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln130_6_reg_1606 <= {{temp_2_fu_1186_p2[31:27]}};
        trunc_ln130_6_reg_1601 <= trunc_ln130_6_fu_1192_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1325 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_20_out_ap_vld = 1'b1;
    end else begin
        A_20_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1325 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_11_out_ap_vld = 1'b1;
    end else begin
        B_11_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1325 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_18_out_ap_vld = 1'b1;
    end else begin
        C_18_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1325 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_20_out_ap_vld = 1'b1;
    end else begin
        D_20_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1325 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_11_out_ap_vld = 1'b1;
    end else begin
        E_11_out_ap_vld = 1'b0;
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
    if (((icmp_ln128_reg_1325 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_176;
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_20_out = B_1_fu_168;
assign B_11_out = B_fu_164;
assign C_18_out = E_2_fu_172;
assign C_2_fu_1153_p3 = {{trunc_ln130_7_fu_1139_p1}, {lshr_ln130_7_fu_1143_p4}};
assign C_3_fu_1091_p3 = {{trunc_ln130_3_reg_1556}, {lshr_ln130_3_reg_1561}};
assign C_4_fu_1121_p3 = {{trunc_ln130_5_reg_1571}, {lshr_ln130_5_reg_1576}};
assign C_fu_994_p3 = {{trunc_ln130_1_reg_1510}, {lshr_ln130_1_reg_1515}};
assign D_20_out = E_1_fu_160;
assign E_11_out = E_fu_156;
assign W_10_address0 = zext_ln100_fu_710_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_710_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_710_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_710_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_710_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_710_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_16_address0 = zext_ln100_fu_710_p1;
assign W_16_ce0 = W_16_ce0_local;
assign W_17_address0 = zext_ln100_fu_710_p1;
assign W_17_ce0 = W_17_ce0_local;
assign W_18_address0 = zext_ln100_fu_710_p1;
assign W_18_ce0 = W_18_ce0_local;
assign W_19_address0 = zext_ln100_fu_710_p1;
assign W_19_ce0 = W_19_ce0_local;
assign W_1_address0 = zext_ln100_fu_710_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_20_address0 = zext_ln100_fu_710_p1;
assign W_20_ce0 = W_20_ce0_local;
assign W_21_address0 = zext_ln100_fu_710_p1;
assign W_21_ce0 = W_21_ce0_local;
assign W_22_address0 = zext_ln100_fu_710_p1;
assign W_22_ce0 = W_22_ce0_local;
assign W_23_address0 = zext_ln100_fu_710_p1;
assign W_23_ce0 = W_23_ce0_local;
assign W_24_address0 = zext_ln100_fu_710_p1;
assign W_24_ce0 = W_24_ce0_local;
assign W_25_address0 = zext_ln100_fu_710_p1;
assign W_25_ce0 = W_25_ce0_local;
assign W_26_address0 = zext_ln100_fu_710_p1;
assign W_26_ce0 = W_26_ce0_local;
assign W_27_address0 = zext_ln100_fu_710_p1;
assign W_27_ce0 = W_27_ce0_local;
assign W_28_address0 = zext_ln100_fu_710_p1;
assign W_28_ce0 = W_28_ce0_local;
assign W_29_address0 = zext_ln100_fu_710_p1;
assign W_29_ce0 = W_29_ce0_local;
assign W_2_address0 = zext_ln100_fu_710_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_30_address0 = zext_ln100_fu_710_p1;
assign W_30_ce0 = W_30_ce0_local;
assign W_31_address0 = zext_ln100_fu_710_p1;
assign W_31_ce0 = W_31_ce0_local;
assign W_3_address0 = zext_ln100_fu_710_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_710_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_710_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_710_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_710_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_710_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_710_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_710_p1;
assign W_ce0 = W_ce0_local;
assign add_ln128_fu_1206_p2 = (i_1_reg_1319 + 7'd4);
assign add_ln130_10_fu_1063_p2 = (add_ln130_9_fu_1058_p2 + E_2_load_reg_1494);
assign add_ln130_12_fu_1238_p2 = (C_reg_1540 + xor_ln130_7_reg_1596);
assign add_ln130_13_fu_1227_p2 = ($signed(tmp_3_reg_1530) + $signed(32'd3395469782));
assign add_ln130_14_fu_1232_p2 = (or_ln130_6_fu_1221_p3 + add_ln130_13_fu_1227_p2);
assign add_ln130_1_fu_813_p2 = ($signed(tmp_1_fu_761_p19) + $signed(32'd3395469782));
assign add_ln130_2_fu_984_p2 = (add_ln130_1_reg_1500 + or_ln1_fu_976_p3);
assign add_ln130_4_fu_1038_p2 = (or_ln130_2_fu_1025_p3 + xor_ln130_3_fu_1020_p2);
assign add_ln130_5_fu_1033_p2 = ($signed(tmp_s_reg_1520) + $signed(32'd3395469782));
assign add_ln130_6_fu_1082_p2 = (add_ln130_5_reg_1546 + E_1_load_reg_1489);
assign add_ln130_8_fu_1182_p2 = (add_ln130_10_reg_1566 + xor_ln130_5_reg_1591);
assign add_ln130_9_fu_1058_p2 = ($signed(tmp_2_reg_1525) + $signed(32'd3395469782));
assign add_ln130_fu_819_p2 = (xor_ln130_1_fu_807_p2 + E_fu_156);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
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
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign icmp_ln128_fu_694_p2 = ((ap_sig_allocacmp_i_1 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln100_1_fu_700_p4 = {{ap_sig_allocacmp_i_1[6:5]}};
assign lshr_ln130_2_fu_1004_p4 = {{temp_fu_989_p2[31:27]}};
assign lshr_ln130_7_fu_1143_p4 = {{temp_1_fu_1086_p2[31:2]}};
assign lshr_ln6_fu_966_p4 = {{B_1_fu_168[31:27]}};
assign or_ln130_2_fu_1025_p3 = {{trunc_ln130_2_fu_1000_p1}, {lshr_ln130_2_fu_1004_p4}};
assign or_ln130_4_fu_1176_p3 = {{trunc_ln130_4_reg_1581}, {lshr_ln130_4_reg_1586}};
assign or_ln130_6_fu_1221_p3 = {{trunc_ln130_6_reg_1601}, {lshr_ln130_6_reg_1606}};
assign or_ln1_fu_976_p3 = {{trunc_ln130_fu_962_p1}, {lshr_ln6_fu_966_p4}};
assign temp_1_fu_1086_p2 = (add_ln130_4_reg_1551 + add_ln130_6_fu_1082_p2);
assign temp_2_fu_1186_p2 = (add_ln130_8_fu_1182_p2 + or_ln130_4_fu_1176_p3);
assign temp_3_fu_1242_p2 = (add_ln130_14_reg_1611 + add_ln130_12_fu_1238_p2);
assign temp_fu_989_p2 = (add_ln130_reg_1505 + add_ln130_2_fu_984_p2);
assign tmp_1_fu_761_p17 = 'bx;
assign tmp_2_fu_879_p17 = 'bx;
assign tmp_3_fu_919_p17 = 'bx;
assign tmp_s_fu_839_p17 = 'bx;
assign trunc_ln128_fu_758_p1 = i_1_reg_1319[4:0];
assign trunc_ln130_1_fu_825_p1 = B_fu_164[1:0];
assign trunc_ln130_2_fu_1000_p1 = temp_fu_989_p2[26:0];
assign trunc_ln130_3_fu_1044_p1 = B_1_fu_168[1:0];
assign trunc_ln130_4_fu_1097_p1 = temp_1_fu_1086_p2[26:0];
assign trunc_ln130_5_fu_1068_p1 = temp_fu_989_p2[1:0];
assign trunc_ln130_6_fu_1192_p1 = temp_2_fu_1186_p2[26:0];
assign trunc_ln130_7_fu_1139_p1 = temp_1_fu_1086_p2[1:0];
assign trunc_ln130_fu_962_p1 = B_1_fu_168[26:0];
assign xor_ln130_1_fu_807_p2 = (xor_ln130_fu_801_p2 ^ E_2_fu_172);
assign xor_ln130_2_fu_1014_p2 = (C_fu_994_p3 ^ B_1_fu_168);
assign xor_ln130_3_fu_1020_p2 = (xor_ln130_2_fu_1014_p2 ^ E_2_load_reg_1494);
assign xor_ln130_4_fu_1111_p2 = (temp_reg_1535 ^ C_3_fu_1091_p3);
assign xor_ln130_5_fu_1116_p2 = (xor_ln130_4_fu_1111_p2 ^ C_reg_1540);
assign xor_ln130_6_fu_1127_p2 = (temp_1_fu_1086_p2 ^ C_3_fu_1091_p3);
assign xor_ln130_7_fu_1133_p2 = (xor_ln130_6_fu_1127_p2 ^ C_4_fu_1121_p3);
assign xor_ln130_fu_801_p2 = (E_1_fu_160 ^ B_fu_164);
assign zext_ln100_fu_710_p1 = lshr_ln100_1_fu_700_p4;
endmodule 
