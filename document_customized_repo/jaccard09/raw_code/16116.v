module viterbi_viterbi_Pipeline_L_end (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p,llike_address0,llike_ce0,llike_q0,llike_1_address0,llike_1_ce0,llike_1_q0,llike_2_address0,llike_2_ce0,llike_2_q0,llike_3_address0,llike_3_ce0,llike_3_q0,llike_4_address0,llike_4_ce0,llike_4_q0,llike_5_address0,llike_5_ce0,llike_5_q0,llike_6_address0,llike_6_ce0,llike_6_q0,llike_7_address0,llike_7_ce0,llike_7_q0,llike_8_address0,llike_8_ce0,llike_8_q0,llike_9_address0,llike_9_ce0,llike_9_q0,llike_10_address0,llike_10_ce0,llike_10_q0,llike_11_address0,llike_11_ce0,llike_11_q0,llike_12_address0,llike_12_ce0,llike_12_q0,llike_13_address0,llike_13_ce0,llike_13_q0,llike_14_address0,llike_14_ce0,llike_14_q0,llike_15_address0,llike_15_ce0,llike_15_q0,min_s_4_out,min_s_4_out_ap_vld,grp_fu_1693_p_din0,grp_fu_1693_p_din1,grp_fu_1693_p_opcode,grp_fu_1693_p_dout0,grp_fu_1693_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 9'd1;
parameter    ap_ST_fsm_pp0_stage1 = 9'd2;
parameter    ap_ST_fsm_pp0_stage2 = 9'd4;
parameter    ap_ST_fsm_pp0_stage3 = 9'd8;
parameter    ap_ST_fsm_pp0_stage4 = 9'd16;
parameter    ap_ST_fsm_pp0_stage5 = 9'd32;
parameter    ap_ST_fsm_pp0_stage6 = 9'd64;
parameter    ap_ST_fsm_pp0_stage7 = 9'd128;
parameter    ap_ST_fsm_pp0_stage8 = 9'd256;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p;
output  [9:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [9:0] llike_1_address0;
output   llike_1_ce0;
input  [63:0] llike_1_q0;
output  [9:0] llike_2_address0;
output   llike_2_ce0;
input  [63:0] llike_2_q0;
output  [9:0] llike_3_address0;
output   llike_3_ce0;
input  [63:0] llike_3_q0;
output  [9:0] llike_4_address0;
output   llike_4_ce0;
input  [63:0] llike_4_q0;
output  [9:0] llike_5_address0;
output   llike_5_ce0;
input  [63:0] llike_5_q0;
output  [9:0] llike_6_address0;
output   llike_6_ce0;
input  [63:0] llike_6_q0;
output  [9:0] llike_7_address0;
output   llike_7_ce0;
input  [63:0] llike_7_q0;
output  [9:0] llike_8_address0;
output   llike_8_ce0;
input  [63:0] llike_8_q0;
output  [9:0] llike_9_address0;
output   llike_9_ce0;
input  [63:0] llike_9_q0;
output  [9:0] llike_10_address0;
output   llike_10_ce0;
input  [63:0] llike_10_q0;
output  [9:0] llike_11_address0;
output   llike_11_ce0;
input  [63:0] llike_11_q0;
output  [9:0] llike_12_address0;
output   llike_12_ce0;
input  [63:0] llike_12_q0;
output  [9:0] llike_13_address0;
output   llike_13_ce0;
input  [63:0] llike_13_q0;
output  [9:0] llike_14_address0;
output   llike_14_ce0;
input  [63:0] llike_14_q0;
output  [9:0] llike_15_address0;
output   llike_15_ce0;
input  [63:0] llike_15_q0;
output  [7:0] min_s_4_out;
output   min_s_4_out_ap_vld;
output  [63:0] grp_fu_1693_p_din0;
output  [63:0] grp_fu_1693_p_din1;
output  [4:0] grp_fu_1693_p_opcode;
input  [0:0] grp_fu_1693_p_dout0;
output   grp_fu_1693_p_ce;
reg ap_idle;
reg min_s_4_out_ap_vld;
(* fsm_encoding = "none" *) reg   [8:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_subdone;
reg   [0:0] tmp_reg_1458;
reg    ap_condition_exit_pp0_iter0_stage8;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [5:0] s_reg_1356;
wire   [3:0] trunc_ln20_fu_521_p1;
reg   [3:0] trunc_ln20_reg_1364;
wire   [6:0] add_ln40_fu_563_p2;
reg   [6:0] add_ln40_reg_1452;
reg   [6:0] add_ln40_reg_1452_pp0_iter1_reg;
wire   [63:0] p_fu_577_p35;
reg   [63:0] p_reg_1462;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] p_35_fu_648_p35;
reg   [63:0] p_35_reg_1469;
wire   [63:0] p_36_fu_719_p35;
reg   [63:0] p_36_reg_1476;
reg   [63:0] min_p_76_reg_1563;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] p_37_fu_833_p35;
reg   [63:0] p_37_reg_1570;
wire   [0:0] and_ln42_1_fu_980_p2;
reg   [0:0] and_ln42_1_reg_1577;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] min_p_78_fu_986_p3;
reg   [63:0] min_p_78_reg_1583;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [0:0] and_ln42_3_fu_1068_p2;
reg   [0:0] and_ln42_3_reg_1590;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] min_p_80_fu_1074_p3;
reg   [63:0] min_p_80_reg_1596;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] and_ln42_5_fu_1156_p2;
reg   [0:0] and_ln42_5_reg_1603;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [7:0] min_s_13_fu_1200_p3;
reg   [7:0] min_s_13_reg_1609;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] min_p_82_fu_1208_p3;
reg   [63:0] min_p_82_reg_1614;
reg   [0:0] tmp_88_reg_1621;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln41_fu_543_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln41_2_fu_809_p1;
wire    ap_block_pp0_stage1;
reg   [63:0] min_p_1_fu_134;
wire   [63:0] min_p_84_fu_1305_p3;
wire    ap_loop_init;
wire    ap_block_pp0_stage2;
reg   [7:0] min_s_fu_138;
wire   [7:0] min_s_14_fu_1318_p3;
wire    ap_block_pp0_stage8;
reg   [5:0] min_s_8_fu_142;
wire   [5:0] add_ln40_1_fu_1214_p2;
reg   [5:0] ap_sig_allocacmp_s;
wire    ap_block_pp0_stage8_01001;
reg    llike_ce0_local;
reg   [9:0] llike_address0_local;
reg    llike_1_ce0_local;
reg   [9:0] llike_1_address0_local;
reg    llike_2_ce0_local;
reg   [9:0] llike_2_address0_local;
reg    llike_3_ce0_local;
reg   [9:0] llike_3_address0_local;
reg    llike_4_ce0_local;
reg   [9:0] llike_4_address0_local;
reg    llike_5_ce0_local;
reg   [9:0] llike_5_address0_local;
reg    llike_6_ce0_local;
reg   [9:0] llike_6_address0_local;
reg    llike_7_ce0_local;
reg   [9:0] llike_7_address0_local;
reg    llike_8_ce0_local;
reg   [9:0] llike_8_address0_local;
reg    llike_9_ce0_local;
reg   [9:0] llike_9_address0_local;
reg    llike_10_ce0_local;
reg   [9:0] llike_10_address0_local;
reg    llike_11_ce0_local;
reg   [9:0] llike_11_address0_local;
reg    llike_12_ce0_local;
reg   [9:0] llike_12_address0_local;
reg    llike_13_ce0_local;
reg   [9:0] llike_13_address0_local;
reg    llike_14_ce0_local;
reg   [9:0] llike_14_address0_local;
reg    llike_15_ce0_local;
reg   [9:0] llike_15_address0_local;
reg   [63:0] grp_fu_495_p0;
reg   [63:0] grp_fu_495_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage6;
wire   [1:0] tmp_s_fu_525_p4;
wire   [9:0] tmp_269_cast_fu_535_p3;
wire   [6:0] zext_ln20_fu_517_p1;
wire   [63:0] p_fu_577_p33;
wire   [63:0] p_35_fu_648_p33;
wire   [63:0] p_36_fu_719_p33;
wire   [2:0] lshr_ln9_2_fu_790_p4;
wire   [9:0] zext_ln41_1_fu_799_p1;
wire   [9:0] add_ln41_fu_803_p2;
wire   [63:0] p_37_fu_833_p33;
wire    ap_block_pp0_stage3;
wire   [63:0] bitcast_ln42_fu_904_p1;
wire   [63:0] bitcast_ln42_1_fu_921_p1;
wire   [10:0] tmp_77_fu_907_p4;
wire   [51:0] trunc_ln42_fu_917_p1;
wire   [0:0] icmp_ln42_1_fu_944_p2;
wire   [0:0] icmp_ln42_fu_938_p2;
wire   [10:0] tmp_78_fu_924_p4;
wire   [51:0] trunc_ln42_1_fu_934_p1;
wire   [0:0] icmp_ln42_3_fu_962_p2;
wire   [0:0] icmp_ln42_2_fu_956_p2;
wire   [0:0] or_ln42_fu_950_p2;
wire   [0:0] and_ln42_fu_974_p2;
wire   [0:0] or_ln42_1_fu_968_p2;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln42_2_fu_992_p1;
wire   [63:0] bitcast_ln42_3_fu_1009_p1;
wire   [10:0] tmp_80_fu_995_p4;
wire   [51:0] trunc_ln42_2_fu_1005_p1;
wire   [0:0] icmp_ln42_5_fu_1032_p2;
wire   [0:0] icmp_ln42_4_fu_1026_p2;
wire   [10:0] tmp_81_fu_1012_p4;
wire   [51:0] trunc_ln42_3_fu_1022_p1;
wire   [0:0] icmp_ln42_7_fu_1050_p2;
wire   [0:0] icmp_ln42_6_fu_1044_p2;
wire   [0:0] or_ln42_3_fu_1056_p2;
wire   [0:0] or_ln42_2_fu_1038_p2;
wire   [0:0] and_ln42_2_fu_1062_p2;
wire    ap_block_pp0_stage7;
wire   [63:0] bitcast_ln42_4_fu_1080_p1;
wire   [63:0] bitcast_ln42_5_fu_1097_p1;
wire   [10:0] tmp_83_fu_1083_p4;
wire   [51:0] trunc_ln42_4_fu_1093_p1;
wire   [0:0] icmp_ln42_9_fu_1120_p2;
wire   [0:0] icmp_ln42_8_fu_1114_p2;
wire   [10:0] tmp_84_fu_1100_p4;
wire   [51:0] trunc_ln42_5_fu_1110_p1;
wire   [0:0] icmp_ln42_11_fu_1138_p2;
wire   [0:0] icmp_ln42_10_fu_1132_p2;
wire   [0:0] or_ln42_5_fu_1144_p2;
wire   [0:0] or_ln42_4_fu_1126_p2;
wire   [0:0] and_ln42_4_fu_1150_p2;
wire   [7:0] zext_ln42_fu_1165_p1;
wire   [5:0] add_ln42_fu_1175_p2;
wire   [7:0] zext_ln42_1_fu_1180_p1;
wire   [7:0] min_s_11_fu_1168_p3;
wire   [5:0] add_ln42_1_fu_1191_p2;
wire   [7:0] zext_ln42_2_fu_1196_p1;
wire   [7:0] min_s_12_fu_1184_p3;
wire   [63:0] bitcast_ln42_6_fu_1224_p1;
wire   [63:0] bitcast_ln42_7_fu_1241_p1;
wire   [10:0] tmp_86_fu_1227_p4;
wire   [51:0] trunc_ln42_6_fu_1237_p1;
wire   [0:0] icmp_ln42_13_fu_1264_p2;
wire   [0:0] icmp_ln42_12_fu_1258_p2;
wire   [10:0] tmp_87_fu_1244_p4;
wire   [51:0] trunc_ln42_7_fu_1254_p1;
wire   [0:0] icmp_ln42_15_fu_1282_p2;
wire   [0:0] icmp_ln42_14_fu_1276_p2;
wire   [0:0] or_ln42_7_fu_1288_p2;
wire   [0:0] or_ln42_6_fu_1270_p2;
wire   [0:0] and_ln42_6_fu_1294_p2;
wire   [0:0] and_ln42_7_fu_1300_p2;
wire   [5:0] trunc_ln42_8_fu_1311_p1;
wire   [7:0] zext_ln42_3_fu_1314_p1;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [8:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [3:0] p_fu_577_p1;
wire   [3:0] p_fu_577_p3;
wire   [3:0] p_fu_577_p5;
wire   [3:0] p_fu_577_p7;
wire   [3:0] p_fu_577_p9;
wire   [3:0] p_fu_577_p11;
wire   [3:0] p_fu_577_p13;
wire   [3:0] p_fu_577_p15;
wire  signed [3:0] p_fu_577_p17;
wire  signed [3:0] p_fu_577_p19;
wire  signed [3:0] p_fu_577_p21;
wire  signed [3:0] p_fu_577_p23;
wire  signed [3:0] p_fu_577_p25;
wire  signed [3:0] p_fu_577_p27;
wire  signed [3:0] p_fu_577_p29;
wire  signed [3:0] p_fu_577_p31;
wire  signed [3:0] p_35_fu_648_p1;
wire   [3:0] p_35_fu_648_p3;
wire   [3:0] p_35_fu_648_p5;
wire   [3:0] p_35_fu_648_p7;
wire   [3:0] p_35_fu_648_p9;
wire   [3:0] p_35_fu_648_p11;
wire   [3:0] p_35_fu_648_p13;
wire   [3:0] p_35_fu_648_p15;
wire   [3:0] p_35_fu_648_p17;
wire  signed [3:0] p_35_fu_648_p19;
wire  signed [3:0] p_35_fu_648_p21;
wire  signed [3:0] p_35_fu_648_p23;
wire  signed [3:0] p_35_fu_648_p25;
wire  signed [3:0] p_35_fu_648_p27;
wire  signed [3:0] p_35_fu_648_p29;
wire  signed [3:0] p_35_fu_648_p31;
wire  signed [3:0] p_36_fu_719_p1;
wire  signed [3:0] p_36_fu_719_p3;
wire   [3:0] p_36_fu_719_p5;
wire   [3:0] p_36_fu_719_p7;
wire   [3:0] p_36_fu_719_p9;
wire   [3:0] p_36_fu_719_p11;
wire   [3:0] p_36_fu_719_p13;
wire   [3:0] p_36_fu_719_p15;
wire   [3:0] p_36_fu_719_p17;
wire   [3:0] p_36_fu_719_p19;
wire  signed [3:0] p_36_fu_719_p21;
wire  signed [3:0] p_36_fu_719_p23;
wire  signed [3:0] p_36_fu_719_p25;
wire  signed [3:0] p_36_fu_719_p27;
wire  signed [3:0] p_36_fu_719_p29;
wire  signed [3:0] p_36_fu_719_p31;
wire  signed [3:0] p_37_fu_833_p1;
wire  signed [3:0] p_37_fu_833_p3;
wire  signed [3:0] p_37_fu_833_p5;
wire   [3:0] p_37_fu_833_p7;
wire   [3:0] p_37_fu_833_p9;
wire   [3:0] p_37_fu_833_p11;
wire   [3:0] p_37_fu_833_p13;
wire   [3:0] p_37_fu_833_p15;
wire   [3:0] p_37_fu_833_p17;
wire   [3:0] p_37_fu_833_p19;
wire   [3:0] p_37_fu_833_p21;
wire  signed [3:0] p_37_fu_833_p23;
wire  signed [3:0] p_37_fu_833_p25;
wire  signed [3:0] p_37_fu_833_p27;
wire  signed [3:0] p_37_fu_833_p29;
wire  signed [3:0] p_37_fu_833_p31;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 9'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_1_fu_134 = 64'd0;
#0 min_s_fu_138 = 8'd0;
#0 min_s_8_fu_142 = 6'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'h0 ),.din0_WIDTH( 64 ),.CASE1( 4'h1 ),.din1_WIDTH( 64 ),.CASE2( 4'h2 ),.din2_WIDTH( 64 ),.CASE3( 4'h3 ),.din3_WIDTH( 64 ),.CASE4( 4'h4 ),.din4_WIDTH( 64 ),.CASE5( 4'h5 ),.din5_WIDTH( 64 ),.CASE6( 4'h6 ),.din6_WIDTH( 64 ),.CASE7( 4'h7 ),.din7_WIDTH( 64 ),.CASE8( 4'h8 ),.din8_WIDTH( 64 ),.CASE9( 4'h9 ),.din9_WIDTH( 64 ),.CASE10( 4'hA ),.din10_WIDTH( 64 ),.CASE11( 4'hB ),.din11_WIDTH( 64 ),.CASE12( 4'hC ),.din12_WIDTH( 64 ),.CASE13( 4'hD ),.din13_WIDTH( 64 ),.CASE14( 4'hE ),.din14_WIDTH( 64 ),.CASE15( 4'hF ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U127(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_fu_577_p33),.sel(trunc_ln20_reg_1364),.dout(p_fu_577_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hF ),.din0_WIDTH( 64 ),.CASE1( 4'h0 ),.din1_WIDTH( 64 ),.CASE2( 4'h1 ),.din2_WIDTH( 64 ),.CASE3( 4'h2 ),.din3_WIDTH( 64 ),.CASE4( 4'h3 ),.din4_WIDTH( 64 ),.CASE5( 4'h4 ),.din5_WIDTH( 64 ),.CASE6( 4'h5 ),.din6_WIDTH( 64 ),.CASE7( 4'h6 ),.din7_WIDTH( 64 ),.CASE8( 4'h7 ),.din8_WIDTH( 64 ),.CASE9( 4'h8 ),.din9_WIDTH( 64 ),.CASE10( 4'h9 ),.din10_WIDTH( 64 ),.CASE11( 4'hA ),.din11_WIDTH( 64 ),.CASE12( 4'hB ),.din12_WIDTH( 64 ),.CASE13( 4'hC ),.din13_WIDTH( 64 ),.CASE14( 4'hD ),.din14_WIDTH( 64 ),.CASE15( 4'hE ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U128(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_35_fu_648_p33),.sel(trunc_ln20_reg_1364),.dout(p_35_fu_648_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hE ),.din0_WIDTH( 64 ),.CASE1( 4'hF ),.din1_WIDTH( 64 ),.CASE2( 4'h0 ),.din2_WIDTH( 64 ),.CASE3( 4'h1 ),.din3_WIDTH( 64 ),.CASE4( 4'h2 ),.din4_WIDTH( 64 ),.CASE5( 4'h3 ),.din5_WIDTH( 64 ),.CASE6( 4'h4 ),.din6_WIDTH( 64 ),.CASE7( 4'h5 ),.din7_WIDTH( 64 ),.CASE8( 4'h6 ),.din8_WIDTH( 64 ),.CASE9( 4'h7 ),.din9_WIDTH( 64 ),.CASE10( 4'h8 ),.din10_WIDTH( 64 ),.CASE11( 4'h9 ),.din11_WIDTH( 64 ),.CASE12( 4'hA ),.din12_WIDTH( 64 ),.CASE13( 4'hB ),.din13_WIDTH( 64 ),.CASE14( 4'hC ),.din14_WIDTH( 64 ),.CASE15( 4'hD ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U129(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_36_fu_719_p33),.sel(trunc_ln20_reg_1364),.dout(p_36_fu_719_p35));
(* dissolve_hierarchy = "yes" *) viterbi_sparsemux_33_4_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 4'hD ),.din0_WIDTH( 64 ),.CASE1( 4'hE ),.din1_WIDTH( 64 ),.CASE2( 4'hF ),.din2_WIDTH( 64 ),.CASE3( 4'h0 ),.din3_WIDTH( 64 ),.CASE4( 4'h1 ),.din4_WIDTH( 64 ),.CASE5( 4'h2 ),.din5_WIDTH( 64 ),.CASE6( 4'h3 ),.din6_WIDTH( 64 ),.CASE7( 4'h4 ),.din7_WIDTH( 64 ),.CASE8( 4'h5 ),.din8_WIDTH( 64 ),.CASE9( 4'h6 ),.din9_WIDTH( 64 ),.CASE10( 4'h7 ),.din10_WIDTH( 64 ),.CASE11( 4'h8 ),.din11_WIDTH( 64 ),.CASE12( 4'h9 ),.din12_WIDTH( 64 ),.CASE13( 4'hA ),.din13_WIDTH( 64 ),.CASE14( 4'hB ),.din14_WIDTH( 64 ),.CASE15( 4'hC ),.din15_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 4 ),.dout_WIDTH( 64 ))
sparsemux_33_4_64_1_1_U130(.din0(llike_q0),.din1(llike_1_q0),.din2(llike_2_q0),.din3(llike_3_q0),.din4(llike_4_q0),.din5(llike_5_q0),.din6(llike_6_q0),.din7(llike_7_q0),.din8(llike_8_q0),.din9(llike_9_q0),.din10(llike_10_q0),.din11(llike_11_q0),.din12(llike_12_q0),.din13(llike_13_q0),.din14(llike_14_q0),.din15(llike_15_q0),.def(p_37_fu_833_p33),.sel(trunc_ln20_reg_1364),.dout(p_37_fu_833_p35));
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage8),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter0_stage8) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_p_1_fu_134 <= min_p;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_fu_134 <= min_p_84_fu_1305_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_8_fu_142 <= 6'd1;
    end else if (((tmp_reg_1458 == 1'd0) & (1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_8_fu_142 <= add_ln40_1_fu_1214_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        min_s_fu_138 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_s_fu_138 <= min_s_14_fu_1318_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln40_reg_1452 <= add_ln40_fu_563_p2;
        add_ln40_reg_1452_pp0_iter1_reg <= add_ln40_reg_1452;
        s_reg_1356 <= ap_sig_allocacmp_s;
        tmp_reg_1458 <= add_ln40_fu_563_p2[32'd6];
        trunc_ln20_reg_1364 <= trunc_ln20_fu_521_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        and_ln42_1_reg_1577 <= and_ln42_1_fu_980_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        and_ln42_3_reg_1590 <= and_ln42_3_fu_1068_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        and_ln42_5_reg_1603 <= and_ln42_5_fu_1156_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        min_p_76_reg_1563 <= min_p_1_fu_134;
        p_37_reg_1570 <= p_37_fu_833_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        min_p_78_reg_1583 <= min_p_78_fu_986_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        min_p_80_reg_1596 <= min_p_80_fu_1074_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_p_82_reg_1614 <= min_p_82_fu_1208_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_13_reg_1609 <= min_s_13_fu_1200_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        p_35_reg_1469 <= p_35_fu_648_p35;
        p_36_reg_1476 <= p_36_fu_719_p35;
        p_reg_1462 <= p_fu_577_p35;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_88_reg_1621 <= grp_fu_1693_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_1458 == 1'd1) & (1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage8 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage8_subdone) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
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
    if (((1'b0 == ap_block_pp0_stage8_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_s = 6'd1;
    end else begin
        ap_sig_allocacmp_s = min_s_8_fu_142;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_495_p0 = p_37_reg_1570;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_495_p0 = p_36_reg_1476;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_495_p0 = p_35_reg_1469;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_495_p0 = p_reg_1462;
        end else begin
            grp_fu_495_p0 = 'bx;
        end
    end else begin
        grp_fu_495_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage8) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
            grp_fu_495_p1 = min_p_82_fu_1208_p3;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_495_p1 = min_p_80_fu_1074_p3;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_495_p1 = min_p_78_fu_986_p3;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_495_p1 = min_p_1_fu_134;
        end else begin
            grp_fu_495_p1 = 'bx;
        end
    end else begin
        grp_fu_495_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_10_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_10_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_10_address0_local = 'bx;
        end
    end else begin
        llike_10_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_10_ce0_local = 1'b1;
    end else begin
        llike_10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_11_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_11_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_11_address0_local = 'bx;
        end
    end else begin
        llike_11_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_11_ce0_local = 1'b1;
    end else begin
        llike_11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_12_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_12_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_12_address0_local = 'bx;
        end
    end else begin
        llike_12_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_12_ce0_local = 1'b1;
    end else begin
        llike_12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_13_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_13_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_13_address0_local = 'bx;
        end
    end else begin
        llike_13_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_13_ce0_local = 1'b1;
    end else begin
        llike_13_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_14_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_14_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_14_address0_local = 'bx;
        end
    end else begin
        llike_14_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_14_ce0_local = 1'b1;
    end else begin
        llike_14_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_15_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_15_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_15_address0_local = 'bx;
        end
    end else begin
        llike_15_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_15_ce0_local = 1'b1;
    end else begin
        llike_15_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_1_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_1_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_1_address0_local = 'bx;
        end
    end else begin
        llike_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_1_ce0_local = 1'b1;
    end else begin
        llike_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_2_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_2_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_2_address0_local = 'bx;
        end
    end else begin
        llike_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_2_ce0_local = 1'b1;
    end else begin
        llike_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_3_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_3_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_3_address0_local = 'bx;
        end
    end else begin
        llike_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_3_ce0_local = 1'b1;
    end else begin
        llike_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_4_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_4_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_4_address0_local = 'bx;
        end
    end else begin
        llike_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_4_ce0_local = 1'b1;
    end else begin
        llike_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_5_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_5_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_5_address0_local = 'bx;
        end
    end else begin
        llike_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_5_ce0_local = 1'b1;
    end else begin
        llike_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_6_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_6_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_6_address0_local = 'bx;
        end
    end else begin
        llike_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_6_ce0_local = 1'b1;
    end else begin
        llike_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_7_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_7_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_7_address0_local = 'bx;
        end
    end else begin
        llike_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_7_ce0_local = 1'b1;
    end else begin
        llike_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_8_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_8_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_8_address0_local = 'bx;
        end
    end else begin
        llike_8_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_8_ce0_local = 1'b1;
    end else begin
        llike_8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_9_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_9_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_9_address0_local = 'bx;
        end
    end else begin
        llike_9_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_9_ce0_local = 1'b1;
    end else begin
        llike_9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln41_2_fu_809_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln41_fu_543_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (tmp_reg_1458 == 1'd1) & (1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        min_s_4_out_ap_vld = 1'b1;
    end else begin
        min_s_4_out_ap_vld = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln40_1_fu_1214_p2 = (s_reg_1356 + 6'd4);
assign add_ln40_fu_563_p2 = (zext_ln20_fu_517_p1 + 7'd3);
assign add_ln41_fu_803_p2 = ($signed(zext_ln41_1_fu_799_p1) + $signed(10'd556));
assign add_ln42_1_fu_1191_p2 = (s_reg_1356 + 6'd2);
assign add_ln42_fu_1175_p2 = (s_reg_1356 + 6'd1);
assign and_ln42_1_fu_980_p2 = (or_ln42_1_fu_968_p2 & and_ln42_fu_974_p2);
assign and_ln42_2_fu_1062_p2 = (or_ln42_3_fu_1056_p2 & or_ln42_2_fu_1038_p2);
assign and_ln42_3_fu_1068_p2 = (grp_fu_1693_p_dout0 & and_ln42_2_fu_1062_p2);
assign and_ln42_4_fu_1150_p2 = (or_ln42_5_fu_1144_p2 & or_ln42_4_fu_1126_p2);
assign and_ln42_5_fu_1156_p2 = (grp_fu_1693_p_dout0 & and_ln42_4_fu_1150_p2);
assign and_ln42_6_fu_1294_p2 = (or_ln42_7_fu_1288_p2 & or_ln42_6_fu_1270_p2);
assign and_ln42_7_fu_1300_p2 = (tmp_88_reg_1621 & and_ln42_6_fu_1294_p2);
assign and_ln42_fu_974_p2 = (or_ln42_fu_950_p2 & grp_fu_1693_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage8;
assign ap_ready = ap_ready_sig;
assign bitcast_ln42_1_fu_921_p1 = min_p_76_reg_1563;
assign bitcast_ln42_2_fu_992_p1 = p_35_reg_1469;
assign bitcast_ln42_3_fu_1009_p1 = min_p_78_reg_1583;
assign bitcast_ln42_4_fu_1080_p1 = p_36_reg_1476;
assign bitcast_ln42_5_fu_1097_p1 = min_p_80_reg_1596;
assign bitcast_ln42_6_fu_1224_p1 = p_37_reg_1570;
assign bitcast_ln42_7_fu_1241_p1 = min_p_82_reg_1614;
assign bitcast_ln42_fu_904_p1 = p_reg_1462;
assign grp_fu_1693_p_ce = 1'b1;
assign grp_fu_1693_p_din0 = grp_fu_495_p0;
assign grp_fu_1693_p_din1 = grp_fu_495_p1;
assign grp_fu_1693_p_opcode = 5'd4;
assign icmp_ln42_10_fu_1132_p2 = ((tmp_84_fu_1100_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_11_fu_1138_p2 = ((trunc_ln42_5_fu_1110_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_12_fu_1258_p2 = ((tmp_86_fu_1227_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_13_fu_1264_p2 = ((trunc_ln42_6_fu_1237_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_14_fu_1276_p2 = ((tmp_87_fu_1244_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_15_fu_1282_p2 = ((trunc_ln42_7_fu_1254_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_1_fu_944_p2 = ((trunc_ln42_fu_917_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_2_fu_956_p2 = ((tmp_78_fu_924_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_3_fu_962_p2 = ((trunc_ln42_1_fu_934_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_4_fu_1026_p2 = ((tmp_80_fu_995_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_5_fu_1032_p2 = ((trunc_ln42_2_fu_1005_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_6_fu_1044_p2 = ((tmp_81_fu_1012_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_7_fu_1050_p2 = ((trunc_ln42_3_fu_1022_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_8_fu_1114_p2 = ((tmp_83_fu_1083_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln42_9_fu_1120_p2 = ((trunc_ln42_4_fu_1093_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln42_fu_938_p2 = ((tmp_77_fu_907_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_10_address0 = llike_10_address0_local;
assign llike_10_ce0 = llike_10_ce0_local;
assign llike_11_address0 = llike_11_address0_local;
assign llike_11_ce0 = llike_11_ce0_local;
assign llike_12_address0 = llike_12_address0_local;
assign llike_12_ce0 = llike_12_ce0_local;
assign llike_13_address0 = llike_13_address0_local;
assign llike_13_ce0 = llike_13_ce0_local;
assign llike_14_address0 = llike_14_address0_local;
assign llike_14_ce0 = llike_14_ce0_local;
assign llike_15_address0 = llike_15_address0_local;
assign llike_15_ce0 = llike_15_ce0_local;
assign llike_1_address0 = llike_1_address0_local;
assign llike_1_ce0 = llike_1_ce0_local;
assign llike_2_address0 = llike_2_address0_local;
assign llike_2_ce0 = llike_2_ce0_local;
assign llike_3_address0 = llike_3_address0_local;
assign llike_3_ce0 = llike_3_ce0_local;
assign llike_4_address0 = llike_4_address0_local;
assign llike_4_ce0 = llike_4_ce0_local;
assign llike_5_address0 = llike_5_address0_local;
assign llike_5_ce0 = llike_5_ce0_local;
assign llike_6_address0 = llike_6_address0_local;
assign llike_6_ce0 = llike_6_ce0_local;
assign llike_7_address0 = llike_7_address0_local;
assign llike_7_ce0 = llike_7_ce0_local;
assign llike_8_address0 = llike_8_address0_local;
assign llike_8_ce0 = llike_8_ce0_local;
assign llike_9_address0 = llike_9_address0_local;
assign llike_9_ce0 = llike_9_ce0_local;
assign llike_address0 = llike_address0_local;
assign llike_ce0 = llike_ce0_local;
assign lshr_ln9_2_fu_790_p4 = {{add_ln40_reg_1452[6:4]}};
assign min_p_78_fu_986_p3 = ((and_ln42_1_reg_1577[0:0] == 1'b1) ? p_reg_1462 : min_p_76_reg_1563);
assign min_p_80_fu_1074_p3 = ((and_ln42_3_reg_1590[0:0] == 1'b1) ? p_35_reg_1469 : min_p_78_reg_1583);
assign min_p_82_fu_1208_p3 = ((and_ln42_5_reg_1603[0:0] == 1'b1) ? p_36_reg_1476 : min_p_80_reg_1596);
assign min_p_84_fu_1305_p3 = ((and_ln42_7_fu_1300_p2[0:0] == 1'b1) ? p_37_reg_1570 : min_p_82_reg_1614);
assign min_s_11_fu_1168_p3 = ((and_ln42_1_reg_1577[0:0] == 1'b1) ? zext_ln42_fu_1165_p1 : min_s_fu_138);
assign min_s_12_fu_1184_p3 = ((and_ln42_3_reg_1590[0:0] == 1'b1) ? zext_ln42_1_fu_1180_p1 : min_s_11_fu_1168_p3);
assign min_s_13_fu_1200_p3 = ((and_ln42_5_reg_1603[0:0] == 1'b1) ? zext_ln42_2_fu_1196_p1 : min_s_12_fu_1184_p3);
assign min_s_14_fu_1318_p3 = ((and_ln42_7_fu_1300_p2[0:0] == 1'b1) ? zext_ln42_3_fu_1314_p1 : min_s_13_reg_1609);
assign min_s_4_out = ((and_ln42_5_reg_1603[0:0] == 1'b1) ? zext_ln42_2_fu_1196_p1 : min_s_12_fu_1184_p3);
assign or_ln42_1_fu_968_p2 = (icmp_ln42_3_fu_962_p2 | icmp_ln42_2_fu_956_p2);
assign or_ln42_2_fu_1038_p2 = (icmp_ln42_5_fu_1032_p2 | icmp_ln42_4_fu_1026_p2);
assign or_ln42_3_fu_1056_p2 = (icmp_ln42_7_fu_1050_p2 | icmp_ln42_6_fu_1044_p2);
assign or_ln42_4_fu_1126_p2 = (icmp_ln42_9_fu_1120_p2 | icmp_ln42_8_fu_1114_p2);
assign or_ln42_5_fu_1144_p2 = (icmp_ln42_11_fu_1138_p2 | icmp_ln42_10_fu_1132_p2);
assign or_ln42_6_fu_1270_p2 = (icmp_ln42_13_fu_1264_p2 | icmp_ln42_12_fu_1258_p2);
assign or_ln42_7_fu_1288_p2 = (icmp_ln42_15_fu_1282_p2 | icmp_ln42_14_fu_1276_p2);
assign or_ln42_fu_950_p2 = (icmp_ln42_fu_938_p2 | icmp_ln42_1_fu_944_p2);
assign p_35_fu_648_p33 = 'bx;
assign p_36_fu_719_p33 = 'bx;
assign p_37_fu_833_p33 = 'bx;
assign p_fu_577_p33 = 'bx;
assign tmp_269_cast_fu_535_p3 = {{8'd139}, {tmp_s_fu_525_p4}};
assign tmp_77_fu_907_p4 = {{bitcast_ln42_fu_904_p1[62:52]}};
assign tmp_78_fu_924_p4 = {{bitcast_ln42_1_fu_921_p1[62:52]}};
assign tmp_80_fu_995_p4 = {{bitcast_ln42_2_fu_992_p1[62:52]}};
assign tmp_81_fu_1012_p4 = {{bitcast_ln42_3_fu_1009_p1[62:52]}};
assign tmp_83_fu_1083_p4 = {{bitcast_ln42_4_fu_1080_p1[62:52]}};
assign tmp_84_fu_1100_p4 = {{bitcast_ln42_5_fu_1097_p1[62:52]}};
assign tmp_86_fu_1227_p4 = {{bitcast_ln42_6_fu_1224_p1[62:52]}};
assign tmp_87_fu_1244_p4 = {{bitcast_ln42_7_fu_1241_p1[62:52]}};
assign tmp_s_fu_525_p4 = {{ap_sig_allocacmp_s[5:4]}};
assign trunc_ln20_fu_521_p1 = ap_sig_allocacmp_s[3:0];
assign trunc_ln42_1_fu_934_p1 = bitcast_ln42_1_fu_921_p1[51:0];
assign trunc_ln42_2_fu_1005_p1 = bitcast_ln42_2_fu_992_p1[51:0];
assign trunc_ln42_3_fu_1022_p1 = bitcast_ln42_3_fu_1009_p1[51:0];
assign trunc_ln42_4_fu_1093_p1 = bitcast_ln42_4_fu_1080_p1[51:0];
assign trunc_ln42_5_fu_1110_p1 = bitcast_ln42_5_fu_1097_p1[51:0];
assign trunc_ln42_6_fu_1237_p1 = bitcast_ln42_6_fu_1224_p1[51:0];
assign trunc_ln42_7_fu_1254_p1 = bitcast_ln42_7_fu_1241_p1[51:0];
assign trunc_ln42_8_fu_1311_p1 = add_ln40_reg_1452_pp0_iter1_reg[5:0];
assign trunc_ln42_fu_917_p1 = bitcast_ln42_fu_904_p1[51:0];
assign zext_ln20_fu_517_p1 = ap_sig_allocacmp_s;
assign zext_ln41_1_fu_799_p1 = lshr_ln9_2_fu_790_p4;
assign zext_ln41_2_fu_809_p1 = add_ln41_fu_803_p2;
assign zext_ln41_fu_543_p1 = tmp_269_cast_fu_535_p3;
assign zext_ln42_1_fu_1180_p1 = add_ln42_fu_1175_p2;
assign zext_ln42_2_fu_1196_p1 = add_ln42_1_fu_1191_p2;
assign zext_ln42_3_fu_1314_p1 = trunc_ln42_8_fu_1311_p1;
assign zext_ln42_fu_1165_p1 = s_reg_1356;
endmodule 