module viterbi_viterbi_Pipeline_L_prev_state (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,min_p_4,empty_8,llike_address0,llike_ce0,llike_q0,llike_address1,llike_ce1,llike_q1,lshr_ln,transition_0_address0,transition_0_ce0,transition_0_q0,transition_0_address1,transition_0_ce1,transition_0_q1,transition_1_address0,transition_1_ce0,transition_1_q0,transition_1_address1,transition_1_ce1,transition_1_q1,empty_9,bitcast_ln24,empty,min_p_145_out,min_p_145_out_ap_vld,grp_fu_300_p_din0,grp_fu_300_p_din1,grp_fu_300_p_opcode,grp_fu_300_p_dout0,grp_fu_300_p_ce,grp_fu_678_p_din0,grp_fu_678_p_din1,grp_fu_678_p_opcode,grp_fu_678_p_dout0,grp_fu_678_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 17'd1;
parameter    ap_ST_fsm_pp0_stage1 = 17'd2;
parameter    ap_ST_fsm_pp0_stage2 = 17'd4;
parameter    ap_ST_fsm_pp0_stage3 = 17'd8;
parameter    ap_ST_fsm_pp0_stage4 = 17'd16;
parameter    ap_ST_fsm_pp0_stage5 = 17'd32;
parameter    ap_ST_fsm_pp0_stage6 = 17'd64;
parameter    ap_ST_fsm_pp0_stage7 = 17'd128;
parameter    ap_ST_fsm_pp0_stage8 = 17'd256;
parameter    ap_ST_fsm_pp0_stage9 = 17'd512;
parameter    ap_ST_fsm_pp0_stage10 = 17'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 17'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 17'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 17'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 17'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 17'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 17'd65536;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] min_p_4;
input  [7:0] empty_8;
output  [13:0] llike_address0;
output   llike_ce0;
input  [63:0] llike_q0;
output  [13:0] llike_address1;
output   llike_ce1;
input  [63:0] llike_q1;
input  [4:0] lshr_ln;
output  [10:0] transition_0_address0;
output   transition_0_ce0;
input  [63:0] transition_0_q0;
output  [10:0] transition_0_address1;
output   transition_0_ce1;
input  [63:0] transition_0_q1;
output  [10:0] transition_1_address0;
output   transition_1_ce0;
input  [63:0] transition_1_q0;
output  [10:0] transition_1_address1;
output   transition_1_ce1;
input  [63:0] transition_1_q1;
input  [0:0] empty_9;
input  [63:0] bitcast_ln24;
input  [13:0] empty;
output  [63:0] min_p_145_out;
output   min_p_145_out_ap_vld;
output  [63:0] grp_fu_300_p_din0;
output  [63:0] grp_fu_300_p_din1;
output  [1:0] grp_fu_300_p_opcode;
input  [63:0] grp_fu_300_p_dout0;
output   grp_fu_300_p_ce;
output  [63:0] grp_fu_678_p_din0;
output  [63:0] grp_fu_678_p_din1;
output  [4:0] grp_fu_678_p_opcode;
input  [0:0] grp_fu_678_p_dout0;
output   grp_fu_678_p_ce;
reg ap_idle;
reg min_p_145_out_ap_vld;
(* fsm_encoding = "none" *) reg   [16:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage16;
wire    ap_block_pp0_stage16_subdone;
reg   [0:0] tmp_30_reg_1654;
reg    ap_condition_exit_pp0_iter0_stage16;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] grp_fu_368_p3;
reg   [63:0] reg_382;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] grp_fu_375_p3;
reg   [63:0] reg_386;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] reg_390;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire    ap_block_pp0_stage0_11001;
reg   [63:0] reg_396;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] reg_402;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] reg_408;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
reg   [63:0] reg_414;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] reg_420;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_11001;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] prev_1_reg_1517;
reg   [63:0] llike_load_reg_1558;
reg   [63:0] llike_load_1_reg_1563;
wire   [63:0] bitcast_ln27_fu_562_p1;
reg   [63:0] llike_load_2_reg_1603;
reg   [63:0] llike_load_3_reg_1608;
reg   [63:0] select_ln27_3_reg_1613;
wire   [6:0] add_ln25_6_fu_627_p2;
reg   [6:0] add_ln25_6_reg_1648;
reg   [0:0] tmp_30_reg_1654_pp0_iter1_reg;
wire   [63:0] bitcast_ln27_1_fu_641_p1;
reg   [63:0] llike_load_4_reg_1663;
reg   [63:0] select_ln27_4_reg_1668;
reg   [63:0] llike_load_5_reg_1673;
wire   [63:0] bitcast_ln27_2_fu_705_p1;
reg   [63:0] llike_load_6_reg_1713;
reg   [63:0] llike_load_7_reg_1718;
reg   [63:0] select_ln27_7_reg_1723;
wire   [63:0] bitcast_ln27_3_fu_710_p1;
wire   [63:0] bitcast_ln27_4_fu_714_p1;
wire   [63:0] bitcast_ln27_5_fu_718_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] bitcast_ln27_6_fu_723_p1;
wire    ap_CS_fsm_pp0_stage8;
wire    ap_block_pp0_stage8_11001;
wire   [63:0] bitcast_ln27_7_fu_728_p1;
reg   [63:0] add52_5_reg_1753;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
reg   [63:0] add52_7_reg_1758;
wire    ap_block_pp0_stage16_11001;
reg   [63:0] min_p_1_reg_1763;
wire   [0:0] and_ln29_1_fu_823_p2;
reg   [0:0] and_ln29_1_reg_1770;
wire   [63:0] min_p_3_fu_829_p3;
reg   [63:0] min_p_3_reg_1775;
wire   [0:0] and_ln29_3_fu_913_p2;
reg   [0:0] and_ln29_3_reg_1782;
wire   [63:0] min_p_6_fu_919_p3;
reg   [63:0] min_p_6_reg_1787;
wire   [0:0] and_ln29_5_fu_1003_p2;
reg   [0:0] and_ln29_5_reg_1794;
wire   [63:0] min_p_8_fu_1009_p3;
reg   [63:0] min_p_8_reg_1799;
wire   [0:0] icmp_ln29_14_fu_1034_p2;
reg   [0:0] icmp_ln29_14_reg_1805;
wire   [0:0] icmp_ln29_15_fu_1040_p2;
reg   [0:0] icmp_ln29_15_reg_1810;
reg   [63:0] p_7_reg_1815;
wire   [0:0] and_ln29_7_fu_1092_p2;
reg   [0:0] and_ln29_7_reg_1822;
wire   [63:0] min_p_10_fu_1098_p3;
reg   [63:0] min_p_10_reg_1827;
wire   [0:0] and_ln29_9_fu_1182_p2;
reg   [0:0] and_ln29_9_reg_1834;
wire   [63:0] min_p_12_fu_1188_p3;
reg   [63:0] min_p_12_reg_1839;
wire   [0:0] and_ln29_11_fu_1272_p2;
reg   [0:0] and_ln29_11_reg_1846;
wire   [63:0] min_p_14_fu_1278_p3;
reg   [63:0] min_p_14_reg_1851;
wire   [0:0] and_ln29_13_fu_1362_p2;
reg   [0:0] and_ln29_13_reg_1858;
wire   [63:0] min_p_16_fu_1368_p3;
reg   [63:0] min_p_16_reg_1863;
reg   [0:0] tmp_33_reg_1870;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage15_subdone;
reg    ap_condition_exit_pp0_iter1_stage15;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln26_fu_447_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln27_fu_460_p1;
wire   [63:0] zext_ln26_1_fu_480_p1;
wire   [63:0] zext_ln27_1_fu_493_p1;
wire   [63:0] zext_ln26_2_fu_511_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln27_2_fu_523_p1;
wire   [63:0] zext_ln26_3_fu_541_p1;
wire   [63:0] zext_ln27_3_fu_553_p1;
wire   [63:0] zext_ln26_4_fu_579_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln27_4_fu_591_p1;
wire   [63:0] zext_ln26_5_fu_609_p1;
wire   [63:0] zext_ln27_5_fu_621_p1;
wire   [63:0] zext_ln26_6_fu_658_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln27_6_fu_670_p1;
wire   [63:0] zext_ln26_8_fu_684_p1;
wire   [63:0] zext_ln27_7_fu_699_p1;
reg   [63:0] min_p_fu_90;
wire   [63:0] min_p_18_fu_1457_p3;
wire    ap_loop_init;
reg   [5:0] prev_fu_94;
wire   [5:0] add_ln25_7_fu_732_p2;
reg   [5:0] ap_sig_allocacmp_prev_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to0;
wire    ap_block_pp0_stage15_01001;
reg    llike_ce1_local;
reg   [13:0] llike_address1_local;
reg    llike_ce0_local;
reg   [13:0] llike_address0_local;
reg    transition_0_ce1_local;
reg   [10:0] transition_0_address1_local;
reg    transition_0_ce0_local;
reg   [10:0] transition_0_address0_local;
reg    transition_1_ce1_local;
reg   [10:0] transition_1_address1_local;
reg    transition_1_ce0_local;
reg   [10:0] transition_1_address0_local;
reg   [63:0] grp_fu_360_p0;
reg   [63:0] grp_fu_360_p1;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire    ap_block_pp0_stage8;
wire    ap_block_pp0_stage9;
wire    ap_block_pp0_stage10;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage12;
wire    ap_block_pp0_stage13;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
wire    ap_block_pp0_stage16;
reg   [63:0] grp_fu_364_p0;
reg   [63:0] grp_fu_364_p1;
wire   [13:0] tmp_3_fu_439_p3;
wire   [10:0] add_ln_fu_452_p3;
wire   [5:0] add_ln25_fu_466_p2;
wire   [13:0] tmp_4_fu_472_p3;
wire   [10:0] add_ln27_1_fu_485_p3;
wire   [5:0] add_ln25_1_fu_499_p2;
wire   [13:0] tmp_10_fu_504_p3;
wire   [10:0] add_ln27_2_fu_516_p3;
wire   [5:0] add_ln25_2_fu_529_p2;
wire   [13:0] tmp_14_fu_534_p3;
wire   [10:0] add_ln27_3_fu_546_p3;
wire   [5:0] add_ln25_3_fu_567_p2;
wire   [13:0] tmp_18_fu_572_p3;
wire   [10:0] add_ln27_4_fu_584_p3;
wire   [5:0] add_ln25_4_fu_597_p2;
wire   [13:0] tmp_22_fu_602_p3;
wire   [10:0] add_ln27_5_fu_614_p3;
wire   [6:0] zext_ln15_fu_559_p1;
wire   [5:0] add_ln25_5_fu_646_p2;
wire   [13:0] tmp_26_fu_651_p3;
wire   [10:0] add_ln27_6_fu_663_p3;
wire   [13:0] zext_ln26_7_fu_676_p1;
wire   [13:0] add_ln26_fu_679_p2;
wire   [5:0] trunc_ln27_fu_689_p1;
wire   [10:0] add_ln27_7_fu_692_p3;
wire   [63:0] bitcast_ln29_fu_746_p1;
wire   [63:0] bitcast_ln29_1_fu_764_p1;
wire   [10:0] tmp_6_fu_750_p4;
wire   [51:0] trunc_ln29_fu_760_p1;
wire   [0:0] icmp_ln29_1_fu_787_p2;
wire   [0:0] icmp_ln29_fu_781_p2;
wire   [10:0] tmp_7_fu_767_p4;
wire   [51:0] trunc_ln29_1_fu_777_p1;
wire   [0:0] icmp_ln29_3_fu_805_p2;
wire   [0:0] icmp_ln29_2_fu_799_p2;
wire   [0:0] or_ln29_fu_793_p2;
wire   [0:0] and_ln29_fu_817_p2;
wire   [0:0] or_ln29_1_fu_811_p2;
wire   [63:0] bitcast_ln29_2_fu_836_p1;
wire   [63:0] bitcast_ln29_3_fu_854_p1;
wire   [10:0] tmp_s_fu_840_p4;
wire   [51:0] trunc_ln29_2_fu_850_p1;
wire   [0:0] icmp_ln29_5_fu_877_p2;
wire   [0:0] icmp_ln29_4_fu_871_p2;
wire   [10:0] tmp_5_fu_857_p4;
wire   [51:0] trunc_ln29_3_fu_867_p1;
wire   [0:0] icmp_ln29_7_fu_895_p2;
wire   [0:0] icmp_ln29_6_fu_889_p2;
wire   [0:0] or_ln29_3_fu_901_p2;
wire   [0:0] or_ln29_2_fu_883_p2;
wire   [0:0] and_ln29_2_fu_907_p2;
wire   [63:0] bitcast_ln29_4_fu_926_p1;
wire   [63:0] bitcast_ln29_5_fu_944_p1;
wire   [10:0] tmp_11_fu_930_p4;
wire   [51:0] trunc_ln29_4_fu_940_p1;
wire   [0:0] icmp_ln29_9_fu_967_p2;
wire   [0:0] icmp_ln29_8_fu_961_p2;
wire   [10:0] tmp_12_fu_947_p4;
wire   [51:0] trunc_ln29_5_fu_957_p1;
wire   [0:0] icmp_ln29_11_fu_985_p2;
wire   [0:0] icmp_ln29_10_fu_979_p2;
wire   [0:0] or_ln29_5_fu_991_p2;
wire   [0:0] or_ln29_4_fu_973_p2;
wire   [0:0] and_ln29_4_fu_997_p2;
wire   [63:0] bitcast_ln29_7_fu_1016_p1;
wire   [10:0] tmp_16_fu_1020_p4;
wire   [51:0] trunc_ln29_7_fu_1030_p1;
wire   [63:0] bitcast_ln29_6_fu_1046_p1;
wire   [10:0] tmp_15_fu_1050_p4;
wire   [51:0] trunc_ln29_6_fu_1060_p1;
wire   [0:0] icmp_ln29_13_fu_1070_p2;
wire   [0:0] icmp_ln29_12_fu_1064_p2;
wire   [0:0] or_ln29_7_fu_1082_p2;
wire   [0:0] or_ln29_6_fu_1076_p2;
wire   [0:0] and_ln29_6_fu_1086_p2;
wire   [63:0] bitcast_ln29_8_fu_1105_p1;
wire   [63:0] bitcast_ln29_9_fu_1123_p1;
wire   [10:0] tmp_19_fu_1109_p4;
wire   [51:0] trunc_ln29_8_fu_1119_p1;
wire   [0:0] icmp_ln29_17_fu_1146_p2;
wire   [0:0] icmp_ln29_16_fu_1140_p2;
wire   [10:0] tmp_20_fu_1126_p4;
wire   [51:0] trunc_ln29_9_fu_1136_p1;
wire   [0:0] icmp_ln29_19_fu_1164_p2;
wire   [0:0] icmp_ln29_18_fu_1158_p2;
wire   [0:0] or_ln29_9_fu_1170_p2;
wire   [0:0] or_ln29_8_fu_1152_p2;
wire   [0:0] and_ln29_8_fu_1176_p2;
wire   [63:0] bitcast_ln29_10_fu_1195_p1;
wire   [63:0] bitcast_ln29_11_fu_1213_p1;
wire   [10:0] tmp_23_fu_1199_p4;
wire   [51:0] trunc_ln29_10_fu_1209_p1;
wire   [0:0] icmp_ln29_21_fu_1236_p2;
wire   [0:0] icmp_ln29_20_fu_1230_p2;
wire   [10:0] tmp_24_fu_1216_p4;
wire   [51:0] trunc_ln29_11_fu_1226_p1;
wire   [0:0] icmp_ln29_23_fu_1254_p2;
wire   [0:0] icmp_ln29_22_fu_1248_p2;
wire   [0:0] or_ln29_11_fu_1260_p2;
wire   [0:0] or_ln29_10_fu_1242_p2;
wire   [0:0] and_ln29_10_fu_1266_p2;
wire   [63:0] bitcast_ln29_12_fu_1285_p1;
wire   [63:0] bitcast_ln29_13_fu_1303_p1;
wire   [10:0] tmp_27_fu_1289_p4;
wire   [51:0] trunc_ln29_12_fu_1299_p1;
wire   [0:0] icmp_ln29_25_fu_1326_p2;
wire   [0:0] icmp_ln29_24_fu_1320_p2;
wire   [10:0] tmp_28_fu_1306_p4;
wire   [51:0] trunc_ln29_13_fu_1316_p1;
wire   [0:0] icmp_ln29_27_fu_1344_p2;
wire   [0:0] icmp_ln29_26_fu_1338_p2;
wire   [0:0] or_ln29_13_fu_1350_p2;
wire   [0:0] or_ln29_12_fu_1332_p2;
wire   [0:0] and_ln29_12_fu_1356_p2;
wire   [63:0] bitcast_ln29_14_fu_1376_p1;
wire   [63:0] bitcast_ln29_15_fu_1393_p1;
wire   [10:0] tmp_31_fu_1379_p4;
wire   [51:0] trunc_ln29_14_fu_1389_p1;
wire   [0:0] icmp_ln29_29_fu_1416_p2;
wire   [0:0] icmp_ln29_28_fu_1410_p2;
wire   [10:0] tmp_32_fu_1396_p4;
wire   [51:0] trunc_ln29_15_fu_1406_p1;
wire   [0:0] icmp_ln29_31_fu_1434_p2;
wire   [0:0] icmp_ln29_30_fu_1428_p2;
wire   [0:0] or_ln29_15_fu_1440_p2;
wire   [0:0] or_ln29_14_fu_1422_p2;
wire   [0:0] and_ln29_14_fu_1446_p2;
wire   [0:0] and_ln29_15_fu_1452_p2;
wire    ap_block_pp0_stage1_00001;
wire    ap_block_pp0_stage3_00001;
wire    ap_block_pp0_stage5_00001;
wire    ap_block_pp0_stage7_00001;
wire    ap_block_pp0_stage9_00001;
wire    ap_block_pp0_stage11_00001;
wire    ap_block_pp0_stage13_00001;
wire    ap_block_pp0_stage15_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [16:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage6_00001;
wire    ap_block_pp0_stage8_00001;
wire    ap_block_pp0_stage10_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage16_00001;
wire    ap_block_pp0_stage0_00001;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 17'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 min_p_fu_90 = 64'd0;
#0 prev_fu_94 = 6'd0;
#0 ap_done_reg = 1'b0;
end
viterbi_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage16),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage15)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage16_subdone) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage16_11001) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            min_p_fu_90 <= min_p_4;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            min_p_fu_90 <= min_p_18_fu_1457_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_fu_94 <= 6'd1;
    end else if (((tmp_30_reg_1654 == 1'd0) & (1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        prev_fu_94 <= add_ln25_7_fu_732_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        add52_5_reg_1753 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        add52_7_reg_1758 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln25_6_reg_1648 <= add_ln25_6_fu_627_p2;
        and_ln29_1_reg_1770 <= and_ln29_1_fu_823_p2;
        tmp_30_reg_1654 <= add_ln25_6_fu_627_p2[32'd6];
        tmp_30_reg_1654_pp0_iter1_reg <= tmp_30_reg_1654;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        and_ln29_11_reg_1846 <= and_ln29_11_fu_1272_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        and_ln29_13_reg_1858 <= and_ln29_13_fu_1362_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        and_ln29_3_reg_1782 <= and_ln29_3_fu_913_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        and_ln29_5_reg_1794 <= and_ln29_5_fu_1003_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage8_11001) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        and_ln29_7_reg_1822 <= and_ln29_7_fu_1092_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        and_ln29_9_reg_1834 <= and_ln29_9_fu_1182_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        icmp_ln29_14_reg_1805 <= icmp_ln29_14_fu_1034_p2;
        icmp_ln29_15_reg_1810 <= icmp_ln29_15_fu_1040_p2;
        min_p_8_reg_1799 <= min_p_8_fu_1009_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        llike_load_1_reg_1563 <= llike_q0;
        llike_load_reg_1558 <= llike_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        llike_load_2_reg_1603 <= llike_q1;
        llike_load_3_reg_1608 <= llike_q0;
        select_ln27_3_reg_1613 <= grp_fu_375_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        llike_load_4_reg_1663 <= llike_q1;
        llike_load_5_reg_1673 <= llike_q0;
        select_ln27_4_reg_1668 <= grp_fu_368_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        llike_load_6_reg_1713 <= llike_q1;
        llike_load_7_reg_1718 <= llike_q0;
        select_ln27_7_reg_1723 <= grp_fu_375_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        min_p_10_reg_1827 <= min_p_10_fu_1098_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        min_p_12_reg_1839 <= min_p_12_fu_1188_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        min_p_14_reg_1851 <= min_p_14_fu_1278_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_16_reg_1863 <= min_p_16_fu_1368_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        min_p_1_reg_1763 <= min_p_fu_90;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        min_p_3_reg_1775 <= min_p_3_fu_829_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        min_p_6_reg_1787 <= min_p_6_fu_919_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage7_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        p_7_reg_1815 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        prev_1_reg_1517 <= ap_sig_allocacmp_prev_1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_382 <= grp_fu_368_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_386 <= grp_fu_375_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        reg_390 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_396 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_402 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        reg_408 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)))) begin
        reg_414 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        reg_420 <= grp_fu_300_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage16_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        tmp_33_reg_1870 <= grp_fu_678_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_30_reg_1654 == 1'd1) & (1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage16 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_30_reg_1654_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage16_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_prev_1 = 6'd1;
    end else begin
        ap_sig_allocacmp_prev_1 = prev_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_360_p0 = add52_7_reg_1758;
    end else if (((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16))) begin
        grp_fu_360_p0 = reg_420;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_360_p0 = add52_5_reg_1753;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_360_p0 = reg_414;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_360_p0 = reg_408;
    end else if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_360_p0 = reg_402;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_360_p0 = reg_396;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_360_p0 = reg_390;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_360_p0 = llike_load_7_reg_1718;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_360_p0 = llike_load_6_reg_1713;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_360_p0 = llike_load_5_reg_1673;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_360_p0 = llike_load_4_reg_1663;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_360_p0 = llike_load_3_reg_1608;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_360_p0 = llike_load_2_reg_1603;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_360_p0 = llike_load_1_reg_1563;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_360_p0 = llike_load_reg_1558;
    end else begin
        grp_fu_360_p0 = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage16) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage16)) | ((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)) | ((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)) | ((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11)) | ((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_360_p1 = bitcast_ln24;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_360_p1 = bitcast_ln27_7_fu_728_p1;
    end else if (((1'b0 == ap_block_pp0_stage8) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage8))) begin
        grp_fu_360_p1 = bitcast_ln27_6_fu_723_p1;
    end else if (((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        grp_fu_360_p1 = bitcast_ln27_5_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        grp_fu_360_p1 = bitcast_ln27_4_fu_714_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_360_p1 = bitcast_ln27_3_fu_710_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_360_p1 = bitcast_ln27_2_fu_705_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_360_p1 = bitcast_ln27_1_fu_641_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_360_p1 = bitcast_ln27_fu_562_p1;
    end else begin
        grp_fu_360_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_364_p0 = p_7_reg_1815;
    end else if (((1'b0 == ap_block_pp0_stage13) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        grp_fu_364_p0 = reg_420;
    end else if (((1'b0 == ap_block_pp0_stage11) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        grp_fu_364_p0 = reg_414;
    end else if (((1'b0 == ap_block_pp0_stage9) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        grp_fu_364_p0 = reg_408;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_364_p0 = reg_402;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_364_p0 = reg_396;
    end else if ((((1'b0 == ap_block_pp0_stage7) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7)) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        grp_fu_364_p0 = reg_390;
    end else begin
        grp_fu_364_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage15) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            grp_fu_364_p1 = min_p_16_fu_1368_p3;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_364_p1 = min_p_14_fu_1278_p3;
        end else if (((1'b0 == ap_block_pp0_stage11) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
            grp_fu_364_p1 = min_p_12_fu_1188_p3;
        end else if (((1'b0 == ap_block_pp0_stage9) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
            grp_fu_364_p1 = min_p_10_fu_1098_p3;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_364_p1 = min_p_8_fu_1009_p3;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_364_p1 = min_p_6_fu_919_p3;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_364_p1 = min_p_3_fu_829_p3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_364_p1 = min_p_fu_90;
        end else begin
            grp_fu_364_p1 = 'bx;
        end
    end else begin
        grp_fu_364_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_address0_local = zext_ln26_8_fu_684_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_address0_local = zext_ln26_5_fu_609_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address0_local = zext_ln26_3_fu_541_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address0_local = zext_ln26_1_fu_480_p1;
        end else begin
            llike_address0_local = 'bx;
        end
    end else begin
        llike_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            llike_address1_local = zext_ln26_6_fu_658_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            llike_address1_local = zext_ln26_4_fu_579_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            llike_address1_local = zext_ln26_2_fu_511_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            llike_address1_local = zext_ln26_fu_447_p1;
        end else begin
            llike_address1_local = 'bx;
        end
    end else begin
        llike_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce0_local = 1'b1;
    end else begin
        llike_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        llike_ce1_local = 1'b1;
    end else begin
        llike_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage15_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (tmp_30_reg_1654_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        min_p_145_out_ap_vld = 1'b1;
    end else begin
        min_p_145_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address0_local = zext_ln27_7_fu_699_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address0_local = zext_ln27_5_fu_621_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address0_local = zext_ln27_3_fu_553_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address0_local = zext_ln27_1_fu_493_p1;
        end else begin
            transition_0_address0_local = 'bx;
        end
    end else begin
        transition_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_0_address1_local = zext_ln27_6_fu_670_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_0_address1_local = zext_ln27_4_fu_591_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_0_address1_local = zext_ln27_2_fu_523_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_0_address1_local = zext_ln27_fu_460_p1;
        end else begin
            transition_0_address1_local = 'bx;
        end
    end else begin
        transition_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce0_local = 1'b1;
    end else begin
        transition_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_0_ce1_local = 1'b1;
    end else begin
        transition_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address0_local = zext_ln27_7_fu_699_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address0_local = zext_ln27_5_fu_621_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address0_local = zext_ln27_3_fu_553_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address0_local = zext_ln27_1_fu_493_p1;
        end else begin
            transition_1_address0_local = 'bx;
        end
    end else begin
        transition_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            transition_1_address1_local = zext_ln27_6_fu_670_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            transition_1_address1_local = zext_ln27_4_fu_591_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            transition_1_address1_local = zext_ln27_2_fu_523_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            transition_1_address1_local = zext_ln27_fu_460_p1;
        end else begin
            transition_1_address1_local = 'bx;
        end
    end else begin
        transition_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce0_local = 1'b1;
    end else begin
        transition_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        transition_1_ce1_local = 1'b1;
    end else begin
        transition_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage15))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_1_fu_499_p2 = (prev_1_reg_1517 + 6'd2);
assign add_ln25_2_fu_529_p2 = (prev_1_reg_1517 + 6'd3);
assign add_ln25_3_fu_567_p2 = (prev_1_reg_1517 + 6'd4);
assign add_ln25_4_fu_597_p2 = (prev_1_reg_1517 + 6'd5);
assign add_ln25_5_fu_646_p2 = (prev_1_reg_1517 + 6'd6);
assign add_ln25_6_fu_627_p2 = (zext_ln15_fu_559_p1 + 7'd7);
assign add_ln25_7_fu_732_p2 = (prev_1_reg_1517 + 6'd8);
assign add_ln25_fu_466_p2 = (ap_sig_allocacmp_prev_1 + 6'd1);
assign add_ln26_fu_679_p2 = (empty + zext_ln26_7_fu_676_p1);
assign add_ln27_1_fu_485_p3 = {{add_ln25_fu_466_p2}, {lshr_ln}};
assign add_ln27_2_fu_516_p3 = {{add_ln25_1_fu_499_p2}, {lshr_ln}};
assign add_ln27_3_fu_546_p3 = {{add_ln25_2_fu_529_p2}, {lshr_ln}};
assign add_ln27_4_fu_584_p3 = {{add_ln25_3_fu_567_p2}, {lshr_ln}};
assign add_ln27_5_fu_614_p3 = {{add_ln25_4_fu_597_p2}, {lshr_ln}};
assign add_ln27_6_fu_663_p3 = {{add_ln25_5_fu_646_p2}, {lshr_ln}};
assign add_ln27_7_fu_692_p3 = {{trunc_ln27_fu_689_p1}, {lshr_ln}};
assign add_ln_fu_452_p3 = {{ap_sig_allocacmp_prev_1}, {lshr_ln}};
assign and_ln29_10_fu_1266_p2 = (or_ln29_11_fu_1260_p2 & or_ln29_10_fu_1242_p2);
assign and_ln29_11_fu_1272_p2 = (grp_fu_678_p_dout0 & and_ln29_10_fu_1266_p2);
assign and_ln29_12_fu_1356_p2 = (or_ln29_13_fu_1350_p2 & or_ln29_12_fu_1332_p2);
assign and_ln29_13_fu_1362_p2 = (grp_fu_678_p_dout0 & and_ln29_12_fu_1356_p2);
assign and_ln29_14_fu_1446_p2 = (or_ln29_15_fu_1440_p2 & or_ln29_14_fu_1422_p2);
assign and_ln29_15_fu_1452_p2 = (tmp_33_reg_1870 & and_ln29_14_fu_1446_p2);
assign and_ln29_1_fu_823_p2 = (or_ln29_1_fu_811_p2 & and_ln29_fu_817_p2);
assign and_ln29_2_fu_907_p2 = (or_ln29_3_fu_901_p2 & or_ln29_2_fu_883_p2);
assign and_ln29_3_fu_913_p2 = (grp_fu_678_p_dout0 & and_ln29_2_fu_907_p2);
assign and_ln29_4_fu_997_p2 = (or_ln29_5_fu_991_p2 & or_ln29_4_fu_973_p2);
assign and_ln29_5_fu_1003_p2 = (grp_fu_678_p_dout0 & and_ln29_4_fu_997_p2);
assign and_ln29_6_fu_1086_p2 = (or_ln29_7_fu_1082_p2 & or_ln29_6_fu_1076_p2);
assign and_ln29_7_fu_1092_p2 = (grp_fu_678_p_dout0 & and_ln29_6_fu_1086_p2);
assign and_ln29_8_fu_1176_p2 = (or_ln29_9_fu_1170_p2 & or_ln29_8_fu_1152_p2);
assign and_ln29_9_fu_1182_p2 = (grp_fu_678_p_dout0 & and_ln29_8_fu_1176_p2);
assign and_ln29_fu_817_p2 = (or_ln29_fu_793_p2 & grp_fu_678_p_dout0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage16 = ap_CS_fsm[32'd16];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_CS_fsm_pp0_stage8 = ap_CS_fsm[32'd8];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage16;
assign ap_ready = ap_ready_sig;
assign bitcast_ln27_1_fu_641_p1 = reg_386;
assign bitcast_ln27_2_fu_705_p1 = reg_382;
assign bitcast_ln27_3_fu_710_p1 = select_ln27_3_reg_1613;
assign bitcast_ln27_4_fu_714_p1 = select_ln27_4_reg_1668;
assign bitcast_ln27_5_fu_718_p1 = reg_386;
assign bitcast_ln27_6_fu_723_p1 = reg_382;
assign bitcast_ln27_7_fu_728_p1 = select_ln27_7_reg_1723;
assign bitcast_ln27_fu_562_p1 = reg_382;
assign bitcast_ln29_10_fu_1195_p1 = reg_414;
assign bitcast_ln29_11_fu_1213_p1 = min_p_12_reg_1839;
assign bitcast_ln29_12_fu_1285_p1 = reg_420;
assign bitcast_ln29_13_fu_1303_p1 = min_p_14_reg_1851;
assign bitcast_ln29_14_fu_1376_p1 = p_7_reg_1815;
assign bitcast_ln29_15_fu_1393_p1 = min_p_16_reg_1863;
assign bitcast_ln29_1_fu_764_p1 = min_p_1_reg_1763;
assign bitcast_ln29_2_fu_836_p1 = reg_396;
assign bitcast_ln29_3_fu_854_p1 = min_p_3_reg_1775;
assign bitcast_ln29_4_fu_926_p1 = reg_402;
assign bitcast_ln29_5_fu_944_p1 = min_p_6_reg_1787;
assign bitcast_ln29_6_fu_1046_p1 = reg_390;
assign bitcast_ln29_7_fu_1016_p1 = min_p_8_fu_1009_p3;
assign bitcast_ln29_8_fu_1105_p1 = reg_408;
assign bitcast_ln29_9_fu_1123_p1 = min_p_10_reg_1827;
assign bitcast_ln29_fu_746_p1 = reg_390;
assign grp_fu_300_p_ce = 1'b1;
assign grp_fu_300_p_din0 = grp_fu_360_p0;
assign grp_fu_300_p_din1 = grp_fu_360_p1;
assign grp_fu_300_p_opcode = 2'd0;
assign grp_fu_368_p3 = ((empty_9[0:0] == 1'b1) ? transition_1_q1 : transition_0_q1);
assign grp_fu_375_p3 = ((empty_9[0:0] == 1'b1) ? transition_1_q0 : transition_0_q0);
assign grp_fu_678_p_ce = 1'b1;
assign grp_fu_678_p_din0 = grp_fu_364_p0;
assign grp_fu_678_p_din1 = grp_fu_364_p1;
assign grp_fu_678_p_opcode = 5'd4;
assign icmp_ln29_10_fu_979_p2 = ((tmp_12_fu_947_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_11_fu_985_p2 = ((trunc_ln29_5_fu_957_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_12_fu_1064_p2 = ((tmp_15_fu_1050_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_13_fu_1070_p2 = ((trunc_ln29_6_fu_1060_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_14_fu_1034_p2 = ((tmp_16_fu_1020_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_15_fu_1040_p2 = ((trunc_ln29_7_fu_1030_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_16_fu_1140_p2 = ((tmp_19_fu_1109_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_17_fu_1146_p2 = ((trunc_ln29_8_fu_1119_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_18_fu_1158_p2 = ((tmp_20_fu_1126_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_19_fu_1164_p2 = ((trunc_ln29_9_fu_1136_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_1_fu_787_p2 = ((trunc_ln29_fu_760_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_20_fu_1230_p2 = ((tmp_23_fu_1199_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_21_fu_1236_p2 = ((trunc_ln29_10_fu_1209_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_22_fu_1248_p2 = ((tmp_24_fu_1216_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_23_fu_1254_p2 = ((trunc_ln29_11_fu_1226_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_24_fu_1320_p2 = ((tmp_27_fu_1289_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_25_fu_1326_p2 = ((trunc_ln29_12_fu_1299_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_26_fu_1338_p2 = ((tmp_28_fu_1306_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_27_fu_1344_p2 = ((trunc_ln29_13_fu_1316_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_28_fu_1410_p2 = ((tmp_31_fu_1379_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_29_fu_1416_p2 = ((trunc_ln29_14_fu_1389_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_2_fu_799_p2 = ((tmp_7_fu_767_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_30_fu_1428_p2 = ((tmp_32_fu_1396_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_31_fu_1434_p2 = ((trunc_ln29_15_fu_1406_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_3_fu_805_p2 = ((trunc_ln29_1_fu_777_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_4_fu_871_p2 = ((tmp_s_fu_840_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_5_fu_877_p2 = ((trunc_ln29_2_fu_850_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_6_fu_889_p2 = ((tmp_5_fu_857_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_7_fu_895_p2 = ((trunc_ln29_3_fu_867_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_8_fu_961_p2 = ((tmp_11_fu_930_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign icmp_ln29_9_fu_967_p2 = ((trunc_ln29_4_fu_940_p1 == 52'd0) ? 1'b1 : 1'b0);
assign icmp_ln29_fu_781_p2 = ((tmp_6_fu_750_p4 != 11'd2047) ? 1'b1 : 1'b0);
assign llike_address0 = llike_address0_local;
assign llike_address1 = llike_address1_local;
assign llike_ce0 = llike_ce0_local;
assign llike_ce1 = llike_ce1_local;
assign min_p_10_fu_1098_p3 = ((and_ln29_7_reg_1822[0:0] == 1'b1) ? reg_390 : min_p_8_reg_1799);
assign min_p_12_fu_1188_p3 = ((and_ln29_9_reg_1834[0:0] == 1'b1) ? reg_408 : min_p_10_reg_1827);
assign min_p_145_out = ((and_ln29_13_reg_1858[0:0] == 1'b1) ? reg_420 : min_p_14_reg_1851);
assign min_p_14_fu_1278_p3 = ((and_ln29_11_reg_1846[0:0] == 1'b1) ? reg_414 : min_p_12_reg_1839);
assign min_p_16_fu_1368_p3 = ((and_ln29_13_reg_1858[0:0] == 1'b1) ? reg_420 : min_p_14_reg_1851);
assign min_p_18_fu_1457_p3 = ((and_ln29_15_fu_1452_p2[0:0] == 1'b1) ? p_7_reg_1815 : min_p_16_reg_1863);
assign min_p_3_fu_829_p3 = ((and_ln29_1_reg_1770[0:0] == 1'b1) ? reg_390 : min_p_1_reg_1763);
assign min_p_6_fu_919_p3 = ((and_ln29_3_reg_1782[0:0] == 1'b1) ? reg_396 : min_p_3_reg_1775);
assign min_p_8_fu_1009_p3 = ((and_ln29_5_reg_1794[0:0] == 1'b1) ? reg_402 : min_p_6_reg_1787);
assign or_ln29_10_fu_1242_p2 = (icmp_ln29_21_fu_1236_p2 | icmp_ln29_20_fu_1230_p2);
assign or_ln29_11_fu_1260_p2 = (icmp_ln29_23_fu_1254_p2 | icmp_ln29_22_fu_1248_p2);
assign or_ln29_12_fu_1332_p2 = (icmp_ln29_25_fu_1326_p2 | icmp_ln29_24_fu_1320_p2);
assign or_ln29_13_fu_1350_p2 = (icmp_ln29_27_fu_1344_p2 | icmp_ln29_26_fu_1338_p2);
assign or_ln29_14_fu_1422_p2 = (icmp_ln29_29_fu_1416_p2 | icmp_ln29_28_fu_1410_p2);
assign or_ln29_15_fu_1440_p2 = (icmp_ln29_31_fu_1434_p2 | icmp_ln29_30_fu_1428_p2);
assign or_ln29_1_fu_811_p2 = (icmp_ln29_3_fu_805_p2 | icmp_ln29_2_fu_799_p2);
assign or_ln29_2_fu_883_p2 = (icmp_ln29_5_fu_877_p2 | icmp_ln29_4_fu_871_p2);
assign or_ln29_3_fu_901_p2 = (icmp_ln29_7_fu_895_p2 | icmp_ln29_6_fu_889_p2);
assign or_ln29_4_fu_973_p2 = (icmp_ln29_9_fu_967_p2 | icmp_ln29_8_fu_961_p2);
assign or_ln29_5_fu_991_p2 = (icmp_ln29_11_fu_985_p2 | icmp_ln29_10_fu_979_p2);
assign or_ln29_6_fu_1076_p2 = (icmp_ln29_13_fu_1070_p2 | icmp_ln29_12_fu_1064_p2);
assign or_ln29_7_fu_1082_p2 = (icmp_ln29_15_reg_1810 | icmp_ln29_14_reg_1805);
assign or_ln29_8_fu_1152_p2 = (icmp_ln29_17_fu_1146_p2 | icmp_ln29_16_fu_1140_p2);
assign or_ln29_9_fu_1170_p2 = (icmp_ln29_19_fu_1164_p2 | icmp_ln29_18_fu_1158_p2);
assign or_ln29_fu_793_p2 = (icmp_ln29_fu_781_p2 | icmp_ln29_1_fu_787_p2);
assign tmp_10_fu_504_p3 = {{empty_8}, {add_ln25_1_fu_499_p2}};
assign tmp_11_fu_930_p4 = {{bitcast_ln29_4_fu_926_p1[62:52]}};
assign tmp_12_fu_947_p4 = {{bitcast_ln29_5_fu_944_p1[62:52]}};
assign tmp_14_fu_534_p3 = {{empty_8}, {add_ln25_2_fu_529_p2}};
assign tmp_15_fu_1050_p4 = {{bitcast_ln29_6_fu_1046_p1[62:52]}};
assign tmp_16_fu_1020_p4 = {{bitcast_ln29_7_fu_1016_p1[62:52]}};
assign tmp_18_fu_572_p3 = {{empty_8}, {add_ln25_3_fu_567_p2}};
assign tmp_19_fu_1109_p4 = {{bitcast_ln29_8_fu_1105_p1[62:52]}};
assign tmp_20_fu_1126_p4 = {{bitcast_ln29_9_fu_1123_p1[62:52]}};
assign tmp_22_fu_602_p3 = {{empty_8}, {add_ln25_4_fu_597_p2}};
assign tmp_23_fu_1199_p4 = {{bitcast_ln29_10_fu_1195_p1[62:52]}};
assign tmp_24_fu_1216_p4 = {{bitcast_ln29_11_fu_1213_p1[62:52]}};
assign tmp_26_fu_651_p3 = {{empty_8}, {add_ln25_5_fu_646_p2}};
assign tmp_27_fu_1289_p4 = {{bitcast_ln29_12_fu_1285_p1[62:52]}};
assign tmp_28_fu_1306_p4 = {{bitcast_ln29_13_fu_1303_p1[62:52]}};
assign tmp_31_fu_1379_p4 = {{bitcast_ln29_14_fu_1376_p1[62:52]}};
assign tmp_32_fu_1396_p4 = {{bitcast_ln29_15_fu_1393_p1[62:52]}};
assign tmp_3_fu_439_p3 = {{empty_8}, {ap_sig_allocacmp_prev_1}};
assign tmp_4_fu_472_p3 = {{empty_8}, {add_ln25_fu_466_p2}};
assign tmp_5_fu_857_p4 = {{bitcast_ln29_3_fu_854_p1[62:52]}};
assign tmp_6_fu_750_p4 = {{bitcast_ln29_fu_746_p1[62:52]}};
assign tmp_7_fu_767_p4 = {{bitcast_ln29_1_fu_764_p1[62:52]}};
assign tmp_s_fu_840_p4 = {{bitcast_ln29_2_fu_836_p1[62:52]}};
assign transition_0_address0 = transition_0_address0_local;
assign transition_0_address1 = transition_0_address1_local;
assign transition_0_ce0 = transition_0_ce0_local;
assign transition_0_ce1 = transition_0_ce1_local;
assign transition_1_address0 = transition_1_address0_local;
assign transition_1_address1 = transition_1_address1_local;
assign transition_1_ce0 = transition_1_ce0_local;
assign transition_1_ce1 = transition_1_ce1_local;
assign trunc_ln27_fu_689_p1 = add_ln25_6_reg_1648[5:0];
assign trunc_ln29_10_fu_1209_p1 = bitcast_ln29_10_fu_1195_p1[51:0];
assign trunc_ln29_11_fu_1226_p1 = bitcast_ln29_11_fu_1213_p1[51:0];
assign trunc_ln29_12_fu_1299_p1 = bitcast_ln29_12_fu_1285_p1[51:0];
assign trunc_ln29_13_fu_1316_p1 = bitcast_ln29_13_fu_1303_p1[51:0];
assign trunc_ln29_14_fu_1389_p1 = bitcast_ln29_14_fu_1376_p1[51:0];
assign trunc_ln29_15_fu_1406_p1 = bitcast_ln29_15_fu_1393_p1[51:0];
assign trunc_ln29_1_fu_777_p1 = bitcast_ln29_1_fu_764_p1[51:0];
assign trunc_ln29_2_fu_850_p1 = bitcast_ln29_2_fu_836_p1[51:0];
assign trunc_ln29_3_fu_867_p1 = bitcast_ln29_3_fu_854_p1[51:0];
assign trunc_ln29_4_fu_940_p1 = bitcast_ln29_4_fu_926_p1[51:0];
assign trunc_ln29_5_fu_957_p1 = bitcast_ln29_5_fu_944_p1[51:0];
assign trunc_ln29_6_fu_1060_p1 = bitcast_ln29_6_fu_1046_p1[51:0];
assign trunc_ln29_7_fu_1030_p1 = bitcast_ln29_7_fu_1016_p1[51:0];
assign trunc_ln29_8_fu_1119_p1 = bitcast_ln29_8_fu_1105_p1[51:0];
assign trunc_ln29_9_fu_1136_p1 = bitcast_ln29_9_fu_1123_p1[51:0];
assign trunc_ln29_fu_760_p1 = bitcast_ln29_fu_746_p1[51:0];
assign zext_ln15_fu_559_p1 = prev_1_reg_1517;
assign zext_ln26_1_fu_480_p1 = tmp_4_fu_472_p3;
assign zext_ln26_2_fu_511_p1 = tmp_10_fu_504_p3;
assign zext_ln26_3_fu_541_p1 = tmp_14_fu_534_p3;
assign zext_ln26_4_fu_579_p1 = tmp_18_fu_572_p3;
assign zext_ln26_5_fu_609_p1 = tmp_22_fu_602_p3;
assign zext_ln26_6_fu_658_p1 = tmp_26_fu_651_p3;
assign zext_ln26_7_fu_676_p1 = add_ln25_6_reg_1648;
assign zext_ln26_8_fu_684_p1 = add_ln26_fu_679_p2;
assign zext_ln26_fu_447_p1 = tmp_3_fu_439_p3;
assign zext_ln27_1_fu_493_p1 = add_ln27_1_fu_485_p3;
assign zext_ln27_2_fu_523_p1 = add_ln27_2_fu_516_p3;
assign zext_ln27_3_fu_553_p1 = add_ln27_3_fu_546_p3;
assign zext_ln27_4_fu_591_p1 = add_ln27_4_fu_584_p3;
assign zext_ln27_5_fu_621_p1 = add_ln27_5_fu_614_p3;
assign zext_ln27_6_fu_670_p1 = add_ln27_6_fu_663_p3;
assign zext_ln27_7_fu_699_p1 = add_ln27_7_fu_692_p3;
assign zext_ln27_fu_460_p1 = add_ln_fu_452_p3;
endmodule 