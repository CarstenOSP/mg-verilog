module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,W,W_8,W_32_reload,W_1,W_9,W_33_reload,W_2,W_10,W_34_reload,W_3,W_11,W_35_reload,W_4,W_12,W_36_reload,W_5,W_13,W_37_reload,W_6,W_14,W_38_reload,W_7,W_15,W_39_reload,E_25_out,E_25_out_ap_vld,B_25_out,B_25_out_ap_vld,D_28_out,D_28_out_ap_vld,A_28_out,A_28_out_ap_vld,C_31_out,C_31_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 14'd1;
parameter    ap_ST_fsm_pp0_stage1 = 14'd2;
parameter    ap_ST_fsm_pp0_stage2 = 14'd4;
parameter    ap_ST_fsm_pp0_stage3 = 14'd8;
parameter    ap_ST_fsm_pp0_stage4 = 14'd16;
parameter    ap_ST_fsm_pp0_stage5 = 14'd32;
parameter    ap_ST_fsm_pp0_stage6 = 14'd64;
parameter    ap_ST_fsm_pp0_stage7 = 14'd128;
parameter    ap_ST_fsm_pp0_stage8 = 14'd256;
parameter    ap_ST_fsm_pp0_stage9 = 14'd512;
parameter    ap_ST_fsm_pp0_stage10 = 14'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 14'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 14'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 14'd8192;
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
input  [31:0] W;
input  [31:0] W_8;
input  [31:0] W_32_reload;
input  [31:0] W_1;
input  [31:0] W_9;
input  [31:0] W_33_reload;
input  [31:0] W_2;
input  [31:0] W_10;
input  [31:0] W_34_reload;
input  [31:0] W_3;
input  [31:0] W_11;
input  [31:0] W_35_reload;
input  [31:0] W_4;
input  [31:0] W_12;
input  [31:0] W_36_reload;
input  [31:0] W_5;
input  [31:0] W_13;
input  [31:0] W_37_reload;
input  [31:0] W_6;
input  [31:0] W_14;
input  [31:0] W_38_reload;
input  [31:0] W_7;
input  [31:0] W_15;
input  [31:0] W_39_reload;
output  [31:0] E_25_out;
output   E_25_out_ap_vld;
output  [31:0] B_25_out;
output   B_25_out_ap_vld;
output  [31:0] D_28_out;
output   D_28_out_ap_vld;
output  [31:0] A_28_out;
output   A_28_out_ap_vld;
output  [31:0] C_31_out;
output   C_31_out_ap_vld;
reg ap_idle;
reg E_25_out_ap_vld;
reg B_25_out_ap_vld;
reg D_28_out_ap_vld;
reg A_28_out_ap_vld;
reg C_31_out_ap_vld;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln116_reg_1366;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_subdone;
reg   [4:0] i_reg_1341;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] tmp_s_fu_394_p9;
reg   [31:0] tmp_s_reg_1346;
wire   [31:0] tmp_8_fu_414_p9;
reg   [31:0] tmp_8_reg_1351;
wire   [31:0] tmp_9_fu_434_p9;
reg   [31:0] tmp_9_reg_1356;
wire   [31:0] tmp_10_fu_454_p9;
reg   [31:0] tmp_10_reg_1361;
wire   [0:0] icmp_ln116_fu_492_p2;
wire   [31:0] tmp_12_fu_498_p9;
reg   [31:0] tmp_12_reg_1370;
wire   [31:0] tmp_13_fu_518_p9;
reg   [31:0] tmp_13_reg_1375;
wire   [31:0] tmp_14_fu_538_p9;
reg   [31:0] tmp_14_reg_1380;
wire   [31:0] tmp_15_fu_558_p9;
reg   [31:0] tmp_15_reg_1385;
reg   [31:0] D_22_reg_1390;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_17_reg_1395;
reg   [31:0] A_20_reg_1401;
wire   [31:0] temp_fu_656_p2;
reg   [31:0] temp_reg_1407;
wire   [31:0] C_18_fu_676_p3;
reg   [31:0] C_18_reg_1413;
wire   [26:0] trunc_ln118_2_fu_684_p1;
reg   [26:0] trunc_ln118_2_reg_1420;
reg   [4:0] lshr_ln118_2_reg_1425;
wire   [31:0] E_28_fu_712_p3;
reg   [31:0] E_28_reg_1430;
wire   [31:0] D_23_fu_734_p3;
reg   [31:0] D_23_reg_1438;
wire   [31:0] add_ln118_6_fu_754_p2;
reg   [31:0] add_ln118_6_reg_1446;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] temp_8_fu_784_p2;
reg   [31:0] temp_8_reg_1451;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [26:0] trunc_ln118_4_fu_789_p1;
reg   [26:0] trunc_ln118_4_reg_1457;
reg   [4:0] lshr_ln118_4_reg_1462;
wire   [1:0] trunc_ln118_7_fu_803_p1;
reg   [1:0] trunc_ln118_7_reg_1467;
reg   [29:0] lshr_ln118_7_reg_1472;
wire   [31:0] add_ln118_10_fu_829_p2;
reg   [31:0] add_ln118_10_reg_1477;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] or_ln118_5_fu_848_p2;
reg   [31:0] or_ln118_5_reg_1482;
wire   [31:0] B_26_fu_879_p2;
reg   [31:0] B_26_reg_1487;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [26:0] trunc_ln118_6_fu_884_p1;
reg   [26:0] trunc_ln118_6_reg_1496;
reg   [4:0] lshr_ln118_6_reg_1501;
wire   [31:0] add_ln118_14_fu_910_p2;
reg   [31:0] add_ln118_14_reg_1506;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] A_21_fu_919_p2;
reg   [31:0] A_21_reg_1511;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] C_19_fu_925_p3;
reg   [31:0] C_19_reg_1521;
wire   [31:0] temp_9_fu_988_p2;
reg   [31:0] temp_9_reg_1528;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [26:0] trunc_ln118_10_fu_994_p1;
reg   [26:0] trunc_ln118_10_reg_1534;
reg   [4:0] lshr_ln118_s_reg_1539;
wire   [1:0] trunc_ln118_13_fu_1008_p1;
reg   [1:0] trunc_ln118_13_reg_1544;
reg   [29:0] lshr_ln118_12_reg_1549;
wire   [31:0] add_ln118_22_fu_1034_p2;
reg   [31:0] add_ln118_22_reg_1554;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] C_20_fu_1051_p3;
reg   [31:0] C_20_reg_1559;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [26:0] trunc_ln118_12_fu_1110_p1;
reg   [26:0] trunc_ln118_12_reg_1564;
reg   [4:0] lshr_ln118_11_reg_1569;
wire   [31:0] or_ln118_11_fu_1140_p2;
reg   [31:0] or_ln118_11_reg_1574;
wire   [31:0] or_ln118_13_fu_1170_p2;
reg   [31:0] or_ln118_13_reg_1579;
wire   [31:0] add_ln118_26_fu_1225_p2;
reg   [31:0] add_ln118_26_reg_1584;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [26:0] trunc_ln118_14_fu_1239_p1;
reg   [26:0] trunc_ln118_14_reg_1589;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [4:0] lshr_ln118_13_reg_1594;
wire   [31:0] add_ln118_30_fu_1270_p2;
reg   [31:0] add_ln118_30_reg_1599;
wire    ap_block_pp0_stage13_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [31:0] E_1_fu_128;
wire   [31:0] C_21_fu_1102_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_17_fu_132;
wire   [31:0] C_22_fu_1146_p3;
reg   [31:0] E_18_fu_136;
wire   [31:0] C_9_fu_1190_p3;
reg   [31:0] B_1_fu_140;
wire   [31:0] temp_11_fu_1234_p2;
reg   [31:0] B_16_fu_144;
wire   [31:0] temp_12_fu_1289_p2;
reg   [4:0] i_1_fu_148;
wire   [4:0] add_ln116_fu_1275_p2;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage7_01001;
wire   [31:0] tmp_s_fu_394_p7;
wire   [31:0] tmp_8_fu_414_p7;
wire   [31:0] tmp_9_fu_434_p7;
wire   [31:0] tmp_10_fu_454_p7;
wire   [1:0] tmp_11_fu_474_p4;
wire   [4:0] or_ln_fu_484_p3;
wire   [31:0] tmp_12_fu_498_p7;
wire   [31:0] tmp_13_fu_518_p7;
wire   [31:0] tmp_14_fu_538_p7;
wire   [31:0] tmp_15_fu_558_p7;
wire   [31:0] xor_ln118_fu_607_p2;
wire   [31:0] and_ln118_1_fu_619_p2;
wire   [31:0] and_ln118_fu_613_p2;
wire   [26:0] trunc_ln118_fu_593_p1;
wire   [4:0] lshr_ln_fu_597_p4;
wire   [31:0] add_ln118_1_fu_639_p2;
wire   [31:0] or_ln118_1_fu_631_p3;
wire   [31:0] or_ln118_fu_625_p2;
wire   [31:0] add_ln118_fu_650_p2;
wire   [31:0] add_ln118_2_fu_644_p2;
wire   [1:0] trunc_ln118_1_fu_662_p1;
wire   [29:0] lshr_ln118_1_fu_666_p4;
wire   [1:0] trunc_ln118_3_fu_698_p1;
wire   [29:0] lshr_ln118_3_fu_702_p4;
wire   [1:0] trunc_ln118_5_fu_720_p1;
wire   [29:0] lshr_ln118_5_fu_724_p4;
wire    ap_block_pp0_stage2;
wire   [31:0] or_ln118_4_fu_742_p3;
wire   [31:0] add_ln118_5_fu_748_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] xor_ln118_1_fu_759_p2;
wire   [31:0] and_ln118_2_fu_764_p2;
wire   [31:0] and_ln118_3_fu_768_p2;
wire   [31:0] or_ln118_2_fu_773_p2;
wire   [31:0] add_ln118_4_fu_779_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln118_7_fu_817_p3;
wire   [31:0] add_ln118_9_fu_823_p2;
wire   [31:0] xor_ln118_3_fu_834_p2;
wire   [31:0] and_ln118_6_fu_839_p2;
wire   [31:0] and_ln118_7_fu_843_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] xor_ln118_2_fu_854_p2;
wire   [31:0] and_ln118_4_fu_859_p2;
wire   [31:0] and_ln118_5_fu_863_p2;
wire   [31:0] or_ln118_3_fu_868_p2;
wire   [31:0] add_ln118_8_fu_874_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln118_s_fu_898_p3;
wire   [31:0] add_ln118_13_fu_904_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] add_ln118_12_fu_915_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] xor_ln118_4_fu_944_p2;
wire   [31:0] and_ln118_8_fu_949_p2;
wire   [31:0] and_ln118_9_fu_953_p2;
wire   [26:0] trunc_ln118_8_fu_932_p1;
wire   [4:0] lshr_ln118_8_fu_935_p4;
wire   [31:0] add_ln118_17_fu_972_p2;
wire   [31:0] or_ln118_8_fu_964_p3;
wire   [31:0] or_ln118_6_fu_958_p2;
wire   [31:0] add_ln118_16_fu_982_p2;
wire   [31:0] add_ln118_18_fu_977_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] or_ln118_10_fu_1022_p3;
wire   [31:0] add_ln118_21_fu_1028_p2;
wire    ap_block_pp0_stage10;
wire   [1:0] trunc_ln118_9_fu_1039_p1;
wire   [29:0] lshr_ln118_9_fu_1042_p4;
wire   [31:0] xor_ln118_5_fu_1059_p2;
wire   [31:0] and_ln118_10_fu_1064_p2;
wire   [31:0] and_ln118_11_fu_1069_p2;
wire   [31:0] or_ln118_9_fu_1074_p2;
wire   [31:0] add_ln118_20_fu_1080_p2;
wire   [1:0] trunc_ln118_11_fu_1090_p1;
wire   [29:0] lshr_ln118_10_fu_1093_p4;
wire   [31:0] temp_10_fu_1085_p2;
wire   [31:0] xor_ln118_6_fu_1124_p2;
wire   [31:0] and_ln118_12_fu_1129_p2;
wire   [31:0] and_ln118_13_fu_1134_p2;
wire   [31:0] xor_ln118_7_fu_1152_p2;
wire   [31:0] and_ln118_14_fu_1158_p2;
wire   [31:0] and_ln118_15_fu_1164_p2;
wire   [1:0] trunc_ln118_15_fu_1176_p1;
wire   [29:0] lshr_ln118_14_fu_1180_p4;
wire    ap_block_pp0_stage11;
wire   [31:0] or_ln118_12_fu_1213_p3;
wire   [31:0] add_ln118_25_fu_1219_p2;
wire    ap_block_pp0_stage12;
wire   [31:0] add_ln118_24_fu_1230_p2;
wire    ap_block_pp0_stage13;
wire   [31:0] or_ln118_14_fu_1258_p3;
wire   [31:0] add_ln118_29_fu_1264_p2;
wire   [31:0] add_ln118_28_fu_1285_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [13:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [4:0] tmp_s_fu_394_p1;
wire   [4:0] tmp_s_fu_394_p3;
wire  signed [4:0] tmp_s_fu_394_p5;
wire   [4:0] tmp_8_fu_414_p1;
wire   [4:0] tmp_8_fu_414_p3;
wire  signed [4:0] tmp_8_fu_414_p5;
wire   [4:0] tmp_9_fu_434_p1;
wire   [4:0] tmp_9_fu_434_p3;
wire  signed [4:0] tmp_9_fu_434_p5;
wire   [4:0] tmp_10_fu_454_p1;
wire   [4:0] tmp_10_fu_454_p3;
wire  signed [4:0] tmp_10_fu_454_p5;
wire   [4:0] tmp_12_fu_498_p1;
wire   [4:0] tmp_12_fu_498_p3;
wire  signed [4:0] tmp_12_fu_498_p5;
wire   [4:0] tmp_13_fu_518_p1;
wire   [4:0] tmp_13_fu_518_p3;
wire  signed [4:0] tmp_13_fu_518_p5;
wire   [4:0] tmp_14_fu_538_p1;
wire   [4:0] tmp_14_fu_538_p3;
wire  signed [4:0] tmp_14_fu_538_p5;
wire   [4:0] tmp_15_fu_558_p1;
wire   [4:0] tmp_15_fu_558_p3;
wire  signed [4:0] tmp_15_fu_558_p5;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_1_fu_128 = 32'd0;
#0 E_17_fu_132 = 32'd0;
#0 E_18_fu_136 = 32'd0;
#0 B_1_fu_140 = 32'd0;
#0 B_16_fu_144 = 32'd0;
#0 i_1_fu_148 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U103(.din0(W),.din1(W_8),.din2(W_32_reload),.def(tmp_s_fu_394_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_s_fu_394_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U104(.din0(W_1),.din1(W_9),.din2(W_33_reload),.def(tmp_8_fu_414_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_8_fu_414_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U105(.din0(W_2),.din1(W_10),.din2(W_34_reload),.def(tmp_9_fu_434_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_9_fu_434_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U106(.din0(W_3),.din1(W_11),.din2(W_35_reload),.def(tmp_10_fu_454_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_10_fu_454_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U107(.din0(W_4),.din1(W_12),.din2(W_36_reload),.def(tmp_12_fu_498_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_12_fu_498_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U108(.din0(W_5),.din1(W_13),.din2(W_37_reload),.def(tmp_13_fu_518_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_13_fu_518_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U109(.din0(W_6),.din1(W_14),.din2(W_38_reload),.def(tmp_14_fu_538_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_14_fu_538_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U110(.din0(W_7),.din1(W_15),.din2(W_39_reload),.def(tmp_15_fu_558_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_15_fu_558_p9));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage13_subdone) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_16_fu_144 <= A;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_16_fu_144 <= temp_12_fu_1289_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_1_fu_140 <= B;
    end else if (((icmp_ln116_reg_1366 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        B_1_fu_140 <= temp_11_fu_1234_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_17_fu_132 <= D;
    end else if (((icmp_ln116_reg_1366 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        E_17_fu_132 <= C_22_fu_1146_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_18_fu_136 <= C;
    end else if (((icmp_ln116_reg_1366 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        E_18_fu_136 <= C_9_fu_1190_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_128 <= E;
    end else if (((icmp_ln116_reg_1366 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        E_1_fu_128 <= C_21_fu_1102_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_148 <= 5'd0;
    end else if (((icmp_ln116_reg_1366 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        i_1_fu_148 <= add_ln116_fu_1275_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_20_reg_1401 <= B_16_fu_144;
        C_17_reg_1395 <= E_18_fu_136;
        C_18_reg_1413 <= C_18_fu_676_p3;
        D_22_reg_1390 <= E_17_fu_132;
        lshr_ln118_2_reg_1425 <= {{temp_fu_656_p2[31:27]}};
        temp_reg_1407 <= temp_fu_656_p2;
        trunc_ln118_2_reg_1420 <= trunc_ln118_2_fu_684_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        A_21_reg_1511 <= A_21_fu_919_p2;
        C_19_reg_1521 <= C_19_fu_925_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_26_reg_1487 <= B_26_fu_879_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        C_20_reg_1559 <= C_20_fu_1051_p3;
        lshr_ln118_11_reg_1569 <= {{temp_10_fu_1085_p2[31:27]}};
        or_ln118_11_reg_1574 <= or_ln118_11_fu_1140_p2;
        or_ln118_13_reg_1579 <= or_ln118_13_fu_1170_p2;
        trunc_ln118_12_reg_1564 <= trunc_ln118_12_fu_1110_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_23_reg_1438 <= D_23_fu_734_p3;
        E_28_reg_1430 <= E_28_fu_712_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln118_10_reg_1477 <= add_ln118_10_fu_829_p2;
        or_ln118_5_reg_1482 <= or_ln118_5_fu_848_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln118_14_reg_1506 <= add_ln118_14_fu_910_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln118_22_reg_1554 <= add_ln118_22_fu_1034_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln118_26_reg_1584 <= add_ln118_26_fu_1225_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln118_30_reg_1599 <= add_ln118_30_fu_1270_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln118_6_reg_1446 <= add_ln118_6_fu_754_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_1341 <= ap_sig_allocacmp_i;
        icmp_ln116_reg_1366 <= icmp_ln116_fu_492_p2;
        tmp_10_reg_1361 <= tmp_10_fu_454_p9;
        tmp_12_reg_1370 <= tmp_12_fu_498_p9;
        tmp_13_reg_1375 <= tmp_13_fu_518_p9;
        tmp_14_reg_1380 <= tmp_14_fu_538_p9;
        tmp_15_reg_1385 <= tmp_15_fu_558_p9;
        tmp_8_reg_1351 <= tmp_8_fu_414_p9;
        tmp_9_reg_1356 <= tmp_9_fu_434_p9;
        tmp_s_reg_1346 <= tmp_s_fu_394_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        lshr_ln118_12_reg_1549 <= {{temp_9_fu_988_p2[31:2]}};
        lshr_ln118_s_reg_1539 <= {{temp_9_fu_988_p2[31:27]}};
        temp_9_reg_1528 <= temp_9_fu_988_p2;
        trunc_ln118_10_reg_1534 <= trunc_ln118_10_fu_994_p1;
        trunc_ln118_13_reg_1544 <= trunc_ln118_13_fu_1008_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        lshr_ln118_13_reg_1594 <= {{temp_11_fu_1234_p2[31:27]}};
        trunc_ln118_14_reg_1589 <= trunc_ln118_14_fu_1239_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln118_4_reg_1462 <= {{temp_8_fu_784_p2[31:27]}};
        lshr_ln118_7_reg_1472 <= {{temp_8_fu_784_p2[31:2]}};
        temp_8_reg_1451 <= temp_8_fu_784_p2;
        trunc_ln118_4_reg_1457 <= trunc_ln118_4_fu_789_p1;
        trunc_ln118_7_reg_1467 <= trunc_ln118_7_fu_803_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln118_6_reg_1501 <= {{B_26_fu_879_p2[31:27]}};
        trunc_ln118_6_reg_1496 <= trunc_ln118_6_fu_884_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1366 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        A_28_out_ap_vld = 1'b1;
    end else begin
        A_28_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1366 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        B_25_out_ap_vld = 1'b1;
    end else begin
        B_25_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1366 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        C_31_out_ap_vld = 1'b1;
    end else begin
        C_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1366 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        D_28_out_ap_vld = 1'b1;
    end else begin
        D_28_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1366 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_25_out_ap_vld = 1'b1;
    end else begin
        E_25_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_1366 == 1'd0) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage13_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 5'd0;
    end else begin
        ap_sig_allocacmp_i = i_1_fu_148;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_idle_pp0_1to1 == 1'b1) & (ap_start_int == 1'b0)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_21_fu_919_p2 = (add_ln118_14_reg_1506 + add_ln118_12_fu_915_p2);
assign A_28_out = (add_ln118_14_reg_1506 + add_ln118_12_fu_915_p2);
assign B_25_out = B_26_reg_1487;
assign B_26_fu_879_p2 = (add_ln118_10_reg_1477 + add_ln118_8_fu_874_p2);
assign C_18_fu_676_p3 = {{trunc_ln118_1_fu_662_p1}, {lshr_ln118_1_fu_666_p4}};
assign C_19_fu_925_p3 = {{trunc_ln118_7_reg_1467}, {lshr_ln118_7_reg_1472}};
assign C_20_fu_1051_p3 = {{trunc_ln118_9_fu_1039_p1}, {lshr_ln118_9_fu_1042_p4}};
assign C_21_fu_1102_p3 = {{trunc_ln118_11_fu_1090_p1}, {lshr_ln118_10_fu_1093_p4}};
assign C_22_fu_1146_p3 = {{trunc_ln118_13_reg_1544}, {lshr_ln118_12_reg_1549}};
assign C_31_out = {{trunc_ln118_7_reg_1467}, {lshr_ln118_7_reg_1472}};
assign C_9_fu_1190_p3 = {{trunc_ln118_15_fu_1176_p1}, {lshr_ln118_14_fu_1180_p4}};
assign D_23_fu_734_p3 = {{trunc_ln118_5_fu_720_p1}, {lshr_ln118_5_fu_724_p4}};
assign D_28_out = D_23_reg_1438;
assign E_25_out = E_28_reg_1430;
assign E_28_fu_712_p3 = {{trunc_ln118_3_fu_698_p1}, {lshr_ln118_3_fu_702_p4}};
assign add_ln116_fu_1275_p2 = (i_reg_1341 + 5'd8);
assign add_ln118_10_fu_829_p2 = (add_ln118_9_fu_823_p2 + C_17_reg_1395);
assign add_ln118_12_fu_915_p2 = (or_ln118_5_reg_1482 + tmp_10_reg_1361);
assign add_ln118_13_fu_904_p2 = (or_ln118_s_fu_898_p3 + 32'd1518500249);
assign add_ln118_14_fu_910_p2 = (add_ln118_13_fu_904_p2 + C_18_reg_1413);
assign add_ln118_16_fu_982_p2 = (or_ln118_8_fu_964_p3 + or_ln118_6_fu_958_p2);
assign add_ln118_17_fu_972_p2 = (tmp_12_reg_1370 + 32'd1518500249);
assign add_ln118_18_fu_977_p2 = (add_ln118_17_fu_972_p2 + E_28_reg_1430);
assign add_ln118_1_fu_639_p2 = (tmp_s_reg_1346 + 32'd1518500249);
assign add_ln118_20_fu_1080_p2 = (tmp_13_reg_1375 + or_ln118_9_fu_1074_p2);
assign add_ln118_21_fu_1028_p2 = (or_ln118_10_fu_1022_p3 + 32'd1518500249);
assign add_ln118_22_fu_1034_p2 = (add_ln118_21_fu_1028_p2 + D_23_reg_1438);
assign add_ln118_24_fu_1230_p2 = (or_ln118_11_reg_1574 + tmp_14_reg_1380);
assign add_ln118_25_fu_1219_p2 = (or_ln118_12_fu_1213_p3 + 32'd1518500249);
assign add_ln118_26_fu_1225_p2 = (add_ln118_25_fu_1219_p2 + C_19_reg_1521);
assign add_ln118_28_fu_1285_p2 = (C_20_reg_1559 + tmp_15_reg_1385);
assign add_ln118_29_fu_1264_p2 = (or_ln118_14_fu_1258_p3 + 32'd1518500249);
assign add_ln118_2_fu_644_p2 = (add_ln118_1_fu_639_p2 + or_ln118_1_fu_631_p3);
assign add_ln118_30_fu_1270_p2 = (add_ln118_29_fu_1264_p2 + or_ln118_13_reg_1579);
assign add_ln118_4_fu_779_p2 = (tmp_8_reg_1351 + or_ln118_2_fu_773_p2);
assign add_ln118_5_fu_748_p2 = (or_ln118_4_fu_742_p3 + 32'd1518500249);
assign add_ln118_6_fu_754_p2 = (add_ln118_5_fu_748_p2 + D_22_reg_1390);
assign add_ln118_8_fu_874_p2 = (or_ln118_3_fu_868_p2 + tmp_9_reg_1356);
assign add_ln118_9_fu_823_p2 = (or_ln118_7_fu_817_p3 + 32'd1518500249);
assign add_ln118_fu_650_p2 = (or_ln118_fu_625_p2 + E_1_fu_128);
assign and_ln118_10_fu_1064_p2 = (C_20_fu_1051_p3 & A_21_reg_1511);
assign and_ln118_11_fu_1069_p2 = (xor_ln118_5_fu_1059_p2 & C_19_reg_1521);
assign and_ln118_12_fu_1129_p2 = (temp_9_reg_1528 & C_21_fu_1102_p3);
assign and_ln118_13_fu_1134_p2 = (xor_ln118_6_fu_1124_p2 & C_20_fu_1051_p3);
assign and_ln118_14_fu_1158_p2 = (temp_10_fu_1085_p2 & C_22_fu_1146_p3);
assign and_ln118_15_fu_1164_p2 = (xor_ln118_7_fu_1152_p2 & C_21_fu_1102_p3);
assign and_ln118_1_fu_619_p2 = (xor_ln118_fu_607_p2 & E_17_fu_132);
assign and_ln118_2_fu_764_p2 = (C_18_reg_1413 & A_20_reg_1401);
assign and_ln118_3_fu_768_p2 = (xor_ln118_1_fu_759_p2 & C_17_reg_1395);
assign and_ln118_4_fu_859_p2 = (temp_reg_1407 & E_28_reg_1430);
assign and_ln118_5_fu_863_p2 = (xor_ln118_2_fu_854_p2 & C_18_reg_1413);
assign and_ln118_6_fu_839_p2 = (temp_8_reg_1451 & D_23_reg_1438);
assign and_ln118_7_fu_843_p2 = (xor_ln118_3_fu_834_p2 & E_28_reg_1430);
assign and_ln118_8_fu_949_p2 = (C_19_reg_1521 & B_26_reg_1487);
assign and_ln118_9_fu_953_p2 = (xor_ln118_4_fu_944_p2 & D_23_reg_1438);
assign and_ln118_fu_613_p2 = (E_18_fu_136 & B_1_fu_140);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
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
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign icmp_ln116_fu_492_p2 = ((or_ln_fu_484_p3 < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_10_fu_1093_p4 = {{A_21_reg_1511[31:2]}};
assign lshr_ln118_14_fu_1180_p4 = {{temp_10_fu_1085_p2[31:2]}};
assign lshr_ln118_1_fu_666_p4 = {{B_1_fu_140[31:2]}};
assign lshr_ln118_3_fu_702_p4 = {{B_16_fu_144[31:2]}};
assign lshr_ln118_5_fu_724_p4 = {{temp_fu_656_p2[31:2]}};
assign lshr_ln118_8_fu_935_p4 = {{A_21_reg_1511[31:27]}};
assign lshr_ln118_9_fu_1042_p4 = {{B_26_reg_1487[31:2]}};
assign lshr_ln_fu_597_p4 = {{B_16_fu_144[31:27]}};
assign or_ln118_10_fu_1022_p3 = {{trunc_ln118_10_reg_1534}, {lshr_ln118_s_reg_1539}};
assign or_ln118_11_fu_1140_p2 = (and_ln118_13_fu_1134_p2 | and_ln118_12_fu_1129_p2);
assign or_ln118_12_fu_1213_p3 = {{trunc_ln118_12_reg_1564}, {lshr_ln118_11_reg_1569}};
assign or_ln118_13_fu_1170_p2 = (and_ln118_15_fu_1164_p2 | and_ln118_14_fu_1158_p2);
assign or_ln118_14_fu_1258_p3 = {{trunc_ln118_14_reg_1589}, {lshr_ln118_13_reg_1594}};
assign or_ln118_1_fu_631_p3 = {{trunc_ln118_fu_593_p1}, {lshr_ln_fu_597_p4}};
assign or_ln118_2_fu_773_p2 = (and_ln118_3_fu_768_p2 | and_ln118_2_fu_764_p2);
assign or_ln118_3_fu_868_p2 = (and_ln118_5_fu_863_p2 | and_ln118_4_fu_859_p2);
assign or_ln118_4_fu_742_p3 = {{trunc_ln118_2_reg_1420}, {lshr_ln118_2_reg_1425}};
assign or_ln118_5_fu_848_p2 = (and_ln118_7_fu_843_p2 | and_ln118_6_fu_839_p2);
assign or_ln118_6_fu_958_p2 = (and_ln118_9_fu_953_p2 | and_ln118_8_fu_949_p2);
assign or_ln118_7_fu_817_p3 = {{trunc_ln118_4_reg_1457}, {lshr_ln118_4_reg_1462}};
assign or_ln118_8_fu_964_p3 = {{trunc_ln118_8_fu_932_p1}, {lshr_ln118_8_fu_935_p4}};
assign or_ln118_9_fu_1074_p2 = (and_ln118_11_fu_1069_p2 | and_ln118_10_fu_1064_p2);
assign or_ln118_fu_625_p2 = (and_ln118_fu_613_p2 | and_ln118_1_fu_619_p2);
assign or_ln118_s_fu_898_p3 = {{trunc_ln118_6_reg_1496}, {lshr_ln118_6_reg_1501}};
assign or_ln_fu_484_p3 = {{tmp_11_fu_474_p4}, {3'd4}};
assign temp_10_fu_1085_p2 = (add_ln118_22_reg_1554 + add_ln118_20_fu_1080_p2);
assign temp_11_fu_1234_p2 = (add_ln118_26_reg_1584 + add_ln118_24_fu_1230_p2);
assign temp_12_fu_1289_p2 = (add_ln118_30_reg_1599 + add_ln118_28_fu_1285_p2);
assign temp_8_fu_784_p2 = (add_ln118_6_reg_1446 + add_ln118_4_fu_779_p2);
assign temp_9_fu_988_p2 = (add_ln118_16_fu_982_p2 + add_ln118_18_fu_977_p2);
assign temp_fu_656_p2 = (add_ln118_fu_650_p2 + add_ln118_2_fu_644_p2);
assign tmp_10_fu_454_p7 = 'bx;
assign tmp_11_fu_474_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign tmp_12_fu_498_p7 = 'bx;
assign tmp_13_fu_518_p7 = 'bx;
assign tmp_14_fu_538_p7 = 'bx;
assign tmp_15_fu_558_p7 = 'bx;
assign tmp_8_fu_414_p7 = 'bx;
assign tmp_9_fu_434_p7 = 'bx;
assign tmp_s_fu_394_p7 = 'bx;
assign trunc_ln118_10_fu_994_p1 = temp_9_fu_988_p2[26:0];
assign trunc_ln118_11_fu_1090_p1 = A_21_reg_1511[1:0];
assign trunc_ln118_12_fu_1110_p1 = temp_10_fu_1085_p2[26:0];
assign trunc_ln118_13_fu_1008_p1 = temp_9_fu_988_p2[1:0];
assign trunc_ln118_14_fu_1239_p1 = temp_11_fu_1234_p2[26:0];
assign trunc_ln118_15_fu_1176_p1 = temp_10_fu_1085_p2[1:0];
assign trunc_ln118_1_fu_662_p1 = B_1_fu_140[1:0];
assign trunc_ln118_2_fu_684_p1 = temp_fu_656_p2[26:0];
assign trunc_ln118_3_fu_698_p1 = B_16_fu_144[1:0];
assign trunc_ln118_4_fu_789_p1 = temp_8_fu_784_p2[26:0];
assign trunc_ln118_5_fu_720_p1 = temp_fu_656_p2[1:0];
assign trunc_ln118_6_fu_884_p1 = B_26_fu_879_p2[26:0];
assign trunc_ln118_7_fu_803_p1 = temp_8_fu_784_p2[1:0];
assign trunc_ln118_8_fu_932_p1 = A_21_reg_1511[26:0];
assign trunc_ln118_9_fu_1039_p1 = B_26_reg_1487[1:0];
assign trunc_ln118_fu_593_p1 = B_16_fu_144[26:0];
assign xor_ln118_1_fu_759_p2 = (32'd4294967295 ^ A_20_reg_1401);
assign xor_ln118_2_fu_854_p2 = (temp_reg_1407 ^ 32'd4294967295);
assign xor_ln118_3_fu_834_p2 = (temp_8_reg_1451 ^ 32'd4294967295);
assign xor_ln118_4_fu_944_p2 = (32'd4294967295 ^ B_26_reg_1487);
assign xor_ln118_5_fu_1059_p2 = (32'd4294967295 ^ A_21_reg_1511);
assign xor_ln118_6_fu_1124_p2 = (temp_9_reg_1528 ^ 32'd4294967295);
assign xor_ln118_7_fu_1152_p2 = (temp_10_fu_1085_p2 ^ 32'd4294967295);
assign xor_ln118_fu_607_p2 = (32'd4294967295 ^ B_1_fu_140);
endmodule 