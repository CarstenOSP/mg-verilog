module sha_stream_sha_transform_Pipeline_trans_lp6 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_reload,B_59_reload,C_105_reload,D_reload,E_59_reload,W_76_reload,W_31_reload,W_27_reload,W_23_reload,W_151,W_77_reload,W_30_reload,W_26_reload,W_22_reload,W_150,W_78_reload,W_29_reload,W_25_reload,W_21_reload,W_149,W_79_reload,W_28_reload,W_24_reload,W_20_reload,W_148,C_97_out,C_97_out_ap_vld,temp_43_out,temp_43_out_ap_vld,C_98_out,C_98_out_ap_vld,temp_44_out,temp_44_out_ap_vld,C_99_out,C_99_out_ap_vld); 
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
input  [31:0] A_reload;
input  [31:0] B_59_reload;
input  [31:0] C_105_reload;
input  [31:0] D_reload;
input  [31:0] E_59_reload;
input  [31:0] W_76_reload;
input  [31:0] W_31_reload;
input  [31:0] W_27_reload;
input  [31:0] W_23_reload;
input  [31:0] W_151;
input  [31:0] W_77_reload;
input  [31:0] W_30_reload;
input  [31:0] W_26_reload;
input  [31:0] W_22_reload;
input  [31:0] W_150;
input  [31:0] W_78_reload;
input  [31:0] W_29_reload;
input  [31:0] W_25_reload;
input  [31:0] W_21_reload;
input  [31:0] W_149;
input  [31:0] W_79_reload;
input  [31:0] W_28_reload;
input  [31:0] W_24_reload;
input  [31:0] W_20_reload;
input  [31:0] W_148;
output  [31:0] C_97_out;
output   C_97_out_ap_vld;
output  [31:0] temp_43_out;
output   temp_43_out_ap_vld;
output  [31:0] C_98_out;
output   C_98_out_ap_vld;
output  [31:0] temp_44_out;
output   temp_44_out_ap_vld;
output  [31:0] C_99_out;
output   C_99_out_ap_vld;
reg ap_idle;
reg C_97_out_ap_vld;
reg temp_43_out_ap_vld;
reg C_98_out_ap_vld;
reg temp_44_out_ap_vld;
reg C_99_out_ap_vld;
(* fsm_encoding = "none" *) reg   [9:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln128_reg_1281;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_subdone;
reg   [6:0] i_1_reg_1256;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] add_ln130_1_fu_390_p2;
reg   [31:0] add_ln130_1_reg_1261;
wire   [31:0] tmp_1_fu_396_p13;
reg   [31:0] tmp_1_reg_1266;
wire   [31:0] tmp_2_fu_424_p13;
reg   [31:0] tmp_2_reg_1271;
wire   [31:0] tmp_3_fu_452_p13;
reg   [31:0] tmp_3_reg_1276;
wire   [0:0] icmp_ln128_fu_486_p2;
wire   [31:0] tmp_4_fu_492_p11;
reg   [31:0] tmp_4_reg_1285;
wire   [31:0] tmp_5_fu_516_p11;
reg   [31:0] tmp_5_reg_1290;
wire   [31:0] tmp_6_fu_540_p11;
reg   [31:0] tmp_6_reg_1295;
wire   [31:0] tmp_7_fu_564_p11;
reg   [31:0] tmp_7_reg_1300;
reg   [31:0] A_reg_1305;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_reg_1310;
wire   [31:0] temp_fu_648_p2;
reg   [31:0] temp_reg_1316;
wire   [1:0] trunc_ln130_1_fu_654_p1;
reg   [1:0] trunc_ln130_1_reg_1321;
reg   [29:0] lshr_ln130_1_reg_1326;
wire   [26:0] trunc_ln130_2_fu_668_p1;
reg   [26:0] trunc_ln130_2_reg_1331;
reg   [4:0] lshr_ln130_2_reg_1336;
wire   [31:0] add_ln130_4_fu_688_p2;
reg   [31:0] add_ln130_4_reg_1341;
wire   [31:0] C_4_fu_707_p3;
reg   [31:0] C_4_reg_1346;
wire   [1:0] trunc_ln130_5_fu_715_p1;
reg   [1:0] trunc_ln130_5_reg_1354;
reg   [29:0] lshr_ln130_5_reg_1359;
wire   [31:0] C_3_fu_729_p3;
reg   [31:0] C_3_reg_1364;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [26:0] trunc_ln130_4_fu_762_p1;
reg   [26:0] trunc_ln130_4_reg_1369;
reg   [4:0] lshr_ln130_4_reg_1374;
wire   [31:0] add_ln130_8_fu_786_p2;
reg   [31:0] add_ln130_8_reg_1379;
wire   [31:0] C_5_fu_791_p3;
reg   [31:0] C_5_reg_1384;
wire   [31:0] xor_ln130_7_fu_802_p2;
reg   [31:0] xor_ln130_7_reg_1391;
wire   [1:0] trunc_ln130_7_fu_808_p1;
reg   [1:0] trunc_ln130_7_reg_1396;
reg   [29:0] lshr_ln130_7_reg_1401;
wire   [31:0] add_ln130_18_fu_827_p2;
reg   [31:0] add_ln130_18_reg_1406;
wire   [31:0] temp_2_fu_848_p2;
reg   [31:0] temp_2_reg_1411;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [26:0] trunc_ln130_6_fu_854_p1;
reg   [26:0] trunc_ln130_6_reg_1419;
reg   [4:0] lshr_ln130_6_reg_1424;
wire   [31:0] add_ln130_14_fu_879_p2;
reg   [31:0] add_ln130_14_reg_1429;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] temp_3_fu_889_p2;
reg   [31:0] temp_3_reg_1434;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] C_6_fu_895_p3;
reg   [31:0] C_6_reg_1443;
wire   [31:0] temp_4_fu_936_p2;
reg   [31:0] temp_4_reg_1450;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [26:0] trunc_ln130_10_fu_942_p1;
reg   [26:0] trunc_ln130_10_reg_1455;
reg   [4:0] lshr_ln130_s_reg_1460;
wire   [1:0] trunc_ln130_13_fu_956_p1;
reg   [1:0] trunc_ln130_13_reg_1465;
reg   [29:0] lshr_ln130_12_reg_1470;
wire   [31:0] add_ln130_22_fu_982_p2;
reg   [31:0] add_ln130_22_reg_1475;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] C_7_fu_999_p3;
reg   [31:0] C_7_reg_1480;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [26:0] trunc_ln130_12_fu_1047_p1;
reg   [26:0] trunc_ln130_12_reg_1485;
reg   [4:0] lshr_ln130_11_reg_1490;
wire   [31:0] add_ln130_26_fu_1077_p2;
reg   [31:0] add_ln130_26_reg_1495;
wire   [31:0] xor_ln130_15_fu_1094_p2;
reg   [31:0] xor_ln130_15_reg_1500;
wire   [26:0] trunc_ln130_14_fu_1154_p1;
reg   [26:0] trunc_ln130_14_reg_1505;
wire    ap_block_pp0_stage9_11001;
reg   [4:0] lshr_ln130_13_reg_1510;
wire   [31:0] add_ln130_30_fu_1172_p2;
reg   [31:0] add_ln130_30_reg_1515;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [31:0] E_fu_120;
wire   [31:0] C_8_fu_1039_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] B_fu_124;
wire   [31:0] temp_6_fu_1148_p2;
reg   [31:0] E_1_fu_128;
wire   [31:0] C_9_fu_1082_p3;
reg   [31:0] B_1_fu_132;
wire   [31:0] temp_7_fu_1203_p2;
reg   [31:0] E_2_fu_136;
wire   [31:0] C_2_fu_1114_p3;
reg   [6:0] i_fu_140;
wire   [6:0] add_ln128_1_fu_1177_p2;
reg   [6:0] ap_sig_allocacmp_i_1;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage5_01001;
wire   [31:0] tmp_s_fu_362_p11;
wire   [31:0] tmp_s_fu_362_p13;
wire   [31:0] tmp_1_fu_396_p11;
wire   [31:0] tmp_2_fu_424_p11;
wire   [31:0] tmp_3_fu_452_p11;
wire   [6:0] add_ln128_fu_480_p2;
wire   [31:0] tmp_4_fu_492_p9;
wire   [31:0] tmp_5_fu_516_p9;
wire   [31:0] tmp_6_fu_540_p9;
wire   [31:0] tmp_7_fu_564_p9;
wire   [31:0] xor_ln130_fu_617_p2;
wire   [26:0] trunc_ln130_fu_603_p1;
wire   [4:0] lshr_ln3_fu_607_p4;
wire   [31:0] or_ln3_fu_629_p3;
wire   [31:0] xor_ln130_1_fu_623_p2;
wire   [31:0] add_ln130_fu_642_p2;
wire   [31:0] add_ln130_2_fu_637_p2;
wire   [31:0] add_ln130_6_fu_682_p2;
wire   [1:0] trunc_ln130_3_fu_693_p1;
wire   [29:0] lshr_ln130_3_fu_697_p4;
wire    ap_block_pp0_stage2;
wire   [31:0] xor_ln130_2_fu_735_p2;
wire   [31:0] xor_ln130_3_fu_740_p2;
wire   [31:0] add_ln130_5_fu_751_p2;
wire   [31:0] or_ln130_2_fu_745_p3;
wire   [31:0] temp_1_fu_756_p2;
wire   [31:0] xor_ln130_4_fu_776_p2;
wire   [31:0] xor_ln130_5_fu_780_p2;
wire   [31:0] xor_ln130_6_fu_797_p2;
wire   [31:0] add_ln130_17_fu_822_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] or_ln130_4_fu_832_p3;
wire   [31:0] add_ln130_9_fu_842_p2;
wire   [31:0] add_ln130_10_fu_838_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln130_6_fu_868_p3;
wire   [31:0] add_ln130_13_fu_874_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] add_ln130_12_fu_885_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] xor_ln130_8_fu_914_p2;
wire   [26:0] trunc_ln130_8_fu_902_p1;
wire   [4:0] lshr_ln130_8_fu_905_p4;
wire   [31:0] xor_ln130_9_fu_918_p2;
wire   [31:0] add_ln130_16_fu_931_p2;
wire   [31:0] or_ln130_8_fu_923_p3;
wire    ap_block_pp0_stage7;
wire   [31:0] or_ln130_s_fu_970_p3;
wire   [31:0] add_ln130_21_fu_976_p2;
wire    ap_block_pp0_stage8;
wire   [1:0] trunc_ln130_9_fu_987_p1;
wire   [29:0] lshr_ln130_9_fu_990_p4;
wire   [31:0] xor_ln130_10_fu_1007_p2;
wire   [31:0] xor_ln130_11_fu_1011_p2;
wire   [31:0] add_ln130_20_fu_1017_p2;
wire   [1:0] trunc_ln130_11_fu_1027_p1;
wire   [29:0] lshr_ln130_10_fu_1030_p4;
wire   [31:0] temp_5_fu_1022_p2;
wire   [31:0] xor_ln130_12_fu_1061_p2;
wire   [31:0] xor_ln130_13_fu_1066_p2;
wire   [31:0] add_ln130_24_fu_1072_p2;
wire   [31:0] xor_ln130_14_fu_1088_p2;
wire   [1:0] trunc_ln130_15_fu_1100_p1;
wire   [29:0] lshr_ln130_14_fu_1104_p4;
wire    ap_block_pp0_stage9;
wire   [31:0] add_ln130_25_fu_1143_p2;
wire   [31:0] or_ln130_1_fu_1137_p3;
wire   [31:0] add_ln130_28_fu_1168_p2;
wire   [31:0] add_ln130_29_fu_1198_p2;
wire   [31:0] or_ln130_3_fu_1192_p3;
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
wire   [6:0] tmp_s_fu_362_p1;
wire  signed [6:0] tmp_s_fu_362_p3;
wire  signed [6:0] tmp_s_fu_362_p5;
wire  signed [6:0] tmp_s_fu_362_p7;
wire  signed [6:0] tmp_s_fu_362_p9;
wire   [6:0] tmp_1_fu_396_p1;
wire  signed [6:0] tmp_1_fu_396_p3;
wire  signed [6:0] tmp_1_fu_396_p5;
wire  signed [6:0] tmp_1_fu_396_p7;
wire  signed [6:0] tmp_1_fu_396_p9;
wire   [6:0] tmp_2_fu_424_p1;
wire  signed [6:0] tmp_2_fu_424_p3;
wire  signed [6:0] tmp_2_fu_424_p5;
wire  signed [6:0] tmp_2_fu_424_p7;
wire  signed [6:0] tmp_2_fu_424_p9;
wire   [6:0] tmp_3_fu_452_p1;
wire  signed [6:0] tmp_3_fu_452_p3;
wire  signed [6:0] tmp_3_fu_452_p5;
wire  signed [6:0] tmp_3_fu_452_p7;
wire  signed [6:0] tmp_3_fu_452_p9;
wire   [6:0] tmp_4_fu_492_p1;
wire  signed [6:0] tmp_4_fu_492_p3;
wire  signed [6:0] tmp_4_fu_492_p5;
wire  signed [6:0] tmp_4_fu_492_p7;
wire   [6:0] tmp_5_fu_516_p1;
wire  signed [6:0] tmp_5_fu_516_p3;
wire  signed [6:0] tmp_5_fu_516_p5;
wire  signed [6:0] tmp_5_fu_516_p7;
wire   [6:0] tmp_6_fu_540_p1;
wire  signed [6:0] tmp_6_fu_540_p3;
wire  signed [6:0] tmp_6_fu_540_p5;
wire  signed [6:0] tmp_6_fu_540_p7;
wire   [6:0] tmp_7_fu_564_p1;
wire  signed [6:0] tmp_7_fu_564_p3;
wire  signed [6:0] tmp_7_fu_564_p5;
wire  signed [6:0] tmp_7_fu_564_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 10'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_fu_120 = 32'd0;
#0 B_fu_124 = 32'd0;
#0 E_1_fu_128 = 32'd0;
#0 B_1_fu_132 = 32'd0;
#0 E_2_fu_136 = 32'd0;
#0 i_fu_140 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h40 ),.din1_WIDTH( 32 ),.CASE2( 7'h44 ),.din2_WIDTH( 32 ),.CASE3( 7'h48 ),.din3_WIDTH( 32 ),.CASE4( 7'h4C ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_11_7_32_1_1_U150(.din0(W_76_reload),.din1(W_31_reload),.din2(W_27_reload),.din3(W_23_reload),.din4(W_151),.def(tmp_s_fu_362_p11),.sel(ap_sig_allocacmp_i_1),.dout(tmp_s_fu_362_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h40 ),.din1_WIDTH( 32 ),.CASE2( 7'h44 ),.din2_WIDTH( 32 ),.CASE3( 7'h48 ),.din3_WIDTH( 32 ),.CASE4( 7'h4C ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_11_7_32_1_1_U151(.din0(W_77_reload),.din1(W_30_reload),.din2(W_26_reload),.din3(W_22_reload),.din4(W_150),.def(tmp_1_fu_396_p11),.sel(ap_sig_allocacmp_i_1),.dout(tmp_1_fu_396_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h40 ),.din1_WIDTH( 32 ),.CASE2( 7'h44 ),.din2_WIDTH( 32 ),.CASE3( 7'h48 ),.din3_WIDTH( 32 ),.CASE4( 7'h4C ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_11_7_32_1_1_U152(.din0(W_78_reload),.din1(W_29_reload),.din2(W_25_reload),.din3(W_21_reload),.din4(W_149),.def(tmp_2_fu_424_p11),.sel(ap_sig_allocacmp_i_1),.dout(tmp_2_fu_424_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_11_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h40 ),.din1_WIDTH( 32 ),.CASE2( 7'h44 ),.din2_WIDTH( 32 ),.CASE3( 7'h48 ),.din3_WIDTH( 32 ),.CASE4( 7'h4C ),.din4_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_11_7_32_1_1_U153(.din0(W_79_reload),.din1(W_28_reload),.din2(W_24_reload),.din3(W_20_reload),.din4(W_148),.def(tmp_3_fu_452_p11),.sel(ap_sig_allocacmp_i_1),.dout(tmp_3_fu_452_p13));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h40 ),.din1_WIDTH( 32 ),.CASE2( 7'h44 ),.din2_WIDTH( 32 ),.CASE3( 7'h48 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_9_7_32_1_1_U154(.din0(W_31_reload),.din1(W_27_reload),.din2(W_23_reload),.din3(W_151),.def(tmp_4_fu_492_p9),.sel(ap_sig_allocacmp_i_1),.dout(tmp_4_fu_492_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h40 ),.din1_WIDTH( 32 ),.CASE2( 7'h44 ),.din2_WIDTH( 32 ),.CASE3( 7'h48 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_9_7_32_1_1_U155(.din0(W_30_reload),.din1(W_26_reload),.din2(W_22_reload),.din3(W_150),.def(tmp_5_fu_516_p9),.sel(ap_sig_allocacmp_i_1),.dout(tmp_5_fu_516_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h40 ),.din1_WIDTH( 32 ),.CASE2( 7'h44 ),.din2_WIDTH( 32 ),.CASE3( 7'h48 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_9_7_32_1_1_U156(.din0(W_29_reload),.din1(W_25_reload),.din2(W_21_reload),.din3(W_149),.def(tmp_6_fu_540_p9),.sel(ap_sig_allocacmp_i_1),.dout(tmp_6_fu_540_p11));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_9_7_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 7'h3C ),.din0_WIDTH( 32 ),.CASE1( 7'h40 ),.din1_WIDTH( 32 ),.CASE2( 7'h44 ),.din2_WIDTH( 32 ),.CASE3( 7'h48 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 7 ),.dout_WIDTH( 32 ))
sparsemux_9_7_32_1_1_U157(.din0(W_28_reload),.din1(W_24_reload),.din2(W_20_reload),.din3(W_148),.def(tmp_7_fu_564_p9),.sel(ap_sig_allocacmp_i_1),.dout(tmp_7_fu_564_p11));
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
            B_1_fu_132 <= A_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_1_fu_132 <= temp_7_fu_1203_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_124 <= B_59_reload;
    end else if (((icmp_ln128_reg_1281 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        B_fu_124 <= temp_6_fu_1148_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_128 <= D_reload;
    end else if (((icmp_ln128_reg_1281 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_1_fu_128 <= C_9_fu_1082_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_2_fu_136 <= C_105_reload;
    end else if (((icmp_ln128_reg_1281 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_2_fu_136 <= C_2_fu_1114_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_120 <= E_59_reload;
    end else if (((icmp_ln128_reg_1281 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        E_fu_120 <= C_8_fu_1039_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_140 <= 7'd60;
    end else if (((icmp_ln128_reg_1281 == 1'd1) & (1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        i_fu_140 <= add_ln128_1_fu_1177_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_reg_1305 <= B_1_fu_132;
        C_reg_1310 <= E_2_fu_136;
        add_ln130_4_reg_1341 <= add_ln130_4_fu_688_p2;
        lshr_ln130_1_reg_1326 <= {{B_fu_124[31:2]}};
        lshr_ln130_2_reg_1336 <= {{temp_fu_648_p2[31:27]}};
        lshr_ln130_5_reg_1359 <= {{temp_fu_648_p2[31:2]}};
        temp_reg_1316 <= temp_fu_648_p2;
        trunc_ln130_1_reg_1321 <= trunc_ln130_1_fu_654_p1;
        trunc_ln130_2_reg_1331 <= trunc_ln130_2_fu_668_p1;
        trunc_ln130_5_reg_1354 <= trunc_ln130_5_fu_715_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_3_reg_1364 <= C_3_fu_729_p3;
        add_ln130_18_reg_1406 <= add_ln130_18_fu_827_p2;
        add_ln130_8_reg_1379 <= add_ln130_8_fu_786_p2;
        lshr_ln130_4_reg_1374 <= {{temp_1_fu_756_p2[31:27]}};
        lshr_ln130_7_reg_1401 <= {{temp_1_fu_756_p2[31:2]}};
        trunc_ln130_4_reg_1369 <= trunc_ln130_4_fu_762_p1;
        trunc_ln130_7_reg_1396 <= trunc_ln130_7_fu_808_p1;
        xor_ln130_7_reg_1391 <= xor_ln130_7_fu_802_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_4_reg_1346 <= C_4_fu_707_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        C_5_reg_1384 <= C_5_fu_791_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_6_reg_1443 <= C_6_fu_895_p3;
        temp_3_reg_1434 <= temp_3_fu_889_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        C_7_reg_1480 <= C_7_fu_999_p3;
        add_ln130_26_reg_1495 <= add_ln130_26_fu_1077_p2;
        lshr_ln130_11_reg_1490 <= {{temp_5_fu_1022_p2[31:27]}};
        trunc_ln130_12_reg_1485 <= trunc_ln130_12_fu_1047_p1;
        xor_ln130_15_reg_1500 <= xor_ln130_15_fu_1094_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln130_14_reg_1429 <= add_ln130_14_fu_879_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln130_1_reg_1261 <= add_ln130_1_fu_390_p2;
        i_1_reg_1256 <= ap_sig_allocacmp_i_1;
        icmp_ln128_reg_1281 <= icmp_ln128_fu_486_p2;
        tmp_1_reg_1266 <= tmp_1_fu_396_p13;
        tmp_2_reg_1271 <= tmp_2_fu_424_p13;
        tmp_3_reg_1276 <= tmp_3_fu_452_p13;
        tmp_4_reg_1285 <= tmp_4_fu_492_p11;
        tmp_5_reg_1290 <= tmp_5_fu_516_p11;
        tmp_6_reg_1295 <= tmp_6_fu_540_p11;
        tmp_7_reg_1300 <= tmp_7_fu_564_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        add_ln130_22_reg_1475 <= add_ln130_22_fu_982_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln130_30_reg_1515 <= add_ln130_30_fu_1172_p2;
        lshr_ln130_13_reg_1510 <= {{temp_6_fu_1148_p2[31:27]}};
        trunc_ln130_14_reg_1505 <= trunc_ln130_14_fu_1154_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        lshr_ln130_12_reg_1470 <= {{temp_4_fu_936_p2[31:2]}};
        lshr_ln130_s_reg_1460 <= {{temp_4_fu_936_p2[31:27]}};
        temp_4_reg_1450 <= temp_4_fu_936_p2;
        trunc_ln130_10_reg_1455 <= trunc_ln130_10_fu_942_p1;
        trunc_ln130_13_reg_1465 <= trunc_ln130_13_fu_956_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln130_6_reg_1424 <= {{temp_2_fu_848_p2[31:27]}};
        trunc_ln130_6_reg_1419 <= trunc_ln130_6_fu_854_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        temp_2_reg_1411 <= temp_2_fu_848_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1281 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_97_out_ap_vld = 1'b1;
    end else begin
        C_97_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1281 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_98_out_ap_vld = 1'b1;
    end else begin
        C_98_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1281 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        C_99_out_ap_vld = 1'b1;
    end else begin
        C_99_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln128_reg_1281 == 1'd0) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
        ap_sig_allocacmp_i_1 = 7'd60;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_140;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1281 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        temp_43_out_ap_vld = 1'b1;
    end else begin
        temp_43_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln128_reg_1281 == 1'd0) & (1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        temp_44_out_ap_vld = 1'b1;
    end else begin
        temp_44_out_ap_vld = 1'b0;
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
assign C_2_fu_1114_p3 = {{trunc_ln130_15_fu_1100_p1}, {lshr_ln130_14_fu_1104_p4}};
assign C_3_fu_729_p3 = {{trunc_ln130_1_reg_1321}, {lshr_ln130_1_reg_1326}};
assign C_4_fu_707_p3 = {{trunc_ln130_3_fu_693_p1}, {lshr_ln130_3_fu_697_p4}};
assign C_5_fu_791_p3 = {{trunc_ln130_5_reg_1354}, {lshr_ln130_5_reg_1359}};
assign C_6_fu_895_p3 = {{trunc_ln130_7_reg_1396}, {lshr_ln130_7_reg_1401}};
assign C_7_fu_999_p3 = {{trunc_ln130_9_fu_987_p1}, {lshr_ln130_9_fu_990_p4}};
assign C_8_fu_1039_p3 = {{trunc_ln130_11_fu_1027_p1}, {lshr_ln130_10_fu_1030_p4}};
assign C_97_out = C_4_reg_1346;
assign C_98_out = C_5_reg_1384;
assign C_99_out = {{trunc_ln130_7_reg_1396}, {lshr_ln130_7_reg_1401}};
assign C_9_fu_1082_p3 = {{trunc_ln130_13_reg_1465}, {lshr_ln130_12_reg_1470}};
assign add_ln128_1_fu_1177_p2 = (i_1_reg_1256 + 7'd8);
assign add_ln128_fu_480_p2 = (ap_sig_allocacmp_i_1 + 7'd4);
assign add_ln130_10_fu_838_p2 = (add_ln130_8_reg_1379 + C_reg_1310);
assign add_ln130_12_fu_885_p2 = (xor_ln130_7_reg_1391 + tmp_3_reg_1276);
assign add_ln130_13_fu_874_p2 = ($signed(C_3_reg_1364) + $signed(32'd3395469782));
assign add_ln130_14_fu_879_p2 = (or_ln130_6_fu_868_p3 + add_ln130_13_fu_874_p2);
assign add_ln130_16_fu_931_p2 = (add_ln130_18_reg_1406 + xor_ln130_9_fu_918_p2);
assign add_ln130_17_fu_822_p2 = ($signed(tmp_4_reg_1285) + $signed(32'd3395469782));
assign add_ln130_18_fu_827_p2 = (add_ln130_17_fu_822_p2 + C_4_reg_1346);
assign add_ln130_1_fu_390_p2 = ($signed(tmp_s_fu_362_p13) + $signed(32'd3395469782));
assign add_ln130_20_fu_1017_p2 = (tmp_5_reg_1290 + xor_ln130_11_fu_1011_p2);
assign add_ln130_21_fu_976_p2 = ($signed(or_ln130_s_fu_970_p3) + $signed(32'd3395469782));
assign add_ln130_22_fu_982_p2 = (add_ln130_21_fu_976_p2 + C_5_reg_1384);
assign add_ln130_24_fu_1072_p2 = (xor_ln130_13_fu_1066_p2 + tmp_6_reg_1295);
assign add_ln130_25_fu_1143_p2 = ($signed(add_ln130_26_reg_1495) + $signed(32'd3395469782));
assign add_ln130_26_fu_1077_p2 = (add_ln130_24_fu_1072_p2 + C_6_reg_1443);
assign add_ln130_28_fu_1168_p2 = (C_7_reg_1480 + tmp_7_reg_1300);
assign add_ln130_29_fu_1198_p2 = ($signed(add_ln130_30_reg_1515) + $signed(32'd3395469782));
assign add_ln130_2_fu_637_p2 = (add_ln130_1_reg_1261 + or_ln3_fu_629_p3);
assign add_ln130_30_fu_1172_p2 = (add_ln130_28_fu_1168_p2 + xor_ln130_15_reg_1500);
assign add_ln130_4_fu_688_p2 = (add_ln130_6_fu_682_p2 + tmp_1_reg_1266);
assign add_ln130_5_fu_751_p2 = (xor_ln130_3_fu_740_p2 + add_ln130_4_reg_1341);
assign add_ln130_6_fu_682_p2 = ($signed(32'd3395469782) + $signed(E_1_fu_128));
assign add_ln130_8_fu_786_p2 = (xor_ln130_5_fu_780_p2 + tmp_2_reg_1271);
assign add_ln130_9_fu_842_p2 = ($signed(or_ln130_4_fu_832_p3) + $signed(32'd3395469782));
assign add_ln130_fu_642_p2 = (xor_ln130_1_fu_623_p2 + E_fu_120);
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
assign icmp_ln128_fu_486_p2 = ((add_ln128_fu_480_p2 < 7'd80) ? 1'b1 : 1'b0);
assign lshr_ln130_10_fu_1030_p4 = {{temp_3_reg_1434[31:2]}};
assign lshr_ln130_14_fu_1104_p4 = {{temp_5_fu_1022_p2[31:2]}};
assign lshr_ln130_3_fu_697_p4 = {{B_1_fu_132[31:2]}};
assign lshr_ln130_8_fu_905_p4 = {{temp_3_reg_1434[31:27]}};
assign lshr_ln130_9_fu_990_p4 = {{temp_2_reg_1411[31:2]}};
assign lshr_ln3_fu_607_p4 = {{B_1_fu_132[31:27]}};
assign or_ln130_1_fu_1137_p3 = {{trunc_ln130_12_reg_1485}, {lshr_ln130_11_reg_1490}};
assign or_ln130_2_fu_745_p3 = {{trunc_ln130_2_reg_1331}, {lshr_ln130_2_reg_1336}};
assign or_ln130_3_fu_1192_p3 = {{trunc_ln130_14_reg_1505}, {lshr_ln130_13_reg_1510}};
assign or_ln130_4_fu_832_p3 = {{trunc_ln130_4_reg_1369}, {lshr_ln130_4_reg_1374}};
assign or_ln130_6_fu_868_p3 = {{trunc_ln130_6_reg_1419}, {lshr_ln130_6_reg_1424}};
assign or_ln130_8_fu_923_p3 = {{trunc_ln130_8_fu_902_p1}, {lshr_ln130_8_fu_905_p4}};
assign or_ln130_s_fu_970_p3 = {{trunc_ln130_10_reg_1455}, {lshr_ln130_s_reg_1460}};
assign or_ln3_fu_629_p3 = {{trunc_ln130_fu_603_p1}, {lshr_ln3_fu_607_p4}};
assign temp_1_fu_756_p2 = (add_ln130_5_fu_751_p2 + or_ln130_2_fu_745_p3);
assign temp_2_fu_848_p2 = (add_ln130_9_fu_842_p2 + add_ln130_10_fu_838_p2);
assign temp_3_fu_889_p2 = (add_ln130_14_reg_1429 + add_ln130_12_fu_885_p2);
assign temp_43_out = temp_2_reg_1411;
assign temp_44_out = (add_ln130_14_reg_1429 + add_ln130_12_fu_885_p2);
assign temp_4_fu_936_p2 = (add_ln130_16_fu_931_p2 + or_ln130_8_fu_923_p3);
assign temp_5_fu_1022_p2 = (add_ln130_22_reg_1475 + add_ln130_20_fu_1017_p2);
assign temp_6_fu_1148_p2 = (add_ln130_25_fu_1143_p2 + or_ln130_1_fu_1137_p3);
assign temp_7_fu_1203_p2 = (add_ln130_29_fu_1198_p2 + or_ln130_3_fu_1192_p3);
assign temp_fu_648_p2 = (add_ln130_fu_642_p2 + add_ln130_2_fu_637_p2);
assign tmp_1_fu_396_p11 = 'bx;
assign tmp_2_fu_424_p11 = 'bx;
assign tmp_3_fu_452_p11 = 'bx;
assign tmp_4_fu_492_p9 = 'bx;
assign tmp_5_fu_516_p9 = 'bx;
assign tmp_6_fu_540_p9 = 'bx;
assign tmp_7_fu_564_p9 = 'bx;
assign tmp_s_fu_362_p11 = 'bx;
assign trunc_ln130_10_fu_942_p1 = temp_4_fu_936_p2[26:0];
assign trunc_ln130_11_fu_1027_p1 = temp_3_reg_1434[1:0];
assign trunc_ln130_12_fu_1047_p1 = temp_5_fu_1022_p2[26:0];
assign trunc_ln130_13_fu_956_p1 = temp_4_fu_936_p2[1:0];
assign trunc_ln130_14_fu_1154_p1 = temp_6_fu_1148_p2[26:0];
assign trunc_ln130_15_fu_1100_p1 = temp_5_fu_1022_p2[1:0];
assign trunc_ln130_1_fu_654_p1 = B_fu_124[1:0];
assign trunc_ln130_2_fu_668_p1 = temp_fu_648_p2[26:0];
assign trunc_ln130_3_fu_693_p1 = B_1_fu_132[1:0];
assign trunc_ln130_4_fu_762_p1 = temp_1_fu_756_p2[26:0];
assign trunc_ln130_5_fu_715_p1 = temp_fu_648_p2[1:0];
assign trunc_ln130_6_fu_854_p1 = temp_2_fu_848_p2[26:0];
assign trunc_ln130_7_fu_808_p1 = temp_1_fu_756_p2[1:0];
assign trunc_ln130_8_fu_902_p1 = temp_3_reg_1434[26:0];
assign trunc_ln130_9_fu_987_p1 = temp_2_reg_1411[1:0];
assign trunc_ln130_fu_603_p1 = B_1_fu_132[26:0];
assign xor_ln130_10_fu_1007_p2 = (temp_3_reg_1434 ^ C_6_reg_1443);
assign xor_ln130_11_fu_1011_p2 = (xor_ln130_10_fu_1007_p2 ^ C_7_fu_999_p3);
assign xor_ln130_12_fu_1061_p2 = (temp_4_reg_1450 ^ C_7_fu_999_p3);
assign xor_ln130_13_fu_1066_p2 = (xor_ln130_12_fu_1061_p2 ^ C_8_fu_1039_p3);
assign xor_ln130_14_fu_1088_p2 = (temp_5_fu_1022_p2 ^ C_8_fu_1039_p3);
assign xor_ln130_15_fu_1094_p2 = (xor_ln130_14_fu_1088_p2 ^ C_9_fu_1082_p3);
assign xor_ln130_1_fu_623_p2 = (xor_ln130_fu_617_p2 ^ E_2_fu_136);
assign xor_ln130_2_fu_735_p2 = (C_3_fu_729_p3 ^ A_reg_1305);
assign xor_ln130_3_fu_740_p2 = (xor_ln130_2_fu_735_p2 ^ C_reg_1310);
assign xor_ln130_4_fu_776_p2 = (temp_reg_1316 ^ C_4_reg_1346);
assign xor_ln130_5_fu_780_p2 = (xor_ln130_4_fu_776_p2 ^ C_3_fu_729_p3);
assign xor_ln130_6_fu_797_p2 = (temp_1_fu_756_p2 ^ C_4_reg_1346);
assign xor_ln130_7_fu_802_p2 = (xor_ln130_6_fu_797_p2 ^ C_5_fu_791_p3);
assign xor_ln130_8_fu_914_p2 = (temp_2_reg_1411 ^ C_5_reg_1384);
assign xor_ln130_9_fu_918_p2 = (xor_ln130_8_fu_914_p2 ^ C_6_reg_1443);
assign xor_ln130_fu_617_p2 = (E_1_fu_128 ^ B_fu_124);
endmodule 