module sha_stream_sha_transform_Pipeline_trans_lp3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,A,B,C,D,E,zext_ln104,zext_ln104_8,W_32_reload,zext_ln104_1,zext_ln104_9,W_33_reload,zext_ln104_2,zext_ln104_10,W_34_reload,zext_ln104_3,zext_ln104_11,W_35_reload,zext_ln104_4,zext_ln104_12,W_36_reload,zext_ln104_5,zext_ln104_13,W_37_reload,zext_ln104_6,zext_ln104_14,W_38_reload,zext_ln104_7,zext_ln100,W_39_reload,E_55_out,E_55_out_ap_vld,B_55_out,B_55_out_ap_vld,D_59_out,D_59_out_ap_vld,A_59_out,A_59_out_ap_vld,C_86_out,C_86_out_ap_vld); 
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
input  [30:0] zext_ln104;
input  [30:0] zext_ln104_8;
input  [31:0] W_32_reload;
input  [30:0] zext_ln104_1;
input  [30:0] zext_ln104_9;
input  [31:0] W_33_reload;
input  [30:0] zext_ln104_2;
input  [30:0] zext_ln104_10;
input  [31:0] W_34_reload;
input  [30:0] zext_ln104_3;
input  [30:0] zext_ln104_11;
input  [31:0] W_35_reload;
input  [30:0] zext_ln104_4;
input  [30:0] zext_ln104_12;
input  [31:0] W_36_reload;
input  [30:0] zext_ln104_5;
input  [30:0] zext_ln104_13;
input  [31:0] W_37_reload;
input  [30:0] zext_ln104_6;
input  [30:0] zext_ln104_14;
input  [31:0] W_38_reload;
input  [30:0] zext_ln104_7;
input  [30:0] zext_ln100;
input  [31:0] W_39_reload;
output  [31:0] E_55_out;
output   E_55_out_ap_vld;
output  [31:0] B_55_out;
output   B_55_out_ap_vld;
output  [31:0] D_59_out;
output   D_59_out_ap_vld;
output  [31:0] A_59_out;
output   A_59_out_ap_vld;
output  [31:0] C_86_out;
output   C_86_out_ap_vld;
reg ap_idle;
reg E_55_out_ap_vld;
reg B_55_out_ap_vld;
reg D_59_out_ap_vld;
reg A_59_out_ap_vld;
reg C_86_out_ap_vld;
(* fsm_encoding = "none" *) reg   [13:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln116_reg_1432;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_subdone;
reg   [4:0] i_reg_1407;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] tmp_15_fu_460_p9;
reg   [31:0] tmp_15_reg_1412;
wire   [31:0] tmp_16_fu_480_p9;
reg   [31:0] tmp_16_reg_1417;
wire   [31:0] tmp_17_fu_500_p9;
reg   [31:0] tmp_17_reg_1422;
wire   [31:0] tmp_18_fu_520_p9;
reg   [31:0] tmp_18_reg_1427;
wire   [0:0] icmp_ln116_fu_558_p2;
wire   [31:0] tmp_19_fu_564_p9;
reg   [31:0] tmp_19_reg_1436;
wire   [31:0] tmp_20_fu_584_p9;
reg   [31:0] tmp_20_reg_1441;
wire   [31:0] tmp_21_fu_604_p9;
reg   [31:0] tmp_21_reg_1446;
wire   [31:0] tmp_22_fu_624_p9;
reg   [31:0] tmp_22_reg_1451;
reg   [31:0] D_32_reg_1456;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] C_45_reg_1461;
reg   [31:0] A_32_reg_1467;
wire   [31:0] temp_fu_722_p2;
reg   [31:0] temp_reg_1473;
wire   [31:0] C_46_fu_742_p3;
reg   [31:0] C_46_reg_1479;
wire   [26:0] trunc_ln118_2_fu_750_p1;
reg   [26:0] trunc_ln118_2_reg_1486;
reg   [4:0] lshr_ln118_2_reg_1491;
wire   [31:0] E_61_fu_778_p3;
reg   [31:0] E_61_reg_1496;
wire   [31:0] D_33_fu_800_p3;
reg   [31:0] D_33_reg_1504;
wire   [31:0] add_ln118_6_fu_820_p2;
reg   [31:0] add_ln118_6_reg_1512;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] temp_37_fu_850_p2;
reg   [31:0] temp_37_reg_1517;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [26:0] trunc_ln118_4_fu_855_p1;
reg   [26:0] trunc_ln118_4_reg_1523;
reg   [4:0] lshr_ln118_4_reg_1528;
wire   [1:0] trunc_ln118_7_fu_869_p1;
reg   [1:0] trunc_ln118_7_reg_1533;
reg   [29:0] lshr_ln118_7_reg_1538;
wire   [31:0] add_ln118_10_fu_895_p2;
reg   [31:0] add_ln118_10_reg_1543;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] or_ln118_5_fu_914_p2;
reg   [31:0] or_ln118_5_reg_1548;
wire   [31:0] B_58_fu_945_p2;
reg   [31:0] B_58_reg_1553;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [26:0] trunc_ln118_6_fu_950_p1;
reg   [26:0] trunc_ln118_6_reg_1562;
reg   [4:0] lshr_ln118_6_reg_1567;
wire   [31:0] add_ln118_14_fu_976_p2;
reg   [31:0] add_ln118_14_reg_1572;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [31:0] A_33_fu_985_p2;
reg   [31:0] A_33_reg_1577;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] C_47_fu_991_p3;
reg   [31:0] C_47_reg_1587;
wire   [31:0] temp_38_fu_1054_p2;
reg   [31:0] temp_38_reg_1594;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [26:0] trunc_ln118_10_fu_1060_p1;
reg   [26:0] trunc_ln118_10_reg_1600;
reg   [4:0] lshr_ln118_s_reg_1605;
wire   [1:0] trunc_ln118_13_fu_1074_p1;
reg   [1:0] trunc_ln118_13_reg_1610;
reg   [29:0] lshr_ln118_12_reg_1615;
wire   [31:0] add_ln118_22_fu_1100_p2;
reg   [31:0] add_ln118_22_reg_1620;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [31:0] C_48_fu_1117_p3;
reg   [31:0] C_48_reg_1625;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
wire   [26:0] trunc_ln118_12_fu_1176_p1;
reg   [26:0] trunc_ln118_12_reg_1630;
reg   [4:0] lshr_ln118_11_reg_1635;
wire   [31:0] or_ln118_11_fu_1206_p2;
reg   [31:0] or_ln118_11_reg_1640;
wire   [31:0] or_ln118_13_fu_1236_p2;
reg   [31:0] or_ln118_13_reg_1645;
wire   [31:0] add_ln118_26_fu_1291_p2;
reg   [31:0] add_ln118_26_reg_1650;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [26:0] trunc_ln118_14_fu_1305_p1;
reg   [26:0] trunc_ln118_14_reg_1655;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [4:0] lshr_ln118_13_reg_1660;
wire   [31:0] add_ln118_30_fu_1336_p2;
reg   [31:0] add_ln118_30_reg_1665;
wire    ap_block_pp0_stage13_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [31:0] E_1_fu_130;
wire   [31:0] C_49_fu_1168_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage1;
reg   [31:0] E_50_fu_134;
wire   [31:0] C_50_fu_1212_p3;
reg   [31:0] E_51_fu_138;
wire   [31:0] C_9_fu_1256_p3;
reg   [31:0] B_1_fu_142;
wire   [31:0] temp_40_fu_1300_p2;
reg   [31:0] B_48_fu_146;
wire   [31:0] temp_41_fu_1355_p2;
reg   [4:0] i_1_fu_150;
wire   [4:0] add_ln116_fu_1341_p2;
reg   [4:0] ap_sig_allocacmp_i;
wire    ap_block_pp0_stage0;
wire    ap_block_pp0_stage7_01001;
wire   [31:0] tmp_15_fu_460_p2;
wire   [31:0] tmp_15_fu_460_p4;
wire   [31:0] tmp_15_fu_460_p7;
wire   [31:0] tmp_16_fu_480_p2;
wire   [31:0] tmp_16_fu_480_p4;
wire   [31:0] tmp_16_fu_480_p7;
wire   [31:0] tmp_17_fu_500_p2;
wire   [31:0] tmp_17_fu_500_p4;
wire   [31:0] tmp_17_fu_500_p7;
wire   [31:0] tmp_18_fu_520_p2;
wire   [31:0] tmp_18_fu_520_p4;
wire   [31:0] tmp_18_fu_520_p7;
wire   [1:0] tmp_s_fu_540_p4;
wire   [4:0] or_ln_fu_550_p3;
wire   [31:0] tmp_19_fu_564_p2;
wire   [31:0] tmp_19_fu_564_p4;
wire   [31:0] tmp_19_fu_564_p7;
wire   [31:0] tmp_20_fu_584_p2;
wire   [31:0] tmp_20_fu_584_p4;
wire   [31:0] tmp_20_fu_584_p7;
wire   [31:0] tmp_21_fu_604_p2;
wire   [31:0] tmp_21_fu_604_p4;
wire   [31:0] tmp_21_fu_604_p7;
wire   [31:0] tmp_22_fu_624_p2;
wire   [31:0] tmp_22_fu_624_p4;
wire   [31:0] tmp_22_fu_624_p7;
wire   [31:0] xor_ln118_fu_673_p2;
wire   [31:0] and_ln118_1_fu_685_p2;
wire   [31:0] and_ln118_fu_679_p2;
wire   [26:0] trunc_ln118_fu_659_p1;
wire   [4:0] lshr_ln_fu_663_p4;
wire   [31:0] add_ln118_1_fu_705_p2;
wire   [31:0] or_ln118_1_fu_697_p3;
wire   [31:0] or_ln118_fu_691_p2;
wire   [31:0] add_ln118_fu_716_p2;
wire   [31:0] add_ln118_2_fu_710_p2;
wire   [1:0] trunc_ln118_1_fu_728_p1;
wire   [29:0] lshr_ln118_1_fu_732_p4;
wire   [1:0] trunc_ln118_3_fu_764_p1;
wire   [29:0] lshr_ln118_3_fu_768_p4;
wire   [1:0] trunc_ln118_5_fu_786_p1;
wire   [29:0] lshr_ln118_5_fu_790_p4;
wire    ap_block_pp0_stage2;
wire   [31:0] or_ln118_4_fu_808_p3;
wire   [31:0] add_ln118_5_fu_814_p2;
wire    ap_block_pp0_stage3;
wire   [31:0] xor_ln118_1_fu_825_p2;
wire   [31:0] and_ln118_2_fu_830_p2;
wire   [31:0] and_ln118_3_fu_834_p2;
wire   [31:0] or_ln118_2_fu_839_p2;
wire   [31:0] add_ln118_4_fu_845_p2;
wire    ap_block_pp0_stage4;
wire   [31:0] or_ln118_7_fu_883_p3;
wire   [31:0] add_ln118_9_fu_889_p2;
wire   [31:0] xor_ln118_3_fu_900_p2;
wire   [31:0] and_ln118_6_fu_905_p2;
wire   [31:0] and_ln118_7_fu_909_p2;
wire    ap_block_pp0_stage5;
wire   [31:0] xor_ln118_2_fu_920_p2;
wire   [31:0] and_ln118_4_fu_925_p2;
wire   [31:0] and_ln118_5_fu_929_p2;
wire   [31:0] or_ln118_3_fu_934_p2;
wire   [31:0] add_ln118_8_fu_940_p2;
wire    ap_block_pp0_stage6;
wire   [31:0] or_ln118_s_fu_964_p3;
wire   [31:0] add_ln118_13_fu_970_p2;
wire    ap_block_pp0_stage7;
wire   [31:0] add_ln118_12_fu_981_p2;
wire    ap_block_pp0_stage8;
wire   [31:0] xor_ln118_4_fu_1010_p2;
wire   [31:0] and_ln118_8_fu_1015_p2;
wire   [31:0] and_ln118_9_fu_1019_p2;
wire   [26:0] trunc_ln118_8_fu_998_p1;
wire   [4:0] lshr_ln118_8_fu_1001_p4;
wire   [31:0] add_ln118_17_fu_1038_p2;
wire   [31:0] or_ln118_8_fu_1030_p3;
wire   [31:0] or_ln118_6_fu_1024_p2;
wire   [31:0] add_ln118_16_fu_1048_p2;
wire   [31:0] add_ln118_18_fu_1043_p2;
wire    ap_block_pp0_stage9;
wire   [31:0] or_ln118_10_fu_1088_p3;
wire   [31:0] add_ln118_21_fu_1094_p2;
wire    ap_block_pp0_stage10;
wire   [1:0] trunc_ln118_9_fu_1105_p1;
wire   [29:0] lshr_ln118_9_fu_1108_p4;
wire   [31:0] xor_ln118_5_fu_1125_p2;
wire   [31:0] and_ln118_10_fu_1130_p2;
wire   [31:0] and_ln118_11_fu_1135_p2;
wire   [31:0] or_ln118_9_fu_1140_p2;
wire   [31:0] add_ln118_20_fu_1146_p2;
wire   [1:0] trunc_ln118_11_fu_1156_p1;
wire   [29:0] lshr_ln118_10_fu_1159_p4;
wire   [31:0] temp_39_fu_1151_p2;
wire   [31:0] xor_ln118_6_fu_1190_p2;
wire   [31:0] and_ln118_12_fu_1195_p2;
wire   [31:0] and_ln118_13_fu_1200_p2;
wire   [31:0] xor_ln118_7_fu_1218_p2;
wire   [31:0] and_ln118_14_fu_1224_p2;
wire   [31:0] and_ln118_15_fu_1230_p2;
wire   [1:0] trunc_ln118_15_fu_1242_p1;
wire   [29:0] lshr_ln118_14_fu_1246_p4;
wire    ap_block_pp0_stage11;
wire   [31:0] or_ln118_12_fu_1279_p3;
wire   [31:0] add_ln118_25_fu_1285_p2;
wire    ap_block_pp0_stage12;
wire   [31:0] add_ln118_24_fu_1296_p2;
wire    ap_block_pp0_stage13;
wire   [31:0] or_ln118_14_fu_1324_p3;
wire   [31:0] add_ln118_29_fu_1330_p2;
wire   [31:0] add_ln118_28_fu_1351_p2;
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
wire   [4:0] tmp_15_fu_460_p1;
wire   [4:0] tmp_15_fu_460_p3;
wire  signed [4:0] tmp_15_fu_460_p5;
wire   [4:0] tmp_16_fu_480_p1;
wire   [4:0] tmp_16_fu_480_p3;
wire  signed [4:0] tmp_16_fu_480_p5;
wire   [4:0] tmp_17_fu_500_p1;
wire   [4:0] tmp_17_fu_500_p3;
wire  signed [4:0] tmp_17_fu_500_p5;
wire   [4:0] tmp_18_fu_520_p1;
wire   [4:0] tmp_18_fu_520_p3;
wire  signed [4:0] tmp_18_fu_520_p5;
wire   [4:0] tmp_19_fu_564_p1;
wire   [4:0] tmp_19_fu_564_p3;
wire  signed [4:0] tmp_19_fu_564_p5;
wire   [4:0] tmp_20_fu_584_p1;
wire   [4:0] tmp_20_fu_584_p3;
wire  signed [4:0] tmp_20_fu_584_p5;
wire   [4:0] tmp_21_fu_604_p1;
wire   [4:0] tmp_21_fu_604_p3;
wire  signed [4:0] tmp_21_fu_604_p5;
wire   [4:0] tmp_22_fu_624_p1;
wire   [4:0] tmp_22_fu_624_p3;
wire  signed [4:0] tmp_22_fu_624_p5;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 14'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 E_1_fu_130 = 32'd0;
#0 E_50_fu_134 = 32'd0;
#0 E_51_fu_138 = 32'd0;
#0 B_1_fu_142 = 32'd0;
#0 B_48_fu_146 = 32'd0;
#0 i_1_fu_150 = 5'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U103(.din0(tmp_15_fu_460_p2),.din1(tmp_15_fu_460_p4),.din2(W_32_reload),.def(tmp_15_fu_460_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_15_fu_460_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U104(.din0(tmp_16_fu_480_p2),.din1(tmp_16_fu_480_p4),.din2(W_33_reload),.def(tmp_16_fu_480_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_16_fu_480_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U105(.din0(tmp_17_fu_500_p2),.din1(tmp_17_fu_500_p4),.din2(W_34_reload),.def(tmp_17_fu_500_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_17_fu_500_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U106(.din0(tmp_18_fu_520_p2),.din1(tmp_18_fu_520_p4),.din2(W_35_reload),.def(tmp_18_fu_520_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_18_fu_520_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U107(.din0(tmp_19_fu_564_p2),.din1(tmp_19_fu_564_p4),.din2(W_36_reload),.def(tmp_19_fu_564_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_19_fu_564_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U108(.din0(tmp_20_fu_584_p2),.din1(tmp_20_fu_584_p4),.din2(W_37_reload),.def(tmp_20_fu_584_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_20_fu_584_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U109(.din0(tmp_21_fu_604_p2),.din1(tmp_21_fu_604_p4),.din2(W_38_reload),.def(tmp_21_fu_604_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_21_fu_604_p9));
(* dissolve_hierarchy = "yes" *) sha_stream_sparsemux_7_5_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 5'h0 ),.din0_WIDTH( 32 ),.CASE1( 5'h8 ),.din1_WIDTH( 32 ),.CASE2( 5'h10 ),.din2_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 5 ),.dout_WIDTH( 32 ))
sparsemux_7_5_32_1_1_U110(.din0(tmp_22_fu_624_p2),.din1(tmp_22_fu_624_p4),.din2(W_39_reload),.def(tmp_22_fu_624_p7),.sel(ap_sig_allocacmp_i),.dout(tmp_22_fu_624_p9));
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
        B_1_fu_142 <= B;
    end else if (((icmp_ln116_reg_1432 == 1'd1) & (1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        B_1_fu_142 <= temp_40_fu_1300_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            B_48_fu_146 <= A;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            B_48_fu_146 <= temp_41_fu_1355_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_1_fu_130 <= E;
    end else if (((icmp_ln116_reg_1432 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        E_1_fu_130 <= C_49_fu_1168_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_50_fu_134 <= D;
    end else if (((icmp_ln116_reg_1432 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        E_50_fu_134 <= C_50_fu_1212_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        E_51_fu_138 <= C;
    end else if (((icmp_ln116_reg_1432 == 1'd1) & (1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        E_51_fu_138 <= C_9_fu_1256_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_1_fu_150 <= 5'd0;
    end else if (((icmp_ln116_reg_1432 == 1'd1) & (1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        i_1_fu_150 <= add_ln116_fu_1341_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        A_32_reg_1467 <= B_48_fu_146;
        C_45_reg_1461 <= E_51_fu_138;
        C_46_reg_1479 <= C_46_fu_742_p3;
        D_32_reg_1456 <= E_50_fu_134;
        lshr_ln118_2_reg_1491 <= {{temp_fu_722_p2[31:27]}};
        temp_reg_1473 <= temp_fu_722_p2;
        trunc_ln118_2_reg_1486 <= trunc_ln118_2_fu_750_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        A_33_reg_1577 <= A_33_fu_985_p2;
        C_47_reg_1587 <= C_47_fu_991_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        B_58_reg_1553 <= B_58_fu_945_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        C_48_reg_1625 <= C_48_fu_1117_p3;
        lshr_ln118_11_reg_1635 <= {{temp_39_fu_1151_p2[31:27]}};
        or_ln118_11_reg_1640 <= or_ln118_11_fu_1206_p2;
        or_ln118_13_reg_1645 <= or_ln118_13_fu_1236_p2;
        trunc_ln118_12_reg_1630 <= trunc_ln118_12_fu_1176_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        D_33_reg_1504 <= D_33_fu_800_p3;
        E_61_reg_1496 <= E_61_fu_778_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln118_10_reg_1543 <= add_ln118_10_fu_895_p2;
        or_ln118_5_reg_1548 <= or_ln118_5_fu_914_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        add_ln118_14_reg_1572 <= add_ln118_14_fu_976_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        add_ln118_22_reg_1620 <= add_ln118_22_fu_1100_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        add_ln118_26_reg_1650 <= add_ln118_26_fu_1291_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        add_ln118_30_reg_1665 <= add_ln118_30_fu_1336_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln118_6_reg_1512 <= add_ln118_6_fu_820_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_reg_1407 <= ap_sig_allocacmp_i;
        icmp_ln116_reg_1432 <= icmp_ln116_fu_558_p2;
        tmp_15_reg_1412 <= tmp_15_fu_460_p9;
        tmp_16_reg_1417 <= tmp_16_fu_480_p9;
        tmp_17_reg_1422 <= tmp_17_fu_500_p9;
        tmp_18_reg_1427 <= tmp_18_fu_520_p9;
        tmp_19_reg_1436 <= tmp_19_fu_564_p9;
        tmp_20_reg_1441 <= tmp_20_fu_584_p9;
        tmp_21_reg_1446 <= tmp_21_fu_604_p9;
        tmp_22_reg_1451 <= tmp_22_fu_624_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        lshr_ln118_12_reg_1615 <= {{temp_38_fu_1054_p2[31:2]}};
        lshr_ln118_s_reg_1605 <= {{temp_38_fu_1054_p2[31:27]}};
        temp_38_reg_1594 <= temp_38_fu_1054_p2;
        trunc_ln118_10_reg_1600 <= trunc_ln118_10_fu_1060_p1;
        trunc_ln118_13_reg_1610 <= trunc_ln118_13_fu_1074_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        lshr_ln118_13_reg_1660 <= {{temp_40_fu_1300_p2[31:27]}};
        trunc_ln118_14_reg_1655 <= trunc_ln118_14_fu_1305_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        lshr_ln118_4_reg_1528 <= {{temp_37_fu_850_p2[31:27]}};
        lshr_ln118_7_reg_1538 <= {{temp_37_fu_850_p2[31:2]}};
        temp_37_reg_1517 <= temp_37_fu_850_p2;
        trunc_ln118_4_reg_1523 <= trunc_ln118_4_fu_855_p1;
        trunc_ln118_7_reg_1533 <= trunc_ln118_7_fu_869_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        lshr_ln118_6_reg_1567 <= {{B_58_fu_945_p2[31:27]}};
        trunc_ln118_6_reg_1562 <= trunc_ln118_6_fu_950_p1;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1432 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        A_59_out_ap_vld = 1'b1;
    end else begin
        A_59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1432 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        B_55_out_ap_vld = 1'b1;
    end else begin
        B_55_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1432 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        C_86_out_ap_vld = 1'b1;
    end else begin
        C_86_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1432 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        D_59_out_ap_vld = 1'b1;
    end else begin
        D_59_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (icmp_ln116_reg_1432 == 1'd0) & (1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        E_55_out_ap_vld = 1'b1;
    end else begin
        E_55_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln116_reg_1432 == 1'd0) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        ap_sig_allocacmp_i = i_1_fu_150;
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
assign A_33_fu_985_p2 = (add_ln118_14_reg_1572 + add_ln118_12_fu_981_p2);
assign A_59_out = (add_ln118_14_reg_1572 + add_ln118_12_fu_981_p2);
assign B_55_out = B_58_reg_1553;
assign B_58_fu_945_p2 = (add_ln118_10_reg_1543 + add_ln118_8_fu_940_p2);
assign C_46_fu_742_p3 = {{trunc_ln118_1_fu_728_p1}, {lshr_ln118_1_fu_732_p4}};
assign C_47_fu_991_p3 = {{trunc_ln118_7_reg_1533}, {lshr_ln118_7_reg_1538}};
assign C_48_fu_1117_p3 = {{trunc_ln118_9_fu_1105_p1}, {lshr_ln118_9_fu_1108_p4}};
assign C_49_fu_1168_p3 = {{trunc_ln118_11_fu_1156_p1}, {lshr_ln118_10_fu_1159_p4}};
assign C_50_fu_1212_p3 = {{trunc_ln118_13_reg_1610}, {lshr_ln118_12_reg_1615}};
assign C_86_out = {{trunc_ln118_7_reg_1533}, {lshr_ln118_7_reg_1538}};
assign C_9_fu_1256_p3 = {{trunc_ln118_15_fu_1242_p1}, {lshr_ln118_14_fu_1246_p4}};
assign D_33_fu_800_p3 = {{trunc_ln118_5_fu_786_p1}, {lshr_ln118_5_fu_790_p4}};
assign D_59_out = D_33_reg_1504;
assign E_55_out = E_61_reg_1496;
assign E_61_fu_778_p3 = {{trunc_ln118_3_fu_764_p1}, {lshr_ln118_3_fu_768_p4}};
assign add_ln116_fu_1341_p2 = (i_reg_1407 + 5'd8);
assign add_ln118_10_fu_895_p2 = (add_ln118_9_fu_889_p2 + C_45_reg_1461);
assign add_ln118_12_fu_981_p2 = (or_ln118_5_reg_1548 + tmp_18_reg_1427);
assign add_ln118_13_fu_970_p2 = (or_ln118_s_fu_964_p3 + 32'd1518500249);
assign add_ln118_14_fu_976_p2 = (add_ln118_13_fu_970_p2 + C_46_reg_1479);
assign add_ln118_16_fu_1048_p2 = (or_ln118_8_fu_1030_p3 + or_ln118_6_fu_1024_p2);
assign add_ln118_17_fu_1038_p2 = (tmp_19_reg_1436 + 32'd1518500249);
assign add_ln118_18_fu_1043_p2 = (add_ln118_17_fu_1038_p2 + E_61_reg_1496);
assign add_ln118_1_fu_705_p2 = (tmp_15_reg_1412 + 32'd1518500249);
assign add_ln118_20_fu_1146_p2 = (tmp_20_reg_1441 + or_ln118_9_fu_1140_p2);
assign add_ln118_21_fu_1094_p2 = (or_ln118_10_fu_1088_p3 + 32'd1518500249);
assign add_ln118_22_fu_1100_p2 = (add_ln118_21_fu_1094_p2 + D_33_reg_1504);
assign add_ln118_24_fu_1296_p2 = (or_ln118_11_reg_1640 + tmp_21_reg_1446);
assign add_ln118_25_fu_1285_p2 = (or_ln118_12_fu_1279_p3 + 32'd1518500249);
assign add_ln118_26_fu_1291_p2 = (add_ln118_25_fu_1285_p2 + C_47_reg_1587);
assign add_ln118_28_fu_1351_p2 = (C_48_reg_1625 + tmp_22_reg_1451);
assign add_ln118_29_fu_1330_p2 = (or_ln118_14_fu_1324_p3 + 32'd1518500249);
assign add_ln118_2_fu_710_p2 = (add_ln118_1_fu_705_p2 + or_ln118_1_fu_697_p3);
assign add_ln118_30_fu_1336_p2 = (add_ln118_29_fu_1330_p2 + or_ln118_13_reg_1645);
assign add_ln118_4_fu_845_p2 = (tmp_16_reg_1417 + or_ln118_2_fu_839_p2);
assign add_ln118_5_fu_814_p2 = (or_ln118_4_fu_808_p3 + 32'd1518500249);
assign add_ln118_6_fu_820_p2 = (add_ln118_5_fu_814_p2 + D_32_reg_1456);
assign add_ln118_8_fu_940_p2 = (or_ln118_3_fu_934_p2 + tmp_17_reg_1422);
assign add_ln118_9_fu_889_p2 = (or_ln118_7_fu_883_p3 + 32'd1518500249);
assign add_ln118_fu_716_p2 = (or_ln118_fu_691_p2 + E_1_fu_130);
assign and_ln118_10_fu_1130_p2 = (C_48_fu_1117_p3 & A_33_reg_1577);
assign and_ln118_11_fu_1135_p2 = (xor_ln118_5_fu_1125_p2 & C_47_reg_1587);
assign and_ln118_12_fu_1195_p2 = (temp_38_reg_1594 & C_49_fu_1168_p3);
assign and_ln118_13_fu_1200_p2 = (xor_ln118_6_fu_1190_p2 & C_48_fu_1117_p3);
assign and_ln118_14_fu_1224_p2 = (temp_39_fu_1151_p2 & C_50_fu_1212_p3);
assign and_ln118_15_fu_1230_p2 = (xor_ln118_7_fu_1218_p2 & C_49_fu_1168_p3);
assign and_ln118_1_fu_685_p2 = (xor_ln118_fu_673_p2 & E_50_fu_134);
assign and_ln118_2_fu_830_p2 = (C_46_reg_1479 & A_32_reg_1467);
assign and_ln118_3_fu_834_p2 = (xor_ln118_1_fu_825_p2 & C_45_reg_1461);
assign and_ln118_4_fu_925_p2 = (temp_reg_1473 & E_61_reg_1496);
assign and_ln118_5_fu_929_p2 = (xor_ln118_2_fu_920_p2 & C_46_reg_1479);
assign and_ln118_6_fu_905_p2 = (temp_37_reg_1517 & D_33_reg_1504);
assign and_ln118_7_fu_909_p2 = (xor_ln118_3_fu_900_p2 & E_61_reg_1496);
assign and_ln118_8_fu_1015_p2 = (C_47_reg_1587 & B_58_reg_1553);
assign and_ln118_9_fu_1019_p2 = (xor_ln118_4_fu_1010_p2 & D_33_reg_1504);
assign and_ln118_fu_679_p2 = (E_51_fu_138 & B_1_fu_142);
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
assign icmp_ln116_fu_558_p2 = ((or_ln_fu_550_p3 < 5'd20) ? 1'b1 : 1'b0);
assign lshr_ln118_10_fu_1159_p4 = {{A_33_reg_1577[31:2]}};
assign lshr_ln118_14_fu_1246_p4 = {{temp_39_fu_1151_p2[31:2]}};
assign lshr_ln118_1_fu_732_p4 = {{B_1_fu_142[31:2]}};
assign lshr_ln118_3_fu_768_p4 = {{B_48_fu_146[31:2]}};
assign lshr_ln118_5_fu_790_p4 = {{temp_fu_722_p2[31:2]}};
assign lshr_ln118_8_fu_1001_p4 = {{A_33_reg_1577[31:27]}};
assign lshr_ln118_9_fu_1108_p4 = {{B_58_reg_1553[31:2]}};
assign lshr_ln_fu_663_p4 = {{B_48_fu_146[31:27]}};
assign or_ln118_10_fu_1088_p3 = {{trunc_ln118_10_reg_1600}, {lshr_ln118_s_reg_1605}};
assign or_ln118_11_fu_1206_p2 = (and_ln118_13_fu_1200_p2 | and_ln118_12_fu_1195_p2);
assign or_ln118_12_fu_1279_p3 = {{trunc_ln118_12_reg_1630}, {lshr_ln118_11_reg_1635}};
assign or_ln118_13_fu_1236_p2 = (and_ln118_15_fu_1230_p2 | and_ln118_14_fu_1224_p2);
assign or_ln118_14_fu_1324_p3 = {{trunc_ln118_14_reg_1655}, {lshr_ln118_13_reg_1660}};
assign or_ln118_1_fu_697_p3 = {{trunc_ln118_fu_659_p1}, {lshr_ln_fu_663_p4}};
assign or_ln118_2_fu_839_p2 = (and_ln118_3_fu_834_p2 | and_ln118_2_fu_830_p2);
assign or_ln118_3_fu_934_p2 = (and_ln118_5_fu_929_p2 | and_ln118_4_fu_925_p2);
assign or_ln118_4_fu_808_p3 = {{trunc_ln118_2_reg_1486}, {lshr_ln118_2_reg_1491}};
assign or_ln118_5_fu_914_p2 = (and_ln118_7_fu_909_p2 | and_ln118_6_fu_905_p2);
assign or_ln118_6_fu_1024_p2 = (and_ln118_9_fu_1019_p2 | and_ln118_8_fu_1015_p2);
assign or_ln118_7_fu_883_p3 = {{trunc_ln118_4_reg_1523}, {lshr_ln118_4_reg_1528}};
assign or_ln118_8_fu_1030_p3 = {{trunc_ln118_8_fu_998_p1}, {lshr_ln118_8_fu_1001_p4}};
assign or_ln118_9_fu_1140_p2 = (and_ln118_11_fu_1135_p2 | and_ln118_10_fu_1130_p2);
assign or_ln118_fu_691_p2 = (and_ln118_fu_679_p2 | and_ln118_1_fu_685_p2);
assign or_ln118_s_fu_964_p3 = {{trunc_ln118_6_reg_1562}, {lshr_ln118_6_reg_1567}};
assign or_ln_fu_550_p3 = {{tmp_s_fu_540_p4}, {3'd4}};
assign temp_37_fu_850_p2 = (add_ln118_6_reg_1512 + add_ln118_4_fu_845_p2);
assign temp_38_fu_1054_p2 = (add_ln118_16_fu_1048_p2 + add_ln118_18_fu_1043_p2);
assign temp_39_fu_1151_p2 = (add_ln118_22_reg_1620 + add_ln118_20_fu_1146_p2);
assign temp_40_fu_1300_p2 = (add_ln118_26_reg_1650 + add_ln118_24_fu_1296_p2);
assign temp_41_fu_1355_p2 = (add_ln118_30_reg_1665 + add_ln118_28_fu_1351_p2);
assign temp_fu_722_p2 = (add_ln118_fu_716_p2 + add_ln118_2_fu_710_p2);
assign tmp_15_fu_460_p2 = zext_ln104;
assign tmp_15_fu_460_p4 = zext_ln104_8;
assign tmp_15_fu_460_p7 = 'bx;
assign tmp_16_fu_480_p2 = zext_ln104_1;
assign tmp_16_fu_480_p4 = zext_ln104_9;
assign tmp_16_fu_480_p7 = 'bx;
assign tmp_17_fu_500_p2 = zext_ln104_2;
assign tmp_17_fu_500_p4 = zext_ln104_10;
assign tmp_17_fu_500_p7 = 'bx;
assign tmp_18_fu_520_p2 = zext_ln104_3;
assign tmp_18_fu_520_p4 = zext_ln104_11;
assign tmp_18_fu_520_p7 = 'bx;
assign tmp_19_fu_564_p2 = zext_ln104_4;
assign tmp_19_fu_564_p4 = zext_ln104_12;
assign tmp_19_fu_564_p7 = 'bx;
assign tmp_20_fu_584_p2 = zext_ln104_5;
assign tmp_20_fu_584_p4 = zext_ln104_13;
assign tmp_20_fu_584_p7 = 'bx;
assign tmp_21_fu_604_p2 = zext_ln104_6;
assign tmp_21_fu_604_p4 = zext_ln104_14;
assign tmp_21_fu_604_p7 = 'bx;
assign tmp_22_fu_624_p2 = zext_ln104_7;
assign tmp_22_fu_624_p4 = zext_ln100;
assign tmp_22_fu_624_p7 = 'bx;
assign tmp_s_fu_540_p4 = {{ap_sig_allocacmp_i[4:3]}};
assign trunc_ln118_10_fu_1060_p1 = temp_38_fu_1054_p2[26:0];
assign trunc_ln118_11_fu_1156_p1 = A_33_reg_1577[1:0];
assign trunc_ln118_12_fu_1176_p1 = temp_39_fu_1151_p2[26:0];
assign trunc_ln118_13_fu_1074_p1 = temp_38_fu_1054_p2[1:0];
assign trunc_ln118_14_fu_1305_p1 = temp_40_fu_1300_p2[26:0];
assign trunc_ln118_15_fu_1242_p1 = temp_39_fu_1151_p2[1:0];
assign trunc_ln118_1_fu_728_p1 = B_1_fu_142[1:0];
assign trunc_ln118_2_fu_750_p1 = temp_fu_722_p2[26:0];
assign trunc_ln118_3_fu_764_p1 = B_48_fu_146[1:0];
assign trunc_ln118_4_fu_855_p1 = temp_37_fu_850_p2[26:0];
assign trunc_ln118_5_fu_786_p1 = temp_fu_722_p2[1:0];
assign trunc_ln118_6_fu_950_p1 = B_58_fu_945_p2[26:0];
assign trunc_ln118_7_fu_869_p1 = temp_37_fu_850_p2[1:0];
assign trunc_ln118_8_fu_998_p1 = A_33_reg_1577[26:0];
assign trunc_ln118_9_fu_1105_p1 = B_58_reg_1553[1:0];
assign trunc_ln118_fu_659_p1 = B_48_fu_146[26:0];
assign xor_ln118_1_fu_825_p2 = (32'd4294967295 ^ A_32_reg_1467);
assign xor_ln118_2_fu_920_p2 = (temp_reg_1473 ^ 32'd4294967295);
assign xor_ln118_3_fu_900_p2 = (temp_37_reg_1517 ^ 32'd4294967295);
assign xor_ln118_4_fu_1010_p2 = (32'd4294967295 ^ B_58_reg_1553);
assign xor_ln118_5_fu_1125_p2 = (32'd4294967295 ^ A_33_reg_1577);
assign xor_ln118_6_fu_1190_p2 = (temp_38_reg_1594 ^ 32'd4294967295);
assign xor_ln118_7_fu_1218_p2 = (temp_39_fu_1151_p2 ^ 32'd4294967295);
assign xor_ln118_fu_673_p2 = (32'd4294967295 ^ B_1_fu_142);
endmodule 