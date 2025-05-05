module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_31_reload,B_6_reload,C_27_reload,D_31_reload,E_6_reload,W_56_reload,W_64_reload,W_72_reload,W_57_reload,W_65_reload,W_73_reload,W_58_reload,W_66_reload,W_74_reload,W_59_reload,W_67_reload,W_75_reload,W_60_reload,W_68_reload,W_76_reload,W_61_reload,W_69_reload,W_77_reload,W_62_reload,W_70_reload,W_78_reload,W_63_reload,W_71_reload,W_79_reload,E_31_out,E_31_out_ap_vld,B_31_out,B_31_out_ap_vld,D_35_out,D_35_out_ap_vld,A_35_out,A_35_out_ap_vld,C_39_out,C_39_out_ap_vld); 
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
input  [31:0] A_31_reload;
input  [31:0] B_6_reload;
input  [31:0] C_27_reload;
input  [31:0] D_31_reload;
input  [31:0] E_6_reload;
input  [31:0] W_56_reload;
input  [31:0] W_64_reload;
input  [31:0] W_72_reload;
input  [31:0] W_57_reload;
input  [31:0] W_65_reload;
input  [31:0] W_73_reload;
input  [31:0] W_58_reload;
input  [31:0] W_66_reload;
input  [31:0] W_74_reload;
input  [31:0] W_59_reload;
input  [31:0] W_67_reload;
input  [31:0] W_75_reload;
input  [31:0] W_60_reload;
input  [31:0] W_68_reload;
input  [31:0] W_76_reload;
input  [31:0] W_61_reload;
input  [31:0] W_69_reload;
input  [31:0] W_77_reload;
input  [31:0] W_62_reload;
input  [31:0] W_70_reload;
input  [31:0] W_78_reload;
input  [31:0] W_63_reload;
input  [31:0] W_71_reload;
input  [31:0] W_79_reload;
output  [31:0] E_31_out;
output   E_31_out_ap_vld;
output  [31:0] B_31_out;
output   B_31_out_ap_vld;
output  [31:0] D_35_out;
output   D_35_out_ap_vld;
output  [31:0] A_35_out;
output   A_35_out_ap_vld;
output  [31:0] C_39_out;
output   C_39_out_ap_vld;
reg ap_idle;
reg E_31_out_ap_vld;
reg B_31_out_ap_vld;
reg D_35_out_ap_vld;
reg A_35_out_ap_vld;
reg C_39_out_ap_vld;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln124_reg_1368;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_subdone;
reg   [5:0] i_2_reg_1343;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] tmp_s_fu_396_p9;
reg   [31:0] tmp_s_reg_1348;
wire   [31:0] tmp_8_fu_416_p9;
reg   [31:0] tmp_8_reg_1353;
wire   [31:0] tmp_9_fu_436_p9;
reg   [31:0] tmp_9_reg_1358;
wire   [31:0] tmp_10_fu_456_p9;
reg   [31:0] tmp_10_reg_1363;
wire   [0:0] icmp_ln124_fu_494_p2;
wire   [31:0] tmp_12_fu_500_p9;
reg   [31:0] tmp_12_reg_1372;
wire   [31:0] tmp_13_fu_520_p9;
reg   [31:0] tmp_13_reg_1377;
wire   [31:0] tmp_14_fu_540_p9;
reg   [31:0] tmp_14_reg_1382;
wire   [31:0] tmp_15_fu_560_p9;
reg   [31:0] tmp_15_reg_1387;
reg   [31:0] D_8_reg_1392;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_reg_1397;
wire   [31:0] temp_fu_658_p2;
reg   [31:0] temp_reg_1402;
wire   [31:0] C_11_fu_678_p3;
reg   [31:0] C_11_reg_1407;
wire   [26:0] trunc_ln126_2_fu_686_p1;
reg   [26:0] trunc_ln126_2_reg_1414;
reg   [4:0] lshr_ln126_2_reg_1419;
wire   [31:0] or_ln126_4_fu_718_p2;
reg   [31:0] or_ln126_4_reg_1424;
wire   [31:0] E_22_fu_738_p3;
reg   [31:0] E_22_reg_1429;
wire   [1:0] trunc_ln126_5_fu_746_p1;
reg   [1:0] trunc_ln126_5_reg_1439;
reg   [29:0] lshr_ln126_5_reg_1444;
wire   [31:0] add_ln126_6_fu_771_p2;
reg   [31:0] add_ln126_6_reg_1449;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [26:0] trunc_ln126_4_fu_786_p1;
reg   [26:0] trunc_ln126_4_reg_1454;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [4:0] lshr_ln126_4_reg_1459;
wire   [31:0] D_fu_800_p3;
reg   [31:0] D_reg_1464;
wire   [31:0] or_ln126_9_fu_822_p2;
reg   [31:0] or_ln126_9_reg_1472;
wire   [1:0] trunc_ln126_7_fu_828_p1;
reg   [1:0] trunc_ln126_7_reg_1477;
reg   [29:0] lshr_ln126_7_reg_1482;
wire   [31:0] add_ln126_10_fu_853_p2;
reg   [31:0] add_ln126_10_reg_1487;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] B_21_fu_883_p2;
reg   [31:0] B_21_reg_1492;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [26:0] trunc_ln126_6_fu_888_p1;
reg   [26:0] trunc_ln126_6_reg_1500;
reg   [4:0] lshr_ln126_6_reg_1505;
wire   [31:0] add_ln126_14_fu_913_p2;
reg   [31:0] add_ln126_14_reg_1510;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] A_fu_923_p2;
reg   [31:0] A_reg_1515;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] C_12_fu_929_p3;
reg   [31:0] C_12_reg_1524;
wire   [31:0] temp_10_fu_991_p2;
reg   [31:0] temp_10_reg_1533;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [26:0] trunc_ln126_10_fu_997_p1;
reg   [26:0] trunc_ln126_10_reg_1538;
reg   [4:0] lshr_ln126_s_reg_1543;
wire   [1:0] trunc_ln126_13_fu_1011_p1;
reg   [1:0] trunc_ln126_13_reg_1548;
reg   [29:0] lshr_ln126_12_reg_1553;
wire   [31:0] add_ln126_22_fu_1036_p2;
reg   [31:0] add_ln126_22_reg_1558;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] C_13_fu_1054_p3;
reg   [31:0] C_13_reg_1563;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] temp_11_fu_1088_p2;
reg   [31:0] temp_11_reg_1570;
wire   [26:0] trunc_ln126_12_fu_1093_p1;
reg   [26:0] trunc_ln126_12_reg_1575;
reg   [4:0] lshr_ln126_11_reg_1580;
wire   [31:0] add_ln126_26_fu_1145_p2;
reg   [31:0] add_ln126_26_reg_1585;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [26:0] trunc_ln126_14_fu_1208_p1;
reg   [26:0] trunc_ln126_14_reg_1590;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [4:0] lshr_ln126_13_reg_1595;
wire   [31:0] or_ln126_21_fu_1239_p2;
reg   [31:0] or_ln126_21_reg_1600;
wire   [31:0] add_ln126_30_fu_1270_p2;
reg   [31:0] add_ln126_30_reg_1605;
wire    ap_block_pp0_stage13_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [31:0] E_11_fu_130;
wire   [31:0] C_14_fu_1163_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_fu_134;
wire   [31:0] C_15_fu_1202_p3;
reg   [31:0] B_fu_138;
wire   [31:0] temp_12_fu_1197_p2;
reg   [31:0] E_12_fu_142;
wire   [31:0] C_10_fu_1121_p3;
reg   [31:0] B_11_fu_146;
wire   [31:0] temp_13_fu_1291_p2;
reg   [5:0] i_fu_150;
wire   [5:0] add_ln124_fu_1276_p2;
reg   [5:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage7_01001;
wire   [31:0] tmp_s_fu_396_p7;
wire   [31:0] tmp_8_fu_416_p7;
wire   [31:0] tmp_9_fu_436_p7;
wire   [31:0] tmp_10_fu_456_p7;
wire   [2:0] tmp_11_fu_476_p4;
wire   [5:0] or_ln1_fu_486_p3;
wire   [31:0] tmp_12_fu_500_p7;
wire   [31:0] tmp_13_fu_520_p7;
wire   [31:0] tmp_14_fu_540_p7;
wire   [31:0] tmp_15_fu_560_p7;
wire   [31:0] or_ln126_fu_609_p2;
wire   [31:0] and_ln126_fu_615_p2;
wire   [31:0] and_ln126_1_fu_621_p2;
wire   [26:0] trunc_ln126_fu_595_p1;
wire   [4:0] lshr_ln2_fu_599_p4;
wire   [31:0] or_ln126_2_fu_633_p3;
wire   [31:0] add_ln126_1_fu_641_p2;
wire   [31:0] or_ln126_1_fu_627_p2;
wire   [31:0] add_ln126_fu_652_p2;
wire   [31:0] add_ln126_2_fu_646_p2;
wire   [1:0] trunc_ln126_1_fu_664_p1;
wire   [29:0] lshr_ln126_1_fu_668_p4;
wire   [31:0] or_ln126_3_fu_700_p2;
wire   [31:0] and_ln126_2_fu_706_p2;
wire   [31:0] and_ln126_3_fu_712_p2;
wire   [1:0] trunc_ln126_3_fu_724_p1;
wire   [29:0] lshr_ln126_3_fu_728_p4;
wire    ap_block_pp0_stage2;
wire   [31:0] or_ln126_6_fu_760_p3;
wire   [31:0] add_ln126_5_fu_766_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln126_4_fu_777_p2;
wire   [31:0] temp_9_fu_781_p2;
wire   [31:0] or_ln126_8_fu_806_p2;
wire   [31:0] and_ln126_6_fu_811_p2;
wire   [31:0] and_ln126_7_fu_817_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln126_s_fu_842_p3;
wire   [31:0] add_ln126_9_fu_848_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln126_5_fu_859_p2;
wire   [31:0] and_ln126_4_fu_863_p2;
wire   [31:0] and_ln126_5_fu_868_p2;
wire   [31:0] or_ln126_7_fu_872_p2;
wire   [31:0] add_ln126_8_fu_878_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln126_10_fu_902_p3;
wire   [31:0] add_ln126_13_fu_908_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] add_ln126_12_fu_919_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] or_ln126_11_fu_948_p2;
wire   [31:0] and_ln126_8_fu_952_p2;
wire   [31:0] and_ln126_9_fu_957_p2;
wire   [26:0] trunc_ln126_8_fu_936_p1;
wire   [4:0] lshr_ln126_8_fu_939_p4;
wire   [31:0] add_ln126_17_fu_975_p2;
wire   [31:0] or_ln126_13_fu_967_p3;
wire   [31:0] or_ln126_12_fu_961_p2;
wire   [31:0] add_ln126_16_fu_985_p2;
wire   [31:0] add_ln126_18_fu_979_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] or_ln126_16_fu_1025_p3;
wire   [31:0] add_ln126_21_fu_1031_p2;
wire    ap_block_pp0_stage10;
wire   [1:0] trunc_ln126_9_fu_1042_p1;
wire   [29:0] lshr_ln126_9_fu_1045_p4;
wire   [31:0] or_ln126_14_fu_1062_p2;
wire   [31:0] and_ln126_10_fu_1067_p2;
wire   [31:0] and_ln126_11_fu_1072_p2;
wire   [31:0] or_ln126_15_fu_1077_p2;
wire   [31:0] add_ln126_20_fu_1083_p2;
wire   [1:0] trunc_ln126_15_fu_1107_p1;
wire   [29:0] lshr_ln126_14_fu_1111_p4;
wire    ap_block_pp0_stage11;
wire   [31:0] or_ln126_19_fu_1134_p3;
wire   [31:0] add_ln126_25_fu_1140_p2;
wire    ap_block_pp0_stage12;
wire   [1:0] trunc_ln126_11_fu_1151_p1;
wire   [29:0] lshr_ln126_10_fu_1154_p4;
wire   [31:0] or_ln126_17_fu_1171_p2;
wire   [31:0] and_ln126_12_fu_1176_p2;
wire   [31:0] and_ln126_13_fu_1181_p2;
wire   [31:0] or_ln126_18_fu_1186_p2;
wire   [31:0] add_ln126_24_fu_1192_p2;
wire   [31:0] or_ln126_20_fu_1222_p2;
wire   [31:0] and_ln126_14_fu_1228_p2;
wire   [31:0] and_ln126_15_fu_1233_p2;
wire    ap_block_pp0_stage13;
wire   [31:0] or_ln126_22_fu_1260_p3;
wire   [31:0] add_ln126_29_fu_1266_p2;
wire   [31:0] add_ln126_28_fu_1286_p2;
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
wire  signed [5:0] tmp_s_fu_396_p1;
wire  signed [5:0] tmp_s_fu_396_p3;
wire  signed [5:0] tmp_s_fu_396_p5;
wire  signed [5:0] tmp_8_fu_416_p1;
wire  signed [5:0] tmp_8_fu_416_p3;
wire  signed [5:0] tmp_8_fu_416_p5;
wire  signed [5:0] tmp_9_fu_436_p1;
wire  signed [5:0] tmp_9_fu_436_p3;
wire  signed [5:0] tmp_9_fu_436_p5;
wire  signed [5:0] tmp_10_fu_456_p1;
wire  signed [5:0] tmp_10_fu_456_p3;
wire  signed [5:0] tmp_10_fu_456_p5;
wire  signed [5:0] tmp_12_fu_500_p1;
wire  signed [5:0] tmp_12_fu_500_p3;
wire  signed [5:0] tmp_12_fu_500_p5;
wire  signed [5:0] tmp_13_fu_520_p1;
wire  signed [5:0] tmp_13_fu_520_p3;
wire  signed [5:0] tmp_13_fu_520_p5;
wire  signed [5:0] tmp_14_fu_540_p1;
wire  signed [5:0] tmp_14_fu_540_p3;
wire  signed [5:0] tmp_14_fu_540_p5;
wire  signed [5:0] tmp_15_fu_560_p1;
wire  signed [5:0] tmp_15_fu_560_p3;
wire  signed [5:0] tmp_15_fu_560_p5;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_11_fu_130 = 32'd0;
#0 E_fu_134 = 32'd0;
#0 B_fu_138 = 32'd0;
#0 E_12_fu_142 = 32'd0;
#0 B_11_fu_146 = 32'd0;
#0 i_fu_150 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h30 ),.din1_WIDTH( 32 ),.CASE2( 6'h38 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_7_6_32_1_1_U170(.din0(W_56_reload),.din1(W_64_reload),.din2(W_72_reload),.def(tmp_s_fu_396_p7),.sel(ap_sig_allocacmp_i_2),.dout(tmp_s_fu_396_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h30 ),.din1_WIDTH( 32 ),.CASE2( 6'h38 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_7_6_32_1_1_U171(.din0(W_57_reload),.din1(W_65_reload),.din2(W_73_reload),.def(tmp_8_fu_416_p7),.sel(ap_sig_allocacmp_i_2),.dout(tmp_8_fu_416_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h30 ),.din1_WIDTH( 32 ),.CASE2( 6'h38 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_7_6_32_1_1_U172(.din0(W_58_reload),.din1(W_66_reload),.din2(W_74_reload),.def(tmp_9_fu_436_p7),.sel(ap_sig_allocacmp_i_2),.dout(tmp_9_fu_436_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h30 ),.din1_WIDTH( 32 ),.CASE2( 6'h38 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_7_6_32_1_1_U173(.din0(W_59_reload),.din1(W_67_reload),.din2(W_75_reload),.def(tmp_10_fu_456_p7),.sel(ap_sig_allocacmp_i_2),.dout(tmp_10_fu_456_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h30 ),.din1_WIDTH( 32 ),.CASE2( 6'h38 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_7_6_32_1_1_U174(.din0(W_60_reload),.din1(W_68_reload),.din2(W_76_reload),.def(tmp_12_fu_500_p7),.sel(ap_sig_allocacmp_i_2),.dout(tmp_12_fu_500_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h30 ),.din1_WIDTH( 32 ),.CASE2( 6'h38 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_7_6_32_1_1_U175(.din0(W_61_reload),.din1(W_69_reload),.din2(W_77_reload),.def(tmp_13_fu_520_p7),.sel(ap_sig_allocacmp_i_2),.dout(tmp_13_fu_520_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h30 ),.din1_WIDTH( 32 ),.CASE2( 6'h38 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_7_6_32_1_1_U176(.din0(W_62_reload),.din1(W_70_reload),.din2(W_78_reload),.def(tmp_14_fu_540_p7),.sel(ap_sig_allocacmp_i_2),.dout(tmp_14_fu_540_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_6_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 6'h28 ),.din0_WIDTH( 32 ),.CASE1( 6'h30 ),.din1_WIDTH( 32 ),.CASE2( 6'h38 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 6 ),.dout_WIDTH( 32 ))
sparsemux_7_6_32_1_1_U177(.din0(W_63_reload),.din1(W_71_reload),.din2(W_79_reload),.def(tmp_15_fu_560_p7),.sel(ap_sig_allocacmp_i_2),.dout(tmp_15_fu_560_p9));
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
            B_11_fu_146 <= A_31_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_11_fu_146 <= temp_13_fu_1291_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_fu_138 <= B_6_reload;
    end else if (((icmp_ln124_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        B_fu_138 <= temp_12_fu_1197_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_11_fu_130 <= E_6_reload;
    end else if (((icmp_ln124_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        E_11_fu_130 <= C_14_fu_1163_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_12_fu_142 <= C_27_reload;
    end else if (((icmp_ln124_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        E_12_fu_142 <= C_10_fu_1121_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_134 <= D_31_reload;
    end else if (((icmp_ln124_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        E_fu_134 <= C_15_fu_1202_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_150 <= 6'd40;
    end else if (((icmp_ln124_reg_1368 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        i_fu_150 <= add_ln124_fu_1276_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        A_reg_1515 <= A_fu_923_p2;
        C_12_reg_1524 <= C_12_fu_929_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_21_reg_1492 <= B_21_fu_883_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_11_reg_1407 <= C_11_fu_678_p3;
        C_reg_1397 <= E_12_fu_142;
        D_8_reg_1392 <= E_fu_134;
        lshr_ln126_2_reg_1419 <= {{temp_fu_658_p2[31:27]}};
        lshr_ln126_5_reg_1444 <= {{temp_fu_658_p2[31:2]}};
        or_ln126_4_reg_1424 <= or_ln126_4_fu_718_p2;
        temp_reg_1402 <= temp_fu_658_p2;
        trunc_ln126_2_reg_1414 <= trunc_ln126_2_fu_686_p1;
        trunc_ln126_5_reg_1439 <= trunc_ln126_5_fu_746_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        C_13_reg_1563 <= C_13_fu_1054_p3;
        lshr_ln126_11_reg_1580 <= {{temp_11_fu_1088_p2[31:27]}};
        temp_11_reg_1570 <= temp_11_fu_1088_p2;
        trunc_ln126_12_reg_1575 <= trunc_ln126_12_fu_1093_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        D_reg_1464 <= D_fu_800_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        E_22_reg_1429 <= E_22_fu_738_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln126_10_reg_1487 <= add_ln126_10_fu_853_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln126_14_reg_1510 <= add_ln126_14_fu_913_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln126_22_reg_1558 <= add_ln126_22_fu_1036_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln126_26_reg_1585 <= add_ln126_26_fu_1145_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln126_30_reg_1605 <= add_ln126_30_fu_1270_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln126_6_reg_1449 <= add_ln126_6_fu_771_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_reg_1343 <= ap_sig_allocacmp_i_2;
        icmp_ln124_reg_1368 <= icmp_ln124_fu_494_p2;
        tmp_10_reg_1363 <= tmp_10_fu_456_p9;
        tmp_12_reg_1372 <= tmp_12_fu_500_p9;
        tmp_13_reg_1377 <= tmp_13_fu_520_p9;
        tmp_14_reg_1382 <= tmp_14_fu_540_p9;
        tmp_15_reg_1387 <= tmp_15_fu_560_p9;
        tmp_8_reg_1353 <= tmp_8_fu_416_p9;
        tmp_9_reg_1358 <= tmp_9_fu_436_p9;
        tmp_s_reg_1348 <= tmp_s_fu_396_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        lshr_ln126_12_reg_1553 <= {{temp_10_fu_991_p2[31:2]}};
        lshr_ln126_s_reg_1543 <= {{temp_10_fu_991_p2[31:27]}};
        temp_10_reg_1533 <= temp_10_fu_991_p2;
        trunc_ln126_10_reg_1538 <= trunc_ln126_10_fu_997_p1;
        trunc_ln126_13_reg_1548 <= trunc_ln126_13_fu_1011_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        lshr_ln126_13_reg_1595 <= {{temp_12_fu_1197_p2[31:27]}};
        or_ln126_21_reg_1600 <= or_ln126_21_fu_1239_p2;
        trunc_ln126_14_reg_1590 <= trunc_ln126_14_fu_1208_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln126_4_reg_1459 <= {{temp_9_fu_781_p2[31:27]}};
        lshr_ln126_7_reg_1482 <= {{temp_9_fu_781_p2[31:2]}};
        or_ln126_9_reg_1472 <= or_ln126_9_fu_822_p2;
        trunc_ln126_4_reg_1454 <= trunc_ln126_4_fu_786_p1;
        trunc_ln126_7_reg_1477 <= trunc_ln126_7_fu_828_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln126_6_reg_1505 <= {{B_21_fu_883_p2[31:27]}};
        trunc_ln126_6_reg_1500 <= trunc_ln126_6_fu_888_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1368 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        A_35_out_ap_vld = 1'b1;
    end else begin
        A_35_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1368 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        B_31_out_ap_vld = 1'b1;
    end else begin
        B_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1368 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        C_39_out_ap_vld = 1'b1;
    end else begin
        C_39_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1368 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        D_35_out_ap_vld = 1'b1;
    end else begin
        D_35_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1368 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_31_out_ap_vld = 1'b1;
    end else begin
        E_31_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_1368 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_i_2 = 6'd40;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_150;
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
assign A_35_out = (add_ln126_14_reg_1510 + add_ln126_12_fu_919_p2);
assign A_fu_923_p2 = (add_ln126_14_reg_1510 + add_ln126_12_fu_919_p2);
assign B_21_fu_883_p2 = (add_ln126_10_reg_1487 + add_ln126_8_fu_878_p2);
assign B_31_out = B_21_reg_1492;
assign C_10_fu_1121_p3 = {{trunc_ln126_15_fu_1107_p1}, {lshr_ln126_14_fu_1111_p4}};
assign C_11_fu_678_p3 = {{trunc_ln126_1_fu_664_p1}, {lshr_ln126_1_fu_668_p4}};
assign C_12_fu_929_p3 = {{trunc_ln126_7_reg_1477}, {lshr_ln126_7_reg_1482}};
assign C_13_fu_1054_p3 = {{trunc_ln126_9_fu_1042_p1}, {lshr_ln126_9_fu_1045_p4}};
assign C_14_fu_1163_p3 = {{trunc_ln126_11_fu_1151_p1}, {lshr_ln126_10_fu_1154_p4}};
assign C_15_fu_1202_p3 = {{trunc_ln126_13_reg_1548}, {lshr_ln126_12_reg_1553}};
assign C_39_out = {{trunc_ln126_7_reg_1477}, {lshr_ln126_7_reg_1482}};
assign D_35_out = D_reg_1464;
assign D_fu_800_p3 = {{trunc_ln126_5_reg_1439}, {lshr_ln126_5_reg_1444}};
assign E_22_fu_738_p3 = {{trunc_ln126_3_fu_724_p1}, {lshr_ln126_3_fu_728_p4}};
assign E_31_out = E_22_reg_1429;
assign add_ln124_fu_1276_p2 = (i_2_reg_1343 + 6'd8);
assign add_ln126_10_fu_853_p2 = (or_ln126_s_fu_842_p3 + add_ln126_9_fu_848_p2);
assign add_ln126_12_fu_919_p2 = (tmp_10_reg_1363 + or_ln126_9_reg_1472);
assign add_ln126_13_fu_908_p2 = ($signed(32'd2400959708) + $signed(C_11_reg_1407));
assign add_ln126_14_fu_913_p2 = (or_ln126_10_fu_902_p3 + add_ln126_13_fu_908_p2);
assign add_ln126_16_fu_985_p2 = (or_ln126_13_fu_967_p3 + or_ln126_12_fu_961_p2);
assign add_ln126_17_fu_975_p2 = (E_22_reg_1429 + tmp_12_reg_1372);
assign add_ln126_18_fu_979_p2 = ($signed(add_ln126_17_fu_975_p2) + $signed(32'd2400959708));
assign add_ln126_1_fu_641_p2 = ($signed(32'd2400959708) + $signed(tmp_s_reg_1348));
assign add_ln126_20_fu_1083_p2 = (or_ln126_15_fu_1077_p2 + tmp_13_reg_1377);
assign add_ln126_21_fu_1031_p2 = ($signed(32'd2400959708) + $signed(D_reg_1464));
assign add_ln126_22_fu_1036_p2 = (or_ln126_16_fu_1025_p3 + add_ln126_21_fu_1031_p2);
assign add_ln126_24_fu_1192_p2 = (tmp_14_reg_1382 + or_ln126_18_fu_1186_p2);
assign add_ln126_25_fu_1140_p2 = ($signed(32'd2400959708) + $signed(C_12_reg_1524));
assign add_ln126_26_fu_1145_p2 = (or_ln126_19_fu_1134_p3 + add_ln126_25_fu_1140_p2);
assign add_ln126_28_fu_1286_p2 = ($signed(C_13_reg_1563) + $signed(32'd2400959708));
assign add_ln126_29_fu_1266_p2 = (tmp_15_reg_1387 + or_ln126_21_reg_1600);
assign add_ln126_2_fu_646_p2 = (or_ln126_2_fu_633_p3 + add_ln126_1_fu_641_p2);
assign add_ln126_30_fu_1270_p2 = (or_ln126_22_fu_1260_p3 + add_ln126_29_fu_1266_p2);
assign add_ln126_4_fu_777_p2 = (or_ln126_4_reg_1424 + tmp_8_reg_1353);
assign add_ln126_5_fu_766_p2 = ($signed(32'd2400959708) + $signed(D_8_reg_1392));
assign add_ln126_6_fu_771_p2 = (or_ln126_6_fu_760_p3 + add_ln126_5_fu_766_p2);
assign add_ln126_8_fu_878_p2 = (tmp_9_reg_1358 + or_ln126_7_fu_872_p2);
assign add_ln126_9_fu_848_p2 = ($signed(32'd2400959708) + $signed(C_reg_1397));
assign add_ln126_fu_652_p2 = (or_ln126_1_fu_627_p2 + E_11_fu_130);
assign and_ln126_10_fu_1067_p2 = (or_ln126_14_fu_1062_p2 & A_reg_1515);
assign and_ln126_11_fu_1072_p2 = (C_13_fu_1054_p3 & C_12_reg_1524);
assign and_ln126_12_fu_1176_p2 = (temp_10_reg_1533 & or_ln126_17_fu_1171_p2);
assign and_ln126_13_fu_1181_p2 = (C_14_fu_1163_p3 & C_13_reg_1563);
assign and_ln126_14_fu_1228_p2 = (temp_11_reg_1570 & or_ln126_20_fu_1222_p2);
assign and_ln126_15_fu_1233_p2 = (C_15_fu_1202_p3 & C_14_fu_1163_p3);
assign and_ln126_1_fu_621_p2 = (E_fu_134 & E_12_fu_142);
assign and_ln126_2_fu_706_p2 = (or_ln126_3_fu_700_p2 & B_11_fu_146);
assign and_ln126_3_fu_712_p2 = (E_12_fu_142 & C_11_fu_678_p3);
assign and_ln126_4_fu_863_p2 = (temp_reg_1402 & or_ln126_5_fu_859_p2);
assign and_ln126_5_fu_868_p2 = (E_22_reg_1429 & C_11_reg_1407);
assign and_ln126_6_fu_811_p2 = (temp_9_fu_781_p2 & or_ln126_8_fu_806_p2);
assign and_ln126_7_fu_817_p2 = (E_22_reg_1429 & D_fu_800_p3);
assign and_ln126_8_fu_952_p2 = (or_ln126_11_fu_948_p2 & B_21_reg_1492);
assign and_ln126_9_fu_957_p2 = (D_reg_1464 & C_12_reg_1524);
assign and_ln126_fu_615_p2 = (or_ln126_fu_609_p2 & B_fu_138);
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
assign icmp_ln124_fu_494_p2 = ((or_ln1_fu_486_p3 == 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln126_10_fu_1154_p4 = {{A_reg_1515[31:2]}};
assign lshr_ln126_14_fu_1111_p4 = {{temp_11_fu_1088_p2[31:2]}};
assign lshr_ln126_1_fu_668_p4 = {{B_fu_138[31:2]}};
assign lshr_ln126_3_fu_728_p4 = {{B_11_fu_146[31:2]}};
assign lshr_ln126_8_fu_939_p4 = {{A_reg_1515[31:27]}};
assign lshr_ln126_9_fu_1045_p4 = {{B_21_reg_1492[31:2]}};
assign lshr_ln2_fu_599_p4 = {{B_11_fu_146[31:27]}};
assign or_ln126_10_fu_902_p3 = {{trunc_ln126_6_reg_1500}, {lshr_ln126_6_reg_1505}};
assign or_ln126_11_fu_948_p2 = (D_reg_1464 | C_12_reg_1524);
assign or_ln126_12_fu_961_p2 = (and_ln126_9_fu_957_p2 | and_ln126_8_fu_952_p2);
assign or_ln126_13_fu_967_p3 = {{trunc_ln126_8_fu_936_p1}, {lshr_ln126_8_fu_939_p4}};
assign or_ln126_14_fu_1062_p2 = (C_13_fu_1054_p3 | C_12_reg_1524);
assign or_ln126_15_fu_1077_p2 = (and_ln126_11_fu_1072_p2 | and_ln126_10_fu_1067_p2);
assign or_ln126_16_fu_1025_p3 = {{trunc_ln126_10_reg_1538}, {lshr_ln126_s_reg_1543}};
assign or_ln126_17_fu_1171_p2 = (C_14_fu_1163_p3 | C_13_reg_1563);
assign or_ln126_18_fu_1186_p2 = (and_ln126_13_fu_1181_p2 | and_ln126_12_fu_1176_p2);
assign or_ln126_19_fu_1134_p3 = {{trunc_ln126_12_reg_1575}, {lshr_ln126_11_reg_1580}};
assign or_ln126_1_fu_627_p2 = (and_ln126_fu_615_p2 | and_ln126_1_fu_621_p2);
assign or_ln126_20_fu_1222_p2 = (C_15_fu_1202_p3 | C_14_fu_1163_p3);
assign or_ln126_21_fu_1239_p2 = (and_ln126_15_fu_1233_p2 | and_ln126_14_fu_1228_p2);
assign or_ln126_22_fu_1260_p3 = {{trunc_ln126_14_reg_1590}, {lshr_ln126_13_reg_1595}};
assign or_ln126_2_fu_633_p3 = {{trunc_ln126_fu_595_p1}, {lshr_ln2_fu_599_p4}};
assign or_ln126_3_fu_700_p2 = (E_12_fu_142 | C_11_fu_678_p3);
assign or_ln126_4_fu_718_p2 = (and_ln126_3_fu_712_p2 | and_ln126_2_fu_706_p2);
assign or_ln126_5_fu_859_p2 = (E_22_reg_1429 | C_11_reg_1407);
assign or_ln126_6_fu_760_p3 = {{trunc_ln126_2_reg_1414}, {lshr_ln126_2_reg_1419}};
assign or_ln126_7_fu_872_p2 = (and_ln126_5_fu_868_p2 | and_ln126_4_fu_863_p2);
assign or_ln126_8_fu_806_p2 = (E_22_reg_1429 | D_fu_800_p3);
assign or_ln126_9_fu_822_p2 = (and_ln126_7_fu_817_p2 | and_ln126_6_fu_811_p2);
assign or_ln126_fu_609_p2 = (E_fu_134 | E_12_fu_142);
assign or_ln126_s_fu_842_p3 = {{trunc_ln126_4_reg_1454}, {lshr_ln126_4_reg_1459}};
assign or_ln1_fu_486_p3 = {{tmp_11_fu_476_p4}, {3'd4}};
assign temp_10_fu_991_p2 = (add_ln126_16_fu_985_p2 + add_ln126_18_fu_979_p2);
assign temp_11_fu_1088_p2 = (add_ln126_22_reg_1558 + add_ln126_20_fu_1083_p2);
assign temp_12_fu_1197_p2 = (add_ln126_26_reg_1585 + add_ln126_24_fu_1192_p2);
assign temp_13_fu_1291_p2 = (add_ln126_30_reg_1605 + add_ln126_28_fu_1286_p2);
assign temp_9_fu_781_p2 = (add_ln126_6_reg_1449 + add_ln126_4_fu_777_p2);
assign temp_fu_658_p2 = (add_ln126_fu_652_p2 + add_ln126_2_fu_646_p2);
assign tmp_10_fu_456_p7 = 'bx;
assign tmp_11_fu_476_p4 = {{ap_sig_allocacmp_i_2[5:3]}};
assign tmp_12_fu_500_p7 = 'bx;
assign tmp_13_fu_520_p7 = 'bx;
assign tmp_14_fu_540_p7 = 'bx;
assign tmp_15_fu_560_p7 = 'bx;
assign tmp_8_fu_416_p7 = 'bx;
assign tmp_9_fu_436_p7 = 'bx;
assign tmp_s_fu_396_p7 = 'bx;
assign trunc_ln126_10_fu_997_p1 = temp_10_fu_991_p2[26:0];
assign trunc_ln126_11_fu_1151_p1 = A_reg_1515[1:0];
assign trunc_ln126_12_fu_1093_p1 = temp_11_fu_1088_p2[26:0];
assign trunc_ln126_13_fu_1011_p1 = temp_10_fu_991_p2[1:0];
assign trunc_ln126_14_fu_1208_p1 = temp_12_fu_1197_p2[26:0];
assign trunc_ln126_15_fu_1107_p1 = temp_11_fu_1088_p2[1:0];
assign trunc_ln126_1_fu_664_p1 = B_fu_138[1:0];
assign trunc_ln126_2_fu_686_p1 = temp_fu_658_p2[26:0];
assign trunc_ln126_3_fu_724_p1 = B_11_fu_146[1:0];
assign trunc_ln126_4_fu_786_p1 = temp_9_fu_781_p2[26:0];
assign trunc_ln126_5_fu_746_p1 = temp_fu_658_p2[1:0];
assign trunc_ln126_6_fu_888_p1 = B_21_fu_883_p2[26:0];
assign trunc_ln126_7_fu_828_p1 = temp_9_fu_781_p2[1:0];
assign trunc_ln126_8_fu_936_p1 = A_reg_1515[26:0];
assign trunc_ln126_9_fu_1042_p1 = B_21_reg_1492[1:0];
assign trunc_ln126_fu_595_p1 = B_11_fu_146[26:0];
endmodule 