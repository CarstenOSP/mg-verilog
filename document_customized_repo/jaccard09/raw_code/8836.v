module sha_stream_sha_transform_Pipeline_trans_lp4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_10_reload,B_5_reload,C_10_reload,D_10_reload,E_5_reload,W_20_load_2,W_24_load_2,W_28_load_2,W_32_load_2,W_36_load_2,W_21_load_2,W_25_load_2,W_29_load_2,W_33_load_2,W_37_load_2,W_22_load_2,W_26_load_2,W_30_load_2,W_34_load_2,W_38_load_2,W_23_load_2,W_27_load_2,W_31_load_2,W_35_load_2,W_39_load_2,W_40_load_2,W_41_load_2,W_42_load_2,W_43_load_2,E_14_out,E_14_out_ap_vld,B_14_out,B_14_out_ap_vld,D_20_out,D_20_out_ap_vld,A_20_out,A_20_out_ap_vld,C_17_out,C_17_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 10'd1;
parameter    ap_ST_fsm_pp0_stage1 = 10'd2;
parameter    ap_ST_fsm_pp0_stage2 = 10'd4;
parameter    ap_ST_fsm_pp0_stage3 = 10'd8;
parameter    ap_ST_fsm_pp0_stage4 = 10'd16;
parameter    ap_ST_fsm_pp0_stage5 = 10'd32;
parameter    ap_ST_fsm_pp0_stage6 = 10'd64;
parameter    ap_ST_fsm_pp0_stage7 = 10'd128;
parameter    ap_ST_fsm_pp0_stage8 = 10'd256;
parameter    ap_ST_fsm_pp0_stage9 = 10'd512;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] A_10_reload;
input  [31:0] B_5_reload;
input  [31:0] C_10_reload;
input  [31:0] D_10_reload;
input  [31:0] E_5_reload;
input  [31:0] W_20_load_2;
input  [31:0] W_24_load_2;
input  [31:0] W_28_load_2;
input  [31:0] W_32_load_2;
input  [31:0] W_36_load_2;
input  [31:0] W_21_load_2;
input  [31:0] W_25_load_2;
input  [31:0] W_29_load_2;
input  [31:0] W_33_load_2;
input  [31:0] W_37_load_2;
input  [31:0] W_22_load_2;
input  [31:0] W_26_load_2;
input  [31:0] W_30_load_2;
input  [31:0] W_34_load_2;
input  [31:0] W_38_load_2;
input  [31:0] W_23_load_2;
input  [31:0] W_27_load_2;
input  [31:0] W_31_load_2;
input  [31:0] W_35_load_2;
input  [31:0] W_39_load_2;
input  [31:0] W_40_load_2;
input  [31:0] W_41_load_2;
input  [31:0] W_42_load_2;
input  [31:0] W_43_load_2;
output  [31:0] E_14_out;
output   E_14_out_ap_vld;
output  [31:0] B_14_out;
output   B_14_out_ap_vld;
output  [31:0] D_20_out;
output   D_20_out_ap_vld;
output  [31:0] A_20_out;
output   A_20_out_ap_vld;
output  [31:0] C_17_out;
output   C_17_out_ap_vld;
reg ap_idle;
reg E_14_out_ap_vld;
reg B_14_out_ap_vld;
reg D_20_out_ap_vld;
reg A_20_out_ap_vld;
reg C_17_out_ap_vld;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln120_reg_1328;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [5:0] i_reg_1303;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] add_ln122_1_fu_420_p2;
reg   [31:0] add_ln122_1_reg_1308;
wire   [31:0] tmp_1_fu_426_p13;
reg   [31:0] tmp_1_reg_1313;
wire   [31:0] tmp_2_fu_454_p13;
reg   [31:0] tmp_2_reg_1318;
wire   [31:0] tmp_3_fu_482_p13;
reg   [31:0] tmp_3_reg_1323;
wire   [0:0] icmp_ln120_fu_516_p2;
wire   [31:0] tmp_4_fu_522_p13;
reg   [31:0] tmp_4_reg_1332;
wire   [31:0] tmp_5_fu_550_p13;
reg   [31:0] tmp_5_reg_1337;
wire   [31:0] tmp_6_fu_578_p13;
reg   [31:0] tmp_6_reg_1342;
wire   [31:0] tmp_7_fu_606_p13;
reg   [31:0] tmp_7_reg_1347;
reg   [31:0] A_reg_1352;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_reg_1357;
wire   [31:0] temp_fu_694_p2;
reg   [31:0] temp_reg_1363;
wire   [1:0] trunc_ln122_1_fu_700_p1;
reg   [1:0] trunc_ln122_1_reg_1368;
reg   [29:0] lshr_ln122_1_reg_1373;
wire   [26:0] trunc_ln122_2_fu_714_p1;
reg   [26:0] trunc_ln122_2_reg_1378;
reg   [4:0] lshr_ln122_2_reg_1383;
wire   [31:0] add_ln122_4_fu_734_p2;
reg   [31:0] add_ln122_4_reg_1388;
wire   [31:0] C_6_fu_753_p3;
reg   [31:0] C_6_reg_1393;
wire   [1:0] trunc_ln122_5_fu_761_p1;
reg   [1:0] trunc_ln122_5_reg_1400;
reg   [29:0] lshr_ln122_5_reg_1405;
wire   [31:0] add_ln122_18_fu_780_p2;
reg   [31:0] add_ln122_18_reg_1410;
wire   [31:0] C_5_fu_786_p3;
reg   [31:0] C_5_reg_1415;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [26:0] trunc_ln122_4_fu_819_p1;
reg   [26:0] trunc_ln122_4_reg_1420;
reg   [4:0] lshr_ln122_4_reg_1425;
wire   [31:0] add_ln122_8_fu_843_p2;
reg   [31:0] add_ln122_8_reg_1430;
wire   [31:0] C_7_fu_848_p3;
reg   [31:0] C_7_reg_1435;
wire   [31:0] xor_ln122_7_fu_859_p2;
reg   [31:0] xor_ln122_7_reg_1442;
wire   [1:0] trunc_ln122_7_fu_865_p1;
reg   [1:0] trunc_ln122_7_reg_1447;
reg   [29:0] lshr_ln122_7_reg_1452;
wire   [31:0] temp_2_fu_895_p2;
reg   [31:0] temp_2_reg_1457;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [26:0] trunc_ln122_6_fu_901_p1;
reg   [26:0] trunc_ln122_6_reg_1465;
reg   [4:0] lshr_ln122_6_reg_1470;
wire   [31:0] add_ln122_14_fu_926_p2;
reg   [31:0] add_ln122_14_reg_1475;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] temp_3_fu_936_p2;
reg   [31:0] temp_3_reg_1480;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_8_fu_942_p3;
reg   [31:0] C_8_reg_1489;
wire   [31:0] temp_4_fu_983_p2;
reg   [31:0] temp_4_reg_1496;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln122_10_fu_989_p1;
reg   [26:0] trunc_ln122_10_reg_1501;
reg   [4:0] lshr_ln122_s_reg_1506;
wire   [1:0] trunc_ln122_13_fu_1003_p1;
reg   [1:0] trunc_ln122_13_reg_1511;
reg   [29:0] lshr_ln122_12_reg_1516;
wire   [31:0] add_ln122_22_fu_1029_p2;
reg   [31:0] add_ln122_22_reg_1521;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] C_9_fu_1046_p3;
reg   [31:0] C_9_reg_1526;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [26:0] trunc_ln122_12_fu_1094_p1;
reg   [26:0] trunc_ln122_12_reg_1531;
reg   [4:0] lshr_ln122_11_reg_1536;
wire   [31:0] add_ln122_26_fu_1124_p2;
reg   [31:0] add_ln122_26_reg_1541;
wire   [31:0] xor_ln122_15_fu_1141_p2;
reg   [31:0] xor_ln122_15_reg_1546;
wire   [26:0] trunc_ln122_14_fu_1201_p1;
reg   [26:0] trunc_ln122_14_reg_1551;
wire    ap_block_pp0_stage9_11001;
reg   [4:0] lshr_ln122_13_reg_1556;
wire   [31:0] add_ln122_30_fu_1219_p2;
reg   [31:0] add_ln122_30_reg_1561;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [31:0] E_fu_126;
wire   [31:0] C_10_fu_1086_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] B_fu_130;
wire   [31:0] temp_6_fu_1195_p2;
reg   [31:0] E_5_fu_134;
wire   [31:0] C_11_fu_1129_p3;
reg   [31:0] B_5_fu_138;
wire   [31:0] temp_7_fu_1250_p2;
reg   [31:0] E_6_fu_142;
wire   [31:0] C_4_fu_1161_p3;
reg   [5:0] i_2_fu_146;
wire   [5:0] add_ln120_1_fu_1224_p2;
reg   [5:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage5_01001;
wire   [31:0] tmp_s_fu_392_p11;
wire   [31:0] tmp_s_fu_392_p13;
wire   [31:0] tmp_1_fu_426_p11;
wire   [31:0] tmp_2_fu_454_p11;
wire   [31:0] tmp_3_fu_482_p11;
wire   [5:0] add_ln120_fu_510_p2;
wire   [31:0] tmp_4_fu_522_p11;
wire   [31:0] tmp_5_fu_550_p11;
wire   [31:0] tmp_6_fu_578_p11;
wire   [31:0] tmp_7_fu_606_p11;
wire   [31:0] xor_ln122_fu_663_p2;
wire   [26:0] trunc_ln122_fu_649_p1;
wire   [4:0] lshr_ln3_fu_653_p4;
wire   [31:0] or_ln1_fu_675_p3;
wire   [31:0] xor_ln122_1_fu_669_p2;
wire   [31:0] add_ln122_fu_688_p2;
wire   [31:0] add_ln122_2_fu_683_p2;
wire   [31:0] add_ln122_6_fu_728_p2;
wire   [1:0] trunc_ln122_3_fu_739_p1;
wire   [29:0] lshr_ln122_3_fu_743_p4;
wire   [31:0] add_ln122_17_fu_775_p2;
wire    ap_block_pp0_stage2;
wire   [31:0] xor_ln122_2_fu_792_p2;
wire   [31:0] xor_ln122_3_fu_797_p2;
wire   [31:0] add_ln122_5_fu_808_p2;
wire   [31:0] or_ln122_2_fu_802_p3;
wire   [31:0] temp_1_fu_813_p2;
wire   [31:0] xor_ln122_4_fu_833_p2;
wire   [31:0] xor_ln122_5_fu_837_p2;
wire   [31:0] xor_ln122_6_fu_854_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln122_4_fu_879_p3;
wire   [31:0] add_ln122_9_fu_889_p2;
wire   [31:0] add_ln122_10_fu_885_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln122_6_fu_915_p3;
wire   [31:0] add_ln122_13_fu_921_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] add_ln122_12_fu_932_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] xor_ln122_8_fu_961_p2;
wire   [26:0] trunc_ln122_8_fu_949_p1;
wire   [4:0] lshr_ln122_8_fu_952_p4;
wire   [31:0] xor_ln122_9_fu_965_p2;
wire   [31:0] add_ln122_16_fu_978_p2;
wire   [31:0] or_ln122_8_fu_970_p3;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln122_s_fu_1017_p3;
wire   [31:0] add_ln122_21_fu_1023_p2;
wire    ap_block_pp0_stage8;
wire   [1:0] trunc_ln122_9_fu_1034_p1;
wire   [29:0] lshr_ln122_9_fu_1037_p4;
wire   [31:0] xor_ln122_10_fu_1054_p2;
wire   [31:0] xor_ln122_11_fu_1058_p2;
wire   [31:0] add_ln122_20_fu_1064_p2;
wire   [1:0] trunc_ln122_11_fu_1074_p1;
wire   [29:0] lshr_ln122_10_fu_1077_p4;
wire   [31:0] temp_5_fu_1069_p2;
wire   [31:0] xor_ln122_12_fu_1108_p2;
wire   [31:0] xor_ln122_13_fu_1113_p2;
wire   [31:0] add_ln122_24_fu_1119_p2;
wire   [31:0] xor_ln122_14_fu_1135_p2;
wire   [1:0] trunc_ln122_15_fu_1147_p1;
wire   [29:0] lshr_ln122_14_fu_1151_p4;
wire    ap_block_pp0_stage9;
wire   [31:0] add_ln122_25_fu_1190_p2;
wire   [31:0] or_ln122_1_fu_1184_p3;
wire   [31:0] add_ln122_28_fu_1215_p2;
wire   [31:0] add_ln122_29_fu_1245_p2;
wire   [31:0] or_ln122_3_fu_1239_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [9:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [5:0] tmp_s_fu_392_p1;
wire   [5:0] tmp_s_fu_392_p3;
wire   [5:0] tmp_s_fu_392_p5;
wire  signed [5:0] tmp_s_fu_392_p7;
wire  signed [5:0] tmp_s_fu_392_p9;
wire   [5:0] tmp_1_fu_426_p1;
wire   [5:0] tmp_1_fu_426_p3;
wire   [5:0] tmp_1_fu_426_p5;
wire  signed [5:0] tmp_1_fu_426_p7;
wire  signed [5:0] tmp_1_fu_426_p9;
wire   [5:0] tmp_2_fu_454_p1;
wire   [5:0] tmp_2_fu_454_p3;
wire   [5:0] tmp_2_fu_454_p5;
wire  signed [5:0] tmp_2_fu_454_p7;
wire  signed [5:0] tmp_2_fu_454_p9;
wire   [5:0] tmp_3_fu_482_p1;
wire   [5:0] tmp_3_fu_482_p3;
wire   [5:0] tmp_3_fu_482_p5;
wire  signed [5:0] tmp_3_fu_482_p7;
wire  signed [5:0] tmp_3_fu_482_p9;
wire   [5:0] tmp_4_fu_522_p1;
wire   [5:0] tmp_4_fu_522_p3;
wire   [5:0] tmp_4_fu_522_p5;
wire  signed [5:0] tmp_4_fu_522_p7;
wire  signed [5:0] tmp_4_fu_522_p9;
wire   [5:0] tmp_5_fu_550_p1;
wire   [5:0] tmp_5_fu_550_p3;
wire   [5:0] tmp_5_fu_550_p5;
wire  signed [5:0] tmp_5_fu_550_p7;
wire  signed [5:0] tmp_5_fu_550_p9;
wire   [5:0] tmp_6_fu_578_p1;
wire   [5:0] tmp_6_fu_578_p3;
wire   [5:0] tmp_6_fu_578_p5;
wire  signed [5:0] tmp_6_fu_578_p7;
wire  signed [5:0] tmp_6_fu_578_p9;
wire   [5:0] tmp_7_fu_606_p1;
wire   [5:0] tmp_7_fu_606_p3;
wire   [5:0] tmp_7_fu_606_p5;
wire  signed [5:0] tmp_7_fu_606_p7;
wire  signed [5:0] tmp_7_fu_606_p9;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_126 = 32'd0;
#0 B_fu_130 = 32'd0;
#0 E_5_fu_134 = 32'd0;
#0 B_5_fu_138 = 32'd0;
#0 E_6_fu_142 = 32'd0;
#0 i_2_fu_146 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h18 ),.din1_WIDTH( 32 ),.CASE2( 6'h1C ),.din2_WIDTH( 32 ),.CASE3( 6'h20 ),.din3_WIDTH( 32 ),.CASE4( 6'h24 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_U131(.din0(W_20_load_2),.din1(W_24_load_2),.din2(W_28_load_2),.din3(W_32_load_2),.din4(W_36_load_2),.def(tmp_s_fu_392_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_s_fu_392_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h18 ),.din1_WIDTH( 32 ),.CASE2( 6'h1C ),.din2_WIDTH( 32 ),.CASE3( 6'h20 ),.din3_WIDTH( 32 ),.CASE4( 6'h24 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_U132(.din0(W_21_load_2),.din1(W_25_load_2),.din2(W_29_load_2),.din3(W_33_load_2),.din4(W_37_load_2),.def(tmp_1_fu_426_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_1_fu_426_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h18 ),.din1_WIDTH( 32 ),.CASE2( 6'h1C ),.din2_WIDTH( 32 ),.CASE3( 6'h20 ),.din3_WIDTH( 32 ),.CASE4( 6'h24 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_U133(.din0(W_22_load_2),.din1(W_26_load_2),.din2(W_30_load_2),.din3(W_34_load_2),.din4(W_38_load_2),.def(tmp_2_fu_454_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_2_fu_454_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h18 ),.din1_WIDTH( 32 ),.CASE2( 6'h1C ),.din2_WIDTH( 32 ),.CASE3( 6'h20 ),.din3_WIDTH( 32 ),.CASE4( 6'h24 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_U134(.din0(W_23_load_2),.din1(W_27_load_2),.din2(W_31_load_2),.din3(W_35_load_2),.din4(W_39_load_2),.def(tmp_3_fu_482_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_3_fu_482_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h18 ),.din1_WIDTH( 32 ),.CASE2( 6'h1C ),.din2_WIDTH( 32 ),.CASE3( 6'h20 ),.din3_WIDTH( 32 ),.CASE4( 6'h24 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_U135(.din0(W_24_load_2),.din1(W_28_load_2),.din2(W_32_load_2),.din3(W_36_load_2),.din4(W_40_load_2),.def(tmp_4_fu_522_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_4_fu_522_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h18 ),.din1_WIDTH( 32 ),.CASE2( 6'h1C ),.din2_WIDTH( 32 ),.CASE3( 6'h20 ),.din3_WIDTH( 32 ),.CASE4( 6'h24 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_U136(.din0(W_25_load_2),.din1(W_29_load_2),.din2(W_33_load_2),.din3(W_37_load_2),.din4(W_41_load_2),.def(tmp_5_fu_550_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_5_fu_550_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h18 ),.din1_WIDTH( 32 ),.CASE2( 6'h1C ),.din2_WIDTH( 32 ),.CASE3( 6'h20 ),.din3_WIDTH( 32 ),.CASE4( 6'h24 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_U137(.din0(W_26_load_2),.din1(W_30_load_2),.din2(W_34_load_2),.din3(W_38_load_2),.din4(W_42_load_2),.def(tmp_6_fu_578_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_6_fu_578_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h14 ),.din0_WIDTH( 32 ),.CASE1( 6'h18 ),.din1_WIDTH( 32 ),.CASE2( 6'h1C ),.din2_WIDTH( 32 ),.CASE3( 6'h20 ),.din3_WIDTH( 32 ),.CASE4( 6'h24 ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_11_6_32_1_1_U138(.din0(W_27_load_2),.din1(W_31_load_2),.din2(W_35_load_2),.din3(W_39_load_2),.din4(W_43_load_2),.def(tmp_7_fu_606_p11),.sel(ap_sig_allocacmp_i),.dout(tmp_7_fu_606_p13));
sha_stream_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
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
        end else if (((1'b0 == ap_block_pp0_stage9_subdone) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_5_fu_138 <= A_10_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_5_fu_138 <= temp_7_fu_1250_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_130 <= B_5_reload;
    end else if (((icmp_ln120_reg_1328 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        B_fu_130 <= temp_6_fu_1195_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_5_fu_134 <= D_10_reload;
    end else if (((icmp_ln120_reg_1328 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_5_fu_134 <= C_11_fu_1129_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_6_fu_142 <= C_10_reload;
    end else if (((icmp_ln120_reg_1328 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_6_fu_142 <= C_4_fu_1161_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_126 <= E_5_reload;
    end else if (((icmp_ln120_reg_1328 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_fu_126 <= C_10_fu_1086_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_fu_146 <= 6'd20;
    end else if (((icmp_ln120_reg_1328 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        i_2_fu_146 <= add_ln120_1_fu_1224_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_reg_1352 <= B_5_fu_138;
        C_reg_1357 <= E_6_fu_142;
        add_ln122_18_reg_1410 <= add_ln122_18_fu_780_p2;
        add_ln122_4_reg_1388 <= add_ln122_4_fu_734_p2;
        lshr_ln122_1_reg_1373 <= {{B_fu_130[31:2]}};
        lshr_ln122_2_reg_1383 <= {{temp_fu_694_p2[31:27]}};
        lshr_ln122_5_reg_1405 <= {{temp_fu_694_p2[31:2]}};
        temp_reg_1363 <= temp_fu_694_p2;
        trunc_ln122_1_reg_1368 <= trunc_ln122_1_fu_700_p1;
        trunc_ln122_2_reg_1378 <= trunc_ln122_2_fu_714_p1;
        trunc_ln122_5_reg_1400 <= trunc_ln122_5_fu_761_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_5_reg_1415 <= C_5_fu_786_p3;
        add_ln122_8_reg_1430 <= add_ln122_8_fu_843_p2;
        lshr_ln122_4_reg_1425 <= {{temp_1_fu_813_p2[31:27]}};
        lshr_ln122_7_reg_1452 <= {{temp_1_fu_813_p2[31:2]}};
        trunc_ln122_4_reg_1420 <= trunc_ln122_4_fu_819_p1;
        trunc_ln122_7_reg_1447 <= trunc_ln122_7_fu_865_p1;
        xor_ln122_7_reg_1442 <= xor_ln122_7_fu_859_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_6_reg_1393 <= C_6_fu_753_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_7_reg_1435 <= C_7_fu_848_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_8_reg_1489 <= C_8_fu_942_p3;
        temp_3_reg_1480 <= temp_3_fu_936_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_9_reg_1526 <= C_9_fu_1046_p3;
        add_ln122_26_reg_1541 <= add_ln122_26_fu_1124_p2;
        lshr_ln122_11_reg_1536 <= {{temp_5_fu_1069_p2[31:27]}};
        trunc_ln122_12_reg_1531 <= trunc_ln122_12_fu_1094_p1;
        xor_ln122_15_reg_1546 <= xor_ln122_15_fu_1141_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln122_14_reg_1475 <= add_ln122_14_fu_926_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln122_1_reg_1308 <= add_ln122_1_fu_420_p2;
        i_reg_1303 <= ap_sig_allocacmp_i;
        icmp_ln120_reg_1328 <= icmp_ln120_fu_516_p2;
        tmp_1_reg_1313 <= tmp_1_fu_426_p13;
        tmp_2_reg_1318 <= tmp_2_fu_454_p13;
        tmp_3_reg_1323 <= tmp_3_fu_482_p13;
        tmp_4_reg_1332 <= tmp_4_fu_522_p13;
        tmp_5_reg_1337 <= tmp_5_fu_550_p13;
        tmp_6_reg_1342 <= tmp_6_fu_578_p13;
        tmp_7_reg_1347 <= tmp_7_fu_606_p13;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln122_22_reg_1521 <= add_ln122_22_fu_1029_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln122_30_reg_1561 <= add_ln122_30_fu_1219_p2;
        lshr_ln122_13_reg_1556 <= {{temp_6_fu_1195_p2[31:27]}};
        trunc_ln122_14_reg_1551 <= trunc_ln122_14_fu_1201_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln122_12_reg_1516 <= {{temp_4_fu_983_p2[31:2]}};
        lshr_ln122_s_reg_1506 <= {{temp_4_fu_983_p2[31:27]}};
        temp_4_reg_1496 <= temp_4_fu_983_p2;
        trunc_ln122_10_reg_1501 <= trunc_ln122_10_fu_989_p1;
        trunc_ln122_13_reg_1511 <= trunc_ln122_13_fu_1003_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln122_6_reg_1470 <= {{temp_2_fu_895_p2[31:27]}};
        trunc_ln122_6_reg_1465 <= trunc_ln122_6_fu_901_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_2_reg_1457 <= temp_2_fu_895_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        A_20_out_ap_vld = 1'b1;
    end else begin
        A_20_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_14_out_ap_vld = 1'b1;
    end else begin
        B_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_17_out_ap_vld = 1'b1;
    end else begin
        C_17_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        D_20_out_ap_vld = 1'b1;
    end else begin
        D_20_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln120_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        E_14_out_ap_vld = 1'b1;
    end else begin
        E_14_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln120_reg_1328 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((1'b0 == ap_block_pp0_stage9_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i = 6'd20;
    end else begin
        ap_sig_allocacmp_i = i_2_fu_146;
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
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
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign A_20_out = (add_ln122_14_reg_1475 + add_ln122_12_fu_932_p2);
assign B_14_out = temp_2_reg_1457;
assign C_10_fu_1086_p3 = {{trunc_ln122_11_fu_1074_p1}, {lshr_ln122_10_fu_1077_p4}};
assign C_11_fu_1129_p3 = {{trunc_ln122_13_reg_1511}, {lshr_ln122_12_reg_1516}};
assign C_17_out = {{trunc_ln122_7_reg_1447}, {lshr_ln122_7_reg_1452}};
assign C_4_fu_1161_p3 = {{trunc_ln122_15_fu_1147_p1}, {lshr_ln122_14_fu_1151_p4}};
assign C_5_fu_786_p3 = {{trunc_ln122_1_reg_1368}, {lshr_ln122_1_reg_1373}};
assign C_6_fu_753_p3 = {{trunc_ln122_3_fu_739_p1}, {lshr_ln122_3_fu_743_p4}};
assign C_7_fu_848_p3 = {{trunc_ln122_5_reg_1400}, {lshr_ln122_5_reg_1405}};
assign C_8_fu_942_p3 = {{trunc_ln122_7_reg_1447}, {lshr_ln122_7_reg_1452}};
assign C_9_fu_1046_p3 = {{trunc_ln122_9_fu_1034_p1}, {lshr_ln122_9_fu_1037_p4}};
assign D_20_out = C_7_reg_1435;
assign E_14_out = C_6_reg_1393;
assign add_ln120_1_fu_1224_p2 = (i_reg_1303 + 6'd8);
assign add_ln120_fu_510_p2 = (ap_sig_allocacmp_i + 6'd4);
assign add_ln122_10_fu_885_p2 = (add_ln122_8_reg_1430 + C_reg_1357);
assign add_ln122_12_fu_932_p2 = (xor_ln122_7_reg_1442 + tmp_3_reg_1323);
assign add_ln122_13_fu_921_p2 = (C_5_reg_1415 + 32'd1859775393);
assign add_ln122_14_fu_926_p2 = (or_ln122_6_fu_915_p3 + add_ln122_13_fu_921_p2);
assign add_ln122_16_fu_978_p2 = (add_ln122_18_reg_1410 + xor_ln122_9_fu_965_p2);
assign add_ln122_17_fu_775_p2 = (tmp_4_reg_1332 + 32'd1859775393);
assign add_ln122_18_fu_780_p2 = (add_ln122_17_fu_775_p2 + C_6_fu_753_p3);
assign add_ln122_1_fu_420_p2 = (tmp_s_fu_392_p13 + 32'd1859775393);
assign add_ln122_20_fu_1064_p2 = (tmp_5_reg_1337 + xor_ln122_11_fu_1058_p2);
assign add_ln122_21_fu_1023_p2 = (or_ln122_s_fu_1017_p3 + 32'd1859775393);
assign add_ln122_22_fu_1029_p2 = (add_ln122_21_fu_1023_p2 + C_7_reg_1435);
assign add_ln122_24_fu_1119_p2 = (xor_ln122_13_fu_1113_p2 + tmp_6_reg_1342);
assign add_ln122_25_fu_1190_p2 = (add_ln122_26_reg_1541 + 32'd1859775393);
assign add_ln122_26_fu_1124_p2 = (add_ln122_24_fu_1119_p2 + C_8_reg_1489);
assign add_ln122_28_fu_1215_p2 = (C_9_reg_1526 + tmp_7_reg_1347);
assign add_ln122_29_fu_1245_p2 = (add_ln122_30_reg_1561 + 32'd1859775393);
assign add_ln122_2_fu_683_p2 = (add_ln122_1_reg_1308 + or_ln1_fu_675_p3);
assign add_ln122_30_fu_1219_p2 = (add_ln122_28_fu_1215_p2 + xor_ln122_15_reg_1546);
assign add_ln122_4_fu_734_p2 = (add_ln122_6_fu_728_p2 + tmp_1_reg_1313);
assign add_ln122_5_fu_808_p2 = (xor_ln122_3_fu_797_p2 + add_ln122_4_reg_1388);
assign add_ln122_6_fu_728_p2 = (32'd1859775393 + E_5_fu_134);
assign add_ln122_8_fu_843_p2 = (xor_ln122_5_fu_837_p2 + tmp_2_reg_1318);
assign add_ln122_9_fu_889_p2 = (or_ln122_4_fu_879_p3 + 32'd1859775393);
assign add_ln122_fu_688_p2 = (xor_ln122_1_fu_669_p2 + E_fu_126);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
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
assign ap_block_pp0_stage5_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
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
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign icmp_ln120_fu_516_p2 = ((add_ln120_fu_510_p2 < 6'd40) ? 1'b1 : 1'b0);
assign lshr_ln122_10_fu_1077_p4 = {{temp_3_reg_1480[31:2]}};
assign lshr_ln122_14_fu_1151_p4 = {{temp_5_fu_1069_p2[31:2]}};
assign lshr_ln122_3_fu_743_p4 = {{B_5_fu_138[31:2]}};
assign lshr_ln122_8_fu_952_p4 = {{temp_3_reg_1480[31:27]}};
assign lshr_ln122_9_fu_1037_p4 = {{temp_2_reg_1457[31:2]}};
assign lshr_ln3_fu_653_p4 = {{B_5_fu_138[31:27]}};
assign or_ln122_1_fu_1184_p3 = {{trunc_ln122_12_reg_1531}, {lshr_ln122_11_reg_1536}};
assign or_ln122_2_fu_802_p3 = {{trunc_ln122_2_reg_1378}, {lshr_ln122_2_reg_1383}};
assign or_ln122_3_fu_1239_p3 = {{trunc_ln122_14_reg_1551}, {lshr_ln122_13_reg_1556}};
assign or_ln122_4_fu_879_p3 = {{trunc_ln122_4_reg_1420}, {lshr_ln122_4_reg_1425}};
assign or_ln122_6_fu_915_p3 = {{trunc_ln122_6_reg_1465}, {lshr_ln122_6_reg_1470}};
assign or_ln122_8_fu_970_p3 = {{trunc_ln122_8_fu_949_p1}, {lshr_ln122_8_fu_952_p4}};
assign or_ln122_s_fu_1017_p3 = {{trunc_ln122_10_reg_1501}, {lshr_ln122_s_reg_1506}};
assign or_ln1_fu_675_p3 = {{trunc_ln122_fu_649_p1}, {lshr_ln3_fu_653_p4}};
assign temp_1_fu_813_p2 = (add_ln122_5_fu_808_p2 + or_ln122_2_fu_802_p3);
assign temp_2_fu_895_p2 = (add_ln122_9_fu_889_p2 + add_ln122_10_fu_885_p2);
assign temp_3_fu_936_p2 = (add_ln122_14_reg_1475 + add_ln122_12_fu_932_p2);
assign temp_4_fu_983_p2 = (add_ln122_16_fu_978_p2 + or_ln122_8_fu_970_p3);
assign temp_5_fu_1069_p2 = (add_ln122_22_reg_1521 + add_ln122_20_fu_1064_p2);
assign temp_6_fu_1195_p2 = (add_ln122_25_fu_1190_p2 + or_ln122_1_fu_1184_p3);
assign temp_7_fu_1250_p2 = (add_ln122_29_fu_1245_p2 + or_ln122_3_fu_1239_p3);
assign temp_fu_694_p2 = (add_ln122_fu_688_p2 + add_ln122_2_fu_683_p2);
assign tmp_1_fu_426_p11 = 'bx;
assign tmp_2_fu_454_p11 = 'bx;
assign tmp_3_fu_482_p11 = 'bx;
assign tmp_4_fu_522_p11 = 'bx;
assign tmp_5_fu_550_p11 = 'bx;
assign tmp_6_fu_578_p11 = 'bx;
assign tmp_7_fu_606_p11 = 'bx;
assign tmp_s_fu_392_p11 = 'bx;
assign trunc_ln122_10_fu_989_p1 = temp_4_fu_983_p2[26:0];
assign trunc_ln122_11_fu_1074_p1 = temp_3_reg_1480[1:0];
assign trunc_ln122_12_fu_1094_p1 = temp_5_fu_1069_p2[26:0];
assign trunc_ln122_13_fu_1003_p1 = temp_4_fu_983_p2[1:0];
assign trunc_ln122_14_fu_1201_p1 = temp_6_fu_1195_p2[26:0];
assign trunc_ln122_15_fu_1147_p1 = temp_5_fu_1069_p2[1:0];
assign trunc_ln122_1_fu_700_p1 = B_fu_130[1:0];
assign trunc_ln122_2_fu_714_p1 = temp_fu_694_p2[26:0];
assign trunc_ln122_3_fu_739_p1 = B_5_fu_138[1:0];
assign trunc_ln122_4_fu_819_p1 = temp_1_fu_813_p2[26:0];
assign trunc_ln122_5_fu_761_p1 = temp_fu_694_p2[1:0];
assign trunc_ln122_6_fu_901_p1 = temp_2_fu_895_p2[26:0];
assign trunc_ln122_7_fu_865_p1 = temp_1_fu_813_p2[1:0];
assign trunc_ln122_8_fu_949_p1 = temp_3_reg_1480[26:0];
assign trunc_ln122_9_fu_1034_p1 = temp_2_reg_1457[1:0];
assign trunc_ln122_fu_649_p1 = B_5_fu_138[26:0];
assign xor_ln122_10_fu_1054_p2 = (temp_3_reg_1480 ^ C_8_reg_1489);
assign xor_ln122_11_fu_1058_p2 = (xor_ln122_10_fu_1054_p2 ^ C_9_fu_1046_p3);
assign xor_ln122_12_fu_1108_p2 = (temp_4_reg_1496 ^ C_9_fu_1046_p3);
assign xor_ln122_13_fu_1113_p2 = (xor_ln122_12_fu_1108_p2 ^ C_10_fu_1086_p3);
assign xor_ln122_14_fu_1135_p2 = (temp_5_fu_1069_p2 ^ C_10_fu_1086_p3);
assign xor_ln122_15_fu_1141_p2 = (xor_ln122_14_fu_1135_p2 ^ C_11_fu_1129_p3);
assign xor_ln122_1_fu_669_p2 = (xor_ln122_fu_663_p2 ^ E_6_fu_142);
assign xor_ln122_2_fu_792_p2 = (C_5_fu_786_p3 ^ A_reg_1352);
assign xor_ln122_3_fu_797_p2 = (xor_ln122_2_fu_792_p2 ^ C_reg_1357);
assign xor_ln122_4_fu_833_p2 = (temp_reg_1363 ^ C_6_reg_1393);
assign xor_ln122_5_fu_837_p2 = (xor_ln122_4_fu_833_p2 ^ C_5_fu_786_p3);
assign xor_ln122_6_fu_854_p2 = (temp_1_fu_813_p2 ^ C_6_reg_1393);
assign xor_ln122_7_fu_859_p2 = (xor_ln122_6_fu_854_p2 ^ C_7_fu_848_p3);
assign xor_ln122_8_fu_961_p2 = (temp_2_reg_1457 ^ C_7_reg_1435);
assign xor_ln122_9_fu_965_p2 = (xor_ln122_8_fu_961_p2 ^ C_8_reg_1489);
assign xor_ln122_fu_663_p2 = (E_5_fu_134 ^ B_fu_130);
endmodule 