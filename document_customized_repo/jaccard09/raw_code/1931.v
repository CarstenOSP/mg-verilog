module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_15_reload,B_1_reload,C_15_reload,D_15_reload,E_1_reload,W_address0,W_ce0,W_q0,W_4_address0,W_4_ce0,W_4_q0,W_8_address0,W_8_ce0,W_8_q0,W_12_address0,W_12_ce0,W_12_q0,W_16_address0,W_16_ce0,W_16_q0,W_20_address0,W_20_ce0,W_20_q0,W_24_address0,W_24_ce0,W_24_q0,W_28_address0,W_28_ce0,W_28_q0,W_1_address0,W_1_ce0,W_1_q0,W_5_address0,W_5_ce0,W_5_q0,W_9_address0,W_9_ce0,W_9_q0,W_13_address0,W_13_ce0,W_13_q0,W_17_address0,W_17_ce0,W_17_q0,W_21_address0,W_21_ce0,W_21_q0,W_25_address0,W_25_ce0,W_25_q0,W_29_address0,W_29_ce0,W_29_q0,W_2_address0,W_2_ce0,W_2_q0,W_6_address0,W_6_ce0,W_6_q0,W_10_address0,W_10_ce0,W_10_q0,W_14_address0,W_14_ce0,W_14_q0,W_18_address0,W_18_ce0,W_18_q0,W_22_address0,W_22_ce0,W_22_q0,W_26_address0,W_26_ce0,W_26_q0,W_30_address0,W_30_ce0,W_30_q0,W_3_address0,W_3_ce0,W_3_q0,W_7_address0,W_7_ce0,W_7_q0,W_11_address0,W_11_ce0,W_11_q0,W_15_address0,W_15_ce0,W_15_q0,W_19_address0,W_19_ce0,W_19_q0,W_23_address0,W_23_ce0,W_23_q0,W_27_address0,W_27_ce0,W_27_q0,W_31_address0,W_31_ce0,W_31_q0,A_17_out,A_17_out_ap_vld,B_6_out,B_6_out_ap_vld,C_17_out,C_17_out_ap_vld,D_17_out,D_17_out_ap_vld,E_6_out,E_6_out_ap_vld); 
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
input  [31:0] A_15_reload;
input  [31:0] B_1_reload;
input  [31:0] C_15_reload;
input  [31:0] D_15_reload;
input  [31:0] E_1_reload;
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
output  [31:0] A_17_out;
output   A_17_out_ap_vld;
output  [31:0] B_6_out;
output   B_6_out_ap_vld;
output  [31:0] C_17_out;
output   C_17_out_ap_vld;
output  [31:0] D_17_out;
output   D_17_out_ap_vld;
output  [31:0] E_6_out;
output   E_6_out_ap_vld;
reg ap_idle;
reg A_17_out_ap_vld;
reg B_6_out_ap_vld;
reg C_17_out_ap_vld;
reg D_17_out_ap_vld;
reg E_6_out_ap_vld;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln120_reg_1321;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] i_reg_1315;
wire   [0:0] icmp_ln120_fu_692_p2;
reg   [31:0] E_5_load_reg_1485;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] E_6_load_reg_1490;
wire   [31:0] add_ln122_1_fu_809_p2;
reg   [31:0] add_ln122_1_reg_1496;
wire   [31:0] add_ln122_fu_815_p2;
reg   [31:0] add_ln122_reg_1501;
wire   [1:0] trunc_ln122_1_fu_821_p1;
reg   [1:0] trunc_ln122_1_reg_1506;
reg   [29:0] lshr_ln122_1_reg_1511;
wire   [31:0] tmp_1_fu_835_p19;
reg   [31:0] tmp_1_reg_1516;
wire   [31:0] tmp_2_fu_875_p19;
reg   [31:0] tmp_2_reg_1521;
wire   [31:0] tmp_3_fu_915_p19;
reg   [31:0] tmp_3_reg_1526;
wire   [31:0] temp_fu_985_p2;
reg   [31:0] temp_reg_1531;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] C_fu_990_p3;
reg   [31:0] C_reg_1536;
wire   [31:0] add_ln122_5_fu_1029_p2;
reg   [31:0] add_ln122_5_reg_1542;
wire   [31:0] add_ln122_4_fu_1034_p2;
reg   [31:0] add_ln122_4_reg_1547;
wire   [1:0] trunc_ln122_3_fu_1040_p1;
reg   [1:0] trunc_ln122_3_reg_1552;
reg   [29:0] lshr_ln122_3_reg_1557;
wire   [31:0] add_ln122_10_fu_1059_p2;
reg   [31:0] add_ln122_10_reg_1562;
wire   [1:0] trunc_ln122_5_fu_1064_p1;
reg   [1:0] trunc_ln122_5_reg_1567;
reg   [29:0] lshr_ln122_5_reg_1572;
wire   [26:0] trunc_ln122_4_fu_1093_p1;
reg   [26:0] trunc_ln122_4_reg_1577;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [4:0] lshr_ln122_4_reg_1582;
wire   [31:0] xor_ln122_5_fu_1112_p2;
reg   [31:0] xor_ln122_5_reg_1587;
wire   [31:0] xor_ln122_7_fu_1129_p2;
reg   [31:0] xor_ln122_7_reg_1592;
wire   [26:0] trunc_ln122_6_fu_1188_p1;
reg   [26:0] trunc_ln122_6_reg_1597;
wire    ap_block_pp0_stage4_11001;
reg   [4:0] lshr_ln122_6_reg_1602;
wire   [31:0] add_ln122_14_fu_1228_p2;
reg   [31:0] add_ln122_14_reg_1607;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln100_fu_706_p1;
wire    ap_block_pp0_stage0;
reg   [31:0] E_fu_154;
wire   [31:0] C_6_fu_1087_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_5_fu_158;
wire   [31:0] C_7_fu_1117_p3;
reg   [31:0] B_fu_162;
wire   [31:0] temp_2_fu_1182_p2;
reg   [31:0] B_5_fu_166;
wire   [31:0] temp_3_fu_1238_p2;
wire    ap_block_pp0_stage2;
reg   [31:0] E_6_fu_170;
wire   [31:0] C_5_fu_1149_p3;
reg   [5:0] i_2_fu_174;
wire   [5:0] add_ln120_fu_1202_p2;
reg   [5:0] ap_sig_allocacmp_i;
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
wire   [0:0] tmp_fu_698_p3;
wire   [31:0] tmp_s_fu_757_p17;
wire   [4:0] trunc_ln120_fu_754_p1;
wire   [31:0] xor_ln122_fu_797_p2;
wire   [31:0] tmp_s_fu_757_p19;
wire   [31:0] xor_ln122_1_fu_803_p2;
wire   [31:0] tmp_1_fu_835_p17;
wire   [31:0] tmp_2_fu_875_p17;
wire   [31:0] tmp_3_fu_915_p17;
wire   [26:0] trunc_ln122_fu_958_p1;
wire   [4:0] lshr_ln4_fu_962_p4;
wire   [31:0] or_ln_fu_972_p3;
wire   [31:0] add_ln122_2_fu_980_p2;
wire   [31:0] xor_ln122_2_fu_1010_p2;
wire   [26:0] trunc_ln122_2_fu_996_p1;
wire   [4:0] lshr_ln122_2_fu_1000_p4;
wire   [31:0] or_ln122_2_fu_1021_p3;
wire   [31:0] xor_ln122_3_fu_1016_p2;
wire   [31:0] add_ln122_9_fu_1054_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln122_6_fu_1078_p2;
wire   [31:0] temp_1_fu_1082_p2;
wire   [31:0] xor_ln122_4_fu_1107_p2;
wire   [31:0] xor_ln122_6_fu_1123_p2;
wire   [1:0] trunc_ln122_7_fu_1135_p1;
wire   [29:0] lshr_ln122_7_fu_1139_p4;
wire    ap_block_pp0_stage4;
wire   [31:0] add_ln122_8_fu_1178_p2;
wire   [31:0] or_ln122_4_fu_1172_p3;
wire   [31:0] or_ln122_6_fu_1217_p3;
wire   [31:0] add_ln122_13_fu_1223_p2;
wire   [31:0] add_ln122_12_fu_1234_p2;
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
wire   [4:0] tmp_s_fu_757_p1;
wire   [4:0] tmp_s_fu_757_p3;
wire   [4:0] tmp_s_fu_757_p5;
wire   [4:0] tmp_s_fu_757_p7;
wire  signed [4:0] tmp_s_fu_757_p9;
wire  signed [4:0] tmp_s_fu_757_p11;
wire  signed [4:0] tmp_s_fu_757_p13;
wire  signed [4:0] tmp_s_fu_757_p15;
wire   [4:0] tmp_1_fu_835_p1;
wire   [4:0] tmp_1_fu_835_p3;
wire   [4:0] tmp_1_fu_835_p5;
wire   [4:0] tmp_1_fu_835_p7;
wire  signed [4:0] tmp_1_fu_835_p9;
wire  signed [4:0] tmp_1_fu_835_p11;
wire  signed [4:0] tmp_1_fu_835_p13;
wire  signed [4:0] tmp_1_fu_835_p15;
wire   [4:0] tmp_2_fu_875_p1;
wire   [4:0] tmp_2_fu_875_p3;
wire   [4:0] tmp_2_fu_875_p5;
wire   [4:0] tmp_2_fu_875_p7;
wire  signed [4:0] tmp_2_fu_875_p9;
wire  signed [4:0] tmp_2_fu_875_p11;
wire  signed [4:0] tmp_2_fu_875_p13;
wire  signed [4:0] tmp_2_fu_875_p15;
wire   [4:0] tmp_3_fu_915_p1;
wire   [4:0] tmp_3_fu_915_p3;
wire   [4:0] tmp_3_fu_915_p5;
wire   [4:0] tmp_3_fu_915_p7;
wire  signed [4:0] tmp_3_fu_915_p9;
wire  signed [4:0] tmp_3_fu_915_p11;
wire  signed [4:0] tmp_3_fu_915_p13;
wire  signed [4:0] tmp_3_fu_915_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 5'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_154 = 32'd0;
#0 E_5_fu_158 = 32'd0;
#0 B_fu_162 = 32'd0;
#0 B_5_fu_166 = 32'd0;
#0 E_6_fu_170 = 32'd0;
#0 i_2_fu_174 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_x_U90(.din0(W_q0),.din1(W_4_q0),.din2(W_8_q0),.din3(W_12_q0),.din4(W_16_q0),.din5(W_20_q0),.din6(W_24_q0),.din7(W_28_q0),.def(tmp_s_fu_757_p17),.sel(trunc_ln120_fu_754_p1),.dout(tmp_s_fu_757_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_x_U91(.din0(W_1_q0),.din1(W_5_q0),.din2(W_9_q0),.din3(W_13_q0),.din4(W_17_q0),.din5(W_21_q0),.din6(W_25_q0),.din7(W_29_q0),.def(tmp_1_fu_835_p17),.sel(trunc_ln120_fu_754_p1),.dout(tmp_1_fu_835_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_x_U92(.din0(W_2_q0),.din1(W_6_q0),.din2(W_10_q0),.din3(W_14_q0),.din4(W_18_q0),.din5(W_22_q0),.din6(W_26_q0),.din7(W_30_q0),.def(tmp_2_fu_875_p17),.sel(trunc_ln120_fu_754_p1),.dout(tmp_2_fu_875_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_5_32_1_1_x #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h4 ),.din1_WIDTH( 32 ),.CASE2( 5'h8 ),.din2_WIDTH( 32 ),.CASE3( 5'hC ),.din3_WIDTH( 32 ),.CASE4( 5'h10 ),.din4_WIDTH( 32 ),.CASE5( 5'h14 ),.din5_WIDTH( 32 ),.CASE6( 5'h18 ),.din6_WIDTH( 32 ),.CASE7( 5'h1C ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_17_5_32_1_1_x_U93(.din0(W_3_q0),.din1(W_7_q0),.din2(W_11_q0),.din3(W_15_q0),.din4(W_19_q0),.din5(W_23_q0),.din6(W_27_q0),.din7(W_31_q0),.def(tmp_3_fu_915_p17),.sel(trunc_ln120_fu_754_p1),.dout(tmp_3_fu_915_p19));
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
        B_5_fu_166 <= A_15_reload;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_5_fu_166 <= temp_3_fu_1238_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_162 <= B_1_reload;
    end else if (((icmp_ln120_reg_1321 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        B_fu_162 <= temp_2_fu_1182_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_fu_158 <= D_15_reload;
    end else if (((icmp_ln120_reg_1321 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_5_fu_158 <= C_7_fu_1117_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_6_fu_170 <= C_15_reload;
    end else if (((icmp_ln120_reg_1321 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_6_fu_170 <= C_5_fu_1149_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_154 <= E_1_reload;
    end else if (((icmp_ln120_reg_1321 == 1'd1) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        E_fu_154 <= C_6_fu_1087_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_174 <= 6'd20;
    end else if (((icmp_ln120_reg_1321 == 1'd1) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        i_2_fu_174 <= add_ln120_fu_1202_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_reg_1536 <= C_fu_990_p3;
        add_ln122_10_reg_1562 <= add_ln122_10_fu_1059_p2;
        add_ln122_4_reg_1547 <= add_ln122_4_fu_1034_p2;
        add_ln122_5_reg_1542 <= add_ln122_5_fu_1029_p2;
        lshr_ln122_3_reg_1557 <= {{B_5_fu_166[31:2]}};
        lshr_ln122_5_reg_1572 <= {{temp_fu_985_p2[31:2]}};
        temp_reg_1531 <= temp_fu_985_p2;
        trunc_ln122_3_reg_1552 <= trunc_ln122_3_fu_1040_p1;
        trunc_ln122_5_reg_1567 <= trunc_ln122_5_fu_1064_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_5_load_reg_1485 <= E_5_fu_158;
        E_6_load_reg_1490 <= E_6_fu_170;
        add_ln122_1_reg_1496 <= add_ln122_1_fu_809_p2;
        add_ln122_reg_1501 <= add_ln122_fu_815_p2;
        lshr_ln122_1_reg_1511 <= {{B_fu_162[31:2]}};
        tmp_1_reg_1516 <= tmp_1_fu_835_p19;
        tmp_2_reg_1521 <= tmp_2_fu_875_p19;
        tmp_3_reg_1526 <= tmp_3_fu_915_p19;
        trunc_ln122_1_reg_1506 <= trunc_ln122_1_fu_821_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln122_14_reg_1607 <= add_ln122_14_fu_1228_p2;
        i_reg_1315 <= ap_sig_allocacmp_i;
        icmp_ln120_reg_1321 <= icmp_ln120_fu_692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln122_4_reg_1582 <= {{temp_1_fu_1082_p2[31:27]}};
        trunc_ln122_4_reg_1577 <= trunc_ln122_4_fu_1093_p1;
        xor_ln122_5_reg_1587 <= xor_ln122_5_fu_1112_p2;
        xor_ln122_7_reg_1592 <= xor_ln122_7_fu_1129_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        lshr_ln122_6_reg_1602 <= {{temp_2_fu_1182_p2[31:27]}};
        trunc_ln122_6_reg_1597 <= trunc_ln122_6_fu_1188_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1321 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_17_out_ap_vld = 1'b1;
    end else begin
        A_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1321 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        B_6_out_ap_vld = 1'b1;
    end else begin
        B_6_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1321 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_17_out_ap_vld = 1'b1;
    end else begin
        C_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1321 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_17_out_ap_vld = 1'b1;
    end else begin
        D_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1321 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((icmp_ln120_reg_1321 == 1'd0) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        ap_sig_allocacmp_i = 6'd20;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_174;
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
assign A_17_out = B_5_fu_166;
assign B_6_out = B_fu_162;
assign C_17_out = E_6_fu_170;
assign C_5_fu_1149_p3 = {{trunc_ln122_7_fu_1135_p1}, {lshr_ln122_7_fu_1139_p4}};
assign C_6_fu_1087_p3 = {{trunc_ln122_3_reg_1552}, {lshr_ln122_3_reg_1557}};
assign C_7_fu_1117_p3 = {{trunc_ln122_5_reg_1567}, {lshr_ln122_5_reg_1572}};
assign C_fu_990_p3 = {{trunc_ln122_1_reg_1506}, {lshr_ln122_1_reg_1511}};
assign D_17_out = E_5_fu_158;
assign E_6_out = E_fu_154;
assign W_10_address0 = zext_ln100_fu_706_p1;
assign W_10_ce0 = W_10_ce0_local;
assign W_11_address0 = zext_ln100_fu_706_p1;
assign W_11_ce0 = W_11_ce0_local;
assign W_12_address0 = zext_ln100_fu_706_p1;
assign W_12_ce0 = W_12_ce0_local;
assign W_13_address0 = zext_ln100_fu_706_p1;
assign W_13_ce0 = W_13_ce0_local;
assign W_14_address0 = zext_ln100_fu_706_p1;
assign W_14_ce0 = W_14_ce0_local;
assign W_15_address0 = zext_ln100_fu_706_p1;
assign W_15_ce0 = W_15_ce0_local;
assign W_16_address0 = zext_ln100_fu_706_p1;
assign W_16_ce0 = W_16_ce0_local;
assign W_17_address0 = zext_ln100_fu_706_p1;
assign W_17_ce0 = W_17_ce0_local;
assign W_18_address0 = zext_ln100_fu_706_p1;
assign W_18_ce0 = W_18_ce0_local;
assign W_19_address0 = zext_ln100_fu_706_p1;
assign W_19_ce0 = W_19_ce0_local;
assign W_1_address0 = zext_ln100_fu_706_p1;
assign W_1_ce0 = W_1_ce0_local;
assign W_20_address0 = zext_ln100_fu_706_p1;
assign W_20_ce0 = W_20_ce0_local;
assign W_21_address0 = zext_ln100_fu_706_p1;
assign W_21_ce0 = W_21_ce0_local;
assign W_22_address0 = zext_ln100_fu_706_p1;
assign W_22_ce0 = W_22_ce0_local;
assign W_23_address0 = zext_ln100_fu_706_p1;
assign W_23_ce0 = W_23_ce0_local;
assign W_24_address0 = zext_ln100_fu_706_p1;
assign W_24_ce0 = W_24_ce0_local;
assign W_25_address0 = zext_ln100_fu_706_p1;
assign W_25_ce0 = W_25_ce0_local;
assign W_26_address0 = zext_ln100_fu_706_p1;
assign W_26_ce0 = W_26_ce0_local;
assign W_27_address0 = zext_ln100_fu_706_p1;
assign W_27_ce0 = W_27_ce0_local;
assign W_28_address0 = zext_ln100_fu_706_p1;
assign W_28_ce0 = W_28_ce0_local;
assign W_29_address0 = zext_ln100_fu_706_p1;
assign W_29_ce0 = W_29_ce0_local;
assign W_2_address0 = zext_ln100_fu_706_p1;
assign W_2_ce0 = W_2_ce0_local;
assign W_30_address0 = zext_ln100_fu_706_p1;
assign W_30_ce0 = W_30_ce0_local;
assign W_31_address0 = zext_ln100_fu_706_p1;
assign W_31_ce0 = W_31_ce0_local;
assign W_3_address0 = zext_ln100_fu_706_p1;
assign W_3_ce0 = W_3_ce0_local;
assign W_4_address0 = zext_ln100_fu_706_p1;
assign W_4_ce0 = W_4_ce0_local;
assign W_5_address0 = zext_ln100_fu_706_p1;
assign W_5_ce0 = W_5_ce0_local;
assign W_6_address0 = zext_ln100_fu_706_p1;
assign W_6_ce0 = W_6_ce0_local;
assign W_7_address0 = zext_ln100_fu_706_p1;
assign W_7_ce0 = W_7_ce0_local;
assign W_8_address0 = zext_ln100_fu_706_p1;
assign W_8_ce0 = W_8_ce0_local;
assign W_9_address0 = zext_ln100_fu_706_p1;
assign W_9_ce0 = W_9_ce0_local;
assign W_address0 = zext_ln100_fu_706_p1;
assign W_ce0 = W_ce0_local;
assign add_ln120_fu_1202_p2 = (i_reg_1315 + 6'd4);
assign add_ln122_10_fu_1059_p2 = (add_ln122_9_fu_1054_p2 + E_6_load_reg_1490);
assign add_ln122_12_fu_1234_p2 = (C_reg_1536 + xor_ln122_7_reg_1592);
assign add_ln122_13_fu_1223_p2 = (tmp_3_reg_1526 + 32'd1859775393);
assign add_ln122_14_fu_1228_p2 = (or_ln122_6_fu_1217_p3 + add_ln122_13_fu_1223_p2);
assign add_ln122_1_fu_809_p2 = (tmp_s_fu_757_p19 + 32'd1859775393);
assign add_ln122_2_fu_980_p2 = (add_ln122_1_reg_1496 + or_ln_fu_972_p3);
assign add_ln122_4_fu_1034_p2 = (or_ln122_2_fu_1021_p3 + xor_ln122_3_fu_1016_p2);
assign add_ln122_5_fu_1029_p2 = (tmp_1_reg_1516 + 32'd1859775393);
assign add_ln122_6_fu_1078_p2 = (add_ln122_5_reg_1542 + E_5_load_reg_1485);
assign add_ln122_8_fu_1178_p2 = (add_ln122_10_reg_1562 + xor_ln122_5_reg_1587);
assign add_ln122_9_fu_1054_p2 = (tmp_2_reg_1521 + 32'd1859775393);
assign add_ln122_fu_815_p2 = (xor_ln122_1_fu_803_p2 + E_fu_154);
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
assign icmp_ln120_fu_692_p2 = ((ap_sig_allocacmp_i < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln122_2_fu_1000_p4 = {{temp_fu_985_p2[31:27]}};
assign lshr_ln122_7_fu_1139_p4 = {{temp_1_fu_1082_p2[31:2]}};
assign lshr_ln4_fu_962_p4 = {{B_5_fu_166[31:27]}};
assign or_ln122_2_fu_1021_p3 = {{trunc_ln122_2_fu_996_p1}, {lshr_ln122_2_fu_1000_p4}};
assign or_ln122_4_fu_1172_p3 = {{trunc_ln122_4_reg_1577}, {lshr_ln122_4_reg_1582}};
assign or_ln122_6_fu_1217_p3 = {{trunc_ln122_6_reg_1597}, {lshr_ln122_6_reg_1602}};
assign or_ln_fu_972_p3 = {{trunc_ln122_fu_958_p1}, {lshr_ln4_fu_962_p4}};
assign temp_1_fu_1082_p2 = (add_ln122_4_reg_1547 + add_ln122_6_fu_1078_p2);
assign temp_2_fu_1182_p2 = (add_ln122_8_fu_1178_p2 + or_ln122_4_fu_1172_p3);
assign temp_3_fu_1238_p2 = (add_ln122_14_reg_1607 + add_ln122_12_fu_1234_p2);
assign temp_fu_985_p2 = (add_ln122_reg_1501 + add_ln122_2_fu_980_p2);
assign tmp_1_fu_835_p17 = 'bx;
assign tmp_2_fu_875_p17 = 'bx;
assign tmp_3_fu_915_p17 = 'bx;
assign tmp_fu_698_p3 = ap_sig_allocacmp_i[32'd5];
assign tmp_s_fu_757_p17 = 'bx;
assign trunc_ln120_fu_754_p1 = i_reg_1315[4:0];
assign trunc_ln122_1_fu_821_p1 = B_fu_162[1:0];
assign trunc_ln122_2_fu_996_p1 = temp_fu_985_p2[26:0];
assign trunc_ln122_3_fu_1040_p1 = B_5_fu_166[1:0];
assign trunc_ln122_4_fu_1093_p1 = temp_1_fu_1082_p2[26:0];
assign trunc_ln122_5_fu_1064_p1 = temp_fu_985_p2[1:0];
assign trunc_ln122_6_fu_1188_p1 = temp_2_fu_1182_p2[26:0];
assign trunc_ln122_7_fu_1135_p1 = temp_1_fu_1082_p2[1:0];
assign trunc_ln122_fu_958_p1 = B_5_fu_166[26:0];
assign xor_ln122_1_fu_803_p2 = (xor_ln122_fu_797_p2 ^ E_6_fu_170);
assign xor_ln122_2_fu_1010_p2 = (C_fu_990_p3 ^ B_5_fu_166);
assign xor_ln122_3_fu_1016_p2 = (xor_ln122_2_fu_1010_p2 ^ E_6_load_reg_1490);
assign xor_ln122_4_fu_1107_p2 = (temp_reg_1531 ^ C_6_fu_1087_p3);
assign xor_ln122_5_fu_1112_p2 = (xor_ln122_4_fu_1107_p2 ^ C_reg_1536);
assign xor_ln122_6_fu_1123_p2 = (temp_1_fu_1082_p2 ^ C_6_fu_1087_p3);
assign xor_ln122_7_fu_1129_p2 = (xor_ln122_6_fu_1123_p2 ^ C_7_fu_1117_p3);
assign xor_ln122_fu_797_p2 = (E_5_fu_158 ^ B_fu_162);
assign zext_ln100_fu_706_p1 = tmp_fu_698_p3;
endmodule 