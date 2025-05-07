module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_15_address0,W_15_ce0,W_15_we0,W_15_d0,W_15_q0,W_14_address0,W_14_ce0,W_14_we0,W_14_d0,W_14_q0,W_13_address0,W_13_ce0,W_13_we0,W_13_d0,W_13_q0,W_12_address0,W_12_ce0,W_12_we0,W_12_d0,W_12_q0,W_11_address0,W_11_ce0,W_11_we0,W_11_d0,W_11_q0,W_10_address0,W_10_ce0,W_10_we0,W_10_d0,W_10_q0,W_9_address0,W_9_ce0,W_9_we0,W_9_d0,W_9_q0,W_8_address0,W_8_ce0,W_8_we0,W_8_d0,W_8_q0,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_7_q0,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_6_q0,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_5_q0,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_4_q0,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_q0,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_q0,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_q0,W_address0,W_ce0,W_we0,W_d0,W_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [2:0] W_15_address0;
output   W_15_ce0;
output   W_15_we0;
output  [31:0] W_15_d0;
input  [31:0] W_15_q0;
output  [2:0] W_14_address0;
output   W_14_ce0;
output   W_14_we0;
output  [31:0] W_14_d0;
input  [31:0] W_14_q0;
output  [2:0] W_13_address0;
output   W_13_ce0;
output   W_13_we0;
output  [31:0] W_13_d0;
input  [31:0] W_13_q0;
output  [2:0] W_12_address0;
output   W_12_ce0;
output   W_12_we0;
output  [31:0] W_12_d0;
input  [31:0] W_12_q0;
output  [2:0] W_11_address0;
output   W_11_ce0;
output   W_11_we0;
output  [31:0] W_11_d0;
input  [31:0] W_11_q0;
output  [2:0] W_10_address0;
output   W_10_ce0;
output   W_10_we0;
output  [31:0] W_10_d0;
input  [31:0] W_10_q0;
output  [2:0] W_9_address0;
output   W_9_ce0;
output   W_9_we0;
output  [31:0] W_9_d0;
input  [31:0] W_9_q0;
output  [2:0] W_8_address0;
output   W_8_ce0;
output   W_8_we0;
output  [31:0] W_8_d0;
input  [31:0] W_8_q0;
output  [2:0] W_7_address0;
output   W_7_ce0;
output   W_7_we0;
output  [31:0] W_7_d0;
input  [31:0] W_7_q0;
output  [2:0] W_6_address0;
output   W_6_ce0;
output   W_6_we0;
output  [31:0] W_6_d0;
input  [31:0] W_6_q0;
output  [2:0] W_5_address0;
output   W_5_ce0;
output   W_5_we0;
output  [31:0] W_5_d0;
input  [31:0] W_5_q0;
output  [2:0] W_4_address0;
output   W_4_ce0;
output   W_4_we0;
output  [31:0] W_4_d0;
input  [31:0] W_4_q0;
output  [2:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
input  [31:0] W_3_q0;
output  [2:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
input  [31:0] W_2_q0;
output  [2:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
input  [31:0] W_1_q0;
output  [2:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
input  [31:0] W_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln106_fu_836_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [6:0] i_3_reg_1475;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln106_reg_1489;
wire   [3:0] trunc_ln106_1_fu_842_p1;
reg   [3:0] trunc_ln106_1_reg_1493;
reg   [2:0] lshr_ln_reg_1505;
wire    ap_block_pp0_stage1_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln108_fu_873_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln108_1_fu_900_p1;
wire   [63:0] zext_ln108_2_fu_927_p1;
wire   [63:0] zext_ln108_3_fu_955_p1;
wire   [63:0] zext_ln108_4_fu_982_p1;
wire   [63:0] zext_ln108_5_fu_1009_p1;
wire   [63:0] zext_ln108_6_fu_1036_p1;
wire   [63:0] zext_ln108_7_fu_1063_p1;
wire   [63:0] zext_ln99_fu_1085_p1;
wire    ap_block_pp0_stage0;
reg   [6:0] i_fu_104;
wire   [6:0] add_ln106_fu_1075_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    W_1_ce0_local;
reg   [2:0] W_1_address0_local;
reg    W_1_we0_local;
wire   [31:0] xor_ln108_5_fu_1454_p2;
reg    W_3_ce0_local;
reg   [2:0] W_3_address0_local;
reg    W_3_we0_local;
reg    W_5_ce0_local;
reg   [2:0] W_5_address0_local;
reg    W_5_we0_local;
reg    W_7_ce0_local;
reg   [2:0] W_7_address0_local;
reg    W_7_we0_local;
reg    W_9_ce0_local;
reg   [2:0] W_9_address0_local;
reg    W_9_we0_local;
reg    W_11_ce0_local;
reg   [2:0] W_11_address0_local;
reg    W_11_we0_local;
reg    W_13_ce0_local;
reg   [2:0] W_13_address0_local;
reg    W_13_we0_local;
reg    W_15_ce0_local;
reg   [2:0] W_15_address0_local;
reg    W_15_we0_local;
reg    W_ce0_local;
reg   [2:0] W_address0_local;
reg    W_we0_local;
wire   [31:0] xor_ln108_2_fu_1272_p2;
reg    W_2_ce0_local;
reg   [2:0] W_2_address0_local;
reg    W_2_we0_local;
reg    W_4_ce0_local;
reg   [2:0] W_4_address0_local;
reg    W_4_we0_local;
reg    W_6_ce0_local;
reg   [2:0] W_6_address0_local;
reg    W_6_we0_local;
reg    W_8_ce0_local;
reg   [2:0] W_8_address0_local;
reg    W_8_we0_local;
reg    W_10_ce0_local;
reg   [2:0] W_10_address0_local;
reg    W_10_we0_local;
reg    W_12_ce0_local;
reg   [2:0] W_12_address0_local;
reg    W_12_we0_local;
reg    W_14_ce0_local;
reg   [2:0] W_14_address0_local;
reg    W_14_we0_local;
wire   [6:0] add_ln108_fu_858_p2;
wire   [2:0] lshr_ln1_fu_863_p4;
wire   [6:0] add_ln108_1_fu_885_p2;
wire   [2:0] lshr_ln108_1_fu_890_p4;
wire   [6:0] add_ln108_2_fu_912_p2;
wire   [2:0] lshr_ln108_2_fu_917_p4;
wire   [5:0] trunc_ln106_fu_846_p1;
wire   [5:0] add_ln108_3_fu_939_p2;
wire   [1:0] lshr_ln108_3_fu_945_p4;
wire   [6:0] add_ln108_4_fu_967_p2;
wire   [2:0] lshr_ln108_4_fu_972_p4;
wire   [6:0] add_ln108_5_fu_994_p2;
wire   [2:0] lshr_ln108_5_fu_999_p4;
wire   [6:0] add_ln108_6_fu_1021_p2;
wire   [2:0] lshr_ln108_6_fu_1026_p4;
wire   [6:0] add_ln108_7_fu_1048_p2;
wire   [2:0] lshr_ln108_7_fu_1053_p4;
wire   [31:0] tmp_fu_1104_p17;
wire   [31:0] tmp_2_fu_1143_p17;
wire   [31:0] tmp_3_fu_1182_p17;
wire   [31:0] tmp_4_fu_1221_p17;
wire   [31:0] tmp_fu_1104_p19;
wire   [31:0] tmp_3_fu_1182_p19;
wire   [31:0] tmp_2_fu_1143_p19;
wire   [31:0] tmp_4_fu_1221_p19;
wire   [31:0] xor_ln108_1_fu_1266_p2;
wire   [31:0] xor_ln108_fu_1260_p2;
wire   [31:0] tmp_5_fu_1286_p17;
wire   [31:0] tmp_6_fu_1325_p17;
wire   [31:0] tmp_7_fu_1364_p17;
wire   [31:0] tmp_8_fu_1403_p17;
wire   [31:0] tmp_5_fu_1286_p19;
wire   [31:0] tmp_7_fu_1364_p19;
wire   [31:0] tmp_6_fu_1325_p19;
wire   [31:0] tmp_8_fu_1403_p19;
wire   [31:0] xor_ln108_4_fu_1448_p2;
wire   [31:0] xor_ln108_3_fu_1442_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] tmp_fu_1104_p1;
wire   [3:0] tmp_fu_1104_p3;
wire  signed [3:0] tmp_fu_1104_p5;
wire  signed [3:0] tmp_fu_1104_p7;
wire  signed [3:0] tmp_fu_1104_p9;
wire  signed [3:0] tmp_fu_1104_p11;
wire   [3:0] tmp_fu_1104_p13;
wire   [3:0] tmp_fu_1104_p15;
wire  signed [3:0] tmp_2_fu_1143_p1;
wire  signed [3:0] tmp_2_fu_1143_p3;
wire  signed [3:0] tmp_2_fu_1143_p5;
wire  signed [3:0] tmp_2_fu_1143_p7;
wire   [3:0] tmp_2_fu_1143_p9;
wire   [3:0] tmp_2_fu_1143_p11;
wire   [3:0] tmp_2_fu_1143_p13;
wire   [3:0] tmp_2_fu_1143_p15;
wire  signed [3:0] tmp_3_fu_1182_p1;
wire   [3:0] tmp_3_fu_1182_p3;
wire   [3:0] tmp_3_fu_1182_p5;
wire   [3:0] tmp_3_fu_1182_p7;
wire   [3:0] tmp_3_fu_1182_p9;
wire  signed [3:0] tmp_3_fu_1182_p11;
wire  signed [3:0] tmp_3_fu_1182_p13;
wire  signed [3:0] tmp_3_fu_1182_p15;
wire   [3:0] tmp_4_fu_1221_p1;
wire   [3:0] tmp_4_fu_1221_p3;
wire   [3:0] tmp_4_fu_1221_p5;
wire   [3:0] tmp_4_fu_1221_p7;
wire  signed [3:0] tmp_4_fu_1221_p9;
wire  signed [3:0] tmp_4_fu_1221_p11;
wire  signed [3:0] tmp_4_fu_1221_p13;
wire  signed [3:0] tmp_4_fu_1221_p15;
wire   [3:0] tmp_5_fu_1286_p1;
wire   [3:0] tmp_5_fu_1286_p3;
wire   [3:0] tmp_5_fu_1286_p5;
wire  signed [3:0] tmp_5_fu_1286_p7;
wire  signed [3:0] tmp_5_fu_1286_p9;
wire  signed [3:0] tmp_5_fu_1286_p11;
wire  signed [3:0] tmp_5_fu_1286_p13;
wire   [3:0] tmp_5_fu_1286_p15;
wire  signed [3:0] tmp_6_fu_1325_p1;
wire  signed [3:0] tmp_6_fu_1325_p3;
wire  signed [3:0] tmp_6_fu_1325_p5;
wire  signed [3:0] tmp_6_fu_1325_p7;
wire   [3:0] tmp_6_fu_1325_p9;
wire   [3:0] tmp_6_fu_1325_p11;
wire   [3:0] tmp_6_fu_1325_p13;
wire   [3:0] tmp_6_fu_1325_p15;
wire  signed [3:0] tmp_7_fu_1364_p1;
wire   [3:0] tmp_7_fu_1364_p3;
wire   [3:0] tmp_7_fu_1364_p5;
wire   [3:0] tmp_7_fu_1364_p7;
wire   [3:0] tmp_7_fu_1364_p9;
wire  signed [3:0] tmp_7_fu_1364_p11;
wire  signed [3:0] tmp_7_fu_1364_p13;
wire  signed [3:0] tmp_7_fu_1364_p15;
wire   [3:0] tmp_8_fu_1403_p1;
wire   [3:0] tmp_8_fu_1403_p3;
wire   [3:0] tmp_8_fu_1403_p5;
wire   [3:0] tmp_8_fu_1403_p7;
wire  signed [3:0] tmp_8_fu_1403_p9;
wire  signed [3:0] tmp_8_fu_1403_p11;
wire  signed [3:0] tmp_8_fu_1403_p13;
wire  signed [3:0] tmp_8_fu_1403_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 i_fu_104 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h4 ),.din0_WIDTH( 32 ),.CASE1( 4'h6 ),.din1_WIDTH( 32 ),.CASE2( 4'h8 ),.din2_WIDTH( 32 ),.CASE3( 4'hA ),.din3_WIDTH( 32 ),.CASE4( 4'hC ),.din4_WIDTH( 32 ),.CASE5( 4'hE ),.din5_WIDTH( 32 ),.CASE6( 4'h0 ),.din6_WIDTH( 32 ),.CASE7( 4'h2 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U6(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.din4(W_9_q0),.din5(W_11_q0),.din6(W_13_q0),.din7(W_15_q0),.def(tmp_fu_1104_p17),.sel(trunc_ln106_1_reg_1493),.dout(tmp_fu_1104_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 32 ),.CASE1( 4'hA ),.din1_WIDTH( 32 ),.CASE2( 4'hC ),.din2_WIDTH( 32 ),.CASE3( 4'hE ),.din3_WIDTH( 32 ),.CASE4( 4'h0 ),.din4_WIDTH( 32 ),.CASE5( 4'h2 ),.din5_WIDTH( 32 ),.CASE6( 4'h4 ),.din6_WIDTH( 32 ),.CASE7( 4'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U7(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.din4(W_8_q0),.din5(W_10_q0),.din6(W_12_q0),.din7(W_14_q0),.def(tmp_2_fu_1143_p17),.sel(trunc_ln106_1_reg_1493),.dout(tmp_2_fu_1143_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h6 ),.din4_WIDTH( 32 ),.CASE5( 4'h8 ),.din5_WIDTH( 32 ),.CASE6( 4'hA ),.din6_WIDTH( 32 ),.CASE7( 4'hC ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U8(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.din4(W_8_q0),.din5(W_10_q0),.din6(W_12_q0),.din7(W_14_q0),.def(tmp_3_fu_1182_p17),.sel(trunc_ln106_1_reg_1493),.dout(tmp_3_fu_1182_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h6 ),.din3_WIDTH( 32 ),.CASE4( 4'h8 ),.din4_WIDTH( 32 ),.CASE5( 4'hA ),.din5_WIDTH( 32 ),.CASE6( 4'hC ),.din6_WIDTH( 32 ),.CASE7( 4'hE ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U9(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.din4(W_8_q0),.din5(W_10_q0),.din6(W_12_q0),.din7(W_14_q0),.def(tmp_4_fu_1221_p17),.sel(trunc_ln106_1_reg_1493),.dout(tmp_4_fu_1221_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h2 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h6 ),.din2_WIDTH( 32 ),.CASE3( 4'h8 ),.din3_WIDTH( 32 ),.CASE4( 4'hA ),.din4_WIDTH( 32 ),.CASE5( 4'hC ),.din5_WIDTH( 32 ),.CASE6( 4'hE ),.din6_WIDTH( 32 ),.CASE7( 4'h0 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U10(.din0(W_q0),.din1(W_2_q0),.din2(W_4_q0),.din3(W_6_q0),.din4(W_8_q0),.din5(W_10_q0),.din6(W_12_q0),.din7(W_14_q0),.def(tmp_5_fu_1286_p17),.sel(trunc_ln106_1_reg_1493),.dout(tmp_5_fu_1286_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 32 ),.CASE1( 4'hA ),.din1_WIDTH( 32 ),.CASE2( 4'hC ),.din2_WIDTH( 32 ),.CASE3( 4'hE ),.din3_WIDTH( 32 ),.CASE4( 4'h0 ),.din4_WIDTH( 32 ),.CASE5( 4'h2 ),.din5_WIDTH( 32 ),.CASE6( 4'h4 ),.din6_WIDTH( 32 ),.CASE7( 4'h6 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U11(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.din4(W_9_q0),.din5(W_11_q0),.din6(W_13_q0),.din7(W_15_q0),.def(tmp_6_fu_1325_p17),.sel(trunc_ln106_1_reg_1493),.dout(tmp_6_fu_1325_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 32 ),.CASE1( 4'h0 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h4 ),.din3_WIDTH( 32 ),.CASE4( 4'h6 ),.din4_WIDTH( 32 ),.CASE5( 4'h8 ),.din5_WIDTH( 32 ),.CASE6( 4'hA ),.din6_WIDTH( 32 ),.CASE7( 4'hC ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U12(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.din4(W_9_q0),.din5(W_11_q0),.din6(W_13_q0),.din7(W_15_q0),.def(tmp_7_fu_1364_p17),.sel(trunc_ln106_1_reg_1493),.dout(tmp_7_fu_1364_p19));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_17_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h2 ),.din1_WIDTH( 32 ),.CASE2( 4'h4 ),.din2_WIDTH( 32 ),.CASE3( 4'h6 ),.din3_WIDTH( 32 ),.CASE4( 4'h8 ),.din4_WIDTH( 32 ),.CASE5( 4'hA ),.din5_WIDTH( 32 ),.CASE6( 4'hC ),.din6_WIDTH( 32 ),.CASE7( 4'hE ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_17_4_32_1_1_U13(.din0(W_1_q0),.din1(W_3_q0),.din2(W_5_q0),.din3(W_7_q0),.din4(W_9_q0),.din5(W_11_q0),.din6(W_13_q0),.din7(W_15_q0),.def(tmp_8_fu_1403_p17),.sel(trunc_ln106_1_reg_1493),.dout(tmp_8_fu_1403_p19));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
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
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_104 <= 7'd16;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln106_reg_1489 == 1'd1))) begin
        i_fu_104 <= add_ln106_fu_1075_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_3_reg_1475 <= ap_sig_allocacmp_i_3;
        icmp_ln106_reg_1489 <= icmp_ln106_fu_836_p2;
        trunc_ln106_1_reg_1493 <= trunc_ln106_1_fu_842_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        lshr_ln_reg_1505 <= {{i_3_reg_1475[6:4]}};
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_10_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_10_address0_local = zext_ln108_4_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_10_address0_local = zext_ln108_3_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_10_address0_local = zext_ln108_2_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_10_address0_local = zext_ln108_1_fu_900_p1;
    end else begin
        W_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd10))) begin
        W_10_we0_local = 1'b1;
    end else begin
        W_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_11_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_11_address0_local = zext_ln108_7_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_11_address0_local = zext_ln108_6_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_11_address0_local = zext_ln108_5_fu_1009_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_11_address0_local = zext_ln108_fu_873_p1;
    end else begin
        W_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd10))) begin
        W_11_we0_local = 1'b1;
    end else begin
        W_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_12_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_12_address0_local = zext_ln108_4_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_12_address0_local = zext_ln108_3_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_12_address0_local = zext_ln108_2_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_12_address0_local = zext_ln108_1_fu_900_p1;
    end else begin
        W_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd12))) begin
        W_12_we0_local = 1'b1;
    end else begin
        W_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_13_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_13_address0_local = zext_ln108_7_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_13_address0_local = zext_ln108_6_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_13_address0_local = zext_ln108_5_fu_1009_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_13_address0_local = zext_ln108_fu_873_p1;
    end else begin
        W_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd12))) begin
        W_13_we0_local = 1'b1;
    end else begin
        W_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_14_address0_local = zext_ln108_4_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_14_address0_local = zext_ln108_3_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_14_address0_local = zext_ln108_2_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_14_address0_local = zext_ln108_1_fu_900_p1;
    end else begin
        W_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_reg_1493 == 4'd2) & ~(trunc_ln106_1_reg_1493 == 4'd0) & ~(trunc_ln106_1_reg_1493 == 4'd12) & ~(trunc_ln106_1_reg_1493 == 4'd10) & ~(trunc_ln106_1_reg_1493 == 4'd8) & ~(trunc_ln106_1_reg_1493 == 4'd6) & ~(trunc_ln106_1_reg_1493 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_14_we0_local = 1'b1;
    end else begin
        W_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_15_address0_local = zext_ln108_7_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_15_address0_local = zext_ln108_6_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_15_address0_local = zext_ln108_5_fu_1009_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_15_address0_local = zext_ln108_fu_873_p1;
    end else begin
        W_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln106_1_reg_1493 == 4'd2) & ~(trunc_ln106_1_reg_1493 == 4'd0) & ~(trunc_ln106_1_reg_1493 == 4'd12) & ~(trunc_ln106_1_reg_1493 == 4'd10) & ~(trunc_ln106_1_reg_1493 == 4'd8) & ~(trunc_ln106_1_reg_1493 == 4'd6) & ~(trunc_ln106_1_reg_1493 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_15_we0_local = 1'b1;
    end else begin
        W_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_1_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_1_address0_local = zext_ln108_7_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_1_address0_local = zext_ln108_6_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_1_address0_local = zext_ln108_5_fu_1009_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_1_address0_local = zext_ln108_fu_873_p1;
    end else begin
        W_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd0))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_2_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_2_address0_local = zext_ln108_4_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_2_address0_local = zext_ln108_3_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_2_address0_local = zext_ln108_2_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_2_address0_local = zext_ln108_1_fu_900_p1;
    end else begin
        W_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd2))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_3_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_3_address0_local = zext_ln108_7_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_3_address0_local = zext_ln108_6_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_3_address0_local = zext_ln108_5_fu_1009_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_3_address0_local = zext_ln108_fu_873_p1;
    end else begin
        W_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd2))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_4_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_4_address0_local = zext_ln108_4_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_4_address0_local = zext_ln108_3_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_4_address0_local = zext_ln108_2_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_4_address0_local = zext_ln108_1_fu_900_p1;
    end else begin
        W_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd4))) begin
        W_4_we0_local = 1'b1;
    end else begin
        W_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_5_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_5_address0_local = zext_ln108_7_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_5_address0_local = zext_ln108_6_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_5_address0_local = zext_ln108_5_fu_1009_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_5_address0_local = zext_ln108_fu_873_p1;
    end else begin
        W_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd4))) begin
        W_5_we0_local = 1'b1;
    end else begin
        W_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_6_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_6_address0_local = zext_ln108_4_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_6_address0_local = zext_ln108_3_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_6_address0_local = zext_ln108_2_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_6_address0_local = zext_ln108_1_fu_900_p1;
    end else begin
        W_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd6))) begin
        W_6_we0_local = 1'b1;
    end else begin
        W_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_7_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_7_address0_local = zext_ln108_7_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_7_address0_local = zext_ln108_6_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_7_address0_local = zext_ln108_5_fu_1009_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_7_address0_local = zext_ln108_fu_873_p1;
    end else begin
        W_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd4) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd6))) begin
        W_7_we0_local = 1'b1;
    end else begin
        W_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_8_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_8_address0_local = zext_ln108_4_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_8_address0_local = zext_ln108_3_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_8_address0_local = zext_ln108_2_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_8_address0_local = zext_ln108_1_fu_900_p1;
    end else begin
        W_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd10) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd8))) begin
        W_8_we0_local = 1'b1;
    end else begin
        W_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_9_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_9_address0_local = zext_ln108_7_fu_1063_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_9_address0_local = zext_ln108_6_fu_1036_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_9_address0_local = zext_ln108_5_fu_1009_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_9_address0_local = zext_ln108_fu_873_p1;
    end else begin
        W_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd12) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd6) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd8))) begin
        W_9_we0_local = 1'b1;
    end else begin
        W_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        W_address0_local = zext_ln99_fu_1085_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_address0_local = zext_ln108_4_fu_982_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_address0_local = zext_ln108_3_fu_955_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_address0_local = zext_ln108_2_fu_927_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1))) begin
        W_address0_local = zext_ln108_1_fu_900_p1;
    end else begin
        W_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd2) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd0) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd14) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln106_1_reg_1493 == 4'd8) & (icmp_ln106_reg_1489 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln106_1_reg_1493 == 4'd0))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_836_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_104;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign W_10_address0 = W_10_address0_local;
assign W_10_ce0 = W_10_ce0_local;
assign W_10_d0 = xor_ln108_2_fu_1272_p2;
assign W_10_we0 = W_10_we0_local;
assign W_11_address0 = W_11_address0_local;
assign W_11_ce0 = W_11_ce0_local;
assign W_11_d0 = xor_ln108_5_fu_1454_p2;
assign W_11_we0 = W_11_we0_local;
assign W_12_address0 = W_12_address0_local;
assign W_12_ce0 = W_12_ce0_local;
assign W_12_d0 = xor_ln108_2_fu_1272_p2;
assign W_12_we0 = W_12_we0_local;
assign W_13_address0 = W_13_address0_local;
assign W_13_ce0 = W_13_ce0_local;
assign W_13_d0 = xor_ln108_5_fu_1454_p2;
assign W_13_we0 = W_13_we0_local;
assign W_14_address0 = W_14_address0_local;
assign W_14_ce0 = W_14_ce0_local;
assign W_14_d0 = xor_ln108_2_fu_1272_p2;
assign W_14_we0 = W_14_we0_local;
assign W_15_address0 = W_15_address0_local;
assign W_15_ce0 = W_15_ce0_local;
assign W_15_d0 = xor_ln108_5_fu_1454_p2;
assign W_15_we0 = W_15_we0_local;
assign W_1_address0 = W_1_address0_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_d0 = xor_ln108_5_fu_1454_p2;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = W_2_address0_local;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_d0 = xor_ln108_2_fu_1272_p2;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = W_3_address0_local;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_d0 = xor_ln108_5_fu_1454_p2;
assign W_3_we0 = W_3_we0_local;
assign W_4_address0 = W_4_address0_local;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_d0 = xor_ln108_2_fu_1272_p2;
assign W_4_we0 = W_4_we0_local;
assign W_5_address0 = W_5_address0_local;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_d0 = xor_ln108_5_fu_1454_p2;
assign W_5_we0 = W_5_we0_local;
assign W_6_address0 = W_6_address0_local;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_d0 = xor_ln108_2_fu_1272_p2;
assign W_6_we0 = W_6_we0_local;
assign W_7_address0 = W_7_address0_local;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_d0 = xor_ln108_5_fu_1454_p2;
assign W_7_we0 = W_7_we0_local;
assign W_8_address0 = W_8_address0_local;
assign W_8_ce0 = W_8_ce0_local;
assign W_8_d0 = xor_ln108_2_fu_1272_p2;
assign W_8_we0 = W_8_we0_local;
assign W_9_address0 = W_9_address0_local;
assign W_9_ce0 = W_9_ce0_local;
assign W_9_d0 = xor_ln108_5_fu_1454_p2;
assign W_9_we0 = W_9_we0_local;
assign W_address0 = W_address0_local;
assign W_ce0 = W_ce0_local;
assign W_d0 = xor_ln108_2_fu_1272_p2;
assign W_we0 = W_we0_local;
assign add_ln106_fu_1075_p2 = (i_3_reg_1475 + 7'd2);
assign add_ln108_1_fu_885_p2 = ($signed(i_3_reg_1475) + $signed(7'd120));
assign add_ln108_2_fu_912_p2 = ($signed(i_3_reg_1475) + $signed(7'd114));
assign add_ln108_3_fu_939_p2 = ($signed(trunc_ln106_fu_846_p1) + $signed(6'd48));
assign add_ln108_4_fu_967_p2 = ($signed(i_3_reg_1475) + $signed(7'd126));
assign add_ln108_5_fu_994_p2 = ($signed(i_3_reg_1475) + $signed(7'd121));
assign add_ln108_6_fu_1021_p2 = ($signed(i_3_reg_1475) + $signed(7'd115));
assign add_ln108_7_fu_1048_p2 = ($signed(i_3_reg_1475) + $signed(7'd113));
assign add_ln108_fu_858_p2 = ($signed(i_3_reg_1475) + $signed(7'd125));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_836_p2 = ((ap_sig_allocacmp_i_3 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_1_fu_890_p4 = {{add_ln108_1_fu_885_p2[6:4]}};
assign lshr_ln108_2_fu_917_p4 = {{add_ln108_2_fu_912_p2[6:4]}};
assign lshr_ln108_3_fu_945_p4 = {{add_ln108_3_fu_939_p2[5:4]}};
assign lshr_ln108_4_fu_972_p4 = {{add_ln108_4_fu_967_p2[6:4]}};
assign lshr_ln108_5_fu_999_p4 = {{add_ln108_5_fu_994_p2[6:4]}};
assign lshr_ln108_6_fu_1026_p4 = {{add_ln108_6_fu_1021_p2[6:4]}};
assign lshr_ln108_7_fu_1053_p4 = {{add_ln108_7_fu_1048_p2[6:4]}};
assign lshr_ln1_fu_863_p4 = {{add_ln108_fu_858_p2[6:4]}};
assign tmp_2_fu_1143_p17 = 'bx;
assign tmp_3_fu_1182_p17 = 'bx;
assign tmp_4_fu_1221_p17 = 'bx;
assign tmp_5_fu_1286_p17 = 'bx;
assign tmp_6_fu_1325_p17 = 'bx;
assign tmp_7_fu_1364_p17 = 'bx;
assign tmp_8_fu_1403_p17 = 'bx;
assign tmp_fu_1104_p17 = 'bx;
assign trunc_ln106_1_fu_842_p1 = ap_sig_allocacmp_i_3[3:0];
assign trunc_ln106_fu_846_p1 = i_3_reg_1475[5:0];
assign xor_ln108_1_fu_1266_p2 = (tmp_4_fu_1221_p19 ^ tmp_2_fu_1143_p19);
assign xor_ln108_2_fu_1272_p2 = (xor_ln108_fu_1260_p2 ^ xor_ln108_1_fu_1266_p2);
assign xor_ln108_3_fu_1442_p2 = (tmp_7_fu_1364_p19 ^ tmp_5_fu_1286_p19);
assign xor_ln108_4_fu_1448_p2 = (tmp_8_fu_1403_p19 ^ tmp_6_fu_1325_p19);
assign xor_ln108_5_fu_1454_p2 = (xor_ln108_4_fu_1448_p2 ^ xor_ln108_3_fu_1442_p2);
assign xor_ln108_fu_1260_p2 = (tmp_fu_1104_p19 ^ tmp_3_fu_1182_p19);
assign zext_ln108_1_fu_900_p1 = lshr_ln108_1_fu_890_p4;
assign zext_ln108_2_fu_927_p1 = lshr_ln108_2_fu_917_p4;
assign zext_ln108_3_fu_955_p1 = lshr_ln108_3_fu_945_p4;
assign zext_ln108_4_fu_982_p1 = lshr_ln108_4_fu_972_p4;
assign zext_ln108_5_fu_1009_p1 = lshr_ln108_5_fu_999_p4;
assign zext_ln108_6_fu_1036_p1 = lshr_ln108_6_fu_1026_p4;
assign zext_ln108_7_fu_1063_p1 = lshr_ln108_7_fu_1053_p4;
assign zext_ln108_fu_873_p1 = lshr_ln1_fu_863_p4;
assign zext_ln99_fu_1085_p1 = lshr_ln_reg_1505;
endmodule 