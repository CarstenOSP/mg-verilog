
module sha_stream_sha_transform_Pipeline_trans_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A_26_reload,B_4_reload,C_21_reload,D_26_reload,E_4_reload,W_8_load_5,W_16_load_5,W_24_load_4,W_9_load_5,W_17_load_5,W_25_load_4,W_10_load_5,W_18_load_5,W_26_load_4,W_11_load_5,W_19_load_5,W_27_load_4,W_12_load_5,W_20_load_4,W_28_load_4,W_13_load_5,W_21_load_4,W_29_load_4,W_14_load_5,W_22_load_4,W_30_load_4,W_15_load_5,W_23_load_4,W_31_load_4,E_11_out,E_11_out_ap_vld,B_11_out,B_11_out_ap_vld,D_27_out,D_27_out_ap_vld,A_27_out,A_27_out_ap_vld,C_22_out,C_22_out_ap_vld);  
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
input  [31:0] A_26_reload;
input  [31:0] B_4_reload;
input  [31:0] C_21_reload;
input  [31:0] D_26_reload;
input  [31:0] E_4_reload;
input  [31:0] W_8_load_5;
input  [31:0] W_16_load_5;
input  [31:0] W_24_load_4;
input  [31:0] W_9_load_5;
input  [31:0] W_17_load_5;
input  [31:0] W_25_load_4;
input  [31:0] W_10_load_5;
input  [31:0] W_18_load_5;
input  [31:0] W_26_load_4;
input  [31:0] W_11_load_5;
input  [31:0] W_19_load_5;
input  [31:0] W_27_load_4;
input  [31:0] W_12_load_5;
input  [31:0] W_20_load_4;
input  [31:0] W_28_load_4;
input  [31:0] W_13_load_5;
input  [31:0] W_21_load_4;
input  [31:0] W_29_load_4;
input  [31:0] W_14_load_5;
input  [31:0] W_22_load_4;
input  [31:0] W_30_load_4;
input  [31:0] W_15_load_5;
input  [31:0] W_23_load_4;
input  [31:0] W_31_load_4;
output  [31:0] E_11_out;
output   E_11_out_ap_vld;
output  [31:0] B_11_out;
output   B_11_out_ap_vld;
output  [31:0] D_27_out;
output   D_27_out_ap_vld;
output  [31:0] A_27_out;
output   A_27_out_ap_vld;
output  [31:0] C_22_out;
output   C_22_out_ap_vld;
reg ap_idle;
reg E_11_out_ap_vld;
reg B_11_out_ap_vld;
reg D_27_out_ap_vld;
reg A_27_out_ap_vld;
reg C_22_out_ap_vld;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln124_reg_1374;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_subdone;
reg   [5:0] i_2_reg_1349;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] tmp_6_fu_402_p9;
reg   [31:0] tmp_6_reg_1354;
wire   [31:0] tmp_7_fu_422_p9;
reg   [31:0] tmp_7_reg_1359;
wire   [31:0] tmp_8_fu_442_p9;
reg   [31:0] tmp_8_reg_1364;
wire   [31:0] tmp_9_fu_462_p9;
reg   [31:0] tmp_9_reg_1369;
wire   [0:0] icmp_ln124_fu_500_p2;
wire   [31:0] tmp_s_fu_506_p9;
reg   [31:0] tmp_s_reg_1378;
wire   [31:0] tmp_10_fu_526_p9;
reg   [31:0] tmp_10_reg_1383;
wire   [31:0] tmp_11_fu_546_p9;
reg   [31:0] tmp_11_reg_1388;
wire   [31:0] tmp_12_fu_566_p9;
reg   [31:0] tmp_12_reg_1393;
reg   [31:0] D_reg_1398;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_reg_1403;
wire   [31:0] temp_fu_664_p2;
reg   [31:0] temp_reg_1408;
wire   [31:0] C_11_fu_684_p3;
reg   [31:0] C_11_reg_1413;
wire   [26:0] trunc_ln126_2_fu_692_p1;
reg   [26:0] trunc_ln126_2_reg_1420;
reg   [4:0] lshr_ln126_2_reg_1425;
wire   [31:0] or_ln126_4_fu_724_p2;
reg   [31:0] or_ln126_4_reg_1430;
wire   [31:0] C_12_fu_744_p3;
reg   [31:0] C_12_reg_1435;
wire   [1:0] trunc_ln126_5_fu_752_p1;
reg   [1:0] trunc_ln126_5_reg_1445;
reg   [29:0] lshr_ln126_5_reg_1450;
wire   [31:0] add_ln126_6_fu_777_p2;
reg   [31:0] add_ln126_6_reg_1455;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [26:0] trunc_ln126_4_fu_792_p1;
reg   [26:0] trunc_ln126_4_reg_1460;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [4:0] lshr_ln126_4_reg_1465;
wire   [31:0] C_13_fu_806_p3;
reg   [31:0] C_13_reg_1470;
wire   [31:0] or_ln126_9_fu_828_p2;
reg   [31:0] or_ln126_9_reg_1478;
wire   [1:0] trunc_ln126_7_fu_834_p1;
reg   [1:0] trunc_ln126_7_reg_1483;
reg   [29:0] lshr_ln126_7_reg_1488;
wire   [31:0] add_ln126_10_fu_859_p2;
reg   [31:0] add_ln126_10_reg_1493;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] temp_9_fu_889_p2;
reg   [31:0] temp_9_reg_1498;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [26:0] trunc_ln126_6_fu_894_p1;
reg   [26:0] trunc_ln126_6_reg_1506;
reg   [4:0] lshr_ln126_6_reg_1511;
wire   [31:0] add_ln126_14_fu_919_p2;
reg   [31:0] add_ln126_14_reg_1516;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] temp_10_fu_929_p2;
reg   [31:0] temp_10_reg_1521;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] C_14_fu_935_p3;
reg   [31:0] C_14_reg_1530;
wire   [31:0] temp_11_fu_997_p2;
reg   [31:0] temp_11_reg_1539;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [26:0] trunc_ln126_10_fu_1003_p1;
reg   [26:0] trunc_ln126_10_reg_1544;
reg   [4:0] lshr_ln126_s_reg_1549;
wire   [1:0] trunc_ln126_13_fu_1017_p1;
reg   [1:0] trunc_ln126_13_reg_1554;
reg   [29:0] lshr_ln126_12_reg_1559;
wire   [31:0] add_ln126_22_fu_1042_p2;
reg   [31:0] add_ln126_22_reg_1564;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] C_15_fu_1060_p3;
reg   [31:0] C_15_reg_1569;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [31:0] temp_12_fu_1094_p2;
reg   [31:0] temp_12_reg_1576;
wire   [26:0] trunc_ln126_12_fu_1099_p1;
reg   [26:0] trunc_ln126_12_reg_1581;
reg   [4:0] lshr_ln126_11_reg_1586;
wire   [31:0] add_ln126_26_fu_1151_p2;
reg   [31:0] add_ln126_26_reg_1591;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [26:0] trunc_ln126_14_fu_1214_p1;
reg   [26:0] trunc_ln126_14_reg_1596;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [4:0] lshr_ln126_13_reg_1601;
wire   [31:0] or_ln126_21_fu_1245_p2;
reg   [31:0] or_ln126_21_reg_1606;
wire   [31:0] add_ln126_30_fu_1276_p2;
reg   [31:0] add_ln126_30_reg_1611;
wire    ap_block_pp0_stage13_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [31:0] E_7_fu_132;
wire   [31:0] C_16_fu_1169_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_fu_136;
wire   [31:0] C_17_fu_1208_p3;
reg   [31:0] B_7_fu_140;
wire   [31:0] temp_13_fu_1203_p2;
reg   [31:0] E_12_fu_144;
wire   [31:0] C_10_fu_1127_p3;
reg   [31:0] B_fu_148;
wire   [31:0] temp_14_fu_1297_p2;
reg   [5:0] i_fu_152;
wire   [5:0] add_ln124_fu_1282_p2;
reg   [5:0] ap_sig_allocacmp_i_2;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage7_01001;
wire   [31:0] tmp_6_fu_402_p7;
wire   [4:0] trunc_ln7_fu_398_p1;
wire   [31:0] tmp_7_fu_422_p7;
wire   [31:0] tmp_8_fu_442_p7;
wire   [31:0] tmp_9_fu_462_p7;
wire   [2:0] tmp_13_fu_482_p4;
wire   [5:0] or_ln1_fu_492_p3;
wire   [31:0] tmp_s_fu_506_p7;
wire   [31:0] tmp_10_fu_526_p7;
wire   [31:0] tmp_11_fu_546_p7;
wire   [31:0] tmp_12_fu_566_p7;
wire   [31:0] or_ln126_fu_615_p2;
wire   [31:0] and_ln126_fu_621_p2;
wire   [31:0] and_ln126_1_fu_627_p2;
wire   [26:0] trunc_ln126_fu_601_p1;
wire   [4:0] lshr_ln5_fu_605_p4;
wire   [31:0] or_ln126_2_fu_639_p3;
wire   [31:0] add_ln126_1_fu_647_p2;
wire   [31:0] or_ln126_1_fu_633_p2;
wire   [31:0] add_ln126_fu_658_p2;
wire   [31:0] add_ln126_2_fu_652_p2;
wire   [1:0] trunc_ln126_1_fu_670_p1;
wire   [29:0] lshr_ln126_1_fu_674_p4;
wire   [31:0] or_ln126_3_fu_706_p2;
wire   [31:0] and_ln126_2_fu_712_p2;
wire   [31:0] and_ln126_3_fu_718_p2;
wire   [1:0] trunc_ln126_3_fu_730_p1;
wire   [29:0] lshr_ln126_3_fu_734_p4;
wire    ap_block_pp0_stage2;
wire   [31:0] or_ln126_6_fu_766_p3;
wire   [31:0] add_ln126_5_fu_772_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] add_ln126_4_fu_783_p2;
wire   [31:0] temp_8_fu_787_p2;
wire   [31:0] or_ln126_8_fu_812_p2;
wire   [31:0] and_ln126_6_fu_817_p2;
wire   [31:0] and_ln126_7_fu_823_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln126_s_fu_848_p3;
wire   [31:0] add_ln126_9_fu_854_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] or_ln126_5_fu_865_p2;
wire   [31:0] and_ln126_4_fu_869_p2;
wire   [31:0] and_ln126_5_fu_874_p2;
wire   [31:0] or_ln126_7_fu_878_p2;
wire   [31:0] add_ln126_8_fu_884_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln126_10_fu_908_p3;
wire   [31:0] add_ln126_13_fu_914_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] add_ln126_12_fu_925_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] or_ln126_11_fu_954_p2;
wire   [31:0] and_ln126_8_fu_958_p2;
wire   [31:0] and_ln126_9_fu_963_p2;
wire   [26:0] trunc_ln126_8_fu_942_p1;
wire   [4:0] lshr_ln126_8_fu_945_p4;
wire   [31:0] add_ln126_17_fu_981_p2;
wire   [31:0] or_ln126_13_fu_973_p3;
wire   [31:0] or_ln126_12_fu_967_p2;
wire   [31:0] add_ln126_16_fu_991_p2;
wire   [31:0] add_ln126_18_fu_985_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] or_ln126_16_fu_1031_p3;
wire   [31:0] add_ln126_21_fu_1037_p2;
wire    ap_block_pp0_stage10;
wire   [1:0] trunc_ln126_9_fu_1048_p1;
wire   [29:0] lshr_ln126_9_fu_1051_p4;
wire   [31:0] or_ln126_14_fu_1068_p2;
wire   [31:0] and_ln126_10_fu_1073_p2;
wire   [31:0] and_ln126_11_fu_1078_p2;
wire   [31:0] or_ln126_15_fu_1083_p2;
wire   [31:0] add_ln126_20_fu_1089_p2;
wire   [1:0] trunc_ln126_15_fu_1113_p1;
wire   [29:0] lshr_ln126_14_fu_1117_p4;
wire    ap_block_pp0_stage11;
wire   [31:0] or_ln126_19_fu_1140_p3;
wire   [31:0] add_ln126_25_fu_1146_p2;
wire    ap_block_pp0_stage12;
wire   [1:0] trunc_ln126_11_fu_1157_p1;
wire   [29:0] lshr_ln126_10_fu_1160_p4;
wire   [31:0] or_ln126_17_fu_1177_p2;
wire   [31:0] and_ln126_12_fu_1182_p2;
wire   [31:0] and_ln126_13_fu_1187_p2;
wire   [31:0] or_ln126_18_fu_1192_p2;
wire   [31:0] add_ln126_24_fu_1198_p2;
wire   [31:0] or_ln126_20_fu_1228_p2;
wire   [31:0] and_ln126_14_fu_1234_p2;
wire   [31:0] and_ln126_15_fu_1239_p2;
wire    ap_block_pp0_stage13;
wire   [31:0] or_ln126_22_fu_1266_p3;
wire   [31:0] add_ln126_29_fu_1272_p2;
wire   [31:0] add_ln126_28_fu_1292_p2;
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
wire   [4:0] tmp_6_fu_402_p1;
wire  signed [4:0] tmp_6_fu_402_p3;
wire  signed [4:0] tmp_6_fu_402_p5;
wire   [4:0] tmp_7_fu_422_p1;
wire  signed [4:0] tmp_7_fu_422_p3;
wire  signed [4:0] tmp_7_fu_422_p5;
wire   [4:0] tmp_8_fu_442_p1;
wire  signed [4:0] tmp_8_fu_442_p3;
wire  signed [4:0] tmp_8_fu_442_p5;
wire   [4:0] tmp_9_fu_462_p1;
wire  signed [4:0] tmp_9_fu_462_p3;
wire  signed [4:0] tmp_9_fu_462_p5;
wire   [4:0] tmp_s_fu_506_p1;
wire  signed [4:0] tmp_s_fu_506_p3;
wire  signed [4:0] tmp_s_fu_506_p5;
wire   [4:0] tmp_10_fu_526_p1;
wire  signed [4:0] tmp_10_fu_526_p3;
wire  signed [4:0] tmp_10_fu_526_p5;
wire   [4:0] tmp_11_fu_546_p1;
wire  signed [4:0] tmp_11_fu_546_p3;
wire  signed [4:0] tmp_11_fu_546_p5;
wire   [4:0] tmp_12_fu_566_p1;
wire  signed [4:0] tmp_12_fu_566_p3;
wire  signed [4:0] tmp_12_fu_566_p5;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_7_fu_132 = 32'd0;
#0 E_fu_136 = 32'd0;
#0 B_7_fu_140 = 32'd0;
#0 E_12_fu_144 = 32'd0;
#0 B_fu_148 = 32'd0;
#0 i_fu_152 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'h10 ),.din1_WIDTH( 32 ),.CASE2( 5'h18 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U122(.din0(W_8_load_5),.din1(W_16_load_5),.din2(W_24_load_4),.def(tmp_6_fu_402_p7),.sel(trunc_ln7_fu_398_p1),.dout(tmp_6_fu_402_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'h10 ),.din1_WIDTH( 32 ),.CASE2( 5'h18 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U123(.din0(W_9_load_5),.din1(W_17_load_5),.din2(W_25_load_4),.def(tmp_7_fu_422_p7),.sel(trunc_ln7_fu_398_p1),.dout(tmp_7_fu_422_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'h10 ),.din1_WIDTH( 32 ),.CASE2( 5'h18 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U124(.din0(W_10_load_5),.din1(W_18_load_5),.din2(W_26_load_4),.def(tmp_8_fu_442_p7),.sel(trunc_ln7_fu_398_p1),.dout(tmp_8_fu_442_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'h10 ),.din1_WIDTH( 32 ),.CASE2( 5'h18 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U125(.din0(W_11_load_5),.din1(W_19_load_5),.din2(W_27_load_4),.def(tmp_9_fu_462_p7),.sel(trunc_ln7_fu_398_p1),.dout(tmp_9_fu_462_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'h10 ),.din1_WIDTH( 32 ),.CASE2( 5'h18 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U126(.din0(W_12_load_5),.din1(W_20_load_4),.din2(W_28_load_4),.def(tmp_s_fu_506_p7),.sel(trunc_ln7_fu_398_p1),.dout(tmp_s_fu_506_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'h10 ),.din1_WIDTH( 32 ),.CASE2( 5'h18 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U127(.din0(W_13_load_5),.din1(W_21_load_4),.din2(W_29_load_4),.def(tmp_10_fu_526_p7),.sel(trunc_ln7_fu_398_p1),.dout(tmp_10_fu_526_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'h10 ),.din1_WIDTH( 32 ),.CASE2( 5'h18 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U128(.din0(W_14_load_5),.din1(W_22_load_4),.din2(W_30_load_4),.def(tmp_11_fu_546_p7),.sel(trunc_ln7_fu_398_p1),.dout(tmp_11_fu_546_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h8 ),.din0_WIDTH( 32 ),.CASE1( 5'h10 ),.din1_WIDTH( 32 ),.CASE2( 5'h18 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U129(.din0(W_15_load_5),.din1(W_23_load_4),.din2(W_31_load_4),.def(tmp_12_fu_566_p7),.sel(trunc_ln7_fu_398_p1),.dout(tmp_12_fu_566_p9));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_7_fu_140 <= B_4_reload;
    end else if (((icmp_ln124_reg_1374 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        B_7_fu_140 <= temp_13_fu_1203_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_fu_148 <= A_26_reload;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_fu_148 <= temp_14_fu_1297_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_12_fu_144 <= C_21_reload;
    end else if (((icmp_ln124_reg_1374 == 1'd0) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        E_12_fu_144 <= C_10_fu_1127_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_7_fu_132 <= E_4_reload;
    end else if (((icmp_ln124_reg_1374 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        E_7_fu_132 <= C_16_fu_1169_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_fu_136 <= D_26_reload;
    end else if (((icmp_ln124_reg_1374 == 1'd0) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        E_fu_136 <= C_17_fu_1208_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_152 <= 6'd40;
    end else if (((icmp_ln124_reg_1374 == 1'd0) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        i_fu_152 <= add_ln124_fu_1282_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_11_reg_1413 <= C_11_fu_684_p3;
        C_reg_1403 <= E_12_fu_144;
        D_reg_1398 <= E_fu_136;
        lshr_ln126_2_reg_1425 <= {{temp_fu_664_p2[31:27]}};
        lshr_ln126_5_reg_1450 <= {{temp_fu_664_p2[31:2]}};
        or_ln126_4_reg_1430 <= or_ln126_4_fu_724_p2;
        temp_reg_1408 <= temp_fu_664_p2;
        trunc_ln126_2_reg_1420 <= trunc_ln126_2_fu_692_p1;
        trunc_ln126_5_reg_1445 <= trunc_ln126_5_fu_752_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        C_12_reg_1435 <= C_12_fu_744_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        C_13_reg_1470 <= C_13_fu_806_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        C_14_reg_1530 <= C_14_fu_935_p3;
        temp_10_reg_1521 <= temp_10_fu_929_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        C_15_reg_1569 <= C_15_fu_1060_p3;
        lshr_ln126_11_reg_1586 <= {{temp_12_fu_1094_p2[31:27]}};
        temp_12_reg_1576 <= temp_12_fu_1094_p2;
        trunc_ln126_12_reg_1581 <= trunc_ln126_12_fu_1099_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln126_10_reg_1493 <= add_ln126_10_fu_859_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln126_14_reg_1516 <= add_ln126_14_fu_919_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln126_22_reg_1564 <= add_ln126_22_fu_1042_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln126_26_reg_1591 <= add_ln126_26_fu_1151_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln126_30_reg_1611 <= add_ln126_30_fu_1276_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln126_6_reg_1455 <= add_ln126_6_fu_777_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_2_reg_1349 <= ap_sig_allocacmp_i_2;
        icmp_ln124_reg_1374 <= icmp_ln124_fu_500_p2;
        tmp_10_reg_1383 <= tmp_10_fu_526_p9;
        tmp_11_reg_1388 <= tmp_11_fu_546_p9;
        tmp_12_reg_1393 <= tmp_12_fu_566_p9;
        tmp_6_reg_1354 <= tmp_6_fu_402_p9;
        tmp_7_reg_1359 <= tmp_7_fu_422_p9;
        tmp_8_reg_1364 <= tmp_8_fu_442_p9;
        tmp_9_reg_1369 <= tmp_9_fu_462_p9;
        tmp_s_reg_1378 <= tmp_s_fu_506_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        lshr_ln126_12_reg_1559 <= {{temp_11_fu_997_p2[31:2]}};
        lshr_ln126_s_reg_1549 <= {{temp_11_fu_997_p2[31:27]}};
        temp_11_reg_1539 <= temp_11_fu_997_p2;
        trunc_ln126_10_reg_1544 <= trunc_ln126_10_fu_1003_p1;
        trunc_ln126_13_reg_1554 <= trunc_ln126_13_fu_1017_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        lshr_ln126_13_reg_1601 <= {{temp_13_fu_1203_p2[31:27]}};
        or_ln126_21_reg_1606 <= or_ln126_21_fu_1245_p2;
        trunc_ln126_14_reg_1596 <= trunc_ln126_14_fu_1214_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln126_4_reg_1465 <= {{temp_8_fu_787_p2[31:27]}};
        lshr_ln126_7_reg_1488 <= {{temp_8_fu_787_p2[31:2]}};
        or_ln126_9_reg_1478 <= or_ln126_9_fu_828_p2;
        trunc_ln126_4_reg_1460 <= trunc_ln126_4_fu_792_p1;
        trunc_ln126_7_reg_1483 <= trunc_ln126_7_fu_834_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln126_6_reg_1511 <= {{temp_9_fu_889_p2[31:27]}};
        trunc_ln126_6_reg_1506 <= trunc_ln126_6_fu_894_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        temp_9_reg_1498 <= temp_9_fu_889_p2;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1374 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        A_27_out_ap_vld = 1'b1;
    end else begin
        A_27_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1374 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        B_11_out_ap_vld = 1'b1;
    end else begin
        B_11_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1374 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        C_22_out_ap_vld = 1'b1;
    end else begin
        C_22_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1374 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        D_27_out_ap_vld = 1'b1;
    end else begin
        D_27_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln124_reg_1374 == 1'd1) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_11_out_ap_vld = 1'b1;
    end else begin
        E_11_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln124_reg_1374 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_i_2 = i_fu_152;
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
assign A_27_out = (add_ln126_14_reg_1516 + add_ln126_12_fu_925_p2);
assign B_11_out = temp_9_reg_1498;
assign C_10_fu_1127_p3 = {{trunc_ln126_15_fu_1113_p1}, {lshr_ln126_14_fu_1117_p4}};
assign C_11_fu_684_p3 = {{trunc_ln126_1_fu_670_p1}, {lshr_ln126_1_fu_674_p4}};
assign C_12_fu_744_p3 = {{trunc_ln126_3_fu_730_p1}, {lshr_ln126_3_fu_734_p4}};
assign C_13_fu_806_p3 = {{trunc_ln126_5_reg_1445}, {lshr_ln126_5_reg_1450}};
assign C_14_fu_935_p3 = {{trunc_ln126_7_reg_1483}, {lshr_ln126_7_reg_1488}};
assign C_15_fu_1060_p3 = {{trunc_ln126_9_fu_1048_p1}, {lshr_ln126_9_fu_1051_p4}};
assign C_16_fu_1169_p3 = {{trunc_ln126_11_fu_1157_p1}, {lshr_ln126_10_fu_1160_p4}};
assign C_17_fu_1208_p3 = {{trunc_ln126_13_reg_1554}, {lshr_ln126_12_reg_1559}};
assign C_22_out = {{trunc_ln126_7_reg_1483}, {lshr_ln126_7_reg_1488}};
assign D_27_out = C_13_reg_1470;
assign E_11_out = C_12_reg_1435;
assign add_ln124_fu_1282_p2 = (i_2_reg_1349 + 6'd8);
assign add_ln126_10_fu_859_p2 = (or_ln126_s_fu_848_p3 + add_ln126_9_fu_854_p2);
assign add_ln126_12_fu_925_p2 = (tmp_9_reg_1369 + or_ln126_9_reg_1478);
assign add_ln126_13_fu_914_p2 = ($signed(32'd2400959708) + $signed(C_11_reg_1413));
assign add_ln126_14_fu_919_p2 = (or_ln126_10_fu_908_p3 + add_ln126_13_fu_914_p2);
assign add_ln126_16_fu_991_p2 = (or_ln126_13_fu_973_p3 + or_ln126_12_fu_967_p2);
assign add_ln126_17_fu_981_p2 = (C_12_reg_1435 + tmp_s_reg_1378);
assign add_ln126_18_fu_985_p2 = ($signed(add_ln126_17_fu_981_p2) + $signed(32'd2400959708));
assign add_ln126_1_fu_647_p2 = ($signed(32'd2400959708) + $signed(tmp_6_reg_1354));
assign add_ln126_20_fu_1089_p2 = (or_ln126_15_fu_1083_p2 + tmp_10_reg_1383);
assign add_ln126_21_fu_1037_p2 = ($signed(32'd2400959708) + $signed(C_13_reg_1470));
assign add_ln126_22_fu_1042_p2 = (or_ln126_16_fu_1031_p3 + add_ln126_21_fu_1037_p2);
assign add_ln126_24_fu_1198_p2 = (tmp_11_reg_1388 + or_ln126_18_fu_1192_p2);
assign add_ln126_25_fu_1146_p2 = ($signed(32'd2400959708) + $signed(C_14_reg_1530));
assign add_ln126_26_fu_1151_p2 = (or_ln126_19_fu_1140_p3 + add_ln126_25_fu_1146_p2);
assign add_ln126_28_fu_1292_p2 = ($signed(C_15_reg_1569) + $signed(32'd2400959708));
assign add_ln126_29_fu_1272_p2 = (tmp_12_reg_1393 + or_ln126_21_reg_1606);
assign add_ln126_2_fu_652_p2 = (or_ln126_2_fu_639_p3 + add_ln126_1_fu_647_p2);
assign add_ln126_30_fu_1276_p2 = (or_ln126_22_fu_1266_p3 + add_ln126_29_fu_1272_p2);
assign add_ln126_4_fu_783_p2 = (or_ln126_4_reg_1430 + tmp_7_reg_1359);
assign add_ln126_5_fu_772_p2 = ($signed(32'd2400959708) + $signed(D_reg_1398));
assign add_ln126_6_fu_777_p2 = (or_ln126_6_fu_766_p3 + add_ln126_5_fu_772_p2);
assign add_ln126_8_fu_884_p2 = (tmp_8_reg_1364 + or_ln126_7_fu_878_p2);
assign add_ln126_9_fu_854_p2 = ($signed(32'd2400959708) + $signed(C_reg_1403));
assign add_ln126_fu_658_p2 = (or_ln126_1_fu_633_p2 + E_7_fu_132);
assign and_ln126_10_fu_1073_p2 = (temp_10_reg_1521 & or_ln126_14_fu_1068_p2);
assign and_ln126_11_fu_1078_p2 = (C_15_fu_1060_p3 & C_14_reg_1530);
assign and_ln126_12_fu_1182_p2 = (temp_11_reg_1539 & or_ln126_17_fu_1177_p2);
assign and_ln126_13_fu_1187_p2 = (C_16_fu_1169_p3 & C_15_reg_1569);
assign and_ln126_14_fu_1234_p2 = (temp_12_reg_1576 & or_ln126_20_fu_1228_p2);
assign and_ln126_15_fu_1239_p2 = (C_17_fu_1208_p3 & C_16_fu_1169_p3);
assign and_ln126_1_fu_627_p2 = (E_fu_136 & E_12_fu_144);
assign and_ln126_2_fu_712_p2 = (or_ln126_3_fu_706_p2 & B_fu_148);
assign and_ln126_3_fu_718_p2 = (E_12_fu_144 & C_11_fu_684_p3);
assign and_ln126_4_fu_869_p2 = (temp_reg_1408 & or_ln126_5_fu_865_p2);
assign and_ln126_5_fu_874_p2 = (C_12_reg_1435 & C_11_reg_1413);
assign and_ln126_6_fu_817_p2 = (temp_8_fu_787_p2 & or_ln126_8_fu_812_p2);
assign and_ln126_7_fu_823_p2 = (C_13_fu_806_p3 & C_12_reg_1435);
assign and_ln126_8_fu_958_p2 = (temp_9_reg_1498 & or_ln126_11_fu_954_p2);
assign and_ln126_9_fu_963_p2 = (C_14_reg_1530 & C_13_reg_1470);
assign and_ln126_fu_621_p2 = (or_ln126_fu_615_p2 & B_7_fu_140);
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
assign icmp_ln124_fu_500_p2 = ((or_ln1_fu_492_p3 == 6'd60) ? 1'b1 : 1'b0);
assign lshr_ln126_10_fu_1160_p4 = {{temp_10_reg_1521[31:2]}};
assign lshr_ln126_14_fu_1117_p4 = {{temp_12_fu_1094_p2[31:2]}};
assign lshr_ln126_1_fu_674_p4 = {{B_7_fu_140[31:2]}};
assign lshr_ln126_3_fu_734_p4 = {{B_fu_148[31:2]}};
assign lshr_ln126_8_fu_945_p4 = {{temp_10_reg_1521[31:27]}};
assign lshr_ln126_9_fu_1051_p4 = {{temp_9_reg_1498[31:2]}};
assign lshr_ln5_fu_605_p4 = {{B_fu_148[31:27]}};
assign or_ln126_10_fu_908_p3 = {{trunc_ln126_6_reg_1506}, {lshr_ln126_6_reg_1511}};
assign or_ln126_11_fu_954_p2 = (C_14_reg_1530 | C_13_reg_1470);
assign or_ln126_12_fu_967_p2 = (and_ln126_9_fu_963_p2 | and_ln126_8_fu_958_p2);
assign or_ln126_13_fu_973_p3 = {{trunc_ln126_8_fu_942_p1}, {lshr_ln126_8_fu_945_p4}};
assign or_ln126_14_fu_1068_p2 = (C_15_fu_1060_p3 | C_14_reg_1530);
assign or_ln126_15_fu_1083_p2 = (and_ln126_11_fu_1078_p2 | and_ln126_10_fu_1073_p2);
assign or_ln126_16_fu_1031_p3 = {{trunc_ln126_10_reg_1544}, {lshr_ln126_s_reg_1549}};
assign or_ln126_17_fu_1177_p2 = (C_16_fu_1169_p3 | C_15_reg_1569);
assign or_ln126_18_fu_1192_p2 = (and_ln126_13_fu_1187_p2 | and_ln126_12_fu_1182_p2);
assign or_ln126_19_fu_1140_p3 = {{trunc_ln126_12_reg_1581}, {lshr_ln126_11_reg_1586}};
assign or_ln126_1_fu_633_p2 = (and_ln126_fu_621_p2 | and_ln126_1_fu_627_p2);
assign or_ln126_20_fu_1228_p2 = (C_17_fu_1208_p3 | C_16_fu_1169_p3);
assign or_ln126_21_fu_1245_p2 = (and_ln126_15_fu_1239_p2 | and_ln126_14_fu_1234_p2);
assign or_ln126_22_fu_1266_p3 = {{trunc_ln126_14_reg_1596}, {lshr_ln126_13_reg_1601}};
assign or_ln126_2_fu_639_p3 = {{trunc_ln126_fu_601_p1}, {lshr_ln5_fu_605_p4}};
assign or_ln126_3_fu_706_p2 = (E_12_fu_144 | C_11_fu_684_p3);
assign or_ln126_4_fu_724_p2 = (and_ln126_3_fu_718_p2 | and_ln126_2_fu_712_p2);
assign or_ln126_5_fu_865_p2 = (C_12_reg_1435 | C_11_reg_1413);
assign or_ln126_6_fu_766_p3 = {{trunc_ln126_2_reg_1420}, {lshr_ln126_2_reg_1425}};
assign or_ln126_7_fu_878_p2 = (and_ln126_5_fu_874_p2 | and_ln126_4_fu_869_p2);
assign or_ln126_8_fu_812_p2 = (C_13_fu_806_p3 | C_12_reg_1435);
assign or_ln126_9_fu_828_p2 = (and_ln126_7_fu_823_p2 | and_ln126_6_fu_817_p2);
assign or_ln126_fu_615_p2 = (E_fu_136 | E_12_fu_144);
assign or_ln126_s_fu_848_p3 = {{trunc_ln126_4_reg_1460}, {lshr_ln126_4_reg_1465}};
assign or_ln1_fu_492_p3 = {{tmp_13_fu_482_p4}, {3'd4}};
assign temp_10_fu_929_p2 = (add_ln126_14_reg_1516 + add_ln126_12_fu_925_p2);
assign temp_11_fu_997_p2 = (add_ln126_16_fu_991_p2 + add_ln126_18_fu_985_p2);
assign temp_12_fu_1094_p2 = (add_ln126_22_reg_1564 + add_ln126_20_fu_1089_p2);
assign temp_13_fu_1203_p2 = (add_ln126_26_reg_1591 + add_ln126_24_fu_1198_p2);
assign temp_14_fu_1297_p2 = (add_ln126_30_reg_1611 + add_ln126_28_fu_1292_p2);
assign temp_8_fu_787_p2 = (add_ln126_6_reg_1455 + add_ln126_4_fu_783_p2);
assign temp_9_fu_889_p2 = (add_ln126_10_reg_1493 + add_ln126_8_fu_884_p2);
assign temp_fu_664_p2 = (add_ln126_fu_658_p2 + add_ln126_2_fu_652_p2);
assign tmp_10_fu_526_p7 = 'bx;
assign tmp_11_fu_546_p7 = 'bx;
assign tmp_12_fu_566_p7 = 'bx;
assign tmp_13_fu_482_p4 = {{ap_sig_allocacmp_i_2[5:3]}};
assign tmp_6_fu_402_p7 = 'bx;
assign tmp_7_fu_422_p7 = 'bx;
assign tmp_8_fu_442_p7 = 'bx;
assign tmp_9_fu_462_p7 = 'bx;
assign tmp_s_fu_506_p7 = 'bx;
assign trunc_ln126_10_fu_1003_p1 = temp_11_fu_997_p2[26:0];
assign trunc_ln126_11_fu_1157_p1 = temp_10_reg_1521[1:0];
assign trunc_ln126_12_fu_1099_p1 = temp_12_fu_1094_p2[26:0];
assign trunc_ln126_13_fu_1017_p1 = temp_11_fu_997_p2[1:0];
assign trunc_ln126_14_fu_1214_p1 = temp_13_fu_1203_p2[26:0];
assign trunc_ln126_15_fu_1113_p1 = temp_12_fu_1094_p2[1:0];
assign trunc_ln126_1_fu_670_p1 = B_7_fu_140[1:0];
assign trunc_ln126_2_fu_692_p1 = temp_fu_664_p2[26:0];
assign trunc_ln126_3_fu_730_p1 = B_fu_148[1:0];
assign trunc_ln126_4_fu_792_p1 = temp_8_fu_787_p2[26:0];
assign trunc_ln126_5_fu_752_p1 = temp_fu_664_p2[1:0];
assign trunc_ln126_6_fu_894_p1 = temp_9_fu_889_p2[26:0];
assign trunc_ln126_7_fu_834_p1 = temp_8_fu_787_p2[1:0];
assign trunc_ln126_8_fu_942_p1 = temp_10_reg_1521[26:0];
assign trunc_ln126_9_fu_1048_p1 = temp_9_reg_1498[1:0];
assign trunc_ln126_fu_601_p1 = B_fu_148[26:0];
assign trunc_ln7_fu_398_p1 = ap_sig_allocacmp_i_2[4:0];
endmodule 
