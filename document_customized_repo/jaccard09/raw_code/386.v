module sha_stream_sha_transform_Pipeline_trans_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,W_15_address0,W_15_ce0,W_15_we0,W_15_d0,W_15_address1,W_15_ce1,W_15_q1,W_14_address0,W_14_ce0,W_14_we0,W_14_d0,W_14_address1,W_14_ce1,W_14_q1,W_13_address0,W_13_ce0,W_13_we0,W_13_d0,W_13_address1,W_13_ce1,W_13_q1,W_12_address0,W_12_ce0,W_12_we0,W_12_d0,W_12_address1,W_12_ce1,W_12_q1,W_11_address0,W_11_ce0,W_11_we0,W_11_d0,W_11_address1,W_11_ce1,W_11_q1,W_10_address0,W_10_ce0,W_10_we0,W_10_d0,W_10_address1,W_10_ce1,W_10_q1,W_9_address0,W_9_ce0,W_9_we0,W_9_d0,W_9_address1,W_9_ce1,W_9_q1,W_8_address0,W_8_ce0,W_8_we0,W_8_d0,W_8_address1,W_8_ce1,W_8_q1,W_7_address0,W_7_ce0,W_7_we0,W_7_d0,W_7_address1,W_7_ce1,W_7_q1,W_6_address0,W_6_ce0,W_6_we0,W_6_d0,W_6_address1,W_6_ce1,W_6_q1,W_5_address0,W_5_ce0,W_5_we0,W_5_d0,W_5_address1,W_5_ce1,W_5_q1,W_4_address0,W_4_ce0,W_4_we0,W_4_d0,W_4_address1,W_4_ce1,W_4_q1,W_3_address0,W_3_ce0,W_3_we0,W_3_d0,W_3_address1,W_3_ce1,W_3_q1,W_2_address0,W_2_ce0,W_2_we0,W_2_d0,W_2_address1,W_2_ce1,W_2_q1,W_1_address0,W_1_ce0,W_1_we0,W_1_d0,W_1_address1,W_1_ce1,W_1_q1,W_address0,W_ce0,W_we0,W_d0,W_address1,W_ce1,W_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
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
output  [2:0] W_15_address1;
output   W_15_ce1;
input  [31:0] W_15_q1;
output  [2:0] W_14_address0;
output   W_14_ce0;
output   W_14_we0;
output  [31:0] W_14_d0;
output  [2:0] W_14_address1;
output   W_14_ce1;
input  [31:0] W_14_q1;
output  [2:0] W_13_address0;
output   W_13_ce0;
output   W_13_we0;
output  [31:0] W_13_d0;
output  [2:0] W_13_address1;
output   W_13_ce1;
input  [31:0] W_13_q1;
output  [2:0] W_12_address0;
output   W_12_ce0;
output   W_12_we0;
output  [31:0] W_12_d0;
output  [2:0] W_12_address1;
output   W_12_ce1;
input  [31:0] W_12_q1;
output  [2:0] W_11_address0;
output   W_11_ce0;
output   W_11_we0;
output  [31:0] W_11_d0;
output  [2:0] W_11_address1;
output   W_11_ce1;
input  [31:0] W_11_q1;
output  [2:0] W_10_address0;
output   W_10_ce0;
output   W_10_we0;
output  [31:0] W_10_d0;
output  [2:0] W_10_address1;
output   W_10_ce1;
input  [31:0] W_10_q1;
output  [2:0] W_9_address0;
output   W_9_ce0;
output   W_9_we0;
output  [31:0] W_9_d0;
output  [2:0] W_9_address1;
output   W_9_ce1;
input  [31:0] W_9_q1;
output  [2:0] W_8_address0;
output   W_8_ce0;
output   W_8_we0;
output  [31:0] W_8_d0;
output  [2:0] W_8_address1;
output   W_8_ce1;
input  [31:0] W_8_q1;
output  [2:0] W_7_address0;
output   W_7_ce0;
output   W_7_we0;
output  [31:0] W_7_d0;
output  [2:0] W_7_address1;
output   W_7_ce1;
input  [31:0] W_7_q1;
output  [2:0] W_6_address0;
output   W_6_ce0;
output   W_6_we0;
output  [31:0] W_6_d0;
output  [2:0] W_6_address1;
output   W_6_ce1;
input  [31:0] W_6_q1;
output  [2:0] W_5_address0;
output   W_5_ce0;
output   W_5_we0;
output  [31:0] W_5_d0;
output  [2:0] W_5_address1;
output   W_5_ce1;
input  [31:0] W_5_q1;
output  [2:0] W_4_address0;
output   W_4_ce0;
output   W_4_we0;
output  [31:0] W_4_d0;
output  [2:0] W_4_address1;
output   W_4_ce1;
input  [31:0] W_4_q1;
output  [2:0] W_3_address0;
output   W_3_ce0;
output   W_3_we0;
output  [31:0] W_3_d0;
output  [2:0] W_3_address1;
output   W_3_ce1;
input  [31:0] W_3_q1;
output  [2:0] W_2_address0;
output   W_2_ce0;
output   W_2_we0;
output  [31:0] W_2_d0;
output  [2:0] W_2_address1;
output   W_2_ce1;
input  [31:0] W_2_q1;
output  [2:0] W_1_address0;
output   W_1_ce0;
output   W_1_we0;
output  [31:0] W_1_d0;
output  [2:0] W_1_address1;
output   W_1_ce1;
input  [31:0] W_1_q1;
output  [2:0] W_address0;
output   W_ce0;
output   W_we0;
output  [31:0] W_d0;
output  [2:0] W_address1;
output   W_ce1;
input  [31:0] W_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln106_fu_908_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] i_3_reg_1410;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] trunc_ln106_1_fu_914_p1;
reg   [3:0] trunc_ln106_1_reg_1423;
reg   [3:0] trunc_ln106_1_reg_1423_pp0_iter1_reg;
reg   [3:0] trunc_ln106_1_reg_1423_pp0_iter2_reg;
reg   [2:0] lshr_ln_reg_1431;
reg   [2:0] lshr_ln_reg_1431_pp0_iter2_reg;
wire   [31:0] xor_ln108_2_fu_1378_p2;
reg   [31:0] xor_ln108_2_reg_1756;
wire   [63:0] zext_ln108_fu_956_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln108_1_fu_991_p1;
wire   [63:0] zext_ln108_2_fu_1026_p1;
wire   [63:0] zext_ln108_3_fu_1062_p1;
wire   [63:0] zext_ln99_fu_1384_p1;
reg   [6:0] i_fu_112;
wire   [6:0] add_ln106_fu_918_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_i_3;
reg    W_ce1_local;
reg   [2:0] W_address1_local;
reg    W_we0_local;
reg    W_ce0_local;
reg    W_1_ce1_local;
reg   [2:0] W_1_address1_local;
reg    W_1_we0_local;
reg    W_1_ce0_local;
reg    W_2_ce1_local;
reg   [2:0] W_2_address1_local;
reg    W_2_we0_local;
reg    W_2_ce0_local;
reg    W_3_ce1_local;
reg   [2:0] W_3_address1_local;
reg    W_3_we0_local;
reg    W_3_ce0_local;
reg    W_4_ce1_local;
reg   [2:0] W_4_address1_local;
reg    W_4_we0_local;
reg    W_4_ce0_local;
reg    W_5_ce1_local;
reg   [2:0] W_5_address1_local;
reg    W_5_we0_local;
reg    W_5_ce0_local;
reg    W_6_ce1_local;
reg   [2:0] W_6_address1_local;
reg    W_6_we0_local;
reg    W_6_ce0_local;
reg    W_7_ce1_local;
reg   [2:0] W_7_address1_local;
reg    W_7_we0_local;
reg    W_7_ce0_local;
reg    W_8_ce1_local;
reg   [2:0] W_8_address1_local;
reg    W_8_we0_local;
reg    W_8_ce0_local;
reg    W_9_ce1_local;
reg   [2:0] W_9_address1_local;
reg    W_9_we0_local;
reg    W_9_ce0_local;
reg    W_10_ce1_local;
reg   [2:0] W_10_address1_local;
reg    W_10_we0_local;
reg    W_10_ce0_local;
reg    W_11_ce1_local;
reg   [2:0] W_11_address1_local;
reg    W_11_we0_local;
reg    W_11_ce0_local;
reg    W_12_ce1_local;
reg   [2:0] W_12_address1_local;
reg    W_12_we0_local;
reg    W_12_ce0_local;
reg    W_13_ce1_local;
reg   [2:0] W_13_address1_local;
reg    W_13_we0_local;
reg    W_13_ce0_local;
reg    W_14_ce1_local;
reg   [2:0] W_14_address1_local;
reg    W_14_we0_local;
reg    W_14_ce0_local;
reg    W_15_ce1_local;
reg   [2:0] W_15_address1_local;
reg    W_15_we0_local;
reg    W_15_ce0_local;
wire   [6:0] add_ln108_fu_941_p2;
wire   [2:0] lshr_ln1_fu_946_p4;
wire   [6:0] add_ln108_1_fu_976_p2;
wire   [2:0] lshr_ln108_1_fu_981_p4;
wire   [6:0] add_ln108_2_fu_1011_p2;
wire   [2:0] lshr_ln108_2_fu_1016_p4;
wire   [5:0] trunc_ln106_fu_929_p1;
wire   [5:0] add_ln108_3_fu_1046_p2;
wire   [1:0] lshr_ln108_3_fu_1052_p4;
wire   [31:0] tmp_fu_1082_p33;
wire   [31:0] tmp_2_fu_1153_p33;
wire   [31:0] tmp_3_fu_1224_p33;
wire   [31:0] tmp_4_fu_1295_p33;
wire   [31:0] tmp_fu_1082_p35;
wire   [31:0] tmp_3_fu_1224_p35;
wire   [31:0] tmp_2_fu_1153_p35;
wire   [31:0] tmp_4_fu_1295_p35;
wire   [31:0] xor_ln108_1_fu_1372_p2;
wire   [31:0] xor_ln108_fu_1366_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_364;
wire   [3:0] tmp_fu_1082_p1;
wire   [3:0] tmp_fu_1082_p3;
wire   [3:0] tmp_fu_1082_p5;
wire   [3:0] tmp_fu_1082_p7;
wire   [3:0] tmp_fu_1082_p9;
wire  signed [3:0] tmp_fu_1082_p11;
wire  signed [3:0] tmp_fu_1082_p13;
wire  signed [3:0] tmp_fu_1082_p15;
wire  signed [3:0] tmp_fu_1082_p17;
wire  signed [3:0] tmp_fu_1082_p19;
wire  signed [3:0] tmp_fu_1082_p21;
wire  signed [3:0] tmp_fu_1082_p23;
wire  signed [3:0] tmp_fu_1082_p25;
wire   [3:0] tmp_fu_1082_p27;
wire   [3:0] tmp_fu_1082_p29;
wire   [3:0] tmp_fu_1082_p31;
wire  signed [3:0] tmp_2_fu_1153_p1;
wire  signed [3:0] tmp_2_fu_1153_p3;
wire  signed [3:0] tmp_2_fu_1153_p5;
wire  signed [3:0] tmp_2_fu_1153_p7;
wire  signed [3:0] tmp_2_fu_1153_p9;
wire  signed [3:0] tmp_2_fu_1153_p11;
wire  signed [3:0] tmp_2_fu_1153_p13;
wire  signed [3:0] tmp_2_fu_1153_p15;
wire   [3:0] tmp_2_fu_1153_p17;
wire   [3:0] tmp_2_fu_1153_p19;
wire   [3:0] tmp_2_fu_1153_p21;
wire   [3:0] tmp_2_fu_1153_p23;
wire   [3:0] tmp_2_fu_1153_p25;
wire   [3:0] tmp_2_fu_1153_p27;
wire   [3:0] tmp_2_fu_1153_p29;
wire   [3:0] tmp_2_fu_1153_p31;
wire  signed [3:0] tmp_3_fu_1224_p1;
wire  signed [3:0] tmp_3_fu_1224_p3;
wire   [3:0] tmp_3_fu_1224_p5;
wire   [3:0] tmp_3_fu_1224_p7;
wire   [3:0] tmp_3_fu_1224_p9;
wire   [3:0] tmp_3_fu_1224_p11;
wire   [3:0] tmp_3_fu_1224_p13;
wire   [3:0] tmp_3_fu_1224_p15;
wire   [3:0] tmp_3_fu_1224_p17;
wire   [3:0] tmp_3_fu_1224_p19;
wire  signed [3:0] tmp_3_fu_1224_p21;
wire  signed [3:0] tmp_3_fu_1224_p23;
wire  signed [3:0] tmp_3_fu_1224_p25;
wire  signed [3:0] tmp_3_fu_1224_p27;
wire  signed [3:0] tmp_3_fu_1224_p29;
wire  signed [3:0] tmp_3_fu_1224_p31;
wire   [3:0] tmp_4_fu_1295_p1;
wire   [3:0] tmp_4_fu_1295_p3;
wire   [3:0] tmp_4_fu_1295_p5;
wire   [3:0] tmp_4_fu_1295_p7;
wire   [3:0] tmp_4_fu_1295_p9;
wire   [3:0] tmp_4_fu_1295_p11;
wire   [3:0] tmp_4_fu_1295_p13;
wire   [3:0] tmp_4_fu_1295_p15;
wire  signed [3:0] tmp_4_fu_1295_p17;
wire  signed [3:0] tmp_4_fu_1295_p19;
wire  signed [3:0] tmp_4_fu_1295_p21;
wire  signed [3:0] tmp_4_fu_1295_p23;
wire  signed [3:0] tmp_4_fu_1295_p25;
wire  signed [3:0] tmp_4_fu_1295_p27;
wire  signed [3:0] tmp_4_fu_1295_p29;
wire  signed [3:0] tmp_4_fu_1295_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 i_fu_112 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h3 ),.din0_WIDTH( 32 ),.CASE1( 4'h4 ),.din1_WIDTH( 32 ),.CASE2( 4'h5 ),.din2_WIDTH( 32 ),.CASE3( 4'h6 ),.din3_WIDTH( 32 ),.CASE4( 4'h7 ),.din4_WIDTH( 32 ),.CASE5( 4'h8 ),.din5_WIDTH( 32 ),.CASE6( 4'h9 ),.din6_WIDTH( 32 ),.CASE7( 4'hA ),.din7_WIDTH( 32 ),.CASE8( 4'hB ),.din8_WIDTH( 32 ),.CASE9( 4'hC ),.din9_WIDTH( 32 ),.CASE10( 4'hD ),.din10_WIDTH( 32 ),.CASE11( 4'hE ),.din11_WIDTH( 32 ),.CASE12( 4'hF ),.din12_WIDTH( 32 ),.CASE13( 4'h0 ),.din13_WIDTH( 32 ),.CASE14( 4'h1 ),.din14_WIDTH( 32 ),.CASE15( 4'h2 ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U6(.din0(W_q1),.din1(W_1_q1),.din2(W_2_q1),.din3(W_3_q1),.din4(W_4_q1),.din5(W_5_q1),.din6(W_6_q1),.din7(W_7_q1),.din8(W_8_q1),.din9(W_9_q1),.din10(W_10_q1),.din11(W_11_q1),.din12(W_12_q1),.din13(W_13_q1),.din14(W_14_q1),.din15(W_15_q1),.def(tmp_fu_1082_p33),.sel(trunc_ln106_1_reg_1423_pp0_iter1_reg),.dout(tmp_fu_1082_p35));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h8 ),.din0_WIDTH( 32 ),.CASE1( 4'h9 ),.din1_WIDTH( 32 ),.CASE2( 4'hA ),.din2_WIDTH( 32 ),.CASE3( 4'hB ),.din3_WIDTH( 32 ),.CASE4( 4'hC ),.din4_WIDTH( 32 ),.CASE5( 4'hD ),.din5_WIDTH( 32 ),.CASE6( 4'hE ),.din6_WIDTH( 32 ),.CASE7( 4'hF ),.din7_WIDTH( 32 ),.CASE8( 4'h0 ),.din8_WIDTH( 32 ),.CASE9( 4'h1 ),.din9_WIDTH( 32 ),.CASE10( 4'h2 ),.din10_WIDTH( 32 ),.CASE11( 4'h3 ),.din11_WIDTH( 32 ),.CASE12( 4'h4 ),.din12_WIDTH( 32 ),.CASE13( 4'h5 ),.din13_WIDTH( 32 ),.CASE14( 4'h6 ),.din14_WIDTH( 32 ),.CASE15( 4'h7 ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U7(.din0(W_q1),.din1(W_1_q1),.din2(W_2_q1),.din3(W_3_q1),.din4(W_4_q1),.din5(W_5_q1),.din6(W_6_q1),.din7(W_7_q1),.din8(W_8_q1),.din9(W_9_q1),.din10(W_10_q1),.din11(W_11_q1),.din12(W_12_q1),.din13(W_13_q1),.din14(W_14_q1),.din15(W_15_q1),.def(tmp_2_fu_1153_p33),.sel(trunc_ln106_1_reg_1423_pp0_iter1_reg),.dout(tmp_2_fu_1153_p35));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 32 ),.CASE1( 4'hF ),.din1_WIDTH( 32 ),.CASE2( 4'h0 ),.din2_WIDTH( 32 ),.CASE3( 4'h1 ),.din3_WIDTH( 32 ),.CASE4( 4'h2 ),.din4_WIDTH( 32 ),.CASE5( 4'h3 ),.din5_WIDTH( 32 ),.CASE6( 4'h4 ),.din6_WIDTH( 32 ),.CASE7( 4'h5 ),.din7_WIDTH( 32 ),.CASE8( 4'h6 ),.din8_WIDTH( 32 ),.CASE9( 4'h7 ),.din9_WIDTH( 32 ),.CASE10( 4'h8 ),.din10_WIDTH( 32 ),.CASE11( 4'h9 ),.din11_WIDTH( 32 ),.CASE12( 4'hA ),.din12_WIDTH( 32 ),.CASE13( 4'hB ),.din13_WIDTH( 32 ),.CASE14( 4'hC ),.din14_WIDTH( 32 ),.CASE15( 4'hD ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U8(.din0(W_q1),.din1(W_1_q1),.din2(W_2_q1),.din3(W_3_q1),.din4(W_4_q1),.din5(W_5_q1),.din6(W_6_q1),.din7(W_7_q1),.din8(W_8_q1),.din9(W_9_q1),.din10(W_10_q1),.din11(W_11_q1),.din12(W_12_q1),.din13(W_13_q1),.din14(W_14_q1),.din15(W_15_q1),.def(tmp_3_fu_1224_p33),.sel(trunc_ln106_1_reg_1423_pp0_iter1_reg),.dout(tmp_3_fu_1224_p35));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_33_4_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 32 ),.CASE1( 4'h1 ),.din1_WIDTH( 32 ),.CASE2( 4'h2 ),.din2_WIDTH( 32 ),.CASE3( 4'h3 ),.din3_WIDTH( 32 ),.CASE4( 4'h4 ),.din4_WIDTH( 32 ),.CASE5( 4'h5 ),.din5_WIDTH( 32 ),.CASE6( 4'h6 ),.din6_WIDTH( 32 ),.CASE7( 4'h7 ),.din7_WIDTH( 32 ),.CASE8( 4'h8 ),.din8_WIDTH( 32 ),.CASE9( 4'h9 ),.din9_WIDTH( 32 ),.CASE10( 4'hA ),.din10_WIDTH( 32 ),.CASE11( 4'hB ),.din11_WIDTH( 32 ),.CASE12( 4'hC ),.din12_WIDTH( 32 ),.CASE13( 4'hD ),.din13_WIDTH( 32 ),.CASE14( 4'hE ),.din14_WIDTH( 32 ),.CASE15( 4'hF ),.din15_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 4 ),.dout_WIDTH( 32 ))
sparsemux_33_4_32_1_1_U9(.din0(W_q1),.din1(W_1_q1),.din2(W_2_q1),.din3(W_3_q1),.din4(W_4_q1),.din5(W_5_q1),.din6(W_6_q1),.din7(W_7_q1),.din8(W_8_q1),.din9(W_9_q1),.din10(W_10_q1),.din11(W_11_q1),.din12(W_12_q1),.din13(W_13_q1),.din14(W_14_q1),.din15(W_15_q1),.def(tmp_4_fu_1295_p33),.sel(trunc_ln106_1_reg_1423_pp0_iter1_reg),.dout(tmp_4_fu_1295_p35));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln106_fu_908_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_112 <= add_ln106_fu_918_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_112 <= 7'd16;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        i_3_reg_1410 <= ap_sig_allocacmp_i_3;
        lshr_ln_reg_1431 <= {{i_3_reg_1410[6:4]}};
        trunc_ln106_1_reg_1423 <= trunc_ln106_1_fu_914_p1;
        trunc_ln106_1_reg_1423_pp0_iter1_reg <= trunc_ln106_1_reg_1423;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        lshr_ln_reg_1431_pp0_iter2_reg <= lshr_ln_reg_1431;
        trunc_ln106_1_reg_1423_pp0_iter2_reg <= trunc_ln106_1_reg_1423_pp0_iter1_reg;
        xor_ln108_2_reg_1756 <= xor_ln108_2_fu_1378_p2;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd10)) begin
            W_10_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd8)) begin
            W_10_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd2)) begin
            W_10_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd13)) begin
            W_10_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_10_address1_local = 'bx;
        end
    end else begin
        W_10_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_10_ce0_local = 1'b1;
    end else begin
        W_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd13) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_10_ce1_local = 1'b1;
    end else begin
        W_10_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd10))) begin
        W_10_we0_local = 1'b1;
    end else begin
        W_10_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd11)) begin
            W_11_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd9)) begin
            W_11_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd3)) begin
            W_11_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd14)) begin
            W_11_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_11_address1_local = 'bx;
        end
    end else begin
        W_11_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_11_ce0_local = 1'b1;
    end else begin
        W_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd14) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_11_ce1_local = 1'b1;
    end else begin
        W_11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd11))) begin
        W_11_we0_local = 1'b1;
    end else begin
        W_11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd12)) begin
            W_12_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd10)) begin
            W_12_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd4)) begin
            W_12_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd15)) begin
            W_12_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_12_address1_local = 'bx;
        end
    end else begin
        W_12_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_12_ce0_local = 1'b1;
    end else begin
        W_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd15) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_12_ce1_local = 1'b1;
    end else begin
        W_12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd12))) begin
        W_12_we0_local = 1'b1;
    end else begin
        W_12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd13)) begin
            W_13_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd11)) begin
            W_13_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd5)) begin
            W_13_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd0)) begin
            W_13_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_13_address1_local = 'bx;
        end
    end else begin
        W_13_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_13_ce0_local = 1'b1;
    end else begin
        W_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd13) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_13_ce1_local = 1'b1;
    end else begin
        W_13_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd13))) begin
        W_13_we0_local = 1'b1;
    end else begin
        W_13_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd14)) begin
            W_14_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd12)) begin
            W_14_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd6)) begin
            W_14_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd1)) begin
            W_14_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_14_address1_local = 'bx;
        end
    end else begin
        W_14_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_14_ce0_local = 1'b1;
    end else begin
        W_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd14) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_14_ce1_local = 1'b1;
    end else begin
        W_14_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd14))) begin
        W_14_we0_local = 1'b1;
    end else begin
        W_14_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd15)) begin
            W_15_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd13)) begin
            W_15_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd7)) begin
            W_15_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd2)) begin
            W_15_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_15_address1_local = 'bx;
        end
    end else begin
        W_15_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_15_ce0_local = 1'b1;
    end else begin
        W_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd15) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd13) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_15_ce1_local = 1'b1;
    end else begin
        W_15_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd15))) begin
        W_15_we0_local = 1'b1;
    end else begin
        W_15_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd1)) begin
            W_1_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd15)) begin
            W_1_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd9)) begin
            W_1_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd4)) begin
            W_1_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_1_address1_local = 'bx;
        end
    end else begin
        W_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_1_ce0_local = 1'b1;
    end else begin
        W_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd15) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_1_ce1_local = 1'b1;
    end else begin
        W_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd1))) begin
        W_1_we0_local = 1'b1;
    end else begin
        W_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd2)) begin
            W_2_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd0)) begin
            W_2_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd10)) begin
            W_2_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd5)) begin
            W_2_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_2_address1_local = 'bx;
        end
    end else begin
        W_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_2_ce0_local = 1'b1;
    end else begin
        W_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_2_ce1_local = 1'b1;
    end else begin
        W_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd2))) begin
        W_2_we0_local = 1'b1;
    end else begin
        W_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd3)) begin
            W_3_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd1)) begin
            W_3_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd11)) begin
            W_3_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd6)) begin
            W_3_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_3_address1_local = 'bx;
        end
    end else begin
        W_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_3_ce0_local = 1'b1;
    end else begin
        W_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_3_ce1_local = 1'b1;
    end else begin
        W_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd3))) begin
        W_3_we0_local = 1'b1;
    end else begin
        W_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd4)) begin
            W_4_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd2)) begin
            W_4_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd12)) begin
            W_4_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd7)) begin
            W_4_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_4_address1_local = 'bx;
        end
    end else begin
        W_4_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_4_ce0_local = 1'b1;
    end else begin
        W_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd2) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_4_ce1_local = 1'b1;
    end else begin
        W_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd4))) begin
        W_4_we0_local = 1'b1;
    end else begin
        W_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd5)) begin
            W_5_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd3)) begin
            W_5_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd13)) begin
            W_5_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd8)) begin
            W_5_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_5_address1_local = 'bx;
        end
    end else begin
        W_5_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_5_ce0_local = 1'b1;
    end else begin
        W_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd13) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_5_ce1_local = 1'b1;
    end else begin
        W_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd5))) begin
        W_5_we0_local = 1'b1;
    end else begin
        W_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd6)) begin
            W_6_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd4)) begin
            W_6_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd14)) begin
            W_6_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd9)) begin
            W_6_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_6_address1_local = 'bx;
        end
    end else begin
        W_6_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_6_ce0_local = 1'b1;
    end else begin
        W_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd14) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd4) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_6_ce1_local = 1'b1;
    end else begin
        W_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd6))) begin
        W_6_we0_local = 1'b1;
    end else begin
        W_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd7)) begin
            W_7_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd5)) begin
            W_7_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd15)) begin
            W_7_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd10)) begin
            W_7_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_7_address1_local = 'bx;
        end
    end else begin
        W_7_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_7_ce0_local = 1'b1;
    end else begin
        W_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd15) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd10) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd5) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_7_ce1_local = 1'b1;
    end else begin
        W_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd7))) begin
        W_7_we0_local = 1'b1;
    end else begin
        W_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd8)) begin
            W_8_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd6)) begin
            W_8_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd0)) begin
            W_8_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd11)) begin
            W_8_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_8_address1_local = 'bx;
        end
    end else begin
        W_8_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_8_ce0_local = 1'b1;
    end else begin
        W_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd11) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd6) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_8_ce1_local = 1'b1;
    end else begin
        W_8_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd8))) begin
        W_8_we0_local = 1'b1;
    end else begin
        W_8_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd9)) begin
            W_9_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd7)) begin
            W_9_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd1)) begin
            W_9_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd12)) begin
            W_9_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_9_address1_local = 'bx;
        end
    end else begin
        W_9_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_9_ce0_local = 1'b1;
    end else begin
        W_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd12) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd9) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd7) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_9_ce1_local = 1'b1;
    end else begin
        W_9_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd9))) begin
        W_9_we0_local = 1'b1;
    end else begin
        W_9_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_364)) begin
        if ((trunc_ln106_1_reg_1423 == 4'd0)) begin
            W_address1_local = zext_ln108_3_fu_1062_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd14)) begin
            W_address1_local = zext_ln108_2_fu_1026_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd8)) begin
            W_address1_local = zext_ln108_1_fu_991_p1;
        end else if ((trunc_ln106_1_reg_1423 == 4'd3)) begin
            W_address1_local = zext_ln108_fu_956_p1;
        end else begin
            W_address1_local = 'bx;
        end
    end else begin
        W_address1_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        W_ce0_local = 1'b1;
    end else begin
        W_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd14) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd8) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (trunc_ln106_1_reg_1423 == 4'd3) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        W_ce1_local = 1'b1;
    end else begin
        W_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln106_1_reg_1423_pp0_iter2_reg == 4'd0))) begin
        W_we0_local = 1'b1;
    end else begin
        W_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln106_fu_908_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_3 = 7'd16;
    end else begin
        ap_sig_allocacmp_i_3 = i_fu_112;
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
assign W_10_address0 = zext_ln99_fu_1384_p1;
assign W_10_address1 = W_10_address1_local;
assign W_10_ce0 = W_10_ce0_local;
assign W_10_ce1 = W_10_ce1_local;
assign W_10_d0 = xor_ln108_2_reg_1756;
assign W_10_we0 = W_10_we0_local;
assign W_11_address0 = zext_ln99_fu_1384_p1;
assign W_11_address1 = W_11_address1_local;
assign W_11_ce0 = W_11_ce0_local;
assign W_11_ce1 = W_11_ce1_local;
assign W_11_d0 = xor_ln108_2_reg_1756;
assign W_11_we0 = W_11_we0_local;
assign W_12_address0 = zext_ln99_fu_1384_p1;
assign W_12_address1 = W_12_address1_local;
assign W_12_ce0 = W_12_ce0_local;
assign W_12_ce1 = W_12_ce1_local;
assign W_12_d0 = xor_ln108_2_reg_1756;
assign W_12_we0 = W_12_we0_local;
assign W_13_address0 = zext_ln99_fu_1384_p1;
assign W_13_address1 = W_13_address1_local;
assign W_13_ce0 = W_13_ce0_local;
assign W_13_ce1 = W_13_ce1_local;
assign W_13_d0 = xor_ln108_2_reg_1756;
assign W_13_we0 = W_13_we0_local;
assign W_14_address0 = zext_ln99_fu_1384_p1;
assign W_14_address1 = W_14_address1_local;
assign W_14_ce0 = W_14_ce0_local;
assign W_14_ce1 = W_14_ce1_local;
assign W_14_d0 = xor_ln108_2_reg_1756;
assign W_14_we0 = W_14_we0_local;
assign W_15_address0 = zext_ln99_fu_1384_p1;
assign W_15_address1 = W_15_address1_local;
assign W_15_ce0 = W_15_ce0_local;
assign W_15_ce1 = W_15_ce1_local;
assign W_15_d0 = xor_ln108_2_reg_1756;
assign W_15_we0 = W_15_we0_local;
assign W_1_address0 = zext_ln99_fu_1384_p1;
assign W_1_address1 = W_1_address1_local;
assign W_1_ce0 = W_1_ce0_local;
assign W_1_ce1 = W_1_ce1_local;
assign W_1_d0 = xor_ln108_2_reg_1756;
assign W_1_we0 = W_1_we0_local;
assign W_2_address0 = zext_ln99_fu_1384_p1;
assign W_2_address1 = W_2_address1_local;
assign W_2_ce0 = W_2_ce0_local;
assign W_2_ce1 = W_2_ce1_local;
assign W_2_d0 = xor_ln108_2_reg_1756;
assign W_2_we0 = W_2_we0_local;
assign W_3_address0 = zext_ln99_fu_1384_p1;
assign W_3_address1 = W_3_address1_local;
assign W_3_ce0 = W_3_ce0_local;
assign W_3_ce1 = W_3_ce1_local;
assign W_3_d0 = xor_ln108_2_reg_1756;
assign W_3_we0 = W_3_we0_local;
assign W_4_address0 = zext_ln99_fu_1384_p1;
assign W_4_address1 = W_4_address1_local;
assign W_4_ce0 = W_4_ce0_local;
assign W_4_ce1 = W_4_ce1_local;
assign W_4_d0 = xor_ln108_2_reg_1756;
assign W_4_we0 = W_4_we0_local;
assign W_5_address0 = zext_ln99_fu_1384_p1;
assign W_5_address1 = W_5_address1_local;
assign W_5_ce0 = W_5_ce0_local;
assign W_5_ce1 = W_5_ce1_local;
assign W_5_d0 = xor_ln108_2_reg_1756;
assign W_5_we0 = W_5_we0_local;
assign W_6_address0 = zext_ln99_fu_1384_p1;
assign W_6_address1 = W_6_address1_local;
assign W_6_ce0 = W_6_ce0_local;
assign W_6_ce1 = W_6_ce1_local;
assign W_6_d0 = xor_ln108_2_reg_1756;
assign W_6_we0 = W_6_we0_local;
assign W_7_address0 = zext_ln99_fu_1384_p1;
assign W_7_address1 = W_7_address1_local;
assign W_7_ce0 = W_7_ce0_local;
assign W_7_ce1 = W_7_ce1_local;
assign W_7_d0 = xor_ln108_2_reg_1756;
assign W_7_we0 = W_7_we0_local;
assign W_8_address0 = zext_ln99_fu_1384_p1;
assign W_8_address1 = W_8_address1_local;
assign W_8_ce0 = W_8_ce0_local;
assign W_8_ce1 = W_8_ce1_local;
assign W_8_d0 = xor_ln108_2_reg_1756;
assign W_8_we0 = W_8_we0_local;
assign W_9_address0 = zext_ln99_fu_1384_p1;
assign W_9_address1 = W_9_address1_local;
assign W_9_ce0 = W_9_ce0_local;
assign W_9_ce1 = W_9_ce1_local;
assign W_9_d0 = xor_ln108_2_reg_1756;
assign W_9_we0 = W_9_we0_local;
assign W_address0 = zext_ln99_fu_1384_p1;
assign W_address1 = W_address1_local;
assign W_ce0 = W_ce0_local;
assign W_ce1 = W_ce1_local;
assign W_d0 = xor_ln108_2_reg_1756;
assign W_we0 = W_we0_local;
assign add_ln106_fu_918_p2 = (ap_sig_allocacmp_i_3 + 7'd1);
assign add_ln108_1_fu_976_p2 = ($signed(i_3_reg_1410) + $signed(7'd120));
assign add_ln108_2_fu_1011_p2 = ($signed(i_3_reg_1410) + $signed(7'd114));
assign add_ln108_3_fu_1046_p2 = ($signed(trunc_ln106_fu_929_p1) + $signed(6'd48));
assign add_ln108_fu_941_p2 = ($signed(i_3_reg_1410) + $signed(7'd125));
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_364 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln106_fu_908_p2 = ((ap_sig_allocacmp_i_3 == 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln108_1_fu_981_p4 = {{add_ln108_1_fu_976_p2[6:4]}};
assign lshr_ln108_2_fu_1016_p4 = {{add_ln108_2_fu_1011_p2[6:4]}};
assign lshr_ln108_3_fu_1052_p4 = {{add_ln108_3_fu_1046_p2[5:4]}};
assign lshr_ln1_fu_946_p4 = {{add_ln108_fu_941_p2[6:4]}};
assign tmp_2_fu_1153_p33 = 'bx;
assign tmp_3_fu_1224_p33 = 'bx;
assign tmp_4_fu_1295_p33 = 'bx;
assign tmp_fu_1082_p33 = 'bx;
assign trunc_ln106_1_fu_914_p1 = ap_sig_allocacmp_i_3[3:0];
assign trunc_ln106_fu_929_p1 = i_3_reg_1410[5:0];
assign xor_ln108_1_fu_1372_p2 = (tmp_4_fu_1295_p35 ^ tmp_2_fu_1153_p35);
assign xor_ln108_2_fu_1378_p2 = (xor_ln108_fu_1366_p2 ^ xor_ln108_1_fu_1372_p2);
assign xor_ln108_fu_1366_p2 = (tmp_fu_1082_p35 ^ tmp_3_fu_1224_p35);
assign zext_ln108_1_fu_991_p1 = lshr_ln108_1_fu_981_p4;
assign zext_ln108_2_fu_1026_p1 = lshr_ln108_2_fu_1016_p4;
assign zext_ln108_3_fu_1062_p1 = lshr_ln108_3_fu_1052_p4;
assign zext_ln108_fu_956_p1 = lshr_ln1_fu_946_p4;
assign zext_ln99_fu_1384_p1 = lshr_ln_reg_1431_pp0_iter2_reg;
endmodule 